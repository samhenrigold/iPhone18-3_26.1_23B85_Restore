uint64_t _citrus_iconv_std_iconv_init_context(void *a1)
{
  v2 = *(*a1 + 8);
  v3 = *v2[1][3];
  v4 = *(*v2)[3];
  v5 = malloc_type_malloc(2 * (v4 + v3) + 248, 0x62DDEAB1uLL);
  if (!v5)
  {
    return *__error();
  }

  v6 = v5;
  *(v5 + 184) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  v7 = (v5 + 248);
  v8 = v2[1];
  if (!v3)
  {
    *(v5 + 29) = 0;
    *(v5 + 30) = 0;
    *(v5 + 28) = v8;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = *v2;
    *(v6 + 26) = 0;
    *(v6 + 27) = 0;
    *(v6 + 25) = v10;
    goto LABEL_8;
  }

  init_encoding(v5 + 28, v8, v7, (v7 + v3));
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  init_encoding(v6 + 25, *v2, (v7 + 2 * v3), (v7 + 2 * v3 + v4));
LABEL_8:
  result = 0;
  a1[1] = v6;
  return result;
}

size_t ***init_encoding(size_t ***result, size_t **a2, size_t **a3, size_t **a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  if (a3 | a4)
  {
    if (!a3 || !a4)
    {
      init_encoding_cold_1();
    }

    v6 = result;
    bzero(a3, *a2[3]);
    v7 = (*a2)[2];
    if (!v7 || (result = v7(a2, a3), !result))
    {
      result = v6[2];
      if (result)
      {
        v8 = v6[1];
        if (v8)
        {
          v9 = *(*v6)[3];

          return memcpy(result, v8, v9);
        }
      }
    }
  }

  return result;
}

