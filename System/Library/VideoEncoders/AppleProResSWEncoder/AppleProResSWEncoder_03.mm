int8x16_t *pixInGeneric<(PixelFormat)1647719542,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v3;
  v9 = v2;
  v171 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v11 = 16 - v4;
      if (v4 <= 0)
      {
        v12 = v6;
        v13 = v170;
        goto LABEL_20;
      }

LABEL_18:
      v12 = v6;
      v23 = v4 + 1;
      v13 = v170;
      do
      {
        v24 = v9[1];
        *v13 = *v9;
        v13[1] = v24;
        v25 = v9[3];
        v13[2] = v9[2];
        v13[3] = v25;
        v26 = v9[5];
        v13[4] = v9[4];
        v13[5] = v26;
        v27 = v9[6];
        v28 = v9[7];
        v9 = (v9 + v6);
        v13[6] = v27;
        v13[7] = v28;
        v13 += 8;
        --v23;
      }

      while (v23 > 1);
LABEL_20:
      if (v11 >= 1)
      {
        v29 = (v9 - v12);
        v30 = *v29;
        v31 = v29[2];
        v32 = v29[3];
        v33 = v29[4];
        v34 = v29[5];
        v35 = v11 + 1;
        v36 = v29[6];
        v37 = v29[7];
        do
        {
          *v13 = v30;
          v13[1] = v29[1];
          v13[2] = v31;
          v13[3] = v32;
          v13[4] = v33;
          v13[5] = v34;
          v13[6] = v36;
          v13[7] = v37;
          v13 += 8;
          --v35;
        }

        while (v35 > 1);
      }

      return pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)3>(v170, 128, v8, v7);
    }

    if (v5 > 15)
    {
      return pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)3>(v170, 128, v8, v7);
    }

    v14 = v7;
    v15 = 8 * v5;
    v16 = v5;
    if (v4 <= 0)
    {
      v22 = &v2->i8[-v6];
      v21 = v170;
    }

    else
    {
      v17 = v15;
      v18 = v6;
      v19 = v4;
      v20 = v4 + 1;
      v21 = v170;
      do
      {
        memcpy(v21, v9, v15);
        v9 = (v9 + v18);
        v21 += 8;
        --v20;
      }

      while (v20 > 1);
      if (v19 > 15)
      {
        goto LABEL_27;
      }

      v4 = v19;
      v22 = &v9->i8[-v18];
    }

    v17 = v15;
    v38 = 17 - v4;
    do
    {
      memcpy(v21, v22, v17);
      v21 += 8;
      --v38;
    }

    while (v38 > 1);
