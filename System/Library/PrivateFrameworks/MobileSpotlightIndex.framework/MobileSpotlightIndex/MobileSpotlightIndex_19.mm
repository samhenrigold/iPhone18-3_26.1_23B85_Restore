uint64_t ZSTD_compressBlock_fast_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  if ((*(a1 + 256) - 5) >= 3)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(a1 + 256);
  }

  return ZSTD_compressBlock_fast_extDict_generic(a1, a2, a3, a4, a5, v5);
}

uint64_t ZSTD_compressBlock_fast_extDict_generic(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v6 = a4;
  v7 = *(a1 + 260);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + 8);
  v10 = &a4[a5];
  v11 = a4 + a5 - v9;
  v12 = 1 << *(a1 + 240);
  v14 = *(a1 + 24);
  v13 = *(a1 + 28);
  v15 = v11 - v13 > v12;
  v16 = v11 - v12;
  if (v15 && *(a1 + 40) == 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v13;
  }

  if (v14 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  if (v18 >= v14)
  {

    return ZSTD_compressBlock_fast(a1, a2, a3, a4, a5);
  }

  v20 = (v10 - 8);
  v21 = *a3;
  v22 = a3[1];
  if (v10 - 8 <= a4)
  {
    goto LABEL_265;
  }

  v23 = *(a1 + 16);
  v155 = a3;
  v156 = v23 + v18;
  v163 = (v9 + v19);
  v24 = *(a1 + 96);
  v157 = v9 + 2;
  v158 = v8;
  v25 = *(a1 + 248);
  v164 = 64 - v25;
  v162 = 32 - v25;
  v26 = v19 - 1;
  v27 = v10 - 7;
  v160 = v10 - 1;
  v161 = v10 - 3;
  v28 = (v10 - 32);
  v159 = v18;
  do
  {
    if (a6 > 6)
    {
      if (a6 == 7)
      {
        v29 = *v6;
        v30 = -1079680256;
      }

      else
      {
        if (a6 != 8)
        {
LABEL_23:
          v31 = (-1640531535 * *v6) >> v162;
          goto LABEL_27;
        }

        v29 = *v6;
        v30 = -1213897629;
      }
    }

    else if (a6 == 5)
    {
      v29 = *v6;
      v30 = -1157627904;
    }

    else
    {
      if (a6 != 6)
      {
        goto LABEL_23;
      }

      v29 = *v6;
      v30 = -1080360960;
    }

    v31 = (v29 * (v30 | 0xCF1BBCDC00000000)) >> v164;
LABEL_27:
    v32 = *(v24 + 4 * v31);
    if (v32 >= v19)
    {
      v33 = v9;
    }

    else
    {
      v33 = v23;
    }

    v34 = v6 - v9;
    v35 = v6 - v9 + 1;
    v36 = (v35 - v21);
    if (v36 >= v19)
    {
      v37 = v9;
    }

    else
    {
      v37 = v23;
    }

    *(v24 + 4 * v31) = v34;
    if (v21 <= v35 - v18 && (v26 - v36) >= 3)
    {
      v38 = v37 + v36;
      v39 = v6 + 1;
      if (*(v37 + v36) == *(v6 + 1))
      {
        if (v36 >= v19)
        {
          v40 = v10;
        }

        else
        {
          v40 = (v23 + v19);
        }

        v41 = (v6 + 5);
        v42 = (v38 + 4);
        v43 = &v40[(v6 + 5) - 4 - v38];
        if (v43 >= v10)
        {
          v43 = v10;
        }

        if (v43 - 7 <= v41)
        {
          v45 = (v38 + 4);
          v46 = (v6 + 5);
        }

        else
        {
          if (*v42 != *v41)
          {
            v51 = __clz(__rbit64(*v41 ^ *v42)) >> 3;
            goto LABEL_80;
          }

          v44 = 0;
          v45 = (v37 + v36 + 12);
          v46 = (v6 + 13);
          while (v46 < v43 - 7)
          {
            v48 = *v45;
            v45 += 4;
            v47 = v48;
            v50 = *v46;
            v46 += 4;
            v49 = v50;
            v44 += 8;
            if (v47 != v50)
            {
              v51 = v44 + (__clz(__rbit64(v49 ^ v47)) >> 3);
              v8 = v158;
              goto LABEL_80;
            }
          }

          v8 = v158;
        }

        if (v46 < v43 - 3 && *v45 == *v46)
        {
          v45 += 2;
          v46 += 2;
        }

        if (v46 < v43 - 1 && *v45 == *v46)
        {
          ++v45;
          ++v46;
        }

        if (v46 < v43 && *v45 == *v46)
        {
          v46 = (v46 + 1);
        }

        v51 = v46 - v41;
LABEL_80:
        if ((v42 + v51) != v40)
        {
          goto LABEL_121;
        }

        v65 = &v41[v51];
        if (v27 <= v65)
        {
          v68 = (v9 + v19);
          v67 = v65;
        }

        else
        {
          if (*v163 != *v65)
          {
            v73 = __clz(__rbit64(*v65 ^ *v163)) >> 3;
LABEL_120:
            v51 += v73;
LABEL_121:
            v83 = v39 - a4;
            v84 = *(a2 + 24);
            if (v39 <= v28)
            {
              *v84 = *a4;
              v87 = *(a2 + 24);
              if (v83 <= 0x10)
              {
                *(a2 + 24) = v87 + v83;
                v97 = *(a2 + 8);
LABEL_141:
                *(v97 + 4) = v83;
                *v97 = 1;
                if (v51 + 1 >= 0x10000)
                {
                  v99 = (v97 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v99;
                }

                *(v97 + 6) = v51 + 1;
                v100 = v97 + 8;
                *(a2 + 8) = v97 + 8;
                a4 = &v39[v51 + 4];
                v101 = v22;
                v102 = v21;
                goto LABEL_180;
              }

              v88 = (v87 + 16);
              v89 = v87 + v83;
              v90 = a4 + 16;
              do
              {
                v91 = *v90;
                v90 += 16;
                *v88++ = v91;
              }

              while (v88 < v89);
            }

            else
            {
              if (a4 <= v28)
              {
                v86 = v84 + v28 - a4;
                v92 = a4;
                do
                {
                  v93 = *v92;
                  v92 += 16;
                  *v84++ = v93;
                }

                while (v84 < v86);
                v85 = v10 - 32;
              }

              else
              {
                v85 = a4;
                v86 = *(a2 + 24);
              }

              if (v85 < v39)
              {
                if (a4 <= v28)
                {
                  v94 = v10 - 32;
                }

                else
                {
                  v94 = a4;
                }

                v95 = v6 - v94 + 1;
                do
                {
                  v96 = *v85++;
                  *v86++ = v96;
                  --v95;
                }

                while (v95);
              }
            }

            *(a2 + 24) += v83;
            v97 = *(a2 + 8);
            if (v83 >= 0x10000)
            {
              v98 = (v97 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v98;
            }

            goto LABEL_141;
          }

          v66 = 0;
          v67 = &v6[v51 + 13];
          v68 = (v19 + v9 + 8);
          while (v67 < v27)
          {
            v70 = *v68;
            v68 += 4;
            v69 = v70;
            v72 = *v67;
            v67 += 4;
            v71 = v72;
            v66 += 8;
            if (v69 != v72)
            {
              v73 = v66 + (__clz(__rbit64(v71 ^ v69)) >> 3);
              goto LABEL_120;
            }
          }
        }

        if (v67 < v161 && *v68 == *v67)
        {
          v68 += 2;
          v67 += 2;
        }

        if (v67 < v160 && *v68 == *v67)
        {
          ++v68;
          ++v67;
        }

        if (v67 < v10 && *v68 == *v67)
        {
          v67 = (v67 + 1);
        }

        v73 = v67 - v65;
        goto LABEL_120;
      }
    }

    if (v32 < v18 || (v52 = v33 + v32, *(v33 + v32) != *v6))
    {
      v6 += v8 + ((v6 - a4) >> 8);
      continue;
    }

    if (v32 >= v19)
    {
      v53 = v10;
    }

    else
    {
      v53 = (v23 + v19);
    }

    if (v32 >= v19)
    {
      v54 = v9 + v19;
    }

    else
    {
      v54 = v156;
    }

    v55 = (v6 + 4);
    v56 = (v52 + 4);
    if (&v53[v6 - v52] >= v10)
    {
      v57 = v10;
    }

    else
    {
      v57 = &v53[v6 - v52];
    }

    if (v57 - 7 <= v55)
    {
      v59 = (v52 + 4);
      v60 = (v6 + 4);
    }

    else
    {
      if (*v56 != *v55)
      {
        v64 = __clz(__rbit64(*v55 ^ *v56)) >> 3;
        goto LABEL_99;
      }

      v58 = 0;
      v59 = (v33 + v32 + 12);
      v60 = (v6 + 12);
      while (v60 < (v57 - 7))
      {
        v62 = *v59;
        v59 += 4;
        v61 = v62;
        v63 = *v60;
        v60 += 4;
        v18 = v63;
        v58 += 8;
        if (v61 != v63)
        {
          v64 = v58 + (__clz(__rbit64(v18 ^ v61)) >> 3);
          LODWORD(v18) = v159;
          goto LABEL_99;
        }
      }

      LODWORD(v18) = v159;
    }

    if (v60 < (v57 - 3) && *v59 == *v60)
    {
      v59 += 2;
      v60 += 2;
    }

    if (v60 < (v57 - 1) && *v59 == *v60)
    {
      ++v59;
      ++v60;
    }

    if (v60 < v57 && *v59 == *v60)
    {
      v60 = (v60 + 1);
    }

    v64 = v60 - v55;
LABEL_99:
    if ((v56 + v64) == v53)
    {
      v74 = &v55[v64];
      v8 = v158;
      if (v27 <= &v55[v64])
      {
        v77 = (v9 + v19);
        v76 = &v55[v64];
      }

      else
      {
        if (*v163 != *v74)
        {
          v82 = __clz(__rbit64(*v74 ^ *v163)) >> 3;
LABEL_154:
          v64 += v82;
          goto LABEL_155;
        }

        v75 = 0;
        v76 = &v6[v64 + 12];
        v77 = (v19 + v9 + 8);
        while (v76 < v27)
        {
          v79 = *v77;
          v77 += 4;
          v78 = v79;
          v81 = *v76;
          v76 += 4;
          v80 = v81;
          v75 += 8;
          if (v78 != v81)
          {
            v82 = v75 + (__clz(__rbit64(v80 ^ v78)) >> 3);
            goto LABEL_154;
          }
        }
      }

      if (v76 < v161 && *v77 == *v76)
      {
        v77 += 2;
        v76 += 2;
      }

      if (v76 < v160 && *v77 == *v76)
      {
        ++v77;
        ++v76;
      }

      if (v76 < v10 && *v77 == *v76)
      {
        v76 = (v76 + 1);
      }

      v82 = v76 - v74;
      goto LABEL_154;
    }

    v8 = v158;
LABEL_155:
    v103 = v64 + 4;
    if (v52 > v54 && v6 > a4)
    {
      v104 = v6 - 1;
      v105 = (v33 + v32 - 1);
      while (*v104 == *v105)
      {
        ++v103;
        v106 = v104 - 1;
        if (v105 > v54)
        {
          --v105;
          v15 = v104-- > a4;
          if (v15)
          {
            continue;
          }
        }

        v6 = v106 + 1;
        goto LABEL_163;
      }

      v6 = v104 + 1;
    }

LABEL_163:
    v107 = v6 - a4;
    v108 = *(a2 + 24);
    if (v6 > v28)
    {
      if (a4 <= v28)
      {
        v109 = (v108 + v28 - a4);
        do
        {
          v110 = *a4;
          a4 += 16;
          *v108++ = v110;
        }

        while (v108 < v109);
        a4 = v10 - 32;
        v108 = v109;
      }

      while (a4 < v6)
      {
        v111 = *a4++;
        *v108 = v111;
        v108 = (v108 + 1);
      }

      goto LABEL_174;
    }

    *v108 = *a4;
    v112 = *(a2 + 24);
    if (v107 > 0x10)
    {
      v113 = (v112 + 16);
      v114 = v112 + v107;
      v115 = a4 + 16;
      do
      {
        v116 = *v115;
        v115 += 16;
        *v113++ = v116;
      }

      while (v113 < v114);
LABEL_174:
      *(a2 + 24) += v107;
      v117 = *(a2 + 8);
      if (v107 >= 0x10000)
      {
        v118 = (v117 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v118;
      }

      goto LABEL_177;
    }

    *(a2 + 24) = v112 + v107;
    v117 = *(a2 + 8);
LABEL_177:
    v102 = v34 - v32;
    *(v117 + 4) = v107;
    *v117 = v102 + 3;
    if (v103 - 3 >= 0x10000)
    {
      v119 = (v117 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v119;
    }

    *(v117 + 6) = v103 - 3;
    v100 = v117 + 8;
    *(a2 + 8) = v117 + 8;
    a4 = &v6[v103];
    v101 = v21;
LABEL_180:
    if (a4 > v20)
    {
      v22 = v101;
      v21 = v102;
      goto LABEL_262;
    }

    v120 = v34 + 2;
    if (a6 > 6)
    {
      if (a6 == 7)
      {
        v121 = *(v157 + v34);
        v122 = -1079680256;
        goto LABEL_192;
      }

      if (a6 == 8)
      {
        v121 = *(v157 + v34);
        v122 = -1213897629;
        goto LABEL_192;
      }
    }

    else
    {
      if (a6 == 5)
      {
        v121 = *(v157 + v34);
        v122 = -1157627904;
        goto LABEL_192;
      }

      if (a6 == 6)
      {
        v121 = *(v157 + v34);
        v122 = -1080360960;
LABEL_192:
        v125 = v122 | 0xCF1BBCDC00000000;
        *(v24 + 4 * ((v121 * v125) >> v164)) = v120;
        v123 = a4 - 2;
        v124 = (*(a4 - 2) * v125) >> v164;
        goto LABEL_193;
      }
    }

    *(v24 + 4 * ((-1640531535 * *(v157 + v34)) >> v162)) = v120;
    v123 = a4 - 2;
    v124 = (-1640531535 * *(a4 - 2)) >> v162;
LABEL_193:
    *(v24 + 4 * v124) = v123 - v9;
    v126 = v34 - v18;
    while (1)
    {
      v21 = v101;
      v101 = v102;
      v127 = (a4 - v9 - v21);
      v128 = v127 >= v19 ? v9 : v23;
      if (v21 > v126)
      {
        break;
      }

      if ((v26 - v127) < 3)
      {
        break;
      }

      v129 = v128 + v127;
      if (*(v128 + v127) != *a4)
      {
        break;
      }

      if (v127 >= v19)
      {
        v130 = v10;
      }

      else
      {
        v130 = (v23 + v19);
      }

      v131 = a4 + 4;
      v132 = (v129 + 4);
      v133 = &v130[a4 - v129];
      if (v133 >= v10)
      {
        v133 = v10;
      }

      if (v133 - 7 <= v131)
      {
        v135 = v132;
        v136 = a4 + 4;
      }

      else
      {
        if (*v132 != *v131)
        {
          v140 = __clz(__rbit64(*v131 ^ *v132)) >> 3;
          goto LABEL_224;
        }

        v134 = 0;
        v135 = (v128 + v127 + 12);
        v136 = a4 + 12;
        while (v136 < v133 - 7)
        {
          v138 = *v135;
          v135 += 4;
          v137 = v138;
          v139 = *v136;
          v136 += 8;
          v18 = v139;
          v134 += 8;
          if (v137 != v139)
          {
            v140 = v134 + (__clz(__rbit64(v18 ^ v137)) >> 3);
            LODWORD(v18) = v159;
            goto LABEL_224;
          }
        }

        LODWORD(v18) = v159;
      }

      if (v136 < v133 - 3 && *v135 == *v136)
      {
        v135 += 2;
        v136 += 4;
      }

      if (v136 < v133 - 1 && *v135 == *v136)
      {
        ++v135;
        v136 += 2;
      }

      if (v136 < v133 && *v135 == *v136)
      {
        ++v136;
      }

      v140 = v136 - v131;
LABEL_224:
      if ((v132 + v140) != v130)
      {
        goto LABEL_244;
      }

      v141 = &v131[v140];
      if (v27 <= v141)
      {
        v144 = (v9 + v19);
        v143 = v141;
LABEL_233:
        if (v143 < v161 && *v144 == *v143)
        {
          ++v144;
          v143 += 4;
        }

        if (v143 < v160 && *v144 == *v143)
        {
          v144 = (v144 + 2);
          v143 += 2;
        }

        if (v143 < v10 && *v144 == *v143)
        {
          ++v143;
        }

        v149 = v143 - v141;
        goto LABEL_243;
      }

      if (*v163 == *v141)
      {
        v142 = 0;
        v143 = &a4[v140 + 12];
        v144 = (v19 + v9 + 8);
        while (v143 < v27)
        {
          v146 = *v144;
          v144 += 2;
          v145 = v146;
          v148 = *v143;
          v143 += 8;
          v147 = v148;
          v142 += 8;
          if (v145 != v148)
          {
            v149 = v142 + (__clz(__rbit64(v147 ^ v145)) >> 3);
            goto LABEL_243;
          }
        }

        goto LABEL_233;
      }

      v149 = __clz(__rbit64(*v141 ^ *v163)) >> 3;
LABEL_243:
      v140 += v149;
LABEL_244:
      if (a4 <= v28)
      {
        **(a2 + 24) = *a4;
        v100 = *(a2 + 8);
      }

      *(v100 + 4) = 0;
      *v100 = 1;
      if (v140 + 1 >= 0x10000)
      {
        v150 = (v100 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v150;
      }

      *(v100 + 6) = v140 + 1;
      v100 += 8;
      *(a2 + 8) = v100;
      if (a6 > 6)
      {
        if (a6 == 7)
        {
          v151 = *a4;
          v152 = -1079680256;
          goto LABEL_258;
        }

        if (a6 == 8)
        {
          v151 = *a4;
          v152 = -1213897629;
          goto LABEL_258;
        }
      }

      else
      {
        if (a6 == 5)
        {
          v151 = *a4;
          v152 = -1157627904;
          goto LABEL_258;
        }

        if (a6 == 6)
        {
          v151 = *a4;
          v152 = -1080360960;
LABEL_258:
          v153 = (v151 * (v152 | 0xCF1BBCDC00000000)) >> v164;
          goto LABEL_259;
        }
      }

      v153 = (-1640531535 * *a4) >> v162;
LABEL_259:
      *(v24 + 4 * v153) = a4 - v9;
      a4 += v140 + 4;
      v102 = v21;
      v22 = v101;
      v6 = a4;
      if (a4 > v20)
      {
        goto LABEL_263;
      }
    }

    v22 = v21;
    v21 = v101;
LABEL_262:
    v6 = a4;
LABEL_263:
    ;
  }

  while (v6 < v20);
  v6 = a4;
  a3 = v155;
LABEL_265:
  *a3 = v21;
  a3[1] = v22;
  return v10 - v6;
}

const char *ZDICT_getErrorName(unint64_t a1)
{
  if (a1 >= 0xFFFFFFFFFFFFFF89)
  {
    return ERR_getErrorString(-a1);
  }

  else
  {
    return ERR_getErrorString(0);
  }
}

uint64_t ZDICT_finalizeDictionary(char *a1, size_t a2, uint64_t *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int a10)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v10 = a9;
  }

  else
  {
    v10 = 3;
  }

  v11 = -70;
  if (a2 >= 0x100 && a2 >= a4)
  {
    __src[0] = -332356553;
    v18 = ZSTD_XXH64(a3, a4, 0) % 0x7FFF8000 + 0x8000;
    if (a10)
    {
      v18 = a10;
    }

    __src[1] = v18;
    if (a9 >> 33)
    {
      v19 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "\r%70s\r", "");
      fflush(*v19);
      fwrite("statistics ... \n", 0x10uLL, 1uLL, *v19);
      fflush(*v19);
    }

    v28 = 0;
    memset(v27, 0, sizeof(v27));
    v20 = ZDICT_analyzeEntropy(0, v27, 248, v10, a5, a6, a7, a3, a4, HIDWORD(a9));
    v11 = v20;
    if (v20 <= 0xFFFFFFFFFFFFFF88)
    {
      v21 = v20 + 8;
      if (v20 + 8 + a4 <= a2)
      {
        v22 = a4;
      }

      else
      {
        v22 = a2 - (v20 + 8);
      }

      if (v22 > 7)
      {
        v23 = 0;
      }

      else
      {
        if (v20 + 16 > a2)
        {
          return -70;
        }

        v23 = 8 - v22;
      }

      v11 = v22 + v21 + v23;
      memmove(&a1[v21 + v23], a3, v22);
      memcpy(a1, __src, v21);
      bzero(&a1[v21], v23);
    }
  }

  return v11;
}

uint64_t ZDICT_analyzeEntropy(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v15 = v14;
  v16 = v11;
  v17 = v10;
  v116 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v141 = *MEMORY[0x1E69E9840];
  v25 = __clz(v12 + 0x20000) ^ 0x1F;
  v26 = 0;
  if (v11)
  {
    v27 = v11;
    v28 = v10;
    do
    {
      v29 = *v28++;
      v26 += v29;
      --v27;
    }

    while (v27);
  }

  bzero(v140, 0x400uLL);
  bzero(v139, 0x808uLL);
  memset(v138, 0, 124);
  memset(v137, 0, 62);
  memset(v135, 0, sizeof(v135));
  v136 = 0;
  memset(v134, 0, 106);
  memset(v133, 0, sizeof(v133));
  v132 = 0;
  memset(v131, 0, sizeof(v131));
  if (v25 > 0x1E)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -34;
    goto LABEL_102;
  }

  if (v16 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v16;
  }

  v35 = v26 / v34;
  memset_pattern16(v140, &unk_1C2BF7A30, 0x400uLL);
  v113 = v25;
  memset_pattern16(v138, &unk_1C2BF7A30, 4 * v25 + 4);
  memset_pattern16(v135, &unk_1C2BF7A30, 0xD4uLL);
  memset_pattern16(v133, &unk_1C2BF7A30, 0x90uLL);
  bzero(v130, 0x1000uLL);
  v130[8] = 1;
  v130[4] = 1;
  v130[1] = 1;
  if (v20)
  {
    v36 = v20;
  }

  else
  {
    v36 = 3;
  }

  v128 = 0u;
  v129 = 0u;
  ZSTD_getParams(v36, v35, v13, &v121);
  v37 = v121;
  v125 = v122;
  v126 = v123;
  v127 = v124;
  v119 = 0uLL;
  v120 = 0;
  v32 = ZSTD_createCDict_advanced(v15, v13, 1, 1, &v121, &v119);
  CCtx = ZSTD_createCCtx();
  v38 = malloc_type_malloc(0x20000uLL, 0x3C8BAF9BuLL);
  v30 = v38;
  if (v32 && CCtx && v38)
  {
    v111 = v24;
    v112 = v22;
    v115 = v38;
    if (v16)
    {
      v40 = 0;
      v41 = 0;
      v42 = 1 << v37;
      if (1 << v37 >= 0x20000)
      {
        v42 = 0x20000;
      }

      v43 = v42;
      v117 = v16;
      v114 = v17;
      do
      {
        if (v43 >= v17[v40])
        {
          v44 = v17[v40];
        }

        else
        {
          v44 = v43;
        }

        if (ZSTD_compressBegin_usingCDict(CCtx, v32) >= 0xFFFFFFFFFFFFFF89)
        {
          if (a10)
          {
            v63 = MEMORY[0x1E69E9848];
            fwrite("warning : ZSTD_compressBegin_usingCDict failed \n", 0x30uLL, 1uLL, *MEMORY[0x1E69E9848]);
            v64 = *v63;
LABEL_44:
            fflush(v64);
          }
        }

        else
        {
          v45 = ZSTD_compressBlock(CCtx, v115, 0x20000uLL, (v116 + v41), v44);
          if (v45 < 0xFFFFFFFFFFFFFF89)
          {
            if (v45)
            {
              SeqStore = ZSTD_getSeqStore(CCtx);
              v47 = SeqStore;
              v48 = SeqStore[2];
              v49 = SeqStore[3];
              if (v48 < v49)
              {
                do
                {
                  v50 = *v48++;
                  ++v140[v50];
                }

                while (v48 != v49);
              }

              v51 = SeqStore[1] - *SeqStore;
              ZSTD_seqToCodes(SeqStore);
              v17 = v114;
              if ((v51 >> 3))
              {
                v52 = v47[6];
                v53 = (v51 >> 3);
                v54 = v53;
                do
                {
                  v55 = *v52++;
                  ++*(v138 + v55);
                  --v54;
                }

                while (v54);
                v56 = v47[5];
                v57 = (v51 >> 3);
                do
                {
                  v58 = *v56++;
                  ++*(v135 + v58);
                  --v57;
                }

                while (v57);
                v59 = v47[4];
                do
                {
                  v60 = *v59++;
                  ++*(v133 + v60);
                  --v53;
                }

                while (v53);
                if ((v51 >> 3) != 1)
                {
                  v61 = **v47 - 3;
                  v62 = *(*v47 + 8) - 3;
                  if (v61 > 0x3FF)
                  {
                    v61 = 0;
                  }

                  v130[v61] += 3;
                  if (v62 > 0x3FF)
                  {
                    v62 = 0;
                  }

                  ++v130[v62];
                }
              }
            }

            goto LABEL_45;
          }

          if (a10 >= 3)
          {
            v65 = MEMORY[0x1E69E9848];
            fprintf(*MEMORY[0x1E69E9848], "warning : could not compress sample size %u \n", v44);
            v64 = *v65;
            goto LABEL_44;
          }
        }

LABEL_45:
        v41 += v17[v40++];
      }

      while (v40 != v117);
    }

    if (a10 >= 4)
    {
      v66 = MEMORY[0x1E69E9848];
      fwrite("Offset Code Frequencies : \n", 0x1BuLL, 1uLL, *MEMORY[0x1E69E9848]);
      fflush(*v66);
      v67 = 0;
      do
      {
        fprintf(*v66, "%2u :%7u \n", v67, *(v138 + v67));
        fflush(*v66);
        ++v67;
      }

      while (v113 + 1 != v67);
    }

    v68 = HUF_buildCTable(v39);
    v33 = v68;
    if (v68 < 0xFFFFFFFFFFFFFF89)
    {
      v31 = CCtx;
      if (v68 == 8)
      {
        if (a10 >= 2)
        {
          v69 = MEMORY[0x1E69E9848];
          fwrite("warning : pathological dataset : literals are not compressible : samples are noisy or too regular \n", 0x63uLL, 1uLL, *MEMORY[0x1E69E9848]);
          fflush(*v69);
        }

        memset_pattern16(&v140[1], &unk_1C2BF7A20, 0x3FCuLL);
        v140[0] = 4;
        *&v140[253] = 0x100000001;
        LODWORD(v33) = HUF_buildCTable(v70);
      }

      for (i = 1; i != 1024; ++i)
      {
        LODWORD(v72) = v130[i];
        *(&v129 + 1) = __PAIR64__(v72, i);
        v73 = -3;
        v74 = &v129 + 1;
        do
        {
          if (*(v74 - 1) >= v72)
          {
            break;
          }

          v75 = *(v74 - 1);
          v76 = *v74;
          *(v74 - 1) = *v74;
          *v74 = v75;
          v72 = HIDWORD(v76);
          --v74;
        }

        while (!__CFADD__(v73++, 1));
      }

      v78 = 0;
      LODWORD(v79) = 0;
      do
      {
        v79 = (*(v138 + v78) + v79);
        v78 += 4;
      }

      while (4 * v113 + 4 != v78);
      v80 = FSE_normalizeCount(v137, 8u, v138, v79, v113, 1);
      if (v80 > 0xFFFFFFFFFFFFFF88)
      {
        if (a10)
        {
          v100 = MEMORY[0x1E69E9848];
          fwrite("FSE_normalizeCount error with offcodeCount \n", 0x2CuLL, 1uLL, *MEMORY[0x1E69E9848]);
          fflush(*v100);
        }

        v33 = v80;
        goto LABEL_101;
      }

      v81 = 0;
      LODWORD(v82) = 0;
      do
      {
        v82 = (*(v135 + v81) + v82);
        v81 += 4;
      }

      while (v81 != 212);
      v83 = FSE_normalizeCount(v134, 9u, v135, v82, 0x34u, 1);
      if (v83 > 0xFFFFFFFFFFFFFF88)
      {
        if (a10)
        {
          v101 = MEMORY[0x1E69E9848];
          fwrite("FSE_normalizeCount error with matchLengthCount \n", 0x30uLL, 1uLL, *MEMORY[0x1E69E9848]);
          fflush(*v101);
        }

        v33 = v83;
        goto LABEL_101;
      }

      v84 = 0;
      v85 = 0uLL;
      do
      {
        v85 = vaddq_s32(v133[v84++], v85);
      }

      while (v84 != 9);
      v86 = FSE_normalizeCount(v131, 9u, v133, vaddvq_s32(v85), 0x23u, 1);
      if (v86 < 0xFFFFFFFFFFFFFF89)
      {
        v87 = HUF_writeCTable(v111, v112, v139, 0xFFu, v33);
        v33 = v87;
        if (v87 >= 0xFFFFFFFFFFFFFF89)
        {
          if (a10)
          {
            v106 = MEMORY[0x1E69E9848];
            fwrite("HUF_writeCTable error \n", 0x17uLL, 1uLL, *MEMORY[0x1E69E9848]);
            fflush(*v106);
          }

          goto LABEL_101;
        }

        v88 = FSE_writeNCount(&v111[v87], v112 - v87, v137, 30, v80);
        v89 = v88;
        if (v88 >= 0xFFFFFFFFFFFFFF89)
        {
          if (a10)
          {
            v107 = MEMORY[0x1E69E9848];
            fwrite("FSE_writeNCount error with offcodeNCount \n", 0x2AuLL, 1uLL, *MEMORY[0x1E69E9848]);
            fflush(*v107);
          }

          v33 = v89;
        }

        else
        {
          v90 = &v111[v33 + v88];
          v91 = v112 - v33 - v88;
          v92 = FSE_writeNCount(v90, v91, v134, 52, v83);
          v93 = v92;
          if (v92 < 0xFFFFFFFFFFFFFF89)
          {
            v94 = &v90[v92];
            v95 = v91 - v92;
            v96 = FSE_writeNCount(v94, v91 - v92, v131, 35, v86);
            v86 = v96;
            if (v96 < 0xFFFFFFFFFFFFFF89)
            {
              if (v95 - v96 <= 0xB)
              {
                v31 = CCtx;
                if (a10)
                {
                  v97 = MEMORY[0x1E69E9848];
                  fwrite("not enough space to write RepOffsets \n", 0x26uLL, 1uLL, *MEMORY[0x1E69E9848]);
                  fflush(*v97);
                }

                v33 = -70;
                goto LABEL_101;
              }

              v110 = &v94[v96];
              *v110 = 0x400000001;
              *(v110 + 2) = 8;
              v33 += v89 + v93 + v96 + 12;
              goto LABEL_100;
            }

            v31 = CCtx;
            if (a10)
            {
              v102 = MEMORY[0x1E69E9848];
              v103 = *MEMORY[0x1E69E9848];
              v104 = "FSE_writeNCount error with litlengthNCount \n";
              v105 = 44;
              goto LABEL_90;
            }

            goto LABEL_91;
          }

          if (a10)
          {
            v108 = MEMORY[0x1E69E9848];
            fwrite("FSE_writeNCount error with matchLengthNCount \n", 0x2EuLL, 1uLL, *MEMORY[0x1E69E9848]);
            fflush(*v108);
          }

          v33 = v93;
        }

LABEL_100:
        v31 = CCtx;
        goto LABEL_101;
      }

      if (a10)
      {
        v102 = MEMORY[0x1E69E9848];
        v103 = *MEMORY[0x1E69E9848];
        v104 = "FSE_normalizeCount error with litLengthCount \n";
        v105 = 46;
LABEL_90:
        fwrite(v104, v105, 1uLL, v103);
        fflush(*v102);
      }

LABEL_91:
      v33 = v86;
LABEL_101:
      v30 = v115;
      goto LABEL_102;
    }

    v31 = CCtx;
    v30 = v115;
    if (a10)
    {
      v99 = MEMORY[0x1E69E9848];
      fwrite(" HUF_buildCTable error \n", 0x18uLL, 1uLL, *MEMORY[0x1E69E9848]);
      fflush(*v99);
    }
  }

  else
  {
    if (a10)
    {
      v98 = MEMORY[0x1E69E9848];
      fwrite("Not enough memory \n", 0x13uLL, 1uLL, *MEMORY[0x1E69E9848]);
      fflush(*v98);
    }

    v33 = -64;
    v31 = CCtx;
  }

LABEL_102:
  ZSTD_freeCDict(v32);
  ZSTD_freeCCtx(v31);
  free(v30);
  return v33;
}

uint64_t ZDICT_trainFromBuffer(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = 0u;
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  DWORD1(v6[0]) = 8;
  HIDWORD(v6[0]) = 4;
  HIDWORD(v7) = 3;
  return ZDICT_optimizeTrainFromBuffer_fastCover(a1, a2, a3, a4, a5, v6);
}

const char *ERR_getErrorString(int a1)
{
  if (a1 <= 43)
  {
    if (a1 <= 19)
    {
      if (a1 > 11)
      {
        switch(a1)
        {
          case 12:
            return "Version not supported";
          case 14:
            return "Unsupported frame parameter";
          case 16:
            return "Frame requires too much memory for decoding";
        }
      }

      else
      {
        switch(a1)
        {
          case 0:
            return "No error detected";
          case 1:
            return "Error (generic)";
          case 10:
            return "Unknown frame descriptor";
        }
      }
    }

    else if (a1 <= 31)
    {
      switch(a1)
      {
        case 20:
          return "Corrupted block detected";
        case 22:
          return "Restored data doesn't match checksum";
        case 30:
          return "Dictionary is corrupted";
      }
    }

    else if (a1 > 39)
    {
      if (a1 == 40)
      {
        return "Unsupported parameter";
      }

      if (a1 == 42)
      {
        return "Parameter is out of bound";
      }
    }

    else
    {
      if (a1 == 32)
      {
        return "Dictionary mismatch";
      }

      if (a1 == 34)
      {
        return "Cannot create Dictionary from provided samples";
      }
    }
  }

  else if (a1 > 69)
  {
    if (a1 <= 99)
    {
      switch(a1)
      {
        case 'F':
          return "Destination buffer is too small";
        case 'H':
          return "Src size is incorrect";
        case 'J':
          return "Operation on NULL destination buffer";
      }
    }

    else if (a1 > 103)
    {
      if (a1 == 104)
      {
        return "Destination buffer is wrong";
      }

      if (a1 == 105)
      {
        return "Source buffer is wrong";
      }
    }

    else
    {
      if (a1 == 100)
      {
        return "Frame index is too large";
      }

      if (a1 == 102)
      {
        return "An I/O error occurred when reading/seeking";
      }
    }
  }

  else if (a1 <= 59)
  {
    switch(a1)
    {
      case ',':
        return "tableLog requires too much memory : unsupported";
      case '.':
        return "Unsupported max Symbol Value : too large";
      case '0':
        return "Specified maxSymbolValue is too small";
    }
  }

  else if (a1 > 63)
  {
    if (a1 == 64)
    {
      return "Allocation error : not enough memory";
    }

    if (a1 == 66)
    {
      return "workSpace buffer is not large enough";
    }
  }

  else
  {
    if (a1 == 60)
    {
      return "Operation not authorized at current processing stage";
    }

    if (a1 == 62)
    {
      return "Context should be init first";
    }
  }

  return "Unspecified error code";
}

unint64_t ZSTD_getcBlockSize(unsigned __int16 *a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    return -72;
  }

  v4 = *a1;
  v5 = (v4 & 0xFFF8 | (*(a1 + 2) << 16)) >> 3;
  result = (v4 >> 1) & 3;
  *a3 = result;
  a3[1] = v4 & 1;
  a3[2] = v5;
  if (result != 1)
  {
    if (result == 3)
    {
      return -20;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t ZSTD_decodeLiteralsBlock(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  if (a3 < 3)
  {
    return -20;
  }

  v10 = a1 + 28672;
  v11 = *a2;
  v12 = v11 & 3;
  if (v12 <= 1)
  {
    if ((v11 & 3) == 0)
    {
      v13 = (v11 >> 2) & 3;
      v14 = 0x20000;
      if (a5 < 0x20000)
      {
        v14 = a5;
      }

      if (v13 == 1)
      {
        v15 = *a2 >> 4;
        v16 = 2;
      }

      else if (v13 == 3)
      {
        v15 = (*a2 | (a2[2] << 16)) >> 4;
        v16 = 3;
      }

      else
      {
        v15 = v11 >> 3;
        v16 = 1;
      }

      if (a4)
      {
        _ZF = 1;
      }

      else
      {
        _ZF = v15 == 0;
      }

      v29 = !_ZF;
      v6 = -70;
      if (v14 >= v15 && (v29 & 1) == 0)
      {
        if (a6 || v15 + 131136 >= a5)
        {
          if (v15 <= 0x10000)
          {
            v30 = 0;
            v33 = 0;
            v31 = (a1 + 30348);
            *(a1 + 30328) = a1 + 30348;
            v32 = a1 + 30348 + v15;
          }

          else
          {
            v31 = (a4 + v14 - v15 + 65504);
            v32 = a4 + v14 - 32;
            *(a1 + 30328) = v31;
            v33 = 2;
            v30 = 1;
          }
        }

        else
        {
          v30 = 0;
          v31 = (a4 + 131104);
          *(a1 + 30328) = a4 + 131104;
          v32 = a4 + 131104 + v15;
          v33 = 1;
        }

        *(a1 + 30336) = v32;
        *(v10 + 1672) = v33;
        v6 = v16 + v15;
        if (v16 + v15 + 32 <= a3)
        {
          v43 = &a2[v16];
          *(a1 + 30112) = v43;
          *(a1 + 30144) = v15;
          *(a1 + 30336) = &v43[v15];
          *(v10 + 1672) = 0;
          return v6;
        }

        if (v6 > a3)
        {
          return -20;
        }

        v40 = &a2[v16];
        if (v30)
        {
          memcpy(v31, &a2[v16], v15 - 0x10000);
          v31 = (a1 + 30348);
          v41 = &v40[v15 - 0x10000];
          v42 = 0x10000;
        }

        else
        {
          v41 = &a2[v16];
          v42 = v15;
        }

        memcpy(v31, v41, v42);
        *(a1 + 30112) = *(a1 + 30328);
        *(a1 + 30144) = v15;
      }

      return v6;
    }

    v24 = (v11 >> 2) & 3;
    v25 = 0x20000;
    if (a5 < 0x20000)
    {
      v25 = a5;
    }

    if (v24 == 1)
    {
      v26 = *a2 >> 4;
      v27 = 2;
      if (a4)
      {
        goto LABEL_45;
      }
    }

    else if (v24 == 3)
    {
      if (a3 == 3)
      {
        return -20;
      }

      v26 = (*a2 | (a2[2] << 16)) >> 4;
      v27 = 3;
      if (a4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v26 = v11 >> 3;
      v27 = 1;
      if (a4)
      {
        goto LABEL_45;
      }
    }

    if (v26)
    {
      return -70;
    }

LABEL_45:
    if (v26 <= 0x20000)
    {
      if (v26 <= a5)
      {
        if (a6 || v26 + 131136 >= a5)
        {
          v44 = v26 - 0x10000;
          if (v26 > 0x10000)
          {
            v45 = (a4 + v25 - v26 + 65504);
            *(a1 + 30328) = v45;
            *(a1 + 30336) = &v45[v44];
            *(v10 + 1672) = 2;
            memset(v45, a2[v27], v44);
            v46 = a2[v27];
            v34 = (a1 + 30348);
            v47 = 0x10000;
LABEL_75:
            memset(v34, v46, v47);
            *(a1 + 30112) = *(a1 + 30328);
            *(a1 + 30144) = v26;
            return v27 + 1;
          }

          v35 = 0;
          v34 = (a1 + 30348);
        }

        else
        {
          v34 = (a4 + 131104);
          v35 = 1;
        }

        *(a1 + 30328) = v34;
        *(a1 + 30336) = &v34[v26];
        *(v10 + 1672) = v35;
        v46 = a2[v27];
        v47 = v26;
        goto LABEL_75;
      }

      return -70;
    }

    return -20;
  }

  if (v12 != 2 && !*(a1 + 29992))
  {
    return -30;
  }

  if (a3 < 5)
  {
    return -20;
  }

  v17 = (v11 >> 2) & 3;
  v18 = *a2;
  if (a5 >= 0x20000)
  {
    v19 = 0x20000;
  }

  else
  {
    v19 = a5;
  }

  if (v17 == 2)
  {
    v20 = (v18 >> 4) & 0x3FFF;
    v21 = v18 >> 18;
    v22 = 1;
    v23 = 4;
  }

  else if (v17 == 3)
  {
    v20 = (v18 >> 4) & 0x3FFFF;
    v21 = (v18 >> 22) | (a2[4] << 10);
    v22 = 1;
    v23 = 5;
  }

  else
  {
    v22 = v17 != 0;
    v20 = (v18 >> 4) & 0x3FF;
    v21 = (v18 >> 14) & 0x3FF;
    v23 = 3;
  }

  if (!a4 && v20)
  {
    return -70;
  }

  v36 = v20;
  if (v20 > 0x20000)
  {
    return -20;
  }

  v6 = v23 + v21;
  if (v23 + v21 > a3)
  {
    return -20;
  }

  if (v19 < v20)
  {
    return -70;
  }

  if (a6 || v20 + 131136 >= a5)
  {
    if (v20 <= 0x10000)
    {
      v39 = 0;
      v37 = (a1 + 30348);
      *(a1 + 30328) = a1 + 30348;
      v38 = a1 + 30348 + v20;
    }

    else
    {
      v38 = a4 + v19;
      v37 = (a4 + v19 - v36);
      *(a1 + 30328) = v37;
      v39 = 2;
    }
  }

  else
  {
    v37 = (a4 + 131104);
    *(a1 + 30328) = a4 + 131104;
    v38 = a4 + 131104 + v20;
    v39 = 1;
  }

  *(a1 + 30336) = v38;
  *(a1 + 30344) = v39;
  if (v36 >= 0x301 && *(a1 + 30188))
  {
    v48 = 0;
    do
    {
      _X13 = *(a1 + 24) + v48;
      __asm { PRFM            #2, [X13] }

      v54 = v48 >> 2;
      v48 += 64;
    }

    while (v54 < 0xFF1);
  }

  if (v12 == 3)
  {
    v55 = *(a1 + 24);
    v56 = &a2[v23];
    if (v22)
    {
      v57 = HUF_decompress4X_usingDTable_bmi2(v37, v36, v56, v21, v55);
    }

    else
    {
      v57 = HUF_decompress1X_usingDTable_bmi2(v37, v36, v56, v21, v55);
    }
  }

  else
  {
    v58 = (a1 + 10296);
    v59 = &a2[v23];
    v60 = (a1 + 27324);
    if (v22)
    {
      v57 = HUF_decompress4X_hufOnly_wksp_bmi2(v58, v37, v36, v59, v21, v60, 0xA00uLL);
    }

    else
    {
      v57 = HUF_decompress1X1_DCtx_wksp_bmi2(v58, v37, v36, v59, v21, v60, 0xA00uLL);
    }
  }

  v61 = v57;
  if (*(v10 + 1672) == 2)
  {
    memcpy((a1 + 30348), (*(a1 + 30336) - 0x10000), 0x10000uLL);
    memmove((*(a1 + 30328) + 65504), *(a1 + 30328), v36 - 0x10000);
    *(v10 + 1656) = vaddq_s64(*(v10 + 1656), xmmword_1C2BF7A40);
  }

  if (v61 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  *(a1 + 30112) = *(a1 + 30328);
  *(a1 + 30144) = v36;
  *(v10 + 1320) = 1;
  if (v12 == 2)
  {
    *(a1 + 24) = a1 + 10296;
  }

  return v6;
}

int *ZSTD_buildFSETable(int *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = result + 2;
  v8 = (1 << a6);
  v9 = (v8 - 1);
  v10 = (a3 + 1);
  if (a3 == -1)
  {
    *result = 1;
    result[1] = a6;
    v11 = (v8 >> 3) + (v8 >> 1) + 3;
LABEL_23:
    v31 = 0;
    v32 = 0;
    do
    {
      v7[2 * (v32 & v9) + 1] = *(a7 + v31 + 106);
      v7[2 * ((v32 + v11) & v9) + 1] = *(a7 + v31 + 107);
      v32 = (v32 + 2 * v11) & v9;
      v31 += 2;
    }

    while (v31 < v8);
    goto LABEL_33;
  }

  v12 = 0;
  v13 = a7 + 106;
  v14 = 1;
  v15 = v8 - 1;
  do
  {
    v16 = *(a2 + 2 * v12);
    if (v16 == -1)
    {
      v18 = &v7[2 * v15--];
      v18[1] = v12;
      v17 = 1;
    }

    else
    {
      v17 = *(a2 + 2 * v12);
      if (0x10000 << (a6 - 1) >> 16 <= v16)
      {
        v14 = 0;
      }
    }

    *(a7 + 2 * v12++) = v17;
  }

  while (v10 != v12);
  *result = v14;
  result[1] = a6;
  v19 = v8 >> 3;
  if (v15 == v9)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v19 + 3;
    do
    {
      v24 = *(a2 + 2 * v20);
      *(v13 + v21) = v22;
      if (v24 >= 9)
      {
        v25 = 0;
        if (v24 <= 0x10)
        {
          v26 = 16;
        }

        else
        {
          v26 = v24;
        }

        v27 = (v26 - 9) >> 3;
        v28 = vdupq_n_s64(v27);
        v29 = (v13 + v21 + 16);
        do
        {
          v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v25), xmmword_1C2BF7A50)));
          if (v30.i8[0])
          {
            *(v29 - 1) = v22;
          }

          if (v30.i8[4])
          {
            *v29 = v22;
          }

          v25 += 2;
          v29 += 2;
        }

        while (((v27 + 2) & 0x3FFFFFFFFFFFFFFELL) != v25);
      }

      v21 += v24;
      ++v20;
      v22 += 0x101010101010101;
    }

    while (v20 != v10);
    v11 = v23 + (v8 >> 1);
    goto LABEL_23;
  }

  v33 = 0;
  v34 = 0;
  v35 = v19 + (v8 >> 1) + 3;
  do
  {
    v36 = *(a2 + 2 * v33);
    if (v36 >= 1)
    {
      for (i = 0; i != v36; ++i)
      {
        v7[2 * v34 + 1] = v33;
        do
        {
          v34 = (v35 + v34) & v9;
        }

        while (v34 > v15);
      }
    }

    ++v33;
  }

  while (v33 != v10);
LABEL_33:
  v38 = result + 3;
  v39 = (1 << a6);
  do
  {
    v40 = *v38;
    v41 = *(a7 + 2 * v40);
    *(a7 + 2 * v40) = v41 + 1;
    v42 = a6 - (__clz(v41) ^ 0x1F);
    *(v38 - 1) = v42;
    *(v38 - 2) = (v41 << v42) - v8;
    *(v38 - 2) = *(a5 + v40);
    *v38 = *(a4 + 4 * v40);
    v38 += 2;
    --v39;
  }

  while (v39);
  return result;
}

uint64_t ZSTD_decodeSeqHeaders(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a4)
  {
    return -72;
  }

  v5 = a3 + 1;
  v6 = *a3;
  if (*a3)
  {
    if ((v6 & 0x80) != 0)
    {
      if (v6 == 255)
      {
        if (a4 < 3)
        {
          return -72;
        }

        v5 = a3 + 3;
        v6 = *(a3 + 1) + 32512;
      }

      else
      {
        if (a4 < 2)
        {
          return -72;
        }

        v5 = a3 + 2;
        v6 = (a3[1] | (v6 << 8)) - 0x8000;
      }
    }

    v8 = &a3[a4];
    *a2 = v6;
    v9 = v5 + 1;
    if (v5 + 1 > &a3[a4])
    {
      return -72;
    }

    v11 = *v5;
    v12 = ZSTD_buildSeqTable(a1 + 32, a1, v11 >> 6, 0x23u, 9u, v9, v8 - v9, &LL_base_0, &LL_bits_1, &LL_defaultDTable, *(a1 + 29996), *(a1 + 30188), v6, a1 + 27324);
    if (v12 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    v13 = &v9[v12];
    v14 = ZSTD_buildSeqTable(a1 + 4136, (a1 + 16), (v11 >> 4) & 3, 0x1Fu, 8u, v13, v8 - v13, &OF_base_0, &OF_bits_0, &OF_defaultDTable, *(a1 + 29996), *(a1 + 30188), v6, a1 + 27324);
    if (v14 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    v15 = &v13[v14];
    v16 = ZSTD_buildSeqTable(a1 + 6192, (a1 + 8), (v11 >> 2) & 3, 0x34u, 9u, v15, v8 - v15, &ML_base_0, &ML_bits_1, &ML_defaultDTable, *(a1 + 29996), *(a1 + 30188), v6, a1 + 27324);
    if (v16 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    else
    {
      return &v15[v16] - a3;
    }
  }

  else
  {
    *a2 = 0;
    if (a4 == 1)
    {
      return 1;
    }

    else
    {
      return -72;
    }
  }
}

uint64_t ZSTD_buildSeqTable(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned __int8 *a6, size_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, uint64_t a14)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = a4;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v17 = 0;
      *a2 = a10;
      return v17;
    }

    if (!a7)
    {
      return -72;
    }

    if (*a6 <= a4)
    {
      v20 = *(a8 + 4 * *a6);
      v21 = *(a9 + *a6);
      *a1 = 0;
      *(a1 + 11) = 0;
      *(a1 + 8) = 0;
      *(a1 + 10) = v21;
      *(a1 + 12) = v20;
      *a2 = a1;
      return 1;
    }

    return -20;
  }

  if (a3 == 2)
  {
    v30 = 0;
    memset(v32, 0, 106);
    v19 = FSE_readNCount(v32, &v31, &v30, a6, a7);
    if (v19 <= 0xFFFFFFFFFFFFFF88 && v30 <= a5)
    {
      v17 = v19;
      ZSTD_buildFSETable(a1, v32, v31, a8, a9, v30, a14);
      *a2 = a1;
      return v17;
    }

    return -20;
  }

  if (!a11)
  {
    return -20;
  }

  v17 = 0;
  if (a12 && a13 >= 25)
  {
    v22 = 0;
    do
    {
      _X11 = *a2 + v22;
      __asm { PRFM            #2, [X11] }

      v22 += 64;
    }

    while (v22 < 8 * ((1 << a5) + 1));
    return 0;
  }

  return v17;
}

uint64_t ZSTD_decompressBlock_internal(uint64_t a1, char *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, int a6, int a7)
{
  v363 = *MEMORY[0x1E69E9840];
  if (a5 >> 17)
  {
    return -72;
  }

  v14 = ZSTD_decodeLiteralsBlock(a1, a4, a5, a2, a3, a7);
  v7 = v14;
  if (v14 > 0xFFFFFFFFFFFFFF88)
  {
    return v7;
  }

  v15 = &a4[v14];
  v16 = a5 - v14;
  v17 = *(a1 + 30188);
  v350 = 0;
  v18 = ZSTD_decodeSeqHeaders(a1, &v350, &a4[v14], a5 - v14);
  v7 = v18;
  if (v18 > 0xFFFFFFFFFFFFFF88)
  {
    return v7;
  }

  v19 = v350;
  if (!a2 && v350 > 0)
  {
    return -70;
  }

  v20 = &v15[v18];
  v21 = v16 - v18;
  if (v17)
  {
    v22 = a1 + 26684;
    *(a1 + 30188) = 0;
    goto LABEL_10;
  }

  v22 = a1 + 26684;
  if (a6)
  {
    if (*(a1 + 29936) >= 0x1000001uLL && v350 > 8)
    {
      goto LABEL_15;
    }

LABEL_44:
    *(a1 + 30188) = 0;
LABEL_45:
    if (*(a1 + 30344) == 2)
    {
      return ZSTD_decompressSequencesSplitLitBuffer(a1, a2, a3, v20, v21, v19);
    }

    else
    {
      return ZSTD_decompressSequences(a1, a2, a3, v20, v21, v19);
    }
  }

  if (v350 < 9)
  {
    goto LABEL_44;
  }

LABEL_15:
  v25 = 0;
  v26 = *(a1 + 16);
  v27 = *(v26 + 4);
  v28 = v26 + 8;
  v29 = 1;
  do
  {
    if (*(v28 + 8 * (v29 - 1) + 2) > 0x16u)
    {
      ++v25;
    }
  }

  while (!(v29++ >> v27));
  *(a1 + 30188) = 0;
  if ((v25 << (8 - v27)) < 7)
  {
    goto LABEL_45;
  }

LABEL_10:
  v23 = *(v22 + 3660);
  if (v23 == 1)
  {
    v24 = *(a1 + 30328);
  }

  else
  {
    v24 = &a2[a3];
  }

  v31 = *(a1 + 30112);
  v357 = v31;
  v32 = *(a1 + 30336);
  if (!v19)
  {
    v38 = a2;
    goto LABEL_31;
  }

  v342 = v24;
  v33 = *(a1 + 29896);
  v343 = *(a1 + 29904);
  v34 = *(a1 + 29912);
  memset(v362, 0, 176);
  v361 = 0u;
  memset(v356, 0, sizeof(v356));
  v354 = 0u;
  v355 = 0u;
  v352 = 0u;
  v353 = 0u;
  *(v22 + 3312) = 1;
  v35 = 88;
  v36 = 26684;
  v351 = 0u;
  do
  {
    *(&v351 + v35) = *(a1 + v36);
    v35 += 8;
    v36 += 4;
  }

  while (v35 != 112);
  if (v19 >= 8)
  {
    v37 = 8;
  }

  else
  {
    v37 = v19;
  }

  if (v16 == v7)
  {
    return -20;
  }

  *(&v352 + 1) = &v15[v7];
  *&v353 = v20 + 8;
  v45 = v21 - 8;
  v319 = v37;
  if (v21 >= 8)
  {
    v46 = *&v20[v45];
    *&v352 = &v20[v45];
    *&v351 = v46;
    if (!HIBYTE(v46) || v21 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    v47 = 8 - (__clz(HIBYTE(v46)) ^ 0x1F);
    goto LABEL_64;
  }

  v46 = *v20;
  *&v352 = &v15[v7];
  *&v351 = v46;
  if (v21 > 4)
  {
    if (v21 != 5)
    {
      if (v21 != 6)
      {
        v46 |= v20[6] << 48;
      }

      v46 += v20[5] << 40;
    }

    v46 += v20[4] << 32;
    goto LABEL_59;
  }

  if (v21 != 2)
  {
    if (v21 == 3)
    {
LABEL_60:
      v46 += v20[2] << 16;
      goto LABEL_61;
    }

    if (v21 != 4)
    {
      goto LABEL_62;
    }

LABEL_59:
    v46 += v20[3] << 24;
    goto LABEL_60;
  }

LABEL_61:
  v46 += v20[1] << 8;
  *&v351 = v46;
LABEL_62:
  if (!a4[a5 - 1])
  {
    return -20;
  }

  v45 = 0;
  v47 = __clz(a4[a5 - 1]) - 8 * v21 + 41;
LABEL_64:
  v49 = *a1;
  v50 = *(*a1 + 4);
  v51 = v50 + v47;
  v52 = (v46 >> -v51) & BIT_mask[v50];
  *(&v353 + 1) = v52;
  if (v51 > 0x40)
  {
    goto LABEL_76;
  }

  if (v45 >= 8)
  {
    v45 -= v51 >> 3;
    *&v352 = &v20[v45];
    v51 &= 7u;
    DWORD2(v351) = v51;
    v46 = *&v20[v45];
  }

  else
  {
    if (!v45)
    {
      goto LABEL_76;
    }

    v53 = v51 >> 3;
    if (&v20[v45 - v53] >= v20)
    {
      v53 = v53;
    }

    else
    {
      v53 = v45;
    }

    v45 -= v53;
    v46 = *&v20[v45];
    v51 -= 8 * v53;
    *&v352 = &v20[v45];
  }

  *&v351 = v46;
LABEL_76:
  v55 = (a2 - v33);
  *&v354 = v49 + 8;
  v56 = *(a1 + 16);
  v57 = *(v56 + 4);
  v58 = v57 + v51;
  v59 = (v46 >> -v58) & BIT_mask[v57];
  *(&v354 + 1) = v59;
  if (v58 > 0x40)
  {
    goto LABEL_85;
  }

  if (v45 >= 8)
  {
    v45 -= v58 >> 3;
    v46 = *&v20[v45];
    v58 &= 7u;
    *&v352 = &v20[v45];
  }

  else
  {
    if (!v45)
    {
      goto LABEL_85;
    }

    v60 = v58 >> 3;
    if (&v20[v45 - v60] >= v20)
    {
      v60 = v60;
    }

    else
    {
      v60 = v45;
    }

    v45 -= v60;
    v46 = *&v20[v45];
    v58 -= 8 * v60;
    *&v352 = &v20[v45];
  }

  *&v351 = v46;
LABEL_85:
  *&v355 = v56 + 8;
  v61 = *(a1 + 8);
  v62 = *(v61 + 4);
  v63 = v62 + v58;
  v64 = (v46 >> -v63) & BIT_mask[v62];
  DWORD2(v351) = v63;
  *(&v355 + 1) = v64;
  v340 = v19;
  v317 = v33;
  v341 = v34;
  if (v63 >= 0x41)
  {
    LODWORD(v65) = 0;
    *&v356[0] = v61 + 8;
    goto LABEL_136;
  }

  v66 = &v20[v45];
  if (v45 >= 8)
  {
    *&v352 = &v66[-(v63 >> 3)];
    v63 &= 7u;
    DWORD2(v351) = v63;
    v46 = *v352;
    *&v351 = *v352;
  }

  else if (v45)
  {
    v67 = v63 >> 3;
    if (&v66[-v67] >= v20)
    {
      v67 = v67;
    }

    else
    {
      v67 = v45;
    }

    v68 = &v66[-v67];
    v63 -= 8 * v67;
    DWORD2(v351) = v63;
    v46 = *&v66[-v67];
    *&v351 = v46;
    *&v352 = v68;
    *&v356[0] = v61 + 8;
    if (v63 > 0x40)
    {
      LODWORD(v65) = 0;
      goto LABEL_136;
    }

    goto LABEL_96;
  }

  *&v356[0] = v61 + 8;
LABEL_96:
  v69 = 0;
  v65 = v319 & ~(v319 >> 31);
  v70 = v362;
  do
  {
    if (v352 >= v353)
    {
      *&v352 = v352 - (v63 >> 3);
      v63 &= 7u;
      DWORD2(v351) = v63;
      v46 = *v352;
    }

    else
    {
      if (v352 == *(&v352 + 1))
      {
        goto LABEL_105;
      }

      v71 = v63 >> 3;
      if ((v352 - v71) >= *(&v352 + 1))
      {
        v71 = v71;
      }

      else
      {
        v71 = (v352 - DWORD2(v352));
      }

      *&v352 = v352 - v71;
      v63 -= 8 * v71;
      DWORD2(v351) = v63;
      v46 = *v352;
    }

    *&v351 = v46;
LABEL_105:
    if (v65 == v69)
    {
      goto LABEL_137;
    }

    v72 = (v354 + 8 * v52);
    v73 = (*&v356[0] + 8 * v64);
    v74 = *(v73 + 1);
    v75 = *(v72 + 1);
    v76 = (v355 + 8 * v59);
    v77 = *(v76 + 1);
    v78 = *(v72 + 2);
    v79 = *(v73 + 2);
    v80 = *(v76 + 2);
    v344 = *v72;
    v348 = *v73;
    v81 = *v76;
    v82 = *(v72 + 3);
    v83 = *(v73 + 3);
    v84 = *(v76 + 3);
    if (v80 >= 2)
    {
      v85 = v46 << v63 >> -v80;
      v63 += v80;
      DWORD2(v351) = v63;
      v86 = v85 + v77;
      *(&v356[1] + 1) = *&v356[1];
      v87 = v356 + 8;
      goto LABEL_108;
    }

    if (*(v76 + 2))
    {
      if (v75)
      {
        v77 = v77;
      }

      else
      {
        v77 = (v77 + 1);
      }

      v104 = v46 << v63++;
      DWORD2(v351) = v63;
      v105 = v77 + (v104 >> 63);
      if (v105 == 3)
      {
        if ((*(&v356[0] + 1) - 1) <= 1)
        {
          v86 = 1;
        }

        else
        {
          v86 = *(&v356[0] + 1) - 1;
        }
      }

      else
      {
        if (*(v356 + v105 + 1) <= 1uLL)
        {
          v86 = 1;
        }

        else
        {
          v86 = *(v356 + v105 + 1);
        }

        if (v105 == 1)
        {
          goto LABEL_135;
        }
      }

      *(&v356[1] + 1) = *&v356[1];
LABEL_135:
      v87 = v356 + 8;
      goto LABEL_122;
    }

    v86 = *(v356 + (v75 == 0) + 1);
    v87 = v356 + 8 * (v75 != 0) + 8;
LABEL_122:
    v22 = a1 + 26684;
    v19 = v340;
    v33 = v317;
    v34 = v341;
LABEL_108:
    v88 = *v87;
    *(&v356[0] + 1) = v86;
    *&v356[1] = v88;
    if (v79)
    {
      v103 = v46 << v63 >> -v79;
      v63 += v79;
      DWORD2(v351) = v63;
      v74 += v103;
    }

    if ((v79 + v78 + v80) >= 0x1Fu)
    {
      v335 = v32;
      v320 = v65;
      v324 = v81;
      v329 = v74;
      BIT_reloadDStream(&v351);
      v81 = v324;
      v74 = v329;
      v65 = v320;
      v32 = v335;
      v34 = v341;
      v33 = v317;
      v19 = v340;
      v22 = a1 + 26684;
      v46 = v351;
      v63 = DWORD2(v351);
    }

    v89 = (v46 << v63 >> -v78) + v75;
    if (v78)
    {
      v63 += v78;
      v90 = v89;
    }

    else
    {
      v90 = v75;
    }

    v91 = v63 + v82;
    v52 = ((v46 >> -v91) & BIT_mask[v82]) + v344;
    v92 = v91 + v83;
    v64 = ((v46 >> -v92) & BIT_mask[v83]) + v348;
    *(&v355 + 1) = v64;
    v63 = v92 + v84;
    v93 = (v46 >> -v63) & BIT_mask[v84];
    DWORD2(v351) = v63;
    v59 = v93 + v81;
    *(&v353 + 1) = v52;
    *(&v354 + 1) = v59;
    v94 = &v55[v90];
    if (v86 <= &v55[v90])
    {
      v95 = v33;
    }

    else
    {
      v95 = v34;
    }

    _X15 = &v94[v95 - v86];
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x40]
    }

    v55 = &v94[v74];
    *(v70 - 2) = v90;
    *(v70 - 1) = v74;
    *v70 = v86;
    v70 += 3;
    ++v69;
  }

  while (v63 <= 0x40);
  LODWORD(v65) = v69;
LABEL_136:
  if (v65 < v319)
  {
    return -20;
  }

LABEL_137:
  v349 = v342 - 32;
  v318 = (v22 + 3664);
  v316 = (v22 + 3680);
  v38 = a2;
  while (2)
  {
    if (v63 < 0x41)
    {
      if (v352 >= v353)
      {
        v108 = (v352 - (v63 >> 3));
        *&v352 = v108;
        v63 &= 7u;
        goto LABEL_146;
      }

      if (v352 != *(&v352 + 1))
      {
        v106 = v63 >> 3;
        if ((v352 - v106) >= *(&v352 + 1))
        {
          v107 = v106;
        }

        else
        {
          v107 = (v352 - DWORD2(v352));
        }

        v108 = (v352 - v107);
        *&v352 = v352 - v107;
        v63 -= 8 * v107;
LABEL_146:
        DWORD2(v351) = v63;
        *&v351 = *v108;
      }

      if (v65 >= v19)
      {
        goto LABEL_265;
      }

      v109 = (v354 + 8 * *(&v353 + 1));
      v110 = (*&v356[0] + 8 * *(&v355 + 1));
      v111 = (v355 + 8 * *(&v354 + 1));
      v112 = *(v110 + 1);
      v113 = *(v109 + 1);
      v114 = *(v111 + 1);
      v115 = *(v109 + 2);
      v116 = *(v110 + 2);
      v117 = *(v111 + 2);
      v118 = *v109;
      v119 = *v110;
      v120 = *v111;
      v121 = *(v109 + 3);
      v122 = *(v110 + 3);
      v123 = *(v111 + 3);
      if (v117 >= 2)
      {
        v124 = v351 << v63 >> -v117;
        v63 += v117;
        DWORD2(v351) = v63;
        v125 = v124 + v114;
        v356[1] = *(v356 + 8);
        goto LABEL_150;
      }

      if (!*(v111 + 2))
      {
        v186 = *(v356 + (v113 == 0) + 1);
        *&v356[1] = *(v356 + (v113 != 0) + 1);
        v22 = a1 + 26684;
        v19 = v340;
        v33 = v317;
        v34 = v341;
        v125 = v186;
        goto LABEL_150;
      }

      if (v113)
      {
        v114 = v114;
      }

      else
      {
        v114 = (v114 + 1);
      }

      v235 = v351 << v63++;
      DWORD2(v351) = v63;
      v236 = v114 + (v235 >> 63);
      if (v236 == 3)
      {
        if ((*(&v356[0] + 1) - 1) <= 1)
        {
          v237 = 1;
        }

        else
        {
          v237 = *(&v356[0] + 1) - 1;
        }

        goto LABEL_262;
      }

      v237 = *(v356 + v236 + 1);
      if (v237 <= 1)
      {
        v237 = 1;
      }

      if (v236 != 1)
      {
LABEL_262:
        *(&v356[1] + 1) = *&v356[1];
      }

      *&v356[1] = *(&v356[0] + 1);
      v22 = a1 + 26684;
      v19 = v340;
      v33 = v317;
      v34 = v341;
      v125 = v237;
LABEL_150:
      *(&v356[0] + 1) = v125;
      if (v116)
      {
        v187 = v351 << v63 >> -v116;
        v63 += v116;
        DWORD2(v351) = v63;
        v112 += v187;
      }

      if ((v116 + v115 + v117) >= 0x1Fu)
      {
        v338 = v32;
        v328 = v125;
        v333 = v38;
        v323 = v65;
        v346 = v112;
        BIT_reloadDStream(&v351);
        LODWORD(v65) = v323;
        v125 = v328;
        v112 = v346;
        v38 = v333;
        v32 = v338;
        v34 = v341;
        v33 = v317;
        v19 = v340;
        v22 = a1 + 26684;
        v63 = DWORD2(v351);
      }

      v126 = (v351 << v63 >> -v115) + v113;
      if (v115)
      {
        v63 += v115;
        v127 = v126;
      }

      else
      {
        v127 = v113;
      }

      v128 = v63 + v121;
      v129 = ((v351 >> -v128) & BIT_mask[v121]) + v118;
      v130 = v128 + v122;
      *(&v355 + 1) = ((v351 >> -v130) & BIT_mask[v122]) + v119;
      v131 = BIT_mask[v123];
      DWORD2(v351) = v130 + v123;
      *(&v353 + 1) = v129;
      *(&v354 + 1) = ((v351 >> -(v130 + v123)) & v131) + v120;
      if (*(v22 + 3660) == 2)
      {
        v345 = v112;
        v132 = v357;
        v133 = &v362[24 * (v65 & 7) - 16];
        v134 = *v133;
        v135 = &v357[*v133];
        v136 = *(a1 + 30336);
        if (v135 > v136)
        {
          v137 = v136 - v357;
          if (v136 != v357)
          {
            if (v137 > v342 - v38)
            {
              return -70;
            }

            v138 = v38;
            v139 = v127;
            v140 = v65;
            v141 = v125;
            ZSTD_safecopyDstBeforeSrc(v38, v357, v137);
            v125 = v141;
            LODWORD(v65) = v140;
            v127 = v139;
            v34 = v341;
            v33 = v317;
            v19 = v340;
            v22 = a1 + 26684;
            v134 -= v137;
            *v133 = v134;
            v38 = &v138[v137];
          }

          v357 = v318;
          *(v22 + 3660) = 0;
          v142 = v133[1];
          v143 = v133[2];
          v112 = v345;
          if (v134 > 0x10000 || (v7 = v142 + v134, &v38[v142 + v134] > v349))
          {
            v358 = v134;
            v359 = v142;
            v360 = v143;
            v204 = v65;
            v205 = v38;
            v206 = v125;
            v207 = ZSTD_execSequenceEnd(v38, v342, &v358, &v357, a1 + 95884, v33, v343, v341);
            v125 = v206;
            v112 = v345;
            LODWORD(v65) = v204;
            v38 = v205;
            v34 = v341;
            v33 = v317;
            v19 = v340;
            v22 = a1 + 26684;
            v7 = v207;
          }

          else
          {
            v144 = &v38[v134];
            *v38 = *v318;
            if (v134 > 0x10)
            {
              v213 = v38 + 16;
              v214 = v316;
              do
              {
                v215 = *v214++;
                *v213 = v215;
                v213 += 16;
              }

              while (v213 < v144);
            }

            v145 = &v144[-v143];
            v357 = (a1 + 30348 + v134);
            if (v143 <= v144 - v33)
            {
LABEL_169:
              if (v143 < 0x10)
              {
                if (v143 > 7)
                {
                  *v144 = *v145;
                }

                else
                {
                  v223 = ZSTD_overlapCopy8_dec64table[v143];
                  *v144 = *v145;
                  v144[1] = v145[1];
                  v144[2] = v145[2];
                  v144[3] = v145[3];
                  v224 = &v145[ZSTD_overlapCopy8_dec32table[v143]];
                  *(v144 + 1) = *v224;
                  v145 = &v224[-v223];
                }

                if (v142 >= 9)
                {
                  v230 = v144 + 8;
                  v231 = (v145 + 8);
                  v232 = &v144[v142];
                  if (v144 + 8 - v231 >= 16)
                  {
                    do
                    {
                      v234 = *v231++;
                      *v230++ = v234;
                    }

                    while (v230 < v232);
                  }

                  else
                  {
                    do
                    {
                      v233 = *v231;
                      v231 = (v231 + 8);
                      *v230 = v233;
                      v230 = (v230 + 8);
                    }

                    while (v230 < v232);
                  }
                }

                v22 = a1 + 26684;
                v19 = v340;
                v33 = v317;
                v34 = v341;
                goto LABEL_204;
              }

              v149 = &v144[v142];
              do
              {
                v150 = *v145;
                v145 += 16;
                *v144 = v150;
                v144 += 16;
              }

              while (v144 < v149);
            }

            else
            {
              if (v143 > &v144[-v343])
              {
                return -20;
              }

              v321 = v65;
              v325 = v125;
              v330 = v38;
              v146 = v145 - v33;
              v147 = (v34 + v145 - v33);
              v148 = v33;
              if (v147 + v142 > v34)
              {
                memmove(v144, v147, v33 - v145);
                v144 -= v146;
                v142 += v146;
                v145 = v148;
                v22 = a1 + 26684;
                v19 = v340;
                v33 = v148;
                v34 = v341;
                v38 = v330;
                LODWORD(v65) = v321;
                v125 = v325;
                v112 = v345;
                goto LABEL_169;
              }

              memmove(v144, v147, v142);
              v22 = a1 + 26684;
              v19 = v340;
              v33 = v148;
              v34 = v341;
              v38 = v330;
              LODWORD(v65) = v321;
              v125 = v325;
LABEL_204:
              v112 = v345;
            }
          }

          if (v7 > 0xFFFFFFFFFFFFFF88)
          {
            return v7;
          }

          v176 = &v55[v127];
          if (v125 <= &v55[v127])
          {
            v182 = v33;
          }

          else
          {
            v182 = v34;
          }

          _X9 = &v176[v182 - v125];
          __asm
          {
            PRFM            #0, [X9]
            PRFM            #0, [X9,#0x40]
          }

          *v133 = v127;
          v133[1] = v112;
          v133[2] = v125;
          v38 += v7;
          v32 = a1 + 95884;
LABEL_210:
          v55 = &v176[v112];
          LODWORD(v65) = v65 + 1;
          v63 = DWORD2(v351);
          continue;
        }

        v165 = v135 - 32;
        v166 = v133[1];
        v167 = v133[2];
        if (v135 > v32 || (v7 = v166 + v134, &v38[v166 + v134] > v165))
        {
          v358 = *v133;
          v359 = v166;
          v360 = v167;
          v195 = v65;
          v196 = v32;
          v197 = v38;
          v198 = v127;
          v199 = v125;
          v200 = ZSTD_execSequenceEndSplitLitBuffer(v38, v342, v165, &v358, &v357, v32, v317, v343, v34);
          v125 = v199;
          v127 = v198;
          LODWORD(v65) = v195;
          v38 = v197;
          v34 = v341;
          v33 = v317;
          v19 = v340;
          v22 = a1 + 26684;
          v7 = v200;
          v32 = v196;
          goto LABEL_197;
        }

        v168 = &v38[v134];
        *v38 = *v357;
        if (v134 > 0x10)
        {
          v210 = v38 + 16;
          v211 = (v132 + 16);
          do
          {
            v212 = *v211++;
            *v210 = v212;
            v210 += 16;
          }

          while (v210 < v168);
        }

        v169 = &v168[-v167];
        v357 = v135;
        if (v167 <= v168 - v33)
        {
LABEL_191:
          v112 = v345;
          if (v167 < 0x10)
          {
            if (v167 > 7)
            {
              *v168 = *v169;
            }

            else
            {
              v216 = ZSTD_overlapCopy8_dec64table[v167];
              *v168 = *v169;
              v168[1] = v169[1];
              v168[2] = v169[2];
              v168[3] = v169[3];
              v217 = &v169[ZSTD_overlapCopy8_dec32table[v167]];
              *(v168 + 1) = *v217;
              v169 = &v217[-v216];
            }

            if (v166 >= 9)
            {
              v225 = v168 + 8;
              v226 = (v169 + 8);
              v227 = &v168[v166];
              if (v168 + 8 - v226 >= 16)
              {
                do
                {
                  v229 = *v226++;
                  *v225++ = v229;
                }

                while (v225 < v227);
              }

              else
              {
                do
                {
                  v228 = *v226;
                  v226 = (v226 + 8);
                  *v225 = v228;
                  v225 = (v225 + 8);
                }

                while (v225 < v227);
              }
            }

            v22 = a1 + 26684;
            v19 = v340;
            v33 = v317;
            v34 = v341;
            goto LABEL_197;
          }

          v174 = &v168[v166];
          do
          {
            v175 = *v169;
            v169 += 16;
            *v168 = v175;
            v168 += 16;
          }

          while (v168 < v174);
        }

        else
        {
          if (v167 > &v168[-v343])
          {
            return -20;
          }

          v170 = v65;
          v327 = v125;
          v332 = v38;
          v337 = v32;
          v171 = v169 - v33;
          v172 = (v34 + v169 - v33);
          v173 = v33;
          if (v172 + v166 > v34)
          {
            memmove(v168, v172, v33 - v169);
            v168 -= v171;
            v166 += v171;
            v169 = v173;
            v22 = a1 + 26684;
            v19 = v340;
            v33 = v173;
            v34 = v341;
            v32 = v337;
            v125 = v327;
            v38 = v332;
            LODWORD(v65) = v170;
            goto LABEL_191;
          }

          memmove(v168, v172, v166);
          v22 = a1 + 26684;
          v19 = v340;
          v33 = v173;
          v34 = v341;
          v32 = v337;
          v125 = v327;
          v38 = v332;
          LODWORD(v65) = v170;
LABEL_197:
          v112 = v345;
        }

LABEL_198:
        if (v7 > 0xFFFFFFFFFFFFFF88)
        {
          return v7;
        }

        v176 = &v55[v127];
        if (v125 <= &v55[v127])
        {
          v177 = v33;
        }

        else
        {
          v177 = v34;
        }

        _X9 = &v176[v177 - v125];
        __asm
        {
          PRFM            #0, [X9]
          PRFM            #0, [X9,#0x40]
        }

        v181 = &v362[24 * (v65 & 7) - 16];
        *v181 = v127;
        v181[1] = v112;
        v181[2] = v125;
        v38 += v7;
        goto LABEL_210;
      }

      v151 = &v362[24 * (v65 & 7) - 16];
      v152 = *v151;
      v153 = v151[1];
      v154 = v151[2];
      v155 = v357;
      v156 = &v357[*v151];
      if (v156 > v32 || (v7 = v153 + v152, &v38[v153 + v152] > v349))
      {
        v358 = v152;
        v359 = v153;
        v360 = v154;
        v188 = v65;
        v189 = v127;
        v190 = v112;
        v191 = v32;
        v192 = v38;
        v193 = v125;
        v194 = ZSTD_execSequenceEnd(v38, v342, &v358, &v357, v32, v33, v343, v341);
        v125 = v193;
        v112 = v190;
        v127 = v189;
        LODWORD(v65) = v188;
        v38 = v192;
        v34 = v341;
        v33 = v317;
        v19 = v340;
        v22 = a1 + 26684;
        v7 = v194;
        v32 = v191;
        goto LABEL_198;
      }

      v157 = &v38[v152];
      *v38 = *v357;
      if (v152 > 0x10)
      {
        v201 = v38 + 16;
        v202 = (v155 + 16);
        do
        {
          v203 = *v202++;
          *v201 = v203;
          v201 += 16;
        }

        while (v201 < v157);
      }

      v158 = &v157[-v154];
      v357 = v156;
      if (v154 > v157 - v33)
      {
        if (v154 > &v157[-v343])
        {
          return -20;
        }

        v159 = v112;
        v322 = v65;
        v326 = v125;
        v331 = v38;
        v336 = v32;
        v160 = v158 - v33;
        v161 = (v34 + v158 - v33);
        v162 = v33;
        if (v161 + v153 <= v34)
        {
          memmove(v157, v161, v153);
          v22 = a1 + 26684;
          v19 = v340;
          v33 = v162;
          v34 = v341;
          v32 = v336;
          v125 = v326;
          v38 = v331;
          LODWORD(v65) = v322;
          v112 = v159;
          goto LABEL_198;
        }

        memmove(v157, v161, v33 - v158);
        v157 -= v160;
        v153 += v160;
        v158 = v162;
        v22 = a1 + 26684;
        v19 = v340;
        v33 = v162;
        v34 = v341;
        v32 = v336;
        v125 = v326;
        v38 = v331;
        LODWORD(v65) = v322;
        v112 = v159;
      }

      if (v154 < 0x10)
      {
        if (v154 > 7)
        {
          *v157 = *v158;
        }

        else
        {
          v208 = ZSTD_overlapCopy8_dec64table[v154];
          *v157 = *v158;
          v157[1] = v158[1];
          v157[2] = v158[2];
          v157[3] = v158[3];
          v209 = &v158[ZSTD_overlapCopy8_dec32table[v154]];
          *(v157 + 1) = *v209;
          v158 = &v209[-v208];
        }

        if (v153 >= 9)
        {
          v218 = v157 + 8;
          v219 = (v158 + 8);
          v220 = &v157[v153];
          if (v157 + 8 - v219 >= 16)
          {
            do
            {
              v222 = *v219++;
              *v218++ = v222;
            }

            while (v218 < v220);
          }

          else
          {
            do
            {
              v221 = *v219;
              v219 = (v219 + 8);
              *v218 = v221;
              v218 = (v218 + 8);
            }

            while (v218 < v220);
          }
        }

        v22 = a1 + 26684;
        v19 = v340;
        v33 = v317;
        v34 = v341;
      }

      else
      {
        v163 = &v157[v153];
        do
        {
          v164 = *v158;
          v158 += 16;
          *v157 = v164;
          v157 += 16;
        }

        while (v157 < v163);
      }

      goto LABEL_198;
    }

    break;
  }

  if (v65 < v19)
  {
    return -20;
  }

LABEL_265:
  v238 = v65 - v319;
  if (v65 - v319 < v19)
  {
    v347 = (v22 + 3664);
    v334 = (v22 + 3680);
    do
    {
      v239 = &v362[24 * (v238 & 7) - 16];
      if (*(v22 + 3660) == 2)
      {
        v240 = v357;
        v241 = *v239;
        v242 = &v357[*v239];
        v243 = *(a1 + 30336);
        if (v242 > v243)
        {
          v244 = v243 - v357;
          if (v243 != v357)
          {
            if (v244 > v342 - v38)
            {
              return -70;
            }

            v245 = v38;
            ZSTD_safecopyDstBeforeSrc(v38, v357, v244);
            v241 -= v244;
            *v239 = v241;
            v38 = &v245[v244];
            v22 = a1 + 26684;
            v19 = v340;
            v33 = v317;
            v34 = v341;
          }

          v357 = v347;
          *(v22 + 3660) = 0;
          v247 = v239[1];
          v246 = v239[2];
          v7 = v247 + v241;
          if (v241 > 0x10000 || &v38[v247 + v241] > v349)
          {
            v358 = v241;
            v359 = v247;
            v360 = v246;
            v284 = v38;
            v285 = ZSTD_execSequenceEnd(v38, v342, &v358, &v357, a1 + 95884, v33, v343, v341);
            v38 = v284;
            v34 = v341;
            v33 = v317;
            v19 = v340;
            v22 = a1 + 26684;
            v7 = v285;
          }

          else
          {
            v249 = &v38[v241];
            *v38 = *v347;
            if (v241 > 0x10)
            {
              v292 = v38 + 16;
              v293 = v334;
              do
              {
                v294 = *v293++;
                *v292 = v294;
                v292 += 16;
              }

              while (v292 < v249);
            }

            v250 = &v249[-v246];
            v357 = &v347[v241];
            if (v246 <= v249 - v33)
            {
LABEL_281:
              if (v246 < 0x10)
              {
                if (v246 > 7)
                {
                  *v249 = *v250;
                }

                else
                {
                  v302 = ZSTD_overlapCopy8_dec64table[v246];
                  *v249 = *v250;
                  v249[1] = v250[1];
                  v249[2] = v250[2];
                  v249[3] = v250[3];
                  v303 = &v250[ZSTD_overlapCopy8_dec32table[v246]];
                  *(v249 + 1) = *v303;
                  v250 = &v303[-v302];
                }

                if (v247 >= 9)
                {
                  v309 = v249 + 8;
                  v310 = (v250 + 8);
                  v311 = &v249[v247];
                  if (v249 + 8 - v310 >= 16)
                  {
                    do
                    {
                      v313 = *v310++;
                      *v309++ = v313;
                    }

                    while (v309 < v311);
                  }

                  else
                  {
                    do
                    {
                      v312 = *v310;
                      v310 = (v310 + 8);
                      *v309 = v312;
                      v309 = (v309 + 8);
                    }

                    while (v309 < v311);
                  }
                }

                v22 = a1 + 26684;
                v19 = v340;
                v33 = v317;
                v34 = v341;
              }

              else
              {
                v255 = &v249[v247];
                do
                {
                  v256 = *v250;
                  v250 += 16;
                  *v249 = v256;
                  v249 += 16;
                }

                while (v249 < v255);
              }
            }

            else
            {
              if (v246 > &v249[-v343])
              {
                return -20;
              }

              v251 = v38;
              v252 = v250 - v33;
              v253 = (v34 + v250 - v33);
              v254 = v33;
              if (v253 + v247 > v34)
              {
                memmove(v249, v253, v33 - v250);
                v249 -= v252;
                v247 += v252;
                v250 = v254;
                v22 = a1 + 26684;
                v19 = v340;
                v33 = v254;
                v34 = v341;
                v38 = v251;
                goto LABEL_281;
              }

              memmove(v249, v253, v247);
              v22 = a1 + 26684;
              v19 = v340;
              v33 = v254;
              v34 = v341;
              v38 = v251;
            }
          }

          if (v7 >= 0xFFFFFFFFFFFFFF89)
          {
            return v7;
          }

          v38 += v7;
          v32 = a1 + 95884;
          goto LABEL_317;
        }

        v271 = v242 - 32;
        v258 = v239[1];
        v272 = v239[2];
        v7 = v258 + v241;
        if (v242 > v32 || &v38[v258 + v241] > v271)
        {
          v358 = v241;
          v359 = v258;
          v360 = v272;
          v278 = v32;
          v279 = v38;
          v280 = ZSTD_execSequenceEndSplitLitBuffer(v38, v342, v271, &v358, &v357, v32, v317, v343, v34);
          goto LABEL_321;
        }

        v263 = &v38[v241];
        *v38 = *v357;
        if (v241 > 0x10)
        {
          v289 = v38 + 16;
          v290 = (v240 + 16);
          do
          {
            v291 = *v290++;
            *v289 = v291;
            v289 += 16;
          }

          while (v289 < v263);
        }

        v274 = &v263[-v272];
        v357 = v242;
        if (v272 <= v263 - v33)
        {
          goto LABEL_307;
        }

        if (v272 > &v263[-v343])
        {
          return -20;
        }

        v265 = v38;
        v339 = v32;
        v275 = v274 - v33;
        v267 = (v34 + v274 - v33);
        v268 = v33;
        if (v267 + v258 > v34)
        {
          memmove(v263, v267, v33 - v274);
          v263 -= v275;
          v258 += v275;
          v274 = v268;
          v22 = a1 + 26684;
          v19 = v340;
          v33 = v268;
          v34 = v341;
          v32 = v339;
          v38 = v265;
LABEL_307:
          if (v272 >= 0x10)
          {
            v276 = &v263[v258];
            do
            {
              v277 = *v274;
              v274 += 16;
              *v263 = v277;
              v263 += 16;
            }

            while (v263 < v276);
            goto LABEL_312;
          }

          v286 = v32;
          if (v272 > 7)
          {
            *v263 = *v274;
          }

          else
          {
            v295 = ZSTD_overlapCopy8_dec64table[v272];
            *v263 = *v274;
            v263[1] = v274[1];
            v263[2] = v274[2];
            v263[3] = v274[3];
            v296 = &v274[ZSTD_overlapCopy8_dec32table[v272]];
            *(v263 + 1) = *v296;
            v274 = &v296[-v295];
          }

          if (v258 >= 9)
          {
            v304 = v263 + 8;
            v305 = (v274 + 8);
            v306 = &v263[v258];
            if (v263 + 8 - v305 >= 16)
            {
              do
              {
                v308 = *v305++;
                *v304++ = v308;
              }

              while (v304 < v306);
            }

            else
            {
              do
              {
                v307 = *v305;
                v305 = (v305 + 8);
                *v304 = v307;
                v304 = (v304 + 8);
              }

              while (v304 < v306);
            }
          }

          goto LABEL_351;
        }
      }

      else
      {
        v257 = *v239;
        v258 = v239[1];
        v259 = v239[2];
        v7 = v258 + v257;
        v260 = v357;
        v261 = &v357[v257];
        if (&v357[v257] > v32 || &v38[v258 + v257] > v349)
        {
          v358 = v257;
          v359 = v258;
          v360 = v259;
          v278 = v32;
          v279 = v38;
          v280 = ZSTD_execSequenceEnd(v38, v342, &v358, &v357, v32, v33, v343, v341);
LABEL_321:
          v38 = v279;
          v34 = v341;
          v33 = v317;
          v19 = v340;
          v22 = a1 + 26684;
          v7 = v280;
          v32 = v278;
          goto LABEL_312;
        }

        v263 = &v38[v257];
        *v38 = *v357;
        if (v257 > 0x10)
        {
          v281 = v38 + 16;
          v282 = (v260 + 16);
          do
          {
            v283 = *v282++;
            *v281 = v283;
            v281 += 16;
          }

          while (v281 < v263);
        }

        v264 = &v263[-v259];
        v357 = v261;
        if (v259 <= v263 - v33)
        {
          goto LABEL_294;
        }

        if (v259 > &v263[-v343])
        {
          return -20;
        }

        v265 = v38;
        v339 = v32;
        v266 = v264 - v33;
        v267 = (v34 + v264 - v33);
        v268 = v33;
        if (v267 + v258 > v34)
        {
          memmove(v263, v267, v33 - v264);
          v263 -= v266;
          v258 += v266;
          v264 = v268;
          v22 = a1 + 26684;
          v19 = v340;
          v33 = v268;
          v34 = v341;
          v32 = v339;
          v38 = v265;
LABEL_294:
          if (v259 >= 0x10)
          {
            v269 = &v263[v258];
            do
            {
              v270 = *v264;
              v264 += 16;
              *v263 = v270;
              v263 += 16;
            }

            while (v263 < v269);
            goto LABEL_312;
          }

          v286 = v32;
          if (v259 > 7)
          {
            *v263 = *v264;
          }

          else
          {
            v287 = ZSTD_overlapCopy8_dec64table[v259];
            *v263 = *v264;
            v263[1] = v264[1];
            v263[2] = v264[2];
            v263[3] = v264[3];
            v288 = &v264[ZSTD_overlapCopy8_dec32table[v259]];
            *(v263 + 1) = *v288;
            v264 = &v288[-v287];
          }

          if (v258 >= 9)
          {
            v297 = v263 + 8;
            v298 = (v264 + 8);
            v299 = &v263[v258];
            if (v263 + 8 - v298 >= 16)
            {
              do
              {
                v301 = *v298++;
                *v297++ = v301;
              }

              while (v297 < v299);
            }

            else
            {
              do
              {
                v300 = *v298;
                v298 = (v298 + 8);
                *v297 = v300;
                v297 = (v297 + 8);
              }

              while (v297 < v299);
            }
          }

LABEL_351:
          v22 = a1 + 26684;
          v19 = v340;
          v33 = v317;
          v34 = v341;
          v32 = v286;
          goto LABEL_312;
        }
      }

      memmove(v263, v267, v258);
      v22 = a1 + 26684;
      v19 = v340;
      v33 = v268;
      v34 = v341;
      v32 = v339;
      v38 = v265;
LABEL_312:
      if (v7 > 0xFFFFFFFFFFFFFF88)
      {
        return v7;
      }

      v38 += v7;
LABEL_317:
      ++v238;
    }

    while (v238 != v19);
  }

  v314 = 88;
  v315 = v22;
  do
  {
    *v315++ = *(&v351 + v314);
    v314 += 8;
  }

  while (v314 != 112);
  v23 = *(v22 + 3660);
  v31 = v357;
  v24 = v342;
LABEL_31:
  if (v23 == 2)
  {
    v39 = v32 - v31;
    if (v32 - v31 <= v24 - v38)
    {
      if (v38)
      {
        v40 = v24;
        v41 = v38;
        memmove(v38, v31, v39);
        v24 = v40;
        v38 = &v41[v39];
      }

      v31 = (a1 + 30348);
      v32 = a1 + 95884;
      goto LABEL_36;
    }

    return -70;
  }

LABEL_36:
  v42 = v32 - v31;
  if (v32 - v31 > v24 - v38)
  {
    return -70;
  }

  if (v38)
  {
    v43 = v38;
    memmove(v38, v31, v42);
    v44 = &v43[v42];
  }

  else
  {
    v44 = 0;
  }

  return v44 - a2;
}