uint64_t _citrus_iconv_std_iconv_convert(void *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, char a6, void (**a7)(size_t **, uint64_t))
{
  v7 = a5;
  v8 = a4;
  v200 = *MEMORY[0x29EDCA608];
  v9 = a1[1];
  v10 = *(*a1 + 8);
  v188 = 0;
  v189 = 0;
  v186 = 0;
  v187 = 0;
  v185 = 0;
  if (!a2 || (v11 = a2, (v12 = *a2) == 0))
  {
    if (a4 && *a4)
    {
      v137 = *(v9 + 232);
      if (v137)
      {
        memcpy(*(v9 + 240), v137, **(*(v9 + 224) + 24));
      }

      v138 = *(v9 + 208);
      if (v138)
      {
        memcpy(*(v9 + 216), v138, **(*(v9 + 200) + 24));
        v139 = *(v9 + 208);
      }

      else
      {
        v139 = 0;
      }

      v186 = 0;
      v146 = *v7;
      v62 = (*(**(v9 + 200) + 56))(*(v9 + 200), *v8, *v7, v139, &v186);
      if (v62)
      {
        goto LABEL_256;
      }

      v147 = v186;
      if (v186 == -2)
      {
        goto LABEL_254;
      }

      *v8 += v186;
      *v7 = v146 - v147;
    }

    else
    {
      v140 = *(v9 + 208);
      if (v140)
      {
        v141 = *(v9 + 200);
        bzero(*(v9 + 208), *v141[3]);
        v142 = (*v141)[2];
        if (v142)
        {
          v142(v141, v140);
        }
      }

      v143 = *(v9 + 216);
      if (v143)
      {
        v144 = *(v9 + 200);
        bzero(*(v9 + 216), *v144[3]);
        v145 = (*v144)[2];
        if (v145)
        {
          v145(v144, v143);
        }
      }
    }

    v151 = *(v9 + 232);
    if (v151)
    {
      v152 = *(v9 + 224);
      bzero(*(v9 + 232), *v152[3]);
      v153 = (*v152)[2];
      if (v153)
      {
        v153(v152, v151);
      }
    }

    v154 = *(v9 + 240);
    if (v154)
    {
      v155 = *(v9 + 224);
      bzero(*(v9 + 240), *v155[3]);
      v150 = (*v155)[2];
      if (!v150)
      {
LABEL_271:
        v19 = 0;
        goto LABEL_272;
      }

      v150(v155, v154);
    }

    v150 = 0;
    goto LABEL_271;
  }

  v13 = a1;
  v176 = 0;
  v168 = v10;
  v14 = *(*(*(v10 + 8) + 24) + 16);
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v169 = v9 + 64;
  v162 = (v9 + 200);
  v164 = v15;
  v165 = (v9 + 2);
  v16 = *a3;
  v159 = a6 & 1;
  do
  {
LABEL_7:
    if (!v16)
    {
      *v199.__mbstate8 = 0;
      v17 = (*(**(v9 + 224) + 64))(*(v9 + 224), *(v9 + 232), 0, &v199);
      v18 = v176;
      if (!v17)
      {
        v18 = *v199.__mbstate8;
      }

      if ((v18 - 1) < 2)
      {
        v19 = 0;
        goto LABEL_261;
      }

      v176 = v18;
      v12 = *v11;
    }

    v189 = v12;
    v186 = 0;
    v187 = 0;
    LODWORD(v185) = 32;
    if ((v13[3] & 1) == 0)
    {
      v19 = mbtocsx(v9 + 224, v198, v197, v196, &v185, &v189, v16, &v187, *(*v13 + 80));
      LODWORD(v20) = v185;
      goto LABEL_39;
    }

    v21 = 0;
    v195 = 0;
    v22 = *v7;
    v186 = *v7;
    v183 = *v8;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    v24 = v13[1];
    v23 = v13[2];
    v25 = *(v24 + 152);
    *(&v199._mbstateL + 4) = *(v24 + 136);
    *(&v199._mbstateL + 5) = v25;
    v26 = *(v24 + 184);
    *(&v199._mbstateL + 6) = *(v24 + 168);
    *(&v199._mbstateL + 7) = v26;
    v27 = *(v24 + 88);
    *v199.__mbstate8 = *(v24 + 72);
    *(&v199._mbstateL + 1) = v27;
    v28 = *(v24 + 120);
    *(&v199._mbstateL + 2) = *(v24 + 104);
    *(&v199._mbstateL + 3) = v28;
    if (v16 < 4)
    {
      goto LABEL_22;
    }

    v29 = 0;
    v21 = 0;
    while (1)
    {
      v30 = ___mb_cur_max();
      if (v29 > 0x1F || v21 > 6 - v30)
      {
        goto LABEL_22;
      }

      v31 = wcrtomb((v24 + 64 + v21), *(v12 + 4 * v29), &v199);
      if (v31 == -1)
      {
        break;
      }

LABEL_21:
      v32 = *(&v199._mbstateL + 5);
      *(v24 + 136) = *(&v199._mbstateL + 4);
      *(v24 + 152) = v32;
      v33 = *(&v199._mbstateL + 7);
      *(v24 + 168) = *(&v199._mbstateL + 6);
      *(v24 + 184) = v33;
      v34 = *(&v199._mbstateL + 1);
      *(v24 + 72) = *v199.__mbstate8;
      *(v24 + 88) = v34;
      v35 = *(&v199._mbstateL + 3);
      *(v24 + 104) = *(&v199._mbstateL + 2);
      v21 += v31;
      *(v24 + 120) = v35;
      *(v9 + 2 * v29) = v21;
      v189 += 4;
      if (((v16 - 4) >> 2) + 1 == ++v29)
      {
        goto LABEL_22;
      }
    }

    if (*(*a1 + 72) == 1)
    {
      v31 = 4;
      memset(&v199, 0, sizeof(v199));
      goto LABEL_21;
    }

    if (!v21)
    {
      if (v23)
      {
        v115 = *(v23 + 24);
        if (v115)
        {
          v194 = 0uLL;
          *&v193 = v183;
          *(&v193 + 1) = v22;
          v115(*(v12 + 4 * v29), _citrus_iconv_std_write_mb, &v193, *(v23 + 32));
          v19 = DWORD2(v194);
          if (!DWORD2(v194))
          {
            v188 = (v188 + 1);
            v189 += 4;
            v186 = v193 - v183;
            v8 = a4;
            v7 = a5;
            v11 = a2;
            v13 = a1;
            goto LABEL_230;
          }

          break;
        }
      }

      goto LABEL_278;
    }

LABEL_22:
    v195 = v169;
    v13 = a1;
    v19 = mbtocsx(v9 + 224, v198, v197, v196, &v185, &v195, v21, &v187, *(*a1 + 80));
    v20 = v185;
    v11 = a2;
    if (v185 > 0)
    {
      v36 = 0;
      v37 = 0;
      v38 = v165;
      v39 = 1;
      do
      {
        if ((v37 & 0xFFFFFFE0) != 0)
        {
          v40 = v37;
        }

        else
        {
          v40 = 31;
        }

        if (v37 <= 0x1F)
        {
          v41 = 31;
        }

        else
        {
          v41 = v37;
        }

        v42 = v196[v37];
        if (*(v9 + 2 * v37) > v42)
        {
          _citrus_iconv_std_iconv_convert_cold_2();
        }

        v43 = v40 + v36;
        v44 = v38;
        v45 = v39;
        while (v43)
        {
          v46 = *v44++;
          --v45;
          --v43;
          if (v42 <= (v46 - 1))
          {
            v47 = -v45;
            v41 = -v45;
            goto LABEL_36;
          }
        }

        LOWORD(v47) = v41;
LABEL_36:
        if (*(v9 + 2 * v41) > v42)
        {
          _citrus_iconv_std_iconv_convert_cold_1();
        }

        v196[v37++] = 4 * v47 + 4;
        --v39;
        ++v38;
        --v36;
      }

      while (v37 != v20);
    }

    v8 = a4;
    v7 = a5;
LABEL_39:
    v48 = v187 != -2 || v20 < 1;
    v49 = v20;
    if (!v48)
    {
      v50 = *(v9 + 232);
      if (v50)
      {
        v51 = *(v9 + 224);
        bzero(*(v9 + 232), *v51[3]);
        v52 = (*v51)[2];
        if (v52)
        {
          v52(v51, v50);
        }
      }

      v53 = *(v9 + 240);
      if (v53)
      {
        v54 = *(v9 + 224);
        bzero(*(v9 + 240), *v54[3]);
        v55 = (*v54)[2];
        if (v55)
        {
          v55(v54, v53);
        }
      }

      v49 = v185;
      v187 = v196[v185 - 1];
      v189 = *v11 + v187;
    }

    if (v19 != 92 || *(*v13 + 72) != 1)
    {
      if (!v19 || v49)
      {
        if (v19)
        {
          goto LABEL_66;
        }

        goto LABEL_68;
      }

      v186 = *v7;
      v62 = iconv_std_early_fallback(v13, &v189, *v8, &v186);
      if (!v62)
      {
        v188 = (v188 + 1);
        v63 = *(v9 + 232);
        if (v63)
        {
          memcpy(v63, *(v9 + 240), **(*(v9 + 224) + 24));
        }

        goto LABEL_72;
      }

      if (v62 == 2)
      {
        break;
      }

LABEL_256:
      v19 = v62;
      break;
    }

    v189 += v164;
    v56 = *(v9 + 232);
    if (v56)
    {
      v57 = *(v9 + 224);
      bzero(*(v9 + 232), *v57[3]);
      v58 = (*v57)[2];
      if (v58)
      {
        v58(v57, v56);
      }
    }

    v59 = *(v9 + 240);
    if (v59)
    {
      v60 = *(v9 + 224);
      bzero(*(v9 + 240), *v60[3]);
      v61 = (*v60)[2];
      if (v61)
      {
        v61(v60, v59);
      }
    }

    if (!v185)
    {
      v12 = v189;
      v16 += *v11 - v189;
      *a3 = v16;
      *v11 = v12;
      goto LABEL_7;
    }

LABEL_66:
    v64 = *(v9 + 232);
    if (v64)
    {
      memcpy(v64, *(v9 + 240), **(*(v9 + 224) + 24));
    }

LABEL_68:
    if (v187 == -2)
    {
      *v199.__mbstate8 = 0;
      if (!(*(**(v9 + 224) + 64))(*(v9 + 224), *(v9 + 232), 0, &v199) && (*v199.__mbstate8 - 1) < 2)
      {
        v176 = *v199.__mbstate8;
LABEL_72:
        v19 = 0;
        goto LABEL_230;
      }

LABEL_254:
      v19 = 22;
      break;
    }

    v163 = v16;
    HIDWORD(v185) = 0;
    v65 = v197[0];
    v66 = do_conv(v13, v168, v198, v197, &v185, &v188, 0, &v185 + 1);
    v67 = v66;
    if (!v66 || !v185)
    {
      if (!v66)
      {
        goto LABEL_92;
      }

      if (HIDWORD(v185) == 1)
      {
        v188 = (v188 + 1);
      }

      if (*(*v13 + 72) == 1)
      {
        v74 = *(v9 + 208);
        if (v74)
        {
          memcpy(v74, *(v9 + 216), **(*(v9 + 200) + 24));
        }

        v19 = 0;
        v186 = 0;
        goto LABEL_90;
      }

      v114 = *v7;
      v186 = *v7;
      if (HIDWORD(v185) == 1)
      {
        if (v185)
        {
          _citrus_iconv_std_iconv_convert_cold_3();
        }

        v66 = iconv_std_late_fallback(v13, v65, *v8, &v186);
        if (!v66)
        {
          v19 = 0;
LABEL_90:
          v189 = *v11 + v196[0];
          goto LABEL_91;
        }

        v16 = v163;
      }

      else
      {
        v16 = v163;
        if (HIDWORD(v185) == 2)
        {
          if (v189 == *v11)
          {
            _citrus_iconv_std_iconv_convert_cold_4();
          }

          v189 = *v11;
          v66 = iconv_std_early_fallback(v13, &v189, *v8, &v186);
          if (!v66)
          {
            v188 = (v188 + 1);
            restore_encoding_state(v9 + 224);
            goto LABEL_72;
          }
        }
      }

      v116 = *v13;
      if (*(*v13 + 88) != 1)
      {
        if (v66 == 2)
        {
          v19 = v67;
        }

        else
        {
          v19 = v66;
        }

        if (v19 == 2 && !v159)
        {
          if ((*(v116 + 72) & 1) != 0 || !*(v168 + 52))
          {
            v19 = 2;
          }

          else
          {
            v19 = (*(**(v9 + 200) + 48))(*(v9 + 200), *v8, v114, *(v168 + 48), *(v9 + 208), &v186, *(v116 + 80));
            if (!v19)
            {
              goto LABEL_230;
            }

            if (v185)
            {
              v157 = v196[v185 - 1];
              if (v157 <= 0)
              {
                _citrus_iconv_std_iconv_convert_cold_5();
              }

              *a3 = v16 - v157;
              *v11 += v157;
            }
          }
        }

        break;
      }

      init_encoding_state((v9 + 224));
LABEL_278:
      v19 = 92;
      break;
    }

    v189 = *v11 + v196[v185 - 1];
    v68 = *(v9 + 232);
    if (v68)
    {
      v69 = *(v9 + 224);
      bzero(*(v9 + 232), *v69[3]);
      v70 = (*v69)[2];
      if (v70)
      {
        v70(v69, v68);
      }
    }

    v71 = *(v9 + 240);
    if (v71)
    {
      v72 = *(v9 + 224);
      bzero(*(v9 + 240), *v72[3]);
      v73 = (*v72)[2];
      if (v73)
      {
        v73(v72, v71);
      }
    }

    if (v189 <= *v11)
    {
      _citrus_iconv_std_iconv_convert_cold_6();
    }

LABEL_92:
    v175 = *v8;
    v75 = *v7;
    v177 = v20;
    if ((v13[3] & 2) == 0)
    {
      v76 = *(*v13 + 80);
      v77 = *(v9 + 200);
      v78 = *(*v77 + 80);
      if (!v78 || (v19 = v78(v77, v175, v75), v19 == 102))
      {
        v199._mbstateL = 0;
        if (v185 < 1)
        {
          v20 = 0;
          v19 = 102;
        }

        else
        {
          v79 = 0;
          v20 = 0;
          v80 = v75;
          v81 = v175;
          v160 = v80;
          while (1)
          {
            v82 = *(v9 + 200);
            v83 = *(v9 + 208);
            if (v83)
            {
              memcpy(*(v9 + 216), v83, *v82[3]);
              v82 = *(v9 + 200);
              v84 = *(v9 + 208);
            }

            else
            {
              v84 = 0;
            }

            v19 = ((*v82)[4])(v82, v81, v80, v198[v79], v197[v79], v84, &v199, v76);
            if (v19)
            {
              break;
            }

            v20 += v199._mbstateL;
            v80 -= v199._mbstateL;
            if (!v80 && v79 < v185 - 1)
            {
              LODWORD(v79) = v79 + 1;
              break;
            }

            v81 += v199._mbstateL;
            if (++v79 >= v185)
            {
              v19 = 0;
              goto LABEL_211;
            }
          }

          LODWORD(v185) = v79;
LABEL_211:
          v13 = a1;
          v75 = v160;
        }

        v186 = v20;
        LODWORD(v20) = v177;
      }

      if (v19 != 92)
      {
        goto LABEL_219;
      }

      if (*(*v13 + 72))
      {
        goto LABEL_196;
      }

      if (v185)
      {
        goto LABEL_196;
      }

      v188 = (v188 + 1);
      v125 = iconv_std_late_fallback(v13, v197[0], v175, &v186);
      if (v125 == 2)
      {
        goto LABEL_196;
      }

      v19 = v125;
      if (v125)
      {
        goto LABEL_195;
      }

      v189 = *v11 + v196[0];
      v126 = v185;
      goto LABEL_221;
    }

    v193 = 0u;
    v194 = 0u;
    v86 = v13[1];
    v85 = v13[2];
    v87 = *v13;
    v88 = *(*v13 + 8);
    memset(&v199, 0, sizeof(v199));
    v89 = *(*(*v88 + 24) + 16);
    if (v89 <= 1)
    {
      v90 = 1;
    }

    else
    {
      v90 = v89;
    }

    if (v89 >= 6)
    {
      _citrus_iconv_std_iconv_convert_cold_9();
    }

    v191 = 0;
    v172 = v185;
    if (v185 <= 0)
    {
      v19 = 0;
      LODWORD(v185) = 0;
      v8 = a4;
      v7 = a5;
      v11 = a2;
      goto LABEL_195;
    }

    v158 = v85;
    v91 = 0;
    v192 = 0;
    v166 = v87;
    v182 = v86 + 64;
    v184 = 0;
    v161 = v75;
    v92 = v175;
    v174 = v9;
LABEL_111:
    v178 = v75;
    v190 = 1;
    v93 = &v198[v91];
    v180 = v91;
    v94 = &v197[v91];
    v95 = *(v87 + 80);
    v96 = *(v86 + 200);
    v97 = *(*v96 + 80);
    if (!v97)
    {
      v195 = 0;
      goto LABEL_116;
    }

    v98 = v97(v96, v182, 6);
    LODWORD(v99) = v190;
    if (v98 == 102)
    {
      v195 = 0;
      if (v190 < 1)
      {
        v100 = 0;
        v19 = 102;
        v13 = a1;
        goto LABEL_129;
      }

LABEL_116:
      v99 = 0;
      v100 = 0;
      v101 = v86 + 64;
      v102 = 6;
      while (1)
      {
        v103 = *(v86 + 200);
        v104 = *(v86 + 208);
        if (v104)
        {
          memcpy(*(v86 + 216), v104, *v103[3]);
          v103 = *(v86 + 200);
          v105 = *(v86 + 208);
        }

        else
        {
          v105 = 0;
        }

        v19 = ((*v103)[4])(v103, v101, v102, v93[v99], v94[v99], v105, &v195, v95);
        if (v19)
        {
          break;
        }

        v100 += v195;
        v102 -= v195;
        if (!v102 && v99 < v190 - 1)
        {
          LODWORD(v99) = v99 + 1;
          break;
        }

        v101 += v195;
        if (++v99 >= v190)
        {
          v19 = 0;
          LODWORD(v99) = v190;
          goto LABEL_128;
        }
      }

      v190 = v99;
LABEL_128:
      v13 = a1;
      LODWORD(v20) = v177;
      v92 = v175;
LABEL_129:
      v91 = v180;
      v75 = v178;
      v191 = v100;
      v87 = v166;
    }

    else
    {
      v19 = v98;
      v13 = a1;
      v91 = v180;
      v75 = v178;
    }

    if (v19)
    {
      v106 = v99 == 0;
    }

    else
    {
      v106 = 0;
    }

    if (v106)
    {
      v9 = v174;
LABEL_192:
      LODWORD(v185) = v91;
      v8 = a4;
      v7 = a5;
      v11 = a2;
      if (v91 >= 1)
      {
        v186 = 4 * v184;
      }

      v75 = v161;
LABEL_195:
      if (v19 == 92)
      {
LABEL_196:
        if (*(v168 + 52))
        {
          v117 = v75;
          v199._mbstateL = 0;
          v118 = *(v9 + 208);
          if (v118)
          {
            v119 = *v162;
            bzero(*(v9 + 208), **(*v162 + 24));
            v120 = *(*v119 + 16);
            if (v120)
            {
              v120(v119, v118);
            }
          }

          v121 = *(v9 + 216);
          if (v121)
          {
            v122 = *v162;
            bzero(*(v9 + 216), **(*v162 + 24));
            v123 = *(*v122 + 16);
            if (v123)
            {
              v123(v122, v121);
            }
          }

          v199._mbstateL = 0;
          v124 = (*(**(v9 + 200) + 48))(*(v9 + 200), v175 + v186, v117 - v186, *(v168 + 48), *(v9 + 208), &v199, *(*v13 + 80));
          if (v124)
          {
            v19 = 92;
            if (v124 != 7 && v124 != 92)
            {
              _citrus_iconv_std_iconv_convert_cold_10();
            }
          }

          else
          {
            v19 = 0;
            LODWORD(v185) = v185 + 1;
            v186 += v199._mbstateL;
          }
        }

        else
        {
          v19 = 92;
        }
      }

LABEL_219:
      v126 = v185;
      if (v19 && !v185)
      {
        break;
      }

LABEL_221:
      if (v126 < v20)
      {
        v189 = *v11 + v196[v126 - 1];
        v127 = *(v9 + 232);
        if (v127)
        {
          v128 = *(v9 + 224);
          bzero(*(v9 + 232), *v128[3]);
          v129 = (*v128)[2];
          if (v129)
          {
            v129(v128, v127);
          }
        }

        v130 = *(v9 + 240);
        if (v130)
        {
          v131 = *(v9 + 224);
          bzero(*(v9 + 240), *v131[3]);
          v132 = (*v131)[2];
          if (v132)
          {
            v132(v131, v130);
          }
        }
      }

      if (v189 <= *v11)
      {
        _citrus_iconv_std_iconv_convert_cold_11();
      }

      v16 = *a3;
      goto LABEL_230;
    }

    v107 = v191;
    v9 = v174;
    if (!v191 || !v75)
    {
      v109 = v191;
LABEL_155:
      v13 = a1;
      LODWORD(v20) = v177;
      v91 = v180;
      if (v109 && !v75)
      {
        v19 = 7;
        goto LABEL_192;
      }

LABEL_164:
      v91 += v190;
      if (v91 >= v172)
      {
        goto LABEL_192;
      }

      goto LABEL_111;
    }

    v108 = 0;
    v109 = v191;
    while (2)
    {
      if (v75 < 4)
      {
        goto LABEL_162;
      }

      v110 = mbrtowc(&v192, (v182 + v108), v109, &v199);
      if (v110 != -1)
      {
        if (v110 == -2)
        {
          _citrus_iconv_std_iconv_convert_cold_7();
        }

        v111 = v191;
        if (v110 > v191)
        {
          _citrus_iconv_std_iconv_convert_cold_8();
        }

LABEL_144:
        if (v110 <= v90)
        {
          v112 = v90;
        }

        else
        {
          v112 = v110;
        }

        if (v112 >= v111)
        {
          v112 = v111;
        }

        v109 = v111 - v112;
        v191 = v111 - v112;
        if (v110)
        {
          *(v92 + 4 * v184) = v192;
          v75 -= 4;
          ++v184;
        }

        if (!v109)
        {
          goto LABEL_155;
        }

        v108 += v112;
        if (!v75)
        {
          goto LABEL_155;
        }

        continue;
      }

      break;
    }

    if (*(v87 + 72) == 1)
    {
      v111 = v191;
      v110 = v90;
      goto LABEL_144;
    }

    if (!v158)
    {
      v19 = 92;
LABEL_162:
      v13 = a1;
      LODWORD(v20) = v177;
LABEL_163:
      v91 = v180;
      goto LABEL_164;
    }

    v113 = *(v158 + 16);
    v13 = a1;
    LODWORD(v20) = v177;
    if (!v113)
    {
      v19 = 92;
      goto LABEL_163;
    }

    v194 = 0uLL;
    *&v193 = v92;
    *(&v193 + 1) = v178;
    v113(v182, v107, _citrus_iconv_std_write_wc, &v193, *(v158 + 32));
    v19 = DWORD2(v194);
    if (!DWORD2(v194))
    {
      v186 = v193 - v92;
    }

    v188 = (v188 + 1);
    v8 = a4;
    v7 = a5;
    v11 = a2;
LABEL_91:
    v16 = v163;
LABEL_230:
    v12 = v189;
    v133 = v189 - *v11;
    v134 = v16 >= v133;
    v16 -= v133;
    if (!v134)
    {
      _citrus_iconv_std_iconv_convert_cold_13();
    }

    v135 = v186;
    v136 = *v7 - v186;
    if (*v7 < v186)
    {
      _citrus_iconv_std_iconv_convert_cold_12();
    }

    *a3 = v16;
    *v11 = v12;
    *v7 = v136;
    *v8 += v135;
  }

  while (!v19);
  v148 = *(v9 + 232);
  if (v148)
  {
    memcpy(v148, *(v9 + 240), **(*(v9 + 224) + 24));
  }

  v149 = *(v9 + 208);
  if (v149)
  {
    memcpy(v149, *(v9 + 216), **(*(v9 + 200) + 24));
  }

LABEL_261:
  v150 = v188;
LABEL_272:
  *a7 = v150;
  return v19;
}

