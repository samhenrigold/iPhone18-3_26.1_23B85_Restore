uint64_t matchExec(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v180[64] = *MEMORY[0x29EDCA608];
  if (a3 && (*a3 - 256) < 0xFFFFFF01)
  {
    return 4294967293;
  }

  v9 = *(a1 + 56);
  if (!v9)
  {
    result = matchPack(a1, 0, 0);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 56);
  }

  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  __dst[1] = 0;
  *__n = 0u;
  v172 = 0u;
  __dst[0] = a2;
  if (v5)
  {
    LODWORD(__dst[1]) = *v5;
    __n[0] = 16 * LODWORD(__dst[1]);
    LOWORD(v178) = *(v9 + 8);
    if (LODWORD(__dst[1]))
    {
      v10 = (16 * LODWORD(__dst[1])) | 0xA;
      LOWORD(__n[1]) = 0x100 / v10;
      v11 = v10 > 0x100;
      goto LABEL_12;
    }
  }

  else
  {
    LODWORD(__dst[1]) = 0;
    __n[0] = 0;
    LOWORD(v178) = *(v9 + 8);
  }

  v11 = 0;
  LOWORD(__n[1]) = 25;
LABEL_12:
  v13 = *v9;
  v12 = v9[1];
  *&v177 = a1;
  *(&v177 + 1) = v13;
  *(&v178 + 1) = v12;
  *&v175 = v179;
  DWORD2(v175) = 0;
  *&v176 = v180;
  DWORD2(v176) = 0;
  v14 = a2;
  if (v11)
  {
    if (!expandBuffers(&v172))
    {
      return 4294967292;
    }

    v14 = __dst[0];
  }

  v15 = &v175;
  v16 = a2[1];
  *&v172 = *a2;
  v17 = v172;
  *(&v172 + 1) = v16;
  *v14 = 0;
  v154 = __dst[0];
  *(__dst[0] + 1) = v16 - v17;
  v18 = __dst[1];
  if (LODWORD(__dst[1]) >= 2)
  {
    memset(__dst[0] + 16, 255, 16 * (LODWORD(__dst[1]) - 1));
  }

  v158 = a1;
  v159 = v4;
  v157 = v5;
  DWORD2(v175) = 0;
  v19 = *(&v172 + 1);
  v20 = __n[0];
  v21 = v175;
  *(v175 + 6) = 0;
  v169 = v19;
  if (v17 > v19)
  {
    v22 = v17;
    goto LABEL_19;
  }

  v24 = 0;
  v25 = 0;
  a3 = 0;
  v26 = 0;
  v27 = (v21 + 10);
  v28 = *(&v177 + 1);
  v160 = *(&v177 + 1);
  v162 = *(&v178 + 1);
  v29 = *(&v177 + 1) + 4;
  v152 = *(&v177 + 1) + 3;
  v153 = v20;
  v22 = v17;
  v155 = v18;
LABEL_22:
  v30 = v22;
LABEL_23:
  a4 = &v30[-v17];
  while (2)
  {
    v31 = (v28 + v26);
    v32 = *v31;
    v33 = v32 & 0xF;
    switch(v32 & 0xF)
    {
      case 1uLL:
      case 0xEuLL:
LABEL_390:
        __break(1u);
        JUMPOUT(0x297E1D824);
      case 2uLL:
        if (v30 == v19 || v31[1] != *v30)
        {
          goto LABEL_149;
        }

        v26 += 2;
        goto LABEL_219;
      case 3uLL:
        if (v30 == v19 || v32 < 0x10)
        {
          goto LABEL_149;
        }

        v68 = v32 >> 4;
        v69 = (v152 + v26);
        while (*v69 != *v30)
        {
          v69 += 3;
          if (!--v68)
          {
            goto LABEL_149;
          }
        }

        v26 = *(v69 - 1);
        goto LABEL_219;
      case 5uLL:
        memcpy(v154, v27, v153);
        LODWORD(__dst[1]) = *(v21 + 6);
        v139 = *v31;
LABEL_365:
        v23 = v139 >> 4;
        goto LABEL_366;
      case 6uLL:
        v34 = *v31;
        v35 = v34 >> 4;
        if (v18 > v35)
        {
          *&v27[16 * v35 + 8] = a4;
          v34 = *v31;
        }

        v36 = v34 & 0xF;
        if (v36 > 7)
        {
          if ((v34 & 0xF) <= 0xA)
          {
            switch(v36)
            {
              case 8u:
                goto LABEL_75;
              case 9u:
                v37 = 1;
                goto LABEL_94;
              case 0xAu:
                goto LABEL_75;
            }
          }

          else
          {
            if ((v34 & 0xF) <= 0xC)
            {
              if (v36 != 11)
              {
                goto LABEL_75;
              }

LABEL_90:
              v37 = ((v34 & 0xF0) >> 3) | 1;
              goto LABEL_94;
            }

            if (v36 == 13)
            {
              goto LABEL_90;
            }

            if (v36 == 15)
            {
              v37 = ((v34 >> 3) & 0x1E) - 1;
              goto LABEL_94;
            }
          }
        }

        else
        {
          v37 = 2;
          if ((v34 & 0xF) <= 3)
          {
            if ((v34 & 0xF) == 0)
            {
              goto LABEL_75;
            }

            if (v36 == 2)
            {
              goto LABEL_94;
            }

            if (v36 == 3)
            {
              v37 = 3 * (v34 >> 4) + 1;
              goto LABEL_94;
            }
          }

          else
          {
            if (v36 - 5 < 3)
            {
              goto LABEL_94;
            }

            if (v36 == 4)
            {
LABEL_75:
              v37 = 3;
              goto LABEL_94;
            }
          }
        }

        v37 = 0;
LABEL_94:
        v26 += v37;
        continue;
      case 7uLL:
        v38 = *v31;
        v39 = v38 >> 4;
        if (v18 <= v39)
        {
          goto LABEL_39;
        }

        *&v27[16 * v39] = a4;
        v40 = *(v21 + 6);
        if (v39 > v40)
        {
          v170 = v25;
          v164 = a3;
          v166 = v24;
          v41 = v17;
          v42 = v21;
          v43 = v27;
          v44 = v29;
          v45 = a4;
          memset(&v27[16 * v40], 255, 16 * (v39 - v40));
          a4 = v45;
          a3 = v164;
          v24 = v166;
          v25 = v170;
          v29 = v44;
          v27 = v43;
          v21 = v42;
          v17 = v41;
          v18 = v155;
          v28 = v160;
          v19 = v169;
        }

        if (v38 > 0xFEF)
        {
          goto LABEL_149;
        }

        v46 = *(v21 + 6);
        if (v46 <= v39 + 1)
        {
          v46 = v39 + 1;
        }

        *(v21 + 6) = v46;
        v38 = *v31;
LABEL_39:
        v47 = v38 & 0xF;
        if (v47 > 7)
        {
          if ((v38 & 0xF) <= 0xA)
          {
            switch(v47)
            {
              case 8u:
                goto LABEL_83;
              case 9u:
                v48 = 1;
                goto LABEL_97;
              case 0xAu:
                goto LABEL_83;
            }
          }

          else
          {
            if ((v38 & 0xF) <= 0xC)
            {
              if (v47 != 11)
              {
                goto LABEL_83;
              }

LABEL_91:
              v48 = ((v38 & 0xF0) >> 3) | 1;
              goto LABEL_97;
            }

            if (v47 == 13)
            {
              goto LABEL_91;
            }

            if (v47 == 15)
            {
              v48 = ((v38 >> 3) & 0x1E) - 1;
              goto LABEL_97;
            }
          }
        }

        else
        {
          v48 = 2;
          if ((v38 & 0xF) <= 3)
          {
            if ((v38 & 0xF) == 0)
            {
              goto LABEL_83;
            }

            if (v47 == 2)
            {
              goto LABEL_97;
            }

            if (v47 == 3)
            {
              v48 = 2 * (v38 >> 4) + ((v38 & 0xF0) >> 4) + 1;
              goto LABEL_97;
            }
          }

          else
          {
            if (v47 - 5 < 3)
            {
              goto LABEL_97;
            }

            if (v47 == 4)
            {
LABEL_83:
              v48 = 3;
              goto LABEL_97;
            }
          }
        }

        v48 = 0;
LABEL_97:
        v26 += v48;
        continue;
      case 9uLL:
        v49 = (v32 >> 4) & 7;
        if (v49 > 1)
        {
          if (v49 == 2)
          {
            if (v30 != v19)
            {
              goto LABEL_149;
            }

            goto LABEL_63;
          }

          if (v49 != 3 || (v70 = v26 + 1, (v70 & 0x10000) != 0))
          {
LABEL_149:
            if ((v25 & 1) == 0)
            {
              goto LABEL_20;
            }

            v30 = (a3 + 1);
            v70 = v24;
          }

          v71 = (v28 + v70);
          v72 = *v71;
          v73 = v72 & 0xF;
          if (v73 <= 3)
          {
            if ((v72 & 0xF) == 0)
            {
LABEL_171:
              v81 = v19 - (v72 >> 2);
              if (v81 < v30)
              {
                goto LABEL_20;
              }

              v82 = (v162 + *(v71 + 1));
              v79 = v30;
              while (1)
              {
                a3 = *v79;
                if (a3 != *v82)
                {
                  goto LABEL_193;
                }

                if (v72 >= 8)
                {
                  a3 = 1;
                  do
                  {
                    a4 = v82[a3];
                    if (a4 != v79[a3])
                    {
                      goto LABEL_193;
                    }
                  }

                  while (v72 >> 2 != ++a3);
                }

                if ((v72 & 0xF) > 7)
                {
                  break;
                }

                a3 = 2;
                if ((v72 & 0xF) <= 3)
                {
                  if ((v72 & 0xF) == 0)
                  {
                    goto LABEL_190;
                  }

                  if (v73 != 2)
                  {
                    a3 = 3 * (v72 >> 4) + 1;
                    if (v73 != 3)
                    {
LABEL_195:
                      a3 = 0;
                    }
                  }
                }

                else
                {
                  a4 = v73 - 5;
                  if (a4 >= 3)
                  {
                    if (v73 != 4)
                    {
                      goto LABEL_195;
                    }

                    goto LABEL_190;
                  }
                }

LABEL_191:
                v26 = v70 + a3;
                if (!__CFADD__(v70, a3) && v26 < 0x10000)
                {
                  goto LABEL_217;
                }

LABEL_193:
                if (++v79 > v81)
                {
                  goto LABEL_20;
                }
              }

              if ((v72 & 0xF) <= 0xA && v73 == 9)
              {
                a3 = 1;
                goto LABEL_191;
              }

LABEL_190:
              a3 = 3;
              goto LABEL_191;
            }

            if (v73 != 2)
            {
              if (v73 != 3)
              {
                goto LABEL_20;
              }

              if (v72 >= 0x10)
              {
                v75 = 0;
                v76 = v72 >> 4;
                v77 = v71 + 3;
                do
                {
                  v78 = *v77;
                  v77 += 3;
                  *(&v180[32] + v78) = v75++;
                }

                while (v76 != v75);
              }

              if (v30 >= v19)
              {
                goto LABEL_20;
              }

              v79 = v30;
              while (1)
              {
                v80 = &v71[3 * *(&v180[32] + *v79) + 1];
                if (v80[2] == *v79)
                {
                  break;
                }

                if (++v79 == v19)
                {
                  goto LABEL_20;
                }
              }

              v26 = *v80;
              goto LABEL_217;
            }

            if (v30 < v19)
            {
              v79 = v30;
              while (*v79 != v71[1])
              {
                if (++v79 == v19)
                {
                  goto LABEL_20;
                }
              }

              if (v70 <= 0xFFFDu)
              {
                v26 = v70 + 2;
                goto LABEL_217;
              }
            }
          }

          else
          {
            if ((v72 & 0xF) <= 0xA)
            {
              if (v73 != 4 && v73 != 8)
              {
                goto LABEL_20;
              }

              goto LABEL_171;
            }

            if (v73 != 11)
            {
              if (v73 != 12)
              {
                goto LABEL_20;
              }

              goto LABEL_171;
            }

            if (v30 < v19)
            {
              v83 = v71[1];
              v84 = 2 * (v72 >> 4);
              v85 = (v72 >> 4);
              v79 = v30;
              while (1)
              {
                if (v72 >= 0x10)
                {
                  v86 = (*v79 - v83);
                  if (v86 <= (v71[v84 - 2 + 2] - v83))
                  {
                    a3 = v71[2] - v83;
                    if (v86 <= (v71[2] - v83))
                    {
                      break;
                    }

                    v87 = 0;
                    a3 = v29 + v70;
                    do
                    {
                      if (v85 - 1 == v87)
                      {
                        goto LABEL_206;
                      }

                      v88 = *(a3 - 1);
                      v89 = *a3;
                      a3 += 2;
                      v90 = v89 - v88;
                      a4 = (*v79 - v88);
                      ++v87;
                    }

                    while (a4 > v90);
                    if (v87 < v85)
                    {
                      break;
                    }
                  }
                }

LABEL_206:
                if (++v79 == v19)
                {
                  goto LABEL_20;
                }
              }

              v26 = v84 + v70 + 1;
              if (!HIWORD(v26))
              {
LABEL_217:
                v25 = 1;
                goto LABEL_220;
              }
            }
          }

LABEL_20:
          v23 = 0;
          goto LABEL_366;
        }

        if (v49 == 1)
        {
          if (v17 != v30)
          {
            goto LABEL_149;
          }

LABEL_63:
          ++v26;
          continue;
        }

        if (v30 == v19)
        {
          goto LABEL_149;
        }

        ++v26;
LABEL_219:
        v79 = v30;
        v30 = a3;
        v70 = v24;
LABEL_220:
        v22 = v79 + 1;
        v24 = v70;
        a3 = v30;
        v15 = &v175;
        v20 = v153;
        if ((v79 + 1) <= v19)
        {
          goto LABEL_22;
        }

LABEL_19:
        if (v22 > v19)
        {
          goto LABEL_20;
        }

        v91 = &v176;
        v161 = v20 + 10;
LABEL_223:
        v156 = v91;
        *(v91 + 2) = 0;
        v23 = *(v15 + 2);
        if (!v23)
        {
          goto LABEL_366;
        }

        v92 = 0;
        v93 = 0;
        v168 = v15;
LABEL_225:
        v171 = v93;
        v94 = (*v15 + v92);
        v95 = *v94;
        v96 = *(v94 + 1);
        v97 = (v94 + 5);
        v98 = *(&v177 + 1);
        v99 = v172;
        a3 = &v22[-v172];
        v100 = *(&v177 + 1) + 4;
        while (2)
        {
          v101 = (v98 + v95);
          v102 = *v101;
          v103 = v102 & 0xF;
          switch(v102 & 0xF)
          {
            case 1uLL:
            case 0xEuLL:
              goto LABEL_390;
            case 2uLL:
              if (v22 == v19 || v101[1] != *v22)
              {
                goto LABEL_360;
              }

              LOWORD(v95) = v95 + 2;
              goto LABEL_357;
            case 3uLL:
              if (v22 == v19 || v102 < 0x10)
              {
                goto LABEL_360;
              }

              v128 = v102 >> 4;
              v129 = (v98 + v95 + 3);
              while (*v129 != *v22)
              {
                v129 += 3;
                if (!--v128)
                {
                  goto LABEL_360;
                }
              }

              LOWORD(v95) = *(v129 - 1);
              goto LABEL_357;
            case 5uLL:
              memcpy(__dst[0], v97, __n[0]);
              LODWORD(__dst[1]) = *(v94 + 3);
              v139 = *v101;
              goto LABEL_365;
            case 6uLL:
              v104 = *v101;
              v105 = v104 >> 4;
              if (LODWORD(__dst[1]) > v105)
              {
                *&v97[16 * v105 + 8] = a3;
                v104 = *v101;
              }

              v106 = v104 & 0xF;
              if (v106 > 7)
              {
                if ((v104 & 0xF) <= 0xA)
                {
                  switch(v106)
                  {
                    case 8u:
                      goto LABEL_277;
                    case 9u:
                      v107 = 1;
                      goto LABEL_296;
                    case 0xAu:
                      goto LABEL_277;
                  }
                }

                else
                {
                  if ((v104 & 0xF) <= 0xC)
                  {
                    if (v106 != 11)
                    {
                      goto LABEL_277;
                    }

LABEL_292:
                    v107 = ((v104 & 0xF0) >> 3) | 1;
                    goto LABEL_296;
                  }

                  if (v106 == 13)
                  {
                    goto LABEL_292;
                  }

                  if (v106 == 15)
                  {
                    v107 = ((v104 >> 3) & 0x1E) - 1;
                    goto LABEL_296;
                  }
                }
              }

              else
              {
                v107 = 2;
                if ((v104 & 0xF) <= 3)
                {
                  if ((v104 & 0xF) == 0)
                  {
                    goto LABEL_277;
                  }

                  if (v106 == 2)
                  {
                    goto LABEL_296;
                  }

                  if (v106 == 3)
                  {
                    v107 = 3 * (v104 >> 4) + 1;
                    goto LABEL_296;
                  }
                }

                else
                {
                  if (v106 - 5 < 3)
                  {
                    goto LABEL_296;
                  }

                  if (v106 == 4)
                  {
LABEL_277:
                    v107 = 3;
                    goto LABEL_296;
                  }
                }
              }

              v107 = 0;
LABEL_296:
              v95 += v107;
              continue;
            case 7uLL:
              v108 = *v101;
              v109 = v108 >> 4;
              if (LODWORD(__dst[1]) <= v109)
              {
                goto LABEL_241;
              }

              *&v97[16 * v109] = a3;
              v110 = *(v94 + 3);
              if (v109 > v110)
              {
                v165 = a3;
                v167 = v99;
                v163 = v98;
                v111 = v94;
                v112 = v22;
                v113 = v97;
                v114 = v96;
                memset(&v97[16 * v110], 255, 16 * (v109 - v110));
                v97 = v113;
                v22 = v112;
                v94 = v111;
                v98 = v163;
                a3 = v165;
                v99 = v167;
                v96 = v114;
                v19 = v169;
              }

              if (v108 > 0xFEF)
              {
                goto LABEL_360;
              }

              v115 = *(v94 + 3);
              if (v115 <= v109 + 1)
              {
                v115 = v109 + 1;
              }

              *(v94 + 3) = v115;
              v108 = *v101;
LABEL_241:
              v116 = v108 & 0xF;
              if (v116 > 7)
              {
                if ((v108 & 0xF) <= 0xA)
                {
                  switch(v116)
                  {
                    case 8u:
                      goto LABEL_285;
                    case 9u:
                      v117 = 1;
                      goto LABEL_299;
                    case 0xAu:
                      goto LABEL_285;
                  }
                }

                else
                {
                  if ((v108 & 0xF) <= 0xC)
                  {
                    if (v116 != 11)
                    {
                      goto LABEL_285;
                    }

LABEL_293:
                    v117 = ((v108 & 0xF0) >> 3) | 1;
                    goto LABEL_299;
                  }

                  if (v116 == 13)
                  {
                    goto LABEL_293;
                  }

                  if (v116 == 15)
                  {
                    v117 = ((v108 >> 3) & 0x1E) - 1;
                    goto LABEL_299;
                  }
                }
              }

              else
              {
                v117 = 2;
                if ((v108 & 0xF) <= 3)
                {
                  if ((v108 & 0xF) == 0)
                  {
                    goto LABEL_285;
                  }

                  if (v116 == 2)
                  {
                    goto LABEL_299;
                  }

                  if (v116 == 3)
                  {
                    v117 = 2 * (v108 >> 4) + ((v108 & 0xF0) >> 4) + 1;
                    goto LABEL_299;
                  }
                }

                else
                {
                  if (v116 - 5 < 3)
                  {
                    goto LABEL_299;
                  }

                  if (v116 == 4)
                  {
LABEL_285:
                    v117 = 3;
                    goto LABEL_299;
                  }
                }
              }

              v117 = 0;
LABEL_299:
              v95 += v117;
              continue;
            case 9uLL:
              v118 = (v102 >> 4) & 7;
              if (v118 > 1)
              {
                if (v118 == 2)
                {
                  if (v22 != v19)
                  {
                    goto LABEL_360;
                  }

LABEL_265:
                  ++v95;
                  continue;
                }

                if (v118 != 3 || ~v95 == 0)
                {
                  goto LABEL_360;
                }

                addNodeToList(&v172, v156, v94, v95, 0);
                v136 = (v95 + 1);
                v137 = v168;
                v138 = v94;
                LODWORD(v96) = 0;
LABEL_359:
                addNodeToList(&v172, v137, v138, v136, v96);
                v19 = v169;
                goto LABEL_360;
              }

              if (v118 == 1)
              {
                if (v99 != v22)
                {
                  goto LABEL_360;
                }

                goto LABEL_265;
              }

              if (v22 != v19)
              {
                LOWORD(v95) = v95 + 1;
LABEL_357:
                LODWORD(v96) = 0;
                goto LABEL_358;
              }

LABEL_360:
              v92 += v161;
              v93 = v171 + 1;
              v15 = v168;
              if ((v171 + 1) < *(v168 + 2))
              {
                goto LABEL_225;
              }

              v23 = 0;
              ++v22;
              v91 = v168;
              v15 = v156;
              if (v22 <= v19)
              {
                goto LABEL_223;
              }

LABEL_366:
              *v159 = v23;
              v140 = __dst[1];
              if (v157)
              {
                *v157 = __dst[1];
              }

              if (v140)
              {
                v141 = 0;
                v142 = __dst[0];
                v143 = v172;
                v144 = *(&v172 + 1) - v172;
                do
                {
                  v145 = *v142;
                  if (*v142 > v144 || ((v146 = v142[1], v146 <= v144) ? (v147 = v145 > v146) : (v147 = 1), v147))
                  {
                    *v142 = 0;
                    v142[1] = 0;
                  }

                  else
                  {
                    *v142 = v143 + v145;
                    v142[1] = v143 + v146;
                  }

                  ++v141;
                  v142 += 2;
                }

                while (v141 < LODWORD(__dst[1]));
              }

              if (v175 != v179)
              {
                (*(v158 + 16))(v175, *(v158 + 24), a3, a4);
              }

              return 0;
            case 0xAuLL:
              v95 = *(v101 + 1);
              continue;
            case 0xBuLL:
              if (v22 == v19 || v102 < 0x10)
              {
                goto LABEL_360;
              }

              if ((*v22 - v101[1]) <= (v101[2] - v101[1]))
              {
                goto LABEL_317;
              }

              v124 = 0;
              v125 = (v98 + v95 + 4);
              while ((v102 >> 4) - 1 != v124)
              {
                v126 = *(v125 - 1);
                v127 = *v125;
                v125 += 2;
                ++v124;
                if ((*v22 - v126) <= (v127 - v126))
                {
                  if (v124 >= v102 >> 4)
                  {
                    goto LABEL_360;
                  }

LABEL_317:
                  v95 += (v102 >> 3) | 1;
                  goto LABEL_357;
                }
              }

              goto LABEL_360;
            case 0xDuLL:
              if (v22 == v19 || v102 < 0x10)
              {
                goto LABEL_258;
              }

              if ((*v22 - v101[1]) <= (v101[2] - v101[1]))
              {
                goto LABEL_358;
              }

              v119 = 0;
              v120 = (v100 + v95);
              do
              {
                if ((v102 >> 4) - 1 == v119)
                {
                  goto LABEL_258;
                }

                v121 = *(v120 - 1);
                v122 = *v120;
                v120 += 2;
                ++v119;
              }

              while ((*v22 - v121) > (v122 - v121));
              if (v119 < v102 >> 4)
              {
                goto LABEL_358;
              }

LABEL_258:
              v95 += (v102 >> 3) | 1;
              continue;
            case 0xFuLL:
              v130 = ((v102 >> 3) & 0x1E) - 1;
              v66 = __CFADD__(v130, v95);
              v131 = v130 + v95;
              if (v66 || HIWORD(v131))
              {
                goto LABEL_360;
              }

              if (!addNodeToList(&v172, v168, v94, v131, 0))
              {
                goto LABEL_381;
              }

              v19 = v169;
              if (*v101 < 0x20u)
              {
                goto LABEL_360;
              }

              v132 = (v98 + v95 + 1);
              v133 = 1;
              while (1)
              {
                v134 = *v132++;
                if ((addNodeToList(&v172, v168, v94, v134, 0) & 1) == 0)
                {
                  break;
                }

                ++v133;
                v19 = v169;
                if (v133 >= *v101 >> 4)
                {
                  goto LABEL_360;
                }
              }

LABEL_381:
              *v159 = 0;
              return 4294967292;
            default:
              if ((v102 & 0xF) > 7)
              {
                if ((v102 & 0xF) <= 9)
                {
                  if (v103 != 8)
                  {
                    v123 = 1;
                    goto LABEL_347;
                  }
                }

                else if (v103 != 10)
                {
                  if (v103 == 11)
                  {
                    v123 = (v102 >> 3) | 1;
                    goto LABEL_347;
                  }

                  if (v103 != 12)
                  {
LABEL_355:
                    v123 = 0;
LABEL_347:
                    if (v22 == v19 || (v123 + v95) >> 16 || *(*(&v178 + 1) + *(v101 + 1) + v96) != *v22)
                    {
                      goto LABEL_360;
                    }

                    LODWORD(v96) = v96 + 1;
                    if (v96 == v102 >> 2)
                    {
                      LOWORD(v95) = v123 + v95;
                      goto LABEL_357;
                    }

LABEL_358:
                    v136 = v95;
                    v137 = v156;
                    v138 = v94;
                    goto LABEL_359;
                  }
                }
              }

              else
              {
                v123 = 2;
                if ((v102 & 0xF) <= 3)
                {
                  if ((v102 & 0xF) != 0)
                  {
                    if (v103 == 2)
                    {
                      goto LABEL_347;
                    }

                    if (v103 == 3)
                    {
                      v123 = 3 * (v102 >> 4) + 1;
                      goto LABEL_347;
                    }

                    goto LABEL_355;
                  }
                }

                else
                {
                  if ((v103 - 5) < 3)
                  {
                    goto LABEL_347;
                  }

                  if (v103 != 4)
                  {
                    goto LABEL_355;
                  }
                }
              }

              v123 = 3;
              goto LABEL_347;
          }
        }

      case 0xAuLL:
        v26 = *(v31 + 1);
        continue;
      case 0xBuLL:
        if (v30 == v19 || v32 < 0x10)
        {
          goto LABEL_149;
        }

        if ((*v30 - v31[1]) <= (v31[2] - v31[1]))
        {
          goto LABEL_131;
        }

        v61 = 0;
        v62 = (v29 + v26);
        do
        {
          if ((v32 >> 4) - 1 == v61)
          {
            goto LABEL_149;
          }

          v63 = *(v62 - 1);
          v64 = *v62;
          v62 += 2;
          ++v61;
        }

        while ((*v30 - v63) > (v64 - v63));
        if (v61 >= v32 >> 4)
        {
          goto LABEL_149;
        }

LABEL_131:
        v26 += (v32 >> 3) | 1;
        goto LABEL_219;
      case 0xDuLL:
        if (v30 == v19 || v32 < 0x10)
        {
          goto LABEL_56;
        }

        if ((*v30 - v31[1]) <= (v31[2] - v31[1]))
        {
          goto LABEL_219;
        }

        v50 = 0;
        v51 = (v29 + v26);
        do
        {
          if ((v32 >> 4) - 1 == v50)
          {
            goto LABEL_56;
          }

          v52 = *(v51 - 1);
          v53 = *v51;
          v51 += 2;
          ++v50;
        }

        while ((*v30 - v52) > (v53 - v52));
        if (v50 < v32 >> 4)
        {
          goto LABEL_219;
        }

LABEL_56:
        v26 += (v32 >> 3) | 1;
        continue;
      case 0xFuLL:
        v65 = ((v32 >> 3) & 0x1E) - 1;
        v66 = __CFADD__(v65, v26);
        v67 = v65 + v26;
        if (v66 || HIWORD(v67))
        {
          goto LABEL_149;
        }

        if (!addNodeToList(&v172, &v175, v21, v67, 0))
        {
          return 4294967292;
        }

        if (*v31 < 0x20u)
        {
          goto LABEL_389;
        }

        v149 = (v28 + v26 + 1);
        v150 = 1;
        do
        {
          v151 = *v149++;
          if ((addNodeToList(&v172, &v175, v21, v151, 0) & 1) == 0)
          {
            return 4294967292;
          }

          ++v150;
        }

        while (v150 < *v31 >> 4);
LABEL_389:
        v22 = v30;
        v15 = &v175;
        v19 = v169;
        v20 = v153;
        goto LABEL_19;
      default:
        if ((v32 & 0xF) > 7)
        {
          if ((v32 & 0xF) <= 9)
          {
            if (v33 != 8)
            {
              v54 = 1;
              goto LABEL_115;
            }

LABEL_114:
            v54 = 3;
            goto LABEL_115;
          }

          switch(v33)
          {
            case 10:
              goto LABEL_114;
            case 11:
              v54 = (v32 >> 3) | 1;
              goto LABEL_115;
            case 12:
              goto LABEL_114;
          }
        }

        else
        {
          v54 = 2;
          if ((v32 & 0xF) <= 3)
          {
            if ((v32 & 0xF) == 0)
            {
              goto LABEL_114;
            }

            if (v33 == 2)
            {
              goto LABEL_115;
            }

            if (v33 == 3)
            {
              v54 = 3 * (v32 >> 4) + 1;
              goto LABEL_115;
            }
          }

          else
          {
            if ((v33 - 5) < 3)
            {
              goto LABEL_115;
            }

            if (v33 == 4)
            {
              goto LABEL_114;
            }
          }
        }

        v54 = 0;
LABEL_115:
        v26 = v54 + v26;
        if (HIWORD(v26))
        {
          goto LABEL_149;
        }

        v55 = v32 >> 2;
        if ((v19 - v30) < (v32 >> 2))
        {
          goto LABEL_149;
        }

        v56 = (v162 + *(v31 + 1));
        v57 = &v30[v55];
        while (v55)
        {
          LODWORD(v55) = v55 - 1;
          v59 = *v56++;
          v58 = v59;
          v60 = *v30++;
          if (v58 != v60)
          {
            goto LABEL_149;
          }
        }

        v30 = v57;
        goto LABEL_23;
    }
  }
}

