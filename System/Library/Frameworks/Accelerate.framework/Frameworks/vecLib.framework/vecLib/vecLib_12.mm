uint64_t sub_236747A40(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (result < 33 || a2 <= 32)
  {
    if (result >= 1)
    {
      v44 = 0;
      v45 = 16 * a4;
      v46 = xmmword_23681FB50;
      v47 = xmmword_23681FD30;
      v48 = a3;
      do
      {
        v215 = v44;
        v49 = v12 - v44;
        if (v12 - v44 >= 32)
        {
          v50 = 32;
        }

        else
        {
          v50 = v12 - v44;
        }

        if (a2 >= 1)
        {
          v51 = 0;
          v52 = a6 + 16 * v44 * a7;
          result = v50;
          do
          {
            if (a2 - v51 >= 32)
            {
              v53 = 32;
            }

            else
            {
              v53 = a2 - v51;
            }

            v219 = v51;
            v54 = 0;
            if (a2 - v51 >= 1)
            {
              v55 = a5 + 32 * v51;
              v56 = 16 * v51;
              do
              {
                v57 = (v55 + 16 * (2 * v54));
                v58 = *v57;
                v59 = v57[1];
                v60 = fabs(*v57) == INFINITY;
                if (fabs(v59) == INFINITY)
                {
                  v60 = 1;
                }

                if (v60)
                {
                  v61 = 0.0;
                }

                else
                {
                  v61 = v58;
                }

                if (v60)
                {
                  v62 = 0.0;
                }

                else
                {
                  v62 = v59;
                }

                v63 = vmulq_n_f64(v46, v62);
                v64 = 4 * v54;
                v65 = v56 + 16 * v54;
                if (v49 < 4)
                {
                  v75 = 0;
                }

                else
                {
                  v66 = 0;
                  v67 = vdupq_lane_s64(*&v61, 0);
                  v68 = (a8 + 16 * v64);
                  v69 = (v48 + a4 * v65);
                  do
                  {
                    v70 = vmulq_f64(v69[2], v47);
                    v71 = vmulq_f64(v69[3], v47);
                    v72 = vmulq_f64(*v69, v47);
                    v73 = vmulq_f64(v69[1], v47);
                    v68[2] = vmlaq_f64(vmulq_f64(v63, vextq_s8(v70, v70, 8uLL)), v67, v70);
                    v68[3] = vmlaq_f64(vmulq_f64(v63, vextq_s8(v71, v71, 8uLL)), v67, v71);
                    v74 = v66 + 7;
                    *v68 = vmlaq_f64(vmulq_f64(v63, vextq_s8(v72, v72, 8uLL)), v67, v72);
                    v68[1] = vmlaq_f64(vmulq_f64(v63, vextq_s8(v73, v73, 8uLL)), v67, v73);
                    v66 += 4;
                    v68 += 132;
                    v69 += 4;
                  }

                  while (v74 < v50);
                  v75 = v66;
                }

                if (v75 < v50)
                {
                  v76 = vdupq_lane_s64(*&v61, 0);
                  v77 = v48 + a4 * v65;
                  do
                  {
                    v78 = vmulq_f64(*(v77 + 16 * v75), v47);
                    *(a8 + 16 * ((33 * (v75 & 0x7FFFFFFC) + v64) | v75 & 3)) = vmlaq_f64(vmulq_f64(v63, vextq_s8(v78, v78, 8uLL)), v76, v78);
                    ++v75;
                  }

                  while (v75 < v50);
                }

                ++v54;
              }

              while (v54 < v53);
            }

            if (v49 < 4)
            {
              v189 = 0;
            }

            else
            {
              v79 = 0;
              v80 = a3 + 16 * v219 * a4;
              do
              {
                v81 = v79 | 3;
                v82 = v79;
                if ((v79 | 3uLL) < v12)
                {
                  v83 = v80;
                  v84 = v79;
                  do
                  {
                    if (v54 < 1)
                    {
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v85 = 0uLL;
                      v87 = 0uLL;
                      v89 = 0uLL;
                      v91 = 0uLL;
                    }

                    else
                    {
                      v85 = 0uLL;
                      v86 = v54;
                      v87 = 0uLL;
                      v88 = v83;
                      v89 = 0uLL;
                      v90 = (a8 + 528 * v79);
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      do
                      {
                        v223 = v99;
                        v224 = v97;
                        v225 = v96;
                        v226 = v87;
                        v227 = v85;
                        v105 = *(v88 + 32);
                        v104 = *(v88 + 48);
                        v106 = *(v88 + 16);
                        v107 = vextq_s8(*v88, *v88, 8uLL);
                        v108 = vextq_s8(v106, v106, 8uLL);
                        v109 = vextq_s8(v105, v105, 8uLL);
                        v110 = vextq_s8(v104, v104, 8uLL);
                        v111 = v90[2];
                        v112 = v90[3];
                        v114 = *v90;
                        v113 = v90[1];
                        v90 += 4;
                        v115 = vmulq_laneq_f64(xmmword_23681FB50, v114, 1);
                        v116 = vmulq_f64(v110, v115);
                        v117 = vmulq_f64(v109, v115);
                        v118 = vmulq_f64(v108, v115);
                        v119 = vmlaq_n_f64(vmulq_f64(v107, v115), *v88, v114.f64[0]);
                        v120 = vmlaq_n_f64(v118, v106, v114.f64[0]);
                        v121 = vmlaq_n_f64(v117, v105, v114.f64[0]);
                        v122 = vmlaq_n_f64(v116, v104, v114.f64[0]);
                        v123 = vmulq_laneq_f64(xmmword_23681FB50, v113, 1);
                        v124 = v95;
                        v125 = v89;
                        v126 = vmulq_f64(v110, v123);
                        v127 = v92;
                        v128 = vmulq_f64(v109, v123);
                        v129 = v93;
                        v130 = vmulq_f64(v108, v123);
                        v131 = vmlaq_n_f64(vmulq_f64(v107, v123), *v88, v113.f64[0]);
                        v132 = vmlaq_n_f64(v130, v106, v113.f64[0]);
                        v133 = vmlaq_n_f64(v128, v105, v113.f64[0]);
                        v134 = vmlaq_n_f64(v126, v104, v113.f64[0]);
                        v135 = vmulq_laneq_f64(xmmword_23681FB50, v111, 1);
                        v136 = v91;
                        v137 = vmulq_f64(v110, v135);
                        v138 = v94;
                        v139 = vmulq_f64(v109, v135);
                        v140 = vmulq_f64(v108, v135);
                        v141 = vmlaq_n_f64(vmulq_f64(v107, v135), *v88, v111.f64[0]);
                        v142 = vmlaq_n_f64(v140, v106, v111.f64[0]);
                        v143 = vmlaq_n_f64(v139, v105, v111.f64[0]);
                        v144 = vmlaq_n_f64(v137, v104, v111.f64[0]);
                        v145 = vmulq_laneq_f64(xmmword_23681FB50, v112, 1);
                        v146 = vmlaq_n_f64(vmulq_f64(v107, v145), *v88, v112.f64[0]);
                        v147 = vmlaq_n_f64(vmulq_f64(v108, v145), v106, v112.f64[0]);
                        v148 = vmlaq_n_f64(vmulq_f64(v109, v145), v105, v112.f64[0]);
                        v149 = vmlaq_n_f64(vmulq_f64(v110, v145), v104, v112.f64[0]);
                        v103 = vsubq_f64(v103, v122);
                        v102 = vsubq_f64(v102, v121);
                        v101 = vsubq_f64(v101, v120);
                        v100 = vsubq_f64(v100, v119);
                        v99 = vsubq_f64(v223, v134);
                        v150 = v125;
                        v151 = v124;
                        v98 = vsubq_f64(v98, v133);
                        v152 = v127;
                        v97 = vsubq_f64(v224, v132);
                        v96 = vsubq_f64(v225, v131);
                        v95 = vsubq_f64(v151, v144);
                        v94 = vsubq_f64(v138, v143);
                        v93 = vsubq_f64(v129, v142);
                        v92 = vsubq_f64(v152, v141);
                        v91 = vsubq_f64(v136, v149);
                        v89 = vsubq_f64(v150, v148);
                        v87 = vsubq_f64(v226, v147);
                        v85 = vsubq_f64(v227, v146);
                        v88 += v45;
                        --v86;
                      }

                      while (v86);
                    }

                    v153 = (v52 + 16 * v79 * a7 + 16 * v84);
                    v154 = vaddq_f64(v103, v153[3]);
                    v155 = vaddq_f64(v101, v153[1]);
                    v156 = vaddq_f64(v100, *v153);
                    v157 = vaddq_f64(v102, v153[2]);
                    *v153 = v156;
                    v153[1] = v155;
                    v153[2] = v157;
                    v153[3] = v154;
                    v158 = (v52 + 16 * (v79 | 1) * a7 + 16 * v84);
                    v159 = vaddq_f64(v98, v158[2]);
                    v160 = vaddq_f64(v97, v158[1]);
                    v161 = vaddq_f64(v96, *v158);
                    v162 = vaddq_f64(v99, v158[3]);
                    *v158 = v161;
                    v158[1] = v160;
                    v158[2] = v159;
                    v158[3] = v162;
                    v163 = (v52 + 16 * (v79 | 2) * a7 + 16 * v84);
                    v164 = vaddq_f64(v94, v163[2]);
                    v165 = vaddq_f64(v93, v163[1]);
                    v166 = vaddq_f64(v95, v163[3]);
                    *v163 = vaddq_f64(v92, *v163);
                    v163[1] = v165;
                    v163[2] = v164;
                    v163[3] = v166;
                    v167 = v52 + 16 * v81 * a7 + 16 * v84;
                    v169 = *(v167 + 32);
                    v168 = *(v167 + 48);
                    v170 = vaddq_f64(v87, *(v167 + 16));
                    *v167 = vaddq_f64(v85, *v167);
                    *(v167 + 16) = v170;
                    *(v167 + 32) = vaddq_f64(v89, v169);
                    *(v167 + 48) = vaddq_f64(v91, v168);
                    v82 = v84 + 4;
                    v171 = v84 + 7;
                    v83 += 64;
                    v84 += 4;
                  }

                  while (v171 < v12);
                }

                v46 = xmmword_23681FB50;
                if (v82 < v12)
                {
                  v172 = v52 + 16 * v81 * a7;
                  v173 = v82;
                  v174 = a3 + v45 * v219 + 16 * v82;
                  do
                  {
                    if (v54 < 1)
                    {
                      v181 = 0uLL;
                      v180 = 0uLL;
                      v179 = 0uLL;
                      v175 = 0uLL;
                    }

                    else
                    {
                      v175 = 0uLL;
                      v176 = v54;
                      v177 = v174;
                      v178 = (a8 + 528 * v79);
                      v179 = 0uLL;
                      v180 = 0uLL;
                      v181 = 0uLL;
                      do
                      {
                        v182 = vextq_s8(*v177, *v177, 8uLL);
                        v184 = v178[2];
                        v183 = v178[3];
                        v186 = *v178;
                        v185 = v178[1];
                        v178 += 4;
                        v181 = vsubq_f64(v181, vmlaq_n_f64(vmulq_f64(v182, vmulq_laneq_f64(xmmword_23681FB50, v186, 1)), *v177, v186.f64[0]));
                        v180 = vsubq_f64(v180, vmlaq_n_f64(vmulq_f64(v182, vmulq_laneq_f64(xmmword_23681FB50, v185, 1)), *v177, v185.f64[0]));
                        v179 = vsubq_f64(v179, vmlaq_n_f64(vmulq_f64(v182, vmulq_laneq_f64(xmmword_23681FB50, v184, 1)), *v177, v184.f64[0]));
                        v175 = vsubq_f64(v175, vmlaq_n_f64(vmulq_f64(v182, vmulq_laneq_f64(xmmword_23681FB50, v183, 1)), *v177, v183.f64[0]));
                        v177 = (v177 + v45);
                        --v176;
                      }

                      while (v176);
                    }

                    *(v52 + 16 * v79 * a7 + 16 * v173) = vaddq_f64(v181, *(v52 + 16 * v79 * a7 + 16 * v173));
                    *(v52 + 16 * (v79 | 1) * a7 + 16 * v173) = vaddq_f64(v180, *(v52 + 16 * (v79 | 1) * a7 + 16 * v173));
                    *(v52 + 16 * (v79 | 2) * a7 + 16 * v173) = vaddq_f64(v179, *(v52 + 16 * (v79 | 2) * a7 + 16 * v173));
                    *(v172 + 16 * v173) = vaddq_f64(v175, *(v172 + 16 * v173));
                    ++v173;
                    v174 += 16;
                  }

                  while (v173 != v12);
                }

                v187 = v79 + 4;
                v188 = v79 + 7;
                v80 += 64;
                v79 += 4;
              }

              while (v188 < v50);
              v189 = v187;
            }

            if (v189 < v50)
            {
              v190 = (a3 + v45 * v219 + 16 * v189);
              do
              {
                v191 = v189;
                if (v189 + 3 < v12)
                {
                  v192 = v190;
                  v193 = v189;
                  do
                  {
                    v194 = 0uLL;
                    if (v54 < 1)
                    {
                      v198 = 0uLL;
                      v199 = 0uLL;
                      v200 = 0uLL;
                    }

                    else
                    {
                      v195 = v54;
                      v196 = v192;
                      v197 = (a8 + 16 * ((33 * (v189 & 0x7FFFFFFC)) & 0xFFFFFFFC | v189 & 3));
                      v198 = 0uLL;
                      v199 = 0uLL;
                      v200 = 0uLL;
                      do
                      {
                        v201 = *v197;
                        v197 += 4;
                        v202 = vmulq_laneq_f64(v46, v201, 1);
                        v200 = vsubq_f64(v200, vmlaq_n_f64(vmulq_f64(vextq_s8(v196[3], v196[3], 8uLL), v202), v196[3], v201.f64[0]));
                        v199 = vsubq_f64(v199, vmlaq_n_f64(vmulq_f64(vextq_s8(v196[2], v196[2], 8uLL), v202), v196[2], v201.f64[0]));
                        v198 = vsubq_f64(v198, vmlaq_n_f64(vmulq_f64(vextq_s8(v196[1], v196[1], 8uLL), v202), v196[1], v201.f64[0]));
                        v194 = vsubq_f64(v194, vmlaq_n_f64(vmulq_f64(vextq_s8(*v196, *v196, 8uLL), v202), *v196, v201.f64[0]));
                        v196 = (v196 + v45);
                        --v195;
                      }

                      while (v195);
                    }

                    v203 = (v52 + 16 * v189 * a7 + 16 * v193);
                    v204 = vaddq_f64(v200, v203[3]);
                    v205 = vaddq_f64(v198, v203[1]);
                    v206 = vaddq_f64(v199, v203[2]);
                    *v203 = vaddq_f64(v194, *v203);
                    v203[1] = v205;
                    v203[2] = v206;
                    v203[3] = v204;
                    v191 = v193 + 4;
                    v207 = v193 + 7;
                    v192 += 4;
                    v193 += 4;
                  }

                  while (v207 < v12);
                }

                if (v191 < v12)
                {
                  v208 = v191;
                  v209 = a3 + v45 * v219 + 16 * v191;
                  do
                  {
                    v210 = 0uLL;
                    if (v54 >= 1)
                    {
                      v211 = v54;
                      v212 = v209;
                      v213 = (a8 + 16 * ((33 * (v189 & 0x7FFFFFFC)) & 0xFFFFFFFC | v189 & 3));
                      do
                      {
                        v214 = *v213;
                        v213 += 4;
                        v210 = vsubq_f64(v210, vmlaq_n_f64(vmulq_f64(vextq_s8(*v212, *v212, 8uLL), vmulq_laneq_f64(v46, v214, 1)), *v212, v214.f64[0]));
                        v212 = (v212 + v45);
                        --v211;
                      }

                      while (v211);
                    }

                    *(v52 + 16 * v189 * a7 + 16 * v208) = vaddq_f64(v210, *(v52 + 16 * v189 * a7 + 16 * v208));
                    ++v208;
                    v209 += 16;
                  }

                  while (v208 < v12);
                }

                ++v189;
                ++v190;
              }

              while (v189 < v50);
            }

            v51 = v54 + v219;
            v47 = xmmword_23681FD30;
          }

          while (v54 + v219 < a2);
        }

        v44 = v215 + 32;
        v48 += 512;
      }

      while (v215 + 32 < v12);
    }
  }

  else
  {
    v13 = 0;
    v221 = a7 << 10;
    v14 = a3;
    v218 = result;
    do
    {
      v15 = 0;
      v222 = v13;
      v16 = v218 - v13;
      if (v218 - v13 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = v218 - v13;
      }

      v18 = v17;
      do
      {
        if (a2 - v15 >= 64)
        {
          v19 = 64;
        }

        else
        {
          v19 = a2 - v15;
        }

        v20 = v15;
        if (a2 - v15 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a5 + 32 * v15;
          do
          {
            v23 = (v22 + 32 * v21);
            v24 = *v23;
            v25 = v23[1];
            v26 = fabs(*v23) == INFINITY;
            if (fabs(v25) == INFINITY)
            {
              v26 = 1;
            }

            if (v26)
            {
              v27 = 0.0;
            }

            else
            {
              v27 = v24;
            }

            if (v26)
            {
              v28 = 0.0;
            }

            else
            {
              v28 = v25;
            }

            v29 = vmulq_n_f64(xmmword_23681FB50, v28);
            v30 = 16 * v20 + 16 * v21;
            if (v16 < 4)
            {
              v40 = 0;
            }

            else
            {
              v31 = 0;
              v32 = vdupq_lane_s64(*&v27, 0);
              v33 = (a8 + (v21 << 10));
              v34 = (v14 + a4 * v30);
              do
              {
                v35 = vmulq_f64(v34[2], xmmword_23681FD30);
                v36 = vmulq_f64(v34[3], xmmword_23681FD30);
                v37 = vmulq_f64(*v34, xmmword_23681FD30);
                v38 = vmulq_f64(v34[1], xmmword_23681FD30);
                v33[2] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v35, v35, 8uLL)), v32, v35);
                v33[3] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v36, v36, 8uLL)), v32, v36);
                v39 = v31 + 7;
                *v33 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v37, v37, 8uLL)), v32, v37);
                v33[1] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v38, v38, 8uLL)), v32, v38);
                v33 += 4;
                v31 += 4;
                v34 += 4;
              }

              while (v39 < v18);
              v40 = v31;
            }

            if (v40 < v18)
            {
              v41 = vdupq_lane_s64(*&v27, 0);
              v42 = v14 + a4 * v30;
              do
              {
                v43 = vmulq_f64(*(v42 + 16 * v40), xmmword_23681FD30);
                *(a8 + (v21 << 10) + 16 * v40++) = vmlaq_f64(vmulq_f64(v29, vextq_s8(v43, v43, 8uLL)), v41, v43);
              }

              while (v40 < v18);
            }

            ++v21;
          }

          while (v21 < v19);
        }

        result = cblas_zgemm_NEWLAPACK();
        v15 = v21 + v20;
      }

      while ((v21 + v20) < a2);
      a6 += v221;
      v13 = v222 + 64;
      v14 += 1024;
    }

    while (v222 + 64 < v12);
  }

  return result;
}

uint64_t sub_2367489AC(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, float32x4_t a11, uint64_t a12, uint64_t a13)
{
  v90 = result;
  v88 = a2;
  if (a2 < 65 || a3 <= 64)
  {
    if (a2 >= 1)
    {
      v27 = 0;
      v28 = 4 * a6;
      do
      {
        v87 = v27;
        v29 = a2 - v27;
        if (a2 - v27 >= 32)
        {
          v30 = 32;
        }

        else
        {
          v30 = a2 - v27;
        }

        v31 = a4;
        if (a3 >= 1)
        {
          v32 = 0;
          result = v30;
          do
          {
            if (a3 - v32 >= 32)
            {
              v33 = 32;
            }

            else
            {
              v33 = a3 - v32;
            }

            v34 = v32;
            v92 = v32;
            v35 = 0;
            if (a3 - v32 < 1)
            {
              v38 = a6;
            }

            else
            {
              v36 = a7 + 8 * v32;
              v37 = 4 * v34;
              v38 = a6;
              do
              {
                v39 = *(v36 + 4 * (2 * v35));
                if (fabsf(v39) == INFINITY)
                {
                  v39 = 0.0;
                }

                if (v29 >= 1)
                {
                  v40 = 0;
                  do
                  {
                    *(a13 + 4 * ((33 * (v40 & 0x7FFFFFFC) + 4 * v35) | v40 & 3)) = v39 * *(a5 + a6 * (v37 + 4 * v35) + 4 * v40);
                    ++v40;
                  }

                  while (v40 < v30);
                }

                ++v35;
              }

              while (v35 < v33);
            }

            v41 = v31 + 4 * v92 * v38;
            if (v29 < 4)
            {
              v78 = 0;
            }

            else
            {
              v42 = 0;
              v43 = v31 + v28 * v92;
              do
              {
                v44 = v42 | 3;
                v45 = v42 * a12;
                if (v90 < 8)
                {
                  v70 = 0;
                }

                else
                {
                  v46 = 0;
                  v47 = v41;
                  do
                  {
                    if (v35 < 1)
                    {
                      v57 = 0uLL;
                      v58 = 0uLL;
                      v55 = 0uLL;
                      v56 = 0uLL;
                      v53 = 0uLL;
                      v54 = 0uLL;
                      v48 = 0uLL;
                      v50 = 0uLL;
                    }

                    else
                    {
                      v48 = 0uLL;
                      v49 = v35;
                      v50 = 0uLL;
                      v51 = v47;
                      v52 = (a13 + 132 * v42);
                      v53 = 0uLL;
                      v54 = 0uLL;
                      v55 = 0uLL;
                      v56 = 0uLL;
                      v57 = 0uLL;
                      v58 = 0uLL;
                      do
                      {
                        v59 = v51[1];
                        v60 = *v52++;
                        v58 = vmlsq_lane_f32(v58, v59, *v60.f32, 0);
                        v57 = vmlsq_lane_f32(v57, *v51, *v60.f32, 0);
                        v56 = vmlsq_lane_f32(v56, v59, *v60.f32, 1);
                        v55 = vmlsq_lane_f32(v55, *v51, *v60.f32, 1);
                        v54 = vmlsq_laneq_f32(v54, v59, v60, 2);
                        v53 = vmlsq_laneq_f32(v53, *v51, v60, 2);
                        v50 = vmlsq_laneq_f32(v50, v59, v60, 3);
                        v48 = vmlsq_laneq_f32(v48, *v51, v60, 3);
                        v51 = (v51 + v28);
                        --v49;
                      }

                      while (v49);
                    }

                    v61 = (a8 + 4 * (v45 + v46));
                    v62 = vaddq_f32(v58, v61[1]);
                    *v61 = vaddq_f32(v57, *v61);
                    v61[1] = v62;
                    v63 = (a8 + 4 * ((v42 | 1) * a12 + v46));
                    v64 = vaddq_f32(v56, v63[1]);
                    *v63 = vaddq_f32(v55, *v63);
                    v63[1] = v64;
                    v65 = (a8 + 4 * ((v42 | 2) * a12 + v46));
                    v66 = vaddq_f32(v54, v65[1]);
                    *v65 = vaddq_f32(v53, *v65);
                    v65[1] = v66;
                    v67 = (a8 + 4 * (v44 * a12 + v46));
                    a11 = vaddq_f32(v50, v67[1]);
                    *v67 = vaddq_f32(v48, *v67);
                    v67[1] = a11;
                    v68 = v46 + 8;
                    v69 = v46 + 15;
                    v47 += 2;
                    v46 += 8;
                  }

                  while (v69 < v90);
                  v70 = v68;
                }

                if (v70 < v90)
                {
                  v71 = (v43 + 4 * v70);
                  v72 = v44 * a12;
                  do
                  {
                    v73 = 0uLL;
                    if (v35 >= 1)
                    {
                      v74 = v35;
                      v75 = v71;
                      v76 = (a13 + 132 * v42);
                      do
                      {
                        a11.i32[0] = *v75;
                        v77 = *v76++;
                        v73 = vmlsq_lane_f32(v73, v77, *a11.f32, 0);
                        v75 = (v75 + v28);
                        --v74;
                      }

                      while (v74);
                    }

                    *(a8 + 4 * (v45 + v70)) = v73.f32[0] + *(a8 + 4 * (v45 + v70));
                    *(a8 + 4 * ((v42 | 1) * a12 + v70)) = v73.f32[1] + *(a8 + 4 * ((v42 | 1) * a12 + v70));
                    *(a8 + 4 * ((v42 | 2) * a12 + v70)) = v73.f32[2] + *(a8 + 4 * ((v42 | 2) * a12 + v70));
                    *(a8 + 4 * (v72 + v70)) = v73.f32[3] + *(a8 + 4 * (v72 + v70));
                    ++v70;
                    ++v71;
                  }

                  while (v70 != v90);
                }

                LODWORD(v78) = v42 + 4;
                v79 = v42 + 7;
                v42 += 4;
              }

              while (v79 < v30);
              v78 = v78;
              v31 = a4;
            }

            if (v78 < v30)
            {
              do
              {
                if (v90 >= 1)
                {
                  v80 = 0;
                  v81 = v41;
                  do
                  {
                    v82 = 0.0;
                    if (v35 >= 1)
                    {
                      v83 = v35;
                      v84 = v81;
                      v85 = (a13 + ((4 * (v78 & 3)) | (528 * (v78 >> 2))));
                      do
                      {
                        v86 = *v85;
                        v85 += 4;
                        v82 = v82 - (*v84 * v86);
                        v84 = (v84 + v28);
                        --v83;
                      }

                      while (v83);
                    }

                    *(a8 + 4 * (v78 * a12 + v80)) = v82 + *(a8 + 4 * (v78 * a12 + v80));
                    ++v80;
                    ++v81;
                  }

                  while (v80 != v90);
                }

                ++v78;
              }

              while (v78 < v30);
            }

            v32 = v35 + v92;
          }

          while (v35 + v92 < a3);
        }

        a5 += 128;
        a8 += a12 << 7;
        v27 = v87 + 32;
        a2 = v88;
      }

      while (v87 + 32 < v88);
    }
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = 0;
      v91 = v16;
      v18 = a2 - v16;
      if (a2 - v16 >= 64)
      {
        v19 = 64;
      }

      else
      {
        v19 = a2 - v16;
      }

      v20 = v19;
      do
      {
        if (a3 - v17 >= 64)
        {
          v21 = 64;
        }

        else
        {
          v21 = a3 - v17;
        }

        v22 = v17;
        if (a3 - v17 < 1)
        {
          v23 = 0;
        }

        else
        {
          v23 = 0;
          v24 = a7 + 8 * v17;
          do
          {
            v25 = *(v24 + 8 * v23);
            if (fabsf(v25) == INFINITY)
            {
              v25 = 0.0;
            }

            if (v18 >= 1)
            {
              v26 = 0;
              do
              {
                *(a13 + (v23 << 8) + 4 * v26) = v25 * *(a5 + a6 * (4 * v22 + 4 * v23) + 4 * v26);
                ++v26;
              }

              while (v26 < v20);
            }

            ++v23;
          }

          while (v23 < v21);
        }

        result = cblas_sgemm_NEWLAPACK();
        v17 = v23 + v22;
      }

      while ((v23 + v22) < a3);
      a5 += 256;
      a8 += a12 << 8;
      v16 = v91 + 64;
      a2 = v88;
    }

    while (v91 + 64 < v88);
  }

  return result;
}

