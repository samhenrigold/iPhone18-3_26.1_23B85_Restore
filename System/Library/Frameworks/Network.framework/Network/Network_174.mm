int64_t ZSTD_compressBlock_lazy_dictMatchState_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  v204 = v14;
  if (v14 >= 6)
  {
    v14 = 6;
  }

  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v17 = *a3;
  v16 = a3[1];
  v18 = *(a1 + 248);
  v19 = *(v18 + 24);
  v20 = *v18;
  v218 = *(v18 + 8);
  v212 = (v10 + v11);
  v201 = (v218 + v19);
  if (a4 - (v10 + v11) - (v218 + v19) + *v18)
  {
    v21 = a4;
  }

  else
  {
    v21 = (a4 + 1);
  }

  *(a1 + 300) = 0;
  v22 = *(a1 + 44);
  v23 = v9 - (v10 + v22);
  if ((v23 + 1) < 8)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 8;
  }

  if (v9 >= v10 + v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v25 + v22);
  if (v22 < v26)
  {
    v27 = *(a1 + 112);
    v28 = *(a1 + 56);
    v29 = *(a1 + 52);
    v30 = *(a1 + 96);
    v31 = 56 - v29;
    v32 = 24 - v29;
    v33 = a1 + 64;
    if (v204 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v34 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v35) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_25;
          }

          v34 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v35 = (v34 ^ v30) >> v31;
LABEL_25:
        v36 = v35 >> 8 << v15;
        _X3 = v27 + 4 * v36;
        __asm { PRFM            #0, [X3] }

        _X2 = v28 + v36;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v35;
        if (v26 == v22)
        {
          goto LABEL_46;
        }
      }
    }

    if (v204 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v45 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v46) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_34;
          }

          v45 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v46 = (v45 ^ v30) >> v31;
LABEL_34:
        v47 = v46 >> 8 << v15;
        _X3 = v27 + 4 * v47;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v28 + v47;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v46;
        if (v26 == v22)
        {
          goto LABEL_46;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v61 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v30) >> v31;
        v62 = v61 >> 8 << v15;
        _X0 = v27 + 4 * v62;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v62;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v61;
      }

      while (v26 != v22);
    }

    else if (v13 == 5)
    {
      do
      {
        v53 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v30) >> v31;
        v54 = v53 >> 8 << v15;
        _X0 = v27 + 4 * v54;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v54;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v53;
      }

      while (v26 != v22);
    }

    else
    {
      do
      {
        v69 = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
        v70 = v69 >> 8 << v15;
        _X0 = v27 + 4 * v70;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v70;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v69;
      }

      while (v26 != v22);
    }
  }

LABEL_46:
  if (v21 < v9)
  {
    v214 = v16;
    v77 = v8;
    v205 = v8 - 1;
    v206 = v8 - 3;
    v202 = v7 + 64;
    v215 = v11 + v218 - v20;
    v213 = &v5[a5 - 16];
    v220 = v8;
    v217 = v7;
    v216 = v11;
    v219 = v15;
    v210 = v8 - 7;
    v211 = v20;
    v203 = a2;
    v207 = v8 - 32;
    v208 = v9;
    v209 = v11 + v10 + 8;
    while (1)
    {
      v79 = v21 + 1;
      v80 = (v21 - v10 - v17 + 1);
      v81 = v218 + v80 - v215;
      if (v80 >= v11)
      {
        v81 = v10 + v80;
      }

      if ((v80 - v11) <= 0xFFFFFFFC && *v81 == *v79)
      {
        if (v80 >= v11)
        {
          v82 = v77;
        }

        else
        {
          v82 = v20;
        }

        v83 = ZSTD_count_2segments(v21 + 5, (v81 + 4), v77, v82, v212);
        v15 = v219;
        v77 = v220;
        v84 = v83 + 4;
      }

      else
      {
        v84 = 0;
      }

      *v221 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v7, v21, v77, v221);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v7, v21, v77, v221);
        }

        else
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v7, v21, v77, v221);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v7, v21, v77, v221);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v7, v21, v77, v221);
        }

        else
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v7, v21, v77, v221);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v7, v21, v77, v221);
      }

      else if (v15 == 5)
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v7, v21, v77, v221);
      }

      else
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v7, v21, v77, v221);
      }

      if (BestMatch_dictMatchState_6_6 <= v84)
      {
        v86 = v84;
      }

      else
      {
        v86 = BestMatch_dictMatchState_6_6;
      }

      LODWORD(v11) = v216;
      if (v86 < 4)
      {
        v78 = v21 - v5;
        v21 += ((v21 - v5) >> 8) + 1;
        v7 = v217;
        *(v217 + 300) = v78 > 0x7FF;
        v77 = v220;
        v15 = v219;
        v20 = v211;
        goto LABEL_49;
      }

      v77 = v220;
      if (BestMatch_dictMatchState_6_6 <= v84)
      {
        v87 = 1;
      }

      else
      {
        v87 = *v221;
      }

      if (BestMatch_dictMatchState_6_6 > v84)
      {
        v79 = v21;
      }

      v15 = v219;
      if (v21 < v9)
      {
        v88 = v21 + 13;
        while (1)
        {
          v89 = (v21 + 1);
          v90 = (v21 + 1 - v10 - v17);
          if (v90 >= v11)
          {
            v91 = (v10 + v90);
          }

          else
          {
            v91 = (v218 + v90 - v215);
          }

          if ((v90 - v11) > 0xFFFFFFFC || *v91 != *v89)
          {
            goto LABEL_140;
          }

          if (v90 >= v11)
          {
            v92 = v77;
          }

          else
          {
            v92 = v211;
          }

          v93 = v21 + 5;
          v94 = v91 + 1;
          v95 = &v21[v92 - (v91 + 1) + 5];
          if (v95 >= v77)
          {
            v95 = v77;
          }

          if (v95 - 7 <= v93)
          {
            v96 = (v91 + 1);
            v98 = v21 + 5;
          }

          else
          {
            if (*v94 != *v93)
            {
              v101 = __clz(__rbit64(*v93 ^ *v94)) >> 3;
              goto LABEL_115;
            }

            v96 = (v91 + 3);
            v97 = v88;
            while (1)
            {
              v98 = v97;
              if (v97 >= v95 - 7)
              {
                break;
              }

              v100 = *v96;
              v96 += 4;
              v99 = v100;
              v97 += 8;
              if (v100 != *v98)
              {
                v101 = v98 + (__clz(__rbit64(*v98 ^ v99)) >> 3) - v93;
                goto LABEL_115;
              }
            }
          }

          if (v98 < v95 - 3 && *v96 == *v98)
          {
            v96 += 2;
            v98 = (v98 + 4);
          }

          if (v98 < v95 - 1 && *v96 == *v98)
          {
            ++v96;
            v98 = (v98 + 2);
          }

          if (v98 < v95 && *v96 == *v98)
          {
            v98 = (v98 + 1);
          }

          v101 = v98 - v93;
LABEL_115:
          if (v94 + v101 != v92)
          {
            if (v101 > 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_140;
            }

            goto LABEL_138;
          }

          v102 = &v93[v101];
          if (v210 <= v102)
          {
            v109 = v212;
            v108 = v102;
          }

          else
          {
            if (*v212 != *v102)
            {
              v110 = __clz(__rbit64(*v102 ^ *v212)) >> 3;
              goto LABEL_137;
            }

            v103 = 0;
            v104 = &v21[v101];
            while (1)
            {
              v105 = &v104[v103 + 13];
              if (v105 >= v210)
              {
                break;
              }

              v106 = *(v209 + v103);
              v107 = *v105;
              v103 += 8;
              if (v106 != v107)
              {
                v108 = &v104[v103 + 5 + (__clz(__rbit64(v107 ^ v106)) >> 3)];
                goto LABEL_136;
              }
            }

            v109 = (v209 + v103);
            v108 = &v21[v101 + 13 + v103];
          }

          if (v108 < v206 && *v109 == *v108)
          {
            v109 = (v109 + 4);
            v108 += 4;
          }

          if (v108 < v205 && *v109 == *v108)
          {
            v109 = (v109 + 2);
            v108 += 2;
          }

          if (v108 < v77 && *v109 == *v108)
          {
            ++v108;
          }

LABEL_136:
          v110 = v108 - v102;
LABEL_137:
          v101 += v110;
          if (v101 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_140;
          }

LABEL_138:
          v111 = v101 + 4;
          if (3 * v111 > (__clz(v87) + 3 * v86 - 30))
          {
            v79 = v21 + 1;
            v87 = 1;
            v86 = v111;
          }

LABEL_140:
          *v221 = 999999999;
          if (v13 == 6)
          {
            if (v15 == 6)
            {
              BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v217, v21 + 1, v77, v221);
            }

            else if (v15 == 5)
            {
              BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v217, v21 + 1, v77, v221);
            }

            else
            {
              BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v217, v21 + 1, v77, v221);
            }
          }

          else if (v13 == 5)
          {
            if (v15 == 6)
            {
              BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v217, v21 + 1, v77, v221);
            }

            else if (v15 == 5)
            {
              BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v217, v21 + 1, v77, v221);
            }

            else
            {
              BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v217, v21 + 1, v77, v221);
            }
          }

          else if (v15 == 6)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v217, v21 + 1, v77, v221);
          }

          else if (v15 == 5)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v217, v21 + 1, v77, v221);
          }

          else
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v217, v21 + 1, v77, v221);
          }

          LODWORD(v11) = v216;
          if (BestMatch_dictMatchState_6_5 < 4 || (v113 = v221[0], (__clz(v221[0]) + 4 * BestMatch_dictMatchState_6_5 - 31) <= (__clz(v87) + 4 * v86 - 27)))
          {
            v89 = v79;
            v113 = v87;
            BestMatch_dictMatchState_6_5 = v86;
            v77 = v220;
            v15 = v219;
            if (v87 > 3)
            {
              goto LABEL_161;
            }

LABEL_173:
            v116 = v202;
            v118 = v203;
            v7 = v217;
            v119 = v204;
            v20 = v211;
            goto LABEL_178;
          }

          ++v88;
          ++v21;
          v86 = BestMatch_dictMatchState_6_5;
          v87 = *v221;
          v79 = v89;
          v77 = v220;
          v15 = v219;
          if (v89 == v213)
          {
            if (*v221 <= 3uLL)
            {
              goto LABEL_173;
            }

            goto LABEL_161;
          }
        }
      }

      v89 = v79;
      v113 = v87;
      BestMatch_dictMatchState_6_5 = v86;
      if (v87 <= 3)
      {
        goto LABEL_173;
      }

LABEL_161:
      v114 = v89 - (v113 + v10) + 3;
      v20 = v211;
      v115 = v212;
      v116 = v202;
      if (v11 > v114)
      {
        v115 = v201;
      }

      v117 = v218 - v215;
      if (v11 <= v89 - (v113 + v10) + 3)
      {
        v117 = v10;
      }

      v118 = v203;
      v7 = v217;
      v119 = v204;
      if (v89 > v5 && v117 + v114 > v115)
      {
        v120 = (v117 + v114 - 1);
        v121 = v89 - 1;
        while (*v121 == *v120)
        {
          ++BestMatch_dictMatchState_6_5;
          v122 = v121 - 1;
          if (v121 > v5)
          {
            --v121;
            if (v120-- > v115)
            {
              continue;
            }
          }

          v89 = v122 + 1;
          goto LABEL_177;
        }

        v89 = v121 + 1;
      }

LABEL_177:
      v214 = v17;
      v17 = v113 - 3;
LABEL_178:
      v124 = v89 - v5;
      v125 = *(v118 + 24);
      if (v89 > v207)
      {
        break;
      }

      *v125 = *v5;
      v127 = *(v118 + 24);
      if (v124 > 0x10)
      {
        *(v127 + 16) = *(v5 + 1);
        if (v124 >= 33)
        {
          v128 = v127 + v124;
          v129 = (v127 + 32);
          v130 = (v5 + 48);
          do
          {
            *v129 = *(v130 - 1);
            v131 = *v130;
            v130 += 2;
            v129[1] = v131;
            v129 += 2;
          }

          while (v129 < v128);
        }

        goto LABEL_209;
      }

      *(v118 + 24) = v127 + v124;
      v132 = *(v118 + 8);
LABEL_211:
      *(v132 + 4) = v124;
      *v132 = v113;
      if (BestMatch_dictMatchState_6_5 - 3 >= 0x10000)
      {
        v150 = (v132 - *v118) >> 3;
        *(v118 + 72) = 2;
        *(v118 + 76) = v150;
      }

      *(v132 + 6) = BestMatch_dictMatchState_6_5 - 3;
      v151 = v132 + 8;
      *(v118 + 8) = v132 + 8;
      if (*(v7 + 300))
      {
        v152 = *(v7 + 44);
        v153 = v208 - (v10 + v152);
        if ((v153 + 1) < 8)
        {
          v154 = v153 + 1;
        }

        else
        {
          v154 = 8;
        }

        if (v208 >= v10 + v152)
        {
          v155 = v154;
        }

        else
        {
          v155 = 0;
        }

        v156 = (v155 + v152);
        if (v152 < v156)
        {
          v157 = *(v7 + 112);
          v158 = *(v7 + 56);
          v159 = *(v7 + 52);
          v160 = *(v7 + 96);
          v161 = 56 - v159;
          v162 = 24 - v159;
          do
          {
            if (v13 == 5)
            {
              v165 = 0xCF1BBCDCBB000000 * *(v10 + v152);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v166) = ((-1640531535 * *(v10 + v152)) ^ v160) >> v162;
                goto LABEL_230;
              }

              v165 = 0xCF1BBCDCBF9B0000 * *(v10 + v152);
            }

            v166 = (v165 ^ v160) >> v161;
LABEL_230:
            v167 = v166 >> 8 << v15;
            _X1 = v157 + 4 * v167;
            __asm { PRFM            #0, [X1] }

            if (v119 <= 4)
            {
              _X17 = v158 + v167;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v158 + v167;
              __asm { PRFM            #0, [X17] }

              if (v119 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v116 + 4 * (v152++ & 7)) = v166;
          }

          while (v156 != v152);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v89[BestMatch_dictMatchState_6_5];
      v9 = v208;
      if (v5 > v208)
      {
        v21 = v5;
        goto LABEL_49;
      }

      v174 = v17;
      v175 = v214;
      while (1)
      {
        v17 = v175;
        v175 = v174;
        v176 = (v5 - v10 - v17);
        v177 = v176 >= v11 ? v10 : v218 - v215;
        if ((v176 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v178 = v177 + v176;
        if (*(v177 + v176) != *v5)
        {
          break;
        }

        if (v176 >= v11)
        {
          v179 = v77;
        }

        else
        {
          v179 = v20;
        }

        v180 = (v5 + 4);
        v181 = (v178 + 4);
        v182 = &v179[v5 - v178];
        if (v182 >= v77)
        {
          v182 = v77;
        }

        if (v182 - 7 <= v180)
        {
          v183 = v181;
          v185 = (v5 + 4);
        }

        else
        {
          if (*v181 != *v180)
          {
            v188 = __clz(__rbit64(*v180 ^ *v181)) >> 3;
            goto LABEL_266;
          }

          v183 = (v177 + v176 + 12);
          v184 = (v5 + 12);
          while (1)
          {
            v185 = v184;
            if (v184 >= (v182 - 7))
            {
              break;
            }

            v187 = *v183;
            v183 += 4;
            v186 = v187;
            v184 += 8;
            if (v187 != *v185)
            {
              v188 = &v185[__clz(__rbit64(*v185 ^ v186)) >> 3] - v180;
              goto LABEL_266;
            }
          }
        }

        if (v185 < v182 - 3 && *v183 == *v185)
        {
          v183 += 2;
          v185 += 4;
        }

        if (v185 < v182 - 1 && *v183 == *v185)
        {
          ++v183;
          v185 += 2;
        }

        if (v185 < v182 && *v183 == *v185)
        {
          ++v185;
        }

        v188 = v185 - v180;
LABEL_266:
        if (v181 + v188 == v179)
        {
          v190 = &v180[v188];
          if (v210 > v190)
          {
            if (*v212 == *v190)
            {
              v191 = 0;
              v192 = &v5[v188];
              while (1)
              {
                v193 = &v192[v191 + 12];
                if (v193 >= v210)
                {
                  break;
                }

                v194 = *(v209 + v191);
                v195 = *v193;
                v191 += 8;
                if (v194 != v195)
                {
                  v196 = &v192[v191 + 4 + (__clz(__rbit64(v195 ^ v194)) >> 3)];
                  goto LABEL_289;
                }
              }

              v197 = (v209 + v191);
              v196 = &v5[v188 + 12 + v191];
LABEL_280:
              if (v196 < v206 && *v197 == *v196)
              {
                v197 = (v197 + 4);
                v196 += 4;
              }

              if (v196 < v205 && *v197 == *v196)
              {
                v197 = (v197 + 2);
                v196 += 2;
              }

              if (v196 < v77 && *v197 == *v196)
              {
                ++v196;
              }

LABEL_289:
              v198 = v196 - v190;
            }

            else
            {
              v198 = __clz(__rbit64(*v190 ^ *v212)) >> 3;
            }

            v188 += v198;
            if (v5 > v207)
            {
              goto LABEL_269;
            }

LABEL_268:
            **(v118 + 24) = *v5;
            v151 = *(v118 + 8);
            goto LABEL_269;
          }

          v197 = v212;
          v196 = v190;
          goto LABEL_280;
        }

        if (v5 <= v207)
        {
          goto LABEL_268;
        }

LABEL_269:
        *(v151 + 4) = 0;
        *v151 = 1;
        if (v188 + 1 >= 0x10000)
        {
          v189 = (v151 - *v118) >> 3;
          *(v118 + 72) = 2;
          *(v118 + 76) = v189;
        }

        *(v151 + 6) = v188 + 1;
        v151 += 8;
        v5 += v188 + 4;
        *(v118 + 8) = v151;
        v174 = v17;
        v214 = v175;
        v21 = v5;
        if (v5 > v208)
        {
          goto LABEL_49;
        }
      }

      v214 = v17;
      v17 = v174;
      v21 = v5;
LABEL_49:
      if (v21 >= v9)
      {
        v16 = v214;
        goto LABEL_295;
      }
    }

    if (v5 <= v207)
    {
      v126 = (v125 + v207 - v5);
      *v125 = *v5;
      if (v207 - v5 >= 17)
      {
        v133 = v125 + 1;
        v134 = (v5 + 32);
        do
        {
          *v133 = *(v134 - 1);
          v135 = *v134;
          v134 += 2;
          v133[1] = v135;
          v133 += 2;
        }

        while (v133 < v126);
        v5 = v207;
      }

      else
      {
        v5 = v207;
      }

      v125 = v126;
    }

    if (v5 < v89)
    {
      v136 = v89 - v5;
      if ((v89 - v5) < 8)
      {
        v138 = v125;
        goto LABEL_208;
      }

      if ((v125 - v5) < 0x20)
      {
        v138 = v125;
        goto LABEL_208;
      }

      if (v136 >= 0x20)
      {
        v137 = v136 & 0xFFFFFFFFFFFFFFE0;
        v139 = (v5 + 16);
        v140 = v125 + 1;
        v141 = v136 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v142 = *v139;
          *(v140 - 1) = *(v139 - 1);
          *v140 = v142;
          v139 += 2;
          v140 += 2;
          v141 -= 32;
        }

        while (v141);
        if (v136 == v137)
        {
          goto LABEL_209;
        }

        if ((v136 & 0x18) == 0)
        {
          v5 += v137;
          v138 = v125 + v137;
          do
          {
LABEL_208:
            v148 = *v5++;
            *v138++ = v148;
          }

          while (v5 != v89);
          goto LABEL_209;
        }
      }

      else
      {
        v137 = 0;
      }

      v143 = v136 & 0xFFFFFFFFFFFFFFF8;
      v138 = v125 + (v136 & 0xFFFFFFFFFFFFFFF8);
      v144 = v137 - (v136 & 0xFFFFFFFFFFFFFFF8);
      v145 = &v5[v137];
      v146 = (v125 + v137);
      do
      {
        v147 = *v145;
        v145 += 8;
        *v146++ = v147;
        v144 += 8;
      }

      while (v144);
      if (v136 != v143)
      {
        v5 += v143;
        goto LABEL_208;
      }
    }

LABEL_209:
    *(v118 + 24) += v124;
    v132 = *(v118 + 8);
    if (v124 >= 0x10000)
    {
      v149 = (v132 - *v118) >> 3;
      *(v118 + 72) = 1;
      *(v118 + 76) = v149;
    }

    goto LABEL_211;
  }

  v77 = v8;
LABEL_295:
  *a3 = v17;
  a3[1] = v16;
  return v77 - v5;
}

int64_t ZSTD_compressBlock_lazy_dedicatedDictSearch_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  v204 = v14;
  if (v14 >= 6)
  {
    v14 = 6;
  }

  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v17 = *a3;
  v16 = a3[1];
  v18 = *(a1 + 248);
  v19 = *(v18 + 24);
  v20 = *v18;
  v218 = *(v18 + 8);
  v212 = (v10 + v11);
  v201 = (v218 + v19);
  if (a4 - (v10 + v11) - (v218 + v19) + *v18)
  {
    v21 = a4;
  }

  else
  {
    v21 = (a4 + 1);
  }

  *(a1 + 300) = 0;
  v22 = *(a1 + 44);
  v23 = v9 - (v10 + v22);
  if ((v23 + 1) < 8)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 8;
  }

  if (v9 >= v10 + v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v25 + v22);
  if (v22 < v26)
  {
    v27 = *(a1 + 112);
    v28 = *(a1 + 56);
    v29 = *(a1 + 52);
    v30 = *(a1 + 96);
    v31 = 56 - v29;
    v32 = 24 - v29;
    v33 = a1 + 64;
    if (v204 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v34 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v35) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_25;
          }

          v34 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v35 = (v34 ^ v30) >> v31;
LABEL_25:
        v36 = v35 >> 8 << v15;
        _X3 = v27 + 4 * v36;
        __asm { PRFM            #0, [X3] }

        _X2 = v28 + v36;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v35;
        if (v26 == v22)
        {
          goto LABEL_46;
        }
      }
    }

    if (v204 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v45 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v46) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_34;
          }

          v45 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v46 = (v45 ^ v30) >> v31;
LABEL_34:
        v47 = v46 >> 8 << v15;
        _X3 = v27 + 4 * v47;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v28 + v47;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v46;
        if (v26 == v22)
        {
          goto LABEL_46;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v61 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v30) >> v31;
        v62 = v61 >> 8 << v15;
        _X0 = v27 + 4 * v62;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v62;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v61;
      }

      while (v26 != v22);
    }

    else if (v13 == 5)
    {
      do
      {
        v53 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v30) >> v31;
        v54 = v53 >> 8 << v15;
        _X0 = v27 + 4 * v54;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v54;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v53;
      }

      while (v26 != v22);
    }

    else
    {
      do
      {
        v69 = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
        v70 = v69 >> 8 << v15;
        _X0 = v27 + 4 * v70;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v70;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v69;
      }

      while (v26 != v22);
    }
  }