uint64_t expandBuffers(uint64_t a1)
{
  v1 = *(a1 + 32) + 10;
  v2 = *(a1 + 96);
  if (v1 > 0x3FFFFFFF / v2)
  {
    return 0;
  }

  result = (*(*(a1 + 80) + 8))(2 * v1 * v2, *(*(a1 + 80) + 24));
  if (result)
  {
    v5 = result;
    memcpy(result, *(a1 + 48), v1 * *(a1 + 56));
    *(a1 + 48) = v5;
    v6 = (v5 + v1 * v2);
    memcpy(v6, *(a1 + 64), v1 * *(a1 + 72));
    *(a1 + 64) = v6;
    *(a1 + 40) = v2;
    return 1;
  }

  return result;
}

uint64_t addNodeToList(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v6 = a4;
  v10 = *(a1 + 32);
  v11 = v10 + 10;
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    v14 = (v12 + 2);
    v15 = *(a2 + 2);
    while (*(v14 - 1) != a4 || *v14 != a5)
    {
      v14 = (v14 + v11);
      if (!--v15)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (v13 >= *(a1 + 40))
    {
      result = expandBuffers(a1);
      if (!result)
      {
        return result;
      }

      v12 = *a2;
      v16 = *(a2 + 2);
      v10 = *(a1 + 32);
    }

    else
    {
      v16 = *(a2 + 2);
    }

    v18 = v12 + v11 * v13;
    *(a2 + 2) = v16 + 1;
    *v18 = v6;
    *(v18 + 2) = a5;
    *(v18 + 6) = *(a3 + 6);
    if (v10)
    {
      memcpy((v18 + 10), (a3 + 10), v10);
    }
  }

  return 1;
}