uint64_t sub_2367490DC(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v123 = result;
  v117 = a2;
  if (a2 < 65 || a3 <= 64)
  {
    if (a2 >= 1)
    {
      v24 = 0;
      v25 = 8 * a6;
      do
      {
        v116 = v24;
        v26 = a2 - v24;
        if (a2 - v24 >= 32)
        {
          v27 = 32;
        }

        else
        {
          v27 = a2 - v24;
        }

        v28 = a4;
        v29 = v123;
        if (a3 >= 1)
        {
          v30 = 0;
          result = v27;
          do
          {
            if (a3 - v30 >= 32)
            {
              v31 = 32;
            }

            else
            {
              v31 = a3 - v30;
            }

            v32 = v30;
            if (a3 - v30 < 1)
            {
              v35 = v30;
              v33 = 0;
              v37 = a6;
            }

            else
            {
              v33 = 0;
              v34 = a7 + 16 * v30;
              v35 = v32;
              v36 = 8 * v32;
              v37 = a6;
              do
              {
                v38 = *(v34 + 8 * (2 * v33));
                if (fabs(v38) == INFINITY)
                {
                  v38 = 0.0;
                }

                if (v26 >= 1)
                {
                  v39 = 0;
                  do
                  {
                    *(a10 + 8 * ((33 * (v39 & 0x7FFFFFFC) + 4 * v33) | v39 & 3)) = v38 * *(a5 + a6 * (v36 + 8 * v33) + 8 * v39);
                    ++v39;
                  }

                  while (v39 < v27);
                }

                ++v33;
              }

              while (v33 < v31);
            }

            v40 = v35;
            v41 = v28 + 8 * v35 * v37;
            if (v26 < 4)
            {
              v107 = 0;
            }

            else
            {
              v42 = 0;
              v119 = v35;
              v43 = v28 + v25 * v35;
              do
              {
                v44 = v42 | 3;
                v45 = v42 * a9;
                if (v29 < 8)
                {
                  v90 = 0;
                }

                else
                {
                  v46 = 0;
                  v47 = v41;
                  do
                  {
                    if (v33 < 1)
                    {
                      v63 = 0uLL;
                      v64 = 0uLL;
                      v65 = 0uLL;
                      v66 = 0uLL;
                      v59 = 0uLL;
                      v60 = 0uLL;
                      v61 = 0uLL;
                      v62 = 0uLL;
                      v55 = 0uLL;
                      v56 = 0uLL;
                      v57 = 0uLL;
                      v58 = 0uLL;
                      v48 = 0uLL;
                      v50 = 0uLL;
                      v52 = 0uLL;
                      v54 = 0uLL;
                    }

                    else
                    {
                      v48 = 0uLL;
                      v49 = v33;
                      v50 = 0uLL;
                      v51 = v47;
                      v52 = 0uLL;
                      v53 = (a10 + 264 * v42);
                      v54 = 0uLL;
                      v55 = 0uLL;
                      v56 = 0uLL;
                      v57 = 0uLL;
                      v58 = 0uLL;
                      v59 = 0uLL;
                      v60 = 0uLL;
                      v61 = 0uLL;
                      v62 = 0uLL;
                      v63 = 0uLL;
                      v64 = 0uLL;
                      v65 = 0uLL;
                      v66 = 0uLL;
                      do
                      {
                        v68 = v51[2];
                        v67 = v51[3];
                        v69 = v51[1];
                        v71 = *v53;
                        v70 = v53[1];
                        v53 += 2;
                        v64 = vmlsq_lane_f64(v64, v69, v71.f64[0], 0);
                        v63 = vmlsq_lane_f64(v63, *v51, v71.f64[0], 0);
                        v65 = vmlsq_lane_f64(v65, v68, v71.f64[0], 0);
                        v66 = vmlsq_lane_f64(v66, v67, v71.f64[0], 0);
                        v60 = vmlsq_laneq_f64(v60, v69, v71, 1);
                        v59 = vmlsq_laneq_f64(v59, *v51, v71, 1);
                        v61 = vmlsq_laneq_f64(v61, v68, v71, 1);
                        v62 = vmlsq_laneq_f64(v62, v67, v71, 1);
                        v56 = vmlsq_lane_f64(v56, v69, v70.f64[0], 0);
                        v55 = vmlsq_lane_f64(v55, *v51, v70.f64[0], 0);
                        v57 = vmlsq_lane_f64(v57, v68, v70.f64[0], 0);
                        v58 = vmlsq_lane_f64(v58, v67, v70.f64[0], 0);
                        v50 = vmlsq_laneq_f64(v50, v69, v70, 1);
                        v48 = vmlsq_laneq_f64(v48, *v51, v70, 1);
                        v52 = vmlsq_laneq_f64(v52, v68, v70, 1);
                        v51 = (v51 + v25);
                        v54 = vmlsq_laneq_f64(v54, v67, v70, 1);
                        --v49;
                      }

                      while (v49);
                    }

                    v72 = (a8 + 8 * (v45 + v46));
                    v73 = vaddq_f64(v64, v72[1]);
                    v74 = vaddq_f64(v63, *v72);
                    v75 = vaddq_f64(v66, v72[3]);
                    v72[2] = vaddq_f64(v65, v72[2]);
                    v72[3] = v75;
                    *v72 = v74;
                    v72[1] = v73;
                    v76 = (a8 + 8 * ((v42 | 1) * a9 + v46));
                    v77 = vaddq_f64(v61, v76[2]);
                    v78 = vaddq_f64(v60, v76[1]);
                    v79 = vaddq_f64(v62, v76[3]);
                    *v76 = vaddq_f64(v59, *v76);
                    v76[1] = v78;
                    v76[2] = v77;
                    v76[3] = v79;
                    v80 = (a8 + 8 * ((v42 | 2) * a9 + v46));
                    v81 = vaddq_f64(v57, v80[2]);
                    v82 = vaddq_f64(v56, v80[1]);
                    v83 = vaddq_f64(v58, v80[3]);
                    *v80 = vaddq_f64(v55, *v80);
                    v80[1] = v82;
                    v80[2] = v81;
                    v80[3] = v83;
                    v84 = (a8 + 8 * (v44 * a9 + v46));
                    v85 = vaddq_f64(v52, v84[2]);
                    v86 = vaddq_f64(v50, v84[1]);
                    v87 = vaddq_f64(v54, v84[3]);
                    *v84 = vaddq_f64(v48, *v84);
                    v84[1] = v86;
                    v84[2] = v85;
                    v84[3] = v87;
                    v88 = v46 + 8;
                    v89 = v46 + 15;
                    v47 += 4;
                    v46 += 8;
                  }

                  while (v89 < v123);
                  v90 = v88;
                  v29 = v123;
                }

                if (v90 < v29)
                {
                  v91 = (v43 + 8 * v90);
                  v92 = v44 * a9;
                  do
                  {
                    if (v33 < 1)
                    {
                      v97 = 0.0;
                      _D3 = 0.0;
                      v96 = 0.0;
                      _D1 = 0.0;
                    }

                    else
                    {
                      v93 = v33;
                      v94 = v91;
                      v95 = (a10 + 264 * v42);
                      v96 = 0.0;
                      v97 = 0.0;
                      do
                      {
                        _D5 = *v94;
                        _Q7 = *v95;
                        _Q6 = v95[1];
                        v95 += 2;
                        v97 = v97 - *&_Q7 * *v94;
                        __asm { FMLS            D3, D5, V7.D[1] }

                        v96 = v96 - *&_Q6 * *v94;
                        __asm { FMLS            D1, D5, V6.D[1] }

                        v94 = (v94 + v25);
                        --v93;
                      }

                      while (v93);
                    }

                    *(a8 + 8 * (v45 + v90)) = v97 + *(a8 + 8 * (v45 + v90));
                    *(a8 + 8 * ((v42 | 1) * a9 + v90)) = _D3 + *(a8 + 8 * ((v42 | 1) * a9 + v90));
                    *(a8 + 8 * ((v42 | 2) * a9 + v90)) = v96 + *(a8 + 8 * ((v42 | 2) * a9 + v90));
                    *(a8 + 8 * (v92 + v90)) = _D1 + *(a8 + 8 * (v92 + v90));
                    ++v90;
                    ++v91;
                  }

                  while (v90 != v123);
                }

                LODWORD(v107) = v42 + 4;
                v108 = v42 + 7;
                v42 += 4;
              }

              while (v108 < v27);
              v107 = v107;
              v28 = a4;
              v40 = v119;
            }

            if (v107 < v27)
            {
              do
              {
                if (v29 >= 1)
                {
                  v109 = 0;
                  v110 = v41;
                  do
                  {
                    v111 = 0.0;
                    if (v33 >= 1)
                    {
                      v112 = v33;
                      v113 = v110;
                      v114 = (a10 + ((8 * (v107 & 3)) | (1056 * (v107 >> 2))));
                      do
                      {
                        v115 = *v114;
                        v114 += 4;
                        v111 = v111 - *v113 * v115;
                        v113 = (v113 + v25);
                        --v112;
                      }

                      while (v112);
                    }

                    *(a8 + 8 * (v107 * a9 + v109)) = v111 + *(a8 + 8 * (v107 * a9 + v109));
                    ++v109;
                    ++v110;
                  }

                  while (v109 != v123);
                }

                ++v107;
              }

              while (v107 < v27);
            }

            v30 = v33 + v40;
          }

          while (v33 + v40 < a3);
        }

        a5 += 256;
        a8 += a9 << 8;
        v24 = v116 + 32;
        a2 = v117;
      }

      while (v116 + 32 < v117);
    }
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = 0;
      v118 = v13;
      v15 = a2 - v13;
      if (a2 - v13 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = a2 - v13;
      }

      v17 = v16;
      do
      {
        if (a3 - v14 >= 64)
        {
          v18 = 64;
        }

        else
        {
          v18 = a3 - v14;
        }

        v19 = v14;
        if (a3 - v14 < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = a7 + 16 * v14;
          do
          {
            v22 = *(v21 + 16 * v20);
            if (fabs(v22) == INFINITY)
            {
              v22 = 0.0;
            }

            if (v15 >= 1)
            {
              v23 = 0;
              do
              {
                *(a10 + (v20 << 9) + 8 * v23) = v22 * *(a5 + a6 * (8 * v19 + 8 * v20) + 8 * v23);
                ++v23;
              }

              while (v23 < v17);
            }

            ++v20;
          }

          while (v20 < v18);
        }

        result = cblas_dgemm_NEWLAPACK();
        v14 = v20 + v19;
      }

      while ((v20 + v19) < a3);
      a5 += 512;
      a8 += a9 << 9;
      a2 = v117;
      v13 = v118 + 64;
    }

    while (v118 + 64 < v117);
  }

  return result;
}

uint64_t sub_2367498E8(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, float32x4_t a12, uint64_t a13, uint64_t a14)
{
  v141 = result;
  __asm { FMOV            V0.4S, #-1.0 }

  v134 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v48 = 0;
      v49 = 8 * a6;
      v50 = vnegq_f64(_Q0);
      do
      {
        v136 = v48;
        v51 = a2 - v48;
        if (a2 - v48 >= 32)
        {
          v52 = 32;
        }

        else
        {
          v52 = a2 - v48;
        }

        v53 = v141;
        if (a3 >= 1)
        {
          v54 = 0;
          result = v52;
          do
          {
            if (a3 - v54 >= 32)
            {
              v55 = 32;
            }

            else
            {
              v55 = a3 - v54;
            }

            v139 = v54;
            v56 = 0;
            if (a3 - v54 >= 1)
            {
              v57 = a7 + 16 * v54;
              v58 = 8 * v54;
              do
              {
                v59 = (v57 + 8 * (2 * v56));
                v60 = *v59;
                v61 = v59[1];
                v62 = fabsf(*v59) == INFINITY;
                if (fabsf(v61) == INFINITY)
                {
                  v62 = 1;
                }

                if (v62)
                {
                  a12.f32[0] = 0.0;
                }

                else
                {
                  a12.f32[0] = v60;
                }

                if (v62)
                {
                  v63 = 0.0;
                }

                else
                {
                  v63 = v61;
                }

                v64 = vmulq_n_f32(v50, v63);
                v65 = 4 * v56;
                v66 = v58 + 8 * v56;
                if (v51 < 4)
                {
                  v73 = 0;
                }

                else
                {
                  v67 = 0;
                  v68 = vdupq_lane_s32(*a12.f32, 0);
                  v69 = (a14 + 8 * v65);
                  v70 = a6 * v66;
                  do
                  {
                    v71 = *(a5 + v70 + 16);
                    v72 = v67 + 7;
                    *v69 = vmlaq_f32(vmulq_f32(v64, vrev64q_s32(*(a5 + v70))), v68, *(a5 + v70));
                    v69[1] = vmlaq_f32(vmulq_f32(v64, vrev64q_s32(v71)), v68, v71);
                    v67 += 4;
                    v69 += 66;
                    v70 += 32;
                  }

                  while (v72 < v52);
                  v73 = v67;
                }

                if (v73 < v52)
                {
                  *a12.f32 = vdup_lane_s32(*a12.f32, 0);
                  v74 = a5 + a6 * v66;
                  do
                  {
                    *(a14 + 8 * ((33 * (v73 & 0x7FFFFFFC) + v65) | v73 & 3)) = vmla_f32(vmul_f32(*v64.f32, vrev64_s32(*(v74 + 8 * v73))), *a12.f32, *(v74 + 8 * v73));
                    ++v73;
                  }

                  while (v73 < v52);
                }

                ++v56;
              }

              while (v56 < v55);
            }

            __asm { FMOV            V2.2S, #-1.0 }

            if (v51 < 4)
            {
              v124 = 0;
            }

            else
            {
              v76 = 0;
              do
              {
                v77 = v76 | 3;
                v78 = v76 * a13;
                if (v53 < 4)
                {
                  v111 = 0;
                }

                else
                {
                  v79 = 0;
                  v80 = a4 + 8 * v139 * a6;
                  do
                  {
                    if (v56 < 1)
                    {
                      v90 = 0uLL;
                      v91 = 0uLL;
                      v88 = 0uLL;
                      v89 = 0uLL;
                      v86 = 0uLL;
                      v87 = 0uLL;
                      v81 = 0uLL;
                      v83 = 0uLL;
                    }

                    else
                    {
                      v81 = 0uLL;
                      v82 = v56;
                      v83 = 0uLL;
                      v84 = v80;
                      v85 = (a14 + 264 * v76);
                      v86 = 0uLL;
                      v87 = 0uLL;
                      v88 = 0uLL;
                      v89 = 0uLL;
                      v90 = 0uLL;
                      v91 = 0uLL;
                      do
                      {
                        v92 = *(v84 + 16);
                        v93 = vrev64q_s32(*v84);
                        v94 = vrev64q_s32(v92);
                        v96 = *v85;
                        v95 = v85[1];
                        v85 += 2;
                        v97 = vmulq_lane_f32(v50, *v96.f32, 1);
                        v91 = vsubq_f32(v91, vmlaq_n_f32(vmulq_f32(v94, v97), v92, v96.f32[0]));
                        v90 = vsubq_f32(v90, vmlaq_n_f32(vmulq_f32(v93, v97), *v84, v96.f32[0]));
                        v98 = vmulq_laneq_f32(v50, v96, 3);
                        v89 = vsubq_f32(v89, vmlaq_laneq_f32(vmulq_f32(v94, v98), v92, v96, 2));
                        v88 = vsubq_f32(v88, vmlaq_laneq_f32(vmulq_f32(v93, v98), *v84, v96, 2));
                        v99 = vmulq_lane_f32(v50, *v95.f32, 1);
                        v87 = vsubq_f32(v87, vmlaq_n_f32(vmulq_f32(v94, v99), v92, v95.f32[0]));
                        v86 = vsubq_f32(v86, vmlaq_n_f32(vmulq_f32(v93, v99), *v84, v95.f32[0]));
                        v100 = vmulq_laneq_f32(v50, v95, 3);
                        v83 = vsubq_f32(v83, vmlaq_laneq_f32(vmulq_f32(v94, v100), v92, v95, 2));
                        v81 = vsubq_f32(v81, vmlaq_laneq_f32(vmulq_f32(v93, v100), *v84, v95, 2));
                        v84 += v49;
                        --v82;
                      }

                      while (v82);
                    }

                    v101 = (a8 + 8 * (v78 + v79));
                    v102 = vaddq_f32(v91, v101[1]);
                    *v101 = vaddq_f32(v90, *v101);
                    v101[1] = v102;
                    v103 = (a8 + 8 * ((v76 | 1) * a13 + v79));
                    v104 = vaddq_f32(v89, v103[1]);
                    *v103 = vaddq_f32(v88, *v103);
                    v103[1] = v104;
                    v105 = (a8 + 8 * ((v76 | 2) * a13 + v79));
                    v106 = vaddq_f32(v87, v105[1]);
                    *v105 = vaddq_f32(v86, *v105);
                    v105[1] = v106;
                    v107 = (a8 + 8 * (v77 * a13 + v79));
                    v108 = v107[1];
                    a12 = vaddq_f32(v81, *v107);
                    *v107 = a12;
                    v107[1] = vaddq_f32(v83, v108);
                    v109 = v79 + 4;
                    v110 = v79 + 7;
                    v80 += 32;
                    v79 += 4;
                  }

                  while (v110 < v141);
                  v111 = v109;
                  v53 = v141;
                }

                if (v111 < v53)
                {
                  v112 = a4 + v49 * v139 + 8 * v111;
                  v113 = v77 * a13;
                  do
                  {
                    if (v56 < 1)
                    {
                      v120 = 0;
                      v119 = 0;
                      v118 = 0;
                      v114 = 0;
                    }

                    else
                    {
                      v114 = 0;
                      v115 = v56;
                      v116 = v112;
                      v117 = (a14 + 264 * v76);
                      v118 = 0;
                      v119 = 0;
                      v120 = 0;
                      do
                      {
                        v121 = vrev64_s32(*v116);
                        v123 = *v117;
                        v122 = v117[1];
                        v117 += 2;
                        v120 = vsub_f32(v120, vmla_n_f32(vmul_f32(v121, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v123.f32, 1)), *v116, v123.f32[0]));
                        v119 = vsub_f32(v119, vmla_laneq_f32(vmul_f32(v121, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v123, 3)), *v116, v123, 2));
                        v118 = vsub_f32(v118, vmla_n_f32(vmul_f32(v121, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v122.f32, 1)), *v116, v122.f32[0]));
                        v114 = vsub_f32(v114, vmla_laneq_f32(vmul_f32(v121, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v122, 3)), *v116, v122, 2));
                        v116 = (v116 + v49);
                        --v115;
                      }

                      while (v115);
                    }

                    *(a8 + 8 * (v78 + v111)) = vadd_f32(v120, *(a8 + 8 * (v78 + v111)));
                    *(a8 + 8 * ((v76 | 1) * a13 + v111)) = vadd_f32(v119, *(a8 + 8 * ((v76 | 1) * a13 + v111)));
                    *(a8 + 8 * ((v76 | 2) * a13 + v111)) = vadd_f32(v118, *(a8 + 8 * ((v76 | 2) * a13 + v111)));
                    *a12.f32 = vadd_f32(v114, *(a8 + 8 * (v113 + v111)));
                    *(a8 + 8 * (v113 + v111++)) = a12.i64[0];
                    v112 += 8;
                  }

                  while (v111 != v141);
                }

                LODWORD(v124) = v76 + 4;
                v125 = v76 + 7;
                v76 += 4;
              }

              while (v125 < v52);
              v124 = v124;
            }

            if (v124 < v52)
            {
              do
              {
                if (v53 >= 1)
                {
                  v126 = 0;
                  v127 = v124 * a13;
                  v128 = (a4 + 8 * v139 * a6);
                  do
                  {
                    v129 = 0;
                    if (v56 >= 1)
                    {
                      v130 = v56;
                      v131 = v128;
                      v132 = (a14 + 8 * ((33 * (v124 & 0x7FFFFFFC)) & 0xFFFFFFFC | v124 & 3));
                      do
                      {
                        v133 = *v132;
                        v132 += 4;
                        v129 = vsub_f32(v129, vmla_n_f32(vmul_f32(vrev64_s32(*v131), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), v133, 1)), *v131, v133.f32[0]));
                        v131 = (v131 + v49);
                        --v130;
                      }

                      while (v130);
                    }

                    *a12.f32 = vadd_f32(v129, *(a8 + 8 * (v127 + v126)));
                    *(a8 + 8 * (v127 + v126++)) = a12.i64[0];
                    ++v128;
                  }

                  while (v126 != v141);
                }

                ++v124;
              }

              while (v124 < v52);
            }

            v54 = v56 + v139;
          }

          while (v56 + v139 < a3);
        }

        a5 += 256;
        a8 += a13 << 8;
        a2 = v134;
        v48 = v136 + 32;
      }

      while (v136 + 32 < v134);
    }
  }

  else
  {
    v23 = 0;
    v138 = vnegq_f64(_Q0);
    v24 = a2;
    do
    {
      v25 = 0;
      v135 = v23;
      v26 = v24 - v23;
      if (v24 - v23 >= 64)
      {
        v27 = 64;
      }

      else
      {
        v27 = v24 - v23;
      }

      v28 = v27;
      do
      {
        if (a3 - v25 >= 64)
        {
          v29 = 64;
        }

        else
        {
          v29 = a3 - v25;
        }

        v30 = v25;
        if (a3 - v25 < 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 0;
          v32 = a7 + 16 * v25;
          do
          {
            v33 = (v32 + 16 * v31);
            v34 = *v33;
            v35 = v33[1];
            v36 = fabsf(*v33) == INFINITY;
            if (fabsf(v35) == INFINITY)
            {
              v36 = 1;
            }

            if (v36)
            {
              *&a10 = 0.0;
            }

            else
            {
              *&a10 = v34;
            }

            if (v36)
            {
              v37 = 0.0;
            }

            else
            {
              v37 = v35;
            }

            v38 = vmulq_n_f32(v138, v37);
            v39 = 8 * v30 + 8 * v31;
            if (v26 < 4)
            {
              v46 = 0;
            }

            else
            {
              v40 = 0;
              v41 = vdupq_lane_s32(*&a10, 0);
              v42 = (a14 + (v31 << 9));
              v43 = a6 * v39;
              do
              {
                v44 = *(a5 + v43 + 16);
                v45 = v40 + 7;
                *v42 = vmlaq_f32(vmulq_f32(v38, vrev64q_s32(*(a5 + v43))), v41, *(a5 + v43));
                v42[1] = vmlaq_f32(vmulq_f32(v38, vrev64q_s32(v44)), v41, v44);
                v42 += 2;
                v40 += 4;
                v43 += 32;
              }

              while (v45 < v28);
              v46 = v40;
            }

            if (v46 < v28)
            {
              a10 = COERCE_DOUBLE(vdup_lane_s32(*&a10, 0));
              v47 = a5 + a6 * v39;
              do
              {
                *(a14 + (v31 << 9) + 8 * v46) = vmla_f32(vmul_f32(*v38.f32, vrev64_s32(*(v47 + 8 * v46))), *&a10, *(v47 + 8 * v46));
                ++v46;
              }

              while (v46 < v28);
            }

            ++v31;
          }

          while (v31 < v29);
        }

        result = cblas_cgemm_NEWLAPACK();
        v25 = v31 + v30;
      }

      while ((v31 + v30) < a3);
      a5 += 512;
      a8 += a13 << 9;
      v24 = v134;
      v23 = v135 + 64;
    }

    while (v135 + 64 < v134);
  }

  return result;
}