LABEL_27:
    v39 = (v170[0].i64 + v17);
    v40 = &v170[-1].i8[v17 + 8];
    v41 = *(&v170[0].i64[-1] + v17);
    v42 = 16 - v16;
    if (16 - v16 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v42;
    }

    if (v42 >= 4)
    {
      v44 = v43 & 0x7FFFFFFC;
      v40 += 8 * v44;
      v45 = vdupq_lane_s64(v41, 0);
      v46 = &v170[1].i8[v17];
      v47 = v44;
      do
      {
        v46[-1] = v45;
        *v46 = v45;
        v46 += 2;
        v47 -= 4;
      }

      while (v47);
      v7 = v14;
      if (v44 == v43)
      {
LABEL_37:
        v50 = v39 + 15;
        v51 = v39[15];
        if (v42 >= 4)
        {
          v52 = v43 & 0x7FFFFFFC;
          v50 += v52;
          v53 = vdupq_lane_s64(v51, 0);
          v54 = &v170[9].i8[v17];
          v55 = v52;
          do
          {
            v54[-1] = v53;
            *v54 = v53;
            v54 += 2;
            v55 -= 4;
          }

          while (v55);
          if (v52 == v43)
          {
LABEL_44:
            v58 = v39 + 31;
            v59 = v39[31];
            if (v42 >= 4)
            {
              v60 = v43 & 0x7FFFFFFC;
              v58 += v60;
              v61 = vdupq_lane_s64(v59, 0);
              v62 = &v170[17].i8[v17];
              v63 = v60;
              do
              {
                v62[-1] = v61;
                *v62 = v61;
                v62 += 2;
                v63 -= 4;
              }

              while (v63);
              if (v60 == v43)
              {
LABEL_51:
                v66 = v39 + 47;
                v67 = v39[47];
                if (v42 >= 4)
                {
                  v68 = v43 & 0x7FFFFFFC;
                  v66 += v68;
                  v69 = vdupq_lane_s64(v67, 0);
                  v70 = &v170[25].i8[v17];
                  v71 = v68;
                  do
                  {
                    v70[-1] = v69;
                    *v70 = v69;
                    v70 += 2;
                    v71 -= 4;
                  }

                  while (v71);
                  if (v68 == v43)
                  {
LABEL_58:
                    v74 = v39 + 63;
                    v75 = v39[63];
                    if (v42 >= 4)
                    {
                      v76 = v43 & 0x7FFFFFFC;
                      v74 += v76;
                      v77 = vdupq_lane_s64(v75, 0);
                      v78 = &v170[33].i8[v17];
                      v79 = v76;
                      do
                      {
                        v78[-1] = v77;
                        *v78 = v77;
                        v78 += 2;
                        v79 -= 4;
                      }

                      while (v79);
                      if (v76 == v43)
                      {
LABEL_65:
                        v82 = v39 + 79;
                        v83 = v39[79];
                        if (v42 >= 4)
                        {
                          v84 = v43 & 0x7FFFFFFC;
                          v82 += v84;
                          v85 = vdupq_lane_s64(v83, 0);
                          v86 = &v170[41].i8[v17];
                          v87 = v84;
                          do
                          {
                            v86[-1] = v85;
                            *v86 = v85;
                            v86 += 2;
                            v87 -= 4;
                          }

                          while (v87);
                          if (v84 == v43)
                          {
LABEL_72:
                            v90 = v39 + 95;
                            v91 = v39[95];
                            if (v42 >= 4)
                            {
                              v92 = v43 & 0x7FFFFFFC;
                              v90 += v92;
                              v93 = vdupq_lane_s64(v91, 0);
                              v94 = &v170[49].i8[v17];
                              v95 = v92;
                              do
                              {
                                v94[-1] = v93;
                                *v94 = v93;
                                v94 += 2;
                                v95 -= 4;
                              }

                              while (v95);
                              if (v92 == v43)
                              {
LABEL_79:
                                v98 = v39 + 111;
                                v99 = v39[111];
                                if (v42 >= 4)
                                {
                                  v100 = v43 & 0x7FFFFFFC;
                                  v98 += v100;
                                  v101 = vdupq_lane_s64(v99, 0);
                                  v102 = &v170[57].i8[v17];
                                  v103 = v100;
                                  do
                                  {
                                    v102[-1] = v101;
                                    *v102 = v101;
                                    v102 += 2;
                                    v103 -= 4;
                                  }

                                  while (v103);
                                  if (v100 == v43)
                                  {
LABEL_86:
                                    v106 = v39 + 127;
                                    v107 = v39[127];
                                    if (v42 >= 4)
                                    {
                                      v108 = v43 & 0x7FFFFFFC;
                                      v106 += v108;
                                      v109 = vdupq_lane_s64(v107, 0);
                                      v110 = &v170[65].i8[v17];
                                      v111 = v108;
                                      do
                                      {
                                        v110[-1] = v109;
                                        *v110 = v109;
                                        v110 += 2;
                                        v111 -= 4;
                                      }

                                      while (v111);
                                      if (v108 == v43)
                                      {
LABEL_93:
                                        v114 = v39 + 143;
                                        v115 = v39[143];
                                        if (v42 >= 4)
                                        {
                                          v116 = v43 & 0x7FFFFFFC;
                                          v114 += v116;
                                          v117 = vdupq_lane_s64(v115, 0);
                                          v118 = &v170[73].i8[v17];
                                          v119 = v116;
                                          do
                                          {
                                            v118[-1] = v117;
                                            *v118 = v117;
                                            v118 += 2;
                                            v119 -= 4;
                                          }

                                          while (v119);
                                          if (v116 == v43)
                                          {
LABEL_100:
                                            v122 = v39 + 159;
                                            v123 = v39[159];
                                            if (v42 >= 4)
                                            {
                                              v124 = v43 & 0x7FFFFFFC;
                                              v122 += v124;
                                              v125 = vdupq_lane_s64(v123, 0);
                                              v126 = &v170[81].i8[v17];
                                              v127 = v124;
                                              do
                                              {
                                                v126[-1] = v125;
                                                *v126 = v125;
                                                v126 += 2;
                                                v127 -= 4;
                                              }

                                              while (v127);
                                              if (v124 == v43)
                                              {
LABEL_107:
                                                v130 = v39 + 175;
                                                v131 = v39[175];
                                                if (v42 >= 4)
                                                {
                                                  v132 = v43 & 0x7FFFFFFC;
                                                  v130 += v132;
                                                  v133 = vdupq_lane_s64(v131, 0);
                                                  v134 = &v170[89].i8[v17];
                                                  v135 = v132;
                                                  do
                                                  {
                                                    v134[-1] = v133;
                                                    *v134 = v133;
                                                    v134 += 2;
                                                    v135 -= 4;
                                                  }

                                                  while (v135);
                                                  if (v132 == v43)
                                                  {
LABEL_114:
                                                    v138 = v39 + 191;
                                                    v139 = v39[191];
                                                    if (v42 >= 4)
                                                    {
                                                      v140 = v43 & 0x7FFFFFFC;
                                                      v138 += v140;
                                                      v141 = vdupq_lane_s64(v139, 0);
                                                      v142 = &v170[97].i8[v17];
                                                      v143 = v140;
                                                      do
                                                      {
                                                        v142[-1] = v141;
                                                        *v142 = v141;
                                                        v142 += 2;
                                                        v143 -= 4;
                                                      }

                                                      while (v143);
                                                      if (v140 == v43)
                                                      {
LABEL_121:
                                                        v146 = v39 + 207;
                                                        v147 = v39[207];
                                                        if (v42 >= 4)
                                                        {
                                                          v148 = v43 & 0x7FFFFFFC;
                                                          v146 += v148;
                                                          v149 = vdupq_lane_s64(v147, 0);
                                                          v150 = &v170[105].i8[v17];
                                                          v151 = v148;
                                                          do
                                                          {
                                                            v150[-1] = v149;
                                                            *v150 = v149;
                                                            v150 += 2;
                                                            v151 -= 4;
                                                          }

                                                          while (v151);
                                                          if (v148 == v43)
                                                          {
LABEL_128:
                                                            v154 = v39 + 223;
                                                            v155 = v39[223];
                                                            if (v42 >= 4)
                                                            {
                                                              v156 = v43 & 0x7FFFFFFC;
                                                              v154 += v156;
                                                              v157 = vdupq_lane_s64(v155, 0);
                                                              v158 = &v170[113].i8[v17];
                                                              v159 = v156;
                                                              do
                                                              {
                                                                v158[-1] = v157;
                                                                *v158 = v157;
                                                                v158 += 2;
                                                                v159 -= 4;
                                                              }

                                                              while (v159);
                                                              if (v156 == v43)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v156) = 0;
                                                            }

                                                            v160 = v43 - v156;
                                                            v161 = v154 + 1;
                                                            do
                                                            {
                                                              *v161++ = v155;
                                                              --v160;
                                                            }

                                                            while (v160);
LABEL_135:
                                                            v162 = v39 + 239;
                                                            v163 = v39[239];
                                                            if (v42 >= 4)
                                                            {
                                                              v164 = v43 & 0x7FFFFFFC;
                                                              v162 += v164;
                                                              v165 = vdupq_lane_s64(v163, 0);
                                                              v166 = &v170[121].i8[v17];
                                                              v167 = v164;
                                                              do
                                                              {
                                                                v166[-1] = v165;
                                                                *v166 = v165;
                                                                v166 += 2;
                                                                v167 -= 4;
                                                              }

                                                              while (v167);
                                                              if (v164 == v43)
                                                              {
                                                                return pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)3>(v170, 128, v8, v7);
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v164) = 0;
                                                            }

                                                            v168 = v43 - v164;
                                                            v169 = v162 + 1;
                                                            do
                                                            {
                                                              *v169++ = v163;
                                                              --v168;
                                                            }

                                                            while (v168);
                                                            return pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)3>(v170, 128, v8, v7);
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v148) = 0;
                                                        }

                                                        v152 = v43 - v148;
                                                        v153 = v146 + 1;
                                                        do
                                                        {
                                                          *v153++ = v147;
                                                          --v152;
                                                        }

                                                        while (v152);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v140) = 0;
                                                    }

                                                    v144 = v43 - v140;
                                                    v145 = v138 + 1;
                                                    do
                                                    {
                                                      *v145++ = v139;
                                                      --v144;
                                                    }

                                                    while (v144);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v132) = 0;
                                                }

                                                v136 = v43 - v132;
                                                v137 = v130 + 1;
                                                do
                                                {
                                                  *v137++ = v131;
                                                  --v136;
                                                }

                                                while (v136);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v124) = 0;
                                            }

                                            v128 = v43 - v124;
                                            v129 = v122 + 1;
                                            do
                                            {
                                              *v129++ = v123;
                                              --v128;
                                            }

                                            while (v128);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v116) = 0;
                                        }

                                        v120 = v43 - v116;
                                        v121 = v114 + 1;
                                        do
                                        {
                                          *v121++ = v115;
                                          --v120;
                                        }

                                        while (v120);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v108) = 0;
                                    }

                                    v112 = v43 - v108;
                                    v113 = v106 + 1;
                                    do
                                    {
                                      *v113++ = v107;
                                      --v112;
                                    }

                                    while (v112);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v100) = 0;
                                }

                                v104 = v43 - v100;
                                v105 = v98 + 1;
                                do
                                {
                                  *v105++ = v99;
                                  --v104;
                                }

                                while (v104);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v92) = 0;
                            }

                            v96 = v43 - v92;
                            v97 = v90 + 1;
                            do
                            {
                              *v97++ = v91;
                              --v96;
                            }

                            while (v96);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v84) = 0;
                        }

                        v88 = v43 - v84;
                        v89 = v82 + 1;
                        do
                        {
                          *v89++ = v83;
                          --v88;
                        }

                        while (v88);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v76) = 0;
                    }

                    v80 = v43 - v76;
                    v81 = v74 + 1;
                    do
                    {
                      *v81++ = v75;
                      --v80;
                    }

                    while (v80);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v68) = 0;
                }

                v72 = v43 - v68;
                v73 = v66 + 1;
                do
                {
                  *v73++ = v67;
                  --v72;
                }

                while (v72);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v60) = 0;
            }

            v64 = v43 - v60;
            v65 = v58 + 1;
            do
            {
              *v65++ = v59;
              --v64;
            }

            while (v64);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v52) = 0;
        }

        v56 = v43 - v52;
        v57 = v50 + 1;
        do
        {
          *v57++ = v51;
          --v56;
        }

        while (v56);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v44) = 0;
      v7 = v14;
    }

    v48 = v43 - v44;
    v49 = (v40 + 8);
    do
    {
      *v49++ = v41;
      --v48;
    }

    while (v48);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  return pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)3>(v2, v6, v3, v7);
}