LABEL_46:
  if (v21 < v9)
  {
    v214 = v16;
    v77 = v8;
    v205 = v8 - 1;
    v206 = v8 - 3;
    v202 = v7 + 64;
    v215 = v11 + v218 - v20;
    v213 = &v5[a5 - 16];
    v220 = v8;
    v217 = v7;
    v216 = v11;
    v219 = v15;
    v210 = v8 - 7;
    v211 = v20;
    v203 = a2;
    v207 = v8 - 32;
    v208 = v9;
    v209 = v11 + v10 + 8;
    while (1)
    {
      v79 = v21 + 1;
      v80 = (v21 - v10 - v17 + 1);
      v81 = v218 + v80 - v215;
      if (v80 >= v11)
      {
        v81 = v10 + v80;
      }

      if ((v80 - v11) <= 0xFFFFFFFC && *v81 == *v79)
      {
        if (v80 >= v11)
        {
          v82 = v77;
        }

        else
        {
          v82 = v20;
        }

        v83 = ZSTD_count_2segments(v21 + 5, (v81 + 4), v77, v82, v212);
        v15 = v219;
        v77 = v220;
        v84 = v83 + 4;
      }

      else
      {
        v84 = 0;
      }

      *v221 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v7, v21, v77, v221);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v7, v21, v77, v221);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v7, v21, v77, v221);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v7, v21, v77, v221);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v7, v21, v77, v221);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v7, v21, v77, v221);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v7, v21, v77, v221);
      }

      else if (v15 == 5)
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v7, v21, v77, v221);
      }

      else
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v7, v21, v77, v221);
      }

      if (BestMatch_dedicatedDictSearch_6_6 <= v84)
      {
        v86 = v84;
      }

      else
      {
        v86 = BestMatch_dedicatedDictSearch_6_6;
      }

      LODWORD(v11) = v216;
      if (v86 < 4)
      {
        v78 = v21 - v5;
        v21 += ((v21 - v5) >> 8) + 1;
        v7 = v217;
        *(v217 + 300) = v78 > 0x7FF;
        v77 = v220;
        v15 = v219;
        v20 = v211;
        goto LABEL_49;
      }

      v77 = v220;
      if (BestMatch_dedicatedDictSearch_6_6 <= v84)
      {
        v87 = 1;
      }

      else
      {
        v87 = *v221;
      }

      if (BestMatch_dedicatedDictSearch_6_6 > v84)
      {
        v79 = v21;
      }

      v15 = v219;
      if (v21 < v9)
      {
        v88 = v21 + 13;
        while (1)
        {
          v89 = (v21 + 1);
          v90 = (v21 + 1 - v10 - v17);
          if (v90 >= v11)
          {
            v91 = (v10 + v90);
          }

          else
          {
            v91 = (v218 + v90 - v215);
          }

          if ((v90 - v11) > 0xFFFFFFFC || *v91 != *v89)
          {
            goto LABEL_140;
          }

          if (v90 >= v11)
          {
            v92 = v77;
          }

          else
          {
            v92 = v211;
          }

          v93 = v21 + 5;
          v94 = v91 + 1;
          v95 = &v21[v92 - (v91 + 1) + 5];
          if (v95 >= v77)
          {
            v95 = v77;
          }

          if (v95 - 7 <= v93)
          {
            v96 = (v91 + 1);
            v98 = v21 + 5;
          }

          else
          {
            if (*v94 != *v93)
            {
              v101 = __clz(__rbit64(*v93 ^ *v94)) >> 3;
              goto LABEL_115;
            }

            v96 = (v91 + 3);
            v97 = v88;
            while (1)
            {
              v98 = v97;
              if (v97 >= v95 - 7)
              {
                break;
              }

              v100 = *v96;
              v96 += 4;
              v99 = v100;
              v97 += 8;
              if (v100 != *v98)
              {
                v101 = v98 + (__clz(__rbit64(*v98 ^ v99)) >> 3) - v93;
                goto LABEL_115;
              }
            }
          }

          if (v98 < v95 - 3 && *v96 == *v98)
          {
            v96 += 2;
            v98 = (v98 + 4);
          }

          if (v98 < v95 - 1 && *v96 == *v98)
          {
            ++v96;
            v98 = (v98 + 2);
          }

          if (v98 < v95 && *v96 == *v98)
          {
            v98 = (v98 + 1);
          }

          v101 = v98 - v93;
LABEL_115:
          if (v94 + v101 != v92)
          {
            if (v101 > 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_140;
            }

            goto LABEL_138;
          }

          v102 = &v93[v101];
          if (v210 <= v102)
          {
            v109 = v212;
            v108 = v102;
          }

          else
          {
            if (*v212 != *v102)
            {
              v110 = __clz(__rbit64(*v102 ^ *v212)) >> 3;
              goto LABEL_137;
            }

            v103 = 0;
            v104 = &v21[v101];
            while (1)
            {
              v105 = &v104[v103 + 13];
              if (v105 >= v210)
              {
                break;
              }

              v106 = *(v209 + v103);
              v107 = *v105;
              v103 += 8;
              if (v106 != v107)
              {
                v108 = &v104[v103 + 5 + (__clz(__rbit64(v107 ^ v106)) >> 3)];
                goto LABEL_136;
              }
            }

            v109 = (v209 + v103);
            v108 = &v21[v101 + 13 + v103];
          }

          if (v108 < v206 && *v109 == *v108)
          {
            v109 = (v109 + 4);
            v108 += 4;
          }

          if (v108 < v205 && *v109 == *v108)
          {
            v109 = (v109 + 2);
            v108 += 2;
          }

          if (v108 < v77 && *v109 == *v108)
          {
            ++v108;
          }

LABEL_136:
          v110 = v108 - v102;
LABEL_137:
          v101 += v110;
          if (v101 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_140;
          }

LABEL_138:
          v111 = v101 + 4;
          if (3 * v111 > (__clz(v87) + 3 * v86 - 30))
          {
            v79 = v21 + 1;
            v87 = 1;
            v86 = v111;
          }

LABEL_140:
          *v221 = 999999999;
          if (v13 == 6)
          {
            if (v15 == 6)
            {
              BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v217, v21 + 1, v77, v221);
            }

            else if (v15 == 5)
            {
              BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v217, v21 + 1, v77, v221);
            }

            else
            {
              BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v217, v21 + 1, v77, v221);
            }
          }

          else if (v13 == 5)
          {
            if (v15 == 6)
            {
              BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v217, v21 + 1, v77, v221);
            }

            else if (v15 == 5)
            {
              BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v217, v21 + 1, v77, v221);
            }

            else
            {
              BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v217, v21 + 1, v77, v221);
            }
          }

          else if (v15 == 6)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v217, v21 + 1, v77, v221);
          }

          else if (v15 == 5)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v217, v21 + 1, v77, v221);
          }

          else
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v217, v21 + 1, v77, v221);
          }

          LODWORD(v11) = v216;
          if (BestMatch_dedicatedDictSearch_6_5 < 4 || (v113 = v221[0], (__clz(v221[0]) + 4 * BestMatch_dedicatedDictSearch_6_5 - 31) <= (__clz(v87) + 4 * v86 - 27)))
          {
            v89 = v79;
            v113 = v87;
            BestMatch_dedicatedDictSearch_6_5 = v86;
            v77 = v220;
            v15 = v219;
            if (v87 > 3)
            {
              goto LABEL_161;
            }

LABEL_173:
            v116 = v202;
            v118 = v203;
            v7 = v217;
            v119 = v204;
            v20 = v211;
            goto LABEL_178;
          }

          ++v88;
          ++v21;
          v86 = BestMatch_dedicatedDictSearch_6_5;
          v87 = *v221;
          v79 = v89;
          v77 = v220;
          v15 = v219;
          if (v89 == v213)
          {
            if (*v221 <= 3uLL)
            {
              goto LABEL_173;
            }

            goto LABEL_161;
          }
        }
      }

      v89 = v79;
      v113 = v87;
      BestMatch_dedicatedDictSearch_6_5 = v86;
      if (v87 <= 3)
      {
        goto LABEL_173;
      }

LABEL_161:
      v114 = v89 - (v113 + v10) + 3;
      v20 = v211;
      v115 = v212;
      v116 = v202;
      if (v11 > v114)
      {
        v115 = v201;
      }

      v117 = v218 - v215;
      if (v11 <= v89 - (v113 + v10) + 3)
      {
        v117 = v10;
      }

      v118 = v203;
      v7 = v217;
      v119 = v204;
      if (v89 > v5 && v117 + v114 > v115)
      {
        v120 = (v117 + v114 - 1);
        v121 = v89 - 1;
        while (*v121 == *v120)
        {
          ++BestMatch_dedicatedDictSearch_6_5;
          v122 = v121 - 1;
          if (v121 > v5)
          {
            --v121;
            if (v120-- > v115)
            {
              continue;
            }
          }

          v89 = v122 + 1;
          goto LABEL_177;
        }

        v89 = v121 + 1;
      }

LABEL_177:
      v214 = v17;
      v17 = v113 - 3;
LABEL_178:
      v124 = v89 - v5;
      v125 = *(v118 + 24);
      if (v89 > v207)
      {
        break;
      }

      *v125 = *v5;
      v127 = *(v118 + 24);
      if (v124 > 0x10)
      {
        *(v127 + 16) = *(v5 + 1);
        if (v124 >= 33)
        {
          v128 = v127 + v124;
          v129 = (v127 + 32);
          v130 = (v5 + 48);
          do
          {
            *v129 = *(v130 - 1);
            v131 = *v130;
            v130 += 2;
            v129[1] = v131;
            v129 += 2;
          }

          while (v129 < v128);
        }

        goto LABEL_209;
      }

      *(v118 + 24) = v127 + v124;
      v132 = *(v118 + 8);