uint64_t sub_23674A3FC(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v195 = result;
  v191 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v42 = 0;
      v43 = 16 * a6;
      v44 = xmmword_23681FB50;
      do
      {
        v190 = v42;
        v45 = a2 - v42;
        if (a2 - v42 >= 32)
        {
          v46 = 32;
        }

        else
        {
          v46 = a2 - v42;
        }

        v47 = a4;
        v48 = v195;
        if (a3 >= 1)
        {
          v49 = 0;
          result = v46;
          do
          {
            if (a3 - v49 >= 32)
            {
              v50 = 32;
            }

            else
            {
              v50 = a3 - v49;
            }

            v193 = v49;
            v51 = 0;
            if (a3 - v49 >= 1)
            {
              v52 = a7 + 32 * v49;
              v53 = 16 * v49;
              do
              {
                v54 = (v52 + 16 * (2 * v51));
                v55 = *v54;
                v56 = v54[1];
                v57 = fabs(*v54) == INFINITY;
                if (fabs(v56) == INFINITY)
                {
                  v57 = 1;
                }

                if (v57)
                {
                  v58 = 0.0;
                }

                else
                {
                  v58 = v55;
                }

                if (v57)
                {
                  v59 = 0.0;
                }

                else
                {
                  v59 = v56;
                }

                v60 = vmulq_n_f64(v44, v59);
                v61 = 4 * v51;
                v62 = v53 + 16 * v51;
                if (v45 < 4)
                {
                  v71 = 0;
                }

                else
                {
                  v63 = 0;
                  v64 = vdupq_lane_s64(*&v58, 0);
                  v65 = (a10 + 16 * v61);
                  v66 = a6 * v62;
                  do
                  {
                    v67 = vmlaq_f64(vmulq_f64(v60, vextq_s8(*(a5 + v66 + 16), *(a5 + v66 + 16), 8uLL)), v64, *(a5 + v66 + 16));
                    v68 = vmlaq_f64(vmulq_f64(v60, vextq_s8(*(a5 + v66), *(a5 + v66), 8uLL)), v64, *(a5 + v66));
                    v69 = vmlaq_f64(vmulq_f64(v60, vextq_s8(*(a5 + v66 + 48), *(a5 + v66 + 48), 8uLL)), v64, *(a5 + v66 + 48));
                    v65[2] = vmlaq_f64(vmulq_f64(v60, vextq_s8(*(a5 + v66 + 32), *(a5 + v66 + 32), 8uLL)), v64, *(a5 + v66 + 32));
                    v65[3] = v69;
                    v70 = v63 + 7;
                    *v65 = v68;
                    v65[1] = v67;
                    v63 += 4;
                    v65 += 132;
                    v66 += 64;
                  }

                  while (v70 < v46);
                  v71 = v63;
                }

                if (v71 < v46)
                {
                  v72 = vdupq_lane_s64(*&v58, 0);
                  v73 = a5 + a6 * v62;
                  do
                  {
                    *(a10 + 16 * ((33 * (v71 & 0x7FFFFFFC) + v61) | v71 & 3)) = vmlaq_f64(vmulq_f64(v60, vextq_s8(*(v73 + 16 * v71), *(v73 + 16 * v71), 8uLL)), v72, *(v73 + 16 * v71));
                    ++v71;
                  }

                  while (v71 < v46);
                }

                ++v51;
              }

              while (v51 < v50);
            }

            v74 = v47 + 16 * v193 * a6;
            if (v45 < 4)
            {
              v181 = 0;
            }

            else
            {
              v75 = 0;
              v76 = v47 + v43 * v193;
              do
              {
                v77 = v75 | 3;
                v78 = v75 * a9;
                if (v48 < 4)
                {
                  v166 = 0;
                }

                else
                {
                  v79 = 0;
                  v80 = v74;
                  do
                  {
                    if (v51 < 1)
                    {
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v88 = 0uLL;
                      v89 = 0uLL;
                      v90 = 0uLL;
                      v91 = 0uLL;
                      v81 = 0uLL;
                      v83 = 0uLL;
                      v85 = 0uLL;
                      v87 = 0uLL;
                    }

                    else
                    {
                      v81 = 0uLL;
                      v82 = v51;
                      v83 = 0uLL;
                      v84 = v80;
                      v85 = 0uLL;
                      v86 = (a10 + 528 * v75);
                      v87 = 0uLL;
                      v88 = 0uLL;
                      v89 = 0uLL;
                      v90 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      do
                      {
                        v196 = v88;
                        v197 = v94;
                        v199 = v95;
                        v200 = v92;
                        v201 = v90;
                        v202 = v81;
                        v101 = *(v84 + 32);
                        v100 = *(v84 + 48);
                        v102 = *(v84 + 16);
                        v103 = vextq_s8(*v84, *v84, 8uLL);
                        v104 = vextq_s8(v102, v102, 8uLL);
                        v105 = vextq_s8(v101, v101, 8uLL);
                        v106 = vextq_s8(v100, v100, 8uLL);
                        v107 = v86[2];
                        v108 = v86[3];
                        v110 = *v86;
                        v109 = v86[1];
                        v86 += 4;
                        v111 = vmulq_laneq_f64(xmmword_23681FB50, v110, 1);
                        v112 = vmulq_f64(v106, v111);
                        v113 = vmulq_f64(v105, v111);
                        v114 = vmulq_f64(v104, v111);
                        v115 = vmlaq_n_f64(vmulq_f64(v103, v111), *v84, v110.f64[0]);
                        v116 = vmlaq_n_f64(v114, v102, v110.f64[0]);
                        v117 = vmlaq_n_f64(v113, v101, v110.f64[0]);
                        v118 = vmlaq_n_f64(v112, v100, v110.f64[0]);
                        v119 = vmulq_laneq_f64(xmmword_23681FB50, v109, 1);
                        v120 = v91;
                        v121 = v83;
                        v122 = vmulq_f64(v106, v119);
                        v123 = v85;
                        v124 = vmulq_f64(v105, v119);
                        v125 = vmulq_f64(v104, v119);
                        v126 = vmlaq_n_f64(vmulq_f64(v103, v119), *v84, v109.f64[0]);
                        v127 = vmlaq_n_f64(v125, v102, v109.f64[0]);
                        v128 = vmlaq_n_f64(v124, v101, v109.f64[0]);
                        v129 = vmlaq_n_f64(v122, v100, v109.f64[0]);
                        v130 = vmulq_laneq_f64(xmmword_23681FB50, v107, 1);
                        v131 = v87;
                        v132 = vmulq_f64(v106, v130);
                        v133 = v89;
                        v134 = vmulq_f64(v105, v130);
                        v135 = vmulq_f64(v104, v130);
                        v136 = vmlaq_n_f64(vmulq_f64(v103, v130), *v84, v107.f64[0]);
                        v137 = vmlaq_n_f64(v135, v102, v107.f64[0]);
                        v138 = vmlaq_n_f64(v134, v101, v107.f64[0]);
                        v139 = vmlaq_n_f64(v132, v100, v107.f64[0]);
                        v140 = vmulq_laneq_f64(xmmword_23681FB50, v108, 1);
                        v141 = vmlaq_n_f64(vmulq_f64(v103, v140), *v84, v108.f64[0]);
                        v142 = vmlaq_n_f64(vmulq_f64(v104, v140), v102, v108.f64[0]);
                        v143 = vmlaq_n_f64(vmulq_f64(v105, v140), v101, v108.f64[0]);
                        v144 = vmlaq_n_f64(vmulq_f64(v106, v140), v100, v108.f64[0]);
                        v99 = vsubq_f64(v99, v118);
                        v98 = vsubq_f64(v98, v117);
                        v97 = vsubq_f64(v97, v116);
                        v96 = vsubq_f64(v96, v115);
                        v95 = vsubq_f64(v199, v129);
                        v145 = v121;
                        v146 = v120;
                        v94 = vsubq_f64(v197, v128);
                        v147 = v123;
                        v93 = vsubq_f64(v93, v127);
                        v92 = vsubq_f64(v200, v126);
                        v91 = vsubq_f64(v146, v139);
                        v90 = vsubq_f64(v201, v138);
                        v89 = vsubq_f64(v133, v137);
                        v88 = vsubq_f64(v196, v136);
                        v87 = vsubq_f64(v131, v144);
                        v85 = vsubq_f64(v147, v143);
                        v83 = vsubq_f64(v145, v142);
                        v81 = vsubq_f64(v202, v141);
                        v84 += v43;
                        --v82;
                      }

                      while (v82);
                    }

                    v148 = (a8 + 16 * (v78 + v79));
                    v149 = vaddq_f64(v97, v148[1]);
                    v150 = vaddq_f64(v96, *v148);
                    v151 = vaddq_f64(v99, v148[3]);
                    v148[2] = vaddq_f64(v98, v148[2]);
                    v148[3] = v151;
                    *v148 = v150;
                    v148[1] = v149;
                    v152 = (a8 + 16 * ((v75 | 1) * a9 + v79));
                    v153 = vaddq_f64(v94, v152[2]);
                    v154 = vaddq_f64(v93, v152[1]);
                    v155 = vaddq_f64(v95, v152[3]);
                    *v152 = vaddq_f64(v92, *v152);
                    v152[1] = v154;
                    v152[2] = v153;
                    v152[3] = v155;
                    v156 = (a8 + 16 * ((v75 | 2) * a9 + v79));
                    v157 = vaddq_f64(v90, v156[2]);
                    v158 = vaddq_f64(v89, v156[1]);
                    v159 = vaddq_f64(v91, v156[3]);
                    *v156 = vaddq_f64(v88, *v156);
                    v156[1] = v158;
                    v156[2] = v157;
                    v156[3] = v159;
                    v160 = (a8 + 16 * (v77 * a9 + v79));
                    v161 = vaddq_f64(v85, v160[2]);
                    v162 = vaddq_f64(v83, v160[1]);
                    v163 = vaddq_f64(v87, v160[3]);
                    *v160 = vaddq_f64(v81, *v160);
                    v160[1] = v162;
                    v160[2] = v161;
                    v160[3] = v163;
                    v164 = v79 + 4;
                    v165 = v79 + 7;
                    v80 += 64;
                    v79 += 4;
                  }

                  while (v165 < v195);
                  v166 = v164;
                  v48 = v195;
                  v44 = xmmword_23681FB50;
                }

                if (v166 < v48)
                {
                  v167 = (v76 + 16 * v166);
                  v168 = v77 * a9;
                  do
                  {
                    if (v51 < 1)
                    {
                      v175 = 0uLL;
                      v174 = 0uLL;
                      v173 = 0uLL;
                      v169 = 0uLL;
                    }

                    else
                    {
                      v169 = 0uLL;
                      v170 = v51;
                      v171 = v167;
                      v172 = (a10 + 528 * v75);
                      v173 = 0uLL;
                      v174 = 0uLL;
                      v175 = 0uLL;
                      do
                      {
                        v176 = vextq_s8(*v171, *v171, 8uLL);
                        v178 = v172[2];
                        v177 = v172[3];
                        v180 = *v172;
                        v179 = v172[1];
                        v172 += 4;
                        v175 = vsubq_f64(v175, vmlaq_n_f64(vmulq_f64(v176, vmulq_laneq_f64(v44, v180, 1)), *v171, v180.f64[0]));
                        v174 = vsubq_f64(v174, vmlaq_n_f64(vmulq_f64(v176, vmulq_laneq_f64(v44, v179, 1)), *v171, v179.f64[0]));
                        v173 = vsubq_f64(v173, vmlaq_n_f64(vmulq_f64(v176, vmulq_laneq_f64(v44, v178, 1)), *v171, v178.f64[0]));
                        v169 = vsubq_f64(v169, vmlaq_n_f64(vmulq_f64(v176, vmulq_laneq_f64(v44, v177, 1)), *v171, v177.f64[0]));
                        v171 = (v171 + v43);
                        --v170;
                      }

                      while (v170);
                    }

                    *(a8 + 16 * (v78 + v166)) = vaddq_f64(v175, *(a8 + 16 * (v78 + v166)));
                    *(a8 + 16 * ((v75 | 1) * a9 + v166)) = vaddq_f64(v174, *(a8 + 16 * ((v75 | 1) * a9 + v166)));
                    *(a8 + 16 * ((v75 | 2) * a9 + v166)) = vaddq_f64(v173, *(a8 + 16 * ((v75 | 2) * a9 + v166)));
                    *(a8 + 16 * (v168 + v166)) = vaddq_f64(v169, *(a8 + 16 * (v168 + v166)));
                    ++v166;
                    ++v167;
                  }

                  while (v166 != v195);
                }

                LODWORD(v181) = v75 + 4;
                v182 = v75 + 7;
                v75 += 4;
              }

              while (v182 < v46);
              v181 = v181;
              v47 = a4;
            }

            if (v181 < v46)
            {
              do
              {
                if (v48 >= 1)
                {
                  v183 = 0;
                  v184 = v74;
                  do
                  {
                    v185 = 0uLL;
                    if (v51 >= 1)
                    {
                      v186 = v51;
                      v187 = v184;
                      v188 = (a10 + 16 * ((33 * (v181 & 0x7FFFFFFC)) & 0xFFFFFFFC | v181 & 3));
                      do
                      {
                        v189 = *v188;
                        v188 += 4;
                        v185 = vsubq_f64(v185, vmlaq_n_f64(vmulq_f64(vextq_s8(*v187, *v187, 8uLL), vmulq_laneq_f64(v44, v189, 1)), *v187, v189.f64[0]));
                        v187 = (v187 + v43);
                        --v186;
                      }

                      while (v186);
                    }

                    *(a8 + 16 * (v181 * a9 + v183)) = vaddq_f64(v185, *(a8 + 16 * (v181 * a9 + v183)));
                    ++v183;
                    ++v184;
                  }

                  while (v183 != v195);
                }

                ++v181;
              }

              while (v181 < v46);
            }

            v49 = v51 + v193;
          }

          while (v51 + v193 < a3);
        }

        a5 += 512;
        a8 += a9 << 9;
        a2 = v191;
        v42 = v190 + 32;
      }

      while (v190 + 32 < v191);
    }
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = 0;
      v198 = v14;
      v16 = a2 - v14;
      if (a2 - v14 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = a2 - v14;
      }

      v18 = v17;
      do
      {
        if (a3 - v15 >= 64)
        {
          v19 = 64;
        }

        else
        {
          v19 = a3 - v15;
        }

        v20 = v15;
        if (a3 - v15 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a7 + 32 * v15;
          do
          {
            v23 = (v22 + 32 * v21);
            v24 = *v23;
            v25 = v23[1];
            v26 = fabs(*v23) == INFINITY;
            if (fabs(v25) == INFINITY)
            {
              v26 = 1;
            }

            if (v26)
            {
              v27 = 0.0;
            }

            else
            {
              v27 = v24;
            }

            if (v26)
            {
              v28 = 0.0;
            }

            else
            {
              v28 = v25;
            }

            v29 = vmulq_n_f64(xmmword_23681FB50, v28);
            v30 = 16 * v20 + 16 * v21;
            if (v16 < 4)
            {
              v39 = 0;
            }

            else
            {
              v31 = 0;
              v32 = vdupq_lane_s64(*&v27, 0);
              v33 = (a10 + (v21 << 10));
              v34 = a6 * v30;
              do
              {
                v35 = vmlaq_f64(vmulq_f64(v29, vextq_s8(*(a5 + v34 + 16), *(a5 + v34 + 16), 8uLL)), v32, *(a5 + v34 + 16));
                v36 = vmlaq_f64(vmulq_f64(v29, vextq_s8(*(a5 + v34), *(a5 + v34), 8uLL)), v32, *(a5 + v34));
                v37 = vmlaq_f64(vmulq_f64(v29, vextq_s8(*(a5 + v34 + 48), *(a5 + v34 + 48), 8uLL)), v32, *(a5 + v34 + 48));
                v33[2] = vmlaq_f64(vmulq_f64(v29, vextq_s8(*(a5 + v34 + 32), *(a5 + v34 + 32), 8uLL)), v32, *(a5 + v34 + 32));
                v33[3] = v37;
                v38 = v31 + 7;
                *v33 = v36;
                v33[1] = v35;
                v33 += 4;
                v31 += 4;
                v34 += 64;
              }

              while (v38 < v18);
              v39 = v31;
            }

            if (v39 < v18)
            {
              v40 = vdupq_lane_s64(*&v27, 0);
              v41 = a5 + a6 * v30;
              do
              {
                *(a10 + (v21 << 10) + 16 * v39) = vmlaq_f64(vmulq_f64(v29, vextq_s8(*(v41 + 16 * v39), *(v41 + 16 * v39), 8uLL)), v40, *(v41 + 16 * v39));
                ++v39;
              }

              while (v39 < v18);
            }

            ++v21;
          }

          while (v21 < v19);
        }

        result = cblas_zgemm_NEWLAPACK();
        v15 = v21 + v20;
      }

      while ((v21 + v20) < a3);
      a5 += 1024;
      a8 += a9 << 10;
      v14 = v198 + 64;
      a2 = v191;
    }

    while (v198 + 64 < v191);
  }

  return result;
}

uint64_t sub_23674B1A8(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float32x4_t a13, uint64_t a14, uint64_t a15)
{
  v151 = result;
  __asm
  {
    FMOV            V0.4S, #-1.0
    FMOV            V8.2S, #1.0
    FMOV            V1.4S, #1.0
  }

  v143 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v54 = 0;
      v55 = 8 * a6;
      v56 = vnegq_f64(_Q0);
      v57 = vnegq_f64(_Q1);
      do
      {
        v146 = v54;
        v58 = a2 - v54;
        if (a2 - v54 >= 32)
        {
          v59 = 32;
        }

        else
        {
          v59 = a2 - v54;
        }

        v60 = v151;
        if (a3 >= 1)
        {
          v61 = 0;
          result = v59;
          do
          {
            if (a3 - v61 >= 32)
            {
              v62 = 32;
            }

            else
            {
              v62 = a3 - v61;
            }

            v149 = v61;
            v63 = 0;
            if (a3 - v61 >= 1)
            {
              v64 = a7 + 16 * v61;
              v65 = 8 * v61;
              do
              {
                v66 = (v64 + 8 * (2 * v63));
                v67 = *v66;
                v68 = v66[1];
                v69 = fabsf(*v66) == INFINITY;
                if (fabsf(v68) == INFINITY)
                {
                  v69 = 1;
                }

                if (v69)
                {
                  a13.f32[0] = 0.0;
                }

                else
                {
                  a13.f32[0] = v67;
                }

                if (v69)
                {
                  v70 = 0.0;
                }

                else
                {
                  v70 = v68;
                }

                v71 = vmulq_n_f32(v56, v70);
                v72 = 4 * v63;
                v73 = v65 + 8 * v63;
                if (v58 < 4)
                {
                  v81 = 0;
                }

                else
                {
                  v74 = 0;
                  v75 = vdupq_lane_s32(*a13.f32, 0);
                  v76 = (a15 + 8 * v72);
                  v77 = a6 * v73;
                  do
                  {
                    v78 = vmulq_f32(*(a5 + v77 + 16), v57);
                    v79 = vmulq_f32(*(a5 + v77), v57);
                    v80 = v74 + 7;
                    *v76 = vmlaq_f32(vmulq_f32(v71, vrev64q_s32(v79)), v75, v79);
                    v76[1] = vmlaq_f32(vmulq_f32(v71, vrev64q_s32(v78)), v75, v78);
                    v74 += 4;
                    v76 += 66;
                    v77 += 32;
                  }

                  while (v80 < v59);
                  v81 = v74;
                }

                if (v81 < v59)
                {
                  *a13.f32 = vdup_lane_s32(*a13.f32, 0);
                  v82 = a5 + a6 * v73;
                  do
                  {
                    v83 = vmul_f32(*(v82 + 8 * v81), COERCE_FLOAT32X2_T(-_D8));
                    *(a15 + 8 * ((33 * (v81 & 0x7FFFFFFC) + v72) | v81 & 3)) = vmla_f32(vmul_f32(*v71.f32, vrev64_s32(v83)), *a13.f32, v83);
                    ++v81;
                  }

                  while (v81 < v59);
                }

                ++v63;
              }

              while (v63 < v62);
            }

            __asm { FMOV            V3.2S, #-1.0 }

            if (v58 < 4)
            {
              v133 = 0;
            }

            else
            {
              v85 = 0;
              do
              {
                v86 = v85 | 3;
                v87 = v85 * a14;
                if (v60 < 4)
                {
                  v120 = 0;
                }

                else
                {
                  v88 = 0;
                  v89 = a4 + 8 * v149 * a6;
                  do
                  {
                    if (v63 < 1)
                    {
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v90 = 0uLL;
                      v92 = 0uLL;
                    }

                    else
                    {
                      v90 = 0uLL;
                      v91 = v63;
                      v92 = 0uLL;
                      v93 = v89;
                      v94 = (a15 + 264 * v85);
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      do
                      {
                        v101 = *(v93 + 16);
                        v102 = vrev64q_s32(*v93);
                        v103 = vrev64q_s32(v101);
                        v105 = *v94;
                        v104 = v94[1];
                        v94 += 2;
                        v106 = vmulq_lane_f32(v56, *v105.f32, 1);
                        v100 = vsubq_f32(v100, vmlaq_n_f32(vmulq_f32(v103, v106), v101, v105.f32[0]));
                        v99 = vsubq_f32(v99, vmlaq_n_f32(vmulq_f32(v102, v106), *v93, v105.f32[0]));
                        v107 = vmulq_laneq_f32(v56, v105, 3);
                        v98 = vsubq_f32(v98, vmlaq_laneq_f32(vmulq_f32(v103, v107), v101, v105, 2));
                        v97 = vsubq_f32(v97, vmlaq_laneq_f32(vmulq_f32(v102, v107), *v93, v105, 2));
                        v108 = vmulq_lane_f32(v56, *v104.f32, 1);
                        v96 = vsubq_f32(v96, vmlaq_n_f32(vmulq_f32(v103, v108), v101, v104.f32[0]));
                        v95 = vsubq_f32(v95, vmlaq_n_f32(vmulq_f32(v102, v108), *v93, v104.f32[0]));
                        v109 = vmulq_laneq_f32(v56, v104, 3);
                        v92 = vsubq_f32(v92, vmlaq_laneq_f32(vmulq_f32(v103, v109), v101, v104, 2));
                        v90 = vsubq_f32(v90, vmlaq_laneq_f32(vmulq_f32(v102, v109), *v93, v104, 2));
                        v93 += v55;
                        --v91;
                      }

                      while (v91);
                    }

                    v110 = (a8 + 8 * (v87 + v88));
                    v111 = vaddq_f32(v100, v110[1]);
                    *v110 = vaddq_f32(v99, *v110);
                    v110[1] = v111;
                    v112 = (a8 + 8 * ((v85 | 1) * a14 + v88));
                    v113 = vaddq_f32(v98, v112[1]);
                    *v112 = vaddq_f32(v97, *v112);
                    v112[1] = v113;
                    v114 = (a8 + 8 * ((v85 | 2) * a14 + v88));
                    v115 = v114[1];
                    *v114 = vaddq_f32(v95, *v114);
                    v114[1] = vaddq_f32(v96, v115);
                    v116 = (a8 + 8 * (v86 * a14 + v88));
                    v117 = v116[1];
                    a13 = vaddq_f32(v90, *v116);
                    *v116 = a13;
                    v116[1] = vaddq_f32(v92, v117);
                    v118 = v88 + 4;
                    v119 = v88 + 7;
                    v89 += 32;
                    v88 += 4;
                  }

                  while (v119 < v151);
                  v120 = v118;
                  v60 = v151;
                }

                if (v120 < v60)
                {
                  v121 = a4 + v55 * v149 + 8 * v120;
                  v122 = v86 * a14;
                  do
                  {
                    if (v63 < 1)
                    {
                      v129 = 0;
                      v128 = 0;
                      v127 = 0;
                      v123 = 0;
                    }

                    else
                    {
                      v123 = 0;
                      v124 = v63;
                      v125 = v121;
                      v126 = (a15 + 264 * v85);
                      v127 = 0;
                      v128 = 0;
                      v129 = 0;
                      do
                      {
                        v130 = vrev64_s32(*v125);
                        v132 = *v126;
                        v131 = v126[1];
                        v126 += 2;
                        v129 = vsub_f32(v129, vmla_n_f32(vmul_f32(v130, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v132.f32, 1)), *v125, v132.f32[0]));
                        v128 = vsub_f32(v128, vmla_laneq_f32(vmul_f32(v130, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v132, 3)), *v125, v132, 2));
                        v127 = vsub_f32(v127, vmla_n_f32(vmul_f32(v130, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v131.f32, 1)), *v125, v131.f32[0]));
                        v123 = vsub_f32(v123, vmla_laneq_f32(vmul_f32(v130, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v131, 3)), *v125, v131, 2));
                        v125 = (v125 + v55);
                        --v124;
                      }

                      while (v124);
                    }

                    *(a8 + 8 * (v87 + v120)) = vadd_f32(v129, *(a8 + 8 * (v87 + v120)));
                    *(a8 + 8 * ((v85 | 1) * a14 + v120)) = vadd_f32(v128, *(a8 + 8 * ((v85 | 1) * a14 + v120)));
                    *(a8 + 8 * ((v85 | 2) * a14 + v120)) = vadd_f32(v127, *(a8 + 8 * ((v85 | 2) * a14 + v120)));
                    *a13.f32 = vadd_f32(v123, *(a8 + 8 * (v122 + v120)));
                    *(a8 + 8 * (v122 + v120++)) = a13.i64[0];
                    v121 += 8;
                  }

                  while (v120 != v151);
                }

                LODWORD(v133) = v85 + 4;
                v134 = v85 + 7;
                v85 += 4;
              }

              while (v134 < v59);
              v133 = v133;
            }

            if (v133 < v59)
            {
              do
              {
                if (v60 >= 1)
                {
                  v135 = 0;
                  v136 = v133 * a14;
                  v137 = (a4 + 8 * v149 * a6);
                  do
                  {
                    v138 = 0;
                    if (v63 >= 1)
                    {
                      v139 = v63;
                      v140 = v137;
                      v141 = (a15 + 8 * ((33 * (v133 & 0x7FFFFFFC)) & 0xFFFFFFFC | v133 & 3));
                      do
                      {
                        v142 = *v141;
                        v141 += 4;
                        v138 = vsub_f32(v138, vmla_n_f32(vmul_f32(vrev64_s32(*v140), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), v142, 1)), *v140, v142.f32[0]));
                        v140 = (v140 + v55);
                        --v139;
                      }

                      while (v139);
                    }

                    *a13.f32 = vadd_f32(v138, *(a8 + 8 * (v136 + v135)));
                    *(a8 + 8 * (v136 + v135++)) = a13.i64[0];
                    ++v137;
                  }

                  while (v135 != v151);
                }

                ++v133;
              }

              while (v133 < v59);
            }

            v61 = v63 + v149;
          }

          while (v63 + v149 < a3);
        }

        a5 += 256;
        a8 += a14 << 8;
        v54 = v146 + 32;
        a2 = v143;
      }

      while (v146 + 32 < v143);
    }
  }

  else
  {
    v26 = 0;
    v145 = vnegq_f64(_Q0);
    v27 = vnegq_f64(_Q1);
    v28 = a2;
    v148 = v27;
    do
    {
      v29 = 0;
      v144 = v26;
      v30 = v28 - v26;
      if (v28 - v26 >= 64)
      {
        v31 = 64;
      }

      else
      {
        v31 = v28 - v26;
      }

      v32 = v31;
      do
      {
        if (a3 - v29 >= 64)
        {
          v33 = 64;
        }

        else
        {
          v33 = a3 - v29;
        }

        v34 = v29;
        if (a3 - v29 < 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = 0;
          v36 = a7 + 16 * v29;
          do
          {
            v37 = (v36 + 16 * v35);
            v38 = *v37;
            v39 = v37[1];
            v40 = fabsf(*v37) == INFINITY;
            if (fabsf(v39) == INFINITY)
            {
              v40 = 1;
            }

            if (v40)
            {
              *_Q1.f64 = 0.0;
            }

            else
            {
              *_Q1.f64 = v38;
            }

            if (v40)
            {
              v41 = 0.0;
            }

            else
            {
              v41 = v39;
            }

            v42 = vmulq_n_f32(v145, v41);
            v43 = 8 * v34 + 8 * v35;
            if (v30 < 4)
            {
              v51 = 0;
            }

            else
            {
              v44 = 0;
              v45 = vdupq_lane_s32(*&_Q1.f64[0], 0);
              v46 = (a15 + (v35 << 9));
              v47 = a6 * v43;
              do
              {
                v48 = vmulq_f32(*(a5 + v47 + 16), v27);
                v49 = vmulq_f32(*(a5 + v47), v27);
                v50 = v44 + 7;
                *v46 = vmlaq_f32(vmulq_f32(v42, vrev64q_s32(v49)), v45, v49);
                v46[1] = vmlaq_f32(vmulq_f32(v42, vrev64q_s32(v48)), v45, v48);
                v46 += 2;
                v44 += 4;
                v47 += 32;
              }

              while (v50 < v32);
              v51 = v44;
            }

            if (v51 < v32)
            {
              *&_Q1.f64[0] = vdup_lane_s32(*&_Q1.f64[0], 0);
              v52 = a5 + a6 * v43;
              do
              {
                v53 = vmul_f32(*(v52 + 8 * v51), COERCE_FLOAT32X2_T(-_D8));
                *(a15 + (v35 << 9) + 8 * v51++) = vmla_f32(vmul_f32(*v42.f32, vrev64_s32(v53)), *&_Q1.f64[0], v53);
              }

              while (v51 < v32);
            }

            ++v35;
          }

          while (v35 < v33);
        }

        result = cblas_cgemm_NEWLAPACK();
        v27 = v148;
        v29 = v35 + v34;
      }

      while ((v35 + v34) < a3);
      a5 += 512;
      a8 += a14 << 9;
      v28 = v143;
      v26 = v144 + 64;
    }

    while (v144 + 64 < v143);
  }

  return result;
}