uint64_t matchOptimize(uint64_t a1, int a2)
{
  v172 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = *(a1 + 64);
  v4 = *(v3 + 36);
  v5 = (*(a1 + 8))(16 * v4, *(a1 + 24));
  if (!v5)
  {
    return 4294967292;
  }

  v6 = v5;
  bzero(v5, 16 * v4);
  __src = v6;
  v7 = &v6[2 * v4];
  *(v3 + 16) = v7;
  v8 = v3 + 16;
  *(v8 + 8) = &v7[v4];
  v148 = v8;
  *(v8 + 16) = 0;
  v9 = *(v2 + 64);
  *(*(v9 + 16) + 4 * *(v9 + 8)) = 1;
  if (*(v9 + 12))
  {
    v10 = 0;
    do
    {
      nodeModRefs(v2, v10++, 1);
    }

    while (v10 < *(v9 + 12));
  }

  simplifyBranches(v2, __src);
  v11 = *(v2 + 64);
  v149 = &__src[*(v11 + 36)];
  v12 = v11 + 40;
  v168 = *(v11 + 16);
  v158 = __src;
  v153 = v11;
  v154 = v2;
  do
  {
    v13 = *(v11 + 12);
    if (!v13)
    {
      break;
    }

    v14 = 0;
    v150 = 0;
    v152 = *(v11 + 12);
    do
    {
      v15 = v12 + 16 * v14;
      if (*v15 != 39)
      {
        goto LABEL_39;
      }

      v155 = v12 + 16 * v14;
      v156 = v14;
      v16 = *(v15 + 8);
      v17 = v16[1];
      if (!v17)
      {
        goto LABEL_37;
      }

      for (i = 0; i < v17; ++i)
      {
        v19 = v16[i + 2];
        if (*(v168 + 4 * v19) != 1)
        {
          goto LABEL_35;
        }

        v20 = (v12 + 16 * v19);
        v21 = *v20;
        v22 = v21 > 0x34;
        v23 = (1 << v21) & 0x1D000000010000;
        v24 = v22 || v23 == 0;
        v25 = i + 1;
        if (v24 || v25 >= v17)
        {
          goto LABEL_35;
        }

        v157 = v16[i + 2];
        v27 = 1;
LABEL_21:
        v165 = v27;
        v28 = 0;
        v159 = v25;
        v162 = v16;
        v29 = v25;
        v30 = 4 * v25 + 8;
        v31 = v16 + v30;
        while (1)
        {
          v32 = *&v31[4 * v28];
          v33 = v12;
          v34 = (v12 + 16 * v32);
          if (*(v168 + 4 * v32) == 1 && !nodeCmp(v20, (v12 + 16 * v32)))
          {
            v158[v165] = v32;
            v35 = v162;
            if (*v162 >= 2u)
            {
              v36 = 4 * (v162[1] - 1);
              v37 = (*(v154 + 8))(v36 + 8, *(v154 + 24));
              if (!v37)
              {
                goto LABEL_191;
              }

              v38 = v37;
              memcpy(v37, v162, v36 + 8);
              *v38 = 1;
              *v155 = 32295;
              v35 = v38;
              *(v155 + 8) = v38;
            }

            v27 = v165 + 1;
            LODWORD(v25) = v29 + v28;
            v39 = v35[1];
            v35[1] = v39 - 1;
            v40 = v35;
            memmove(v35 + v30, &v35[(v29 + v28 + 1) + 2], 4 * (~v159 + v39 - v28));
            v16 = v40;
            v17 = v40[1];
            v12 = v33;
            if (v17 <= (v159 + v28))
            {
              goto LABEL_34;
            }

            goto LABEL_21;
          }

          if (nodesMightOverlap(v20, v34))
          {
            break;
          }

          ++v28;
          v30 += 4;
          v12 = v33;
          if (v28 + v29 >= v17)
          {
            goto LABEL_33;
          }
        }

        v12 = v33;
LABEL_33:
        v27 = v165;
        v16 = v162;
LABEL_34:
        if (v27 >= 2)
        {
          v41 = v158;
          *v158 = v157;
          v2 = v154;
          if (v16[1] == 1)
          {
            *v155 = 49;
            *(v155 + 4) = v16[2];
            (*(v154 + 16))();
            v41 = v158;
            v12 = v33;
          }

          if (*v20 != 34)
          {
            while (2)
            {
              v43 = 0;
              v44 = v41;
              v41 = v149;
              v158 = v44;
              do
              {
                v149[v43] = *(v12 + 16 * v44[v43] + 4);
                if (v43)
                {
                  *(v168 + 4 * v44[v43]) = 0;
                  v45 = v158[v43];
                  v46 = v12 + 16 * v45;
                  *v46 = -1;
                  *(v46 + 4) = -1;
                  v47 = *(v153 + 24);
                  v48 = *(v153 + 32);
                  *(v153 + 32) = v48 + 1;
                  *(v47 + 4 * v48) = v45;
                  v44 = v158;
                }

                ++v43;
              }

              while (v27 != v43);
              v49 = 0;
              v50 = (v12 + 16 * *v149);
              do
              {
                v51 = v149[v49];
                if (*(v168 + 4 * v51) > 1u || (v52 = nodeCmp(v50, (v12 + 16 * v51)), v12 = v33, v52))
                {
                  v53 = *(v153 + 12);
                  if (v53 >= *(v153 + 36))
                  {
                    v88 = 0xFFFFFFFFLL;
                    goto LABEL_196;
                  }

                  *(v153 + 12) = v53 + 1;
                  *(*(v153 + 16) + 4 * v53) = 1;
                  v54 = v12 + 16 * v53;
                  v33 = v12;
                  v55 = (*(v154 + 8))(4 * v27 + 8, *(v154 + 24));
                  if (!v55)
                  {
                    *v54 = 34;
                    *(v54 + 4) = -1;
LABEL_195:
                    v88 = 4294967292;
                    goto LABEL_196;
                  }

                  *v54 = 8487;
                  *(v54 + 4) = -1;
                  *(v54 + 8) = v55;
                  v150 = 1;
                  *v55 = 1;
                  v55[1] = v27;
                  memcpy(v55 + 2, v149, 4 * v27);
                  *(v33 + 16 * *v158 + 4) = v53;
                  goto LABEL_60;
                }

                ++v49;
              }

              while (v27 != v49);
              v149 = v158;
              if (*v50 != 34)
              {
                continue;
              }

              break;
            }
          }

            ;
          }

          v150 = 1;
          v158 = v41;
LABEL_60:
          v11 = v153;
          v12 = v33;
          goto LABEL_38;
        }

LABEL_35:
        v17 = v16[1];
      }

      v2 = v154;
LABEL_37:
      v11 = v153;
LABEL_38:
      v13 = v152;
      v14 = v156;
LABEL_39:
      ++v14;
    }

    while (v14 != v13);
  }

  while ((v150 & 1) != 0);
  simplifyBranches(v2, __src);
  v56 = *(v2 + 64);
  v57 = *(v56 + 12);
  memset(__src, 255, 4 * v57);
  if (v57)
  {
    v58 = 0;
    v59 = v56 + 40;
    do
    {
      v60 = v59 + 16 * v58;
      if (*v60 == 39)
      {
        *(v60 + 4) = -1;
        v61 = *(v60 + 8);
        v62 = *(v61 + 4);
        if (v62)
        {
          v63 = (v61 + 8);
          v64 = -1;
          do
          {
            v66 = *v63++;
            v65 = v66;
            v67 = (v59 + 16 * v66);
            if ((*v67 | 4) == 0x34 && v58 == *(v67 + 1))
            {
              if (v64 != -1)
              {
                *(v60 + 4) = -1;
                break;
              }

              *(v60 + 4) = v65;
              v64 = v65;
            }

            --v62;
          }

          while (v62);
        }
      }

      ++v58;
    }

    while (v58 != v57);
    v56 = *(v2 + 64);
  }

  v68 = *(v56 + 12);
  if (v68)
  {
    v69 = 0;
    v70 = 0;
    v71 = *(v56 + 16);
    v160 = *(v56 + 12);
    v163 = v56;
    v72 = v56 + 40;
    while (1)
    {
      v73 = v72 + 16 * v69;
      if (*v73 == 39)
      {
        v74 = *(v73 + 8);
        memset(v171, 0, sizeof(v171));
        v75 = *(v74 + 4);
        if (v75)
        {
          v76 = 0;
          v77 = 0;
          while (1)
          {
            v78 = (v72 + 16 * *(v74 + 8 + 4 * v76));
            v79 = *v78;
            if (v79 == 16)
            {
              v80 = v78[8];
              v81 = v80 >> 3;
              v82 = *(v171 + (v80 >> 3));
              v83 = 1 << (v80 & 7);
              if ((v83 & v82) != 0)
              {
                goto LABEL_95;
              }

              *(v171 + v81) = v82 | v83;
            }

            else
            {
              if (v77)
              {
                v77 = 1;
                goto LABEL_95;
              }

              v84 = v79 != 48 || *(v73 + 4) == -1;
              if (v84 || v69 != *(v78 + 1))
              {
                goto LABEL_94;
              }

              v77 = 1;
              v70 = *(v74 + 8 + 4 * v76);
            }

            if (v75 == ++v76)
            {
              goto LABEL_96;
            }
          }
        }

        LODWORD(v76) = 0;
LABEL_94:
        v77 = 0;
LABEL_95:
        if (v76 == v75)
        {
LABEL_96:
          v85 = v75 - (v77 & 1);
          if ((v85 - 16) >= 0xFFFFFFF2)
          {
            v169 = v70;
            if ((v77 & 1) == 0)
            {
              v166 = v72 + 16 * v69;
LABEL_110:
              v90 = 8 * v75;
              v91 = *(v2 + 24);
              v92 = (*(v2 + 8))(v90 + 8, v91);
              if (!v92)
              {
                goto LABEL_195;
              }

              v93 = v92;
              *v92 = 1;
              *(v92 + 4) = 255;
              *(v92 + 6) = v85;
              if (*(v74 + 4))
              {
                v94 = 0;
                v95 = 0;
                do
                {
                  v96 = *(v74 + 8 + 4 * v94);
                  v97 = v72 + 16 * v96;
                  if (*v97 == 16)
                  {
                    v98 = *(v97 + 8);
                    if (v98 < v93[4])
                    {
                      v93[4] = v98;
                    }

                    if (v98 > v93[5])
                    {
                      v93[5] = v98;
                    }

                    v99 = &v93[8 * v95 + 8];
                    *v99 = v98;
                    *(v99 + 4) = *(v97 + 4);
                    ++v95;
                    v100 = *(v71 + 4 * v96) - 1;
                    *(v71 + 4 * v96) = v100;
                    if (v100)
                    {
                      nodeModRefCount(v154, *(v97 + 4), 1);
                    }

                    else
                    {
                      *v97 = -1;
                      *(v97 + 4) = -1;
                      v101 = *(v163 + 24);
                      v102 = *(v163 + 32);
                      *(v163 + 32) = v102 + 1;
                      *(v101 + 4 * v102) = v96;
                    }
                  }

                  ++v94;
                }

                while (v94 < *(v74 + 4));
                v103 = v93[6];
                v2 = v154;
                v70 = v169;
              }

              else
              {
                v103 = v85;
              }

              qsort(v93 + 8, v103, 8uLL, charAltEntryCmp);
              nodeModPtrRefs((v72 + 16 * v69), -1, *(v2 + 16), v91);
              *v166 = 18;
              *(v166 + 4) = -1;
              *(v166 + 8) = v93;
              v68 = v160;
              goto LABEL_125;
            }

            if (v75)
            {
              v86 = 0;
              while (1)
              {
                v87 = *(v74 + 8 + 4 * v86);
                if (*(v72 + 16 * v87) == 16 && !isStraightLineUntilDotStar(v72, v87, __src))
                {
                  break;
                }

                if (v75 == ++v86)
                {
                  goto LABEL_108;
                }
              }
            }

            else
            {
              LODWORD(v86) = 0;
            }

            if (v86 == v75)
            {
LABEL_108:
              v88 = 0xFFFFFFFFLL;
              v70 = v169;
              nodeModRefCount(v2, v169, -1);
              v89 = *(v163 + 12);
              if (v89 >= *(v163 + 36))
              {
                goto LABEL_196;
              }

              *(v163 + 12) = v89 + 1;
              *(*(v163 + 16) + 4 * v89) = 1;
              *v73 = 56;
              *(v73 + 4) = v89;
              v166 = v72 + 16 * v89;
              LODWORD(v75) = *(v74 + 4);
              goto LABEL_110;
            }

            v68 = v160;
            v70 = v169;
          }
        }
      }

LABEL_125:
      if (++v69 == v68)
      {
        v56 = *(v2 + 64);
        break;
      }
    }
  }

  v170 = *(v56 + 12);
  if (!v170)
  {
    goto LABEL_190;
  }

  v104 = 0;
  v164 = v56;
  v167 = 0;
  v161 = *(v56 + 16);
  v105 = v56 + 40;
  while (1)
  {
    v106 = v105 + 16 * v104;
    if (*v106 != 39)
    {
      goto LABEL_167;
    }

    v107 = *(v106 + 4);
    if (v107 == -1)
    {
      goto LABEL_167;
    }

    v108 = *(v106 + 8);
    v109 = (v105 + 16 * v107);
    v110 = *v109;
    if (v110 != 48)
    {
      break;
    }

    if (v108[1] == 2)
    {
      v114 = v108[2];
      if (v114 == v107)
      {
        v114 = v108[3];
      }

      v115 = *(v105 + 16 * v114);
      v167 = v114;
      if ((v115 - 16) < 3 || v115 == 52)
      {
        if (isStraightLineUntilDotStar(v105, v114, __src))
        {
          *v106 = 56;
          *(v106 + 4) = v114;
          v116 = v154;
          goto LABEL_166;
        }
      }

      else if (v115 == 34)
      {
        nodeModPtrRefs((v105 + 16 * v104), -1, *(v154 + 16), *(v154 + 24));
        nodeModRefCount(v154, v107, -1);
        *v106 = 49;
        *(v106 + 4) = v114;
      }
    }

LABEL_167:
    if (++v104 == v170)
    {
      v127 = *(v154 + 64);
      v128 = *(v127 + 12);
      if (v128)
      {
        v129 = 0;
        v130 = v127 + 40;
        v131 = *(v127 + 16);
        do
        {
          v132 = v130 + 16 * v129;
          if (*v132 == 16)
          {
            v133 = *(v130 + 16 * *(v132 + 4)) & 0xFE;
            if (v133 == 16)
            {
              v134 = 0;
              v135 = 0;
              v136 = (v130 + 16 * v129);
              while (1)
              {
                if (v133 == 16 && v134 <= 0x3E)
                {
                  *(__src + v134++) = v136[8];
                }

                else
                {
                  if (v133 != 17)
                  {
                    goto LABEL_181;
                  }

                  memcpy(__src + v134, (*(v136 + 1) + 8), *(*(v136 + 1) + 4));
                  v134 += *(*(v136 + 1) + 4);
                }

                v137 = *(v136 + 1);
                if (*(v131 + 4 * v137) > 1u)
                {
                  break;
                }

                v136 = (v130 + 16 * v137);
                v133 = *v136;
                ++v135;
              }

              ++v135;
LABEL_181:
              if (v134 >= 4)
              {
                v138 = (*(v154 + 8))(v134 + 8, *(v154 + 24));
                if (!v138)
                {
                  goto LABEL_191;
                }

                v139 = v138;
                *v138 = 1;
                v138[1] = v134;
                memcpy(v138 + 2, __src, v134);
                v140 = *(v132 + 4);
                v141 = v135 - 1;
                if (v135 == 1)
                {
                  LODWORD(v144) = *(v132 + 4);
                }

                else
                {
                  v142 = *(v127 + 24);
                  do
                  {
                    *(v131 + 4 * v140) = 0;
                    v143 = v130 + 16 * v140;
                    v144 = *(v143 + 4);
                    *v143 = -1;
                    *(v143 + 4) = -1;
                    v145 = *(v127 + 32);
                    *(v127 + 32) = v145 + 1;
                    *(v142 + 4 * v145) = v140;
                    v140 = v144;
                    --v141;
                  }

                  while (v141);
                }

                *v132 = 17;
                *(v132 + 8) = v139;
                *(v132 + 4) = v144;
              }
            }
          }

          ++v129;
        }

        while (v129 != v128);
      }

LABEL_190:
      v2 = v154;
      v88 = splitAltNodes(v154);
LABEL_196:
      v146 = v148;
      goto LABEL_197;
    }
  }

  if (v110 != 52)
  {
    goto LABEL_167;
  }

  v111 = v108[1];
  if (!v111)
  {
    LODWORD(v112) = 0;
    goto LABEL_154;
  }

  v112 = 0;
  while (1)
  {
    v113 = v108[v112 + 2];
    if (v113 != v107)
    {
      break;
    }

LABEL_141:
    if (v111 == ++v112)
    {
      goto LABEL_155;
    }
  }

  if (!nodesMightOverlap((v105 + 16 * v107), (v105 + 16 * v113)))
  {
    v167 = v113;
    goto LABEL_141;
  }

  v167 = v113;
LABEL_154:
  if (v112 != v111)
  {
    goto LABEL_167;
  }

LABEL_155:
  if (v111 == 2)
  {
    *(v106 + 4) = v167;
    v117 = v154;
    v118 = *(v154 + 24);
    goto LABEL_165;
  }

  v119 = 4 * (v111 - 1);
  v118 = *(v154 + 24);
  v120 = (*(v154 + 8))(v119 + 8, v118);
  if (!v120)
  {
LABEL_191:
    v88 = 4294967292;
    goto LABEL_192;
  }

  v121 = *(v164 + 12);
  if (v121 < *(v164 + 36))
  {
    *(v164 + 12) = v121 + 1;
    *(*(v164 + 16) + 4 * v121) = 1;
    v122 = v105 + 16 * v121;
    *v122 = 39;
    *(v122 + 4) = -1;
    *(v122 + 8) = v120;
    *v120 = 1;
    v123 = v108[1];
    if (v123)
    {
      v124 = 0;
      for (k = 0; k < v123; ++k)
      {
        v126 = v108[k + 2];
        if (v126 != v107)
        {
          *(v120 + 8 + 4 * v124++) = v126;
          *(v120 + 4) = v124;
          v123 = v108[1];
        }
      }
    }

    *(v106 + 4) = v121;
    *(v161 + 4 * v121) = 1;
    v117 = v154;
LABEL_165:
    nodeModPtrRefs((v105 + 16 * v104), -1, *(v117 + 16), v118);
    *v106 = 54;
    *(v106 + 8) = *(v109 + 1);
    nodeModPtrRefs((v105 + 16 * v104), 1, 0, 0);
    v116 = v117;
LABEL_166:
    nodeModRefCount(v116, v107, -1);
    goto LABEL_167;
  }

  v88 = 0xFFFFFFFFLL;
LABEL_192:
  v146 = v148;
  v2 = v154;
LABEL_197:
  (*(v2 + 16))(__src, *(v2 + 24));
  *v146 = 0;
  *(v146 + 8) = 0;
  *(v146 + 16) = 0;
  return v88;
}

void *simplifyBranches(void *result, unsigned int *a2)
{
  v2 = result[8];
  v3 = *(v2 + 12);
  if (v3)
  {
    v5 = result;
    v6 = v3 - 1;
    v7 = 16 * (v3 - 1);
    v8 = 40;
    do
    {
      v9 = v2 + v7;
      v10 = *(v2 + v7 + 40);
      if ((v10 - 38) >= 2)
      {
        if (v10 == 49)
        {
LABEL_7:
          v17 = 0;
          recurseThroughBranches(v5, a2, &v17, v6, 1);
          v11 = v17;
          if (v17 == 1)
          {
            v12 = *a2;
            v13 = v5[8];
            *(v13 + v7 + v8) = *(v13 + 16 * v12 + 40);
            nodeModPtrRefs((v13 + v7 + v8), 1, 0, 0);
            nodeModRefs(v5, v6, 1);
            result = nodeModRefCount(v5, v12, -1);
          }

          else
          {
            *(v9 + 40) = 39;
            v14 = v2 + v7;
            *(v14 + 41) = 126;
            *(v14 + 44) = -1;
            v15 = (v5[1])(4 * v11 + 8, v5[3]);
            v16 = v17;
            *v15 = 1;
            v15[1] = v16;
            result = memcpy(v15 + 2, a2, 4 * v16);
            *(v14 + 48) = v15;
          }
        }
      }

      else if (*(v9 + 41) != 126)
      {
        goto LABEL_7;
      }

      v2 -= 16;
      --v6;
      v8 -= 16;
    }

    while (v6 != -1);
  }

  return result;
}