LABEL_211:
      *(v132 + 4) = v124;
      *v132 = v113;
      if (BestMatch_dedicatedDictSearch_6_5 - 3 >= 0x10000)
      {
        v150 = (v132 - *v118) >> 3;
        *(v118 + 72) = 2;
        *(v118 + 76) = v150;
      }

      *(v132 + 6) = BestMatch_dedicatedDictSearch_6_5 - 3;
      v151 = v132 + 8;
      *(v118 + 8) = v132 + 8;
      if (*(v7 + 300))
      {
        v152 = *(v7 + 44);
        v153 = v208 - (v10 + v152);
        if ((v153 + 1) < 8)
        {
          v154 = v153 + 1;
        }

        else
        {
          v154 = 8;
        }

        if (v208 >= v10 + v152)
        {
          v155 = v154;
        }

        else
        {
          v155 = 0;
        }

        v156 = (v155 + v152);
        if (v152 < v156)
        {
          v157 = *(v7 + 112);
          v158 = *(v7 + 56);
          v159 = *(v7 + 52);
          v160 = *(v7 + 96);
          v161 = 56 - v159;
          v162 = 24 - v159;
          do
          {
            if (v13 == 5)
            {
              v165 = 0xCF1BBCDCBB000000 * *(v10 + v152);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v166) = ((-1640531535 * *(v10 + v152)) ^ v160) >> v162;
                goto LABEL_230;
              }

              v165 = 0xCF1BBCDCBF9B0000 * *(v10 + v152);
            }

            v166 = (v165 ^ v160) >> v161;
LABEL_230:
            v167 = v166 >> 8 << v15;
            _X1 = v157 + 4 * v167;
            __asm { PRFM            #0, [X1] }

            if (v119 <= 4)
            {
              _X17 = v158 + v167;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v158 + v167;
              __asm { PRFM            #0, [X17] }

              if (v119 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v116 + 4 * (v152++ & 7)) = v166;
          }

          while (v156 != v152);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v89[BestMatch_dedicatedDictSearch_6_5];
      v9 = v208;
      if (v5 > v208)
      {
        v21 = v5;
        goto LABEL_49;
      }

      v174 = v17;
      v175 = v214;
      while (1)
      {
        v17 = v175;
        v175 = v174;
        v176 = (v5 - v10 - v17);
        v177 = v176 >= v11 ? v10 : v218 - v215;
        if ((v176 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v178 = v177 + v176;
        if (*(v177 + v176) != *v5)
        {
          break;
        }

        if (v176 >= v11)
        {
          v179 = v77;
        }

        else
        {
          v179 = v20;
        }

        v180 = (v5 + 4);
        v181 = (v178 + 4);
        v182 = &v179[v5 - v178];
        if (v182 >= v77)
        {
          v182 = v77;
        }

        if (v182 - 7 <= v180)
        {
          v183 = v181;
          v185 = (v5 + 4);
        }

        else
        {
          if (*v181 != *v180)
          {
            v188 = __clz(__rbit64(*v180 ^ *v181)) >> 3;
            goto LABEL_266;
          }

          v183 = (v177 + v176 + 12);
          v184 = (v5 + 12);
          while (1)
          {
            v185 = v184;
            if (v184 >= (v182 - 7))
            {
              break;
            }

            v187 = *v183;
            v183 += 4;
            v186 = v187;
            v184 += 8;
            if (v187 != *v185)
            {
              v188 = &v185[__clz(__rbit64(*v185 ^ v186)) >> 3] - v180;
              goto LABEL_266;
            }
          }
        }

        if (v185 < v182 - 3 && *v183 == *v185)
        {
          v183 += 2;
          v185 += 4;
        }

        if (v185 < v182 - 1 && *v183 == *v185)
        {
          ++v183;
          v185 += 2;
        }

        if (v185 < v182 && *v183 == *v185)
        {
          ++v185;
        }

        v188 = v185 - v180;
LABEL_266:
        if (v181 + v188 == v179)
        {
          v190 = &v180[v188];
          if (v210 > v190)
          {
            if (*v212 == *v190)
            {
              v191 = 0;
              v192 = &v5[v188];
              while (1)
              {
                v193 = &v192[v191 + 12];
                if (v193 >= v210)
                {
                  break;
                }

                v194 = *(v209 + v191);
                v195 = *v193;
                v191 += 8;
                if (v194 != v195)
                {
                  v196 = &v192[v191 + 4 + (__clz(__rbit64(v195 ^ v194)) >> 3)];
                  goto LABEL_289;
                }
              }

              v197 = (v209 + v191);
              v196 = &v5[v188 + 12 + v191];
LABEL_280:
              if (v196 < v206 && *v197 == *v196)
              {
                v197 = (v197 + 4);
                v196 += 4;
              }

              if (v196 < v205 && *v197 == *v196)
              {
                v197 = (v197 + 2);
                v196 += 2;
              }

              if (v196 < v77 && *v197 == *v196)
              {
                ++v196;
              }

LABEL_289:
              v198 = v196 - v190;
            }

            else
            {
              v198 = __clz(__rbit64(*v190 ^ *v212)) >> 3;
            }

            v188 += v198;
            if (v5 > v207)
            {
              goto LABEL_269;
            }

LABEL_268:
            **(v118 + 24) = *v5;
            v151 = *(v118 + 8);
            goto LABEL_269;
          }

          v197 = v212;
          v196 = v190;
          goto LABEL_280;
        }

        if (v5 <= v207)
        {
          goto LABEL_268;
        }

LABEL_269:
        *(v151 + 4) = 0;
        *v151 = 1;
        if (v188 + 1 >= 0x10000)
        {
          v189 = (v151 - *v118) >> 3;
          *(v118 + 72) = 2;
          *(v118 + 76) = v189;
        }

        *(v151 + 6) = v188 + 1;
        v151 += 8;
        v5 += v188 + 4;
        *(v118 + 8) = v151;
        v174 = v17;
        v214 = v175;
        v21 = v5;
        if (v5 > v208)
        {
          goto LABEL_49;
        }
      }

      v214 = v17;
      v17 = v174;
      v21 = v5;
LABEL_49:
      if (v21 >= v9)
      {
        v16 = v214;
        goto LABEL_295;
      }
    }

    if (v5 <= v207)
    {
      v126 = (v125 + v207 - v5);
      *v125 = *v5;
      if (v207 - v5 >= 17)
      {
        v133 = v125 + 1;
        v134 = (v5 + 32);
        do
        {
          *v133 = *(v134 - 1);
          v135 = *v134;
          v134 += 2;
          v133[1] = v135;
          v133 += 2;
        }

        while (v133 < v126);
        v5 = v207;
      }

      else
      {
        v5 = v207;
      }

      v125 = v126;
    }

    if (v5 < v89)
    {
      v136 = v89 - v5;
      if ((v89 - v5) < 8)
      {
        v138 = v125;
        goto LABEL_208;
      }

      if ((v125 - v5) < 0x20)
      {
        v138 = v125;
        goto LABEL_208;
      }

      if (v136 >= 0x20)
      {
        v137 = v136 & 0xFFFFFFFFFFFFFFE0;
        v139 = (v5 + 16);
        v140 = v125 + 1;
        v141 = v136 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v142 = *v139;
          *(v140 - 1) = *(v139 - 1);
          *v140 = v142;
          v139 += 2;
          v140 += 2;
          v141 -= 32;
        }

        while (v141);
        if (v136 == v137)
        {
          goto LABEL_209;
        }

        if ((v136 & 0x18) == 0)
        {
          v5 += v137;
          v138 = v125 + v137;
          do
          {
LABEL_208:
            v148 = *v5++;
            *v138++ = v148;
          }

          while (v5 != v89);
          goto LABEL_209;
        }
      }

      else
      {
        v137 = 0;
      }

      v143 = v136 & 0xFFFFFFFFFFFFFFF8;
      v138 = v125 + (v136 & 0xFFFFFFFFFFFFFFF8);
      v144 = v137 - (v136 & 0xFFFFFFFFFFFFFFF8);
      v145 = &v5[v137];
      v146 = (v125 + v137);
      do
      {
        v147 = *v145;
        v145 += 8;
        *v146++ = v147;
        v144 += 8;
      }

      while (v144);
      if (v136 != v143)
      {
        v5 += v143;
        goto LABEL_208;
      }
    }

LABEL_209:
    *(v118 + 24) += v124;
    v132 = *(v118 + 8);
    if (v124 >= 0x10000)
    {
      v149 = (v132 - *v118) >> 3;
      *(v118 + 72) = 1;
      *(v118 + 76) = v149;
    }

    goto LABEL_211;
  }

  v77 = v8;
LABEL_295:
  *a3 = v17;
  a3[1] = v16;
  return v77 - v5;
}

int64_t ZSTD_compressBlock_lazy2(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int16 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = (a4 + a5);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = *a3;
  v13 = a3[1];
  v108 = v8 + v9;
  if (a4 == v8 + v9)
  {
    v14 = (a4 + 1);
  }

  else
  {
    v14 = a4;
  }

  v15 = v14 - v8;
  v16 = 1 << *(a1 + 256);
  if (v15 - v9 > v16 && *(a1 + 40) == 0)
  {
    LODWORD(v9) = v15 - v16;
  }

  v18 = v15 - v9;
  if (v13 <= v15 - v9)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  if (v12 <= v18)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 300) = 0;
  v115 = (a4 + a5 - 8);
  if (v14 < v115)
  {
    v21 = a1;
    v104 = v15 - v9;
    v105 = v13;
    v106 = v12;
    v107 = a3;
    v22 = (a4 + a5);
    v23 = v7 - 7;
    v110 = v7 - 1;
    v111 = v7 - 3;
    v109 = (v7 - 16);
    v114 = (a4 + a5);
    v113 = v11;
    while (1)
    {
      v25 = 0;
      if (!v20 || *(v14 - v20 + 1) != *(v14 + 1))
      {
        goto LABEL_45;
      }

      v26 = v14 + 5;
      v27 = (v14 - v20 + 5);
      if (v23 <= v14 + 5)
      {
        break;
      }

      if (*v27 == *v26)
      {
        v28 = (v14 + 13);
        v27 = (v14 - v20 + 13);
        while (1)
        {
          v29 = v28;
          if (v28 >= v23)
          {
            goto LABEL_33;
          }

          v31 = *v27;
          v27 += 4;
          v30 = v31;
          v28 += 4;
          if (v31 != *v29)
          {
            v29 = (v29 + (__clz(__rbit64(*v29 ^ v30)) >> 3));
            goto LABEL_42;
          }
        }
      }

      v32 = __clz(__rbit64(*v26 ^ *v27)) >> 3;
LABEL_44:
      v25 = v32 + 4;
LABEL_45:
      v116 = 999999999;
      if (v11 == 6)
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_6(v21, v14, v22, &v116);
      }

      else if (v11 == 5)
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_5(v21, v14, v22, &v116);
      }

      else
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_4(v21, v14, v22, &v116);
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v34 = v25;
      }

      else
      {
        v34 = BestMatch_noDict_6;
      }

      if (v34 < 4)
      {
        v24 = v14 - v5;
        v14 = (v14 + ((v14 - v5) >> 8) + 1);
        *(v21 + 300) = v24 > 0x7FF;
        v22 = v114;
        v11 = v113;
        goto LABEL_23;
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v35 = 1;
      }

      else
      {
        v35 = v116;
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v36 = (v14 + 1);
      }

      else
      {
        v36 = v14;
      }

      v37 = v36;
      v38 = v35;
      BestMatch_noDict_5 = v34;
      v22 = v114;
      v11 = v113;
      if (v14 < v115)
      {
        do
        {
          v37 = (v14 + 1);
          if (!v35 || !v20 || *v37 != *(v37 - v20))
          {
            goto LABEL_87;
          }

          v40 = v14 + 5;
          v41 = (v14 - v20 + 5);
          if (v23 <= v14 + 5)
          {
            v43 = (v14 + 5);
          }

          else
          {
            if (*v41 != *v40)
            {
              v46 = __clz(__rbit64(*v40 ^ *v41)) >> 3;
LABEL_85:
              v47 = v46 + 4;
              if (3 * v47 > (3 * v34 + __clz(v35) - 30))
              {
                v36 = (v14 + 1);
                v35 = 1;
                v34 = v47;
              }

              goto LABEL_87;
            }

            v42 = (v14 + 13);
            v41 = (v14 - v20 + 13);
            while (1)
            {
              v43 = v42;
              if (v42 >= v23)
              {
                break;
              }

              v45 = *v41++;
              v44 = v45;
              v42 += 4;
              if (v45 != *v43)
              {
                v43 = (v43 + (__clz(__rbit64(*v43 ^ v44)) >> 3));
                goto LABEL_82;
              }
            }
          }

          if (v43 < v111 && *v41 == *v43)
          {
            v41 = (v41 + 4);
            v43 += 2;
          }

          if (v43 < v110 && *v41 == *v43)
          {
            v41 = (v41 + 2);
            ++v43;
          }

          if (v43 < v22 && *v41 == *v43)
          {
            v43 = (v43 + 1);
          }

LABEL_82:
          v46 = v43 - v40;
          if (v46 <= 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_85;
          }

LABEL_87:
          v116 = 999999999;
          if (v11 == 6)
          {
            BestMatch_noDict_5 = ZSTD_HcFindBestMatch_noDict_6(a1, (v14 + 1), v22, &v116);
          }

          else if (v11 == 5)
          {
            BestMatch_noDict_5 = ZSTD_HcFindBestMatch_noDict_5(a1, (v14 + 1), v22, &v116);
          }

          else
          {
            BestMatch_noDict_5 = ZSTD_HcFindBestMatch_noDict_4(a1, v14 + 1, v22, &v116);
          }

          v22 = v114;
          if (BestMatch_noDict_5 >= 4)
          {
            v38 = v116;
            if ((__clz(v116) + 4 * BestMatch_noDict_5 - 31) > (__clz(v35) + 4 * v34 - 27))
            {
              goto LABEL_62;
            }
          }

          v11 = v113;
          if (v37 >= v115)
          {
            v37 = v36;
            v38 = v35;
            BestMatch_noDict_5 = v34;
            break;
          }

          v37 = v14 + 1;
          if (v35 && v20 && *v37 == *(v37 - v20))
          {
            v48 = (v14 + 3);
            v49 = (v14 - v20 + 6);
            if (v23 <= (v14 + 3))
            {
              v51 = v14 + 3;
LABEL_105:
              if (v51 < v111 && *v49 == *v51)
              {
                v51 += 2;
                ++v49;
              }

              if (v51 < v110 && *v49 == *v51)
              {
                ++v51;
                v49 = (v49 + 2);
              }

              if (v51 < v114 && *v49 == *v51)
              {
                v51 = (v51 + 1);
              }

LABEL_114:
              v54 = v51 - v48;
              if (v54 > 0xFFFFFFFFFFFFFFFBLL)
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (*v49 == *v48)
              {
                v50 = v14 + 7;
                v49 = (v14 - v20 + 14);
                while (1)
                {
                  v51 = v50;
                  if (v50 >= v23)
                  {
                    goto LABEL_105;
                  }

                  v53 = *v49;
                  v49 += 2;
                  v52 = v53;
                  v50 += 4;
                  if (v53 != *v51)
                  {
                    v51 = (v51 + (__clz(__rbit64(*v51 ^ v52)) >> 3));
                    goto LABEL_114;
                  }
                }
              }

              v54 = __clz(__rbit64(*v48 ^ *v49)) >> 3;
            }

            v55 = v54 + 4;
            if ((__clz(v35) + 4 * v34 - 30) < 4 * v55)
            {
              v36 = v14 + 1;
              v35 = 1;
              v34 = v55;
            }
          }

LABEL_119:
          v116 = 999999999;
          if (v113 == 6)
          {
            BestMatch_noDict_5 = ZSTD_HcFindBestMatch_noDict_6(a1, v14 + 1, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          else if (v113 == 5)
          {
            BestMatch_noDict_5 = ZSTD_HcFindBestMatch_noDict_5(a1, v14 + 1, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          else
          {
            BestMatch_noDict_5 = ZSTD_HcFindBestMatch_noDict_4(a1, v14 + 2, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          v38 = v116;
          if ((__clz(v116) + 4 * BestMatch_noDict_5 - 31) <= (__clz(v35) + 4 * v34 - 24))
          {
LABEL_128:
            v37 = v36;
            v38 = v35;
            BestMatch_noDict_5 = v34;
            v22 = v114;
            v11 = v113;
            break;
          }

          v22 = v114;
LABEL_62:
          v11 = v113;
          v14 = v37;
          v34 = BestMatch_noDict_5;
          v35 = v38;
          v36 = v37;
        }

        while (v37 < v115);
      }

      if (v38 <= 3)
      {
        v21 = a1;
        v56 = v109;
      }

      else
      {
        v56 = v109;
        if (v37 <= v5 || v37 - v38 + 3 <= v108)
        {
          v58 = v37;
          v21 = a1;
        }

        else
        {
          v57 = 2 - v38;
          v58 = v37;
          v21 = a1;
          while (1)
          {
            v59 = *(v58 - 1);
            v58 = (v58 - 1);
            if (v59 != *(v37 + v57))
            {
              break;
            }

            ++BestMatch_noDict_5;
            if (v58 > v5)
            {
              v60 = v37 + v57;
              v37 = v58;
              if (v60 > v108)
              {
                continue;
              }
            }

            goto LABEL_141;
          }

          v58 = v37;
        }

LABEL_141:
        v19 = v20;
        v20 = (v38 - 3);
        v37 = v58;
      }

      v61 = v37 - v5;
      v62 = *(a2 + 24);
      if (v37 > v56)
      {
        if (v5 <= v56)
        {
          v63 = (v62 + v56 - v5);
          *v62 = *v5;
          if (v56 - v5 >= 17)
          {
            v64 = v62 + 1;
            v65 = (v5 + 16);
            do
            {
              *v64 = *(v65 - 1);
              v66 = *v65;
              v65 += 2;
              v64[1] = v66;
              v64 += 2;
            }

            while (v64 < v63);
          }

          v5 = v56;
          v62 = v63;
        }

        if (v5 >= v37)
        {
          goto LABEL_171;
        }

        v67 = v37 - v5;
        if ((v37 - v5) < 8)
        {
          v75 = v62;
          goto LABEL_170;
        }

        if ((v62 - v5) < 0x20)
        {
          v75 = v62;
          goto LABEL_170;
        }

        if (v67 >= 0x20)
        {
          v68 = v67 & 0xFFFFFFFFFFFFFFE0;
          v76 = (v5 + 8);
          v77 = v62 + 1;
          v78 = v67 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v79 = *v76;
            *(v77 - 1) = *(v76 - 1);
            *v77 = v79;
            v76 += 2;
            v77 += 2;
            v78 -= 32;
          }

          while (v78);
          if (v67 == v68)
          {
            goto LABEL_171;
          }

          if ((v67 & 0x18) == 0)
          {
            v5 = (v5 + v68);
            v75 = v62 + v68;
            do
            {
LABEL_170:
              v85 = *v5;
              v5 = (v5 + 1);
              *v75++ = v85;
            }

            while (v5 != v37);
            goto LABEL_171;
          }
        }

        else
        {
          v68 = 0;
        }

        v80 = v67 & 0xFFFFFFFFFFFFFFF8;
        v75 = v62 + (v67 & 0xFFFFFFFFFFFFFFF8);
        v81 = v68 - (v67 & 0xFFFFFFFFFFFFFFF8);
        v82 = (v5 + v68);
        v83 = (v62 + v68);
        do
        {
          v84 = *v82++;
          *v83++ = v84;
          v81 += 8;
        }

        while (v81);
        if (v67 != v80)
        {
          v5 = (v5 + v80);
          goto LABEL_170;
        }

LABEL_171:
        *(a2 + 24) += v61;
        v74 = *(a2 + 8);
        if (v61 >= 0x10000)
        {
          v86 = (v74 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v86;
        }

        goto LABEL_173;
      }

      *v62 = *v5;
      v69 = *(a2 + 24);
      if (v61 > 0x10)
      {
        *(v69 + 16) = *(v5 + 1);
        if (v61 >= 33)
        {
          v70 = v69 + v61;
          v71 = (v69 + 32);
          v72 = (v5 + 24);
          do
          {
            *v71 = *(v72 - 1);
            v73 = *v72;
            v72 += 2;
            v71[1] = v73;
            v71 += 2;
          }

          while (v71 < v70);
        }

        goto LABEL_171;
      }

      *(a2 + 24) = v69 + v61;
      v74 = *(a2 + 8);
LABEL_173:
      *(v74 + 4) = v61;
      *v74 = v38;
      if (BestMatch_noDict_5 - 3 >= 0x10000)
      {
        v87 = (v74 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v87;
      }

      *(v74 + 6) = BestMatch_noDict_5 - 3;
      v88 = v74 + 8;
      *(a2 + 8) = v74 + 8;
      if (*(v21 + 300))
      {
        *(v21 + 300) = 0;
      }

      v5 = (v37 + BestMatch_noDict_5);
      if (!v19 || v5 > v115)
      {
LABEL_207:
        v14 = v5;
        goto LABEL_23;
      }

      v89 = v20;
      v90 = v19;
      while (1)
      {
        v20 = v90;
        v90 = v89;
        if (*v5 != *(v5 - v20))
        {
          v19 = v20;
          v20 = v89;
          goto LABEL_207;
        }

        v91 = (v5 + 2);
        v92 = (v5 - v20 + 4);
        if (v23 <= (v5 + 2))
        {
          v95 = v5 + 2;
        }

        else
        {
          v93 = *v92;
          if (v93 != *v91)
          {
            v98 = __clz(__rbit64(*v91 ^ v93)) >> 3;
            if (v5 <= v56)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
          }

          v94 = v5 + 6;
          v92 = (v5 - v20 + 12);
          while (1)
          {
            v95 = v94;
            if (v94 >= v23)
            {
              break;
            }

            v97 = *v92;
            v92 += 4;
            v96 = v97;
            v94 += 4;
            if (v97 != *v95)
            {
              v95 = (v95 + (__clz(__rbit64(*v95 ^ v96)) >> 3));
              goto LABEL_197;
            }
          }
        }

        if (v95 < v111 && *v92 == *v95)
        {
          v92 += 2;
          v95 += 2;
        }

        if (v95 < v110 && *v92 == *v95)
        {
          ++v92;
          ++v95;
        }

        if (v95 < v22 && *v92 == *v95)
        {
          v95 = (v95 + 1);
        }

LABEL_197:
        v98 = v95 - v91;
        if (v5 <= v56)
        {
LABEL_198:
          **(a2 + 24) = *v5;
          v88 = *(a2 + 8);
        }

LABEL_199:
        *(v88 + 4) = 0;
        *v88 = 1;
        if (v98 + 1 >= 0x10000)
        {
          v99 = (v88 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v99;
        }

        *(v88 + 6) = v98 + 1;
        v88 += 8;
        *(a2 + 8) = v88;
        v5 = (v5 + v98 + 4);
        if (!v90)
        {
          break;
        }

        v89 = v20;
        v19 = v90;
        v14 = v5;
        if (v5 > v115)
        {
          goto LABEL_23;
        }
      }

      v19 = v90;
      v14 = v5;
LABEL_23:
      if (v14 >= v115)
      {
        v7 = v22;
        a3 = v107;
        v13 = v105;
        v12 = v106;
        v18 = v104;
        goto LABEL_210;
      }
    }

    v29 = (v14 + 5);
LABEL_33:
    if (v29 < v111 && *v27 == *v29)
    {
      v27 += 2;
      v29 += 2;
    }

    if (v29 < v110 && *v27 == *v29)
    {
      ++v27;
      ++v29;
    }

    if (v29 < v22 && *v27 == *v29)
    {
      v29 = (v29 + 1);
    }

LABEL_42:
    v32 = v29 - v26;
    goto LABEL_44;
  }

LABEL_210:
  if (v12 <= v18)
  {
    v100 = 0;
  }

  else
  {
    v100 = v12;
  }

  if (v13 <= v18)
  {
    v101 = 0;
  }

  else
  {
    v101 = v13;
  }

  if (v20)
  {
    v100 = v20;
    v102 = v12 > v18;
  }

  else
  {
    v102 = 0;
  }

  if (v102)
  {
    v101 = v12;
  }

  if (v19)
  {
    v101 = v19;
  }

  *a3 = v100;
  a3[1] = v101;
  return v7 - v5;
}

int64_t ZSTD_compressBlock_lazy2_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v10 = 4;
  }

  v138 = v10;
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a1 + 248);
  v15 = *v13;
  v14 = *(v13 + 8);
  v132 = (v8 + v9);
  v125 = (v14 + *(v13 + 24));
  if (v5 - (v8 + v9) - v125 + *v13)
  {
    v16 = v5;
  }

  else
  {
    v16 = (v5 + 1);
  }

  *(a1 + 300) = 0;
  v139 = v7;
  if (v16 < v7)
  {
    v18 = a1;
    v124 = a3;
    v127 = v6 - 1;
    v128 = v6 - 3;
    v129 = v9 + v8 + 8;
    v130 = v6 - 7;
    v135 = v9 + v14 - v15;
    v126 = v14 - v135;
    v136 = v14;
    v137 = v9;
    v131 = v15;
    while (1)
    {
      v20 = v16 + 1;
      v21 = (v16 - v8 - v12 + 1);
      v22 = v14 + v21 - v135;
      if (v21 >= v9)
      {
        v22 = v8 + v21;
      }

      v133 = v11;
      if ((v21 - v9) <= 0xFFFFFFFC && *v22 == *v20)
      {
        if (v21 >= v9)
        {
          v23 = v6;
        }

        else
        {
          v23 = v15;
        }

        v24 = ZSTD_count_2segments(v16 + 5, (v22 + 4), v6, v23, v132) + 4;
      }

      else
      {
        v24 = 0;
      }

      v140 = 999999999;
      if (v138 == 6)
      {
        BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_6(v18, v16, v6, &v140);
      }

      else if (v138 == 5)
      {
        BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_5(v18, v16, v6, &v140);
      }

      else
      {
        BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_4(v18, v16, v6, &v140);
      }

      if (BestMatch_dictMatchState_6 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = BestMatch_dictMatchState_6;
      }

      LODWORD(v9) = v137;
      if (v26 < 4)
      {
        v19 = v16 - v5;
        v16 += ((v16 - v5) >> 8) + 1;
        *(v18 + 300) = v19 > 0x7FF;
        v14 = v136;
        v15 = v131;
LABEL_11:
        v11 = v133;
        goto LABEL_12;
      }

      if (BestMatch_dictMatchState_6 <= v24)
      {
        v27 = 1;
      }

      else
      {
        v27 = v140;
      }

      if (BestMatch_dictMatchState_6 > v24)
      {
        v20 = v16;
      }

      v28 = v20;
      v29 = v27;
      v30 = v26;
      if (v16 >= v139)
      {
LABEL_37:
        if (v29 <= 3)
        {
          goto LABEL_131;
        }

        goto LABEL_38;
      }

      while (1)
      {
        v28 = (v16 + 1);
        v42 = (v16 + 1 - v8 - v12);
        if (v42 >= v9)
        {
          v43 = (v8 + v42);
        }

        else
        {
          v43 = (v136 + v42 - v135);
        }

        if ((v42 - v9) > 0xFFFFFFFC || *v43 != *v28)
        {
          v54 = v138;
          goto LABEL_66;
        }

        if (v42 >= v9)
        {
          v44 = v6;
        }

        else
        {
          v44 = v131;
        }

        v45 = v16 + 5;
        v46 = v43 + 1;
        v47 = &v16[v44 - (v43 + 1) + 5];
        if (v47 >= v6)
        {
          v47 = v6;
        }

        if (v47 - 7 <= v45)
        {
          v48 = (v43 + 1);
          v50 = v16 + 5;
        }

        else
        {
          if (*v46 != *v45)
          {
            v53 = __clz(__rbit64(*v45 ^ *v46)) >> 3;
            goto LABEL_105;
          }

          v48 = (v43 + 3);
          v49 = (v16 + 13);
          while (1)
          {
            v50 = v49;
            if (v49 >= v47 - 7)
            {
              break;
            }

            v52 = *v48;
            v48 += 4;
            v51 = v52;
            v49 += 8;
            if (v52 != *v50)
            {
              v53 = v50 + (__clz(__rbit64(*v50 ^ v51)) >> 3) - v45;
              goto LABEL_105;
            }
          }
        }

        if (v50 < v47 - 3 && *v48 == *v50)
        {
          v48 += 2;
          v50 = (v50 + 4);
        }

        if (v50 < v47 - 1 && *v48 == *v50)
        {
          ++v48;
          v50 = (v50 + 2);
        }

        if (v50 < v47 && *v48 == *v50)
        {
          v50 = (v50 + 1);
        }

        v53 = v50 - v45;
LABEL_105:
        if (v46 + v53 == v44)
        {
          v60 = &v45[v53];
          if (v130 > v60)
          {
            if (*v132 == *v60)
            {
              v61 = 0;
              v62 = &v16[v53];
              while (1)
              {
                v63 = &v62[v61 + 13];
                if (v63 >= v130)
                {
                  break;
                }

                v64 = *(v129 + v61);
                v65 = *v63;
                v61 += 8;
                if (v64 != v65)
                {
                  v66 = &v62[v61 + 5 + (__clz(__rbit64(v65 ^ v64)) >> 3)] - v60;
                  v54 = v138;
                  goto LABEL_127;
                }
              }

              v67 = (v129 + v61);
              v68 = &v16[v53 + 13 + v61];
LABEL_117:
              if (v68 < v128 && *v67 == *v68)
              {
                v67 = (v67 + 4);
                v68 += 4;
              }

              if (v68 < v127 && *v67 == *v68)
              {
                v67 = (v67 + 2);
                v68 += 2;
              }

              if (v68 < v6 && *v67 == *v68)
              {
                ++v68;
              }

              v54 = v138;
              v66 = v68 - v60;
            }

            else
            {
              v66 = __clz(__rbit64(*v60 ^ *v132)) >> 3;
              v54 = v138;
            }

LABEL_127:
            v53 += v66;
            if (v53 > 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_66;
            }

            goto LABEL_128;
          }

          v67 = v132;
          v68 = v60;
          goto LABEL_117;
        }

        v54 = v138;
        if (v53 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_66;
        }

LABEL_128:
        v69 = v53 + 4;
        if (3 * v69 > (__clz(v27) + 3 * v26 - 30))
        {
          v20 = v16 + 1;
          v27 = 1;
          v26 = v69;
        }

LABEL_66:
        v140 = 999999999;
        if (v54 == 6)
        {
          v30 = ZSTD_HcFindBestMatch_dictMatchState_6(a1, v16 + 1, v6, &v140);
        }

        else
        {
          v30 = v54 == 5 ? ZSTD_HcFindBestMatch_dictMatchState_5(a1, v16 + 1, v6, &v140) : ZSTD_HcFindBestMatch_dictMatchState_4(a1, v16 + 1, v6, &v140);
        }

        LODWORD(v9) = v137;
        if (v30 < 4 || (v29 = v140, (__clz(v140) + 4 * v30 - 31) <= (__clz(v27) + 4 * v26 - 27)))
        {
          if (v28 >= v139)
          {
            break;
          }

          v28 = (v16 + 2);
          v55 = (v16 + 2 - v8 - v12);
          v56 = v136 + v55 - v135;
          if (v55 >= v137)
          {
            v56 = v8 + v55;
          }

          if (v55 - v137 <= 0xFFFFFFFC && *v56 == *v28 && (v55 >= v137 ? (v57 = v6) : (v57 = v131), v58 = ZSTD_count_2segments(v16 + 6, (v56 + 4), v6, v57, v132), v58 <= 0xFFFFFFFFFFFFFFFBLL))
          {
            v59 = v138;
            if ((__clz(v27) + 4 * v26 - 30) < 4 * (v58 + 4))
            {
              v20 = v16 + 2;
              v27 = 1;
              v26 = v58 + 4;
            }
          }

          else
          {
            v59 = v138;
          }

          v140 = 999999999;
          if (v59 == 6)
          {
            v30 = ZSTD_HcFindBestMatch_dictMatchState_6(a1, v16 + 2, v6, &v140);
          }

          else
          {
            v30 = v59 == 5 ? ZSTD_HcFindBestMatch_dictMatchState_5(a1, v16 + 2, v6, &v140) : ZSTD_HcFindBestMatch_dictMatchState_4(a1, v16 + 2, v6, &v140);
          }

          LODWORD(v9) = v137;
          if (v30 < 4)
          {
            break;
          }

          v29 = v140;
          if ((__clz(v140) + 4 * v30 - 31) <= (__clz(v27) + 4 * v26 - 24))
          {
            break;
          }
        }

        v16 = v28;
        v26 = v30;
        v27 = v29;
        v20 = v28;
        if (v28 >= v139)
        {
          goto LABEL_37;
        }
      }

      v28 = v20;
      LODWORD(v29) = v27;
      v30 = v26;
      if (v27 <= 3)
      {
LABEL_131:
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v33 = v126;
        v35 = (v6 - 32);
        v39 = v129;
        goto LABEL_135;
      }

LABEL_38:
      v31 = v28 - (v29 + v8) + 3;
      v32 = v132;
      v33 = v126;
      if (v9 <= v31)
      {
        v34 = v8;
      }

      else
      {
        v32 = v125;
        v34 = v126;
      }

      v35 = (v6 - 32);
      if (v28 <= v5 || v34 + v31 <= v32)
      {
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v39 = v129;
      }

      else
      {
        v36 = (v34 + v31 - 1);
        v37 = v28 - 1;
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v39 = v129;
        while (*v37 == *v36)
        {
          ++v30;
          v40 = v37 - 1;
          if (v37 > v5)
          {
            --v37;
            if (v36-- > v32)
            {
              continue;
            }
          }

          v28 = v40 + 1;
          goto LABEL_134;
        }

        v28 = v37 + 1;
      }

LABEL_134:
      v133 = v12;
      v12 = (v29 - 3);
LABEL_135:
      v70 = v28 - v5;
      v71 = *(a2 + 24);
      if (v28 > v35)
      {
        if (v5 <= v35)
        {
          v72 = (v71 + v35 - v5);
          *v71 = *v5;
          if (v35 - v5 >= 17)
          {
            v73 = v71 + 1;
            v74 = (v5 + 32);
            do
            {
              *v73 = *(v74 - 1);
              v75 = *v74;
              v74 += 2;
              v73[1] = v75;
              v73 += 2;
            }

            while (v73 < v72);
          }

          v5 = v35;
          v71 = v72;
        }

        if (v5 >= v28)
        {
          goto LABEL_164;
        }

        v76 = v28 - v5;
        if ((v28 - v5) < 8)
        {
          v84 = v71;
        }

        else if ((v71 - v5) < 0x20)
        {
          v84 = v71;
        }

        else
        {
          if (v76 < 0x20)
          {
            v77 = 0;
LABEL_158:
            v89 = v76 & 0xFFFFFFFFFFFFFFF8;
            v84 = v71 + (v76 & 0xFFFFFFFFFFFFFFF8);
            v90 = v77 - (v76 & 0xFFFFFFFFFFFFFFF8);
            v91 = &v5[v77];
            v92 = (v71 + v77);
            do
            {
              v93 = *v91;
              v91 += 8;
              *v92++ = v93;
              v90 += 8;
            }

            while (v90);
            if (v76 != v89)
            {
              v5 += v89;
              goto LABEL_163;
            }

LABEL_164:
            *(a2 + 24) += v70;
            v83 = *(a2 + 8);
            if (v70 >= 0x10000)
            {
              v95 = (v83 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v95;
            }

            goto LABEL_166;
          }

          v77 = v76 & 0xFFFFFFFFFFFFFFE0;
          v85 = (v5 + 16);
          v86 = v71 + 1;
          v87 = v76 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v88 = *v85;
            *(v86 - 1) = *(v85 - 1);
            *v86 = v88;
            v85 += 2;
            v86 += 2;
            v87 -= 32;
          }

          while (v87);
          if (v76 == v77)
          {
            goto LABEL_164;
          }

          if ((v76 & 0x18) != 0)
          {
            goto LABEL_158;
          }

          v5 += v77;
          v84 = v71 + v77;
        }

        do
        {
LABEL_163:
          v94 = *v5++;
          *v84++ = v94;
        }

        while (v5 != v28);
        goto LABEL_164;
      }

      *v71 = *v5;
      v78 = *(a2 + 24);
      if (v70 > 0x10)
      {
        *(v78 + 16) = *(v5 + 1);
        if (v70 >= 33)
        {
          v79 = v78 + v70;
          v80 = (v78 + 32);
          v81 = (v5 + 48);
          do
          {
            *v80 = *(v81 - 1);
            v82 = *v81;
            v81 += 2;
            v80[1] = v82;
            v80 += 2;
          }

          while (v80 < v79);
        }

        goto LABEL_164;
      }

      *(a2 + 24) = v78 + v70;
      v83 = *(a2 + 8);
LABEL_166:
      *(v83 + 4) = v70;
      *v83 = v29;
      if (v30 - 3 >= 0x10000)
      {
        v96 = (v83 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v96;
      }

      *(v83 + 6) = v30 - 3;
      v97 = v83 + 8;
      *(a2 + 8) = v83 + 8;
      if (*(v18 + 300))
      {
        *(v18 + 300) = 0;
      }

      v5 = &v28[v30];
      if (&v28[v30] > v139)
      {
        v16 = &v28[v30];
        goto LABEL_11;
      }

      v98 = v12;
      v99 = v133;
      while (2)
      {
        v12 = v99;
        v99 = v98;
        v100 = (v5 - v8 - v12);
        if (v100 >= v9)
        {
          v101 = v8;
        }

        else
        {
          v101 = v33;
        }

        if ((v100 - v9) <= 0xFFFFFFFC)
        {
          v102 = v101 + v100;
          if (*(v101 + v100) == *v5)
          {
            if (v100 >= v9)
            {
              v103 = v6;
            }

            else
            {
              v103 = v15;
            }

            v104 = (v5 + 4);
            v105 = (v102 + 4);
            v106 = &v103[v5 - v102];
            if (v106 >= v6)
            {
              v106 = v6;
            }

            if (v106 - 7 <= v104)
            {
              v107 = v105;
              v109 = (v5 + 4);
              goto LABEL_191;
            }

            if (*v105 == *v104)
            {
              v107 = (v101 + v100 + 12);
              v108 = (v5 + 12);
              while (1)
              {
                v109 = v108;
                if (v108 >= (v106 - 7))
                {
                  break;
                }

                v111 = *v107;
                v107 += 4;
                v110 = v111;
                v108 += 8;
                if (v111 != *v109)
                {
                  v112 = &v109[__clz(__rbit64(*v109 ^ v110)) >> 3] - v104;
                  goto LABEL_202;
                }
              }

LABEL_191:
              if (v109 < v106 - 3 && *v107 == *v109)
              {
                v107 += 2;
                v109 += 4;
              }

              if (v109 < v106 - 1 && *v107 == *v109)
              {
                ++v107;
                v109 += 2;
              }

              if (v109 < v106 && *v107 == *v109)
              {
                ++v109;
              }

              v112 = v109 - v104;
            }

            else
            {
              v112 = __clz(__rbit64(*v104 ^ *v105)) >> 3;
            }

LABEL_202:
            if (v105 + v112 != v103)
            {
              if (v5 <= v35)
              {
                goto LABEL_204;
              }

              goto LABEL_205;
            }

            v114 = &v104[v112];
            if (v38 > v114)
            {
              if (*v132 == *v114)
              {
                v115 = 0;
                v116 = &v5[v112];
                while (1)
                {
                  v117 = &v116[v115 + 12];
                  if (v117 >= v38)
                  {
                    break;
                  }

                  v118 = *(v39 + v115);
                  v119 = *v117;
                  v115 += 8;
                  if (v118 != v119)
                  {
                    v120 = &v116[v115 + 4 + (__clz(__rbit64(v119 ^ v118)) >> 3)];
                    goto LABEL_225;
                  }
                }

                v121 = (v39 + v115);
                v120 = &v5[v112 + 12 + v115];
LABEL_216:
                if (v120 < v128 && *v121 == *v120)
                {
                  v121 = (v121 + 4);
                  v120 += 4;
                }

                if (v120 < v127 && *v121 == *v120)
                {
                  v121 = (v121 + 2);
                  v120 += 2;
                }

                if (v120 < v6 && *v121 == *v120)
                {
                  ++v120;
                }

LABEL_225:
                v122 = v120 - v114;
              }

              else
              {
                v122 = __clz(__rbit64(*v114 ^ *v132)) >> 3;
              }

              v112 += v122;
              if (v5 <= v35)
              {
LABEL_204:
                **(a2 + 24) = *v5;
                v97 = *(a2 + 8);
              }

LABEL_205:
              *(v97 + 4) = 0;
              *v97 = 1;
              if (v112 + 1 >= 0x10000)
              {
                v113 = (v97 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v113;
              }

              *(v97 + 6) = v112 + 1;
              v97 += 8;
              v5 += v112 + 4;
              *(a2 + 8) = v97;
              v98 = v12;
              v11 = v99;
              v16 = v5;
              if (v5 > v139)
              {
                goto LABEL_12;
              }

              continue;
            }

            v121 = v132;
            v120 = v114;
            goto LABEL_216;
          }
        }

        break;
      }

      v11 = v12;
      v12 = v98;
      v16 = v5;
LABEL_12:
      if (v16 >= v139)
      {
        a3 = v124;
        break;
      }
    }
  }

  *a3 = v12;
  a3[1] = v11;
  return v6 - v5;
}

int64_t ZSTD_compressBlock_lazy2_dedicatedDictSearch(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v10 = 4;
  }

  v138 = v10;
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a1 + 248);
  v15 = *v13;
  v14 = *(v13 + 8);
  v132 = (v8 + v9);
  v125 = (v14 + *(v13 + 24));
  if (v5 - (v8 + v9) - v125 + *v13)
  {
    v16 = v5;
  }

  else
  {
    v16 = (v5 + 1);
  }

  *(a1 + 300) = 0;
  v139 = v7;
  if (v16 < v7)
  {
    v18 = a1;
    v124 = a3;
    v127 = v6 - 1;
    v128 = v6 - 3;
    v129 = v9 + v8 + 8;
    v130 = v6 - 7;
    v135 = v9 + v14 - v15;
    v126 = v14 - v135;
    v136 = v14;
    v137 = v9;
    v131 = v15;
    while (1)
    {
      v20 = v16 + 1;
      v21 = (v16 - v8 - v12 + 1);
      v22 = v14 + v21 - v135;
      if (v21 >= v9)
      {
        v22 = v8 + v21;
      }

      v133 = v11;
      if ((v21 - v9) <= 0xFFFFFFFC && *v22 == *v20)
      {
        if (v21 >= v9)
        {
          v23 = v6;
        }

        else
        {
          v23 = v15;
        }

        v24 = ZSTD_count_2segments(v16 + 5, (v22 + 4), v6, v23, v132) + 4;
      }

      else
      {
        v24 = 0;
      }

      v140 = 999999999;
      if (v138 == 6)
      {
        BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_6(v18, v16, v6, &v140);
      }

      else if (v138 == 5)
      {
        BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_5(v18, v16, v6, &v140);
      }

      else
      {
        BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_4(v18, v16, v6, &v140);
      }

      if (BestMatch_dedicatedDictSearch_6 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = BestMatch_dedicatedDictSearch_6;
      }

      LODWORD(v9) = v137;
      if (v26 < 4)
      {
        v19 = v16 - v5;
        v16 += ((v16 - v5) >> 8) + 1;
        *(v18 + 300) = v19 > 0x7FF;
        v14 = v136;
        v15 = v131;
LABEL_11:
        v11 = v133;
        goto LABEL_12;
      }

      if (BestMatch_dedicatedDictSearch_6 <= v24)
      {
        v27 = 1;
      }

      else
      {
        v27 = v140;
      }

      if (BestMatch_dedicatedDictSearch_6 > v24)
      {
        v20 = v16;
      }

      v28 = v20;
      v29 = v27;
      v30 = v26;
      if (v16 >= v139)
      {
LABEL_37:
        if (v29 <= 3)
        {
          goto LABEL_131;
        }

        goto LABEL_38;
      }

      while (1)
      {
        v28 = (v16 + 1);
        v42 = (v16 + 1 - v8 - v12);
        if (v42 >= v9)
        {
          v43 = (v8 + v42);
        }

        else
        {
          v43 = (v136 + v42 - v135);
        }

        if ((v42 - v9) > 0xFFFFFFFC || *v43 != *v28)
        {
          v54 = v138;
          goto LABEL_66;
        }

        if (v42 >= v9)
        {
          v44 = v6;
        }

        else
        {
          v44 = v131;
        }

        v45 = v16 + 5;
        v46 = v43 + 1;
        v47 = &v16[v44 - (v43 + 1) + 5];
        if (v47 >= v6)
        {
          v47 = v6;
        }

        if (v47 - 7 <= v45)
        {
          v48 = (v43 + 1);
          v50 = v16 + 5;
        }

        else
        {
          if (*v46 != *v45)
          {
            v53 = __clz(__rbit64(*v45 ^ *v46)) >> 3;
            goto LABEL_105;
          }

          v48 = (v43 + 3);
          v49 = (v16 + 13);
          while (1)
          {
            v50 = v49;
            if (v49 >= v47 - 7)
            {
              break;
            }

            v52 = *v48;
            v48 += 4;
            v51 = v52;
            v49 += 8;
            if (v52 != *v50)
            {
              v53 = v50 + (__clz(__rbit64(*v50 ^ v51)) >> 3) - v45;
              goto LABEL_105;
            }
          }
        }

        if (v50 < v47 - 3 && *v48 == *v50)
        {
          v48 += 2;
          v50 = (v50 + 4);
        }

        if (v50 < v47 - 1 && *v48 == *v50)
        {
          ++v48;
          v50 = (v50 + 2);
        }

        if (v50 < v47 && *v48 == *v50)
        {
          v50 = (v50 + 1);
        }

        v53 = v50 - v45;
LABEL_105:
        if (v46 + v53 == v44)
        {
          v60 = &v45[v53];
          if (v130 > v60)
          {
            if (*v132 == *v60)
            {
              v61 = 0;
              v62 = &v16[v53];
              while (1)
              {
                v63 = &v62[v61 + 13];
                if (v63 >= v130)
                {
                  break;
                }

                v64 = *(v129 + v61);
                v65 = *v63;
                v61 += 8;
                if (v64 != v65)
                {
                  v66 = &v62[v61 + 5 + (__clz(__rbit64(v65 ^ v64)) >> 3)] - v60;
                  v54 = v138;
                  goto LABEL_127;
                }
              }

              v67 = (v129 + v61);
              v68 = &v16[v53 + 13 + v61];
LABEL_117:
              if (v68 < v128 && *v67 == *v68)
              {
                v67 = (v67 + 4);
                v68 += 4;
              }

              if (v68 < v127 && *v67 == *v68)
              {
                v67 = (v67 + 2);
                v68 += 2;
              }

              if (v68 < v6 && *v67 == *v68)
              {
                ++v68;
              }

              v54 = v138;
              v66 = v68 - v60;
            }

            else
            {
              v66 = __clz(__rbit64(*v60 ^ *v132)) >> 3;
              v54 = v138;
            }

LABEL_127:
            v53 += v66;
            if (v53 > 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_66;
            }

            goto LABEL_128;
          }

          v67 = v132;
          v68 = v60;
          goto LABEL_117;
        }

        v54 = v138;
        if (v53 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_66;
        }

LABEL_128:
        v69 = v53 + 4;
        if (3 * v69 > (__clz(v27) + 3 * v26 - 30))
        {
          v20 = v16 + 1;
          v27 = 1;
          v26 = v69;
        }

LABEL_66:
        v140 = 999999999;
        if (v54 == 6)
        {
          v30 = ZSTD_HcFindBestMatch_dedicatedDictSearch_6(a1, v16 + 1, v6, &v140);
        }

        else
        {
          v30 = v54 == 5 ? ZSTD_HcFindBestMatch_dedicatedDictSearch_5(a1, v16 + 1, v6, &v140) : ZSTD_HcFindBestMatch_dedicatedDictSearch_4(a1, v16 + 1, v6, &v140);
        }

        LODWORD(v9) = v137;
        if (v30 < 4 || (v29 = v140, (__clz(v140) + 4 * v30 - 31) <= (__clz(v27) + 4 * v26 - 27)))
        {
          if (v28 >= v139)
          {
            break;
          }

          v28 = (v16 + 2);
          v55 = (v16 + 2 - v8 - v12);
          v56 = v136 + v55 - v135;
          if (v55 >= v137)
          {
            v56 = v8 + v55;
          }

          if (v55 - v137 <= 0xFFFFFFFC && *v56 == *v28 && (v55 >= v137 ? (v57 = v6) : (v57 = v131), v58 = ZSTD_count_2segments(v16 + 6, (v56 + 4), v6, v57, v132), v58 <= 0xFFFFFFFFFFFFFFFBLL))
          {
            v59 = v138;
            if ((__clz(v27) + 4 * v26 - 30) < 4 * (v58 + 4))
            {
              v20 = v16 + 2;
              v27 = 1;
              v26 = v58 + 4;
            }
          }

          else
          {
            v59 = v138;
          }

          v140 = 999999999;
          if (v59 == 6)
          {
            v30 = ZSTD_HcFindBestMatch_dedicatedDictSearch_6(a1, v16 + 2, v6, &v140);
          }

          else
          {
            v30 = v59 == 5 ? ZSTD_HcFindBestMatch_dedicatedDictSearch_5(a1, v16 + 2, v6, &v140) : ZSTD_HcFindBestMatch_dedicatedDictSearch_4(a1, v16 + 2, v6, &v140);
          }

          LODWORD(v9) = v137;
          if (v30 < 4)
          {
            break;
          }

          v29 = v140;
          if ((__clz(v140) + 4 * v30 - 31) <= (__clz(v27) + 4 * v26 - 24))
          {
            break;
          }
        }

        v16 = v28;
        v26 = v30;
        v27 = v29;
        v20 = v28;
        if (v28 >= v139)
        {
          goto LABEL_37;
        }
      }

      v28 = v20;
      LODWORD(v29) = v27;
      v30 = v26;
      if (v27 <= 3)
      {
LABEL_131:
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v33 = v126;
        v35 = (v6 - 32);
        v39 = v129;
        goto LABEL_135;
      }

LABEL_38:
      v31 = v28 - (v29 + v8) + 3;
      v32 = v132;
      v33 = v126;
      if (v9 <= v31)
      {
        v34 = v8;
      }

      else
      {
        v32 = v125;
        v34 = v126;
      }

      v35 = (v6 - 32);
      if (v28 <= v5 || v34 + v31 <= v32)
      {
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v39 = v129;
      }

      else
      {
        v36 = (v34 + v31 - 1);
        v37 = v28 - 1;
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v39 = v129;
        while (*v37 == *v36)
        {
          ++v30;
          v40 = v37 - 1;
          if (v37 > v5)
          {
            --v37;
            if (v36-- > v32)
            {
              continue;
            }
          }

          v28 = v40 + 1;
          goto LABEL_134;
        }

        v28 = v37 + 1;
      }

LABEL_134:
      v133 = v12;
      v12 = (v29 - 3);
LABEL_135:
      v70 = v28 - v5;
      v71 = *(a2 + 24);
      if (v28 > v35)
      {
        if (v5 <= v35)
        {
          v72 = (v71 + v35 - v5);
          *v71 = *v5;
          if (v35 - v5 >= 17)
          {
            v73 = v71 + 1;
            v74 = (v5 + 32);
            do
            {
              *v73 = *(v74 - 1);
              v75 = *v74;
              v74 += 2;
              v73[1] = v75;
              v73 += 2;
            }

            while (v73 < v72);
          }

          v5 = v35;
          v71 = v72;
        }

        if (v5 >= v28)
        {
          goto LABEL_164;
        }

        v76 = v28 - v5;
        if ((v28 - v5) < 8)
        {
          v84 = v71;
        }

        else if ((v71 - v5) < 0x20)
        {
          v84 = v71;
        }

        else
        {
          if (v76 < 0x20)
          {
            v77 = 0;
LABEL_158:
            v89 = v76 & 0xFFFFFFFFFFFFFFF8;
            v84 = v71 + (v76 & 0xFFFFFFFFFFFFFFF8);
            v90 = v77 - (v76 & 0xFFFFFFFFFFFFFFF8);
            v91 = &v5[v77];
            v92 = (v71 + v77);
            do
            {
              v93 = *v91;
              v91 += 8;
              *v92++ = v93;
              v90 += 8;
            }

            while (v90);
            if (v76 != v89)
            {
              v5 += v89;
              goto LABEL_163;
            }

LABEL_164:
            *(a2 + 24) += v70;
            v83 = *(a2 + 8);
            if (v70 >= 0x10000)
            {
              v95 = (v83 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v95;
            }

            goto LABEL_166;
          }

          v77 = v76 & 0xFFFFFFFFFFFFFFE0;
          v85 = (v5 + 16);
          v86 = v71 + 1;
          v87 = v76 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v88 = *v85;
            *(v86 - 1) = *(v85 - 1);
            *v86 = v88;
            v85 += 2;
            v86 += 2;
            v87 -= 32;
          }

          while (v87);
          if (v76 == v77)
          {
            goto LABEL_164;
          }

          if ((v76 & 0x18) != 0)
          {
            goto LABEL_158;
          }

          v5 += v77;
          v84 = v71 + v77;
        }

        do
        {
LABEL_163:
          v94 = *v5++;
          *v84++ = v94;
        }

        while (v5 != v28);
        goto LABEL_164;
      }

      *v71 = *v5;
      v78 = *(a2 + 24);
      if (v70 > 0x10)
      {
        *(v78 + 16) = *(v5 + 1);
        if (v70 >= 33)
        {
          v79 = v78 + v70;
          v80 = (v78 + 32);
          v81 = (v5 + 48);
          do
          {
            *v80 = *(v81 - 1);
            v82 = *v81;
            v81 += 2;
            v80[1] = v82;
            v80 += 2;
          }

          while (v80 < v79);
        }

        goto LABEL_164;
      }

      *(a2 + 24) = v78 + v70;
      v83 = *(a2 + 8);
LABEL_166:
      *(v83 + 4) = v70;
      *v83 = v29;
      if (v30 - 3 >= 0x10000)
      {
        v96 = (v83 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v96;
      }

      *(v83 + 6) = v30 - 3;
      v97 = v83 + 8;
      *(a2 + 8) = v83 + 8;
      if (*(v18 + 300))
      {
        *(v18 + 300) = 0;
      }

      v5 = &v28[v30];
      if (&v28[v30] > v139)
      {
        v16 = &v28[v30];
        goto LABEL_11;
      }

      v98 = v12;
      v99 = v133;
      while (2)
      {
        v12 = v99;
        v99 = v98;
        v100 = (v5 - v8 - v12);
        if (v100 >= v9)
        {
          v101 = v8;
        }

        else
        {
          v101 = v33;
        }

        if ((v100 - v9) <= 0xFFFFFFFC)
        {
          v102 = v101 + v100;
          if (*(v101 + v100) == *v5)
          {
            if (v100 >= v9)
            {
              v103 = v6;
            }

            else
            {
              v103 = v15;
            }

            v104 = (v5 + 4);
            v105 = (v102 + 4);
            v106 = &v103[v5 - v102];
            if (v106 >= v6)
            {
              v106 = v6;
            }

            if (v106 - 7 <= v104)
            {
              v107 = v105;
              v109 = (v5 + 4);
              goto LABEL_191;
            }

            if (*v105 == *v104)
            {
              v107 = (v101 + v100 + 12);
              v108 = (v5 + 12);
              while (1)
              {
                v109 = v108;
                if (v108 >= (v106 - 7))
                {
                  break;
                }

                v111 = *v107;
                v107 += 4;
                v110 = v111;
                v108 += 8;
                if (v111 != *v109)
                {
                  v112 = &v109[__clz(__rbit64(*v109 ^ v110)) >> 3] - v104;
                  goto LABEL_202;
                }
              }

LABEL_191:
              if (v109 < v106 - 3 && *v107 == *v109)
              {
                v107 += 2;
                v109 += 4;
              }

              if (v109 < v106 - 1 && *v107 == *v109)
              {
                ++v107;
                v109 += 2;
              }

              if (v109 < v106 && *v107 == *v109)
              {
                ++v109;
              }

              v112 = v109 - v104;
            }

            else
            {
              v112 = __clz(__rbit64(*v104 ^ *v105)) >> 3;
            }

LABEL_202:
            if (v105 + v112 != v103)
            {
              if (v5 <= v35)
              {
                goto LABEL_204;
              }

              goto LABEL_205;
            }

            v114 = &v104[v112];
            if (v38 > v114)
            {
              if (*v132 == *v114)
              {
                v115 = 0;
                v116 = &v5[v112];
                while (1)
                {
                  v117 = &v116[v115 + 12];
                  if (v117 >= v38)
                  {
                    break;
                  }

                  v118 = *(v39 + v115);
                  v119 = *v117;
                  v115 += 8;
                  if (v118 != v119)
                  {
                    v120 = &v116[v115 + 4 + (__clz(__rbit64(v119 ^ v118)) >> 3)];
                    goto LABEL_225;
                  }
                }

                v121 = (v39 + v115);
                v120 = &v5[v112 + 12 + v115];
LABEL_216:
                if (v120 < v128 && *v121 == *v120)
                {
                  v121 = (v121 + 4);
                  v120 += 4;
                }

                if (v120 < v127 && *v121 == *v120)
                {
                  v121 = (v121 + 2);
                  v120 += 2;
                }

                if (v120 < v6 && *v121 == *v120)
                {
                  ++v120;
                }

LABEL_225:
                v122 = v120 - v114;
              }

              else
              {
                v122 = __clz(__rbit64(*v114 ^ *v132)) >> 3;
              }

              v112 += v122;
              if (v5 <= v35)
              {
LABEL_204:
                **(a2 + 24) = *v5;
                v97 = *(a2 + 8);
              }

LABEL_205:
              *(v97 + 4) = 0;
              *v97 = 1;
              if (v112 + 1 >= 0x10000)
              {
                v113 = (v97 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v113;
              }

              *(v97 + 6) = v112 + 1;
              v97 += 8;
              v5 += v112 + 4;
              *(a2 + 8) = v97;
              v98 = v12;
              v11 = v99;
              v16 = v5;
              if (v5 > v139)
              {
                goto LABEL_12;
              }

              continue;
            }

            v121 = v132;
            v120 = v114;
            goto LABEL_216;
          }
        }

        break;
      }

      v11 = v12;
      v12 = v98;
      v16 = v5;
LABEL_12:
      if (v16 >= v139)
      {
        a3 = v124;
        break;
      }
    }
  }

  *a3 = v12;
  a3[1] = v11;
  return v6 - v5;
}

uint64_t ZSTD_compressBlock_lazy2_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v198 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 272);
  if (v11 >= 6)
  {
    v11 = 6;
  }

  if (v11 <= 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a1 + 268);
  v192 = v13;
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v13;
  }

  v15 = *a3;
  v16 = a3[1];
  v189 = v9 + v10;
  if (a4 == v9 + v10)
  {
    v17 = a4 + 1;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 - v9;
  v19 = 1 << *(a1 + 256);
  v20 = v17 - v9 - v19;
  v183 = v17 - v9 - v10 > v19;
  v21 = *(a1 + 44);
  if (v183 && *(a1 + 40) == 0)
  {
    LODWORD(v10) = v20;
  }

  v23 = v18 - v10;
  if (v16 <= v18 - v10)
  {
    LODWORD(v24) = a3[1];
  }

  else
  {
    LODWORD(v24) = 0;
  }

  if (v15 <= v23)
  {
    v25 = v15;
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 300) = 0;
  v26 = v8 - (v9 + v21);
  if ((v26 + 1) < 8)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = 8;
  }

  v199 = &a4[a5 - 16];
  if (v8 >= v9 + v21)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v28 + v21);
  if (v21 < v29)
  {
    v30 = *(a1 + 112);
    v31 = *(a1 + 56);
    v32 = *(a1 + 52);
    v33 = *(a1 + 96);
    v34 = 56 - v32;
    v35 = 24 - v32;
    v36 = a1 + 64;
    if (v192 <= 4)
    {
      while (1)
      {
        if (v12 == 6)
        {
          v37 = 0xCF1BBCDCBF9B0000 * *(v9 + v21);
        }

        else
        {
          if (v12 != 5)
          {
            LODWORD(v38) = ((-1640531535 * *(v9 + v21)) ^ v33) >> v35;
            goto LABEL_36;
          }

          v37 = 0xCF1BBCDCBB000000 * *(v9 + v21);
        }

        v38 = (v37 ^ v33) >> v34;
LABEL_36:
        v39 = v38 >> 8 << v14;
        _X3 = v30 + 4 * v39;
        __asm { PRFM            #0, [X3] }

        _X3 = v31 + v39;
        __asm { PRFM            #0, [X3] }

        *(v36 + 4 * (v21++ & 7)) = v38;
        if (v29 == v21)
        {
          goto LABEL_57;
        }
      }
    }

    if (v192 == 5)
    {
      while (1)
      {
        if (v12 == 6)
        {
          v47 = 0xCF1BBCDCBF9B0000 * *(v9 + v21);
        }

        else
        {
          if (v12 != 5)
          {
            LODWORD(v48) = ((-1640531535 * *(v9 + v21)) ^ v33) >> v35;
            goto LABEL_45;
          }

          v47 = 0xCF1BBCDCBB000000 * *(v9 + v21);
        }

        v48 = (v47 ^ v33) >> v34;
LABEL_45:
        v49 = v48 >> 8 << v14;
        _X3 = v30 + 4 * v49;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X3 = v31 + v49;
        __asm { PRFM            #0, [X3] }

        *(v36 + 4 * (v21++ & 7)) = v48;
        if (v29 == v21)
        {
          goto LABEL_57;
        }
      }
    }

    if (v12 == 6)
    {
      do
      {
        v63 = ((0xCF1BBCDCBF9B0000 * *(v9 + v21)) ^ v33) >> v34;
        v64 = v63 >> 8 << v14;
        _X0 = v30 + 4 * v64;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v31 + v64;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v36 + 4 * (v21++ & 7)) = v63;
      }

      while (v29 != v21);
    }

    else if (v12 == 5)
    {
      do
      {
        v55 = ((0xCF1BBCDCBB000000 * *(v9 + v21)) ^ v33) >> v34;
        v56 = v55 >> 8 << v14;
        _X0 = v30 + 4 * v56;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v31 + v56;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v36 + 4 * (v21++ & 7)) = v55;
      }

      while (v29 != v21);
    }

    else
    {
      do
      {
        v71 = ((-1640531535 * *(v9 + v21)) ^ v33) >> v35;
        v72 = v71 >> 8 << v14;
        _X0 = v30 + 4 * v72;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v31 + v72;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v36 + 4 * (v21++ & 7)) = v71;
      }

      while (v29 != v21);
    }
  }

LABEL_57:
  if (v17 < v199)
  {
    v185 = v23;
    v186 = v16;
    v187 = v15;
    v188 = a3;
    v79 = (v198 - 7);
    v194 = v198 - 1;
    v195 = v198 - 3;
    v190 = v7 + 64;
    v191 = v9;
    v197 = v14;
    v196 = v7;
    while (1)
    {
      v81 = 0;
      v82 = v17 + 1;
      if (!v25 || *&v82[-v25] != *(v17 + 1))
      {
        goto LABEL_82;
      }

      v83 = v17 + 5;
      v84 = &v17[-v25 + 5];
      if (v79 <= (v17 + 5))
      {
        break;
      }

      if (*v84 == *v83)
      {
        v85 = v17 + 13;
        v84 = &v17[-v25 + 13];
        while (1)
        {
          v86 = v85;
          if (v85 >= v79)
          {
            goto LABEL_70;
          }

          v88 = *v84;
          v84 += 8;
          v87 = v88;
          v85 += 8;
          if (v88 != *v86)
          {
            v86 = (v86 + (__clz(__rbit64(*v86 ^ v87)) >> 3));
            goto LABEL_79;
          }
        }
      }

      v89 = __clz(__rbit64(*v83 ^ *v84)) >> 3;
LABEL_81:
      v81 = v89 + 4;
LABEL_82:
      v200 = 999999999;
      v193 = v24;
      if (v12 == 6)
      {
        if (v14 == 6)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_6(v7, v17, v198, &v200);
        }

        else if (v14 == 5)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_5(v7, v17, v198, &v200);
        }

        else
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_4(v7, v17, v198, &v200);
        }
      }

      else if (v12 == 5)
      {
        if (v14 == 6)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_6(v7, v17, v198, &v200);
        }

        else if (v14 == 5)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_5(v7, v17, v198, &v200);
        }

        else
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_4(v7, v17, v198, &v200);
        }
      }

      else if (v14 == 6)
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_6(v7, v17, v198, &v200);
      }

      else if (v14 == 5)
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_5(v7, v17, v198, &v200);
      }

      else
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_4(v7, v17, v198, &v200);
      }

      if (BestMatch_noDict_6_6 <= v81)
      {
        v91 = v81;
      }

      else
      {
        v91 = BestMatch_noDict_6_6;
      }

      if (v91 < 4)
      {
        v80 = v17 - v5;
        v17 += ((v17 - v5) >> 8) + 1;
        *(v7 + 300) = v80 > 0x7FF;
        v14 = v197;
        LODWORD(v24) = v193;
        goto LABEL_60;
      }

      if (BestMatch_noDict_6_6 <= v81)
      {
        v92 = 1;
      }

      else
      {
        v92 = v200;
      }

      if (BestMatch_noDict_6_6 > v81)
      {
        v82 = v17;
      }

      v93 = v82;
      v94 = v92;
      BestMatch_noDict_6_5 = v91;
      v14 = v197;
      if (v17 < v199)
      {
        do
        {
          v93 = v17 + 1;
          if (!v92 || !v25 || *v93 != *&v93[-v25])
          {
            goto LABEL_135;
          }

          v96 = v17 + 5;
          v97 = &v17[-v25 + 5];
          if (v79 <= (v17 + 5))
          {
            v99 = v17 + 5;
          }

          else
          {
            if (*v97 != *v96)
            {
              v102 = __clz(__rbit64(*v96 ^ *v97)) >> 3;
LABEL_133:
              v103 = v102 + 4;
              if (3 * v103 > (3 * v91 + __clz(v92) - 30))
              {
                v82 = v17 + 1;
                v92 = 1;
                v91 = v103;
              }

              goto LABEL_135;
            }

            v98 = v17 + 13;
            v97 = &v17[-v25 + 13];
            while (1)
            {
              v99 = v98;
              if (v98 >= v79)
              {
                break;
              }

              v101 = *v97;
              v97 += 8;
              v100 = v101;
              v98 += 8;
              if (v101 != *v99)
              {
                v99 = (v99 + (__clz(__rbit64(*v99 ^ v100)) >> 3));
                goto LABEL_130;
              }
            }
          }

          if (v99 < v195 && *v97 == *v99)
          {
            v99 = (v99 + 4);
            v97 += 4;
          }

          if (v99 < v194 && *v97 == *v99)
          {
            v99 = (v99 + 2);
            v97 += 2;
          }

          if (v99 < v198 && *v97 == *v99)
          {
            v99 = (v99 + 1);
          }

LABEL_130:
          v102 = v99 - v96;
          if (v102 <= 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_133;
          }

LABEL_135:
          v200 = 999999999;
          if (v12 == 6)
          {
            if (v197 == 6)
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_6_6(v196, v17 + 1, v198, &v200);
            }

            else if (v197 == 5)
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_6_5(v196, v17 + 1, v198, &v200);
            }

            else
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_6_4(v196, v17 + 1, v198, &v200);
            }
          }

          else if (v12 == 5)
          {
            if (v197 == 6)
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_5_6(v196, v17 + 1, v198, &v200);
            }

            else if (v197 == 5)
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_5_5(v196, v17 + 1, v198, &v200);
            }

            else
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_5_4(v196, v17 + 1, v198, &v200);
            }
          }

          else if (v197 == 6)
          {
            BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_4_6(v196, v17 + 1, v198, &v200);
          }

          else if (v197 == 5)
          {
            BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_4_5(v196, v17 + 1, v198, &v200);
          }

          else
          {
            BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_4_4(v196, v17 + 1, v198, &v200);
          }

          v14 = v197;
          if (BestMatch_noDict_6_5 >= 4)
          {
            v94 = v200;
            if ((__clz(v200) + 4 * BestMatch_noDict_6_5 - 31) > (__clz(v92) + 4 * v91 - 27))
            {
              goto LABEL_110;
            }
          }

          if (v93 >= v199)
          {
            v93 = v82;
            v94 = v92;
            BestMatch_noDict_6_5 = v91;
            break;
          }

          v93 = v17 + 2;
          if (v92 && v25 && *v93 == *&v93[-v25])
          {
            v104 = v17 + 6;
            v105 = &v17[-v25 + 6];
            if (v79 <= (v17 + 6))
            {
              v107 = v17 + 6;
LABEL_165:
              if (v107 < v195 && *v105 == *v107)
              {
                ++v107;
                v105 += 4;
              }

              if (v107 < v194 && *v105 == *v107)
              {
                v107 = (v107 + 2);
                v105 += 2;
              }

              if (v107 < v198 && *v105 == *v107)
              {
                v107 = (v107 + 1);
              }

LABEL_174:
              v110 = v107 - v104;
              if (v110 > 0xFFFFFFFFFFFFFFFBLL)
              {
                goto LABEL_179;
              }
            }

            else
            {
              if (*v105 == *v104)
              {
                v106 = v17 + 14;
                v105 = &v17[-v25 + 14];
                while (1)
                {
                  v107 = v106;
                  if (v106 >= v79)
                  {
                    goto LABEL_165;
                  }

                  v109 = *v105;
                  v105 += 8;
                  v108 = v109;
                  v106 += 8;
                  if (v109 != *v107)
                  {
                    v107 = (v107 + (__clz(__rbit64(*v107 ^ v108)) >> 3));
                    goto LABEL_174;
                  }
                }
              }

              v110 = __clz(__rbit64(*v104 ^ *v105)) >> 3;
            }

            v111 = v110 + 4;
            if ((__clz(v92) + 4 * v91 - 30) < 4 * v111)
            {
              v82 = v17 + 2;
              v92 = 1;
              v91 = v111;
            }
          }