uint64_t sub_23674BD38(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v201 = result;
  v197 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v44 = 0;
      v45 = 16 * a6;
      v46 = xmmword_23681FB50;
      v47 = xmmword_23681FD30;
      do
      {
        v196 = v44;
        v48 = a2 - v44;
        if (a2 - v44 >= 32)
        {
          v49 = 32;
        }

        else
        {
          v49 = a2 - v44;
        }

        v50 = a4;
        v51 = v201;
        if (a3 >= 1)
        {
          v52 = 0;
          result = v49;
          do
          {
            if (a3 - v52 >= 32)
            {
              v53 = 32;
            }

            else
            {
              v53 = a3 - v52;
            }

            v199 = v52;
            v54 = 0;
            if (a3 - v52 >= 1)
            {
              v55 = a7 + 32 * v52;
              v56 = 16 * v52;
              do
              {
                v57 = (v55 + 16 * (2 * v54));
                v58 = *v57;
                v59 = v57[1];
                v60 = fabs(*v57) == INFINITY;
                if (fabs(v59) == INFINITY)
                {
                  v60 = 1;
                }

                if (v60)
                {
                  v61 = 0.0;
                }

                else
                {
                  v61 = v58;
                }

                if (v60)
                {
                  v62 = 0.0;
                }

                else
                {
                  v62 = v59;
                }

                v63 = vmulq_n_f64(v46, v62);
                v64 = 4 * v54;
                v65 = v56 + 16 * v54;
                if (v48 < 4)
                {
                  v75 = 0;
                }

                else
                {
                  v66 = 0;
                  v67 = vdupq_lane_s64(*&v61, 0);
                  v68 = (a10 + 16 * v64);
                  v69 = a6 * v65;
                  do
                  {
                    v70 = vmulq_f64(*(a5 + v69 + 32), v47);
                    v71 = vmulq_f64(*(a5 + v69 + 48), v47);
                    v72 = vmulq_f64(*(a5 + v69), v47);
                    v73 = vmulq_f64(*(a5 + v69 + 16), v47);
                    v68[2] = vmlaq_f64(vmulq_f64(v63, vextq_s8(v70, v70, 8uLL)), v67, v70);
                    v68[3] = vmlaq_f64(vmulq_f64(v63, vextq_s8(v71, v71, 8uLL)), v67, v71);
                    v74 = v66 + 7;
                    *v68 = vmlaq_f64(vmulq_f64(v63, vextq_s8(v72, v72, 8uLL)), v67, v72);
                    v68[1] = vmlaq_f64(vmulq_f64(v63, vextq_s8(v73, v73, 8uLL)), v67, v73);
                    v66 += 4;
                    v68 += 132;
                    v69 += 64;
                  }

                  while (v74 < v49);
                  v75 = v66;
                }

                if (v75 < v49)
                {
                  v76 = vdupq_lane_s64(*&v61, 0);
                  v77 = a5 + a6 * v65;
                  do
                  {
                    v78 = vmulq_f64(*(v77 + 16 * v75), v47);
                    *(a10 + 16 * ((33 * (v75 & 0x7FFFFFFC) + v64) | v75 & 3)) = vmlaq_f64(vmulq_f64(v63, vextq_s8(v78, v78, 8uLL)), v76, v78);
                    ++v75;
                  }

                  while (v75 < v49);
                }

                ++v54;
              }

              while (v54 < v53);
            }

            v79 = v50 + 16 * v199 * a6;
            if (v48 < 4)
            {
              v187 = 0;
            }

            else
            {
              v80 = 0;
              v81 = v50 + v45 * v199;
              do
              {
                v82 = v80 | 3;
                v83 = v80 * a9;
                if (v51 < 4)
                {
                  v172 = 0;
                }

                else
                {
                  v84 = 0;
                  v85 = v79;
                  do
                  {
                    if (v54 < 1)
                    {
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v86 = 0uLL;
                      v88 = 0uLL;
                      v90 = 0uLL;
                      v92 = 0uLL;
                    }

                    else
                    {
                      v86 = 0uLL;
                      v87 = v54;
                      v88 = 0uLL;
                      v89 = v85;
                      v90 = 0uLL;
                      v91 = (a10 + 528 * v80);
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      do
                      {
                        v203 = v94;
                        v204 = v100;
                        v205 = v98;
                        v206 = v97;
                        v207 = v88;
                        v208 = v86;
                        v106 = *(v89 + 32);
                        v105 = *(v89 + 48);
                        v107 = *(v89 + 16);
                        v108 = vextq_s8(*v89, *v89, 8uLL);
                        v109 = vextq_s8(v107, v107, 8uLL);
                        v110 = vextq_s8(v106, v106, 8uLL);
                        v111 = vextq_s8(v105, v105, 8uLL);
                        v112 = v91[2];
                        v113 = v91[3];
                        v115 = *v91;
                        v114 = v91[1];
                        v91 += 4;
                        v116 = vmulq_laneq_f64(xmmword_23681FB50, v115, 1);
                        v117 = vmulq_f64(v111, v116);
                        v118 = vmulq_f64(v110, v116);
                        v119 = vmulq_f64(v109, v116);
                        v120 = vmlaq_n_f64(vmulq_f64(v108, v116), *v89, v115.f64[0]);
                        v121 = vmlaq_n_f64(v119, v107, v115.f64[0]);
                        v122 = vmlaq_n_f64(v118, v106, v115.f64[0]);
                        v123 = vmlaq_n_f64(v117, v105, v115.f64[0]);
                        v124 = vmulq_laneq_f64(xmmword_23681FB50, v114, 1);
                        v125 = v96;
                        v126 = v90;
                        v127 = vmulq_f64(v111, v124);
                        v128 = v93;
                        v129 = vmulq_f64(v110, v124);
                        v130 = vmulq_f64(v109, v124);
                        v131 = vmlaq_n_f64(vmulq_f64(v108, v124), *v89, v114.f64[0]);
                        v132 = vmlaq_n_f64(v130, v107, v114.f64[0]);
                        v133 = vmlaq_n_f64(v129, v106, v114.f64[0]);
                        v134 = vmlaq_n_f64(v127, v105, v114.f64[0]);
                        v135 = vmulq_laneq_f64(xmmword_23681FB50, v112, 1);
                        v136 = v92;
                        v137 = vmulq_f64(v111, v135);
                        v138 = v95;
                        v139 = vmulq_f64(v110, v135);
                        v140 = vmulq_f64(v109, v135);
                        v141 = vmlaq_n_f64(vmulq_f64(v108, v135), *v89, v112.f64[0]);
                        v142 = vmlaq_n_f64(v140, v107, v112.f64[0]);
                        v143 = vmlaq_n_f64(v139, v106, v112.f64[0]);
                        v144 = vmlaq_n_f64(v137, v105, v112.f64[0]);
                        v145 = vmulq_laneq_f64(xmmword_23681FB50, v113, 1);
                        v146 = vmlaq_n_f64(vmulq_f64(v108, v145), *v89, v113.f64[0]);
                        v147 = vmlaq_n_f64(vmulq_f64(v109, v145), v107, v113.f64[0]);
                        v148 = vmlaq_n_f64(vmulq_f64(v110, v145), v106, v113.f64[0]);
                        v149 = vmlaq_n_f64(vmulq_f64(v111, v145), v105, v113.f64[0]);
                        v104 = vsubq_f64(v104, v123);
                        v103 = vsubq_f64(v103, v122);
                        v102 = vsubq_f64(v102, v121);
                        v101 = vsubq_f64(v101, v120);
                        v100 = vsubq_f64(v204, v134);
                        v150 = v126;
                        v151 = v125;
                        v99 = vsubq_f64(v99, v133);
                        v152 = v128;
                        v98 = vsubq_f64(v205, v132);
                        v97 = vsubq_f64(v206, v131);
                        v96 = vsubq_f64(v151, v144);
                        v95 = vsubq_f64(v138, v143);
                        v94 = vsubq_f64(v203, v142);
                        v93 = vsubq_f64(v152, v141);
                        v92 = vsubq_f64(v136, v149);
                        v90 = vsubq_f64(v150, v148);
                        v88 = vsubq_f64(v207, v147);
                        v86 = vsubq_f64(v208, v146);
                        v89 += v45;
                        --v87;
                      }

                      while (v87);
                    }

                    v153 = (a8 + 16 * (v83 + v84));
                    v154 = vaddq_f64(v102, v153[1]);
                    v155 = vaddq_f64(v101, *v153);
                    v156 = vaddq_f64(v104, v153[3]);
                    v153[2] = vaddq_f64(v103, v153[2]);
                    v153[3] = v156;
                    *v153 = v155;
                    v153[1] = v154;
                    v157 = (a8 + 16 * ((v80 | 1) * a9 + v84));
                    v158 = vaddq_f64(v99, v157[2]);
                    v159 = vaddq_f64(v98, v157[1]);
                    v160 = vaddq_f64(v97, *v157);
                    v161 = vaddq_f64(v100, v157[3]);
                    *v157 = v160;
                    v157[1] = v159;
                    v157[2] = v158;
                    v157[3] = v161;
                    v162 = (a8 + 16 * ((v80 | 2) * a9 + v84));
                    v163 = vaddq_f64(v95, v162[2]);
                    v164 = vaddq_f64(v94, v162[1]);
                    v165 = vaddq_f64(v96, v162[3]);
                    *v162 = vaddq_f64(v93, *v162);
                    v162[1] = v164;
                    v162[2] = v163;
                    v162[3] = v165;
                    v166 = (a8 + 16 * (v82 * a9 + v84));
                    v168 = v166[2];
                    v167 = v166[3];
                    v169 = vaddq_f64(v88, v166[1]);
                    *v166 = vaddq_f64(v86, *v166);
                    v166[1] = v169;
                    v166[2] = vaddq_f64(v90, v168);
                    v166[3] = vaddq_f64(v92, v167);
                    v170 = v84 + 4;
                    v171 = v84 + 7;
                    v85 += 64;
                    v84 += 4;
                  }

                  while (v171 < v201);
                  v172 = v170;
                  v51 = v201;
                  v46 = xmmword_23681FB50;
                }

                if (v172 < v51)
                {
                  v173 = (v81 + 16 * v172);
                  v174 = v82 * a9;
                  do
                  {
                    if (v54 < 1)
                    {
                      v181 = 0uLL;
                      v180 = 0uLL;
                      v179 = 0uLL;
                      v175 = 0uLL;
                    }

                    else
                    {
                      v175 = 0uLL;
                      v176 = v54;
                      v177 = v173;
                      v178 = (a10 + 528 * v80);
                      v179 = 0uLL;
                      v180 = 0uLL;
                      v181 = 0uLL;
                      do
                      {
                        v182 = vextq_s8(*v177, *v177, 8uLL);
                        v184 = v178[2];
                        v183 = v178[3];
                        v186 = *v178;
                        v185 = v178[1];
                        v178 += 4;
                        v181 = vsubq_f64(v181, vmlaq_n_f64(vmulq_f64(v182, vmulq_laneq_f64(v46, v186, 1)), *v177, v186.f64[0]));
                        v180 = vsubq_f64(v180, vmlaq_n_f64(vmulq_f64(v182, vmulq_laneq_f64(v46, v185, 1)), *v177, v185.f64[0]));
                        v179 = vsubq_f64(v179, vmlaq_n_f64(vmulq_f64(v182, vmulq_laneq_f64(v46, v184, 1)), *v177, v184.f64[0]));
                        v175 = vsubq_f64(v175, vmlaq_n_f64(vmulq_f64(v182, vmulq_laneq_f64(v46, v183, 1)), *v177, v183.f64[0]));
                        v177 = (v177 + v45);
                        --v176;
                      }

                      while (v176);
                    }

                    *(a8 + 16 * (v83 + v172)) = vaddq_f64(v181, *(a8 + 16 * (v83 + v172)));
                    *(a8 + 16 * ((v80 | 1) * a9 + v172)) = vaddq_f64(v180, *(a8 + 16 * ((v80 | 1) * a9 + v172)));
                    *(a8 + 16 * ((v80 | 2) * a9 + v172)) = vaddq_f64(v179, *(a8 + 16 * ((v80 | 2) * a9 + v172)));
                    *(a8 + 16 * (v174 + v172)) = vaddq_f64(v175, *(a8 + 16 * (v174 + v172)));
                    ++v172;
                    ++v173;
                  }

                  while (v172 != v201);
                }

                LODWORD(v187) = v80 + 4;
                v188 = v80 + 7;
                v80 += 4;
              }

              while (v188 < v49);
              v187 = v187;
              v50 = a4;
            }

            if (v187 < v49)
            {
              do
              {
                if (v51 >= 1)
                {
                  v189 = 0;
                  v190 = v79;
                  do
                  {
                    v191 = 0uLL;
                    if (v54 >= 1)
                    {
                      v192 = v54;
                      v193 = v190;
                      v194 = (a10 + 16 * ((33 * (v187 & 0x7FFFFFFC)) & 0xFFFFFFFC | v187 & 3));
                      do
                      {
                        v195 = *v194;
                        v194 += 4;
                        v191 = vsubq_f64(v191, vmlaq_n_f64(vmulq_f64(vextq_s8(*v193, *v193, 8uLL), vmulq_laneq_f64(v46, v195, 1)), *v193, v195.f64[0]));
                        v193 = (v193 + v45);
                        --v192;
                      }

                      while (v192);
                    }

                    *(a8 + 16 * (v187 * a9 + v189)) = vaddq_f64(v191, *(a8 + 16 * (v187 * a9 + v189)));
                    ++v189;
                    ++v190;
                  }

                  while (v189 != v201);
                }

                ++v187;
              }

              while (v187 < v49);
            }

            v52 = v54 + v199;
            v47 = xmmword_23681FD30;
          }

          while (v54 + v199 < a3);
        }

        a5 += 512;
        a8 += a9 << 9;
        a2 = v197;
        v44 = v196 + 32;
      }

      while (v196 + 32 < v197);
    }
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = 0;
      v202 = v14;
      v16 = a2 - v14;
      if (a2 - v14 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = a2 - v14;
      }

      v18 = v17;
      do
      {
        if (a3 - v15 >= 64)
        {
          v19 = 64;
        }

        else
        {
          v19 = a3 - v15;
        }

        v20 = v15;
        if (a3 - v15 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a7 + 32 * v15;
          do
          {
            v23 = (v22 + 32 * v21);
            v24 = *v23;
            v25 = v23[1];
            v26 = fabs(*v23) == INFINITY;
            if (fabs(v25) == INFINITY)
            {
              v26 = 1;
            }

            if (v26)
            {
              v27 = 0.0;
            }

            else
            {
              v27 = v24;
            }

            if (v26)
            {
              v28 = 0.0;
            }

            else
            {
              v28 = v25;
            }

            v29 = vmulq_n_f64(xmmword_23681FB50, v28);
            v30 = 16 * v20 + 16 * v21;
            if (v16 < 4)
            {
              v40 = 0;
            }

            else
            {
              v31 = 0;
              v32 = vdupq_lane_s64(*&v27, 0);
              v33 = (a10 + (v21 << 10));
              v34 = a6 * v30;
              do
              {
                v35 = vmulq_f64(*(a5 + v34 + 32), xmmword_23681FD30);
                v36 = vmulq_f64(*(a5 + v34 + 48), xmmword_23681FD30);
                v37 = vmulq_f64(*(a5 + v34), xmmword_23681FD30);
                v38 = vmulq_f64(*(a5 + v34 + 16), xmmword_23681FD30);
                v33[2] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v35, v35, 8uLL)), v32, v35);
                v33[3] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v36, v36, 8uLL)), v32, v36);
                v39 = v31 + 7;
                *v33 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v37, v37, 8uLL)), v32, v37);
                v33[1] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v38, v38, 8uLL)), v32, v38);
                v33 += 4;
                v31 += 4;
                v34 += 64;
              }

              while (v39 < v18);
              v40 = v31;
            }

            if (v40 < v18)
            {
              v41 = vdupq_lane_s64(*&v27, 0);
              v42 = a5 + a6 * v30;
              do
              {
                v43 = vmulq_f64(*(v42 + 16 * v40), xmmword_23681FD30);
                *(a10 + (v21 << 10) + 16 * v40++) = vmlaq_f64(vmulq_f64(v29, vextq_s8(v43, v43, 8uLL)), v41, v43);
              }

              while (v40 < v18);
            }

            ++v21;
          }

          while (v21 < v19);
        }

        result = cblas_zgemm_NEWLAPACK();
        v15 = v21 + v20;
      }

      while ((v21 + v20) < a3);
      a5 += 1024;
      a8 += a9 << 10;
      v14 = v202 + 64;
      a2 = v197;
    }

    while (v202 + 64 < v197);
  }

  return result;
}