int64_t ZSTD_decompressSequencesSplitLitBuffer(uint64_t *a1, char *__dst, uint64_t a3, unsigned __int8 *a4, unint64_t a5, int a6)
{
  v7 = __dst;
  v8 = a1;
  v9 = a1 + 26684;
  v10 = &__dst[a3];
  v11 = a1[3764];
  v234 = v11;
  v12 = a1[3792];
  if (a6)
  {
    v13 = a1[3737];
    v226 = a1[3739];
    v227 = a1[3738];
    memset(v233, 0, sizeof(v233));
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v222 = a1 + 26684;
    *(a1 + 7499) = 1;
    v14 = 88;
    v15 = 26684;
    v228 = 0u;
    do
    {
      *(&v228 + v14) = *(a1 + v15);
      v14 += 8;
      v15 += 4;
    }

    while (v14 != 112);
    if (!a5)
    {
      return -20;
    }

    *(&v229 + 1) = a4;
    *&v230 = a4 + 8;
    v16 = a5 - 8;
    if (a5 >= 8)
    {
      v17 = *&a4[v16];
      *&v229 = &a4[v16];
      *&v228 = v17;
      if (!HIBYTE(v17) || a5 > 0xFFFFFFFFFFFFFF88)
      {
        return -20;
      }

      v220 = v7;
      v18 = 8 - (__clz(HIBYTE(v17)) ^ 0x1F);
      goto LABEL_34;
    }

    v17 = *a4;
    *&v229 = a4;
    *&v228 = v17;
    if (a5 > 4)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          v17 |= a4[6] << 48;
        }

        v17 += a4[5] << 40;
      }

      v17 += a4[4] << 32;
    }

    else
    {
      if (a5 == 2)
      {
LABEL_31:
        v17 += a4[1] << 8;
        *&v228 = v17;
LABEL_32:
        if (!a4[a5 - 1])
        {
          return -20;
        }

        v220 = v7;
        v16 = 0;
        v18 = __clz(a4[a5 - 1]) - 8 * a5 + 41;
LABEL_34:
        v25 = *a1;
        v26 = *(*a1 + 4);
        v27 = v26 + v18;
        v28 = (v17 >> -(v26 + v18)) & BIT_mask[v26];
        *(&v230 + 1) = v28;
        if (v27 > 0x40)
        {
          goto LABEL_45;
        }

        if (v16 >= 8)
        {
          v16 -= v27 >> 3;
          *&v229 = &a4[v16];
          v27 &= 7u;
          DWORD2(v228) = v27;
          v17 = *&a4[v16];
        }

        else
        {
          if (!v16)
          {
            goto LABEL_45;
          }

          v29 = v27 >> 3;
          if (&a4[v16 - v29] >= a4)
          {
            v29 = v29;
          }

          else
          {
            v29 = v16;
          }

          v16 -= v29;
          v17 = *&a4[v16];
          v27 -= 8 * v29;
          *&v229 = &a4[v16];
        }

        *&v228 = v17;
LABEL_45:
        v30 = v25 + 8;
        *&v231 = v30;
        v31 = a1[2];
        v32 = *(v31 + 4);
        v33 = v32 + v27;
        v34 = (v17 >> -v33) & BIT_mask[v32];
        *(&v231 + 1) = v34;
        if (v33 > 0x40)
        {
          goto LABEL_54;
        }

        if (v16 >= 8)
        {
          v16 -= v33 >> 3;
          v17 = *&a4[v16];
          v33 &= 7u;
          *&v229 = &a4[v16];
        }

        else
        {
          if (!v16)
          {
            goto LABEL_54;
          }

          v35 = v33 >> 3;
          if (&a4[v16 - v35] >= a4)
          {
            v35 = v35;
          }

          else
          {
            v35 = v16;
          }

          v16 -= v35;
          v17 = *&a4[v16];
          v33 -= 8 * v35;
          *&v229 = &a4[v16];
        }

        *&v228 = v17;
LABEL_54:
        v36 = v31 + 8;
        *&v232 = v36;
        v37 = a1[1];
        v38 = *(v37 + 4);
        v39 = v38 + v33;
        v40 = (v17 >> -v39) & BIT_mask[v38];
        DWORD2(v228) = v39;
        *(&v232 + 1) = v40;
        v221 = v10;
        if (v39 > 0x40)
        {
          goto LABEL_63;
        }

        v41 = &a4[v16];
        if (v16 >= 8)
        {
          *&v229 = &v41[-(v39 >> 3)];
          v39 &= 7u;
          DWORD2(v228) = v39;
          v17 = *v229;
        }

        else
        {
          if (!v16)
          {
            goto LABEL_63;
          }

          v42 = v39 >> 3;
          if (&v41[-v42] >= a4)
          {
            v42 = v42;
          }

          else
          {
            v42 = v16;
          }

          *&v229 = &v41[-v42];
          v39 -= 8 * v42;
          DWORD2(v228) = v39;
          v17 = *&v41[-v42];
        }

        *&v228 = v17;
LABEL_63:
        *&v233[0] = v37 + 8;
        v43 = (v30 + 8 * v28);
        v44 = (*&v233[0] + 8 * v40);
        v45 = *(v44 + 1);
        v46 = *(v43 + 1);
        v47 = (v36 + 8 * v34);
        v48 = *(v47 + 1);
        v49 = *(v43 + 2);
        v50 = *(v44 + 2);
        v51 = *(v47 + 2);
        v52 = v49 + v51;
        v53 = *v43;
        v54 = *v44;
        v55 = *v47;
        v56 = *(v43 + 3);
        v57 = *(v44 + 3);
        v58 = *(v47 + 3);
        v224 = v12;
        if (v51 >= 2)
        {
          v59 = v17 << v39 >> -v51;
          v39 += v51;
          DWORD2(v228) = v39;
          v60 = v59 + v48;
          v233[1] = *(v233 + 8);
LABEL_65:
          v61 = v50 + v52;
          *(&v233[0] + 1) = v60;
          if (v50)
          {
            v197 = v17 << v39 >> -v50;
            v39 += v50;
            DWORD2(v228) = v39;
            v45 += v197;
          }

          if (v61 >= 0x1Fu)
          {
            v213 = v11;
            v215 = v60;
            v219 = a6;
            v217 = v45;
            BIT_reloadDStream(&v228);
            v60 = v215;
            v45 = v217;
            a6 = v219;
            v12 = v224;
            v11 = v213;
            v17 = v228;
            v39 = DWORD2(v228);
          }

          v62 = v39 + v49;
          if (v49)
          {
            v63 = (v17 << v39 >> -v49) + v46;
          }

          else
          {
            v62 = v39;
            v63 = v46;
          }

          v64 = v62 + v56;
          v65 = ((v17 >> -(v62 + v56)) & BIT_mask[v56]) + v53;
          v66 = v64 + v57;
          *(&v232 + 1) = ((v17 >> -v66) & BIT_mask[v57]) + v54;
          v67 = BIT_mask[v58];
          DWORD2(v228) = v66 + v58;
          *(&v230 + 1) = v65;
          *(&v231 + 1) = ((v17 >> -(v66 + v58)) & v67) + v55;
          v68 = &v11[v63];
          if (&v11[v63] > v12)
          {
            v19 = v220;
            v8 = a1;
            goto LABEL_137;
          }

          v19 = v220;
          v8 = a1;
          while (1)
          {
            v69 = v68 - 32;
            if (v68 > v12 || (v23 = v63 + v45, &v19[v63 + v45] > v69))
            {
              v235 = v63;
              v236 = v45;
              v237 = v60;
              v104 = a6;
              v105 = ZSTD_execSequenceEndSplitLitBuffer(v19, v221, v69, &v235, &v234, v224, v13, v227, v226);
              a6 = v104;
              v12 = v224;
              v23 = v105;
            }

            else
            {
              v70 = &v19[v63];
              *v19 = *v11;
              if (v63 > 0x10)
              {
                v106 = v19 + 16;
                v107 = (v11 + 16);
                do
                {
                  v108 = *v107++;
                  *v106 = v108;
                  v106 += 16;
                }

                while (v106 < v70);
              }

              v71 = &v70[-v60];
              v234 = v68;
              if (v60 > v70 - v13)
              {
                if (v60 > &v70[-v227])
                {
                  return -20;
                }

                v72 = a6;
                v73 = v71 - v13;
                v74 = (v226 + v71 - v13);
                if (v74 + v45 <= v226)
                {
                  memmove(v70, v74, v45);
                  v12 = v224;
                  a6 = v72;
                  goto LABEL_87;
                }

                v75 = v45;
                v76 = v60;
                memmove(v70, v74, v13 - v71);
                v60 = v76;
                v70 -= v73;
                v45 = v73 + v75;
                v71 = v13;
                v12 = v224;
                a6 = v72;
              }

              if (v60 < 0x10)
              {
                if (v60 > 7)
                {
                  *v70 = *v71;
                }

                else
                {
                  v110 = ZSTD_overlapCopy8_dec64table[v60];
                  *v70 = *v71;
                  v70[1] = v71[1];
                  v70[2] = v71[2];
                  v70[3] = v71[3];
                  v111 = &v71[ZSTD_overlapCopy8_dec32table[v60]];
                  *(v70 + 1) = *v111;
                  v71 = &v111[-v110];
                }

                if (v45 >= 9)
                {
                  v112 = v70 + 8;
                  v113 = (v71 + 8);
                  v114 = &v70[v45];
                  if (v70 + 8 - v113 >= 16)
                  {
                    do
                    {
                      v116 = *v113++;
                      *v112++ = v116;
                    }

                    while (v112 < v114);
                  }

                  else
                  {
                    do
                    {
                      v115 = *v113;
                      v113 = (v113 + 8);
                      *v112 = v115;
                      v112 = (v112 + 8);
                    }

                    while (v112 < v114);
                  }
                }
              }

              else
              {
                v77 = &v70[v45];
                do
                {
                  v78 = *v71;
                  v71 += 16;
                  *v70 = v78;
                  v70 += 16;
                }

                while (v70 < v77);
              }
            }

LABEL_87:
            if (v23 > 0xFFFFFFFFFFFFFF88)
            {
              return v23;
            }

            v19 += v23;
            if (!--a6)
            {
              goto LABEL_239;
            }

            v79 = DWORD2(v228);
            if (DWORD2(v228) <= 0x40)
            {
              if (v229 >= v230)
              {
                v82 = (v229 - (DWORD2(v228) >> 3));
                *&v229 = v82;
                v79 = BYTE8(v228) & 7;
              }

              else
              {
                if (v229 == *(&v229 + 1))
                {
                  goto LABEL_98;
                }

                v80 = DWORD2(v228) >> 3;
                if (v229 - v80 >= *(&v229 + 1))
                {
                  v81 = v80;
                }

                else
                {
                  v81 = (v229 - DWORD2(v229));
                }

                v82 = (v229 - v81);
                *&v229 = v229 - v81;
                v79 = DWORD2(v228) - 8 * v81;
              }

              DWORD2(v228) = v79;
              *&v228 = *v82;
            }

LABEL_98:
            v83 = (v231 + 8 * *(&v230 + 1));
            v84 = (*&v233[0] + 8 * *(&v232 + 1));
            v85 = (v232 + 8 * *(&v231 + 1));
            v45 = *(v84 + 1);
            v63 = *(v83 + 1);
            v86 = *(v85 + 1);
            v87 = *(v83 + 2);
            v88 = *(v84 + 2);
            v89 = *(v85 + 2);
            v90 = *v83;
            v91 = *v84;
            v92 = *v85;
            v93 = *(v83 + 3);
            v94 = *(v84 + 3);
            v95 = *(v85 + 3);
            if (v89 < 2)
            {
              if (!*(v85 + 2))
              {
                v60 = *(v233 + (v63 == 0) + 1);
                v97 = v233 + 8 * (v63 != 0) + 8;
                goto LABEL_101;
              }

              if (v63)
              {
                v86 = v86;
              }

              else
              {
                v86 = (v86 + 1);
              }

              v117 = v228 << v79++;
              DWORD2(v228) = v79;
              v118 = v86 + (v117 >> 63);
              if (v118 == 3)
              {
                if ((*(&v233[0] + 1) - 1) <= 1)
                {
                  v60 = 1;
                }

                else
                {
                  v60 = *(&v233[0] + 1) - 1;
                }

                goto LABEL_135;
              }

              if (*(v233 + v118 + 1) <= 1uLL)
              {
                v60 = 1;
              }

              else
              {
                v60 = *(v233 + v118 + 1);
              }

              if (v118 != 1)
              {
LABEL_135:
                *(&v233[1] + 1) = *&v233[1];
              }

              v12 = v224;
              goto LABEL_100;
            }

            v96 = v228 << v79 >> -v89;
            v79 += v89;
            DWORD2(v228) = v79;
            v60 = v96 + v86;
            *(&v233[1] + 1) = *&v233[1];
LABEL_100:
            v97 = v233 + 8;
LABEL_101:
            v98 = *v97;
            *(&v233[0] + 1) = v60;
            *&v233[1] = v98;
            if (v88)
            {
              v109 = v228 << v79 >> -v88;
              v79 += v88;
              DWORD2(v228) = v79;
              v45 += v109;
            }

            if ((v88 + v87 + v89) >= 0x1Fu)
            {
              v218 = a6;
              v214 = v60;
              v216 = v45;
              v212 = v92;
              BIT_reloadDStream(&v228);
              v92 = v212;
              v60 = v214;
              v45 = v216;
              a6 = v218;
              v12 = v224;
              v79 = DWORD2(v228);
            }

            v99 = (v228 << v79 >> -v87) + v63;
            if (v87)
            {
              v79 += v87;
              v63 = v99;
            }

            v100 = v79 + v93;
            v101 = ((v228 >> -v100) & BIT_mask[v93]) + v90;
            v102 = v100 + v94;
            *(&v232 + 1) = ((v228 >> -v102) & BIT_mask[v94]) + v91;
            v103 = BIT_mask[v95];
            DWORD2(v228) = v102 + v95;
            *(&v230 + 1) = v101;
            *(&v231 + 1) = ((v228 >> -(v102 + v95)) & v103) + v92;
            v11 = v234;
            v68 = &v234[v63];
            v8 = a1;
            if (&v234[v63] > a1[3792])
            {
              v12 = a1[3792];
LABEL_137:
              v119 = v222;
              if (a6 >= 1)
              {
                v120 = v12 - v11;
                if (v12 != v11)
                {
                  if (v120 <= v221 - v19)
                  {
                    v121 = a6;
                    v122 = v45;
                    v123 = v60;
                    ZSTD_safecopyDstBeforeSrc(v19, v11, v12 - v11);
                    v60 = v123;
                    v45 = v122;
                    a6 = v121;
                    v119 = v222;
                    v63 -= v120;
                    v19 += v120;
                    goto LABEL_141;
                  }

                  return -70;
                }

LABEL_141:
                v234 = v119 + 3664;
                v12 = v8 + 95884;
                *(v119 + 915) = 0;
                v124 = v221 - 32;
                v225 = v8 + 95884;
                if (v63 > 0x10000 || (v23 = v63 + v45, &v19[v63 + v45] > v124))
                {
                  v235 = v63;
                  v236 = v45;
                  v237 = v60;
                  v198 = a6;
                  v199 = ZSTD_execSequenceEnd(v19, v221, &v235, &v234, v8 + 95884, v13, v227, v226);
                  a6 = v198;
                  v12 = v8 + 95884;
                  v23 = v199;
                  goto LABEL_153;
                }

                v125 = &v19[v63];
                v126 = &v19[v63 - v60];
                *v19 = *(v119 + 229);
                if (v63 > 0x10)
                {
                  v200 = v19 + 16;
                  v201 = (v222 + 3680);
                  do
                  {
                    v202 = *v201++;
                    *v200 = v202;
                    v200 += 16;
                  }

                  while (v200 < v125);
                }

                v234 = a1 + v63 + 30348;
                if (v60 <= v125 - v13)
                {
LABEL_148:
                  if (v60 < 0x10)
                  {
                    if (v60 > 7)
                    {
                      *v125 = *v126;
                    }

                    else
                    {
                      v203 = ZSTD_overlapCopy8_dec64table[v60];
                      *v125 = *v126;
                      v125[1] = v126[1];
                      v125[2] = v126[2];
                      v125[3] = v126[3];
                      v204 = &v126[ZSTD_overlapCopy8_dec32table[v60]];
                      *(v125 + 1) = *v204;
                      v126 = &v204[-v203];
                    }

                    if (v45 >= 9)
                    {
                      v205 = v125 + 8;
                      v206 = (v126 + 8);
                      v207 = &v125[v45];
                      if (v125 + 8 - v206 >= 16)
                      {
                        do
                        {
                          v209 = *v206++;
                          *v205++ = v209;
                        }

                        while (v205 < v207);
                      }

                      else
                      {
                        do
                        {
                          v208 = *v206;
                          v206 = (v206 + 8);
                          *v205 = v208;
                          v205 = (v205 + 8);
                        }

                        while (v205 < v207);
                      }
                    }

                    v12 = v225;
                  }

                  else
                  {
                    v133 = &v125[v45];
                    do
                    {
                      v134 = *v126;
                      v126 += 16;
                      *v125 = v134;
                      v125 += 16;
                    }

                    while (v125 < v133);
                  }

                  goto LABEL_153;
                }

                if (v60 <= &v125[-v227])
                {
                  v127 = a6;
                  v128 = v126 - v13;
                  v129 = (v226 + v126 - v13);
                  if (v129 + v45 > v226)
                  {
                    v130 = &v19[v63];
                    v131 = v45;
                    v132 = v60;
                    memmove(v130, v129, v13 - v126);
                    v60 = v132;
                    v125 -= v128;
                    v45 = v128 + v131;
                    v126 = v13;
                    v12 = v225;
                    a6 = v127;
                    goto LABEL_148;
                  }

                  memmove(&v19[v63], v129, v45);
                  v12 = v225;
                  a6 = v127;
LABEL_153:
                  if (v23 <= 0xFFFFFFFFFFFFFF88)
                  {
                    v19 += v23;
                    v135 = a6 - 1;
                    if (a6 != 1)
                    {
                      v136 = DWORD2(v228);
                      if (DWORD2(v228) > 0x40)
                      {
                        goto LABEL_164;
                      }

                      if (v229 >= v230)
                      {
                        v139 = (v229 - (DWORD2(v228) >> 3));
                        *&v229 = v139;
                        v136 = BYTE8(v228) & 7;
                      }

                      else
                      {
                        if (v229 == *(&v229 + 1))
                        {
                          goto LABEL_164;
                        }

                        v137 = DWORD2(v228) >> 3;
                        if (v229 - v137 >= *(&v229 + 1))
                        {
                          v138 = v137;
                        }

                        else
                        {
                          v138 = (v229 - DWORD2(v229));
                        }

                        v139 = (v229 - v138);
                        *&v229 = v229 - v138;
                        v136 = DWORD2(v228) - 8 * v138;
                      }

                      *&v228 = *v139;
LABEL_164:
                      while (1)
                      {
                        v140 = (v231 + 8 * *(&v230 + 1));
                        v141 = (*&v233[0] + 8 * *(&v232 + 1));
                        v142 = (v232 + 8 * *(&v231 + 1));
                        v143 = *(v141 + 1);
                        v144 = *(v140 + 1);
                        v145 = *(v142 + 1);
                        v146 = *(v140 + 2);
                        v147 = *(v141 + 2);
                        v148 = *(v142 + 2);
                        v149 = *v140;
                        v150 = *v141;
                        v151 = *v142;
                        v152 = *(v140 + 3);
                        v153 = *(v141 + 3);
                        v154 = *(v142 + 3);
                        if (v148 >= 2)
                        {
                          break;
                        }

                        if (*(v142 + 2))
                        {
                          if (v144)
                          {
                            v145 = v145;
                          }

                          else
                          {
                            v145 = (v145 + 1);
                          }

                          v192 = v228 << v136++;
                          DWORD2(v228) = v136;
                          v193 = v145 + (v192 >> 63);
                          if (v193 == 3)
                          {
                            if ((*(&v233[0] + 1) - 1) <= 1)
                            {
                              v156 = 1;
                            }

                            else
                            {
                              v156 = *(&v233[0] + 1) - 1;
                            }

                            goto LABEL_234;
                          }

                          if (*(v233 + v193 + 1) <= 1uLL)
                          {
                            v156 = 1;
                          }

                          else
                          {
                            v156 = *(v233 + v193 + 1);
                          }

                          if (v193 != 1)
                          {
LABEL_234:
                            *(&v233[1] + 1) = *&v233[1];
                          }

                          v12 = v225;
LABEL_166:
                          v157 = v233 + 8;
                          goto LABEL_167;
                        }

                        v156 = *(v233 + (v144 == 0) + 1);
                        v157 = v233 + 8 * (v144 != 0) + 8;
LABEL_167:
                        v158 = *v157;
                        *(&v233[0] + 1) = v156;
                        *&v233[1] = v158;
                        if (v147)
                        {
                          v178 = v228 << v136 >> -v147;
                          v136 += v147;
                          v143 += v178;
                        }

                        if ((v147 + v146 + v148) >= 0x1Fu && v136 <= 0x40)
                        {
                          if (v229 >= v230)
                          {
                            v181 = (v229 - (v136 >> 3));
                            *&v229 = v181;
                            v136 &= 7u;
                          }

                          else
                          {
                            if (v229 == *(&v229 + 1))
                            {
                              goto LABEL_170;
                            }

                            v179 = v136 >> 3;
                            if ((v229 - v179) >= *(&v229 + 1))
                            {
                              v180 = v179;
                            }

                            else
                            {
                              v180 = (v229 - DWORD2(v229));
                            }

                            v181 = (v229 - v180);
                            *&v229 = v229 - v180;
                            v136 -= 8 * v180;
                          }

                          *&v228 = *v181;
                        }

LABEL_170:
                        v159 = (v228 << v136 >> -v146) + v144;
                        v160 = v146 == 0;
                        if (v146)
                        {
                          v161 = v136 + v146;
                        }

                        else
                        {
                          v161 = v136;
                        }

                        if (v160)
                        {
                          v162 = v144;
                        }

                        else
                        {
                          v162 = v159;
                        }

                        v163 = ((v228 >> -(v161 + v152)) & BIT_mask[v152]) + v149;
                        *(&v232 + 1) = ((v228 >> -(v161 + v152 + v153)) & BIT_mask[v153]) + v150;
                        v164 = v161 + v152 + v153 + v154;
                        v165 = (v228 >> -(v161 + v152 + v153 + v154)) & BIT_mask[v154];
                        DWORD2(v228) = v164;
                        *(&v230 + 1) = v163;
                        *(&v231 + 1) = v165 + v151;
                        v166 = v234;
                        v167 = &v234[v162];
                        if (&v234[v162] > v12 || (v23 = v162 + v143, &v19[v162 + v143] > v124))
                        {
                          v235 = v162;
                          v236 = v143;
                          v237 = v156;
                          v177 = ZSTD_execSequenceEnd(v19, v221, &v235, &v234, v12, v13, v227, v226);
                          v12 = v225;
                          v23 = v177;
                        }

                        else
                        {
                          v168 = &v19[v162];
                          *v19 = *v234;
                          if (v162 > 0x10)
                          {
                            v182 = v19 + 16;
                            v183 = (v166 + 16);
                            do
                            {
                              v184 = *v183++;
                              *v182 = v184;
                              v182 += 16;
                            }

                            while (v182 < v168);
                          }

                          v169 = &v168[-v156];
                          v234 = v167;
                          if (v156 <= v168 - v13)
                          {
                            goto LABEL_183;
                          }

                          if (v156 > &v168[-v227])
                          {
                            return -20;
                          }

                          v170 = v169 - v13;
                          v171 = (v226 + v169 - v13);
                          if (v171 + v143 > v226)
                          {
                            memmove(v168, v171, v13 - v169);
                            v168 -= v170;
                            v143 += v170;
                            v169 = v13;
                            v12 = v225;
LABEL_183:
                            if (v156 < 0x10)
                            {
                              if (v156 > 7)
                              {
                                *v168 = *v169;
                              }

                              else
                              {
                                v185 = ZSTD_overlapCopy8_dec64table[v156];
                                *v168 = *v169;
                                v168[1] = v169[1];
                                v168[2] = v169[2];
                                v168[3] = v169[3];
                                v186 = &v169[ZSTD_overlapCopy8_dec32table[v156]];
                                *(v168 + 1) = *v186;
                                v169 = &v186[-v185];
                              }

                              if (v143 >= 9)
                              {
                                v187 = v168 + 8;
                                v188 = (v169 + 8);
                                v189 = &v168[v143];
                                if (v168 + 8 - v188 >= 16)
                                {
                                  do
                                  {
                                    v191 = *v188++;
                                    *v187++ = v191;
                                  }

                                  while (v187 < v189);
                                }

                                else
                                {
                                  do
                                  {
                                    v190 = *v188;
                                    v188 = (v188 + 8);
                                    *v187 = v190;
                                    v187 = (v187 + 8);
                                  }

                                  while (v187 < v189);
                                }
                              }
                            }

                            else
                            {
                              v172 = &v168[v143];
                              do
                              {
                                v173 = *v169;
                                v169 += 16;
                                *v168 = v173;
                                v168 += 16;
                              }

                              while (v168 < v172);
                            }

                            goto LABEL_188;
                          }

                          memmove(v168, v171, v143);
                          v12 = v225;
                        }

LABEL_188:
                        if (v23 > 0xFFFFFFFFFFFFFF88)
                        {
                          return v23;
                        }

                        v19 += v23;
                        if (!--v135)
                        {
                          goto LABEL_238;
                        }

                        v136 = DWORD2(v228);
                        if (DWORD2(v228) <= 0x40)
                        {
                          if (v229 >= v230)
                          {
                            v176 = (v229 - (DWORD2(v228) >> 3));
                            *&v229 = v176;
                            v136 = BYTE8(v228) & 7;
                          }

                          else
                          {
                            if (v229 == *(&v229 + 1))
                            {
                              continue;
                            }

                            v174 = DWORD2(v228) >> 3;
                            if (v229 - v174 >= *(&v229 + 1))
                            {
                              v175 = v174;
                            }

                            else
                            {
                              v175 = (v229 - DWORD2(v229));
                            }

                            v176 = (v229 - v175);
                            *&v229 = v229 - v175;
                            v136 = DWORD2(v228) - 8 * v175;
                          }

                          DWORD2(v228) = v136;
                          *&v228 = *v176;
                        }
                      }

                      v155 = v228 << v136 >> -v148;
                      v136 += v148;
                      v156 = v155 + v145;
                      *(&v233[1] + 1) = *&v233[1];
                      goto LABEL_166;
                    }

LABEL_238:
                    v8 = a1;
LABEL_239:
                    v7 = v220;
                    if (DWORD2(v228) > 0x40 || (v23 = -20, DWORD2(v228) == 64) && v229 < v230 && v229 == *(&v229 + 1))
                    {
                      v195 = 88;
                      v196 = v222;
                      do
                      {
                        *v196++ = *(&v228 + v195);
                        v195 += 8;
                      }

                      while (v195 != 112);
                      v11 = v234;
                      v10 = v221;
                      v9 = v222;
                      goto LABEL_10;
                    }
                  }

                  return v23;
                }
              }

              return -20;
            }
          }
        }

        if (!*(v47 + 2))
        {
          v60 = *(v233 + (v46 == 0) + 1);
          *&v233[1] = *(v233 + (v46 != 0) + 1);
          goto LABEL_65;
        }

        if (v46)
        {
          v48 = v48;
        }

        else
        {
          v48 = (v48 + 1);
        }

        v210 = v17 << v39++;
        DWORD2(v228) = v39;
        v211 = v48 + (v210 >> 63);
        if (v211 == 3)
        {
          if ((*(&v233[0] + 1) - 1) <= 1)
          {
            v60 = 1;
          }

          else
          {
            v60 = *(&v233[0] + 1) - 1;
          }
        }

        else
        {
          if (*(v233 + v211 + 1) <= 1uLL)
          {
            v60 = 1;
          }

          else
          {
            v60 = *(v233 + v211 + 1);
          }

          if (v211 == 1)
          {
            goto LABEL_273;
          }
        }

        *(&v233[1] + 1) = *&v233[1];
LABEL_273:
        *&v233[1] = *(&v233[0] + 1);
        goto LABEL_65;
      }

      if (a5 == 3)
      {
LABEL_30:
        v17 += a4[2] << 16;
        goto LABEL_31;
      }

      if (a5 != 4)
      {
        goto LABEL_32;
      }
    }

    v17 += a4[3] << 24;
    goto LABEL_30;
  }

  v19 = v7;
