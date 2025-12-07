void sub_10023DE24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

float *sub_10023E010(int a1, unsigned int a2, float32x4_t *a3, uint64_t a4, float *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, float32x4_t *a10, uint64_t a11, unsigned int a12, float *a13, unint64_t a14, uint64_t a15)
{
  v191 = a14 >> 2;
  if (a2 >= a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = a2;
  }

  v177 = v20;
  if (a10)
  {
    v21 = a12;
  }

  else
  {
    v21 = a1;
  }

  if (a2 >= 1 && v21 >= 1)
  {
    v22 = a13;
    v23 = a2;
    do
    {
      bzero(v22, 4 * v21);
      v22 += v191;
      --v23;
    }

    while (v23);
  }

  v24 = v177;
  v25 = a10;
  v27 = a3;
  result = a13;
  if (v177 >= 1)
  {
    v28 = 0;
    v29 = (a6 >> 2);
    if (a4)
    {
      v30 = (a4 >> 2);
    }

    else
    {
      v30 = 1;
    }

    v31 = 0.0;
    if (v177 < 8)
    {
      goto LABEL_20;
    }

    if (v30 != 1)
    {
      goto LABEL_20;
    }

    v28 = v177 & 0x7FFFFFF8;
    v32 = a3 + 1;
    v33 = v28;
    do
    {
      v34 = v32[-1];
      v35 = vcvt_hight_f64_f32(v34);
      v36 = vcvtq_f64_f32(*v34.f32);
      v37 = vcvt_hight_f64_f32(*v32);
      v38 = vcvtq_f64_f32(*v32->f32);
      v31 = v31 + v36.f64[0] + v36.f64[1] + v35.f64[0] + v35.f64[1] + v38.f64[0] + v38.f64[1] + v37.f64[0] + v37.f64[1];
      v32 += 2;
      v33 -= 8;
    }

    while (v33);
    if (v28 != v177)
    {
LABEL_20:
      v39 = v177 - v28;
      v40 = &a3->f32[v30 * v28];
      do
      {
        v31 = v31 + *v40;
        v40 += v30;
        --v39;
      }

      while (v39);
    }

    v41 = (a11 >> 2);
    v42 = v31 * 4.4408921e-16;
    v43 = a1;
    if (a7)
    {
      v44 = 1;
    }

    else
    {
      v44 = (a6 >> 2);
    }

    if (!a7)
    {
      v29 = 1;
    }

    v45 = 4 * v29;
    v46 = 4 * v41;
    v47 = 4 * v44;
    v48 = 4 * (a9 >> 2);
    v49 = 4 * v191;
    v50 = a2;
    if (v21 == 1)
    {
      v51 = 0;
      v54 = v44 != 1 || v41 != 1 || a1 < 8;
      v55 = a5 + 4;
      while (1)
      {
        v56 = a3->f32[v51 * v30];
        if (fabs(v56) > v42)
        {
          break;
        }

LABEL_38:
        ++v51;
        a5 = (a5 + v45);
        v55 = (v55 + v45);
        a8 += v48;
        if (v51 == v177)
        {
          return result;
        }
      }

      if (a10)
      {
        if (v54)
        {
          v57 = 0;
          v58 = 0.0;
        }

        else
        {
          v58 = 0.0;
          v59 = a1 & 0xFFFFFFF8;
          v60 = a10 + 1;
          v61 = v55;
          do
          {
            v62 = vmulq_f32(v61[-1], v60[-1]);
            v63 = vmulq_f32(*v61, *v60);
            v64 = vcvt_hight_f64_f32(v62);
            v65 = vcvtq_f64_f32(*v62.f32);
            v66 = vcvt_hight_f64_f32(v63);
            v67 = vcvtq_f64_f32(*v63.f32);
            v58 = v58 + v65.f64[0] + v65.f64[1] + v64.f64[0] + v64.f64[1] + v67.f64[0] + v67.f64[1] + v66.f64[0] + v66.f64[1];
            v61 += 2;
            v60 += 2;
            v59 -= 8;
          }

          while (v59);
          v57 = a1 & 0xFFFFFFF8;
          if (v57 == a1)
          {
            goto LABEL_49;
          }
        }

        v68 = a1 - v57;
        v69 = (a10->f32 + v46 * v57);
        v70 = v47 * v57;
        do
        {
          v58 = v58 + (*(a5 + v70) * *v69);
          v69 = (v69 + v46);
          v70 += v47;
          --v68;
        }

        while (v68);
      }

      else
      {
        v58 = *a5;
      }

LABEL_49:
      v71 = 0;
      v72 = 1.0 / v56 * v58;
      v73 = a13;
      do
      {
        v74 = *v73 + v72 * *(a8 + 4 * v71);
        *v73 = v74;
        ++v71;
        v73 = (v73 + v49);
      }

      while (a2 != v71);
      goto LABEL_38;
    }

    v75 = 0;
    v76 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
    v77 = (v21 - 4);
    v78 = (v77 & 0xFFFFFFFC) + 4;
    v79 = (v77 & 0xFFFFFFFC) + 5;
    if (v79 <= v21)
    {
      v79 = v21;
    }

    v80 = v79 - (v77 & 0xFFFFFFFC) - 4;
    v81 = v77 >> 2;
    v82 = (v77 >> 2) + 1;
    v192 = v82 & 0x7FFFFFFC;
    v185 = v80 & 0xFFFFFFFFFFFFFFF8;
    v180 = v78 + (v80 & 0xFFFFFFFFFFFFFFF8);
    v184 = v79 & 3;
    v83 = v82 & 0x7FFFFFFE;
    v190 = 4 * v83;
    v183 = v80 - v184;
    v182 = v78 + v80 - v184;
    v85 = v43 < 8 || v44 != 1;
    v170 = v85;
    v86 = 4 * v81;
    v87 = &a10[v81 + 2];
    v88 = &v76[4 * v81];
    v179 = (v88 + 8);
    v168 = v87;
    v187 = a5 + 4;
    v181 = (v88 + 6);
    v171 = &a13[v86 + 6];
    v174 = v43;
    v175 = v30;
    v173 = v45;
    v169 = v44;
    v172 = v80;
    v186 = v82 & 0x7FFFFFFE;
    do
    {
      v89 = v27->f32[v75 * v30];
      if (fabs(v89) > v42)
      {
        v90 = 1.0 / v89;
        if (v25)
        {
          if (v21 > 0)
          {
            v176 = 1.0 / v89;
            bzero(v76, 8 * v21);
            if (v21 < 4)
            {
              v91 = *v76;
              v92 = &a10->f32[2];
              v93 = a5;
              v94 = v174;
              v30 = v175;
              v25 = a10;
              v27 = a3;
              result = a13;
              v24 = v177;
              v48 = 4 * (a9 >> 2);
              v45 = v173;
              v80 = v172;
              v78 = (v77 & 0xFFFFFFFC) + 4;
              v82 = (v77 >> 2) + 1;
              v83 = v186;
              do
              {
                v95 = *v93;
                v96 = *(v92 - 2);
                v76[1] = v76[1] + (*v93 * *(v92 - 1));
                if (v21 != 2)
                {
                  v76[2] = v76[2] + (v95 * *v92);
                }

                v91 = v91 + (v95 * v96);
                v93 = (v93 + v47);
                v92 = (v92 + v46);
                --v94;
              }

              while (v94);
              *v76 = v91;
LABEL_90:
              if (v21 >= 4)
              {
                v126 = v21 & 0x7FFFFFFC;
                v127 = (v76 + 2);
                do
                {
                  v128 = vmulq_n_f64(*v127, v176);
                  v127[-1] = vmulq_n_f64(v127[-1], v176);
                  *v127 = v128;
                  v127 += 2;
                  v126 -= 4;
                }

                while (v126);
                v125 = v21 & 0x7FFFFFFC;
                if (v125 == v21)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                v125 = 0;
              }

              v129 = v21 - v125;
              v130 = &v76[v125];
              do
              {
                *v130 = v176 * *v130;
                ++v130;
                --v129;
              }

              while (v129);
              goto LABEL_103;
            }

            v98 = 0;
            v99 = v168;
            v25 = a10;
            v27 = a3;
            v100 = a10;
            result = a13;
            v24 = v177;
            v30 = v175;
            v48 = 4 * (a9 >> 2);
            v45 = v173;
            v80 = v172;
            v78 = (v77 & 0xFFFFFFFC) + 4;
            v82 = (v77 >> 2) + 1;
            v83 = v186;
            while (2)
            {
              v101 = a5[v98 * v169];
              if (v77 <= 0xB)
              {
                v102 = 0;
                goto LABEL_80;
              }

              v103 = v192;
              v104 = v100;
              v105 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v106 = v105;
                v195 = vld4q_f64(v106);
                v106 += 8;
                v196 = vld4q_f64(v106);
                v198 = vld4q_f32(v104);
                v104 += 16;
                v107 = vmulq_n_f32(v198.val[0], v101);
                v108 = vcvtq_f64_f32(*v107.f32);
                v199.val[0] = vaddq_f64(v196.val[0], vcvt_hight_f64_f32(v107));
                v109 = vmulq_n_f32(v198.val[1], v101);
                v199.val[1] = vaddq_f64(v196.val[1], vcvt_hight_f64_f32(v109));
                v110 = vmulq_n_f32(v198.val[2], v101);
                v199.val[2] = vaddq_f64(v196.val[2], vcvt_hight_f64_f32(v110));
                v198.val[0] = vmulq_n_f32(v198.val[3], v101);
                v199.val[3] = vaddq_f64(v196.val[3], vcvt_hight_f64_f32(v198.val[0]));
                v196.val[0] = vaddq_f64(v195.val[0], v108);
                v196.val[1] = vaddq_f64(v195.val[1], vcvtq_f64_f32(*v109.f32));
                v196.val[2] = vaddq_f64(v195.val[2], vcvtq_f64_f32(*v110.f32));
                v196.val[3] = vaddq_f64(v195.val[3], vcvtq_f64_f32(*v198.val[0].f32));
                vst4q_f64(v105, v196);
                vst4q_f64(v106, v199);
                v105 += 16;
                v103 -= 4;
              }

              while (v103);
              v102 = 4 * v192;
              v83 = v186;
              if ((v77 >> 2) + 1 != v192)
              {
LABEL_80:
                v111 = &v100[v102 / 4];
                v112 = &v76[v102 + 2];
                do
                {
                  v113 = *v111;
                  v114 = v111[1];
                  v111 += 2;
                  v115 = vaddq_f64(*v112, vcvtq_f64_f32(vmul_n_f32(v114, v101)));
                  v112[-1] = vaddq_f64(v112[-1], vcvtq_f64_f32(vmul_n_f32(v113, v101)));
                  *v112 = v115;
                  v102 += 4;
                  v112 += 2;
                }

                while (v102 <= v77);
              }

              if (v21 > v102)
              {
                v116 = (v77 & 0xFFFFFFFC) + 4;
                if (v172 <= 7)
                {
                  goto LABEL_126;
                }

                v117 = v179;
                v118 = v99;
                v119 = v185;
                do
                {
                  v120 = vmulq_n_f32(v118[-1], v101);
                  v121 = vmulq_n_f32(*v118, v101);
                  v122 = vaddq_f64(v117[-1], vcvt_hight_f64_f32(v120));
                  v123 = vaddq_f64(*v117, vcvtq_f64_f32(*v121.f32));
                  v124 = vaddq_f64(v117[1], vcvt_hight_f64_f32(v121));
                  v117[-2] = vaddq_f64(v117[-2], vcvtq_f64_f32(*v120.f32));
                  v117[-1] = v122;
                  *v117 = v123;
                  v117[1] = v124;
                  v117 += 4;
                  v118 += 2;
                  v119 -= 8;
                }

                while (v119);
                v116 = v180;
                if (v172 != v185)
                {
LABEL_126:
                  do
                  {
                    v76[v116] = v76[v116] + (v101 * v100->f32[v116]);
                    ++v116;
                  }

                  while (v116 < v21);
                }
              }

              ++v98;
              v100 = (v100 + v46);
              v99 = (v99 + v46);
              if (v98 == v174)
              {
                goto LABEL_90;
              }

              continue;
            }
          }
        }

        else if (v21 >= 1)
        {
          if (v170)
          {
            v97 = 0;
            goto LABEL_101;
          }

          v131 = v21 & 0x7FFFFFF8;
          v132 = (v76 + 4);
          v133 = v187;
          do
          {
            v134 = v133[-1];
            v135 = vcvt_hight_f64_f32(*v133);
            v136 = vmulq_n_f64(vcvtq_f64_f32(*v133->f32), v90);
            v132[-2] = vmulq_n_f64(vcvtq_f64_f32(*v134.f32), v90);
            v132[-1] = vmulq_n_f64(vcvt_hight_f64_f32(v134), v90);
            *v132 = v136;
            v132[1] = vmulq_n_f64(v135, v90);
            v132 += 4;
            v133 += 2;
            v131 -= 8;
          }

          while (v131);
          v97 = v21 & 0x7FFFFFF8;
          if (v97 != v21)
          {
LABEL_101:
            v137 = v21 - v97;
            v138 = &v76[v97];
            v139 = v47 * v97;
            do
            {
              *v138++ = v90 * *(a5 + v139);
              v139 += v47;
              --v137;
            }

            while (v137);
          }

LABEL_103:
          if (v21 < 4)
          {
            v140 = 0;
            v141 = *v76;
            v142 = a13 + 2;
            do
            {
              v143 = *(a8 + 4 * v140);
              v144 = *(v142 - 2) + v143 * v141;
              v145 = *(v142 - 1) + v143 * v76[1];
              *(v142 - 2) = v144;
              *(v142 - 1) = v145;
              if (v21 != 2)
              {
                v146 = *v142 + v143 * v76[2];
                *v142 = v146;
              }

              ++v140;
              v142 = (v142 + v49);
            }

            while (v50 != v140);
            goto LABEL_61;
          }

          v147 = 0;
          v148 = v171;
          v149 = result;
          while (2)
          {
            *&v150 = *(a8 + 4 * v147);
            if (v77 <= 3)
            {
              v151 = 0;
              goto LABEL_115;
            }

            v152 = vdupq_lane_s64(v150, 0);
            v153 = v83;
            v154 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
            v155 = v149;
            do
            {
              v193 = vld4_f32(v155);
              v197 = vld4q_f64(v154);
              v154 += 8;
              v194.val[0] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v193.val[0]), v197.val[0], v152));
              v194.val[1] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v193.val[1]), v197.val[1], v152));
              v194.val[2] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v193.val[2]), v197.val[2], v152));
              v194.val[3] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v193.val[3]), v197.val[3], v152));
              vst4_f32(v155, v194);
              v155 += 8;
              v153 -= 2;
            }

            while (v153);
            v151 = v190;
            if (v82 != v83)
            {
LABEL_115:
              v156 = vdupq_lane_s64(v150, 0);
              v157 = v151;
              v158 = &v76[v151];
              do
              {
                v159 = *v158;
                v160 = v158[1];
                v158 += 2;
                *&v149[v157] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*&v149[v157]), v159, v156)), vmlaq_f64(vcvt_hight_f64_f32(*&v149[v157]), v160, v156));
                v151 += 4;
                v157 += 4;
              }

              while (v151 <= v77);
            }

            if (v21 > v151)
            {
              v161 = v78;
              if (v80 <= 3)
              {
                goto LABEL_127;
              }

              v162 = vdupq_lane_s64(v150, 0);
              v163 = v148;
              v164 = v181;
              v165 = v183;
              do
              {
                v166 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v163), *v164, v162));
                v163[-1] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v163[-1]), v164[-1], v162));
                *v163 = v166;
                v164 += 2;
                v163 += 2;
                v165 -= 4;
              }

              while (v165);
              v161 = v182;
              if (v184)
              {
LABEL_127:
                do
                {
                  v167 = v149[v161] + *&v150 * v76[v161];
                  v149[v161++] = v167;
                }

                while (v161 < v21);
              }
            }

            ++v147;
            v149 = (v149 + v49);
            v148 = (v148 + v49);
            if (v147 == v50)
            {
              break;
            }

            continue;
          }
        }
      }

LABEL_61:
      ++v75;
      a5 = (a5 + v45);
      a8 += v48;
      v187 = (v187 + v45);
    }

    while (v75 != v24);
  }

  return result;
}

void sub_10023EA20(int a1, unsigned int a2, __n128 *a3, uint64_t a4, double *a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, float64x2_t a11, uint64_t a12, float64x2_t *a13, uint64_t a14, unsigned int a15, double *a16, unint64_t a17, uint64_t a18)
{
  v210 = a17 >> 3;
  if (a2 >= a1)
  {
    v22 = a1;
  }

  else
  {
    v22 = a2;
  }

  v198 = v22;
  if (a13)
  {
    v24 = a15;
  }

  else
  {
    v24 = a1;
  }

  if (a2 >= 1 && v24 >= 1)
  {
    v25 = a16;
    v26 = a2;
    do
    {
      bzero(v25, 8 * v24);
      v25 += v210;
      --v26;
    }

    while (v26);
  }

  v27 = a3;
  if (v198 < 1)
  {
    return;
  }

  v28 = 0;
  v29 = (a6 >> 3);
  if (a4)
  {
    v30 = (a4 >> 3);
  }

  else
  {
    v30 = 1;
  }

  v31 = 0.0;
  if (v198 < 4)
  {
    goto LABEL_20;
  }

  if (v30 != 1)
  {
    goto LABEL_20;
  }

  v28 = v198 & 0x7FFFFFFC;
  v32 = &a3[1];
  v33 = v28;
  do
  {
    a11 = *v32;
    v31 = v31 + v32[-1].f64[0] + v32[-1].f64[1] + v32->f64[0] + v32->f64[1];
    v32 += 2;
    v33 -= 4;
  }

  while (v33);
  if (v28 != v198)
  {
LABEL_20:
    v34 = v198 - v28;
    v35 = &a3->n128_f64[v30 * v28];
    do
    {
      v31 = v31 + *v35;
      v35 += v30;
      --v34;
    }

    while (v34);
  }

  v36 = (a14 >> 3);
  v37 = v31 * 4.4408921e-16;
  if (a7)
  {
    v38 = 1;
  }

  else
  {
    v38 = (a6 >> 3);
  }

  v39 = v210;
  if (!a7)
  {
    v29 = 1;
  }

  v40 = (a12 >> 3);
  v41 = a2;
  if (v24 != 1)
  {
    v65 = 0;
    v66 = ((a18 + 7) & 0xFFFFFFFFFFFFFFF8);
    v67 = (v24 - 4);
    v211 = v210 << 32;
    v68 = v67 & 0xFFFFFFFC;
    v69 = ((8 * v67) & 0x7FFFFFFE0) + 32;
    v70 = a16 + v69;
    v71 = (v41 + 0x1FFFFFFFFFFFFFFFLL) * v39;
    v208 = a1;
    v72 = v68 + 5;
    if (v68 + 5 <= v24)
    {
      v72 = v24;
    }

    v73 = &a16[v71 + v72];
    v74 = v66 + v69;
    v187 = v38;
    v75 = &v66[v72];
    v76 = v72 - v68 - 4;
    v77 = &a16[v71 + 4 + v68];
    v199 = v39;
    v78 = (v67 >> 2) + 1;
    v193 = 8 * v29;
    v194 = v30;
    v185 = -8 * v29;
    v186 = v66 - a5;
    v79 = 32 * (v67 >> 2);
    v80 = v36 * (a1 + 0x1FFFFFFFFFFFFFFFLL);
    v192 = a1;
    v81 = &a13->f64[v80 + v72];
    v82 = &a13[2].f64[v80 + v68];
    v83 = v67 < 4;
    v85 = v82 > v66 && v74 > a13;
    v86 = v76 < 4;
    v88 = &v66[v79 / 8 + 4] < v81 && &a13[v79 / 0x10 + 2] < v75;
    if (v36 < 0)
    {
      v85 = 1;
    }

    v89 = v78 & 0x7FFFFFFE;
    v90 = v36 < 0 || v88;
    v91 = v72 & 3;
    v92 = v76 - v91;
    v93 = (v67 & 0xFFFFFFFC) + 4;
    v94 = a16;
    v95 = a13;
    v202 = v93 + v92;
    v195 = v24 & 0x7FFFFFFC;
    v97 = v74 > a16 && v77 > v66;
    v98 = v211 < 0;
    v100 = v70 < v75 && v74 < v73;
    v205 = v83 || v85;
    v200 = v86 | v90;
    v101 = v198;
    v103 = v208 < 4 || v187 != 1;
    v184 = v103;
    v209 = v83 || v98 || v97;
    v204 = v86 || v98 || v100;
    v104 = 8 * v36;
    v183 = &a13[v79 / 0x10 + 3];
    v201 = &v66[v79 / 8 + 6];
    v212 = 8 * v187;
    v105 = 4 * (v78 & 0x7FFFFFFE);
    v203 = a5 + 2;
    v106 = 8 * v199;
    v188 = &a16[v79 / 8 + 6];
    v107 = v193;
    v190 = v91;
    v191 = v105;
    v189 = v92;
    while (1)
    {
      v108 = v27->n128_f64[v65 * v30];
      if (fabs(v108) > v37)
      {
        a11.f64[0] = 1.0 / v108;
        if (v95)
        {
          if (v24 > 0)
          {
            v196 = a11;
            bzero(v66, 8 * v24);
            if (v24 < 4)
            {
              v109 = *v66;
              v110 = a13 + 1;
              v111 = a5;
              v112 = v192;
              v27 = a3;
              v101 = v198;
              v94 = a16;
              v95 = a13;
              v30 = v194;
              v78 = (v67 >> 2) + 1;
              v93 = (v67 & 0xFFFFFFFC) + 4;
              v91 = v190;
              v105 = v191;
              v92 = v189;
              do
              {
                v113 = *v111;
                v109 = v109 + *v111 * v110[-1].f64[0];
                *v66 = v109;
                v66[1] = v66[1] + v113 * v110[-1].f64[1];
                if (v24 != 2)
                {
                  v66[2] = v66[2] + v113 * v110->f64[0];
                }

                v111 = (v111 + v212);
                v110 = (v110 + v104);
                --v112;
              }

              while (v112);
LABEL_119:
              if (v24 >= 4)
              {
                v139 = v24 & 0x7FFFFFFC;
                v140 = (v66 + 2);
                v107 = v193;
                a11 = v196;
                do
                {
                  v141 = vmulq_n_f64(*v140, v196.f64[0]);
                  v140[-1] = vmulq_n_f64(v140[-1], v196.f64[0]);
                  *v140 = v141;
                  v140 += 2;
                  v139 -= 4;
                }

                while (v139);
                v138 = v24 & 0x7FFFFFFC;
                if (v195 == v24)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                v138 = 0;
                v107 = v193;
                a11 = v196;
              }

              v142 = v24 - v138;
              v143 = &v66[v138];
              do
              {
                *v143 = a11.f64[0] * *v143;
                ++v143;
                --v142;
              }

              while (v142);
              goto LABEL_132;
            }

            v116 = 0;
            v117 = v183;
            v94 = a16;
            v95 = a13;
            v118 = a13;
            v27 = a3;
            v101 = v198;
            v30 = v194;
            v78 = (v67 >> 2) + 1;
            v93 = (v67 & 0xFFFFFFFC) + 4;
            v91 = v190;
            v105 = v191;
            v92 = v189;
            while (2)
            {
              v119 = a5[v116 * v187];
              if (v205)
              {
                v120 = 0;
                goto LABEL_110;
              }

              v121 = 0;
              v122 = vdupq_lane_s64(*&v119, 0);
              v123 = v89;
              do
              {
                v124 = &v66[v121 / 8];
                v125 = vmlaq_f64(*&v66[v121 / 8 + 6], v118[v121 / 0x10 + 3], v122);
                v126 = vmlaq_f64(*&v66[v121 / 8 + 2], v118[v121 / 0x10 + 1], v122);
                v127 = vmlaq_f64(*&v66[v121 / 8 + 4], v118[v121 / 0x10 + 2], v122);
                *v124 = vmlaq_f64(*&v66[v121 / 8], v118[v121 / 0x10], v122);
                v124[1] = v126;
                v124[2] = v127;
                v124[3] = v125;
                v121 += 64;
                v123 -= 2;
              }

              while (v123);
              v120 = v191;
              if ((v67 >> 2) + 1 != v89)
              {
LABEL_110:
                v128 = vdupq_lane_s64(*&v119, 0);
                v129 = v120;
                do
                {
                  v130 = &v66[v129];
                  v131 = *&v66[v129 + 2];
                  *v130 = vmlaq_f64(*&v66[v129], *(v118 + v129 * 8), v128);
                  v130[1] = vmlaq_f64(v131, *(v118 + v129 * 8 + 16), v128);
                  v120 += 4;
                  v129 += 4;
                }

                while (v120 <= v67);
              }

              if (v24 > v120)
              {
                v132 = (v67 & 0xFFFFFFFC) + 4;
                if (v200)
                {
                  goto LABEL_161;
                }

                v133 = vdupq_lane_s64(*&v119, 0);
                v134 = v201;
                v135 = v117;
                v136 = v189;
                do
                {
                  v137 = vmlaq_f64(*v134, *v135, v133);
                  v134[-1] = vmlaq_f64(v134[-1], v135[-1], v133);
                  *v134 = v137;
                  v135 += 2;
                  v134 += 2;
                  v136 -= 4;
                }

                while (v136);
                v132 = v202;
                if (v190)
                {
LABEL_161:
                  do
                  {
                    v66[v132] = v66[v132] + v119 * v118->f64[v132];
                    ++v132;
                  }

                  while (v132 < v24);
                }
              }

              ++v116;
              v118 = (v118 + v104);
              v117 = (v117 + v104);
              if (v116 == v192)
              {
                goto LABEL_119;
              }

              continue;
            }
          }
        }

        else if (v24 >= 1)
        {
          v114 = v184;
          if ((v186 + v185 * v65) < 0x20)
          {
            v114 = 1;
          }

          if (v114)
          {
            v115 = 0;
            goto LABEL_130;
          }

          v144 = v24 & 0x7FFFFFFC;
          v145 = (v66 + 2);
          v146 = v203;
          do
          {
            v147 = vmulq_n_f64(*v146, a11.f64[0]);
            v145[-1] = vmulq_n_f64(v146[-1], a11.f64[0]);
            *v145 = v147;
            v146 += 2;
            v145 += 2;
            v144 -= 4;
          }

          while (v144);
          v115 = v24 & 0x7FFFFFFC;
          if (v195 != v24)
          {
LABEL_130:
            v148 = v24 - v115;
            v149 = &v66[v115];
            v150 = v212 * v115;
            do
            {
              *v149++ = a11.f64[0] * *(a5 + v150);
              v150 += v212;
              --v148;
            }

            while (v148);
          }

LABEL_132:
          if (v24 < 4)
          {
            v151 = 0;
            v152 = a16 + 2;
            do
            {
              v153 = *(a8 + 8 * v151);
              v154 = *(v152 - 1);
              *(v152 - 2) = *(v152 - 2) + v153 * *v66;
              *(v152 - 1) = v154 + v153 * v66[1];
              if (v24 != 2)
              {
                *v152 = *v152 + v153 * v66[2];
              }

              ++v151;
              v152 = (v152 + v106);
            }

            while (v41 != v151);
            goto LABEL_89;
          }

          v155 = 0;
          v156 = v188;
          v157 = a16 + 2;
          v158 = v94;
          while (2)
          {
            v159 = *(a8 + 8 * v155);
            if (v209)
            {
              v160 = 0;
              goto LABEL_144;
            }

            v161 = 0;
            v162 = vdupq_lane_s64(v159, 0);
            v163 = v89;
            do
            {
              v164 = &v158[v161];
              v165 = vmlaq_f64(*&v158[v161 + 6], *&v66[v161 + 6], v162);
              v166 = vmlaq_f64(*&v158[v161 + 2], *&v66[v161 + 2], v162);
              a11 = vmlaq_f64(*&v158[v161], *&v66[v161], v162);
              v167 = vmlaq_f64(*&v158[v161 + 4], *&v66[v161 + 4], v162);
              *v164 = a11;
              v164[1] = v166;
              v164[2] = v167;
              v164[3] = v165;
              v161 += 8;
              v163 -= 2;
            }

            while (v163);
            v160 = v105;
            if (v78 != v89)
            {
LABEL_144:
              v168 = vdupq_lane_s64(v159, 0);
              v169 = &v66[v160 + 2];
              v170 = &v157[v160];
              do
              {
                v171 = *v170;
                v170[-1] = vmlaq_f64(v170[-1], v169[-1], v168);
                v172 = *v169;
                v169 += 2;
                a11.f64[1] = v172.f64[1];
                *v170 = vmlaq_f64(v171, v172, v168);
                v170 += 2;
                v160 += 4;
              }

              while (v160 <= v67);
            }

            if (v24 > v160)
            {
              v173 = v93;
              if (v204)
              {
                goto LABEL_162;
              }

              v174 = vdupq_lane_s64(v159, 0);
              v175 = v156;
              v176 = v201;
              v177 = v92;
              do
              {
                a11 = vmlaq_f64(v175[-1], v176[-1], v174);
                v178 = vmlaq_f64(*v175, *v176, v174);
                v175[-1] = a11;
                *v175 = v178;
                v176 += 2;
                v175 += 2;
                v177 -= 4;
              }

              while (v177);
              v173 = v202;
              if (v91)
              {
LABEL_162:
                do
                {
                  v158[v173] = v158[v173] + *&v159 * v66[v173];
                  ++v173;
                }

                while (v173 < v24);
              }
            }

            ++v155;
            v158 = (v158 + v106);
            v157 = (v157 + v106);
            v156 = (v156 + v106);
            if (v155 == v41)
            {
              break;
            }

            continue;
          }
        }
      }

LABEL_89:
      ++v65;
      a5 = (a5 + v107);
      a8 += 8 * (a12 >> 3);
      v203 = (v203 + v107);
      if (v65 == v101)
      {
        return;
      }
    }
  }

  v42 = 0;
  if (a13)
  {
    v43 = v38 == 1 && v36 == 1;
    v44 = 8 * v29;
    v46 = !v43 || a1 < 6;
    v47 = a5 + 2;
    v48 = 8 * v36;
    v49 = 8 * v38;
    v50 = 8 * v40;
    while (1)
    {
      v51 = a3->n128_f64[v42 * v30];
      if (fabs(v51) > v37)
      {
        break;
      }

LABEL_39:
      ++v42;
      v47 = (v47 + v44);
      a5 = (a5 + v44);
      a8 += v50;
      if (v42 == v198)
      {
        return;
      }
    }

    if (v46)
    {
      v52 = 0;
      v53 = 0.0;
    }

    else
    {
      v53 = 0.0;
      v54 = a1 & 0xFFFFFFFC;
      v55 = a13 + 1;
      v56 = v47;
      do
      {
        v57 = vmulq_f64(v56[-1], v55[-1]);
        v58 = vmulq_f64(*v56, *v55);
        v53 = v53 + v57.f64[0] + v57.f64[1] + v58.f64[0] + v58.f64[1];
        v56 += 2;
        v55 += 2;
        v54 -= 4;
      }

      while (v54);
      v52 = a1 & 0xFFFFFFFC;
      if (v52 == a1)
      {
        goto LABEL_48;
      }
    }

    v59 = a1 - v52;
    v60 = (a13->f64 + v48 * v52);
    v61 = v49 * v52;
    do
    {
      v53 = v53 + *(a5 + v61) * *v60;
      v60 = (v60 + v48);
      v61 += v49;
      --v59;
    }

    while (v59);
LABEL_48:
    v62 = 0;
    v63 = 1.0 / v51 * v53;
    v64 = a16;
    do
    {
      *v64 = *v64 + v63 * *(a8 + 8 * v62++);
      v64 += v210;
    }

    while (a2 != v62);
    goto LABEL_39;
  }

  do
  {
    v179 = a3->n128_f64[v42 * v30];
    if (fabs(v179) > v37)
    {
      v180 = 0;
      v181 = 1.0 / v179 * *a5;
      v182 = a16;
      do
      {
        *v182 = *v182 + v181 * *(a8 + 8 * v180++);
        v182 += v210;
      }

      while (a2 != v180);
    }

    ++v42;
    a5 += v29;
    a8 += 8 * v40;
  }

  while (v42 != v198);
}