void *sub_23674CB90(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = malloc_type_malloc(8 * (v3 + v4) + 96, 0x10900405D25300CuLL);
  v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v8 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v9 = v8;
  if (v4 >= 1)
  {
    v10 = (a1 + 5);
    v11 = v4;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    do
    {
      *v12++ = *(v10 - 2);
      *v13++ = *(v10 - 1);
      v15 = *v10;
      v10 += 2;
      v16 = v15;
      *v14++ = v16;
      --v11;
    }

    while (v11);
  }

  v17 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  v18 = v17;
  if ((v2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if ((v3 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D43C();
    }

    goto LABEL_14;
  }

  v19 = 0;
  _SparseConvertFromCoordinate_Float(&v23, v2, v3, v4, 1u, v19, v6, v7, v9, ((v5 + 55) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = *&v23.structure.rowCount;
  v21 = *&v23.structure.rowIndices;
  v5[4] = v23.data;
  *v5 = v20;
  *(v5 + 1) = v21;
  free(v18);
  free(v9);
  free(v7);
  free(v6);
  return v5;
}

_DWORD *sub_23674CD8C(int a1, int *a2, uint64_t a3, int a4)
{
  v4 = &a2[4 * a2[2]];
  v5 = v4[3];
  v6 = v4 + 4;
  if (a1)
  {
    v6 += v5;
    v5 = *v6;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v5 / *a2;
  if (a4)
  {
    v9 = malloc_type_malloc(0x18uLL, 0x108004032FBF093uLL);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v6;
  }

  else
  {
    v10 = 4 * v8 * v7;
    v9 = malloc_type_malloc(v10 + 40, 0x108004032FBF093uLL);
    v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF0);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v11;
    memcpy(v11, v6, v10);
  }

  return v9;
}

void *sub_23674CE54(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = malloc_type_malloc(8 * v3 + 4 * v4 + 8 * v4 + 96, 0x10900405D25300CuLL);
  v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v8 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
  v9 = v8;
  if (v4 >= 1)
  {
    v10 = (v8 + 4);
    v11 = (a1 + 5);
    v12 = v6;
    v13 = v7;
    v14 = v4;
    do
    {
      *v12++ = *(v11 - 2);
      *v13++ = *(v11 - 1);
      v15 = *v11;
      v11 += 2;
      v16 = v15;
      *(v10 - 1) = v16;
      *v10 = 0.0;
      v10 += 2;
      --v14;
    }

    while (v14);
  }

  v17 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  v18 = v17;
  if ((v2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if ((v3 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D43C();
    }

    goto LABEL_14;
  }

  _SparseConvertFromCoordinate_Complex_Float(v2, v3, v4, 1u, 0, v6, v7, v9, v22, (v5 + 55) & 0xFFFFFFFFFFFFFFF0, v17);
  v19 = v22[0];
  v20 = v22[1];
  v5[4] = v23;
  *v5 = v19;
  *(v5 + 1) = v20;
  free(v18);
  free(v9);
  free(v7);
  free(v6);
  return v5;
}

void *sub_23674D068(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = malloc_type_malloc(8 * v3 + 4 * v4 + 16 * v4 + 96, 0x10900405D25300CuLL);
  v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v8 = malloc_type_malloc(16 * v4, 0x1000040451B5BE8uLL);
  v9 = v8;
  if (v4 >= 1)
  {
    v10 = v8 + 8;
    v11 = a1 + 5;
    v12 = v6;
    v13 = v7;
    v14 = v4;
    do
    {
      *v12++ = *(v11 - 2);
      *v13++ = *(v11 - 1);
      v15 = *v11;
      v11 += 4;
      *(v10 - 1) = v15;
      *v10 = 0;
      v10 += 2;
      --v14;
    }

    while (v14);
  }

  v16 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  v17 = v16;
  if ((v2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if ((v3 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D43C();
    }

    goto LABEL_14;
  }

  _SparseConvertFromCoordinate_Complex_Double(v2, v3, v4, 1u, 0, v6, v7, v9, v21, (v5 + 55) & 0xFFFFFFFFFFFFFFF0, v16);
  v18 = v21[0];
  v19 = v21[1];
  v5[4] = v22;
  *v5 = v18;
  *(v5 + 1) = v19;
  free(v17);
  free(v9);
  free(v7);
  free(v6);
  return v5;
}

_DWORD *sub_23674D278(int a1, int *a2, uint64_t a3, int a4)
{
  v4 = &a2[4 * a2[2]];
  v5 = v4[3];
  v6 = v4 + 4;
  if (a1)
  {
    v6 += 4 * v5;
    v5 = *v6;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v5 / *a2;
  if (a4)
  {
    v9 = malloc_type_malloc(0x18uLL, 0x108004032FBF093uLL);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v6;
  }

  else
  {
    v10 = 16 * v8 * v7;
    v9 = malloc_type_malloc(v10 + 40, 0x108004032FBF093uLL);
    v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF0);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v11;
    memcpy(v11, v6, v10);
  }

  return v9;
}

void sub_23674D34C()
{
  sub_23674D340();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_23674D3C4()
{
  sub_23674D340();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

uint64_t sub_23674D4B8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 20);
  if (!v4)
  {
    v4 = 16;
  }

  v5 = *(a1 + 16);
  v6 = 8 * ((v4 + 3) * v4 + (2 * v4 + 2) * a3) * a4;
  v7 = a4 + a4 * (v4 + a3) * (v4 + 3);
  v8 = a4 * a3 * v4;
  if (v5 != 2)
  {
    v8 = 0;
  }

  v9 = 8 * (v8 + v7) + 4 * a4;
  if ((v5 - 1) <= 1)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

void _SparseGMRESIterate_Double(const SparseGMRESOptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Double *X, DenseMatrix_Double *B, DenseMatrix_Double *R, const SparseOpaquePreconditioner_Double *Preconditioner, void *ApplyOperator)
{
  v206 = R;
  v9 = state;
  v10 = ApplyOperator;
  variant = options->variant;
  if ((variant - 1) >= 2)
  {
    if (options->variant == SparseVariantDQGMRES)
    {
      v17 = *&X->attributes;
      v18 = 4;
      if (v17)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v18 = 0;
      }

      if (options->nvec)
      {
        nvec = options->nvec;
      }

      else
      {
        nvec = 16;
      }

      if (*&R->attributes)
      {
        columnStride = R->columnStride;
      }

      else
      {
        columnStride = 1;
      }

      if (iteration < 0)
      {

        sub_23674EB10(X, B, R, ApplyOperator, X, B, R, Preconditioner);
      }

      else
      {
        v46 = *(&X->rowCount + v19);
        v47 = *(&X->rowCount + v18);
        v205 = v47;
        v199 = nvec * v47 * nvec;
        v174 = &state[8 * nvec * v47 * v46 + 8 * v199];
        v177 = &state[8 * nvec * v47 * v46];
        v197 = 2 * nvec * v47;
        v209 = 8 * v47 * v46;
        v48 = &v174[8 * v197 + v209];
        v202 = nvec * v47 * v46;
        __dst = &v48[8 * v202];
        v188 = &__dst[v209];
        v194 = iteration % nvec;
        v216 = v47 * v46;
        v49 = iteration % nvec * v47 * v46;
        __srca = &v48[8 * v49];
        if (!iteration && v47 >= 1)
        {
          v50 = 0;
          v51 = state;
          v52 = 8 * columnStride;
          do
          {
            if (!converged[v50])
            {
              v53 = (*&R->attributes & 1) != 0 ? v50 : R->columnStride * v50;
              v54 = &R->data[v53];
              cblas_dnrm2_NEWLAPACK();
              R = v206;
              *&v188[8 * v50 * nvec] = v55;
              if (v46 >= 1)
              {
                v56 = v51;
                v57 = v46;
                do
                {
                  *v56++ = *v54 / *&v188[8 * v50 * nvec];
                  v54 = (v54 + v52);
                  --v57;
                }

                while (v57);
              }
            }

            ++v50;
            v51 += 8 * v46;
          }

          while (v50 != v205);
        }

        v58 = 8 * v202;
        v59 = 8 * v199;
        v203 = 8 * v197;
        memcpy(__dst, __srca, v209);
        if (Preconditioner)
        {
          mem = Preconditioner->mem;
          apply = Preconditioner->apply;
          v222 = __PAIR64__(v205, v46);
          v223 = v46;
          v224 = 0;
          v225 = &v9[8 * v49];
          v217 = v46;
          v218 = v205;
          v219 = v46;
          v220 = 0;
          v221 = __srca;
          (apply)(mem, 0, &v222, &v217);
        }

        else if (v205 >= 1)
        {
          v62 = 8 * v46;
          v63 = &v9[8 * v49 + v59 + v58 + v203 + v209];
          v64 = converged;
          v65 = v205;
          do
          {
            v66 = *v64++;
            if ((v66 & 1) == 0)
            {
              memcpy(v63, &v9[8 * v49], v62);
            }

            v49 += v46;
            v63 += v62;
            --v65;
          }

          while (v65);
        }

        v67 = *(ApplyOperator + 2);
        v222 = __PAIR64__(v205, v46);
        v223 = v46;
        v224 = 0;
        v225 = __srca;
        v217 = v46;
        v218 = v205;
        v219 = v46;
        v220 = 0;
        v221 = &v174[8 * v197];
        v67(ApplyOperator, 0, 111, &v222, &v217);
        if (v205 >= 1)
        {
          v68 = 0;
          v69 = nvec - iteration;
          if (nvec <= iteration)
          {
            v69 = 1;
          }

          v210 = nvec - v69;
          v70 = nvec < 1 || nvec - v69 < 0;
          v71 = v70;
          v171 = v71;
          v214 = (v194 * nvec);
          v191 = (iteration + 1) % nvec;
          v72 = &v9[8 * v191 * v216];
          v212 = v69 + v194;
          v73 = 8 * v46;
          v74 = &v9[v203 + v59 + v58];
          v186 = (iteration - nvec) & ~((iteration - nvec) >> 31);
          do
          {
            if (!converged[v68])
            {
              v200 = v74;
              v204 = v72;
              v75 = &v177[8 * v68 * nvec * nvec];
              if ((v171 & 1) == 0)
              {
                v76 = 0;
                do
                {
                  cblas_ddot_NEWLAPACK();
                  *&v75[8 * ((v212 + v76) % nvec) + 8 * v214] = v77;
                  cblas_daxpy_NEWLAPACK();
                  if (v76 + 1 >= nvec)
                  {
                    break;
                  }

                  v70 = v76++ < v210;
                }

                while (v70);
              }

              cblas_dnrm2_NEWLAPACK();
              if (v78 == 0.0)
              {
                v78 = 2.22507386e-308;
              }

              v222 = *&v78;
              v79 = v200;
              v80 = v204;
              v81 = v46;
              if (v46 >= 1)
              {
                do
                {
                  v82 = *v79++;
                  *v80++ = v82 / v78;
                  --v81;
                }

                while (v81);
              }

              v83 = &v174[8 * v68 * 2 * nvec];
              v84 = &v75[8 * v214];
              if (iteration > v186)
              {
                v85 = iteration - v186;
                v86 = (iteration - nvec) & ~((iteration - nvec) >> 31);
                do
                {
                  v87 = v86 % nvec;
                  v88 = *&v83[16 * (v86 % nvec)];
                  if (v86 % nvec + 1 < nvec)
                  {
                    v89 = v87 + 1;
                  }

                  else
                  {
                    v89 = 0;
                  }

                  v90 = *&v83[8 * ((2 * (v87 & 0x3FFFFFFF)) | 1)];
                  if (nvec == v85)
                  {
                    v91 = v88 * *&v84[8 * v89];
                  }

                  else
                  {
                    v92 = *&v84[8 * v87];
                    v93 = *&v84[8 * v89];
                    *&v84[8 * v87] = v90 * v93 + v88 * v92;
                    v91 = v88 * v93 - v90 * v92;
                  }

                  *&v84[8 * v89] = v91;
                  ++v86;
                  --v85;
                }

                while (v85);
              }

              v94 = &v188[8 * v68 * nvec];
              v95 = &v83[16 * v194];
              v96 = &v83[8 * ((2 * (v194 & 0x3FFFFFFF)) | 1)];
              cblas_drotg_NEWLAPACK();
              *&v94[8 * v191] = -(*v96 * *&v94[8 * v194]);
              *&v94[8 * v194] = *v95 * *&v94[8 * v194];
              if (nvec <= iteration)
              {
                cblas_daxpy_NEWLAPACK();
                cblas_dgemm_NEWLAPACK();
              }

              cblas_dgemm_NEWLAPACK();
              cblas_dscal_NEWLAPACK();
              cblas_daxpy_NEWLAPACK();
              if (*&v206->attributes)
              {
                v97 = v68;
              }

              else
              {
                v97 = v206->columnStride * v68;
              }

              v72 = v204;
              v73 = 8 * v46;
              v74 = v200;
              v206->data[v97] = fabs(*&v94[8 * v191]);
            }

            ++v68;
            v72 += v73;
            v74 += v73;
          }

          while (v68 != v205);
        }
      }
    }

    return;
  }

  v12 = 4;
  if (*&X->attributes)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(&X->rowCount + v13);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  v15 = *(&X->rowCount + v12);
  if (*&R->attributes)
  {
    v16 = R->columnStride;
  }

  else
  {
    v16 = 1;
  }

  v189 = v16;
  if (options->nvec)
  {
    v21 = options->nvec;
  }

  else
  {
    v21 = 16;
  }

  v208 = (iteration % v21);
  v179 = v21 + 1;
  v22 = (v21 + 1) * v15;
  v173 = 8 * v22 * v14;
  v215 = v21 * v21;
  v193 = &state[v173];
  v168 = 16 * v15 * v21;
  v169 = 8 * v21 * v21 * v15;
  v187 = &state[v173 + v169];
  v190 = v15 * v14;
  v182 = &v187[8 * v190 + v168];
  __src = v15 * v14;
  v23 = v182 + 8 * v190;
  v196 = v21;
  v24 = 8 * v21 * v15 * v14;
  if (variant == 2)
  {
    v25 = v182 + 8 * v15 * v14;
  }

  else
  {
    v25 = 0;
  }

  v185 = v25;
  if (variant != 2)
  {
    v24 = 0;
  }

  v198 = v23 + v24;
  v211 = v15;
  v213 = v23 + v24 + 8 * v22;
  if (iteration < 0 || !v208)
  {
    if (!iteration)
    {
LABEL_127:
      if (v15 >= 1)
      {
        v119 = 0;
        v120 = v9;
        do
        {
          *(v213 + 4 * v119) = 0;
          if ((*(&v119->rowCount + converged) & 1) == 0)
          {
            v121 = (*&R->attributes & 1) != 0 ? v119 : R->columnStride * v119;
            v122 = &R->data[v121];
            cblas_dnrm2_NEWLAPACK();
            R = v206;
            *(v198 + 8 * v119 * v179) = v123;
            v15 = v211;
            if (v14 >= 1)
            {
              v124 = v120;
              v125 = v14;
              do
              {
                *v124++ = *v122 / *(v198 + 8 * v119 * v179);
                v122 += v189;
                --v125;
              }

              while (v125);
            }
          }

          v119 = (v119 + 1);
          v120 += v14;
        }

        while (v119 != v15);
      }

      goto LABEL_137;
    }

    if (v15 < 1)
    {
      v33 = X;
      if (variant == 2)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v26 = 0;
      v27 = 8 * v22;
      v166 = v24 + 16 * v190;
      v28 = v166 + v169 + v173 + v168;
      v29 = &state[v28];
      v167 = v27;
      v30 = &state[v27 + v28];
      v31 = v15;
      do
      {
        v32 = *v30;
        v30 += 4;
        v15 = v32;
        if (v32)
        {
          cblas_dtrsv_NEWLAPACK();
        }

        v29 += 8 * v179;
        v26 += v215;
        v31 = (v31 - 1);
      }

      while (v31);
      v33 = X;
      v34 = 0;
      if (variant == 2)
      {
        v35 = v211;
        do
        {
          if (*(v213 + 4 * v34))
          {
            cblas_dgemv_NEWLAPACK();
            v35 = v211;
            if (v14 >= 1)
            {
              data = X->data;
              v37 = X->columnStride;
              v38 = v37 * v34;
              v39 = &v9[v169 + v173 + v168];
              v40 = v34;
              v41 = v14;
              do
              {
                v42 = *v39++;
                v43 = v42;
                if (*&X->attributes)
                {
                  v44 = v40;
                }

                else
                {
                  v44 = v38;
                }

                data[v44] = v43 + data[v44];
                ++v38;
                v40 += v37;
                --v41;
              }

              while (v41);
            }
          }

          v34 = (v34 + 1);
        }

        while (v34 != v35);
        goto LABEL_126;
      }

      v98 = v169 + v173 + v168;
      v99 = v98 + 8 * __src;
      v100 = 8 * v14;
      v101 = v98 + v166;
      v102 = v98 + v166 + v167;
      v15 = v211;
      v103 = v211;
      do
      {
        if (*&v9[v102])
        {
          cblas_dgemv_NEWLAPACK();
          v15 = v211;
        }

        v99 += v100;
        v34 = (v34 + v100);
        v101 += 8 * v179;
        v102 += 4;
        v103 = (v103 - 1);
      }

      while (v103);
    }

    if (Preconditioner)
    {
      v104 = Preconditioner->mem;
      v105 = Preconditioner->apply;
      v222 = __PAIR64__(v15, v14);
      v223 = v14;
      v224 = 0;
      v225 = &v187[8 * v190 + v168];
      v217 = v14;
      v218 = v15;
      v219 = v14;
      v220 = 0;
      v221 = &v187[v168];
      (v105)(v104, 0, &v222, &v217);
      v15 = v211;
      v106 = &v187[v168];
    }

    else
    {
      v106 = &v187[8 * v190 + v168];
    }

    if (v15 >= 1)
    {
      v107 = 0;
      for (i = 0; i != v15; i = (i + 1))
      {
        if (v14 >= 1 && *(v213 + 4 * i))
        {
          v109 = (v106 + 8 * v107);
          v110 = v33->data;
          v111 = v33->columnStride;
          v112 = v111 * i;
          v113 = i;
          v114 = v14;
          do
          {
            v115 = *v109++;
            v116 = v115;
            if (*&v33->attributes)
            {
              v117 = v113;
            }

            else
            {
              v117 = v112;
            }

            v110[v117] = v116 + v110[v117];
            ++v112;
            v113 += v111;
            --v114;
          }

          while (v114);
        }

        v107 += v14;
      }
    }

LABEL_126:
    v118 = v33;
    v10 = ApplyOperator;
    sub_23674EB10(v118, B, v206, ApplyOperator, v15, B, R, Preconditioner);
    v15 = v211;
    R = v206;
    if (iteration < 0)
    {
      return;
    }

    goto LABEL_127;
  }

LABEL_137:
  if (Preconditioner)
  {
    v126 = Preconditioner->mem;
    v127 = Preconditioner->apply;
    if (options->variant == SparseVariantFGMRES)
    {
      v128 = v185 + 8 * v208 * __src;
    }

    else
    {
      v128 = &v187[8 * v190 + v168];
    }

    v222 = __PAIR64__(v15, v14);
    v223 = v14;
    v224 = 0;
    v225 = &v9[8 * v208 * __src];
    v217 = v14;
    v218 = v15;
    v219 = v14;
    v220 = 0;
    v221 = v128;
    v129 = v15;
    (v127)(v126, 0, &v222, &v217);
    v130 = v10[2];
    v222 = __PAIR64__(v129, v14);
    v223 = v14;
    v224 = 0;
    v225 = v128;
    v217 = v14;
    v218 = v129;
    v219 = v14;
    v220 = 0;
    v221 = &v187[v168];
    v130(v10, 0, 111, &v222, &v217);
  }

  else
  {
    v131 = v10[2];
    v222 = __PAIR64__(v15, v14);
    v223 = v14;
    v224 = 0;
    v225 = &v9[8 * v208 * __src];
    v217 = v14;
    v218 = v15;
    v219 = v14;
    v220 = 0;
    v221 = &v187[v168];
    v129 = v15;
    v131(v10, 0, 111, &v222, &v217, B);
  }

  if (v129 >= 1)
  {
    v132 = v129;
    v133 = 0;
    v134 = 0;
    v181 = 2 * v196;
    v135 = &v9[8 * v196 * v208 + v173];
    v136 = 8 * v14;
    v137 = 8 * v190;
    v178 = 8 * (v208 + 1) * v190;
    v138 = v169 + v173;
    v175 = v169 + v173 + v168;
    v139 = &v9[v138 + 8];
    v140 = 8 * v181;
    v192 = v135;
    v172 = v135 + 8;
    while ((*(&v134->rowCount + converged) & 1) != 0)
    {
LABEL_160:
      v134 = (v134 + 1);
      v133 += v215;
      v9 += v136;
      v139 += v140;
      if (v134 == v132)
      {
        return;
      }
    }

    ++*(v213 + 4 * v134);
    if ((v208 & 0x80000000) == 0)
    {
      v141 = &v192[8 * v133];
      v142 = v9;
      v143 = (v208 + 1);
      do
      {
        cblas_ddot_NEWLAPACK();
        *v141 = v144;
        v141 += 8;
        cblas_daxpy_NEWLAPACK();
        v142 += v137;
        --v143;
      }

      while (v143);
    }

    cblas_dnrm2_NEWLAPACK();
    v222 = *&v145;
    if (v145 == 0.0)
    {
      v146 = v206;
      v147 = v206->data;
      v148 = 0.0;
      if (*&v206->attributes)
      {
LABEL_151:
        v149 = v134;
LABEL_159:
        v132 = v211;
        v140 = 8 * v181;
        v136 = 8 * v14;
        v147[v149] = v148;
        goto LABEL_160;
      }
    }

    else
    {
      v150 = v175;
      v151 = v178;
      v152 = v14;
      if (v14 >= 1)
      {
        do
        {
          *&v9[v151] = *&v9[v150] / v145;
          v151 += 8;
          v150 += 8;
          --v152;
        }

        while (v152);
      }

      if (v208 >= 1)
      {
        v153 = *&v193[8 * v215 * v134 + 8 * v196 * v208];
        v154 = v139;
        v155 = v208;
        v156 = &v172[8 * v133];
        do
        {
          v157 = *(v154 - 1);
          v158 = *v154 * *v156 + v157 * v153;
          v153 = v157 * *v156 - *v154 * v153;
          *(v156 - 1) = v158;
          *v156 = v153;
          v154 += 2;
          ++v156;
          --v155;
        }

        while (v155);
      }

      v159 = &v187[8 * v134 * v181];
      v160 = v198 + 8 * v134 * v179;
      v161 = &v159[16 * v208];
      v162 = &v159[8 * ((2 * v208) | 1)];
      cblas_drotg_NEWLAPACK();
      v163 = *(v160 + 8 * v208);
      v164 = -(*v162 * v163);
      *(v160 + 8 * (v208 + 1)) = v164;
      *(v160 + 8 * v208) = v163 * *v161;
      v148 = fabs(v164);
      v146 = v206;
      v147 = v206->data;
      if (*&v206->attributes)
      {
        goto LABEL_151;
      }
    }

    v149 = v146->columnStride * v134;
    goto LABEL_159;
  }
}

SparseIterativeStatus_t _SparseGMRESSolve_Double(SparseGMRESOptions *options, DenseMatrix_Double *X, DenseMatrix_Double *B, void *ApplyOperator, const SparseOpaquePreconditioner_Double *Preconditioner)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = 4;
  if (*&X->attributes)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(&X->rowCount + v8);
  if (*&X->attributes)
  {
    v7 = 0;
  }

  v10 = *(&X->rowCount + v7);
  variant = options->variant;
  if (Preconditioner || variant != 2)
  {
    if (options->nvec)
    {
      nvec = options->nvec;
    }

    else
    {
      nvec = 16;
    }

    v14 = variant - 1;
    v15 = v10 * v9;
    if (variant == 2)
    {
      v16 = v15 * nvec;
    }

    else
    {
      v16 = 0;
    }

    v17 = 5 * v10 + 8 * (v16 + v10 + v15 + v10 + v10 * (nvec + v9) * (nvec + 3));
    if (v14 > 1)
    {
      v17 = v10 + 8 * (((nvec + 3) * nvec + (2 * nvec + 2) * v9) * v10 + (v10 + v10 * v9));
    }

    v18 = v17 + 24;
    v19 = malloc_type_malloc(v17 + 24, 0x100004077774924uLL);
    if (v19)
    {
      v24 = v19 + v18;
      *&R.attributes = 0;
      R.rowCount = v9;
      R.columnCount = v10;
      R.columnStride = v9;
      v25 = ((&v19[v15] + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v24 < v25 || (v56 = v19, R.data = v19, sub_23674EB10(X, B, &R, ApplyOperator, v20, v21, v22, v23), v26 = &v25[v10 + 7] & 0xFFFFFFFFFFFFFFF8, v24 < v26) || (Preconditionera = Preconditioner, bzero(v25, v10), v53 = (v26 + 8 * v10), v53 > v24))
      {
        __break(1u);
        return v19;
      }

      v51 = v9;
      if (v10 >= 1)
      {
        v27 = v10;
        v28 = v56;
        v29 = (&v25[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
        do
        {
          cblas_dnrm2_NEWLAPACK();
          *v29++ = v30;
          v28 += v9;
          --v27;
        }

        while (v27);
      }

      if (options->maxIterations)
      {
        maxIterations = options->maxIterations;
      }

      else
      {
        maxIterations = 100;
      }

      rtol = options->rtol;
      v33 = rtol == 0.0;
      if (rtol < 0.0)
      {
        rtol = 0.0;
      }

      if (v33)
      {
        v34 = 0.0000000149011612;
      }

      else
      {
        v34 = rtol;
      }

      if (maxIterations < 1)
      {
LABEL_51:
        reportError = options->reportError;
        if (!options->reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23674EC1C();
          }

          _SparseTrap();
        }

        memset(&__str[35], 0, 221);
        strcpy(__str, "Exceeded maximum iteration limit.\n");
        (reportError)(__str);
        v48 = 1;
        v47 = v56;
      }

      else
      {
        v35 = 0;
        atol = options->atol;
        v37 = v51;
        if (*&R.attributes)
        {
          v37 = 1;
        }

        v38 = 8 * v37;
        while (1)
        {
          if (options->reportStatus && (v35 < nvec || !(v35 % nvec)))
          {
            v39 = v56;
            if (!v35)
            {
              v39 = (&v25[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
            }

            snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v35, *v39);
            (options->reportStatus)(__str);
          }

          _SparseGMRESIterate_Double(options, v35, v53, v25, X, B, &R, Preconditionera, ApplyOperator);
          if (v10 < 1)
          {
            break;
          }

          v40 = 1;
          v41 = v10;
          v42 = v56;
          v43 = v25;
          v44 = (&v25[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v45 = *v43 || fabs(*v42) < atol + v34 * *v44;
            *v43++ = v45;
            v40 &= v45;
            ++v44;
            v42 = (v42 + v38);
            --v41;
          }

          while (v41);
          if (v40)
          {
            goto LABEL_65;
          }

          if (++v35 == maxIterations)
          {
            goto LABEL_51;
          }
        }

        v35 = 0;
LABEL_65:
        v47 = v56;
        if (options->reportStatus)
        {
          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v35 + 1, *v56);
          (options->reportStatus)(__str);
        }

        _SparseGMRESIterate_Double(options, -1, v53, v25, X, B, &R, Preconditionera, ApplyOperator);
        v48 = 0;
      }

      free(v47);
    }

    else
    {
      if (!options->reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23674EC64(v18);
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v18);
      (options->reportError)(__str);
      v48 = -99;
    }
  }

  else
  {
    v12 = options->reportError;
    if (!options->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23674ECE4();
      }

      _SparseTrap();
    }

    memset(&__str[100], 0, 156);
    strcpy(__str, "FGMRES requires a preconditioner.\nIf no preconditioner is available, use GMRES or DQGMRES instead.\n");
    (v12)(__str);
    v48 = -1;
  }

  LODWORD(v19) = v48;
  return v19;
}

void sub_23674EB10(const SparseGMRESOptions *options, uint64_t iteration, char *state, const BOOL *converged, DenseMatrix_Double *X, DenseMatrix_Double *B, DenseMatrix_Double *R, const SparseOpaquePreconditioner_Double *Preconditioner)
{
  v10 = 4;
  if (options->nvec)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&options->reportError + v11);
  if (options->nvec)
  {
    v10 = 0;
  }

  v13 = *(&options->reportError + v10);
  v14 = *(converged + 2);
  v28 = *&options->reportError;
  v29 = *&options->maxIterations;
  v26 = *state;
  v27 = *(state + 2);
  v14(converged, 0, 111, &v28, &v26, B, R, Preconditioner);
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      if (v12 >= 1)
      {
        v16 = 0;
        v17 = *(iteration + 16);
        v18 = *(state + 2);
        v19 = *(iteration + 8);
        v20 = *(state + 2);
        do
        {
          if (*(iteration + 12))
          {
            v21 = v16;
          }

          else
          {
            v21 = i;
          }

          if (*(iteration + 12))
          {
            v22 = i;
          }

          else
          {
            v22 = v16;
          }

          v23 = *(v17 + 8 * (v22 + v19 * v21));
          if (*(state + 3))
          {
            v24 = v16;
          }

          else
          {
            v24 = i;
          }

          if (*(state + 3))
          {
            v25 = i;
          }

          else
          {
            v25 = v16;
          }

          *(v18 + 8 * (v25 + v20 * v24)) = v23 - *(v18 + 8 * (v25 + v20 * v24));
          ++v16;
        }

        while (v12 != v16);
      }
    }
  }
}

void sub_23674EC64(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = a1;
  _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", &v1, 0xCu);
}

uint64_t sub_23674ED2C(FILE *a1, const char *a2, int *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = "UNTITLED";
  if (a2)
  {
    v5 = a2;
  }

  result = fprintf(a1, "%-72s%8s\n", v5, "00000000");
  if ((result & 0x80000000) == 0)
  {
    v7 = a3[1];
    v8 = v7 / 3;
    v9 = v7 / 3 + 1;
    v10 = *(*(a3 + 1) + 8 * v7) - 1;
    result = fprintf(a1, "%14ld %13d %13ld %13ld\n", v10 / 6 + 1 + v8 + 5 + v10 / 2 + 1, v9, v10 / 6 + 1, v10 / 2 + 1);
    if ((result & 0x80000000) == 0)
    {
      v27 = 6373234;
      v11 = *a3;
      v12 = a3[1];
      v13 = *a3 == v12 ? 117 : 114;
      v14 = (~*(a3 + 12) & 0xC) != 0 ? v13 : 115;
      BYTE1(v27) = v14;
      result = fprintf(a1, "%3s            %13d %13d %13ld %13d\n", &v27, v11, v12, *(*(a3 + 1) + 8 * v12), 0);
      if ((result & 0x80000000) == 0)
      {
        snprintf(__str, 0x50uLL, "(%dI22)", 3);
        snprintf(v29, 0x50uLL, "(%dI12)", 6);
        snprintf(v28, 0x50uLL, "(%dE27.16)", 2);
        result = fprintf(a1, "%16s%16s%20s\n", __str, v29, v28);
        if ((result & 0x80000000) == 0)
        {
          v15 = a3[1];
          if ((v15 & 0x80000000) != 0)
          {
LABEL_21:
            v21 = *(*(a3 + 1) + 8 * v15);
            v22 = v21 - 1;
            if (v21 < 1)
            {
              return 0;
            }

            else
            {
              v23 = 0;
              v24 = -1;
              v25 = 1;
              while (1)
              {
                result = fprintf(a1, "%12d", *(*(a3 + 2) + v23) + 1);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                if (!--v21 || !(v24 + 6 * (v25 / 6)))
                {
                  result = fprintf(a1, "\n");
                  if ((result & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                --v24;
                ++v25;
                v23 += 4;
                if (!v21)
                {
                  while (1)
                  {
                    result = fprintf(a1, "%27.16e", *(*(a3 + 4) + 4 * v21));
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    if ((v21 & 1) != 0 || v22 == v21)
                    {
                      v26 = fprintf(a1, "\n");
                      if (v26 < 0 || v22 == v21)
                      {
                        return v26 & (v26 >> 31);
                      }
                    }

                    ++v21;
                  }

                  return result;
                }
              }
            }
          }

          else
          {
            v16 = 0;
            v17 = 8 * v15;
            v18 = 8 * v15 + 8;
            v19 = -1;
            v20 = 1;
            while (1)
            {
              result = fprintf(a1, "%22ld", *(*(a3 + 1) + v16) + 1);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v17 == v16 || !(v19 + 3 * (v20 / 3)))
              {
                result = fprintf(a1, "\n");
                if ((result & 0x80000000) != 0)
                {
                  break;
                }
              }

              v16 += 8;
              --v19;
              ++v20;
              if (v18 == v16)
              {
                LODWORD(v15) = a3[1];
                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int *sub_23674F0B4(FILE *a1, uint64_t a2, size_t a3, char *a4)
{
  __endptr[16] = *MEMORY[0x277D85DE8];
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x66584420uLL);
  if (getline(&__linep, &__linecapp, a1) > 0)
  {
    if (a4)
    {
      v7 = __linep;
      strncpy(a4, __linep, a3);
      a4[strlen(v7) - 1] = 0;
    }

    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 1.\n";
    }

    else
    {
      if ((sscanf(__linep, "%ld %ld %ld %ld %ld", &v63, &v62, &v61, &v60, &v59) - 6) <= 0xFFFFFFFD)
      {
        v8 = *MEMORY[0x277D85DF8];
        v9 = "Header line 1 is malformed.\n";
LABEL_12:
        v10 = 28;
        goto LABEL_15;
      }

      v54 = 0;
      v55 = 0;
      v52 = 0;
      v53 = 0;
      if (getline(&__linep, &__linecapp, a1) > 0)
      {
        if (sscanf(__linep, "%3s %ld %ld %ld %ld", &v56, &v55, &v54, &v53, &v52) <= 4)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Header line 2 is malformed.\n";
          goto LABEL_12;
        }

        v13 = v56 - 67;
        if (v13 <= 0x2F)
        {
          if (((1 << v13) & 0x804000008040) != 0)
          {
            v14 = 0;
            goto LABEL_24;
          }

          if (((1 << v13) & 0x100000001) != 0)
          {
            v8 = *MEMORY[0x277D85DF8];
            v9 = "Cannot read complex-valued matrix into real-valued type.\n";
            v10 = 57;
            goto LABEL_15;
          }

          if (((1 << v13) & 0x200000002000) != 0)
          {
            v14 = 1;
LABEL_24:
            if (v52 || (v58 & 0xDF) != 0x41)
            {
              v8 = *MEMORY[0x277D85DF8];
              v9 = "Elemental matrices are not supported (yet).\n";
              v10 = 44;
              goto LABEL_15;
            }

            if (v14)
            {
              v15 = 0;
            }

            else
            {
              v15 = 4 * v53;
            }

            v16 = malloc_type_malloc(4 * v53 + 8 * v54 + v15 + 96, 0x10900405D25300CuLL);
            v11 = v16;
            v17 = (v16 + 55) & 0xFFFFFFFFFFFFFFF0;
            v18 = v54;
            *v16 = v55;
            *(v16 + 1) = v18;
            *(v16 + 6) = 0;
            v16[28] = 1;
            *(v16 + 29) = 0;
            v16[31] = 0;
            v19 = (v17 + 8 * v18 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v16 + 1) = v17;
            *(v16 + 2) = v19;
            v20 = (v19 + 4 * v53 + 15) & 0xFFFFFFFFFFFFFFF0;
            if (v14)
            {
              v20 = 0;
            }

            *(v16 + 4) = v20;
            v21 = v57 - 72;
            if (v21 <= 0x2D)
            {
              if (((1 << v21) & 0x240000002400) != 0)
              {
                v22 = *(v16 + 12) & 0xFFF3;
                goto LABEL_40;
              }

              if (((1 << v21) & 0x100000001) != 0)
              {
                v48 = *MEMORY[0x277D85DF8];
                v49 = "Hermitian matrices are not supported with real-valued type (did you mean Symmetric?)\n";
                v50 = 85;
                goto LABEL_80;
              }

              if (((1 << v21) & 0x80000000800) != 0)
              {
                v22 = *(v16 + 12) | 0xE;
LABEL_40:
                *(v16 + 12) = v22;
                if (getline(&__linep, &__linecapp, a1) < 1)
                {
                  v48 = *MEMORY[0x277D85DF8];
                  v49 = "File is missing header line 3.\n";
                }

                else
                {
                  v23 = v62-- < 1;
                  if (!v23)
                  {
                    v24 = 0;
                    while (getline(&__linep, &__linecapp, a1) > 0)
                    {
                      v25 = __linep;
                      __endptr[0] = 0;
                      while (1)
                      {
                        v26 = strtol(v25, __endptr, 0);
                        v27 = __endptr[0];
                        if (__endptr[0] == v25)
                        {
                          break;
                        }

                        v28 = v24 + 1;
                        *(*(v11 + 1) + 8 * v24) = v26 - 1;
                        v25 = v27;
                        v23 = v24++ < v11[1];
                        if (!v23)
                        {
                          goto LABEL_49;
                        }
                      }

                      v28 = v24;
LABEL_49:
                      v29 = v62--;
                      v24 = v28;
                      if (v29 <= 0)
                      {
                        goto LABEL_50;
                      }
                    }

                    v48 = *MEMORY[0x277D85DF8];
                    v49 = "File truncated in pointer lines.\n";
                    v50 = 33;
                    goto LABEL_80;
                  }

LABEL_50:
                  v23 = v61-- < 1;
                  if (!v23)
                  {
                    v30 = 0;
                    while (getline(&__linep, &__linecapp, a1) > 0)
                    {
                      v31 = __linep;
                      __endptr[0] = 0;
                      while (1)
                      {
                        v32 = strtol(v31, __endptr, 0);
                        v33 = __endptr[0];
                        if (__endptr[0] == v31)
                        {
                          break;
                        }

                        v34 = v30 + 1;
                        *(*(v11 + 2) + 4 * v30) = v32 - 1;
                        v30 = v34;
                        v31 = v33;
                        if (v34 >= v53)
                        {
                          goto LABEL_58;
                        }
                      }

                      v34 = v30;
LABEL_58:
                      v35 = v61--;
                      v30 = v34;
                      if (v35 <= 0)
                      {
                        goto LABEL_59;
                      }
                    }

                    v48 = *MEMORY[0x277D85DF8];
                    v49 = "File truncated in row index lines.\n";
                    v50 = 35;
                    goto LABEL_80;
                  }

LABEL_59:
                  if ((v14 & 1) != 0 || (v36 = *(v11 + 4), v23 = v60 < 1, --v60, v23))
                  {
LABEL_73:
                    free(__linep);
                    return v11;
                  }

                  v37 = 0;
                  while (getline(&__linep, &__linecapp, a1) > 0)
                  {
                    v38 = strtok(__linep, " \t\n");
                    v51 = 0;
                    if (v38)
                    {
                      v39 = v38;
                      do
                      {
                        v40 = strtod(v39, &v51);
                        v41 = v51;
                        if (*v51)
                        {
                          __memcpy_chk();
                          v42 = __endptr + v41 - v39;
                          *v42 = 69;
                          v43 = strlen(v41);
                          memcpy(v42 + 1, v41, v43 + 1);
                          v44 = strtod(__endptr, &v51);
                          if (*v51)
                          {
                            fprintf(*MEMORY[0x277D85DF8], "Number %s not read correctly as %s\n", v39, __endptr);
                          }
                        }

                        else
                        {
                          v44 = v40;
                        }

                        v45 = v44;
                        v46 = v37 + 1;
                        *(v36 + 4 * v37) = v45;
                        v39 = strtok(0, " \t\n");
                        ++v37;
                      }

                      while (v39);
                    }

                    else
                    {
                      v46 = v37;
                    }

                    v47 = v60--;
                    v37 = v46;
                    if (v47 <= 0)
                    {
                      goto LABEL_73;
                    }
                  }

                  v48 = *MEMORY[0x277D85DF8];
                  v49 = "File truncated in value lines.\n";
                }

                v50 = 31;
LABEL_80:
                fwrite(v49, v50, 1uLL, v48);
                goto LABEL_81;
              }
            }

            fprintf(*MEMORY[0x277D85DF8], "Unsuported matrix type %c%c%c\n", v56, v57, v58);
LABEL_81:
            free(v11);
            return 0;
          }
        }

        v8 = *MEMORY[0x277D85DF8];
        v9 = "Unsupported matrix type.\n";
        v10 = 25;
        goto LABEL_15;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 2.\n";
    }

    v10 = 31;
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277D85DF8];
  v9 = "File is missing description line.\n";
  v10 = 34;
LABEL_15:
  fwrite(v9, v10, 1uLL, v8);
  return 0;
}

uint64_t sub_23674F7C4(FILE *a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = "UNTITLED";
  if (a2)
  {
    v5 = a2;
  }

  result = fprintf(a1, "%-72s%8s\n", v5, "00000000");
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7 = *(a3 + 4);
  v8 = v7 / 3;
  v9 = v7 / 3 + 1;
  v10 = *(*(a3 + 8) + 8 * v7);
  result = fprintf(a1, "%14ld %13d %13ld %13ld\n", (v10 - 1) / 6 + 1 + v8 + 5 + (2 * v10 - 1) / 2 + 1, v9, (v10 - 1) / 6 + 1, (2 * v10 - 1) / 2 + 1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v25 = 6373219;
  v11 = (*(a3 + 24) >> 2) & 7;
  if (v11 < 3)
  {
    if (*a3 == *(a3 + 4))
    {
      v12 = 117;
    }

    else
    {
      v12 = 114;
    }

    goto LABEL_13;
  }

  if (v11 == 3)
  {
    v12 = 115;
    goto LABEL_13;
  }

  if (v11 == 7)
  {
    v12 = 104;
LABEL_13:
    BYTE1(v25) = v12;
  }

  result = fprintf(a1, "%3s            %13d %13d %13ld %13d\n", &v25, *a3, *(a3 + 4), *(*(a3 + 8) + 8 * *(a3 + 4)), 0);
  if ((result & 0x80000000) == 0)
  {
    snprintf(__str, 0x50uLL, "(%dI22)", 3);
    snprintf(v27, 0x50uLL, "(%dI12)", 6);
    snprintf(v26, 0x50uLL, "(%dE27.16)", 2);
    result = fprintf(a1, "%16s%16s%20s\n", __str, v27, v26);
    if ((result & 0x80000000) == 0)
    {
      v13 = *(a3 + 4);
      if ((v13 & 0x80000000) != 0)
      {
LABEL_24:
        v19 = *(*(a3 + 8) + 8 * v13);
        if (v19 < 1)
        {
          return 0;
        }

        else
        {
          v20 = 0;
          v21 = -1;
          v22 = 1;
          v23 = *(*(a3 + 8) + 8 * v13);
          while (1)
          {
            result = fprintf(a1, "%12d", *(*(a3 + 16) + v20) + 1);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!--v23 || !(v21 + 6 * (v22 / 6)))
            {
              result = fprintf(a1, "\n");
              if ((result & 0x80000000) != 0)
              {
                break;
              }
            }

            --v21;
            ++v22;
            v20 += 4;
            if (!v23)
            {
              for (i = 0; ; i += 8)
              {
                result = fprintf(a1, "%27.16e %27.16e", *(*(a3 + 32) + i), *(*(a3 + 32) + i + 4));
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                result = fprintf(a1, "\n");
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                if (!--v19)
                {
                  return 0;
                }
              }

              return result;
            }
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = 8 * v13;
        v16 = 8 * v13 + 8;
        v17 = -1;
        v18 = 1;
        while (1)
        {
          result = fprintf(a1, "%22ld", *(*(a3 + 8) + v14) + 1);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v15 == v14 || !(v17 + 3 * (v18 / 3)))
          {
            result = fprintf(a1, "\n");
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }

          v14 += 8;
          --v17;
          ++v18;
          if (v16 == v14)
          {
            LODWORD(v13) = *(a3 + 4);
            goto LABEL_24;
          }
        }
      }
    }
  }

  return result;
}

int *sub_23674FB68(FILE *a1, uint64_t a2, size_t a3, char *a4)
{
  __endptr[16] = *MEMORY[0x277D85DE8];
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x66584420uLL);
  if (getline(&__linep, &__linecapp, a1) > 0)
  {
    if (a4)
    {
      v7 = __linep;
      strncpy(a4, __linep, a3);
      a4[strlen(v7) - 1] = 0;
    }

    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 1.\n";
    }

    else
    {
      if ((sscanf(__linep, "%ld %ld %ld %ld %ld", &v70, &v69, &v68, &v67, &v66) - 6) <= 0xFFFFFFFD)
      {
        v8 = *MEMORY[0x277D85DF8];
        v9 = "Header line 1 is malformed.\n";
LABEL_12:
        v10 = 28;
        goto LABEL_15;
      }

      v61 = 0;
      v62 = 0;
      v59 = 0;
      v60 = 0;
      if (getline(&__linep, &__linecapp, a1) > 0)
      {
        if (sscanf(__linep, "%3s %ld %ld %ld %ld", &v63, &v62, &v61, &v60, &v59) <= 4)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Header line 2 is malformed.\n";
          goto LABEL_12;
        }

        v13 = v63 - 67;
        if (v13 >= 0x30 || ((0xA0410000A041uLL >> v13) & 1) == 0)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Unsupported matrix type.\n";
          v10 = 25;
          goto LABEL_15;
        }

        if (v59 || (v65 & 0xDF) != 0x41)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Elemental matrices are not supported (yet).\n";
          v10 = 44;
          goto LABEL_15;
        }

        v14 = 0x200000002000uLL >> v13;
        v15 = 8 * v60;
        if ((0x200000002000uLL >> v13))
        {
          v15 = 0;
        }

        v16 = malloc_type_malloc(4 * v60 + 8 * v61 + v15 + 96, 0x10900405D25300CuLL);
        v11 = v16;
        v17 = (v16 + 55) & 0xFFFFFFFFFFFFFFF0;
        v18 = v61;
        *v16 = v62;
        *(v16 + 1) = v18;
        *(v16 + 6) = 0;
        v16[28] = 1;
        *(v16 + 29) = 0;
        v16[31] = 0;
        v19 = (v17 + 8 * v18 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v16 + 1) = v17;
        *(v16 + 2) = v19;
        v20 = (v19 + 4 * v60 + 15) & 0xFFFFFFFFFFFFFFF0;
        if (v14)
        {
          v20 = 0;
        }

        *(v16 + 4) = v20;
        v21 = v64 - 72;
        if (v21 > 0x2D)
        {
          goto LABEL_77;
        }

        if (((1 << v21) & 0x240000002400) != 0)
        {
          v22 = *(v16 + 12) & 0xFFE3;
        }

        else
        {
          if (((1 << v21) & 0x100000001) == 0)
          {
            if (((1 << v21) & 0x80000000800) != 0)
            {
              v22 = *(v16 + 12) & 0xFFE1 | 0xE;
              goto LABEL_35;
            }

LABEL_77:
            fprintf(*MEMORY[0x277D85DF8], "Unsuported matrix type %c%c%c\n", v63, v64, v65);
            goto LABEL_76;
          }

          v22 = *(v16 + 12) | 0x1E;
        }

LABEL_35:
        *(v16 + 12) = v22;
        if (getline(&__linep, &__linecapp, a1) < 1)
        {
          v36 = *MEMORY[0x277D85DF8];
          v37 = "File is missing header line 3.\n";
        }

        else
        {
          v23 = v69-- < 1;
          if (!v23)
          {
            v24 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v25 = __linep;
              __endptr[0] = 0;
              while (1)
              {
                v26 = strtol(v25, __endptr, 0);
                v27 = __endptr[0];
                if (__endptr[0] == v25)
                {
                  break;
                }

                v28 = v24 + 1;
                *(*(v11 + 1) + 8 * v24) = v26 - 1;
                v25 = v27;
                v23 = v24++ < v11[1];
                if (!v23)
                {
                  goto LABEL_44;
                }
              }

              v28 = v24;
LABEL_44:
              v29 = v69--;
              v24 = v28;
              if (v29 <= 0)
              {
                goto LABEL_45;
              }
            }

            v36 = *MEMORY[0x277D85DF8];
            v37 = "File truncated in pointer lines.\n";
            v38 = 33;
            goto LABEL_75;
          }

LABEL_45:
          v23 = v68-- < 1;
          if (!v23)
          {
            v30 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v31 = __linep;
              __endptr[0] = 0;
              while (1)
              {
                v32 = strtol(v31, __endptr, 0);
                v33 = __endptr[0];
                if (__endptr[0] == v31)
                {
                  break;
                }

                v34 = v30 + 1;
                *(*(v11 + 2) + 4 * v30) = v32 - 1;
                v30 = v34;
                v31 = v33;
                if (v34 >= v60)
                {
                  goto LABEL_53;
                }
              }

              v34 = v30;
LABEL_53:
              v35 = v68--;
              v30 = v34;
              if (v35 <= 0)
              {
                goto LABEL_54;
              }
            }

            v36 = *MEMORY[0x277D85DF8];
            v37 = "File truncated in row index lines.\n";
            v38 = 35;
            goto LABEL_75;
          }

LABEL_54:
          if (v14)
          {
LABEL_55:
            free(__linep);
            return v11;
          }

          if ((0x100000001uLL >> v13))
          {
            v39 = *(v11 + 4);
            v60 *= 2;
            v23 = v67-- < 1;
            if (v23)
            {
              goto LABEL_55;
            }

            v40 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v41 = strtok(__linep, " \t\n");
              v58 = 0;
              if (v41)
              {
                v42 = v41;
                do
                {
                  v43 = strtod(v42, &v58);
                  v44 = v58;
                  if (*v58)
                  {
                    __memcpy_chk();
                    v45 = __endptr + v44 - v42;
                    *v45 = 69;
                    v46 = strlen(v44);
                    memcpy(v45 + 1, v44, v46 + 1);
                    v47 = strtod(__endptr, &v58);
                    if (*v58)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "Number %s not read correctly as %s\n", v42, __endptr);
                    }
                  }

                  else
                  {
                    v47 = v43;
                  }

                  v48 = v47;
                  v49 = v40 + 1;
                  *(v39 + 4 * v40) = v48;
                  v42 = strtok(0, " \t\n");
                  ++v40;
                }

                while (v42);
              }

              else
              {
                v49 = v40;
              }

              v50 = v67--;
              v40 = v49;
              if (v50 <= 0)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
            v23 = v67-- < 1;
            if (v23)
            {
              goto LABEL_55;
            }

            v51 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v52 = __linep;
              __endptr[0] = 0;
              v53 = 8 * v51;
              do
              {
                v54 = strtod(v52, __endptr);
                if (__endptr[0] == v52)
                {
                  break;
                }

                v55 = v54;
                ++v51;
                v56 = *(v11 + 4) + v53;
                *v56 = v55;
                *(v56 + 4) = 0;
                v52 = __endptr[0];
                v53 += 8;
              }

              while (v51 < v60);
              v57 = v67--;
              if (v57 <= 0)
              {
                goto LABEL_55;
              }
            }
          }

          v36 = *MEMORY[0x277D85DF8];
          v37 = "File truncated in value lines.\n";
        }

        v38 = 31;
LABEL_75:
        fwrite(v37, v38, 1uLL, v36);
LABEL_76:
        free(v11);
        return 0;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 2.\n";
    }

    v10 = 31;
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277D85DF8];
  v9 = "File is missing description line.\n";
  v10 = 34;
LABEL_15:
  fwrite(v9, v10, 1uLL, v8);
  return 0;
}

uint64_t sub_2367502D8(FILE *a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = "UNTITLED";
  if (a2)
  {
    v5 = a2;
  }

  result = fprintf(a1, "%-72s%8s\n", v5, "00000000");
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7 = *(a3 + 4);
  v8 = v7 / 3;
  v9 = v7 / 3 + 1;
  v10 = *(*(a3 + 8) + 8 * v7);
  result = fprintf(a1, "%14ld %13d %13ld %13ld\n", (v10 - 1) / 6 + 1 + v8 + 5 + (2 * v10 - 1) / 2 + 1, v9, (v10 - 1) / 6 + 1, (2 * v10 - 1) / 2 + 1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v25 = 6373219;
  v11 = (*(a3 + 24) >> 2) & 7;
  if (v11 < 3)
  {
    if (*a3 == *(a3 + 4))
    {
      v12 = 117;
    }

    else
    {
      v12 = 114;
    }

    goto LABEL_13;
  }

  if (v11 == 3)
  {
    v12 = 115;
    goto LABEL_13;
  }

  if (v11 == 7)
  {
    v12 = 104;
LABEL_13:
    BYTE1(v25) = v12;
  }

  result = fprintf(a1, "%3s            %13d %13d %13ld %13d\n", &v25, *a3, *(a3 + 4), *(*(a3 + 8) + 8 * *(a3 + 4)), 0);
  if ((result & 0x80000000) == 0)
  {
    snprintf(__str, 0x50uLL, "(%dI22)", 3);
    snprintf(v27, 0x50uLL, "(%dI12)", 6);
    snprintf(v26, 0x50uLL, "(%dE27.16)", 2);
    result = fprintf(a1, "%16s%16s%20s\n", __str, v27, v26);
    if ((result & 0x80000000) == 0)
    {
      v13 = *(a3 + 4);
      if ((v13 & 0x80000000) != 0)
      {
LABEL_24:
        v19 = *(*(a3 + 8) + 8 * v13);
        if (v19 < 1)
        {
          return 0;
        }

        else
        {
          v20 = 0;
          v21 = -1;
          v22 = 1;
          v23 = *(*(a3 + 8) + 8 * v13);
          while (1)
          {
            result = fprintf(a1, "%12d", *(*(a3 + 16) + v20) + 1);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!--v23 || !(v21 + 6 * (v22 / 6)))
            {
              result = fprintf(a1, "\n");
              if ((result & 0x80000000) != 0)
              {
                break;
              }
            }

            --v21;
            ++v22;
            v20 += 4;
            if (!v23)
            {
              for (i = 0; ; i += 16)
              {
                result = fprintf(a1, "%27.16e %27.16e", *(*(a3 + 32) + i), *(*(a3 + 32) + i + 8));
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                result = fprintf(a1, "\n");
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                if (!--v19)
                {
                  return 0;
                }
              }

              return result;
            }
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = 8 * v13;
        v16 = 8 * v13 + 8;
        v17 = -1;
        v18 = 1;
        while (1)
        {
          result = fprintf(a1, "%22ld", *(*(a3 + 8) + v14) + 1);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v15 == v14 || !(v17 + 3 * (v18 / 3)))
          {
            result = fprintf(a1, "\n");
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }

          v14 += 8;
          --v17;
          ++v18;
          if (v16 == v14)
          {
            LODWORD(v13) = *(a3 + 4);
            goto LABEL_24;
          }
        }
      }
    }
  }

  return result;
}

int *sub_236750674(FILE *a1, uint64_t a2, size_t a3, char *a4)
{
  __endptr[16] = *MEMORY[0x277D85DE8];
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x66584420uLL);
  if (getline(&__linep, &__linecapp, a1) > 0)
  {
    if (a4)
    {
      v7 = __linep;
      strncpy(a4, __linep, a3);
      a4[strlen(v7) - 1] = 0;
    }

    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 1.\n";
    }

    else
    {
      if ((sscanf(__linep, "%ld %ld %ld %ld %ld", &v68, &v67, &v66, &v65, &v64) - 6) <= 0xFFFFFFFD)
      {
        v8 = *MEMORY[0x277D85DF8];
        v9 = "Header line 1 is malformed.\n";
LABEL_12:
        v10 = 28;
        goto LABEL_15;
      }

      v59 = 0;
      v60 = 0;
      v57 = 0;
      v58 = 0;
      if (getline(&__linep, &__linecapp, a1) > 0)
      {
        if (sscanf(__linep, "%3s %ld %ld %ld %ld", &v61, &v60, &v59, &v58, &v57) <= 4)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Header line 2 is malformed.\n";
          goto LABEL_12;
        }

        v13 = v61 - 67;
        if (v13 >= 0x30 || ((0xA0410000A041uLL >> v13) & 1) == 0)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Unsupported matrix type.\n";
          v10 = 25;
          goto LABEL_15;
        }

        if (v57 || (v63 & 0xDF) != 0x41)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Elemental matrices are not supported (yet).\n";
          v10 = 44;
          goto LABEL_15;
        }

        v14 = 0x200000002000uLL >> v13;
        v15 = 16 * v58;
        if ((0x200000002000uLL >> v13))
        {
          v15 = 0;
        }

        v16 = malloc_type_malloc(4 * v58 + 8 * v59 + v15 + 96, 0x10900405D25300CuLL);
        v11 = v16;
        v17 = (v16 + 55) & 0xFFFFFFFFFFFFFFF0;
        v18 = v59;
        *v16 = v60;
        *(v16 + 1) = v18;
        *(v16 + 6) = 0;
        v16[28] = 1;
        *(v16 + 29) = 0;
        v16[31] = 0;
        v19 = (v17 + 8 * v18 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v16 + 1) = v17;
        *(v16 + 2) = v19;
        v20 = (v19 + 4 * v58 + 15) & 0xFFFFFFFFFFFFFFF0;
        if (v14)
        {
          v20 = 0;
        }

        *(v16 + 4) = v20;
        v21 = v62 - 72;
        if (v21 > 0x2D)
        {
          goto LABEL_77;
        }

        if (((1 << v21) & 0x240000002400) != 0)
        {
          v22 = *(v16 + 12) & 0xFFE3;
        }

        else
        {
          if (((1 << v21) & 0x100000001) == 0)
          {
            if (((1 << v21) & 0x80000000800) != 0)
            {
              v22 = *(v16 + 12) & 0xFFE1 | 0xE;
              goto LABEL_35;
            }

LABEL_77:
            fprintf(*MEMORY[0x277D85DF8], "Unsuported matrix type %c%c%c\n", v61, v62, v63);
            goto LABEL_76;
          }

          v22 = *(v16 + 12) | 0x1E;
        }

LABEL_35:
        *(v16 + 12) = v22;
        if (getline(&__linep, &__linecapp, a1) < 1)
        {
          v36 = *MEMORY[0x277D85DF8];
          v37 = "File is missing header line 3.\n";
        }

        else
        {
          v23 = v67-- < 1;
          if (!v23)
          {
            v24 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v25 = __linep;
              __endptr[0] = 0;
              while (1)
              {
                v26 = strtol(v25, __endptr, 0);
                v27 = __endptr[0];
                if (__endptr[0] == v25)
                {
                  break;
                }

                v28 = v24 + 1;
                *(*(v11 + 1) + 8 * v24) = v26 - 1;
                v25 = v27;
                v23 = v24++ < v11[1];
                if (!v23)
                {
                  goto LABEL_44;
                }
              }

              v28 = v24;
LABEL_44:
              v29 = v67--;
              v24 = v28;
              if (v29 <= 0)
              {
                goto LABEL_45;
              }
            }

            v36 = *MEMORY[0x277D85DF8];
            v37 = "File truncated in pointer lines.\n";
            v38 = 33;
            goto LABEL_75;
          }

LABEL_45:
          v23 = v66-- < 1;
          if (!v23)
          {
            v30 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v31 = __linep;
              __endptr[0] = 0;
              while (1)
              {
                v32 = strtol(v31, __endptr, 0);
                v33 = __endptr[0];
                if (__endptr[0] == v31)
                {
                  break;
                }

                v34 = v30 + 1;
                *(*(v11 + 2) + 4 * v30) = v32 - 1;
                v30 = v34;
                v31 = v33;
                if (v34 >= v58)
                {
                  goto LABEL_53;
                }
              }

              v34 = v30;
LABEL_53:
              v35 = v66--;
              v30 = v34;
              if (v35 <= 0)
              {
                goto LABEL_54;
              }
            }

            v36 = *MEMORY[0x277D85DF8];
            v37 = "File truncated in row index lines.\n";
            v38 = 35;
            goto LABEL_75;
          }

LABEL_54:
          if (v14)
          {
LABEL_55:
            free(__linep);
            return v11;
          }

          if ((0x100000001uLL >> v13))
          {
            v39 = *(v11 + 4);
            v58 *= 2;
            v23 = v65-- < 1;
            if (v23)
            {
              goto LABEL_55;
            }

            v40 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v41 = strtok(__linep, " \t\n");
              v56 = 0;
              if (v41)
              {
                v42 = v41;
                do
                {
                  v43 = strtod(v42, &v56);
                  v44 = v56;
                  if (*v56)
                  {
                    __memcpy_chk();
                    v45 = __endptr + v44 - v42;
                    *v45 = 69;
                    v46 = strlen(v44);
                    memcpy(v45 + 1, v44, v46 + 1);
                    v47 = strtod(__endptr, &v56);
                    if (*v56)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "Number %s not read correctly as %s\n", v42, __endptr);
                    }
                  }

                  else
                  {
                    v47 = v43;
                  }

                  v48 = v40 + 1;
                  *(v39 + 8 * v40) = v47;
                  v42 = strtok(0, " \t\n");
                  ++v40;
                }

                while (v42);
              }

              else
              {
                v48 = v40;
              }

              v49 = v65--;
              v40 = v48;
              if (v49 <= 0)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
            v23 = v65-- < 1;
            if (v23)
            {
              goto LABEL_55;
            }

            v50 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v51 = __linep;
              __endptr[0] = 0;
              v52 = 16 * v50;
              do
              {
                v53 = strtod(v51, __endptr);
                if (__endptr[0] == v51)
                {
                  break;
                }

                ++v50;
                v54 = *(v11 + 4) + v52;
                *v54 = v53;
                *(v54 + 8) = 0;
                v51 = __endptr[0];
                v52 += 16;
              }

              while (v50 < v58);
              v55 = v65--;
              if (v55 <= 0)
              {
                goto LABEL_55;
              }
            }
          }

          v36 = *MEMORY[0x277D85DF8];
          v37 = "File truncated in value lines.\n";
        }

        v38 = 31;
LABEL_75:
        fwrite(v37, v38, 1uLL, v36);
LABEL_76:
        free(v11);
        return 0;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 2.\n";
    }

    v10 = 31;
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277D85DF8];
  v9 = "File is missing description line.\n";
  v10 = 34;