LABEL_179:
          v200 = 999999999;
          if (v12 == 6)
          {
            if (v197 == 6)
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_6_6(v196, v17 + 2, v198, &v200);
              if (BestMatch_noDict_6_5 < 4)
              {
                goto LABEL_206;
              }
            }

            else if (v197 == 5)
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_6_5(v196, v17 + 2, v198, &v200);
              if (BestMatch_noDict_6_5 < 4)
              {
                goto LABEL_206;
              }
            }

            else
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_6_4(v196, v17 + 2, v198, &v200);
              if (BestMatch_noDict_6_5 < 4)
              {
                goto LABEL_206;
              }
            }
          }

          else if (v12 == 5)
          {
            if (v197 == 6)
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_5_6(v196, v17 + 2, v198, &v200);
              if (BestMatch_noDict_6_5 < 4)
              {
                goto LABEL_206;
              }
            }

            else if (v197 == 5)
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_5_5(v196, v17 + 2, v198, &v200);
              if (BestMatch_noDict_6_5 < 4)
              {
                goto LABEL_206;
              }
            }

            else
            {
              BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_5_4(v196, v17 + 2, v198, &v200);
              if (BestMatch_noDict_6_5 < 4)
              {
                goto LABEL_206;
              }
            }
          }

          else if (v197 == 6)
          {
            BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_4_6(v196, v17 + 2, v198, &v200);
            if (BestMatch_noDict_6_5 < 4)
            {
              goto LABEL_206;
            }
          }

          else if (v197 == 5)
          {
            BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_4_5(v196, v17 + 2, v198, &v200);
            if (BestMatch_noDict_6_5 < 4)
            {
              goto LABEL_206;
            }
          }

          else
          {
            BestMatch_noDict_6_5 = ZSTD_RowFindBestMatch_noDict_4_4(v196, v17 + 2, v198, &v200);
            if (BestMatch_noDict_6_5 < 4)
            {
              goto LABEL_206;
            }
          }

          v94 = v200;
          if ((__clz(v200) + 4 * BestMatch_noDict_6_5 - 31) <= (__clz(v92) + 4 * v91 - 24))
          {
LABEL_206:
            v93 = v82;
            v94 = v92;
            BestMatch_noDict_6_5 = v91;
            v14 = v197;
            break;
          }

          v14 = v197;