uint64_t mbtocsx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unint64_t *a6, unint64_t a7, void *a8, uint64_t a9)
{
  v14 = a3;
  v15 = a2;
  v17 = *a1;
  v18 = (*v17)[9];
  if (!v18 || (result = v18(v17, a2, a3, a4), result == 102))
  {
    *a8 = 0;
    v29 = 0;
    if (*a5 < 1 || a7 == 0)
    {
      LODWORD(v21) = 0;
      result = 102;
    }

    else
    {
      v28 = a4;
      v21 = 0;
      v22 = *a6;
      v23 = *a6;
      while (1)
      {
        v24 = *a1;
        v25 = *(a1 + 8);
        if (v25)
        {
          memcpy(*(a1 + 16), v25, *v24[3]);
          v26 = *a6;
          v24 = *a1;
          v27 = *(a1 + 8);
        }

        else
        {
          v27 = 0;
          v26 = v23;
        }

        result = ((*v24)[3])(v24, v15, v14, a6, a7, v27, &v29, a9);
        if (result)
        {
          break;
        }

        if (v29 == -2)
        {
          result = 0;
          *a8 = -2;
          break;
        }

        *a8 += v29;
        v23 = *a6;
        if (*a6 < v26)
        {
          mbtocsx_cold_1();
        }

        result = 0;
        *(v28 + 2 * v21++) = v23 - v22;
        if (v21 < *a5)
        {
          v14 += 4;
          v15 += 4;
          a7 = a7 + v26 - v23;
          if (a7)
          {
            continue;
          }
        }

        break;
      }
    }

    if (v21 < *a5)
    {
      *a5 = v21;
    }
  }

  return result;
}