void sub_10023F480(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, char a5)
{
  if (sub_100271148(a1) == 0x10000)
  {
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(v10 + 16);
    v89 = *v10;
    v90 = v12;
    v91 = *(v10 + 32);
    v13 = *(v10 + 56);
    v92 = *(v10 + 48);
    v93 = v13;
    v94 = &v89 + 8;
    v95 = v96;
    v96[1] = 0;
    v96[0] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v10 + 4) <= 2)
      {
LABEL_4:
        v14 = *(v10 + 72);
        v15 = v95;
        *v95 = *v14;
        v15[1] = v14[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v11) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v89) = 0;
    sub_100269B58(&v89, v10);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v89);
  }

LABEL_8:
  v16 = HIDWORD(v89);
  v17 = DWORD2(v89);
  v18 = v89;
  v53 = sub_1002769C0(a3) || sub_1002769C0(a4);
  v19 = v18 & 0xFFF;
  if (v19 - 5 >= 2)
  {
    v98 = 0;
    v97 = 0;
    qmemcpy(sub_1002A80E0(&v97, 22), "type == 5 || type == 6", 22);
    sub_1002A8980(-215, &v97, "_SVDcompute", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1473);
  }

  if ((a5 & 2) != 0)
  {
    sub_100274CEC(a3);
    sub_100274CEC(a4);
    v52 = v16;
    v53 = 0;
    if (v17 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    if (v17 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21;
    v23 = DWORD1(v89);
    v50 = a3;
    v51 = a4;
    v49 = a2;
    if (SDWORD1(v89) >= 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v17 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    if (v17 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    if ((a5 & 4) != 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v23 = DWORD1(v89);
    v50 = a3;
    v51 = a4;
    v49 = a2;
    v52 = v16;
    if (SDWORD1(v89) >= 1)
    {
LABEL_24:
      v24 = *(v95 + v23 - 1);
      goto LABEL_33;
    }
  }

  v24 = 0;
LABEL_33:
  v25 = (v24 * v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v24 * v21;
  v27 = v25 * v22;
  v97 = v99;
  v98 = v26 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF0) * v21 + v27 + 32;
  if (v98 >= 0x409)
  {
    operator new[]();
  }

  sub_10000A690(v81, v21, v20, v19, v99, v25);
  v28 = &v99[v27];
  sub_10000A690(v73, v21, 1, v19, v28, 0);
  sub_10000A690(v65, v22, v20, v19, v99, v25);
  *v61 = 1124007936;
  memset(&v61[4], 0, 60);
  v62 = &v61[8];
  v63 = v64;
  v64[0] = 0;
  v64[1] = 0;
  if (v53)
  {
    sub_10000A690(v57, v21, v21, v19, &v28[v26 + 15] & 0xFFFFFFFFFFFFFFF0, (v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (*&v61[56] && atomic_fetch_add((*&v61[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v61);
    }

    if (*&v61[4] >= 1)
    {
      v29 = 0;
      v30 = v62;
      do
      {
        *&v30[4 * v29++] = 0;
      }

      while (v29 < *&v61[4]);
    }

    *v61 = *v57;
    *&v61[16] = *&v57[16];
    *&v61[32] = *&v57[32];
    *&v61[48] = *&v57[48];
    v31 = v63;
    if (v63 == v64)
    {
      v32 = v59;
      if (*&v57[4] <= 2)
      {
        goto LABEL_44;
      }
    }

    else
    {
      j__free(v63);
      v62 = &v61[8];
      v63 = v64;
      v31 = v64;
      v32 = v59;
      if (*&v57[4] <= 2)
      {
LABEL_44:
        *v31 = *v32;
        v31[1] = v32[1];
        goto LABEL_47;
      }
    }

    v62 = v58;
    v63 = v32;
    v58 = &v57[8];
    v59 = v60;
LABEL_47:
    *v57 = 1124007936;
    memset(&v57[4], 0, 60);
    if (v59 != v60)
    {
      j__free(v59);
    }
  }

  if (v22 > v21)
  {
    memset(v57, 0, 32);
    sub_10022CAFC(v65, v57);
  }

  if (v17 >= v52)
  {
    *v57 = 16842752;
    *&v57[8] = &v89;
    *&v57[16] = 0;
    v54 = 33619968;
    v55 = v81;
    v56 = 0;
    sub_10026EF8C(v57, &v54);
  }

  else
  {
    *v57 = 33619968;
    *&v57[8] = v81;
    *&v57[16] = 0;
    sub_10022B754(&v89, v57);
  }

  if (v19 == 5)
  {
    if (*&v61[16])
    {
      if (v53)
      {
        v33 = v22;
      }

      else
      {
        v33 = 0;
      }

      if (v33 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = v21;
      }

      sub_10023762C(v83, v72, v75, *&v61[16], v64[0], v20, v21, v34, 1.17549435e-38, 0.00000023842);
    }

    else
    {
      sub_10023762C(v83, v72, v75, 0, v64[0], v20, v21, 0, 1.17549435e-38, 0.00000023842);
    }
  }

  else if (*&v61[16])
  {
    if (v53)
    {
      v35 = v22;
    }

    else
    {
      v35 = 0;
    }

    if (v35 >= 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = v21;
    }

    sub_100238A20(v83, v72, v75, *&v61[16], v64[0], v20, v21, v36, 2.22507386e-308, 2.22044605e-15);
  }

  else
  {
    sub_100238A20(v83, v72, v75, 0, v64[0], v20, v21, 0, 2.22507386e-308, 2.22044605e-15);
  }

  sub_10022B754(v73, v49);
  if (v53)
  {
    if (v17 >= v52)
    {
      if (sub_1002769C0(v50))
      {
        *v57 = 16842752;
        *&v57[8] = v65;
        *&v57[16] = 0;
        sub_10026EF8C(v57, v50);
      }

      if (sub_1002769C0(v51))
      {
        v37 = v61;
        goto LABEL_83;
      }
    }

    else
    {
      if (sub_1002769C0(v50))
      {
        *v57 = 16842752;
        *&v57[8] = v61;
        *&v57[16] = 0;
        sub_10026EF8C(v57, v50);
      }

      if (sub_1002769C0(v51))
      {
        v37 = v65;
LABEL_83:
        sub_10022B754(v37, v51);
      }
    }
  }

  if (*&v61[56] && atomic_fetch_add((*&v61[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v61);
  }

  *&v61[56] = 0;
  memset(&v61[16], 0, 32);
  if (*&v61[4] >= 1)
  {
    v38 = 0;
    v39 = v62;
    do
    {
      *&v39[4 * v38++] = 0;
    }

    while (v38 < *&v61[4]);
  }

  if (v63 != v64)
  {
    j__free(v63);
  }

  if (v69 && atomic_fetch_add((v69 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v65);
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  if (v66 >= 1)
  {
    v40 = 0;
    v41 = v70;
    do
    {
      *(v41 + 4 * v40++) = 0;
    }

    while (v40 < v66);
  }

  if (v71 != &v72)
  {
    j__free(v71);
  }

  if (v77 && atomic_fetch_add((v77 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v73);
  }

  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  if (v74 >= 1)
  {
    v42 = 0;
    v43 = v78;
    do
    {
      *(v43 + 4 * v42++) = 0;
    }

    while (v42 < v74);
  }

  if (v79 != &v80)
  {
    j__free(v79);
  }

  if (v85 && atomic_fetch_add((v85 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v81);
  }

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  if (v82 >= 1)
  {
    v44 = 0;
    v45 = v86;
    do
    {
      *(v45 + 4 * v44++) = 0;
    }

    while (v44 < v82);
  }

  if (v87 != &v88)
  {
    j__free(v87);
  }

  if (v97 != v99 && v97 != 0)
  {
    operator delete[]();
  }

  if (v93 && atomic_fetch_add((v93 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v89);
  }

  v93 = 0;
  v90 = 0u;
  v91 = 0u;
  if (SDWORD1(v89) >= 1)
  {
    v47 = 0;
    v48 = v94;
    do
    {
      *&v48[4 * v47++] = 0;
    }

    while (v47 < SDWORD1(v89));
  }

  if (v95 != v96)
  {
    j__free(v95);
  }
}

void sub_10023FD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a29);
  sub_100006D14(&a41);
  sub_100006D14(&a53);
  sub_100006D14(&a65);
  if (STACK[0x280] != a12)
  {
    if (STACK[0x280])
    {
      operator delete[]();
    }
  }

  sub_100006D14(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t sub_10023FE74(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4, unint64_t a5, int a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12)
{
  v176 = a5;
  v13 = a4;
  if (a4)
  {
    if (a6 < 1)
    {
      return 1;
    }

    v171 = a7;
    v173 = a2;
    v169 = a5 >> 2;
    v16 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = (a5 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v18 = a4;
    v19 = a6;
    do
    {
      bzero(v18, 4 * a6);
      *v13 = 1065353216;
      v13 = (v13 + v17);
      v18 = (v18 + v16);
      --v19;
    }

    while (v19);
    a7 = v171;
    v176 = v169;
    a2 = v173;
    v13 = a4;
  }

  v20 = (a6 - 1);
  if (a6 >= 1)
  {
    v21 = 0;
    v22 = 30 * a6 * a6;
    v23 = ((a7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v24 = &v23[a6];
    v25 = a2 >> 2;
    v26 = (a1 + 8);
    v27 = 4 * (a2 >> 2);
    v28 = (a1 + v27);
    v29 = 2;
    do
    {
      *(a3 + 4 * v21) = *(a1 + 4 * ((a2 >> 2) + 1) * v21);
      if (v21 < v20)
      {
        v31 = v21 + 1;
        if (v21 + 2 < a6)
        {
          v32 = fabsf(*(a1 + 4 * v25 * v21 + 4 * v31));
          v33 = v26;
          v34 = v29;
          do
          {
            v35 = *v33++;
            v36 = fabsf(v35);
            if (v32 < v36)
            {
              v32 = v36;
              LODWORD(v31) = v34;
            }

            ++v34;
          }

          while (a6 != v34);
        }

        v23[v21] = v31;
      }

      if (v21)
      {
        if (v21 == 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0;
          v37 = fabsf(*(a1 + 4 * v21));
          v38 = v28;
          for (i = 1; i != v21; ++i)
          {
            v40 = fabsf(*v38);
            if (v37 < v40)
            {
              v37 = v40;
              v30 = i;
            }

            v38 = (v38 + v27);
          }
        }

        v24[v21] = v30;
      }

      ++v21;
      ++v29;
      v26 = (v26 + v27 + 4);
      ++v28;
    }

    while (v21 != a6);
    if (a6 != 1 && v22)
    {
      v41 = 0;
      v42 = 4 * v176;
      v170 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v43 = a1 + v27;
      v172 = &v13[a6];
      while (1)
      {
        v45 = *v23;
        v46 = fabsf(*(a1 + 4 * v45));
        if (a6 < 3)
        {
          LODWORD(v47) = 0;
        }

        else
        {
          LODWORD(v47) = 0;
          v48 = v43;
          v49 = 1;
          do
          {
            v50 = fabsf(*(v48 + 4 * v23[v49]));
            if (v46 < v50)
            {
              v46 = v50;
              LODWORD(v47) = v49;
            }

            ++v49;
            v48 += v27;
          }

          while (v20 != v49);
          LODWORD(v45) = v23[v47];
        }

        v51 = 1;
        do
        {
          v52 = v24[v51];
          v53 = fabsf(*(a1 + v27 * v52 + 4 * v51));
          v54 = v46 < v53;
          if (v46 >= v53)
          {
            v45 = v45;
          }

          else
          {
            v46 = v53;
            v45 = v51;
          }

          if (v54)
          {
            v47 = v52;
          }

          else
          {
            v47 = v47;
          }

          ++v51;
        }

        while (a6 != v51);
        v55 = a1 + 4 * v25 * v47;
        v56 = *(v55 + 4 * v45);
        v57 = fabsf(v56);
        if (v57 <= 0.00000011921)
        {
          goto LABEL_123;
        }

        v58 = (*(a3 + 4 * v45) - *(a3 + 4 * v47)) * 0.5;
        v59 = fabsf(v58);
        if (v57 <= v59)
        {
          v60 = 0.0;
          if (v58 != 0.0)
          {
            v60 = v59 * sqrtf(((v57 / v59) * (v57 / v59)) + 1.0);
          }
        }

        else
        {
          v60 = v57 * sqrtf(((v59 / v57) * (v59 / v57)) + 1.0);
        }

        v61 = v59 + v60;
        v62 = fabsf(v61);
        if (v57 <= v62)
        {
          v63 = 0.0;
          if (v61 != 0.0)
          {
            v63 = v62 * sqrtf(((v57 / v62) * (v57 / v62)) + 1.0);
          }
        }

        else
        {
          v63 = v57 * sqrtf(((v62 / v57) * (v62 / v57)) + 1.0);
        }

        *&a11 = v61 / v63;
        v64 = v58 < 0.0;
        if (v58 >= 0.0)
        {
          v65 = v56 * (v56 / v61);
        }

        else
        {
          v65 = -(v56 * (v56 / v61));
        }

        *(v55 + 4 * v45) = 0;
        if (v64)
        {
          *&a12 = -(v56 / v63);
        }

        else
        {
          *&a12 = v56 / v63;
        }

        *(a3 + 4 * v47) = *(a3 + 4 * v47) - v65;
        *(a3 + 4 * v45) = v65 + *(a3 + 4 * v45);
        if (v47 >= 1)
        {
          v66 = v47;
          v67 = a1;
          do
          {
            v68 = *(v67 + 4 * v47);
            v69 = *(v67 + 4 * v45);
            *(v67 + 4 * v47) = (v68 * *&a11) - (v69 * *&a12);
            *(v67 + 4 * v45) = (*&a11 * v69) + (v68 * *&a12);
            v67 += v27;
            --v66;
          }

          while (v66);
        }

        v70 = v47 + 1;
        if (v47 + 1 < v45)
        {
          v71 = (a1 + v27 * v70 + 4 * v45);
          v72 = (a1 + v27 * v47 + 4 * v70);
          v73 = ~v47 + v45;
          do
          {
            v74 = *v72;
            v75 = *v71;
            *v72 = (*v72 * *&a11) - (*v71 * *&a12);
            ++v72;
            *v71 = (*&a11 * v75) + (v74 * *&a12);
            v71 = (v71 + v27);
            --v73;
          }

          while (v73);
        }

        v76 = v45 + 1;
        if (v45 + 1 < a6)
        {
          v77 = v76;
          v78 = (a6 - 2 - v45);
          if (v78 <= 2)
          {
            goto LABEL_77;
          }

          v79 = 4 * v76 + v170 * v47;
          v80 = (a1 + v79);
          v175 = a1 + 4 * v25 * v47;
          v81 = v41;
          v82 = v25;
          v83 = v42;
          v84 = v43;
          v85 = a1 + 4 + 4 * v78;
          v86 = v85 + v79;
          v87 = v13;
          v88 = 4 * v76 + v170 * v45;
          v89 = (a1 + v88);
          v90 = v85 + v88;
          v13 = v87;
          v43 = v84;
          v42 = v83;
          v25 = v82;
          v41 = v81;
          v55 = v175;
          if (v80 < v90 && v89 < v86)
          {
            goto LABEL_77;
          }

          v92 = v78 + 1;
          v93 = (v78 + 1) & 0x1FFFFFFFCLL;
          v77 = v93 + v76;
          v94 = vdupq_lane_s32(*&a12, 0);
          v95 = vdupq_lane_s32(*&a11, 0);
          v96 = v93;
          do
          {
            v97 = *v80;
            v98 = *v89;
            *v80 = vmlaq_f32(vmulq_n_f32(vnegq_f32(*v89), *&a12), v95, *v80);
            ++v80;
            *v89++ = vmlaq_f32(vmulq_n_f32(v98, *&a11), v94, v97);
            v96 -= 4;
          }

          while (v96);
          if (v92 != v93)
          {
LABEL_77:
            v99 = a1 + 4 * v77;
            v100 = (v99 + v27 * v47);
            v101 = (v99 + v27 * v45);
            v102 = a6 - v77;
            do
            {
              v103 = *v100;
              v104 = *v101;
              *v100 = (*v100 * *&a11) - (*v101 * *&a12);
              ++v100;
              *v101++ = (*&a11 * v104) + (v103 * *&a12);
              --v102;
            }

            while (v102);
          }
        }

        if (v13)
        {
          if (a6 >= 4 && ((v105 = &v13[v176 * v47], v106 = &v13[v176 * v45], v105 < (v172 + v42 * v45)) ? (v107 = v106 >= (v172 + v42 * v47)) : (v107 = 1), v107))
          {
            v108 = vdupq_lane_s32(*&a12, 0);
            v109 = vdupq_lane_s32(*&a11, 0);
            v110 = a6 & 0x7FFFFFFC;
            do
            {
              v111 = *v105;
              v112 = *v106;
              *v105 = vmlaq_f32(vmulq_n_f32(vnegq_f32(*v106), *&a12), v109, *v105);
              ++v105;
              *v106++ = vmlaq_f32(vmulq_n_f32(v112, *&a11), v108, v111);
              v110 -= 4;
            }

            while (v110);
            v113 = a6 & 0x7FFFFFFC;
            if (v113 == a6)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v113 = 0;
          }

          v114 = &v13[v113];
          v115 = (v114 + v42 * v47);
          v116 = (v114 + v42 * v45);
          v117 = a6 - v113;
          do
          {
            v118 = *v115;
            v119 = *v116;
            *v115 = (*v115 * *&a11) - (*v116 * *&a12);
            ++v115;
            *v116++ = (*&a11 * v119) + (v118 * *&a12);
            --v117;
          }

          while (v117);
        }

LABEL_93:
        if (v47 < v20)
        {
          v120 = v47 + 2;
          if (v47 + 2 < a6)
          {
            v121 = fabsf(*(v55 + 4 * v70));
            v122 = (a1 + v27 * v47 + 4 * v120);
            do
            {
              v123 = *v122++;
              v124 = fabsf(v123);
              if (v121 < v124)
              {
                v121 = v124;
                LODWORD(v70) = v120;
              }

              ++v120;
            }

            while (a6 != v120);
          }

          v23[v47] = v70;
        }

        if (v47 >= 1)
        {
          if (v47 == 1)
          {
            v125 = 0;
          }

          else
          {
            v125 = 0;
            v126 = fabsf(*(a1 + 4 * v47));
            v127 = (v43 + 4 * v47);
            for (j = 1; j != v47; ++j)
            {
              v129 = fabsf(*v127);
              if (v126 < v129)
              {
                v126 = v129;
                v125 = j;
              }

              v127 = (v127 + v27);
            }
          }

          v24[v47] = v125;
        }

        if (v45 < v20)
        {
          v130 = v45 + 2;
          if (v45 + 2 < a6)
          {
            v131 = fabsf(*(a1 + 4 * v25 * v45 + 4 * v76));
            v132 = (a1 + v27 * v45 + 4 * v130);
            do
            {
              v133 = *v132++;
              v134 = fabsf(v133);
              if (v131 < v134)
              {
                v131 = v134;
                LODWORD(v76) = v130;
              }

              ++v130;
            }

            while (a6 != v130);
          }

          v23[v45] = v76;
        }

        if (v45 >= 1)
        {
          if (v45 == 1)
          {
            v44 = 0;
          }

          else
          {
            v44 = 0;
            v135 = fabsf(*(a1 + 4 * v45));
            v136 = (v43 + 4 * v45);
            for (k = 1; k != v45; ++k)
            {
              v138 = fabsf(*v136);
              if (v135 < v138)
              {
                v135 = v138;
                v44 = k;
              }

              v136 = (v136 + v27);
            }
          }

          v24[v45] = v44;
        }

        if (++v41 == v22)
        {
          goto LABEL_123;
        }
      }
    }

    if (a6 != 1)
    {
LABEL_123:
      if (v13)
      {
        v139 = 0;
        v140 = 4 * v176;
        v141 = 1;
        v142 = v13;
        v143 = (v13 + 4);
        while (1)
        {
          v144 = v139++;
          v145 = v141;
          v146 = v144;
          do
          {
            if (*(a3 + 4 * v146) < *(a3 + 4 * v145))
            {
              v146 = v145;
            }

            ++v145;
          }

          while (a6 != v145);
          if (v144 == v146)
          {
            goto LABEL_125;
          }

          v147 = *(a3 + 4 * v146);
          v148 = v146;
          *(a3 + 4 * v146) = *(a3 + 4 * v144);
          *(a3 + 4 * v144) = v147;
          if (a6 >= 8)
          {
            v149 = 0;
            v154 = &v13[v176 * v146];
            if (((&v13[a6] + v140 * v148) <= v13 || v154 >= &v13[a6 + v176 * (v20 - 1)]) && (v140 & 0x8000000000000000) == 0)
            {
              v156 = (v13 + v140 * v148 + 16);
              v157 = a6 & 0x7FFFFFF8;
              v158 = v143;
              do
              {
                v159 = *(v156 - 1);
                v160 = *v156;
                v161 = *v158;
                *(v156 - 1) = *(v158 - 1);
                *v156 = v161;
                *(v158 - 1) = v159;
                *v158 = v160;
                v156 += 2;
                v158 += 2;
                v157 -= 8;
              }

              while (v157);
              v149 = a6 & 0x7FFFFFF8;
              if (v149 == a6)
              {
                goto LABEL_125;
              }
            }
          }

          else
          {
            v149 = 0;
          }

          v150 = (&v13[v149] + v140 * v148);
          v151 = &v142[v149];
          v152 = a6 - v149;
          do
          {
            v153 = *v150;
            *v150++ = *v151;
            *v151++ = v153;
            --v152;
          }

          while (v152);
LABEL_125:
          ++v141;
          v143 = (v143 + v140);
          v142 = (v142 + v140);
          if (v139 == v20)
          {
            return 1;
          }
        }
      }

      v162 = 0;
      v163 = 1;
      do
      {
        v164 = v162++;
        v165 = v163;
        v166 = v164;
        do
        {
          if (*(a3 + 4 * v166) < *(a3 + 4 * v165))
          {
            v166 = v165;
          }

          ++v165;
        }

        while (a6 != v165);
        if (v164 != v166)
        {
          v167 = *(a3 + 4 * v166);
          *(a3 + 4 * v166) = *(a3 + 4 * v164);
          *(a3 + 4 * v164) = v167;
        }

        ++v163;
      }

      while (v162 != v20);
    }
  }

  return 1;
}

uint64_t sub_10024076C(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, unint64_t a5, unsigned int a6, uint64_t a7)
{
  v168 = a5;
  if (a4)
  {
    if (a6 < 1)
    {
      return 1;
    }

    v163 = a7;
    v165 = a2;
    v162 = a5 >> 3;
    v10 = a5 & 0xFFFFFFFFFFFFFFF8;
    v11 = (a5 & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = a4;
    v167 = a4;
    v13 = a4;
    v14 = a6;
    do
    {
      bzero(v12, 8 * a6);
      *v13 = 0x3FF0000000000000;
      v13 += v11;
      v12 += v10;
      --v14;
    }

    while (v14);
    a7 = v163;
    v168 = v162;
    a2 = v165;
    a4 = v167;
  }

  v15 = a6 - 1;
  if (a6 >= 1)
  {
    v16 = 0;
    v17 = 30 * a6 * a6;
    v18 = ((a7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = &v18[a6];
    v20 = a2 >> 3;
    v21 = (a1 + 16);
    v22 = 8 * (a2 >> 3);
    v23 = (a1 + v22);
    v24 = 2;
    do
    {
      *(a3 + 8 * v16) = *(a1 + 8 * ((a2 >> 3) + 1) * v16);
      if (v16 < v15)
      {
        v26 = v16 + 1;
        if (v16 + 2 < a6)
        {
          v27 = fabs(*(a1 + 8 * v20 * v16 + 8 * v26));
          v28 = v21;
          v29 = v24;
          do
          {
            v30 = *v28++;
            v31 = fabs(v30);
            if (v27 < v31)
            {
              v27 = v31;
              LODWORD(v26) = v29;
            }

            ++v29;
          }

          while (a6 != v29);
        }

        v18[v16] = v26;
      }

      if (v16)
      {
        if (v16 == 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0;
          v32 = fabs(*(a1 + 8 * v16));
          v33 = v23;
          for (i = 1; i != v16; ++i)
          {
            v35 = fabs(*v33);
            if (v32 < v35)
            {
              v32 = v35;
              v25 = i;
            }

            v33 = (v33 + v22);
          }
        }

        v19[v16] = v25;
      }

      ++v16;
      ++v24;
      v21 = (v21 + v22 + 8);
      ++v23;
    }

    while (v16 != a6);
    if (a6 != 1 && v17)
    {
      v36 = 0;
      v37 = 8 * v168;
      v164 = a2 & 0xFFFFFFFFFFFFFFF8;
      v38 = a6 - 2;
      v39 = a1 + v22;
      v166 = &a4[8 * a6];
      while (1)
      {
        v41 = *v18;
        v42 = fabs(*(a1 + 8 * v41));
        if (a6 < 3)
        {
          LODWORD(v43) = 0;
        }

        else
        {
          LODWORD(v43) = 0;
          v44 = v39;
          v45 = 1;
          do
          {
            v46 = fabs(*(v44 + 8 * v18[v45]));
            if (v42 < v46)
            {
              v42 = v46;
              LODWORD(v43) = v45;
            }

            ++v45;
            v44 += v22;
          }

          while (v15 != v45);
          LODWORD(v41) = v18[v43];
        }

        v47 = 1;
        do
        {
          v48 = v19[v47];
          v49 = fabs(*(a1 + v22 * v48 + 8 * v47));
          v50 = v42 < v49;
          if (v42 >= v49)
          {
            v41 = v41;
          }

          else
          {
            v42 = v49;
            v41 = v47;
          }

          if (v50)
          {
            v43 = v48;
          }

          else
          {
            v43 = v43;
          }

          ++v47;
        }

        while (a6 != v47);
        v51 = a1 + 8 * v20 * v43;
        v52 = *(v51 + 8 * v41);
        v53 = fabs(v52);
        if (v53 <= 2.22044605e-16)
        {
          goto LABEL_120;
        }

        v54 = (*(a3 + 8 * v41) - *(a3 + 8 * v43)) * 0.5;
        v55 = fabs(v54);
        if (v53 <= v55)
        {
          v56 = 0.0;
          if (v54 != 0.0)
          {
            v56 = v55 * sqrt(v53 / v55 * (v53 / v55) + 1.0);
          }
        }

        else
        {
          v56 = v53 * sqrt(v55 / v53 * (v55 / v53) + 1.0);
        }

        v57 = v55 + v56;
        v58 = fabs(v57);
        if (v53 <= v58)
        {
          v59 = 0.0;
          if (v57 != 0.0)
          {
            v59 = v58 * sqrt(v53 / v58 * (v53 / v58) + 1.0);
          }
        }

        else
        {
          v59 = v53 * sqrt(v58 / v53 * (v58 / v53) + 1.0);
        }

        v60 = v57 / v59;
        v61 = v54 < 0.0;
        if (v54 >= 0.0)
        {
          v62 = v52 * (v52 / v57);
        }

        else
        {
          v62 = -(v52 * (v52 / v57));
        }

        *(v51 + 8 * v41) = 0;
        if (v61)
        {
          v63 = -(v52 / v59);
        }

        else
        {
          v63 = v52 / v59;
        }

        *(a3 + 8 * v43) = *(a3 + 8 * v43) - v62;
        *(a3 + 8 * v41) = v62 + *(a3 + 8 * v41);
        if (v43 >= 1)
        {
          v64 = v43;
          v65 = a1;
          do
          {
            v66 = *(v65 + 8 * v43);
            v67 = *(v65 + 8 * v41);
            *(v65 + 8 * v43) = v66 * v60 - v67 * v63;
            *(v65 + 8 * v41) = v60 * v67 + v66 * v63;
            v65 += v22;
            --v64;
          }

          while (v64);
        }

        v68 = v43 + 1;
        if (v43 + 1 < v41)
        {
          v69 = (a1 + v22 * v68 + 8 * v41);
          v70 = (a1 + v22 * v43 + 8 * v68);
          v71 = ~v43 + v41;
          do
          {
            v72 = *v70;
            v73 = *v69;
            *v70 = *v70 * v60 - *v69 * v63;
            ++v70;
            *v69 = v60 * v73 + v72 * v63;
            v69 = (v69 + v22);
            --v71;
          }

          while (v71);
        }

        v74 = v41 + 1;
        if (v41 + 1 < a6)
        {
          v75 = v74;
          v76 = (v38 - v41);
          if (v76 <= 2)
          {
            goto LABEL_77;
          }

          v77 = 8 * v74 + v164 * v43;
          v78 = (a1 + v77);
          v79 = v38;
          v80 = a1 + 8 + 8 * v76;
          v81 = v17;
          v82 = v80 + v77;
          v83 = 8 * v74 + v164 * v41;
          v39 = a1 + v22;
          v84 = (a1 + v83);
          v85 = v78 >= v80 + v83 || v84 >= v82;
          v17 = v81;
          v38 = v79;
          if (!v85)
          {
            goto LABEL_77;
          }

          v86 = v76 + 1;
          v87 = (v76 + 1) & 0x1FFFFFFFELL;
          v75 = v87 + v74;
          v88 = vdupq_lane_s64(*&v63, 0);
          v89 = vdupq_lane_s64(*&v60, 0);
          v90 = v87;
          do
          {
            v91 = *v78;
            v92 = *v84;
            *v78 = vmlaq_f64(vmulq_n_f64(vnegq_f64(*v84), v63), v89, *v78);
            ++v78;
            *v84++ = vmlaq_f64(vmulq_n_f64(v92, v60), v88, v91);
            v90 -= 2;
          }

          while (v90);
          if (v86 != v87)
          {
LABEL_77:
            v93 = a1 + 8 * v75;
            v94 = (v93 + v22 * v43);
            v95 = (v93 + v22 * v41);
            v96 = a6 - v75;
            do
            {
              v97 = *v94;
              v98 = *v95;
              *v94 = *v94 * v60 - *v95 * v63;
              ++v94;
              *v95++ = v60 * v98 + v97 * v63;
              --v96;
            }

            while (v96);
          }
        }

        if (a4)
        {
          v99 = &a4[8 * v168 * v43];
          v100 = &a4[8 * v168 * v41];
          if (v99 >= &v166[v37 * v41] || v100 >= &v166[v37 * v43])
          {
            v102 = vdupq_lane_s64(*&v63, 0);
            v103 = vdupq_lane_s64(*&v60, 0);
            v104 = a6 & 0x7FFFFFFE;
            do
            {
              v105 = *v99;
              v106 = *v100;
              *v99 = vmlaq_f64(vmulq_n_f64(vnegq_f64(*v100), v63), v103, *v99);
              ++v99;
              *v100++ = vmlaq_f64(vmulq_n_f64(v106, v60), v102, v105);
              v104 -= 2;
            }

            while (v104);
            v107 = a6 & 0x7FFFFFFE;
            if (v107 == a6)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v107 = 0;
          }

          v108 = &a4[8 * v107];
          v109 = &v108[v37 * v43];
          v110 = &v108[v37 * v41];
          v111 = a6 - v107;
          do
          {
            v112 = *v109;
            v113 = *v110;
            *v109 = *v109 * v60 - *v110 * v63;
            ++v109;
            *v110++ = v60 * v113 + v112 * v63;
            --v111;
          }

          while (v111);
        }

LABEL_90:
        if (v43 < v15)
        {
          v114 = v43 + 2;
          if (v43 + 2 < a6)
          {
            v115 = fabs(*(a1 + 8 * v20 * v43 + 8 * v68));
            v116 = (a1 + v22 * v43 + 8 * v114);
            do
            {
              v117 = *v116++;
              v118 = fabs(v117);
              if (v115 < v118)
              {
                v115 = v118;
                LODWORD(v68) = v114;
              }

              ++v114;
            }

            while (a6 != v114);
          }

          v18[v43] = v68;
        }

        if (v43 >= 1)
        {
          if (v43 == 1)
          {
            v119 = 0;
          }

          else
          {
            v119 = 0;
            v120 = fabs(*(a1 + 8 * v43));
            v121 = (v39 + 8 * v43);
            for (j = 1; j != v43; ++j)
            {
              v123 = fabs(*v121);
              if (v120 < v123)
              {
                v120 = v123;
                v119 = j;
              }

              v121 = (v121 + v22);
            }
          }

          v19[v43] = v119;
        }

        if (v41 < v15)
        {
          v124 = v41 + 2;
          if (v41 + 2 < a6)
          {
            v125 = fabs(*(a1 + 8 * v20 * v41 + 8 * v74));
            v126 = (a1 + v22 * v41 + 8 * v124);
            do
            {
              v127 = *v126++;
              v128 = fabs(v127);
              if (v125 < v128)
              {
                v125 = v128;
                LODWORD(v74) = v124;
              }

              ++v124;
            }

            while (a6 != v124);
          }

          v18[v41] = v74;
        }

        if (v41 >= 1)
        {
          if (v41 == 1)
          {
            v40 = 0;
          }

          else
          {
            v40 = 0;
            v129 = fabs(*(a1 + 8 * v41));
            v130 = (v39 + 8 * v41);
            for (k = 1; k != v41; ++k)
            {
              v132 = fabs(*v130);
              if (v129 < v132)
              {
                v129 = v132;
                v40 = k;
              }

              v130 = (v130 + v22);
            }
          }

          v19[v41] = v40;
        }

        if (++v36 == v17)
        {
          goto LABEL_120;
        }
      }
    }

    if (a6 != 1)
    {
LABEL_120:
      if (a4)
      {
        v133 = 0;
        v134 = 8 * v168;
        v135 = 1;
        v136 = a4;
        v137 = a4 + 16;
        while (1)
        {
          v138 = v133++;
          v139 = v135;
          v140 = v138;
          do
          {
            if (*(a3 + 8 * v140) < *(a3 + 8 * v139))
            {
              v140 = v139;
            }

            ++v139;
          }

          while (a6 != v139);
          if (v138 == v140)
          {
            goto LABEL_122;
          }

          v141 = *(a3 + 8 * v140);
          v142 = v140;
          *(a3 + 8 * v140) = *(a3 + 8 * v138);
          *(a3 + 8 * v138) = v141;
          if (a6 >= 4)
          {
            v143 = 0;
            if ((&a4[8 * a6 + v134 * v140] <= a4 || &a4[8 * v168 * v140] >= &a4[8 * a6 + 8 * v168 * (v15 - 1)]) && (v134 & 0x8000000000000000) == 0)
            {
              v149 = &a4[v134 * v140 + 16];
              v150 = a6 & 0x7FFFFFFC;
              v151 = v137;
              do
              {
                v152 = *(v149 - 1);
                v153 = *v149;
                v154 = *v151;
                *(v149 - 1) = *(v151 - 1);
                *v149 = v154;
                *(v151 - 1) = v152;
                *v151 = v153;
                v149 += 32;
                v151 += 32;
                v150 -= 4;
              }

              while (v150);
              v143 = a6 & 0x7FFFFFFC;
              if (v143 == a6)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            v143 = 0;
          }

          v144 = &a4[8 * v143 + v134 * v142];
          v145 = &v136[8 * v143];
          v146 = a6 - v143;
          do
          {
            v147 = *v144;
            *v144 = *v145;
            v144 += 8;
            *v145 = v147;
            v145 += 8;
            --v146;
          }

          while (v146);
LABEL_122:
          ++v135;
          v137 += v134;
          v136 += v134;
          if (v133 == v15)
          {
            return 1;
          }
        }
      }

      v155 = 0;
      v156 = 1;
      do
      {
        v157 = v155++;
        v158 = v156;
        v159 = v157;
        do
        {
          if (*(a3 + 8 * v159) < *(a3 + 8 * v158))
          {
            v159 = v158;
          }

          ++v158;
        }

        while (a6 != v158);
        if (v157 != v159)
        {
          v160 = *(a3 + 8 * v159);
          *(a3 + 8 * v159) = *(a3 + 8 * v157);
          *(a3 + 8 * v157) = v160;
        }

        ++v156;
      }

      while (v155 != v15);
    }
  }

  return 1;
}

uint64_t sub_10024105C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1);
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 4));
  }

  v5 = *(a1 + 72);
  if (v5 != (a1 + 80))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_1002410F0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1);
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 4));
  }

  v5 = *(a1 + 72);
  if (v5 != (a1 + 80))
  {
    j__free(v5);
  }

  return a1;
}

void *sub_100241184(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v14 == 1)
  {
    v6 = (a1 + *(*a1 - 24));
    rdbuf = v6->__rdbuf_;
    fmtflags = v6->__fmtflags_;
    v9 = v6[1].__fmtflags_;
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((fmtflags & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_100241330(rdbuf, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1002412C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1002412A8);
}

uint64_t sub_100241330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100241528();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_10024150C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100241540()
{
  if ((atomic_load_explicit(&qword_1004BD400, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_1004BD400))
  {
    return dword_1004BD3F8;
  }

  dword_1004BD3F8 = sub_100241E1C();
  __cxa_guard_release(&qword_1004BD400);
  return dword_1004BD3F8;
}

uint64_t sub_1002415C8(int a1, const char *a2)
{
  sub_1002AA18C();
  if (a1 >= 4)
  {
    v4 = &std::cout;
  }

  else
  {
    v4 = &std::cerr;
  }

  sub_100241960(v17);
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v5 = "[FATAL:";
        break;
      case 2:
        v5 = "[ERROR:";
        break;
      case 3:
        v5 = "[ WARN:";
        break;
      default:
        goto LABEL_29;
    }

    goto LABEL_17;
  }

  if (a1 == 4)
  {
    v5 = "[ INFO:";
LABEL_17:
    sub_100241184(&v18, v5, 7);
    v7 = std::ostream::operator<<();
    v6 = sub_100241184(v7, "] ", 2);
    goto LABEL_18;
  }

  if (a1 == 5)
  {
    v5 = "[DEBUG:";
    goto LABEL_17;
  }

  if (a1 != 6)
  {
    goto LABEL_29;
  }

  v6 = &v18;
LABEL_18:
  v8 = strlen(a2);
  v9 = sub_100241184(v6, a2, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(__p, &std::ctype<char>::id);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  if ((v16 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v12 = v16;
  }

  else
  {
    v12 = __p[1];
  }

  sub_100241184(v4, v11, v12);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (a1 > 3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a1 <= 3)
  {
LABEL_28:
    std::ostream::flush();
  }

LABEL_29:
  v18 = v13;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002418F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_100241CC8(&a15);
    _Unwind_Resume(a1);
  }

  sub_100241CC8(&a15);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100241960(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100242358((a1 + 3), 24);
  return a1;
}

void sub_100241BDC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100241C10(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t sub_100241CC8(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_100241E1C()
{
  if ((atomic_load_explicit(&qword_1004BD408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BD408))
  {
    sub_1002AA910("OPENCV_LOG_LEVEL", "INFO", &qword_1004BD410);
    __cxa_atexit(sub_1002422D0, &qword_1004BD410, &_mh_execute_header);
    __cxa_guard_release(&qword_1004BD408);
  }

  v0 = qword_1004BD410;
  if (qword_1004BD410 == "DISABLED")
  {
    return 0;
  }

  if (qword_1004BD410)
  {
    v1 = qword_1004BD410;
  }

  else
  {
    v1 = "";
  }

  v2 = strcmp(v1, "DISABLED");
  if (v0 == "disabled" || v2 == 0)
  {
    return 0;
  }

  v5 = strcmp(v1, "disabled");
  result = 0;
  if (v0 != "0" && v5)
  {
    v6 = *v1 == 48 && v1[1] == 0;
    result = 0;
    if (v0 != "OFF" && !v6)
    {
      v7 = strcmp(v1, "OFF");
      result = 0;
      if (v0 != "off")
      {
        if (v7)
        {
          result = strcmp(v1, "off");
          if (result)
          {
            if (v0 == "FATAL")
            {
              return 1;
            }

            v8 = strcmp(v1, "FATAL");
            result = 1;
            if (v0 == "fatal" || !v8)
            {
              return result;
            }

            if (!strcmp(v1, "fatal"))
            {
              return 1;
            }

            if (v0 == "ERROR")
            {
              return 2;
            }

            v9 = strcmp(v1, "ERROR");
            result = 2;
            if (v0 == "error" || !v9)
            {
              return result;
            }

            if (!strcmp(v1, "error"))
            {
              return 2;
            }

            if (v0 == "WARNING")
            {
              return 3;
            }

            v10 = strcmp(v1, "WARNING");
            result = 3;
            if (v0 == "warning")
            {
              return result;
            }

            if (!v10)
            {
              return result;
            }

            v11 = strcmp(v1, "warning");
            result = 3;
            if (v0 == "WARNINGS")
            {
              return result;
            }

            if (!v11)
            {
              return result;
            }

            v12 = strcmp(v1, "WARNINGS");
            result = 3;
            if (v0 == "warnings")
            {
              return result;
            }

            if (!v12)
            {
              return result;
            }

            v13 = strcmp(v1, "warnings");
            result = 3;
            if (v0 == "WARN")
            {
              return result;
            }

            if (!v13)
            {
              return result;
            }

            v14 = strcmp(v1, "WARN");
            result = 3;
            if (v0 == "warn" || !v14)
            {
              return result;
            }

            if (!strcmp(v1, "warn"))
            {
              return 3;
            }

            if (v0 == "INFO")
            {
              return 4;
            }

            v15 = strcmp(v1, "INFO");
            result = 4;
            if (v0 == "info" || !v15)
            {
              return result;
            }

            if (!strcmp(v1, "info"))
            {
              return 4;
            }

            if (v0 == "DEBUG")
            {
              return 5;
            }

            v16 = strcmp(v1, "DEBUG");
            result = 5;
            if (v0 == "debug" || !v16)
            {
              return result;
            }

            if (!strcmp(v1, "debug"))
            {
              return 5;
            }

            if (v0 == "VERBOSE")
            {
              return 6;
            }

            v17 = strcmp(v1, "VERBOSE");
            result = 6;
            if (v0 != "verbose" && v17)
            {
              if (strcmp(v1, "verbose"))
              {
                v18 = sub_100241184(&std::cerr, "ERROR: Unexpected logging level value: ", 39);
                v19 = sub_1002422FC(v18);
                sub_100241C10(v19);
                return 4;
              }

              return 6;
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_1002422FC(void *a1)
{
  if (qword_1004BD410)
  {
    v2 = qword_1004BD410;
  }

  else
  {
    v2 = "";
  }

  v3 = strlen(v2);

  return sub_100241184(a1, v2, v3);
}

uint64_t sub_100242358(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 88) = v4;
    std::string::resize((a1 + 64), 0x16uLL, 0);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_100242428(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

float sub_100242450(float a1)
{
  sub_1002ACE7C(v9, &off_100473F58);
  if (v9[2])
  {
    sub_1002ACC1C(v9);
  }

  v2 = ((LODWORD(a1) >> 23) - 127) % 3;
  if (v2 >= 0)
  {
    v3 = -3;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 + v2;
  v5 = vmlaq_n_f64(xmmword_1003E3A00, vmlaq_n_f64(xmmword_1003E39F0, vmlaq_n_f64(xmmword_1003E39E0, vmlaq_n_f64(xmmword_1003E39D0, xmmword_1003E39C0, COERCE_FLOAT((LODWORD(a1) & 0x7FFFFF | (v4 << 23)) + 1065353216)), COERCE_FLOAT((LODWORD(a1) & 0x7FFFFF | (v4 << 23)) + 1065353216)), COERCE_FLOAT((LODWORD(a1) & 0x7FFFFF | (v4 << 23)) + 1065353216)), COERCE_FLOAT((LODWORD(a1) & 0x7FFFFF | (v4 << 23)) + 1065353216));
  v6 = vdivq_f64(vdupq_laneq_s64(v5, 1), v5).f64[0];
  LODWORD(v7) = (LODWORD(a1) & 0x80000000) + ((((21846 * ((LODWORD(a1) >> 23) - 127 - v4)) >> 16) + ((21846 * ((LODWORD(a1) >> 23) - 127 - v4)) >> 31)) << 23) + LODWORD(v6);
  if (a1 == 0.0)
  {
    return 0.0;
  }

  return v7;
}

uint64_t sub_10024255C(uint64_t result, int *a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  *result = a3 & 0xFFF | 0x42FF0000;
  *(result + 4) = 2;
  v6 = a2[1];
  *(result + 8) = v6;
  v7 = *a2;
  *(result + 12) = *a2;
  *(result + 16) = a4;
  *(result + 24) = a4;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 80) = 0;
  *(result + 64) = result + 8;
  *(result + 72) = result + 80;
  *(result + 88) = 0;
  if (!a4 && v7 * v6)
  {
    v12 = 0;
    v13 = 0;
    qmemcpy(sub_1002A80E0(&v12, 30), "total() == 0 || data != __null", 30);
    sub_1002A8980(-215, &v12, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/mat.inl.hpp", 533);
  }

  v8 = (((a3 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a3 & 7))) & 3);
  v9 = v7 * v8;
  if (!a5)
  {
    v5 = v7 * v8;
LABEL_11:
    *result |= 0x4000u;
    goto LABEL_12;
  }

  if (a5 % ((0x88442211uLL >> (4 * (a3 & 7))) & 0xF))
  {
    v12 = 0;
    v13 = 0;
    qmemcpy(sub_1002A80E0(&v12, 31), "Step must be a multiple of esz1", 31);
    sub_1002A8980(-13, &v12, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/mat.inl.hpp", 548);
  }

  if (v9 == a5 || *(result + 8) == 1)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = *(result + 72);
  *v10 = v5;
  v10[1] = v8;
  v11 = *(result + 24) + v5 * *(result + 8);
  *(result + 32) = v11 - v5 + v9;
  *(result + 40) = v11;
  return result;
}

float sub_100242754(float a1, float a2)
{
  v2 = fabsf(a2);
  v3 = fabsf(a1);
  v4 = v2 < v3;
  v5 = v2 / (v3 + 2.2204e-16);
  v6 = 90.0 - ((((((((v5 * v5) * -2.5397) + 8.914) * (v5 * v5)) + -18.667) * (v5 * v5)) + 57.284) * v5);
  v7 = v3 / (v2 + 2.2204e-16);
  v8 = v7 * (((((((v7 * v7) * -2.5397) + 8.914) * (v7 * v7)) + -18.667) * (v7 * v7)) + 57.284);
  if (v4)
  {
    v8 = v6;
  }

  if (a2 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 180.0 - v8;
  }

  if (a1 >= 0.0)
  {
    return v9;
  }

  else
  {
    return 360.0 - v9;
  }
}

void sub_100242840(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, float a9, float a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  *v107 = 1124007936;
  *&v107[4] = 0u;
  if (a14)
  {
    v19 = a11;
  }

  else
  {
    v19 = a12;
  }

  *&v107[20] = 0uLL;
  if (a14)
  {
    v20 = a12;
  }

  else
  {
    v20 = a11;
  }

  *&v107[36] = 0uLL;
  if ((a14 & 2) != 0)
  {
    v21 = a13;
  }

  else
  {
    v21 = v19;
  }

  if ((a14 & 2) != 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = a13;
  }

  *&v107[48] = 0uLL;
  v108 = &v107[8];
  v109 = v110;
  if ((a14 & 4) != 0)
  {
    v23 = a13;
  }

  else
  {
    v23 = v20;
  }

  if ((a14 & 4) != 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = a13;
  }

  v61 = v24;
  v62 = v23;
  v110[0] = 0;
  v110[1] = 0;
  *v103 = 1124007936;
  memset(&v103[4], 0, 60);
  v104 = &v103[8];
  v105 = v106;
  v106[1] = 0;
  v106[0] = 0;
  *v99 = 1124007936;
  memset(&v99[4], 0, 60);
  v100 = &v99[8];
  v101 = v102;
  v102[1] = 0;
  v102[0] = 0;
  if (!a1)
  {
    goto LABEL_33;
  }

  sub_10000A690(v95, a11, a12, a15, a1, a2);
  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  if (*&v107[4] >= 1)
  {
    v25 = 0;
    v26 = v108;
    do
    {
      *&v26[4 * v25++] = 0;
    }

    while (v25 < *&v107[4]);
  }

  *v107 = *v95;
  *&v107[16] = *&v95[16];
  *&v107[32] = *&v95[32];
  *&v107[48] = *&v95[48];
  v27 = v109;
  if (v109 == v110)
  {
    v28 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    j__free(v109);
    v27 = v110;
    v108 = &v107[8];
    v109 = v110;
    v28 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_28:
      *v27 = *v28;
      v27[1] = v28[1];
      goto LABEL_31;
    }
  }

  v108 = v96;
  v109 = v28;
  v97 = v98;
  v96 = &v95[8];
LABEL_31:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_33:
  if (!a3)
  {
    goto LABEL_47;
  }

  sub_10000A690(v95, v21, v22, a15, a3, a4);
  if (*&v103[56] && atomic_fetch_add((*&v103[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v103);
  }

  if (*&v103[4] >= 1)
  {
    v29 = 0;
    v30 = v104;
    do
    {
      *&v30[4 * v29++] = 0;
    }

    while (v29 < *&v103[4]);
  }

  *v103 = *v95;
  *&v103[16] = *&v95[16];
  *&v103[32] = *&v95[32];
  *&v103[48] = *&v95[48];
  v31 = v105;
  if (v105 == v106)
  {
    v32 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    j__free(v105);
    v31 = v106;
    v105 = v106;
    v104 = &v103[8];
    v32 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_42:
      *v31 = *v32;
      v31[1] = v32[1];
      goto LABEL_45;
    }
  }

  v105 = v32;
  v104 = v96;
  v97 = v98;
  v96 = &v95[8];
LABEL_45:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_47:
  if (!a5 || a10 == 0.0)
  {
    goto LABEL_62;
  }

  sub_10000A690(v95, v62, v61, a15, a5, a6);
  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  if (*&v99[4] >= 1)
  {
    v33 = 0;
    v34 = v100;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < *&v99[4]);
  }

  *v99 = *v95;
  *&v99[16] = *&v95[16];
  *&v99[32] = *&v95[32];
  *&v99[48] = *&v95[48];
  v35 = v101;
  if (v101 == v102)
  {
    v36 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_57;
    }
  }

  else
  {
    j__free(v101);
    v35 = v102;
    v101 = v102;
    v100 = &v99[8];
    v36 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_57:
      *v35 = *v36;
      v35[1] = v36[1];
      goto LABEL_60;
    }
  }

  v101 = v36;
  v100 = v96;
  v97 = v98;
  v96 = &v95[8];
LABEL_60:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_62:
  sub_10000A690(v95, v20, a13, a15, a7, a8);
  v88 = *v107;
  v89 = *&v107[16];
  v90 = *&v107[32];
  v91 = *&v107[48];
  v92 = &v88 + 8;
  v93 = v94;
  v94[0] = 0;
  v94[1] = 0;
  if (*&v107[56])
  {
    atomic_fetch_add((*&v107[56] + 20), 1u);
    if (*&v107[4] <= 2)
    {
LABEL_64:
      v37 = v109;
      v38 = v93;
      *v93 = *v109;
      v38[1] = v37[1];
      goto LABEL_67;
    }
  }

  else if (*&v107[4] <= 2)
  {
    goto LABEL_64;
  }

  DWORD1(v88) = 0;
  sub_100269B58(&v88, v107);
LABEL_67:
  v81 = *v103;
  v82 = *&v103[16];
  v83 = *&v103[32];
  v84 = *&v103[48];
  v85 = &v81 + 8;
  v86 = v87;
  v87[0] = 0;
  v87[1] = 0;
  if (*&v103[56])
  {
    atomic_fetch_add((*&v103[56] + 20), 1u);
    if (*&v103[4] <= 2)
    {
LABEL_69:
      v39 = v105;
      v40 = v86;
      *v86 = *v105;
      v40[1] = v39[1];
      goto LABEL_72;
    }
  }

  else if (*&v103[4] <= 2)
  {
    goto LABEL_69;
  }

  DWORD1(v81) = 0;
  sub_100269B58(&v81, v103);
LABEL_72:
  v74 = *v99;
  v75 = *&v99[16];
  v76 = *&v99[32];
  v77 = *&v99[48];
  v78 = &v74 + 8;
  v79 = v80;
  v80[0] = 0;
  v80[1] = 0;
  if (*&v99[56])
  {
    atomic_fetch_add((*&v99[56] + 20), 1u);
    if (*&v99[4] <= 2)
    {
LABEL_74:
      v41 = v101;
      v42 = v79;
      *v79 = *v101;
      v42[1] = v41[1];
      goto LABEL_77;
    }
  }

  else if (*&v99[4] <= 2)
  {
    goto LABEL_74;
  }

  DWORD1(v74) = 0;
  sub_100269B58(&v74, v99);
LABEL_77:
  v67 = *v95;
  v68 = *&v95[16];
  v69 = *&v95[32];
  v70 = *&v95[48];
  v71 = &v67 + 8;
  v72 = v73;
  v73[0] = 0;
  v73[1] = 0;
  if (!*&v95[56])
  {
    if (*&v95[4] <= 2)
    {
      goto LABEL_79;
    }

LABEL_81:
    DWORD1(v67) = 0;
    sub_100269B58(&v67, v95);
    goto LABEL_82;
  }

  atomic_fetch_add((*&v95[56] + 20), 1u);
  if (*&v95[4] > 2)
  {
    goto LABEL_81;
  }

LABEL_79:
  v43 = v97;
  v44 = v72;
  *v72 = *v97;
  v44[1] = v43[1];
LABEL_82:
  sub_1002532D0(&v88, &v81, &v74, &v67, a14, a9, a10);
  if (*(&v70 + 1) && atomic_fetch_add((*(&v70 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v67);
  }

  *(&v70 + 1) = 0;
  v68 = 0u;
  v69 = 0u;
  if (SDWORD1(v67) >= 1)
  {
    v45 = 0;
    v46 = v71;
    do
    {
      *&v46[4 * v45++] = 0;
    }

    while (v45 < SDWORD1(v67));
  }

  if (v72 != v73)
  {
    j__free(v72);
  }

  if (*(&v77 + 1) && atomic_fetch_add((*(&v77 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v74);
  }

  *(&v77 + 1) = 0;
  v75 = 0u;
  v76 = 0u;
  if (SDWORD1(v74) >= 1)
  {
    v47 = 0;
    v48 = v78;
    do
    {
      *&v48[4 * v47++] = 0;
    }

    while (v47 < SDWORD1(v74));
  }

  if (v79 != v80)
  {
    j__free(v79);
  }

  if (*(&v84 + 1) && atomic_fetch_add((*(&v84 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v81);
  }

  *(&v84 + 1) = 0;
  v82 = 0u;
  v83 = 0u;
  if (SDWORD1(v81) >= 1)
  {
    v49 = 0;
    v50 = v85;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < SDWORD1(v81));
  }

  if (v86 != v87)
  {
    j__free(v86);
  }

  if (*(&v91 + 1) && atomic_fetch_add((*(&v91 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v88);
  }

  *(&v91 + 1) = 0;
  v89 = 0u;
  v90 = 0u;
  if (SDWORD1(v88) >= 1)
  {
    v51 = 0;
    v52 = v92;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < SDWORD1(v88));
  }

  if (v93 != v94)
  {
    j__free(v93);
  }

  if (*&v95[56] && atomic_fetch_add((*&v95[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v95);
  }

  *&v95[56] = 0;
  memset(&v95[16], 0, 32);
  if (*&v95[4] >= 1)
  {
    v53 = 0;
    v54 = v96;
    do
    {
      *&v54[4 * v53++] = 0;
    }

    while (v53 < *&v95[4]);
  }

  if (v97 != v98)
  {
    j__free(v97);
  }

  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  *&v99[56] = 0;
  memset(&v99[16], 0, 32);
  if (*&v99[4] >= 1)
  {
    v55 = 0;
    v56 = v100;
    do
    {
      *&v56[4 * v55++] = 0;
    }

    while (v55 < *&v99[4]);
  }

  if (v101 != v102)
  {
    j__free(v101);
  }

  if (*&v103[56] && atomic_fetch_add((*&v103[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v103);
  }

  *&v103[56] = 0;
  memset(&v103[16], 0, 32);
  if (*&v103[4] >= 1)
  {
    v57 = 0;
    v58 = v104;
    do
    {
      *&v58[4 * v57++] = 0;
    }

    while (v57 < *&v103[4]);
  }

  if (v105 != v106)
  {
    j__free(v105);
  }

  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  *&v107[56] = 0;
  memset(&v107[16], 0, 32);
  if (*&v107[4] >= 1)
  {
    v59 = 0;
    v60 = v108;
    do
    {
      *&v60[4 * v59++] = 0;
    }

    while (v59 < *&v107[4]);
  }

  if (v109 != v110)
  {
    j__free(v109);
  }
}

void sub_1002432B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a65);
  sub_100006D14(&STACK[0x230]);
  sub_100006D14(&STACK[0x290]);
  sub_100006D14(v65 - 208);
  _Unwind_Resume(a1);
}

void sub_100243378(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  *v107 = 1124007936;
  *&v107[4] = 0u;
  if (a14)
  {
    v19 = a11;
  }

  else
  {
    v19 = a12;
  }

  *&v107[20] = 0uLL;
  if (a14)
  {
    v20 = a12;
  }

  else
  {
    v20 = a11;
  }

  *&v107[36] = 0uLL;
  if ((a14 & 2) != 0)
  {
    v21 = a13;
  }

  else
  {
    v21 = v19;
  }

  if ((a14 & 2) != 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = a13;
  }

  *&v107[48] = 0uLL;
  v108 = &v107[8];
  v109 = v110;
  if ((a14 & 4) != 0)
  {
    v23 = a13;
  }

  else
  {
    v23 = v20;
  }

  if ((a14 & 4) != 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = a13;
  }

  v61 = v24;
  v62 = v23;
  v110[0] = 0;
  v110[1] = 0;
  *v103 = 1124007936;
  memset(&v103[4], 0, 60);
  v104 = &v103[8];
  v105 = v106;
  v106[1] = 0;
  v106[0] = 0;
  *v99 = 1124007936;
  memset(&v99[4], 0, 60);
  v100 = &v99[8];
  v101 = v102;
  v102[1] = 0;
  v102[0] = 0;
  if (!a1)
  {
    goto LABEL_33;
  }

  sub_10000A690(v95, a11, a12, a15, a1, a2);
  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  if (*&v107[4] >= 1)
  {
    v25 = 0;
    v26 = v108;
    do
    {
      *&v26[4 * v25++] = 0;
    }

    while (v25 < *&v107[4]);
  }

  *v107 = *v95;
  *&v107[16] = *&v95[16];
  *&v107[32] = *&v95[32];
  *&v107[48] = *&v95[48];
  v27 = v109;
  if (v109 == v110)
  {
    v28 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    j__free(v109);
    v27 = v110;
    v108 = &v107[8];
    v109 = v110;
    v28 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_28:
      *v27 = *v28;
      v27[1] = v28[1];
      goto LABEL_31;
    }
  }

  v108 = v96;
  v109 = v28;
  v97 = v98;
  v96 = &v95[8];
LABEL_31:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_33:
  if (!a3)
  {
    goto LABEL_47;
  }

  sub_10000A690(v95, v21, v22, a15, a3, a4);
  if (*&v103[56] && atomic_fetch_add((*&v103[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v103);
  }

  if (*&v103[4] >= 1)
  {
    v29 = 0;
    v30 = v104;
    do
    {
      *&v30[4 * v29++] = 0;
    }

    while (v29 < *&v103[4]);
  }

  *v103 = *v95;
  *&v103[16] = *&v95[16];
  *&v103[32] = *&v95[32];
  *&v103[48] = *&v95[48];
  v31 = v105;
  if (v105 == v106)
  {
    v32 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    j__free(v105);
    v31 = v106;
    v105 = v106;
    v104 = &v103[8];
    v32 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_42:
      *v31 = *v32;
      v31[1] = v32[1];
      goto LABEL_45;
    }
  }

  v105 = v32;
  v104 = v96;
  v97 = v98;
  v96 = &v95[8];
LABEL_45:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_47:
  if (!a5 || a10 == 0.0)
  {
    goto LABEL_62;
  }

  sub_10000A690(v95, v62, v61, a15, a5, a6);
  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  if (*&v99[4] >= 1)
  {
    v33 = 0;
    v34 = v100;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < *&v99[4]);
  }

  *v99 = *v95;
  *&v99[16] = *&v95[16];
  *&v99[32] = *&v95[32];
  *&v99[48] = *&v95[48];
  v35 = v101;
  if (v101 == v102)
  {
    v36 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_57;
    }
  }

  else
  {
    j__free(v101);
    v35 = v102;
    v101 = v102;
    v100 = &v99[8];
    v36 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_57:
      *v35 = *v36;
      v35[1] = v36[1];
      goto LABEL_60;
    }
  }

  v101 = v36;
  v100 = v96;
  v97 = v98;
  v96 = &v95[8];
LABEL_60:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_62:
  sub_10000A690(v95, v20, a13, a15, a7, a8);
  v88 = *v107;
  v89 = *&v107[16];
  v90 = *&v107[32];
  v91 = *&v107[48];
  v92 = &v88 + 8;
  v93 = v94;
  v94[0] = 0;
  v94[1] = 0;
  if (*&v107[56])
  {
    atomic_fetch_add((*&v107[56] + 20), 1u);
    if (*&v107[4] <= 2)
    {
LABEL_64:
      v37 = v109;
      v38 = v93;
      *v93 = *v109;
      v38[1] = v37[1];
      goto LABEL_67;
    }
  }

  else if (*&v107[4] <= 2)
  {
    goto LABEL_64;
  }

  DWORD1(v88) = 0;
  sub_100269B58(&v88, v107);
LABEL_67:
  v81 = *v103;
  v82 = *&v103[16];
  v83 = *&v103[32];
  v84 = *&v103[48];
  v85 = &v81 + 8;
  v86 = v87;
  v87[0] = 0;
  v87[1] = 0;
  if (*&v103[56])
  {
    atomic_fetch_add((*&v103[56] + 20), 1u);
    if (*&v103[4] <= 2)
    {
LABEL_69:
      v39 = v105;
      v40 = v86;
      *v86 = *v105;
      v40[1] = v39[1];
      goto LABEL_72;
    }
  }

  else if (*&v103[4] <= 2)
  {
    goto LABEL_69;
  }

  DWORD1(v81) = 0;
  sub_100269B58(&v81, v103);
LABEL_72:
  v74 = *v99;
  v75 = *&v99[16];
  v76 = *&v99[32];
  v77 = *&v99[48];
  v78 = &v74 + 8;
  v79 = v80;
  v80[0] = 0;
  v80[1] = 0;
  if (*&v99[56])
  {
    atomic_fetch_add((*&v99[56] + 20), 1u);
    if (*&v99[4] <= 2)
    {
LABEL_74:
      v41 = v101;
      v42 = v79;
      *v79 = *v101;
      v42[1] = v41[1];
      goto LABEL_77;
    }
  }

  else if (*&v99[4] <= 2)
  {
    goto LABEL_74;
  }

  DWORD1(v74) = 0;
  sub_100269B58(&v74, v99);
LABEL_77:
  v67 = *v95;
  v68 = *&v95[16];
  v69 = *&v95[32];
  v70 = *&v95[48];
  v71 = &v67 + 8;
  v72 = v73;
  v73[0] = 0;
  v73[1] = 0;
  if (!*&v95[56])
  {
    if (*&v95[4] <= 2)
    {
      goto LABEL_79;
    }

LABEL_81:
    DWORD1(v67) = 0;
    sub_100269B58(&v67, v95);
    goto LABEL_82;
  }

  atomic_fetch_add((*&v95[56] + 20), 1u);
  if (*&v95[4] > 2)
  {
    goto LABEL_81;
  }

LABEL_79:
  v43 = v97;
  v44 = v72;
  *v72 = *v97;
  v44[1] = v43[1];
LABEL_82:
  sub_1002532D0(&v88, &v81, &v74, &v67, a14, a9, a10);
  if (*(&v70 + 1) && atomic_fetch_add((*(&v70 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v67);
  }

  *(&v70 + 1) = 0;
  v68 = 0u;
  v69 = 0u;
  if (SDWORD1(v67) >= 1)
  {
    v45 = 0;
    v46 = v71;
    do
    {
      *&v46[4 * v45++] = 0;
    }

    while (v45 < SDWORD1(v67));
  }

  if (v72 != v73)
  {
    j__free(v72);
  }

  if (*(&v77 + 1) && atomic_fetch_add((*(&v77 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v74);
  }

  *(&v77 + 1) = 0;
  v75 = 0u;
  v76 = 0u;
  if (SDWORD1(v74) >= 1)
  {
    v47 = 0;
    v48 = v78;
    do
    {
      *&v48[4 * v47++] = 0;
    }

    while (v47 < SDWORD1(v74));
  }

  if (v79 != v80)
  {
    j__free(v79);
  }

  if (*(&v84 + 1) && atomic_fetch_add((*(&v84 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v81);
  }

  *(&v84 + 1) = 0;
  v82 = 0u;
  v83 = 0u;
  if (SDWORD1(v81) >= 1)
  {
    v49 = 0;
    v50 = v85;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < SDWORD1(v81));
  }

  if (v86 != v87)
  {
    j__free(v86);
  }

  if (*(&v91 + 1) && atomic_fetch_add((*(&v91 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v88);
  }

  *(&v91 + 1) = 0;
  v89 = 0u;
  v90 = 0u;
  if (SDWORD1(v88) >= 1)
  {
    v51 = 0;
    v52 = v92;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < SDWORD1(v88));
  }

  if (v93 != v94)
  {
    j__free(v93);
  }

  if (*&v95[56] && atomic_fetch_add((*&v95[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v95);
  }

  *&v95[56] = 0;
  memset(&v95[16], 0, 32);
  if (*&v95[4] >= 1)
  {
    v53 = 0;
    v54 = v96;
    do
    {
      *&v54[4 * v53++] = 0;
    }

    while (v53 < *&v95[4]);
  }

  if (v97 != v98)
  {
    j__free(v97);
  }

  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  *&v99[56] = 0;
  memset(&v99[16], 0, 32);
  if (*&v99[4] >= 1)
  {
    v55 = 0;
    v56 = v100;
    do
    {
      *&v56[4 * v55++] = 0;
    }

    while (v55 < *&v99[4]);
  }

  if (v101 != v102)
  {
    j__free(v101);
  }

  if (*&v103[56] && atomic_fetch_add((*&v103[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v103);
  }

  *&v103[56] = 0;
  memset(&v103[16], 0, 32);
  if (*&v103[4] >= 1)
  {
    v57 = 0;
    v58 = v104;
    do
    {
      *&v58[4 * v57++] = 0;
    }

    while (v57 < *&v103[4]);
  }

  if (v105 != v106)
  {
    j__free(v105);
  }

  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  *&v107[56] = 0;
  memset(&v107[16], 0, 32);
  if (*&v107[4] >= 1)
  {
    v59 = 0;
    v60 = v108;
    do
    {
      *&v60[4 * v59++] = 0;
    }

    while (v59 < *&v107[4]);
  }

  if (v109 != v110)
  {
    j__free(v109);
  }
}

void sub_100243DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a65);
  sub_100006D14(&STACK[0x230]);
  sub_100006D14(&STACK[0x290]);
  sub_100006D14(v65 - 208);
  _Unwind_Resume(a1);
}

void sub_100243EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7)
{
  if (sub_100271148(a1) == 0x10000)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v112 = *v14;
    v113 = v16;
    v114 = *(v14 + 32);
    v17 = *(v14 + 56);
    v115 = *(v14 + 48);
    v116 = v17;
    v117 = &v112 + 2;
    v118 = v119;
    v119[0] = 0;
    v119[1] = 0;
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_4:
        v18 = *(v14 + 72);
        v19 = v118;
        *v118 = *v18;
        v19[1] = v18[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v112) = 0;
    sub_100269B58(&v112, v14);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v112);
  }

LABEL_8:
  if (sub_100271148(a2) == 0x10000)
  {
    v20 = *(a2 + 8);
    v21 = *v20;
    v22 = *(v20 + 16);
    v104 = *v20;
    v105 = v22;
    v106 = *(v20 + 32);
    v23 = *(v20 + 56);
    v107 = *(v20 + 48);
    v108 = v23;
    v109 = &v104 + 8;
    v110 = v111;
    v111[0] = 0;
    v111[1] = 0;
    if (v23)
    {
      atomic_fetch_add((v23 + 20), 1u);
      if (*(v20 + 4) <= 2)
      {
LABEL_11:
        v24 = *(v20 + 72);
        v25 = v110;
        *v110 = *v24;
        v25[1] = v24[1];
        goto LABEL_15;
      }
    }

    else if (SDWORD1(v21) <= 2)
    {
      goto LABEL_11;
    }

    DWORD1(v104) = 0;
    sub_100269B58(&v104, v20);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v104);
  }

LABEL_15:
  if (a7 == 0.0)
  {
    *v99 = 1124007936;
    memset(&v99[4], 0, 60);
    v100 = &v99[8];
    v101 = &v102;
    v102 = 0;
    v103 = 0;
  }

  else if (sub_100271148(a3) == 0x10000)
  {
    v26 = *(a3 + 8);
    v27 = *v26;
    v28 = *(v26 + 16);
    *v99 = *v26;
    *&v99[16] = v28;
    *&v99[32] = *(v26 + 32);
    v29 = *(v26 + 56);
    *&v99[48] = *(v26 + 48);
    *&v99[56] = v29;
    v100 = &v99[8];
    v101 = &v102;
    v102 = 0;
    v103 = 0;
    if (v29)
    {
      atomic_fetch_add((v29 + 20), 1u);
      if (*(v26 + 4) <= 2)
      {
LABEL_19:
        v30 = *(v26 + 72);
        v31 = v101;
        *v101 = *v30;
        v31[1] = v30[1];
        goto LABEL_24;
      }
    }

    else if (SDWORD1(v27) <= 2)
    {
      goto LABEL_19;
    }

    *&v99[4] = 0;
    sub_100269B58(v99, v26);
  }

  else
  {
    sub_1002703C0(a3, 0xFFFFFFFFLL, v99);
  }

LABEL_24:
  v32 = *v117;
  v33 = v117[1];
  v34 = v112 & 0xFFF;
  if (v34 != (v104 & 0xFFF))
  {
    v91 = 0uLL;
    *sub_1002A80E0(&v91, 16) = *"type == B.type()";
    sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1558);
  }

  if ((v112 & 0xFF7) - 5 >= 2)
  {
    v91 = 0uLL;
    qmemcpy(sub_1002A80E0(&v91, 210), "(type == (((5) & ((1 << 3) - 1)) + (((1)-1) << 3)) || type == (((6) & ((1 << 3) - 1)) + (((1)-1) << 3)) || type == (((5) & ((1 << 3) - 1)) + (((2)-1) << 3)) || type == (((6) & ((1 << 3) - 1)) + (((2)-1) << 3)))", 210);
    sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1558);
  }

  if ((a5 & 3u) <= 1)
  {
    if ((a5 & 3) == 0)
    {
      v35 = HIDWORD(v104);
      if (v33 != DWORD2(v104))
      {
        v91 = 0uLL;
        v36 = sub_1002A80E0(&v91, 19);
        *(v36 + 15) = 1852140576;
        *v36 = *"a_size.width == len";
        sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1565);
      }

      goto LABEL_35;
    }

    v35 = HIDWORD(v104);
    if (v32 != DWORD2(v104))
    {
      v91 = 0uLL;
      v39 = sub_1002A80E0(&v91, 20);
      *(v39 + 16) = 1852140576;
      *v39 = *"a_size.height == len";
      sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1570);
    }

LABEL_41:
    v38 = v117[1];
    if (!*&v99[16])
    {
      goto LABEL_58;
    }

    goto LABEL_42;
  }

  if ((a5 & 3) != 2)
  {
    v35 = DWORD2(v104);
    if (v32 != HIDWORD(v104))
    {
      v91 = 0uLL;
      v40 = sub_1002A80E0(&v91, 20);
      *(v40 + 16) = 1852140576;
      *v40 = *"a_size.height == len";
      sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1580);
    }

    goto LABEL_41;
  }

  v35 = DWORD2(v104);
  if (v33 != HIDWORD(v104))
  {
    v91 = 0uLL;
    v37 = sub_1002A80E0(&v91, 19);
    *(v37 + 15) = 1852140576;
    *v37 = *"a_size.width == len";
    sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1575);
  }

LABEL_35:
  v38 = *v117;
  if (!*&v99[16])
  {
    goto LABEL_58;
  }

LABEL_42:
  if (*&v99[4] >= 3)
  {
    v42 = (v100 + 4);
    v43 = 1;
    v44 = *&v99[4] & 0x7FFFFFFE;
    v45 = 1;
    do
    {
      v43 *= *(v42 - 1);
      v45 *= *v42;
      v42 += 2;
      v44 -= 2;
    }

    while (v44);
    v41 = v45 * v43;
    v46 = *&v99[4] - (*&v99[4] & 0x7FFFFFFE);
    if (v46)
    {
      v47 = &v100[8 * ((*&v99[4] >> 1) & 0x3FFFFFFF)];
      do
      {
        v48 = *v47++;
        v41 *= v48;
        --v46;
      }

      while (v46);
    }
  }

  else
  {
    v41 = *&v99[12] * *&v99[8];
  }

  if (*&v99[4] && v41)
  {
    if ((*v99 & 0xFFF) != v34)
    {
      v91 = 0uLL;
      *sub_1002A80E0(&v91, 16) = *"C.type() == type";
      sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1588);
    }

    if ((a5 & 4) != 0)
    {
      if (*&v99[8] == __PAIR64__(v38, v35))
      {
        goto LABEL_58;
      }
    }

    else if (*&v99[8] == __PAIR64__(v35, v38))
    {
      goto LABEL_58;
    }

    v91 = 0uLL;
    qmemcpy(sub_1002A80E0(&v91, 158), "(((flags&GEMM_3_T) == 0 && C.rows == d_size.height && C.cols == d_size.width) || ((flags&GEMM_3_T) != 0 && C.rows == d_size.width && C.cols == d_size.height))", 158);
    sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1588);
  }

LABEL_58:
  sub_100275A84(a4, v38, v35, v34, -1, 0, 0);
  if (sub_100271148(a4) != 0x10000)
  {
    sub_1002703C0(a4, 0xFFFFFFFFLL, &v91);
    goto LABEL_65;
  }

  v49 = *(a4 + 8);
  v50 = *v49;
  v51 = *(v49 + 16);
  v91 = *v49;
  v92 = v51;
  v93 = *(v49 + 32);
  v52 = *(v49 + 56);
  v94 = *(v49 + 48);
  v95 = v52;
  v96 = &v91 + 8;
  v97 = v98;
  v98[0] = 0;
  v98[1] = 0;
  if (!v52)
  {
    if (SDWORD1(v50) <= 2)
    {
      goto LABEL_61;
    }

LABEL_64:
    DWORD1(v91) = 0;
    sub_100269B58(&v91, v49);
    goto LABEL_65;
  }

  atomic_fetch_add((v52 + 20), 1u);
  if (*(v49 + 4) > 2)
  {
    goto LABEL_64;
  }

LABEL_61:
  v53 = *(v49 + 72);
  v54 = v97;
  *v97 = *v53;
  v54[1] = v53[1];
LABEL_65:
  v55 = v92;
  if ((a5 & 4) != 0 && *&v99[16] == v92)
  {
    *v87 = 16842752;
    *&v87[8] = v99;
    *&v87[16] = 0;
    *v83 = 33619968;
    *&v83[8] = v99;
    *&v83[16] = 0;
    sub_10026EF8C(v87, v83);
    a5 &= ~4u;
    v55 = v92;
  }

  *v87 = 1124007936;
  memset(&v87[4], 0, 60);
  v88 = &v87[8];
  v89 = v90;
  v90[0] = 0;
  v90[1] = 0;
  if (v55 != v113 && v55 != v105)
  {
    v56 = &v97;
    v57 = &v91;
    if (v34 <= 12)
    {
      goto LABEL_71;
    }

    goto LABEL_88;
  }

  *v83 = 1124007936;
  memset(&v83[4], 0, 60);
  v84 = &v83[8];
  v85 = v86;
  v86[0] = 0;
  v86[1] = 0;
  __src = __PAIR64__(v35, v38);
  sub_100268ED0(v83, 2, &__src, v91 & 0xFFF);
  if (*&v87[56] && atomic_fetch_add((*&v87[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v87);
  }

  if (*&v87[4] >= 1)
  {
    v67 = 0;
    v68 = v88;
    do
    {
      *&v68[4 * v67++] = 0;
    }

    while (v67 < *&v87[4]);
  }

  *v87 = *v83;
  *&v87[16] = *&v83[16];
  *&v87[32] = *&v83[32];
  *&v87[48] = *&v83[48];
  v69 = v89;
  if (v89 == v90)
  {
    v70 = v85;
    if (*&v83[4] <= 2)
    {
      goto LABEL_82;
    }
  }

  else
  {
    j__free(v89);
    v88 = &v87[8];
    v89 = v90;
    v69 = v90;
    v70 = v85;
    if (*&v83[4] <= 2)
    {
LABEL_82:
      *v69 = *v70;
      v69[1] = v70[1];
      goto LABEL_85;
    }
  }

  v88 = v84;
  v89 = v70;
  v84 = &v83[8];
  v85 = v86;
LABEL_85:
  *v83 = 1124007936;
  memset(&v83[4], 0, 60);
  if (v85 != v86)
  {
    j__free(v85);
  }

  v56 = &v89;
  v57 = v87;
  if (v34 <= 12)
  {
LABEL_71:
    if (v34 != 5)
    {
      if (v34 == 6)
      {
        v58 = v113;
        v59 = v119[0];
        v60 = v105;
        v61 = v111[0];
        v62 = *&v99[16];
        v63 = v102;
        v64 = (v56 + 1);
        v65 = 6;
        v66 = *(v57 + 2);
LABEL_92:
        sub_100243378(v58, v59, v60, v61, v62, v63, v66, *v64, a6, a7, v32, v33, *(v57 + 3), a5, v65);
        goto LABEL_94;
      }

      goto LABEL_90;
    }

    goto LABEL_93;
  }

LABEL_88:
  if (v34 != 13)
  {
    if (v34 == 14)
    {
      v58 = v113;
      v59 = v119[0];
      v60 = v105;
      v61 = v111[0];
      v62 = *&v99[16];
      v63 = v102;
      v64 = v98;
      v65 = 14;
      v66 = v92;
      goto LABEL_92;
    }

LABEL_90:
    *v83 = 0uLL;
    qmemcpy(sub_1002A80E0(v83, 49), "type == (((6) & ((1 << 3) - 1)) + (((2)-1) << 3))", 49);
    sub_1002A8980(-215, v83, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1623);
  }

LABEL_93:
  v71 = a6;
  v72 = a7;
  sub_100242840(v113, v119[0], v105, v111[0], *&v99[16], v102, *(v57 + 2), v56[1], v71, v72, v32, v33, *(v57 + 3), a5, v34);
LABEL_94:
  if (v57 != &v91)
  {
    *v83 = 33619968;
    *&v83[8] = &v91;
    *&v83[16] = 0;
    sub_10022B754(v57, v83);
  }

  if (*&v87[56] && atomic_fetch_add((*&v87[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v87);
  }

  *&v87[56] = 0;
  memset(&v87[16], 0, 32);
  if (*&v87[4] >= 1)
  {
    v73 = 0;
    v74 = v88;
    do
    {
      *&v74[4 * v73++] = 0;
    }

    while (v73 < *&v87[4]);
  }

  if (v89 != v90)
  {
    j__free(v89);
  }

  if (v95 && atomic_fetch_add((v95 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v91);
  }

  v95 = 0;
  v92 = 0u;
  v93 = 0u;
  if (SDWORD1(v91) >= 1)
  {
    v75 = 0;
    v76 = v96;
    do
    {
      *&v76[4 * v75++] = 0;
    }

    while (v75 < SDWORD1(v91));
  }

  if (v97 != v98)
  {
    j__free(v97);
  }

  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  *&v99[56] = 0;
  memset(&v99[16], 0, 32);
  if (*&v99[4] >= 1)
  {
    v77 = 0;
    v78 = v100;
    do
    {
      *&v78[4 * v77++] = 0;
    }

    while (v77 < *&v99[4]);
  }

  if (v101 != &v102)
  {
    j__free(v101);
  }

  if (v108 && atomic_fetch_add((v108 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v104);
  }

  v108 = 0;
  v105 = 0u;
  v106 = 0u;
  if (SDWORD1(v104) >= 1)
  {
    v79 = 0;
    v80 = v109;
    do
    {
      *&v80[4 * v79++] = 0;
    }

    while (v79 < SDWORD1(v104));
  }

  if (v110 != v111)
  {
    j__free(v110);
  }

  if (v116 && atomic_fetch_add((v116 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v112);
  }

  v116 = 0;
  v113 = 0u;
  v114 = 0u;
  if (SDWORD1(v112) >= 1)
  {
    v81 = 0;
    v82 = v117;
    do
    {
      v82[v81++] = 0;
    }

    while (v81 < SDWORD1(v112));
  }

  if (v118 != v119)
  {
    j__free(v118);
  }
}

void sub_100244BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100244D98(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v82 = a4;
  sub_1002ACE7C(v80, &off_100473F78);
  v7 = sub_100271A88(a1, -1);
  if (v7 != sub_100271A88(a2, -1))
  {
    v72 = 0uLL;
    v8 = sub_1002A80E0(&v72, 20);
    *(v8 + 16) = 690513264;
    *v8 = *"type == _src2.type()";
    sub_1002A8980(-215, &v72, "scaleAdd", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2415);
  }

  v9 = v7 & 7;
  if (v9 <= 4)
  {
    sub_1001DD438(a1, a2, a3, v7 & 7, v82, 1.0, 0.0);
    goto LABEL_82;
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(v10 + 16);
    v72 = *v10;
    v73 = v12;
    v74 = *(v10 + 32);
    v13 = *(v10 + 56);
    v75 = *(v10 + 48);
    v76 = v13;
    v77 = (&v72 + 8);
    v78 = v79;
    v79[0] = 0;
    v79[1] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v10 + 4) <= 2)
      {
LABEL_8:
        v14 = *(v10 + 72);
        v15 = v78;
        *v78 = *v14;
        v15[1] = v14[1];
        goto LABEL_12;
      }
    }

    else if (SDWORD1(v11) <= 2)
    {
      goto LABEL_8;
    }

    DWORD1(v72) = 0;
    sub_100269B58(&v72, v10);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v72);
  }

LABEL_12:
  if (sub_100271148(a2) == 0x10000)
  {
    v16 = *(a2 + 8);
    v17 = *v16;
    v18 = *(v16 + 16);
    v64 = *v16;
    v65 = v18;
    v66 = *(v16 + 32);
    v19 = *(v16 + 56);
    v67 = *(v16 + 48);
    v68 = v19;
    v69 = &v64 + 2;
    v70 = v71;
    v71[0] = 0;
    v71[1] = 0;
    if (v19)
    {
      atomic_fetch_add((v19 + 20), 1u);
      if (*(v16 + 4) <= 2)
      {
LABEL_15:
        v20 = *(v16 + 72);
        v21 = v70;
        *v70 = *v20;
        v21[1] = v20[1];
        goto LABEL_19;
      }
    }

    else if (SDWORD1(v17) <= 2)
    {
      goto LABEL_15;
    }

    DWORD1(v64) = 0;
    sub_100269B58(&v64, v16);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v64);
  }

LABEL_19:
  v22 = v77[-1].u32[3];
  if (v22 != *(v69 - 1))
  {
    goto LABEL_23;
  }

  if (v22 == 2)
  {
    if (v77->i32[0] != *v69 || v77->i32[1] != v69[1])
    {
      goto LABEL_23;
    }
  }

  else if (v22 >= 1)
  {
    v29 = 0;
    v30 = 4 * v22;
    while (v77->i32[v29 / 4] == v69[v29 / 4])
    {
      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_24;
      }
    }

LABEL_23:
    v56 = 0uLL;
    qmemcpy(sub_1002A80E0(&v56, 22), "src1.size == src2.size", 22);
    sub_1002A8980(-215, &v56, "scaleAdd", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2427);
  }

LABEL_24:
  sub_10026BEEC(a3, DWORD1(v72), v77->i32, v7, -1, 0, 0);
  if (sub_100271148(a3) == 0x10000)
  {
    v23 = *(a3 + 8);
    v24 = *v23;
    v25 = *(v23 + 16);
    v56 = *v23;
    v57 = v25;
    v58 = *(v23 + 32);
    v26 = *(v23 + 56);
    v59 = *(v23 + 48);
    v60 = v26;
    v61 = &v56 + 8;
    v62 = v63;
    v63[0] = 0;
    v63[1] = 0;
    if (v26)
    {
      atomic_fetch_add((v26 + 20), 1u);
      if (*(v23 + 4) <= 2)
      {
LABEL_27:
        v27 = *(v23 + 72);
        v28 = v62;
        *v62 = *v27;
        v28[1] = v27[1];
        goto LABEL_36;
      }
    }

    else if (SDWORD1(v24) <= 2)
    {
      goto LABEL_27;
    }

    DWORD1(v56) = 0;
    sub_100269B58(&v56, v23);
  }

  else
  {
    sub_1002703C0(a3, 0xFFFFFFFFLL, &v56);
  }

LABEL_36:
  v31 = ((v7 >> 3) & 0x1FF) + 1;
  v32 = v82;
  v55 = v32;
  if (v9 == 5)
  {
    v33 = &v55;
  }

  else
  {
    v33 = &v82;
  }

  if (v9 == 5)
  {
    v34 = sub_100245568;
  }

  else
  {
    v34 = sub_10024566C;
  }

  if ((BYTE1(v72) & 0x40) == 0 || (BYTE1(v64) & 0x40) == 0 || (BYTE1(v56) & 0x40) == 0)
  {
    v86[0] = &v72;
    v86[1] = &v64;
    v86[2] = &v56;
    v86[3] = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    sub_100267CC8(v53, v86, &v83, 0xFFFFFFFFLL);
    v35 = (v31 * v54);
    v36 = -1;
    while (++v36 < v53[4])
    {
      v34(v83, v84, v85, v35, v33);
      sub_100267D14(v53);
    }

    goto LABEL_58;
  }

  if (SDWORD1(v72) >= 3)
  {
    if (DWORD1(v72) > 7)
    {
      v38 = DWORD1(v72) & 0x7FFFFFF8;
      v39 = v77 + 1;
      v40.i64[0] = 0x100000001;
      v40.i64[1] = 0x100000001;
      v41 = v38;
      v42.i64[0] = 0x100000001;
      v42.i64[1] = 0x100000001;
      do
      {
        v40 = vmulq_s32(v39[-1], v40);
        v42 = vmulq_s32(*v39, v42);
        v39 += 2;
        v41 -= 8;
      }

      while (v41);
      v43 = vmulq_s32(v42, v40);
      *v43.i8 = vmul_s32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
      v37 = v43.i32[0] * v43.i32[1];
      if (v38 == DWORD1(v72))
      {
        goto LABEL_57;
      }
    }

    else
    {
      v38 = 0;
      v37 = 1;
    }

    v44 = DWORD1(v72) - v38;
    v45 = &v77->i32[v38];
    do
    {
      v46 = *v45++;
      v37 *= v46;
      --v44;
    }

    while (v44);
  }

  else
  {
    v37 = HIDWORD(v72) * DWORD2(v72);
  }

LABEL_57:
  v34(v73, v65, v57, (v37 * v31), v33);
LABEL_58:
  if (v60 && atomic_fetch_add((v60 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v56);
  }

  v60 = 0;
  v57 = 0u;
  v58 = 0u;
  if (SDWORD1(v56) >= 1)
  {
    v47 = 0;
    v48 = v61;
    do
    {
      *&v48[4 * v47++] = 0;
    }

    while (v47 < SDWORD1(v56));
  }

  if (v62 != v63)
  {
    j__free(v62);
  }

  if (v68 && atomic_fetch_add((v68 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v64);
  }

  v68 = 0;
  v65 = 0u;
  v66 = 0u;
  if (SDWORD1(v64) >= 1)
  {
    v49 = 0;
    v50 = v69;
    do
    {
      v50[v49++] = 0;
    }

    while (v49 < SDWORD1(v64));
  }

  if (v70 != v71)
  {
    j__free(v70);
  }

  if (v76 && atomic_fetch_add((v76 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v72);
  }

  v76 = 0;
  v73 = 0u;
  v74 = 0u;
  if (SDWORD1(v72) >= 1)
  {
    v51 = 0;
    v52 = v77;
    do
    {
      v52[v51++] = 0;
    }

    while (v51 < SDWORD1(v72));
  }

  if (v78 != v79)
  {
    j__free(v78);
  }

LABEL_82:
  if (v81)
  {
    sub_1002ACC1C(v80);
  }
}

void sub_10024546C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_100006D14(&a19);
  sub_100006D14(va);
  sub_100006D14(v30 - 256);
  sub_1001D8BF4(v30 - 152);
  _Unwind_Resume(a1);
}

float32x4_t *sub_100245568(float32x4_t *result, float32x4_t *a2, float32x4_t *a3, int a4, _DWORD *a5, double a6)
{
  LODWORD(a6) = *a5;
  if (a4 >= 4)
  {
    v6 = 0;
    v7 = result;
    v8 = a2;
    v9 = a3;
    do
    {
      v10 = *v7++;
      v11 = v10;
      v12 = *v8++;
      *v9++ = vaddq_f32(vmulq_n_f32(v11, *&a6), v12);
      v6 += 4;
    }

    while (v6 <= (a4 - 4));
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 < a4)
  {
    v13 = a4 - v6;
    if (v13 <= 7 || (a3 - result) < 0x20 || (a3 - a2) < 0x20)
    {
      v14 = v6;
    }

    else
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + v6;
      v22 = 4 * v6 + 16;
      v23 = vdupq_lane_s32(*&a6, 0);
      v24 = (a3 + v22);
      v25 = (result + v22);
      v26 = (a2 + v22);
      v27 = v13 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v28 = vmlaq_f32(*v26, v23, *v25);
        v24[-1] = vmlaq_f32(v26[-1], v23, v25[-1]);
        *v24 = v28;
        v24 += 2;
        v25 += 2;
        v26 += 2;
        v27 -= 8;
      }

      while (v27);
      if (v13 == (v13 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    v15 = &a3->f32[v14];
    v16 = &a2->f32[v14];
    v17 = &result->f32[v14];
    v18 = a4 - v14;
    do
    {
      v19 = *v17++;
      v20 = v19;
      v21 = *v16++;
      *v15++ = v21 + (v20 * *&a6);
      --v18;
    }

    while (v18);
  }

  return result;
}

float64x2_t *sub_10024566C(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, int a4, double *a5)
{
  v5 = *a5;
  if (a4 >= 4)
  {
    v6 = 0;
    v7 = a3 + 1;
    v8 = a2 + 1;
    v9 = result + 1;
    do
    {
      v10 = vaddq_f64(vmulq_n_f64(*v9, *&v5), *v8);
      v6 += 4;
      v7[-1] = vaddq_f64(vmulq_n_f64(v9[-1], *&v5), v8[-1]);
      *v7 = v10;
      v7 += 2;
      v8 += 2;
      v9 += 2;
    }

    while (v6 <= (a4 - 4));
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 < a4)
  {
    v11 = a4 - v6;
    if (v11 <= 5 || (a3 - result) < 0x20 || (a3 - a2) < 0x20)
    {
      v12 = v6;
    }

    else
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + v6;
      v20 = 8 * v6 + 16;
      v21 = vdupq_lane_s64(v5, 0);
      v22 = (a3 + v20);
      v23 = (result + v20);
      v24 = (a2 + v20);
      v25 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = vmlaq_f64(*v24, v21, *v23);
        v22[-1] = vmlaq_f64(v24[-1], v21, v23[-1]);
        *v22 = v26;
        v22 += 2;
        v23 += 2;
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return result;
      }
    }

    v13 = &a3->f64[v12];
    v14 = &a2->f64[v12];
    v15 = &result->f64[v12];
    v16 = a4 - v12;
    do
    {
      v17 = *v15++;
      v18 = v17;
      v19 = *v14++;
      *v13++ = v19 + v18 * *&v5;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_100245784(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, double a6)
{
  sub_1002ACE7C(v117, &off_100473F98);
  if (sub_100271148(a1) == 0x10000)
  {
    v12 = *(a1 + 8);
    v13 = *v12;
    v14 = *(v12 + 16);
    v109 = *v12;
    v110 = v14;
    v111 = *(v12 + 32);
    v15 = *(v12 + 56);
    v112 = *(v12 + 48);
    v113 = v15;
    v114 = &v109 + 2;
    v115 = v116;
    v116[0] = 0;
    v116[1] = 0;
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*(v12 + 4) <= 2)
      {
LABEL_4:
        v16 = *(v12 + 72);
        v17 = v115;
        *v115 = *v16;
        v17[1] = v16[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v13) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v109) = 0;
    sub_100269B58(&v109, v12);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v109);
  }

LABEL_8:
  if (sub_100271148(a4) == 0x10000)
  {
    v18 = *(a4 + 8);
    v19 = *v18;
    v20 = *(v18 + 16);
    v101 = *v18;
    v102 = v20;
    v103 = *(v18 + 32);
    v21 = *(v18 + 56);
    v104 = *(v18 + 48);
    v105 = v21;
    v106 = &v101 + 2;
    v107 = v108;
    v108[0] = 0;
    v108[1] = 0;
    if (v21)
    {
      atomic_fetch_add((v21 + 20), 1u);
      if (*(v18 + 4) <= 2)
      {
LABEL_11:
        v22 = *(v18 + 72);
        v23 = v107;
        *v107 = *v22;
        v23[1] = v22[1];
        goto LABEL_15;
      }
    }

    else if (SDWORD1(v19) <= 2)
    {
      goto LABEL_11;
    }

    DWORD1(v101) = 0;
    sub_100269B58(&v101, v18);
  }

  else
  {
    sub_1002703C0(a4, 0xFFFFFFFFLL, &v101);
  }

LABEL_15:
  v24 = v109;
  if (a5 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = v109;
  }

  v26 = v25 & 7;
  if (v26 <= (v101 & 7u))
  {
    v27 = v101 & 7;
  }

  else
  {
    v27 = v26;
  }

  if (v27 <= 5)
  {
    v28 = 5;
  }

  else
  {
    v28 = v27;
  }

  if ((v109 & 0xFF8) != 0)
  {
    v93 = 0uLL;
    v29 = sub_1002A80E0(&v93, 19);
    *(v29 + 15) = 824196413;
    *v29 = *"src.channels() == 1";
    sub_1002A8980(-215, &v93, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2888);
  }

  if (v102)
  {
    if (SDWORD1(v101) >= 3)
    {
      v31 = v106 + 1;
      v32 = 1;
      v33 = DWORD1(v101) & 0x7FFFFFFE;
      v34 = 1;
      do
      {
        v32 *= *(v31 - 1);
        v34 *= *v31;
        v31 += 2;
        v33 -= 2;
      }

      while (v33);
      v30 = v34 * v32;
      v35 = DWORD1(v101) - (DWORD1(v101) & 0x7FFFFFFE);
      if (v35)
      {
        v36 = &v106[2 * ((DWORD1(v101) >> 1) & 0x3FFFFFFF)];
        do
        {
          v37 = *v36++;
          v30 *= v37;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v30 = SHIDWORD(v101) * SDWORD2(v101);
    }

    if (DWORD1(v101) && v30)
    {
      if ((v101 & 0xFF8) != 0)
      {
        v93 = 0uLL;
        qmemcpy(sub_1002A80E0(&v93, 21), "delta.channels() == 1", 21);
        sub_1002A8980(-215, &v93, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2894);
      }

      if (DWORD2(v101) != 1 && DWORD2(v101) != DWORD2(v109))
      {
        v93 = 0uLL;
        qmemcpy(sub_1002A80E0(&v93, 43), "(delta.rows == src.rows || delta.rows == 1)", 43);
        sub_1002A8980(-215, &v93, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2894);
      }

      if (HIDWORD(v101) != 1 && HIDWORD(v101) != HIDWORD(v109))
      {
        v93 = 0uLL;
        qmemcpy(sub_1002A80E0(&v93, 43), "(delta.cols == src.cols || delta.cols == 1)", 43);
        sub_1002A8980(-215, &v93, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2894);
      }

      if ((v101 & 0xFFF) != v28)
      {
        LODWORD(v93) = 33619968;
        *(&v93 + 1) = &v101;
        *&v94 = 0;
        sub_10020EF14(&v101, &v93, v28, 1.0, 0.0);
      }
    }
  }

  v38 = 8;
  if (a3)
  {
    v38 = 12;
  }

  sub_100275A84(a2, *(&v109 | v38), *(&v109 | v38), v28, -1, 0, 0);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v93);
    goto LABEL_55;
  }

  v39 = *(a2 + 8);
  v40 = *v39;
  v41 = *(v39 + 16);
  v93 = *v39;
  v94 = v41;
  v95 = *(v39 + 32);
  v42 = *(v39 + 56);
  v96 = *(v39 + 48);
  v97 = v42;
  v98 = &v93 + 8;
  v99 = v100;
  v100[0] = 0;
  v100[1] = 0;
  if (!v42)
  {
    if (SDWORD1(v40) <= 2)
    {
      goto LABEL_51;
    }

LABEL_54:
    DWORD1(v93) = 0;
    sub_100269B58(&v93, v39);
    goto LABEL_55;
  }

  atomic_fetch_add((v42 + 20), 1u);
  if (*(v39 + 4) > 2)
  {
    goto LABEL_54;
  }

LABEL_51:
  v43 = *(v39 + 72);
  v44 = v99;
  *v99 = *v43;
  v44[1] = v43[1];
LABEL_55:
  if (v110 != v94)
  {
    v45 = v24 & 0xFFF;
    if (v45 != v28 || (v46.i64[0] = *(&v93 + 1), v46.i64[1] = *(&v109 + 1), v47.i64[0] = 0x6400000064, v47.i64[1] = 0x6400000064, (vaddvq_s32(vandq_s8(vcgtq_s32(v47, v46), xmmword_1003E3A20)) & 0xF) != 0))
    {
      if ((v24 & 0xFFF) != 0 || v27 > 5)
      {
        if ((v24 & 0xFFF) != 0 || v27 != 6)
        {
          if (v45 == 2 && v27 <= 5)
          {
            v49 = a3 == 0;
            v50 = sub_10024B8A4;
            v51 = sub_10024B1C4;
          }

          else if (v45 == 2 && v27 == 6)
          {
            v49 = a3 == 0;
            v50 = sub_10024CDD8;
            v51 = sub_10024C63C;
          }

          else if (v45 == 3 && v27 <= 5)
          {
            v49 = a3 == 0;
            v50 = sub_10024E01C;
            v51 = sub_10024D91C;
          }

          else if (v45 == 3 && v27 == 6)
          {
            v49 = a3 == 0;
            v50 = sub_10024F6A4;
            v51 = sub_10024EED0;
          }

          else if (v45 == 5 && v27 <= 5)
          {
            v49 = a3 == 0;
            v50 = sub_100250984;
            v51 = sub_100250320;
          }

          else
          {
            if (v45 != 5 || v27 != 6)
            {
              v50 = sub_100252ADC;
              if (a3)
              {
                v50 = sub_1002523BC;
              }

              if (v45 != 6 || v27 != 6)
              {
                *v89 = 0;
                *&v89[8] = 0;
                sub_1002A8980(-210, v89, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2989);
              }

              goto LABEL_121;
            }

            v49 = a3 == 0;
            v50 = sub_100251A74;
            v51 = sub_1002512D4;
          }
        }

        else
        {
          v49 = a3 == 0;
          v50 = sub_100249540;
          v51 = sub_10024882C;
        }
      }

      else
      {
        v49 = a3 == 0;
        v50 = sub_100246E48;
        v51 = sub_1002464C4;
      }

      if (!v49)
      {
        v50 = v51;
      }

LABEL_121:
      v50(&v109, &v93, &v101, a6);
      *v89 = 50397184;
      *&v89[8] = &v93;
      *&v89[16] = 0;
      sub_100277334(v89, 0);
      goto LABEL_122;
    }
  }

  *v89 = 1124007936;
  memset(&v89[4], 0, 60);
  v90 = &v89[8];
  v91 = v92;
  v92[0] = 0;
  v92[1] = 0;
  if (v102)
  {
    if (SDWORD1(v101) >= 3)
    {
      v53 = v106 + 1;
      v54 = 1;
      v55 = DWORD1(v101) & 0x7FFFFFFE;
      v56 = 1;
      do
      {
        v54 *= *(v53 - 1);
        v56 *= *v53;
        v53 += 2;
        v55 -= 2;
      }

      while (v55);
      v48 = v56 * v54;
      v57 = DWORD1(v101) - (DWORD1(v101) & 0x7FFFFFFE);
      if (v57)
      {
        v58 = &v106[2 * ((DWORD1(v101) >> 1) & 0x3FFFFFFF)];
        do
        {
          v59 = *v58++;
          v48 *= v59;
          --v57;
        }

        while (v57);
      }
    }

    else
    {
      v48 = SHIDWORD(v101) * SDWORD2(v101);
    }

    v52 = &v109;
    if (DWORD1(v101) && v48)
    {
      if (v106[1] == v114[1] && *v106 == *v114)
      {
        *&v76[1] = 0;
        LODWORD(v76[0]) = 16842752;
        *(&v76[0] + 1) = &v109;
        v88 = 0;
        v86 = 16842752;
        v87 = &v101;
        v83 = 33619968;
        v84 = v89;
        v85 = 0;
        v61 = sub_100276DA4();
      }

      else
      {
        LODWORD(v76[0]) = 16842752;
        *(&v76[0] + 1) = &v101;
        *&v76[1] = 0;
        v86 = 33619968;
        v87 = v89;
        v88 = 0;
        sub_10022F3D8(v76, SDWORD2(v109) / SDWORD2(v101), SHIDWORD(v109) / SHIDWORD(v101), &v86);
        *&v76[1] = 0;
        LODWORD(v76[0]) = 16842752;
        *(&v76[0] + 1) = &v109;
        v88 = 0;
        v86 = 16842752;
        v87 = v89;
        v83 = 33619968;
        v84 = v89;
        v85 = 0;
        v61 = sub_100276DA4();
      }

      sub_1001DD10C(v76, &v86, &v83, v61, -1);
      v52 = v89;
    }
  }

  else
  {
    v52 = &v109;
  }

  v88 = 0;
  v86 = 16842752;
  v87 = v52;
  v85 = 0;
  v83 = 16842752;
  v84 = v52;
  LODWORD(v76[0]) = 1124007936;
  memset(v76 + 4, 0, 48);
  v76[3] = 0u;
  v77 = v76 + 8;
  v78 = v79;
  v79[0] = 0;
  v79[1] = 0;
  v82 = 0;
  v80 = 16842752;
  v81 = v76;
  v73 = 33619968;
  if (a3)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  v74 = &v93;
  v75 = 0;
  sub_100243EB0(&v86, &v83, &v80, &v73, v62, a6, 0.0);
  if (*(&v76[3] + 1) && atomic_fetch_add((*(&v76[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v76);
  }

  *(&v76[3] + 1) = 0;
  memset(&v76[1], 0, 32);
  if (SDWORD1(v76[0]) >= 1)
  {
    v63 = 0;
    v64 = v77;
    do
    {
      *&v64[4 * v63++] = 0;
    }

    while (v63 < SDWORD1(v76[0]));
  }

  if (v78 != v79)
  {
    j__free(v78);
  }

  if (*&v89[56] && atomic_fetch_add((*&v89[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v89);
  }

  *&v89[56] = 0;
  memset(&v89[16], 0, 32);
  if (*&v89[4] >= 1)
  {
    v65 = 0;
    v66 = v90;
    do
    {
      *&v66[4 * v65++] = 0;
    }

    while (v65 < *&v89[4]);
  }

  if (v91 != v92)
  {
    j__free(v91);
  }

LABEL_122:
  if (v97 && atomic_fetch_add((v97 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v93);
  }

  v97 = 0;
  v94 = 0u;
  v95 = 0u;
  if (SDWORD1(v93) >= 1)
  {
    v67 = 0;
    v68 = v98;
    do
    {
      *&v68[4 * v67++] = 0;
    }

    while (v67 < SDWORD1(v93));
  }

  if (v99 != v100)
  {
    j__free(v99);
  }

  if (v105 && atomic_fetch_add((v105 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v101);
  }

  v105 = 0;
  v102 = 0u;
  v103 = 0u;
  if (SDWORD1(v101) >= 1)
  {
    v69 = 0;
    v70 = v106;
    do
    {
      v70[v69++] = 0;
    }

    while (v69 < SDWORD1(v101));
  }

  if (v107 != v108)
  {
    j__free(v107);
  }

  if (v113 && atomic_fetch_add((v113 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v109);
  }

  v113 = 0;
  v110 = 0u;
  v111 = 0u;
  if (SDWORD1(v109) >= 1)
  {
    v71 = 0;
    v72 = v114;
    do
    {
      v72[v71++] = 0;
    }

    while (v71 < SDWORD1(v109));
  }

  if (v115 != v116)
  {
    j__free(v115);
  }

  if (v117[2])
  {
    sub_1002ACC1C(v117);
  }
}

void sub_100246378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1002A8124(va);
  __break(1u);
}

void sub_100246388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_1002A8124(&a33);
  sub_100006D14(&a45);
  sub_100006D14(va);
  sub_100006D14(v56 - 192);
  sub_1001D8BF4(v56 - 96);
  _Unwind_Resume(a1);
}

void sub_100246494(_Unwind_Exception *a1)
{
  sub_100006D14(v1 - 192);
  sub_1001D8BF4(v1 - 96);
  _Unwind_Resume(a1);
}

float *sub_1002464C4(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, __n128 a10, __n128 a11)
{
  v14 = a1[2];
  v15 = *(a2 + 16);
  v16 = *(a3 + 16);
  v17 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a3 + 80) >> 2;
  }

  v19 = a1[8];
  v20 = v19[1];
  v21 = *v19;
  if (v16)
  {
    v22 = *(a3 + 12) < v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = !v22;
  v24 = 20 * v21;
  if (!v22)
  {
    v24 = 4 * v21;
  }

  result = v174;
  if (v24 >= 0x409)
  {
    operator new[]();
  }

  v26 = *(a2 + 80) >> 2;
  if ((v23 & 1) == 0)
  {
    v27 = &v174[4 * v21];
    if (v21 < 1)
    {
      goto LABEL_36;
    }

    v28 = v21 >= 8 && v18 == 1;
    if (v28 && (v27 < &v16->f32[v21] ? (v29 = v16 >= &v174[16 * v21 + 4 * v21]) : (v29 = 1), v29))
    {
      v30 = v21 & 0x7FFFFFF8;
      f32 = v27[4].f32;
      v32 = &v16[1];
      v33 = v30;
      do
      {
        v175.val[0] = v32[-1];
        v34 = *v32;
        v175.val[1] = v175.val[0];
        v175.val[2] = v175.val[0];
        v175.val[3] = v175.val[0];
        v35 = *v32;
        a10 = *v32;
        v36 = *v32;
        v37 = f32 - 16;
        vst4q_f32(v37, v175);
        vst4q_f32(f32, *(&a10 - 2));
        f32 += 32;
        v32 += 2;
        v33 -= 8;
      }

      while (v33);
      if (v30 == v21)
      {
LABEL_36:
        v18 = 4 * (v18 != 0);
        v16 = &v174[4 * v21];
        if (v20 < 1)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v30 = 0;
    }

    v38 = &v174[16 * v30 + 4 * v21];
    v39 = &v16->f32[v18 * v30];
    v41 = v21 - v30;
    do
    {
      v42 = vld1q_dup_f32(v39);
      v40 = 4 * v18;
      v39 = (v39 + v40);
      *v38++ = v42;
      --v41;
    }

    while (v41);
    goto LABEL_36;
  }

  if (!v16)
  {
    if (v20 < 1)
    {
      return result;
    }

    v125 = 0;
    v126 = v20 - 4;
    v127 = a4 * 0.0;
    *&v127 = a4 * 0.0;
    v129 = v174 < v14 + v20 + v21 - 1 && v14 < &v174[4 * v21];
    v130 = v21 & 0x7FFFFFFC;
    v131 = vdupq_lane_s32(*&v127, 0);
    v133 = v21 < 4 || v17 != 1;
    v134 = v133 || v129;
    v135 = 4 * v26;
    for (i = v14; ; i = (i + 1))
    {
      if (v21 < 1)
      {
        goto LABEL_149;
      }

      if (v134)
      {
        v137 = 0;
LABEL_147:
        v144 = &v174[4 * v137];
        v145 = v17 * v137;
        v146 = v21 - v137;
        do
        {
          a11.n128_u8[0] = i->u8[v145];
          a11.n128_f32[0] = a11.n128_u32[0];
          *v144++ = a11.n128_u32[0];
          v145 += v17;
          --v146;
        }

        while (v146);
        goto LABEL_149;
      }

      if (v21 >= 0x10)
      {
        v139 = v21 & 0x7FFFFFF0;
        v140 = v174;
        v141 = i;
        do
        {
          v142 = *v141++;
          v13 = vqtbl1q_s8(v142, xmmword_1003E3730);
          a11 = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1003E3720));
          v12 = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1003E3700));
          v140[2] = v12;
          v140[3] = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1003E3710));
          *v140 = a11;
          v140[1] = vcvtq_f32_u32(v13);
          v140 += 4;
          v139 -= 16;
        }

        while (v139);
        if ((v21 & 0x7FFFFFF0) == v21)
        {
          goto LABEL_149;
        }

        v138 = v21 & 0x7FFFFFF0;
        v137 = v138;
        if ((v21 & 0xC) == 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        v138 = 0;
      }

      v143 = &v174[4 * v138];
      do
      {
        a11.n128_u32[0] = *(i->u32 + v138);
        a11 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a11.n128_u64[0])));
        *v143++ = a11;
        v138 += 4;
      }

      while (v130 != v138);
      v137 = v21 & 0x7FFFFFFC;
      if (v130 != v21)
      {
        goto LABEL_147;
      }

LABEL_149:
      LODWORD(v147) = v125;
      v148 = v125;
      if (v125 <= v126)
      {
        do
        {
          a11 = v131;
          if (v21 >= 1)
          {
            v155 = (v14->i32 + v148);
            v156 = 0uLL;
            v157 = v21;
            v158 = v174;
            v159 = 0uLL;
            do
            {
              v160 = *v158++;
              LODWORD(v13.f64[0]) = *v155;
              v161 = vmovl_u16(*&vmovl_u8(*&v13.f64[0]));
              v162 = vand_s8(*&vextq_s8(v161, v161, 8uLL), 0xFF000000FFLL);
              v163.i64[0] = v162.u32[0];
              v163.i64[1] = v162.u32[1];
              v164 = vcvtq_f64_u64(v163);
              *v161.i8 = vand_s8(*v161.i8, 0xFF000000FFLL);
              v163.i64[0] = v161.u32[0];
              v163.i64[1] = v161.u32[1];
              v13 = vcvtq_f64_u64(v163);
              v156 = vmlaq_n_f64(v156, v13, v160);
              v159 = vmlaq_n_f64(v159, v164, v160);
              v155 = (v155 + v17);
              --v157;
            }

            while (v157);
            v12.f64[0] = a4;
            a11 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v156, a4)), vmulq_n_f64(v159, a4));
          }

          *(v15 + 4 * v148) = a11;
          v147 = v148 + 4;
          v148 = v147;
        }

        while (v126 >= v147);
      }

      if (v147 >= v20)
      {
        goto LABEL_134;
      }

      v149 = v147;
      if (v21 >= 1)
      {
        do
        {
          v150 = 0.0;
          v151 = v14;
          v152 = v21;
          v153 = v174;
          do
          {
            v154 = *v153++;
            LOBYTE(v12.f64[0]) = *(v151 + v149);
            v12.f64[0] = *&v12.f64[0];
            v150 = v150 + v154 * v12.f64[0];
            v151 += v17;
            --v152;
          }

          while (v152);
          a11.n128_f64[0] = v150 * a4;
          a11.n128_f32[0] = a11.n128_f64[0];
          *(v15 + 4 * v149++) = a11.n128_u32[0];
        }

        while (v20 > v149);
        goto LABEL_134;
      }

      v165 = (v20 + ~v147);
      if (v165 > 6)
      {
        v167 = v165 + 1;
        v168 = (v165 + 1) & 0x1FFFFFFF8;
        v166 = v168 + v149;
        v169 = 4 * v149;
        v170 = v168;
        do
        {
          v171 = (v15 + v169);
          *v171 = v131;
          v171[1] = v131;
          v169 += 32;
          v170 -= 8;
        }

        while (v170);
        if (v167 == v168)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v166 = v149;
      }

      v172 = 4 * v166;
      do
      {
        *(v15 + v172) = LODWORD(v127);
        v172 += 4;
        LODWORD(v166) = v166 + 1;
      }

      while (v20 > v166);
LABEL_134:
      ++v125;
      v15 += v135;
      if (v125 == v20)
      {
        return result;
      }
    }
  }

  v27 = 0;
  if (v20 >= 1)
  {
LABEL_37:
    v43 = 0;
    v44 = v20 - 4;
    v45 = a4 * 0.0;
    *&v45 = a4 * 0.0;
    v46 = &v174[4 * v21];
    v48 = v174 < v14 + v20 + v21 - 1 && v14 < v46;
    v50 = v174 < &v27->i8[4 * v21] && v27 < v46 || v48;
    v52 = v174 < &v16->i8[4 * v20 - 4 + 4 * v21] && v16 < v46 || v48;
    v53 = v17 == 1 && v18 == 1;
    v54 = v21 & 0x7FFFFFF0;
    v55 = v21 & 0x7FFFFFFC;
    v56 = vdupq_lane_s32(*&v45, 0);
    v58 = !v53 || v21 < 4;
    v59 = v58 | v50;
    v60 = v58 | v52;
    v61 = 4 * v18;
    v62 = 4 * v26;
    v63 = v16;
    v64 = v14;
    do
    {
      if (v27)
      {
        if (v21 < 1)
        {
          goto LABEL_96;
        }

        if (v59)
        {
          v65 = 0;
LABEL_84:
          v81 = &v174[4 * v65];
          v82 = (v27->f32 + v61 * v65);
          v83 = v21 - v65;
          v84 = v17 * v65;
          do
          {
            a10.n128_u8[0] = v64->u8[v84];
            a10.n128_f32[0] = a10.n128_u32[0] - *v82;
            *v81++ = a10.n128_u32[0];
            v82 = (v82 + v61);
            v84 += v17;
            --v83;
          }

          while (v83);
          goto LABEL_96;
        }

        if (v21 >= 0x10)
        {
          v69 = v21 & 0x7FFFFFF0;
          v70 = v174;
          v71 = v27;
          v72 = v64;
          do
          {
            v73 = *v72++;
            v11 = vcvtq_f32_u32(vqtbl1q_s8(v73, xmmword_1003E3730));
            v75 = v71[2];
            v74 = v71[3];
            v77 = *v71;
            v76 = v71[1];
            v71 += 4;
            v12 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v73, xmmword_1003E3700)), v75);
            v70[2] = v12;
            v70[3] = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v73, xmmword_1003E3710)), v74);
            a10 = vsubq_f32(v11, v76);
            *v70 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v73, xmmword_1003E3720)), v77);
            v70[1] = a10;
            v70 += 4;
            v69 -= 16;
          }

          while (v69);
          if (v54 == v21)
          {
            goto LABEL_96;
          }

          v67 = v21 & 0x7FFFFFF0;
          v65 = v67;
          if ((v21 & 0xC) == 0)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v67 = 0;
        }

        v78 = (v27 + 4 * v67);
        v79 = &v174[4 * v67];
        do
        {
          a10.n128_u32[0] = *(v64->u32 + v67);
          v80 = *v78++;
          a10 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a10.n128_u64[0]))), v80);
          *v79++ = a10;
          v67 += 4;
        }

        while (v55 != v67);
        v65 = v21 & 0x7FFFFFFC;
        if (v55 != v21)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v21 < 1)
        {
          goto LABEL_96;
        }

        if (v60)
        {
          v66 = 0;
LABEL_94:
          v95 = &v174[4 * v66];
          v96 = v61 * v66;
          v97 = v21 - v66;
          v98 = v17 * v66;
          do
          {
            a10.n128_u8[0] = v64->u8[v98];
            a10.n128_f32[0] = a10.n128_u32[0] - *(v63->f32 + v96);
            *v95++ = a10.n128_u32[0];
            v96 += v61;
            v98 += v17;
            --v97;
          }

          while (v97);
          goto LABEL_96;
        }

        if (v21 >= 0x10)
        {
          v85 = 0;
          v86 = v174;
          v87 = v63;
          do
          {
            v88 = v64[v85 / 0x10];
            v89 = vqtbl1q_s8(v88, xmmword_1003E3720);
            v91 = v87[2];
            v90 = v87[3];
            v93 = *v87;
            v92 = v87[1];
            v87 += 4;
            v11 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v88, xmmword_1003E3730)), v92);
            v12 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v88, xmmword_1003E3700)), v91);
            a10 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v88, xmmword_1003E3710)), v90);
            v86[2] = v12;
            v86[3] = a10;
            *v86 = vsubq_f32(vcvtq_f32_u32(v89), v93);
            v86[1] = v11;
            v86 += 4;
            v85 += 16;
          }

          while (v54 != v85);
          if (v54 == v21)
          {
            goto LABEL_96;
          }

          v68 = v21 & 0x7FFFFFF0;
          v66 = v68;
          if ((v21 & 0xC) == 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v68 = 0;
        }

        v94 = 4 * v68;
        do
        {
          a10.n128_u32[0] = *(v64->u32 + v68);
          a10 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a10.n128_u64[0]))), *(v63 + v94));
          *&v174[v94] = a10;
          v68 += 4;
          v94 += 16;
        }

        while (v55 != v68);
        v66 = v21 & 0x7FFFFFFC;
        if (v55 != v21)
        {
          goto LABEL_94;
        }
      }

LABEL_96:
      LODWORD(v99) = v43;
      v100 = v43;
      if (v43 <= v44)
      {
        do
        {
          a10 = v56;
          if (v21 >= 1)
          {
            v108 = (v16 + 4 * v100);
            if (v27)
            {
              v108 = v27;
            }

            v109 = (v14->i32 + v100);
            v110 = 0uLL;
            v111 = v21;
            v112 = v174;
            v113 = 0uLL;
            do
            {
              v114 = *v112++;
              LODWORD(v12.f64[0]) = *v109;
              v115 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v12.f64[0]))), *v108);
              v116 = vcvtq_f64_f32(*v115.f32);
              v12 = vcvt_hight_f64_f32(v115);
              v113 = vmlaq_n_f64(v113, v12, v114);
              v110 = vmlaq_n_f64(v110, v116, v114);
              v109 = (v109 + v17);
              v108 = (v108 + v61);
              --v111;
            }

            while (v111);
            v11.i32[0] = LODWORD(a4);
            a10 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v110, a4)), vmulq_n_f64(v113, a4));
          }

          *(v15 + 4 * v100) = a10;
          v99 = v100 + 4;
          v100 = v99;
        }

        while (v44 >= v99);
      }

      if (v99 >= v20)
      {
        goto LABEL_65;
      }

      v101 = v99;
      if (v21 >= 1)
      {
        do
        {
          v102 = &v16->f32[v101];
          if (v27)
          {
            v102 = v27;
          }

          v103 = 0.0;
          v104 = v14;
          v105 = v21;
          v106 = v174;
          do
          {
            v107 = *v106++;
            v11.i8[0] = *(v104 + v101);
            *v11.i64 = (v11.u32[0] - *v102);
            v103 = v103 + v107 * *v11.i64;
            v102 = (v102 + v61);
            v104 += v17;
            --v105;
          }

          while (v105);
          a10.n128_f64[0] = v103 * a4;
          a10.n128_f32[0] = a10.n128_f64[0];
          *(v15 + 4 * v101++) = a10.n128_u32[0];
        }

        while (v20 > v101);
        goto LABEL_65;
      }

      v117 = (v20 + ~v99);
      if (v117 > 6)
      {
        v119 = v117 + 1;
        v120 = (v117 + 1) & 0x1FFFFFFF8;
        v118 = v120 + v101;
        v121 = 4 * v101;
        v122 = v120;
        do
        {
          v123 = (v15 + v121);
          *v123 = v56;
          v123[1] = v56;
          v121 += 32;
          v122 -= 8;
        }

        while (v122);
        if (v119 == v120)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v118 = v101;
      }

      v124 = 4 * v118;
      do
      {
        *(v15 + v124) = LODWORD(v45);
        v124 += 4;
        LODWORD(v118) = v118 + 1;
      }

      while (v20 > v118);