LABEL_110:
          v17 = v93;
          v91 = BestMatch_noDict_6_5;
          v92 = v94;
          v82 = v93;
        }

        while (v93 < v199);
      }

      v24 = v193;
      if (v94 <= 3)
      {
        v7 = v196;
        v114 = v198 - 32;
        v117 = v191;
        v113 = v192;
        v112 = v190;
      }

      else
      {
        v112 = v190;
        v113 = v192;
        v114 = v198 - 32;
        if (v93 <= v5 || &v93[-v94 + 3] <= v189)
        {
          v116 = v93;
          v7 = v196;
          v117 = v191;
        }

        else
        {
          v115 = 2 - v94;
          v116 = v93;
          v7 = v196;
          v117 = v191;
          while (1)
          {
            v118 = *--v116;
            if (v118 != v93[v115])
            {
              break;
            }

            ++BestMatch_noDict_6_5;
            if (v116 > v5)
            {
              v119 = &v93[v115];
              v93 = v116;
              if (v119 > v189)
              {
                continue;
              }
            }

            goto LABEL_219;
          }

          v116 = v93;
        }

LABEL_219:
        v24 = v25;
        v25 = (v94 - 3);
        v93 = v116;
      }

      v120 = v93 - v5;
      v121 = *(a2 + 24);
      if (v93 > v114)
      {
        if (v5 <= v114)
        {
          v122 = (v121 + v114 - v5);
          *v121 = *v5;
          if (v114 - v5 >= 17)
          {
            v123 = v121 + 1;
            v124 = (v5 + 32);
            do
            {
              *v123 = *(v124 - 1);
              v125 = *v124;
              v124 += 2;
              v123[1] = v125;
              v123 += 2;
            }

            while (v123 < v122);
          }

          v5 = v114;
          v121 = v122;
        }

        if (v5 >= v93)
        {
          goto LABEL_249;
        }

        v126 = v93 - v5;
        if ((v93 - v5) < 8)
        {
          v134 = v121;
          goto LABEL_248;
        }

        if ((v121 - v5) < 0x20)
        {
          v134 = v121;
          goto LABEL_248;
        }

        if (v126 >= 0x20)
        {
          v127 = v126 & 0xFFFFFFFFFFFFFFE0;
          v135 = (v5 + 16);
          v136 = v121 + 1;
          v137 = v126 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v138 = *v135;
            *(v136 - 1) = *(v135 - 1);
            *v136 = v138;
            v135 += 2;
            v136 += 2;
            v137 -= 32;
          }

          while (v137);
          if (v126 == v127)
          {
            goto LABEL_249;
          }

          if ((v126 & 0x18) == 0)
          {
            v5 += v127;
            v134 = v121 + v127;
            do
            {
LABEL_248:
              v144 = *v5++;
              *v134++ = v144;
            }

            while (v5 != v93);
            goto LABEL_249;
          }
        }

        else
        {
          v127 = 0;
        }

        v139 = v126 & 0xFFFFFFFFFFFFFFF8;
        v134 = v121 + (v126 & 0xFFFFFFFFFFFFFFF8);
        v140 = v127 - (v126 & 0xFFFFFFFFFFFFFFF8);
        v141 = &v5[v127];
        v142 = (v121 + v127);
        do
        {
          v143 = *v141;
          v141 += 8;
          *v142++ = v143;
          v140 += 8;
        }

        while (v140);
        if (v126 != v139)
        {
          v5 += v139;
          goto LABEL_248;
        }

LABEL_249:
        *(a2 + 24) += v120;
        v133 = *(a2 + 8);
        if (v120 >= 0x10000)
        {
          v145 = (v133 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v145;
        }

        goto LABEL_251;
      }

      *v121 = *v5;
      v128 = *(a2 + 24);
      if (v120 > 0x10)
      {
        *(v128 + 16) = *(v5 + 1);
        if (v120 >= 33)
        {
          v129 = v128 + v120;
          v130 = (v128 + 32);
          v131 = (v5 + 48);
          do
          {
            *v130 = *(v131 - 1);
            v132 = *v131;
            v131 += 2;
            v130[1] = v132;
            v130 += 2;
          }

          while (v130 < v129);
        }

        goto LABEL_249;
      }

      *(a2 + 24) = v128 + v120;
      v133 = *(a2 + 8);
LABEL_251:
      *(v133 + 4) = v120;
      *v133 = v94;
      if (BestMatch_noDict_6_5 - 3 >= 0x10000)
      {
        v146 = (v133 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v146;
      }

      *(v133 + 6) = BestMatch_noDict_6_5 - 3;
      v147 = v133 + 8;
      *(a2 + 8) = v133 + 8;
      if (*(v7 + 300))
      {
        v148 = *(v7 + 44);
        v149 = v199 - (v117 + v148);
        if ((v149 + 1) < 8)
        {
          v150 = v149 + 1;
        }

        else
        {
          v150 = 8;
        }

        if (v199 >= v117 + v148)
        {
          v151 = v150;
        }

        else
        {
          v151 = 0;
        }

        v152 = (v151 + v148);
        if (v148 < v152)
        {
          v153 = *(v7 + 112);
          v154 = *(v7 + 56);
          v155 = *(v7 + 52);
          v156 = *(v7 + 96);
          v157 = 56 - v155;
          v158 = 24 - v155;
          do
          {
            if (v12 == 5)
            {
              v161 = 0xCF1BBCDCBB000000 * *(v117 + v148);
            }

            else
            {
              if (v12 != 6)
              {
                LODWORD(v162) = ((-1640531535 * *(v117 + v148)) ^ v156) >> v158;
                goto LABEL_270;
              }

              v161 = 0xCF1BBCDCBF9B0000 * *(v117 + v148);
            }

            v162 = (v161 ^ v156) >> v157;
LABEL_270:
            v163 = v162 >> 8 << v197;
            _X1 = v153 + 4 * v163;
            __asm { PRFM            #0, [X1] }

            if (v113 <= 4)
            {
              _X17 = v154 + v163;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v154 + v163;
              __asm { PRFM            #0, [X17] }

              if (v113 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v112 + 4 * (v148++ & 7)) = v162;
          }

          while (v152 != v148);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v93[BestMatch_noDict_6_5];
      if (!v24 || v5 > v199)
      {
LABEL_304:
        v17 = v5;
        goto LABEL_60;
      }

      v170 = v25;
      v171 = v24;
      while (1)
      {
        v25 = v171;
        v171 = v170;
        if (*v5 != *&v5[-v25])
        {
          LODWORD(v24) = v25;
          v25 = v170;
          goto LABEL_304;
        }

        v172 = v5 + 4;
        v173 = &v5[-v25 + 4];
        if (v79 <= (v5 + 4))
        {
          v176 = v5 + 4;
        }

        else
        {
          v174 = *v173;
          if (v174 != *v172)
          {
            v179 = __clz(__rbit64(*v172 ^ v174)) >> 3;
            if (v5 <= v114)
            {
              goto LABEL_295;
            }

            goto LABEL_296;
          }

          v175 = v5 + 12;
          v173 = &v5[-v25 + 12];
          while (1)
          {
            v176 = v175;
            if (v175 >= v79)
            {
              break;
            }

            v178 = *v173;
            v173 += 8;
            v177 = v178;
            v175 += 8;
            if (v178 != *v176)
            {
              v176 = (v176 + (__clz(__rbit64(*v176 ^ v177)) >> 3));
              goto LABEL_294;
            }
          }
        }

        if (v176 < v195 && *v173 == *v176)
        {
          v173 += 4;
          v176 = (v176 + 4);
        }

        if (v176 < v194 && *v173 == *v176)
        {
          v173 += 2;
          v176 = (v176 + 2);
        }

        if (v176 < v198 && *v173 == *v176)
        {
          v176 = (v176 + 1);
        }

LABEL_294:
        v179 = v176 - v172;
        if (v5 <= v114)
        {
LABEL_295:
          **(a2 + 24) = *v5;
          v147 = *(a2 + 8);
        }

LABEL_296:
        *(v147 + 4) = 0;
        *v147 = 1;
        if (v179 + 1 >= 0x10000)
        {
          v180 = (v147 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v180;
        }

        *(v147 + 6) = v179 + 1;
        v147 += 8;
        *(a2 + 8) = v147;
        v5 += v179 + 4;
        if (!v171)
        {
          break;
        }

        v170 = v25;
        LODWORD(v24) = v171;
        v17 = v5;
        if (v5 > v199)
        {
          goto LABEL_60;
        }
      }

      LODWORD(v24) = 0;
      v17 = v5;
LABEL_60:
      if (v17 >= v199)
      {
        a3 = v188;
        v16 = v186;
        v15 = v187;
        v23 = v185;
        goto LABEL_307;
      }
    }

    v86 = v17 + 5;
LABEL_70:
    if (v86 < v195 && *v84 == *v86)
    {
      v84 += 4;
      v86 = (v86 + 4);
    }

    if (v86 < v194 && *v84 == *v86)
    {
      v84 += 2;
      v86 = (v86 + 2);
    }

    if (v86 < v198 && *v84 == *v86)
    {
      v86 = (v86 + 1);
    }

LABEL_79:
    v89 = v86 - v83;
    goto LABEL_81;
  }

LABEL_307:
  if (v15 <= v23)
  {
    v181 = 0;
  }

  else
  {
    v181 = v15;
  }

  if (v16 <= v23)
  {
    v182 = 0;
  }

  else
  {
    v182 = v16;
  }

  if (v25)
  {
    v181 = v25;
    v183 = v15 > v23;
  }

  else
  {
    v183 = 0;
  }

  if (v183)
  {
    v182 = v15;
  }

  if (v24)
  {
    v182 = v24;
  }

  *a3 = v181;
  a3[1] = v182;
  return v198 - v5;
}

int64_t ZSTD_compressBlock_lazy2_dictMatchState_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  v205 = v14;
  if (v14 >= 6)
  {
    v14 = 6;
  }

  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = *(a1 + 248);
  v19 = *(v18 + 24);
  v217 = *(v18 + 8);
  v211 = (v10 + v11);
  v202 = (v217 + v19);
  v213 = *v18;
  if (a4 - (v10 + v11) - (v217 + v19) + *v18)
  {
    v20 = a4;
  }

  else
  {
    v20 = a4 + 1;
  }

  *(a1 + 300) = 0;
  v21 = *(a1 + 44);
  v22 = v9 - (v10 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  v219 = v9;
  if (v9 >= v10 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 112);
    v27 = *(a1 + 56);
    v28 = *(a1 + 52);
    v29 = *(a1 + 96);
    v30 = 56 - v28;
    v31 = 24 - v28;
    v32 = a1 + 64;
    if (v205 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v33 = 0xCF1BBCDCBF9B0000 * *(v10 + v21);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v34) = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
            goto LABEL_25;
          }

          v33 = 0xCF1BBCDCBB000000 * *(v10 + v21);
        }

        v34 = (v33 ^ v29) >> v30;
LABEL_25:
        v35 = v34 >> 8 << v15;
        _X3 = v26 + 4 * v35;
        __asm { PRFM            #0, [X3] }

        _X2 = v27 + v35;
        __asm { PRFM            #0, [X2] }

        *(v32 + 4 * (v21++ & 7)) = v34;
        if (v25 == v21)
        {
          goto LABEL_46;
        }
      }
    }

    if (v205 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v44 = 0xCF1BBCDCBF9B0000 * *(v10 + v21);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v45) = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
            goto LABEL_34;
          }

          v44 = 0xCF1BBCDCBB000000 * *(v10 + v21);
        }

        v45 = (v44 ^ v29) >> v30;
LABEL_34:
        v46 = v45 >> 8 << v15;
        _X3 = v26 + 4 * v46;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v27 + v46;
        __asm { PRFM            #0, [X2] }

        *(v32 + 4 * (v21++ & 7)) = v45;
        if (v25 == v21)
        {
          goto LABEL_46;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v60 = ((0xCF1BBCDCBF9B0000 * *(v10 + v21)) ^ v29) >> v30;
        v61 = v60 >> 8 << v15;
        _X0 = v26 + 4 * v61;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v61;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v60;
      }

      while (v25 != v21);
    }

    else if (v13 == 5)
    {
      do
      {
        v52 = ((0xCF1BBCDCBB000000 * *(v10 + v21)) ^ v29) >> v30;
        v53 = v52 >> 8 << v15;
        _X0 = v26 + 4 * v53;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v53;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v52;
      }

      while (v25 != v21);
    }

    else
    {
      do
      {
        v68 = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
        v69 = v68 >> 8 << v15;
        _X0 = v26 + 4 * v69;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v69;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v68;
      }

      while (v25 != v21);
    }
  }