void *save_encoding_state(void *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    return memcpy(*(result + 2), v1, **(*result + 24));
  }

  return result;
}

uint64_t do_conv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6, int a7, int *a8)
{
  v12 = a3;
  v13 = a2;
  v14 = *a5;
  v43 = *a5;
  v44 = 0;
  if (*(a2 + 16) && (a7 & 1) == 0)
  {
    if (v14 >= 1)
    {
      v15 = 0;
      while (*(a3 + 4 * v15) == *(a2 + 24))
      {
        if (v14 == ++v15)
        {
          goto LABEL_53;
        }
      }

      *a5 = v15;
      v43 = v15;
      if (!v15)
      {
        return 2;
      }

      LODWORD(v14) = v15;
LABEL_53:
      if (v14 >= 1)
      {
        v29 = 0;
        v30 = 0;
        while (1)
        {
          result = do_conv_map_one(*(v13 + 16), (v12 + 4 * v30), (a4 + 4 * v30), &v43, &v44, a8);
          if (result != 35)
          {
            break;
          }

          if (v43 <= 0)
          {
            do_conv_cold_1();
          }

          if ((*(*a1 + 73) & 1) == 0)
          {
            *a5 = v43 + v29 - 1;
            return 2;
          }

          v29 += v43;
          *(a4 - 4 + 4 * v29) = v44;
          v31 = *a5;
          v43 = *a5 - v29;
          if (a6)
          {
            ++*a6;
          }

          v30 += v29;
          if (v31 <= v29)
          {
            return 2;
          }
        }

        if (!result)
        {
          if (v43 + v29 != *a5)
          {
            do_conv_cold_2();
          }

          return 0;
        }

        if (v43 + v29 >= *a5)
        {
          do_conv_cold_3();
        }

        *a5 = v43 + v29;
        if (result != 2)
        {
          return result;
        }
      }
    }

    return 2;
  }

  if (!v14)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_10:
  while (2)
  {
    v38 = v17;
    if (a7)
    {
      v40 = 0;
      v19 = v14;
    }

    else
    {
      v40 = *(v12 + 4 * v18);
      v19 = 0;
      if (v14 >= 1)
      {
        v20 = v18;
        do
        {
          if (*(v12 + 4 * v20) != *(v12 + 4 * v18))
          {
            break;
          }

          ++v19;
          ++v20;
        }

        while (v20 < v18 + v14);
      }
    }

    v21 = *(v13 + 32);
    if (!v21)
    {
LABEL_68:
      *a5 = v38;
      return 2;
    }

    v22 = 0;
    v23 = (a3 + 4 * v18);
    v24 = v40;
    v35 = v18;
    v25 = (a4 + 4 * v18);
    while ((a7 & 1) == 0 && *(v21 + 8) != *v23)
    {
LABEL_41:
      v21 = *v21;
      if (!v21)
      {
        if ((v22 & 1) != 0 && *(*a1 + 73) == 1)
        {
          *v25 = v44;
          *v23 = v40;
          if (a6)
          {
            ++*a6;
          }

          v17 = v38 + 1;
          v18 = v35 + 1;
          LODWORD(v14) = v14 - 1;
          v12 = a3;
          v13 = a2;
          if (!v14)
          {
            return 0;
          }

          goto LABEL_10;
        }

        goto LABEL_68;
      }
    }

    v26 = v21[2];
    if (!v26)
    {
LABEL_36:
      if (v22)
      {
        v22 = 1;
      }

      else
      {
        if (!a7 || v16)
        {
          goto LABEL_68;
        }

        v22 = 0;
      }

      goto LABEL_41;
    }

    while (1)
    {
      if (a7)
      {
        if ((*(v26[2] + 64) & 1) == 0)
        {
          goto LABEL_35;
        }

        v24 = *(v21 + 8);
      }

      v42 = v19;
      result = do_conv_map_one(v26, v23, v25, &v42, &v44, a8);
      if (result != 35 && (result & 0x7D) != 0)
      {
        *a5 = v42 + v38;
        return result;
      }

      v28 = v42;
      if (result)
      {
        if (result == 35)
        {
          if (v42 <= 0)
          {
            do_conv_cold_4();
          }

          v28 = --v42;
          v22 = 1;
          v40 = v24;
        }

        else if (v42 >= v19)
        {
          do_conv_cold_5();
        }
      }

      else
      {
        if (v42 != v19)
        {
          do_conv_cold_6();
        }

        v22 = 0;
        v28 = v19;
      }

      ++v16;
      if (v28 >= 1)
      {
        break;
      }

LABEL_35:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    v17 = v28 + v38;
    v18 = v28 + v35;
    LODWORD(v14) = v14 - v28;
    v12 = a3;
    v13 = a2;
    if (v14)
    {
      continue;
    }

    return 0;
  }
}

uint64_t do_conv_map_one(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4, _DWORD *a5, int *a6)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(a1 + 40) == 1)
  {
    if (*a4 >= 1)
    {
      v9 = 0;
      v10 = *(a1 + 24);
      do
      {
        a2[v9++] = v10;
      }

      while (v9 < *a4);
    }

    return 0;
  }

  else
  {
    v14 = a3;
    v22[0] = v23;
    v22[1] = a3;
    v22[2] = a4;
    v22[3] = 0;
    v15 = (*(**(a1 + 16) + 16))(*(a1 + 16), v22);
    v16 = v15 & 0x9FFFFFFF;
    LODWORD(v17) = *a4;
    if ((v15 & 0x9FFFFFFF) == 6)
    {
      LODWORD(v17) = v17 - 1;
      *a5 = v23[v17];
      v23[v17] = v14[v17];
    }

    if (v17 >= 1)
    {
      v17 = v17;
      v18 = v23;
      v19 = a2;
      do
      {
        if (a2)
        {
          *v19 = *(a1 + 24);
        }

        v20 = *v18++;
        *v14++ = v20;
        ++v19;
        --v17;
      }

      while (v17);
    }

    if ((v15 & 0x9FFFFFFD) != 0 && v16 != 3)
    {
      v21 = (v15 >> 29) & 3;
      if (!v21)
      {
        do_conv_map_one_cold_2();
      }

      if ((((v15 >> 29) - 1) & v21) != 0)
      {
        do_conv_map_one_cold_1();
      }

      if (a6)
      {
        *a6 = v21;
      }
    }

    if (v16 > 6)
    {
      return 2;
    }

    else
    {
      return dword_296031244[v16];
    }
  }
}