LABEL_15:
  fwrite(v9, v10, 1uLL, v8);
  return 0;
}

void *sub_236750DDC(void *result, _DWORD *a2, uint64_t a3, int *a4, char *__b)
{
  if (result >= 1)
  {
    v9 = result;
    v10 = &__b[4 * result];
    v11 = &__b[8 * result];
    v12 = &__b[12 * result];
    v13 = 4 * result;
    v14 = result;
    memset(__b, 255, v13);
    v15 = v14;
    do
    {
      v16 = a2[v15 - 1];
      if (v16 != -1)
      {
        *&__b[4 * v9 - 4 + 4 * v15] = *&__b[4 * v16];
        *&__b[4 * v16] = v15 - 1;
      }

      --v15;
    }

    while ((v15 + 1) > 1);
    result = memcpy(v12, a4, v13);
    v17 = 0;
    v18 = 0;
    do
    {
      if (a2[v17] == -1)
      {
        v19 = 0;
        *v11 = v17;
        do
        {
          while (1)
          {
            v20 = *&v11[4 * v19];
            v21 = *&__b[4 * v20];
            if (v21 == -1)
            {
              break;
            }

            *&__b[4 * v20] = *&v10[4 * v21];
            *&v11[4 * ++v19] = v21;
            if (v19 < 0)
            {
              goto LABEL_8;
            }
          }

          --v19;
          a4[v18++] = *&v12[4 * v20];
        }

        while ((v19 & 0x80000000) == 0);
      }

LABEL_8:
      ++v17;
    }

    while (v17 != v14);
    v22 = v14;
    v23 = a4;
    v24 = v11;
    do
    {
      v25 = *v23++;
      v26 = a2[*(a3 + 4 * v25)];
      if (v26 != -1)
      {
        LODWORD(v26) = *&v12[4 * v26];
      }

      *v24 = v26;
      v24 += 4;
      --v22;
    }

    while (v22);
    do
    {
      *(a3 + 4 * a4[v22]) = v22;
      ++v22;
    }

    while (v14 != v22);
    do
    {
      v28 = *v11;
      v11 += 4;
      v27 = v28;
      if (v28 != -1)
      {
        LODWORD(v27) = *(a3 + 4 * v27);
      }

      *a2++ = v27;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_236750FA0(int *a1, uint64_t a2, char *a3, char *a4, int *a5, int *a6, int *a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a1;
  v14 = a1[1];
  *a7 = 0;
  *a8 = 0;
  *a5 = 0;
  *a6 = 0;
  v15 = (4 * v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = a11 + v15;
  v143 = 4 * v13 + 7;
  v144 = 4 * v14;
  v17 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = a11 + v15 + v17;
  v142 = 4 * v14 + 7;
  v148 = v13;
  if (a3)
  {
    if (*a1 < 1)
    {
      v20 = 0;
    }

    else
    {
      v19 = 0;
      LODWORD(v20) = 0;
      v21 = *(a1 + 28);
      v22 = a3;
      do
      {
        if (!v21)
        {
          goto LABEL_8;
        }

        v23 = 1;
        v24 = v21;
        v25 = v22;
        do
        {
          v26 = *v25++;
          v23 &= v26;
          --v24;
        }

        while (v24);
        if ((v23 & 1) == 0)
        {
          v27 = v20;
          LODWORD(v20) = v20 + 1;
          v28 = a9;
        }

        else
        {
LABEL_8:
          v27 = (*a5)++;
          v28 = a11;
        }

        *(v28 + 4 * v27) = v19++;
        v22 += v21;
      }

      while (v19 < *a1);
      v20 = v20;
    }

    if (*a5 >= 1)
    {
      v30 = 0;
      v31 = a9 + 4 * v20;
      do
      {
        *(v31 + 4 * v30) = *(a11 + 4 * v30);
        ++v30;
      }

      while (v30 < *a5);
    }

    if (v13 >= 1)
    {
      for (i = 0; i != v13; ++i)
      {
        *(a11 + 4 * *(a9 + 4 * i)) = i;
      }
    }
  }

  else
  {
    if (v13 < 1)
    {
      goto LABEL_34;
    }

    for (j = 0; j != v13; ++j)
    {
      *(a11 + 4 * j) = j;
      *(a9 + 4 * j) = j;
    }
  }

  if (a3)
  {
    if (a1[1] < 1)
    {
      v34 = 0;
    }

    else
    {
      v33 = 0;
      LODWORD(v34) = 0;
      v35 = *(a1 + 28);
      do
      {
        if (!v35)
        {
          goto LABEL_30;
        }

        v36 = 1;
        v37 = v35;
        v38 = a4;
        do
        {
          v39 = *v38++;
          v36 &= v39;
          --v37;
        }

        while (v37);
        if ((v36 & 1) == 0)
        {
          v40 = v34;
          LODWORD(v34) = v34 + 1;
          v41 = a10;
        }

        else
        {
LABEL_30:
          v40 = (*a6)++;
          v41 = a11 + v15;
        }

        *(v41 + 4 * v40) = v33++;
        a4 += v35;
      }

      while (v33 < a1[1]);
      v34 = v34;
    }

    if (*a6 >= 1)
    {
      v43 = 0;
      v44 = a10 + 4 * v34;
      do
      {
        *(v44 + 4 * v43) = *(v16 + 4 * v43);
        ++v43;
      }

      while (v43 < *a6);
    }

    if (v14 >= 1)
    {
      for (k = 0; k != v14; ++k)
      {
        *(v16 + 4 * *(a10 + 4 * k)) = k;
      }
    }

    goto LABEL_45;
  }

LABEL_34:
  if (v14 >= 1)
  {
    for (m = 0; m != v14; ++m)
    {
      *(v16 + 4 * m) = m;
      *(a10 + 4 * m) = m;
    }
  }

LABEL_45:
  v46 = *a1 + ~*a5;
  v47 = a1[1] + ~*a6;
  v146 = v18 + v15;
  v147 = a11 + v15 + v17;
  v48 = (v18 + v15 + v17);
  v145 = v14;
  v49 = &v48[v15];
  bzero(v48, 4 * v13);
  bzero(v49, v144);
  if (v145 >= 1)
  {
    v50 = 0;
    v51 = 0;
    v52 = v148;
    v53 = a2;
    v55 = v146;
    v54 = v147;
    v56 = v49;
    while (1)
    {
      if (*(v16 + 4 * v50) <= v47)
      {
        v57 = (*(a1 + 1) + 8 * v50);
        v59 = *v57;
        v58 = v57[1];
        v60 = v58 - v59;
        if (v58 <= v59)
        {
          return 0xFFFFFFFFLL;
        }

        v61 = 0;
        v62 = (*(a1 + 2) + 4 * v59);
        do
        {
          v64 = *v62++;
          v63 = v64;
          if ((v64 & 0x80000000) == 0 && v63 < *a1 && *(a11 + 4 * v63) <= v46)
          {
            ++*&v48[4 * v63];
            ++v61;
          }

          --v60;
        }

        while (v60);
        if (v61 == 1)
        {
          *(v146 + 4 * v51++) = v50;
        }

        else if (!v61)
        {
          return 0xFFFFFFFFLL;
        }

        *&v49[4 * v50] = v61;
      }

      if (++v50 == v145)
      {
        goto LABEL_63;
      }
    }
  }

  v51 = 0;
  v52 = v148;
  v53 = a2;
  v55 = v146;
  v54 = v147;
  v56 = v49;
LABEL_63:
  v65 = *(v53 + 8);
  v65[1] = 0;
  v66 = v65 + 1;
  *v65 = 0;
  if (v52 < 1)
  {
    v69 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = a11 + ((2 * v143) & 0xFFFFFFFFFFFFFFF0) + 16 * (v142 >> 3);
    do
    {
      v71 = *(v70 + 4 * v68);
      if (v71 == 1)
      {
        *(v54 + 4 * v69++) = v68;
        v71 = *(v70 + 4 * v68);
      }

      else if (!v71)
      {
        if (*(a11 + 4 * v68) <= v46)
        {
          return 0xFFFFFFFFLL;
        }

        v71 = 0;
      }

      v67 += v71;
      v65[v68++ + 2] = v67;
    }

    while (v52 != v68);
  }

  if (v145 >= 1)
  {
    for (n = 0; n != v145; ++n)
    {
      if (*(v16 + 4 * n) <= v47)
      {
        v73 = (*(a1 + 1) + 8 * n);
        v74 = *v73;
        v75 = v73[1];
        if (*v73 < v75)
        {
          v76 = *(a1 + 2);
          do
          {
            v77 = *(v76 + 4 * v74);
            if ((v77 & 0x80000000) == 0 && v77 < *a1 && *(a11 + 4 * v77) <= v46)
            {
              v78 = *(v53 + 16);
              v79 = v66[v77];
              v66[v77] = v79 + 1;
              *(v78 + 4 * v79) = n;
              v75 = v73[1];
            }

            ++v74;
          }

          while (v74 < v75);
        }
      }
    }
  }

  if (v69 >= 1)
  {
    v80 = 0;
    v81 = *(a1 + 1);
    do
    {
      v82 = *(v54 + 4 * v80);
      v83 = &v65[v82];
      v84 = *v83;
      v85 = v83[1];
      v86 = *a7;
      if (v84 >= v85)
      {
        v89 = -1;
      }

      else
      {
        v87 = v84 + 1;
        v88 = (*(v53 + 16) + 4 * v84);
        do
        {
          v90 = *v88++;
          v89 = v90;
          v91 = *(v16 + 4 * v90) < v86 && v87++ < v85;
        }

        while (v91);
      }

      v92 = *(a11 + 4 * v82);
      v93 = *(a9 + 4 * v92);
      v94 = *(a9 + 4 * v86);
      v95 = *(a11 + 4 * v93);
      *(a11 + 4 * v93) = *(a11 + 4 * v94);
      *(a11 + 4 * v94) = v95;
      LODWORD(v93) = *(a9 + 4 * v92);
      *(a9 + 4 * v92) = *(a9 + 4 * v86);
      *(a9 + 4 * v86) = v93;
      v96 = *(v16 + 4 * v89);
      v97 = *a7;
      v98 = *(a10 + 4 * v96);
      v99 = *(a10 + 4 * v97);
      v100 = *(v16 + 4 * v98);
      *(v16 + 4 * v98) = *(v16 + 4 * v99);
      *(v16 + 4 * v99) = v100;
      LODWORD(v98) = *(a10 + 4 * v96);
      *(a10 + 4 * v96) = *(a10 + 4 * v97);
      *(a10 + 4 * v97) = v98;
      ++*a7;
      v101 = (v81 + 8 * v89);
      v103 = *v101;
      v102 = v101[1];
      v91 = v102 <= v103;
      v104 = v102 - v103;
      if (!v91)
      {
        v105 = (*(a1 + 2) + 4 * v103);
        do
        {
          v107 = *v105++;
          v106 = v107;
          if ((v107 & 0x80000000) == 0 && v106 < *a1 && *(a11 + 4 * v106) >= *a7)
          {
            v108 = *&v48[4 * v106];
            *&v48[4 * v106] = v108 - 1;
            if (v108 == 1)
            {
              if (*(a11 + 4 * v106) <= v46)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v108 == 2)
            {
              *(v54 + 4 * v69++) = v106;
            }
          }

          --v104;
        }

        while (v104);
      }

      ++v80;
    }

    while (v80 < v69);
  }

  *a7 = v69;
  if (v51 >= 1)
  {
    v109 = 0;
    v110 = v52 - *a5;
    v111 = *a6;
    do
    {
      v112 = *(v55 + 4 * v109);
      if (*(v16 + 4 * v112) >= *a7)
      {
        v113 = (*(a1 + 1) + 8 * v112);
        v114 = *v113;
        v115 = v113[1];
        if (v114 >= v115)
        {
          v120 = -1;
        }

        else
        {
          do
          {
            while (1)
            {
              v116 = *(*(a1 + 2) + 4 * v114);
              if ((v116 & 0x80000000) == 0 && v116 < *a1)
              {
                v117 = *(a11 + 4 * v116);
                if (v117 <= v46 && v117 >= *a7)
                {
                  break;
                }
              }

              if (++v114 >= v115)
              {
                goto LABEL_122;
              }
            }

            ++v114;
          }

          while (v117 >= v110 - *a8 && v114 < v115);
LABEL_122:
          v120 = v116;
        }

        v121 = *(a11 + 4 * v120);
        v122 = v110 + ~*a8;
        v123 = *(a9 + 4 * v121);
        v124 = *(a9 + 4 * v122);
        v125 = *(a11 + 4 * v123);
        *(a11 + 4 * v123) = *(a11 + 4 * v124);
        *(a11 + 4 * v124) = v125;
        LODWORD(v123) = *(a9 + 4 * v121);
        *(a9 + 4 * v121) = *(a9 + 4 * v122);
        *(a9 + 4 * v122) = v123;
        v126 = *(v16 + 4 * v112);
        LODWORD(v121) = v110 + ~*a8;
        v127 = *(a10 + 4 * v126);
        v128 = *(a10 + 4 * v121);
        LODWORD(v124) = *(v16 + 4 * v127);
        *(v16 + 4 * v127) = *(v16 + 4 * v128);
        *(v16 + 4 * v128) = v124;
        LODWORD(v127) = *(a10 + 4 * v126);
        *(a10 + 4 * v126) = *(a10 + 4 * v121);
        *(a10 + 4 * v121) = v127;
        ++*a8;
        v129 = &v65[v120];
        v131 = *v129;
        v130 = v129[1];
        v91 = v130 <= v131;
        v132 = v130 - v131;
        if (!v91)
        {
          v133 = (*(v53 + 16) + 4 * v131);
          do
          {
            v135 = *v133++;
            v134 = v135;
            v136 = *(v16 + 4 * v135);
            if (v136 >= *a7 && v136 < v145 - v111 - *a8)
            {
              v137 = *&v56[4 * v134];
              *&v56[4 * v134] = v137 - 1;
              if (v137 == 2)
              {
                *(v55 + 4 * v51++) = v134;
              }

              else if (v137 == 1)
              {
                return 0xFFFFFFFFLL;
              }
            }

            --v132;
          }

          while (v132);
        }
      }

      ++v109;
    }

    while (v109 < v51);
  }

  return 0;
}

void sub_236751728(uint64_t a1, float *__b, char *a3)
{
  v4 = __b;
  v6 = *(a1 + 4);
  v7 = *(a1 + 28);
  v8 = (v7 * v7);
  v76 = v6;
  v9 = (v6 * v7);
  if (v9 >= 1)
  {
    memset_pattern16(__b, &unk_23681FB80, 4 * (v6 * v7));
  }

  v72 = 4 * v9;
  v73 = v9;
  v10 = 0;
  v11 = v7 + 1;
  v12 = 4 * (v7 * v7);
  v13 = 4 * v7;
  do
  {
    while (1)
    {
      v74 = v10;
      if (v9 >= 1)
      {
        bzero(a3, v72);
      }

      if (v76 >= 1)
      {
        v14 = 0;
        v75 = *(a1 + 8);
        v15 = *v75;
        while (1)
        {
          v16 = v14 + 1;
          v17 = v75[v14 + 1];
          if (v15 < v17)
          {
            break;
          }

LABEL_51:
          v15 = v17;
          ++v14;
          if (v16 == v76)
          {
            goto LABEL_52;
          }
        }

        v18 = *(a1 + 16);
        v19 = v14 * v7;
        v20 = v12 * v15;
        v21 = v12 * v15 + 4;
        while (1)
        {
          v22 = *(v18 + 4 * v15);
          v23 = *(v18 + 4 * v15);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v14 <= v22 && v23 < *a1)
            {
              v36 = *(a1 + 32);
              v25 = (v36 + 4 * v15 * v8);
              if (v14 == v22)
              {
                if (v7)
                {
                  v37 = 0;
                  v38 = (v36 + v21);
                  v39 = &v4[v23 * v7 + 1];
                  v40 = &a3[4 * v23 * v7 + 4];
                  v41 = v7 - 1;
                  do
                  {
                    v42 = v37 + 1;
                    v43 = v37 + v19;
                    v44 = v41;
                    v45 = v40;
                    v46 = v39;
                    v47 = v38;
                    if (v37 + 1 < v7)
                    {
                      do
                      {
                        v48 = *v46++;
                        v49 = v48;
                        v50 = *v47++;
                        v51 = v4[v43] * (v49 * fabsf(v50));
                        v52 = *v45;
                        if (v51 > *v45)
                        {
                          v52 = v51;
                        }

                        *v45++ = v52;
                        if (v51 <= *&a3[4 * v43])
                        {
                          v51 = *&a3[4 * v43];
                        }

                        *&a3[4 * v43] = v51;
                        --v44;
                      }

                      while (v44);
                    }

                    v53 = v4[v43] * (v4[v43] * fabsf(v25[v37 * v11]));
                    if (v53 <= *&a3[4 * v43])
                    {
                      v53 = *&a3[4 * v43];
                    }

                    *&a3[4 * v43] = v53;
                    v38 = (v38 + v13 + 4);
                    v39 += 4;
                    v40 += 4;
                    --v41;
                    ++v37;
                  }

                  while (v42 != v7);
                }

                goto LABEL_50;
              }

LABEL_41:
              if (v7)
              {
                v54 = 0;
                v55 = v23 * v7;
                v56 = &v4[v23 * v7];
                v57 = &a3[4 * v55];
                do
                {
                  v58 = v54 + v19;
                  v59 = v7;
                  v60 = v57;
                  v61 = v56;
                  v62 = v25;
                  do
                  {
                    v63 = *v61++;
                    v64 = v63;
                    v65 = *v62++;
                    v66 = v4[v58] * (v64 * fabsf(v65));
                    v67 = *v60;
                    if (v66 > *v60)
                    {
                      v67 = v66;
                    }

                    *v60++ = v67;
                    if (v66 <= *&a3[4 * v58])
                    {
                      v66 = *&a3[4 * v58];
                    }

                    *&a3[4 * v58] = v66;
                    --v59;
                  }

                  while (v59);
                  ++v54;
                  v25 = (v25 + v13);
                }

                while (v54 != v7);
              }
            }
          }

          else if (v14 >= v22)
          {
            v24 = *(a1 + 32);
            v25 = (v24 + 4 * v15 * v8);
            if (v14 != v22)
            {
              goto LABEL_41;
            }

            if (v7)
            {
              v26 = 0;
              v27 = v22 * v7;
              v28 = v24 + v20;
              v29 = &v4[v22 * v7];
              v30 = &a3[4 * v27];
              do
              {
                v31 = v14 * v7;
                if (v26)
                {
                  v32 = 0;
                  v31 = v26 + v19;
                  do
                  {
                    v33 = v4[v31] * (v29[v32] * fabsf(*(v28 + 4 * v32)));
                    v34 = *&v30[4 * v32];
                    if (v33 > v34)
                    {
                      v34 = v33;
                    }

                    *&v30[4 * v32] = v34;
                    if (v33 <= *&a3[4 * v31])
                    {
                      v33 = *&a3[4 * v31];
                    }

                    *&a3[4 * v31] = v33;
                    ++v32;
                  }

                  while (v26 != v32);
                }

                v35 = v4[v31] * (v4[v31] * fabsf(v25[v26 * v11]));
                if (v35 <= *&a3[4 * v31])
                {
                  v35 = *&a3[4 * v31];
                }

                *&a3[4 * v31] = v35;
                ++v26;
                v28 += v13;
              }

              while (v26 != v7);
            }
          }

LABEL_50:
          ++v15;
          v21 += v12;
          v20 += v12;
          if (v15 == v17)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      v9 = v73;
      v68 = v73;
      v69 = a3;
      v70 = v4;
      if (v73 >= 1)
      {
        break;
      }

      v10 = v74 + 1;
      if (v74 == 2)
      {
        return;
      }
    }

    do
    {
      if (*v69 == 0.0)
      {
        *v70 = INFINITY;
      }

      else
      {
        v71 = *v70 / sqrt(*v69);
        *v70 = v71;
      }

      ++v70;
      ++v69;
      --v68;
    }

    while (v68);
    v10 = v74 + 1;
  }

  while (v74 != 2);
  do
  {
    if (fabsf(*v4) == INFINITY)
    {
      *v4 = 1.0;
    }

    ++v4;
    --v9;
  }

  while (v9);
}

void sub_236751B4C(int *a1, uint64_t a2, uint64_t a3, float *__b, char *a5, char *a6)
{
  v8 = __b;
  v11 = a1[1];
  v12 = *a1;
  v13 = *(a1 + 28);
  LODWORD(v14) = v12 * v13;
  v55 = v12 * v13;
  v57 = v11;
  if (v12 * v13 >= 1)
  {
    memset_pattern16(__b, &unk_23681FB80, 4 * (v12 * v13));
    LODWORD(v14) = v12 * v13;
  }

  v15 = (v11 * v13);
  v16 = 4 * v15;
  v56 = v15;
  if (v15 >= 1)
  {
    memset_pattern16(a5, &unk_23681FB80, 4 * (v11 * v13));
    v15 = (v11 * v13);
    LODWORD(v14) = v12 * v13;
  }

  v17 = 0;
  v52 = 4 * v14;
  v53 = v16;
  v18 = 4 * (v13 * v13);
  v19 = &a6[4 * v12];
  do
  {
    v58 = v17;
    if (v14 >= 1)
    {
      bzero(a6, v52);
      v15 = v56;
      v11 = v57;
    }

    if (v15 >= 1)
    {
      bzero(&a6[4 * v12], v53);
      v15 = v56;
      v11 = v57;
    }

    if (v11 >= 1)
    {
      v20 = 0;
      v21 = *(a1 + 1);
      do
      {
        if (a3)
        {
          v22 = *(a3 + 4 * v20);
        }

        else
        {
          v22 = v20;
        }

        v23 = *(v21 + 8 * v20++);
        v24 = *(v21 + 8 * v20);
        if (v23 < v24)
        {
          v25 = *(a1 + 2);
          v26 = v13 * v22;
          v27 = v18 * v23;
          do
          {
            v28 = *(v25 + 4 * v23);
            if ((v28 & 0x80000000) == 0 && v28 < v12)
            {
              if (a2)
              {
                v28 = *(a2 + 4 * v28);
              }

              if (v13)
              {
                v29 = 0;
                v30 = v28 * v13;
                v31 = (*(a1 + 4) + v27);
                v32 = &v8[v30];
                v33 = &a6[4 * v30];
                do
                {
                  v34 = v29 + v26;
                  v35 = v13;
                  v36 = v33;
                  v37 = v32;
                  v38 = v31;
                  do
                  {
                    v39 = *v37++;
                    v40 = v39;
                    v41 = *v38++;
                    v42 = *&a5[4 * v34] * (v40 * fabsf(v41));
                    v43 = *v36;
                    if (v42 > *v36)
                    {
                      v43 = v42;
                    }

                    *v36++ = v43;
                    if (v42 <= *&v19[4 * v34])
                    {
                      v42 = *&v19[4 * v34];
                    }

                    *&v19[4 * v34] = v42;
                    --v35;
                  }

                  while (v35);
                  ++v29;
                  v31 += v13;
                }

                while (v29 != v13);
              }
            }

            ++v23;
            v27 += v18;
          }

          while (v23 != v24);
        }
      }

      while (v20 != v11);
    }

    v14 = (v12 * v13);
    v44 = v14;
    v45 = a6;
    v46 = v8;
    if (v55 >= 1)
    {
      do
      {
        if (*v45 == 0.0)
        {
          *v46 = INFINITY;
        }

        else
        {
          v47 = *v46 / sqrt(*v45);
          *v46 = v47;
        }

        ++v46;
        ++v45;
        --v44;
      }

      while (v44);
    }

    v48 = v15;
    v49 = &a6[4 * v12];
    v50 = a5;
    if (v15 >= 1)
    {
      do
      {
        if (*v49 == 0.0)
        {
          *v50 = 2139095040;
        }

        else
        {
          v51 = *v50 / sqrt(*v49);
          *v50 = v51;
        }

        v50 += 4;
        ++v49;
        --v48;
      }

      while (v48);
    }

    v17 = v58 + 1;
  }

  while (v58 != 2);
  if (v55 >= 1)
  {
    do
    {
      if (fabsf(*v8) == INFINITY)
      {
        *v8 = 1.0;
      }

      ++v8;
      --v14;
    }

    while (v14);
  }

  if (v15 >= 1)
  {
    do
    {
      if (fabsf(*a5) == INFINITY)
      {
        *a5 = 1065353216;
      }

      a5 += 4;
      --v15;
    }

    while (v15);
  }
}

void _SparseSpMV_Double(double alpha, SparseMatrix_Double *A, DenseMatrix_Double *x, BOOL accumulate, DenseMatrix_Double *y)
{
  v5 = 4;
  if (*&y->attributes)
  {
    v5 = 0;
  }

  v313 = *(&y->rowCount + v5);
  v6 = *(&A->structure.blockSize + 2);
  rowIndices = A->structure.rowIndices;
  data = A->data;
  columnStarts = A->structure.columnStarts;
  if (!accumulate && v313 >= 1)
  {
    v7 = 0;
    v8 = 4;
    if ((*&A->structure.attributes & 1) == 0)
    {
      v8 = 0;
    }

    v9 = *(&A->structure.rowCount + v8) * v6;
    do
    {
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = y->data;
        columnStride = y->columnStride;
        do
        {
          if (*&y->attributes)
          {
            v13 = v10;
          }

          else
          {
            v13 = v7;
          }

          if (*&y->attributes)
          {
            v14 = v7;
          }

          else
          {
            v14 = v10;
          }

          v11[v14 + columnStride * v13] = 0.0;
          ++v10;
        }

        while (v9 != v10);
      }

      ++v7;
    }

    while (v7 != v313);
  }

  v294 = (v6 * v6);
  v15 = (*&A->structure.attributes >> 2) & 3;
  if ((v15 - 1) >= 2)
  {
    if (v15)
    {
      columnCount = A->structure.columnCount;
      if (columnCount >= 1)
      {
        v158 = 0;
        v159 = 0;
        v315 = v6 + 1;
        v160 = *columnStarts;
        v301 = 8 * v294;
        v161 = 8 * v6;
        v299 = 1;
        do
        {
          v303 = v159;
          v295 = v159 + 1;
          v302 = columnStarts[v159 + 1];
          if (v160 < v302)
          {
            v162 = v159 * v6;
            v306 = (data + v301 * v160);
            v305 = data + v301 * v160 + 8;
            do
            {
              v304 = v160;
              v163 = rowIndices[v160];
              v164 = *&A->structure.attributes;
              if ((v164 & 2) == 0 || v303 <= v163)
              {
                v165 = v303 < v163 && (*&A->structure.attributes & 2) == 0;
                if (!v165 && (v163 & 0x80000000) == 0 && v163 < A->structure.rowCount)
                {
                  if (v303 == v163)
                  {
                    v166 = &data[v160 * v294];
                    if ((v164 & 2) != 0)
                    {
                      if (v313 >= 1)
                      {
                        v167 = 0;
                        v168 = v163 * v6;
                        v298 = v163 * v6 + 1;
                        v300 = v158;
                        do
                        {
                          if (v6)
                          {
                            v169 = 0;
                            v170 = x->data;
                            v312 = y->columnStride;
                            v171 = y->data;
                            v172 = v6 - 1;
                            v174 = v298;
                            v173 = v299;
                            v175 = v305;
                            do
                            {
                              v176 = v166;
                              v177 = v169 + 1;
                              if (v169 + 1 < v6)
                              {
                                v178 = x->columnStride;
                                v179 = y->columnStride;
                                v180 = v174 + v167 * v179;
                                v181 = v167 + v179 * v174;
                                v182 = v173 + v167 * v178;
                                v183 = v167 + v178 * v173;
                                v184 = v172;
                                v185 = v175;
                                do
                                {
                                  if (*&x->attributes)
                                  {
                                    v186 = v169 + v162;
                                  }

                                  else
                                  {
                                    v186 = v167;
                                  }

                                  if (*&x->attributes)
                                  {
                                    v187 = v167;
                                  }

                                  else
                                  {
                                    v187 = v169 + v162;
                                  }

                                  v188 = v170[v187 + v178 * v186];
                                  if (*&y->attributes)
                                  {
                                    v189 = v181;
                                  }

                                  else
                                  {
                                    v189 = v180;
                                  }

                                  v171[v189] = v171[v189] + *v185 * alpha * v188;
                                  v190 = *v185++;
                                  v191 = v190 * alpha;
                                  if (*&x->attributes)
                                  {
                                    v192 = v183;
                                  }

                                  else
                                  {
                                    v192 = v182;
                                  }

                                  v193 = v170[v192];
                                  if (*&y->attributes)
                                  {
                                    v194 = v168 + v169;
                                  }

                                  else
                                  {
                                    v194 = v167;
                                  }

                                  if (*&y->attributes)
                                  {
                                    v195 = v167;
                                  }

                                  else
                                  {
                                    v195 = v168 + v169;
                                  }

                                  v171[v195 + v179 * v194] = v171[v195 + v179 * v194] + v191 * v193;
                                  ++v180;
                                  v181 += v179;
                                  ++v182;
                                  v183 += v178;
                                  --v184;
                                }

                                while (v184);
                              }

                              v166 = v176;
                              if (*&x->attributes)
                              {
                                v196 = v167 + x->columnStride * (v169 + v162);
                              }

                              else
                              {
                                v196 = v169 + v162 + x->columnStride * v167;
                              }

                              v197 = v170[v196];
                              if (*&y->attributes)
                              {
                                v198 = v167 + v312 * (v168 + v169);
                              }

                              else
                              {
                                v198 = v168 + v169 + v312 * v167;
                              }

                              v171[v198] = v171[v198] + v176[v169 * v315] * alpha * v197;
                              v175 += v6 + 1;
                              ++v174;
                              ++v173;
                              --v172;
                              ++v169;
                            }

                            while (v177 != v6);
                          }

                          ++v167;
                          v158 = v300;
                        }

                        while (v167 != v313);
                      }
                    }

                    else if (v313 >= 1)
                    {
                      v236 = 0;
                      v237 = v163 * v6;
                      v238 = v6 * v163;
                      do
                      {
                        if (v6)
                        {
                          v239 = 0;
                          v240 = x->data;
                          v241 = y->data;
                          v242 = y->columnStride;
                          v243 = v306;
                          do
                          {
                            if (v239)
                            {
                              v244 = x->columnStride;
                              v245 = y->columnStride;
                              v246 = v237 + v236 * v245;
                              v247 = v236 + v238 * v245;
                              v248 = v158 + v236 * v244;
                              v249 = v236 + v158 * v244;
                              v250 = v239;
                              v251 = v243;
                              do
                              {
                                if (*&x->attributes)
                                {
                                  v252 = v239 + v162;
                                }

                                else
                                {
                                  v252 = v236;
                                }

                                if (*&x->attributes)
                                {
                                  v253 = v236;
                                }

                                else
                                {
                                  v253 = v239 + v162;
                                }

                                v254 = v240[v253 + v244 * v252];
                                if (*&y->attributes)
                                {
                                  v255 = v247;
                                }

                                else
                                {
                                  v255 = v246;
                                }

                                v241[v255] = v241[v255] + *v251 * alpha * v254;
                                v256 = *v251++;
                                v257 = v256 * alpha;
                                if (*&x->attributes)
                                {
                                  v258 = v249;
                                }

                                else
                                {
                                  v258 = v248;
                                }

                                v259 = v240[v258];
                                if (*&y->attributes)
                                {
                                  v260 = v237 + v239;
                                }

                                else
                                {
                                  v260 = v236;
                                }

                                if (*&y->attributes)
                                {
                                  v261 = v236;
                                }

                                else
                                {
                                  v261 = v237 + v239;
                                }

                                v241[v261 + v245 * v260] = v241[v261 + v245 * v260] + v257 * v259;
                                ++v246;
                                v247 += v245;
                                ++v248;
                                v249 += v244;
                                --v250;
                              }

                              while (v250);
                            }

                            if (*&x->attributes)
                            {
                              v262 = v236 + x->columnStride * (v239 + v162);
                            }

                            else
                            {
                              v262 = v239 + v162 + x->columnStride * v236;
                            }

                            v263 = v240[v262];
                            if (*&y->attributes)
                            {
                              v264 = v236 + v242 * (v237 + v239);
                            }

                            else
                            {
                              v264 = v237 + v239 + v242 * v236;
                            }

                            v241[v264] = v241[v264] + v166[v239 * v315] * alpha * v263;
                            ++v239;
                            v243 = (v243 + v161);
                          }

                          while (v239 != v6);
                        }

                        ++v236;
                      }

                      while (v236 != v313);
                    }
                  }

                  else if (v313 >= 1)
                  {
                    v199 = 0;
                    v200 = v163 * v6;
                    do
                    {
                      if (v6)
                      {
                        v201 = 0;
                        v202 = x->data;
                        v203 = y->data;
                        v204 = x->columnStride;
                        v205 = y->columnStride;
                        v206 = v306;
                        do
                        {
                          v207 = v6;
                          v208 = v199 + v200 * v205;
                          v209 = v200 + v205 * v199;
                          v210 = v206;
                          do
                          {
                            v211 = *v210++;
                            v212 = v211;
                            if (*&x->attributes)
                            {
                              v213 = v201 + v162;
                            }

                            else
                            {
                              v213 = v199;
                            }

                            if (*&x->attributes)
                            {
                              v214 = v199;
                            }

                            else
                            {
                              v214 = v201 + v162;
                            }

                            v215 = v202[v214 + v204 * v213];
                            v216 = v212 * alpha;
                            if (*&y->attributes)
                            {
                              v217 = v208;
                            }

                            else
                            {
                              v217 = v209;
                            }

                            v203[v217] = v203[v217] + v216 * v215;
                            ++v209;
                            v208 += v205;
                            --v207;
                          }

                          while (v207);
                          ++v201;
                          v206 = (v206 + v161);
                        }

                        while (v201 != v6);
                      }

                      ++v199;
                    }

                    while (v199 != v313);
                    v218 = 0;
                    v219 = v6 * v163;
                    do
                    {
                      if (v6)
                      {
                        v220 = 0;
                        v221 = x->data;
                        v222 = y->data;
                        v223 = x->columnStride;
                        v224 = y->columnStride;
                        v225 = v306;
                        do
                        {
                          v226 = v6;
                          v227 = v218 + v219 * v223;
                          v228 = v200 + v223 * v218;
                          v229 = v225;
                          do
                          {
                            v230 = *v229++;
                            v231 = v230 * alpha;
                            if (*&x->attributes)
                            {
                              v232 = v227;
                            }

                            else
                            {
                              v232 = v228;
                            }

                            v233 = v221[v232];
                            if (*&y->attributes)
                            {
                              v234 = v220 + v162;
                            }

                            else
                            {
                              v234 = v218;
                            }

                            if (*&y->attributes)
                            {
                              v235 = v218;
                            }

                            else
                            {
                              v235 = v220 + v162;
                            }

                            v222[v235 + v224 * v234] = v222[v235 + v224 * v234] + v231 * v233;
                            ++v228;
                            v227 += v223;
                            --v226;
                          }

                          while (v226);
                          ++v220;
                          v225 = (v225 + v161);
                        }

                        while (v220 != v6);
                      }

                      ++v218;
                    }

                    while (v218 != v313);
                  }
                }
              }

              v160 = v304 + 1;
              v306 = (v306 + v301);
              v305 += v301;
            }

            while (v304 + 1 != v302);
          }

          v158 += v6;
          v299 += v6;
          v160 = v302;
          v159 = v295;
        }

        while (v295 != columnCount);
      }
    }

    else
    {
      v72 = A->structure.columnCount;
      if (*&A->structure.attributes)
      {
        if (v72 >= 1)
        {
          v73 = 0;
          v74 = *columnStarts;
          v75 = 8 * v294;
          do
          {
            v76 = v73 + 1;
            v77 = columnStarts[v73 + 1];
            if (v74 < v77)
            {
              v78 = v73 * v6;
              v79 = (data + v75 * v74);
              do
              {
                v80 = rowIndices[v74];
                if ((v80 & 0x80000000) == 0 && v80 < A->structure.rowCount && v313 >= 1)
                {
                  v82 = 0;
                  v83 = v80 * v6;
                  do
                  {
                    if (v6)
                    {
                      v84 = 0;
                      v85 = x->data;
                      v86 = y->data;
                      v87 = x->columnStride;
                      v88 = y->columnStride;
                      v89 = v79;
                      do
                      {
                        v90 = v6;
                        v91 = v82 + v83 * v87;
                        v92 = v83 + v87 * v82;
                        v93 = v89;
                        do
                        {
                          v94 = *v93++;
                          v95 = v94 * alpha;
                          if (*&x->attributes)
                          {
                            v96 = v91;
                          }

                          else
                          {
                            v96 = v92;
                          }

                          v97 = v85[v96];
                          if (*&y->attributes)
                          {
                            v98 = v84 + v78;
                          }

                          else
                          {
                            v98 = v82;
                          }

                          if (*&y->attributes)
                          {
                            v99 = v82;
                          }

                          else
                          {
                            v99 = v84 + v78;
                          }

                          v86[v99 + v88 * v98] = v86[v99 + v88 * v98] + v95 * v97;
                          ++v92;
                          v91 += v87;
                          --v90;
                        }

                        while (v90);
                        ++v84;
                        v89 += v6;
                      }

                      while (v84 != v6);
                    }

                    ++v82;
                  }

                  while (v82 != v313);
                }

                ++v74;
                v79 = (v79 + v75);
              }

              while (v74 != v77);
            }

            v74 = v77;
            v73 = v76;
          }

          while (v76 != v72);
        }
      }

      else if (v72 >= 1)
      {
        v265 = 0;
        v266 = *columnStarts;
        v267 = 8 * v294;
        do
        {
          v268 = v265 + 1;
          v269 = columnStarts[v265 + 1];
          if (v266 < v269)
          {
            v270 = v265 * v6;
            v271 = (data + v267 * v266);
            do
            {
              v272 = rowIndices[v266];
              if ((v272 & 0x80000000) == 0 && v272 < A->structure.rowCount && v313 >= 1)
              {
                v274 = 0;
                v275 = v272 * v6;
                do
                {
                  if (v6)
                  {
                    v276 = 0;
                    v277 = x->data;
                    v278 = y->data;
                    v279 = x->columnStride;
                    v280 = y->columnStride;
                    v281 = v271;
                    do
                    {
                      v282 = v6;
                      v283 = v274 + v275 * v280;
                      v284 = v275 + v280 * v274;
                      v285 = v281;
                      do
                      {
                        v286 = *v285++;
                        v287 = v286;
                        if (*&x->attributes)
                        {
                          v288 = v276 + v270;
                        }

                        else
                        {
                          v288 = v274;
                        }

                        if (*&x->attributes)
                        {
                          v289 = v274;
                        }

                        else
                        {
                          v289 = v276 + v270;
                        }

                        v290 = v277[v289 + v279 * v288];
                        v291 = v287 * alpha;
                        if (*&y->attributes)
                        {
                          v292 = v283;
                        }

                        else
                        {
                          v292 = v284;
                        }

                        v278[v292] = v278[v292] + v291 * v290;
                        ++v284;
                        v283 += v280;
                        --v282;
                      }

                      while (v282);
                      ++v276;
                      v281 += v6;
                    }

                    while (v276 != v6);
                  }

                  ++v274;
                }

                while (v274 != v313);
              }

              ++v266;
              v271 = (v271 + v267);
            }

            while (v266 != v269);
          }

          v266 = v269;
          v265 = v268;
        }

        while (v268 != v72);
      }
    }

    return;
  }

  v314 = A->structure.columnCount;
  if ((*&A->structure.attributes & 1) == 0)
  {
    if (v314 < 1)
    {
      return;
    }

    v100 = 0;
    v101 = 0;
    v102 = *columnStarts;
    v103 = 8 * (v6 * v6);
    v104 = 8 * v6;
    while (1)
    {
      v311 = v100;
      v309 = v101 + 1;
      v105 = columnStarts[v101 + 1];
      if (v102 < v105)
      {
        break;
      }

LABEL_177:
      if ((*&A->structure.attributes & 0xC) == 8 && v313 >= 1)
      {
        v151 = 0;
        do
        {
          if (v6)
          {
            v152 = x->data;
            v153 = y->data;
            v154 = v6;
            v155 = v311;
            do
            {
              if (*&x->attributes)
              {
                v156 = v151 + x->columnStride * v155;
              }

              else
              {
                v156 = v155 + v151 * x->columnStride;
              }

              if (*&y->attributes)
              {
                v157 = v151 + y->columnStride * v155;
              }

              else
              {
                v157 = v155 + v151 * y->columnStride;
              }

              v153[v157] = v153[v157] + alpha * v152[v156];
              ++v155;
              --v154;
            }

            while (v154);
          }

          ++v151;
        }

        while (v151 != v313);
      }

      v100 = v311 + v6;
      v102 = v105;
      v101 = v309;
      if (v309 == v314)
      {
        return;
      }
    }

    v106 = v101 * v6;
    v107 = (data + v103 * v102);
    while (1)
    {
      v108 = rowIndices[v102];
      v109 = *&A->structure.attributes;
      if (((v109 & 2) == 0 || v101 <= v108) && v108 < A->structure.rowCount)
      {
        if ((v109 & 2) != 0)
        {
          if ((v108 & 0x80000000) == 0)
          {
LABEL_133:
            if (v108 == v101)
            {
              if (v313 >= 1)
              {
                v110 = 0;
                v111 = (v109 & 0xC) == 8;
                v112 = v108 * v6;
                do
                {
                  if (v6)
                  {
                    v113 = 0;
                    v114 = v107;
                    do
                    {
                      v115 = (v113 + v111) & (v109 << 30 >> 31);
                      v116 = v113 + 1;
                      v117 = v113 + 1 - v111;
                      if ((v109 & 2) != 0)
                      {
                        v118 = v6;
                      }

                      else
                      {
                        v118 = v113 + 1 - v111;
                      }

                      if (v115 < v118)
                      {
                        v119 = x->data;
                        v120 = v113 + v106;
                        v121 = y->data;
                        v122 = x->columnStride;
                        v123 = y->columnStride;
                        v124 = v110 + v123 * (v112 + v115);
                        do
                        {
                          if (*&x->attributes)
                          {
                            v125 = v120;
                          }

                          else
                          {
                            v125 = v110;
                          }

                          if (*&x->attributes)
                          {
                            v126 = v110;
                          }

                          else
                          {
                            v126 = v120;
                          }

                          v127 = v119[v126 + v122 * v125];
                          if (*&y->attributes)
                          {
                            v128 = v124;
                          }

                          else
                          {
                            v128 = v112 + v110 * v123 + v115;
                          }

                          v121[v128] = v121[v128] + v114[v115++] * alpha * v127;
                          v109 = *&A->structure.attributes;
                          if ((v109 & 2) != 0)
                          {
                            v129 = v6;
                          }

                          else
                          {
                            v129 = v117;
                          }

                          v124 += v123;
                        }

                        while (v115 < v129);
                      }

                      v114 = (v114 + v104);
                      v113 = v116;
                    }

                    while (v116 != v6);
                  }

                  ++v110;
                }

                while (v110 != v313);
              }
            }

            else if (v313 >= 1)
            {
              v130 = 0;
              v131 = v108 * v6;
              v132 = v6 * v108;
              do
              {
                if (v6)
                {
                  v133 = 0;
                  v134 = x->data;
                  v135 = y->data;
                  v136 = x->columnStride;
                  v137 = y->columnStride;
                  v138 = v107;
                  do
                  {
                    v139 = v6;
                    v140 = v130 + v132 * v137;
                    v141 = v131 + v137 * v130;
                    v142 = v138;
                    do
                    {
                      v143 = *v142++;
                      v144 = v143;
                      if (*&x->attributes)
                      {
                        v145 = v133 + v106;
                      }

                      else
                      {
                        v145 = v130;
                      }

                      if (*&x->attributes)
                      {
                        v146 = v130;
                      }

                      else
                      {
                        v146 = v133 + v106;
                      }

                      v147 = v134[v146 + v136 * v145];
                      v148 = v144 * alpha;
                      if (*&y->attributes)
                      {
                        v149 = v140;
                      }

                      else
                      {
                        v149 = v141;
                      }

                      v135[v149] = v135[v149] + v148 * v147;
                      ++v141;
                      v140 += v137;
                      --v139;
                    }

                    while (v139);
                    ++v133;
                    v138 = (v138 + v104);
                  }

                  while (v133 != v6);
                }

                ++v130;
              }

              while (v130 != v313);
            }
          }
        }

        else if (v101 >= v108)
        {
          goto LABEL_133;
        }
      }

      ++v102;
      v107 = (v107 + v103);
      if (v102 == v105)
      {
        goto LABEL_177;
      }
    }
  }

  if (v314 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = *columnStarts;
    v19 = 8 * (v6 * v6);
    v20 = 8 * v6;
    while (1)
    {
      v310 = v16;
      v308 = v17 + 1;
      v21 = columnStarts[v17 + 1];
      if (v18 < v21)
      {
        break;
      }

LABEL_75:
      if ((*&A->structure.attributes & 0xC) == 8 && v313 >= 1)
      {
        v65 = 0;
        do
        {
          if (v6)
          {
            v66 = x->data;
            v67 = y->data;
            v68 = v6;
            v69 = v310;
            do
            {
              if (*&x->attributes)
              {
                v70 = v65 + x->columnStride * v69;
              }

              else
              {
                v70 = v69 + v65 * x->columnStride;
              }

              if (*&y->attributes)
              {
                v71 = v65 + y->columnStride * v69;
              }

              else
              {
                v71 = v69 + v65 * y->columnStride;
              }

              v67[v71] = v67[v71] + alpha * v66[v70];
              ++v69;
              --v68;
            }

            while (v68);
          }

          ++v65;
        }

        while (v65 != v313);
      }

      v16 = v310 + v6;
      v18 = v21;
      v17 = v308;
      if (v308 == v314)
      {
        return;
      }
    }

    v22 = v17 * v6;
    v23 = (data + v19 * v18);
    while (1)
    {
      v24 = rowIndices[v18];
      v25 = *&A->structure.attributes;
      if (((v25 & 2) == 0 || v17 <= v24) && v24 < A->structure.rowCount)
      {
        if ((v25 & 2) != 0)
        {
          if ((v24 & 0x80000000) == 0)
          {
LABEL_31:
            if (v24 == v17)
            {
              if (v313 >= 1)
              {
                v26 = 0;
                v27 = (v25 & 0xC) == 8;
                v28 = v24 * v6;
                do
                {
                  if (v6)
                  {
                    v29 = 0;
                    v30 = v23;
                    do
                    {
                      v31 = (v29 + v27) & (v25 << 30 >> 31);
                      v32 = v29 + 1;
                      v33 = v29 + 1 - v27;
                      if ((v25 & 2) != 0)
                      {
                        v34 = v6;
                      }

                      else
                      {
                        v34 = v29 + 1 - v27;
                      }

                      if (v31 < v34)
                      {
                        v35 = x->data;
                        v36 = y->data;
                        v37 = v29 + v22;
                        v38 = x->columnStride;
                        v39 = y->columnStride;
                        v40 = v26 + v38 * (v28 + v31);
                        do
                        {
                          if (*&x->attributes)
                          {
                            v41 = v40;
                          }

                          else
                          {
                            v41 = v28 + v26 * v38 + v31;
                          }

                          if (*&y->attributes)
                          {
                            v42 = v37;
                          }

                          else
                          {
                            v42 = v26;
                          }

                          if (*&y->attributes)
                          {
                            v43 = v26;
                          }

                          else
                          {
                            v43 = v37;
                          }

                          v36[v43 + v39 * v42] = v36[v43 + v39 * v42] + v30[v31++] * alpha * v35[v41];
                          v25 = *&A->structure.attributes;
                          if ((v25 & 2) != 0)
                          {
                            v44 = v6;
                          }

                          else
                          {
                            v44 = v33;
                          }

                          v40 += v38;
                        }

                        while (v31 < v44);
                      }

                      v30 = (v30 + v20);
                      v29 = v32;
                    }

                    while (v32 != v6);
                  }

                  ++v26;
                }

                while (v26 != v313);
              }
            }

            else if (v313 >= 1)
            {
              v45 = 0;
              v46 = v24 * v6;
              v47 = v6 * v24;
              do
              {
                if (v6)
                {
                  v48 = 0;
                  v49 = x->data;
                  v50 = y->data;
                  v51 = x->columnStride;
                  v52 = y->columnStride;
                  v53 = v23;
                  do
                  {
                    v54 = v6;
                    v55 = v45 + v47 * v51;
                    v56 = v46 + v51 * v45;
                    v57 = v53;
                    do
                    {
                      v58 = *v57++;
                      v59 = v58 * alpha;
                      if (*&x->attributes)
                      {
                        v60 = v55;
                      }

                      else
                      {
                        v60 = v56;
                      }

                      v61 = v49[v60];
                      if (*&y->attributes)
                      {
                        v62 = v48 + v22;
                      }

                      else
                      {
                        v62 = v45;
                      }

                      if (*&y->attributes)
                      {
                        v63 = v45;
                      }

                      else
                      {
                        v63 = v48 + v22;
                      }

                      v50[v63 + v52 * v62] = v50[v63 + v52 * v62] + v59 * v61;
                      ++v56;
                      v55 += v51;
                      --v54;
                    }

                    while (v54);
                    ++v48;
                    v53 = (v53 + v20);
                  }

                  while (v48 != v6);
                }

                ++v45;
              }

              while (v45 != v313);
            }
          }
        }

        else if (v17 >= v24)
        {
          goto LABEL_31;
        }
      }

      ++v18;
      v23 = (v23 + v19);
      if (v18 == v21)
      {
        goto LABEL_75;
      }
    }
  }
}

void *sub_236752DB4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v9 = (a2 + 8);
  v8 = *(a2 + 8);
  v10 = 4;
  if (a1)
  {
    v10 = 0;
  }

  v11 = *(a2 + v10);
  *a4 = v11;
  *(a4 + 4) = v11;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 24) = 0;
  *(a4 + 28) = *(a2 + 28);
  result = (*(a3 + 24))(4 * *(v8 + 8 * *(a2 + 4)) + 8 * (v11 + *a2 + 2));
  if (result)
  {
    v79 = v6;
    v80 = (a4 + 8);
    v81 = a3;
    v13 = (v5 + 4);
    v14 = *v5;
    v85 = v5[1];
    v15 = v85;
    v16 = &result[v14 + 2];
    v83 = v16;
    v84 = result;
    v17 = *(v5 + 1);
    v18 = v17[v85];
    v19 = result + 2;
    v82 = result;
    if (v14 >= 1)
    {
      v78 = a4;
      v20 = v9;
      v21 = v17[v85];
      bzero(result + 2, 8 * v14);
      v18 = v21;
      v9 = v20;
      a4 = v78;
      result = v82;
    }

    if (v85 >= 1)
    {
      v22 = 0;
      v23 = *v17;
      do
      {
        v24 = v17[++v22];
        if (v23 < v24)
        {
          v25 = *v13;
          do
          {
            v26 = *(v25 + 4 * v23);
            if ((v26 & 0x80000000) == 0 && v26 < v14)
            {
              ++v19[v26];
              v24 = v17[v22];
            }

            ++v23;
          }

          while (v23 < v24);
        }

        v23 = v24;
      }

      while (v22 != v15);
    }

    result[1] = 0;
    v27 = result + 1;
    *result = 0;
    if (v14 > 1)
    {
      v28 = 0;
      v29 = v14 - 1;
      v30 = result + 2;
      do
      {
        v28 += *v30;
        *v30++ = v28;
        --v29;
      }

      while (v29);
    }

    v31 = v16 + v18;
    if (v15 >= 1)
    {
      v32 = 0;
      v33 = *v17;
      do
      {
        v34 = v32++;
        v35 = v17[v32];
        if (v33 < v35)
        {
          v36 = *v13;
          do
          {
            v37 = *(v36 + 4 * v33);
            if ((v37 & 0x80000000) == 0 && v37 < *v5)
            {
              v38 = v27[v37];
              v27[v37] = v38 + 1;
              *(v16 + v38) = v34;
              v35 = v17[v32];
            }

            ++v33;
          }

          while (v33 < v35);
          LODWORD(v15) = v5[1];
        }

        v33 = v35;
      }

      while (v32 < v15);
    }

    if (v79)
    {
      v39 = v9;
    }

    else
    {
      v39 = &v84;
    }

    if (v79)
    {
      v40 = v5 + 4;
    }

    else
    {
      v40 = &v83;
    }

    if (v79)
    {
      v41 = v5;
    }

    else
    {
      v41 = &v85;
    }

    if (v79)
    {
      v42 = &v84;
    }

    else
    {
      v42 = v9;
    }

    if (v79)
    {
      v43 = &v83;
    }

    else
    {
      v43 = (v5 + 4);
    }

    if (v79)
    {
      v5 = &v85;
    }

    if (v11 < 1)
    {
      v60 = 0;
    }

    else
    {
      memset(v31, 255, 4 * v11);
      v44 = 0;
      v45 = 0;
      v46 = *v42;
      v47 = **v42;
      do
      {
        v31[v44] = v44;
        v48 = v44 + 1;
        v49 = v46[v44 + 1];
        if (v47 < v49)
        {
          v50 = *v43;
          do
          {
            v51 = *(v50 + 4 * v47);
            if ((v51 & 0x80000000) == 0 && v51 < *v5)
            {
              v52 = (*v39 + 8 * v51);
              v54 = *v52;
              v53 = v52[1];
              v55 = v53 <= v54;
              v56 = v53 - v54;
              if (!v55)
              {
                v57 = (*v40 + 4 * v54);
                do
                {
                  v59 = *v57++;
                  v58 = v59;
                  if ((v59 & 0x80000000) == 0 && v58 < *v41)
                  {
                    if (v44 > v31[v58])
                    {
                      ++v45;
                    }

                    v31[v58] = v44;
                  }

                  --v56;
                }

                while (v56);
              }
            }

            ++v47;
          }

          while (v47 != v49);
        }

        v47 = v49;
        ++v44;
      }

      while (v48 != v11);
      v60 = 4 * v45;
    }

    v61 = (*(v81 + 24))(v60 + 8 * v11 + 8);
    *v80 = v61;
    if (v61)
    {
      v62 = (v61 + 8 * v11);
      *(a4 + 16) = v62 + 1;
      if (v11 < 1)
      {
        v64 = 0;
      }

      else
      {
        v63 = 0;
        v64 = 0;
        v65 = *v42;
        do
        {
          *(v61 + 8 * v63) = v64;
          v66 = v11 + v63;
          v31[v63] = v11 + v63;
          v67 = v65[v63++];
          v68 = v65[v63];
          if (v67 < v68)
          {
            v69 = *v43;
            do
            {
              v70 = *(v69 + 4 * v67);
              if ((v70 & 0x80000000) == 0 && v70 < *v5)
              {
                v71 = (*v39 + 8 * v70);
                v72 = *v71;
                v73 = v71[1];
                v55 = v73 <= v72;
                v74 = v73 - v72;
                if (!v55)
                {
                  v75 = (*v40 + 4 * v72);
                  do
                  {
                    v77 = *v75++;
                    v76 = v77;
                    if ((v77 & 0x80000000) == 0 && v76 < *v41)
                    {
                      if (v31[v76] < v66)
                      {
                        *(v62 + v64++ + 2) = v76;
                      }

                      v31[v76] = v66;
                    }

                    --v74;
                  }

                  while (v74);
                }
              }

              ++v67;
            }

            while (v67 != v68);
          }
        }

        while (v63 != v11);
      }

      *v62 = v64;
    }

    return (*(v81 + 32))(v82);
  }

  return result;
}

uint64_t sub_2367531BC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v77 = result;
  v13 = a5[4];
  v14 = a5[1];
  if (v13 < v14)
  {
    v15 = a5[3];
    while (1)
    {
      if (v13 == v15)
      {
        v16 = v15 + a10;
      }

      else
      {
        v16 = v13;
      }

      if (v13 == v15 && v15 + a10 >= v14)
      {
        goto LABEL_101;
      }

      v17 = a5[19];
      if (v17 - v14 + v16 >= 0 && (*(a6[6] + (v17 - v14 + v16)) & 1) != 0)
      {
        goto LABEL_100;
      }

      if (v16 >= v15)
      {
        break;
      }

      if (v16 < 0)
      {
        goto LABEL_19;
      }

      if (*(a5 + 7))
      {
        v18 = *(*(a5 + 8) + 4 * v16);
      }

      else
      {
        v18 = v16 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_21:
      v22 = *(a13 + 4 * v18);
      v23 = *(a2 + 12);
      if (v22 >= v23)
      {
        v25 = *(a2 + 4);
        v26 = v25 - *(a2 + 76);
        if (v22 < v26)
        {
          result = ((v22 - v23) / a8);
          v24 = (v22 - v23) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v77) + 4 * result) * a8;
          goto LABEL_31;
        }

        if (v25 > v22)
        {
          v24 = *(*(a2 + 88) + 4 * (v22 - v26));
          goto LABEL_31;
        }
      }

      else if ((v22 & 0x80000000) == 0)
      {
        if (*(a2 + 56))
        {
          v24 = *(*(a2 + 64) + 4 * v22);
        }

        else
        {
          v24 = v22 + *(a7[22] + 4 * v77) * a8;
        }

        goto LABEL_31;
      }

      v24 = 0x7FFFFFFF;
LABEL_31:
      if (v24 == v18)
      {
        v27 = (v22 - v23);
        if (v22 - v23 >= 0)
        {
          if (a11 >= 1)
          {
            v28 = (v16 - v15);
            v29 = 4 * (v15 + a9) - 4 * v15;
            v30 = v15 + a9;
            v31 = a9;
            do
            {
              if (v30 >= v15)
              {
                v34 = *a5;
                v35 = a5[18];
                if (v30 < v34 - v35)
                {
                  v36 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * (v31 / a8));
                  v37 = v31 % a8;
LABEL_45:
                  v33 = v37 + v36 * a8;
                  goto LABEL_46;
                }

                if (v30 >= v34)
                {
LABEL_43:
                  v33 = 0x7FFFFFFF;
                  goto LABEL_46;
                }

                v33 = *(*(a5 + 10) + 4 * (v30 + v35 - v34));
              }

              else
              {
                if (v30 < 0)
                {
                  goto LABEL_43;
                }

                v32 = *(a5 + 7);
                if (!v32)
                {
                  v36 = *(a7[22] + 4 * a4);
                  v37 = v15 + v31;
                  goto LABEL_45;
                }

                v33 = *(v32 + 4 * v30);
              }

LABEL_46:
              v38 = *(a12 + 4 * v33);
              if (v38 >= v23)
              {
                if ((v28 & 0x80000000) != 0)
                {
                  v39 = (*(a5 + 3) + 4 * *(a5 + 4) * v16 + 4 * v30);
                }

                else if (v30 >= v15)
                {
                  v39 = (a6[12] + 4 * a6[2] * v28 + v29);
                }

                else
                {
                  v39 = (*(a5 + 5) + 4 * *(a5 + 6) * v30 + 4 * v28);
                }

                result = *(a3 + 96) + 4 * *(a3 + 16) * v27;
                v40 = (result + 4 * (v38 - v23));
              }

              else
              {
                if ((v28 & 0x80000000) != 0)
                {
                  v39 = (*(a5 + 3) + 4 * *(a5 + 4) * v16 + 4 * v30);
                }

                else if (v30 >= v15)
                {
                  v39 = (a6[12] + 4 * a6[2] * v28 + v29);
                }

                else
                {
                  v39 = (*(a5 + 5) + 4 * *(a5 + 6) * v30 + 4 * v28);
                }

                result = *(a2 + 40);
                v40 = (result + 4 * *(a2 + 48) * v38 + 4 * v27);
              }

              *v40 = *v39 + *v40;
              ++v30;
              ++v31;
              v29 += 4;
            }

            while (v30 < v15 + a9 + a11);
          }

          v41 = a5[18];
          if (v41 >= 1)
          {
            v42 = 0;
            v43 = *a5;
            v44 = a6[4];
            v45 = (v16 - v15);
            v74 = v43 - v41;
            v75 = v43 - v15 - v41;
            v76 = 4 * (v43 - v41);
            v46 = -4 * v15;
            v47 = v43 - v41;
            while ((*(v44 + v42) & 1) != 0)
            {
LABEL_99:
              ++v47;
              ++v42;
              v46 += 4;
              if (v74 + v42 >= v43)
              {
                goto LABEL_100;
              }
            }

            v48 = v74 + v42;
            if (v48 >= v15)
            {
              if (v48 < v74)
              {
                v51 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v75 + v42) / a8));
                v52 = (v75 + v42) % a8;
                goto LABEL_73;
              }

              v50 = *(a5 + 10);
LABEL_70:
              v53 = *(v50 + 4 * v42);
            }

            else if (v48 < 0)
            {
              v53 = 0x7FFFFFFF;
            }

            else
            {
              v49 = *(a5 + 7);
              if (v49)
              {
                v50 = v49 + v76;
                goto LABEL_70;
              }

              v51 = *(a7[22] + 4 * a4);
              v52 = v74 + v42;
LABEL_73:
              v53 = v52 + v51 * a8;
            }

            result = *(a12 + 4 * v53);
            if (result >= v23)
            {
              v56 = *a2 - *(a2 + 72);
              if (result < v56)
              {
                v55 = (result - v23) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v77) + 4 * ((result - v23) / a8)) * a8;
                goto LABEL_84;
              }

              if (*a2 > result)
              {
                v55 = *(*(a2 + 80) + 4 * (result - v56));
                goto LABEL_84;
              }
            }

            else if ((result & 0x80000000) == 0)
            {
              v54 = *(a2 + 56);
              if (v54)
              {
                v55 = *(v54 + 4 * result);
              }

              else
              {
                v55 = result + *(a7[22] + 4 * v77) * a8;
              }

LABEL_84:
              if (v55 == v53)
              {
                if (v23 <= result)
                {
                  if ((v45 & 0x80000000) != 0)
                  {
                    v57 = (*(a5 + 3) + 4 * *(a5 + 4) * v16 + 4 * v47);
                  }

                  else if (v48 >= v15)
                  {
                    v57 = (a6[12] + 4 * a6[2] * v45 + v76 + v46);
                  }

                  else
                  {
                    v57 = (*(a5 + 5) + 4 * *(a5 + 6) * v48 + 4 * v45);
                  }

                  v58 = (*(a3 + 96) + 4 * *(a3 + 16) * v27 + 4 * (result - v23));
                }

                else
                {
                  if ((v45 & 0x80000000) != 0)
                  {
                    v57 = (*(a5 + 3) + 4 * *(a5 + 4) * v16 + 4 * v47);
                  }

                  else if (v48 >= v15)
                  {
                    v57 = (a6[12] + 4 * a6[2] * v45 + v76 + v46);
                  }

                  else
                  {
                    v57 = (*(a5 + 5) + 4 * *(a5 + 6) * v48 + 4 * v45);
                  }

                  v58 = (*(a2 + 40) + 4 * *(a2 + 48) * result + 4 * v27);
                }

                *v58 = *v57 + *v58;
              }

              goto LABEL_99;
            }

            v55 = 0x7FFFFFFF;
            goto LABEL_84;
          }
        }
      }