LABEL_46:
  if (v20 < v219)
  {
    v210 = v8 - 7;
    v206 = v8 - 1;
    v207 = v8 - 3;
    v203 = v7 + 64;
    v214 = v11 + v217 - v213;
    v215 = v11;
    v216 = v7;
    v218 = v15;
    v204 = a2;
    v208 = v8 - 32;
    v209 = v11 + v10 + 8;
    while (1)
    {
      v212 = v17;
      v77 = (v20 - v10 - v16 + 1);
      v78 = v217 + v77 - v214;
      if (v77 >= v11)
      {
        v78 = v10 + v77;
      }

      if ((v77 - v11) <= 0xFFFFFFFC && *v78 == *(v20 + 1))
      {
        if (v77 >= v11)
        {
          v79 = v8;
        }

        else
        {
          v79 = v213;
        }

        v80 = ZSTD_count_2segments(v20 + 5, (v78 + 4), v8, v79, v211);
        v15 = v218;
        v81 = v80 + 4;
      }

      else
      {
        v81 = 0;
      }

      *v220 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v7, v20, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v7, v20, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v7, v20, v8, v220);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v7, v20, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v7, v20, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v7, v20, v8, v220);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v7, v20, v8, v220);
      }

      else if (v15 == 5)
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v7, v20, v8, v220);
      }

      else
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v7, v20, v8, v220);
      }

      if (BestMatch_dictMatchState_6_6 <= v81)
      {
        v83 = v81;
      }

      else
      {
        v83 = BestMatch_dictMatchState_6_6;
      }

      LODWORD(v11) = v215;
      if (v83 < 4)
      {
        v76 = v20 - v5;
        v20 += ((v20 - v5) >> 8) + 1;
        v7 = v216;
        *(v216 + 300) = v76 > 0x7FF;
        v15 = v218;
LABEL_49:
        v17 = v212;
        goto LABEL_50;
      }

      v84 = BestMatch_dictMatchState_6_6 > v81;
      v85 = BestMatch_dictMatchState_6_6 <= v81 ? 1 : *v220;
      v86 = v84 ? v20 : v20 + 1;
      v87 = v86;
      v88 = v85;
      BestMatch_dictMatchState_6_5 = v83;
      v15 = v218;
      if (v20 < v219)
      {
        break;
      }

LABEL_196:
      if (v88 <= 3)
      {
        v7 = v216;
        v120 = v205;
        v123 = v8 - 7;
        v119 = v203;
      }

      else
      {
        v116 = v87 - (v88 + v10) + 3;
        v117 = v211;
        if (v11 > v116)
        {
          v117 = v202;
        }

        v118 = v217 - v214;
        v119 = v203;
        if (v11 <= v87 - (v88 + v10) + 3)
        {
          v118 = v10;
        }

        v120 = v205;
        if (v87 <= v5 || v118 + v116 <= v117)
        {
          v7 = v216;
          v123 = v8 - 7;
        }

        else
        {
          v121 = (v118 + v116 - 1);
          v122 = (v87 - 1);
          v7 = v216;
          v123 = v8 - 7;
          while (*v122 == *v121)
          {
            ++BestMatch_dictMatchState_6_5;
            v124 = v122 - 1;
            if (v122 > v5)
            {
              --v122;
              v84 = v121-- > v117;
              if (v84)
              {
                continue;
              }
            }

            v87 = (v124 + 1);
            goto LABEL_211;
          }

          v87 = (v122 + 1);
        }

LABEL_211:
        v212 = v16;
        v16 = (v88 - 3);
      }

      v125 = v87 - v5;
      v126 = *(v204 + 24);
      if (v87 > v208)
      {
        if (v5 <= v208)
        {
          v127 = (v126 + v208 - v5);
          *v126 = *v5;
          if (v208 - v5 >= 17)
          {
            v134 = v126 + 1;
            v135 = (v5 + 32);
            do
            {
              *v134 = *(v135 - 1);
              v136 = *v135;
              v135 += 2;
              v134[1] = v136;
              v134 += 2;
            }

            while (v134 < v127);
            v5 = v8 - 32;
          }

          else
          {
            v5 = v8 - 32;
          }

          v126 = v127;
        }

        if (v5 >= v87)
        {
          goto LABEL_243;
        }

        v137 = v87 - v5;
        if ((v87 - v5) < 8)
        {
          v139 = v126;
          goto LABEL_242;
        }

        if ((v126 - v5) < 0x20)
        {
          v139 = v126;
          goto LABEL_242;
        }

        if (v137 >= 0x20)
        {
          v138 = v137 & 0xFFFFFFFFFFFFFFE0;
          v140 = (v5 + 16);
          v141 = v126 + 1;
          v142 = v137 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v143 = *v140;
            *(v141 - 1) = *(v140 - 1);
            *v141 = v143;
            v140 += 2;
            v141 += 2;
            v142 -= 32;
          }

          while (v142);
          if (v137 == v138)
          {
            goto LABEL_243;
          }

          if ((v137 & 0x18) == 0)
          {
            v5 += v138;
            v139 = v126 + v138;
            do
            {
LABEL_242:
              v149 = *v5++;
              *v139++ = v149;
            }

            while (v5 != v87);
            goto LABEL_243;
          }
        }

        else
        {
          v138 = 0;
        }

        v144 = v137 & 0xFFFFFFFFFFFFFFF8;
        v139 = v126 + (v137 & 0xFFFFFFFFFFFFFFF8);
        v145 = v138 - (v137 & 0xFFFFFFFFFFFFFFF8);
        v146 = &v5[v138];
        v147 = (v126 + v138);
        do
        {
          v148 = *v146;
          v146 += 8;
          *v147++ = v148;
          v145 += 8;
        }

        while (v145);
        if (v137 != v144)
        {
          v5 += v144;
          goto LABEL_242;
        }

LABEL_243:
        *(v204 + 24) += v125;
        v133 = *(v204 + 8);
        if (v125 >= 0x10000)
        {
          v150 = (v133 - *v204) >> 3;
          *(v204 + 72) = 1;
          *(v204 + 76) = v150;
        }

        goto LABEL_245;
      }

      *v126 = *v5;
      v128 = *(v204 + 24);
      if (v125 > 0x10)
      {
        *(v128 + 16) = *(v5 + 1);
        if (v125 >= 33)
        {
          v129 = v128 + v125;
          v130 = (v128 + 32);
          v131 = (v5 + 48);
          do
          {
            *v130 = *(v131 - 1);
            v132 = *v131;
            v131 += 2;
            v130[1] = v132;
            v130 += 2;
          }

          while (v130 < v129);
        }

        goto LABEL_243;
      }

      *(v204 + 24) = v128 + v125;
      v133 = *(v204 + 8);
LABEL_245:
      *(v133 + 4) = v125;
      *v133 = v88;
      if (BestMatch_dictMatchState_6_5 - 3 >= 0x10000)
      {
        v151 = (v133 - *v204) >> 3;
        *(v204 + 72) = 2;
        *(v204 + 76) = v151;
      }

      *(v133 + 6) = BestMatch_dictMatchState_6_5 - 3;
      v152 = v133 + 8;
      *(v204 + 8) = v133 + 8;
      if (*(v7 + 300))
      {
        v153 = *(v7 + 44);
        v154 = v219 - (v10 + v153);
        if ((v154 + 1) < 8)
        {
          v155 = v154 + 1;
        }

        else
        {
          v155 = 8;
        }

        if (v219 >= v10 + v153)
        {
          v156 = v155;
        }

        else
        {
          v156 = 0;
        }

        v157 = (v156 + v153);
        if (v153 < v157)
        {
          v158 = *(v7 + 112);
          v159 = *(v7 + 56);
          v160 = *(v7 + 52);
          v161 = *(v7 + 96);
          v162 = 56 - v160;
          v163 = 24 - v160;
          do
          {
            if (v13 == 5)
            {
              v166 = 0xCF1BBCDCBB000000 * *(v10 + v153);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v167) = ((-1640531535 * *(v10 + v153)) ^ v161) >> v163;
                goto LABEL_264;
              }

              v166 = 0xCF1BBCDCBF9B0000 * *(v10 + v153);
            }

            v167 = (v166 ^ v161) >> v162;
LABEL_264:
            v168 = v167 >> 8 << v15;
            _X1 = v158 + 4 * v168;
            __asm { PRFM            #0, [X1] }

            if (v120 <= 4)
            {
              _X17 = v159 + v168;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v159 + v168;
              __asm { PRFM            #0, [X17] }

              if (v120 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v119 + 4 * (v153++ & 7)) = v167;
          }

          while (v157 != v153);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v87[BestMatch_dictMatchState_6_5];
      if (&v87[BestMatch_dictMatchState_6_5] > v219)
      {
        v20 = &v87[BestMatch_dictMatchState_6_5];
        goto LABEL_49;
      }

      v175 = v16;
      v176 = v212;
      while (1)
      {
        v16 = v176;
        v176 = v175;
        v177 = (v5 - v10 - v16);
        v178 = v177 >= v11 ? v10 : v217 - v214;
        if ((v177 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v179 = v178 + v177;
        if (*(v178 + v177) != *v5)
        {
          break;
        }

        if (v177 >= v11)
        {
          v180 = v8;
        }

        else
        {
          v180 = v213;
        }

        v181 = v5 + 4;
        v182 = (v179 + 4);
        v183 = &v180[v5 - v179];
        if (v183 >= v8)
        {
          v183 = v8;
        }

        if (v183 - 7 <= v181)
        {
          v184 = v182;
          v186 = v5 + 4;
        }

        else
        {
          if (*v182 != *v181)
          {
            v189 = __clz(__rbit64(*v181 ^ *v182)) >> 3;
            goto LABEL_300;
          }

          v184 = (v178 + v177 + 12);
          v185 = (v5 + 12);
          while (1)
          {
            v186 = v185;
            if (v185 >= (v183 - 7))
            {
              break;
            }

            v188 = *v184;
            v184 += 4;
            v187 = v188;
            v185 += 8;
            if (v188 != *v186)
            {
              v189 = &v186[__clz(__rbit64(*v186 ^ v187)) >> 3] - v181;
              goto LABEL_300;
            }
          }
        }

        if (v186 < v183 - 3 && *v184 == *v186)
        {
          v184 += 2;
          v186 += 4;
        }

        if (v186 < v183 - 1 && *v184 == *v186)
        {
          ++v184;
          v186 += 2;
        }

        if (v186 < v183 && *v184 == *v186)
        {
          ++v186;
        }

        v189 = v186 - v181;
LABEL_300:
        if (v182 + v189 == v180)
        {
          v191 = &v181[v189];
          if (v123 > v191)
          {
            if (*v211 == *v191)
            {
              v192 = 0;
              v193 = &v5[v189];
              while (1)
              {
                v194 = &v193[v192 + 12];
                if (v194 >= v123)
                {
                  break;
                }

                v195 = *(v209 + v192);
                v196 = *v194;
                v192 += 8;
                if (v195 != v196)
                {
                  v197 = &v193[v192 + 4 + (__clz(__rbit64(v196 ^ v195)) >> 3)];
                  goto LABEL_323;
                }
              }

              v198 = (v209 + v192);
              v197 = &v5[v189 + 12 + v192];
LABEL_314:
              if (v197 < v207 && *v198 == *v197)
              {
                v198 = (v198 + 4);
                v197 += 4;
              }

              if (v197 < v206 && *v198 == *v197)
              {
                v198 = (v198 + 2);
                v197 += 2;
              }

              if (v197 < v8 && *v198 == *v197)
              {
                ++v197;
              }

LABEL_323:
              v199 = v197 - v191;
            }

            else
            {
              v199 = __clz(__rbit64(*v191 ^ *v211)) >> 3;
            }

            v189 += v199;
            if (v5 > v208)
            {
              goto LABEL_303;
            }

LABEL_302:
            **(v204 + 24) = *v5;
            v152 = *(v204 + 8);
            goto LABEL_303;
          }

          v198 = v211;
          v197 = v191;
          goto LABEL_314;
        }

        if (v5 <= v208)
        {
          goto LABEL_302;
        }

LABEL_303:
        *(v152 + 4) = 0;
        *v152 = 1;
        if (v189 + 1 >= 0x10000)
        {
          v190 = (v152 - *v204) >> 3;
          *(v204 + 72) = 2;
          *(v204 + 76) = v190;
        }

        *(v152 + 6) = v189 + 1;
        v152 += 8;
        v5 += v189 + 4;
        *(v204 + 8) = v152;
        v175 = v16;
        v17 = v176;
        v20 = v5;
        if (v5 > v219)
        {
          goto LABEL_50;
        }
      }

      v17 = v16;
      v16 = v175;
      v20 = v5;
LABEL_50:
      if (v20 >= v219)
      {
        goto LABEL_327;
      }
    }

    while (1)
    {
      v87 = v20 + 1;
      v90 = (v20 + 1 - v10 - v16);
      if (v90 >= v11)
      {
        v91 = (v10 + v90);
      }

      else
      {
        v91 = (v217 + v90 - v214);
      }

      if ((v90 - v11) > 0xFFFFFFFC || *v91 != *v87)
      {
        goto LABEL_143;
      }

      if (v90 >= v11)
      {
        v92 = v8;
      }

      else
      {
        v92 = v213;
      }

      v93 = v20 + 5;
      v94 = v91 + 1;
      v95 = &v20[v92 - (v91 + 1) + 5];
      if (v95 >= v8)
      {
        v95 = v8;
      }

      if (v95 - 7 <= v93)
      {
        v96 = (v91 + 1);
        v98 = v20 + 5;
      }

      else
      {
        if (*v94 != *v93)
        {
          v101 = __clz(__rbit64(*v93 ^ *v94)) >> 3;
          goto LABEL_118;
        }

        v96 = (v91 + 3);
        v97 = (v20 + 13);
        while (1)
        {
          v98 = v97;
          if (v97 >= v95 - 7)
          {
            break;
          }

          v100 = *v96;
          v96 += 4;
          v99 = v100;
          v97 += 8;
          if (v100 != *v98)
          {
            v101 = v98 + (__clz(__rbit64(*v98 ^ v99)) >> 3) - v93;
            goto LABEL_118;
          }
        }
      }

      if (v98 < v95 - 3 && *v96 == *v98)
      {
        v96 += 2;
        v98 = (v98 + 4);
      }

      if (v98 < v95 - 1 && *v96 == *v98)
      {
        ++v96;
        v98 = (v98 + 2);
      }

      if (v98 < v95 && *v96 == *v98)
      {
        v98 = (v98 + 1);
      }

      v101 = v98 - v93;
LABEL_118:
      if (v94 + v101 != v92)
      {
        if (v101 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_143;
        }

        goto LABEL_141;
      }

      v102 = &v93[v101];
      if (v210 <= v102)
      {
        v109 = v211;
        v108 = v102;
      }

      else
      {
        if (*v211 != *v102)
        {
          v110 = __clz(__rbit64(*v102 ^ *v211)) >> 3;
          goto LABEL_140;
        }

        v103 = 0;
        v104 = &v20[v101];
        while (1)
        {
          v105 = &v104[v103 + 13];
          if (v105 >= v210)
          {
            break;
          }

          v106 = *(v209 + v103);
          v107 = *v105;
          v103 += 8;
          if (v106 != v107)
          {
            v108 = &v104[v103 + 5 + (__clz(__rbit64(v107 ^ v106)) >> 3)];
            goto LABEL_139;
          }
        }

        v109 = (v209 + v103);
        v108 = &v20[v101 + 13 + v103];
      }

      if (v108 < v207 && *v109 == *v108)
      {
        v109 = (v109 + 4);
        v108 += 4;
      }

      if (v108 < v206 && *v109 == *v108)
      {
        v109 = (v109 + 2);
        v108 += 2;
      }

      if (v108 < v8 && *v109 == *v108)
      {
        ++v108;
      }

LABEL_139:
      v110 = v108 - v102;
LABEL_140:
      v101 += v110;
      if (v101 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_143;
      }

LABEL_141:
      v111 = v101 + 4;
      if (3 * v111 > (__clz(v85) + 3 * v83 - 30))
      {
        v86 = v20 + 1;
        v85 = 1;
        v83 = v111;
      }

LABEL_143:
      *v220 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v216, v20 + 1, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v216, v20 + 1, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v216, v20 + 1, v8, v220);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v216, v20 + 1, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v216, v20 + 1, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v216, v20 + 1, v8, v220);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v216, v20 + 1, v8, v220);
      }

      else if (v15 == 5)
      {
        BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v216, v20 + 1, v8, v220);
      }

      else
      {
        BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v216, v20 + 1, v8, v220);
      }

      LODWORD(v11) = v215;
      v15 = v218;
      if (BestMatch_dictMatchState_6_5 < 4 || (v88 = *v220, (__clz(v220[0]) + 4 * BestMatch_dictMatchState_6_5 - 31) <= (__clz(v85) + 4 * v83 - 27)))
      {
        if (v87 >= v219)
        {
          v87 = v86;
          v88 = v85;
          BestMatch_dictMatchState_6_5 = v83;
          goto LABEL_196;
        }

        v87 = v20 + 2;
        v112 = (v20 + 2 - v10 - v16);
        v113 = v217 + v112 - v214;
        if (v112 >= v215)
        {
          v113 = v10 + v112;
        }

        if (v112 - v215 <= 0xFFFFFFFC && *v113 == *v87)
        {
          if (v112 >= v215)
          {
            v114 = v8;
          }

          else
          {
            v114 = v213;
          }

          v115 = ZSTD_count_2segments(v20 + 6, (v113 + 4), v8, v114, v211);
          if (v115 > 0xFFFFFFFFFFFFFFFBLL)
          {
            v15 = v218;
          }

          else
          {
            v15 = v218;
            if ((__clz(v85) + 4 * v83 - 30) < 4 * (v115 + 4))
            {
              v86 = v20 + 2;
              v85 = 1;
              v83 = v115 + 4;
            }
          }
        }

        *v220 = 999999999;
        if (v13 == 6)
        {
          if (v15 == 6)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v216, v20 + 2, v8, v220);
          }

          else if (v15 == 5)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v216, v20 + 2, v8, v220);
          }

          else
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v216, v20 + 2, v8, v220);
          }
        }

        else if (v13 == 5)
        {
          if (v15 == 6)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v216, v20 + 2, v8, v220);
          }

          else if (v15 == 5)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v216, v20 + 2, v8, v220);
          }

          else
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v216, v20 + 2, v8, v220);
          }
        }

        else if (v15 == 6)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v216, v20 + 2, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v216, v20 + 2, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v216, v20 + 2, v8, v220);
        }

        LODWORD(v11) = v215;
        if (BestMatch_dictMatchState_6_5 < 4 || (v88 = *v220, (__clz(v220[0]) + 4 * BestMatch_dictMatchState_6_5 - 31) <= (__clz(v85) + 4 * v83 - 24)))
        {
          v87 = v86;
          v88 = v85;
          BestMatch_dictMatchState_6_5 = v83;
          v15 = v218;
          goto LABEL_196;
        }

        v15 = v218;
      }

      v20 = v87;
      v83 = BestMatch_dictMatchState_6_5;
      v85 = v88;
      v86 = v87;
      if (v87 >= v219)
      {
        goto LABEL_196;
      }
    }
  }

LABEL_327:
  *a3 = v16;
  a3[1] = v17;
  return v8 - v5;
}

int64_t ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  v205 = v14;
  if (v14 >= 6)
  {
    v14 = 6;
  }

  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = *(a1 + 248);
  v19 = *(v18 + 24);
  v217 = *(v18 + 8);
  v211 = (v10 + v11);
  v202 = (v217 + v19);
  v213 = *v18;
  if (a4 - (v10 + v11) - (v217 + v19) + *v18)
  {
    v20 = a4;
  }

  else
  {
    v20 = a4 + 1;
  }

  *(a1 + 300) = 0;
  v21 = *(a1 + 44);
  v22 = v9 - (v10 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  v219 = v9;
  if (v9 >= v10 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 112);
    v27 = *(a1 + 56);
    v28 = *(a1 + 52);
    v29 = *(a1 + 96);
    v30 = 56 - v28;
    v31 = 24 - v28;
    v32 = a1 + 64;
    if (v205 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v33 = 0xCF1BBCDCBF9B0000 * *(v10 + v21);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v34) = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
            goto LABEL_25;
          }

          v33 = 0xCF1BBCDCBB000000 * *(v10 + v21);
        }

        v34 = (v33 ^ v29) >> v30;
LABEL_25:
        v35 = v34 >> 8 << v15;
        _X3 = v26 + 4 * v35;
        __asm { PRFM            #0, [X3] }

        _X2 = v27 + v35;
        __asm { PRFM            #0, [X2] }

        *(v32 + 4 * (v21++ & 7)) = v34;
        if (v25 == v21)
        {
          goto LABEL_46;
        }
      }
    }

    if (v205 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v44 = 0xCF1BBCDCBF9B0000 * *(v10 + v21);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v45) = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
            goto LABEL_34;
          }

          v44 = 0xCF1BBCDCBB000000 * *(v10 + v21);
        }

        v45 = (v44 ^ v29) >> v30;
LABEL_34:
        v46 = v45 >> 8 << v15;
        _X3 = v26 + 4 * v46;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v27 + v46;
        __asm { PRFM            #0, [X2] }

        *(v32 + 4 * (v21++ & 7)) = v45;
        if (v25 == v21)
        {
          goto LABEL_46;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v60 = ((0xCF1BBCDCBF9B0000 * *(v10 + v21)) ^ v29) >> v30;
        v61 = v60 >> 8 << v15;
        _X0 = v26 + 4 * v61;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v61;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v60;
      }

      while (v25 != v21);
    }

    else if (v13 == 5)
    {
      do
      {
        v52 = ((0xCF1BBCDCBB000000 * *(v10 + v21)) ^ v29) >> v30;
        v53 = v52 >> 8 << v15;
        _X0 = v26 + 4 * v53;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v53;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v52;
      }

      while (v25 != v21);
    }

    else
    {
      do
      {
        v68 = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
        v69 = v68 >> 8 << v15;
        _X0 = v26 + 4 * v69;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v69;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v68;
      }

      while (v25 != v21);
    }
  }

LABEL_46:
  if (v20 < v219)
  {
    v210 = v8 - 7;
    v206 = v8 - 1;
    v207 = v8 - 3;
    v203 = v7 + 64;
    v214 = v11 + v217 - v213;
    v215 = v11;
    v216 = v7;
    v218 = v15;
    v204 = a2;
    v208 = v8 - 32;
    v209 = v11 + v10 + 8;
    while (1)
    {
      v212 = v17;
      v77 = (v20 - v10 - v16 + 1);
      v78 = v217 + v77 - v214;
      if (v77 >= v11)
      {
        v78 = v10 + v77;
      }

      if ((v77 - v11) <= 0xFFFFFFFC && *v78 == *(v20 + 1))
      {
        if (v77 >= v11)
        {
          v79 = v8;
        }

        else
        {
          v79 = v213;
        }

        v80 = ZSTD_count_2segments(v20 + 5, (v78 + 4), v8, v79, v211);
        v15 = v218;
        v81 = v80 + 4;
      }

      else
      {
        v81 = 0;
      }

      *v220 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v7, v20, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v7, v20, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v7, v20, v8, v220);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v7, v20, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v7, v20, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v7, v20, v8, v220);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v7, v20, v8, v220);
      }

      else if (v15 == 5)
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v7, v20, v8, v220);
      }

      else
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v7, v20, v8, v220);
      }

      if (BestMatch_dedicatedDictSearch_6_6 <= v81)
      {
        v83 = v81;
      }

      else
      {
        v83 = BestMatch_dedicatedDictSearch_6_6;
      }

      LODWORD(v11) = v215;
      if (v83 < 4)
      {
        v76 = v20 - v5;
        v20 += ((v20 - v5) >> 8) + 1;
        v7 = v216;
        *(v216 + 300) = v76 > 0x7FF;
        v15 = v218;
LABEL_49:
        v17 = v212;
        goto LABEL_50;
      }

      v84 = BestMatch_dedicatedDictSearch_6_6 > v81;
      v85 = BestMatch_dedicatedDictSearch_6_6 <= v81 ? 1 : *v220;
      v86 = v84 ? v20 : v20 + 1;
      v87 = v86;
      v88 = v85;
      BestMatch_dedicatedDictSearch_6_5 = v83;
      v15 = v218;
      if (v20 < v219)
      {
        break;
      }