uint64_t _citrus_iconv_std_iconv_init_shared(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  v4 = malloc_type_malloc(0x38uLL, 0x10A00402C342355uLL);
  if (!v4)
  {
    return *__error();
  }

  v5 = v4;
  v6 = _citrus_esdb_open();
  if (v6)
  {
    goto LABEL_11;
  }

  v6 = _citrus_esdb_open();
  if (v6)
  {
LABEL_10:
    _citrus_esdb_close();
LABEL_11:
    free(v5);
    return v6;
  }

  v6 = _citrus_stdenc_open();
  if (v6)
  {
LABEL_9:
    _citrus_esdb_close();
    goto LABEL_10;
  }

  v6 = _citrus_stdenc_open();
  if (v6)
  {
LABEL_8:
    _citrus_stdenc_close();
    goto LABEL_9;
  }

  v7 = vrev64_s32(*(&v18 + 8));
  v5[4] = 0;
  v8 = v5 + 4;
  v5[6] = v7;
  v5[2] = 0;
  v5[3] = 0xFFFFFFFFLL;
  v5[5] = &v5[4];
  v9 = open_srcs(&v5[4], v16, v17, &v15, &v5[3] + 1);
  if (v9)
  {
    v6 = v9;
    _citrus_stdenc_close();
    goto LABEL_8;
  }

  if (v15 == 1)
  {
    v15 = 0;
    v11 = *v8;
    v12 = *(*v8 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = *(*v8 + 16);
      do
      {
        ++v13;
        v14 = *v14;
      }

      while (v14);
      v15 = v13;
      if (v13 == 1)
      {
        v5[2] = v12;
        v5[3].i32[0] = *(*&v11 + 32);
      }
    }
  }

  _citrus_esdb_close();
  _citrus_esdb_close();
  v6 = 0;
  *(a1 + 8) = v5;
  return v6;
}