uint64_t splitAltNodes(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(v1 + 12);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v22 = v1 + 40;
  while (1)
  {
    v5 = v22 + 16 * v4;
    if (*v5 == 39)
    {
      v6 = *(v5 + 8);
      v7 = (v6 + 4);
      if (*(v6 + 4) >= 0x10u)
      {
        break;
      }
    }

LABEL_11:
    if (++v4 >= v2)
    {
      return 0;
    }
  }

  v21 = v4;
  while (1)
  {
    v8 = *(v1 + 12);
    if (v8 >= *(v1 + 36))
    {
      return 0xFFFFFFFFLL;
    }

    *(v1 + 12) = v8 + 1;
    *(*(v1 + 16) + 4 * v8) = 1;
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    v11 = v9(68, v10);
    if (!v11)
    {
      return 4294967292;
    }

    v12 = v11;
    v13 = v9(4 * (*v7 - 14) + 8, v10);
    if (!v13)
    {
      (*(a1 + 16))(v12, v10);
      return 4294967292;
    }

    v14 = v13;
    v15 = v22 + 16 * v8;
    *v12 = 0xF00000001;
    v16 = *(v6 + 8);
    v17 = *(v6 + 24);
    v18 = *(v6 + 40);
    *(v12 + 56) = *(v6 + 56);
    *(v12 + 40) = v18;
    *(v12 + 24) = v17;
    *(v12 + 8) = v16;
    *(v12 + 64) = v8;
    v19 = *v7 - 14;
    *v13 = 1;
    v13[1] = v19;
    memcpy(v13 + 2, (v6 + 64), 4 * (*v7 - 14));
    *v15 = 39;
    *(v15 + 8) = v14;
    nodeModPtrRefs(v5, -1, *(a1 + 16), v10);
    *(v5 + 8) = v12;
    v7 = (v12 + 4);
    v6 = v12;
    if (*(v12 + 4) <= 0xFu)
    {
      v2 = *(v1 + 12);
      v4 = v21;
      goto LABEL_11;
    }
  }
}

uint64_t nodeModRefs(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = *(result + 64) + 16 * a2;
  v8 = *(v5 + 40);
  v7 = (v5 + 40);
  v6 = v8;
  v9 = (1 << v8) & 0x8400040000;
  v10 = v8 > 0x27 || v9 == 0;
  if (v10 && v6 != 255)
  {
    result = nodeModRefCount(result, *(v7 + 1), a3);
    v6 = *v7;
  }

  switch(v6)
  {
    case 0x12u:
      v14 = *(v7 + 1);
      if (*(v14 + 6))
      {
        v15 = 0;
        v16 = (v14 + 12);
        do
        {
          v17 = *v16;
          v16 += 2;
          result = nodeModRefCount(v4, v17, v3);
          ++v15;
        }

        while (v15 < *(v14 + 6));
      }

      break;
    case 0x27u:
      v12 = *(v7 + 1);
      if (*(v12 + 4))
      {
        v13 = 0;
        do
        {
          result = nodeModRefCount(v4, *(v12 + 8 + 4 * v13++), v3);
        }

        while (v13 < *(v12 + 4));
      }

      break;
    case 0x26u:
      v11 = *(v7 + 2);

      return nodeModRefCount(v4, v11, v3);
  }

  return result;
}

uint64_t nodeModRefCount(uint64_t result, unsigned int a2, int a3)
{
  v3 = *(result + 64);
  v4 = *(v3 + 16);
  v5 = *(v4 + 4 * a2) + a3;
  *(v4 + 4 * a2) = v5;
  if (!v5)
  {
    v7 = a2;
    result = nodeModRefs(result, a2, 0xFFFFFFFFLL);
    v8 = v3 + 16 * v7;
    *(v8 + 40) = -1;
    *(v8 + 44) = -1;
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    *(v3 + 32) = v10 + 1;
    *(v9 + 4 * v10) = a2;
  }

  return result;
}

uint64_t recurseThroughBranches(uint64_t result, int *a2, _DWORD *a3, int a4, int a5)
{
  v8 = *(result + 64);
  if (*(*(v8 + 16) + 4 * a4) >= 2u && a5 == 0)
  {
    goto LABEL_12;
  }

  v10 = a5;
  v11 = result;
  v12 = v8 + 16 * a4;
  v15 = *(v12 + 40);
  v14 = v12 + 40;
  v13 = v15;
  if (v15 == 38)
  {
    recurseThroughBranches(result, a2, a3, *(v14 + 4), 0);
    v23 = 8;
    goto LABEL_21;
  }

  if (v13 == 49)
  {
    v23 = 4;
LABEL_21:
    result = recurseThroughBranches(v11, a2, a3, *(v14 + v23), 0);
LABEL_22:
    if (v10)
    {
      return result;
    }

    --*(*(v8 + 16) + 4 * a4);
    v24 = *(v11 + 64);
    v25 = v24 + 16 * a4;
    *(v25 + 40) = -1;
    *(v25 + 44) = -1;
    v26 = *(v24 + 24);
    v27 = *(v24 + 32);
    *(v24 + 32) = v27 + 1;
    v22 = (v26 + 4 * v27);
    goto LABEL_24;
  }

  if (v13 == 39)
  {
    v16 = *(v14 + 8);
    if (*(v16 + 4))
    {
      v17 = 0;
      do
      {
        result = recurseThroughBranches(v11, a2, a3, *(v16 + 4 * v17++ + 8), 0);
        v16 = *(v14 + 8);
      }

      while (v17 < *(v16 + 4));
    }

    goto LABEL_22;
  }

LABEL_12:
  if (!*a3)
  {
    v21 = 0;
LABEL_18:
    ++*a3;
    v22 = &a2[v21];
LABEL_24:
    *v22 = a4;
    return result;
  }

  v18 = *a3;
  v19 = a2;
  while (1)
  {
    v20 = *v19++;
    if (v20 == a4)
    {
      return result;
    }

    if (!--v18)
    {
      v21 = *a3;
      goto LABEL_18;
    }
  }
}

uint64_t nodeCmp(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = *a1;
  v3 = v2 - *a2;
  if (v3)
  {
    return v3;
  }

  v3 = a1[1] - a2[1];
  if (v3)
  {
    return v3;
  }

  if (*a1 <= 0x22u)
  {
    if ((v2 - 32) >= 2)
    {
      if (v2 == 16)
      {
        v5 = a1[8];
        v6 = a2[8];
        return (v5 - v6);
      }

      if (v2 != 34)
      {
        return 1;
      }

LABEL_13:
      v5 = *(a1 + 2);
      v6 = *(a2 + 2);
      return (v5 - v6);
    }

    return v3;
  }

  if ((v2 - 48) < 4)
  {
    return v3;
  }

  if ((v2 - 35) < 2)
  {
    goto LABEL_13;
  }

  if (v2 != 52)
  {
    return 1;
  }

  v7 = *(a1 + 1);
  v8 = *(a2 + 1);
  v9 = *(v7 + 4);
  v3 = (v9 - *(v8 + 4));
  if (v3)
  {
    return v3;
  }

  return memcmp((v7 + 8), (v8 + 8), v9);
}

BOOL nodesMightOverlap(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 != 52)
  {
    if (v2 == 16)
    {
      v3 = *a2;
      if (v3 != 52)
      {
        if (v3 == 16)
        {
          return a1[8] == a2[8];
        }

        return 1;
      }

      v13 = *(a2 + 1);
      v14 = *(v13 + 4);
      if (v14)
      {
        v15 = v13 + 8;
        v16 = a1[8];
        v17 = 2;
        do
        {
          v18 = *(v15 + v17 - 2);
          v19 = *(v15 + v17 - 1) - v18;
          v20 = v16 - v18;
          result = v20 <= v19;
          if (v17 >= v14)
          {
            break;
          }

          v17 += 2;
        }

        while (v20 > v19);
        return result;
      }

      return 0;
    }

    return 1;
  }

  v5 = *a2;
  if (v5 == 52)
  {
    v21 = *(a1 + 1);
    v22 = *(v21 + 4);
    if (!v22)
    {
      return 0;
    }

    v23 = 0;
    v24 = v21 + 8;
    v25 = *(a2 + 1) + 8;
    while (1)
    {
      v26 = *(v24 + v23);
      v27 = v23 | 1;
      v28 = *(v25 + v23);
      if ((v28 - v26) <= (*(v24 + v27) - v26) || (v26 - v28) <= (*(v25 + v27) - v28))
      {
        break;
      }

        ;
      }

      result = 0;
      v23 += 2;
      if (v23 >= v22)
      {
        return result;
      }
    }

    return 1;
  }

  if (v5 != 16)
  {
    return 1;
  }

  v6 = *(a1 + 1);
  v7 = *(v6 + 4);
  if (!v7)
  {
    return 0;
  }

  v8 = v6 + 8;
  v9 = 2;
  do
  {
    v10 = *(v8 + v9 - 2);
    v11 = *(v8 + v9 - 1) - v10;
    v12 = a2[8] - v10;
    result = v12 <= v11;
    if (v9 >= v7)
    {
      break;
    }

    v9 += 2;
  }

  while (v12 > v11);
  return result;
}

uint64_t isStraightLineUntilDotStar(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 4 * a2);
  if (v3 == -2)
  {
    return 1;
  }

  if (v3 != -1)
  {
    return 0;
  }

  v6 = a2;
  *(a3 + 4 * a2) = a2;
  while (1)
  {
    v7 = (a1 + 16 * v6);
    v8 = *v7;
    if (v8 == 18)
    {
      break;
    }

    if (v8 == 34)
    {
      goto LABEL_18;
    }

    if (v8 == 39)
    {
      v15 = *(v7 + 1);
      if (v15 != -1 && *(a1 + 16 * v15) == 48 && *(*(v7 + 1) + 4) == 2)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v9 = *(v7 + 1);
    *(a3 + 4 * v9) = v6;
    v6 = v9;
  }

  v11 = *(v7 + 1);
  v12 = *(v11 + 6);
  if (!*(v11 + 6))
  {
LABEL_18:
    v16 = -2;
    result = 1;
    goto LABEL_20;
  }

  v13 = (v11 + 12);
  while (1)
  {
    v14 = *v13;
    v13 += 2;
    if ((isStraightLineUntilDotStar(a1, v14, a3) & 1) == 0)
    {
      break;
    }

    if (!--v12)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  result = 0;
  v16 = -3;
  do
  {
LABEL_20:
    v17 = *(a3 + 4 * v6);
    *(a3 + 4 * v6) = v16;
    v18 = v17 == v6;
    v6 = v17;
  }

  while (!v18);
  return result;
}

uint64_t matchUnpack(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 32))
  {
    v8 = *(a3 + 56);
    if (v8)
    {
      (*(a3 + 16))(v8, *(a3 + 24));
      *(a3 + 56) = 0;
    }

    v9 = *(a3 + 48);
    if (v9)
    {
      v9(*(a3 + 32), *(a3 + 24));
    }

    *(a3 + 32) = 0;
    *(a3 + 48) = 0;
  }

  result = 0xFFFFFFFFLL;
  if (a2 < 6)
  {
    return result;
  }

  if (*a1 != 50331648)
  {
    return result;
  }

  v11 = *(a1 + 4);
  v12 = a2 - (v11 + 6);
  if (a2 < v11 + 6 || HIDWORD(v12) || !*(a1 + 4))
  {
    return result;
  }

  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  v15 = (*(a3 + 8))(*(a1 + 4), v13);
  if (!v15)
  {
    return 4294967292;
  }

  v16 = v15;
  v39 = v14;
  v17 = a1 + 6;
  bzero(v15, v11);
  v18 = 0;
  do
  {
    v16[v18] = 1;
    v19 = *(v17 + v18);
    v20 = v19 & 0xF;
    if (v20 > 7)
    {
      if ((v19 & 0xF) <= 0xA)
      {
        if (v20 == 8)
        {
          goto LABEL_30;
        }

        if (v20 != 9)
        {
          if (v20 != 10)
          {
            goto LABEL_87;
          }

LABEL_30:
          LOWORD(v21) = 3;
          goto LABEL_36;
        }

        LOWORD(v21) = 1;
      }

      else
      {
        if ((v19 & 0xF) <= 0xC)
        {
          if (v20 != 11)
          {
            goto LABEL_30;
          }

LABEL_34:
          v21 = (v19 >> 3) | 1;
          goto LABEL_36;
        }

        if (v20 == 13)
        {
          goto LABEL_34;
        }

        if (v20 != 15)
        {
          goto LABEL_87;
        }

        v21 = ((v19 >> 3) & 0x1E) - 1;
      }
    }

    else
    {
      LOWORD(v21) = 2;
      if ((v19 & 0xF) > 3)
      {
        if (v20 - 5 < 3)
        {
          goto LABEL_36;
        }

        if (v20 != 4)
        {
          goto LABEL_87;
        }

        goto LABEL_30;
      }

      if ((v19 & 0xF) == 0)
      {
        goto LABEL_30;
      }

      if (v20 != 2)
      {
        if (v20 != 3)
        {
          goto LABEL_87;
        }

        v21 = 3 * (v19 >> 4) + 1;
      }
    }

LABEL_36:
    v18 += v21;
  }

  while (v11 > v18);
  if (v11 != v18)
  {
    goto LABEL_87;
  }

  v22 = 0;
  v23 = 0;
LABEL_39:
  v24 = (v17 + v23);
  v25 = *v24;
  v26 = v25 & 0xF;
  if (v26 > 7)
  {
    if ((v25 & 0xF) <= 0xA)
    {
      if (v26 == 8)
      {
        goto LABEL_55;
      }

      if (v26 != 9)
      {
        if (v26 != 10)
        {
          goto LABEL_87;
        }

        goto LABEL_55;
      }

      v27 = 1;
    }

    else
    {
      if ((v25 & 0xF) > 0xC)
      {
        if (v26 != 13)
        {
          if (v26 != 15)
          {
            goto LABEL_87;
          }

          v27 = ((v25 >> 3) & 0x1E) - 1;
          goto LABEL_61;
        }
      }

      else if (v26 != 11)
      {
        goto LABEL_55;
      }

      v27 = (v25 >> 3) | 1;
    }
  }

  else
  {
    v27 = 2;
    if ((v25 & 0xF) <= 3)
    {
      if ((v25 & 0xF) == 0)
      {
        goto LABEL_55;
      }

      if (v26 != 2)
      {
        if (v26 != 3)
        {
          goto LABEL_87;
        }

        v27 = 3 * (v25 >> 4) + 1;
      }
    }

    else if (v26 - 5 >= 3)
    {
      if (v26 != 4)
      {
        goto LABEL_87;
      }

LABEL_55:
      v27 = 3;
    }
  }

LABEL_61:
  if (v27 <= v11 - v22)
  {
    switch(v25 & 0xF)
    {
      case 0uLL:
      case 4uLL:
      case 8uLL:
      case 0xCuLL:
        if (*(v24 + 1) + (v25 >> 2) > v12)
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 2uLL:
      case 6uLL:
      case 7uLL:
        goto LABEL_83;
      case 3uLL:
        if (v25 < 0x20)
        {
          goto LABEL_87;
        }

        v32 = v25 >> 4;
        v33 = (v24 + 1);
        while (1)
        {
          v35 = *v33;
          v33 = (v33 + 3);
          v34 = v35;
          if (v35 >= v11 || !v16[v34])
          {
            goto LABEL_87;
          }

          if (!--v32)
          {
            goto LABEL_84;
          }
        }

      case 5uLL:
        goto LABEL_84;
      case 9uLL:
        v36 = (v25 >> 4) & 7;
        if (v36 < 4)
        {
          goto LABEL_83;
        }

        if (v36 != 4)
        {
          goto LABEL_87;
        }

        goto LABEL_84;
      case 0xAuLL:
        if (*(v24 + 1) >= v11 || !v16[*(v24 + 1)])
        {
          goto LABEL_87;
        }

        goto LABEL_84;
      case 0xBuLL:
      case 0xDuLL:
        if (v25 < 0x10)
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 0xFuLL:
        if (v25 < 0x20)
        {
          goto LABEL_83;
        }

        v28 = (v25 >> 4) - 1;
        v29 = (a1 + 7 + v23);
        break;
      default:
        goto LABEL_87;
    }

    while (1)
    {
      v31 = *v29++;
      v30 = v31;
      if (v31 >= v11 || !v16[v30])
      {
        break;
      }

      if (!--v28)
      {
LABEL_83:
        if (v27 + v22 == v11)
        {
          break;
        }

LABEL_84:
        v23 += v27;
        v22 = v23;
        if (v23 < v11)
        {
          goto LABEL_39;
        }

        v39(v16, v13);
        v37 = (*(a3 + 8))(24, *(a3 + 24));
        if (v37)
        {
          v38 = v37;
          result = 0;
          *(v38 + 16) = v11;
          *v38 = v17;
          *(v38 + 8) = a1 + v11 + 6;
          *(a3 + 32) = a1;
          *(a3 + 40) = a2;
          *(a3 + 48) = a4;
          *(a3 + 56) = v38;
          return result;
        }

        return 4294967292;
      }
    }
  }

LABEL_87:
  v39(v16, v13);
  return 0xFFFFFFFFLL;
}

uint64_t matchPack(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 56))
  {
LABEL_2:
    if (a2)
    {
      *a2 = *(a1 + 32);
    }

    v6 = 0;
    if (a3)
    {
      *a3 = *(a1 + 40);
    }

    return v6;
  }

  v7 = *(a1 + 64);
  if (!v7)
  {
    return 4294967293;
  }

  v8 = *(v7 + 12);
  if (HIWORD(*(v7 + 12)))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  v91 = *(v7 + 12);
  v10 = (*(a1 + 8))(8 * v8, *(a1 + 24));
  if (!v10)
  {
    return 4294967292;
  }

  v11 = v10;
  memset(v10, 255, 4 * v8);
  v12 = 0;
  v13 = 0;
  v14 = &v11[2 * v8];
  v15 = &v14[2 * v8];
  v16 = (v7 + 40);
  v92 = v11;
  v17 = &v11[4 * v8 - 4];
  *v15 = *(v7 + 8);
  v18 = 1;