LABEL_10:
  if (*(v9 + 915) == 2)
  {
    v20 = v12 - v11;
    if (v12 - v11 > (v10 - v19))
    {
      return -70;
    }

    if (v19)
    {
      v21 = v9;
      memmove(v19, v11, v12 - v11);
      v9 = v21;
      v19 += v20;
    }

    v11 = v8 + 30348;
    v12 = v8 + 95884;
    *(v9 + 915) = 0;
  }

  v22 = v12 - v11;
  if (v12 - v11 > (v10 - v19))
  {
    return -70;
  }

  if (v19)
  {
    memcpy(v19, v11, v12 - v11);
    v24 = &v19[v22];
  }

  else
  {
    v24 = 0;
  }

  return v24 - v7;
}

uint64_t ZSTD_decompressSequences(uint64_t *a1, char *__dst, uint64_t a3, unsigned __int8 *a4, unint64_t a5, int a6)
{
  v6 = a6;
  v7 = __dst;
  if (*(a1 + 7586))
  {
    v8 = a1[3791];
  }

  else
  {
    v8 = &__dst[a3];
  }

  v9 = a1[3764];
  v116 = v9;
  v108 = &v9[a1[3768]];
  if (a6)
  {
    v10 = a1[3737];
    v106 = a1[3739];
    v107 = a1[3738];
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    *(a1 + 7499) = 1;
    v11 = 88;
    v12 = 26684;
    v109 = 0u;
    do
    {
      *(&v109 + v11) = *(a1 + v12);
      v11 += 8;
      v12 += 4;
    }

    while (v11 != 112);
    if (!a5)
    {
      return -20;
    }

    *(&v110 + 1) = a4;
    *&v111 = a4 + 8;
    v13 = a5 - 8;
    if (a5 >= 8)
    {
      v14 = *&a4[v13];
      *&v110 = &a4[v13];
      *&v109 = v14;
      if (HIBYTE(v14) && a5 <= 0xFFFFFFFFFFFFFF88)
      {
        v15 = 8 - (__clz(HIBYTE(v14)) ^ 0x1F);
        goto LABEL_32;
      }

      return -20;
    }

    v14 = *a4;
    *&v110 = a4;
    *&v109 = v14;
    if (a5 > 4)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          v14 |= a4[6] << 48;
        }

        v14 += a4[5] << 40;
      }

      v14 += a4[4] << 32;
    }

    else
    {
      if (a5 == 2)
      {
LABEL_29:
        v14 += a4[1] << 8;
        *&v109 = v14;
        goto LABEL_30;
      }

      if (a5 == 3)
      {
LABEL_28:
        v14 += a4[2] << 16;
        goto LABEL_29;
      }

      if (a5 != 4)
      {
LABEL_30:
        if (a4[a5 - 1])
        {
          v13 = 0;
          v15 = __clz(a4[a5 - 1]) - 8 * a5 + 41;
LABEL_32:
          v20 = *a1;
          v21 = *(*a1 + 4);
          v22 = v21 + v15;
          v23 = (v14 >> -v22) & BIT_mask[v21];
          *(&v111 + 1) = v23;
          if (v22 > 0x40)
          {
            goto LABEL_43;
          }

          if (v13 >= 8)
          {
            v13 -= v22 >> 3;
            *&v110 = &a4[v13];
            v22 &= 7u;
            DWORD2(v109) = v22;
            v14 = *&a4[v13];
          }

          else
          {
            if (!v13)
            {
              goto LABEL_43;
            }

            v24 = v22 >> 3;
            if (&a4[v13 - v24] >= a4)
            {
              v25 = v24;
            }

            else
            {
              v25 = v13;
            }

            v13 -= v25;
            *&v110 = &a4[v13];
            v22 -= 8 * v25;
            DWORD2(v109) = v22;
            v14 = *&a4[v13];
          }

          *&v109 = v14;
LABEL_43:
          v26 = v20 + 8;
          v27 = a1[2];
          v28 = *(v27 + 4);
          v29 = v28 + v22;
          v30 = (v14 >> -v29) & BIT_mask[v28];
          *&v112 = v26;
          *(&v112 + 1) = v30;
          if (v29 <= 0x40)
          {
            if (v13 >= 8)
            {
              v13 -= v29 >> 3;
              v14 = *&a4[v13];
              v29 &= 7u;
              *&v110 = &a4[v13];
LABEL_51:
              *&v109 = v14;
              goto LABEL_52;
            }

            if (v13)
            {
              v31 = v29 >> 3;
              if (&a4[v13 - v31] >= a4)
              {
                v31 = v31;
              }

              else
              {
                v31 = v13;
              }

              v13 -= v31;
              v14 = *&a4[v13];
              v29 -= 8 * v31;
              *&v110 = &a4[v13];
              goto LABEL_51;
            }
          }

LABEL_52:
          v32 = v27 + 8;
          v33 = a1[1];
          v34 = *(v33 + 4);
          v35 = v34 + v29;
          v36 = (v14 >> -v35) & BIT_mask[v34];
          *&v113 = v32;
          *(&v113 + 1) = v36;
          v105 = v7;
          v103 = a1 + 26684;
          if (v35 <= 0x40)
          {
            v37 = &a4[v13];
            if (v13 >= 8)
            {
              v41 = &v37[-(v35 >> 3)];
              v42 = *v41;
              v35 &= 7u;
              *&v110 = v41;
              *&v109 = v42;
            }

            else if (v13)
            {
              v38 = v35 >> 3;
              if (&v37[-v38] >= a4)
              {
                v13 = v38;
              }

              else
              {
                v13 = v13;
              }

              v39 = &v37[-v13];
              v40 = *v39;
              v35 -= 8 * v13;
              *&v110 = v39;
              *&v109 = v40;
            }
          }

          v43 = v33 + 8;
          *&v114 = v33 + 8;
          v104 = v8;
          v44 = v8 - 32;
          v16 = v7;
          while (1)
          {
            v45 = (v26 + 8 * v23);
            v46 = (v43 + 8 * v36);
            v47 = *(v46 + 1);
            v48 = *(v45 + 1);
            v49 = (v32 + 8 * v30);
            v50 = *(v49 + 1);
            v51 = *(v45 + 2);
            v52 = *(v46 + 2);
            v53 = *(v49 + 2);
            v54 = *v45;
            v55 = *v46;
            v56 = *v49;
            v57 = *(v45 + 3);
            v58 = *(v46 + 3);
            v59 = *(v49 + 3);
            if (v53 >= 2)
            {
              break;
            }

            if (*(v49 + 2))
            {
              if (v48)
              {
                v50 = v50;
              }

              else
              {
                v50 = (v50 + 1);
              }

              v98 = v109 << v35++;
              DWORD2(v109) = v35;
              v99 = v50 + (v98 >> 63);
              if (v99 == 3)
              {
                if ((*(&v114 + 1) - 1) <= 1)
                {
                  v61 = 1;
                }

                else
                {
                  v61 = *(&v114 + 1) - 1;
                }

                goto LABEL_131;
              }

              if (*(&v114 + v99 + 1) <= 1uLL)
              {
                v61 = 1;
              }

              else
              {
                v61 = *(&v114 + v99 + 1);
              }

              if (v99 != 1)
              {
LABEL_131:
                *(&v115 + 1) = v115;
              }

LABEL_63:
              v62 = &v114 + 8;
              goto LABEL_64;
            }

            v61 = *(&v114 + (v48 == 0) + 1);
            v62 = &v114 + 8 * (v48 != 0) + 8;
LABEL_64:
            v63 = *v62;
            *(&v114 + 1) = v61;
            *&v115 = v63;
            if (v52)
            {
              v82 = v109 << v35 >> -v52;
              v35 += v52;
              v47 += v82;
            }

            if ((v52 + v51 + v53) >= 0x1Fu && v35 <= 0x40)
            {
              if (v110 >= v111)
              {
                v96 = (v110 - (v35 >> 3));
                v97 = *v96;
                v35 &= 7u;
                *&v110 = v96;
                *&v109 = v97;
              }

              else if (v110 != *(&v110 + 1))
              {
                v83 = v35 >> 3;
                if ((v110 - v83) >= *(&v110 + 1))
                {
                  v84 = v83;
                }

                else
                {
                  v84 = (v110 - DWORD2(v110));
                }

                v85 = *(v110 - v84);
                v35 -= 8 * v84;
                *&v110 = v110 - v84;
                *&v109 = v85;
              }
            }

            v64 = (v109 << v35 >> -v51) + v48;
            v65 = v51 == 0;
            if (v51)
            {
              v66 = v35 + v51;
            }

            else
            {
              v66 = v35;
            }

            if (v65)
            {
              v67 = v48;
            }

            else
            {
              v67 = v64;
            }

            v68 = ((v109 >> -(v66 + v57)) & BIT_mask[v57]) + v54;
            *(&v113 + 1) = ((v109 >> -(v66 + v57 + v58)) & BIT_mask[v58]) + v55;
            v69 = v66 + v57 + v58 + v59;
            v70 = (v109 >> -(v66 + v57 + v58 + v59)) & BIT_mask[v59];
            DWORD2(v109) = v69;
            *(&v111 + 1) = v68;
            *(&v112 + 1) = v70 + v56;
            v71 = v116;
            v72 = &v116[v67];
            if (&v116[v67] > v108 || (v18 = v67 + v47, &v16[v67 + v47] > v44))
            {
              v117[0] = v67;
              v117[1] = v47;
              v117[2] = v61;
              v18 = ZSTD_execSequenceEnd(v16, v104, v117, &v116, v108, v10, v107, v106);
            }

            else
            {
              v73 = &v16[v67];
              *v16 = *v116;
              if (v67 > 0x10)
              {
                v86 = v16 + 16;
                v87 = (v71 + 16);
                do
                {
                  v88 = *v87++;
                  *v86 = v88;
                  v86 += 16;
                }

                while (v86 < v73);
              }

              v74 = &v73[-v61];
              v116 = v72;
              if (v61 > v73 - v10)
              {
                if (v61 > &v73[-v107])
                {
                  return -20;
                }

                v75 = v74 - v10;
                v76 = (v106 + v74 - v10);
                if (v76 + v47 <= v106)
                {
                  memmove(v73, v76, v47);
                  goto LABEL_85;
                }

                memmove(v73, v76, v10 - v74);
                v73 -= v75;
                v47 += v75;
                v74 = v10;
              }

              if (v61 < 0x10)
              {
                if (v61 > 7)
                {
                  *v73 = *v74;
                }

                else
                {
                  v89 = ZSTD_overlapCopy8_dec64table[v61];
                  *v73 = *v74;
                  v73[1] = v74[1];
                  v73[2] = v74[2];
                  v73[3] = v74[3];
                  v90 = &v74[ZSTD_overlapCopy8_dec32table[v61]];
                  *(v73 + 1) = *v90;
                  v74 = &v90[-v89];
                }

                if (v47 >= 9)
                {
                  v91 = v73 + 8;
                  v92 = (v74 + 8);
                  v93 = &v73[v47];
                  if (v73 + 8 - v92 >= 16)
                  {
                    do
                    {
                      v95 = *v92++;
                      *v91 = v95;
                      v91 += 16;
                    }

                    while (v91 < v93);
                  }

                  else
                  {
                    do
                    {
                      v94 = *v92;
                      v92 = (v92 + 8);
                      *v91 = v94;
                      v91 += 8;
                    }

                    while (v91 < v93);
                  }
                }
              }

              else
              {
                v77 = &v73[v47];
                do
                {
                  v78 = *v74;
                  v74 += 16;
                  *v73 = v78;
                  v73 += 16;
                }

                while (v73 < v77);
              }
            }

LABEL_85:
            if (v18 > 0xFFFFFFFFFFFFFF88)
            {
              return v18;
            }

            v16 += v18;
            v35 = DWORD2(v109);
            if (!--v6)
            {
              v8 = v104;
              v7 = v105;
              v101 = v103;
              if (DWORD2(v109) > 0x40 || (v18 = -20, DWORD2(v109) == 64) && v110 < v111 && v110 == *(&v110 + 1))
              {
                for (i = 88; i != 112; i += 8)
                {
                  *v101++ = *(&v109 + i);
                }

                v9 = v116;
                goto LABEL_13;
              }

              return v18;
            }

            if (DWORD2(v109) <= 0x40)
            {
              if (v110 >= v111)
              {
                v81 = (v110 - (DWORD2(v109) >> 3));
                *&v110 = v81;
                v35 = BYTE8(v109) & 7;
              }

              else
              {
                if (v110 == *(&v110 + 1))
                {
                  goto LABEL_96;
                }

                v79 = DWORD2(v109) >> 3;
                if (v110 - v79 >= *(&v110 + 1))
                {
                  v80 = v79;
                }

                else
                {
                  v80 = (v110 - DWORD2(v110));
                }

                v81 = (v110 - v80);
                *&v110 = v110 - v80;
                v35 = DWORD2(v109) - 8 * v80;
              }

              DWORD2(v109) = v35;
              *&v109 = *v81;
            }

LABEL_96:
            v23 = *(&v111 + 1);
            v26 = v112;
            v36 = *(&v113 + 1);
            v43 = v114;
            v30 = *(&v112 + 1);
            v32 = v113;
          }

          v60 = v109 << v35 >> -v53;
          v35 += v53;
          v61 = v60 + v50;
          *(&v115 + 1) = v115;
          goto LABEL_63;
        }

        return -20;
      }
    }

    v14 += a4[3] << 24;
    goto LABEL_28;
  }

  v16 = v7;