LABEL_196:
      if (v88 <= 3)
      {
        v7 = v216;
        v120 = v205;
        v123 = v8 - 7;
        v119 = v203;
      }

      else
      {
        v116 = v87 - (v88 + v10) + 3;
        v117 = v211;
        if (v11 > v116)
        {
          v117 = v202;
        }

        v118 = v217 - v214;
        v119 = v203;
        if (v11 <= v87 - (v88 + v10) + 3)
        {
          v118 = v10;
        }

        v120 = v205;
        if (v87 <= v5 || v118 + v116 <= v117)
        {
          v7 = v216;
          v123 = v8 - 7;
        }

        else
        {
          v121 = (v118 + v116 - 1);
          v122 = (v87 - 1);
          v7 = v216;
          v123 = v8 - 7;
          while (*v122 == *v121)
          {
            ++BestMatch_dedicatedDictSearch_6_5;
            v124 = v122 - 1;
            if (v122 > v5)
            {
              --v122;
              v84 = v121-- > v117;
              if (v84)
              {
                continue;
              }
            }

            v87 = (v124 + 1);
            goto LABEL_211;
          }

          v87 = (v122 + 1);
        }

LABEL_211:
        v212 = v16;
        v16 = (v88 - 3);
      }

      v125 = v87 - v5;
      v126 = *(v204 + 24);
      if (v87 > v208)
      {
        if (v5 <= v208)
        {
          v127 = (v126 + v208 - v5);
          *v126 = *v5;
          if (v208 - v5 >= 17)
          {
            v134 = v126 + 1;
            v135 = (v5 + 32);
            do
            {
              *v134 = *(v135 - 1);
              v136 = *v135;
              v135 += 2;
              v134[1] = v136;
              v134 += 2;
            }

            while (v134 < v127);
            v5 = v8 - 32;
          }

          else
          {
            v5 = v8 - 32;
          }

          v126 = v127;
        }

        if (v5 >= v87)
        {
          goto LABEL_243;
        }

        v137 = v87 - v5;
        if ((v87 - v5) < 8)
        {
          v139 = v126;
          goto LABEL_242;
        }

        if ((v126 - v5) < 0x20)
        {
          v139 = v126;
          goto LABEL_242;
        }

        if (v137 >= 0x20)
        {
          v138 = v137 & 0xFFFFFFFFFFFFFFE0;
          v140 = (v5 + 16);
          v141 = v126 + 1;
          v142 = v137 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v143 = *v140;
            *(v141 - 1) = *(v140 - 1);
            *v141 = v143;
            v140 += 2;
            v141 += 2;
            v142 -= 32;
          }

          while (v142);
          if (v137 == v138)
          {
            goto LABEL_243;
          }

          if ((v137 & 0x18) == 0)
          {
            v5 += v138;
            v139 = v126 + v138;
            do
            {
LABEL_242:
              v149 = *v5++;
              *v139++ = v149;
            }

            while (v5 != v87);
            goto LABEL_243;
          }
        }

        else
        {
          v138 = 0;
        }

        v144 = v137 & 0xFFFFFFFFFFFFFFF8;
        v139 = v126 + (v137 & 0xFFFFFFFFFFFFFFF8);
        v145 = v138 - (v137 & 0xFFFFFFFFFFFFFFF8);
        v146 = &v5[v138];
        v147 = (v126 + v138);
        do
        {
          v148 = *v146;
          v146 += 8;
          *v147++ = v148;
          v145 += 8;
        }

        while (v145);
        if (v137 != v144)
        {
          v5 += v144;
          goto LABEL_242;
        }

LABEL_243:
        *(v204 + 24) += v125;
        v133 = *(v204 + 8);
        if (v125 >= 0x10000)
        {
          v150 = (v133 - *v204) >> 3;
          *(v204 + 72) = 1;
          *(v204 + 76) = v150;
        }

        goto LABEL_245;
      }

      *v126 = *v5;
      v128 = *(v204 + 24);
      if (v125 > 0x10)
      {
        *(v128 + 16) = *(v5 + 1);
        if (v125 >= 33)
        {
          v129 = v128 + v125;
          v130 = (v128 + 32);
          v131 = (v5 + 48);
          do
          {
            *v130 = *(v131 - 1);
            v132 = *v131;
            v131 += 2;
            v130[1] = v132;
            v130 += 2;
          }

          while (v130 < v129);
        }

        goto LABEL_243;
      }

      *(v204 + 24) = v128 + v125;
      v133 = *(v204 + 8);
LABEL_245:
      *(v133 + 4) = v125;
      *v133 = v88;
      if (BestMatch_dedicatedDictSearch_6_5 - 3 >= 0x10000)
      {
        v151 = (v133 - *v204) >> 3;
        *(v204 + 72) = 2;
        *(v204 + 76) = v151;
      }

      *(v133 + 6) = BestMatch_dedicatedDictSearch_6_5 - 3;
      v152 = v133 + 8;
      *(v204 + 8) = v133 + 8;
      if (*(v7 + 300))
      {
        v153 = *(v7 + 44);
        v154 = v219 - (v10 + v153);
        if ((v154 + 1) < 8)
        {
          v155 = v154 + 1;
        }

        else
        {
          v155 = 8;
        }

        if (v219 >= v10 + v153)
        {
          v156 = v155;
        }

        else
        {
          v156 = 0;
        }

        v157 = (v156 + v153);
        if (v153 < v157)
        {
          v158 = *(v7 + 112);
          v159 = *(v7 + 56);
          v160 = *(v7 + 52);
          v161 = *(v7 + 96);
          v162 = 56 - v160;
          v163 = 24 - v160;
          do
          {
            if (v13 == 5)
            {
              v166 = 0xCF1BBCDCBB000000 * *(v10 + v153);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v167) = ((-1640531535 * *(v10 + v153)) ^ v161) >> v163;
                goto LABEL_264;
              }

              v166 = 0xCF1BBCDCBF9B0000 * *(v10 + v153);
            }

            v167 = (v166 ^ v161) >> v162;
LABEL_264:
            v168 = v167 >> 8 << v15;
            _X1 = v158 + 4 * v168;
            __asm { PRFM            #0, [X1] }

            if (v120 <= 4)
            {
              _X17 = v159 + v168;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v159 + v168;
              __asm { PRFM            #0, [X17] }

              if (v120 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v119 + 4 * (v153++ & 7)) = v167;
          }

          while (v157 != v153);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v87[BestMatch_dedicatedDictSearch_6_5];
      if (&v87[BestMatch_dedicatedDictSearch_6_5] > v219)
      {
        v20 = &v87[BestMatch_dedicatedDictSearch_6_5];
        goto LABEL_49;
      }

      v175 = v16;
      v176 = v212;
      while (1)
      {
        v16 = v176;
        v176 = v175;
        v177 = (v5 - v10 - v16);
        v178 = v177 >= v11 ? v10 : v217 - v214;
        if ((v177 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v179 = v178 + v177;
        if (*(v178 + v177) != *v5)
        {
          break;
        }

        if (v177 >= v11)
        {
          v180 = v8;
        }

        else
        {
          v180 = v213;
        }

        v181 = v5 + 4;
        v182 = (v179 + 4);
        v183 = &v180[v5 - v179];
        if (v183 >= v8)
        {
          v183 = v8;
        }

        if (v183 - 7 <= v181)
        {
          v184 = v182;
          v186 = v5 + 4;
        }

        else
        {
          if (*v182 != *v181)
          {
            v189 = __clz(__rbit64(*v181 ^ *v182)) >> 3;
            goto LABEL_300;
          }

          v184 = (v178 + v177 + 12);
          v185 = (v5 + 12);
          while (1)
          {
            v186 = v185;
            if (v185 >= (v183 - 7))
            {
              break;
            }

            v188 = *v184;
            v184 += 4;
            v187 = v188;
            v185 += 8;
            if (v188 != *v186)
            {
              v189 = &v186[__clz(__rbit64(*v186 ^ v187)) >> 3] - v181;
              goto LABEL_300;
            }
          }
        }

        if (v186 < v183 - 3 && *v184 == *v186)
        {
          v184 += 2;
          v186 += 4;
        }

        if (v186 < v183 - 1 && *v184 == *v186)
        {
          ++v184;
          v186 += 2;
        }

        if (v186 < v183 && *v184 == *v186)
        {
          ++v186;
        }

        v189 = v186 - v181;
LABEL_300:
        if (v182 + v189 == v180)
        {
          v191 = &v181[v189];
          if (v123 > v191)
          {
            if (*v211 == *v191)
            {
              v192 = 0;
              v193 = &v5[v189];
              while (1)
              {
                v194 = &v193[v192 + 12];
                if (v194 >= v123)
                {
                  break;
                }

                v195 = *(v209 + v192);
                v196 = *v194;
                v192 += 8;
                if (v195 != v196)
                {
                  v197 = &v193[v192 + 4 + (__clz(__rbit64(v196 ^ v195)) >> 3)];
                  goto LABEL_323;
                }
              }

              v198 = (v209 + v192);
              v197 = &v5[v189 + 12 + v192];
LABEL_314:
              if (v197 < v207 && *v198 == *v197)
              {
                v198 = (v198 + 4);
                v197 += 4;
              }

              if (v197 < v206 && *v198 == *v197)
              {
                v198 = (v198 + 2);
                v197 += 2;
              }

              if (v197 < v8 && *v198 == *v197)
              {
                ++v197;
              }

LABEL_323:
              v199 = v197 - v191;
            }

            else
            {
              v199 = __clz(__rbit64(*v191 ^ *v211)) >> 3;
            }

            v189 += v199;
            if (v5 > v208)
            {
              goto LABEL_303;
            }

LABEL_302:
            **(v204 + 24) = *v5;
            v152 = *(v204 + 8);
            goto LABEL_303;
          }

          v198 = v211;
          v197 = v191;
          goto LABEL_314;
        }

        if (v5 <= v208)
        {
          goto LABEL_302;
        }

LABEL_303:
        *(v152 + 4) = 0;
        *v152 = 1;
        if (v189 + 1 >= 0x10000)
        {
          v190 = (v152 - *v204) >> 3;
          *(v204 + 72) = 2;
          *(v204 + 76) = v190;
        }

        *(v152 + 6) = v189 + 1;
        v152 += 8;
        v5 += v189 + 4;
        *(v204 + 8) = v152;
        v175 = v16;
        v17 = v176;
        v20 = v5;
        if (v5 > v219)
        {
          goto LABEL_50;
        }
      }

      v17 = v16;
      v16 = v175;
      v20 = v5;
LABEL_50:
      if (v20 >= v219)
      {
        goto LABEL_327;
      }
    }

    while (1)
    {
      v87 = v20 + 1;
      v90 = (v20 + 1 - v10 - v16);
      if (v90 >= v11)
      {
        v91 = (v10 + v90);
      }

      else
      {
        v91 = (v217 + v90 - v214);
      }

      if ((v90 - v11) > 0xFFFFFFFC || *v91 != *v87)
      {
        goto LABEL_143;
      }

      if (v90 >= v11)
      {
        v92 = v8;
      }

      else
      {
        v92 = v213;
      }

      v93 = v20 + 5;
      v94 = v91 + 1;
      v95 = &v20[v92 - (v91 + 1) + 5];
      if (v95 >= v8)
      {
        v95 = v8;
      }

      if (v95 - 7 <= v93)
      {
        v96 = (v91 + 1);
        v98 = v20 + 5;
      }

      else
      {
        if (*v94 != *v93)
        {
          v101 = __clz(__rbit64(*v93 ^ *v94)) >> 3;
          goto LABEL_118;
        }

        v96 = (v91 + 3);
        v97 = (v20 + 13);
        while (1)
        {
          v98 = v97;
          if (v97 >= v95 - 7)
          {
            break;
          }

          v100 = *v96;
          v96 += 4;
          v99 = v100;
          v97 += 8;
          if (v100 != *v98)
          {
            v101 = v98 + (__clz(__rbit64(*v98 ^ v99)) >> 3) - v93;
            goto LABEL_118;
          }
        }
      }

      if (v98 < v95 - 3 && *v96 == *v98)
      {
        v96 += 2;
        v98 = (v98 + 4);
      }

      if (v98 < v95 - 1 && *v96 == *v98)
      {
        ++v96;
        v98 = (v98 + 2);
      }

      if (v98 < v95 && *v96 == *v98)
      {
        v98 = (v98 + 1);
      }

      v101 = v98 - v93;
LABEL_118:
      if (v94 + v101 != v92)
      {
        if (v101 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_143;
        }

        goto LABEL_141;
      }

      v102 = &v93[v101];
      if (v210 <= v102)
      {
        v109 = v211;
        v108 = v102;
      }

      else
      {
        if (*v211 != *v102)
        {
          v110 = __clz(__rbit64(*v102 ^ *v211)) >> 3;
          goto LABEL_140;
        }

        v103 = 0;
        v104 = &v20[v101];
        while (1)
        {
          v105 = &v104[v103 + 13];
          if (v105 >= v210)
          {
            break;
          }

          v106 = *(v209 + v103);
          v107 = *v105;
          v103 += 8;
          if (v106 != v107)
          {
            v108 = &v104[v103 + 5 + (__clz(__rbit64(v107 ^ v106)) >> 3)];
            goto LABEL_139;
          }
        }

        v109 = (v209 + v103);
        v108 = &v20[v101 + 13 + v103];
      }

      if (v108 < v207 && *v109 == *v108)
      {
        v109 = (v109 + 4);
        v108 += 4;
      }

      if (v108 < v206 && *v109 == *v108)
      {
        v109 = (v109 + 2);
        v108 += 2;
      }

      if (v108 < v8 && *v109 == *v108)
      {
        ++v108;
      }

LABEL_139:
      v110 = v108 - v102;
LABEL_140:
      v101 += v110;
      if (v101 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_143;
      }

LABEL_141:
      v111 = v101 + 4;
      if (3 * v111 > (__clz(v85) + 3 * v83 - 30))
      {
        v86 = v20 + 1;
        v85 = 1;
        v83 = v111;
      }

LABEL_143:
      *v220 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v216, v20 + 1, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v216, v20 + 1, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v216, v20 + 1, v8, v220);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v216, v20 + 1, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v216, v20 + 1, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v216, v20 + 1, v8, v220);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v216, v20 + 1, v8, v220);
      }

      else if (v15 == 5)
      {
        BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v216, v20 + 1, v8, v220);
      }

      else
      {
        BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v216, v20 + 1, v8, v220);
      }

      LODWORD(v11) = v215;
      v15 = v218;
      if (BestMatch_dedicatedDictSearch_6_5 < 4 || (v88 = *v220, (__clz(v220[0]) + 4 * BestMatch_dedicatedDictSearch_6_5 - 31) <= (__clz(v85) + 4 * v83 - 27)))
      {
        if (v87 >= v219)
        {
          v87 = v86;
          v88 = v85;
          BestMatch_dedicatedDictSearch_6_5 = v83;
          goto LABEL_196;
        }

        v87 = v20 + 2;
        v112 = (v20 + 2 - v10 - v16);
        v113 = v217 + v112 - v214;
        if (v112 >= v215)
        {
          v113 = v10 + v112;
        }

        if (v112 - v215 <= 0xFFFFFFFC && *v113 == *v87)
        {
          if (v112 >= v215)
          {
            v114 = v8;
          }

          else
          {
            v114 = v213;
          }

          v115 = ZSTD_count_2segments(v20 + 6, (v113 + 4), v8, v114, v211);
          if (v115 > 0xFFFFFFFFFFFFFFFBLL)
          {
            v15 = v218;
          }

          else
          {
            v15 = v218;
            if ((__clz(v85) + 4 * v83 - 30) < 4 * (v115 + 4))
            {
              v86 = v20 + 2;
              v85 = 1;
              v83 = v115 + 4;
            }
          }
        }

        *v220 = 999999999;
        if (v13 == 6)
        {
          if (v15 == 6)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v216, v20 + 2, v8, v220);
          }

          else if (v15 == 5)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v216, v20 + 2, v8, v220);
          }

          else
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v216, v20 + 2, v8, v220);
          }
        }

        else if (v13 == 5)
        {
          if (v15 == 6)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v216, v20 + 2, v8, v220);
          }

          else if (v15 == 5)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v216, v20 + 2, v8, v220);
          }

          else
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v216, v20 + 2, v8, v220);
          }
        }

        else if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v216, v20 + 2, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v216, v20 + 2, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v216, v20 + 2, v8, v220);
        }

        LODWORD(v11) = v215;
        if (BestMatch_dedicatedDictSearch_6_5 < 4 || (v88 = *v220, (__clz(v220[0]) + 4 * BestMatch_dedicatedDictSearch_6_5 - 31) <= (__clz(v85) + 4 * v83 - 24)))
        {
          v87 = v86;
          v88 = v85;
          BestMatch_dedicatedDictSearch_6_5 = v83;
          v15 = v218;
          goto LABEL_196;
        }

        v15 = v218;
      }

      v20 = v87;
      v83 = BestMatch_dedicatedDictSearch_6_5;
      v85 = v88;
      v86 = v87;
      if (v87 >= v219)
      {
        goto LABEL_196;
      }
    }
  }

LABEL_327:
  *a3 = v16;
  a3[1] = v17;
  return v8 - v5;
}