uint64_t PixelInputFunctor::PixelInputFunctor(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = getPixelInputRoutine(a2, a3);
  *(a1 + 8) = a4;
  return a1;
}

uint64_t filterChroma_y408_r408(uint64_t result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a4;
    if (a2 < 2)
    {
      if (a2 == 1)
      {
        if (a4 == 1)
        {
          v15 = *(result + 2);
          v16 = (result + 3);
          do
          {
            *(v16 - 1) = v15;
            v15 = *v16++;
            --a3;
          }

          while (a3);
        }

        else
        {
          v17 = result + 3;
          do
          {
            v17 += a4;
            --a3;
          }

          while (a3);
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = (result + 3);
      do
      {
        v7 = *(result + 2);
        v8 = *(result + 3);
        v9 = v6;
        v10 = a2 + 2;
        do
        {
          v11 = *v9;
          v12 = v9[3];
          v13 = v9[4];
          v10 -= 2;
          *(v9 - 1) = (v7 + 2 * *(v9 - 1) + v12 + 2) >> 2;
          *v9 = (v8 + 2 * v11 + v13 + 2) >> 2;
          v9 += 8;
          v8 = v13;
          v7 = v12;
        }

        while (v10 > 3);
        if (v10 == 3)
        {
          v14 = *v9;
          *(v9 - 1) = (v12 + 3 * *(v9 - 1) + 2) >> 2;
          *v9 = (v13 + 3 * v14 + 2) >> 2;
        }

        result += v4;
        ++v5;
        v6 += v4;
      }

      while (v5 != a3);
    }
  }

  return result;
}

unsigned __int8 *filterChroma_v408(unsigned __int8 *result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    if (a2 < 2)
    {
      if (a2 == 1)
      {
        v14 = result + 2;
        do
        {
          v14 += a4;
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      v4 = 0;
      v5 = a2 + 2;
      do
      {
        v6 = *result;
        v7 = result[2];
        v8 = v5;
        v9 = result;
        do
        {
          v10 = v9[2];
          v11 = v9[4];
          v12 = v9[6];
          *v9 = (v6 + 2 * *v9 + v11 + 2) >> 2;
          v9[2] = (v7 + 2 * v10 + v12 + 2) >> 2;
          v9 += 8;
          v8 -= 2;
          v7 = v12;
          v6 = v11;
        }

        while (v8 > 3);
        if (v8 == 3)
        {
          v13 = v9[2];
          *v9 = (v11 + 3 * *v9 + 2) >> 2;
          v9[2] = (v12 + 3 * v13 + 2) >> 2;
        }

        result += a4;
        ++v4;
      }

      while (v4 != a3);
    }
  }

  return result;
}

unsigned __int16 *filterChroma_y416(unsigned __int16 *result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a4;
    if (a2 < 2)
    {
      if (a2 == 1)
      {
        v15 = result + 3;
        do
        {
          v15 = (v15 + a4);
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      v5 = 0;
      v6 = result + 6;
      do
      {
        v7 = result[2];
        v8 = result[3];
        v9 = v6;
        v10 = a2 + 2;
        do
        {
          v11 = *(v9 - 3);
          v12 = *v9;
          v13 = v9[1];
          v10 -= 2;
          *(v9 - 4) = (v7 + 2 * *(v9 - 4) + v12 + 2) >> 2;
          *(v9 - 3) = (v8 + 2 * v11 + v13 + 2) >> 2;
          v9 += 8;
          v8 = v13;
          v7 = v12;
        }

        while (v10 > 3);
        if (v10 == 3)
        {
          v14 = (v13 + 3 * *(v9 - 3) + 2) >> 2;
          *(v9 - 4) = (v12 + 3 * *(v9 - 4) + 2) >> 2;
          *(v9 - 3) = v14;
        }

        result = (result + v4);
        ++v5;
        v6 = (v6 + v4);
      }

      while (v5 != a3);
    }
  }

  return result;
}

float32x2_t *filterChroma_r4fl(float32x2_t *result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    if (a2 < 2)
    {
      if (a2 == 1)
      {
        v18 = result + 1;
        __asm
        {
          FMOV            V0.2D, #3.0
          FMOV            V1.2D, #0.25
        }

        do
        {
          v21 = vcvtq_f64_f32(*v18);
          *v18 = vcvt_f32_f64(vmulq_f64(vmlaq_f64(v21, _Q0, v21), _Q1));
          v18 = (v18 + a4);
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      v4 = 0;
      v5 = result + 3;
      __asm
      {
        FMOV            V0.2D, #2.0
        FMOV            V1.2D, #0.25
        FMOV            V2.2D, #3.0
      }

      do
      {
        v13 = result[1];
        v14 = v5;
        v15 = a2 + 2;
        do
        {
          v16 = vcvtq_f64_f32(v13);
          v13 = *v14;
          v17 = vcvtq_f64_f32(*v14);
          v14[-2] = vcvt_f32_f64(vmulq_f64(vaddq_f64(vmlaq_f64(v16, _Q0, vcvtq_f64_f32(v14[-2])), v17), _Q1));
          v15 -= 2;
          v14 += 4;
        }

        while (v15 > 3);
        if (v15 == 3)
        {
          v14[-2] = vcvt_f32_f64(vmulq_f64(vmlaq_f64(v17, _Q2, vcvtq_f64_f32(v14[-2])), _Q1));
        }

        result = (result + a4);
        ++v4;
        v5 = (v5 + a4);
      }

      while (v4 != a3);
    }
  }

  return result;
}

uint32x4_t *convertARGBToV216WithChromaFiltering<(PixelFormat)32>(uint32x4_t *result, int a2, int32x4_t *a3, int a4, int a5, int a6, int a7)
{
  v50 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 != 1)
    {
      if (a7 == 9)
      {
        v10 = vdupq_n_s32(0xC010B178);
        v11 = vdupq_n_s32(0x41509A20u);
        v12 = vdupq_n_s32(0xC1CECAB2);
        v13 = vdupq_n_s32(0xC1A21430);
        v14 = vdupq_n_s32(0x43151075u);
        v15 = vdupq_n_s32(0xC0FB32C5);
        v16 = vdupq_n_s32(0x42670714u);
        if (a6 < 1)
        {
          return result;
        }
      }

      else
      {
        v10 = vdupq_n_s32(0xC0924884);
        v11 = vdupq_n_s32(0x41C882E1u);
        v12 = vdupq_n_s32(0xC1BC4EC0);
        v13 = vdupq_n_s32(0xC194FD02);
        v14 = vdupq_n_s32(0x43010EA0u);
        v15 = vdupq_n_s32(0xC117C7BE);
        v16 = vdupq_n_s32(0x428379BFu);
        if (a6 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v10 = vdupq_n_s32(0xC024F5DA);
    v11 = vdupq_n_s32(0x417DFB1Du);
    v12 = vdupq_n_s32(0xC1CC4226);
    v13 = vdupq_n_s32(0xC1AD594E);
    v14 = vdupq_n_s32(0x431D3E37u);
    v15 = vdupq_n_s32(0xC0CE1E4D);
    v16 = vdupq_n_s32(0x423AF7CBu);
    if (a6 >= 1)
    {
LABEL_9:
      v17 = 0;
      v18 = a2;
      v19 = vdupq_n_s32(0x41E0E0E1u);
      v20.i64[0] = 0xFF000000FFLL;
      v20.i64[1] = 0xFF000000FFLL;
      v21 = vdupq_n_s32(0xC6E00000);
      v22.i64[0] = 0x8000800080008000;
      v22.i64[1] = 0x8000800080008000;
      do
      {
        v23 = 0;
        v7.i8[0] = result->i8[1];
        v7.f32[0] = v7.u32[0];
        v8.i8[0] = result->i8[2];
        v9.i8[0] = result->i8[3];
        v9.f32[0] = v9.u32[0];
        *&v24 = v8.u32[0];
        v25 = vmulq_f32(v13, COERCE_UNSIGNED_INT(v8.u32[0]));
        v26 = vaddq_f32(vmulq_f32(v15, v7), v25);
        v25.f32[0] = v9.f32[0] * 28.11;
        v8 = vaddq_f32(v26, v25);
        v7.f32[0] = v7.f32[0] * 28.11;
        v9 = vmulq_f32(v10, v9);
        v7 = vdupq_lane_s64(vzip1q_s32(v8, vaddq_f32(vaddq_f32(v7, vmulq_f32(v12, v24)), v9)).i64[0], 0);
        v27 = result;
        v28 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v30 = v28;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v23)
          {
            break;
          }

          v46 = v27->i32[0];
          if (i == 2)
          {
            v44 = v27->i32[1];
            v27 = (v27 + 4);
            v43 = v44;
LABEL_23:
            v47 = v43;
            goto LABEL_24;
          }

          if (i != 3)
          {
            v43 = v27->i32[0];
            goto LABEL_23;
          }

          v47 = v27->i32[1];
          v27 = (v27 + 8);
LABEL_24:
          v48 = v27->i32[0];
          v49 = v27->i32[0];
          i += 4;
          v30 = &v45;
          v27 = &v46;
          v23 = v28;
LABEL_14:
          v31 = *v27++;
          v32 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v31, 8uLL), v20));
          v33 = vcvtq_f32_u32((*&vshrq_n_u32(v31, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
          v34 = vcvtq_f32_u32(vshrq_n_u32(v31, 0x18uLL));
          v35 = vaddq_f32(vmulq_f32(v11, v34), vaddq_f32(vmulq_f32(v16, v32), vmulq_f32(v14, v33)));
          v36 = vaddq_f32(vmulq_f32(v34, v19), vaddq_f32(vmulq_f32(v15, v32), vmulq_f32(v13, v33)));
          v37 = vaddq_f32(vmulq_f32(v10, v34), vaddq_f32(vmulq_f32(v32, v19), vmulq_f32(v12, v33)));
          v38 = vaddq_f32(v35, v21);
          v39 = vzip1q_s32(v36, v37);
          v40 = vzip2q_s32(v36, v37);
          v41 = vzip2q_s64(v7, v39);
          v7 = vzip2q_s64(v39, v40);
          v39.i64[1] = v40.i64[0];
          v9 = vcvtnq_s32_f32(v38);
          v42 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v39, v39), vaddq_f32(v41, v7)));
          *v9.f32 = vqmovn_s32(v9);
          *v42.i8 = vqmovn_s32(v42);
          v8 = veorq_s8(vzip1q_s16(v42, v9), v22);
          *v30 = v8;
          v28 = v30 + 1;
        }

        v7 = v45;
        if (i == 3)
        {
          *v23 = v45;
        }

        else
        {
          v23->i64[0] = v45.i64[0];
        }

LABEL_11:
        result = (result + v18);
        a3 = (a3 + a4);
        ++v17;
      }

      while (v17 != a6);
    }
  }

  return result;
}