LABEL_16:
  v19 = 4 * v18;
  while (v19)
  {
    v20 = *(v17 + v19);
    if (WORD1(v20))
    {
      return 0xFFFFFFFFLL;
    }

    --v18;
    v19 -= 4;
    if (*&v14[2 * v20] == -1)
    {
      while (1)
      {
        v21 = 0;
        v22 = &v16[16 * v20];
        v23 = *v22;
        v6 = 0xFFFFFFFFLL;
        if (*v22 <= 0x26u)
        {
          if (*v22 <= 0x21u)
          {
            if (v23 == 16)
            {
              v25 = 2;
            }

            else
            {
              if (v23 != 17)
              {
                v26 = 0;
                v27 = 0;
                if (v23 != 18)
                {
                  goto LABEL_165;
                }

                v35 = *(v22 + 1);
                v36 = *(v35 + 6);
                *&v14[2 * v20] = v13;
                v13 += 3 * v36 + 1;
LABEL_64:
                if (v36)
                {
                  v37 = v36;
                  v38 = (v35 + 12);
                  do
                  {
                    v40 = *v38;
                    v38 += 2;
                    v39 = v40;
                    if (*&v14[2 * v40] == -1)
                    {
                      *&v15[4 * v18++] = v39;
                    }

                    --v37;
                  }

                  while (v37);
                }

                goto LABEL_16;
              }

              v12 += *(*(v22 + 1) + 4);
              v25 = 3;
            }

            *&v14[2 * v20] = v13;
            v13 += v25;
            goto LABEL_51;
          }

          if ((v23 - 34) >= 3)
          {
            v26 = 0;
            v27 = 0;
            if (v23 != 38)
            {
              goto LABEL_165;
            }

            *&v14[2 * v20] = v13;
            v13 += 3;
LABEL_43:
            v29 = *(v22 + 1);
            v28 = *(v22 + 2);
            if (*&v14[2 * v28] == -1)
            {
              *&v15[4 * v18++] = v28;
            }

            goto LABEL_59;
          }

          v24 = 2;
          goto LABEL_41;
        }

        v24 = 0;
        if (v23 <= 0x38)
        {
          if (((1 << v23) & 0x10D000000000000) != 0)
          {
            v24 = 1;
            goto LABEL_41;
          }

          if (((1 << v23) & 0x50000000000000) != 0)
          {
            v24 = *(*(v22 + 1) + 4) + 1;
            goto LABEL_41;
          }

          if (v23 == 49)
          {
            goto LABEL_41;
          }
        }

        if (v23 == 39)
        {
          v30 = *(v22 + 1);
          v31 = *(v30 + 4);
          if (!v31)
          {
            v21 = 0;
            v26 = 0;
            v27 = 0;
            v6 = 0xFFFFFFFFLL;
            goto LABEL_165;
          }

          *&v14[2 * v20] = v13;
          v13 = v13 + 2 * v31 - 1;
          goto LABEL_54;
        }

        v26 = 0;
        v27 = 0;
        if (v23 != 255)
        {
          goto LABEL_165;
        }

LABEL_41:
        *&v14[2 * v20] = v13;
        v13 += v24;
        if (v23 <= 38)
        {
          if (v23 != 38)
          {
            if (v23 == 18)
            {
              v35 = *(v22 + 1);
              v36 = *(v35 + 6);
              goto LABEL_64;
            }

            if (v23 == 34)
            {
              goto LABEL_16;
            }

            goto LABEL_51;
          }

          goto LABEL_43;
        }

        if (v23 != 39)
        {
          if (v23 == 255)
          {
            goto LABEL_16;
          }

LABEL_51:
          v29 = *(v22 + 1);
          goto LABEL_59;
        }

        v30 = *(v22 + 1);
        v31 = *(v30 + 4);
LABEL_54:
        v29 = *(v30 + 8);
        if (v31 >= 2)
        {
          for (i = 1; i < v31; ++i)
          {
            v33 = *(v30 + 8 + 4 * i);
            if (*&v14[2 * v33] == -1)
            {
              *&v15[4 * v18++] = v33;
              v31 = *(v30 + 4);
            }
          }
        }

LABEL_59:
        v34 = *&v14[2 * v29];
        if (v34 != 0xFFFF)
        {
          *&v92[2 * v20] = v34;
          v13 += 3;
          goto LABEL_16;
        }

        v6 = 0xFFFFFFFFLL;
        v20 = v29;
        if (v29 >> 16)
        {
          return v6;
        }
      }
    }
  }

  v27 = (*(a1 + 8))(v12 + v13 + 6, *(a1 + 24));
  v26 = v27;
  if (!v27)
  {
    v21 = 0;
    goto LABEL_75;
  }

  if (v12 > 0x10000)
  {
    v21 = 0;
    v27 = 0;
LABEL_75:
    v6 = 4294967292;
    goto LABEL_165;
  }

  v84 = v12 + v13 + 6;
  v27 = (*(a1 + 8))(v12, *(a1 + 24));
  v41 = 0;
  v42 = 0;
  *v26 = 50331648;
  *(v26 + 2) = v13;
  v43 = v26 + 6;
  v44 = v26 + 65541;
  v89 = v27;
  v90 = v26;
  v85 = v26 + 9;
  v86 = v26 + 8;
  v46 = v91;
  v45 = v92;
  v87 = v26 + 6;
  v88 = v26 + 65541;
  do
  {
    v47 = *&v14[2 * v41];
    v48 = *v16;
    if (v47 == 0xFFFF)
    {
      v49 = v44;
      if (v48 != 255)
      {
        goto LABEL_150;
      }

      goto LABEL_148;
    }

    v49 = &v43[v47];
    if (*v16 <= 0x30u)
    {
      if (*v16 <= 0x21u)
      {
        switch(v48)
        {
          case 16:
            v53 = 2;
            *v49 = 2;
            v49[1] = v16[8];
            goto LABEL_123;
          case 17:
            *v49 = 0;
            v65 = *(v16 + 1);
            v66 = memmem(v27, v42, (v65 + 8), *(v65 + 4));
            if (v66)
            {
              v67 = v42;
              v68 = v66 - v89;
              v27 = v89;
            }

            else
            {
              memcpy(&v89[v42], (v65 + 8), *(v65 + 4));
              v67 = v42 + *(v65 + 4);
              v27 = v89;
              v68 = v42;
            }

            v6 = 0xFFFFFFFFLL;
            v46 = v91;
            v45 = v92;
            v44 = v88;
            if (v68 > 0xFFFFFFFFLL)
            {
              v21 = 0;
              goto LABEL_173;
            }

            *(v49 + 1) = v68;
            v72 = *(*(v16 + 1) + 4);
            v53 = *v49 & 3 | (4 * v72);
            *v49 = *v49 & 3 | (4 * v72);
            v42 = v67;
            v43 = v87;
            goto LABEL_123;
          case 18:
            *v49 = 3;
            v52 = *(v16 + 1);
            v53 = (16 * *(v52 + 6)) | 3;
            *v49 = (16 * *(v52 + 6)) | 3;
            if (*(v52 + 6))
            {
              v54 = 0;
              v55 = &v85[v47];
              v56 = (v52 + 12);
              do
              {
                *v55 = *(v56 - 4);
                v57 = *v56;
                v56 += 2;
                *(v55 - 1) = *&v14[2 * v57];
                ++v54;
                v55 += 3;
              }

              while (v54 < *(v52 + 6));
            }

            goto LABEL_123;
        }
      }

      else
      {
        if (*v16 <= 0x23u)
        {
          if (v48 == 34)
          {
            v50 = 5;
          }

          else
          {
            v50 = 6;
          }

          goto LABEL_116;
        }

        if (v48 == 36)
        {
          v50 = 7;
LABEL_116:
          *v49 = v50;
          v64 = *(v16 + 4);
          v53 = *v49 & 0xF | (16 * v64);
          *v49 = *v49 & 0xF | (16 * v64);
          goto LABEL_123;
        }

        if (v48 == 48)
        {
          v53 = 9;
LABEL_122:
          *v49 = v53;
          goto LABEL_123;
        }
      }

      goto LABEL_105;
    }

    if (*v16 <= 0x33u)
    {
      if (v48 == 49)
      {
        goto LABEL_148;
      }

      if (v48 == 50)
      {
        v53 = 25;
      }

      else
      {
        v53 = 41;
      }

      goto LABEL_122;
    }

    if (*v16 > 0x37u)
    {
      if (v48 == 56)
      {
        v53 = 57;
        goto LABEL_122;
      }

      if (v48 == 255)
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v48 == 52)
      {
        v51 = 11;
        goto LABEL_110;
      }

      if (v48 == 54)
      {
        v51 = 13;
LABEL_110:
        *v49 = v51;
        v58 = *(v16 + 1);
        v59 = *(v58 + 4);
        if (v59 > 0x1FF)
        {
          v21 = 0;
          v6 = 0xFFFFFFFFLL;
LABEL_173:
          v26 = v90;
          goto LABEL_165;
        }

        v53 = v51 & 0xF | (16 * (v59 >> 1));
        *v49 = v53;
        if (v59 >= 2)
        {
          v60 = v59 >> 1;
          v61 = (v58 + 9);
          v62 = &v86[v47];
          do
          {
            *(v62 - 1) = *(v61 - 1);
            v63 = *v61;
            v61 += 2;
            *v62 = v63;
            v62 += 2;
            --v60;
          }

          while (v60);
        }

        goto LABEL_123;
      }
    }

LABEL_105:
    v53 = 15;
    *v49 = 15;
    if (v48 == 39)
    {
      v73 = *(v16 + 1);
      v53 = (16 * *(v73 + 4)) | 0xF;
      *v49 = (16 * *(v73 + 4)) | 0xF;
      v74 = *(v73 + 4);
      if (v74 >= 2)
      {
        v75 = v73 + 8;
        v76 = 1;
        v77 = 1;
        do
        {
          *&v49[2 * v76 - 2 + 1] = *&v14[2 * *(v75 + 4 * v77++)];
          v76 = v77;
        }

        while (v74 > v77);
        v45 = v92;
      }
    }

    else if (v48 == 38)
    {
      v53 = 47;
      *v49 = 47;
      *(v49 + 1) = *&v14[2 * *(v16 + 2)];
      goto LABEL_143;
    }

LABEL_123:
    v69 = v53 & 0xF;
    if (v69 > 7)
    {
      if ((v53 & 0xF) <= 0xA)
      {
        if (v69 != 8)
        {
          if (v69 == 9)
          {
            v70 = 1;
            goto LABEL_147;
          }

          if (v69 != 10)
          {
            goto LABEL_146;
          }
        }

        goto LABEL_140;
      }

      if ((v53 & 0xF) <= 0xC)
      {
        if (v69 == 11)
        {
          goto LABEL_144;
        }

        goto LABEL_140;
      }

      if (v69 == 13)
      {
LABEL_144:
        v70 = ((v53 & 0xF0) >> 3) | 1;
        goto LABEL_147;
      }

      if (v69 != 15)
      {
LABEL_146:
        v70 = 0;
        goto LABEL_147;
      }

LABEL_143:
      v70 = ((v53 >> 3) & 0x1E) - 1;
      goto LABEL_147;
    }

    if ((v53 & 0xF) > 3)
    {
      if (v69 - 5 >= 3)
      {
        if (v69 != 4)
        {
          goto LABEL_146;
        }

LABEL_140:
        v70 = 3;
        goto LABEL_147;
      }

LABEL_136:
      v70 = 2;
      goto LABEL_147;
    }

    if ((v53 & 0xF) == 0)
    {
      goto LABEL_140;
    }

    if (v69 == 2)
    {
      goto LABEL_136;
    }

    if (v69 != 3)
    {
      goto LABEL_146;
    }

    v70 = 3 * (v53 >> 4) + 1;
LABEL_147:
    v49 += v70;
LABEL_148:
    v71 = *&v45[2 * v41];
    if (v71 != 0xFFFF)
    {
      *v49 = 10;
      *(v49 + 1) = v71;
    }

LABEL_150:
    ++v41;
    v16 += 16;
  }

  while (v41 != v46);
  v78 = v27;
  v79 = (*(a1 + 8))(24, *(a1 + 24), 0xFFFFFFFFLL);
  v21 = v79;
  if (v79)
  {
    *(v79 + 16) = v13;
    *v79 = v43;
    *(v79 + 8) = &v43[v13];
    memcpy(&v43[v13], v78, v42);
    v80 = 0;
    atomic_compare_exchange_strong((a1 + 56), &v80, v21);
    if (!v80)
    {
      v81 = 0;
      v6 = 0;
      *(a1 + 32) = v90;
      *(a1 + 40) = v84;
      v82 = *(a1 + 16);
      *(a1 + 48) = v82;
      v82(v92, *(a1 + 24));
      goto LABEL_166;
    }

    v6 = 0;
  }

  else
  {
    v6 = 4294967292;
  }

  v26 = v90;
  v27 = v78;
LABEL_165:
  v78 = v27;
  v90 = v26;
  (*(a1 + 16))(v21, *(a1 + 24));
  v81 = 1;
  (*(a1 + 16))(v92, *(a1 + 24));
LABEL_166:
  (*(a1 + 16))(v78, *(a1 + 24));
  if (v81)
  {
    (*(a1 + 16))(v90, *(a1 + 24));
  }

  if (!v6)
  {
    goto LABEL_2;
  }

  return v6;
}