uint64_t ZSTD_compressBlock_btlazy2(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = *a3;
  v13 = a3[1];
  v108 = v8 + v9;
  if (a4 == v8 + v9)
  {
    v14 = a4 + 1;
  }

  else
  {
    v14 = a4;
  }

  v15 = v14 - v8;
  v16 = 1 << *(a1 + 256);
  if (v15 - v9 > v16 && *(a1 + 40) == 0)
  {
    LODWORD(v9) = v15 - v16;
  }

  v18 = v15 - v9;
  if (v13 <= v15 - v9)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  if (v12 <= v18)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 300) = 0;
  v115 = &a4[a5 - 8];
  if (v14 < v115)
  {
    v21 = a1;
    v104 = v15 - v9;
    v105 = v13;
    v106 = v12;
    v107 = a3;
    v22 = &a4[a5];
    v23 = (v7 - 7);
    v110 = v7 - 1;
    v111 = v7 - 3;
    v109 = v7 - 32;
    v114 = &a4[a5];
    v113 = v11;
    while (1)
    {
      v25 = 0;
      if (!v20 || *&v14[-v20 + 1] != *(v14 + 1))
      {
        goto LABEL_45;
      }

      v26 = v14 + 5;
      v27 = &v14[-v20 + 5];
      if (v23 <= (v14 + 5))
      {
        break;
      }

      if (*v27 == *v26)
      {
        v28 = v14 + 13;
        v27 = &v14[-v20 + 13];
        while (1)
        {
          v29 = v28;
          if (v28 >= v23)
          {
            goto LABEL_33;
          }

          v31 = *v27;
          v27 += 8;
          v30 = v31;
          v28 += 8;
          if (v31 != *v29)
          {
            v29 = (v29 + (__clz(__rbit64(*v29 ^ v30)) >> 3));
            goto LABEL_42;
          }
        }
      }

      v32 = __clz(__rbit64(*v26 ^ *v27)) >> 3;
LABEL_44:
      v25 = v32 + 4;
LABEL_45:
      v116 = 999999999;
      if (v11 == 6)
      {
        BestMatch_noDict_6 = ZSTD_BtFindBestMatch_noDict_6(v21, v14, v22, &v116);
      }

      else if (v11 == 5)
      {
        BestMatch_noDict_6 = ZSTD_BtFindBestMatch_noDict_5(v21, v14, v22, &v116);
      }

      else
      {
        BestMatch_noDict_6 = ZSTD_BtFindBestMatch_noDict_4(v21, v14, v22, &v116);
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v34 = v25;
      }

      else
      {
        v34 = BestMatch_noDict_6;
      }

      if (v34 < 4)
      {
        v24 = v14 - v5;
        v14 += ((v14 - v5) >> 8) + 1;
        *(v21 + 300) = v24 > 0x7FF;
        v22 = v114;
        v11 = v113;
        goto LABEL_23;
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v35 = 1;
      }

      else
      {
        v35 = v116;
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v36 = v14 + 1;
      }

      else
      {
        v36 = v14;
      }

      v37 = v36;
      v38 = v35;
      BestMatch_noDict_5 = v34;
      v22 = v114;
      v11 = v113;
      if (v14 < v115)
      {
        do
        {
          v37 = v14 + 1;
          if (!v35 || !v20 || *v37 != *&v37[-v20])
          {
            goto LABEL_87;
          }

          v40 = v14 + 5;
          v41 = &v14[-v20 + 5];
          if (v23 <= (v14 + 5))
          {
            v43 = v14 + 5;
          }

          else
          {
            if (*v41 != *v40)
            {
              v46 = __clz(__rbit64(*v40 ^ *v41)) >> 3;
LABEL_85:
              v47 = v46 + 4;
              if (3 * v47 > (3 * v34 + __clz(v35) - 30))
              {
                v36 = v14 + 1;
                v35 = 1;
                v34 = v47;
              }

              goto LABEL_87;
            }

            v42 = v14 + 13;
            v41 = &v14[-v20 + 13];
            while (1)
            {
              v43 = v42;
              if (v42 >= v23)
              {
                break;
              }

              v45 = *v41;
              v41 += 8;
              v44 = v45;
              v42 += 8;
              if (v45 != *v43)
              {
                v43 = (v43 + (__clz(__rbit64(*v43 ^ v44)) >> 3));
                goto LABEL_82;
              }
            }
          }

          if (v43 < v111 && *v41 == *v43)
          {
            v41 += 4;
            v43 = (v43 + 4);
          }

          if (v43 < v110 && *v41 == *v43)
          {
            v41 += 2;
            v43 = (v43 + 2);
          }

          if (v43 < v22 && *v41 == *v43)
          {
            v43 = (v43 + 1);
          }

LABEL_82:
          v46 = v43 - v40;
          if (v46 <= 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_85;
          }

LABEL_87:
          v116 = 999999999;
          if (v11 == 6)
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_6(a1, v14 + 1, v22, &v116);
          }

          else if (v11 == 5)
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_5(a1, v14 + 1, v22, &v116);
          }

          else
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_4(a1, v14 + 1, v22, &v116);
          }

          v22 = v114;
          if (BestMatch_noDict_5 >= 4)
          {
            v38 = v116;
            if ((__clz(v116) + 4 * BestMatch_noDict_5 - 31) > (__clz(v35) + 4 * v34 - 27))
            {
              goto LABEL_62;
            }
          }

          v11 = v113;
          if (v37 >= v115)
          {
            v37 = v36;
            v38 = v35;
            BestMatch_noDict_5 = v34;
            break;
          }

          v37 = v14 + 2;
          if (v35 && v20 && *v37 == *&v37[-v20])
          {
            v48 = v14 + 6;
            v49 = &v14[-v20 + 6];
            if (v23 <= (v14 + 6))
            {
              v51 = v14 + 6;
LABEL_105:
              if (v51 < v111 && *v49 == *v51)
              {
                ++v51;
                v49 += 4;
              }

              if (v51 < v110 && *v49 == *v51)
              {
                v51 = (v51 + 2);
                v49 += 2;
              }

              if (v51 < v114 && *v49 == *v51)
              {
                v51 = (v51 + 1);
              }

LABEL_114:
              v54 = v51 - v48;
              if (v54 > 0xFFFFFFFFFFFFFFFBLL)
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (*v49 == *v48)
              {
                v50 = v14 + 14;
                v49 = &v14[-v20 + 14];
                while (1)
                {
                  v51 = v50;
                  if (v50 >= v23)
                  {
                    goto LABEL_105;
                  }

                  v53 = *v49;
                  v49 += 8;
                  v52 = v53;
                  v50 += 8;
                  if (v53 != *v51)
                  {
                    v51 = (v51 + (__clz(__rbit64(*v51 ^ v52)) >> 3));
                    goto LABEL_114;
                  }
                }
              }

              v54 = __clz(__rbit64(*v48 ^ *v49)) >> 3;
            }

            v55 = v54 + 4;
            if ((__clz(v35) + 4 * v34 - 30) < 4 * v55)
            {
              v36 = v14 + 2;
              v35 = 1;
              v34 = v55;
            }
          }

LABEL_119:
          v116 = 999999999;
          if (v113 == 6)
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_6(a1, v14 + 2, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          else if (v113 == 5)
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_5(a1, v14 + 2, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          else
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_4(a1, v14 + 2, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          v38 = v116;
          if ((__clz(v116) + 4 * BestMatch_noDict_5 - 31) <= (__clz(v35) + 4 * v34 - 24))
          {
LABEL_128:
            v37 = v36;
            v38 = v35;
            BestMatch_noDict_5 = v34;
            v22 = v114;
            v11 = v113;
            break;
          }

          v22 = v114;
LABEL_62:
          v11 = v113;
          v14 = v37;
          v34 = BestMatch_noDict_5;
          v35 = v38;
          v36 = v37;
        }

        while (v37 < v115);
      }

      if (v38 <= 3)
      {
        v21 = a1;
        v56 = v109;
      }

      else
      {
        v56 = v109;
        if (v37 <= v5 || &v37[-v38 + 3] <= v108)
        {
          v58 = v37;
          v21 = a1;
        }

        else
        {
          v57 = 2 - v38;
          v58 = v37;
          v21 = a1;
          while (1)
          {
            v59 = *--v58;
            if (v59 != v37[v57])
            {
              break;
            }

            ++BestMatch_noDict_5;
            if (v58 > v5)
            {
              v60 = &v37[v57];
              v37 = v58;
              if (v60 > v108)
              {
                continue;
              }
            }

            goto LABEL_141;
          }

          v58 = v37;
        }

LABEL_141:
        v19 = v20;
        v20 = (v38 - 3);
        v37 = v58;
      }

      v61 = v37 - v5;
      v62 = *(a2 + 24);
      if (v37 > v56)
      {
        if (v5 <= v56)
        {
          v63 = (v62 + v56 - v5);
          *v62 = *v5;
          if (v56 - v5 >= 17)
          {
            v64 = v62 + 1;
            v65 = (v5 + 32);
            do
            {
              *v64 = *(v65 - 1);
              v66 = *v65;
              v65 += 2;
              v64[1] = v66;
              v64 += 2;
            }

            while (v64 < v63);
          }

          v5 = v56;
          v62 = v63;
        }

        if (v5 >= v37)
        {
          goto LABEL_171;
        }

        v67 = v37 - v5;
        if ((v37 - v5) < 8)
        {
          v75 = v62;
          goto LABEL_170;
        }

        if ((v62 - v5) < 0x20)
        {
          v75 = v62;
          goto LABEL_170;
        }

        if (v67 >= 0x20)
        {
          v68 = v67 & 0xFFFFFFFFFFFFFFE0;
          v76 = (v5 + 16);
          v77 = v62 + 1;
          v78 = v67 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v79 = *v76;
            *(v77 - 1) = *(v76 - 1);
            *v77 = v79;
            v76 += 2;
            v77 += 2;
            v78 -= 32;
          }

          while (v78);
          if (v67 == v68)
          {
            goto LABEL_171;
          }

          if ((v67 & 0x18) == 0)
          {
            v5 += v68;
            v75 = v62 + v68;
            do
            {
LABEL_170:
              v85 = *v5++;
              *v75++ = v85;
            }

            while (v5 != v37);
            goto LABEL_171;
          }
        }

        else
        {
          v68 = 0;
        }

        v80 = v67 & 0xFFFFFFFFFFFFFFF8;
        v75 = v62 + (v67 & 0xFFFFFFFFFFFFFFF8);
        v81 = v68 - (v67 & 0xFFFFFFFFFFFFFFF8);
        v82 = &v5[v68];
        v83 = (v62 + v68);
        do
        {
          v84 = *v82;
          v82 += 8;
          *v83++ = v84;
          v81 += 8;
        }

        while (v81);
        if (v67 != v80)
        {
          v5 += v80;
          goto LABEL_170;
        }

LABEL_171:
        *(a2 + 24) += v61;
        v74 = *(a2 + 8);
        if (v61 >= 0x10000)
        {
          v86 = (v74 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v86;
        }

        goto LABEL_173;
      }

      *v62 = *v5;
      v69 = *(a2 + 24);
      if (v61 > 0x10)
      {
        *(v69 + 16) = *(v5 + 1);
        if (v61 >= 33)
        {
          v70 = v69 + v61;
          v71 = (v69 + 32);
          v72 = (v5 + 48);
          do
          {
            *v71 = *(v72 - 1);
            v73 = *v72;
            v72 += 2;
            v71[1] = v73;
            v71 += 2;
          }

          while (v71 < v70);
        }

        goto LABEL_171;
      }

      *(a2 + 24) = v69 + v61;
      v74 = *(a2 + 8);
LABEL_173:
      *(v74 + 4) = v61;
      *v74 = v38;
      if (BestMatch_noDict_5 - 3 >= 0x10000)
      {
        v87 = (v74 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v87;
      }

      *(v74 + 6) = BestMatch_noDict_5 - 3;
      v88 = v74 + 8;
      *(a2 + 8) = v74 + 8;
      if (*(v21 + 300))
      {
        *(v21 + 300) = 0;
      }

      v5 = &v37[BestMatch_noDict_5];
      if (!v19 || v5 > v115)
      {
LABEL_207:
        v14 = v5;
        goto LABEL_23;
      }

      v89 = v20;
      v90 = v19;
      while (1)
      {
        v20 = v90;
        v90 = v89;
        if (*v5 != *&v5[-v20])
        {
          v19 = v20;
          v20 = v89;
          goto LABEL_207;
        }

        v91 = v5 + 4;
        v92 = &v5[-v20 + 4];
        if (v23 <= (v5 + 4))
        {
          v95 = v5 + 4;
        }

        else
        {
          v93 = *v92;
          if (v93 != *v91)
          {
            v98 = __clz(__rbit64(*v91 ^ v93)) >> 3;
            if (v5 <= v56)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
          }

          v94 = v5 + 12;
          v92 = &v5[-v20 + 12];
          while (1)
          {
            v95 = v94;
            if (v94 >= v23)
            {
              break;
            }

            v97 = *v92;
            v92 += 8;
            v96 = v97;
            v94 += 8;
            if (v97 != *v95)
            {
              v95 = (v95 + (__clz(__rbit64(*v95 ^ v96)) >> 3));
              goto LABEL_197;
            }
          }
        }

        if (v95 < v111 && *v92 == *v95)
        {
          v92 += 4;
          v95 = (v95 + 4);
        }

        if (v95 < v110 && *v92 == *v95)
        {
          v92 += 2;
          v95 = (v95 + 2);
        }

        if (v95 < v22 && *v92 == *v95)
        {
          v95 = (v95 + 1);
        }

LABEL_197:
        v98 = v95 - v91;
        if (v5 <= v56)
        {
LABEL_198:
          **(a2 + 24) = *v5;
          v88 = *(a2 + 8);
        }

LABEL_199:
        *(v88 + 4) = 0;
        *v88 = 1;
        if (v98 + 1 >= 0x10000)
        {
          v99 = (v88 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v99;
        }

        *(v88 + 6) = v98 + 1;
        v88 += 8;
        *(a2 + 8) = v88;
        v5 += v98 + 4;
        if (!v90)
        {
          break;
        }

        v89 = v20;
        v19 = v90;
        v14 = v5;
        if (v5 > v115)
        {
          goto LABEL_23;
        }
      }

      v19 = v90;
      v14 = v5;
LABEL_23:
      if (v14 >= v115)
      {
        v7 = v22;
        a3 = v107;
        v13 = v105;
        v12 = v106;
        v18 = v104;
        goto LABEL_210;
      }
    }

    v29 = v14 + 5;
LABEL_33:
    if (v29 < v111 && *v27 == *v29)
    {
      v27 += 4;
      v29 = (v29 + 4);
    }

    if (v29 < v110 && *v27 == *v29)
    {
      v27 += 2;
      v29 = (v29 + 2);
    }

    if (v29 < v22 && *v27 == *v29)
    {
      v29 = (v29 + 1);
    }

LABEL_42:
    v32 = v29 - v26;
    goto LABEL_44;
  }

LABEL_210:
  if (v12 <= v18)
  {
    v100 = 0;
  }

  else
  {
    v100 = v12;
  }

  if (v13 <= v18)
  {
    v101 = 0;
  }

  else
  {
    v101 = v13;
  }

  if (v20)
  {
    v100 = v20;
    v102 = v12 > v18;
  }

  else
  {
    v102 = 0;
  }

  if (v102)
  {
    v101 = v12;
  }

  if (v19)
  {
    v101 = v19;
  }

  *a3 = v100;
  a3[1] = v101;
  return v7 - v5;
}

unint64_t ZSTD_BtFindBestMatch_noDict_4(uint64_t a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 32 - *(a1 + 264);
    do
    {
      v12 = (-1640531535 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 0);
}

unint64_t ZSTD_BtFindBestMatch_noDict_5(uint64_t a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBB000000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 0);
}

unint64_t ZSTD_BtFindBestMatch_noDict_6(uint64_t a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBF9B0000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 0);
}

unint64_t ZSTD_DUBT_findBestMatch(uint64_t a1, char *a2, char *a3, unsigned int *a4, int a5, int a6)
{
  v6 = *(a1 + 112);
  v7 = *(a1 + 264);
  if (a5 == 5)
  {
    v8 = a2;
    v9 = *a2;
    v10 = -1157627904;
    goto LABEL_5;
  }

  if (a5 == 6)
  {
    v8 = a2;
    v9 = *a2;
    v10 = -1080360960;
LABEL_5:
    v11 = (v9 * (v10 | 0xCF1BBCDC00000000)) >> -v7;
    goto LABEL_7;
  }

  v8 = a2;
  v11 = (-1640531535 * *a2) >> -v7;
LABEL_7:
  v12 = *(a1 + 8);
  v13 = v8 - v12;
  v14 = 1 << *(a1 + 256);
  if (v8 - v12 - *(a1 + 28) > v14 && *(a1 + 40) == 0)
  {
    v16 = v8 - v12 - v14;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  v17 = *(a1 + 128);
  v137 = ~(-1 << (*(a1 + 260) - 1));
  v18 = v13 + (-1 << (*(a1 + 260) - 1)) + 1;
  if (v13 < v137)
  {
    v18 = 0;
  }

  v122 = v16;
  v120 = v8 - v12;
  v121 = v18;
  if (v18 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  v20 = 1 << *(a1 + 268);
  v21 = *(v6 + 4 * v11);
  v128 = a1;
  v129 = *(a1 + 128);
  v132 = *(a1 + 8);
  v131 = a6;
  if (v21 <= v19)
  {
    goto LABEL_88;
  }

  v22 = 0;
  v23 = 1 << *(a1 + 268);
  do
  {
    v24 = v21;
    v25 = (v17 + 8 * (v21 & v137));
    v26 = v25[1];
    v27 = v26 == 1 && v23 >= 2;
    if (!v27)
    {
      break;
    }

    v25[1] = v22;
    --v23;
    v21 = *v25;
    v22 = v24;
  }

  while (v21 > v19);
  if (v26 == 1)
  {
    *v25 = 0;
  }

  v24 = v22;
  if (!v22)
  {
LABEL_88:
    v28 = *(a1 + 16);
    goto LABEL_90;
  }

  v117 = v11;
  v118 = v6;
  v126 = v20;
  v124 = v17 + 4;
  v28 = *(a1 + 16);
  do
  {
    v30 = v24;
    v31 = *(v124 + 8 * (v24 & v137));
    v32 = -1 << (*(a1 + 260) - 1);
    v33 = *(a1 + 24);
    v34 = *(a1 + 28);
    if (v33 <= v24)
    {
      v35 = v12;
    }

    else
    {
      v35 = v28;
    }

    v139 = (v28 + v33);
    if (v33 <= v24)
    {
      v36 = a3;
    }

    else
    {
      v36 = (v28 + v33);
    }

    v37 = (v17 + 8 * (v24 & ~v32));
    v29 = v37 + 1;
    v38 = *v37;
    v158[0] = 0;
    v39 = 1 << *(a1 + 256);
    if (v30 - v34 > v39)
    {
      v34 = v30 - v39;
    }

    v133 = v31;
    v134 = v23;
    if (v23 && v38 > v34)
    {
      v40 = 0;
      v41 = 0;
      v42 = ~v32;
      v43 = v36 - 7;
      v44 = v36 - 3;
      v45 = v36 - 1;
      v46 = v35 + v30;
      v148 = v34;
      v130 = v46;
      while (1)
      {
        if (v40 >= v41)
        {
          v47 = v41;
        }

        else
        {
          v47 = v40;
        }

        v48 = v12;
        v151 = v40;
        v154 = v41;
        if (a6 != 1)
        {
          goto LABEL_57;
        }

        v49 = v47 + v38;
        if (v33 > v30 || v49 >= v33)
        {
          break;
        }

        v141 = v28 + v38;
        v144 = v29;
        v50 = (v46 + v47);
        v146 = v37;
        v51 = v19;
        v52 = v28;
        v53 = v30;
        v54 = v33;
        v55 = ZSTD_count_2segments(v50, (v141 + v47), v36, v139, (v12 + v33));
        v33 = v54;
        v29 = v144;
        v37 = v146;
        v30 = v53;
        v45 = v36 - 1;
        v44 = v36 - 3;
        v19 = v51;
        v28 = v52;
        v17 = v129;
        v46 = v130;
        a6 = v131;
        v12 = v132;
        v56 = v55 + v47;
        v43 = v36 - 7;
        v57 = v141;
        if (v56 + v38 >= v33)
        {
          v57 = v132 + v38;
        }

LABEL_77:
        if ((v46 + v56) == v36)
        {
          goto LABEL_32;
        }

        v67 = (v17 + 8 * (v38 & v42));
        if (*(v57 + v56) >= *(v46 + v56))
        {
          *v29 = v38;
          if (v38 <= v19)
          {
            v29 = v158;
            goto LABEL_32;
          }

          v29 = (v17 + 8 * (v38 & v42));
          v41 = v56;
          v40 = v151;
          if (!--v23)
          {
            goto LABEL_32;
          }
        }

        else
        {
          *v37 = v38;
          if (v38 <= v19)
          {
            v37 = v158;
            goto LABEL_32;
          }

          v37 = ++v67;
          v40 = v56;
          v41 = v154;
          if (!--v23)
          {
            goto LABEL_32;
          }
        }

        v38 = *v67;
        if (*v67 <= v148)
        {
          goto LABEL_32;
        }
      }

      if (v49 >= v33)
      {
        v48 = v12;
      }

      else
      {
        v48 = v28;
      }

LABEL_57:
      v57 = v48 + v38;
      v58 = (v46 + v47);
      v59 = (v57 + v47);
      if (v43 <= v46 + v47)
      {
        v63 = (v46 + v47);
        if (v58 >= v44)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v60 = *v59;
        if (v60 != *v58)
        {
          v66 = __clz(__rbit64(*v58 ^ v60)) >> 3;
          goto LABEL_76;
        }

        v61 = v48 + v38 + 8;
        v62 = v46;
        while (1)
        {
          v63 = (v62 + v47 + 8);
          if (v63 >= v43)
          {
            break;
          }

          v64 = *(v61 + v47);
          v65 = *v63;
          v61 += 8;
          v62 += 8;
          if (v64 != v65)
          {
            v63 = (v62 + v47 + (__clz(__rbit64(v65 ^ v64)) >> 3));
            goto LABEL_74;
          }
        }

        v59 = (v61 + v47);
        if (v63 >= v44)
        {
LABEL_66:
          if (v63 >= v45)
          {
            if (v63 >= v36)
            {
LABEL_74:
              v66 = v63 - v58;
LABEL_76:
              v56 = v66 + v47;
              goto LABEL_77;
            }
          }

          else
          {
            if (*v59 == *v63)
            {
              ++v59;
              ++v63;
            }

            if (v63 >= v36)
            {
              goto LABEL_74;
            }
          }

          if (*v59 == *v63)
          {
            v63 = (v63 + 1);
          }

          goto LABEL_74;
        }
      }

      if (*v59 == *v63)
      {
        v59 += 2;
        v63 += 2;
      }

      goto LABEL_66;
    }

LABEL_32:
    *v29 = 0;
    *v37 = 0;
    v24 = v133;
    v23 = v134 + 1;
    a1 = v128;
  }

  while (v133);
  v20 = v126;
  v11 = v117;
  v6 = v118;
LABEL_90:
  v68 = *(a1 + 24);
  v69 = (v17 + 8 * (v137 & v120));
  v70 = v69 + 1;
  v71 = (v120 + 9);
  v157 = 0;
  v72 = *(v6 + 4 * v11);
  *(v6 + 4 * v11) = v120;
  if (v72 <= v122)
  {
    v73 = 0;
    v77 = a2;
    goto LABEL_137;
  }

  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = a3 - 7;
  v142 = v12 + 8;
  v77 = a2;
  while (2)
  {
    v127 = v20;
    if (v75 >= v74)
    {
      v78 = v74;
    }

    else
    {
      v78 = v75;
    }

    v79 = v72;
    v80 = &v77[v78];
    if (a6 != 1 || v78 + v72 >= v68)
    {
      v89 = v12 + v72;
      v90 = (v89 + v78);
      if (v76 <= v80)
      {
        v93 = &v77[v78];
      }

      else
      {
        if (*v90 != *v80)
        {
          v96 = __clz(__rbit64(*v80 ^ *v90)) >> 3;
          goto LABEL_122;
        }

        v91 = v142 + v72;
        v92 = a2;
        while (1)
        {
          v93 = &v92[v78 + 8];
          if (v93 >= v76)
          {
            break;
          }

          v94 = *(v91 + v78);
          v95 = *v93;
          v91 += 8;
          v92 += 8;
          if (v94 != v95)
          {
            v93 = &v92[v78 + (__clz(__rbit64(v95 ^ v94)) >> 3)];
            goto LABEL_121;
          }
        }

        v90 = (v91 + v78);
      }

      if (v93 < a3 - 3 && *v90 == *v93)
      {
        v90 = (v90 + 4);
        v93 += 4;
      }

      if (v93 < a3 - 1 && *v90 == *v93)
      {
        v90 = (v90 + 2);
        v93 += 2;
      }

      if (v93 < a3 && *v90 == *v93)
      {
        ++v93;
      }

LABEL_121:
      v96 = v93 - v80;
LABEL_122:
      v88 = v96 + v78;
      v77 = a2;
      if (v88 <= v73)
      {
        goto LABEL_102;
      }

      break;
    }

    v149 = v72;
    v81 = v28 + v72;
    v155 = v69;
    v82 = v73;
    v152 = v74;
    v83 = v71;
    v84 = v28;
    v85 = v75;
    v86 = v68;
    v87 = ZSTD_count_2segments(v80, (v28 + v79 + v78), a3, (v28 + v68), (v12 + v68));
    v68 = v86;
    v75 = v85;
    v73 = v82;
    v28 = v84;
    v71 = v83;
    v74 = v152;
    v69 = v155;
    v17 = v129;
    v12 = v132;
    v88 = v87 + v78;
    if (v87 + v78 + v79 >= v68)
    {
      v89 = v132 + v79;
    }

    else
    {
      v89 = v81;
    }

    v72 = v149;
    v77 = a2;
    v20 = v127;
    if (v88 <= v82)
    {
LABEL_102:
      a6 = v131;
LABEL_129:
      v97 = (v17 + 8 * (v72 & v137));
      if (*(v89 + v88) >= v77[v88])
      {
        *v70 = v72;
        if (v72 <= v121)
        {
          v70 = &v157;
          goto LABEL_137;
        }

        v74 = v88;
        v70 = (v17 + 8 * (v72 & v137));
        if (!--v20)
        {
          goto LABEL_137;
        }
      }

      else
      {
        *v69 = v72;
        if (v72 <= v121)
        {
          v69 = &v157;
          goto LABEL_137;
        }

        v69 = v97 + 1;
        v75 = v88;
        ++v97;
        if (!--v20)
        {
          goto LABEL_137;
        }
      }

      v72 = *v97;
      if (*v97 <= v122)
      {
        goto LABEL_137;
      }

      continue;
    }

    break;
  }

  if (v88 <= v71 - v72)
  {
    v71 = v71;
  }

  else
  {
    v71 = v72 + v88;
  }

  a6 = v131;
  if ((__clz(*a4) - __clz(v120 - v72 + 1)) < 4 * (v88 - v73))
  {
    *a4 = v120 - v72 + 3;
    v73 = v88;
  }

  if (&v77[v88] != a3)
  {
    goto LABEL_129;
  }

  if (v131 == 2)
  {
    v20 = 0;
  }

LABEL_137:
  *v70 = 0;
  *v69 = 0;
  if (a6 == 2 && v20)
  {
    v98 = *(v128 + 248);
    v99 = *(v98 + 264);
    if (a5 == 5)
    {
      v100 = *v77;
      v101 = -1157627904;
LABEL_143:
      v102 = (v100 * (v101 | 0xCF1BBCDC00000000)) >> -v99;
    }

    else
    {
      if (a5 == 6)
      {
        v100 = *v77;
        v101 = -1080360960;
        goto LABEL_143;
      }

      v102 = (-1640531535 * *v77) >> -v99;
    }

    v153 = *v98;
    v156 = *(v98 + 8);
    v103 = *v98 - v156;
    v104 = *(v98 + 28);
    v150 = ~(-1 << (*(v98 + 260) - 1));
    if (v103 - v104 <= v150)
    {
      v105 = *(v98 + 28);
    }

    else
    {
      v105 = v103 + (-1 << (*(v98 + 260) - 1)) + 1;
    }

    v147 = v105;
    v106 = *(*(v98 + 112) + 4 * v102);
    if (v106 > v104)
    {
      v107 = 0;
      v108 = 0;
      v138 = *(v98 + 128);
      v145 = *(v128 + 24);
      v143 = v103;
      v135 = (*(v128 + 28) - v103);
      v140 = v12 + v135;
      v109 = v20 - 1;
      do
      {
        if (v108 >= v107)
        {
          v110 = v107;
        }

        else
        {
          v110 = v108;
        }

        v111 = ZSTD_count_2segments(&v77[v110], (v156 + v106 + v110), a3, v153, (v12 + v145));
        v112 = v111 + v110;
        if (v111 + v110 + v106 >= v143)
        {
          v113 = v140 + v106;
        }

        else
        {
          v113 = v156 + v106;
        }

        if (v112 <= v73)
        {
          v77 = a2;
          v12 = v132;
        }

        else
        {
          v114 = v120 - (v135 + v106);
          if ((__clz(*a4 + 1) - __clz(v114 + 1)) < 4 * (v112 - v73))
          {
            *a4 = (v114 + 3);
            v73 = v111 + v110;
          }

          v77 = a2;
          v12 = v132;
          if (&a2[v112] == a3)
          {
            break;
          }
        }

        v115 = (v138 + 8 * (v106 & v150));
        if (*(v113 + v112) >= v77[v112])
        {
          if (v106 <= v147)
          {
            break;
          }
        }

        else
        {
          if (v106 <= v147)
          {
            break;
          }

          ++v115;
          v108 = v111 + v110;
          v112 = v107;
        }

        v27 = v109-- != 0;
        if (!v27)
        {
          break;
        }

        v106 = *v115;
        v107 = v112;
      }

      while (*v115 > v104);
    }
  }

  *(v128 + 44) = v71 - 8;
  return v73;
}