void _citrus_iconv_std_iconv_uninit_shared(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _citrus_stdenc_close();
    _citrus_stdenc_close();
    close_srcs(v1 + 4);

    free(v1);
  }
}

uint64_t _citrus_iconv_std_iconv_getops(uint64_t a1)
{
  v1 = _citrus_iconv_std_iconv_ops;
  v2 = *&off_2A1A8F2B8;
  *(a1 + 32) = off_2A1A8F2C8;
  *a1 = v1;
  *(a1 + 16) = v2;
  return 0;
}

uint64_t open_srcs(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v10 = malloc_type_malloc(0x28uLL, 0x10A0040954427F6uLL);
  if (!v10)
  {
    return *__error();
  }

  v11 = v10;
  v24 = a4;
  v10[2] = 0;
  v10[3] = v10 + 2;
  if (*(a2 + 24) < 1)
  {
    v26 = 0;
LABEL_31:
    free(v11);
    if (v24 && v26)
    {
      *v24 = v26;
    }

    return 2 * (v26 == 0);
  }

  v12 = 0;
  v26 = 0;
  v25 = a1;
  while (1)
  {
    v13 = malloc_type_malloc(0x30uLL, 0x10A00404BBE17DFuLL);
    if (!v13)
    {
      v17 = *__error();
      if (v17)
      {
        goto LABEL_37;
      }

      goto LABEL_22;
    }

    v14 = v13;
    if (*(a3 + 24) >= 1)
    {
      break;
    }

LABEL_20:
    free(v14);
    a1 = v25;
LABEL_22:
    if (v11[2])
    {
      *(v11 + 8) = *(*(a2 + 32) + 16 * v12);
      v21 = *(a1 + 8);
      *v11 = 0;
      v11[1] = v21;
      *v21 = v11;
      *(a1 + 8) = v11;
      v22 = malloc_type_malloc(0x28uLL, 0x10A0040954427F6uLL);
      v11 = v22;
      if (!v22)
      {
        v17 = *__error();
        goto LABEL_37;
      }

      ++v26;
      v22[2] = 0;
      v22[3] = v22 + 2;
    }

    if (++v12 >= *(a2 + 24))
    {
      goto LABEL_31;
    }
  }

  v15 = 0;
  while (1)
  {
    v16 = _citrus_csmapper_open();
    if (v16)
    {
      v17 = v16;
      if (v16 != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_19;
    }

    if (*(MEMORY[0x18] + 8) != 1 || *(MEMORY[0x18] + 16) != 1 || *MEMORY[0x18])
    {
      _citrus_mapper_close();
      v17 = 22;
LABEL_36:
      close_dsts(v11 + 2);
      free(v14);
      a1 = v25;
      goto LABEL_37;
    }

    v14[2] = 0;
    *(v14 + 6) = *(*(a3 + 32) + 16 * v15);
    v14[4] = 0;
    *(v14 + 40) = 0;
    *a5 |= MEMORY[0x40];
    v18 = v11 + 2;
    while (1)
    {
      v18 = *v18;
      if (!v18)
      {
        break;
      }

      if (v18[4])
      {
        v20 = v18 + 1;
        v19 = v18[1];
        *v14 = v18;
        v14[1] = v19;
        goto LABEL_18;
      }
    }

    v20 = v11 + 3;
    v19 = v11[3];
    *v14 = 0;
    v14[1] = v19;
LABEL_18:
    *v19 = v14;
    *v20 = v14;
    v14 = malloc_type_malloc(0x30uLL, 0x10A00404BBE17DFuLL);
    if (!v14)
    {
      break;
    }

LABEL_19:
    if (++v15 >= *(a3 + 24))
    {
      goto LABEL_20;
    }
  }

  v17 = *__error();
  close_dsts(v11 + 2);
  a1 = v25;
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_37:
  free(v11);
  close_srcs(a1);
  return v17;
}

void close_srcs(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    close_dsts(i + 2);
    free(i);
  }
}