LABEL_65:
      ++v43;
      v15 += v62;
      v64 = (v64 + 1);
      v63 = (v63 + 4);
    }

    while (v43 != v20);
  }

  return result;
}

void sub_100246E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100246E48(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4, double a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10, float32x4_t a11)
{
  v407 = a4.n128_f64[0];
  v11 = *(result + 16);
  v12 = *(a2 + 16);
  v13 = *(a3 + 16);
  v408 = *(result + 80);
  v394 = *(a2 + 80) >> 2;
  if (*(a3 + 8) <= 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a3 + 80) >> 2;
  }

  v15 = *(result + 64);
  v16 = *v15;
  v17 = v15[1];
  v18 = v17;
  v404 = v16;
  v405 = v15[1];
  v406 = v17;
  if (!v13)
  {
    if (v16 < 1)
    {
      return result;
    }

    if (v17 < 4)
    {
      if (v17 <= 0)
      {
        v372 = 0;
        v373 = a4.n128_f64[0] * 0.0;
        *&v373 = v407 * 0.0;
        v374 = vdupq_lane_s32(*&v373, 0);
        v375 = v12 + 1;
        v376 = v16;
        do
        {
          v377 = v16 - v372;
          v378 = v372;
          if ((v16 - v372) < 8)
          {
            goto LABEL_139;
          }

          v379 = v376 & 0xFFFFFFFFFFFFFFF8;
          v378 = v372 + (v377 & 0xFFFFFFFFFFFFFFF8);
          v380 = v375;
          do
          {
            v380[-1] = v374;
            *v380 = v374;
            v380 += 2;
            v379 -= 8;
          }

          while (v379);
          if (v377 != (v377 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_139:
            do
            {
              v12->i32[v378++] = LODWORD(v373);
            }

            while (v16 != v378);
          }

          ++v372;
          --v376;
          v375 = (v375 + 4 * v394 + 4);
          v12 = (v12 + 4 * v394);
        }

        while (v372 != v16);
      }

      else
      {
        v116 = 0;
        v117 = v11 + 2;
        v118 = v16;
        do
        {
          v119 = &v11[v408 * v116];
          v120 = v118;
          v121 = v12;
          v122 = v117;
          do
          {
            LOBYTE(a5) = *v119;
            LOBYTE(a6) = *(v122 - 2);
            v123 = *&a6;
            v124 = *&a5 * v123 + 0.0;
            if (v17 != 1)
            {
              LOBYTE(v123) = v119[1];
              v125 = *&v123;
              LOBYTE(a7) = *(v122 - 1);
              a7 = *&a7;
              v124 = v124 + v125 * a7;
              if (v17 != 2)
              {
                LOBYTE(v125) = v119[2];
                LOBYTE(a7) = *v122;
                a7 = *&a7;
                v124 = v124 + *&v125 * a7;
              }
            }

            a6 = a4.n128_f64[0];
            a5 = v124 * a4.n128_f64[0];
            *&a5 = a5;
            v121->i32[0] = LODWORD(a5);
            v121 = (v121 + 4);
            v122 += v408;
            --v120;
          }

          while (v120);
          ++v116;
          v117 += v408;
          v12 = (v12 + 4 * v394 + 4);
          --v118;
        }

        while (v116 != v16);
      }

      return result;
    }

    v126 = (v17 - 4);
    v127 = (v126 & 0xFFFFFFFC) + 4;
    if (v126 < 0x1C)
    {
      if (v127 >= v17)
      {
        for (i = 0; i != v16; ++i)
        {
          v382 = v11;
          v383 = i;
          do
          {
            v384 = 0;
            v385 = 0.0;
            do
            {
              LOBYTE(a5) = v11[v384];
              LOBYTE(a6) = v382[v384];
              LOBYTE(a7) = v11[v384 + 1];
              *&v386 = *&a6;
              LOBYTE(a8) = v382[v384 + 1];
              a8 = *&a8;
              *&v387 = *&a7 * a8;
              v388 = *&v387 + *&a5 * *&v386;
              LOBYTE(v386) = v11[v384 + 2];
              *&v389 = v386;
              LOBYTE(v387) = v382[v384 + 2];
              *&v390 = v387;
              v391 = v388 + *&v389 * *&v390;
              LOBYTE(v389) = v11[v384 + 3];
              a6 = v389;
              LOBYTE(v390) = v382[v384 + 3];
              a7 = v390;
              a5 = v391 + a6 * a7;
              v385 = v385 + a5;
              v384 += 4;
            }

            while (v384 <= v126);
            a5 = v407;
            *&v392 = v385 * v407;
            v12->i32[v383++] = v392;
            v382 += v408;
          }

          while (v383 != v16);
          v12 = (v12 + 4 * v394);
          v11 += v408;
        }
      }

      else
      {
        for (j = 0; j != v16; ++j)
        {
          v129 = v11;
          v130 = j;
          do
          {
            v131 = 0;
            v132 = 0.0;
            do
            {
              LOBYTE(a5) = v11[v131];
              LOBYTE(a6) = v129[v131];
              LOBYTE(a7) = v11[v131 + 1];
              *&v133 = *&a6;
              LOBYTE(a8) = v129[v131 + 1];
              a8 = *&a8;
              *&v134 = *&a7 * a8;
              v135 = *&v134 + *&a5 * *&v133;
              LOBYTE(v133) = v11[v131 + 2];
              *&v136 = v133;
              LOBYTE(v134) = v129[v131 + 2];
              *&v137 = v134;
              v138 = v135 + *&v136 * *&v137;
              LOBYTE(v136) = v11[v131 + 3];
              a6 = v136;
              LOBYTE(v137) = v129[v131 + 3];
              a7 = v137;
              a5 = v138 + a6 * a7;
              v132 = v132 + a5;
              v131 += 4;
            }

            while (v131 <= v126);
            v139 = (v126 & 0xFFFFFFFC) + 4;
            do
            {
              LOBYTE(a5) = v11[v139];
              a5 = *&a5;
              LOBYTE(a6) = v129[v139];
              a6 = *&a6;
              v132 = v132 + a5 * a6;
              ++v139;
            }

            while (v17 > v139);
            a5 = v407;
            *&v140 = v132 * v407;
            v12->i32[v130++] = v140;
            v129 += v408;
          }

          while (v130 != v16);
          v12 = (v12 + 4 * v394);
          v11 += v408;
        }
      }

      return result;
    }

    v141 = (v126 >> 2) + 1;
    v142 = 0;
    v143 = v141 & 0x3FFFFFF0;
    v401 = v141 & 0x3FFFFFF8;
    v397 = (v126 & 0xFFFFFFFC) + 4;
    v398 = (v17 - 4);
    v395 = v143;
    v396 = v141;
LABEL_105:
    v144 = v11;
    v393 = v142;
    v145 = v142;
    v399 = v11;
    v400 = v12;
    while (v126 >= 0x3C)
    {
      v402 = v145;
      v403 = v144;
      v148 = 0.0;
      do
      {
        v437 = v148;
        v434 = v143;
        v444 = vld4q_s8(v11);
        v244 = v11 + 64;
        v430 = v244;
        v443 = vld4q_s8(v144);
        v245 = v144 + 64;
        v431 = v245;
        v246 = vextq_s8(v444.val[0], v444.val[0], 8uLL).u64[0];
        v247 = vextq_s8(v443.val[0], v443.val[0], 8uLL).u64[0];
        v248 = vextq_s8(v444.val[1], v444.val[1], 8uLL).u64[0];
        v427 = v444.val[2].u8[6];
        v414 = v443.val[0].u8[0];
        v426 = v444.val[2].u8[7];
        v425 = v444.val[2].u8[4];
        v249.i32[0] = BYTE4(v246);
        v413 = v443.val[0].u8[2];
        v424 = v444.val[2].u8[5];
        v419 = v444.val[2].u8[2];
        v250.i32[0] = BYTE6(v246);
        v411 = v443.val[0].u8[4];
        v418 = v444.val[2].u8[3];
        v410 = v443.val[0].u8[6];
        v417 = v444.val[2].u8[1];
        v422 = v444.val[3].u8[0];
        v251.i32[0] = BYTE2(v247);
        v420 = v444.val[3].u8[1];
        v423 = v444.val[3].u8[2];
        v252.i32[0] = BYTE4(v247);
        v253 = vextq_s8(v443.val[1], v443.val[1], 8uLL).u64[0];
        v421 = v444.val[3].u8[3];
        v416 = v444.val[3].u8[4];
        v254.i32[0] = BYTE6(v247);
        v255 = vextq_s8(v444.val[2], v444.val[2], 8uLL).u64[0];
        v415 = v444.val[3].u8[5];
        v256 = v444.val[3].u8[6];
        v257.i32[0] = BYTE6(v248);
        v412 = v444.val[3].u8[7];
        v409 = vextq_s8(v444.val[3], v444.val[3], 8uLL).u64[0];
        v258.i32[0] = BYTE4(v248);
        v259 = vextq_s8(v443.val[2], v443.val[2], 8uLL).u64[0];
        v260 = v443.val[0].u8[1];
        v261.i32[0] = BYTE2(v248);
        v262 = v443.val[0].u8[3];
        v263 = v443.val[0].u8[5];
        LODWORD(v245) = v443.val[0].u8[7];
        v264 = v443.val[1].u8[6];
        v265 = v443.val[1].u8[7];
        v266 = v443.val[1].u8[4];
        LODWORD(v244) = v443.val[1].u8[5];
        v267 = v443.val[1].u8[2];
        v268 = v443.val[1].u8[3];
        v269 = v443.val[1].u8[0];
        v270 = v443.val[1].u8[1];
        v271 = v443.val[2].u8[6];
        v272 = v443.val[2].u8[7];
        v273 = v443.val[2].u8[4];
        v274 = v443.val[2].u8[5];
        v275 = v443.val[2].u8[2];
        v276 = v443.val[2].u8[3];
        v277 = v443.val[2].u8[0];
        v278 = v443.val[2].u8[1];
        v279 = vextq_s8(v443.val[3], v443.val[3], 8uLL).u64[0];
        v280.i32[0] = v444.val[1].u8[4];
        v281.i32[0] = v444.val[1].u8[2];
        v443.val[0].i32[0] = v253.u8[6];
        v257.i32[1] = HIBYTE(v248);
        v443.val[0].i32[1] = v253.u8[7];
        v282 = vand_s8(v257, 0xFF000000FFLL);
        v283.i64[0] = v282.u32[0];
        v283.i64[1] = v282.u32[1];
        *v443.val[0].i8 = vand_s8(*v443.val[0].i8, 0xFF000000FFLL);
        v284 = vcvtq_f64_u64(v283);
        v283.i64[0] = v443.val[0].u32[0];
        v283.i64[1] = v443.val[0].u32[1];
        v285 = vmulq_f64(v284, vcvtq_f64_u64(v283));
        v286.i32[0] = v248;
        v250.i32[1] = HIBYTE(v246);
        v254.i32[1] = HIBYTE(v247);
        *v443.val[1].i8 = vand_s8(v250, 0xFF000000FFLL);
        v283.i64[0] = v443.val[1].u32[0];
        v283.i64[1] = v443.val[1].u32[1];
        v287 = vand_s8(v254, 0xFF000000FFLL);
        v443.val[1] = vcvtq_f64_u64(v283);
        v283.i64[0] = v287.u32[0];
        v283.i64[1] = v287.u32[1];
        v288 = vmlaq_f64(v285, vcvtq_f64_u64(v283), v443.val[1]);
        v289.i32[0] = v444.val[1].u8[0];
        v249.i32[1] = BYTE5(v246);
        v252.i32[1] = BYTE5(v247);
        v258.i32[1] = BYTE5(v248);
        v443.val[1].i32[0] = v253.u8[4];
        v443.val[1].i32[1] = v253.u8[5];
        v290 = vand_s8(v258, 0xFF000000FFLL);
        v283.i64[0] = v290.u32[0];
        v283.i64[1] = v290.u32[1];
        v291 = vcvtq_f64_u64(v283);
        *v443.val[1].i8 = vand_s8(*v443.val[1].i8, 0xFF000000FFLL);
        v283.i64[0] = v443.val[1].u32[0];
        v283.i64[1] = v443.val[1].u32[1];
        v292 = vmulq_f64(v291, vcvtq_f64_u64(v283));
        *&v291.f64[0] = vand_s8(v249, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v291.f64[0]);
        v283.i64[1] = HIDWORD(v291.f64[0]);
        v293 = v283;
        v294 = vand_s8(v252, 0xFF000000FFLL);
        v283.i64[0] = v294.u32[0];
        v283.i64[1] = v294.u32[1];
        v295 = vmlaq_f64(v292, vcvtq_f64_u64(v283), vcvtq_f64_u64(v293));
        v296.i32[0] = v253.u8[2];
        v297 = __PAIR64__(v268, v267);
        result = BYTE3(v247);
        v252.i32[0] = v253.u8[0];
        v298 = v253.u8[3];
        v299 = __PAIR64__(v270, v269);
        v300 = v253.u8[1];
        v444.val[3].i32[0] = v444.val[2].u8[0];
        v301.i32[0] = v246;
        v301.i32[1] = BYTE1(v246);
        v444.val[2].i32[0] = v444.val[0].u8[0];
        v444.val[2].i32[1] = v444.val[0].u8[1];
        v253.i32[0] = v444.val[0].u8[2];
        v253.i32[1] = v444.val[0].u8[3];
        v443.val[2].i32[0] = v247;
        v443.val[2].i32[1] = BYTE1(v247);
        v251.i32[1] = BYTE3(v247);
        v261.i32[1] = BYTE3(v248);
        v280.i32[1] = v444.val[1].u8[5];
        v286.i32[1] = BYTE1(v248);
        v281.i32[1] = v444.val[1].u8[3];
        v289.i32[1] = v444.val[1].u8[1];
        v296.i32[1] = v298;
        v252.i32[1] = v300;
        v302 = vand_s8(v261, 0xFF000000FFLL);
        v283.i64[0] = v302.u32[0];
        v283.i64[1] = v302.u32[1];
        v303 = vcvtq_f64_u64(v283);
        v304 = vand_s8(v296, 0xFF000000FFLL);
        v283.i64[0] = v304.u32[0];
        v283.i64[1] = v304.u32[1];
        v305 = vmulq_f64(v303, vcvtq_f64_u64(v283));
        *&v303.f64[0] = vand_s8(__PAIR64__(BYTE3(v246), BYTE2(v246)), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v303.f64[0]);
        v283.i64[1] = HIDWORD(v303.f64[0]);
        v306 = vcvtq_f64_u64(v283);
        v307 = vand_s8(v251, 0xFF000000FFLL);
        v283.i64[0] = v307.u32[0];
        v283.i64[1] = v307.u32[1];
        v308 = vmlaq_f64(v305, vcvtq_f64_u64(v283), v306);
        *&v306.f64[0] = vand_s8(__PAIR64__(v444.val[1].u8[7], v444.val[1].u8[6]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v306.f64[0]);
        v283.i64[1] = HIDWORD(v306.f64[0]);
        v309 = vcvtq_f64_u64(v283);
        v310 = vand_s8(__PAIR64__(v265, v264), 0xFF000000FFLL);
        v283.i64[0] = v310.u32[0];
        v283.i64[1] = v310.u32[1];
        v311 = vmulq_f64(v309, vcvtq_f64_u64(v283));
        v312 = vand_s8(__PAIR64__(v444.val[0].u8[7], v444.val[0].u8[6]), 0xFF000000FFLL);
        v283.i64[0] = v312.u32[0];
        v283.i64[1] = v312.u32[1];
        v313 = v283;
        v314 = vand_s8(__PAIR64__(v245, v410), 0xFF000000FFLL);
        v283.i64[0] = v314.u32[0];
        v283.i64[1] = v314.u32[1];
        v315 = vmlaq_f64(v311, vcvtq_f64_u64(v283), vcvtq_f64_u64(v313));
        v316 = vand_s8(v280, 0xFF000000FFLL);
        v283.i64[0] = v316.u32[0];
        v283.i64[1] = v316.u32[1];
        *v293.i8 = vand_s8(__PAIR64__(v244, v266), 0xFF000000FFLL);
        v317 = vcvtq_f64_u64(v283);
        v283.i64[0] = v293.u32[0];
        v283.i64[1] = v293.u32[1];
        v318 = vmulq_f64(v317, vcvtq_f64_u64(v283));
        *&v317.f64[0] = vand_s8(__PAIR64__(v444.val[0].u8[5], v444.val[0].u8[4]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v317.f64[0]);
        v283.i64[1] = HIDWORD(v317.f64[0]);
        v319 = vcvtq_f64_u64(v283);
        *v293.i8 = vand_s8(__PAIR64__(v263, v411), 0xFF000000FFLL);
        v283.i64[0] = v293.u32[0];
        v283.i64[1] = v293.u32[1];
        v320 = vmlaq_f64(v318, vcvtq_f64_u64(v283), v319);
        *&v284.f64[0] = vand_s8(v286, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v284.f64[0]);
        v283.i64[1] = HIDWORD(v284.f64[0]);
        v321 = vcvtq_f64_u64(v283);
        *&v319.f64[0] = vand_s8(v252, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v322 = vmulq_f64(v321, vcvtq_f64_u64(v283));
        *&v321.f64[0] = vand_s8(v301, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v321.f64[0]);
        v283.i64[1] = HIDWORD(v321.f64[0]);
        v323 = vcvtq_f64_u64(v283);
        *&v319.f64[0] = vand_s8(*v443.val[2].i8, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v324 = vmlaq_f64(v322, vcvtq_f64_u64(v283), v323);
        *&v323.f64[0] = vand_s8(v281, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v323.f64[0]);
        v283.i64[1] = HIDWORD(v323.f64[0]);
        v325 = vcvtq_f64_u64(v283);
        *&v319.f64[0] = vand_s8(v297, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v443.val[0] = vmulq_f64(v325, vcvtq_f64_u64(v283));
        *&v325.f64[0] = vand_s8(v253, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v325.f64[0]);
        v283.i64[1] = HIDWORD(v325.f64[0]);
        v326 = v283;
        *&v319.f64[0] = vand_s8(__PAIR64__(v262, v413), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v443.val[0] = vmlaq_f64(v443.val[0], vcvtq_f64_u64(v283), vcvtq_f64_u64(v326));
        *v326.i8 = vand_s8(v289, 0xFF000000FFLL);
        v283.i64[0] = v326.u32[0];
        v283.i64[1] = v326.u32[1];
        *&v319.f64[0] = vand_s8(v299, 0xFF000000FFLL);
        v327 = vcvtq_f64_u64(v283);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v328 = vmulq_f64(v327, vcvtq_f64_u64(v283));
        *&v327.f64[0] = vand_s8(*v444.val[2].i8, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v327.f64[0]);
        v283.i64[1] = HIDWORD(v327.f64[0]);
        v329 = vcvtq_f64_u64(v283);
        *&v319.f64[0] = vand_s8(__PAIR64__(v260, v414), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v330 = vmlaq_f64(v328, vcvtq_f64_u64(v283), v329);
        v444.val[3].i32[1] = v417;
        *&v319.f64[0] = vand_s8(*v444.val[3].i8, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v331 = vcvtq_f64_u64(v283);
        *&v329.f64[0] = vand_s8(__PAIR64__(v278, v277), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v329.f64[0]);
        v283.i64[1] = HIDWORD(v329.f64[0]);
        v332 = vmlaq_f64(v330, vcvtq_f64_u64(v283), v331);
        *&v329.f64[0] = vand_s8(__PAIR64__(v418, v419), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v329.f64[0]);
        v283.i64[1] = HIDWORD(v329.f64[0]);
        v333 = vcvtq_f64_u64(v283);
        *&v331.f64[0] = vand_s8(__PAIR64__(v276, v275), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v443.val[0] = vmlaq_f64(v443.val[0], vcvtq_f64_u64(v283), v333);
        LODWORD(v333.f64[0]) = v255;
        HIDWORD(v333.f64[0]) = BYTE1(v255);
        LODWORD(v331.f64[0]) = v259;
        HIDWORD(v331.f64[0]) = BYTE1(v259);
        *&v333.f64[0] = vand_s8(*&v333.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v333.f64[0]);
        v283.i64[1] = HIDWORD(v333.f64[0]);
        v334 = vcvtq_f64_u64(v283);
        *&v331.f64[0] = vand_s8(*&v331.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v335 = vmlaq_f64(v324, vcvtq_f64_u64(v283), v334);
        *&v334.f64[0] = vand_s8(__PAIR64__(v424, v425), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v334.f64[0]);
        v283.i64[1] = HIDWORD(v334.f64[0]);
        v336 = vcvtq_f64_u64(v283);
        *&v331.f64[0] = vand_s8(__PAIR64__(v274, v273), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v337 = vmlaq_f64(v320, vcvtq_f64_u64(v283), v336);
        LODWORD(v336.f64[0]) = BYTE2(v255);
        HIDWORD(v336.f64[0]) = BYTE3(v255);
        LODWORD(v331.f64[0]) = BYTE2(v259);
        HIDWORD(v331.f64[0]) = BYTE3(v259);
        *&v336.f64[0] = vand_s8(*&v336.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v336.f64[0]);
        v283.i64[1] = HIDWORD(v336.f64[0]);
        v338 = vcvtq_f64_u64(v283);
        *&v331.f64[0] = vand_s8(*&v331.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v339 = vmlaq_f64(v308, vcvtq_f64_u64(v283), v338);
        LODWORD(v338.f64[0]) = BYTE4(v255);
        HIDWORD(v338.f64[0]) = BYTE5(v255);
        *&v338.f64[0] = vand_s8(*&v338.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v338.f64[0]);
        v283.i64[1] = HIDWORD(v338.f64[0]);
        v287.i32[0] = BYTE4(v259);
        v287.i32[1] = BYTE5(v259);
        v340 = vcvtq_f64_u64(v283);
        v341 = vand_s8(v287, 0xFF000000FFLL);
        v283.i64[0] = v341.u32[0];
        v283.i64[1] = v341.u32[1];
        v342 = vmlaq_f64(v295, vcvtq_f64_u64(v283), v340);
        LODWORD(v340.f64[0]) = BYTE6(v255);
        v341.i32[0] = BYTE6(v259);
        HIDWORD(v340.f64[0]) = HIBYTE(v255);
        v341.i32[1] = HIBYTE(v259);
        *&v340.f64[0] = vand_s8(*&v340.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v340.f64[0]);
        v283.i64[1] = HIDWORD(v340.f64[0]);
        v343 = vcvtq_f64_u64(v283);
        v344 = vand_s8(v341, 0xFF000000FFLL);
        v283.i64[0] = v344.u32[0];
        v283.i64[1] = v344.u32[1];
        v345 = vmlaq_f64(v288, vcvtq_f64_u64(v283), v343);
        LODWORD(v343.f64[0]) = BYTE4(v409);
        v344.i32[0] = BYTE6(v409);
        *&v331.f64[0] = vand_s8(__PAIR64__(v426, v427), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v346 = vcvtq_f64_u64(v283);
        *v293.i8 = vand_s8(__PAIR64__(v272, v271), 0xFF000000FFLL);
        v283.i64[0] = v293.u32[0];
        v283.i64[1] = v293.u32[1];
        v347 = vmlaq_f64(v315, vcvtq_f64_u64(v283), v346);
        v344.i32[1] = HIBYTE(v409);
        v348 = vand_s8(v344, 0xFF000000FFLL);
        v283.i64[0] = v348.u32[0];
        v283.i64[1] = v348.u32[1];
        v293.i32[0] = BYTE6(v279);
        v293.i32[1] = HIBYTE(v279);
        v349 = vcvtq_f64_u64(v283);
        *v293.i8 = vand_s8(*v293.i8, 0xFF000000FFLL);
        v283.i64[0] = v293.u32[0];
        v283.i64[1] = v293.u32[1];
        v350 = vmlaq_f64(v345, vcvtq_f64_u64(v283), v349);
        LODWORD(v349.f64[0]) = BYTE4(v279);
        v236 = COERCE_DOUBLE(__PAIR64__(v443.val[3].u8[7], v443.val[3].u8[6]));
        HIDWORD(v343.f64[0]) = BYTE5(v409);
        HIDWORD(v349.f64[0]) = BYTE5(v279);
        *&v343.f64[0] = vand_s8(*&v343.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v343.f64[0]);
        v283.i64[1] = HIDWORD(v343.f64[0]);
        v351 = vcvtq_f64_u64(v283);
        *&v349.f64[0] = vand_s8(*&v349.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v349.f64[0]);
        v283.i64[1] = HIDWORD(v349.f64[0]);
        v352 = vmlaq_f64(v342, vcvtq_f64_u64(v283), v351);
        *&v351.f64[0] = vand_s8(__PAIR64__(v412, v256), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v351.f64[0]);
        v283.i64[1] = HIDWORD(v351.f64[0]);
        v353 = v283;
        *&v346.f64[0] = vand_s8(__PAIR64__(v443.val[3].u8[7], v443.val[3].u8[6]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v346.f64[0]);
        v283.i64[1] = HIDWORD(v346.f64[0]);
        v354 = vmlaq_f64(v347, vcvtq_f64_u64(v283), vcvtq_f64_u64(v353));
        *v353.i8 = vand_s8(__PAIR64__(v415, v416), 0xFF000000FFLL);
        v283.i64[0] = v353.u32[0];
        v283.i64[1] = v353.u32[1];
        v355 = vcvtq_f64_u64(v283);
        *&v346.f64[0] = vand_s8(__PAIR64__(v443.val[3].u8[5], v443.val[3].u8[4]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v346.f64[0]);
        v283.i64[1] = HIDWORD(v346.f64[0]);
        v356 = vmlaq_f64(v337, vcvtq_f64_u64(v283), v355);
        LODWORD(v355.f64[0]) = BYTE2(v409);
        HIDWORD(v355.f64[0]) = BYTE3(v409);
        *&v355.f64[0] = vand_s8(*&v355.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v355.f64[0]);
        v283.i64[1] = HIDWORD(v355.f64[0]);
        LODWORD(v346.f64[0]) = BYTE2(v279);
        v357 = vcvtq_f64_u64(v283);
        HIDWORD(v346.f64[0]) = BYTE3(v279);
        *&v346.f64[0] = vand_s8(*&v346.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v346.f64[0]);
        v283.i64[1] = HIDWORD(v346.f64[0]);
        v358 = vmlaq_f64(v339, vcvtq_f64_u64(v283), v357);
        LODWORD(v346.f64[0]) = v409;
        HIDWORD(v346.f64[0]) = BYTE1(v409);
        LODWORD(v349.f64[0]) = v279;
        v11 = v430;
        v144 = v431;
        HIDWORD(v349.f64[0]) = BYTE1(v279);
        *&v346.f64[0] = vand_s8(*&v346.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v346.f64[0]);
        v283.i64[1] = HIDWORD(v346.f64[0]);
        v359 = vcvtq_f64_u64(v283);
        *&v349.f64[0] = vand_s8(*&v349.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v349.f64[0]);
        v283.i64[1] = HIDWORD(v349.f64[0]);
        v360 = vmlaq_f64(v335, vcvtq_f64_u64(v283), v359);
        *&v359.f64[0] = vand_s8(__PAIR64__(v421, v423), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v359.f64[0]);
        v283.i64[1] = HIDWORD(v359.f64[0]);
        v361 = vcvtq_f64_u64(v283);
        *&v349.f64[0] = vand_s8(__PAIR64__(v443.val[3].u8[3], v443.val[3].u8[2]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v349.f64[0]);
        v283.i64[1] = HIDWORD(v349.f64[0]);
        v443.val[0] = vmlaq_f64(v443.val[0], vcvtq_f64_u64(v283), v361);
        *&v357.f64[0] = vand_s8(__PAIR64__(v420, v422), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v357.f64[0]);
        v283.i64[1] = HIDWORD(v357.f64[0]);
        v362 = vcvtq_f64_u64(v283);
        *&v361.f64[0] = vand_s8(__PAIR64__(v443.val[3].u8[1], v443.val[3].u8[0]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v361.f64[0]);
        v283.i64[1] = HIDWORD(v361.f64[0]);
        v363 = vmlaq_f64(v332, vcvtq_f64_u64(v283), v362);
        v240 = v350.f64[1];
        v241 = v352.f64[1];
        v242 = v437 + v363.f64[0] + v363.f64[1] + *v443.val[0].i64 + *&v443.val[0].i64[1] + v356.f64[0] + v356.f64[1] + v354.f64[0] + v354.f64[1] + v360.f64[0] + v360.f64[1] + v358.f64[0] + v358.f64[1] + v352.f64[0] + v352.f64[1] + v350.f64[0];
        v148 = v242 + v350.f64[1];
        v143 -= 16;
      }

      while (v434 != 16);
      v143 = v395;
      v141 = v396;
      if (v396 != v395)
      {
        v147 = v395;
        v243 = v395;
        v11 = v399;
        v12 = v400;
        v16 = v404;
        LODWORD(v17) = v405;
        LODWORD(v18) = v406;
        v127 = v397;
        v126 = v398;
        v145 = v402;
        v144 = v403;
        if ((v396 & 8) == 0)
        {
LABEL_118:
          v364 = 4 * v243;
          do
          {
            LOBYTE(v242) = v11[v364];
            LOBYTE(v240) = v144[v364];
            LOBYTE(v241) = v11[v364 + 1];
            *&v365 = *&v240;
            LOBYTE(v236) = v144[v364 + 1];
            v236 = *&v236;
            *&v366 = *&v241 * v236;
            v367 = *&v366 + *&v242 * *&v365;
            LOBYTE(v365) = v11[v364 + 2];
            *&v368 = v365;
            LOBYTE(v366) = v144[v364 + 2];
            *&v369 = v366;
            v370 = v367 + *&v368 * *&v369;
            LOBYTE(v368) = v11[v364 + 3];
            v240 = v368;
            LOBYTE(v369) = v144[v364 + 3];
            v241 = v369;
            v242 = v370 + v240 * v241;
            v148 = v148 + v242;
            v364 += 4;
          }

          while (v364 <= v126);
          goto LABEL_120;
        }

LABEL_109:
        v149 = 4 * v147;
        result = v147 - v401;
        do
        {
          v436 = v148;
          v150 = &v11[v149];
          v151 = &v144[v149];
          v442 = vld4_s8(v150);
          v441 = vld4_s8(v151);
          v152.i32[0] = v442.val[0].u8[0];
          v153.i32[0] = v442.val[0].u8[2];
          v154.i32[0] = v442.val[0].u8[4];
          v155.i32[0] = v442.val[0].u8[6];
          v156.i32[0] = v441.val[0].u8[0];
          v157.i32[0] = v441.val[0].u8[2];
          v158.i32[0] = v441.val[0].u8[4];
          v159.i32[0] = v441.val[0].u8[6];
          v160.i32[0] = v442.val[1].u8[6];
          v161.i32[0] = v442.val[1].u8[4];
          v152.i32[1] = v442.val[0].u8[1];
          v162.i32[0] = v442.val[1].u8[2];
          v163.i32[0] = v442.val[1].u8[0];
          v153.i32[1] = v442.val[0].u8[3];
          v154.i32[1] = v442.val[0].u8[5];
          v155.i32[1] = v442.val[0].u8[7];
          v164.i32[0] = v441.val[1].u8[6];
          v165.i32[0] = v441.val[1].u8[4];
          v156.i32[1] = v441.val[0].u8[1];
          v157.i32[1] = v441.val[0].u8[3];
          v166.i32[0] = v441.val[1].u8[2];
          v167.i32[0] = v441.val[1].u8[0];
          v163.i32[1] = v442.val[1].u8[1];
          v167.i32[1] = v441.val[1].u8[1];
          v158.i32[1] = v441.val[0].u8[5];
          v433 = v158;
          v159.i32[1] = v441.val[0].u8[7];
          v158.i32[0] = v442.val[2].u8[6];
          v168.i32[0] = v442.val[2].u8[4];
          v160.i32[1] = v442.val[1].u8[7];
          v161.i32[1] = v442.val[1].u8[5];
          v162.i32[1] = v442.val[1].u8[3];
          v169.i32[0] = v442.val[2].u8[2];
          v170.i32[0] = v442.val[2].u8[0];
          v164.i32[1] = v441.val[1].u8[7];
          v165.i32[1] = v441.val[1].u8[5];
          v171.i32[0] = v441.val[2].u8[6];
          v172.i32[0] = v441.val[2].u8[4];
          v166.i32[1] = v441.val[1].u8[3];
          v158.i32[1] = v442.val[2].u8[7];
          v168.i32[1] = v442.val[2].u8[5];
          v173 = v442.val[3].u8[1];
          v169.i32[1] = v442.val[2].u8[3];
          v174 = v442.val[3].u8[2];
          v175 = v442.val[3].u8[3];
          v170.i32[1] = v442.val[2].u8[1];
          LODWORD(v151) = v442.val[3].u8[4];
          v176 = v442.val[3].u8[5];
          v171.i32[1] = v441.val[2].u8[7];
          v177 = v442.val[3].u8[6];
          LODWORD(v150) = v442.val[3].u8[7];
          v172.i32[1] = v441.val[2].u8[5];
          v178.i32[0] = v441.val[2].u8[2];
          v442.val[2].i32[0] = v441.val[2].u8[0];
          v178.i32[1] = v441.val[2].u8[3];
          v442.val[2].i32[1] = v441.val[2].u8[1];
          v442.val[3].i32[0] = v442.val[3].u8[0];
          v442.val[3].i32[1] = v173;
          v442.val[0] = vand_s8(v163, 0xFF000000FFLL);
          v179.i64[0] = v442.val[0].u32[0];
          v179.i64[1] = v442.val[0].u32[1];
          *v442.val[0].i8 = vcvtq_f64_u64(v179);
          v180 = vand_s8(v167, 0xFF000000FFLL);
          v179.i64[0] = v180.u32[0];
          v179.i64[1] = v180.u32[1];
          *v442.val[0].i8 = vmulq_f64(*v442.val[0].i8, vcvtq_f64_u64(v179));
          v181 = vand_s8(v152, 0xFF000000FFLL);
          v179.i64[0] = v181.u32[0];
          v179.i64[1] = v181.u32[1];
          v182 = v179;
          v183 = vand_s8(v153, 0xFF000000FFLL);
          v179.i64[0] = v183.u32[0];
          v179.i64[1] = v183.u32[1];
          v429 = vcvtq_f64_u64(v179);
          v184 = vand_s8(v154, 0xFF000000FFLL);
          v179.i64[0] = v184.u32[0];
          v179.i64[1] = v184.u32[1];
          v185 = v179;
          v186 = vand_s8(v155, 0xFF000000FFLL);
          v179.i64[0] = v186.u32[0];
          v179.i64[1] = v186.u32[1];
          v428 = vcvtq_f64_u64(v185);
          v187 = vcvtq_f64_u64(v179);
          v188 = vand_s8(v156, 0xFF000000FFLL);
          v179.i64[0] = v188.u32[0];
          v179.i64[1] = v188.u32[1];
          v189 = v179;
          v190 = vand_s8(v157, 0xFF000000FFLL);
          v179.i64[0] = v190.u32[0];
          v179.i64[1] = v190.u32[1];
          v191 = vcvtq_f64_u64(v189);
          v192 = vcvtq_f64_u64(v179);
          v193 = vand_s8(v433, 0xFF000000FFLL);
          v179.i64[0] = v193.u32[0];
          v179.i64[1] = v193.u32[1];
          v194 = v179;
          v195 = vand_s8(v159, 0xFF000000FFLL);
          v179.i64[0] = v195.u32[0];
          v179.i64[1] = v195.u32[1];
          v196 = vcvtq_f64_u64(v179);
          v197 = vand_s8(v160, 0xFF000000FFLL);
          v179.i64[0] = v197.u32[0];
          v179.i64[1] = v197.u32[1];
          v198 = v179;
          v199 = vand_s8(v161, 0xFF000000FFLL);
          v179.i64[0] = v199.u32[0];
          v179.i64[1] = v199.u32[1];
          v200 = vcvtq_f64_u64(v179);
          v201 = vand_s8(v162, 0xFF000000FFLL);
          v179.i64[0] = v201.u32[0];
          v179.i64[1] = v201.u32[1];
          v202 = v179;
          v203 = vand_s8(v164, 0xFF000000FFLL);
          v179.i64[0] = v203.u32[0];
          v179.i64[1] = v203.u32[1];
          v204 = vcvtq_f64_u64(v179);
          v205 = vand_s8(v165, 0xFF000000FFLL);
          v179.i64[0] = v205.u32[0];
          v179.i64[1] = v205.u32[1];
          v206 = v179;
          v207 = vand_s8(v166, 0xFF000000FFLL);
          v179.i64[0] = v207.u32[0];
          v179.i64[1] = v207.u32[1];
          v208 = vcvtq_f64_u64(v206);
          v209 = vcvtq_f64_u64(v179);
          *v189.i8 = vand_s8(v158, 0xFF000000FFLL);
          v179.i64[0] = v189.u32[0];
          v179.i64[1] = v189.u32[1];
          v210 = v179;
          *v206.i8 = vand_s8(v168, 0xFF000000FFLL);
          v179.i64[0] = v206.u32[0];
          v179.i64[1] = v206.u32[1];
          v211 = vcvtq_f64_u64(v210);
          v212 = vcvtq_f64_u64(v179);
          *v206.i8 = vand_s8(v169, 0xFF000000FFLL);
          v179.i64[0] = v206.u32[0];
          v179.i64[1] = v206.u32[1];
          v213 = v179;
          v214 = vand_s8(v170, 0xFF000000FFLL);
          v179.i64[0] = v214.u32[0];
          v179.i64[1] = v214.u32[1];
          v215 = vcvtq_f64_u64(v213);
          v216 = vcvtq_f64_u64(v179);
          *v213.i8 = vand_s8(v171, 0xFF000000FFLL);
          v179.i64[0] = v213.u32[0];
          v179.i64[1] = v213.u32[1];
          v217 = v179;
          v218 = vand_s8(v172, 0xFF000000FFLL);
          v179.i64[0] = v218.u32[0];
          v179.i64[1] = v218.u32[1];
          v219 = vcvtq_f64_u64(v217);
          v220 = vcvtq_f64_u64(v179);
          v221 = vand_s8(v178, 0xFF000000FFLL);
          v179.i64[0] = v221.u32[0];
          v179.i64[1] = v221.u32[1];
          v222 = v179;
          v223 = vand_s8(v442.val[2], 0xFF000000FFLL);
          v179.i64[0] = v223.u32[0];
          v179.i64[1] = v223.u32[1];
          v224 = vcvtq_f64_u64(v222);
          v225 = vcvtq_f64_u64(v179);
          v226 = vand_s8(v442.val[3], 0xFF000000FFLL);
          v179.i64[0] = v226.u32[0];
          v179.i64[1] = v226.u32[1];
          *v442.val[3].i8 = vcvtq_f64_u64(v179);
          v442.val[1] = vand_s8(__PAIR64__(v175, v174), 0xFF000000FFLL);
          v227 = vmulq_f64(vcvtq_f64_u64(v202), v209);
          v179.i64[0] = v442.val[1].u32[0];
          v179.i64[1] = v442.val[1].u32[1];
          *v442.val[2].i8 = vcvtq_f64_u64(v179);
          v228 = vand_s8(__PAIR64__(v176, v151), 0xFF000000FFLL);
          v179.i64[0] = v228.u32[0];
          v179.i64[1] = v228.u32[1];
          v229 = vcvtq_f64_u64(v179);
          v230 = vmulq_f64(v200, v208);
          v442.val[1] = vand_s8(__PAIR64__(v150, v177), 0xFF000000FFLL);
          v179.i64[0] = v442.val[1].u32[0];
          v179.i64[1] = v442.val[1].u32[1];
          v231 = vcvtq_f64_u64(v179);
          *v442.val[1].i8 = vmulq_f64(vcvtq_f64_u64(v198), v204);
          LODWORD(v204.f64[0]) = v441.val[3].u8[0];
          HIDWORD(v204.f64[0]) = v441.val[3].u8[1];
          *&v204.f64[0] = vand_s8(*&v204.f64[0], 0xFF000000FFLL);
          v179.i64[0] = LODWORD(v204.f64[0]);
          v179.i64[1] = HIDWORD(v204.f64[0]);
          v232 = vcvtq_f64_u64(v179);
          *v442.val[0].i8 = vmlaq_f64(vmlaq_f64(*v442.val[0].i8, v191, vcvtq_f64_u64(v182)), v225, v216);
          LODWORD(v225.f64[0]) = v441.val[3].u8[2];
          *v442.val[1].i8 = vmlaq_f64(*v442.val[1].i8, v196, v187);
          HIDWORD(v225.f64[0]) = v441.val[3].u8[3];
          *&v225.f64[0] = vand_s8(*&v225.f64[0], 0xFF000000FFLL);
          v179.i64[0] = LODWORD(v225.f64[0]);
          v179.i64[1] = HIDWORD(v225.f64[0]);
          v233 = vcvtq_f64_u64(v179);
          LODWORD(v191.f64[0]) = v441.val[3].u8[4];
          HIDWORD(v191.f64[0]) = v441.val[3].u8[5];
          *&v191.f64[0] = vand_s8(*&v191.f64[0], 0xFF000000FFLL);
          v179.i64[0] = LODWORD(v191.f64[0]);
          v179.i64[1] = HIDWORD(v191.f64[0]);
          v234 = vcvtq_f64_u64(v179);
          LODWORD(v187.f64[0]) = v441.val[3].u8[6];
          HIDWORD(v187.f64[0]) = v441.val[3].u8[7];
          v441.val[0] = vand_s8(*&v187.f64[0], 0xFF000000FFLL);
          v179.i64[0] = v441.val[0].u32[0];
          v179.i64[1] = v441.val[0].u32[1];
          *v442.val[1].i8 = vmlaq_f64(vmlaq_f64(*v442.val[1].i8, v219, v211), vcvtq_f64_u64(v179), v231);
          v236 = v235;
          v237 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v230, vcvtq_f64_u64(v194), v428), v220, v212), v234, v229);
          v238 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v227, v192, v429), v224, v215), v233, *v442.val[2].i8);
          *v442.val[0].i8 = vmlaq_f64(*v442.val[0].i8, v232, *v442.val[3].i8);
          v240 = v436 + *v442.val + v239 + v238.f64[0] + v238.f64[1];
          v241 = v237.f64[1];
          v242 = v240 + v237.f64[0] + v237.f64[1] + *&v442.val[1];
          v148 = v242 + v235;
          v149 += 32;
          result += 8;
        }

        while (result);
        v243 = v401;
        if (v141 == v401)
        {
          goto LABEL_120;
        }

        goto LABEL_118;
      }

      v11 = v399;
      v12 = v400;
      v16 = v404;
      LODWORD(v17) = v405;
      LODWORD(v18) = v406;
      v127 = v397;
      v126 = v398;
      v145 = v402;
      v144 = v403;
LABEL_120:
      v371 = v127;
      if (v127 < v18)
      {
        do
        {
          LOBYTE(v242) = v11[v371];
          v242 = *&v242;
          LOBYTE(v240) = v144[v371];
          v240 = *&v240;
          v148 = v148 + v242 * v240;
          ++v371;
        }

        while (v17 > v371);
      }

      *&v146 = v148 * v407;
      v12->i32[v145++] = v146;
      v144 += v408;
      if (v145 == v16)
      {
        v12 = (v12 + 4 * v394);
        v11 += v408;
        v142 = v393 + 1;
        if (v393 + 1 == v16)
        {
          return result;
        }

        goto LABEL_105;
      }
    }

    v147 = 0;
    v148 = 0.0;
    goto LABEL_109;
  }

  v19 = *(a3 + 12);
  result = v438;
  if ((4 * v17) >= 0x409)
  {
    operator new[]();
  }

  if (v16 < 1)
  {
    return result;
  }

  v20 = 0;
  v21 = 16 * (v19 == v17);
  v22 = v17 - 4;
  v23 = ((v17 - 4) & 0xFFFFFFFC) + 4;
  v24 = v21 * (((v17 - 4) >> 2) + 1);
  v25 = &v438[4 * v17];
  v26 = v17 < 4;
  v27 = v438 >= v13 + 4 * (v17 + v14 * (v16 - 1)) || v13 >= v25;
  v28 = v14 >> 61;
  if (!v27)
  {
    LOBYTE(v28) = 1;
  }

  v30 = v438 < &v11[v408 * (v16 - 1) + v17] && v11 < v25 || v408 < 0;
  v31 = v30;
  if (v30)
  {
    v32 = 1;
  }

  else
  {
    v32 = v28;
  }

  v33 = v17 & 0x7FFFFFF0;
  v432 = v17 & 0xC;
  v34 = v17 & 0x7FFFFFFC;
  v435 = v26 | v32;
  v35 = v26 | v31;
  v36 = v11 + 3;
  v37 = v13;
  while (2)
  {
    v38 = v11;
    if (v19 >= v18)
    {
      if (v18 < 1)
      {
        goto LABEL_55;
      }

      if (v435)
      {
        for (k = 0; k != v18; ++k)
        {
LABEL_54:
          a4.n128_u8[0] = v11[k];
          a4.n128_f32[0] = a4.n128_u32[0] - v37->f32[k];
          *&v438[4 * k] = a4.n128_u32[0];
        }

        goto LABEL_55;
      }

      if (v18 >= 0x10)
      {
        v49 = v33;
        v50 = v438;
        v51 = v37;
        do
        {
          v52 = *v11;
          v11 += 16;
          a10 = vcvtq_f32_u32(vqtbl1q_s8(v52, xmmword_1003E3730));
          v54 = v51[2];
          v53 = v51[3];
          v56 = *v51;
          v55 = v51[1];
          v51 += 4;
          a11 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v52, xmmword_1003E3700)), v54);
          v50[2] = a11;
          v50[3] = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v52, xmmword_1003E3710)), v53);
          a4 = vsubq_f32(a10, v55);
          *v50 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v52, xmmword_1003E3720)), v56);
          v50[1] = a4;
          v50 += 4;
          v49 -= 16;
        }

        while (v49);
        v11 = v38;
        if (v33 == v18)
        {
          goto LABEL_55;
        }

        v42 = v33;
        k = v33;
        if (!v432)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v42 = 0;
      }

      v57 = 4 * v42;
      do
      {
        a4.n128_u32[0] = *&v11[v42];
        a4 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4.n128_u64[0]))), *(v37 + v57));
        *&v438[v57] = a4;
        v42 += 4;
        v57 += 16;
      }

      while (v34 != v42);
      k = v34;
      if (v34 == v18)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (v17 >= 1)
    {
      a4.n128_u32[0] = *(v13 + 4 * v14 * v20);
      if (v35)
      {
        v39 = 0;
        do
        {
LABEL_45:
          a9.i8[0] = v11[v39];
          a9.f32[0] = a9.u32[0] - a4.n128_f32[0];
          *&v438[4 * v39++] = a9.i32[0];
        }

        while (v18 != v39);
        goto LABEL_55;
      }

      if (v17 >= 0x10)
      {
        v43 = 0;
        a9 = vdupq_lane_s32(a4.n128_u64[0], 0);
        v44 = v438;
        do
        {
          v45 = *&v11[v43];
          v46 = vqtbl1q_s8(v45, xmmword_1003E3730);
          v47 = vqtbl1q_s8(v45, xmmword_1003E3700);
          a11 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v45, xmmword_1003E3720)), a9);
          a10 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v45, xmmword_1003E3710)), a9);
          v44[2] = vsubq_f32(vcvtq_f32_u32(v47), a9);
          v44[3] = a10;
          *v44 = a11;
          v44[1] = vsubq_f32(vcvtq_f32_u32(v46), a9);
          v44 += 4;
          v43 += 16;
        }

        while (v33 != v43);
        if (v33 == v18)
        {
          goto LABEL_55;
        }

        v41 = v33;
        v39 = v33;
        if (!v432)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41 = 0;
      }

      a9 = vdupq_lane_s32(a4.n128_u64[0], 0);
      v48 = &v438[4 * v41];
      do
      {
        a10.i32[0] = *&v11[v41];
        a10 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a10.f32))), a9);
        *v48++ = a10;
        v41 += 4;
      }

      while (v34 != v41);
      v39 = v34;
      if (v34 == v18)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