unsigned int *convertARGBToV216WithChromaFiltering<(PixelFormat)1378955371>(unsigned int *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v52 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 != 1)
    {
      if (a7 == 9)
      {
        v9 = vdupq_n_s32(0xBF1044D8);
        v10 = vdupq_n_s32(0x404FFD85u);
        v11 = vdupq_n_s32(0xC0CE2F73);
        v12 = vdupq_n_s32(0xC0A19A82);
        v13 = vdupq_n_s32(0x4214A08Cu);
        v14 = vdupq_n_s32(0xBFFA7630);
        v15 = vdupq_n_s32(0x416659A4u);
        if (a6 < 1)
        {
          return result;
        }
      }

      else
      {
        v9 = vdupq_n_s32(0xBF91DAB2);
        v10 = vdupq_n_s32(0x40C7EC59u);
        v11 = vdupq_n_s32(0xC0BBC162);
        v12 = vdupq_n_s32(0xC0948D28);
        v13 = vdupq_n_s32(0x4200ADBDu);
        v14 = vdupq_n_s32(0xC01755CC);
        v15 = vdupq_n_s32(0x4183170Bu);
        if (a6 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v9 = vdupq_n_s32(0xBF247A02);
    v10 = vdupq_n_s32(0x407D3C71u);
    v11 = vdupq_n_s32(0xC0CBA8CE);
    v12 = vdupq_n_s32(0xC0ACD72A);
    v13 = vdupq_n_s32(0x421CC82Bu);
    v14 = vdupq_n_s32(0xBFCD8390);
    v15 = vdupq_n_s32(0x413A6B6Eu);
    if (a6 >= 1)
    {
LABEL_9:
      v16 = 0;
      v17 = a2;
      v18 = vdupq_n_s32(0x40E0380Eu);
      v19.i64[0] = 0x300000003;
      v19.i64[1] = 0x300000003;
      v20 = vdupq_n_s32(0xC6E00000);
      v21.i64[0] = 0x8000800080008000;
      v21.i64[1] = 0x8000800080008000;
      do
      {
        v22 = 0;
        v23 = bswap32(*result);
        v7.f32[0] = (v23 >> 22);
        v8.f32[0] = ((v23 >> 2) & 0x3FF);
        *&v24 = ((v23 >> 12) & 0x3FF);
        v25 = vmulq_f32(v12, v24);
        v26 = vaddq_f32(vmulq_f32(v14, v7), v25);
        v25.f32[0] = v8.f32[0] * 7.0068;
        v7.f32[0] = v7.f32[0] * 7.0068;
        v8 = vmulq_f32(v9, v8);
        v7 = vdupq_lane_s64(vzip1q_s32(vaddq_f32(v25, v26), vaddq_f32(v8, vaddq_f32(v7, vmulq_f32(v11, v24)))).i64[0], 0);
        v27 = result;
        v28 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v30 = v28;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v22)
          {
            break;
          }

          v45 = *v27;
          v48 = *v27;
          if (i == 2)
          {
            v49 = v27[1];
            v50 = v49;
            v46 = v27[1];
          }

          else
          {
            if (i == 3)
            {
              v46 = v27[2];
              v49 = v27[1];
            }

            else
            {
              v49 = v45;
              v46 = *v27;
            }

            v50 = v46;
          }

          v51 = v46;
          i += 4;
          v30 = &v47;
          v27 = &v48;
          v22 = v28;
LABEL_14:
          v31 = *v27;
          v27 += 4;
          v32 = vrev16q_s8(v31);
          v33 = vsraq_n_u32(vshlq_n_s32(v32, 0x10uLL), v32, 0x10uLL);
          v34 = vcvtq_f32_u32(vshrq_n_u32(v33, 0x16uLL));
          v35 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v33, 0xCuLL), v19));
          v36 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v33, 2uLL), v19));
          v37 = vaddq_f32(vmulq_f32(v10, v36), vaddq_f32(vmulq_f32(v15, v34), vmulq_f32(v13, v35)));
          v38 = vaddq_f32(vmulq_f32(v36, v18), vaddq_f32(vmulq_f32(v14, v34), vmulq_f32(v12, v35)));
          v39 = vaddq_f32(vmulq_f32(v9, v36), vaddq_f32(vmulq_f32(v34, v18), vmulq_f32(v11, v35)));
          v40 = vaddq_f32(v37, v20);
          v41 = vzip1q_s32(v38, v39);
          v42 = vzip2q_s32(v38, v39);
          v43 = vzip2q_s64(v7, v41);
          v7 = vzip2q_s64(v41, v42);
          v41.i64[1] = v42.i64[0];
          v8 = vcvtnq_s32_f32(v40);
          v44 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v41, v41), vaddq_f32(v43, v7)));
          *v8.f32 = vqmovn_s32(v8);
          *v44.i8 = vqmovn_s32(v44);
          *v30 = veorq_s8(vzip1q_s16(v44, v8), v21);
          v28 = v30 + 1;
        }

        v7 = v47;
        if (i == 3)
        {
          *v22 = v47;
        }

        else
        {
          v22->i64[0] = v47.i64[0];
        }