void close_dsts(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    _citrus_mapper_close();
    free(i);
  }
}

void init_encoding_state(size_t ***a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    bzero(a1[1], *(*a1)[3]);
    v4 = (*v3)[2];
    if (v4)
    {
      v4(v3, v2);
    }
  }

  v5 = a1[2];
  if (v5)
  {
    v6 = *a1;
    bzero(v5, *v6[3]);
    v7 = (*v6)[2];
    if (v7)
    {

      v7(v6, v5);
    }
  }
}

uint64_t iconv_std_early_fallback(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 2;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 2;
  }

  v9 = *a4;
  v11[0] = a3;
  v11[1] = v9;
  v11[2] = a1;
  v12 = 0;
  v5(*a2, 1, _citrus_iconv_std_write_uc, v11, *(v4 + 32));
  result = v12;
  if (!v12)
  {
    ++*a2;
    *a4 = v11[0] - a3;
  }

  return result;
}

void *restore_encoding_state(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return memcpy(result, *(a1 + 16), **(*a1 + 24));
  }

  return result;
}

uint64_t iconv_std_late_fallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 2;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return 2;
  }

  v8 = *a4;
  v10[0] = a3;
  v10[1] = v8;
  v10[2] = a1;
  v11 = 0;
  v5(a2, _citrus_iconv_std_write_mb, v10, *(v4 + 32));
  result = v11;
  if (!v11)
  {
    *a4 = v10[0] - a3;
  }

  return result;
}