LABEL_55:
    v58 = v11;
    v59 = v36;
    v60 = v20;
    v61 = v12;
    do
    {
      v62 = (v13 + 4 * v14 * v60);
      if (v19 < v17)
      {
        a4 = vld1q_dup_f32(v62);
        v440 = a4;
        v62 = &v440;
      }

      if (v18 >= 4)
      {
        v64 = &v62->n128_f32[2];
        a9.i64[0] = 0;
        v65 = &v439;
        v66 = v59;
        v67 = 1;
        do
        {
          a4.n128_u8[0] = *(v66 - 3);
          v68 = *(v65 - 2);
          v69 = *(v64 - 2);
          v70 = (a4.n128_u32[0] - v69);
          LOBYTE(v69) = *(v66 - 2);
          v71 = *(v65 - 1) * (LODWORD(v69) - *(v64 - 1)) + v68 * v70;
          LOBYTE(v68) = *(v66 - 1);
          v73 = *v65;
          v72 = v65[1];
          v65 += 4;
          v74 = (LODWORD(v68) - *v64);
          v75 = v71 + v73 * v74;
          LOBYTE(v74) = *v66;
          *a11.i64 = v72;
          *a10.i64 = (LODWORD(v74) - v64[1]);
          a4.n128_f64[0] = v75 + *a11.i64 * *a10.i64;
          v64 = (v64 + v21);
          v76 = v67 + 3;
          v67 += 4;
          *a9.i64 = *a9.i64 + a4.n128_f64[0];
          v66 += 4;
        }

        while (v76 <= v22);
        v62 = (v62 + v24);
        v63 = v23;
        LODWORD(v17) = v405;
        if (v23 >= v405)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v63 = 0;
        a9.i64[0] = 0;
        if (v17 <= 0)
        {
          goto LABEL_57;
        }
      }

      v77 = v63;
      v78 = v17 + ~v63;
      if (v78 < 3)
      {
        v79 = v63;
        v80 = v62;
        LODWORD(v17) = v405;
        goto LABEL_79;
      }

      v81 = v78 + 1;
      if (v78 >= 0xF)
      {
        v17 = v81 & 0x1FFFFFFF0;
        v82 = &v438[4 * v77];
        v83 = &v58[v77];
        v84 = v81 & 0x1FFFFFFF0;
        v85 = v62;
        do
        {
          v87 = v82[2];
          v86 = v82[3];
          v89 = *v82;
          v88 = v82[1];
          v82 += 4;
          v90 = vcvtq_f64_f32(*v89.f32);
          v91 = vcvtq_f64_f32(*v88.f32);
          v92 = vcvtq_f64_f32(*v87.f32);
          v93 = vcvtq_f64_f32(*v86.f32);
          v94 = *v83++;
          v95 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v94, xmmword_1003E3710)), v85[3]);
          v96 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v94, xmmword_1003E3700)), v85[2]);
          v97 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v94, xmmword_1003E3730)), v85[1]);
          v98 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v94, xmmword_1003E3720)), *v85);
          v99 = vmulq_f64(vcvt_hight_f64_f32(v86), vcvt_hight_f64_f32(v95));
          v100 = vmulq_f64(v93, vcvtq_f64_f32(*v95.f32));
          a10 = vmulq_f64(vcvt_hight_f64_f32(v87), vcvt_hight_f64_f32(v96));
          v101 = vmulq_f64(v92, vcvtq_f64_f32(*v96.f32));
          a11 = vmulq_f64(vcvt_hight_f64_f32(v88), vcvt_hight_f64_f32(v97));
          v102 = vmulq_f64(v91, vcvtq_f64_f32(*v97.f32));
          v103 = vmulq_f64(vcvt_hight_f64_f32(v89), vcvt_hight_f64_f32(v98));
          v104 = vmulq_f64(v90, vcvtq_f64_f32(*v98.f32));
          *a9.i64 = *a9.i64 + v104.f64[0] + v104.f64[1] + v103.f64[0] + v103.f64[1] + v102.f64[0] + v102.f64[1] + *a11.i64 + *&a11.i64[1] + v101.f64[0] + v101.f64[1] + *a10.i64 + *&a10.i64[1] + v100.f64[0] + v100.f64[1] + v99.f64[0] + v99.f64[1];
          v85 += 4;
          v84 -= 16;
        }

        while (v84);
        if (v81 == v17)
        {
          v12 = v61;
          v16 = v404;
          LODWORD(v17) = v405;
          goto LABEL_57;
        }

        v16 = v404;
        if ((v81 & 0xC) == 0)
        {
          v12 = v61;
          v80 = v62 + v17;
          v79 = v17 + v77;
          LODWORD(v17) = v405;
          do
          {
LABEL_79:
            a10.i8[0] = v58[v79];
            v115 = *v80++;
            *a10.i64 = (a10.u32[0] - v115);
            *a9.i64 = *a9.i64 + *&v438[4 * v79++] * *a10.i64;
          }

          while (v17 > v79);
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0;
      }

      v79 = (v81 & 0x1FFFFFFFCLL) + v77;
      v80 = v62 + (v81 & 0x1FFFFFFFCLL);
      v105 = (v62 + 4 * v17);
      v106 = v17 - (v81 & 0x1FFFFFFFCLL);
      v107 = v17 + v77;
      v108 = &v438[4 * v107];
      do
      {
        v109 = *v108++;
        v110 = vcvtq_f64_f32(*v109.f32);
        v111 = vcvt_hight_f64_f32(v109);
        a11.i32[0] = *&v58[v107];
        v112 = *v105++;
        a11 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a11.f32))), v112);
        v113 = vcvtq_f64_f32(*a11.f32);
        v114 = vmulq_f64(v111, vcvt_hight_f64_f32(a11));
        a11.i32[1] = HIDWORD(v114.f64[1]);
        a10 = vmulq_f64(v110, v113);
        *a9.i64 = *a9.i64 + *a10.i64 + *&a10.i64[1] + v114.f64[0] + v114.f64[1];
        v107 += 4;
        v106 += 4;
      }

      while (v106);
      v12 = v61;
      v16 = v404;
      LODWORD(v17) = v405;
      if (v81 != (v81 & 0x1FFFFFFFCLL))
      {
        goto LABEL_79;
      }