LABEL_11:
        result = (result + v17);
        a3 = (a3 + a4);
        ++v16;
      }

      while (v16 != a6);
    }
  }

  return result;
}

unsigned int *convertARGBToV216WithChromaFiltering<(PixelFormat)1915892016>(unsigned int *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v52 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 != 1)
    {
      if (a7 == 9)
      {
        v9 = vdupq_n_s32(0xBF1044D8);
        v10 = vdupq_n_s32(0x404FFD85u);
        v11 = vdupq_n_s32(0xC0CE2F73);
        v12 = vdupq_n_s32(0xC0A19A82);
        v13 = vdupq_n_s32(0x4214A08Cu);
        v14 = vdupq_n_s32(0xBFFA7630);
        v15 = vdupq_n_s32(0x416659A4u);
        if (a6 < 1)
        {
          return result;
        }
      }

      else
      {
        v9 = vdupq_n_s32(0xBF91DAB2);
        v10 = vdupq_n_s32(0x40C7EC59u);
        v11 = vdupq_n_s32(0xC0BBC162);
        v12 = vdupq_n_s32(0xC0948D28);
        v13 = vdupq_n_s32(0x4200ADBDu);
        v14 = vdupq_n_s32(0xC01755CC);
        v15 = vdupq_n_s32(0x4183170Bu);
        if (a6 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v9 = vdupq_n_s32(0xBF247A02);
    v10 = vdupq_n_s32(0x407D3C71u);
    v11 = vdupq_n_s32(0xC0CBA8CE);
    v12 = vdupq_n_s32(0xC0ACD72A);
    v13 = vdupq_n_s32(0x421CC82Bu);
    v14 = vdupq_n_s32(0xBFCD8390);
    v15 = vdupq_n_s32(0x413A6B6Eu);
    if (a6 >= 1)
    {
LABEL_9:
      v16 = 0;
      v17 = a2;
      v18 = vdupq_n_s32(0x40E0380Eu);
      v19.i64[0] = 0x300000003;
      v19.i64[1] = 0x300000003;
      v20 = vdupq_n_s32(0xC6E00000);
      v21.i64[0] = 0x8000800080008000;
      v21.i64[1] = 0x8000800080008000;
      do
      {
        v22 = 0;
        v23 = bswap32(*result);
        v7.f32[0] = (v23 >> 20);
        v8.f32[0] = (v23 & 0x3FF);
        *&v24 = ((v23 >> 10) & 0x3FF);
        v25 = vmulq_f32(v12, v24);
        v26 = vaddq_f32(vmulq_f32(v14, v7), v25);
        v25.f32[0] = v8.f32[0] * 7.0068;
        v7.f32[0] = v7.f32[0] * 7.0068;
        v8 = vmulq_f32(v9, v8);
        v7 = vdupq_lane_s64(vzip1q_s32(vaddq_f32(v25, v26), vaddq_f32(v8, vaddq_f32(v7, vmulq_f32(v11, v24)))).i64[0], 0);
        v27 = result;
        v28 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v30 = v28;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v22)
          {
            break;
          }

          v45 = *v27;
          v48 = *v27;
          if (i == 2)
          {
            v49 = v27[1];
            v50 = v49;
            v46 = v27[1];
          }

          else
          {
            if (i == 3)
            {
              v46 = v27[2];
              v49 = v27[1];
            }

            else
            {
              v49 = v45;
              v46 = *v27;
            }

            v50 = v46;
          }

          v51 = v46;
          i += 4;
          v30 = &v47;
          v27 = &v48;
          v22 = v28;
LABEL_14:
          v31 = *v27;
          v27 += 4;
          v32 = vrev16q_s8(v31);
          v33 = vsraq_n_u32(vshlq_n_s32(v32, 0x10uLL), v32, 0x10uLL);
          v34 = vcvtq_f32_u32((*&vshrq_n_u32(v33, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
          v35 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v33, 0xAuLL), v19));
          v36 = vcvtq_f32_u32(vandq_s8(v33, v19));
          v37 = vaddq_f32(vmulq_f32(v10, v36), vaddq_f32(vmulq_f32(v15, v34), vmulq_f32(v13, v35)));
          v38 = vaddq_f32(vmulq_f32(v36, v18), vaddq_f32(vmulq_f32(v14, v34), vmulq_f32(v12, v35)));
          v39 = vaddq_f32(vmulq_f32(v9, v36), vaddq_f32(vmulq_f32(v34, v18), vmulq_f32(v11, v35)));
          v40 = vaddq_f32(v37, v20);
          v41 = vzip1q_s32(v38, v39);
          v42 = vzip2q_s32(v38, v39);
          v43 = vzip2q_s64(v7, v41);
          v7 = vzip2q_s64(v41, v42);
          v41.i64[1] = v42.i64[0];
          v8 = vcvtnq_s32_f32(v40);
          v44 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v41, v41), vaddq_f32(v43, v7)));
          *v8.f32 = vqmovn_s32(v8);
          *v44.i8 = vqmovn_s32(v44);
          *v30 = veorq_s8(vzip1q_s16(v44, v8), v21);
          v28 = v30 + 1;
        }

        v7 = v47;
        if (i == 3)
        {
          *v22 = v47;
        }

        else
        {
          v22->i64[0] = v47.i64[0];
        }