void *_citrus_iconv_std_write_mb(void *__src, size_t __n, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    if (*(a3 + 8) >= __n)
    {
      __src = memcpy(*a3, __src, __n);
      v5 = *(a3 + 8) - __n;
      *a3 += __n;
      *(a3 + 8) = v5;
    }

    else
    {
      *(a3 + 24) = 7;
    }
  }

  return __src;
}

uint64_t _citrus_iconv_std_write_uc(uint64_t result, unint64_t a2, void *a3)
{
  if (!*(a3 + 6))
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = a2;
    if (a2 >> 31)
    {
      *(a3 + 6) = 7;
      return result;
    }

    v7 = result;
    v8 = a3[2];
    v9 = v8[1];
    v10 = *(*v8 + 8);
    if (v10[7] != 2)
    {
      v13 = a2;
      result = do_conv(v8, v10, 0, result, &v13, 0, 1, 0);
      if (result)
      {
        goto LABEL_6;
      }

      v6 = v13;
    }

    if (v6)
    {
      while (1)
      {
        v14[0] = 0;
        result = (*(**(v9 + 200) + 48))(*(v9 + 200), *a3, a3[1], *v7, *(v9 + 208), v14, *(*v8 + 80));
        if (result != 92)
        {
          goto LABEL_14;
        }

        if ((*(*v8 + 72) & 1) == 0)
        {
          break;
        }

LABEL_16:
        ++v7;
        if (!--v6)
        {
          return result;
        }
      }

      v11 = *a3;
      v14[0] = a3[1];
      result = iconv_std_late_fallback(v8, *v7, v11, v14);
      if (result == 2)
      {
        if (!v10[13])
        {
          result = 2;
LABEL_6:
          *(a3 + 6) = result;
          return result;
        }

        result = (*(**(v9 + 200) + 48))(*(v9 + 200), *a3, a3[1], v10[12], *(v9 + 208), v14, *(*v8 + 80));
      }

LABEL_14:
      if (result)
      {
        goto LABEL_6;
      }

      v12 = a3[1] - v14[0];
      *a3 += v14[0];
      a3[1] = v12;
      goto LABEL_16;
    }
  }

  return result;
}

int *_citrus_iconv_std_write_wc(int *result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    v3 = *(a3 + 8);
    if (v3 >= 4 * a2)
    {
      if (a2)
      {
        v4 = 4 * a2;
        v5 = *a3;
        do
        {
          v6 = *result++;
          *v5++ = v6;
          --a2;
        }

        while (a2);
        *a3 = v5;
        *(a3 + 8) = v3 - v4;
      }
    }

    else
    {
      *(a3 + 24) = 7;
    }
  }

  return result;
}