LABEL_57:
      a4.n128_f64[0] = *a9.i64 * v407;
      a4.n128_f32[0] = *a9.i64 * v407;
      v12->i32[v60++] = a4.n128_u32[0];
      v59 += v408;
      v58 += v408;
      v18 = v406;
    }

    while (v60 != v16);
    v12 = (v12 + 4 * v394);
    ++v20;
    v11 = &v38[v408];
    v37 = (v37 + 4 * v14);
    v36 += v408;
    if (v20 != v16)
    {
      continue;
    }

    return result;
  }
}

double *sub_10024882C(void *a1, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, double a6, float64x2_t a7, double a8, float64x2_t a9)
{
  v9 = a1[2];
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 3;
  }

  v14 = a1[8];
  v16 = *v14;
  v15 = v14[1];
  if (v11)
  {
    v17 = *(a3 + 12) < v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = !v17;
  v19 = 40 * v16;
  if (!v17)
  {
    v19 = 8 * v16;
  }

  result = v275;
  if (v19 >= 0x409)
  {
    operator new[]();
  }

  v21 = *(a2 + 80) >> 3;
  if ((v18 & 1) == 0)
  {
    v22 = &v275[8 * v16];
    if (v16 < 1)
    {
      goto LABEL_72;
    }

    v23 = 0;
    if (v16 >= 6 && v13 == 1)
    {
      if (v22 >= &v11->f64[v16] || v11 >= &v275[32 * v16 + 8 * v16])
      {
        v23 = v16 & 0x7FFFFFFC;
        v25 = &v275[8 * v16 + 64];
        v26 = v11 + 1;
        v27 = v23;
        do
        {
          v28 = v26[-1];
          v29 = *v26;
          v30 = v28;
          v31 = v28;
          a7 = v28;
          a9 = *v26;
          v32 = *v26;
          v33 = *v26;
          v34 = v25 - 8;
          vst4q_f64(v34, *(&a7 - 3));
          vst4q_f64(v25, *(&a9 - 1));
          v25 += 16;
          v26 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v23 == v16)
        {
LABEL_72:
          v13 = 4 * (v13 != 0);
          v11 = &v275[8 * v16];
          if (v15 < 1)
          {
            return result;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    v96 = &v275[32 * v23 + 8 * v16];
    v97 = &v11->f64[v13 * v23];
    v99 = v16 - v23;
    do
    {
      v100 = vld1q_dup_f64(v97);
      v98 = 8 * v13;
      v97 = (v97 + v98);
      *v96 = v100;
      v96[1] = v100;
      v96 += 2;
      --v99;
    }

    while (v99);
    goto LABEL_72;
  }

  if (!v11)
  {
    if (v15 < 1)
    {
      return result;
    }

    v35 = v15 - 4;
    if (v16 > 0)
    {
      v36 = 0;
      v38 = v275 < v9 + v16 + v15 - 1 && v9 < &v275[8 * v16];
      v39 = v16 & 0x7FFFFFFC;
      v41 = v16 < 4 || v12 != 1;
      v42 = v41 || v38;
      for (i = v9; ; i = (i + 1))
      {
        if (v42)
        {
          v44 = 0;
LABEL_57:
          v76 = v12 * v44;
          v77 = &v275[8 * v44];
          v78 = v16 - v44;
          do
          {
            LOBYTE(a5.f64[0]) = *(i->f64 + v76);
            a5.f64[0] = *&a5.f64[0];
            *v77++ = a5.f64[0];
            v76 += v12;
            --v78;
          }

          while (v78);
          goto LABEL_59;
        }

        if (v16 >= 0x10)
        {
          v46 = v16 & 0x7FFFFFF0;
          v47 = v275;
          v48 = i;
          do
          {
            v49 = *v48++;
            v50 = vextq_s8(v49, v49, 8uLL).u64[0];
            v51.i32[0] = v50;
            v51.i32[1] = BYTE1(v50);
            v52 = vand_s8(v51, 0xFF000000FFLL);
            v53.i64[0] = v52.u32[0];
            v53.i64[1] = v52.u32[1];
            a5 = vcvtq_f64_u64(v53);
            v54.i32[0] = BYTE2(v50);
            v54.i32[1] = BYTE3(v50);
            v55 = vand_s8(v54, 0xFF000000FFLL);
            v53.i64[0] = v55.u32[0];
            v53.i64[1] = v55.u32[1];
            v56.i32[0] = BYTE4(v50);
            a7 = vcvtq_f64_u64(v53);
            v56.i32[1] = BYTE5(v50);
            v57 = vand_s8(v56, 0xFF000000FFLL);
            v53.i64[0] = v57.u32[0];
            v53.i64[1] = v57.u32[1];
            v58.i32[0] = BYTE6(v50);
            v58.i32[1] = HIBYTE(v50);
            v59 = vcvtq_f64_u64(v53);
            v60 = vand_s8(v58, 0xFF000000FFLL);
            v53.i64[0] = v60.u32[0];
            v53.i64[1] = v60.u32[1];
            v61 = v53;
            v58.i32[0] = v49.u8[0];
            v58.i32[1] = v49.u8[1];
            v62 = vand_s8(v58, 0xFF000000FFLL);
            v53.i64[0] = v62.u32[0];
            v53.i64[1] = v62.u32[1];
            v63 = vcvtq_f64_u64(v53);
            v64.i32[0] = v49.u8[2];
            v64.i32[1] = v49.u8[3];
            v65 = vand_s8(v64, 0xFF000000FFLL);
            v66.i32[0] = v49.u8[4];
            v66.i32[1] = v49.u8[5];
            v67 = vand_s8(v66, 0xFF000000FFLL);
            v53.i64[0] = v67.u32[0];
            v53.i64[1] = v67.u32[1];
            v68 = vcvtq_f64_u64(v53);
            v69.i32[0] = v49.u8[6];
            v69.i32[1] = v49.u8[7];
            v70 = vand_s8(v69, 0xFF000000FFLL);
            v53.i64[0] = v70.u32[0];
            v53.i64[1] = v70.u32[1];
            v47[2] = v68;
            v47[3] = vcvtq_f64_u64(v53);
            v53.i64[0] = v65.u32[0];
            v53.i64[1] = v65.u32[1];
            *v47 = v63;
            v47[1] = vcvtq_f64_u64(v53);
            v47[6] = v59;
            v47[7] = vcvtq_f64_u64(v61);
            v47[4] = a5;
            v47[5] = a7;
            v47 += 8;
            v46 -= 16;
          }

          while (v46);
          if ((v16 & 0x7FFFFFF0) == v16)
          {
            goto LABEL_59;
          }

          v45 = v16 & 0x7FFFFFF0;
          v44 = v45;
          if ((v16 & 0xC) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v45 = 0;
        }

        v71 = &v275[8 * v45];
        do
        {
          LODWORD(a5.f64[0]) = *(i->f64 + v45);
          v72 = vmovl_u16(*&vmovl_u8(*&a5.f64[0]));
          v73 = vand_s8(*&vextq_s8(v72, v72, 8uLL), 0xFF000000FFLL);
          v74.i64[0] = v73.u32[0];
          v74.i64[1] = v73.u32[1];
          v75 = vcvtq_f64_u64(v74);
          *v72.i8 = vand_s8(*v72.i8, 0xFF000000FFLL);
          v74.i64[0] = v72.u32[0];
          v74.i64[1] = v72.u32[1];
          a5 = vcvtq_f64_u64(v74);
          *v71 = a5;
          v71[1] = v75;
          v71 += 2;
          v45 += 4;
        }

        while (v39 != v45);
        v44 = v16 & 0x7FFFFFFC;
        if (v39 != v16)
        {
          goto LABEL_57;
        }

LABEL_59:
        v79 = v36;
        if (v36 <= v35)
        {
          do
          {
            v80 = (v9 + v79);
            v81 = 0uLL;
            v82 = v16;
            v83 = v275;
            v84 = 0uLL;
            do
            {
              LODWORD(a7.f64[0]) = *v80;
              v85 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
              v86 = vand_s8(*&vextq_s8(v85, v85, 8uLL), 0xFF000000FFLL);
              v87.i64[0] = v86.u32[0];
              v87.i64[1] = v86.u32[1];
              v88 = vcvtq_f64_u64(v87);
              *v85.i8 = vand_s8(*v85.i8, 0xFF000000FFLL);
              v89 = vld1q_dup_f64(v83++);
              v87.i64[0] = v85.u32[0];
              v87.i64[1] = v85.u32[1];
              a7 = vcvtq_f64_u64(v87);
              v81 = vmlaq_f64(v81, a7, v89);
              v84 = vmlaq_f64(v84, v88, v89);
              v80 = (v80 + v12);
              --v82;
            }

            while (v82);
            a7.f64[0] = a4;
            a5 = vmulq_n_f64(v81, a4);
            v90 = (v10 + 8 * v79);
            *v90 = a5;
            v90[1] = vmulq_n_f64(v84, a4);
            v79 += 4;
          }

          while (v35 >= v79);
          v79 = v79;
          if (v79 >= v15)
          {
            goto LABEL_45;
          }

          do
          {
LABEL_66:
            v91 = 0.0;
            v92 = v9;
            v93 = v16;
            v94 = v275;
            do
            {
              v95 = *v94++;
              LOBYTE(a7.f64[0]) = *(v92 + v79);
              a7.f64[0] = *&a7.f64[0];
              v91 = v91 + v95 * a7.f64[0];
              v92 += v12;
              --v93;
            }

            while (v93);
            a5.f64[0] = v91 * a4;
            v10->i64[v79++] = *&a5.f64[0];
          }

          while (v15 > v79);
          goto LABEL_45;
        }

        v79 = v36;
        if (v36 < v15)
        {
          goto LABEL_66;
        }

LABEL_45:
        ++v36;
        v10 = (v10 + 8 * v21);
        if (v36 == v15)
        {
          return result;
        }
      }
    }

    v246 = 0;
    v247 = a4 * 0.0;
    v248 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v249 = v15 - 3;
    v250 = v10 + 4;
    v251 = 8 * v21;
    v252 = 8 * v21 + 8;
    v253 = 4;
    for (j = -1; ; --j)
    {
      if (v253 <= v249)
      {
        v255 = v15 - 3;
      }

      else
      {
        v255 = v253;
      }

      v256 = v246 + 4;
      if (v246 + 4 <= v249)
      {
        v256 = v15 - 3;
      }

      if (v246 <= v35)
      {
        v258 = v256 + ~v246;
        v259 = v246;
        if (v258 <= 0xB)
        {
          goto LABEL_169;
        }

        v260 = (((v255 + j) >> 2) + 1) & 0x7FFFFFFC;
        v261 = (v258 >> 2) + 1;
        v259 = v246 + 4 * (v261 & 0x7FFFFFFC);
        v257 = v246;
        v262 = v250;
        do
        {
          v262[-4] = v248;
          v262[-3] = v248;
          v262[-2] = v248;
          v262[-1] = v248;
          *v262 = v248;
          v262[1] = v248;
          v262[2] = v248;
          v262[3] = v248;
          v262 += 8;
          v257 += 16;
          v260 -= 4;
        }

        while (v260);
        if ((v261 & 0x7FFFFFFC) != v261)
        {
LABEL_169:
          v263 = 8 * v259;
          v257 = v259;
          do
          {
            v264 = (v10 + v263);
            *v264 = v248;
            v264[1] = v248;
            v263 += 32;
            v257 += 4;
          }

          while (v35 >= v257);
        }
      }

      else
      {
        v257 = v246;
      }

      if (v257 >= v15)
      {
        goto LABEL_157;
      }

      v265 = v257;
      v266 = (v15 + ~v257);
      if (v266 > 2)
      {
        v268 = v266 + 1;
        v269 = (v266 + 1) & 0x1FFFFFFFCLL;
        v267 = v269 + v265;
        v270 = 8 * v265;
        v271 = v269;
        do
        {
          v272 = (v10 + v270);
          *v272 = v248;
          v272[1] = v248;
          v270 += 32;
          v271 -= 4;
        }

        while (v271);
        if (v268 == v269)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v267 = v265;
      }

      v273 = v267;
      do
      {
        *&v10->i64[v273++] = v247;
        LODWORD(v267) = v267 + 1;
      }

      while (v15 > v267);
LABEL_157:
      ++v246;
      v250 = (v250 + v252);
      ++v253;
      v10 = (v10 + v251);
      if (v246 == v15)
      {
        return result;
      }
    }
  }

  v22 = 0;
  if (v15 >= 1)
  {
LABEL_73:
    v101 = 0;
    v102 = v15 - 4;
    v103 = a4 * 0.0;
    v104 = 8 * v16;
    v105 = &v275[v104];
    v106 = v22 + v104;
    v108 = v275 < v9 + v16 + v15 - 1 && v9 < v105;
    v110 = v275 < v106 && v22 < v105 || v108;
    v112 = v275 < &v11->f64[v15 - 1 + v16] && v11 < v105 || v108;
    v113 = v12 == 1 && v13 == 1;
    v114 = v16 & 0x7FFFFFF0;
    v115 = v16 & 0x7FFFFFFC;
    v116 = vdupq_lane_s64(*&v103, 0);
    v118 = !v113 || v16 < 4;
    v119 = v118 | v110;
    v120 = v118 | v112;
    v121 = 8 * v13;
    v122 = 8 * v21;
    v123 = v11;
    v124 = v9;
    do
    {
      if (v22)
      {
        if (v16 < 1)
        {
          goto LABEL_132;
        }

        if (v119)
        {
          v125 = 0;
LABEL_120:
          v170 = &v275[8 * v125];
          v171 = (v22->f64 + v121 * v125);
          v172 = v16 - v125;
          v173 = v12 * v125;
          do
          {
            LOBYTE(a7.f64[0]) = *(v124->f64 + v173);
            a7.f64[0] = *&a7.f64[0] - *v171;
            *v170++ = a7.f64[0];
            v171 = (v171 + v121);
            v173 += v12;
            --v172;
          }

          while (v172);
          goto LABEL_132;
        }

        if (v16 >= 0x10)
        {
          v129 = v16 & 0x7FFFFFF0;
          v130 = v275;
          v131 = v22;
          v132 = v124;
          do
          {
            v133 = *v132++;
            v134 = vextq_s8(v133, v133, 8uLL).u64[0];
            v135.i32[0] = BYTE6(v134);
            v135.i32[1] = HIBYTE(v134);
            v136 = vand_s8(v135, 0xFF000000FFLL);
            v137.i64[0] = v136.u32[0];
            v137.i64[1] = v136.u32[1];
            v138 = vcvtq_f64_u64(v137);
            v139.i32[0] = BYTE4(v134);
            v139.i32[1] = BYTE5(v134);
            v140 = vand_s8(v139, 0xFF000000FFLL);
            v137.i64[0] = v140.u32[0];
            v137.i64[1] = v140.u32[1];
            v141 = vcvtq_f64_u64(v137);
            v142.i32[0] = BYTE2(v134);
            v142.i32[1] = BYTE3(v134);
            v143 = vand_s8(v142, 0xFF000000FFLL);
            v137.i64[0] = v143.u32[0];
            v137.i64[1] = v143.u32[1];
            v144 = vcvtq_f64_u64(v137);
            v145.i32[0] = v134;
            v145.i32[1] = BYTE1(v134);
            v146 = vand_s8(v145, 0xFF000000FFLL);
            v137.i64[0] = v146.u32[0];
            v137.i64[1] = v146.u32[1];
            v147 = vcvtq_f64_u64(v137);
            v145.i32[0] = v133.u8[6];
            v145.i32[1] = v133.u8[7];
            v148 = vand_s8(v145, 0xFF000000FFLL);
            v137.i64[0] = v148.u32[0];
            v137.i64[1] = v148.u32[1];
            v149 = vcvtq_f64_u64(v137);
            v150.i32[0] = v133.u8[4];
            v150.i32[1] = v133.u8[5];
            v151 = vand_s8(v150, 0xFF000000FFLL);
            v137.i64[0] = v151.u32[0];
            v137.i64[1] = v151.u32[1];
            v152 = vcvtq_f64_u64(v137);
            v153.i32[0] = v133.u8[2];
            v153.i32[1] = v133.u8[3];
            v154 = vand_s8(v153, 0xFF000000FFLL);
            v137.i64[0] = v154.u32[0];
            v137.i64[1] = v154.u32[1];
            v155 = vcvtq_f64_u64(v137);
            v156.i32[0] = v133.u8[0];
            v156.i32[1] = v133.u8[1];
            v157 = vand_s8(v156, 0xFF000000FFLL);
            v137.i64[0] = v157.u32[0];
            v137.i64[1] = v157.u32[1];
            v158 = vsubq_f64(v147, v131[4]);
            v159 = vsubq_f64(v144, v131[5]);
            a9 = vsubq_f64(v141, v131[6]);
            a7 = vsubq_f64(v138, v131[7]);
            v160 = vsubq_f64(vcvtq_f64_u64(v137), *v131);
            v161 = vsubq_f64(v155, v131[1]);
            v162 = vsubq_f64(v149, v131[3]);
            v130[2] = vsubq_f64(v152, v131[2]);
            v130[3] = v162;
            *v130 = v160;
            v130[1] = v161;
            v130[6] = a9;
            v130[7] = a7;
            v130[4] = v158;
            v130[5] = v159;
            v131 += 8;
            v130 += 8;
            v129 -= 16;
          }

          while (v129);
          if (v114 == v16)
          {
            goto LABEL_132;
          }

          v127 = v16 & 0x7FFFFFF0;
          v125 = v127;
          if ((v16 & 0xC) == 0)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v127 = 0;
        }

        v163 = (v22 + 8 * v127);
        v164 = &v275[8 * v127];
        do
        {
          LODWORD(a7.f64[0]) = *(v124->f64 + v127);
          v165 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
          v166 = vand_s8(*v165.i8, 0xFF000000FFLL);
          v167.i64[0] = v166.u32[0];
          v167.i64[1] = v166.u32[1];
          v168 = vcvtq_f64_u64(v167);
          *v165.i8 = vand_s8(*&vextq_s8(v165, v165, 8uLL), 0xFF000000FFLL);
          v167.i64[0] = v165.u32[0];
          v167.i64[1] = v165.u32[1];
          a9 = *v163;
          v169 = v163[1];
          v163 += 2;
          a7 = vsubq_f64(vcvtq_f64_u64(v167), v169);
          *v164 = vsubq_f64(v168, a9);
          v164[1] = a7;
          v164 += 2;
          v127 += 4;
        }

        while (v115 != v127);
        v125 = v16 & 0x7FFFFFFC;
        if (v115 != v16)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (v16 < 1)
        {
          goto LABEL_132;
        }

        if (v120)
        {
          v126 = 0;
LABEL_130:
          v212 = &v275[8 * v126];
          v213 = v121 * v126;
          v214 = v16 - v126;
          v215 = v12 * v126;
          do
          {
            LOBYTE(a7.f64[0]) = *(v124->f64 + v215);
            a7.f64[0] = *&a7.f64[0] - *(v123->f64 + v213);
            *v212++ = a7.f64[0];
            v213 += v121;
            v215 += v12;
            --v214;
          }

          while (v214);
          goto LABEL_132;
        }

        if (v16 >= 0x10)
        {
          v174 = 0;
          v175 = v275;
          v176 = v123;
          do
          {
            v177 = v124[v174 / 0x10];
            v178.i32[0] = v177.u8[6];
            v178.i32[1] = v177.u8[7];
            v179 = vand_s8(v178, 0xFF000000FFLL);
            v180.i64[0] = v179.u32[0];
            v180.i64[1] = v179.u32[1];
            v181 = vcvtq_f64_u64(v180);
            v182.i32[0] = v177.u8[4];
            v182.i32[1] = v177.u8[5];
            v183 = vand_s8(v182, 0xFF000000FFLL);
            v180.i64[0] = v183.u32[0];
            v180.i64[1] = v183.u32[1];
            v184 = vcvtq_f64_u64(v180);
            v185.i32[0] = v177.u8[2];
            v185.i32[1] = v177.u8[3];
            v186 = vand_s8(v185, 0xFF000000FFLL);
            v180.i64[0] = v186.u32[0];
            v180.i64[1] = v186.u32[1];
            v187 = vcvtq_f64_u64(v180);
            v188.i32[0] = v177.u8[0];
            v188.i32[1] = v177.u8[1];
            v189 = vand_s8(v188, 0xFF000000FFLL);
            v180.i64[0] = v189.u32[0];
            v180.i64[1] = v189.u32[1];
            v190 = vcvtq_f64_u64(v180);
            v177.i64[0] = vextq_s8(v177, v177, 8uLL).u64[0];
            v191.i32[0] = v177.u8[6];
            v191.i32[1] = v177.u8[7];
            v192 = vand_s8(v191, 0xFF000000FFLL);
            v180.i64[0] = v192.u32[0];
            v180.i64[1] = v192.u32[1];
            v193.i32[0] = v177.u8[4];
            v194 = vcvtq_f64_u64(v180);
            v193.i32[1] = v177.u8[5];
            v195 = vand_s8(v193, 0xFF000000FFLL);
            v180.i64[0] = v195.u32[0];
            v180.i64[1] = v195.u32[1];
            v196.i32[0] = v177.u8[2];
            v196.i32[1] = v177.u8[3];
            v197 = vcvtq_f64_u64(v180);
            v198 = vand_s8(v196, 0xFF000000FFLL);
            v180.i64[0] = v198.u32[0];
            v180.i64[1] = v198.u32[1];
            v199 = vcvtq_f64_u64(v180);
            v200.i32[0] = v177.u8[0];
            v200.i32[1] = v177.u8[1];
            *v177.i8 = vand_s8(v200, 0xFF000000FFLL);
            v180.i64[0] = v177.u32[0];
            v180.i64[1] = v177.u32[1];
            v201 = vsubq_f64(vcvtq_f64_u64(v180), v176[4]);
            v202 = vsubq_f64(v199, v176[5]);
            v203 = vsubq_f64(v197, v176[6]);
            v204 = vsubq_f64(v194, v176[7]);
            v205 = vsubq_f64(v190, *v176);
            a9 = vsubq_f64(v187, v176[1]);
            a7 = vsubq_f64(v181, v176[3]);
            v175[2] = vsubq_f64(v184, v176[2]);
            v175[3] = a7;
            *v175 = v205;
            v175[1] = a9;
            v175[6] = v203;
            v175[7] = v204;
            v175[4] = v201;
            v175[5] = v202;
            v174 += 16;
            v176 += 8;
            v175 += 8;
          }

          while (v114 != v174);
          if (v114 == v16)
          {
            goto LABEL_132;
          }

          v128 = v16 & 0x7FFFFFF0;
          v126 = v128;
          if ((v16 & 0xC) == 0)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v128 = 0;
        }

        v206 = 8 * v128;
        do
        {
          LODWORD(a7.f64[0]) = *(v124->f64 + v128);
          v207 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
          v208 = vand_s8(*v207.i8, 0xFF000000FFLL);
          v209.i64[0] = v208.u32[0];
          v209.i64[1] = v208.u32[1];
          v210 = vcvtq_f64_u64(v209);
          *v207.i8 = vand_s8(*&vextq_s8(v207, v207, 8uLL), 0xFF000000FFLL);
          v209.i64[0] = v207.u32[0];
          v209.i64[1] = v207.u32[1];
          a9 = *(v123 + v206);
          a7 = vsubq_f64(vcvtq_f64_u64(v209), *(v123 + v206 + 16));
          v211 = &v275[v206];
          *v211 = vsubq_f64(v210, a9);
          v211[1] = a7;
          v128 += 4;
          v206 += 32;
        }

        while (v115 != v128);
        v126 = v16 & 0x7FFFFFFC;
        if (v115 != v16)
        {
          goto LABEL_130;
        }
      }

LABEL_132:
      LODWORD(v216) = v101;
      v217 = v101;
      if (v101 <= v102)
      {
        do
        {
          a7 = v116;
          v226 = v116;
          if (v16 >= 1)
          {
            v227 = (v11 + 8 * v217);
            if (v22)
            {
              v227 = v22;
            }

            v228 = (v9 + v217);
            v229 = 0uLL;
            v230 = v16;
            v231 = v275;
            v232 = 0uLL;
            do
            {
              LODWORD(a9.f64[0]) = *v228;
              v233 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
              v234 = vand_s8(*v233.i8, 0xFF000000FFLL);
              v235.i64[0] = v234.u32[0];
              v235.i64[1] = v234.u32[1];
              v236 = vcvtq_f64_u64(v235);
              *v233.i8 = vand_s8(*&vextq_s8(v233, v233, 8uLL), 0xFF000000FFLL);
              v235.i64[0] = v233.u32[0];
              v235.i64[1] = v233.u32[1];
              a9 = vsubq_f64(vcvtq_f64_u64(v235), v227[1]);
              v237 = vld1q_dup_f64(v231++);
              v229 = vmlaq_f64(v229, vsubq_f64(v236, *v227), v237);
              v232 = vmlaq_f64(v232, a9, v237);
              v228 = (v228 + v12);
              v227 = (v227 + v121);
              --v230;
            }

            while (v230);
            a9.f64[0] = a4;
            a7 = vmulq_n_f64(v229, a4);
            v226 = vmulq_n_f64(v232, a4);
          }

          v225 = (v10 + 8 * v217);
          *v225 = a7;
          v225[1] = v226;
          v216 = v217 + 4;
          v217 = v216;
        }

        while (v102 >= v216);
      }

      if (v216 >= v15)
      {
        goto LABEL_101;
      }

      v218 = v216;
      if (v16 >= 1)
      {
        do
        {
          v219 = &v11->f64[v218];
          if (v22)
          {
            v219 = v22;
          }

          v220 = 0.0;
          v221 = v9;
          v222 = v16;
          v223 = v275;
          do
          {
            v224 = *v223++;
            LOBYTE(a9.f64[0]) = *(v221 + v218);
            a9.f64[0] = *&a9.f64[0] - *v219;
            v220 = v220 + v224 * a9.f64[0];
            v219 = (v219 + v121);
            v221 += v12;
            --v222;
          }

          while (v222);
          a7.f64[0] = v220 * a4;
          v10->i64[v218++] = *&a7.f64[0];
        }

        while (v15 > v218);
        goto LABEL_101;
      }

      v238 = (v15 + ~v216);
      if (v238 > 2)
      {
        v240 = v238 + 1;
        v241 = (v238 + 1) & 0x1FFFFFFFCLL;
        v239 = v241 + v218;
        v242 = 8 * v218;
        v243 = v241;
        do
        {
          v244 = (v10 + v242);
          *v244 = v116;
          v244[1] = v116;
          v242 += 32;
          v243 -= 4;
        }

        while (v243);
        if (v240 == v241)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v239 = v218;
      }

      v245 = v239;
      do
      {
        *&v10->i64[v245++] = v103;
        LODWORD(v239) = v239 + 1;
      }

      while (v15 > v239);
LABEL_101:
      ++v101;
      v10 = (v10 + v122);
      v124 = (v124 + 1);
      v123 = (v123 + 8);
    }

    while (v101 != v15);
  }

  return result;
}