LABEL_100:
      v13 = v16 + 1;
      if (v16 + 1 >= v14)
      {
        goto LABEL_101;
      }
    }

    v19 = v14 - v17;
    v20 = __OFSUB__(v16, v19);
    v21 = v16 - v19;
    if (v21 < 0 != v20)
    {
      v18 = (v16 - v15) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v16 - v15) / a8)) * a8;
      goto LABEL_21;
    }

    if (v14 > v16)
    {
      v18 = *(*(a5 + 11) + 4 * v21);
      goto LABEL_21;
    }

LABEL_19:
    v18 = 0x7FFFFFFF;
    goto LABEL_21;
  }

LABEL_101:
  v59 = a5[18];
  if (v59 >= 1)
  {
    v60 = 0;
    v61 = *a5;
    v62 = v61 - v59;
    v63 = a6[4];
    result = v77;
    while ((*(v63 + v60) & 1) != 0)
    {
LABEL_126:
      ++v60;
      if (v62 + v60 >= v61)
      {
        return result;
      }
    }

    v64 = v62 + v60;
    v65 = a5[3];
    if (v64 < v65)
    {
      if (v64 < 0)
      {
        v68 = 0x7FFFFFFF;
      }

      else
      {
        v66 = *(a5 + 7);
        if (v66)
        {
          v67 = v66 + 4 * v62;
LABEL_111:
          v68 = *(v67 + 4 * v60);
          goto LABEL_114;
        }

        v68 = v62 + v60 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_114:
      v69 = *(a12 + 4 * v68);
      v70 = *(a2 + 12);
      if (v69 >= v70)
      {
        v73 = *a2 - *(a2 + 72);
        if (v69 < v73)
        {
          v72 = (v69 - v70) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v77) + 4 * ((v69 - v70) / a8)) * a8;
          goto LABEL_124;
        }

        if (*a2 > v69)
        {
          v72 = *(*(a2 + 80) + 4 * (v69 - v73));
          goto LABEL_124;
        }
      }

      else if ((v69 & 0x80000000) == 0)
      {
        v71 = *(a2 + 56);
        if (v71)
        {
          v72 = *(v71 + 4 * v69);
        }

        else
        {
          v72 = v69 + *(a7[22] + 4 * v77) * a8;
        }

        goto LABEL_124;
      }

      v72 = 0x7FFFFFFF;
LABEL_124:
      if (v72 == v68)
      {
        *(v63 + v60) = 1;
      }

      goto LABEL_126;
    }

    if (v64 < v62)
    {
      v68 = (v62 + v60 - v65) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v62 + v60 - v65) / a8)) * a8;
      goto LABEL_114;
    }

    v67 = *(a5 + 10);
    goto LABEL_111;
  }

  return result;
}