LABEL_13:
  v17 = v108 - v9;
  if (v108 - v9 > (v8 - v16))
  {
    return -70;
  }

  if (v16)
  {
    memcpy(v16, v9, v108 - v9);
    v19 = &v16[v17];
  }

  else
  {
    v19 = 0;
  }

  return v19 - v7;
}

void *ZSTD_checkContinuity(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[3736];
    if (v3 != a2)
    {
      result[3739] = v3;
      result[3738] = a2 + result[3737] - v3;
      result[3737] = a2;
      result[3736] = a2;
    }
  }

  return result;
}

uint64_t BIT_reloadDStream(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 <= 0x40)
  {
    v2 = *(result + 16);
    if (v2 >= *(result + 32))
    {
      v5 = (v2 - (v1 >> 3));
      *(result + 16) = v5;
      v6 = v1 & 7;
    }

    else
    {
      v3 = *(result + 24);
      if (v2 == v3)
      {
        return result;
      }

      if (v2 - (v1 >> 3) >= v3)
      {
        v4 = *(result + 8) >> 3;
      }

      else
      {
        v4 = (v2 - v3);
      }

      v5 = (v2 - v4);
      *(result + 16) = v5;
      v6 = v1 - 8 * v4;
    }

    *(result + 8) = v6;
    *result = *v5;
  }

  return result;
}