uint64_t matchDiagram(int a1, void *a2, const char *a3)
{
  v6 = fdopen(a1, "w");
  v7 = dup(a1);
  if (a2[8] || a2[4])
  {
    v61 = v7;
    fwrite("digraph nfa {\n\t/*nodesep=.15;*/\n\trankdir=LR;\n", 0x2DuLL, 1uLL, v6);
    fprintf(v6, "\tlabel = %s;\n", a3);
    v62 = a1;
    if (a2[4])
    {
      fwrite("\tnstart [shape=Msquare, label=S];\n", 0x24uLL, 1uLL, v6);
      v8 = a2[7];
      if (*(v8 + 16))
      {
        v9 = *v8;
        v10 = *v8 + *(v8 + 16);
        v11 = *v8;
        while (1)
        {
          if ((*v11 & 0x7F) != 0x49)
          {
            fprintf(v6, "\tn%d [shape=", v11 - v9);
            v12 = *v11;
            switch(v12 & 0xF)
            {
              case 0u:
              case 4u:
              case 8u:
              case 0xCu:
                fprintf(v6, "circle, label=%.*s");
                goto LABEL_30;
              case 2u:
                fprintf(v6, "circle, label=%c");
                goto LABEL_30;
              case 5u:
                fprintf(v6, "Msquare, label=E%d");
                goto LABEL_30;
              case 6u:
                fprintf(v6, "Mcircle, label=%d)");
                goto LABEL_30;
              case 7u:
                fprintf(v6, "Mcircle, label=(%d");
                goto LABEL_30;
              case 9u:
                v15 = (v12 >> 4) & 7;
                if (v15 <= 1)
                {
                  if (v15)
                  {
                    v13 = "Mcircle, label=^";
                  }

                  else
                  {
                    v13 = "Mcircle, label=.";
                  }

                  goto LABEL_28;
                }

                if (v15 == 2)
                {
                  v13 = "Mcircle, label=$";
LABEL_28:
                  v14 = 17;
                  goto LABEL_29;
                }

                if (v15 == 3)
                {
                  v13 = "Mcircle, label=.*";
                  goto LABEL_10;
                }

LABEL_30:
                if ((*v11 & 0xF) == 5)
                {
                  fprintf(v6, "]; /* n=%p, type=%d, end */\n");
                }

                else
                {
                  fprintf(v6, "]; /* n=%p, type=%d */\n");
                }

                break;
              case 0xAu:
                fprintf(v6, "Mcircle, label=%c");
                goto LABEL_30;
              case 0xBu:
                v13 = "Mcircle, label=[]";
LABEL_10:
                v14 = 18;
                goto LABEL_29;
              case 0xDu:
                v13 = "Mcircle, label=[]*";
                v14 = 19;
LABEL_29:
                fwrite(v13, v14, 1uLL, v6);
                goto LABEL_30;
              case 0xFu:
                fprintf(v6, "Mcircle, headport=n, label=%c");
                goto LABEL_30;
              default:
                fprintf(v6, "hexagon, label=%d");
                goto LABEL_30;
            }
          }

          v16 = *v11;
          v17 = v16 & 0xF;
          if (v17 > 7)
          {
            if ((v16 & 0xF) <= 0xA)
            {
              if (v17 != 8)
              {
                if (v17 == 9)
                {
                  LODWORD(v18) = 1;
                  goto LABEL_55;
                }

                if (v17 != 10)
                {
                  goto LABEL_105;
                }
              }
            }

            else
            {
              if ((v16 & 0xF) > 0xC)
              {
                if (v17 != 13)
                {
                  if (v17 != 15)
                  {
                    goto LABEL_105;
                  }

                  LODWORD(v18) = ((v16 >> 3) & 0x1E) - 1;
                  goto LABEL_55;
                }

LABEL_53:
                LODWORD(v18) = (v16 >> 3) | 1;
                goto LABEL_55;
              }

              if (v17 == 11)
              {
                goto LABEL_53;
              }
            }

            goto LABEL_49;
          }

          if ((v16 & 0xF) <= 3)
          {
            break;
          }

          LODWORD(v18) = 2;
          if (v17 - 5 >= 3)
          {
            if (v17 != 4)
            {
              goto LABEL_105;
            }

LABEL_49:
            LODWORD(v18) = 3;
          }

LABEL_55:
          v11 += v18;
          if (v11 >= v10)
          {
            goto LABEL_105;
          }
        }

        if ((v16 & 0xF) != 0)
        {
          LODWORD(v18) = 2;
          if (v17 != 2)
          {
            if (v17 != 3)
            {
              goto LABEL_105;
            }

            v18 = 3 * (v16 >> 4) + 1;
          }

          goto LABEL_55;
        }

        goto LABEL_49;
      }

      goto LABEL_105;
    }

    v19 = a2[8];
    fwrite("\tnstart [shape=Msquare, label=S];\n", 0x24uLL, 1uLL, v6);
    v20 = *(v19 + 12);
    if (!v20)
    {
LABEL_105:
      fputc(10, v6);
      if (a2[4])
      {
        fprintf(v6, "\tnstart -> n%d:w;\n", 0);
        v29 = a2[7];
        if (*(v29 + 8))
        {
          v30 = *v29;
          v31 = &(*v29)[*(v29 + 8)];
          v32 = *v29;
          while (1)
          {
            v33 = *v32;
            v34 = v33 & 0xF;
            if (v34 > 9)
            {
              if (v34 == 10)
              {
                goto LABEL_128;
              }

              if (v34 == 13)
              {
                fprintf(v6, "\tn%d:e -> n%d:w;\n");
                goto LABEL_129;
              }

              if (v34 != 15)
              {
                goto LABEL_128;
              }

              fprintf(v6, "\tn%d -> n%d:w;\n", (v32 - v30), (v32 - v30 + ((v33 >> 3) & 0x1E) - 1));
              if (*v32 >= 0x20u)
              {
                v35 = 0;
                do
                {
                  fprintf(v6, "\tn%d -> n%d:w [arrowhead=odot];\n", (v32 - v30), *&v32[2 * v35 + 1]);
                  v36 = v35 + 2;
                  ++v35;
                }

                while (v36 < *v32 >> 4);
              }
            }

            else
            {
              if (v34 != 3)
              {
                if (v34 == 5)
                {
                  goto LABEL_129;
                }

                if (v34 == 9 && (v33 & 0x70) == 0x30)
                {
                  fprintf(v6, "\tn%d:e -> n%d:w;\n", (v32 - v30), (v32 - v30));
                }

LABEL_128:
                fprintf(v6, "\tn%d -> n%d:w;\n");
                goto LABEL_129;
              }

              if (v33 >= 0x10)
              {
                v37 = 0;
                v38 = (v32 + 3);
                do
                {
                  fprintf(v6, "\tn%d -> n%d [label=%c];\n", (v32 - v30), *(v38 - 1), *v38);
                  ++v37;
                  v38 += 3;
                }

                while (v37 < *v32 >> 4);
              }
            }

LABEL_129:
            v39 = *v32;
            v40 = v39 & 0xF;
            if (v40 > 7)
            {
              if ((v39 & 0xF) <= 0xA)
              {
                if (v40 != 8)
                {
                  if (v40 == 9)
                  {
                    LODWORD(v41) = 1;
                    goto LABEL_151;
                  }

                  if (v40 != 10)
                  {
                    goto LABEL_191;
                  }
                }
              }

              else
              {
                if ((v39 & 0xF) > 0xC)
                {
                  if (v40 != 13)
                  {
                    if (v40 != 15)
                    {
                      goto LABEL_191;
                    }

                    LODWORD(v41) = ((v39 >> 3) & 0x1E) - 1;
                    goto LABEL_151;
                  }

LABEL_149:
                  LODWORD(v41) = (v39 >> 3) | 1;
                  goto LABEL_151;
                }

                if (v40 == 11)
                {
                  goto LABEL_149;
                }
              }

              goto LABEL_145;
            }

            if ((v39 & 0xF) <= 3)
            {
              if ((v39 & 0xF) != 0)
              {
                LODWORD(v41) = 2;
                if (v40 != 2)
                {
                  if (v40 != 3)
                  {
                    goto LABEL_191;
                  }

                  v41 = 3 * (v39 >> 4) + 1;
                }

                goto LABEL_151;
              }

              goto LABEL_145;
            }

            LODWORD(v41) = 2;
            if (v40 - 5 >= 3)
            {
              if (v40 != 4)
              {
                goto LABEL_191;
              }

LABEL_145:
              LODWORD(v41) = 3;
            }

LABEL_151:
            v32 += v41;
            if (v32 >= v31)
            {
              goto LABEL_191;
            }
          }
        }

        goto LABEL_191;
      }

      v42 = a2[8];
      fprintf(v6, "\tnstart -> n%d:w\n", *(v42 + 8));
      v43 = *(v42 + 12);
      if (!v43)
      {
LABEL_191:
        fwrite("\n}\n", 3uLL, 1uLL, v6);
        fflush(v6);
        fclose(v6);
        dup2(v61, v62);
        return 0;
      }

      v44 = v42 + 40;
      v45 = v42 + 40 + 16 * v43;
      v46 = (v42 + 40);
      while (1)
      {
        if (*(v42 + 12) <= (&v46[-v44] >> 4))
        {
          goto LABEL_184;
        }

        v47 = *v46;
        if (v47 == 255)
        {
          goto LABEL_184;
        }

        v48 = *(v46 + 1);
        if (*v46 > 0x26u)
        {
          if (v47 == 39)
          {
            v58 = *(v46 + 1);
            if (*(v58 + 4))
            {
              v59 = 0;
              do
              {
                if (*(v44 + 16 * *(v58 + 8 + 4 * v59)) == 49)
                {
                  fprintf(v6, "\tn%d -> n%d [arrowhead=odot];\n");
                }

                else
                {
                  fprintf(v6, "\tn%d -> n%d:s [arrowhead=odot];\n");
                }

                ++v59;
              }

              while (v59 < *(v58 + 4));
            }

            goto LABEL_184;
          }

          if (v47 == 54 || (v49 = *(v46 + 1), v47 == 56))
          {
            fprintf(v6, "\tn%d:e -> n%d:w;\n", &v46[-v44] >> 4, &v46[-v44] >> 4);
            v49 = *(v46 + 1);
          }
        }

        else
        {
          if (v47 == 18)
          {
            v53 = *(v46 + 1);
            if (*(v53 + 6))
            {
              v54 = 0;
              v55 = (v53 + 12);
              do
              {
                v56 = *(v55 - 4);
                v57 = *v55;
                v55 += 2;
                fprintf(v6, "\tn%d -> n%d [label=%c];\n", &v46[-v44] >> 4, v57, v56);
                ++v54;
              }

              while (v54 < *(v53 + 6));
            }

            goto LABEL_184;
          }

          if (v47 == 34)
          {
            goto LABEL_184;
          }

          v49 = *(v46 + 1);
          if (v47 == 38)
          {
            v50 = v46[1];
            if (v50 == 42)
            {
              fprintf(v6, "\tn%d:n -> n%d:w [arrowhead=dot];\n", &v46[-v44] >> 4, v48);
              if (*(v44 + 16 * *(v46 + 2)) == 49)
              {
                goto LABEL_189;
              }

              fprintf(v6, "\tn%d:s -> n%d:s [arrowhead=odot];\n");
            }

            else
            {
              if (v50 != 43)
              {
                fprintf(v6, "\tn%d:n -> n%d:w [arrowhead=dot];\n", &v46[-v44] >> 4, v48);
                if (*(v44 + 16 * *(v46 + 2)) != 49)
                {
                  fprintf(v6, "\tn%d:s -> n%d:w [arrowhead=odot];\n");
                  goto LABEL_184;
                }

LABEL_189:
                fprintf(v6, "\tn%d:s -> n%d [arrowhead=odot];\n");
                goto LABEL_184;
              }

              fprintf(v6, "\tn%d:e -> n%d:w [arrowhead=dot];\n", &v46[-v44] >> 4, v48);
              fprintf(v6, "\tn%d:n -> n%d:n [arrowhead=odot];\n");
            }

            goto LABEL_184;
          }
        }

        v51 = (v44 + 16 * v49);
        v52 = *v51;
        if (v52 == 38)
        {
          if (v51[1] != 42)
          {
LABEL_183:
            fprintf(v6, "\tn%d -> n%d:w;\n");
            goto LABEL_184;
          }
        }

        else if (v52 != 49)
        {
          goto LABEL_183;
        }

        fprintf(v6, "\tn%d -> n%d;\n");
LABEL_184:
        v46 += 16;
        if (v46 >= v45)
        {
          goto LABEL_191;
        }
      }
    }

    v21 = 16 * v20;
    while (1)
    {
      v22 = (v19 + v21 + 24);
      if (*v22 != 255)
      {
        break;
      }

LABEL_104:
      v28 = v21 + 24;
      v21 -= 16;
      if (v28 <= 55)
      {
        goto LABEL_105;
      }
    }

    v23 = (v21 + 0xFFFFFFFF0) >> 4;
    if (*(v19 + 12) < v23)
    {
      LODWORD(v23) = *(v19 + 12);
    }

    fprintf(v6, "\tn%d [shape=", v23);
    v24 = *v22;
    if (v24 <= 0x2F)
    {
      if (*v22 > 0x22u)
      {
        if (v24 - 38 < 2)
        {
          fprintf(v6, "Mcircle, headport=n, label=%c");
          goto LABEL_99;
        }

        if (v24 == 35)
        {
          fprintf(v6, "Mcircle, label=%d)");
          goto LABEL_99;
        }

        if (v24 == 36)
        {
          fprintf(v6, "Mcircle, label=(%d");
          goto LABEL_99;
        }

        goto LABEL_91;
      }

      if (*v22 <= 0x11u)
      {
        if (v24 != 16)
        {
          if (v24 == 17)
          {
            fprintf(v6, "circle, label=%.*s");
            goto LABEL_99;
          }

          goto LABEL_91;
        }

        fprintf(v6, "circle, label=%c");
LABEL_99:
        v27 = *v22;
        if (v27 == 34)
        {
          fprintf(v6, "]; /* n=%p, type=%d, end */\n");
        }

        else if (v27 == 38)
        {
          fprintf(v6, "]; /* n=%p, type=%d, left=n%u, right=n%u */\n");
        }

        else
        {
          fprintf(v6, "]; /* n=%p, type=%d, next=n%u, data=%u */\n");
        }

        goto LABEL_104;
      }

      if (v24 != 18)
      {
        if (v24 == 34)
        {
          fprintf(v6, "Msquare, label=E%d");
          goto LABEL_99;
        }

        goto LABEL_91;
      }

      v25 = "diamond, label={}";
      goto LABEL_95;
    }

    if (*v22 <= 0x32u)
    {
      switch(v24)
      {
        case '0':
          v25 = "Mcircle, label=.";
          break;
        case '1':
          fprintf(v6, "Mcircle, label=%c");
          goto LABEL_99;
        case '2':
          v25 = "Mcircle, label=^";
          break;
        default:
          goto LABEL_91;
      }
    }

    else
    {
      if (*v22 > 0x35u)
      {
        if (v24 == 54)
        {
          v25 = "Mcircle, label=[]*";
          v26 = 19;
LABEL_98:
          fwrite(v25, v26, 1uLL, v6);
          goto LABEL_99;
        }

        if (v24 == 56)
        {
          v25 = "Mcircle, label=.*";
          goto LABEL_95;
        }

LABEL_91:
        fprintf(v6, "hexagon, label=%d");
        goto LABEL_99;
      }

      if (v24 != 51)
      {
        if (v24 == 52)
        {
          v25 = "Mcircle, label=[]";
LABEL_95:
          v26 = 18;
          goto LABEL_98;
        }

        goto LABEL_91;
      }

      v25 = "Mcircle, label=$";
    }

    v26 = 17;
    goto LABEL_98;
  }

  return 0xFFFFFFFFLL;
}

size_t printGraphNode(FILE *a1, uint64_t a2, unsigned int a3)
{
  v4 = a2 + 16 * a3;
  fprintf(a1, "[#%x->%x ", a3, *(v4 + 44));
  v7 = *(v4 + 40);
  v6 = v4 + 40;
  v5 = v7;
  switch(v7)
  {
    case 16:
      fprintf(a1, "'%c'");
      goto LABEL_45;
    case 17:
      fprintf(a1, "%.*s");
      goto LABEL_45;
    case 18:
      v10 = *(v6 + 8);
      fputc(123, a1);
      if (*(v10 + 6))
      {
        v11 = 0;
        v12 = (v10 + 12);
        do
        {
          if (v11)
          {
            fputc(32, a1);
          }

          v13 = *(v12 - 4);
          v14 = *v12;
          v12 += 2;
          fprintf(a1, "'%c'->%x", v13, v14);
          ++v11;
        }

        while (v11 < *(v10 + 6));
      }

      putchar(125);
      goto LABEL_19;
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 47:
    case 53:
    case 55:
      goto LABEL_5;
    case 34:
      fprintf(a1, "E r=%d");
      goto LABEL_45;
    case 35:
LABEL_19:
      v9 = 41;
      goto LABEL_41;
    case 36:
      v9 = 40;
      goto LABEL_41;
    case 37:
      v8 = "(?";
      goto LABEL_43;
    case 38:
      fprintf(a1, "->%x alt:%c");
      goto LABEL_45;
    case 39:
      fwrite("alts", 4uLL, 1uLL, a1);
      v16 = *(v6 + 8);
      if (*(v16 + 4))
      {
        v17 = 0;
        do
        {
          fprintf(a1, " ->%x", *(v16 + 4 * v17++ + 8));
          v16 = *(v6 + 8);
        }

        while (v17 < *(v16 + 4));
      }

      goto LABEL_45;
    case 40:
      v8 = "cons";
      goto LABEL_21;
    case 41:
      v9 = 42;
      goto LABEL_41;
    case 42:
      v8 = "*?";
      goto LABEL_43;
    case 43:
      v9 = 43;
      goto LABEL_41;
    case 44:
      v8 = "+?";
      goto LABEL_43;
    case 45:
      v9 = 63;
      goto LABEL_41;
    case 46:
      v8 = "??";
      goto LABEL_43;
    case 48:
      v9 = 46;
      goto LABEL_41;
    case 49:
      v8 = "[S]";
      v15 = 3;
      goto LABEL_44;
    case 50:
      v9 = 94;
      goto LABEL_41;
    case 51:
      v9 = 36;
      goto LABEL_41;
    case 52:
      fputc(91, a1);
      goto LABEL_37;
    case 54:
      fwrite("*[", 2uLL, 1uLL, a1);
LABEL_37:
      v18 = *(v6 + 8);
      if (*(v18 + 4))
      {
        v19 = 0;
        do
        {
          fprintf(a1, "%c-%c", *(v18 + 8 + v19), *(v18 + 8 + v19 + 1));
          v19 += 2;
          v18 = *(v6 + 8);
        }

        while (v19 < *(v18 + 4));
      }

      v9 = 93;
LABEL_41:
      fputc(v9, a1);
      goto LABEL_45;
    case 56:
      v8 = ".*";
LABEL_43:
      v15 = 2;
      goto LABEL_44;
    default:
      if (v5 == 255)
      {
        v8 = "DEAD";
LABEL_21:
        v15 = 4;
LABEL_44:
        fwrite(v8, v15, 1uLL, a1);
      }

      else
      {
LABEL_5:
        fprintf(a1, "(unknown type %x)");
      }

LABEL_45:

      return fwrite("]\n", 2uLL, 1uLL, a1);
  }
}

size_t printRunNode(FILE *a1, uint64_t a2, unsigned int a3)
{
  v5 = **(a2 + 56);
  v6 = (v5 + a3);
  fprintf(a1, "[#%x ", a3);
  v7 = *v6;
  switch(v7 & 0xF)
  {
    case 0u:
    case 4u:
    case 8u:
    case 0xCu:
      fprintf(a1, "%.*s");
      goto LABEL_27;
    case 2u:
      fprintf(a1, "'%c'");
      goto LABEL_27;
    case 3u:
      fputc(123, a1);
      if (*v6 >= 0x10u)
      {
        v11 = 0;
        v12 = (a3 + v5 + 3);
        do
        {
          if (v11)
          {
            fputc(32, a1);
          }

          fprintf(a1, "'%c'->%x", *v12, *(v12 - 1));
          ++v11;
          v12 += 3;
        }

        while (v11 < *v6 >> 4);
      }

      v9 = 125;
      goto LABEL_20;
    case 5u:
      fprintf(a1, "E r=%d");
      goto LABEL_27;
    case 6u:
      v9 = 41;
      goto LABEL_20;
    case 7u:
      v9 = 40;
      goto LABEL_20;
    case 9u:
      v8 = (v7 >> 4) & 7;
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_27;
          }

          v9 = 94;
        }

        else
        {
          v9 = 46;
        }

        goto LABEL_20;
      }

      if (v8 == 2)
      {
        v9 = 36;
LABEL_20:
        fputc(v9, a1);
        goto LABEL_27;
      }

      if (v8 == 3)
      {
        v13 = ".*";
        v14 = 2;
LABEL_25:
        fwrite(v13, v14, 1uLL, a1);
      }

LABEL_27:

      return fwrite("]\n", 2uLL, 1uLL, a1);
    case 0xAu:
      fprintf(a1, "->%x [S]");
      goto LABEL_27;
    case 0xBu:
      v13 = "[...]";
      v14 = 5;
      goto LABEL_25;
    case 0xDu:
      v13 = "[...]*";
      v14 = 6;
      goto LABEL_25;
    case 0xFu:
      fprintf(a1, "alts ->%x", a3 + ((v7 >> 3) & 0x1E) - 1);
      if (*v6 >= 0x20u)
      {
        v10 = 1;
        do
        {
          fprintf(a1, " ->%x", *&v6[2 * v10++ - 1]);
        }

        while (v10 < *v6 >> 4);
      }

      goto LABEL_27;
    default:
      fprintf(a1, "(unknown type %x)");
      goto LABEL_27;
  }
}

