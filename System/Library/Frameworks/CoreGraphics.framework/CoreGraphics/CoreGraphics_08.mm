uint64_t ripl_Combine(uint64_t a1, uint64_t a2, int a3)
{
  v178 = 0uLL;
  *v177 = 0;
  v6 = CGSBoundsIntersection((a1 + 12), (a2 + 12), &v178);
  if ((v6 & 1) == 0)
  {
    if (a3 || !*(a1 + 20) && !*(a1 + 24))
    {
      return 0;
    }

    goto LABEL_155;
  }

  v10 = *(&v178 + 1);
  v11 = DWORD2(v178);
  v176 = DWORD2(v178);
  v12 = HIDWORD(v178);
  v175 = HIDWORD(v178);
  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = *(a2 + 72);
    if (v14)
    {
LABEL_4:
      v15 = *(a2 + 12) - *(a1 + 12);
      v17 = *(a1 + 20);
      v16 = *(a1 + 24);
      v18 = v16 + *(a1 + 16) - (*(a2 + 16) + *(a2 + 24));
      v177[0] = v18;
      v177[1] = v15;
      if (a3 >= 0)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

      shape_enum_clip_alloc(v6, v7, v14, 1, 1, v19, -v15, -v18, v17, v16);
      if (!v20)
      {
        goto LABEL_155;
      }

      v21 = v20;
      if (!shape_enum_clip_next(v20, &v177[1], v177, &v176, &v175))
      {
LABEL_13:
        free(v21);
        goto LABEL_14;
      }

      if (a3 < 0 || v176 != *(a1 + 20) || v175 != *(a1 + 24))
      {
        do
        {
          CGBlt_fillBytes(v176, v175, 0, (*(a1 + 56) + v177[1] + (*(a1 + 48) * v177[0])), *(a1 + 48));
        }

        while (shape_enum_clip_next(v21, &v177[1], v177, &v176, &v175));
        goto LABEL_13;
      }

LABEL_153:
      v134 = v21;
LABEL_154:
      free(v134);
      goto LABEL_155;
    }

    v42 = *(a2 + 64);
    if (v42)
    {
      goto LABEL_38;
    }

    v78 = *(a2 + 56);
    if (v78)
    {
      v79 = HIDWORD(v178);
      goto LABEL_87;
    }

    if (*(a1 + 20) != *(&v178 + 1))
    {
      v127 = v178 - *(a1 + 12);
      v88 = *(a1 + 16) + *(a1 + 24) - DWORD1(v178) - HIDWORD(v178);
      v177[0] = v88;
      v177[1] = v127;
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      v98 = *(a1 + 48);
      v99 = (v13 + v127 + (v98 * v88));
      v93 = DWORD2(v178);
      v95 = HIDWORD(v178);
      goto LABEL_111;
    }

LABEL_140:
    if ((a3 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_155;
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    v25 = *(a2 + 72);
    if (v25)
    {
      v174 = 0;
      goto LABEL_25;
    }

    v55 = *(a2 + 64);
    if (v55)
    {
LABEL_65:
      v66 = *(a2 + 12);
      v67 = *(a2 + 16);
      if (v178 == v66)
      {
        v68 = v55 & 0xFF000000;
      }

      else
      {
        v68 = 0;
      }

      v69 = v55;
      if (DWORD1(v178) != v67)
      {
        v69 = 0;
      }

      if (v178 + DWORD2(v178) == *(a2 + 20) + v66)
      {
        v70 = v55 & 0xFF00;
      }

      else
      {
        v70 = 0;
      }

      v71 = DWORD1(v178) + HIDWORD(v178);
      if (DWORD1(v178) + HIDWORD(v178) == *(a2 + 24) + v67)
      {
        v72 = v55 & 0xFF0000;
      }

      else
      {
        v72 = 0;
      }

      v73 = v69 | v68 | v70 | v72;
      if (!v73)
      {
        return 1;
      }

      if (a3 < 0)
      {
        v173 = 0;
        v128 = v178 - *(a1 + 12);
        v129 = *(a1 + 24);
        v130 = *(a1 + 16) - v71 + v129;
        v177[0] = v130;
        v177[1] = v128;
        if (v68)
        {
          v177[1] = ++v128;
          LODWORD(v11) = DWORD2(v178) - 1;
        }

        if (v72)
        {
          v177[0] = ++v130;
          v12 = HIDWORD(v178) - 1;
        }

        shape_combine(0xFFFFFFFFLL, 0, 0, *(a1 + 20), v129, v24, v128, v130, v11 - (v70 != 0) + v128, v12 - (v69 != 0) + v130, 0);
        if (!v131)
        {
          goto LABEL_155;
        }

        v21 = v131;
        v132 = shape_bounds(v131, &v177[1], v177, &v173 + 1, &v173);
        if (v132)
        {
          v34 = v132;
          v35 = v173;
          v133 = *(a1 + 24) - v173 + *(a1 + 16);
          v37 = v177[1];
          *(a1 + 12) += v177[1];
          *(a1 + 16) = v133;
          v38 = HIDWORD(v173);
LABEL_28:
          v39 = v177[0];
          v40 = v35 - v177[0];
          *(a1 + 20) = v38 - v37;
          *(a1 + 24) = v40;
          v41 = *(a1 + 72);
          if (v41 && v41 != &the_empty_shape)
          {
            free(v41);
          }

          if (v34 == 9)
          {
            if (v21 == &the_empty_shape)
            {
              goto LABEL_17;
            }

            v22 = v21;
LABEL_16:
            free(v22);
LABEL_17:
            *(a1 + 72) = 0;
LABEL_18:
            *(a1 + 64) = 0;
            return 1;
          }

          if (v37 | v39)
          {
            *(a1 + 72) = shape_offset(v41, v21, -v37, -v39);
            *(a1 + 64) = 4 * v34;
            if (v21 != &the_empty_shape)
            {
              free(v21);
            }

            return 1;
          }

          *(a1 + 72) = v21;
          v126 = 4 * v34;
LABEL_200:
          *(a1 + 64) = v126;
          return 1;
        }

LABEL_152:
        if (v21 == &the_empty_shape)
        {
          goto LABEL_155;
        }

        goto LABEL_153;
      }

      v173 = 0;
      v74 = v178 - *(a1 + 12);
      v177[0] = *(a1 + 16) - v71 + *(a1 + 24);
      v177[1] = v74;
      shape_enum_clip_alloc(v6, v7, v24, 1, 1, 1, v74, v177[0], SDWORD2(v178), SHIDWORD(v178));
      if (!v75)
      {
        goto LABEL_155;
      }

      v76 = v75;
      if (shape_enum_clip_next(v75, &v177[1], v177, &v173 + 1, &v173))
      {
        if (v173 == __PAIR64__(v11, v12))
        {
          free(v76);
          v77 = *(a1 + 72);
          if (v77 && v77 != &the_empty_shape)
          {
            free(v77);
          }

          *(a1 + 72) = 0;
          *(a1 + 12) = v178;
          *(a1 + 20) = v11;
          *(a1 + 24) = v12;
LABEL_234:
          *(a1 + 64) = v73;
          return 1;
        }

        v158 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if ((v158 * v12 + 4) >> 31)
        {
          v159 = 0xFFFFFFFFLL;
        }

        else
        {
          v159 = (v158 * v12 + 19) & 0xFFFFFFF0;
        }

        if ((v159 & 0x80000000) == 0)
        {
          v160 = malloc_type_calloc(1uLL, v159, 0x533C4728uLL);
          *(a1 + 56) = v160;
          if (v160)
          {
            *(a1 + 48) = v158;
            v161 = *(a1 + 28) & 0xFFFFFFFD;
            *(a1 + 24) = v12;
            *(a1 + 28) = v161;
            *(a1 + 12) = v178;
            *(a1 + 20) = v11;
            do
            {
              CGBlt_fillBytes(SHIDWORD(v173), v173, -1, (*(a1 + 56) + v177[0] * v158 + v177[1]), (v11 + 3) & 0xFFFFFFFC);
            }

            while (shape_enum_clip_next(v76, &v177[1], v177, &v173 + 1, &v173));
            CGSCombineMask(*(a1 + 56), (v11 + 3) & 0xFFFFFFFC, *(a1 + 56), (v11 + 3) & 0xFFFFFFFC, v11, v12, v73);
            free(v76);
            v162 = *(a1 + 72);
            if (v162 && v162 != &the_empty_shape)
            {
              free(v162);
            }

            v73 = 0;
            *(a1 + 72) = 0;
            goto LABEL_234;
          }
        }
      }

      v134 = v76;
      goto LABEL_154;
    }

    if (*(a2 + 56))
    {
      v104 = HIDWORD(v178);
      goto LABEL_126;
    }

    if (*(a1 + 20) == *(&v178 + 1))
    {
      goto LABEL_140;
    }

LABEL_244:
    v25 = 0;
LABEL_25:
    v26 = *(a2 + 16);
    v27 = *(a2 + 12) - *(a1 + 12);
    v28 = *(a1 + 20);
    v29 = *(a1 + 24);
    v30 = v29 + *(a1 + 16);
    v31 = *(a2 + 20);
    v177[0] = v30 - (v26 + *(a2 + 24));
    v177[1] = v27;
    shape_combine((a3 >> 31), 0, 0, v28, v29, v24, v27, v177[0], v31 + v27, v30 - v26, v25);
    if (!v32)
    {
      goto LABEL_155;
    }

    v21 = v32;
    v33 = shape_bounds(v32, &v177[1], v177, &v174 + 1, &v174);
    if (v33)
    {
      v34 = v33;
      v35 = v174;
      v36 = *(a1 + 24) - v174 + *(a1 + 16);
      v37 = v177[1];
      *(a1 + 12) += v177[1];
      *(a1 + 16) = v36;
      v38 = HIDWORD(v174);
      goto LABEL_28;
    }

    goto LABEL_152;
  }

  v55 = *(a1 + 64);
  v25 = *(a2 + 72);
  if (!v55)
  {
    if (v25)
    {
      goto LABEL_25;
    }

    v55 = *(a2 + 64);
    if (!v55)
    {
      if (*(a2 + 56))
      {
        shape_alloc_bounds(v6, 0, 0, *(a1 + 20), *(a1 + 24));
        v24 = v6;
        v104 = HIDWORD(v178);
LABEL_126:
        v105 = v178;
        v106 = v178 - *(a1 + 12);
        v107 = v104 + DWORD1(v178);
        v171 = *(a1 + 24) + *(a1 + 16) - (v104 + DWORD1(v178));
        v172 = v106;
        v108 = *(a2 + 12);
        v167 = *(a2 + 24);
        v169 = *(a2 + 16);
        shape_enum_clip_alloc(v6, v7, v24, 1, 1, 0, v106, v171, v11, v12);
        if (v109)
        {
          v110 = v109;
          v166 = v108;
          v111 = (v11 + 3) & 0xFFFFFFFC;
          if ((v111 * v12 + 4) >> 31)
          {
            v112 = 0xFFFFFFFFLL;
          }

          else
          {
            v112 = (v111 * v12 + 19) & 0xFFFFFFF0;
          }

          if ((v112 & 0x80000000) == 0)
          {
            v113 = malloc_type_malloc(v112, 0x7677FB6DuLL);
            *(a1 + 56) = v113;
            if (v113)
            {
              v114 = v105 - v166;
              v115 = v169 - v107 + v167;
              *(a1 + 48) = v111;
              v116 = *(a1 + 28) & 0xFFFFFFFD;
              *(a1 + 24) = v12;
              *(a1 + 28) = v116;
              *(a1 + 12) = v178;
              *(a1 + 20) = v11;
              while (1)
              {
                v117 = shape_enum_clip_next(v110, &v172, &v171, &v176, &v175);
                if (!v117)
                {
                  break;
                }

                v121 = *(a1 + 56) + v171 * v111;
                if (v117 < 0)
                {
                  CGBlt_fillBytes(v176, v175, 0, (v121 + v172), (v11 + 3) & 0xFFFFFFFC);
                }

                else
                {
                  v122 = *(a2 + 48);
                  v123 = (*(a2 + 56) + v172 + v114 + (v122 * (v171 + v115)));
                  v124 = (v121 + v172);
                  v125 = (v11 + 3) & 0xFFFFFFFC;
                  if (a3 < 0)
                  {
                    CGBlt_combineBytes(v176, v175, v123, v124, v122, v125, 1280, v118, v119, v120);
                  }

                  else
                  {
                    CGBlt_copyBytes(v176, v175, v123, v124, v122, v125);
                  }
                }
              }

              free(v110);
              v22 = *(a1 + 72);
              if (v22 != v24 && v24 != 0 && v24 != &the_empty_shape)
              {
                free(v24);
                v22 = *(a1 + 72);
              }

              if (!v22 || v22 == &the_empty_shape)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }
          }

          free(v110);
        }

        if (*(a1 + 72) == v24 || !v24 || v24 == &the_empty_shape)
        {
          goto LABEL_155;
        }

        v134 = v24;
        goto LABEL_154;
      }

      if ((a3 & 0x80000000) == 0)
      {
        *(a1 + 12) = v178;
        return 1;
      }

      goto LABEL_244;
    }

    if (a3 < 0)
    {
      goto LABEL_65;
    }

    v100 = (a2 + 12);
    goto LABEL_214;
  }

  if (v25)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v168 = *(&v178 + 1);
      v56 = ripl_Containment(&v178, (a1 + 12), v55);
      v57 = (v11 + 3) & 0xFFFFFFFC;
      if ((v12 * v57 + 4) >> 31)
      {
        v58 = 0xFFFFFFFFLL;
      }

      else
      {
        v58 = (v12 * v57 + 19) & 0xFFFFFFF0;
      }

      if ((v58 & 0x80000000) != 0)
      {
        goto LABEL_155;
      }

      v59 = v56;
      v60 = malloc_type_malloc(v58, 0x3D4C22A3uLL);
      *(a1 + 56) = v60;
      if (!v60)
      {
        goto LABEL_155;
      }

      *(a1 + 48) = v57;
      *(a1 + 28) &= ~2u;
      *(a1 + 12) = v178;
      *(a1 + 20) = v168;
      v6 = memset(v60, 255, v58);
      if (!v59)
      {
        goto LABEL_222;
      }

      v61 = *(a1 + 56);
      v62 = (v11 + 3) & 0xFFFFFFFC;
      v63 = v11;
      v64 = v12;
      v65 = v59;
LABEL_221:
      v6 = CGSCombineMask(0, 0, v61, v62, v63, v64, v65);
LABEL_222:
      *(a1 + 64) = 0;
      v14 = *(a2 + 72);
      goto LABEL_4;
    }

LABEL_215:
    v155 = (*(a1 + 20) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if ((v155 * *(a1 + 24) + 4) >> 31)
    {
      v156 = 0xFFFFFFFFLL;
    }

    else
    {
      v156 = (v155 * *(a1 + 24) + 19) & 0xFFFFFFF0;
    }

    if ((v156 & 0x80000000) != 0)
    {
      goto LABEL_155;
    }

    v157 = malloc_type_malloc(v156, 0xD837E9E9uLL);
    *(a1 + 56) = v157;
    if (!v157)
    {
      goto LABEL_155;
    }

    *(a1 + 48) = v155;
    *(a1 + 28) &= ~2u;
    memset(v157, 255, v156);
    v61 = *(a1 + 56);
    v63 = *(a1 + 20);
    v64 = *(a1 + 24);
    v65 = *(a1 + 64);
    v62 = v155;
    goto LABEL_221;
  }

  v101 = *(a2 + 64);
  if (v101)
  {
    if (a3 < 0)
    {
      v144 = (*(a1 + 20) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      if ((v144 * *(a1 + 24) + 4) >> 31)
      {
        v145 = 0xFFFFFFFFLL;
      }

      else
      {
        v145 = (v144 * *(a1 + 24) + 19) & 0xFFFFFFF0;
      }

      if ((v145 & 0x80000000) != 0)
      {
        goto LABEL_155;
      }

      v146 = malloc_type_malloc(v145, 0x584C6DC5uLL);
      *(a1 + 56) = v146;
      if (!v146)
      {
        goto LABEL_155;
      }

      *(a1 + 48) = v144;
      *(a1 + 28) &= ~2u;
      memset(v146, 255, v145);
      CGSCombineMask(0, 0, *(a1 + 56), v144, *(a1 + 20), *(a1 + 24), *(a1 + 64));
      *(a1 + 64) = 0;
      v42 = *(a2 + 64);
      v10 = *(&v178 + 1);
LABEL_38:
      v43 = v42 & 0xFF000000;
      v44 = *(a2 + 12);
      v45 = *(a2 + 16);
      if (v178 != v44)
      {
        v43 = 0;
      }

      v46 = v42;
      if (DWORD1(v178) != v45)
      {
        v46 = 0;
      }

      if (LODWORD(v10) + v178 == *(a2 + 20) + v44)
      {
        v47 = v42 & 0xFF00;
      }

      else
      {
        v47 = 0;
      }

      v48 = v42 & 0xFF0000;
      if (HIDWORD(v10) + DWORD1(v178) == *(a2 + 24) + v45)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = v178 - *(a1 + 12);
      v51 = *(a1 + 16) - (HIDWORD(v10) + DWORD1(v178)) + *(a1 + 24);
      v177[0] = v51;
      v177[1] = v50;
      if ((a3 & 0x80000000) == 0)
      {
        v52 = v46 | v43 | v47 | v49;
        if (v52)
        {
          v53 = *(a1 + 48);
          v54 = (*(a1 + 56) + v50 + (v53 * v51));
          CGSCombineMask(v54, v53, v54, v53, v11, v12, v52);
        }

        if (*(a1 + 20) == v11 && *(a1 + 24) == v12)
        {
LABEL_14:
          v22 = *(a1 + 72);
          if (!v22 || v22 == &the_empty_shape)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        goto LABEL_93;
      }

      v93 = v11 - (v43 != 0) - (v47 != 0);
      v94 = v46 != 0;
      if (v93 < 1)
      {
        goto LABEL_14;
      }

      v95 = v12 - (v49 != 0) - v94;
      if (v95 < 1)
      {
        goto LABEL_14;
      }

      if (v49)
      {
        v96 = v51 + 1;
      }

      else
      {
        v96 = v51;
      }

      if (v43)
      {
        v97 = v50 + 1;
      }

      else
      {
        v97 = v50;
      }

      v98 = *(a1 + 48);
      v99 = (*(a1 + 56) + (v98 * v96) + v97);
LABEL_111:
      CGBlt_fillBytes(v93, v95, 0, v99, v98);
      goto LABEL_14;
    }

    v102 = v178;
    if (v178 == *(a1 + 12))
    {
      v103 = HIBYTE(v55);
      if (v178 == *(a2 + 12))
      {
        v103 = 255 - (((HIBYTE(v101) ^ 0xFF) * (v103 ^ 0xFF) + (((HIBYTE(v101) ^ 0xFF) * (v103 ^ 0xFF)) >> 8) + 1) >> 8);
      }
    }

    else
    {
      *(a1 + 12) = v178;
      v103 = HIBYTE(v101);
    }

    v147 = DWORD1(v178);
    if (DWORD1(v178) == *(a1 + 16))
    {
      v148 = v55;
      if (DWORD1(v178) == *(a2 + 16))
      {
        v148 = 255 - (((v101 ^ 0xFF) * (v55 ^ 0xFF) + (((v101 ^ 0xFF) * (v55 ^ 0xFFu)) >> 8) + 1) >> 8);
      }
    }

    else
    {
      *(a1 + 16) = DWORD1(v178);
      v148 = v101;
    }

    if (v11 == *(a1 + 20))
    {
      v149 = BYTE1(v55);
      if (v102 + v11 == *(a2 + 20) + *(a2 + 12))
      {
        v149 = 255 - (((BYTE1(v101) ^ 0xFF) * (BYTE1(v55) ^ 0xFF) + (((BYTE1(v101) ^ 0xFF) * (BYTE1(v55) ^ 0xFFu)) >> 8) + 1) >> 8);
      }
    }

    else
    {
      *(a1 + 20) = v11;
      v149 = BYTE1(v101);
    }

    v150 = BYTE2(v101);
    if (v12 == *(a1 + 24))
    {
      v151 = BYTE2(v55);
      if (v147 + v12 == *(a2 + 24) + *(a2 + 16))
      {
        v151 = 255 - (((v150 ^ 0xFF) * (BYTE2(v55) ^ 0xFF) + (((v150 ^ 0xFF) * (BYTE2(v55) ^ 0xFF)) >> 8) + 1) >> 8);
      }
    }

    else
    {
      *(a1 + 24) = v12;
      v151 = v150;
    }

    v126 = (v103 << 24) | (v151 << 16) | (v149 << 8) | v148;
    goto LABEL_200;
  }

  if (!*(a2 + 56))
  {
    if (a3 < 0)
    {
      goto LABEL_215;
    }

    v100 = (a1 + 12);
LABEL_214:
    v154 = ripl_Containment(&v178, v100, v55);
    *(a1 + 12) = v178;
    *(a1 + 64) = v154;
    return 1;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v170 = *(&v178 + 1);
    v137 = ripl_Containment(&v178, (a1 + 12), v55);
    v138 = (v11 + 3) & 0xFFFFFFFC;
    if ((v12 * v138 + 4) >> 31)
    {
      v139 = 0xFFFFFFFFLL;
    }

    else
    {
      v139 = (v12 * v138 + 19) & 0xFFFFFFF0;
    }

    if ((v139 & 0x80000000) == 0)
    {
      v140 = malloc_type_malloc(v139, 0x6F591124uLL);
      *(a1 + 56) = v140;
      if (v140)
      {
        *(a1 + 48) = v138;
        *(a1 + 28) &= ~2u;
        *&v141 = v178;
        v142 = DWORD1(v178);
        v143 = v178;
        *(&v141 + 1) = v170;
        *(a1 + 12) = v141;
        CGBlt_copyBytes(v11, v12, (*(a2 + 56) + (*(a2 + 48) * (*(a2 + 16) + *(a2 + 24) - HIDWORD(v178) - v142)) - *(a2 + 12) + v143), v140, *(a2 + 48), (v11 + 3) & 0xFFFFFFFC);
        if (v137)
        {
          CGSCombineMask(*(a1 + 56), *(a1 + 48), *(a1 + 56), *(a1 + 48), v11, v12, v137);
        }

        goto LABEL_18;
      }
    }

    goto LABEL_155;
  }

  v163 = (*(a1 + 20) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if ((v163 * *(a1 + 24) + 4) >> 31)
  {
    v164 = 0xFFFFFFFFLL;
  }

  else
  {
    v164 = (v163 * *(a1 + 24) + 19) & 0xFFFFFFF0;
  }

  if ((v164 & 0x80000000) == 0)
  {
    v165 = malloc_type_malloc(v164, 0xBAD74AE6uLL);
    *(a1 + 56) = v165;
    if (v165)
    {
      *(a1 + 48) = v163;
      *(a1 + 28) &= ~2u;
      memset(v165, 255, v164);
      CGSCombineMask(0, 0, *(a1 + 56), v163, *(a1 + 20), *(a1 + 24), *(a1 + 64));
      *(a1 + 64) = 0;
      v79 = HIDWORD(v178);
      v78 = *(a2 + 56);
      v13 = *(a1 + 56);
LABEL_87:
      v80 = v178 - *(a2 + 12);
      v81 = v79 + DWORD1(v178);
      v82 = *(a2 + 48);
      v83 = v78 + (*(a2 + 24) + *(a2 + 16) - v81) * v82;
      v84 = v178 - *(a1 + 12);
      v177[0] = *(a1 + 16) - v81 + *(a1 + 24);
      v177[1] = v84;
      v85 = *(a1 + 48);
      v86 = v13 + v85 * v177[0];
      if (a3 >= 0)
      {
        v87 = 256;
      }

      else
      {
        v87 = 1024;
      }

      CGBlt_combineBytes(v11, v12, (v83 + v80), (v86 + v84), v82, v85, v87, v10, v8, v9);
      if (a3 < 0)
      {
        goto LABEL_14;
      }

      LODWORD(v11) = v176;
      if (*(a1 + 20) == v176)
      {
        LODWORD(v11) = *(a1 + 20);
        if (*(a1 + 24) == v175)
        {
          goto LABEL_14;
        }
      }

LABEL_93:
      v88 = v177[0];
LABEL_94:
      if (v177[1] >= 1)
      {
        CGBlt_fillBytes(v177[1], v175, 0, (*(a1 + 56) + (*(a1 + 48) * v88)), *(a1 + 48));
      }

      if (v88 >= 1)
      {
        bzero(*(a1 + 56), (*(a1 + 48) * v88));
      }

      v89 = *(a1 + 20);
      if (v89 > v11 + v177[1])
      {
        CGBlt_fillBytes(v89 - (v11 + v177[1]), v175, 0, (*(a1 + 56) + (*(a1 + 48) * v88) + v11 + v177[1]), *(a1 + 48));
      }

      v90 = *(a1 + 24);
      v91 = __OFSUB__(v90, v175 + v88);
      v92 = v90 - (v175 + v88);
      if (!((v92 < 0) ^ v91 | (v92 == 0)))
      {
        bzero((*(a1 + 56) + (*(a1 + 48) * (v175 + v88))), (*(a1 + 48) * v92));
      }

      goto LABEL_14;
    }
  }

LABEL_155:
  v135 = *(a1 + 56);
  if (v135 && (*(a1 + 28) & 2) == 0)
  {
    free(v135);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  v136 = *(a1 + 72);
  if (v136 && v136 != &the_empty_shape)
  {
    free(v136);
  }

  result = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  return result;
}

_DWORD *W8_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    v13 = v11;
    if (v11 >= a6)
    {
      v13 = a6;
      if (v10 > a6)
      {
        v13 = v10;
      }
    }

    v14 = v13 * v9[2];
    if (a5)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == 4)
    {
      v25 = a5[4];
      v26 = *a5;
      v27 = v11;
      if (v25 <= v11)
      {
        v27 = a5[4];
        if (v25 < v10)
        {
          v27 = v10;
        }
      }

      v29 = a5[1];
      v28 = a5[2];
      v30 = v11;
      if (v26 <= v11)
      {
        v30 = *a5;
        if (v26 < v10)
        {
          v30 = v10;
        }
      }

      if (v29 < v10)
      {
        v31 = v10;
      }

      else
      {
        v31 = a5[1];
      }

      if (v29 > v11)
      {
        v31 = v11;
      }

      if (v28 < v10)
      {
        v32 = v10;
      }

      else
      {
        v32 = a5[2];
      }

      v33 = v28 <= v11;
      v34 = v11 - (v9[4] * v30);
      if (v33)
      {
        v35 = v32;
      }

      else
      {
        v35 = v11;
      }

      v36 = ((v34 - (v9[5] * v31)) - (v9[6] * v35)) - v27;
      if (v36 >= v10)
      {
        v24 = v12 + (v36 * v14);
      }

      else
      {
        v24 = v10;
      }
    }

    else
    {
      if (v15 == 3)
      {
        v19 = a5[1];
        v20 = v11;
        if (*a5 <= v11)
        {
          v20 = *a5;
          if (*a5 < v10)
          {
            v20 = v10;
          }
        }

        v21 = a5[2];
        v22 = v11;
        if (v19 <= v11)
        {
          v22 = a5[1];
          if (v19 < v10)
          {
            v22 = v10;
          }
        }

        if (v21 < v10)
        {
          v23 = v10;
        }

        else
        {
          v23 = a5[2];
        }

        if (v21 > v11)
        {
          v23 = v11;
        }

        v18 = ((v22 * v9[5]) + (v9[4] * v20)) + (v9[6] * v23);
      }

      else
      {
        v16 = 0;
        if (v15 != 1)
        {
          goto LABEL_53;
        }

        if (*a5 < v10)
        {
          v17 = v10;
        }

        else
        {
          v17 = *a5;
        }

        if (*a5 <= v11)
        {
          v18 = v17;
        }

        else
        {
          v18 = v11;
        }
      }

      v24 = v12 + (v18 * v14);
    }

    v16 = v24;
LABEL_53:
    v37 = (v12 + v14);
    *a2 = xmmword_18439CE60;
    a2[6] = 0;
    *(a2 + 2) = 1;
    a2[12] = v16 | (v16 << 8) | ((v16 | (v16 << 8)) << 16);
    *(a2 + 4) = a2 + 12;
    if (v37 > 254)
    {
      *(a2 + 5) = 0;
    }

    else
    {
      a2[13] = v37 | (v37 << 8) | ((v37 | (v37 << 8)) << 16);
      *(a2 + 5) = a2 + 13;
    }
  }

  return a2;
}

uint64_t W8_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v598 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 96);
  v6 = *(v2 + 48);
  v7 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v5 == 0) + 4 * (v6 == 0));
  if (v7 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v2;
  v10 = *(v2 + 4);
  v11 = (v10 - 1);
  if (v10 < 1)
  {
    return 0;
  }

  v12 = *(v2 + 8);
  v13 = (v12 - 1);
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v2 + 136);
  if ((*v2 & 0xFF0000) == 0x50000 || !v14)
  {
    v16 = *v2 & 0xFF00;
    v534 = v2;
    v535 = v7;
    if (v16 == 1024)
    {
      v597[0] = *(v2 + 4);
      v587[0] = v12;
      v17 = *(v2 + 28);
      if (v5)
      {
        v18 = *v5;
      }

      else
      {
        v18 = 255;
      }

      v30 = *(v2 + 40);
      v31 = **(v2 + 88);
      v33 = *(v2 + 12);
      v32 = *(v2 + 16);
      if (v6)
      {
        *v563 = *(v2 + 32);
        v561 = (v6 + v563[0] * v32 + v33);
        v34 = 1;
      }

      else
      {
        v561 = 0;
        *v563 = 0;
        v34 = 0;
      }

      v557 = v34;
      v553 = ~v18;
      v43 = v30 + v32 * v17 + v33;
      v555 = *(v2 + 28);
      v559 = v43;
      if (!v14)
      {
        if (v6)
        {
          v47 = v10;
        }

        else
        {
          v47 = 0;
        }

        v46 = v561;
        v582 = 0;
        v584 = *v563 - v47;
        v48 = (v30 + v32 * v17 + v33);
        v49 = v10;
        goto LABEL_908;
      }

      shape_enum_clip_alloc(v10, v2, v14, 1, 1, 1, *(v2 + 104), *(v2 + 108), v10, v12);
      v45 = v44;
      v46 = v561;
      v584 = *v563;
      if (v44)
      {
        while (shape_enum_clip_next(v45, &v586 + 1, &v586, v597, v587))
        {
          v582 = v45;
          v48 = (v43 + v586 * v17 + SHIDWORD(v586));
          v49 = v597[0];
          if (v6)
          {
            v46 = &v561[v563[0] * v586 + SHIDWORD(v586)];
          }

          v520 = v584;
          if (v6)
          {
            v520 = *v563 - v597[0];
          }

          v584 = v520;
          LODWORD(v10) = v597[0];
LABEL_908:
          v43 = v17 - v49;
          switch(v7)
          {
            case 0:
              v418 = v43 + v10;
              v419 = v587[0];
              v420 = v587[0] - 1;
              if (v418 >= 0)
              {
                LODWORD(v421) = v418;
              }

              else
              {
                v421 = -v418;
              }

              v422 = &v48[(v418 * v420) & (v418 >> 63)];
              v423 = v10;
              CGBlt_fillBytes(v10, v587[0], 0, v422, v421);
              if (!v6)
              {
                goto LABEL_1157;
              }

              v424 = v584 + v423;
              v46 += (v424 * v420) & (v424 >> 63);
              if (v424 >= 0)
              {
                v425 = v584 + v423;
              }

              else
              {
                v425 = -v424;
              }

              v426 = v423;
              v427 = v419;
              v428 = 0;
              goto LABEL_1040;
            case 1:
              v552 = v10;
              v478 = v43 + v10;
              if (v478 < 0)
              {
                v48 += v478 * (v587[0] - 1);
                v478 = -v478;
              }

              v479 = 0;
              v480 = *(v534 + 88);
              if (v480)
              {
                v479 = *v480;
              }

              v481 = v587[0];
              v482 = v10;
              CGBlt_fillBytes(v10, v587[0], v479, v48, v478);
              if (v6)
              {
                v427 = v481;
                v483 = *(v534 + 96);
                if (!v483)
                {
                  v483 = &PIXELALPHAPLANARCONSTANT_18034;
                }

                v46 += ((v584 + v552) * (v481 - 1)) & ((v584 + v552) >> 63);
                if (v584 + v552 >= 0)
                {
                  v425 = v584 + v552;
                }

                else
                {
                  v425 = -(v584 + v552);
                }

                v428 = *v483;
                v426 = v482;
LABEL_1040:
                v584 = v425;
                CGBlt_fillBytes(v426, v427, v428, v46, v425);
              }

              goto LABEL_1157;
            case 2:
              v453 = 4 * v557;
              if (v6)
              {
                v454 = v31 | (v18 << 24);
                do
                {
                  v455 = v597[0];
                  if (v597[0] >= 4)
                  {
                    v456 = (v597[0] >> 2) + 1;
                    do
                    {
                      v457 = (*v48 | (*v46 << 16)) * v553;
                      v458 = ((v457 + 65537 + ((v457 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v457 + 1 + BYTE1(v457)) >> 8)) + v454;
                      *v48 = v458;
                      *v46 = HIBYTE(v458);
                      v459 = (v48[1] | (v46[1] << 16)) * v553;
                      v460 = ((v459 + 65537 + ((v459 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v459 + 1 + BYTE1(v459)) >> 8)) + v454;
                      v48[1] = v460;
                      v46[1] = HIBYTE(v460);
                      v461 = (v48[2] | (v46[2] << 16)) * v553;
                      v462 = ((v461 + 65537 + ((v461 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v461 + 1 + BYTE1(v461)) >> 8)) + v454;
                      v48[2] = v462;
                      v46[2] = HIBYTE(v462);
                      v463 = (v48[3] | (v46[3] << 16)) * v553;
                      v48[3] = ((v463 + 1 + BYTE1(v463)) >> 8) + v31;
                      v46[3] = (((v463 + 65537 + ((v463 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v463 + 1 + BYTE1(v463)) >> 8)) + v454) >> 24;
                      v48 += 4;
                      v46 += v453;
                      --v456;
                    }

                    while (v456 > 1);
                    v455 = v597[0] & 3;
                  }

                  if (v455 >= 1)
                  {
                    v464 = v455 + 1;
                    do
                    {
                      v465 = (*v48 | (*v46 << 16)) * v553;
                      *v48++ = ((v465 + 1 + BYTE1(v465)) >> 8) + v31;
                      *v46 = (((v465 + 65537 + ((v465 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v465 + 1 + BYTE1(v465)) >> 8)) + v454) >> 24;
                      v46 += v557;
                      --v464;
                    }

                    while (v464 > 1);
                  }

                  v48 += v43;
                  v46 += v584;
                  --v587[0];
                }

                while (v587[0]);
              }

              else
              {
                v526 = vdup_n_s16(v31);
                v527 = vdup_n_s16(v553);
                do
                {
                  v528 = v597[0];
                  if (v597[0] >= 4)
                  {
                    v529 = (v597[0] >> 2) + 1;
                    do
                    {
                      v4.i32[0] = *v48;
                      v530 = vmull_u16(v527, *&vmovl_u8(v4));
                      v4 = vuzp1_s8(vsra_n_u16(v526, vadd_s16(vmovn_s32(vsraq_n_u32(v530, v530, 8uLL)), 0x1000100010001), 8uLL), v526);
                      *v48 = v4.i32[0];
                      v48 += 4;
                      v46 += v453;
                      --v529;
                    }

                    while (v529 > 1);
                    v528 = v597[0] & 3;
                  }

                  if (v528 >= 1)
                  {
                    v531 = v528 + 1;
                    do
                    {
                      *v48 = v31 + ((*v48 * v553 + ((*v48 * v553) >> 8) + 1) >> 8);
                      ++v48;
                      --v531;
                    }

                    while (v531 > 1);
                    v46 += v528 * v557;
                  }

                  v48 += v43;
                  v46 += v584;
                  --v587[0];
                }

                while (v587[0]);
              }

              goto LABEL_1158;
            case 3:
              do
              {
                v468 = v597[0];
                do
                {
                  v469 = *v46;
                  if (v469 == 255)
                  {
                    *v48 = v31;
                    LOBYTE(v469) = v18;
                  }

                  else if (*v46)
                  {
                    v470 = (v31 | (v18 << 16)) * (v469 ^ 0xFF) + 65537 + ((((v31 | (v18 << 16)) * (v469 ^ 0xFF)) >> 8) & 0xFF00FF);
                    *v48 = v31 - BYTE1(v470);
                    v469 = ((v31 | (v18 << 24)) - (v470 & 0xFF000000 | BYTE1(v470))) >> 24;
                  }

                  else
                  {
                    *v48 = 0;
                  }

                  *v46 = v469;
                  ++v48;
                  v46 += v557;
                  --v468;
                }

                while (v468);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              goto LABEL_1158;
            case 4:
              do
              {
                v439 = v597[0];
                do
                {
                  v440 = *v46;
                  if ((v440 ^ 0xFF) == 0xFF)
                  {
                    *v48 = v31;
                    LOBYTE(v441) = v18;
                  }

                  else if (v440 != 0xFF)
                  {
                    v442 = (v31 | (v18 << 16)) * v440 + 65537 + ((((v31 | (v18 << 16)) * v440) >> 8) & 0xFF00FF);
                    *v48 = v31 - BYTE1(v442);
                    v441 = ((v31 | (v18 << 24)) - (v442 & 0xFF000000 | BYTE1(v442))) >> 24;
                  }

                  else
                  {
                    LOBYTE(v441) = 0;
                    *v48 = 0;
                  }

                  *v46 = v441;
                  ++v48;
                  v46 += v557;
                  --v439;
                }

                while (v439);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              goto LABEL_1158;
            case 5:
              do
              {
                v488 = v597[0];
                do
                {
                  v489 = (v31 | (v18 << 16)) * *v46 + (*v48 | (*v46 << 16)) * v553;
                  v490 = v489 + 65537 + ((v489 >> 8) & 0xFF00FF);
                  *v48++ = BYTE1(v490);
                  *v46 = HIBYTE(v490);
                  v46 += v557;
                  --v488;
                }

                while (v488);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              goto LABEL_1158;
            case 6:
              do
              {
                v495 = v597[0];
                do
                {
                  v496 = *v46;
                  if (v496 != 0xFF)
                  {
                    if (~v496 == 255)
                    {
                      *v48 = v31;
                      LOBYTE(v497) = v18;
                    }

                    else
                    {
                      v498 = (v31 | (v18 << 16)) * ~v496 + 65537 + ((((v31 | (v18 << 16)) * ~v496) >> 8) & 0xFF00FF);
                      v499 = (*v48 | (v496 << 24)) + (v498 & 0xFF000000 | BYTE1(v498));
                      *v48 = v499;
                      v497 = HIBYTE(v499);
                    }

                    *v46 = v497;
                  }

                  ++v48;
                  v46 += v557;
                  --v495;
                }

                while (v495);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              goto LABEL_1158;
            case 7:
              if (v6)
              {
                do
                {
                  v471 = v597[0];
                  do
                  {
                    v472 = *v48;
                    v473 = *v46;
                    v474 = (v472 | (v473 << 16)) * v553 + 65537 + ((((v472 | (v473 << 16)) * v553) >> 8) & 0xFF00FF);
                    v475 = (v472 | (v473 << 24)) - (v474 & 0xFF000000 | BYTE1(v474));
                    *v48++ = v475;
                    *v46 = HIBYTE(v475);
                    v46 += v557;
                    --v471;
                  }

                  while (v471);
                  v48 += v43;
                  v46 += v584;
                  --v587[0];
                }

                while (v587[0]);
              }

              else
              {
                do
                {
                  v476 = v597[0];
                  v477 = v597[0] - 1;
                  do
                  {
                    *v48 -= (*v48 * v553 + ((*v48 * v553) >> 8) + 1) >> 8;
                    ++v48;
                    --v476;
                  }

                  while (v476);
                  v48 += v43;
                  v46 += v584 + v557 + v557 * v477;
                  --v587[0];
                }

                while (v587[0]);
              }

              goto LABEL_1158;
            case 8:
              if (v6)
              {
                do
                {
                  v505 = v597[0];
                  do
                  {
                    v506 = *v48;
                    v507 = *v46;
                    v508 = (v506 | (v507 << 16)) * v18 + 65537 + ((((v506 | (v507 << 16)) * v18) >> 8) & 0xFF00FF);
                    v509 = (v506 | (v507 << 24)) - (v508 & 0xFF000000 | BYTE1(v508));
                    *v48++ = v509;
                    *v46 = HIBYTE(v509);
                    v46 += v557;
                    --v505;
                  }

                  while (v505);
                  v48 += v43;
                  v46 += v584;
                  --v587[0];
                }

                while (v587[0]);
              }

              else
              {
                do
                {
                  v510 = v597[0];
                  v511 = v597[0] - 1;
                  do
                  {
                    *v48 -= (*v48 * v18 + ((*v48 * v18) >> 8) + 1) >> 8;
                    ++v48;
                    --v510;
                  }

                  while (v510);
                  v48 += v43;
                  v46 += v584 + v557 + v557 * v511;
                  --v587[0];
                }

                while (v587[0]);
              }

              goto LABEL_1158;
            case 9:
              do
              {
                v446 = v597[0];
                do
                {
                  v447 = (v31 | (v18 << 16)) * (*v46 ^ 0xFF) + (*v48 | (*v46 << 16)) * v18;
                  v448 = v447 + 65537 + ((v447 >> 8) & 0xFF00FF);
                  *v48++ = BYTE1(v448);
                  *v46 = HIBYTE(v448);
                  v46 += v557;
                  --v446;
                }

                while (v446);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              goto LABEL_1158;
            case 10:
              do
              {
                v502 = v597[0];
                do
                {
                  v503 = (v31 | (v18 << 16)) * (*v46 ^ 0xFF) + (*v48 | (*v46 << 16)) * v553;
                  v504 = v503 + 65537 + ((v503 >> 8) & 0xFF00FF);
                  *v48++ = BYTE1(v504);
                  *v46 = HIBYTE(v504);
                  v46 += v557;
                  --v502;
                }

                while (v502);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              goto LABEL_1158;
            case 11:
              v435 = v18 - v31;
              if (v6)
              {
                do
                {
                  v436 = v597[0];
                  do
                  {
                    v437 = ((v18 - v31) | (v18 << 16)) + (*v46 - *v48) + (*v46 << 16);
                    v438 = (255 * ((v437 >> 8) & 0x10001)) | v437;
                    *v48++ = BYTE2(v438) - v438;
                    *v46 = BYTE2(v438);
                    v46 += v557;
                    --v436;
                  }

                  while (v436);
                  v48 += v43;
                  v46 += v584;
                  --v587[0];
                }

                while (v587[0]);
              }

              else
              {
                do
                {
                  v521 = v597[0];
                  v522 = v597[0] - 1;
                  do
                  {
                    v523 = ((v435 + (*v48 ^ 0xFF)) >> 8) | (2 * ((v435 + (*v48 ^ 0xFF)) >> 8)) | (4 * (((v435 + (*v48 ^ 0xFF)) >> 8) | (2 * ((v435 + (*v48 ^ 0xFF)) >> 8))));
                    *v48 = ~((v435 + ~*v48) | (16 * v523) | v523);
                    ++v48;
                    --v521;
                  }

                  while (v521);
                  v48 += v43;
                  v46 += v584 + v557 + v557 * v522;
                  --v587[0];
                }

                while (v587[0]);
              }

              goto LABEL_1158;
            case 12:
              if (v6)
              {
                do
                {
                  v443 = v597[0];
                  do
                  {
                    v444 = (v31 | (v18 << 16)) + (*v48 | (*v46 << 16));
                    v445 = (255 * ((v444 >> 8) & 0x10001)) | v444;
                    *v48++ = v445;
                    *v46 = BYTE2(v445);
                    v46 += v557;
                    --v443;
                  }

                  while (v443);
                  v48 += v43;
                  v46 += v584;
                  --v587[0];
                }

                while (v587[0]);
              }

              else
              {
                do
                {
                  v524 = v597[0];
                  v525 = v597[0] - 1;
                  do
                  {
                    *v48 = -((*v48 + v31) >> 8) | (*v48 + v31);
                    ++v48;
                    --v524;
                  }

                  while (v524);
                  v48 += v43;
                  v46 += v584 + v557 + v557 * v525;
                  --v587[0];
                }

                while (v587[0]);
              }

              goto LABEL_1158;
            case 13:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v493 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v494 = PDAmultiplyPDA_18018(*v48, *v46, v31, v18);
                      *v48 = v494;
                      *v46 = HIBYTE(v494);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAmultiplyPDA_18018(*v48, 255, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v493;
                }

                while (v493);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 14:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v433 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v434 = PDAscreenPDA_18019(*v48, *v46, v31, v18);
                      *v48 = v434;
                      *v46 = HIBYTE(v434);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAscreenPDA_18019(*v48, 255, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v433;
                }

                while (v433);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 15:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v466 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v467 = PDAoverlayPDA_18020(*v48, *v46, v31, v18);
                      *v48 = v467;
                      *v46 = HIBYTE(v467);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAoverlayPDA_18020(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v466;
                }

                while (v466);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 16:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v431 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v432 = PDAdarkenPDA_18022(*v48, *v46, v31, v18);
                      *v48 = v432;
                      *v46 = HIBYTE(v432);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAdarkenPDA_18022(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v431;
                }

                while (v431);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 17:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v484 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v485 = PDAlightenPDA_18021(*v48, *v46, v31, v18);
                      *v48 = v485;
                      *v46 = HIBYTE(v485);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAlightenPDA_18021(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v484;
                }

                while (v484);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 18:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v500 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v501 = PDAcolordodgePDA_18023(*v48, *v46, v31, v18);
                      *v48 = v501;
                      *v46 = HIBYTE(v501);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAcolordodgePDA_18023(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v500;
                }

                while (v500);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 19:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v514 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v515 = PDAcolorburnPDA_18024(*v48, *v46, v31, v18);
                      *v48 = v515;
                      *v46 = HIBYTE(v515);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAcolorburnPDA_18024(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v514;
                }

                while (v514);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 20:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v486 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v487 = PDAsoftlightPDA_18026(*v48, *v46, v31, v18);
                      *v48 = v487;
                      *v46 = HIBYTE(v487);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAsoftlightPDA_18026(*v48, 255, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v486;
                }

                while (v486);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 21:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v491 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v492 = PDAhardlightPDA_18025(*v48, *v46, v31, v18);
                      *v48 = v492;
                      *v46 = HIBYTE(v492);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAhardlightPDA_18025(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v491;
                }

                while (v491);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 22:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v512 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v513 = PDAdifferencePDA_18027(*v48, *v46, v31, v18);
                      *v48 = v513;
                      *v46 = HIBYTE(v513);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAdifferencePDA_18027(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v512;
                }

                while (v512);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 23:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v516 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v517 = PDAexclusionPDA_18028(*v48, *v46, v31, v18);
                      *v48 = v517;
                      *v46 = HIBYTE(v517);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAexclusionPDA_18028(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v516;
                }

                while (v516);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 24:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v451 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v452 = PDAhuePDA_18029(*v48, *v46, v31, v18);
                      *v48 = v452;
                      *v46 = HIBYTE(v452);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAhuePDA_18029(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v451;
                }

                while (v451);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 25:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v449 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v450 = PDAhuePDA_18029(*v48, *v46, v31, v18);
                      *v48 = v450;
                      *v46 = HIBYTE(v450);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAhuePDA_18029(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v449;
                }

                while (v449);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 26:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v518 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v519 = PDAluminosityPDA_18031(v31, v18, *v48, *v46);
                      *v48 = v519;
                      *v46 = HIBYTE(v519);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAluminosityPDA_18031(v31, v18, *v48, 0xFFu);
                  }

                  ++v48;
                  v46 += v557;
                  --v518;
                }

                while (v518);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            case 27:
              if (!v18)
              {
                goto LABEL_1158;
              }

              do
              {
                v429 = v597[0];
                do
                {
                  if (v6)
                  {
                    if (*v46)
                    {
                      v430 = PDAluminosityPDA_18031(*v48, *v46, v31, v18);
                      *v48 = v430;
                      *v46 = HIBYTE(v430);
                    }

                    else
                    {
                      *v48 = v31;
                      *v46 = v18;
                    }
                  }

                  else
                  {
                    *v48 = PDAluminosityPDA_18031(*v48, 0xFFu, v31, v18);
                  }

                  ++v48;
                  v46 += v557;
                  --v429;
                }

                while (v429);
                v48 += v43;
                v46 += v584;
                --v587[0];
              }

              while (v587[0]);
              break;
            default:
              goto LABEL_1159;
          }

          v7 = v535;
LABEL_1157:
          v17 = v555;
LABEL_1158:
          v43 = v559;
LABEL_1159:
          v45 = v582;
          if (!v582)
          {
            return 1;
          }

          v586 = 0;
        }

        v55 = v45;
LABEL_1168:
        free(v55);
      }

      return 1;
    }

    v597[0] = *(v2 + 4);
    v587[0] = v12;
    v19 = *(v2 + 28);
    v20 = *(v2 + 88);
    v22 = *(v2 + 12);
    v21 = *(v2 + 16);
    if (v6)
    {
      v541 = *(v2 + 32);
      v544 = (v6 + v541 * v21 + v22);
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v544 = 0;
      v541 = 0;
      v23 = 0;
    }

    v540 = *(v2 + 40) + v21 * v19 + v22;
    v35 = *(v2 + 104);
    v36 = *(v2 + 108);
    v37 = *(v2 + 56);
    v38 = *(v9 + 60);
    v39 = *(v9 + 76);
    if (v16 == 256)
    {
      if (v5)
      {
        v40 = *(v9 + 80);
        v5 += v40 * v38 + v37;
        v41 = -1;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      v20 += v38 * v39 + v37;
      if (v39 == v19 && (v540 - v20) >= 1)
      {
        if (v540 - v20 <= v10)
        {
          v540 += v11;
          v20 += v11;
          v544 += v23 & v11;
          v5 += v41 & v11;
          v57 = -1;
          goto LABEL_49;
        }

        v56 = &v20[v39 * v13];
        if (v540 <= &v56[v10 - 1])
        {
          v540 += v19 * v13;
          v19 = -v19;
          v39 = -v39;
          v544 += v541 * v13;
          v541 = -v541;
          v23 &= 1u;
          v5 += v40 * v13;
          v40 = -v40;
          v41 &= 1u;
          v57 = 1;
          v20 = v56;
          goto LABEL_49;
        }
      }

      v23 &= 1u;
      v41 &= 1u;
      v57 = 1;
LABEL_49:
      v532 = v37;
      v533 = *(v9 + 60);
      if (v14)
      {
        v58 = v5;
        v583 = v41;
        v585 = v23;
        v550 = 0;
        v551 = 0;
        v546 = -1;
        v558 = v39;
        v42 = v39;
        v562 = v40;
        v549 = v40;
        goto LABEL_54;
      }

      v545 = v57;
      v63 = v57 * v10;
      v560 = v541 - v23 * v10;
      v64 = -1;
      v549 = v40;
      v42 = v39;
LABEL_62:
      v550 = 0;
      v551 = 0;
      v547 = 0;
      v548 = v20;
      v558 = v39 - v63;
      v562 = v40 - v41 * v10;
      v68 = v5;
      v61 = v5;
      v62 = v544;
      v69 = v540;
      goto LABEL_66;
    }

    v42 = *(v9 + 64);
    v549 = *(v9 + 68);
    if (v5)
    {
      v40 = *(v9 + 80);
      v41 = 1;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    v550 = &v20[v549 * v39];
    v23 &= 1u;
    if (v14)
    {
      v58 = v5;
      v532 = v37;
      v533 = *(v9 + 60);
      v583 = v41;
      v585 = v23;
      v558 = *(v9 + 76);
      v562 = v40;
      v57 = 1;
      v551 = v20;
      v546 = v20;
LABEL_54:
      v545 = v57;
      shape_enum_clip_alloc(v10, v37, v14, v57, v19, 1, v35, v36, v10, v12);
      v60 = v59;
      v5 = v58;
      v554 = v58;
      v61 = v58;
      v62 = v544;
      v560 = v541;
      if (v59)
      {
        goto LABEL_875;
      }

      return 1;
    }

    v560 = v541 - (v23 * v10);
    if (!v20)
    {
      v532 = v37;
      v533 = *(v9 + 60);
      v64 = 0;
      v545 = 1;
      v63 = v10;
      goto LABEL_62;
    }

    v65 = v38 % v549;
    v66 = v37 % v42;
    v548 = v20;
    v558 = *(v9 + 76);
    v67 = &v20[v39 * v65];
    v20 = &v67[v66];
    v64 = &v67[v42];
    v562 = v40;
    v532 = v66;
    v533 = v65;
    v551 = v20;
    v547 = 0;
    if (v5)
    {
      v68 = &v5[v40 * v65 + v66];
      v545 = 1;
      v41 = 1;
      v61 = v68;
    }

    else
    {
      v68 = 0;
      v61 = 0;
      v545 = 1;
    }

    v62 = v544;
    v69 = v540;
    v63 = v10;
LABEL_66:
    v583 = v41;
    v585 = v23;
    v556 = v19 - v63;
    switch(v7)
    {
      case 0:
        v542 = v5;
        v554 = v68;
        v546 = v64;
        v537 = v19;
        v70 = v10;
        v71 = v556 - v10;
        v72 = v10 - 1;
        v73 = &v69[-v10 + 1];
        if (v545 >= 0)
        {
          v73 = v69;
          v71 = v556 + v10;
        }

        v74 = v587[0];
        v75 = v587[0] - 1;
        if (v71 >= 0)
        {
          LODWORD(v76) = v71;
        }

        else
        {
          v76 = -v71;
        }

        v564 = v10;
        v77 = v23;
        CGBlt_fillBytes(v10, v587[0], 0, &v73[(v71 * v75) & (v71 >> 63)], v76);
        if (v77)
        {
          v78 = v560 - v70;
          v79 = &v62[-v72];
          if (v545 >= 0)
          {
            v79 = v62;
            v78 = v560 + v70;
          }

          v80 = (v78 * v75) & (v78 >> 63);
          v62 = &v79[v80];
          if (v78 >= 0)
          {
            v81 = v78;
          }

          else
          {
            v81 = -v78;
          }

          v560 = v81;
          CGBlt_fillBytes(v564, v74, 0, &v79[v80], v81);
        }

        v19 = v537;
        goto LABEL_80;
      case 1:
        v210 = *(v9 + 1);
        if (v210 == 2)
        {
          if (v10 >= 32 && v42 <= 0x40)
          {
            v3.i32[0] = v42;
            v381 = vcnt_s8(v3);
            v381.i16[0] = vaddlv_u8(v381);
            if (v381.i32[0] <= 1u)
            {
              v542 = v5;
              v554 = v68;
              v546 = v64;
              v382 = v10;
              v580 = v587[0];
              v20 = v548;
              CGSFillDRAM64(v69, v10 + v556, v10, v587[0], v548, v558, v42, v549, v532, v533);
              if (v585)
              {
                v60 = v547;
                if (v583)
                {
                  CGSFillDRAM64(v62, v382 + v560, v382, v580, v5, v562, v42, v549, v532, v533);
                }

                else
                {
                  CGBlt_fillBytes(v382, v580, -1, v62, v382 + v560);
                }

                goto LABEL_82;
              }

LABEL_81:
              v60 = v547;
LABEL_82:
              v5 = v542;
              goto LABEL_873;
            }
          }
        }

        else if (v210 == 1)
        {
          v554 = v68;
          v211 = v10;
          v542 = v5;
          v539 = v19;
          v546 = v64;
          if (v545 < 0)
          {
            v212 = v558 - v10;
            v20 += -v10 + 1;
            v213 = v556 - v10;
            v69 += -v10 + 1;
          }

          else
          {
            v212 = v558 + v10;
            v213 = v556 + v10;
          }

          v392 = v587[0] - 1;
          if (v212 >= 0)
          {
            v393 = v212;
          }

          else
          {
            v393 = -v212;
          }

          if (v213 >= 0)
          {
            LODWORD(v394) = v213;
          }

          else
          {
            v394 = -v213;
          }

          v395 = v10;
          v581 = v587[0];
          v558 = v393;
          CGBlt_copyBytes(v10, v587[0], &v20[(v212 * v392) & (v212 >> 63)], &v69[(v213 * v392) & (v213 >> 63)], v393, v394);
          if (v585)
          {
            v60 = v547;
            v20 = v548;
            if (v583)
            {
              v396 = v562 - v211;
              v397 = &v61[-(v395 - 1)];
              v398 = v560 - v211;
              v399 = &v62[-(v395 - 1)];
              if (v545 >= 0)
              {
                v397 = v61;
                v399 = v62;
                v396 = v562 + v211;
                v398 = v560 + v211;
              }

              v400 = (v396 * v392) & (v396 >> 63);
              v61 = &v397[v400];
              if (v396 >= 0)
              {
                v401 = v396;
              }

              else
              {
                v401 = -v396;
              }

              v402 = (v398 * v392) & (v398 >> 63);
              v62 = &v399[v402];
              if (v398 >= 0)
              {
                v403 = v398;
              }

              else
              {
                v403 = -v398;
              }

              v560 = v403;
              v562 = v401;
              CGBlt_copyBytes(v395, v581, &v397[v400], &v399[v402], v401, v403);
            }

            else
            {
              v414 = v560 - v211;
              v415 = &v62[-(v395 - 1)];
              if (v545 >= 0)
              {
                v415 = v62;
                v414 = v560 + v211;
              }

              v416 = (v414 * v392) & (v414 >> 63);
              v62 = &v415[v416];
              if (v414 >= 0)
              {
                v417 = v414;
              }

              else
              {
                v417 = -v414;
              }

              v560 = v417;
              CGBlt_fillBytes(v395, v581, -1, &v415[v416], v417);
            }

            v19 = v539;
            goto LABEL_82;
          }

          v19 = v539;
LABEL_80:
          v20 = v548;
          goto LABEL_81;
        }

        if (v23)
        {
          v383 = v23;
          if (v41)
          {
            v374 = v551;
            do
            {
              v384 = v597[0];
              do
              {
                *v69 = *v20;
                *v62 = *v61;
                v69 += v545;
                v62 += v383;
                if (&v20[v545] >= v64)
                {
                  v385 = -v42;
                }

                else
                {
                  v385 = 0;
                }

                v61 += v41 + v385;
                v20 += v545 + v385;
                --v384;
              }

              while (v384);
              if (v550)
              {
                if (&v374[v558] >= v550)
                {
                  v386 = -(v562 * v549);
                }

                else
                {
                  v386 = 0;
                }

                v68 += v562 + v386;
                if (&v374[v558] >= v550)
                {
                  v387 = -(v558 * v549);
                }

                else
                {
                  v387 = 0;
                }

                v374 += v558 + v387;
                v64 += v558 + v387;
                v61 = v68;
                v20 = v374;
              }

              else
              {
                v20 += v558;
                v61 += v562;
              }

              v69 += v556;
              v62 += v560;
              --v587[0];
            }

            while (v587[0]);
          }

          else
          {
            v374 = v551;
            do
            {
              v404 = v597[0];
              do
              {
                *v69 = *v20;
                *v62 = -1;
                v69 += v545;
                v62 += v383;
                if (&v20[v545] >= v64)
                {
                  v405 = -v42;
                }

                else
                {
                  v405 = 0;
                }

                v61 += v405;
                v20 += v545 + v405;
                --v404;
              }

              while (v404);
              if (v550)
              {
                if (&v374[v558] >= v550)
                {
                  v406 = -(v562 * v549);
                }

                else
                {
                  v406 = 0;
                }

                v68 += v562 + v406;
                if (&v374[v558] >= v550)
                {
                  v407 = -(v558 * v549);
                }

                else
                {
                  v407 = 0;
                }

                v374 += v558 + v407;
                v64 += v558 + v407;
                v61 = v68;
                v20 = v374;
              }

              else
              {
                v20 += v558;
                v61 += v562;
              }

              v69 += v556;
              v62 += v560;
              --v587[0];
            }

            while (v587[0]);
          }

LABEL_870:
          v551 = v374;
        }

        else
        {
          v352 = v551;
          do
          {
            v388 = v597[0];
            do
            {
              *v69 = *v20;
              v69 += v545;
              if (&v20[v545] >= v64)
              {
                v389 = -v42;
              }

              else
              {
                v389 = 0;
              }

              v61 += v41 + v389;
              v20 += v545 + v389;
              --v388;
            }

            while (v388);
            if (v550)
            {
              if (&v352[v558] >= v550)
              {
                v390 = -(v562 * v549);
              }

              else
              {
                v390 = 0;
              }

              v68 += v562 + v390;
              if (&v352[v558] >= v550)
              {
                v391 = -(v558 * v549);
              }

              else
              {
                v391 = 0;
              }

              v352 += v558 + v391;
              v64 += v558 + v391;
              v61 = v68;
              v20 = v352;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            --v587[0];
          }

          while (v587[0]);
LABEL_834:
          v551 = v352;
        }

        goto LABEL_871;
      case 2:
        if (v23)
        {
          v171 = v23;
          v141 = v551;
          do
          {
            v172 = v597[0];
            do
            {
              v173 = *v61;
              if (*v61)
              {
                if (v173 == 255)
                {
                  *v69 = *v20;
                  LOBYTE(v174) = *v61;
                }

                else
                {
                  v175 = (*v69 | (*v62 << 16)) * (v173 ^ 0xFF);
                  v176 = ((v175 + 65537 + ((v175 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v175 + 1 + BYTE1(v175)) >> 8)) + (*v20 | (v173 << 24));
                  *v69 = v176;
                  v174 = HIBYTE(v176);
                }

                *v62 = v174;
              }

              v69 += v545;
              v62 += v171;
              if (&v20[v545] >= v64)
              {
                v177 = -v42;
              }

              else
              {
                v177 = 0;
              }

              v61 += v41 + v177;
              v20 += v545 + v177;
              --v172;
            }

            while (v172);
            if (v550)
            {
              if (&v141[v558] >= v550)
              {
                v178 = -(v562 * v549);
              }

              else
              {
                v178 = 0;
              }

              v68 += v562 + v178;
              if (&v141[v558] >= v550)
              {
                v179 = -(v558 * v549);
              }

              else
              {
                v179 = 0;
              }

              v141 += v558 + v179;
              v64 += v558 + v179;
              v61 = v68;
              v20 = v141;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            --v587[0];
          }

          while (v587[0]);
          goto LABEL_578;
        }

        v352 = v551;
        do
        {
          v358 = v597[0];
          do
          {
            v359 = *v61;
            if (*v61)
            {
              if (v359 == 255)
              {
                LOBYTE(v360) = *v20;
              }

              else
              {
                v360 = *v20 + ((*v69 * (v359 ^ 0xFF) + ((*v69 * (v359 ^ 0xFFu)) >> 8) + 1) >> 8);
              }

              *v69 = v360;
            }

            v69 += v545;
            if (&v20[v545] >= v64)
            {
              v361 = -v42;
            }

            else
            {
              v361 = 0;
            }

            v61 += v41 + v361;
            v20 += v545 + v361;
            --v358;
          }

          while (v358);
          if (v550)
          {
            if (&v352[v558] >= v550)
            {
              v362 = -(v562 * v549);
            }

            else
            {
              v362 = 0;
            }

            v68 += v562 + v362;
            if (&v352[v558] >= v550)
            {
              v363 = -(v558 * v549);
            }

            else
            {
              v363 = 0;
            }

            v352 += v558 + v363;
            v64 += v558 + v363;
            v61 = v68;
            v20 = v352;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          --v587[0];
        }

        while (v587[0]);
        goto LABEL_834;
      case 3:
        v190 = v23;
        if (v41)
        {
          v141 = v551;
          do
          {
            v191 = v597[0];
            do
            {
              v192 = *v62;
              if (v192 == 255)
              {
                *v69 = *v20;
                LOBYTE(v192) = *v61;
              }

              else if (*v62)
              {
                v193 = *v20;
                v194 = *v61;
                v195 = (v193 | (v194 << 16)) * (v192 ^ 0xFF) + 65537 + ((((v193 | (v194 << 16)) * (v192 ^ 0xFF)) >> 8) & 0xFF00FF);
                v196 = v193 | (v194 << 24);
                *v69 = v196 - BYTE1(v195);
                v192 = (v196 - (v195 & 0xFF000000 | BYTE1(v195))) >> 24;
              }

              else
              {
                *v69 = 0;
              }

              *v62 = v192;
              v69 += v545;
              v62 += v190;
              if (&v20[v545] >= v64)
              {
                v197 = -v42;
              }

              else
              {
                v197 = 0;
              }

              v61 += v41 + v197;
              v20 += v545 + v197;
              --v191;
            }

            while (v191);
            if (v550)
            {
              if (&v141[v558] >= v550)
              {
                v198 = -(v562 * v549);
              }

              else
              {
                v198 = 0;
              }

              v68 += v562 + v198;
              if (&v141[v558] >= v550)
              {
                v199 = -(v558 * v549);
              }

              else
              {
                v199 = 0;
              }

              v141 += v558 + v199;
              v64 += v558 + v199;
              v61 = v68;
              v20 = v141;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            --v587[0];
          }

          while (v587[0]);
          goto LABEL_578;
        }

        v352 = v551;
        do
        {
          v364 = v597[0];
          do
          {
            v365 = *v62;
            if (*v62)
            {
              if (v365 == 255)
              {
                LOBYTE(v365) = *v20;
              }

              else
              {
                v365 = *v20 - ((*v20 * (v365 ^ 0xFF) + ((*v20 * (v365 ^ 0xFF)) >> 8) + 1) >> 8);
              }
            }

            *v69 = v365;
            v69 += v545;
            v62 += v190;
            if (&v20[v545] >= v64)
            {
              v366 = -v42;
            }

            else
            {
              v366 = 0;
            }

            v61 += v366;
            v20 += v545 + v366;
            --v364;
          }

          while (v364);
          if (v550)
          {
            if (&v352[v558] >= v550)
            {
              v367 = -(v562 * v549);
            }

            else
            {
              v367 = 0;
            }

            v68 += v562 + v367;
            if (&v352[v558] >= v550)
            {
              v368 = -(v558 * v549);
            }

            else
            {
              v368 = 0;
            }

            v352 += v558 + v368;
            v64 += v558 + v368;
            v61 = v68;
            v20 = v352;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          --v587[0];
        }

        while (v587[0]);
        goto LABEL_834;
      case 4:
        v121 = v23;
        do
        {
          v122 = v597[0];
          do
          {
            v123 = *v62;
            if ((v123 ^ 0xFF) == 0xFF)
            {
              if (v41)
              {
                LOBYTE(v124) = *v61;
              }

              else
              {
                LOBYTE(v124) = -1;
              }
            }

            else if (v123 != 0xFF)
            {
              if (v41)
              {
                v125 = *v61;
              }

              else
              {
                v125 = 255;
              }

              v126 = *v20;
              v127 = (v126 | (v125 << 16)) * v123 + 65537 + ((((v126 | (v125 << 16)) * v123) >> 8) & 0xFF00FF);
              v128 = v126 | (v125 << 24);
              *v69 = v128 - BYTE1(v127);
              v124 = (v128 - (v127 & 0xFF000000 | BYTE1(v127))) >> 24;
            }

            else
            {
              LOBYTE(v124) = 0;
              *v69 = 0;
            }

            *v62 = v124;
            v69 += v545;
            v62 += v121;
            if (&v20[v545] >= v64)
            {
              v129 = -v42;
            }

            else
            {
              v129 = 0;
            }

            v61 += v41 + v129;
            v20 += v545 + v129;
            --v122;
          }

          while (v122);
          if (v550)
          {
            if (&v551[v558] >= v550)
            {
              v130 = -(v562 * v549);
            }

            else
            {
              v130 = 0;
            }

            v68 += v562 + v130;
            if (&v551[v558] >= v550)
            {
              v131 = -(v558 * v549);
            }

            else
            {
              v131 = 0;
            }

            v20 = &v551[v558 + v131];
            v64 += v558 + v131;
            v61 = v68;
            v551 = v20;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          --v587[0];
        }

        while (v587[0]);
        goto LABEL_871;
      case 5:
        v234 = v23;
        v235 = v41;
        v236 = v551;
        do
        {
          v237 = v597[0];
          do
          {
            v238 = (*v20 | (*v61 << 16)) * *v62 + (*v69 | (*v62 << 16)) * (*v61 ^ 0xFF);
            v239 = v238 + 65537 + ((v238 >> 8) & 0xFF00FF);
            *v69 = BYTE1(v239);
            *v62 = HIBYTE(v239);
            v69 += v545;
            v62 += v234;
            if (&v20[v545] >= v64)
            {
              v240 = -v42;
            }

            else
            {
              v240 = 0;
            }

            v61 += v235 + v240;
            v20 += v545 + v240;
            --v237;
          }

          while (v237);
          if (v550)
          {
            if (&v236[v558] >= v550)
            {
              v241 = -(v562 * v549);
            }

            else
            {
              v241 = 0;
            }

            v68 += v562 + v241;
            if (&v236[v558] >= v550)
            {
              v242 = -(v558 * v549);
            }

            else
            {
              v242 = 0;
            }

            v236 += v558 + v242;
            v64 += v558 + v242;
            v61 = v68;
            v20 = v236;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          --v587[0];
        }

        while (v587[0]);
        goto LABEL_555;
      case 6:
        do
        {
          v263 = v597[0];
          do
          {
            v264 = *v62;
            if (v264 != 0xFF)
            {
              if (~v264 == 255)
              {
                if (v41)
                {
                  LOBYTE(v265) = *v61;
                }

                else
                {
                  LOBYTE(v265) = -1;
                }

                *v69 = *v20;
              }

              else
              {
                if (v41)
                {
                  v266 = *v61 << 16;
                }

                else
                {
                  v266 = 16711680;
                }

                v267 = (v266 | *v20) * ~v264;
                v268 = ((v267 + 65537 + ((v267 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v267 + 1 + BYTE1(v267)) >> 8)) + (*v69 | (v264 << 24));
                *v69 = v268;
                v265 = HIBYTE(v268);
              }

              *v62 = v265;
            }

            v69 += v545;
            v62 += v23;
            if (&v20[v545] >= v64)
            {
              v269 = -v42;
            }

            else
            {
              v269 = 0;
            }

            v61 += v41 + v269;
            v20 += v545 + v269;
            --v263;
          }

          while (v263);
          if (v550)
          {
            if (&v551[v558] >= v550)
            {
              v270 = -(v562 * v549);
            }

            else
            {
              v270 = 0;
            }

            v68 += v562 + v270;
            if (&v551[v558] >= v550)
            {
              v271 = -(v558 * v549);
            }

            else
            {
              v271 = 0;
            }

            v20 = &v551[v558 + v271];
            v64 += v558 + v271;
            v61 = v68;
            v551 = v20;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          --v587[0];
        }

        while (v587[0]);
        goto LABEL_871;
      case 7:
        if (v23)
        {
          v200 = v23;
          v141 = v551;
          do
          {
            v201 = v597[0];
            do
            {
              v202 = *v61;
              if (v202 != 255)
              {
                if (*v61)
                {
                  v203 = *v69;
                  v204 = *v62;
                  v205 = (v203 | (v204 << 16)) * (v202 ^ 0xFF) + 65537 + ((((v203 | (v204 << 16)) * (v202 ^ 0xFF)) >> 8) & 0xFF00FF);
                  v206 = v203 | (v204 << 24);
                  *v69 = v206 - BYTE1(v205);
                  v202 = (v206 - (v205 & 0xFF000000 | BYTE1(v205))) >> 24;
                }

                else
                {
                  *v69 = 0;
                }

                *v62 = v202;
              }

              v69 += v545;
              v62 += v200;
              if (&v20[v545] >= v64)
              {
                v207 = -v42;
              }

              else
              {
                v207 = 0;
              }

              v61 += v41 + v207;
              v20 += v545 + v207;
              --v201;
            }

            while (v201);
            if (v550)
            {
              if (&v141[v558] >= v550)
              {
                v208 = -(v562 * v549);
              }

              else
              {
                v208 = 0;
              }

              v68 += v562 + v208;
              if (&v141[v558] >= v550)
              {
                v209 = -(v558 * v549);
              }

              else
              {
                v209 = 0;
              }

              v141 += v558 + v209;
              v64 += v558 + v209;
              v61 = v68;
              v20 = v141;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            --v587[0];
          }

          while (v587[0]);
LABEL_578:
          v551 = v141;
LABEL_871:
          v554 = v68;
          v546 = v64;
          v20 = v548;
          goto LABEL_872;
        }

        v352 = v551;
LABEL_751:
        v369 = v597[0];
        while (1)
        {
          v370 = *v61;
          if (!*v61)
          {
            goto LABEL_755;
          }

          if (v370 != 255)
          {
            break;
          }

LABEL_756:
          v69 += v545;
          if (&v20[v545] >= v64)
          {
            v371 = -v42;
          }

          else
          {
            v371 = 0;
          }

          v61 += v41 + v371;
          v20 += v545 + v371;
          if (!--v369)
          {
            if (v550)
            {
              if (&v352[v558] >= v550)
              {
                v372 = -(v562 * v549);
              }

              else
              {
                v372 = 0;
              }

              v68 += v562 + v372;
              if (&v352[v558] >= v550)
              {
                v373 = -(v558 * v549);
              }

              else
              {
                v373 = 0;
              }

              v352 += v558 + v373;
              v64 += v558 + v373;
              v61 = v68;
              v20 = v352;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            if (!--v587[0])
            {
              goto LABEL_834;
            }

            goto LABEL_751;
          }
        }

        v370 = *v69 - ((*v69 * (v370 ^ 0xFF) + ((*v69 * (v370 ^ 0xFF)) >> 8) + 1) >> 8);
LABEL_755:
        *v69 = v370;
        goto LABEL_756;
      case 8:
        if (v23)
        {
          v290 = v23;
          v141 = v551;
          do
          {
            v291 = v597[0];
            do
            {
              v292 = *v61;
              if ((v292 ^ 0xFF) != 0xFF)
              {
                if (v292 != 0xFF)
                {
                  v294 = *v69;
                  v295 = *v62;
                  v296 = (v294 | (v295 << 16)) * v292 + 65537 + ((((v294 | (v295 << 16)) * v292) >> 8) & 0xFF00FF);
                  v297 = v294 | (v295 << 24);
                  *v69 = v297 - BYTE1(v296);
                  v293 = (v297 - (v296 & 0xFF000000 | BYTE1(v296))) >> 24;
                }

                else
                {
                  LOBYTE(v293) = 0;
                  *v69 = 0;
                }

                *v62 = v293;
              }

              v69 += v545;
              v62 += v290;
              if (&v20[v545] >= v64)
              {
                v298 = -v42;
              }

              else
              {
                v298 = 0;
              }

              v61 += v41 + v298;
              v20 += v545 + v298;
              --v291;
            }

            while (v291);
            if (v550)
            {
              if (&v141[v558] >= v550)
              {
                v299 = -(v562 * v549);
              }

              else
              {
                v299 = 0;
              }

              v68 += v562 + v299;
              if (&v141[v558] >= v550)
              {
                v300 = -(v558 * v549);
              }

              else
              {
                v300 = 0;
              }

              v141 += v558 + v300;
              v64 += v558 + v300;
              v61 = v68;
              v20 = v141;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            --v587[0];
          }

          while (v587[0]);
          goto LABEL_578;
        }

        v374 = v551;
LABEL_772:
        v375 = v597[0];
        while (1)
        {
          v376 = *v61;
          if (v376 == 0xFF)
          {
            break;
          }

          if (~v376 != 255)
          {
            v377 = *v69 - ((*v69 * v376 + ((*v69 * v376) >> 8) + 1) >> 8);
LABEL_777:
            *v69 = v377;
          }

          v69 += v545;
          if (&v20[v545] >= v64)
          {
            v378 = -v42;
          }

          else
          {
            v378 = 0;
          }

          v61 += v41 + v378;
          v20 += v545 + v378;
          if (!--v375)
          {
            if (v550)
            {
              if (&v374[v558] >= v550)
              {
                v379 = -(v562 * v549);
              }

              else
              {
                v379 = 0;
              }

              v68 += v562 + v379;
              if (&v374[v558] >= v550)
              {
                v380 = -(v558 * v549);
              }

              else
              {
                v380 = 0;
              }

              v374 += v558 + v380;
              v64 += v558 + v380;
              v61 = v68;
              v20 = v374;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            if (!--v587[0])
            {
              goto LABEL_870;
            }

            goto LABEL_772;
          }
        }

        LOBYTE(v377) = 0;
        goto LABEL_777;
      case 9:
        v140 = v23;
        v141 = v551;
        do
        {
          v142 = v597[0];
          do
          {
            v143 = *v62;
            v144 = *v61;
            v145 = (*v20 | (v144 << 16)) * (v143 ^ 0xFF) + (*v69 | (v143 << 16)) * v144 + 65537 + ((((*v20 | (v144 << 16)) * (v143 ^ 0xFF) + (*v69 | (v143 << 16)) * v144) >> 8) & 0xFF00FF);
            *v69 = BYTE1(v145);
            *v62 = HIBYTE(v145);
            v69 += v545;
            v62 += v140;
            if (&v20[v545] >= v64)
            {
              v146 = -v42;
            }

            else
            {
              v146 = 0;
            }

            v61 += v41 + v146;
            v20 += v545 + v146;
            --v142;
          }

          while (v142);
          if (v550)
          {
            if (&v141[v558] >= v550)
            {
              v147 = -(v562 * v549);
            }

            else
            {
              v147 = 0;
            }

            v68 += v562 + v147;
            if (&v141[v558] >= v550)
            {
              v148 = -(v558 * v549);
            }

            else
            {
              v148 = 0;
            }

            v141 += v558 + v148;
            v64 += v558 + v148;
            v61 = v68;
            v20 = v141;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          --v587[0];
        }

        while (v587[0]);
        goto LABEL_578;
      case 10:
        v282 = v23;
        v283 = v41;
        v236 = v551;
        do
        {
          v284 = v597[0];
          do
          {
            v285 = (*v20 | (*v61 << 16)) * (*v62 ^ 0xFF) + (*v69 | (*v62 << 16)) * (*v61 ^ 0xFF);
            v286 = v285 + 65537 + ((v285 >> 8) & 0xFF00FF);
            *v69 = BYTE1(v286);
            *v62 = HIBYTE(v286);
            v69 += v545;
            v62 += v282;
            if (&v20[v545] >= v64)
            {
              v287 = -v42;
            }

            else
            {
              v287 = 0;
            }

            v61 += v283 + v287;
            v20 += v545 + v287;
            --v284;
          }

          while (v284);
          if (v550)
          {
            if (&v236[v558] >= v550)
            {
              v288 = -(v562 * v549);
            }

            else
            {
              v288 = 0;
            }

            v68 += v562 + v288;
            if (&v236[v558] >= v550)
            {
              v289 = -(v558 * v549);
            }

            else
            {
              v289 = 0;
            }

            v236 += v558 + v289;
            v64 += v558 + v289;
            v61 = v68;
            v20 = v236;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          --v587[0];
        }

        while (v587[0]);
LABEL_555:
        v551 = v236;
        goto LABEL_871;
      case 11:
        if (v23)
        {
          v113 = v23;
          do
          {
            v114 = v597[0];
            do
            {
              if (v41)
              {
                v115 = *v61;
              }

              else
              {
                v115 = 255;
              }

              v116 = ((*v62 - *v69) | (*v62 << 16)) + (v115 - *v20) + (v115 << 16);
              v117 = (255 * ((v116 >> 8) & 0x10001)) | v116;
              *v69 = BYTE2(v117) - v117;
              *v62 = BYTE2(v117);
              v69 += v545;
              v62 += v113;
              if (&v20[v545] >= v64)
              {
                v118 = -v42;
              }

              else
              {
                v118 = 0;
              }

              v61 += v41 + v118;
              v20 += v545 + v118;
              --v114;
            }

            while (v114);
            if (v550)
            {
              if (&v551[v558] >= v550)
              {
                v119 = -(v562 * v549);
              }

              else
              {
                v119 = 0;
              }

              v68 += v562 + v119;
              if (&v551[v558] >= v550)
              {
                v120 = -(v558 * v549);
              }

              else
              {
                v120 = 0;
              }

              v20 = &v551[v558 + v120];
              v64 += v558 + v120;
              v61 = v68;
              v551 = v20;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            --v587[0];
          }

          while (v587[0]);
        }

        else
        {
          do
          {
            v345 = v597[0];
            do
            {
              if (v41)
              {
                v346 = *v61;
              }

              else
              {
                v346 = 255;
              }

              v347 = v346 - *v20 + (*v69 ^ 0xFF);
              v348 = HIBYTE(v347) | (2 * HIBYTE(v347)) | (4 * (HIBYTE(v347) | (2 * HIBYTE(v347))));
              *v69 = ~(v347 | (16 * v348) | v348);
              v69 += v545;
              if (&v20[v545] >= v64)
              {
                v349 = -v42;
              }

              else
              {
                v349 = 0;
              }

              v61 += v41 + v349;
              v20 += v545 + v349;
              --v345;
            }

            while (v345);
            if (v550)
            {
              if (&v551[v558] >= v550)
              {
                v350 = -(v562 * v549);
              }

              else
              {
                v350 = 0;
              }

              v68 += v562 + v350;
              if (&v551[v558] >= v550)
              {
                v351 = -(v558 * v549);
              }

              else
              {
                v351 = 0;
              }

              v20 = &v551[v558 + v351];
              v64 += v558 + v351;
              v61 = v68;
              v551 = v20;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            --v587[0];
          }

          while (v587[0]);
        }

        goto LABEL_871;
      case 12:
        if (v23)
        {
          v132 = v23;
          do
          {
            v133 = v597[0];
            do
            {
              if (v41)
              {
                v134 = *v61 << 16;
              }

              else
              {
                v134 = 16711680;
              }

              v135 = (*v69 | (*v62 << 16)) + *v20 + v134;
              v136 = (255 * ((v135 >> 8) & 0x10001)) | v135;
              *v69 = v136;
              *v62 = BYTE2(v136);
              v69 += v545;
              v62 += v132;
              if (&v20[v545] >= v64)
              {
                v137 = -v42;
              }

              else
              {
                v137 = 0;
              }

              v61 += v41 + v137;
              v20 += v545 + v137;
              --v133;
            }

            while (v133);
            if (v550)
            {
              if (&v551[v558] >= v550)
              {
                v138 = -(v562 * v549);
              }

              else
              {
                v138 = 0;
              }

              v68 += v562 + v138;
              if (&v551[v558] >= v550)
              {
                v139 = -(v558 * v549);
              }

              else
              {
                v139 = 0;
              }

              v20 = &v551[v558 + v139];
              v64 += v558 + v139;
              v61 = v68;
              v551 = v20;
            }

            else
            {
              v20 += v558;
              v61 += v562;
            }

            v69 += v556;
            v62 += v560;
            --v587[0];
          }

          while (v587[0]);
          goto LABEL_871;
        }

        v352 = v551;
        do
        {
          v353 = v597[0];
          do
          {
            v354 = *v20 + *v69;
            *v69 = -(v354 >> 8) | v354;
            v69 += v545;
            if (&v20[v545] >= v64)
            {
              v355 = -v42;
            }

            else
            {
              v355 = 0;
            }

            v61 += v41 + v355;
            v20 += v545 + v355;
            --v353;
          }

          while (v353);
          if (v550)
          {
            if (&v352[v558] >= v550)
            {
              v356 = -(v562 * v549);
            }

            else
            {
              v356 = 0;
            }

            v68 += v562 + v356;
            if (&v352[v558] >= v550)
            {
              v357 = -(v558 * v549);
            }

            else
            {
              v357 = 0;
            }

            v352 += v558 + v357;
            v64 += v558 + v357;
            v61 = v68;
            v20 = v352;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          --v587[0];
        }

        while (v587[0]);
        goto LABEL_834;
      case 13:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v574 = v23;
        v253 = v41;
        v254 = -v42;
        while (1)
        {
          v255 = v597[0];
          v256 = v64;
          do
          {
            if (v41)
            {
              v257 = *v61;
              if (!*v61)
              {
                goto LABEL_476;
              }

              if (v23)
              {
                goto LABEL_471;
              }
            }

            else
            {
              v257 = 255;
              if (v23)
              {
LABEL_471:
                if (*v62)
                {
                  v258 = PDAmultiplyPDA_18018(*v69, *v62, *v20, v257);
                  v64 = v256;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v258;
                  *v62 = HIBYTE(v258);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v257;
                }

                goto LABEL_476;
              }
            }

            v259 = PDAmultiplyPDA_18018(*v69, 255, *v20, v257);
            v64 = v256;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v259;
LABEL_476:
            v69 += v545;
            v62 += *v574;
            if (&v20[v545] >= v64)
            {
              v260 = v254;
            }

            else
            {
              v260 = 0;
            }

            v61 += v253 + v260;
            v20 += v545 + v260;
            --v255;
          }

          while (v255);
          if (v550)
          {
            v261 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v261 = 0;
            }

            v61 = (v554 + v562 + v261);
            v262 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v262 = 0;
            }

            v20 = &v551[v558 + v262];
            v64 += v558 + v262;
            v551 = v20;
            v554 += v562 + v261;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 14:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v567 = v23;
        v103 = v41;
        v104 = -v42;
        while (1)
        {
          v105 = v597[0];
          v106 = v64;
          do
          {
            if (v41)
            {
              v107 = *v61;
              if (!*v61)
              {
                goto LABEL_139;
              }

              if (v23)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v107 = 255;
              if (v23)
              {
LABEL_134:
                if (*v62)
                {
                  v108 = PDAscreenPDA_18019(*v69, *v62, *v20, v107);
                  v64 = v106;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v108;
                  *v62 = HIBYTE(v108);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v107;
                }

                goto LABEL_139;
              }
            }

            v109 = PDAscreenPDA_18019(*v69, 255, *v20, v107);
            v64 = v106;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v109;
LABEL_139:
            v69 += v545;
            v62 += *v567;
            if (&v20[v545] >= v64)
            {
              v110 = v104;
            }

            else
            {
              v110 = 0;
            }

            v61 += v103 + v110;
            v20 += v545 + v110;
            --v105;
          }

          while (v105);
          if (v550)
          {
            v111 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v111 = 0;
            }

            v61 = (v554 + v562 + v111);
            v112 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v112 = 0;
            }

            v20 = &v551[v558 + v112];
            v64 += v558 + v112;
            v551 = v20;
            v554 += v562 + v111;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 15:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v570 = v23;
        v180 = v41;
        v181 = -v42;
        while (1)
        {
          v182 = v597[0];
          v183 = v64;
          do
          {
            if (v41)
            {
              v184 = *v61;
              if (!*v61)
              {
                goto LABEL_317;
              }

              if (v23)
              {
                goto LABEL_312;
              }
            }

            else
            {
              v184 = 255;
              if (v23)
              {
LABEL_312:
                if (*v62)
                {
                  v185 = PDAoverlayPDA_18020(*v69, *v62, *v20, v184);
                  v64 = v183;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v185;
                  *v62 = HIBYTE(v185);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v184;
                }

                goto LABEL_317;
              }
            }

            v186 = PDAoverlayPDA_18020(*v69, 0xFFu, *v20, v184);
            v64 = v183;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v186;
LABEL_317:
            v69 += v545;
            v62 += *v570;
            if (&v20[v545] >= v64)
            {
              v187 = v181;
            }

            else
            {
              v187 = 0;
            }

            v61 += v180 + v187;
            v20 += v545 + v187;
            --v182;
          }

          while (v182);
          if (v550)
          {
            v188 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v188 = 0;
            }

            v61 = (v554 + v562 + v188);
            v189 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v189 = 0;
            }

            v20 = &v551[v558 + v189];
            v64 += v558 + v189;
            v551 = v20;
            v554 += v562 + v188;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 16:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v566 = v23;
        v93 = v41;
        v94 = -v42;
        while (1)
        {
          v95 = v597[0];
          v96 = v64;
          do
          {
            if (v41)
            {
              v97 = *v61;
              if (!*v61)
              {
                goto LABEL_116;
              }

              if (v23)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v97 = 255;
              if (v23)
              {
LABEL_111:
                if (*v62)
                {
                  v98 = PDAdarkenPDA_18022(*v69, *v62, *v20, v97);
                  v64 = v96;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v98;
                  *v62 = HIBYTE(v98);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v97;
                }

                goto LABEL_116;
              }
            }

            v99 = PDAdarkenPDA_18022(*v69, 0xFFu, *v20, v97);
            v64 = v96;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v99;
LABEL_116:
            v69 += v545;
            v62 += *v566;
            if (&v20[v545] >= v64)
            {
              v100 = v94;
            }

            else
            {
              v100 = 0;
            }

            v61 += v93 + v100;
            v20 += v545 + v100;
            --v95;
          }

          while (v95);
          if (v550)
          {
            v101 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v101 = 0;
            }

            v61 = (v554 + v562 + v101);
            v102 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v102 = 0;
            }

            v20 = &v551[v558 + v102];
            v64 += v558 + v102;
            v551 = v20;
            v554 += v562 + v101;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 17:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v571 = v23;
        v214 = v41;
        v215 = -v42;
        while (1)
        {
          v216 = v597[0];
          v217 = v64;
          do
          {
            if (v41)
            {
              v218 = *v61;
              if (!*v61)
              {
                goto LABEL_390;
              }

              if (v23)
              {
                goto LABEL_385;
              }
            }

            else
            {
              v218 = 255;
              if (v23)
              {
LABEL_385:
                if (*v62)
                {
                  v219 = PDAlightenPDA_18021(*v69, *v62, *v20, v218);
                  v64 = v217;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v219;
                  *v62 = HIBYTE(v219);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v218;
                }

                goto LABEL_390;
              }
            }

            v220 = PDAlightenPDA_18021(*v69, 0xFFu, *v20, v218);
            v64 = v217;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v220;
LABEL_390:
            v69 += v545;
            v62 += *v571;
            if (&v20[v545] >= v64)
            {
              v221 = v215;
            }

            else
            {
              v221 = 0;
            }

            v61 += v214 + v221;
            v20 += v545 + v221;
            --v216;
          }

          while (v216);
          if (v550)
          {
            v222 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v222 = 0;
            }

            v61 = (v554 + v562 + v222);
            v223 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v223 = 0;
            }

            v20 = &v551[v558 + v223];
            v64 += v558 + v223;
            v551 = v20;
            v554 += v562 + v222;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 18:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v575 = v23;
        v272 = v41;
        v273 = -v42;
        while (1)
        {
          v274 = v597[0];
          v275 = v64;
          do
          {
            if (v41)
            {
              v276 = *v61;
              if (!*v61)
              {
                goto LABEL_526;
              }

              if (v23)
              {
                goto LABEL_521;
              }
            }

            else
            {
              v276 = 255;
              if (v23)
              {
LABEL_521:
                if (*v62)
                {
                  v277 = PDAcolordodgePDA_18023(*v69, *v62, *v20, v276);
                  v64 = v275;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v277;
                  *v62 = HIBYTE(v277);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v276;
                }

                goto LABEL_526;
              }
            }

            v278 = PDAcolordodgePDA_18023(*v69, 0xFFu, *v20, v276);
            v64 = v275;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v278;
LABEL_526:
            v69 += v545;
            v62 += *v575;
            if (&v20[v545] >= v64)
            {
              v279 = v273;
            }

            else
            {
              v279 = 0;
            }

            v61 += v272 + v279;
            v20 += v545 + v279;
            --v274;
          }

          while (v274);
          if (v550)
          {
            v280 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v280 = 0;
            }

            v61 = (v554 + v562 + v280);
            v281 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v281 = 0;
            }

            v20 = &v551[v558 + v281];
            v64 += v558 + v281;
            v551 = v20;
            v554 += v562 + v280;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 19:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v577 = v23;
        v312 = v41;
        v313 = -v42;
        while (1)
        {
          v314 = v597[0];
          v315 = v64;
          do
          {
            if (v41)
            {
              v316 = *v61;
              if (!*v61)
              {
                goto LABEL_612;
              }

              if (v23)
              {
                goto LABEL_607;
              }
            }

            else
            {
              v316 = 255;
              if (v23)
              {
LABEL_607:
                if (*v62)
                {
                  v317 = PDAcolorburnPDA_18024(*v69, *v62, *v20, v316);
                  v64 = v315;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v317;
                  *v62 = HIBYTE(v317);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v316;
                }

                goto LABEL_612;
              }
            }

            v318 = PDAcolorburnPDA_18024(*v69, 0xFFu, *v20, v316);
            v64 = v315;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v318;
LABEL_612:
            v69 += v545;
            v62 += *v577;
            if (&v20[v545] >= v64)
            {
              v319 = v313;
            }

            else
            {
              v319 = 0;
            }

            v61 += v312 + v319;
            v20 += v545 + v319;
            --v314;
          }

          while (v314);
          if (v550)
          {
            v320 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v320 = 0;
            }

            v61 = (v554 + v562 + v320);
            v321 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v321 = 0;
            }

            v20 = &v551[v558 + v321];
            v64 += v558 + v321;
            v551 = v20;
            v554 += v562 + v320;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 20:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v572 = v23;
        v224 = v41;
        v225 = -v42;
        while (1)
        {
          v226 = v597[0];
          v227 = v64;
          do
          {
            if (v41)
            {
              v228 = *v61;
              if (!*v61)
              {
                goto LABEL_413;
              }

              if (v23)
              {
                goto LABEL_408;
              }
            }

            else
            {
              v228 = 255;
              if (v23)
              {
LABEL_408:
                if (*v62)
                {
                  v229 = PDAsoftlightPDA_18026(*v69, *v62, *v20, v228);
                  v64 = v227;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v229;
                  *v62 = HIBYTE(v229);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v228;
                }

                goto LABEL_413;
              }
            }

            v230 = PDAsoftlightPDA_18026(*v69, 255, *v20, v228);
            v64 = v227;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v230;
LABEL_413:
            v69 += v545;
            v62 += *v572;
            if (&v20[v545] >= v64)
            {
              v231 = v225;
            }

            else
            {
              v231 = 0;
            }

            v61 += v224 + v231;
            v20 += v545 + v231;
            --v226;
          }

          while (v226);
          if (v550)
          {
            v232 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v232 = 0;
            }

            v61 = (v554 + v562 + v232);
            v233 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v233 = 0;
            }

            v20 = &v551[v558 + v233];
            v64 += v558 + v233;
            v551 = v20;
            v554 += v562 + v232;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 21:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v573 = v23;
        v243 = v41;
        v244 = -v42;
        while (1)
        {
          v245 = v597[0];
          v246 = v64;
          do
          {
            if (v41)
            {
              v247 = *v61;
              if (!*v61)
              {
                goto LABEL_453;
              }

              if (v23)
              {
                goto LABEL_448;
              }
            }

            else
            {
              v247 = 255;
              if (v23)
              {
LABEL_448:
                if (*v62)
                {
                  v248 = PDAhardlightPDA_18025(*v69, *v62, *v20, v247);
                  v64 = v246;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v248;
                  *v62 = HIBYTE(v248);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v247;
                }

                goto LABEL_453;
              }
            }

            v249 = PDAhardlightPDA_18025(*v69, 0xFFu, *v20, v247);
            v64 = v246;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v249;
LABEL_453:
            v69 += v545;
            v62 += *v573;
            if (&v20[v545] >= v64)
            {
              v250 = v244;
            }

            else
            {
              v250 = 0;
            }

            v61 += v243 + v250;
            v20 += v545 + v250;
            --v245;
          }

          while (v245);
          if (v550)
          {
            v251 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v251 = 0;
            }

            v61 = (v554 + v562 + v251);
            v252 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v252 = 0;
            }

            v20 = &v551[v558 + v252];
            v64 += v558 + v252;
            v551 = v20;
            v554 += v562 + v251;
          }

          else
          {
            v20 += v558;
            v61 += v562;
          }

          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 22:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v576 = v23;
        v301 = v41;
        v302 = -v42;
        while (1)
        {
          v303 = v597[0];
          v304 = v64;
          do
          {
            if (v41)
            {
              v305 = *v61;
              if (!*v61)
              {
                goto LABEL_589;
              }

              if (v23)
              {
                goto LABEL_584;
              }
            }

            else
            {
              v305 = 255;
              if (v23)
              {
LABEL_584:
                if (*v62)
                {
                  v306 = PDAdifferencePDA_18027(*v69, *v62, *v20, v305);
                  v64 = v304;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v306;
                  *v62 = HIBYTE(v306);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v305;
                }

                goto LABEL_589;
              }
            }

            v307 = PDAdifferencePDA_18027(*v69, 0xFFu, *v20, v305);
            v64 = v304;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v307;
LABEL_589:
            v69 += v545;
            v62 += *v576;
            if (&v20[v545] >= v64)
            {
              v308 = v302;
            }

            else
            {
              v308 = 0;
            }

            v61 += v301 + v308;
            v20 += v545 + v308;
            --v303;
          }

          while (v303);
          if (v550)
          {
            v309 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v309 = 0;
            }

            v310 = (v554 + v562 + v309);
            v311 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v311 = 0;
            }

            v20 = &v551[v558 + v311];
            v64 += v558 + v311;
            v61 = v310;
            v551 = v20;
          }

          else
          {
            v20 += v558;
            v61 += v562;
            v310 = v554;
          }

          v554 = v310;
          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 23:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v578 = v23;
        v322 = v41;
        v323 = -v42;
        while (1)
        {
          v324 = v597[0];
          v325 = v64;
          do
          {
            if (v41)
            {
              v326 = *v61;
              if (!*v61)
              {
                goto LABEL_635;
              }

              if (v23)
              {
                goto LABEL_630;
              }
            }

            else
            {
              v326 = 255;
              if (v23)
              {
LABEL_630:
                if (*v62)
                {
                  v327 = PDAexclusionPDA_18028(*v69, *v62, *v20, v326);
                  v64 = v325;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v327;
                  *v62 = HIBYTE(v327);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v326;
                }

                goto LABEL_635;
              }
            }

            v328 = PDAexclusionPDA_18028(*v69, 0xFFu, *v20, v326);
            v64 = v325;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v328;
LABEL_635:
            v69 += v545;
            v62 += *v578;
            if (&v20[v545] >= v64)
            {
              v329 = v323;
            }

            else
            {
              v329 = 0;
            }

            v61 += v322 + v329;
            v20 += v545 + v329;
            --v324;
          }

          while (v324);
          if (v550)
          {
            v330 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v330 = 0;
            }

            v331 = (v554 + v562 + v330);
            v332 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v332 = 0;
            }

            v20 = &v551[v558 + v332];
            v64 += v558 + v332;
            v61 = v331;
            v551 = v20;
          }

          else
          {
            v20 += v558;
            v61 += v562;
            v331 = v554;
          }

          v554 = v331;
          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 24:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v569 = v23;
        v160 = v41;
        v161 = -v42;
        while (1)
        {
          v162 = v597[0];
          v163 = v64;
          do
          {
            if (v41)
            {
              v164 = *v61;
              if (!*v61)
              {
                goto LABEL_271;
              }

              if (v23)
              {
                goto LABEL_266;
              }
            }

            else
            {
              v164 = 255;
              if (v23)
              {
LABEL_266:
                if (*v62)
                {
                  v165 = PDAhuePDA_18029(*v69, *v62, *v20, v164);
                  v64 = v163;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v165;
                  *v62 = HIBYTE(v165);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v164;
                }

                goto LABEL_271;
              }
            }

            v166 = PDAhuePDA_18029(*v69, 0xFFu, *v20, v164);
            v64 = v163;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v166;
LABEL_271:
            v69 += v545;
            v62 += *v569;
            if (&v20[v545] >= v64)
            {
              v167 = v161;
            }

            else
            {
              v167 = 0;
            }

            v61 += v160 + v167;
            v20 += v545 + v167;
            --v162;
          }

          while (v162);
          if (v550)
          {
            v168 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v168 = 0;
            }

            v169 = (v554 + v562 + v168);
            v170 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v170 = 0;
            }

            v20 = &v551[v558 + v170];
            v64 += v558 + v170;
            v61 = v169;
            v551 = v20;
          }

          else
          {
            v20 += v558;
            v61 += v562;
            v169 = v554;
          }

          v554 = v169;
          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 25:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v568 = v23;
        v149 = v41;
        v150 = -v42;
        while (1)
        {
          v151 = v597[0];
          v152 = v64;
          do
          {
            if (v41)
            {
              v153 = *v61;
              if (!*v61)
              {
                goto LABEL_248;
              }

              if (v23)
              {
                goto LABEL_243;
              }
            }

            else
            {
              v153 = 255;
              if (v23)
              {
LABEL_243:
                if (*v62)
                {
                  v154 = PDAhuePDA_18029(*v69, *v62, *v20, v153);
                  v64 = v152;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v154;
                  *v62 = HIBYTE(v154);
                }

                else
                {
                  *v69 = *v20;
                  *v62 = v153;
                }

                goto LABEL_248;
              }
            }

            v155 = PDAhuePDA_18029(*v69, 0xFFu, *v20, v153);
            v64 = v152;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v155;
LABEL_248:
            v69 += v545;
            v62 += *v568;
            if (&v20[v545] >= v64)
            {
              v156 = v150;
            }

            else
            {
              v156 = 0;
            }

            v61 += v149 + v156;
            v20 += v545 + v156;
            --v151;
          }

          while (v151);
          if (v550)
          {
            v157 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v157 = 0;
            }

            v158 = (v554 + v562 + v157);
            v159 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v159 = 0;
            }

            v20 = &v551[v558 + v159];
            v64 += v558 + v159;
            v61 = v158;
            v551 = v20;
          }

          else
          {
            v20 += v558;
            v61 += v562;
            v158 = v554;
          }

          v554 = v158;
          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 26:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v579 = v23;
        v333 = v41;
        v334 = -v42;
        while (1)
        {
          v335 = v597[0];
          v336 = v64;
          do
          {
            if (v41)
            {
              v337 = *v61;
              if (!*v61)
              {
                goto LABEL_658;
              }

              if (v23)
              {
                goto LABEL_653;
              }
            }

            else
            {
              v337 = 255;
              if (v23)
              {
LABEL_653:
                v338 = *v20;
                if (*v62)
                {
                  v339 = PDAluminosityPDA_18031(v338, v337, *v69, *v62);
                  v64 = v336;
                  v41 = v583;
                  LODWORD(v23) = v585;
                  *v69 = v339;
                  *v62 = HIBYTE(v339);
                }

                else
                {
                  *v69 = v338;
                  *v62 = v337;
                }

                goto LABEL_658;
              }
            }

            v340 = PDAluminosityPDA_18031(*v20, v337, *v69, 0xFFu);
            v64 = v336;
            v41 = v583;
            LODWORD(v23) = v585;
            *v69 = v340;
LABEL_658:
            v69 += v545;
            v62 += *v579;
            if (&v20[v545] >= v64)
            {
              v341 = v334;
            }

            else
            {
              v341 = 0;
            }

            v61 += v333 + v341;
            v20 += v545 + v341;
            --v335;
          }

          while (v335);
          if (v550)
          {
            v342 = -(v562 * v549);
            if (&v551[v558] < v550)
            {
              v342 = 0;
            }

            v343 = (v554 + v562 + v342);
            v344 = -(v558 * v549);
            if (&v551[v558] < v550)
            {
              v344 = 0;
            }

            v20 = &v551[v558 + v344];
            v64 += v558 + v344;
            v61 = v343;
            v551 = v20;
          }

          else
          {
            v20 += v558;
            v61 += v562;
            v343 = v554;
          }

          v554 = v343;
          v69 += v556;
          v62 += v560;
          if (!--v587[0])
          {
            goto LABEL_670;
          }
        }

      case 27:
        v554 = v68;
        v536 = v42;
        v538 = v19;
        v543 = v5;
        *v565 = v23;
        v82 = v41;
        v83 = -v42;
        break;
      default:
        goto LABEL_871;
    }

LABEL_84:
    v84 = v597[0];
    v85 = v64;
    while (1)
    {
      if (v41)
      {
        v86 = *v61;
        if (!*v61)
        {
          goto LABEL_93;
        }

        if (!v23)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v86 = 255;
        if (!v23)
        {
LABEL_91:
          v88 = PDAluminosityPDA_18031(*v69, 0xFFu, *v20, v86);
          v64 = v85;
          v41 = v583;
          LODWORD(v23) = v585;
          *v69 = v88;
          goto LABEL_93;
        }
      }

      if (*v62)
      {
        v87 = PDAluminosityPDA_18031(*v69, *v62, *v20, v86);
        v64 = v85;
        v41 = v583;
        LODWORD(v23) = v585;
        *v69 = v87;
        *v62 = HIBYTE(v87);
      }

      else
      {
        *v69 = *v20;
        *v62 = v86;
      }

LABEL_93:
      v69 += v545;
      v62 += *v565;
      if (&v20[v545] >= v64)
      {
        v89 = v83;
      }

      else
      {
        v89 = 0;
      }

      v61 += v82 + v89;
      v20 += v545 + v89;
      if (!--v84)
      {
        if (v550)
        {
          v90 = -(v562 * v549);
          if (&v551[v558] < v550)
          {
            v90 = 0;
          }

          v91 = (v554 + v562 + v90);
          v92 = -(v558 * v549);
          if (&v551[v558] < v550)
          {
            v92 = 0;
          }

          v20 = &v551[v558 + v92];
          v64 += v558 + v92;
          v61 = v91;
          v551 = v20;
        }

        else
        {
          v20 += v558;
          v61 += v562;
          v91 = v554;
        }

        v554 = v91;
        v69 += v556;
        v62 += v560;
        if (!--v587[0])
        {
LABEL_670:
          v546 = v64;
          v9 = v534;
          v7 = v535;
          v5 = v543;
          v19 = v538;
          v20 = v548;
          v42 = v536;
LABEL_872:
          v60 = v547;
LABEL_873:
          if (!v60)
          {
            return 1;
          }

          v586 = 0;
LABEL_875:
          if (!shape_enum_clip_next(v60, &v586 + 1, &v586, v597, v587))
          {
            v55 = v60;
            goto LABEL_1168;
          }

          v547 = v60;
          v548 = v20;
          if (v550)
          {
            v69 = (v540 + v19 * v586 + SHIDWORD(v586));
            v408 = (v586 + *(v9 + 60)) % v549;
            v63 = v597[0];
            v409 = (HIDWORD(v586) + *(v9 + 56)) % v42;
            v410 = &v20[v558 * v408];
            v20 = &v410[v409];
            v64 = &v410[v42];
            v23 = v585;
            if (v585)
            {
              v62 = &v544[v541 * v586 + SHIDWORD(v586)];
            }

            v411 = v560;
            if (v585)
            {
              v411 = v541 - v597[0];
            }

            v560 = v411;
            if (v583)
            {
              v41 = v583;
            }

            else
            {
              v41 = 0;
            }

            v68 = v554;
            if (v583)
            {
              v68 = &v5[v562 * v408 + v409];
              v61 = v68;
            }

            LODWORD(v10) = v597[0];
            v551 = v20;
            v532 = (HIDWORD(v586) + *(v9 + 56)) % v42;
            v533 = (v586 + *(v9 + 60)) % v549;
          }

          else
          {
            LODWORD(v10) = v597[0];
            v69 = (v540 + v19 * v586 + SHIDWORD(v586) * v545);
            v63 = v597[0] * v545;
            v20 += v586 * v42 + SHIDWORD(v586) * v545;
            v558 = v42 - v597[0] * v545;
            v23 = v585;
            if (v585)
            {
              v62 = &v544[v541 * v586 + SHIDWORD(v586) * v545];
            }

            v412 = v560;
            if (v585)
            {
              v412 = v541 - v597[0] * v545;
            }

            v560 = v412;
            if (v583)
            {
              v41 = v583;
            }

            else
            {
              v41 = 0;
            }

            v550 = 0;
            if (v583)
            {
              v61 = &v5[v586 * v549 + SHIDWORD(v586) * v545];
            }

            v413 = v562;
            if (v583)
            {
              v413 = v549 - v63;
            }

            v562 = v413;
            v64 = v546;
            v68 = v554;
          }

          goto LABEL_66;
        }

        goto LABEL_84;
      }
    }
  }

  v15 = *(v2 + 128);
  if ((v15 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      W8_mark_constmask(v2, v7);
    }

    else
    {
      W8_mark_pixelmask(v2, v7);
    }

    return 1;
  }

  v24 = *(v2 + 112);
  v25 = *(v2 + 116);
  v26 = (v24 + 15) & 0xFFFFFFF0;
  v27 = v26 * v25;
  if (v27 <= 4096)
  {
    v29 = v597;
LABEL_38:
    CGSConvertBitsToMask(v14, *(v9 + 124), v29, v26, v24, v25, v15);
    v50 = *(v9 + 112);
    v593 = *(v9 + 96);
    v594 = v50;
    v51 = *(v9 + 144);
    v595 = *(v9 + 128);
    v596 = v51;
    v52 = *(v9 + 48);
    v589 = *(v9 + 32);
    v590 = v52;
    v53 = *(v9 + 80);
    v591 = *(v9 + 64);
    v592 = v53;
    v54 = *(v9 + 16);
    *v587 = *v9;
    v588 = v54;
    HIDWORD(v594) = (v24 + 15) & 0xFFFFFFF0;
    *(&v595 + 1) = v29;
    if (BYTE1(v587[0]) << 8 == 1024)
    {
      W8_mark_constmask(v587, v7);
    }

    else
    {
      W8_mark_pixelmask(v587, v7);
    }

    if (v29 != v597)
    {
      v55 = v29;
      goto LABEL_1168;
    }

    return 1;
  }

  v28 = malloc_type_malloc(v27, 0x97CEE3C3uLL);
  if (v28)
  {
    v29 = v28;
    v14 = *(v9 + 136);
    v15 = *(v9 + 128);
    goto LABEL_38;
  }

  return 1;
}

uint64_t W8_mark_constmask(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = *v4 << 24;
  }

  else
  {
    v5 = -16777216;
  }

  v7 = *(a1 + 4);
  v6 = *(a1 + 8);
  v250 = *(a1 + 28);
  v8 = *(a1 + 136);
  v246 = *(a1 + 40);
  v9 = **(a1 + 88);
  v10 = v5 | v9;
  pthread_mutex_lock(&W8_cacheColorLock);
  v11 = W8_cacheColor;
  if (W8_cacheColor && *(W8_cacheColor + 16) == v10)
  {
    result = pthread_mutex_unlock(&W8_cacheColorLock);
    v13 = v11 + 8;
  }

  else
  {
    v248 = v7;
    v14 = 0;
    while (1)
    {
      if (!v11)
      {
        goto LABEL_12;
      }

      v15 = v14;
      v14 = v11;
      if (*(v11 + 16) == v10)
      {
        break;
      }

      v11 = *v11;
      if (!*v14)
      {
        if (W8_cacheColorCount > 6)
        {
          *v15 = 0;
          v18 = *(v14 + 8);
        }

        else
        {
LABEL_12:
          v16 = W8_cacheColorBase;
          if (W8_cacheColorBase)
          {
            v17 = W8_cacheColorCount;
          }

          else
          {
            v16 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x10200408056D5EBuLL);
            v17 = 0;
            W8_cacheColorBase = v16;
          }

          v14 = v16 + 24 * v17;
          v18 = v16 + 1024 * v17 + 168;
          *(v14 + 8) = v18;
          W8_cacheColorCount = v17 + 1;
        }

        v19 = 0;
        *v14 = W8_cacheColor;
        W8_cacheColor = v14;
        *(v14 + 16) = v10;
        v20 = vdupq_n_s32(v9 | (v5 >> 8));
        v21 = xmmword_18439CB90;
        v22 = vdupq_n_s32(v10);
        v23.i64[0] = 0xFF000000FFLL;
        v23.i64[1] = 0xFF000000FFLL;
        v24.i64[0] = 0x1000100010001;
        v24.i64[1] = 0x1000100010001;
        v25.i64[0] = 0xFF000000FF000000;
        v25.i64[1] = 0xFF000000FF000000;
        v26.i64[0] = 0x400000004;
        v26.i64[1] = 0x400000004;
        do
        {
          v27 = vmulq_s32(veorq_s8(v21, v23), v20);
          v28 = vaddq_s32(vaddq_s32(v27, v24), (*&vshrq_n_u32(v27, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
          *(v18 + v19) = vsubq_s32(v22, vorrq_s8(vandq_s8(v28, v25), vandq_s8(vshrq_n_u32(v28, 8uLL), v23)));
          v21 = vaddq_s32(v21, v26);
          v19 += 16;
        }

        while (v19 != 1024);
        v13 = v14 + 8;
        result = pthread_mutex_unlock(&W8_cacheColorLock);
        goto LABEL_23;
      }
    }

    if (v15)
    {
      *v15 = *v11;
      *v11 = W8_cacheColor;
      W8_cacheColor = v11;
    }

    result = pthread_mutex_unlock(&W8_cacheColorLock);
    v13 = v11 + 8;
LABEL_23:
    v7 = v248;
  }

  v29 = *v13;
  v30 = *(*v13 + 1020);
  v32 = *(a1 + 12);
  v31 = *(a1 + 16);
  if (v3)
  {
    v33 = *(a1 + 32);
    v34 = (v3 + v33 * v31 + v32);
    v35 = 1;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v35 = 0;
  }

  if (v8)
  {
    v36 = v33 - v7;
    if (v3)
    {
      v33 -= v7;
    }

    v249 = v33;
    v37 = HIBYTE(v30);
    v38 = (v246 + v31 * v250 + v32);
    v39 = *(a1 + 124);
    v40 = v8 + *(a1 + 108) * v39 + *(a1 + 104);
    v41 = v39 - v7;
    v251 = v250 - v7;
    switch(a2)
    {
      case 0:
        if (v3)
        {
          do
          {
            v42 = v7;
            do
            {
              v43 = *v40;
              if (*v40)
              {
                if (v43 == 255)
                {
                  LOBYTE(v44) = 0;
                  *v38 = 0;
                }

                else
                {
                  v45 = *v38;
                  v46 = *v34;
                  v47 = (v45 | (v46 << 16)) * v43 + 65537 + ((((v45 | (v46 << 16)) * v43) >> 8) & 0xFF00FF);
                  v48 = v45 | (v46 << 24);
                  *v38 = v48 - BYTE1(v47);
                  v44 = (v48 - (v47 & 0xFF000000 | BYTE1(v47))) >> 24;
                }

                *v34 = v44;
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v42;
            }

            while (v42);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v79 = v7;
            do
            {
              v80 = *v40;
              if (*v40)
              {
                if (v80 == 255)
                {
                  LOBYTE(v81) = 0;
                }

                else
                {
                  v81 = *v38 - ((*v38 * v80 + ((*v38 * v80) >> 8) + 1) >> 8);
                }

                *v38 = v81;
              }

              ++v40;
              ++v38;
              --v79;
            }

            while (v79);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 1:
        v131 = v40 & 3;
        if (!v3)
        {
          v172 = -1 << (8 * v131);
          if ((v40 & 3) != 0)
          {
            v173 = v40 & 0xFC;
          }

          else
          {
            v173 = v40;
          }

          if ((v40 & 3) != 0)
          {
            v174 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v172 = -1;
            v174 = v40;
          }

          if ((v40 & 3) != 0)
          {
            v175 = &v38[-(v40 & 3)];
          }

          else
          {
            v175 = v38;
          }

          if ((v40 & 3) != 0)
          {
            v176 = v131 + v7;
          }

          else
          {
            v176 = v7;
          }

          if (((v176 + v173) & 3) != 0)
          {
            v177 = 4 - ((v176 + v173) & 3);
            v131 += v177;
            v178 = 0xFFFFFFFF >> (8 * v177);
            if (v176 >= 4)
            {
              v179 = v178;
            }

            else
            {
              v179 = 0;
            }

            if (v176 >= 4)
            {
              v178 = -1;
            }

            v172 &= v178;
          }

          else
          {
            v179 = 0;
          }

          v236 = v41 - v131;
          v237 = v176 >> 2;
          v238 = v251 - v131;
          while (1)
          {
            v239 = *v174 & v172;
            v240 = v237;
            result = v179;
            if (!v239)
            {
              goto LABEL_481;
            }

LABEL_479:
            if (v239 == -1)
            {
              *v175 = 16843009 * v30;
              goto LABEL_481;
            }

            while (1)
            {
              if (v239)
              {
                LOBYTE(v242) = v30;
                if (v239 != 255)
                {
                  v242 = *(v29 + 4 * v239) + (((v239 ^ 0xFF) * *v175 + (((v239 ^ 0xFF) * *v175) >> 8) + 1) >> 8);
                }

                *v175 = v242;
              }

              if (BYTE1(v239))
              {
                LOBYTE(v243) = v30;
                if (BYTE1(v239) != 255)
                {
                  v243 = *(v29 + 4 * BYTE1(v239)) + (((BYTE1(v239) ^ 0xFF) * v175[1] + (((BYTE1(v239) ^ 0xFF) * v175[1]) >> 8) + 1) >> 8);
                }

                v175[1] = v243;
              }

              if (BYTE2(v239))
              {
                LOBYTE(v244) = v30;
                if (BYTE2(v239) != 255)
                {
                  v244 = *(v29 + 4 * BYTE2(v239)) + (((BYTE2(v239) ^ 0xFF) * v175[2] + (((BYTE2(v239) ^ 0xFF) * v175[2]) >> 8) + 1) >> 8);
                }

                v175[2] = v244;
              }

              v245 = HIBYTE(v239);
              if (v245 == 255)
              {
                v175[3] = v30;
              }

              else if (v245)
              {
                v175[3] = *(v29 + 4 * v245) + (((v245 ^ 0xFF) * v175[3] + (((v245 ^ 0xFF) * v175[3]) >> 8) + 1) >> 8);
              }

LABEL_481:
              while (1)
              {
                v241 = v240;
                v175 += 4;
                --v240;
                ++v174;
                if (v241 < 2)
                {
                  break;
                }

                v239 = *v174;
                if (*v174)
                {
                  goto LABEL_479;
                }
              }

              if (!result)
              {
                break;
              }

              result = 0;
              v239 = *v174 & v179;
            }

            v174 = (v174 + v236);
            v175 += v238;
            if (!--v6)
            {
              return result;
            }
          }
        }

        v132 = -1 << (8 * v131);
        v133 = &v38[-(v40 & 3)];
        if ((v40 & 3) != 0)
        {
          v134 = v40 & 0xFC;
        }

        else
        {
          v134 = v40;
        }

        if ((v40 & 3) != 0)
        {
          v135 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v132 = -1;
          v135 = v40;
        }

        if ((v40 & 3) != 0)
        {
          v136 = &v34[-(v40 & 3)];
        }

        else
        {
          v136 = v34;
        }

        if ((v40 & 3) != 0)
        {
          v137 = v131 + v7;
        }

        else
        {
          v133 = v38;
          v137 = v7;
        }

        if (((v137 + v134) & 3) != 0)
        {
          v138 = 4 - ((v137 + v134) & 3);
          v131 += v138;
          v139 = 0xFFFFFFFF >> (8 * v138);
          if (v137 >= 4)
          {
            v140 = v139;
          }

          else
          {
            v140 = 0;
          }

          if (v137 >= 4)
          {
            v139 = -1;
          }

          v132 &= v139;
        }

        else
        {
          v140 = 0;
        }

        v209 = v41 - v131;
        result = v251 - v131;
        v210 = v137 >> 2;
        v211 = v36 - v131;
        do
        {
          v212 = *v135 & v132;
          v213 = v210;
          v214 = v140;
          if (!v212)
          {
            goto LABEL_429;
          }

LABEL_427:
          if (v212 == -1)
          {
            *v133 = v30;
            *v136 = HIBYTE(v30);
            v133[1] = v30;
            v136[1] = HIBYTE(v30);
            v133[2] = v30;
            v136[2] = HIBYTE(v30);
LABEL_450:
            v133[3] = v30;
            v136[3] = HIBYTE(v30);
            goto LABEL_429;
          }

          while (1)
          {
            if (v212)
            {
              if (v212 == 255)
              {
                *v133 = v30;
                v216 = HIBYTE(v30);
              }

              else
              {
                v217 = *(v29 + 4 * v212);
                v218 = (*v133 | (*v136 << 16)) * (v212 ^ 0xFF);
                *v133 = ((v218 + 1 + BYTE1(v218)) >> 8) + v217;
                v216 = (((v218 + 65537 + ((v218 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v218 + 1 + BYTE1(v218)) >> 8)) + (v217 & 0xFF0000FF)) >> 24;
              }

              *v136 = v216;
            }

            if (BYTE1(v212))
            {
              if (BYTE1(v212) == 255)
              {
                v133[1] = v30;
                v219 = HIBYTE(v30);
              }

              else
              {
                v220 = *(v29 + 4 * BYTE1(v212));
                v221 = (v133[1] | (v136[1] << 16)) * (BYTE1(v212) ^ 0xFF);
                v133[1] = ((v221 + 1 + BYTE1(v221)) >> 8) + v220;
                v219 = (((v221 + 65537 + ((v221 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v221 + 1 + BYTE1(v221)) >> 8)) + (v220 & 0xFF0000FF)) >> 24;
              }

              v136[1] = v219;
            }

            if (BYTE2(v212))
            {
              if (BYTE2(v212) == 255)
              {
                v133[2] = v30;
                v222 = HIBYTE(v30);
              }

              else
              {
                v223 = *(v29 + 4 * BYTE2(v212));
                v224 = (v133[2] | (v136[2] << 16)) * (BYTE2(v212) ^ 0xFF);
                v133[2] = ((v224 + 1 + BYTE1(v224)) >> 8) + v223;
                v222 = (((v224 + 65537 + ((v224 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v224 + 1 + BYTE1(v224)) >> 8)) + (v223 & 0xFF0000FF)) >> 24;
              }

              v136[2] = v222;
            }

            v225 = HIBYTE(v212);
            if (v225 == 255)
            {
              goto LABEL_450;
            }

            if (v225)
            {
              v226 = *(v29 + 4 * v225);
              v227 = (v133[3] | (v136[3] << 16)) * (v225 ^ 0xFF);
              v133[3] = ((v227 + 1 + BYTE1(v227)) >> 8) + v226;
              v136[3] = (((v227 + 65537 + ((v227 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v227 + 1 + BYTE1(v227)) >> 8)) + (v226 & 0xFF0000FF)) >> 24;
            }

LABEL_429:
            while (1)
            {
              v215 = v213;
              v133 += 4;
              v136 += 4;
              --v213;
              ++v135;
              if (v215 < 2)
              {
                break;
              }

              v212 = *v135;
              if (*v135)
              {
                goto LABEL_427;
              }
            }

            if (!v214)
            {
              break;
            }

            v214 = 0;
            v212 = *v135 & v140;
          }

          v135 = (v135 + v209);
          v133 += result;
          v136 += v211;
          --v6;
        }

        while (v6);
        return result;
      case 2:
        v105 = v40 & 3;
        if (v3)
        {
          v106 = -1 << (8 * v105);
          v107 = &v38[-(v40 & 3)];
          if ((v40 & 3) != 0)
          {
            v108 = v40 & 0xFC;
          }

          else
          {
            v108 = v40;
          }

          if ((v40 & 3) != 0)
          {
            v109 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v106 = -1;
            v109 = v40;
          }

          if ((v40 & 3) != 0)
          {
            v110 = &v34[-(v40 & 3)];
          }

          else
          {
            v110 = v34;
          }

          if ((v40 & 3) != 0)
          {
            v111 = v105 + v7;
          }

          else
          {
            v107 = v38;
            v111 = v7;
          }

          if (((v111 + v108) & 3) != 0)
          {
            v112 = 4 - ((v111 + v108) & 3);
            v105 += v112;
            v113 = 0xFFFFFFFF >> (8 * v112);
            if (v111 >= 4)
            {
              v114 = v113;
            }

            else
            {
              v114 = 0;
            }

            if (v111 >= 4)
            {
              v113 = -1;
            }

            v106 &= v113;
          }

          else
          {
            v114 = 0;
          }

          v180 = v41 - v105;
          v181 = v251 - v105;
          result = (v111 >> 2);
          v182 = ~HIBYTE(v30);
          v183 = v30 & 0xFF0000FF;
          v184 = v36 - v105;
          while (1)
          {
            v185 = *v109 & v106;
            v186 = result;
            v187 = v114;
            if (!v185)
            {
              goto LABEL_408;
            }

LABEL_406:
            if (v185 == -1)
            {
              break;
            }

            while (1)
            {
              if (v185)
              {
                v197 = *(v29 + 4 * v185);
                v198 = (*v107 | (*v110 << 16)) * (~v197 >> 24);
                v199 = ((v198 + 65537 + ((v198 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v198 + 1 + BYTE1(v198)) >> 8)) + (v197 & 0xFF0000FF);
                *v107 = v199;
                *v110 = HIBYTE(v199);
              }

              if ((v185 & 0xFF00) != 0)
              {
                v200 = *(v29 + 4 * BYTE1(v185));
                v201 = (v107[1] | (v110[1] << 16)) * (~v200 >> 24);
                v202 = ((v201 + 65537 + ((v201 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v201 + 1 + BYTE1(v201)) >> 8)) + (v200 & 0xFF0000FF);
                v107[1] = v202;
                v110[1] = HIBYTE(v202);
              }

              if ((v185 & 0xFF0000) != 0)
              {
                v203 = *(v29 + 4 * BYTE2(v185));
                v204 = (v107[2] | (v110[2] << 16)) * (~v203 >> 24);
                v205 = ((v204 + 65537 + ((v204 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v204 + 1 + BYTE1(v204)) >> 8)) + (v203 & 0xFF0000FF);
                v107[2] = v205;
                v110[2] = HIBYTE(v205);
              }

              v206 = HIBYTE(v185);
              if (v206)
              {
                v207 = *(v29 + 4 * v206);
                v208 = (v107[3] | (v110[3] << 16)) * (~v207 >> 24);
                v195 = ((v208 + 65537 + ((v208 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v208 + 1 + BYTE1(v208)) >> 8)) + (v207 & 0xFF0000FF);
                goto LABEL_421;
              }

LABEL_408:
              while (1)
              {
                v196 = v186;
                v107 += 4;
                v110 += 4;
                --v186;
                ++v109;
                if (v196 < 2)
                {
                  break;
                }

                v185 = *v109;
                if (*v109)
                {
                  goto LABEL_406;
                }
              }

              if (!v187)
              {
                break;
              }

              v187 = 0;
              v185 = *v109 & v114;
            }

            v109 = (v109 + v180);
            v107 += v181;
            v110 += v184;
            if (!--v6)
            {
              return result;
            }
          }

          v188 = (*v107 | (*v110 << 16)) * v182;
          v189 = ((v188 + 65537 + ((v188 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v188 + 1 + BYTE1(v188)) >> 8)) + v183;
          *v107 = v189;
          *v110 = HIBYTE(v189);
          v190 = (v107[1] | (v110[1] << 16)) * v182;
          v191 = ((v190 + 65537 + ((v190 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v190 + 1 + BYTE1(v190)) >> 8)) + v183;
          v107[1] = v191;
          v110[1] = HIBYTE(v191);
          v192 = (v107[2] | (v110[2] << 16)) * v182;
          v193 = ((v192 + 65537 + ((v192 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v192 + 1 + BYTE1(v192)) >> 8)) + v183;
          v107[2] = v193;
          v110[2] = HIBYTE(v193);
          v194 = (v107[3] | (v110[3] << 16)) * v182;
          v195 = ((v194 + 65537 + ((v194 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v194 + 1 + BYTE1(v194)) >> 8)) + v183;
LABEL_421:
          v107[3] = v195;
          v110[3] = HIBYTE(v195);
          goto LABEL_408;
        }

        v164 = -1 << (8 * v105);
        if ((v40 & 3) != 0)
        {
          v165 = v40 & 0xFC;
        }

        else
        {
          v165 = v40;
        }

        if ((v40 & 3) != 0)
        {
          v166 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v164 = -1;
          v166 = v40;
        }

        if ((v40 & 3) != 0)
        {
          v167 = &v38[-(v40 & 3)];
        }

        else
        {
          v167 = v38;
        }

        if ((v40 & 3) != 0)
        {
          v168 = v105 + v7;
        }

        else
        {
          v168 = v7;
        }

        if (((v168 + v165) & 3) != 0)
        {
          v169 = 4 - ((v168 + v165) & 3);
          v105 += v169;
          v170 = 0xFFFFFFFF >> (8 * v169);
          if (v168 >= 4)
          {
            v171 = v170;
          }

          else
          {
            v171 = 0;
          }

          if (v168 >= 4)
          {
            v170 = -1;
          }

          v164 &= v170;
        }

        else
        {
          v171 = 0;
        }

        v228 = v168 >> 2;
        v229 = ~HIBYTE(v30);
        break;
      case 3:
        do
        {
          v115 = v7;
          do
          {
            v116 = *v40;
            if (*v40)
            {
              if (v116 == 255)
              {
                v117 = *(v29 + 4 * *v34);
              }

              else
              {
                v118 = *v34;
                v119 = *(v29 + 4 * ((v118 * v116 + ((v118 * v116) >> 8) + 1) >> 8));
                v120 = (*v38 | (v118 << 16)) * (v116 ^ 0xFF) + 65537 + ((((*v38 | (v118 << 16)) * (v116 ^ 0xFFu)) >> 8) & 0xFF00FF);
                v117 = (v120 & 0xFF000000 | BYTE1(v120)) + (v119 & 0xFF0000FF);
              }

              *v38 = v117;
              *v34 = HIBYTE(v117);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v115;
          }

          while (v115);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 4:
        do
        {
          v89 = v7;
          do
          {
            v90 = *v40;
            if (*v40)
            {
              if (v90 == 255)
              {
                v91 = *(v29 + 4 * ~*v34);
              }

              else
              {
                v92 = *v34;
                v93 = *(v29 + 4 * (((v92 ^ 0xFF) * v90 + (((v92 ^ 0xFFu) * v90) >> 8) + 1) >> 8));
                v94 = (*v38 | (v92 << 16)) * (v90 ^ 0xFF) + 65537 + ((((*v38 | (v92 << 16)) * (v90 ^ 0xFFu)) >> 8) & 0xFF00FF);
                v91 = (v94 & 0xFF000000 | BYTE1(v94)) + (v93 & 0xFF0000FF);
              }

              *v38 = v91;
              *v34 = HIBYTE(v91);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v89;
          }

          while (v89);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 5:
        do
        {
          v141 = v7;
          do
          {
            if (*v40)
            {
              v142 = *(v29 + 4 * *v40);
              v143 = (v142 | (HIBYTE(v142) << 16)) * *v34 + (*v38 | (*v34 << 16)) * (HIBYTE(v142) ^ 0xFF);
              v144 = v143 + 65537 + ((v143 >> 8) & 0xFF00FF);
              *v38 = BYTE1(v144);
              *v34 = HIBYTE(v144);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v141;
          }

          while (v141);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 6:
        do
        {
          v145 = v7;
          do
          {
            v146 = *v40;
            if (*v40)
            {
              v147 = *v34;
              if (v147 != 0xFF)
              {
                if (~v147 == 255)
                {
                  v148 = *(v29 + 4 * v146);
                }

                else
                {
                  v149 = (*(v29 + 4 * v146) | (HIBYTE(*(v29 + 4 * v146)) << 16)) * ~v147;
                  v148 = ((v149 + 65537 + ((v149 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v149 + 1 + BYTE1(v149)) >> 8)) + (*v38 | (v147 << 24));
                }

                *v38 = v148;
                *v34 = HIBYTE(v148);
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v145;
          }

          while (v145);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 7:
        if (v3)
        {
          do
          {
            v121 = v7;
            do
            {
              v122 = *v40;
              if (*v40)
              {
                v123 = *v38;
                v124 = *v34;
                if (v122 == 255)
                {
                  v125 = (v123 | (v124 << 16)) * (v37 ^ 0xFF);
                }

                else
                {
                  v125 = (v123 | (v124 << 16)) * (v122 - ((v37 * v122 + ((v37 * v122) >> 8) + 1) >> 8));
                }

                v126 = (v123 | (v124 << 24)) - ((v125 + 65537 + ((v125 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v125 + 1 + BYTE1(v125)) >> 8));
                *v38 = v126;
                *v34 = HIBYTE(v126);
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v121;
            }

            while (v121);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v127 = v7;
            do
            {
              v128 = *v40;
              if (*v40)
              {
                if (v128 == 255)
                {
                  LOBYTE(v129) = *v38;
                  v130 = v37 ^ 0xFF;
                }

                else
                {
                  v130 = *v38;
                  v129 = v128 - ((v37 * v128 + ((v37 * v128) >> 8) + 1) >> 8);
                }

                *v38 -= (v130 * v129 + ((v130 * v129) >> 8) + 1) >> 8;
              }

              ++v40;
              ++v38;
              --v127;
            }

            while (v127);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 8:
        if (v3)
        {
          do
          {
            v154 = v7;
            do
            {
              v155 = *v40;
              if (*v40)
              {
                v156 = *v38;
                v157 = *v34;
                if (v155 == 255)
                {
                  v158 = (v156 | (v157 << 16)) * v37;
                }

                else
                {
                  v158 = (v156 | (v157 << 16)) * ((v37 * v155 + ((v37 * v155) >> 8) + 1) >> 8);
                }

                v159 = (v156 | (v157 << 24)) - ((v158 + 65537 + ((v158 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v158 + 1 + BYTE1(v158)) >> 8));
                *v38 = v159;
                *v34 = HIBYTE(v159);
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v154;
            }

            while (v154);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v160 = v7;
            do
            {
              v161 = *v40;
              if (*v40)
              {
                v162 = *v38;
                if (v161 == 255)
                {
                  v163 = v37 * v162;
                }

                else
                {
                  v163 = ((v37 * v161 + ((v37 * v161) >> 8) + 1) >> 8) * v162;
                }

                *v38 = v162 - ((v163 + (v163 >> 8) + 1) >> 8);
              }

              ++v40;
              ++v38;
              --v160;
            }

            while (v160);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 9:
        do
        {
          v100 = v7;
          do
          {
            v101 = *v40;
            if (*v40)
            {
              v102 = *v34;
              v103 = *(v29 + 4 * v101);
              v104 = (v103 | (HIBYTE(v103) << 16)) * (v102 ^ 0xFF) + (*v38 | (v102 << 16)) * (~v101 + HIBYTE(v103)) + 65537 + ((((v103 | (HIBYTE(v103) << 16)) * (v102 ^ 0xFF) + (*v38 | (v102 << 16)) * (~v101 + HIBYTE(v103))) >> 8) & 0xFF00FF);
              *v38 = BYTE1(v104);
              *v34 = HIBYTE(v104);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v100;
          }

          while (v100);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 10:
        do
        {
          v150 = v7;
          do
          {
            if (*v40)
            {
              v151 = *(v29 + 4 * *v40);
              v152 = (v151 | (HIBYTE(v151) << 16)) * (*v34 ^ 0xFF) + (*v38 | (*v34 << 16)) * (HIBYTE(v151) ^ 0xFF);
              v153 = v152 + 65537 + ((v152 >> 8) & 0xFF00FF);
              *v38 = BYTE1(v153);
              *v34 = HIBYTE(v153);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v150;
          }

          while (v150);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 11:
        if (v3)
        {
          do
          {
            v82 = v7;
            do
            {
              if (*v40)
              {
                v83 = *(v29 + 4 * *v40);
                v84 = ((HIBYTE(v83) - v83) | (HIBYTE(v83) << 16)) + (*v34 - *v38) + (*v34 << 16);
                v85 = (255 * ((v84 >> 8) & 0x10001)) | v84;
                *v38 = BYTE2(v85) - v85;
                *v34 = BYTE2(v85);
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v82;
            }

            while (v82);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v86 = v7;
            do
            {
              if (*v40)
              {
                v87 = (*v38 ^ 0xFF) - *(v29 + 4 * *v40) + HIBYTE(*(v29 + 4 * *v40));
                v88 = BYTE1(v87) | (2 * BYTE1(v87)) | (4 * (BYTE1(v87) | (2 * BYTE1(v87))));
                *v38 = ~((~*v38 - *(v29 + 4 * *v40) + HIBYTE(*(v29 + 4 * *v40))) | (16 * v88) | v88);
              }

              ++v40;
              ++v38;
              --v86;
            }

            while (v86);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 12:
        if (v3)
        {
          do
          {
            v95 = v7;
            do
            {
              if (*v40)
              {
                v96 = (*(v29 + 4 * *v40) | (HIBYTE(*(v29 + 4 * *v40)) << 16)) + (*v38 | (*v34 << 16));
                v97 = (255 * ((v96 >> 8) & 0x10001)) | v96;
                *v38 = v97;
                *v34 = BYTE2(v97);
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v95;
            }

            while (v95);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v98 = v7;
            do
            {
              if (*v40)
              {
                v99 = *(v29 + 4 * *v40) + *v38;
                *v38 = -(v99 >> 8) | v99;
              }

              ++v40;
              ++v38;
              --v98;
            }

            while (v98);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 13:
        do
        {
          v67 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v68 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAmultiplyPDA_18018(*v38, *v34, *(v29 + 4 * *v40), v68);
                    v68 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v68;
                }

                else
                {
                  result = PDAmultiplyPDA_18018(*v38, 255, *(v29 + 4 * *v40), v68);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v67;
          }

          while (v67);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 14:
        do
        {
          v53 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v54 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAscreenPDA_18019(*v38, *v34, *(v29 + 4 * *v40), v54);
                    v54 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v54;
                }

                else
                {
                  result = PDAscreenPDA_18019(*v38, 255, *(v29 + 4 * *v40), v54);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v53;
          }

          while (v53);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 15:
        do
        {
          v59 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v60 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAoverlayPDA_18020(*v38, *v34, *(v29 + 4 * *v40), v60);
                    v60 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v60;
                }

                else
                {
                  result = PDAoverlayPDA_18020(*v38, 0xFFu, *(v29 + 4 * *v40), v60);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v59;
          }

          while (v59);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 16:
        do
        {
          v51 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v52 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAdarkenPDA_18022(*v38, *v34, *(v29 + 4 * *v40), v52);
                    v52 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v52;
                }

                else
                {
                  result = PDAdarkenPDA_18022(*v38, 0xFFu, *(v29 + 4 * *v40), v52);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v51;
          }

          while (v51);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 17:
        do
        {
          v61 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v62 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAlightenPDA_18021(*v38, *v34, *(v29 + 4 * *v40), v62);
                    v62 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v62;
                }

                else
                {
                  result = PDAlightenPDA_18021(*v38, 0xFFu, *(v29 + 4 * *v40), v62);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v61;
          }

          while (v61);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 18:
        do
        {
          v69 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v70 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAcolordodgePDA_18023(*v38, *v34, *(v29 + 4 * *v40), v70);
                    v70 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v70;
                }

                else
                {
                  result = PDAcolordodgePDA_18023(*v38, 0xFFu, *(v29 + 4 * *v40), v70);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v69;
          }

          while (v69);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 19:
        do
        {
          v73 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v74 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAcolorburnPDA_18024(*v38, *v34, *(v29 + 4 * *v40), v74);
                    v74 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v74;
                }

                else
                {
                  result = PDAcolorburnPDA_18024(*v38, 0xFFu, *(v29 + 4 * *v40), v74);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v73;
          }

          while (v73);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 20:
        do
        {
          v63 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v64 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAsoftlightPDA_18026(*v38, *v34, *(v29 + 4 * *v40), v64);
                    v64 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v64;
                }

                else
                {
                  result = PDAsoftlightPDA_18026(*v38, 255, *(v29 + 4 * *v40), v64);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v63;
          }

          while (v63);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 21:
        do
        {
          v65 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v66 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAhardlightPDA_18025(*v38, *v34, *(v29 + 4 * *v40), v66);
                    v66 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v66;
                }

                else
                {
                  result = PDAhardlightPDA_18025(*v38, 0xFFu, *(v29 + 4 * *v40), v66);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v65;
          }

          while (v65);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 22:
        do
        {
          v71 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v72 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAdifferencePDA_18027(*v38, *v34, *(v29 + 4 * *v40), v72);
                    v72 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v72;
                }

                else
                {
                  result = PDAdifferencePDA_18027(*v38, 0xFFu, *(v29 + 4 * *v40), v72);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v71;
          }

          while (v71);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 23:
        do
        {
          v75 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v76 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAexclusionPDA_18028(*v38, *v34, *(v29 + 4 * *v40), v76);
                    v76 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v76;
                }

                else
                {
                  result = PDAexclusionPDA_18028(*v38, 0xFFu, *(v29 + 4 * *v40), v76);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v75;
          }

          while (v75);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 24:
        do
        {
          v57 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v58 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAhuePDA_18029(*v38, *v34, *(v29 + 4 * *v40), v58);
                    v58 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v58;
                }

                else
                {
                  result = PDAhuePDA_18029(*v38, 0xFFu, *(v29 + 4 * *v40), v58);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v57;
          }

          while (v57);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 25:
        do
        {
          v55 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v56 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAhuePDA_18029(*v38, *v34, *(v29 + 4 * *v40), v56);
                    v56 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v56;
                }

                else
                {
                  result = PDAhuePDA_18029(*v38, 0xFFu, *(v29 + 4 * *v40), v56);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v55;
          }

          while (v55);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 26:
        do
        {
          v77 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v78 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAluminosityPDA_18031(*(v29 + 4 * *v40), v78, *v38, *v34);
                    v78 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v78;
                }

                else
                {
                  result = PDAluminosityPDA_18031(*(v29 + 4 * *v40), v78, *v38, 0xFFu);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v77;
          }

          while (v77);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 27:
        do
        {
          v49 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v50 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAluminosityPDA_18031(*v38, *v34, *(v29 + 4 * *v40), v50);
                    v50 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v50;
                }

                else
                {
                  result = PDAluminosityPDA_18031(*v38, 0xFFu, *(v29 + 4 * *v40), v50);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v49;
          }

          while (v49);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      default:
        return result;
    }

    while (1)
    {
      v230 = *v166 & v164;
      v231 = v228;
      result = v171;
      if (!v230)
      {
        goto LABEL_460;
      }

LABEL_458:
      if (v230 == -1)
      {
        break;
      }

      while (1)
      {
        if (v230)
        {
          *v167 = *(v29 + 4 * v230) + (((~*(v29 + 4 * v230) >> 24) * *v167 + (((~*(v29 + 4 * v230) >> 24) * *v167) >> 8) + 1) >> 8);
        }

        if ((v230 & 0xFF00) != 0)
        {
          v167[1] = *(v29 + 4 * BYTE1(v230)) + (((~*(v29 + 4 * BYTE1(v230)) >> 24) * v167[1] + (((~*(v29 + 4 * BYTE1(v230)) >> 24) * v167[1]) >> 8) + 1) >> 8);
        }

        if ((v230 & 0xFF0000) != 0)
        {
          v167[2] = *(v29 + 4 * BYTE2(v230)) + (((~*(v29 + 4 * BYTE2(v230)) >> 24) * v167[2] + (((~*(v29 + 4 * BYTE2(v230)) >> 24) * v167[2]) >> 8) + 1) >> 8);
        }

        v235 = HIBYTE(v230);
        if (v235)
        {
          v233 = *(v29 + 4 * v235);
          v232 = (~v233 >> 24) * v167[3];
          goto LABEL_473;
        }

LABEL_460:
        while (1)
        {
          v234 = v231;
          v167 += 4;
          --v231;
          ++v166;
          if (v234 < 2)
          {
            break;
          }

          v230 = *v166;
          if (*v166)
          {
            goto LABEL_458;
          }
        }

        if (!result)
        {
          break;
        }

        result = 0;
        v230 = *v166 & v171;
      }

      v166 = (v166 + v41 - v105);
      v167 += v251 - v105;
      if (!--v6)
      {
        return result;
      }
    }

    *v167 = v30 + ((*v167 * v229 + ((*v167 * v229) >> 8) + 1) >> 8);
    v167[1] = v30 + ((v167[1] * v229 + ((v167[1] * v229) >> 8) + 1) >> 8);
    v167[2] = v30 + ((v167[2] * v229 + ((v167[2] * v229) >> 8) + 1) >> 8);
    v232 = v167[3] * v229;
    LOBYTE(v233) = v30;
LABEL_473:
    v167[3] = v233 + ((v232 + (v232 >> 8) + 1) >> 8);
    goto LABEL_460;
  }

  return result;
}

uint64_t ripl_CreateMask(uint64_t a1, int a2)
{
  if (*(a1 + 56))
  {
    return 1;
  }

  v25 = v2;
  v26 = v3;
  v7 = *(a1 + 32);
  v8 = RIPGetDepthForLayerFormat(0);
  if (v7 != v8)
  {
    return 0;
  }

  v10 = *(a1 + 20);
  v24 = v10;
  if (v10 < 1)
  {
    return 0;
  }

  v11 = *(a1 + 24);
  v23 = v11;
  if (v11 < 1)
  {
    return 0;
  }

  v12 = (v10 + 3) & 0x7FFFFFFC;
  v13 = v11 * v12;
  v14 = v13 > 0x7FFFFFFB ? 0xFFFFFFFFLL : (v13 + 19) & 0xFFFFFFF0;
  if ((v14 & 0x80000000) != 0)
  {
    return 0;
  }

  v15 = *(a1 + 72);
  if (!v15)
  {
    result = malloc_type_malloc(v14, 0x605DDF51uLL);
    *(a1 + 56) = result;
    if (!result)
    {
      return result;
    }

    *(a1 + 48) = v12;
    *(a1 + 28) &= ~2u;
    memset(result, 255, v14);
    v20 = *(a1 + 64);
    if (v20)
    {
      CGSCombineMask(0, 0, *(a1 + 56), *(a1 + 48), *(a1 + 20), *(a1 + 24), v20);
    }

    goto LABEL_25;
  }

  if (v15 != &the_empty_shape)
  {
    v22 = 0;
    shape_enum_clip_alloc(v8, v9, v15, 1, 1, 0, 0, 0, v10, v11);
    if (v16)
    {
      v17 = v16;
      v18 = malloc_type_malloc(v14, 0xC94539B2uLL);
      *(a1 + 56) = v18;
      if (v18)
      {
        *(a1 + 48) = v12;
        *(a1 + 28) &= ~2u;
        while (1)
        {
          v19 = shape_enum_clip_next(v17, &v22 + 1, &v22, &v24, &v23);
          if (!v19)
          {
            break;
          }

          CGBlt_fillBytes(v24, v23, ~v19 >> 31, (*(a1 + 56) + v22 * v12 + SHIDWORD(v22)), v12);
        }

        free(v17);
        goto LABEL_25;
      }

      free(v17);
    }

    return 0;
  }

  result = malloc_type_calloc(1uLL, v14, 0xC5A7A816uLL);
  *(a1 + 56) = result;
  if (!result)
  {
    return result;
  }

  *(a1 + 48) = v12;
  *(a1 + 28) &= ~2u;
LABEL_25:
  if (a2)
  {
    v21 = *(a1 + 72);
    if (v21)
    {
      if (v21 != &the_empty_shape)
      {
        free(v21);
      }

      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    else if (*(a1 + 64))
    {
      *(a1 + 64) = 0;
    }
  }

  return 1;
}

uint64_t CGBlt_combineBytes(uint64_t result, int a2, _OWORD *a3, __n128 *a4, int a5, int a6, __int16 a7, double a8, int8x16_t a9, __n128 a10)
{
  v10 = a7 & 0xF00;
  if (v10 != 1280)
  {
    if (v10 != 1024)
    {
      if (v10 == 256 && result >= 1 && a2 >= 1)
      {
        v11 = 0;
        v12 = vdupq_n_s16(0xFE01u);
        do
        {
          if (result >= 0x20)
          {
            v16 = 32;
            v15 = a3;
            v14 = a4;
            do
            {
              v18 = *v15;
              v17 = *(v15 + 1);
              v15 += 2;
              v19 = v14[1];
              v20 = vminq_u16(vmull_u8(*v18.i8, v14->n128_u64[0]), v12);
              v21 = vminq_u16(vmull_high_u8(v18, *v14), v12);
              v22 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v20, v20, 8uLL), 8uLL), vrsraq_n_u16(v21, v21, 8uLL), 8uLL);
              v23 = vminq_u16(vmull_u8(*v17.i8, *v19.i8), v12);
              v24 = vminq_u16(vmull_high_u8(v17, v19), v12);
              a9 = vrsraq_n_u16(v24, v24, 8uLL);
              a10 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v23, v23, 8uLL), 8uLL), a9, 8uLL);
              *v14 = v22;
              v14[1] = a10;
              v14 += 2;
              v16 += 32;
            }

            while (v16 <= result);
            v13 = result & 0x7FFFFFE0;
          }

          else
          {
            v13 = 0;
            v14 = a4;
            v15 = a3;
          }

          v25 = v13 | 4;
          while (v25 <= result)
          {
            v26 = *v15;
            v15 = (v15 + 4);
            a9.i32[0] = v26;
            v27 = vmovl_u8(*a9.i8);
            a10.n128_u32[0] = v14->n128_u32[0];
            LOBYTE(v28) = v27.i8[0];
            BYTE1(v28) = v27.i8[2];
            BYTE2(v28) = v27.i8[4];
            v29 = v27.i8[6];
            v30 = vmovl_u8(a10.n128_u64[0]);
            HIBYTE(v28) = v29;
            a10.n128_u32[1] = 0;
            a10.n128_u8[0] = v30.i8[0];
            a10.n128_u8[1] = v30.u8[2];
            a10.n128_u8[2] = v30.u8[4];
            a10.n128_u8[3] = v30.u8[6];
            v31 = vminq_u16(vmull_u8(v28, a10.n128_u32[0]), v12);
            a9 = vrsraq_n_u16(v31, v31, 8uLL);
            *a9.i8 = vqrshrn_n_u16(a9, 8uLL);
            *a9.i8 = vmovn_s16(vzip1q_s8(a9, v12));
            v14->n128_u32[0] = a9.i32[0];
            v14 = (v14 + 4);
            v25 = v13 + 8;
            v13 += 4;
          }

          if (v13 + 1 <= result)
          {
            v32 = result - v13;
            v33 = v14;
            do
            {
              v34 = *v15;
              v15 = (v15 + 1);
              a10.n128_u64[0] = v33->n128_u8[0];
              v33 = (v33 + 1);
              a9 = vminq_u16(vmull_u8(v34, a10.n128_u64[0]), v12);
              *a9.i8 = vqrshrn_n_u16(vrsraq_n_u16(a9, a9, 8uLL), 8uLL);
              v14->n128_u8[0] = a9.i8[0];
              v14 = v33;
              --v32;
            }

            while (v32);
          }

          a3 = (a3 + a5);
          a4 = (a4 + a6);
          ++v11;
        }

        while (v11 != a2);
      }

      return result;
    }

    if (result < 1 || a2 < 1)
    {
      return result;
    }

    v35 = a3 & 3;
    if ((a3 & 3) != 0)
    {
      v36 = 8 - v35;
      v37 = 4 - v35;
      v38 = result - v37;
      if (v36 > result)
      {
        v37 = result;
        v38 = 0;
      }
    }

    else
    {
      if (result >= 4)
      {
        v37 = 0;
      }

      else
      {
        v37 = result;
      }

      if (result >= 4)
      {
        v38 = result;
      }

      else
      {
        v38 = 0;
      }
    }

    v50 = v38 >> 2;
    v51 = v38 & 3;
    while (1)
    {
      v52 = v37;
      v53 = v50;
      if (v37)
      {
        goto LABEL_56;
      }

      while (v53)
      {
        v54 = v53 - 1;
        v55 = a3;
        do
        {
          if (*v55 == -1)
          {
            a4->n128_u32[0] = 0;
          }

          ++v55;
          a4 = (a4 + 4);
          --v53;
        }

        while (v53);
        a3 = (a3 + 4 * v54 + 4);
        v52 = v51;
        if (!v51)
        {
          break;
        }

LABEL_56:
        v56 = (v52 - 1);
        a3 = (a3 + v56 + 1);
        a4 = (a4 + v56 + 1);
      }

      a3 = (a3 + a5 - result);
      a4 = (a4 + a6 - result);
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (result >= 1 && a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      if (result >= 0x20)
      {
        v43 = 32;
        v42 = a3;
        v41 = a4;
        do
        {
          v45 = *v42;
          v44 = v42[1];
          v42 += 2;
          a9 = vmvnq_s8(v44);
          *v41 = vmvnq_s8(v45);
          v41[1] = a9;
          v41 += 2;
          v43 += 32;
        }

        while (v43 <= result);
        v40 = result & 0x7FFFFFE0;
      }

      else
      {
        v40 = 0;
        v41 = a4;
        v42 = a3;
      }

      v46 = v40 | 4;
      while (v46 <= result)
      {
        v47 = v42->i32[0];
        v42 = (v42 + 4);
        a9.i32[0] = v47;
        *a9.i8 = vuzp1_s8(veor_s8(*&vmovl_u8(*a9.i8), 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL);
        v41->i32[0] = a9.i32[0];
        v41 = (v41 + 4);
        v46 = v40 + 8;
        v40 += 4;
      }

      if (v40 + 1 <= result)
      {
        v48 = result - v40;
        do
        {
          v49 = v42->i8[0];
          v42 = (v42 + 1);
          v41->i8[0] = ~v49;
          v41 = (v41 + 1);
          --v48;
        }

        while (v48);
      }

      a3 = (a3 + a5);
      a4 = (a4 + a6);
    }
  }

  return result;
}

uint64_t CG::DisplayListRecorder::DrawPath(CFArrayRef *a1, uint64_t a2, uint64_t a3, signed int a4, const CGPath *a5, int a6, uint64_t a7)
{
  v13 = CG::DisplayListRecorder::currentDisplayList(a1);
  if (!v13)
  {
    return 1000;
  }

  v14 = v13;
  if (v13[5] == INFINITY || v13[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v14[7] != 0.0 && v14[8] != 0.0)
  {
    if (*(v14 + 73) != 1)
    {
      goto LABEL_23;
    }

    if (a7)
    {
      v17 = *a7;
      v18 = *(a7 + 16);
      v39.origin = *a7;
      v39.size = v18;
    }

    else
    {
      *v17.n128_u64 = CGPathGetPathBoundingBox(a5);
      *&v39.origin.x = v17.n128_u64[0];
      v39.origin.y = v42.origin.y;
      v39.size.width = v42.size.width;
      v39.size.height = v42.size.height;
      if (a6)
      {
        v19 = *(a3 + 40);
        *&v38.a = *(a3 + 24);
        *&v38.c = v19;
        *&v38.tx = *(a3 + 56);
        *v17.n128_u64 = CGRectApplyAffineTransform(*v17.n128_u64, &v38);
        *&v39.origin.x = v17.n128_u64[0];
        v39.origin.y = v20;
        v39.size.width = v21;
        v39.size.height = v22;
      }

      if (a4 >= 2)
      {
        v17.n128_f64[0] = CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(&v39, a3);
        *&v39.origin.x = v17.n128_u64[0];
        v39.origin.y = v23;
        v39.size.width = v24;
        v39.size.height = v25;
      }
    }

    v39.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v39.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16), v17);
    v39.origin.y = v26;
    v39.size.width = v27;
    v39.size.height = v28;
    if (v39.origin.x == INFINITY || v26 == INFINITY)
    {
      return 0;
    }

    result = 0;
    if (v27 != 0.0 && v28 != 0.0)
    {
LABEL_23:
      EntryDrawingState = CG::DisplayList::getEntryDrawingState(v14 + 2, a3, a2);
      v31 = EntryDrawingState[1];
      if (v31)
      {
        v32 = *(v31 + 8);
        v33 = v32 & 0x1000;
        v40 = v33;
        v34 = EntryDrawingState[2];
        if (v34)
        {
          v33 = (*(v34 + 8) | v32) & 0x1000;
          v40 = v33;
        }

        v35 = EntryDrawingState[3];
        if (v35)
        {
          v40 = v33 | *(v35 + 8) & 0x3400;
        }

        v38.a = 0.0;
        v41 = 0;
        CG::DisplayListRecorder::getPathColorResourcesAndUpdateFlags((v14 + 2), a3, a4, &v38, &v41, &v40);
        v36 = *(a3 + 120);
        if (*(v36 + 8) >= 1.0)
        {
          v37 = v40;
        }

        else
        {
          v37 = v40 | 0x1000;
        }

        if ((v37 & 0x1000) == 0 && (((*(v36 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
        {
          v37 = v40 | 0x1000;
        }

        if ((v37 & 0x3000) != 0)
        {
          *(v14 + 20) |= v37 & 0x3000;
        }

        if (*(v14 + 74) == 1)
        {
          if ((v37 & 0x400) != 0)
          {
            CG::DisplayList::getEntryPatternState((v14 + 2), a3, a2);
          }

          if ((v37 & 0x100) != 0)
          {
            CG::DisplayList::getEntryFillState((v14 + 2), *&v38.a);
          }

          if ((v37 & 0x200) != 0)
          {
            CG::DisplayList::getEntryStrokeState((v14 + 2), a3, v41);
          }

          operator new();
        }

        return 0;
      }

      return 1000;
    }
  }

  return result;
}

unsigned int *CG::DisplayListEntryPath::_hash(uint64_t a1, unsigned int *a2)
{
  __src = CGPathGetNumberOfElements(*(a1 + 88));
  XXH64_update(a2, &__src, 8uLL);
  XXH64_update(a2, (a1 + 96), 0x30uLL);
  XXH64_update(a2, (a1 + 80), 4uLL);

  return CG::DisplayListEntry::_hash(a1, a2);
}

void CG::DisplayListEntryPath::~DisplayListEntryPath(CG::DisplayListEntryPath *this)
{
  CG::DisplayListEntryPath::~DisplayListEntryPath(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23AC58;
  v1 = *(this + 11);
  if (v1)
  {
    CFRelease(v1);
  }
}

CGImageRef CGImageRetain(CGImageRef image)
{
  if (image)
  {
    CFRetain(image);
  }

  return image;
}

void CGPathRelease(CGPathRef path)
{
  if (path)
  {
    CFRelease(path);
  }
}

BOOL CGColorSpaceUsesITUR_2100TF(CGColorSpaceRef a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v2 == CGColorSpaceGetTypeID_type_id)
    {
      v3 = *(a1 + 3);
      if (*(v3 + 16))
      {
        v4 = 1;
      }

      else
      {
        v4 = *(v3 + 17);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void CGImageRelease(CGImageRef image)
{
  if (image)
  {
    CFRelease(image);
  }
}

uint64_t CGCFDictionaryGetBoolean(CFDictionaryRef theDict, const void *a2, BOOL *a3)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (result)
      {
        v6 = result;
        v7 = CFGetTypeID(result);
        if (v7 == CFBooleanGetTypeID())
        {
          if (a3)
          {
            *a3 = CFBooleanGetValue(v6) != 0;
          }

          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

double CGRenderingStateCreateCopy(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x58uLL, 0x1000040931E80BBuLL);
    *v2 = 1;
    if (v2 != a1)
    {
      *(v2 + 8) = *(a1 + 8);
      v4 = *(a1 + 24);
      v5 = *(a1 + 40);
      *(v2 + 56) = *(a1 + 56);
      *(v2 + 40) = v5;
      *(v2 + 24) = v4;
      result = *(a1 + 72);
      *(v2 + 9) = result;
      *(v2 + 1) = *(a1 + 4);
      *(v2 + 20) = *(a1 + 80);
      *(v2 + 42) = *(a1 + 84);
      v2[86] = *(a1 + 86);
    }
  }

  return result;
}

void CGDisplayListDelegateDrawDisplayList(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (!a4 || *(a4 + 688) == *(a4 + 696))
  {
    return;
  }

  a5.n128_u64[0] = 0x7FF0000000000000;
  if (*(a4 + 88) == INFINITY || *(a4 + 96) == INFINITY)
  {
    return;
  }

  v10 = *(a4 + 32);
  v11 = *(*(a3 + 120) + 16);
  if (!v10)
  {
    v12 = 0;
    if (a1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (!CFDictionaryContainsKey(*(a4 + 32), @"kCGContextGroup"))
  {
    v12 = CFDictionaryContainsKey(v10, @"kCGContextColorSpace") != 0;
    if (a1)
    {
      goto LABEL_14;
    }

LABEL_17:
    v18 = 0.0;
    v14 = INFINITY;
    v16 = INFINITY;
    v20 = 0.0;
    goto LABEL_19;
  }

  v12 = 1;
  if (!a1)
  {
    goto LABEL_17;
  }

LABEL_14:
  v13 = a1[6];
  if (v13)
  {
    a5.n128_f64[0] = v13(a1, a2, a3);
    v14 = a5.n128_f64[0];
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v18 = 1.79769313e308;
    v14 = -8.98846567e307;
    v16 = -8.98846567e307;
    v20 = 1.79769313e308;
  }

LABEL_19:
  v21 = *(a3 + 112);
  if (v21)
  {
    Bounds = CGClipStackGetBounds(v21, a5);
    v24 = v23;
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v24 = 0xFFDFFFFFFFFFFFFFLL;
    v26 = 0x7FEFFFFFFFFFFFFFLL;
    Bounds = -8.98846567e307;
    v28 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v72.origin.x = v14;
  v72.origin.y = v16;
  v72.size.width = v18;
  v72.size.height = v20;
  v73 = CGRectIntersection(v72, *&Bounds);
  if (v73.origin.x != INFINITY && v73.origin.y != INFINITY && v73.size.width != 0.0 && v73.size.height != 0.0)
  {
    v29 = *(a3 + 40);
    v68 = *(a3 + 24);
    v69 = v29;
    v70 = *(a3 + 56);
    v30.n64_u64[0] = CGRectApplyInverseAffineTransform(&v68, *&v73.origin.x, v73.origin.y, v73.size.width, v73.size.height).n64_u64[0];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &CGRectNull;
    p_y = &CGRectNull.origin.y;
    p_size = (a4 + 104);
    p_height = (a4 + 112);
    if (*(a4 + 688) == *(a4 + 696))
    {
      p_size = &CGRectNull.size;
    }

    else
    {
      p_y = (a4 + 96);
    }

    if (*(a4 + 688) == *(a4 + 696))
    {
      p_height = &CGRectNull.size.height;
    }

    else
    {
      v37 = (a4 + 88);
    }

    v41 = *p_height;
    x = v37->origin.x;
    v43 = *p_y;
    width = p_size->width;
    if (v11)
    {
      v45 = *(a2 + 40);
      v68 = *(a2 + 24);
      v69 = v45;
      v70 = *(a2 + 56);
      x = CGStyleGetDrawBoundingBoxWithMatrix(v11, &v68, x, v43, width, v41);
      v43 = v46;
      width = v47;
      v41 = v48;
    }

    v74.origin.x = v30.n64_f64[0];
    v74.origin.y = v32;
    v74.size.width = v34;
    v74.size.height = v36;
    v75 = CGRectIntersection(v74, *&x);
    v49 = v75.origin.x;
    *&v68 = v75.origin.x;
    *(&v68 + 1) = *&v75.origin.y;
    *&v69 = v75.size.width;
    *(&v69 + 1) = *&v75.size.height;
    if (v75.origin.x != INFINITY)
    {
      y = v75.origin.y;
      if (v75.origin.y != INFINITY)
      {
        v51 = v75.size.width;
        height = v75.size.height;
        v53 = v75.size.width == 0.0;
        if (v75.size.height == 0.0)
        {
          v53 = 1;
        }

        if (v53 || v12)
        {
          if (v53)
          {
            return;
          }

          v54 = 0;
          if (!a1)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v55 = *(a3 + 120);
          if (*(v55 + 8) != 1.0 || *(v55 + 16) || *(v55 + 40))
          {
            v54 = 1;
            if (!a1)
            {
LABEL_47:
              v56 = a2;
              if (a2 || (v56 = CGRenderingStateCreate()) != 0)
              {
                if (v54)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (Mutable)
                  {
                    v58 = Mutable;
                    if (*MEMORY[0x1E695E4D0])
                    {
                      CFDictionarySetValue(Mutable, @"kCGContextGroup", *MEMORY[0x1E695E4D0]);
                    }

                    CGDisplayList = CG::DisplayList::createCGDisplayList(a4, v58);
                    CFRelease(v58);
                    if (CGDisplayList)
                    {
                      if (a1)
                      {
                        v60 = a1[16];
                        if (v60)
                        {
                          v60(a1, v56, a3, a4);
                        }
                      }

                      if (CGDisplayList != a4)
                      {
                        CFRelease(CGDisplayList);
                      }
                    }
                  }
                }

                else if (a1)
                {
                  v61 = a1[16];
                  if (v61)
                  {
                    v61(a1, v56, a3, a4);
                  }
                }

                if (v56 != a2 && atomic_fetch_add_explicit(v56, 0xFFFFFFFF, memory_order_relaxed) == 1)
                {

                  free(v56);
                }
              }

              return;
            }
          }

          else
          {
            v54 = *(v55 + 5) << 8 != 512;
            if (!a1)
            {
              goto LABEL_47;
            }
          }
        }

        if (a1[16])
        {
          goto LABEL_47;
        }

        if (v12 || v54)
        {
          v62 = CGContextCreateWithDelegateAndInfo(a1, 15, a2, a3, 0, 0);
          if (!v62)
          {
            return;
          }

          v63 = v62;
          v76.origin.x = v49;
          v76.origin.y = y;
          v76.size.width = v51;
          v76.size.height = height;
          CGContextBeginTransparencyLayerWithRect(v62, v76, v10);
          v65 = *(v63 + 13);
          v64 = *(v63 + 14);
        }

        else
        {
          v64 = a2;
          if (!a2)
          {
            v64 = CGRenderingStateCreate();
            if (!v64)
            {
              return;
            }
          }

          v65 = CGGStackCreateWithGState(a3);
          v63 = 0;
        }

        v66 = 0;
        if (v49 == -8.98846567e307 && y == -8.98846567e307 && v51 == 1.79769313e308)
        {
          v66 = height == 1.79769313e308;
        }

        if (v11)
        {
          v66 = 1;
        }

        if (v66)
        {
          v67 = 0;
        }

        else
        {
          v67 = &v68;
        }

        CG::DisplayList::execute(a4 + 16, a1, v64, v65, v67, 0);
        if (v63)
        {
          CGContextEndTransparencyLayer(v63);
          CFRelease(v63);
        }

        else
        {
          if (v65)
          {
            CGGStackReset(v65);
            free(v65);
          }

          if (v64 != a2 && v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFF, memory_order_relaxed) == 1)
          {
            free(v64);
          }
        }
      }
    }
  }
}

BOOL CGCFDictionaryGetRect(const __CFDictionary *a1, const void *a2, UInt8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFDataGetTypeID())
  {
    return 0;
  }

  return get_value_from_data(v5, a3, 32);
}