_BYTE *ZSTD_safecopyDstBeforeSrc(_BYTE *result, char *a2, uint64_t a3)
{
  v3 = &result[a3];
  if (a3 < 8 || result - a2 >= -7)
  {
    if (a3 >= 1)
    {
      do
      {
        v8 = *a2++;
        *result++ = v8;
      }

      while (result < v3);
    }
  }

  else
  {
    if ((result - a2) > 0xFFFFFFFFFFFFFFEFLL || (v4 = v3 - 32, v4 < result))
    {
      v4 = result;
    }

    else
    {
      v5 = result;
      v6 = a2;
      do
      {
        v7 = *v6;
        v6 += 16;
        *v5++ = v7;
      }

      while (v5 < v4);
      a2 += v4 - result;
    }

    v9 = (&result[a3] - v4);
    do
    {
      v10 = *a2++;
      *v4++ = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t ZSTD_execSequenceEnd(_BYTE *a1, uint64_t a2, unint64_t *a3, char **a4, uint64_t a5, char *a6, uint64_t a7, unint64_t a8)
{
  v9 = *a3;
  v10 = a3[1] + *a3;
  if (v10 <= a2 - a1)
  {
    v12 = *a4;
    if (v9 > a5 - *a4)
    {
      return -20;
    }

    v16 = &a1[v9];
    v17 = &v12[v9];
    v18 = &a1[v9 - a3[2]];
    v19 = (a2 - 32);
    ZSTD_safecopy(a1, (a2 - 32), v12, v9, 0);
    *a4 = v17;
    v20 = a3[2];
    if (v20 <= v16 - a6)
    {
      v24 = a3[1];
      a6 = v18;
    }

    else
    {
      if (v20 > &v16[-a7])
      {
        return -20;
      }

      v21 = v18 - a6;
      v22 = (a8 + v18 - a6);
      v23 = a3[1];
      if (v22 + v23 <= a8)
      {
        memmove(v16, v22, v23);
        return v10;
      }

      memmove(v16, v22, a6 - v18);
      v16 -= v21;
      v24 = a3[1] + v21;
      a3[1] = v24;
    }

    ZSTD_safecopy(v16, v19, a6, v24, 1);
    return v10;
  }

  return -70;
}

_BYTE *ZSTD_safecopy(_BYTE *result, _BYTE *a2, char *a3, uint64_t a4, int a5)
{
  v5 = &result[a4];
  if (a4 > 7)
  {
    if (a5 == 1)
    {
      v7 = result - a3;
      if ((result - a3) > 7)
      {
        *result = *a3;
      }

      else
      {
        v8 = ZSTD_overlapCopy8_dec64table[v7];
        *result = *a3;
        result[1] = a3[1];
        result[2] = a3[2];
        result[3] = a3[3];
        v9 = &a3[ZSTD_overlapCopy8_dec32table[v7]];
        *(result + 1) = *v9;
        a3 = &v9[-v8];
      }

      a3 += 8;
      result += 8;
      a4 -= 8;
    }

    if (v5 <= a2)
    {
      v13 = &result[a4];
      if (a5 == 1 && result - a3 < 16)
      {
        do
        {
          v14 = *a3;
          a3 += 8;
          *result = v14;
          result += 8;
        }

        while (result < v13);
      }

      else
      {
        do
        {
          v15 = *a3;
          a3 += 16;
          *result = v15;
          result += 16;
        }

        while (result < v13);
      }
    }

    else
    {
      if (result <= a2)
      {
        v10 = a2 - result;
        if (a5 == 1 && result - a3 < 16)
        {
          v11 = a3;
          do
          {
            v12 = *v11;
            v11 += 8;
            *result = v12;
            result += 8;
          }

          while (result < a2);
        }

        else
        {
          v16 = a3;
          do
          {
            v17 = *v16;
            v16 += 16;
            *result = v17;
            result += 16;
          }

          while (result < a2);
        }

        a3 += v10;
        result = a2;
      }

      while (result < v5)
      {
        v18 = *a3++;
        *result++ = v18;
      }
    }
  }

  else if (a4 >= 1)
  {
    do
    {
      v6 = *a3++;
      *result++ = v6;
    }

    while (result < v5);
  }

  return result;
}

unint64_t ZSTD_execSequenceEndSplitLitBuffer(char *a1, uint64_t a2, _BYTE *a3, unint64_t *a4, char **a5, uint64_t a6, char *a7, uint64_t a8, unint64_t a9)
{
  v10 = *a4;
  v11 = a4[1] + *a4;
  if (v11 > a2 - a1)
  {
    return -70;
  }

  v13 = *a5;
  if (v10 > a6 - *a5)
  {
    return -20;
  }

  v17 = &v13[v10];
  if (v13 >= a1 || v17 <= a1)
  {
    v18 = &a1[v10];
    v19 = &a1[v10 - a4[2]];
    ZSTD_safecopyDstBeforeSrc(a1, v13, v10);
    *a5 = v17;
    v20 = a4[2];
    if (v20 <= v18 - a7)
    {
      v24 = a4[1];
      a7 = v19;
    }

    else
    {
      if (v20 > &v18[-a8])
      {
        return -20;
      }

      v21 = v19 - a7;
      v22 = (a9 + v19 - a7);
      v23 = a4[1];
      if (v22 + v23 <= a9)
      {
        memmove(v18, v22, v23);
        return v11;
      }

      memmove(v18, v22, a7 - v19);
      v18 -= v21;
      v24 = a4[1] + v21;
      a4[1] = v24;
    }

    ZSTD_safecopy(v18, a3, a7, v24, 1);
    return v11;
  }

  return -70;
}

uint64_t ZSTD_getErrorCode(unint64_t a1)
{
  if (a1 >= 0xFFFFFFFFFFFFFF89)
  {
    return -a1;
  }

  else
  {
    return 0;
  }
}

void *ZSTD_customMalloc(size_t size, uint64_t a2)
{
  if (*a2)
  {
    return (*a2)(*(a2 + 16), size);
  }

  else
  {
    return malloc_type_malloc(size, 0xDD6AF752uLL);
  }
}

void *ZSTD_customCalloc(size_t size, uint64_t a2)
{
  if (*a2)
  {
    v3 = (*a2)(*(a2 + 16), size);
    bzero(v3, size);
    return v3;
  }

  else
  {

    return malloc_type_calloc(1uLL, size, 0xF553DC0EuLL);
  }
}

void ZSTD_customFree(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      v2(*(a2 + 16), a1);
    }

    else
    {
      free(a1);
    }
  }
}

uint64_t ZSTD_dedicatedDictSearch_lazy_loadDictionary(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = a2 - v2;
  v4 = *(result + 248);
  v5 = 1 << *(result + 244);
  v6 = *(result + 44);
  if (v5 >= a2 - v2 - v6)
  {
    v7 = *(result + 44);
  }

  else
  {
    v7 = a2 - v2 - v5;
  }

  v8 = (1 << *(result + 252)) - 3;
  if (v8 >= 0xFF)
  {
    v9 = 255;
  }

  else
  {
    v9 = (1 << *(result + 252)) - 3;
  }

  v10 = v4 - 2;
  v11 = 3 << (v4 - 2);
  v29 = v3 >= v11;
  v12 = v3 - v11;
  if (v12 != 0 && v29)
  {
    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  v14 = *(result + 96);
  v15 = *(result + 112);
  v16 = v14 + 4 * (1 << v10);
  if (v3 > v6)
  {
    do
    {
      v17 = *(result + 256);
      if (v17 > 6)
      {
        if (v17 == 7)
        {
          v18 = 0xCF1BBCDCBFA56300 * *(v2 + v6);
          goto LABEL_21;
        }

        if (v17 == 8)
        {
          v18 = 0xCF1BBCDCB7A56463 * *(v2 + v6);
          goto LABEL_21;
        }
      }

      else
      {
        if (v17 == 5)
        {
          v18 = 0xCF1BBCDCBB000000 * *(v2 + v6);
          goto LABEL_21;
        }

        if (v17 == 6)
        {
          v18 = 0xCF1BBCDCBF9B0000 * *(v2 + v6);
LABEL_21:
          v19 = v18 >> (66 - v4);
          goto LABEL_22;
        }
      }

      LODWORD(v19) = (-1640531535 * *(v2 + v6)) >> (34 - v4);
LABEL_22:
      if (v6 >= v13)
      {
        *(v16 + 4 * (v6 - v13)) = *(v14 + 4 * v19);
      }

      *(v14 + 4 * v19) = v6++;
    }

    while (v6 < v3);
  }

  v20 = 0;
  v21 = 0;
  v22 = (1 << v10);
  if (v9 <= 1)
  {
    v9 = 1;
  }

  do
  {
    v23 = *(v14 + 4 * v20);
    if (v23 < v13)
    {
      goto LABEL_28;
    }

    v26 = 0;
    v27 = 0;
    do
    {
      if (v23 < v7)
      {
        ++v26;
      }

      v28 = v27 + 1;
      v23 = *(v16 + 4 * (v23 - v13));
      v29 = v23 < v13 || v27++ >= 2;
    }

    while (!v29);
    if (v28 != 3 || !v8)
    {
      goto LABEL_28;
    }

    v30 = 0;
    v31 = 255 * v9;
    while (1)
    {
      v32 = v30;
      if (v23 < v7)
      {
        if (!v23)
        {
          break;
        }

        if (++v26 > 3)
        {
          break;
        }
      }

      *(v15 + 4 * (v21 + v30)) = v23;
      v29 = v23 >= v13;
      v33 = v23 - v13;
      if (!v29)
      {
        v25 = (v21 + v30 + 1);
        v24 = v30 + (v21 << 8) + 1;
        goto LABEL_29;
      }

      ++v30;
      v23 = *(v16 + 4 * v33);
      v31 -= 256;
      if (v9 == v30)
      {
        v24 = (v21 << 8) - v31;
        v25 = (v21 + v32 + 1);
        goto LABEL_29;
      }
    }

    v25 = (v21 + v30);
    if (!v30)
    {
      v21 = v21;
LABEL_28:
      v24 = 0;
      v25 = v21;
      goto LABEL_29;
    }

    v24 = v30 + (v21 << 8);
LABEL_29:
    *(v14 + 4 * v20++) = v24;
    v21 = v25;
  }

  while (v20 != v22);
  v34 = (4 << v10) - 4;
  v35 = (v14 + 4 * (v22 - 1));
  v36 = 4 * v22 - 1;
  do
  {
    v37 = v14 + 4 * v34;
    v38 = *v35--;
    *(v37 + 8) = 0;
    *v37 = 0;
    *(v14 + 4 * v36) = v38;
    v34 -= 4;
    v36 -= 4;
    LODWORD(v22) = v22 - 1;
  }

  while (v22);
  v39 = *(result + 44);
  if (v39 < v3)
  {
    v40 = 66 - v4;
    v41 = 34 - v4;
    do
    {
      v42 = *(result + 256);
      if (v42 > 6)
      {
        if (v42 == 7)
        {
          v43 = 0xCF1BBCDCBFA56300 * *(v2 + v39);
          goto LABEL_65;
        }

        if (v42 == 8)
        {
          v43 = 0xCF1BBCDCB7A56463 * *(v2 + v39);
          goto LABEL_65;
        }
      }

      else
      {
        if (v42 == 5)
        {
          v43 = 0xCF1BBCDCBB000000 * *(v2 + v39);
          goto LABEL_65;
        }

        if (v42 == 6)
        {
          v43 = 0xCF1BBCDCBF9B0000 * *(v2 + v39);
LABEL_65:
          v44 = v43 >> v40;
          goto LABEL_66;
        }
      }

      LODWORD(v44) = (-1640531535 * *(v2 + v39)) >> v41;
LABEL_66:
      *(v14 - 4 + ((16 * (v44 & 0x3FFFFFFF)) | 8)) = *(v14 - 8 + ((16 * (v44 & 0x3FFFFFFF)) | 8));
      *(v14 + 16 * (v44 & 0x3FFFFFFF)) = v39++;
    }

    while (v39 < v3);
  }

  *(result + 44) = v3;
  return result;
}

uint64_t ZSTD_insertAndFindFirstIndex(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 256);
  v3 = *(a1 + 96);
  v4 = *(a1 + 248);
  v5 = *(a1 + 8);
  v6 = a2 - v5;
  v7 = *(a1 + 44);
  if (v7 < a2 - v5)
  {
    v8 = ~(-1 << *(a1 + 244));
    v9 = *(a1 + 112);
    do
    {
      if (v2 > 6)
      {
        if (v2 == 7)
        {
          v10 = 0xCF1BBCDCBFA56300 * *(v5 + v7);
          goto LABEL_13;
        }

        if (v2 == 8)
        {
          v10 = 0xCF1BBCDCB7A56463 * *(v5 + v7);
          goto LABEL_13;
        }
      }

      else
      {
        if (v2 == 5)
        {
          v10 = 0xCF1BBCDCBB000000 * *(v5 + v7);
          goto LABEL_13;
        }

        if (v2 == 6)
        {
          v10 = 0xCF1BBCDCBF9B0000 * *(v5 + v7);
LABEL_13:
          v11 = v10 >> (64 - v4);
          goto LABEL_14;
        }
      }

      v11 = (-1640531535 * *(v5 + v7)) >> (32 - v4);
LABEL_14:
      *(v9 + 4 * (v7 & v8)) = *(v3 + 4 * v11);
      *(v3 + 4 * v11) = v7++;
    }

    while (v7 < v6);
  }

  *(a1 + 44) = v6;
  if (v2 > 6)
  {
    if (v2 == 7)
    {
      v12 = *a2;
      v13 = -1079680256;
      goto LABEL_25;
    }

    if (v2 == 8)
    {
      v12 = *a2;
      v13 = -1213897629;
      goto LABEL_25;
    }
  }

  else
  {
    if (v2 == 5)
    {
      v12 = *a2;
      v13 = -1157627904;
      goto LABEL_25;
    }

    if (v2 == 6)
    {
      v12 = *a2;
      v13 = -1080360960;
LABEL_25:
      v14 = (v12 * (v13 | 0xCF1BBCDC00000000)) >> -v4;
      return *(v3 + 4 * v14);
    }
  }

  v14 = (-1640531535 * *a2) >> -v4;
  return *(v3 + 4 * v14);
}

uint64_t ZSTD_row_update(uint64_t result, int a2)
{
  v2 = *(result + 252);
  v3 = *(result + 256);
  if (v2 >= 6)
  {
    v2 = 6;
  }

  if (v2 <= 4)
  {
    LOBYTE(v2) = 4;
  }

  if (v3 >= 6)
  {
    v3 = 6;
  }

  v4 = *(result + 44);
  v5 = *(result + 8);
  v6 = a2 - v5;
  if (v4 < a2 - v5)
  {
    v7 = ~(-1 << v2);
    v8 = *(result + 96);
    v9 = *(result + 52);
    v10 = 56 - v9;
    v11 = *(result + 56);
    v12 = 24 - v9;
    do
    {
      if (v3 == 5)
      {
        v13 = 0xCF1BBCDCBB000000 * *(v5 + v4);
      }

      else
      {
        if (v3 != 6)
        {
          LODWORD(v14) = (-1640531535 * *(v5 + v4)) >> v12;
          goto LABEL_15;
        }

        v13 = 0xCF1BBCDCBF9B0000 * *(v5 + v4);
      }

      v14 = v13 >> v10;
LABEL_15:
      v15 = v14 >> 8 << v2;
      v16 = v8 + 4 * v15;
      v17 = (v11 + 2 * v15);
      v18 = (*v17 + 127) & v7;
      *v17 = (*v17 + 127) & v7;
      v17[v18 + 16] = v14;
      *(v16 + 4 * v18) = v4++;
    }

    while (v4 < v6);
  }

  *(result + 44) = v6;
  return result;
}

int64_t ZSTD_compressBlock_btlazy2(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 256);
  v10 = v9 - 7;
  v11 = 2 * (v9 > 3);
  v12 = v9 - 4;
  if (v10 < 0xFFFFFFFD)
  {
    v12 = v11;
  }

  v13 = *a3;
  v14 = a3[1];
  v99 = v7 + v8;
  if (a4 == v7 + v8)
  {
    v15 = a4 + 1;
  }

  else
  {
    v15 = a4;
  }

  v16 = v15 - v7;
  v17 = 1 << *(a1 + 240);
  v106 = &a4[a5 - 8];
  if (v16 - v8 > v17 && *(a1 + 40) == 0)
  {
    LODWORD(v8) = v16 - v17;
  }

  v19 = v16 - v8;
  if (v14 <= v19)
  {
    v20 = v14;
  }

  else
  {
    v20 = 0;
  }

  if (v13 <= v19)
  {
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  if (v15 < &a4[a5 - 8])
  {
    v95 = v19;
    v96 = a3[1];
    v97 = *a3;
    v98 = a3;
    v23 = (v6 - 7);
    v24 = v6 - 3;
    v102 = v6 - 1;
    v103 = *off_1E8190850[v12];
    v104 = &a4[a5];
    v100 = v6 - 32;
    v101 = v6 - 3;
    while (1)
    {
      v25 = 0;
      if (!v21 || *&v15[-v21 + 1] != *(v15 + 1))
      {
        goto LABEL_40;
      }

      v26 = v15 + 5;
      v27 = &v15[-v21 + 5];
      if (v23 <= (v15 + 5))
      {
        break;
      }

      if (*v27 == *v26)
      {
        v28 = 0;
        v29 = (v15 + 13);
        v27 = &v15[-v21 + 13];
        while (v29 < v23)
        {
          v31 = *v27;
          v27 += 8;
          v30 = v31;
          v33 = *v29;
          v29 += 4;
          v32 = v33;
          v28 += 8;
          if (v30 != v33)
          {
            v34 = v28 + (__clz(__rbit64(v32 ^ v30)) >> 3);
            goto LABEL_39;
          }
        }

        goto LABEL_28;
      }

      v34 = __clz(__rbit64(*v26 ^ *v27)) >> 3;
LABEL_39:
      v25 = v34 + 4;
LABEL_40:
      v107 = 999999999;
      v35 = v103(a1, v15, v6, &v107);
      if (v35 <= v25)
      {
        v36 = v25;
      }

      else
      {
        v36 = v35;
      }

      if (v36 >= 4)
      {
        v37 = v35 > v25;
        if (v35 <= v25)
        {
          v38 = 0;
        }

        else
        {
          v38 = v107;
        }

        if (v37)
        {
          v39 = v15;
        }

        else
        {
          v39 = v15 + 1;
        }

        v40 = v39;
        v41 = v38;
        v42 = v36;
        v6 = v104;
        if (v15 < v106)
        {
          do
          {
            v40 = v15 + 1;
            if (!v38 || !v21 || *v40 != *&v40[-v21])
            {
              goto LABEL_76;
            }

            v43 = v15 + 5;
            v44 = &v15[-v21 + 5];
            if (v23 <= (v15 + 5))
            {
              v45 = (v15 + 5);
            }

            else
            {
              if (*v44 != *v43)
              {
                v50 = __clz(__rbit64(*v43 ^ *v44)) >> 3;
LABEL_74:
                v51 = v50 + 4;
                if (3 * v51 > (3 * v36 + (__clz(v38 + 1) ^ 0xFFFFFFE0) + 2))
                {
                  v38 = 0;
                  v39 = v15 + 1;
                  v36 = v51;
                }

                goto LABEL_76;
              }

              v45 = (v15 + 13);
              v44 = &v15[-v21 + 13];
              while (v45 < v23)
              {
                v47 = *v44;
                v44 += 8;
                v46 = v47;
                v49 = *v45;
                v45 += 4;
                v48 = v49;
                if (v46 != v49)
                {
                  v45 = (v45 + (__clz(__rbit64(v48 ^ v46)) >> 3) - 8);
                  goto LABEL_71;
                }
              }
            }

            if (v45 < v101 && *v44 == *v45)
            {
              v44 += 4;
              v45 += 2;
            }

            if (v45 < v102 && *v44 == *v45)
            {
              v44 += 2;
              ++v45;
            }

            if (v45 < v6 && *v44 == *v45)
            {
              v45 = (v45 + 1);
            }

LABEL_71:
            v50 = v45 - v43;
            if (v50 <= 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_74;
            }

LABEL_76:
            v107 = 999999999;
            v42 = v103(a1, v15 + 1, v6, &v107);
            if (v42 >= 4)
            {
              v41 = v107;
              if ((4 * v42 - (__clz(v107 + 1) ^ 0x1F)) > ((__clz(v38 + 1) ^ 0xFFFFFFE0) + 4 * v36 + 5))
              {
                goto LABEL_105;
              }
            }

            if (v40 >= v106)
            {
              goto LABEL_107;
            }

            v40 = v15 + 2;
            if (v38 && v21 && *v40 == *&v40[-v21])
            {
              v52 = v15 + 6;
              v53 = &v15[-v21 + 6];
              if (v23 <= (v15 + 6))
              {
                v54 = (v15 + 6);
              }

              else
              {
                if (*v53 != *v52)
                {
                  v59 = __clz(__rbit64(*v52 ^ *v53)) >> 3;
LABEL_101:
                  v60 = v59 + 4;
                  if (((__clz(v38 + 1) ^ 0xFFFFFFE0) + 4 * v36 + 2) < 4 * v60)
                  {
                    v38 = 0;
                    v39 = v15 + 2;
                    v36 = v60;
                  }

                  goto LABEL_103;
                }

                v54 = (v15 + 14);
                v53 = &v15[-v21 + 14];
                while (v54 < v23)
                {
                  v56 = *v53;
                  v53 += 8;
                  v55 = v56;
                  v58 = *v54;
                  v54 += 4;
                  v57 = v58;
                  if (v55 != v58)
                  {
                    v54 = (v54 + (__clz(__rbit64(v57 ^ v55)) >> 3) - 8);
                    goto LABEL_98;
                  }
                }
              }

              if (v54 < v101 && *v53 == *v54)
              {
                v54 += 2;
                v53 += 4;
              }

              if (v54 < v102 && *v53 == *v54)
              {
                ++v54;
                v53 += 2;
              }

              if (v54 < v104 && *v53 == *v54)
              {
                v54 = (v54 + 1);
              }

LABEL_98:
              v59 = v54 - v52;
              if (v59 <= 0xFFFFFFFFFFFFFFFBLL)
              {
                goto LABEL_101;
              }
            }

LABEL_103:
            v107 = 999999999;
            v42 = v103(a1, v15 + 2, v104, &v107);
            if (v42 < 4 || (v41 = v107, (4 * v42 - (__clz(v107 + 1) ^ 0x1F)) <= ((__clz(v38 + 1) ^ 0xFFFFFFE0) + 4 * v36 + 8)))
            {
LABEL_107:
              v40 = v39;
              v41 = v38;
              v42 = v36;
              v6 = v104;
              break;
            }

LABEL_105:
            v6 = v104;
            v15 = v40;
            v36 = v42;
            v38 = v41;
            v39 = v40;
          }

          while (v40 < v106);
        }

        if (v41 <= 2)
        {
          v61 = v100;
          v24 = v101;
        }

        else
        {
          v61 = v100;
          if (v40 <= v5 || &v40[-v41 + 2] <= v99)
          {
            v63 = v40;
            v24 = v101;
          }

          else
          {
            v62 = 1 - v41;
            v63 = v40;
            v24 = v101;
            while (1)
            {
              v64 = *--v63;
              if (v64 != v40[v62])
              {
                break;
              }

              ++v42;
              if (v63 > v5)
              {
                v65 = &v40[v62];
                v40 = v63;
                if (v65 > v99)
                {
                  continue;
                }
              }

              goto LABEL_119;
            }

            v63 = v40;
          }

LABEL_119:
          v20 = v21;
          v21 = (v41 - 2);
          v40 = v63;
        }

        v66 = v40 - v5;
        v67 = *(a2 + 24);
        if (v40 <= v61)
        {
          *v67 = *v5;
          v71 = *(a2 + 24);
          if (v66 > 0x10)
          {
            v72 = (v71 + 16);
            v73 = v71 + v66;
            v74 = (v5 + 16);
            do
            {
              v75 = *v74++;
              *v72++ = v75;
            }

            while (v72 < v73);
            goto LABEL_131;
          }

          *(a2 + 24) = v71 + v66;
          v76 = *(a2 + 8);
        }

        else
        {
          if (v5 <= v61)
          {
            v68 = (v67 + v61 - v5);
            do
            {
              v69 = *v5;
              v5 += 16;
              *v67++ = v69;
            }

            while (v67 < v68);
            v5 = v61;
            v67 = v68;
          }

          while (v5 < v40)
          {
            v70 = *v5++;
            *v67 = v70;
            v67 = (v67 + 1);
          }

LABEL_131:
          *(a2 + 24) += v66;
          v76 = *(a2 + 8);
          if (v66 >= 0x10000)
          {
            v77 = (v76 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v77;
          }
        }

        *(v76 + 4) = v66;
        *v76 = v41 + 1;
        if (v42 - 3 >= 0x10000)
        {
          v78 = (v76 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v78;
        }

        *(v76 + 6) = v42 - 3;
        v79 = v76 + 8;
        *(a2 + 8) = v76 + 8;
        v5 = &v40[v42];
        if (!v20 || v5 > v106)
        {
LABEL_167:
          v15 = v5;
          goto LABEL_168;
        }

        v80 = v21;
        v81 = v20;
        while (2)
        {
          v21 = v81;
          v81 = v80;
          if (*v5 != *&v5[-v21])
          {
            v20 = v21;
            v21 = v80;
            goto LABEL_167;
          }

          v82 = v5 + 4;
          v83 = &v5[-v21 + 4];
          if (v23 > (v5 + 4))
          {
            if (*v83 == *v82)
            {
              v84 = 0;
              v85 = (v5 + 12);
              v83 = &v5[-v21 + 12];
              while (v85 < v23)
              {
                v87 = *v83;
                v83 += 8;
                v86 = v87;
                v89 = *v85;
                v85 += 4;
                v88 = v89;
                v84 += 8;
                if (v86 != v89)
                {
                  v90 = v84 + (__clz(__rbit64(v88 ^ v86)) >> 3);
                  goto LABEL_158;
                }
              }

LABEL_147:
              if (v85 < v24 && *v83 == *v85)
              {
                v83 += 4;
                v85 += 2;
              }

              if (v85 < v102 && *v83 == *v85)
              {
                v83 += 2;
                ++v85;
              }

              if (v85 < v6 && *v83 == *v85)
              {
                v85 = (v85 + 1);
              }

              v90 = v85 - v82;
            }

            else
            {
              v90 = __clz(__rbit64(*v82 ^ *v83)) >> 3;
            }

LABEL_158:
            if (v5 <= v61)
            {
              **(a2 + 24) = *v5;
              v79 = *(a2 + 8);
            }

            *(v79 + 4) = 0;
            *v79 = 1;
            if (v90 + 1 >= 0x10000)
            {
              v91 = (v79 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v91;
            }

            *(v79 + 6) = v90 + 1;
            v79 += 8;
            *(a2 + 8) = v79;
            v5 += v90 + 4;
            if (!v81)
            {
              v20 = v81;
              goto LABEL_167;
            }

            v80 = v21;
            v20 = v81;
            v15 = v5;
            if (v5 > v106)
            {
              goto LABEL_168;
            }

            continue;
          }

          break;
        }

        v85 = (v5 + 4);
        goto LABEL_147;
      }

      v15 += ((v15 - v5) >> 8) + 1;
      v6 = v104;
LABEL_168:
      if (v15 >= v106)
      {
        a3 = v98;
        v14 = v96;
        v13 = v97;
        v19 = v95;
        goto LABEL_170;
      }
    }

    v29 = (v15 + 5);
LABEL_28:
    if (v29 < v24 && *v27 == *v29)
    {
      v27 += 4;
      v29 += 2;
    }

    if (v29 < v102 && *v27 == *v29)
    {
      v27 += 2;
      ++v29;
    }

    if (v29 < v6 && *v27 == *v29)
    {
      v29 = (v29 + 1);
    }

    v34 = v29 - v26;
    goto LABEL_39;
  }

LABEL_170:
  if (v14 <= v19)
  {
    v92 = 0;
  }

  else
  {
    v92 = v14;
  }

  if (v13 > v19)
  {
    v92 = v13;
  }

  if (v21)
  {
    v93 = v21;
  }

  else
  {
    v93 = v92;
  }

  if (v20)
  {
    v92 = v20;
  }

  *a3 = v93;
  a3[1] = v92;
  return v6 - v5;
}

int64_t ZSTD_compressBlock_lazy2(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 256);
  v10 = v9 - 7;
  v11 = 2 * (v9 > 3);
  v12 = v9 - 4;
  if (v10 < 0xFFFFFFFD)
  {
    v12 = v11;
  }

  v13 = *a3;
  v14 = a3[1];
  v99 = v7 + v8;
  if (a4 == v7 + v8)
  {
    v15 = a4 + 1;
  }

  else
  {
    v15 = a4;
  }

  v16 = v15 - v7;
  v17 = 1 << *(a1 + 240);
  v106 = &a4[a5 - 8];
  if (v16 - v8 > v17 && *(a1 + 40) == 0)
  {
    LODWORD(v8) = v16 - v17;
  }

  v19 = v16 - v8;
  if (v14 <= v19)
  {
    v20 = v14;
  }

  else
  {
    v20 = 0;
  }

  if (v13 <= v19)
  {
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  if (v15 < &a4[a5 - 8])
  {
    v95 = v19;
    v96 = a3[1];
    v97 = *a3;
    v98 = a3;
    v23 = (v6 - 7);
    v24 = v6 - 3;
    v102 = v6 - 1;
    v103 = *off_1E81907F0[v12];
    v104 = &a4[a5];
    v100 = v6 - 32;
    v101 = v6 - 3;
    while (1)
    {
      v25 = 0;
      if (!v21 || *&v15[-v21 + 1] != *(v15 + 1))
      {
        goto LABEL_40;
      }

      v26 = v15 + 5;
      v27 = &v15[-v21 + 5];
      if (v23 <= (v15 + 5))
      {
        break;
      }

      if (*v27 == *v26)
      {
        v28 = 0;
        v29 = (v15 + 13);
        v27 = &v15[-v21 + 13];
        while (v29 < v23)
        {
          v31 = *v27;
          v27 += 8;
          v30 = v31;
          v33 = *v29;
          v29 += 4;
          v32 = v33;
          v28 += 8;
          if (v30 != v33)
          {
            v34 = v28 + (__clz(__rbit64(v32 ^ v30)) >> 3);
            goto LABEL_39;
          }
        }

        goto LABEL_28;
      }

      v34 = __clz(__rbit64(*v26 ^ *v27)) >> 3;
LABEL_39:
      v25 = v34 + 4;
LABEL_40:
      v107 = 999999999;
      v35 = v103(a1, v15, v6, &v107);
      if (v35 <= v25)
      {
        v36 = v25;
      }

      else
      {
        v36 = v35;
      }

      if (v36 >= 4)
      {
        v37 = v35 > v25;
        if (v35 <= v25)
        {
          v38 = 0;
        }

        else
        {
          v38 = v107;
        }

        if (v37)
        {
          v39 = v15;
        }

        else
        {
          v39 = v15 + 1;
        }

        v40 = v39;
        v41 = v38;
        v42 = v36;
        v6 = v104;
        if (v15 < v106)
        {
          do
          {
            v40 = v15 + 1;
            if (!v38 || !v21 || *v40 != *&v40[-v21])
            {
              goto LABEL_76;
            }

            v43 = v15 + 5;
            v44 = &v15[-v21 + 5];
            if (v23 <= (v15 + 5))
            {
              v45 = (v15 + 5);
            }

            else
            {
              if (*v44 != *v43)
              {
                v50 = __clz(__rbit64(*v43 ^ *v44)) >> 3;
LABEL_74:
                v51 = v50 + 4;
                if (3 * v51 > (3 * v36 + (__clz(v38 + 1) ^ 0xFFFFFFE0) + 2))
                {
                  v38 = 0;
                  v39 = v15 + 1;
                  v36 = v51;
                }

                goto LABEL_76;
              }

              v45 = (v15 + 13);
              v44 = &v15[-v21 + 13];
              while (v45 < v23)
              {
                v47 = *v44;
                v44 += 8;
                v46 = v47;
                v49 = *v45;
                v45 += 4;
                v48 = v49;
                if (v46 != v49)
                {
                  v45 = (v45 + (__clz(__rbit64(v48 ^ v46)) >> 3) - 8);
                  goto LABEL_71;
                }
              }
            }

            if (v45 < v101 && *v44 == *v45)
            {
              v44 += 4;
              v45 += 2;
            }

            if (v45 < v102 && *v44 == *v45)
            {
              v44 += 2;
              ++v45;
            }

            if (v45 < v6 && *v44 == *v45)
            {
              v45 = (v45 + 1);
            }

LABEL_71:
            v50 = v45 - v43;
            if (v50 <= 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_74;
            }

LABEL_76:
            v107 = 999999999;
            v42 = v103(a1, v15 + 1, v6, &v107);
            if (v42 >= 4)
            {
              v41 = v107;
              if ((4 * v42 - (__clz(v107 + 1) ^ 0x1F)) > ((__clz(v38 + 1) ^ 0xFFFFFFE0) + 4 * v36 + 5))
              {
                goto LABEL_105;
              }
            }

            if (v40 >= v106)
            {
              goto LABEL_107;
            }

            v40 = v15 + 2;
            if (v38 && v21 && *v40 == *&v40[-v21])
            {
              v52 = v15 + 6;
              v53 = &v15[-v21 + 6];
              if (v23 <= (v15 + 6))
              {
                v54 = (v15 + 6);
              }

              else
              {
                if (*v53 != *v52)
                {
                  v59 = __clz(__rbit64(*v52 ^ *v53)) >> 3;
LABEL_101:
                  v60 = v59 + 4;
                  if (((__clz(v38 + 1) ^ 0xFFFFFFE0) + 4 * v36 + 2) < 4 * v60)
                  {
                    v38 = 0;
                    v39 = v15 + 2;
                    v36 = v60;
                  }

                  goto LABEL_103;
                }

                v54 = (v15 + 14);
                v53 = &v15[-v21 + 14];
                while (v54 < v23)
                {
                  v56 = *v53;
                  v53 += 8;
                  v55 = v56;
                  v58 = *v54;
                  v54 += 4;
                  v57 = v58;
                  if (v55 != v58)
                  {
                    v54 = (v54 + (__clz(__rbit64(v57 ^ v55)) >> 3) - 8);
                    goto LABEL_98;
                  }
                }
              }

              if (v54 < v101 && *v53 == *v54)
              {
                v54 += 2;
                v53 += 4;
              }

              if (v54 < v102 && *v53 == *v54)
              {
                ++v54;
                v53 += 2;
              }

              if (v54 < v104 && *v53 == *v54)
              {
                v54 = (v54 + 1);
              }

LABEL_98:
              v59 = v54 - v52;
              if (v59 <= 0xFFFFFFFFFFFFFFFBLL)
              {
                goto LABEL_101;
              }
            }

LABEL_103:
            v107 = 999999999;
            v42 = v103(a1, v15 + 2, v104, &v107);
            if (v42 < 4 || (v41 = v107, (4 * v42 - (__clz(v107 + 1) ^ 0x1F)) <= ((__clz(v38 + 1) ^ 0xFFFFFFE0) + 4 * v36 + 8)))
            {
LABEL_107:
              v40 = v39;
              v41 = v38;
              v42 = v36;
              v6 = v104;
              break;
            }

LABEL_105:
            v6 = v104;
            v15 = v40;
            v36 = v42;
            v38 = v41;
            v39 = v40;
          }

          while (v40 < v106);
        }

        if (v41 <= 2)
        {
          v61 = v100;
          v24 = v101;
        }

        else
        {
          v61 = v100;
          if (v40 <= v5 || &v40[-v41 + 2] <= v99)
          {
            v63 = v40;
            v24 = v101;
          }

          else
          {
            v62 = 1 - v41;
            v63 = v40;
            v24 = v101;
            while (1)
            {
              v64 = *--v63;
              if (v64 != v40[v62])
              {
                break;
              }

              ++v42;
              if (v63 > v5)
              {
                v65 = &v40[v62];
                v40 = v63;
                if (v65 > v99)
                {
                  continue;
                }
              }

              goto LABEL_119;
            }

            v63 = v40;
          }

LABEL_119:
          v20 = v21;
          v21 = (v41 - 2);
          v40 = v63;
        }

        v66 = v40 - v5;
        v67 = *(a2 + 24);
        if (v40 <= v61)
        {
          *v67 = *v5;
          v71 = *(a2 + 24);
          if (v66 > 0x10)
          {
            v72 = (v71 + 16);
            v73 = v71 + v66;
            v74 = (v5 + 16);
            do
            {
              v75 = *v74++;
              *v72++ = v75;
            }

            while (v72 < v73);
            goto LABEL_131;
          }

          *(a2 + 24) = v71 + v66;
          v76 = *(a2 + 8);
        }

        else
        {
          if (v5 <= v61)
          {
            v68 = (v67 + v61 - v5);
            do
            {
              v69 = *v5;
              v5 += 16;
              *v67++ = v69;
            }

            while (v67 < v68);
            v5 = v61;
            v67 = v68;
          }

          while (v5 < v40)
          {
            v70 = *v5++;
            *v67 = v70;
            v67 = (v67 + 1);
          }

LABEL_131:
          *(a2 + 24) += v66;
          v76 = *(a2 + 8);
          if (v66 >= 0x10000)
          {
            v77 = (v76 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v77;
          }
        }

        *(v76 + 4) = v66;
        *v76 = v41 + 1;
        if (v42 - 3 >= 0x10000)
        {
          v78 = (v76 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v78;
        }

        *(v76 + 6) = v42 - 3;
        v79 = v76 + 8;
        *(a2 + 8) = v76 + 8;
        v5 = &v40[v42];
        if (!v20 || v5 > v106)
        {
LABEL_167:
          v15 = v5;
          goto LABEL_168;
        }

        v80 = v21;
        v81 = v20;
        while (2)
        {
          v21 = v81;
          v81 = v80;
          if (*v5 != *&v5[-v21])
          {
            v20 = v21;
            v21 = v80;
            goto LABEL_167;
          }

          v82 = v5 + 4;
          v83 = &v5[-v21 + 4];
          if (v23 > (v5 + 4))
          {
            if (*v83 == *v82)
            {
              v84 = 0;
              v85 = (v5 + 12);
              v83 = &v5[-v21 + 12];
              while (v85 < v23)
              {
                v87 = *v83;
                v83 += 8;
                v86 = v87;
                v89 = *v85;
                v85 += 4;
                v88 = v89;
                v84 += 8;
                if (v86 != v89)
                {
                  v90 = v84 + (__clz(__rbit64(v88 ^ v86)) >> 3);
                  goto LABEL_158;
                }
              }

LABEL_147:
              if (v85 < v24 && *v83 == *v85)
              {
                v83 += 4;
                v85 += 2;
              }

              if (v85 < v102 && *v83 == *v85)
              {
                v83 += 2;
                ++v85;
              }

              if (v85 < v6 && *v83 == *v85)
              {
                v85 = (v85 + 1);
              }

              v90 = v85 - v82;
            }

            else
            {
              v90 = __clz(__rbit64(*v82 ^ *v83)) >> 3;
            }

LABEL_158:
            if (v5 <= v61)
            {
              **(a2 + 24) = *v5;
              v79 = *(a2 + 8);
            }

            *(v79 + 4) = 0;
            *v79 = 1;
            if (v90 + 1 >= 0x10000)
            {
              v91 = (v79 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v91;
            }

            *(v79 + 6) = v90 + 1;
            v79 += 8;
            *(a2 + 8) = v79;
            v5 += v90 + 4;
            if (!v81)
            {
              v20 = v81;
              goto LABEL_167;
            }

            v80 = v21;
            v20 = v81;
            v15 = v5;
            if (v5 > v106)
            {
              goto LABEL_168;
            }

            continue;
          }

          break;
        }

        v85 = (v5 + 4);
        goto LABEL_147;
      }

      v15 += ((v15 - v5) >> 8) + 1;
      v6 = v104;
LABEL_168:
      if (v15 >= v106)
      {
        a3 = v98;
        v14 = v96;
        v13 = v97;
        v19 = v95;
        goto LABEL_170;
      }
    }

    v29 = (v15 + 5);
LABEL_28:
    if (v29 < v24 && *v27 == *v29)
    {
      v27 += 4;
      v29 += 2;
    }

    if (v29 < v102 && *v27 == *v29)
    {
      v27 += 2;
      ++v29;
    }

    if (v29 < v6 && *v27 == *v29)
    {
      v29 = (v29 + 1);
    }

    v34 = v29 - v26;
    goto LABEL_39;
  }

LABEL_170:
  if (v14 <= v19)
  {
    v92 = 0;
  }

  else
  {
    v92 = v14;
  }

  if (v13 > v19)
  {
    v92 = v13;
  }

  if (v21)
  {
    v93 = v21;
  }

  else
  {
    v93 = v92;
  }

  if (v20)
  {
    v92 = v20;
  }

  *a3 = v93;
  a3[1] = v92;
  return v6 - v5;
}

int64_t ZSTD_compressBlock_lazy(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = v8 + v9;
  v11 = *(a1 + 256);
  v12 = v11 - 7;
  v13 = 2 * (v11 > 3);
  v14 = v11 - 4;
  if (v12 < 0xFFFFFFFD)
  {
    v14 = v13;
  }

  v15 = *a3;
  v16 = a3[1];
  if (a4 == v10)
  {
    v17 = a4 + 1;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 - v8;
  v19 = 1 << *(a1 + 240);
  if (v18 - v9 > v19 && *(a1 + 40) == 0)
  {
    LODWORD(v9) = v18 - v19;
  }

  v21 = v18 - v9;
  if (v16 <= v21)
  {
    LODWORD(v22) = a3[1];
  }

  else
  {
    LODWORD(v22) = 0;
  }

  if (v15 <= v21)
  {
    v23 = v15;
  }

  else
  {
    v23 = 0;
  }

  if (v17 < v7)
  {
    v89 = v21;
    v90 = a3[1];
    v91 = *a3;
    v92 = a3;
    v93 = v10;
    v99 = *off_1E81907F0[v14];
    v100 = &a4[a5];
    v25 = (v6 - 7);
    v26 = v6 - 3;
    v27 = v6 - 1;
    v98 = &a4[a5 - 8];
    v95 = v6 - 1;
    v96 = v6 - 3;
    v94 = v6 - 32;
    while (1)
    {
      v28 = 0;
      v29 = v17 + 1;
      v97 = v22;
      if (!v23 || *&v29[-v23] != *(v17 + 1))
      {
        goto LABEL_40;
      }

      v30 = v17 + 5;
      v31 = &v17[-v23 + 5];
      if (v25 <= (v17 + 5))
      {
        break;
      }

      if (*v31 == *v30)
      {
        v32 = 0;
        v33 = (v17 + 13);
        v31 = &v17[-v23 + 13];
        while (v33 < v25)
        {
          v35 = *v31;
          v31 += 8;
          v34 = v35;
          v37 = *v33;
          v33 += 4;
          v36 = v37;
          v32 += 8;
          if (v34 != v37)
          {
            v38 = v32 + (__clz(__rbit64(v36 ^ v34)) >> 3);
            goto LABEL_39;
          }
        }

        goto LABEL_28;
      }

      v38 = __clz(__rbit64(*v30 ^ *v31)) >> 3;
LABEL_39:
      v28 = v38 + 4;
LABEL_40:
      v102 = 999999999;
      v39 = v99(a1, v17, v6, &v102);
      if (v39 <= v28)
      {
        v40 = v28;
      }

      else
      {
        v40 = v39;
      }

      if (v40 >= 4)
      {
        if (v39 <= v28)
        {
          v41 = 0;
        }

        else
        {
          v41 = v102;
        }

        if (v39 > v28)
        {
          v29 = v17;
        }

        if (v17 < v7)
        {
          v42 = v17 + 13;
          v6 = v100;
          while (1)
          {
            v43 = v17 + 1;
            if (!v41 || !v23 || *v43 != *&v43[-v23])
            {
              goto LABEL_75;
            }

            v44 = v17 + 5;
            v45 = &v17[-v23 + 5];
            if (v25 <= (v17 + 5))
            {
              v47 = (v17 + 5);
            }

            else
            {
              v46 = *v45;
              v47 = v42;
              if (v46 != *v44)
              {
                v51 = __clz(__rbit64(*v44 ^ v46)) >> 3;
LABEL_73:
                v52 = v51 + 4;
                if (3 * v52 > (3 * v40 + (__clz(v41 + 1) ^ 0xFFFFFFE0) + 2))
                {
                  v41 = 0;
                  v29 = v17 + 1;
                  v40 = v52;
                }

                goto LABEL_75;
              }

              while (v47 < v25)
              {
                v48 = *(v47 - v23);
                v50 = *v47;
                v47 += 4;
                v49 = v50;
                if (v48 != v50)
                {
                  v47 = (v47 + (__clz(__rbit64(v49 ^ v48)) >> 3) - 8);
                  goto LABEL_72;
                }
              }

              v45 = v47 - v23;
            }

            if (v47 < v96 && *v45 == *v47)
            {
              v47 += 2;
              v45 += 4;
            }

            if (v47 < v95 && *v45 == *v47)
            {
              ++v47;
              v45 += 2;
            }

            if (v47 < v6 && *v45 == *v47)
            {
              v47 = (v47 + 1);
            }

LABEL_72:
            v51 = v47 - v44;
            if (v51 <= 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_73;
            }

LABEL_75:
            v102 = 999999999;
            v53 = v99(a1, v17 + 1, v6, &v102);
            if (v53 < 4)
            {
              break;
            }

            v54 = v102;
            if ((4 * v53 - (__clz(v102 + 1) ^ 0x1F)) <= ((__clz(v41 + 1) ^ 0xFFFFFFE0) + 4 * v40 + 5))
            {
              break;
            }

            ++v42;
            ++v17;
            v40 = v53;
            v41 = v102;
            v29 = v43;
            v6 = v100;
            if (v43 == v98)
            {
              goto LABEL_80;
            }
          }
        }

        v43 = v29;
        v54 = v41;
        v53 = v40;
        v6 = v100;
LABEL_80:
        if (v54 <= 2)
        {
          v7 = v98;
          v27 = v95;
          v26 = v96;
          v55 = v94;
          v22 = v97;
        }

        else
        {
          v55 = v94;
          v27 = v95;
          v26 = v96;
          if (v43 <= v5 || &v43[-v54 + 2] <= v93)
          {
            v57 = v43;
            v7 = v98;
          }

          else
          {
            v56 = 1 - v54;
            v57 = v43;
            v7 = v98;
            while (1)
            {
              v58 = *--v57;
              if (v58 != v43[v56])
              {
                break;
              }

              ++v53;
              if (v57 > v5)
              {
                v59 = &v43[v56];
                v43 = v57;
                if (v59 > v93)
                {
                  continue;
                }
              }

              goto LABEL_91;
            }

            v57 = v43;
          }

LABEL_91:
          v22 = v23;
          v23 = (v54 - 2);
          v43 = v57;
        }

        v60 = v43 - v5;
        v61 = *(a2 + 24);
        if (v43 <= v55)
        {
          *v61 = *v5;
          v65 = *(a2 + 24);
          if (v60 > 0x10)
          {
            v66 = (v65 + 16);
            v67 = v65 + v60;
            v68 = (v5 + 16);
            do
            {
              v69 = *v68++;
              *v66++ = v69;
            }

            while (v66 < v67);
            goto LABEL_103;
          }

          *(a2 + 24) = v65 + v60;
          v70 = *(a2 + 8);
        }

        else
        {
          if (v5 <= v55)
          {
            v62 = (v61 + v55 - v5);
            do
            {
              v63 = *v5;
              v5 += 16;
              *v61++ = v63;
            }

            while (v61 < v62);
            v5 = v55;
            v61 = v62;
          }

          while (v5 < v43)
          {
            v64 = *v5++;
            *v61 = v64;
            v61 = (v61 + 1);
          }

LABEL_103:
          *(a2 + 24) += v60;
          v70 = *(a2 + 8);
          if (v60 >= 0x10000)
          {
            v71 = (v70 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v71;
          }
        }

        *(v70 + 4) = v60;
        *v70 = v54 + 1;
        if (v53 - 3 >= 0x10000)
        {
          v72 = (v70 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v72;
        }

        *(v70 + 6) = v53 - 3;
        v73 = v70 + 8;
        *(a2 + 8) = v70 + 8;
        v5 = &v43[v53];
        if (!v22 || v5 > v7)
        {
LABEL_139:
          v17 = v5;
          goto LABEL_140;
        }

        v74 = v23;
        v75 = v22;
        while (2)
        {
          v23 = v75;
          v75 = v74;
          if (*v5 != *&v5[-v23])
          {
            LODWORD(v22) = v23;
            v23 = v74;
            goto LABEL_139;
          }

          v76 = v5 + 4;
          v77 = &v5[-v23 + 4];
          if (v25 > (v5 + 4))
          {
            if (*v77 == *v76)
            {
              v78 = 0;
              v79 = (v5 + 12);
              v77 = &v5[-v23 + 12];
              while (v79 < v25)
              {
                v81 = *v77;
                v77 += 8;
                v80 = v81;
                v83 = *v79;
                v79 += 4;
                v82 = v83;
                v78 += 8;
                if (v80 != v83)
                {
                  v84 = v78 + (__clz(__rbit64(v82 ^ v80)) >> 3);
                  goto LABEL_130;
                }
              }

LABEL_119:
              if (v79 < v26 && *v77 == *v79)
              {
                v77 += 4;
                v79 += 2;
              }

              if (v79 < v27 && *v77 == *v79)
              {
                v77 += 2;
                ++v79;
              }

              if (v79 < v6 && *v77 == *v79)
              {
                v79 = (v79 + 1);
              }

              v84 = v79 - v76;
            }

            else
            {
              v84 = __clz(__rbit64(*v76 ^ *v77)) >> 3;
            }

LABEL_130:
            if (v5 <= v55)
            {
              **(a2 + 24) = *v5;
              v73 = *(a2 + 8);
            }

            *(v73 + 4) = 0;
            *v73 = 1;
            if (v84 + 1 >= 0x10000)
            {
              v85 = (v73 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v85;
            }

            *(v73 + 6) = v84 + 1;
            v73 += 8;
            *(a2 + 8) = v73;
            v5 += v84 + 4;
            if (!v75)
            {
              LODWORD(v22) = 0;
              goto LABEL_139;
            }

            v74 = v23;
            LODWORD(v22) = v75;
            v17 = v5;
            if (v5 > v7)
            {
              goto LABEL_140;
            }

            continue;
          }

          break;
        }

        v79 = (v5 + 4);
        goto LABEL_119;
      }

      v17 += ((v17 - v5) >> 8) + 1;
      v6 = v100;
      v27 = v95;
      v26 = v96;
      LODWORD(v22) = v97;
LABEL_140:
      if (v17 >= v7)
      {
        a3 = v92;
        v16 = v90;
        v15 = v91;
        v21 = v89;
        goto LABEL_142;
      }
    }

    v33 = (v17 + 5);
LABEL_28:
    if (v33 < v26 && *v31 == *v33)
    {
      v31 += 4;
      v33 += 2;
    }

    if (v33 < v27 && *v31 == *v33)
    {
      v31 += 2;
      ++v33;
    }

    if (v33 < v6 && *v31 == *v33)
    {
      v33 = (v33 + 1);
    }

    v38 = v33 - v30;
    goto LABEL_39;
  }

LABEL_142:
  if (v16 <= v21)
  {
    v86 = 0;
  }

  else
  {
    v86 = v16;
  }

  if (v15 > v21)
  {
    v86 = v15;
  }

  if (v23)
  {
    v87 = v23;
  }

  else
  {
    v87 = v86;
  }

  if (v22)
  {
    v86 = v22;
  }

  *a3 = v87;
  a3[1] = v86;
  return v6 - v5;
}

int64_t ZSTD_compressBlock_greedy(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = v6 - 8;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 256);
  v11 = v10 - 7;
  v12 = 2 * (v10 > 3);
  v13 = v10 - 4;
  if (v11 < 0xFFFFFFFD)
  {
    v13 = v12;
  }

  v14 = *a3;
  v15 = a3[1];
  v77 = v8 + v9;
  if (a4 == v8 + v9)
  {
    v16 = a4 + 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = v16 - v8;
  v18 = 1 << *(a1 + 240);
  if (v17 - v9 > v18 && *(a1 + 40) == 0)
  {
    LODWORD(v9) = v17 - v18;
  }

  v20 = v17 - v9;
  if (v15 <= v20)
  {
    v21 = v15;
  }

  else
  {
    v21 = 0;
  }

  if (v14 <= v20)
  {
    v22 = v14;
  }

  else
  {
    v22 = 0;
  }

  if (v16 < v7)
  {
    v73 = v20;
    v74 = a3[1];
    v75 = *a3;
    v76 = a3;
    v24 = (v6 - 7);
    v25 = v6 - 3;
    v26 = v6 - 1;
    v27 = v6 - 32;
    v78 = v6 - 32;
    v79 = *off_1E81907F0[v13];
    while (1)
    {
      if (v22)
      {
        v28 = v16 + 1;
        if (*&v16[-v22 + 1] == *(v16 + 1))
        {
          break;
        }
      }

      v81 = 999999999;
      v38 = v6;
      v39 = v79(a1, v16, v6, &v81);
      if (v39)
      {
        v40 = v81;
      }

      else
      {
        v40 = 0;
      }

      if (v39 > 3)
      {
        if (v81 < 3)
        {
          v6 = v38;
          v27 = v78;
        }

        else
        {
          v6 = v38;
          if (v16 <= v5 || &v16[-v81 + 2] <= v77)
          {
            v28 = v16;
            v27 = v78;
          }

          else
          {
            v41 = 1 - v81;
            v28 = v16;
            v27 = v78;
            while (1)
            {
              v42 = *--v28;
              if (v42 != v16[v41])
              {
                break;
              }

              ++v39;
              if (v28 > v5)
              {
                v43 = &v16[v41];
                v16 = v28;
                if (v43 > v77)
                {
                  continue;
                }
              }

              goto LABEL_107;
            }

            v28 = v16;
          }

LABEL_107:
          v21 = v22;
          v22 = (v40 - 2);
LABEL_54:
          v16 = v28;
        }

        v44 = v16 - v5;
        v45 = *(a2 + 24);
        if (v16 <= v27)
        {
          *v45 = *v5;
          v49 = *(a2 + 24);
          if (v44 > 0x10)
          {
            v50 = (v49 + 16);
            v51 = v49 + v44;
            v52 = (v5 + 16);
            do
            {
              v53 = *v52++;
              *v50++ = v53;
            }

            while (v50 < v51);
            goto LABEL_66;
          }

          *(a2 + 24) = v49 + v44;
          v54 = *(a2 + 8);
        }

        else
        {
          if (v5 <= v27)
          {
            v46 = (v45 + v27 - v5);
            do
            {
              v47 = *v5;
              v5 += 16;
              *v45++ = v47;
            }

            while (v45 < v46);
            v5 = v27;
            v45 = v46;
          }

          while (v5 < v16)
          {
            v48 = *v5++;
            *v45 = v48;
            v45 = (v45 + 1);
          }

LABEL_66:
          *(a2 + 24) += v44;
          v54 = *(a2 + 8);
          if (v44 >= 0x10000)
          {
            v55 = (v54 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v55;
          }
        }

        *(v54 + 4) = v44;
        *v54 = v40 + 1;
        if (v39 - 3 >= 0x10000)
        {
          v56 = (v54 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v56;
        }

        *(v54 + 6) = v39 - 3;
        v57 = v54 + 8;
        *(a2 + 8) = v54 + 8;
        v5 = &v16[v39];
        if (v21 && v5 <= v7)
        {
          v58 = v22;
          v59 = v21;
          while (1)
          {
            v22 = v59;
            v59 = v58;
            if (*v5 != *&v5[-v22])
            {
              v21 = v22;
              v22 = v58;
              break;
            }

            v60 = v5 + 4;
            v61 = &v5[-v22 + 4];
            if (v24 <= (v5 + 4))
            {
              v63 = (v5 + 4);
            }

            else
            {
              if (*v61 != *v60)
              {
                v68 = __clz(__rbit64(*v60 ^ *v61)) >> 3;
                goto LABEL_93;
              }

              v62 = 0;
              v63 = (v5 + 12);
              v61 = &v5[-v22 + 12];
              while (v63 < v24)
              {
                v65 = *v61;
                v61 += 8;
                v64 = v65;
                v67 = *v63;
                v63 += 4;
                v66 = v67;
                v62 += 8;
                if (v64 != v67)
                {
                  v68 = v62 + (__clz(__rbit64(v66 ^ v64)) >> 3);
                  goto LABEL_93;
                }
              }
            }

            if (v63 < v25 && *v61 == *v63)
            {
              v61 += 4;
              v63 += 2;
            }

            if (v63 < v26 && *v61 == *v63)
            {
              v61 += 2;
              ++v63;
            }

            if (v63 < v6 && *v61 == *v63)
            {
              v63 = (v63 + 1);
            }

            v68 = v63 - v60;
LABEL_93:
            if (v5 <= v27)
            {
              **(a2 + 24) = *v5;
              v57 = *(a2 + 8);
            }

            *(v57 + 4) = 0;
            *v57 = 1;
            if (v68 + 1 >= 0x10000)
            {
              v69 = (v57 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v69;
            }

            *(v57 + 6) = v68 + 1;
            v57 += 8;
            *(a2 + 8) = v57;
            v5 += v68 + 4;
            if (!v59)
            {
              v21 = v59;
              break;
            }

            v58 = v22;
            v21 = v59;
            v16 = v5;
            if (v5 > v7)
            {
              goto LABEL_103;
            }
          }
        }

        v16 = v5;
        goto LABEL_103;
      }

      v16 += ((v16 - v5) >> 8) + 1;
      v6 = v38;
      v27 = v78;
LABEL_103:
      if (v16 >= v7)
      {
        a3 = v76;
        v15 = v74;
        v14 = v75;
        v20 = v73;
        goto LABEL_108;
      }
    }

    v29 = v16 + 5;
    v30 = &v16[-v22 + 5];
    if (v24 <= (v16 + 5))
    {
      v32 = (v16 + 5);
    }

    else
    {
      if (*v30 != *v29)
      {
        v37 = __clz(__rbit64(*v29 ^ *v30)) >> 3;
LABEL_53:
        v40 = 0;
        v39 = v37 + 4;
        goto LABEL_54;
      }

      v31 = 0;
      v32 = (v16 + 13);
      v30 = &v16[-v22 + 13];
      while (v32 < v24)
      {
        v34 = *v30;
        v30 += 8;
        v33 = v34;
        v36 = *v32;
        v32 += 4;
        v35 = v36;
        v31 += 8;
        if (v33 != v36)
        {
          v37 = v31 + (__clz(__rbit64(v35 ^ v33)) >> 3);
          goto LABEL_53;
        }
      }
    }

    if (v32 < v25 && *v30 == *v32)
    {
      v30 += 4;
      v32 += 2;
    }

    if (v32 < v26 && *v30 == *v32)
    {
      v30 += 2;
      ++v32;
    }

    if (v32 < v6 && *v30 == *v32)
    {
      v32 = (v32 + 1);
    }

    v37 = v32 - v29;
    goto LABEL_53;
  }

LABEL_108:
  if (v15 <= v20)
  {
    v70 = 0;
  }

  else
  {
    v70 = v15;
  }

  if (v14 > v20)
  {
    v70 = v14;
  }

  if (v22)
  {
    v71 = v22;
  }

  else
  {
    v71 = v70;
  }

  if (v21)
  {
    v70 = v21;
  }

  *a3 = v71;
  a3[1] = v70;
  return v6 - v5;
}

uint64_t ZSTD_compressBlock_btlazy2_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int16 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = (a4 + a5);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = (v7 + v8);
  v10 = *(a1 + 256);
  v11 = v10 - 7;
  v12 = 2 * (v10 > 3);
  v13 = v10 - 4;
  if (v11 < 0xFFFFFFFD)
  {
    v13 = v12;
  }

  v15 = *a3;
  LODWORD(i) = a3[1];
  v16 = *(a1 + 232);
  v17 = *(v16 + 8);
  v72 = (v17 + *(v16 + 24));
  if (a4 - v9 - v72 + *v16)
  {
    v18 = a4;
  }

  else
  {
    v18 = (a4 + 1);
  }

  v82 = (a4 + a5 - 8);
  if (v18 < v82)
  {
    v71 = a3;
    v78 = *off_1E8190850[v13 + 6];
    v79 = *(v16 + 8);
    v77 = v8 + v17 - *v16;
    v75 = v17 - v77;
    v76 = *v16;
    v73 = (v7 + v8);
    v81 = *(a1 + 24);
    while (1)
    {
      v20 = (v18 + 1);
      v21 = (v18 - v7 - v15 + 1);
      v22 = v17 + v21 - v77;
      if (v21 >= v8)
      {
        v22 = v7 + v21;
      }

      v74 = i;
      if ((v21 - v8) <= 0xFFFFFFFC && *v22 == *v20)
      {
        v23 = (v21 >= v8 ? v6 : v76);
        v24 = ZSTD_count_2segments((v18 + 5), (v22 + 4), v6, v23, v9) + 4;
      }

      else
      {
        v24 = 0;
      }

      v83 = 999999999;
      v25 = v78(a1, v18, v6, &v83);
      v26 = v25 <= v24 ? v24 : v25;
      if (v26 >= 4)
      {
        break;
      }

      v18 = (v18 + ((v18 - v5) >> 8) + 1);
      v9 = v73;
      LODWORD(i) = v74;
LABEL_106:
      v17 = v79;
      if (v18 >= v82)
      {
        a3 = v71;
        goto LABEL_108;
      }
    }

    v27 = v25 > v24;
    if (v25 <= v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = v83;
    }

    if (v27)
    {
      v20 = v18;
    }

    v8 = v20;
    v29 = v28;
    v30 = v26;
    if (v18 < v82)
    {
      while (1)
      {
        v8 = v18 + 1;
        v31 = (v18 + 1 - v7 - v15);
        v32 = v79 + v31 - v77;
        if (v31 >= v81)
        {
          v32 = v7 + v31;
        }

        if (v31 - v81 <= 0xFFFFFFFC && *v32 == *v8)
        {
          v33 = (v31 >= v81 ? v6 : v76);
          v34 = ZSTD_count_2segments((v18 + 5), (v32 + 4), v6, v33, v73);
          v35 = 3 * v26 + (__clz(v28 + 1) ^ 0xFFFFFFE0) + 2;
          if (v34 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v34 + 4) > v35)
          {
            v28 = 0;
            v20 = (v18 + 1);
            v26 = v34 + 4;
          }
        }

        v83 = 999999999;
        v30 = v78(a1, (v18 + 1), v6, &v83);
        if (v30 < 4 || (v29 = v83, (4 * v30 - (__clz(v83 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 5)))
        {
          if (v8 >= v82)
          {
            break;
          }

          v8 = (v18 + 1);
          v37 = (v18 + 2 - v7 - v15);
          v38 = v79 + v37 - v77;
          if (v37 >= v81)
          {
            v38 = v7 + v37;
          }

          if (v37 - v81 <= 0xFFFFFFFC && *v38 == *v8)
          {
            v39 = (v37 >= v81 ? v6 : v76);
            v40 = ZSTD_count_2segments(v18 + 3, (v38 + 4), v6, v39, v73);
            if (v40 <= 0xFFFFFFFFFFFFFFFBLL && ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 2) < 4 * (v40 + 4))
            {
              v28 = 0;
              v20 = v18 + 1;
              v26 = v40 + 4;
            }
          }

          v83 = 999999999;
          v30 = v78(a1, v18 + 1, v6, &v83);
          if (v30 < 4)
          {
            break;
          }

          v29 = v83;
          if ((4 * v30 - (__clz(v83 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 8))
          {
            break;
          }
        }

        v18 = v8;
        v26 = v30;
        v28 = v29;
        v20 = v8;
        if (v8 >= v82)
        {
          goto LABEL_58;
        }
      }

      v8 = v20;
      v29 = v28;
      v30 = v26;
    }

LABEL_58:
    if (v29 <= 2)
    {
      v9 = v73;
      v44 = v6 - 16;
    }

    else
    {
      v41 = v8 - (v29 + v7) + 2;
      v42 = v72;
      v9 = v73;
      if (v81 <= v41)
      {
        v42 = v73;
      }

      v43 = v75;
      v44 = v6 - 16;
      if (v81 <= v8 - (v29 + v7) + 2)
      {
        v43 = v7;
      }

      if (v8 > v5 && v43 + v41 > v42)
      {
        v45 = (v43 + v41 - 1);
        v46 = (v8 - 1);
        while (*v46 == *v45)
        {
          ++v30;
          v47 = v46 - 1;
          if (v46 > v5)
          {
            v46 = (v46 - 1);
            v27 = v45-- > v42;
            if (v27)
            {
              continue;
            }
          }

          v8 = (v47 + 1);
          goto LABEL_72;
        }

        v8 = v46 + 1;
      }

LABEL_72:
      v74 = v15;
      v15 = (v29 - 2);
    }

    v48 = v8 - v5;
    v49 = *(a2 + 24);
    if (v8 <= v44)
    {
      *v49 = *v5;
      v53 = *(a2 + 24);
      if (v48 <= 0x10)
      {
        *(a2 + 24) = v53 + v48;
        v58 = *(a2 + 8);
        i = v74;
        goto LABEL_87;
      }

      v54 = (v53 + 16);
      v55 = v53 + v48;
      v56 = (v5 + 8);
      i = v74;
      do
      {
        v57 = *v56++;
        *v54++ = v57;
      }

      while (v54 < v55);
    }

    else
    {
      if (v5 <= v44)
      {
        v50 = (v49 + v44 - v5);
        do
        {
          v51 = *v5;
          v5 += 8;
          *v49++ = v51;
        }

        while (v49 < v50);
        v5 = v44;
        v49 = v50;
      }

      for (i = v74; v5 < v8; v49 = (v49 + 1))
      {
        v52 = *v5;
        v5 = (v5 + 1);
        *v49 = v52;
      }
    }

    *(a2 + 24) += v48;
    v58 = *(a2 + 8);
    if (v48 >= 0x10000)
    {
      v59 = (v58 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v59;
    }

LABEL_87:
    *(v58 + 4) = v48;
    *v58 = v29 + 1;
    if (v30 - 3 >= 0x10000)
    {
      v60 = (v58 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v60;
    }

    *(v58 + 6) = v30 - 3;
    v61 = v58 + 8;
    *(a2 + 8) = v58 + 8;
    v5 = (v8 + v30);
    if (v8 + v30 <= v82)
    {
      v62 = v15;
      v63 = i;
      LODWORD(v8) = v81;
      while (1)
      {
        v15 = v63;
        v63 = v62;
        v64 = (v5 - v7 - v15);
        v65 = v75;
        if (v64 >= v81)
        {
          v65 = v7;
        }

        if (v64 - v81 > 0xFFFFFFFC)
        {
          break;
        }

        v66 = v65 + v64;
        if (*v66 != *v5)
        {
          break;
        }

        if (v64 >= v81)
        {
          v67 = v6;
        }

        else
        {
          v67 = v76;
        }

        v68 = ZSTD_count_2segments(v5 + 2, (v66 + 4), v6, v67, v9);
        if (v5 <= v6 - 16)
        {
          **(a2 + 24) = *v5;
          v61 = *(a2 + 8);
        }

        *(v61 + 4) = 0;
        *v61 = 1;
        if (v68 + 1 >= 0x10000)
        {
          v69 = (v61 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v69;
        }

        *(v61 + 6) = v68 + 1;
        v61 += 8;
        v5 = (v5 + v68 + 4);
        *(a2 + 8) = v61;
        v62 = v15;
        LODWORD(i) = v63;
        v18 = v5;
        if (v5 > v82)
        {
          goto LABEL_106;
        }
      }

      LODWORD(i) = v15;
      v15 = v62;
      v18 = v5;
    }

    else
    {
      v18 = (v8 + v30);
      LODWORD(v8) = v81;
    }

    goto LABEL_106;
  }

LABEL_108:
  *a3 = v15;
  a3[1] = i;
  return v6 - v5;
}

uint64_t ZSTD_compressBlock_lazy2_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int16 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = (a4 + a5);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = (v7 + v8);
  v10 = *(a1 + 256);
  v11 = v10 - 7;
  v12 = 2 * (v10 > 3);
  v13 = v10 - 4;
  if (v11 < 0xFFFFFFFD)
  {
    v13 = v12;
  }

  v15 = *a3;
  LODWORD(i) = a3[1];
  v16 = *(a1 + 232);
  v17 = *(v16 + 8);
  v72 = (v17 + *(v16 + 24));
  if (a4 - v9 - v72 + *v16)
  {
    v18 = a4;
  }

  else
  {
    v18 = (a4 + 1);
  }

  v82 = (a4 + a5 - 8);
  if (v18 < v82)
  {
    v71 = a3;
    v78 = *off_1E81907F0[v13 + 6];
    v79 = *(v16 + 8);
    v77 = v8 + v17 - *v16;
    v75 = v17 - v77;
    v76 = *v16;
    v73 = (v7 + v8);
    v81 = *(a1 + 24);
    while (1)
    {
      v20 = (v18 + 1);
      v21 = (v18 - v7 - v15 + 1);
      v22 = v17 + v21 - v77;
      if (v21 >= v8)
      {
        v22 = v7 + v21;
      }

      v74 = i;
      if ((v21 - v8) <= 0xFFFFFFFC && *v22 == *v20)
      {
        v23 = (v21 >= v8 ? v6 : v76);
        v24 = ZSTD_count_2segments((v18 + 5), (v22 + 4), v6, v23, v9) + 4;
      }

      else
      {
        v24 = 0;
      }

      v83 = 999999999;
      v25 = v78(a1, v18, v6, &v83);
      v26 = v25 <= v24 ? v24 : v25;
      if (v26 >= 4)
      {
        break;
      }

      v18 = (v18 + ((v18 - v5) >> 8) + 1);
      v9 = v73;
      LODWORD(i) = v74;
LABEL_106:
      v17 = v79;
      if (v18 >= v82)
      {
        a3 = v71;
        goto LABEL_108;
      }
    }

    v27 = v25 > v24;
    if (v25 <= v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = v83;
    }

    if (v27)
    {
      v20 = v18;
    }

    v8 = v20;
    v29 = v28;
    v30 = v26;
    if (v18 < v82)
    {
      while (1)
      {
        v8 = v18 + 1;
        v31 = (v18 + 1 - v7 - v15);
        v32 = v79 + v31 - v77;
        if (v31 >= v81)
        {
          v32 = v7 + v31;
        }

        if (v31 - v81 <= 0xFFFFFFFC && *v32 == *v8)
        {
          v33 = (v31 >= v81 ? v6 : v76);
          v34 = ZSTD_count_2segments((v18 + 5), (v32 + 4), v6, v33, v73);
          v35 = 3 * v26 + (__clz(v28 + 1) ^ 0xFFFFFFE0) + 2;
          if (v34 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v34 + 4) > v35)
          {
            v28 = 0;
            v20 = (v18 + 1);
            v26 = v34 + 4;
          }
        }

        v83 = 999999999;
        v30 = v78(a1, (v18 + 1), v6, &v83);
        if (v30 < 4 || (v29 = v83, (4 * v30 - (__clz(v83 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 5)))
        {
          if (v8 >= v82)
          {
            break;
          }

          v8 = (v18 + 1);
          v37 = (v18 + 2 - v7 - v15);
          v38 = v79 + v37 - v77;
          if (v37 >= v81)
          {
            v38 = v7 + v37;
          }

          if (v37 - v81 <= 0xFFFFFFFC && *v38 == *v8)
          {
            v39 = (v37 >= v81 ? v6 : v76);
            v40 = ZSTD_count_2segments(v18 + 3, (v38 + 4), v6, v39, v73);
            if (v40 <= 0xFFFFFFFFFFFFFFFBLL && ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 2) < 4 * (v40 + 4))
            {
              v28 = 0;
              v20 = v18 + 1;
              v26 = v40 + 4;
            }
          }

          v83 = 999999999;
          v30 = v78(a1, v18 + 1, v6, &v83);
          if (v30 < 4)
          {
            break;
          }

          v29 = v83;
          if ((4 * v30 - (__clz(v83 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 8))
          {
            break;
          }
        }

        v18 = v8;
        v26 = v30;
        v28 = v29;
        v20 = v8;
        if (v8 >= v82)
        {
          goto LABEL_58;
        }
      }

      v8 = v20;
      v29 = v28;
      v30 = v26;
    }

LABEL_58:
    if (v29 <= 2)
    {
      v9 = v73;
      v44 = v6 - 16;
    }

    else
    {
      v41 = v8 - (v29 + v7) + 2;
      v42 = v72;
      v9 = v73;
      if (v81 <= v41)
      {
        v42 = v73;
      }

      v43 = v75;
      v44 = v6 - 16;
      if (v81 <= v8 - (v29 + v7) + 2)
      {
        v43 = v7;
      }

      if (v8 > v5 && v43 + v41 > v42)
      {
        v45 = (v43 + v41 - 1);
        v46 = (v8 - 1);
        while (*v46 == *v45)
        {
          ++v30;
          v47 = v46 - 1;
          if (v46 > v5)
          {
            v46 = (v46 - 1);
            v27 = v45-- > v42;
            if (v27)
            {
              continue;
            }
          }

          v8 = (v47 + 1);
          goto LABEL_72;
        }

        v8 = v46 + 1;
      }

LABEL_72:
      v74 = v15;
      v15 = (v29 - 2);
    }

    v48 = v8 - v5;
    v49 = *(a2 + 24);
    if (v8 <= v44)
    {
      *v49 = *v5;
      v53 = *(a2 + 24);
      if (v48 <= 0x10)
      {
        *(a2 + 24) = v53 + v48;
        v58 = *(a2 + 8);
        i = v74;
        goto LABEL_87;
      }

      v54 = (v53 + 16);
      v55 = v53 + v48;
      v56 = (v5 + 8);
      i = v74;
      do
      {
        v57 = *v56++;
        *v54++ = v57;
      }

      while (v54 < v55);
    }

    else
    {
      if (v5 <= v44)
      {
        v50 = (v49 + v44 - v5);
        do
        {
          v51 = *v5;
          v5 += 8;
          *v49++ = v51;
        }

        while (v49 < v50);
        v5 = v44;
        v49 = v50;
      }

      for (i = v74; v5 < v8; v49 = (v49 + 1))
      {
        v52 = *v5;
        v5 = (v5 + 1);
        *v49 = v52;
      }
    }

    *(a2 + 24) += v48;
    v58 = *(a2 + 8);
    if (v48 >= 0x10000)
    {
      v59 = (v58 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v59;
    }

LABEL_87:
    *(v58 + 4) = v48;
    *v58 = v29 + 1;
    if (v30 - 3 >= 0x10000)
    {
      v60 = (v58 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v60;
    }

    *(v58 + 6) = v30 - 3;
    v61 = v58 + 8;
    *(a2 + 8) = v58 + 8;
    v5 = (v8 + v30);
    if (v8 + v30 <= v82)
    {
      v62 = v15;
      v63 = i;
      LODWORD(v8) = v81;
      while (1)
      {
        v15 = v63;
        v63 = v62;
        v64 = (v5 - v7 - v15);
        v65 = v75;
        if (v64 >= v81)
        {
          v65 = v7;
        }

        if (v64 - v81 > 0xFFFFFFFC)
        {
          break;
        }

        v66 = v65 + v64;
        if (*v66 != *v5)
        {
          break;
        }

        if (v64 >= v81)
        {
          v67 = v6;
        }

        else
        {
          v67 = v76;
        }

        v68 = ZSTD_count_2segments(v5 + 2, (v66 + 4), v6, v67, v9);
        if (v5 <= v6 - 16)
        {
          **(a2 + 24) = *v5;
          v61 = *(a2 + 8);
        }

        *(v61 + 4) = 0;
        *v61 = 1;
        if (v68 + 1 >= 0x10000)
        {
          v69 = (v61 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v69;
        }

        *(v61 + 6) = v68 + 1;
        v61 += 8;
        v5 = (v5 + v68 + 4);
        *(a2 + 8) = v61;
        v62 = v15;
        LODWORD(i) = v63;
        v18 = v5;
        if (v5 > v82)
        {
          goto LABEL_106;
        }
      }

      LODWORD(i) = v15;
      v15 = v62;
      v18 = v5;
    }

    else
    {
      v18 = (v8 + v30);
      LODWORD(v8) = v81;
    }

    goto LABEL_106;
  }

LABEL_108:
  *a3 = v15;
  a3[1] = i;
  return v6 - v5;
}