uint64_t matchPrintNodes(int a1, uint64_t a2)
{
  v4 = fdopen(a1, "w");
  v5 = dup(a1);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *v6;
  if (*v6)
  {
    v9 = *(v6 + 8);
    fprintf(v4, "== matchPrintNodes: run nodes (start=0, count=%x) ==\n", *(v6 + 8));
    if (v9)
    {
      v10 = 0;
      do
      {
        printRunNode(v4, a2, v10);
        v11 = *(v8 + v10);
        v12 = v11 & 0xF;
        if (v12 > 7)
        {
          if ((v11 & 0xF) <= 0xA)
          {
            if (v12 != 8)
            {
              if (v12 == 9)
              {
                LOWORD(v13) = 1;
                goto LABEL_26;
              }

              if (v12 != 10)
              {
                return 0xFFFFFFFFLL;
              }
            }

            goto LABEL_20;
          }

          if ((v11 & 0xF) <= 0xC)
          {
            if (v12 == 11)
            {
              goto LABEL_24;
            }

            goto LABEL_20;
          }

          if (v12 == 13)
          {
LABEL_24:
            v13 = (v11 >> 3) | 1;
            goto LABEL_26;
          }

          if (v12 != 15)
          {
            return 0xFFFFFFFFLL;
          }

          v13 = ((v11 >> 3) & 0x1E) - 1;
        }

        else
        {
          LOWORD(v13) = 2;
          if ((v11 & 0xF) <= 3)
          {
            if ((v11 & 0xF) == 0)
            {
              goto LABEL_20;
            }

            if (v12 != 2)
            {
              if (v12 != 3)
              {
                return 0xFFFFFFFFLL;
              }

              v13 = 3 * (v11 >> 4) + 1;
            }
          }

          else if (v12 - 5 >= 3)
          {
            if (v12 != 4)
            {
              return 0xFFFFFFFFLL;
            }

LABEL_20:
            LOWORD(v13) = 3;
          }
        }

LABEL_26:
        v10 += v13;
      }

      while (v9 > v10);
    }

    fwrite("== end nodes==\n", 0xFuLL, 1uLL, v4);
  }

  if (v7)
  {
    fprintf(v4, "== matchPrintNodes: graph nodes (start=%x, count=%x) ==\n", *(v7 + 8), *(v7 + 12));
    if (*(v7 + 12))
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(v7 + 16);
        if (v16)
        {
          fprintf(v4, "rc=%u ", *(v16 + 4 * v15));
        }

        printGraphNode(v4, v7, v14);
        v14 = ++v15;
      }

      while (*(v7 + 12) > v15);
    }

    fwrite("== end nodes==\n", 0xFuLL, 1uLL, v4);
  }

  fflush(v4);
  fclose(v4);
  dup2(v5, a1);
  return 0;
}

uint64_t matchInit(uint64_t *a1, void *(*a2)(size_t a1), void (__cdecl *a3)(void *), uint64_t a4)
{
  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (v7)
  {
    v9 = malloc_wrapper;
    v10 = (malloc_wrapper)(72, a4);
  }

  else
  {
    v9 = a2;
    v10 = (a2)(72, a4);
  }

  if (!v10)
  {
    return 4294967292;
  }

  v11 = v10;
  result = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  if (v8)
  {
    v13 = free_wrapper;
  }

  else
  {
    v13 = a3;
  }

  *(v11 + 32) = 0uLL;
  *(v11 + 48) = 0uLL;
  *v11 = 1;
  *(v11 + 8) = v9;
  *(v11 + 16) = v13;
  *(v11 + 24) = a4;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *a1 = v11;
  return result;
}

uint64_t matchSetOption(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (a2 != 1)
  {
    return 4294967293;
  }

  result = 0;
  v11 = *a1 & 0xFFFFFFFE;
  if (a9)
  {
    ++v11;
  }

  *a1 = v11;
  return result;
}

unsigned __int8 *nodeModPtrRefs(unsigned __int8 *result, int a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v4 = *result;
  v5 = v4 > 0x36;
  v6 = (1 << v4) & 0x50008000060000;
  v7 = v5 || v6 == 0;
  if (!v7)
  {
    v8 = *(result + 1);
    v7 = *v8 + a2 == 0;
    *v8 += a2;
    if (v7)
    {
      return a3(*(result + 1), a4);
    }
  }

  return result;
}

uint64_t nfaFree(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (*(a1 + 36) && *(a1 + 12))
  {
    v5 = 0;
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 8);
      v8 = v7 > 0x36;
      v9 = (1 << v7) & 0x50008000060000;
      if (!v8 && v9 != 0)
      {
        v11 = **v6 - 1;
        **v6 = v11;
        if (!v11)
        {
          a2(*v6, a3);
        }
      }

      ++v5;
      v6 += 2;
    }

    while (v5 < *(a1 + 12));
  }

  return a2(a1, a3);
}

uint64_t matchFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    if (v2)
    {
      nfaFree(v2, *(v1 + 16), *(v1 + 24));
    }

    v3 = *(v1 + 56);
    if (v3)
    {
      (*(v1 + 16))(v3, *(v1 + 24));
    }

    if (*(v1 + 32))
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        v4();
      }
    }

    v6 = *(v1 + 16);
    v5 = *(v1 + 24);

    return v6(v1, v5);
  }

  return result;
}

uint64_t matchCompile(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v33 = 0u;
  v29 = 0u;
  v30 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  v31 = a2;
  v32 = &a2[a3];
  BYTE9(v32) = *a1 & 1;
  *(&v28 + 1) = a1;
  if (a3 > 0x1553555)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 6 * a3 + 6;
  v8 = (*(a1 + 8))(16 * v7 + 56, *(a1 + 24));
  if (!v8)
  {
    return 4294967292;
  }

  v9 = v8;
  *(v8 + 12) = 0;
  *v8 = a1;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 36) = v7;
  LODWORD(v17) = 0;
  *&v29 = v8;
  *(&v29 + 1) = v8 + 40;
  LODWORD(v30) = 0;
  BYTE4(v28) = 1;
  *(&v27 + 1) = 0;
  LODWORD(v28) = 0;
  BYTE4(v17) = 33;
  *(&v19 + 4) = 1;
  v10 = tokenize(&v31);
  v11 = v10;
  if (v10 == 50)
  {
    BYTE5(v28) = 1;
  }

  else
  {
    BYTE5(v28) = 0;
    handleToken(v16, 48);
    handleOperator(v16, 42);
  }

  if (BYTE9(v32))
  {
    v12 = 37;
  }

  else
  {
    v12 = 36;
  }

  handleOperator(v16, v12);
  do
  {
    v13 = handleToken(v16, v11);
    if (v13)
    {
      v4 = v13;
      v29 = 0uLL;
      (*(a1 + 16))(v9, *(a1 + 24));
      return v4;
    }

    v14 = tokenize(&v31);
    v11 = v14;
  }

  while (v14 != 34);
  if (DWORD2(v27) && (evaluateOperator(v16, 0x23u), BYTE4(v28) = 0, DWORD2(v27)))
  {
    (*(a1 + 16))(v9, *(a1 + 24));
    return 4294967291;
  }

  else
  {
    handleOperator(v16, 34);
    evaluateOperator(v16, 0x21u);
    v4 = 0;
    *(*(&v29 + 1) + 16 * v30 + 8) = a4;
    *(a1 + 64) = v9;
  }

  return v4;
}

uint64_t tokenize(unsigned __int8 **a1)
{
  v1 = 0;
  v3 = *a1;
  v2 = a1[1];
  do
  {
    if (v3 >= v2)
    {
      return 34;
    }

    v4 = v3 + 1;
    *a1 = v3 + 1;
    v5 = *v3;
    if ((v1 & 1) != 0 || *(a1 + 16) == 1)
    {
      goto LABEL_33;
    }

    v1 = 1;
    ++v3;
  }

  while (v5 == 92);
  v6 = v4 < v2 && *v4 == 63;
  if (v5 > 45)
  {
    if (v5 <= 90)
    {
      if (v5 == 46)
      {
        return 48;
      }

      if (v5 != 63)
      {
        goto LABEL_33;
      }

      if (v6)
      {
        *a1 = v4 + 1;
        return 46;
      }

      else
      {
        return 45;
      }
    }

    if (v5 != 91)
    {
      if (v5 == 94)
      {
        return 50;
      }

      if (v5 == 124)
      {
        return 38;
      }

      goto LABEL_33;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a1 + 28;
    v13 = 1;
    while (2)
    {
      v14 = 0;
      v12[v11] = 0;
      do
      {
        if (v4 >= v2)
        {
          return 34;
        }

        v15 = v4++;
        *a1 = v4;
        v16 = *v15;
        if (v14)
        {
          goto LABEL_53;
        }

        v14 = 1;
      }

      while (v16 == 92);
      switch(v16)
      {
        case '-':
          if (v9)
          {
            v13 = 0;
            v8 = 1;
            goto LABEL_57;
          }

          v16 = 45;
          break;
        case '^':
          if (v13)
          {
            v13 = 1;
            v10 = 1;
            goto LABEL_58;
          }

          v16 = 94;
          break;
        case ']':
          if ((v13 & 1) == 0)
          {
            if (v8)
            {
              v12[v11 - 1] = 45;
            }

            if (!v11)
            {
              goto LABEL_76;
            }

            if (v11 <= 2)
            {
              v11 = 0;
              if ((v10 & 1) == 0)
              {
                goto LABEL_81;
              }

              v36 = *v12;
              goto LABEL_80;
            }

LABEL_59:
            v18 = 0;
            v19 = a1 + 30;
            v20 = 2;
            v21 = v11;
            do
            {
              v22 = v19;
              v23 = v20;
              v24 = v18;
              do
              {
                v25 = *v22;
                v22 += 2;
                if (v25 < v12[v24])
                {
                  v24 = v23;
                }

                v23 += 2;
              }

              while (v23 < v21);
              if (v18 != v24)
              {
                v26 = v12[v24];
                v27 = &v12[v18];
                v12[v24] = v12[v18];
                *v27 = v26;
                v28 = v24 + 1;
                v29 = v12[v28];
                v12[v28] = v12[v18 + 1];
                v27[1] = v29;
              }

              v20 += 2;
              v18 += 2;
              v19 += 2;
            }

            while (v20 < v21);
            v11 = 0;
            v30 = a1 + 31;
            for (i = 2; i < v21; i += 2)
            {
              v32 = *(v30 - 1);
              v33 = v12[v11 + 1];
              if (v32 <= v33)
              {
                v35 = *v30;
                if (v33 > v35)
                {
                  LOBYTE(v35) = v12[v11 + 1];
                }

                v12[v11 + 1] = v35;
              }

              else
              {
                v34 = v11 + 2;
                if (i == v34)
                {
                  v11 = i;
                }

                else
                {
                  v12[v34] = v32;
                  v12[v11 + 3] = *v30;
                  v11 += 2;
                }
              }

              v30 += 2;
            }

LABEL_76:
            if ((v10 & 1) == 0)
            {
LABEL_81:
              *(a1 + 6) = v11 + 2;
              return 52;
            }

            v36 = *v12;
            if (v11)
            {
              for (j = 0; j < v11; v12[v38] = v12[j] - 1)
              {
                v38 = j + 1;
                v12[j] = v12[j + 1] + 1;
                j += 2;
              }
            }

LABEL_80:
            v12[v11] = v12[v11 + 1] + 1;
            v12[v11 + 1] = v36 - 1;
            goto LABEL_81;
          }

          v16 = 93;
          break;
      }

LABEL_53:
      *(a1 + 18) = v16;
      if (v8)
      {
        v12[v11 - 1] = v16;
        v17 = v12[v11 - 2];
        v13 = 0;
        v8 = 0;
        v9 = 0;
        if (v16 < v17)
        {
          v12[v11 - 1] = v17;
          v12[v11 - 2] = v16;
        }

LABEL_58:
        v4 = v15 + 1;
        if (v11 < 0x20)
        {
          continue;
        }

        goto LABEL_59;
      }

      break;
    }

    v13 = 0;
    v8 = 0;
    v12[v11] = v16;
    *(a1 + v11 + 29) = v16;
    v11 += 2;
LABEL_57:
    v9 = 1;
    goto LABEL_58;
  }

  if (v5 <= 40)
  {
    if (v5 == 36)
    {
      return 51;
    }

    if (v5 != 40)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      *a1 = v4 + 1;
    }

    if (*(a1 + 17) == v6)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }

  else
  {
    if (v5 == 41)
    {
      return 35;
    }

    if (v5 != 42)
    {
      if (v5 == 43)
      {
        if (v6)
        {
          *a1 = v4 + 1;
          return 44;
        }

        else
        {
          return 43;
        }
      }

LABEL_33:
      *(a1 + 18) = v5;
      return 16;
    }

    if (v6)
    {
      *a1 = v4 + 1;
      return 42;
    }

    else
    {
      return 41;
    }
  }
}

uint64_t handleToken(int32x2_t *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x30) == 0x20)
  {
    handleOperator(a1, a2);
    return 0;
  }

  if ((a1[54].i8[4] & 1) == 0)
  {
    handleOperator(a1, 40);
  }

  v5 = a1[56];
  v6 = a1[57];
  v7 = *(*&v5 + 12);
  *(*&v5 + 12) = v7 + 1;
  v8 = *&v6 + 16 * v7;
  *v8 = v2;
  *(v8 + 1) = 95;
  *(v8 + 4) = -1;
  if (v2 == 16)
  {
    *(*&a1[57] + 16 * v7 + 8) = a1[61].i8[2];
  }

  else if (v2 == 52)
  {
    v9 = a1[62].u32[0];
    v10 = (*(**&a1[56] + 8))(v9 + 8, *(**&a1[56] + 24));
    if (!v10)
    {
      return 4294967292;
    }

    v11 = v10;
    memcpy(v10, &a1[61] + 4, v9 + 8);
    *v11 = 1;
    *(*&a1[57] + 16 * v7 + 8) = v11;
  }

  v12 = a1[32].u32[0];
  if (v12 <= 0x1F)
  {
    a1[v12].i16[0] = v7;
    if (!WORD1(v7))
    {
      a1[a1[32].u32[0]].i16[1] = v7;
      v13 = a1[32].u32[0];
      a1[v13].i32[1] = a1[53].i32[0];
      a1[32].i32[0] = v13 + 1;
    }
  }

  result = 0;
  a1[54].i8[4] = 0;
  return result;
}

int32x2_t *handleOperator(int32x2_t *result, uint64_t a2)
{
  v2 = result;
  if (a2 == 35)
  {
    if (!result[53].i32[0])
    {
      return result;
    }

    result = evaluateOperator(result, 0x23u);
    goto LABEL_12;
  }

  v3 = a2;
  if ((a2 & 0xFE) != 0x24)
  {
    result = evaluateOperator(result, a2);
    v5 = v2[36].u32[1];
    if (v5 <= 0x1F)
    {
      v2[32].i8[v5 + 4] = v3;
      v6 = v2[36].u32[1];
      v2[37].i32[v6] = v2[54].i32[0];
      v2[36].i32[1] = v6 + 1;
    }

    if ((v3 - 41) < 6)
    {
LABEL_12:
      v7 = 0;
LABEL_22:
      v2[54].i8[4] = v7;
      return result;
    }

LABEL_21:
    v7 = 1;
    goto LABEL_22;
  }

  if (a2 != 36 || result[54].i32[0] <= 16)
  {
    if (result[54].i8[4])
    {
      LODWORD(v4) = result[36].i32[1];
    }

    else
    {
      result = evaluateOperator(result, 0x28u);
      v4 = v2[36].u32[1];
      if (v4 <= 0x1F)
      {
        v2[32].i8[v4 + 4] = 40;
        v8 = v2[36].u32[1];
        v2[37].i32[v8] = v2[54].i32[0];
        LODWORD(v4) = v8 + 1;
        v2[36].i32[1] = v8 + 1;
      }

      v2[54].i8[4] = 1;
    }

    if (v4 <= 0x1F)
    {
      v2[32].i8[v4 + 4] = v3;
      v9 = v2[36].u32[1];
      v2[37].i32[v9] = v2[54].i32[0];
      v2[36].i32[1] = v9 + 1;
    }

    if (v3 == 36)
    {
      *(v2 + 428) = vadd_s32(*(v2 + 428), 0x100000001);
    }

    ++v2[53].i32[0];
    goto LABEL_21;
  }

  return result;
}