LABEL_11:
        result = (result + v17);
        a3 = (a3 + a4);
        ++v16;
      }

      while (v16 != a6);
    }
  }

  return result;
}

unsigned __int16 *convertARGBToV216WithChromaFiltering<(PixelFormat)1647719521>(unsigned __int16 *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v55 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 != 1)
    {
      if (a7 == 9)
      {
        v9 = vdupq_n_s32(0xBC102157);
        v10 = vdupq_n_s32(0x3D4FCA56u);
        v11 = vdupq_n_s32(0xBDCDFCB5);
        v12 = vdupq_n_s32(0xBDA172BD);
        v13 = vdupq_n_s32(0x3F147BF9u);
        v14 = vdupq_n_s32(0xBCFA388C);
        v15 = vdupq_n_s32(0x3E6620F3u);
        if (a6 < 1)
        {
          return result;
        }
      }

      else
      {
        v9 = vdupq_n_s32(0xBC91B6CD);
        v10 = vdupq_n_s32(0x3DC7BB26u);
        v11 = vdupq_n_s32(0xBDBB932D);
        v12 = vdupq_n_s32(0xBD946899);
        v13 = vdupq_n_s32(0x3F008E12u);
        v14 = vdupq_n_s32(0xBD17308E);
        v15 = vdupq_n_s32(0x3E82F6C9u);
        if (a6 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v9 = vdupq_n_s32(0xBC245188);
    v10 = vdupq_n_s32(0x3D7CFE1Fu);
    v11 = vdupq_n_s32(0xBDCB76AF);
    v12 = vdupq_n_s32(0xBDACACA1);
    v13 = vdupq_n_s32(0x3F1CA196u);
    v14 = vdupq_n_s32(0xBCCD50FC);
    v15 = vdupq_n_s32(0x3E3A3D8Eu);
    if (a6 >= 1)
    {
LABEL_9:
      v16 = 0;
      v17 = a2;
      v18 = vdupq_n_s32(0x3DE000E0u);
      v19.i64[0] = 0xFFFF0000FFFFLL;
      v19.i64[1] = 0xFFFF0000FFFFLL;
      v20 = vdupq_n_s32(0xC6E00000);
      v21.i64[0] = 0x8000800080008000;
      v21.i64[1] = 0x8000800080008000;
      do
      {
        v22 = 0;
        v7.f32[0] = (bswap32(result[1]) >> 16);
        v8.f32[0] = (bswap32(result[3]) >> 16);
        *&v23 = (bswap32(result[2]) >> 16);
        v24 = vmulq_f32(v12, v23);
        v25 = vaddq_f32(vmulq_f32(v14, v7), v24);
        v24.f32[0] = v8.f32[0] * 0.10938;
        v7.f32[0] = v7.f32[0] * 0.10938;
        v8 = vmulq_f32(v9, v8);
        v7 = vdupq_lane_s64(vzip1q_s32(vaddq_f32(v25, v24), vaddq_f32(vaddq_f32(v7, vmulq_f32(v11, v23)), v8)).i64[0], 0);
        v26 = result;
        v27 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v29 = v27;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v22)
          {
            break;
          }

          v51 = *v26;
          if (i == 2)
          {
            v49 = *(v26 + 1);
            v26 += 4;
            v48 = v49;
LABEL_23:
            v52 = v48;
            goto LABEL_24;
          }

          if (i != 3)
          {
            v48 = *v26;
            goto LABEL_23;
          }

          v52 = *(v26 + 1);
          v26 += 8;
LABEL_24:
          v53 = *v26;
          v54 = *v26;
          i += 4;
          v29 = &v50;
          v26 = &v51;
          v22 = v27;
LABEL_14:
          v30 = *v26;
          v31 = *(v26 + 1);
          v26 += 16;
          v32 = vrev16q_s8(v30);
          v33 = vrev16q_s8(v31);
          v34 = vuzp1q_s32(v32, vrev64q_s32(v32));
          v35 = vuzp1q_s32(v33, vrev64q_s32(v33));
          v36 = vzip2q_s64(v34, v35);
          v34.i64[1] = v35.i64[0];
          v37 = vcvtq_f32_u32(vshrq_n_u32(v34, 0x10uLL));
          v38 = vcvtq_f32_u32(vandq_s8(v36, v19));
          v39 = vcvtq_f32_u32(vshrq_n_u32(v36, 0x10uLL));
          v40 = vaddq_f32(vmulq_f32(v10, v39), vaddq_f32(vmulq_f32(v15, v37), vmulq_f32(v13, v38)));
          v41 = vaddq_f32(vmulq_f32(v39, v18), vaddq_f32(vmulq_f32(v14, v37), vmulq_f32(v12, v38)));
          v42 = vaddq_f32(vmulq_f32(v9, v39), vaddq_f32(vmulq_f32(v37, v18), vmulq_f32(v11, v38)));
          v43 = vaddq_f32(v40, v20);
          v44 = vzip1q_s32(v41, v42);
          v45 = vzip2q_s32(v41, v42);
          v46 = vzip2q_s64(v7, v44);
          v7 = vzip2q_s64(v44, v45);
          v44.i64[1] = v45.i64[0];
          v8 = vcvtnq_s32_f32(v43);
          v47 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v44, v44), vaddq_f32(v46, v7)));
          *v8.f32 = vqmovn_s32(v8);
          *v47.i8 = vqmovn_s32(v47);
          *v29 = veorq_s8(vzip1q_s16(v47, v8), v21);
          v27 = v29 + 1;
        }

        v7 = v50;
        if (i == 3)
        {
          *v22 = v50;
        }

        else
        {
          v22->i64[0] = v50.i64[0];
        }