int32x2_t *evaluateOperator(int32x2_t *result, unsigned int a2)
{
  v3 = result;
  v4 = &result[32] + 4;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v5 = v3[36].i32[1];
            if (a2 == 35)
            {
              if (!v5)
              {
                goto LABEL_20;
              }
            }

            else if (!v5 || v4[v5 - 1] < a2)
            {
              return result;
            }

            v6 = v5 - 1;
            v3[36].i32[1] = v6;
            v7 = v4[v6];
            if (v7 <= 41)
            {
              break;
            }

            if (v7 <= 43)
            {
              if (v7 != 42)
              {
                result = verifyOperandCount(v3, 1);
                v31 = v3[32].i32[0] - 1;
                v3[32].i32[0] = v31;
                v32 = &v3[v31];
                v33 = v3[56];
                v34 = v3[57];
                v35 = *(*&v33 + 12);
                *(*&v33 + 12) = v35 + 1;
                v36 = *&v34 + 16 * v35;
                *v36 = 29489;
                *(v36 + 4) = -1;
                v37 = v3[56];
                v38 = v3[57];
                v39 = *(*&v37 + 12);
                *(*&v37 + 12) = v39 + 1;
                v37.i32[0] = v32->u16[0];
                v40 = *&v38 + 16 * v39;
                *v40 = 11046;
                *(v40 + 4) = v37.i32[0];
                *(v40 + 8) = v35;
                *(*&v3[57] + 16 * v32->u16[1] + 4) = v39;
                goto LABEL_41;
              }

              result = verifyOperandCount(v3, 1);
              v42 = v3[32].i32[0] - 1;
              v3[32].i32[0] = v42;
              v43 = &v3[v42];
              v44 = v3[56];
              v45 = v3[57];
              v46 = *(*&v44 + 12);
              *(*&v44 + 12) = v46 + 1;
              v44.i32[0] = v43->u16[0];
              v47 = *&v45 + 16 * v46;
              *v47 = 10790;
              *(v47 + 4) = -1;
              *(v47 + 8) = v44.i32[0];
              *(*&v3[57] + 16 * v43->u16[1] + 4) = v46;
              v48 = v3[32].u32[0];
              if (v48 <= 0x1F)
              {
                v3[v48].i16[0] = v46;
                if (!WORD1(v46))
                {
                  v3[v3[32].u32[0]].i16[1] = v46;
                  goto LABEL_43;
                }
              }
            }

            else
            {
              switch(v7)
              {
                case ',':
                  result = verifyOperandCount(v3, 1);
                  v63 = v3[32].i32[0] - 1;
                  v3[32].i32[0] = v63;
                  v32 = &v3[v63];
                  v64 = v3[56];
                  v65 = v3[57];
                  v35 = *(*&v64 + 12);
                  *(*&v64 + 12) = v35 + 1;
                  v64.i32[0] = v32->u16[0];
                  v66 = *&v65 + 16 * v35;
                  *v66 = 11046;
                  *(v66 + 4) = -1;
                  *(v66 + 8) = v64.i32[0];
                  *(*&v3[57] + 16 * v32->u16[1] + 4) = v35;
LABEL_41:
                  v67 = v3[32].u32[0];
                  if (v67 <= 0x1F)
                  {
                    v3[v67].i16[0] = v32->i16[0];
                    v3[v3[32].u32[0]].i16[1] = v35;
                    if (!WORD1(v35))
                    {
                      goto LABEL_43;
                    }
                  }

                  break;
                case '-':
                  result = verifyOperandCount(v3, 1);
                  v51 = v3[32].i32[0] - 1;
                  v3[32].i32[0] = v51;
                  v19 = &v3[v51];
                  v52 = v3[56];
                  v53 = v3[57];
                  v12 = *(*&v52 + 12);
                  *(*&v52 + 12) = v12 + 1;
                  v54 = *&v53 + 16 * v12;
                  *v54 = 29489;
                  *(v54 + 4) = -1;
                  v55 = v3[56];
                  v56 = v3[57];
                  v16 = *(*&v55 + 12);
                  *(*&v55 + 12) = v16 + 1;
                  v55.i32[0] = v19->u16[0];
                  v57 = *&v56 + 16 * v16;
                  *v57 = 16166;
                  *(v57 + 4) = v55.i32[0];
                  *(v57 + 8) = v12;
                  goto LABEL_32;
                case '.':
                  result = verifyOperandCount(v3, 1);
                  v18 = v3[32].i32[0] - 1;
                  v3[32].i32[0] = v18;
                  v19 = &v3[v18];
                  v20 = v3[56];
                  v21 = v3[57];
                  v12 = *(*&v20 + 12);
                  *(*&v20 + 12) = v12 + 1;
                  v22 = *&v21 + 16 * v12;
                  *v22 = 29489;
                  *(v22 + 4) = -1;
                  v23 = v3[56];
                  v24 = v3[57];
                  v16 = *(*&v23 + 12);
                  *(*&v23 + 12) = v16 + 1;
                  v23.i32[0] = v19->u16[0];
                  v25 = *&v24 + 16 * v16;
                  *v25 = 16166;
                  *(v25 + 4) = v12;
                  *(v25 + 8) = v23.i32[0];
LABEL_32:
                  *(*&v3[57] + 16 * v19->u16[1] + 4) = v12;
LABEL_33:
                  v58 = v3[32].u32[0];
                  if (v58 <= 0x1F)
                  {
                    v3[v58].i16[0] = v16;
                    if (!WORD1(v16))
                    {
                      goto LABEL_35;
                    }
                  }

                  break;
              }
            }
          }

          if (v7 <= 37)
          {
            break;
          }

          switch(v7)
          {
            case '&':
              result = verifyOperandCount(v3, 2);
              v59 = v3[32].i32[0];
              if (v59)
              {
                v3[32].i32[0] = v59 - 1;
                v60 = &v3[v59 - 1];
                if (v59 != 1)
                {
                  v61 = v59 - 2;
                  v3[32].i32[0] = v61;
                  v62 = &v3[v61];
                  goto LABEL_46;
                }
              }

              else
              {
                v60 = 0;
              }

              v62 = 0;
LABEL_46:
              if (v3[53].i32[0] == 1 && v3[54].i8[5] == 1)
              {
                v69 = v3[57];
                if (*(*&v69 + 16 * v60->u16[0]) != 50)
                {
                  v70 = v3[56];
                  v71 = *(*&v70 + 12);
                  *(*&v70 + 12) = v71 + 1;
                  v72 = *&v69 + 16 * v71;
                  *v72 = 11824;
                  *(v72 + 4) = -1;
                  v73 = v3[56];
                  v74 = v3[57];
                  v75 = *(*&v73 + 12);
                  *(*&v73 + 12) = v75 + 1;
                  v73.i32[0] = v60->u16[0];
                  v76 = *&v74 + 16 * v75;
                  *v76 = 10790;
                  *(v76 + 4) = v73.i32[0];
                  *(v76 + 8) = v71;
                  *(*&v3[57] + 16 * v71 + 4) = v75;
                  v60->i16[0] = v75;
                  if (WORD1(v75))
                  {
                    return result;
                  }
                }
              }

              v77 = v3[56];
              v78 = v3[57];
              v79 = *(*&v77 + 12);
              *(*&v77 + 12) = v79 + 1;
              v80 = *&v78 + 16 * v79;
              *v80 = 29489;
              *(v80 + 4) = -1;
              v78.i32[0] = v62->u16[0];
              v81 = v3[56];
              v82 = v3[57];
              v83 = *(*&v81 + 12);
              *(*&v81 + 12) = v83 + 1;
              v81.i32[0] = v60->u16[0];
              v84 = *&v82 + 16 * v83;
              *v84 = 31782;
              *(v84 + 4) = v78.i32[0];
              *(v84 + 8) = v81.i32[0];
              v85 = v3[57];
              *(*&v85 + 16 * v62->u16[1] + 4) = v79;
              *(*&v85 + 16 * v60->u16[1] + 4) = v79;
              v86 = v3[32].u32[0];
              if (v86 <= 0x1F)
              {
                v3[v86].i16[0] = v83;
                if (!WORD1(v83))
                {
                  v3[v3[32].u32[0]].i16[1] = v79;
                  if (!WORD1(v79))
                  {
LABEL_43:
                    v68 = v3[32].u32[0];
                    v3[v68].i32[1] = v3[53].i32[0];
                    v3[32].i32[0] = v68 + 1;
                  }
                }
              }

              break;
            case '(':
              result = verifyOperandCount(v3, 2);
              v49 = v3[32].u32[0];
              v50 = &v3[v49 - 1];
              v49 -= 2;
              v3[32].i32[0] = v49;
              *(*&v3[57] + 16 * v3[v49].u16[1] + 4) = v50->u16[0];
              if (v49 <= 0x1F)
              {
                v3[v3[32].u32[0]].i16[1] = v50->i16[1];
                goto LABEL_43;
              }

              break;
            case ')':
              result = verifyOperandCount(v3, 1);
              v8 = v3[32].i32[0] - 1;
              v3[32].i32[0] = v8;
              v9 = &v3[v8];
              v10 = v3[56];
              v11 = v3[57];
              v12 = *(*&v10 + 12);
              *(*&v10 + 12) = v12 + 1;
              v13 = *&v11 + 16 * v12;
              *v13 = 29489;
              *(v13 + 4) = -1;
              v14 = v3[56];
              v15 = v3[57];
              v16 = *(*&v14 + 12);
              *(*&v14 + 12) = v16 + 1;
              v14.i32[0] = v9->u16[0];
              v17 = *&v15 + 16 * v16;
              *v17 = 10790;
              *(v17 + 4) = v14.i32[0];
              *(v17 + 8) = v12;
              *(*&v3[57] + 16 * v9->u16[1] + 4) = v16;
              goto LABEL_33;
          }
        }

        if (v7 > 33)
        {
          break;
        }

        if (v7 == 33)
        {
          result = verifyOperandCount(v3, 1);
          v41 = v3[32].i32[0] - 1;
          v3[32].i32[0] = v41;
          *(*&v3[56] + 8) = v3[v41].u16[0];
        }
      }

      if (v7 != 34)
      {
        break;
      }

LABEL_20:
      result = verifyOperandCount(v3, 1);
      v26 = v3[56];
      v27 = v3[57];
      v12 = *(*&v26 + 12);
      *(*&v26 + 12) = v12 + 1;
      v26.i32[0] = v3[32].i32[0] - 1;
      v3[32].i32[0] = v26.i32[0];
      v28 = &v3[v26.u32[0]];
      v29 = *&v27 + 16 * v12;
      *v29 = 17698;
      *(v29 + 4) = -1;
      v3[58].i32[0] = v12;
      *(*&v3[57] + 16 * v28->u16[1] + 4) = v12;
      v30 = v3[32].u32[0];
      if (v30 <= 0x1F)
      {
        v3[v30].i16[0] = v28->i16[0];
LABEL_35:
        v3[v3[32].u32[0]].i16[1] = v12;
        if (!WORD1(v12))
        {
          goto LABEL_43;
        }
      }
    }

    if (v7 == 36)
    {
      break;
    }

    if (v7 == 37)
    {
      result = verifyOperandCount(v3, 1);
      --v3[53].i32[0];
      return result;
    }
  }

  result = verifyOperandCount(v3, 1);
  v87 = v3[32].i32[0] - 1;
  v3[32].i32[0] = v87;
  v88 = &v3[v87];
  v89 = v3[56];
  v90 = v3[57];
  v91 = *(*&v89 + 12);
  *(*&v89 + 12) = v91 + 1;
  v92 = *&v90 + 16 * v91;
  *v92 = 10531;
  *(v92 + 4) = -1;
  v93 = v3[56];
  v94 = v3[57];
  v95 = *(*&v93 + 12);
  *(*&v93 + 12) = v95 + 1;
  v93.i32[0] = v88->u16[0];
  v96 = *&v94 + 16 * v95;
  *v96 = 10276;
  *(v96 + 4) = v93.i32[0];
  *(v96 + 8) = -1;
  v97 = v3[57];
  *(*&v97 + 16 * v88->u16[1] + 4) = v91;
  *(*&v97 + 16 * v95 + 8) = v3[37].i32[v3[36].u32[1]];
  *(*&v3[57] + 16 * v91 + 8) = v3[37].i32[v3[36].u32[1]];
  v3[53] = vadd_s32(v3[53], -1);
  v98 = v3[32].u32[0];
  if (v98 <= 0x1F)
  {
    v3[v98].i16[0] = v95;
    if (!WORD1(v95))
    {
      v3[v3[32].u32[0]].i16[1] = v91;
      if (!WORD1(v91))
      {
        v99 = v3[32].u32[0];
        v3[v99].i32[1] = v3[53].i32[0];
        v3[32].i32[0] = v99 + 1;
      }
    }
  }

  return result;
}

uint64_t matchDup(uint64_t *a1, void *a2)
{
  matched = 4294967293;
  if (a1)
  {
    if (a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2[2];
        if (v5)
        {
          matched = matchInit(a1, v4, v5, a2[3]);
          if (!matched)
          {
            matched = matchCopy(*a1, a2);
            if (matched)
            {
              matchFree(*a1);
            }
          }
        }
      }
    }
  }

  return matched;
}

uint64_t matchCopy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 32))
  {
    return 4294967293;
  }

  v5 = (a1 + 64);
  if (*(a1 + 64) || *(a1 + 56))
  {
    return 4294967293;
  }

  if (*(a2 + 32))
  {
    v7 = (v3)(*(a2 + 40));
    *(a1 + 32) = v7;
    if (v7)
    {
      v8 = *(a1 + 16);
      v9 = *(a2 + 32);
      v10 = *(a2 + 40);
      *(a1 + 40) = v10;
      *(a1 + 48) = v8;
      memcpy(v7, v9, v10);
      if (!*(a2 + 56))
      {
        goto LABEL_11;
      }

      v11 = (*(a1 + 8))(24, *(a1 + 24));
      *(a1 + 56) = v11;
      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = *(a2 + 56);
        v14 = *(a2 + 32);
        *v11 = v12 + *v13 - v14;
        *(v11 + 16) = *(v13 + 16);
        *(v11 + 8) = v12 + *(v13 + 8) - v14;
LABEL_11:
        v15 = *(a2 + 64);
        if (!v15)
        {
          return 0;
        }

        goto LABEL_14;
      }

      (*(a1 + 16))(*(a1 + 32), *(a1 + 24));
    }

    return 4294967292;
  }

  v15 = *(a2 + 64);
  if (!v15)
  {
    return 4294967293;
  }

LABEL_14:
  result = nfaCopy(v5, v15, *(a1 + 8), *(a1 + 16), *(a1 + 24), 0);
  if (!result)
  {
    **(a1 + 64) = a1;
  }

  return result;
}

uint64_t matchCombine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    result = matchCombine2(a1, a2);
    if (!a3 || result)
    {
      return result;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  return matchCombine2(a1, a3);
}

uint64_t matchCombine2(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a2 + 64);
    if (!v5)
    {
      return 4294967293;
    }

    v6 = v5[3] + 1;
    if (v6 << 31 >> 31 != v6)
    {
      return 4294967293;
    }

    v7 = nfaCopy(&v13, v4, *(a1 + 8), *(a1 + 16), *(a1 + 24), v6);
    if (!v7)
    {
      v9 = v13;
      *v13 = a1;
      v10 = *(v9 + 8);
      v11 = *(v9 + 12);
      *(v9 + 12) = v11 + 1;
      v12 = v9 + 16 * v11;
      *(v12 + 40) = 31782;
      *(v12 + 44) = v10;
      v7 = nfaCopyNodes(v9, (v12 + 48), v5, *(a1 + 8), *(a1 + 16), *(a1 + 24));
      if (v7)
      {
        nfaFree(v9, *(a1 + 16), *(a1 + 24));
      }

      else
      {
        *(v9 + 8) = v11;
        nfaFree(*(a1 + 64), *(a1 + 16), *(a1 + 24));
        *(a1 + 64) = v9;
      }
    }

    return v7;
  }

  else
  {

    return matchCopy(a1, a2);
  }
}

uint64_t verifyOperandCount(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = *(result + 256);
    v4 = v3 - 1;
    v5 = 1;
    do
    {
      if (v5 > v3 || *(result + 8 * v4 + 4) < *(result + 424))
      {
        ++v2;
      }

      ++v5;
      --v4;
    }

    while (a2 + 1 != v5);
    for (; v2; --v2)
    {
      v6 = *(result + 448);
      v7 = *(result + 456);
      v8 = *(v6 + 12);
      *(v6 + 12) = v8 + 1;
      v9 = v7 + 16 * v8;
      *v9 = 25905;
      *(v9 + 4) = -1;
      v10 = *(result + 256);
      if (v10 <= 0x1F)
      {
        *(result + 8 * v10) = v8;
        if (!WORD1(v8))
        {
          *(result + 8 * *(result + 256) + 2) = v8;
          v11 = *(result + 256);
          *(result + 8 * v11 + 4) = *(result + 424);
          *(result + 256) = v11 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t nfaCopy(uint64_t *a1, _DWORD *a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t a5, int a6)
{
  v11 = a2[9] + a6;
  v12 = a3(16 * v11 + 56, a5);
  if (!v12)
  {
    return 4294967292;
  }

  v13 = v12;
  v16 = 0;
  *(v12 + 12) = 0;
  *v12 = *a2;
  *(v12 + 32) = 0;
  *(v12 + 36) = v11;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v14 = nfaCopyNodes(v12, &v16, a2, a3, a4, a5);
  if (v14)
  {
    a4(v13, a5);
  }

  else
  {
    *(v13 + 8) = v16;
    *v13 = 0;
    *a1 = v13;
  }

  return v14;
}

uint64_t nfaCopyNodes(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t), uint64_t a6)
{
  if (!a3[9])
  {
    return 4294967292;
  }

  v6 = *(a1 + 12);
  v7 = a3[3];
  if (!v7)
  {
LABEL_23:
    result = 0;
    *a2 = a3[2] + v6;
    return result;
  }

  v24 = a3;
  v25 = a2;
  v10 = 0;
  v11 = a1 + 16 * v6 + 40;
  v12 = (a3 + 12);
  v13 = v11;
  while (1)
  {
    *v13 = *(v12 - 1);
    v14 = *v13;
    if (v14 <= 0x26)
    {
      if (v14 == 17)
      {
        goto LABEL_10;
      }

      if (v14 == 18)
      {
        v15 = 8 * *(*v12 + 6);
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (v14 == 39)
    {
      break;
    }

    if (v14 == 52)
    {
LABEL_10:
      v15 = *(*v12 + 1);
      goto LABEL_12;
    }

LABEL_14:
    ++v10;
    v12 += 2;
    v13 += 16;
    if (v7 == v10)
    {
      a3 = v24;
      *(a1 + 12) += v7;
      a2 = v25;
      if (v6)
      {
        v18 = v11 + 16 * v7;
        do
        {
          v19 = *(v11 + 4);
          if (v19 != -1)
          {
            *(v11 + 4) = v19 + v6;
          }

          if (*v11 == 38)
          {
            v20 = *(v11 + 8);
            if (v20 != -1)
            {
              *(v11 + 8) = v20 + v6;
            }
          }

          v11 += 16;
        }

        while (v11 < v18);
      }

      goto LABEL_23;
    }
  }

  v15 = 4 * *(*v12 + 1);
LABEL_12:
  v16 = a4(v15 + 8, a6);
  if (v16)
  {
    v17 = v16;
    *(v13 + 1) = v16;
    memcpy(v16, *v12, v15 + 8);
    *v17 = 1;
    goto LABEL_14;
  }

  for (; v10; --v10)
  {
    nodeModPtrRefs(v11, -1, a5, a6);
    v11 += 16;
  }

  return 4294967292;
}