LABEL_11:
        result = (result + v17);
        a3 = (a3 + a4);
        ++v16;
      }

      while (v16 != a6);
    }
  }

  return result;
}

unsigned __int16 *convertARGBToV216WithChromaFiltering<(PixelFormat)1647719542>(unsigned __int16 *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v60 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 != 1)
    {
      if (a7 == 9)
      {
        v9 = vdupq_n_s32(0xBC287A7B);
        v10 = vdupq_n_s32(0x3D72E48Fu);
        v11 = vdupq_n_s32(0xBDF0C8F2);
        v12 = vdupq_n_s32(0xBDBCB8D2);
        v13 = vdupq_n_s32(0x3F2D9168u);
        v14 = vdupq_n_s32(0xBD123EDF);
        v15 = vdupq_n_s32(0x3E86809Du);
        if (a6 < 1)
        {
          return result;
        }
      }

      else
      {
        v9 = vdupq_n_s32(0xBCAA546F);
        v10 = vdupq_n_s32(0x3DE978D5u);
        v11 = vdupq_n_s32(0xBDDB4326);
        v12 = vdupq_n_s32(0xBDAD7AC3);
        v13 = vdupq_n_s32(0x3F1645A2u);
        v14 = vdupq_n_s32(0xBD30BAFD);
        v15 = vdupq_n_s32(0x3E991687u);
        if (a6 < 1)
        {
          return result;
        }
      }

      goto LABEL_9;
    }

    v9 = vdupq_n_s32(0xBC4013BE);
    v10 = vdupq_n_s32(0x3D93DD98u);
    v11 = vdupq_n_s32(0xBDEDD5CA);
    v12 = vdupq_n_s32(0xBDC9D834);
    v13 = vdupq_n_s32(0x3F371759u);
    v14 = vdupq_n_s32(0xBCF00037);
    v15 = vdupq_n_s32(0x3E59B3D0u);
    if (a6 >= 1)
    {
LABEL_9:
      v16 = 0;
      v17 = a2;
      v18 = vdupq_n_s32(0x3E02EC21u);
      v19.i64[0] = 0xFFFF0000FFFFLL;
      v19.i64[1] = 0xFFFF0000FFFFLL;
      v20.i64[0] = 0xF0000000FLL;
      v20.i64[1] = 0xF0000000FLL;
      v21 = vdupq_n_s32(0xC6E00000);
      v22.i64[0] = 0x8000800080008000;
      v22.i64[1] = 0x8000800080008000;
      do
      {
        v23 = 0;
        v7.f32[0] = ((bswap32(result[1]) >> 16) - 4096);
        v8.f32[0] = ((bswap32(result[3]) >> 16) - 4096);
        *&v24 = ((bswap32(result[2]) >> 16) - 4096);
        v25 = vmulq_f32(v12, v24);
        v26 = vaddq_f32(vmulq_f32(v14, v7), v25);
        v25.f32[0] = v8.f32[0] * 0.12785;
        v7.f32[0] = v7.f32[0] * 0.12785;
        v8 = vmulq_f32(v9, v8);
        v7 = vdupq_lane_s64(vzip1q_s32(vaddq_f32(v26, v25), vaddq_f32(vaddq_f32(v7, vmulq_f32(v11, v24)), v8)).i64[0], 0);
        v27 = result;
        v28 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v30 = v28;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v23)
          {
            break;
          }

          v56 = *v27;
          if (i == 2)
          {
            v54 = *(v27 + 1);
            v27 += 4;
            v53 = v54;
LABEL_23:
            v57 = v53;
            goto LABEL_24;
          }

          if (i != 3)
          {
            v53 = *v27;
            goto LABEL_23;
          }

          v57 = *(v27 + 1);
          v27 += 8;
LABEL_24:
          v58 = *v27;
          v59 = *v27;
          i += 4;
          v30 = &v55;
          v27 = &v56;
          v23 = v28;
LABEL_14:
          v31 = *v27;
          v32 = *(v27 + 1);
          v27 += 16;
          v33 = vrev16q_s8(v31);
          v34 = vrev16q_s8(v32);
          v35 = vuzp1q_s32(v33, vrev64q_s32(v33));
          v36 = vuzp1q_s32(v34, vrev64q_s32(v34));
          v37 = vzip2q_s64(v35, v36);
          v35.i64[1] = v36.i64[0];
          v38.i64[0] = 0xF0000000FLL;
          v38.i64[1] = 0xF0000000FLL;
          v39 = vsraq_n_u32(v38, v35, 0x10uLL);
          v40 = vaddq_s32(vandq_s8(v37, v19), v20);
          v36.i64[0] = 0xF0000000FLL;
          v36.i64[1] = 0xF0000000FLL;
          v41 = vsraq_n_u32(v36, v37, 0x10uLL);
          v42 = vcvtq_f32_s32(v39);
          v43 = vcvtq_f32_s32(v40);
          v44 = vcvtq_f32_s32(v41);
          v45 = vaddq_f32(vmulq_f32(v10, v44), vaddq_f32(vmulq_f32(v15, v42), vmulq_f32(v13, v43)));
          v46 = vaddq_f32(vmulq_f32(v44, v18), vaddq_f32(vmulq_f32(v14, v42), vmulq_f32(v12, v43)));
          v47 = vaddq_f32(vmulq_f32(v9, v44), vaddq_f32(vmulq_f32(v42, v18), vmulq_f32(v11, v43)));
          v48 = vaddq_f32(v45, v21);
          v49 = vzip1q_s32(v46, v47);
          v50 = vzip2q_s32(v46, v47);
          v51 = vzip2q_s64(v7, v49);
          v7 = vzip2q_s64(v49, v50);
          v49.i64[1] = v50.i64[0];
          v8 = vcvtnq_s32_f32(v48);
          v52 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v49, v49), vaddq_f32(v51, v7)));
          *v8.f32 = vqmovn_s32(v8);
          *v52.i8 = vqmovn_s32(v52);
          *v30 = veorq_s8(vzip1q_s16(v52, v8), v22);
          v28 = v30 + 1;
        }

        v7 = v55;
        if (i == 3)
        {
          *v23 = v55;
        }

        else
        {
          v23->i64[0] = v55.i64[0];
        }

LABEL_11:
        result = (result + v17);
        a3 = (a3 + a4);
        ++v16;
      }

      while (v16 != a6);
    }
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}