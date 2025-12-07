uint64_t ZSTD_compressBlock_fast_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = *(a1 + 272);
  if ((v6 - 5) >= 3)
  {
    v6 = 4;
  }

  if (*(a1 + 276) <= 1u)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 276);
  }

  v8 = *(a1 + 8);
  v9 = a4 - v8 + a5;
  v10 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  v11 = *(a1 + 28);
  v13 = v9 - v11 > v10;
  v14 = v9 - v10;
  if (v13 && *(a1 + 40) == 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  if (v12 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (v16 < v12)
  {
    v18 = (v7 + 1);
    v19 = &a4[a5];
    v20 = &a4[a5 - 8];
    v22 = *a3;
    v21 = a3[1];
    v23 = a4 - v8 - v16;
    if (v21 >= v23)
    {
      v24 = a3[1];
    }

    else
    {
      v24 = 0;
    }

    if (v21 >= v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v21;
    }

    if (v22 >= v23)
    {
      v26 = v22;
    }

    else
    {
      v26 = 0;
    }

    v164 = v26;
    v165 = v24;
    if (v22 >= v23)
    {
      v27 = 0;
    }

    else
    {
      v27 = v22;
    }

    v28 = &a4[v18];
    v29 = &a4[v18 + 1];
    if (v29 >= v20)
    {
LABEL_278:
      LODWORD(v121) = v25;
      goto LABEL_279;
    }

    v159 = *(a1 + 24);
    v30 = *(a1 + 16);
    v168 = (v8 + v17);
    v31 = *(a1 + 112);
    v160 = v8 + 2;
    v161 = v18;
    v32 = *(a1 + 264);
    v33 = 64 - v32;
    v169 = 32 - v32;
    v34 = v19 - 7;
    v163 = v19 - 3;
    v162 = v19 - 1;
    v167 = (v19 - 32);
    v170 = v17 + v8 + 8;
LABEL_30:
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        v35 = *a4;
        v36 = -1079680256;
        goto LABEL_40;
      }

      if (v6 == 8)
      {
        v35 = *a4;
        v36 = -1213897629;
        goto LABEL_40;
      }
    }

    else
    {
      if (v6 == 5)
      {
        v35 = *a4;
        v36 = -1157627904;
        goto LABEL_40;
      }

      if (v6 == 6)
      {
        v35 = *a4;
        v36 = -1080360960;
LABEL_40:
        v39 = v36 | 0xCF1BBCDC00000000;
        v37 = (v35 * v39) >> v33;
        v38 = (*(a4 + 1) * v39) >> v33;
        goto LABEL_41;
      }
    }

    v37 = (-1640531535 * *a4) >> v169;
    v38 = (-1640531535 * *(a4 + 1)) >> v169;
LABEL_41:
    v40 = a4 + 1;
    v41 = a4 + 128;
    v42 = *(v31 + 4 * v37);
    if (v42 >= v17)
    {
      v43 = v8;
    }

    else
    {
      v43 = v30;
    }

    v44 = a4;
    while (1)
    {
      v51 = v28;
      _X16 = v29;
      v53 = v28 - v8 - v27;
      if (v17 <= v53)
      {
        v54 = v8;
      }

      else
      {
        v54 = v30;
      }

      if (v27 && v17 - v53 >= 4)
      {
        v55 = *(v54 + v53);
      }

      else
      {
        v55 = *v28 ^ 1;
      }

      v56 = v44 - v8;
      *(v31 + 4 * v37) = v44 - v8;
      if (*v51 == v55)
      {
        v62 = v54 + v53;
        if (v17 <= v53)
        {
          v63 = v19;
        }

        else
        {
          v63 = (v30 + v17);
        }

        v64 = *(v51 - 1) == *(v62 - 1);
        if (*(v51 - 1) == *(v62 - 1))
        {
          v65 = 5;
        }

        else
        {
          v65 = 4;
        }

        v66 = &v51[-v64];
        v67 = (v62 - v64);
        v68 = 1;
        v51 = v40;
        v40 = v66;
        v69 = v27;
        goto LABEL_111;
      }

      if (v42 >= v16)
      {
        v57 = v42;
        if (*v44 == *(v43 + v42))
        {
          v51 = v40;
          v40 = v44;
          goto LABEL_98;
        }
      }

      v57 = *(v31 + 4 * v38);
      if (v57 >= v17)
      {
        v43 = v8;
      }

      else
      {
        v43 = v30;
      }

      if (v6 > 6)
      {
        if (v6 == 7)
        {
          v58 = *v51;
          v59 = -1079680256;
          goto LABEL_70;
        }

        if (v6 == 8)
        {
          v58 = *v51;
          v59 = -1213897629;
          goto LABEL_70;
        }
      }

      else
      {
        if (v6 == 5)
        {
          v58 = *v51;
          v59 = -1157627904;
          goto LABEL_70;
        }

        if (v6 == 6)
        {
          v58 = *v51;
          v59 = -1080360960;
LABEL_70:
          v37 = (v58 * (v59 | 0xCF1BBCDC00000000)) >> v33;
          goto LABEL_71;
        }
      }

      v37 = (-1640531535 * *v51) >> v169;
LABEL_71:
      v56 = v40 - v8;
      *(v31 + 4 * v38) = v40 - v8;
      if (v57 >= v16 && *v40 == *(v43 + v57))
      {
        v42 = v57;
        v38 = v37;
LABEL_98:
        v69 = v56 - v42;
        v70 = v8 + v17;
        if (v159 <= v42)
        {
          v63 = v19;
        }

        else
        {
          v70 = v30 + v16;
          v63 = (v30 + v17);
        }

        v67 = (v43 + v57);
        v68 = v69 + 3;
        if (v43 + v57 <= v70 || v40 <= a4)
        {
          v65 = 4;
        }

        else
        {
          v71 = v40 - 1;
          v72 = (v43 + v57 - 1);
          v65 = 4;
          while (*v71 == *v72)
          {
            ++v65;
            v73 = v71 - 1;
            v74 = v72 - 1;
            if (v72 > v70)
            {
              --v72;
              v13 = v71-- > a4;
              if (v13)
              {
                continue;
              }
            }

            v40 = v73 + 1;
            v67 = v74 + 1;
            goto LABEL_110;
          }

          v40 = v71 + 1;
          v67 = v72 + 1;
        }

LABEL_110:
        v25 = v27;
LABEL_111:
        v75 = &v40[v65];
        v76 = &v67[v65];
        if (&v40[v63 - v67] >= v19)
        {
          v77 = v19;
        }

        else
        {
          v77 = &v40[v63 - v67];
        }

        if (v77 - 7 <= v75)
        {
          v78 = &v67[v65];
          v80 = &v40[v65];
LABEL_122:
          if (v80 < v77 - 3 && *v78 == *v80)
          {
            v78 += 4;
            v80 += 4;
          }

          if (v80 < v77 - 1 && *v78 == *v80)
          {
            v78 += 2;
            v80 += 2;
          }

          if (v80 < v77 && *v78 == *v80)
          {
            ++v80;
          }

          v83 = v80 - v75;
        }

        else if (*v76 == *v75)
        {
          v78 = &v67[v65 + 8];
          v79 = &v40[v65 + 8];
          do
          {
            v80 = v79;
            if (v79 >= (v77 - 7))
            {
              goto LABEL_122;
            }

            v82 = *v78;
            v78 += 8;
            v81 = v82;
            v79 += 8;
          }

          while (v82 == *v80);
          v83 = &v80[__clz(__rbit64(*v80 ^ v81)) >> 3] - v75;
        }

        else
        {
          v83 = __clz(__rbit64(*v75 ^ *v76)) >> 3;
        }

        if (&v76[v83] == v63)
        {
          v84 = &v75[v83];
          if (v34 <= v84)
          {
            v90 = (v8 + v17);
            v86 = v84;
            goto LABEL_142;
          }

          if (*v168 == *v84)
          {
            v85 = 0;
            while (1)
            {
              v86 = &v84[v85 + 8];
              if (v86 >= v34)
              {
                break;
              }

              v87 = *(v170 + v85);
              v88 = *v86;
              v85 += 8;
              if (v87 != v88)
              {
                v89 = v85 + (__clz(__rbit64(v88 ^ v87)) >> 3);
                goto LABEL_152;
              }
            }

            v90 = (v170 + v85);
LABEL_142:
            if (v86 < v163 && *v90 == *v86)
            {
              ++v90;
              v86 += 2;
            }

            if (v86 < v162 && *v90 == *v86)
            {
              v90 = (v90 + 2);
              ++v86;
            }

            if (v86 < v19 && *v90 == *v86)
            {
              v86 = (v86 + 1);
            }

            v89 = v86 - v84;
          }

          else
          {
            v89 = __clz(__rbit64(*v84 ^ *v168)) >> 3;
          }

LABEL_152:
          v83 += v89;
        }

        v91 = v40 - a4;
        v92 = *(a2 + 24);
        if (v40 > v167)
        {
          if (a4 <= v167)
          {
            v93 = (v92 + v167 - a4);
            *v92 = *a4;
            if ((v167 - a4) >= 17)
            {
              v100 = v92 + 1;
              v101 = a4 + 32;
              do
              {
                *v100 = *(v101 - 1);
                v102 = *v101;
                v101 += 32;
                v100[1] = v102;
                v100 += 2;
              }

              while (v100 < v93);
              a4 = v19 - 32;
            }

            else
            {
              a4 = v19 - 32;
            }

            v92 = v93;
          }

          if (a4 >= v40)
          {
            goto LABEL_184;
          }

          v103 = v40 - a4;
          if ((v40 - a4) < 8)
          {
            v105 = v92;
          }

          else if ((v92 - a4) < 0x20)
          {
            v105 = v92;
          }

          else
          {
            if (v103 < 0x20)
            {
              v104 = 0;
LABEL_178:
              v110 = v103 & 0xFFFFFFFFFFFFFFF8;
              v105 = v92 + (v103 & 0xFFFFFFFFFFFFFFF8);
              v111 = v104 - (v103 & 0xFFFFFFFFFFFFFFF8);
              v112 = &a4[v104];
              v113 = (v92 + v104);
              do
              {
                v114 = *v112;
                v112 += 8;
                *v113++ = v114;
                v111 += 8;
              }

              while (v111);
              if (v103 != v110)
              {
                a4 += v110;
                goto LABEL_183;
              }

LABEL_184:
              *(a2 + 24) += v91;
              v99 = *(a2 + 8);
              if (v91 >= 0x10000)
              {
                v116 = (v99 - *a2) >> 3;
                *(a2 + 72) = 1;
                *(a2 + 76) = v116;
              }

              goto LABEL_186;
            }

            v104 = v103 & 0xFFFFFFFFFFFFFFE0;
            v106 = a4 + 16;
            v107 = v92 + 1;
            v108 = v103 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v109 = *v106;
              *(v107 - 1) = *(v106 - 1);
              *v107 = v109;
              v106 += 32;
              v107 += 2;
              v108 -= 32;
            }

            while (v108);
            if (v103 == v104)
            {
              goto LABEL_184;
            }

            if ((v103 & 0x18) != 0)
            {
              goto LABEL_178;
            }

            a4 += v104;
            v105 = v92 + v104;
          }

          do
          {
LABEL_183:
            v115 = *a4++;
            *v105++ = v115;
          }

          while (a4 != v40);
          goto LABEL_184;
        }

        *v92 = *a4;
        v94 = *(a2 + 24);
        if (v91 > 0x10)
        {
          *(v94 + 16) = *(a4 + 1);
          if (v91 >= 33)
          {
            v95 = v94 + v91;
            v96 = (v94 + 32);
            v97 = a4 + 48;
            do
            {
              *v96 = *(v97 - 1);
              v98 = *v97;
              v97 += 32;
              v96[1] = v98;
              v96 += 2;
            }

            while (v96 < v95);
          }

          goto LABEL_184;
        }

        *(a2 + 24) = v94 + v91;
        v99 = *(a2 + 8);
LABEL_186:
        v117 = v83 + v65;
        *(v99 + 4) = v91;
        *v99 = v68;
        v118 = v83 + v65 - 3;
        if (v118 >= 0x10000)
        {
          v119 = (v99 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v119;
        }

        *(v99 + 6) = v118;
        v120 = v99 + 8;
        *(a2 + 8) = v99 + 8;
        a4 = &v40[v117];
        v18 = v161;
        if (v51 < &v40[v117])
        {
          *(v31 + 4 * v38) = v51 - v8;
        }

        if (a4 > v20)
        {
          v121 = v25;
          v27 = v69;
          goto LABEL_273;
        }

        v122 = v56 + 2;
        if (v6 > 6)
        {
          if (v6 == 7)
          {
            v123 = *(v160 + v56);
            v124 = -1079680256;
          }

          else
          {
            if (v6 != 8)
            {
              goto LABEL_199;
            }

            v123 = *(v160 + v56);
            v124 = -1213897629;
          }
        }

        else
        {
          if (v6 != 5)
          {
            if (v6 == 6)
            {
              v123 = *(v160 + v56);
              v124 = -1080360960;
              goto LABEL_202;
            }

LABEL_199:
            *(v31 + 4 * ((-1640531535 * *(v160 + v56)) >> v169)) = v122;
            v125 = a4 - 2;
            v126 = (-1640531535 * *(a4 - 2)) >> v169;
LABEL_203:
            *(v31 + 4 * v126) = v125 - v8;
            while (2)
            {
              v27 = v25;
              v25 = v69;
              v131 = (a4 - v8 - v27);
              if (v131 >= v17)
              {
                v132 = v8;
              }

              else
              {
                v132 = v30;
              }

              if (!v27 || (v131 - v17) > 0xFFFFFFFC || (v133 = v132 + v131, *(v132 + v131) != *a4))
              {
                v121 = v27;
                v27 = v69;
LABEL_273:
                v28 = &a4[v161];
                v29 = &a4[v161 + 1];
                v25 = v121;
                if (v29 >= v20)
                {
LABEL_279:
                  v156 = v165;
                  if (v27)
                  {
                    v157 = v27;
                  }

                  else
                  {
                    v157 = v164;
                  }

                  if (v27)
                  {
                    v158 = v164 == 0;
                  }

                  else
                  {
                    v158 = 1;
                  }

                  if (!v158)
                  {
                    v156 = v164;
                  }

                  if (v121)
                  {
                    v156 = v121;
                  }

                  *a3 = v157;
                  a3[1] = v156;
                  return v19 - a4;
                }

                goto LABEL_30;
              }

              if (v131 >= v17)
              {
                v134 = v19;
              }

              else
              {
                v134 = (v30 + v17);
              }

              v135 = a4 + 4;
              v136 = (v133 + 4);
              v137 = &v134[a4 - v133];
              if (v137 >= v19)
              {
                v138 = v19;
              }

              else
              {
                v138 = v137;
              }

              if (v138 - 7 <= v135)
              {
                v139 = v136;
                v141 = a4 + 4;
                goto LABEL_226;
              }

              if (*v136 == *v135)
              {
                v139 = (v132 + v131 + 12);
                v140 = a4 + 12;
                while (1)
                {
                  v141 = v140;
                  if (v140 >= v138 - 7)
                  {
                    break;
                  }

                  v143 = *v139;
                  v139 += 4;
                  v142 = v143;
                  v140 += 8;
                  if (v143 != *v141)
                  {
                    v144 = &v141[__clz(__rbit64(*v141 ^ v142)) >> 3] - v135;
                    goto LABEL_237;
                  }
                }

LABEL_226:
                if (v141 < v138 - 3 && *v139 == *v141)
                {
                  v139 += 2;
                  v141 += 4;
                }

                if (v141 < v138 - 1 && *v139 == *v141)
                {
                  ++v139;
                  v141 += 2;
                }

                if (v141 < v138 && *v139 == *v141)
                {
                  ++v141;
                }

                v144 = v141 - v135;
              }

              else
              {
                v144 = __clz(__rbit64(*v135 ^ *v136)) >> 3;
              }

LABEL_237:
              if ((v136 + v144) != v134)
              {
                if (a4 <= v167)
                {
                  goto LABEL_239;
                }

                goto LABEL_240;
              }

              v146 = &v135[v144];
              if (v34 <= v146)
              {
                v153 = (v8 + v17);
                v154 = v146;
                goto LABEL_260;
              }

              if (*v168 == *v146)
              {
                v147 = 0;
                v148 = &a4[v144];
                while (1)
                {
                  v149 = &v148[v147 + 12];
                  if (v149 >= v34)
                  {
                    break;
                  }

                  v150 = *(v170 + v147);
                  v151 = *v149;
                  v147 += 8;
                  if (v150 != v151)
                  {
                    v152 = &v148[v147 + 4 + (__clz(__rbit64(v151 ^ v150)) >> 3)] - v146;
                    goto LABEL_270;
                  }
                }

                v153 = (v170 + v147);
                v154 = &a4[v144 + 12 + v147];
LABEL_260:
                if (v154 < v163 && *v153 == *v154)
                {
                  ++v153;
                  v154 += 4;
                }

                if (v154 < v162 && *v153 == *v154)
                {
                  v153 = (v153 + 2);
                  v154 += 2;
                }

                if (v154 < v19 && *v153 == *v154)
                {
                  ++v154;
                }

                v152 = v154 - v146;
              }

              else
              {
                v152 = __clz(__rbit64(*v146 ^ *v168)) >> 3;
              }

LABEL_270:
              v144 += v152;
              if (a4 <= v167)
              {
LABEL_239:
                **(a2 + 24) = *a4;
                v120 = *(a2 + 8);
              }

LABEL_240:
              *(v120 + 4) = 0;
              *v120 = 1;
              if (v144 + 1 >= 0x10000)
              {
                v145 = (v120 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v145;
              }

              *(v120 + 6) = v144 + 1;
              v120 += 8;
              *(a2 + 8) = v120;
              if (v6 > 6)
              {
                if (v6 == 7)
                {
                  v128 = *a4;
                  v129 = -1079680256;
                  break;
                }

                if (v6 != 8)
                {
                  goto LABEL_255;
                }

                v128 = *a4;
                v129 = -1213897629;
              }

              else
              {
                if (v6 != 5)
                {
                  if (v6 == 6)
                  {
                    v128 = *a4;
                    v129 = -1080360960;
                    break;
                  }

LABEL_255:
                  v130 = (-1640531535 * *a4) >> v169;
LABEL_206:
                  *(v31 + 4 * v130) = a4 - v8;
                  a4 += v144 + 4;
                  v69 = v27;
                  v121 = v25;
                  if (a4 > v20)
                  {
                    goto LABEL_273;
                  }

                  continue;
                }

                v128 = *a4;
                v129 = -1157627904;
              }

              break;
            }

            v130 = (v128 * (v129 | 0xCF1BBCDC00000000)) >> v33;
            goto LABEL_206;
          }

          v123 = *(v160 + v56);
          v124 = -1157627904;
        }

LABEL_202:
        v127 = v124 | 0xCF1BBCDC00000000;
        *(v31 + 4 * ((v123 * v127) >> v33)) = v122;
        v125 = a4 - 2;
        v126 = (*(a4 - 2) * v127) >> v33;
        goto LABEL_203;
      }

      v42 = *(v31 + 4 * v37);
      if (v42 >= v17)
      {
        v43 = v8;
      }

      else
      {
        v43 = v30;
      }

      if (v6 > 6)
      {
        if (v6 == 7)
        {
          v60 = *_X16;
          v61 = -1079680256;
          goto LABEL_86;
        }

        if (v6 == 8)
        {
          v60 = *_X16;
          v61 = -1213897629;
          goto LABEL_86;
        }
      }

      else
      {
        if (v6 == 5)
        {
          v60 = *_X16;
          v61 = -1157627904;
          goto LABEL_86;
        }

        if (v6 == 6)
        {
          v60 = *_X16;
          v61 = -1080360960;
LABEL_86:
          v38 = (v60 * (v61 | 0xCF1BBCDC00000000)) >> v33;
          goto LABEL_87;
        }
      }

      v38 = (-1640531535 * *_X16) >> v169;
LABEL_87:
      v28 = &v51[v18];
      if (&v51[v18] >= v41)
      {
        v45 = v18 + 1;
        __asm
        {
          PRFM            #0, [X16,#0x40]
          PRFM            #0, [X16,#0x80]
        }

        v41 += 128;
      }

      else
      {
        v45 = v18;
      }

      v29 = &_X16[v18];
      v18 = v45;
      v40 = _X16;
      v44 = v51;
      if (v29 >= v20)
      {
        goto LABEL_278;
      }
    }
  }

  return ZSTD_compressBlock_fast(a1, a2, a3, a4, a5);
}

void nw_webtransport_connection_state_set_max_sessions(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 24) = a2;
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_webtransport_connection_state_set_max_sessions";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection_state", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v12 = "nw_webtransport_connection_state_set_max_sessions";
      v6 = "%{public}s called with null connection_state";
      goto LABEL_17;
    }

    if (v9 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v12 = "nw_webtransport_connection_state_set_max_sessions";
      v6 = "%{public}s called with null connection_state, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v12 = "nw_webtransport_connection_state_set_max_sessions";
        v13 = 2082;
        v14 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null connection_state, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v8)
    {
      *buf = 136446210;
      v12 = "nw_webtransport_connection_state_set_max_sessions";
      v6 = "%{public}s called with null connection_state, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }
}

uint64_t nw_webtransport_connection_state_get_max_sessions(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 24);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_webtransport_connection_state_get_max_sessions";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection_state", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_webtransport_connection_state_get_max_sessions";
        v6 = "%{public}s called with null connection_state";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v9 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v12 = "nw_webtransport_connection_state_get_max_sessions";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null connection_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v8)
      {
        *buf = 136446210;
        v12 = "nw_webtransport_connection_state_get_max_sessions";
        v6 = "%{public}s called with null connection_state, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_webtransport_connection_state_get_max_sessions";
        v6 = "%{public}s called with null connection_state, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

double __nw_protocol_webtransport_identifier_block_invoke()
{
  dword_1EA841FDC = 0;
  unk_1EA841FCD = 0u;
  strcpy(nw_protocol_webtransport_identifier::protocol_identifier, "webtransport");
  *&result = 0x200000004;
  qword_1EA841FE0 = 0x200000004;
  return result;
}

void *nw_protocol_webtransport_create(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = malloc_type_calloc(1uLL, 0x248uLL, 0xBB551947uLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, 0x248uLL);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446722;
    *&buf[4] = "nw_protocol_webtransport_create";
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    v25 = 584;
    v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
    result = __nwlog_should_abort(v11);
    if (result || ((free(v11), bzero(0, 0x248uLL), MEMORY[0x170] = 0, MEMORY[0x178] &= ~1u, MEMORY[0x180] = 0, MEMORY[0x188] &= ~1u, MEMORY[0x190] = 0, MEMORY[0x198] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v13 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v14 = 2) : (v14 = 3), *buf = 136446210, *&buf[4] = "nw_protocol_webtransport_create", LODWORD(v22) = 12, v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s strict_placement_new(nw_webtransport_session, strict_calloc(1, sizeof(nw_webtransport_session)),) failed", buf, v22), result = __nwlog_should_abort(v15), result))
    {
      __break(1u);
      return result;
    }

    free(v15);
  }

  v8[2] = a1;
  if (nw_protocol_webtransport_session_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_webtransport_session_callbacks(void)::onceToken, &__block_literal_global_18_36412);
  }

  v8[3] = &nw_protocol_webtransport_session_callbacks(void)::protocol_callbacks;
  v8[5] = v8;
  if (nw_protocol_webtransport_session_get_listen_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_webtransport_session_get_listen_callbacks(void)::onceToken, &__block_literal_global_67_36413);
  }

  v8[8] = &nw_protocol_webtransport_session_get_listen_callbacks(void)::listen_protocol_callbacks;
  v8[15] = 0;
  v8[16] = v8 + 15;
  v8[17] = 0;
  v8[18] = v8 + 17;
  v8[19] = 0;
  *(v8 + 160) = 0;
  v8[11] = v8;
  v8[12] = -1;
  v8[13] = -1;
  v8[14] = -1;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v16 = *(v8 + 392);
  if (v16)
  {
    v17 = v8[48];
    if (v17)
    {
      os_release(v17);
      v16 = *(v8 + 392);
    }
  }

  v8[48] = a3;
  *(v8 + 392) = v16 | 1;
  v8[59] = 0;
  *(v8 + 120) = 2;
  v8[21] = -1;
  v8[22] = -1;
  v8[23] = -1;
  *(v8 + 580) = *(v8 + 580) & 0xFE | nw_parameters_get_server_mode(a4);
  v8[24] = 0;
  v8[25] = 0;
  v8[42] = 0;
  v8[43] = v8 + 42;
  *(v8 + 122) = 0;
  if (nw_parameters_get_logging_disabled(a4))
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  *(v8 + 580) = *(v8 + 580) & 0xFD | v18;
  v8[52] = nw_parameters_copy_context(a4);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v25 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __nw_protocol_webtransport_create_block_invoke;
  aBlock[3] = &unk_1E6A31848;
  aBlock[4] = buf;
  v8[58] = _Block_copy(aBlock);
  _Block_object_dispose(buf, 8);
  if ((*(v8 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(v8 + 123);
      v21 = *(v8 + 580) & 1;
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_create";
      *&buf[12] = 2082;
      *&buf[14] = v8 + 62;
      *&buf[22] = 2080;
      v25 = " ";
      v26 = 1024;
      v27 = v20;
      v28 = 1024;
      v29 = v21;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Created webtransport, server mode: %d", buf, 0x2Cu);
    }
  }

  return v8;
}

uint64_t __nw_protocol_webtransport_create_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void nw_protocol_webtransport_session_listen_protocol_disconnected(nw_listen_protocol *a1, nw_protocol *a2, int a3)
{
  v223 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v93 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s called with null listener", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v209[0]) = 0;
    if (!__nwlog_fault(v5, type, v209))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null listener";
    }

    else if (LOBYTE(v209[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type[0];
      v100 = os_log_type_enabled(v6, type[0]);
      if (backtrace_string)
      {
        if (v100)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (!v100)
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null listener, backtrace limit exceeded";
    }

    goto LABEL_27;
  }

  handle = a1->handle;
  if (!handle)
  {
    v94 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v209[0]) = 0;
    if (!__nwlog_fault(v5, type, v209))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null webtransport_session";
      goto LABEL_27;
    }

    if (LOBYTE(v209[0]) != 1)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_27;
    }

    v101 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type[0];
    v102 = os_log_type_enabled(v6, type[0]);
    if (!v101)
    {
      if (!v102)
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null webtransport_session, no backtrace";
      goto LABEL_27;
    }

    if (v102)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = v101;
      v103 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
LABEL_173:
      _os_log_impl(&dword_181A37000, v6, v7, v103, buf, 0x16u);
    }

LABEL_174:
    free(v101);
    if (!v5)
    {
      return;
    }

    goto LABEL_30;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v95 = a2;
    v96 = __nwlog_obj();
    v97 = os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG);
    a2 = v95;
    if (v97)
    {
      v98 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v217 = " ";
      *v218 = 1024;
      *&v218[2] = v98;
      _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> listen protocol is disconnected", buf, 0x26u);
      a2 = v95;
    }
  }

  if (*(handle + 54) != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v209[0]) = 0;
    if (!__nwlog_fault(v5, type, v209))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler";
      goto LABEL_27;
    }

    if (LOBYTE(v209[0]) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler, backtrace limit exceeded";
      goto LABEL_27;
    }

    v14 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v16 = type[0];
    v17 = os_log_type_enabled(gLogObj, type[0]);
    if (v14)
    {
      if (v17)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
        *&buf[12] = 2082;
        *&buf[14] = v14;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v14);
      if (!v5)
      {
        return;
      }

LABEL_30:
      free(v5);
      return;
    }

    if (v17)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler, no backtrace";
      v23 = v15;
      v24 = v16;
      goto LABEL_28;
    }

LABEL_29:
    if (!v5)
    {
      return;
    }

    goto LABEL_30;
  }

  if (*(handle + 119) == 5)
  {
    if ((handle[580] & 2) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v10 = *(handle + 123);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = handle + 496;
    *&buf[22] = 2080;
    v217 = " ";
    *v218 = 1024;
    *&v218[2] = v10;
    v11 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  if (a3)
  {
    if ((handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v19 = *(handle + 123);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v217 = " ";
        *v218 = 1024;
        *&v218[2] = v19;
        *&v218[6] = 1024;
        *&v218[8] = a3;
        v20 = "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d";
        v21 = v18;
        v22 = 44;
LABEL_35:
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
      }
    }
  }

  else if ((handle[580] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v26 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v217 = " ";
      *v218 = 1024;
      *&v218[2] = v26;
      v20 = "%{public}s %{public}s%s<i%u> Closing webtransport session without error";
      v21 = v25;
      v22 = 38;
      goto LABEL_35;
    }
  }

  v27 = *(handle + 119);
  *(handle + 119) = 5;
  v28 = *(handle + 24);
  if (v28)
  {
    v194[0] = MEMORY[0x1E69E9820];
    v194[1] = 0x40000000;
    v194[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
    v194[3] = &__block_descriptor_tmp_24_36439;
    v195 = a3;
    nw_hash_table_apply(v28, v194);
  }

  v29 = *(handle + 56);
  if (v29)
  {
    v30 = *(v29 + 88);
    if (a3)
    {
      nw_protocol_error(*(v29 + 48), *(handle + 56));
    }

    nw_protocol_disconnect(v29, v30);
  }

  v31 = *(handle + 42);
  if (v31)
  {
    if (a3)
    {
      do
      {
        v32 = *(v31 + 112);
        v33 = *(v31 + 88);
        nw_protocol_error(*(v31 + 48), v31);
        nw_protocol_disconnect(v31, v33);
        v31 = v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v34 = *(v31 + 112);
        nw_protocol_disconnect(v31, *(v31 + 88));
        v31 = v34;
      }

      while (v34);
    }
  }

  v35 = *(handle + 55);
  if (v35)
  {
    v36 = *(v35 + 88);
    if (a3)
    {
      nw_protocol_error(*(v35 + 48), *(handle + 55));
    }

    nw_protocol_disconnect(v35, v36);
  }

  if (*(handle + 4))
  {
    nw_protocol_remove_instance(handle);
    nw_protocol_disconnect(*(handle + 4), handle);
  }

  v37 = *(handle + 50);
  if (!v37)
  {
    return;
  }

  webtransport_state = nw_http_connection_metadata_get_webtransport_state(v37);
  if (!webtransport_state)
  {
    return;
  }

  v39 = webtransport_state;
  if (v27 != 4 && v27 != 1)
  {
    return;
  }

  v40 = *(webtransport_state + 16);
  *(webtransport_state + 16) = v40 - 1;
  if (!v40)
  {
    v41 = __nwlog_obj();
    v42 = v39[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v217 = 1;
    *v218 = 2048;
    *&v218[2] = v42;
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v209[0]) = 0;
    if (__nwlog_fault(v43, type, v209))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          v46 = v39[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v217 = 1;
          *v218 = 2048;
          *&v218[2] = v46;
          v47 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_73:
          _os_log_impl(&dword_181A37000, v44, v45, v47, buf, 0x2Au);
        }
      }

      else if (LOBYTE(v209[0]) == 1)
      {
        v48 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v45 = type[0];
        v49 = os_log_type_enabled(v44, type[0]);
        if (v48)
        {
          if (v49)
          {
            v50 = v39[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v217 = 1;
            *v218 = 2048;
            *&v218[2] = v50;
            *&v218[10] = 2082;
            *&v218[12] = v48;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v48);
          goto LABEL_74;
        }

        if (v49)
        {
          v52 = v39[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v217 = 1;
          *v218 = 2048;
          *&v218[2] = v52;
          v47 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          v51 = v39[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v217 = 1;
          *v218 = 2048;
          *&v218[2] = v51;
          v47 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v43)
    {
      free(v43);
    }

    v39[2] = 0;
  }

  if (handle[580])
  {
    return;
  }

  v53 = *v39;
  if (!*v39)
  {
    return;
  }

  v54 = *(v53 + 352);
  v55 = *(v53 + 360);
  v56 = (v54 + 360);
  if (!v54)
  {
    v56 = v39 + 1;
  }

  *v56 = v55;
  *v55 = v54;
  *(v53 + 352) = 0;
  *(v53 + 360) = 0;
  v57 = *(v53 + 32);
  if (v57 && *(v53 + 480) == 2)
  {
    v58 = v57[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v157 = v57[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v58 = v157;
    }

    if (nw_protocols_are_equal(v58, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      goto LABEL_92;
    }

    v59 = v57[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v159 = v57[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v59 = v159;
    }

    if (nw_protocols_are_equal(v59, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_92;
    }

    v60 = v57[2];
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      v160 = v57[2];
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
      v60 = v160;
    }

    if (nw_protocols_are_equal(v60, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
LABEL_92:
      v61 = nw_protocol_copy_info(v57);
      v62 = v61;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_27_36446;
      aBlock[4] = v53;
      if (v61)
      {
        _nw_array_apply(v61, aBlock);
        v63 = *(v53 + 400);
        if (!v63)
        {
          os_release(v62);
          return;
        }
      }

      else
      {
        v63 = *(v53 + 400);
        if (!v63)
        {
          return;
        }
      }

      version = nw_http_connection_metadata_get_version(v63);
      v65 = version;
      if (version == 4)
      {
        v66 = 0;
      }

      else
      {
        if (version != 5)
        {
LABEL_101:
          v67 = v57[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v158 = v57[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v67 = v158;
          }

          v68 = nw_protocols_are_equal(v67, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v69 = *(v53 + 580);
          if (v68)
          {
            v69 |= 0x40u;
            *(v53 + 580) = v69;
          }

          if ((v69 & 2) == 0)
          {
            v70 = __nwlog_obj();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
            {
              v71 = *(v53 + 492);
              if (v65 == 4)
              {
                v72 = 2;
              }

              else
              {
                v72 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v53 + 496;
              *&buf[22] = 2080;
              v217 = " ";
              *v218 = 1024;
              *&v218[2] = v71;
              *&v218[6] = 1024;
              *&v218[8] = v72;
              _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v62)
          {
            os_release(v62);
          }

          goto LABEL_113;
        }

        v66 = 1;
      }

      *(v53 + 480) = v66;
      goto LABEL_101;
    }
  }

LABEL_113:
  v73 = *(v53 + 480);
  if (v73 > 1)
  {
    if ((*(v53 + 580) & 2) != 0)
    {
      return;
    }

    v74 = __nwlog_obj();
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v75 = *(v53 + 492);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_establish";
    *&buf[12] = 2082;
    *&buf[14] = v53 + 496;
    *&buf[22] = 2080;
    v217 = " ";
    *v218 = 1024;
    *&v218[2] = v75;
    v11 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
    v12 = v74;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_14:
    _os_log_impl(&dword_181A37000, v12, v13, v11, buf, 0x26u);
    return;
  }

  if ((*(v53 + 580) & 1) == 0)
  {
    if (!*(v53 + 476))
    {
      nw_webtransport_http_send_connect(v53);
    }

    return;
  }

  v76 = *(v53 + 476);
  if (v73 != 1)
  {
    if (v76)
    {
      return;
    }

    *(v53 + 476) = 3;
    v85 = *(v53 + 48);
    if (v85)
    {
      v86 = *(v85 + 40);
      if (v86)
      {
        *(v53 + 440) = v86;
        return;
      }

      v165 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
      LODWORD(v193) = 12;
      v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v165, 16, "%{public}s called with null webtransport_stream", buf, v193);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v209[0]) = 0;
      if (!__nwlog_fault(v5, type, v209))
      {
        goto LABEL_29;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type[0];
        if (!os_log_type_enabled(v6, type[0]))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null webtransport_stream";
      }

      else if (LOBYTE(v209[0]) == 1)
      {
        v101 = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type[0];
        v175 = os_log_type_enabled(v6, type[0]);
        if (v101)
        {
          if (v175)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v101;
            v103 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
            goto LABEL_173;
          }

          goto LABEL_174;
        }

        if (!v175)
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null webtransport_stream, no backtrace";
      }

      else
      {
        v6 = __nwlog_obj();
        v7 = type[0];
        if (!os_log_type_enabled(v6, type[0]))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      }
    }

    else
    {
      v164 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
      LODWORD(v193) = 12;
      v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v164, 16, "%{public}s called with null input_protocol", buf, v193);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v209[0]) = 0;
      if (!__nwlog_fault(v5, type, v209))
      {
        goto LABEL_29;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type[0];
        if (!os_log_type_enabled(v6, type[0]))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null input_protocol";
      }

      else if (LOBYTE(v209[0]) == 1)
      {
        v101 = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type[0];
        v174 = os_log_type_enabled(v6, type[0]);
        if (v101)
        {
          if (v174)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v101;
            v103 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
            goto LABEL_173;
          }

          goto LABEL_174;
        }

        if (!v174)
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null input_protocol, no backtrace";
      }

      else
      {
        v6 = __nwlog_obj();
        v7 = type[0];
        if (!os_log_type_enabled(v6, type[0]))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      }
    }

    goto LABEL_27;
  }

  if (v76 != 3)
  {
    if (v76)
    {
      return;
    }

    v77 = *(v53 + 48);
    if (v77)
    {
      v78 = *(v77 + 40);
      if (v78)
      {
        nw_protocol_replace_input_handler(*(v53 + 32), v53, *(v77 + 40));
        *(v53 + 440) = v78;
        nw_protocol_set_output_handler(v53, 0);
        nw_protocol_set_input_handler(v53, 0);
        if (*(v53 + 580))
        {
          v79 = *(*(v53 + 440) + 32);
          v80 = *(v79 + 16);
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v179 = *(v79 + 16);
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v80 = v179;
          }

          if (nw_protocols_are_equal(v80, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
            goto LABEL_132;
          }

          v81 = *(v79 + 16);
          if (nw_protocol_http3_identifier::onceToken != -1)
          {
            v182 = *(v79 + 16);
            dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
            v81 = v182;
          }

          if (nw_protocols_are_equal(v81, &nw_protocol_http3_identifier::http3_protocol_identifier))
          {
LABEL_132:
            v82 = *(v53 + 368);
            if (v82)
            {
              v83 = nw_parameters_copy_protocol_options_legacy(v82, v79);
              if (v83)
              {
                if ((*(v78 + 276) & 0x10) == 0 && gLogDatapath == 1)
                {
                  v183 = v83;
                  v184 = __nwlog_obj();
                  v185 = os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG);
                  v83 = v183;
                  if (v185)
                  {
                    v186 = *(v78 + 88);
                    if (v186)
                    {
                      v187 = *(v186 + 492);
                    }

                    else
                    {
                      v187 = -1;
                    }

                    v192 = *(v78 + 64);
                    *buf = 136447490;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v78 + 192;
                    *&buf[22] = 2080;
                    v217 = " ";
                    *v218 = 1024;
                    *&v218[2] = v187;
                    *&v218[6] = 2048;
                    *&v218[8] = v192;
                    *&v218[16] = 2048;
                    *&v218[18] = v183;
                    _os_log_impl(&dword_181A37000, v184, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                    v83 = v183;
                  }
                }

                v84 = v83;
                nw_http3_set_stream_mode(v83, 0);
                os_release(v84);
              }

              else
              {
                if ((*(v53 + 580) & 2) == 0 && gLogDatapath == 1)
                {
                  v190 = __nwlog_obj();
                  if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
                  {
                    v191 = *(v53 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v53 + 496;
                    *&buf[22] = 2080;
                    v217 = " ";
                    *v218 = 1024;
                    *&v218[2] = v191;
                    _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                  }
                }

                v107 = *(v78 + 88);
                nw_protocol_error(*(v78 + 48), v78);
                nw_protocol_disconnect(v78, v107);
              }
            }
          }
        }

        goto LABEL_192;
      }

      v172 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
      LODWORD(v193) = 12;
      v167 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v172, 16, "%{public}s called with null webtransport_stream", buf, v193);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v209[0]) = 0;
      if (__nwlog_fault(v167, type, v209))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v168 = __nwlog_obj();
          v169 = type[0];
          if (!os_log_type_enabled(v168, type[0]))
          {
            goto LABEL_387;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v170 = "%{public}s called with null webtransport_stream";
          goto LABEL_386;
        }

        if (LOBYTE(v209[0]) != 1)
        {
          v168 = __nwlog_obj();
          v169 = type[0];
          if (!os_log_type_enabled(v168, type[0]))
          {
            goto LABEL_387;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v170 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
          goto LABEL_386;
        }

        v180 = __nw_create_backtrace_string();
        v168 = __nwlog_obj();
        v169 = type[0];
        v181 = os_log_type_enabled(v168, type[0]);
        if (v180)
        {
          if (v181)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v180;
            _os_log_impl(&dword_181A37000, v168, v169, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v180);
          if (!v167)
          {
            goto LABEL_192;
          }

          goto LABEL_388;
        }

        if (v181)
        {
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v170 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_386:
          _os_log_impl(&dword_181A37000, v168, v169, v170, buf, 0xCu);
        }
      }
    }

    else
    {
      v166 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
      LODWORD(v193) = 12;
      v167 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v166, 16, "%{public}s called with null input_protocol", buf, v193);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v209[0]) = 0;
      if (!__nwlog_fault(v167, type, v209))
      {
        goto LABEL_387;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v168 = __nwlog_obj();
        v169 = type[0];
        if (!os_log_type_enabled(v168, type[0]))
        {
          goto LABEL_387;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
        v170 = "%{public}s called with null input_protocol";
        goto LABEL_386;
      }

      if (LOBYTE(v209[0]) != 1)
      {
        v168 = __nwlog_obj();
        v169 = type[0];
        if (!os_log_type_enabled(v168, type[0]))
        {
          goto LABEL_387;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
        v170 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_386;
      }

      v176 = __nw_create_backtrace_string();
      v168 = __nwlog_obj();
      v169 = type[0];
      v177 = os_log_type_enabled(v168, type[0]);
      if (!v176)
      {
        if (!v177)
        {
          goto LABEL_387;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
        v170 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_386;
      }

      if (v177)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176;
        _os_log_impl(&dword_181A37000, v168, v169, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v176);
    }

LABEL_387:
    if (!v167)
    {
LABEL_192:
      *(v53 + 476) = 2;
      return;
    }

LABEL_388:
    free(v167);
    goto LABEL_192;
  }

  v87 = *(v53 + 32);
  if (!v87)
  {
    v171 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_http_get_input";
    LODWORD(v193) = 12;
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v171, 16, "%{public}s called with null output_handler", buf, v193);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v209[0]) = 0;
    if (!__nwlog_fault(v5, type, v209))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s called with null output_handler";
    }

    else if (LOBYTE(v209[0]) == 1)
    {
      v101 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type[0];
      v178 = os_log_type_enabled(v6, type[0]);
      if (v101)
      {
        if (v178)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v101;
          v103 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
          goto LABEL_173;
        }

        goto LABEL_174;
      }

      if (!v178)
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s called with null output_handler, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s called with null output_handler, backtrace limit exceeded";
    }

    goto LABEL_27;
  }

  v88 = v87[3];
  if (!v88 || !*(v88 + 80))
  {
    if ((*(v53 + 580) & 2) == 0)
    {
      v161 = __nwlog_obj();
      if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
      {
        v162 = *(v53 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        *&buf[12] = 2082;
        *&buf[14] = v53 + 496;
        *&buf[22] = 2080;
        v217 = " ";
        *v218 = 1024;
        *&v218[2] = v162;
        _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
      }
    }

    v163 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_http_get_input";
    LODWORD(v193) = 12;
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v163, 16, "%{public}s output handler has no get_input_frames callback", buf, v193);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v209[0]) = 0;
    if (!__nwlog_fault(v5, type, v209))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s output handler has no get_input_frames callback";
      goto LABEL_27;
    }

    if (LOBYTE(v209[0]) == 1)
    {
      v101 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type[0];
      v173 = os_log_type_enabled(v6, type[0]);
      if (v101)
      {
        if (v173)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v101;
          v103 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
          goto LABEL_173;
        }

        goto LABEL_174;
      }

      if (!v173)
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s output handler has no get_input_frames callback, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
    }

LABEL_27:
    v23 = v6;
    v24 = v7;
LABEL_28:
    _os_log_impl(&dword_181A37000, v23, v24, v8, buf, 0xCu);
    goto LABEL_29;
  }

  for (i = 3; (i | 2) == 3; i = *(v53 + 476))
  {
    if (!nw_protocol_get_input_frames(v87, v53, 0, 0, 0xFFFFFFFFLL, v53 + 120))
    {
      return;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v217 = __Block_byref_object_copy__36471;
    *v218 = __Block_byref_object_dispose__36472;
    *&v218[8] = nw_protocol_copy_http_definition();
    v218[16] |= 1u;
    *type = MEMORY[0x1E69E9820];
    v198 = 0x40000000;
    v199 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
    v200 = &unk_1E6A31940;
    v201 = buf;
    v202 = v53;
    v203 = v53 + 120;
    v90 = *(v53 + 120);
    do
    {
      if (!v90)
      {
        break;
      }

      v91 = *(v90 + 32);
      v92 = (v199)(type);
      v90 = v91;
    }

    while ((v92 & 1) != 0);
    _Block_object_dispose(buf, 8);
    if ((v218[16] & 1) != 0 && *&v218[8])
    {
      os_release(*&v218[8]);
    }
  }

  v104 = *(v53 + 480);
  if (v104 == 1)
  {
    nw_webtransport_http3_handle_input(v53);
    v106 = *(v53 + 448);
    if (v106 && *(v106 + 72))
    {
      nw_protocol_input_available(*(v106 + 48), v106);
    }
  }

  else if (!v104)
  {
    if ((*(v53 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v188 = __nwlog_obj();
      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
      {
        v189 = *(v53 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_http2_handle_capsules";
        *&buf[12] = 2082;
        *&buf[14] = v53 + 496;
        *&buf[22] = 2080;
        v217 = " ";
        *v218 = 1024;
        *&v218[2] = v189;
        _os_log_impl(&dword_181A37000, v188, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (*(v53 + 476) == 4)
    {
      v105 = (v53 + 96);
      while (1)
      {
        capsule = nw_http_capsule_framer_read_capsule((v53 + 96), v53);
        if (!capsule && !*(v53 + 136))
        {
          return;
        }

        if (*(v53 + 456))
        {
          goto LABEL_204;
        }

        v113 = *v105;
        if (*v105 == -1)
        {
LABEL_261:
          v127 = __nwlog_obj();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2048;
            *&buf[14] = v113;
            _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
          }

          goto LABEL_204;
        }

        v114 = *(v53 + 104) != -1 && *(v53 + 112) == 0;
        if (v113 <= 16770303)
        {
          if ((v113 - 16770048) < 6 || (v113 + 1) <= 4 && v113)
          {
            goto LABEL_261;
          }
        }

        else if ((v113 - 420171065) <= 9 && ((1 << (v113 - 57)) & 0x2EF) != 0)
        {
          v215 = -1;
          if (nw_http_capsule_framer_parse_vle_value((v53 + 96), v53, &v215))
          {
            stream = nw_webtransport_session_get_stream(v53, v215);
            if (stream)
            {
              goto LABEL_255;
            }

            if ((v113 - 420171067) > 1)
            {
              goto LABEL_286;
            }

            v134 = v215;
            v135 = *(v53 + 580);
            if (v215 >> 60 || ((v215 ^ v135) & 1) == 0)
            {
              if ((v135 & 2) == 0)
              {
                v144 = __nwlog_obj();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  v145 = *(v53 + 492);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v53 + 496;
                  *&buf[22] = 2080;
                  v217 = " ";
                  *v218 = 1024;
                  *&v218[2] = v145;
                  v146 = v144;
                  v147 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                  goto LABEL_285;
                }
              }

LABEL_286:
              if ((*(v53 + 580) & 2) == 0)
              {
                v148 = __nwlog_obj();
                if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                {
                  v149 = *(v53 + 492);
                  *buf = 136447490;
                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                  *&buf[12] = 2082;
                  *&buf[14] = v53 + 496;
                  *&buf[22] = 2080;
                  v217 = " ";
                  *v218 = 1024;
                  *&v218[2] = v149;
                  *&v218[6] = 2048;
                  *&v218[8] = v215;
                  *&v218[16] = 2048;
                  *&v218[18] = v113;
                  _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                }
              }

              goto LABEL_204;
            }

            v136 = *(v53 + 424);
            if (!v136 || (v137 = *v136) == 0 || !*v137)
            {
              if ((v135 & 2) == 0)
              {
                v150 = __nwlog_obj();
                if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                {
                  v151 = *(v53 + 492);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v53 + 496;
                  *&buf[22] = 2080;
                  v217 = " ";
                  *v218 = 1024;
                  *&v218[2] = v151;
                  v146 = v150;
                  v147 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_285:
                  _os_log_impl(&dword_181A37000, v146, OS_LOG_TYPE_ERROR, v147, buf, 0x26u);
                }
              }

              goto LABEL_286;
            }

            v138 = _nw_parameters_copy();
            *(v53 + 580) |= 0x20u;
            *(v53 + 176) = v134;
            v139 = (***(v53 + 424))(*(v53 + 424), *(v53 + 384), v138);
            *(v53 + 176) = -1;
            *(v53 + 580) &= ~0x20u;
            if (v139)
            {
              v140 = nw_webtransport_session_get_stream(v53, v134);
            }

            else
            {
              v140 = 0;
            }

            if (v138)
            {
              os_release(v138);
            }

            if (!v140)
            {
              goto LABEL_286;
            }

            stream = v140;
            if (*(v140 + 46) != 3)
            {
LABEL_255:
              *(v53 + 456) = stream;
              goto LABEL_204;
            }

            if ((*(v53 + 580) & 2) != 0)
            {
              goto LABEL_204;
            }

            v152 = __nwlog_obj();
            if (!os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_204;
            }

            v153 = *(v53 + 492);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2082;
            *&buf[14] = v53 + 496;
            *&buf[22] = 2080;
            v217 = " ";
            *v218 = 1024;
            *&v218[2] = v153;
            *&v218[6] = 2048;
            *&v218[8] = v215;
            v130 = v152;
            v131 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
          }

          else
          {
            if (!v114)
            {
              goto LABEL_204;
            }

            if ((*(v53 + 580) & 2) != 0)
            {
              goto LABEL_204;
            }

            v128 = __nwlog_obj();
            if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_204;
            }

            v129 = *(v53 + 492);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2082;
            *&buf[14] = v53 + 496;
            *&buf[22] = 2080;
            v217 = " ";
            *v218 = 1024;
            *&v218[2] = v129;
            *&v218[6] = 2048;
            *&v218[8] = v113;
            v130 = v128;
            v131 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
          }

          _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, v131, buf, 0x30u);
        }

        else if ((v113 - 16770304) < 4)
        {
          goto LABEL_261;
        }

LABEL_204:
        v112 = *(v53 + 96);
        if ((*(v53 + 580) & 2) == 0 && gLogDatapath == 1)
        {
          v154 = __nwlog_obj();
          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
          {
            v155 = *(v53 + 492);
            v156 = *(v53 + 104);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_http2_handle_capsules";
            *&buf[12] = 2082;
            *&buf[14] = v53 + 496;
            *&buf[22] = 2080;
            v217 = " ";
            *v218 = 1024;
            *&v218[2] = v155;
            *&v218[6] = 2048;
            *&v218[8] = v112;
            *&v218[16] = 2048;
            *&v218[18] = v156;
            _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
          }
        }

        if (v112 > 16770303)
        {
          if (v112 <= 420171064)
          {
            if ((v112 - 16770304) < 4)
            {
              goto LABEL_223;
            }

            if (v112 == 420171064)
            {
              goto LABEL_222;
            }

            goto LABEL_225;
          }

          if ((v112 - 420171065) >= 2)
          {
            if ((v112 - 420171067) < 2)
            {
              v115 = *(v53 + 456);
              v117 = v112 == 420171068 && capsule;
              v209[0] = MEMORY[0x1E69E9820];
              v209[1] = 0x40000000;
              v210 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
              v211 = &__block_descriptor_tmp_34_36485;
              v214 = v117;
              v212 = v53 + 96;
              v213 = v115;
              v118 = *(v53 + 136);
              do
              {
                if (!v118)
                {
                  break;
                }

                v119 = *(v118 + 32);
                v120 = (v210)(v209);
                v118 = v119;
              }

              while ((v120 & 1) != 0);
              if (!v117)
              {
                goto LABEL_281;
              }

              nw_protocol_input_finished(v115, v53);
            }

            goto LABEL_225;
          }

          if (capsule)
          {
            v121 = *(v53 + 456);
            v215 = -1;
            if (nw_http_capsule_framer_parse_vle_value((v53 + 96), v53, &v215))
            {
              if (!v121 || (*(v121 + 276) & 0x10) == 0)
              {
                v122 = __nwlog_obj();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  if (v121)
                  {
                    v123 = (v121 + 192);
                  }

                  else
                  {
                    v123 = "";
                  }

                  v124 = " ";
                  if (!v121)
                  {
                    v124 = "";
                  }

                  v125 = *(v121 + 88);
                  if (v125)
                  {
                    v108 = *(v125 + 492);
                  }

                  else
                  {
                    v108 = -1;
                  }

                  v109 = *(v121 + 64);
                  *buf = 136448002;
                  *&buf[4] = "nw_webtransport_http2_handle_capsules";
                  *&buf[12] = 2082;
                  *&buf[14] = v123;
                  *&buf[22] = 2080;
                  v217 = v124;
                  *v218 = 1024;
                  *&v218[2] = v108;
                  *&v218[6] = 2048;
                  *&v218[8] = v109;
                  *&v218[16] = 2048;
                  *&v218[18] = v112;
                  v219 = 2048;
                  v220 = v109;
                  v221 = 2048;
                  v222 = v215;
                  _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                }
              }

              nw_protocol_webtransport_stream_error(v121, v53);
              nw_protocol_webtransport_stream_disconnect(v121, v110);
            }

            else if ((*(v53 + 580) & 2) == 0)
            {
              v132 = __nwlog_obj();
              if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
              {
                v133 = *(v53 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = v53 + 496;
                *&buf[22] = 2080;
                v217 = " ";
                *v218 = 1024;
                *&v218[2] = v133;
                *&v218[6] = 2048;
                *&v218[8] = v112;
                _os_log_impl(&dword_181A37000, v132, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
              }
            }

LABEL_200:
            *(v53 + 456) = 0;
            nw_http_capsule_complete_capsule(v53 + 96);
          }
        }

        else
        {
          if (v112 <= 16770047)
          {
            if ((v112 - 1) < 3 || v112 == -1)
            {
LABEL_223:
              v116 = __nwlog_obj();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2048;
                *&buf[14] = v112;
                _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_225;
            }

            if (!v112)
            {
              v115 = *(v53 + 448);
              if (v115 && *(v115 + 184) != 3)
              {
                v204[0] = MEMORY[0x1E69E9820];
                v204[1] = 0x40000000;
                v205 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                v206 = &__block_descriptor_tmp_35_36486;
                v207 = v53 + 96;
                v208 = v115;
                v141 = *(v53 + 136);
                do
                {
                  if (!v141)
                  {
                    break;
                  }

                  v142 = *(v141 + 32);
                  v143 = (v205)(v204);
                  v141 = v142;
                }

                while ((v143 & 1) != 0);
LABEL_281:
                nw_protocol_input_available(v115, v53);
                goto LABEL_225;
              }

LABEL_222:
              nw_frame_array_finalize(v53 + 136, 1, 1);
            }
          }

          else if ((v112 - 16770048) < 6)
          {
            goto LABEL_223;
          }

LABEL_225:
          if (capsule)
          {
            goto LABEL_200;
          }
        }
      }
    }
  }
}

uint64_t ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v4 = object;
    v5 = *(a1 + 32);
    v6 = *(object + 88);
    if (v5)
    {
      nw_protocol_error(*(object + 48), object);
    }

    nw_protocol_disconnect(v4, v6);
    return 1;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_webtransport_stream_terminate";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v9, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v18 = "nw_webtransport_stream_terminate";
      v12 = "%{public}s called with null webtransport_stream";
      goto LABEL_19;
    }

    if (v15 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v18 = "nw_webtransport_stream_terminate";
      v12 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v14 = os_log_type_enabled(v10, type);
    if (backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        v18 = "nw_webtransport_stream_terminate";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_webtransport_stream_terminate";
      v12 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    }
  }

LABEL_20:
  if (v9)
  {
    free(v9);
  }

  return 1;
}

uint64_t ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (nw_protocol_metadata_is_http_connection(a3))
  {
    if (v3)
    {
      v3 = os_retain(v3);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 408);
    if (v6)
    {
      v7 = *(v5 + 400);
      if (v7)
      {
        os_release(v7);
        v6 = *(v5 + 408);
      }
    }

    *(v5 + 400) = v3;
    *(v5 + 408) = v6 | 1;
  }

  return 1;
}

void nw_webtransport_http_send_connect(uint64_t a1)
{
  v547 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v164 = __nwlog_obj();
    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
    {
      v165 = *(a1 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_http_send_connect";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 496;
      *&buf[22] = 2080;
      v543 = " ";
      *v544 = 1024;
      *&v544[2] = v165;
      _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if (*(a1 + 580))
  {
    return;
  }

  webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(a1 + 400));
  if (nw_http_connection_metadata_get_settings_received(*(a1 + 400)))
  {
    if ((nw_http_connection_metadata_get_connect_enabled(*(a1 + 400)) & 1) == 0)
    {
      v3 = webtransport_state[3];
      goto LABEL_36;
    }

    if (webtransport_state)
    {
      v3 = webtransport_state[3];
      if (webtransport_state[2] < v3)
      {
        goto LABEL_8;
      }

LABEL_36:
      if (v3)
      {
        if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
        {
          v271 = __nwlog_obj();
          if (os_log_type_enabled(v271, OS_LOG_TYPE_DEBUG))
          {
            v272 = *(a1 + 492);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http_send_connect";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 496;
            *&buf[22] = 2080;
            v543 = " ";
            *v544 = 1024;
            *&v544[2] = v272;
            *&v544[6] = 2048;
            *&v544[8] = a1;
            _os_log_impl(&dword_181A37000, v271, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Queueing webtransport session %p as pending", buf, 0x30u);
          }
        }

        *(a1 + 352) = 0;
        v32 = webtransport_state[1];
        *(a1 + 360) = v32;
        *v32 = a1;
        webtransport_state[1] = a1 + 352;
        return;
      }

      v60 = *(a1 + 580);
      if (*(a1 + 476) != 5)
      {
        if ((*(a1 + 580) & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v61 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v62 = *(a1 + 492);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 496;
            *&buf[22] = 2080;
            v543 = " ";
            *v544 = 1024;
            *&v544[2] = v62;
            *&v544[6] = 1024;
            *&v544[8] = 100;
            _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
          }
        }

        v63 = *(a1 + 476);
        *(a1 + 476) = 5;
        v64 = *(a1 + 192);
        if (v64)
        {
          v513 = MEMORY[0x1E69E9820];
          v514 = 0x40000000;
          v515 = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
          v516 = &__block_descriptor_tmp_24_36439;
          v517 = 100;
          nw_hash_table_apply(v64, &v513);
        }

        v65 = *(a1 + 448);
        if (v65)
        {
          v66 = *(v65 + 88);
          nw_protocol_error(*(v65 + 48), *(a1 + 448));
          nw_protocol_disconnect(v65, v66);
        }

        v67 = *(a1 + 336);
        if (v67)
        {
          do
          {
            v68 = *(v67 + 112);
            v69 = *(v67 + 88);
            nw_protocol_error(*(v67 + 48), v67);
            nw_protocol_disconnect(v67, v69);
            v67 = v68;
          }

          while (v68);
        }

        v70 = *(a1 + 440);
        if (v70)
        {
          v71 = *(v70 + 88);
          nw_protocol_error(*(v70 + 48), *(a1 + 440));
          nw_protocol_disconnect(v70, v71);
        }

        if (*(a1 + 32))
        {
          nw_protocol_remove_instance(a1);
          nw_protocol_disconnect(*(a1 + 32), a1);
        }

        v72 = *(a1 + 400);
        if (!v72)
        {
          return;
        }

        v73 = nw_http_connection_metadata_get_webtransport_state(v72);
        if (!v73)
        {
          return;
        }

        v74 = v73;
        if (v63 != 4 && v63 != 1)
        {
          return;
        }

        v75 = *(v73 + 16);
        *(v73 + 16) = v75 - 1;
        if (v75)
        {
LABEL_251:
          if (*(a1 + 580))
          {
            return;
          }

          v173 = *v74;
          if (!*v74)
          {
            return;
          }

          v174 = *(v173 + 352);
          v175 = *(v173 + 360);
          v176 = (v174 + 360);
          if (!v174)
          {
            v176 = v74 + 1;
          }

          *v176 = v175;
          *v175 = v174;
          *(v173 + 352) = 0;
          *(v173 + 360) = 0;
          v177 = *(v173 + 32);
          if (!v177 || *(v173 + 480) != 2)
          {
            goto LABEL_311;
          }

          v178 = v177[2];
          if (nw_protocol_http2_identifier::onceToken != -1)
          {
            v430 = v177[2];
            dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
            v178 = v430;
          }

          if (!nw_protocols_are_equal(v178, &nw_protocol_http2_identifier::http2_protocol_identifier))
          {
            v179 = v177[2];
            if (nw_protocol_http3_identifier::onceToken != -1)
            {
              v441 = v177[2];
              dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
              v179 = v441;
            }

            if (!nw_protocols_are_equal(v179, &nw_protocol_http3_identifier::http3_protocol_identifier))
            {
              v180 = v177[2];
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v459 = v177[2];
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v180 = v459;
              }

              if (!nw_protocols_are_equal(v180, &nw_protocol_http_messaging_identifier::protocol_identifier))
              {
LABEL_311:
                v204 = *(v173 + 480);
                v205 = *(v173 + 580);
                if (v204 <= 1)
                {
                  if (*(v173 + 580))
                  {
                    v206 = *(v173 + 476);
                    if (v204 == 1)
                    {
                      if (v206 != 3)
                      {
                        if (v206)
                        {
                          return;
                        }

                        v207 = *(v173 + 48);
                        if (v207)
                        {
                          v208 = *(v207 + 40);
                          if (v208)
                          {
                            nw_protocol_replace_input_handler(*(v173 + 32), v173, *(v207 + 40));
                            *(v173 + 440) = v208;
                            nw_protocol_set_output_handler(v173, 0);
                            nw_protocol_set_input_handler(v173, 0);
                            if ((*(v173 + 580) & 1) == 0)
                            {
                              goto LABEL_480;
                            }

                            v209 = *(*(v173 + 440) + 32);
                            v210 = *(v209 + 16);
                            if (nw_protocol_http_messaging_identifier::onceToken != -1)
                            {
                              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                            }

                            if (nw_protocols_are_equal(v210, &nw_protocol_http_messaging_identifier::protocol_identifier))
                            {
                              goto LABEL_364;
                            }

                            v211 = *(v209 + 16);
                            if (nw_protocol_http3_identifier::onceToken == -1)
                            {
LABEL_363:
                              if (nw_protocols_are_equal(v211, &nw_protocol_http3_identifier::http3_protocol_identifier))
                              {
LABEL_364:
                                v229 = *(v173 + 368);
                                if (v229)
                                {
                                  v230 = nw_parameters_copy_protocol_options_legacy(v229, v209);
                                  if (v230)
                                  {
                                    v231 = v230;
                                    if ((*(v208 + 276) & 0x10) == 0 && gLogDatapath == 1)
                                    {
                                      v498 = __nwlog_obj();
                                      if (os_log_type_enabled(v498, OS_LOG_TYPE_DEBUG))
                                      {
                                        v499 = *(v208 + 88);
                                        if (v499)
                                        {
                                          v500 = *(v499 + 492);
                                        }

                                        else
                                        {
                                          v500 = -1;
                                        }

                                        v508 = *(v208 + 64);
                                        *buf = 136447490;
                                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v208 + 192;
                                        *&buf[22] = 2080;
                                        v543 = " ";
                                        *v544 = 1024;
                                        *&v544[2] = v500;
                                        *&v544[6] = 2048;
                                        *&v544[8] = v508;
                                        *&v544[16] = 2048;
                                        *&v544[18] = v231;
                                        _os_log_impl(&dword_181A37000, v498, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                                      }
                                    }

                                    nw_http3_set_stream_mode(v231, 0);
                                    os_release(v231);
                                  }

                                  else
                                  {
                                    if ((*(v173 + 580) & 2) == 0 && gLogDatapath == 1)
                                    {
                                      v501 = __nwlog_obj();
                                      if (os_log_type_enabled(v501, OS_LOG_TYPE_DEBUG))
                                      {
                                        v502 = *(v173 + 492);
                                        *buf = 136446978;
                                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v173 + 496;
                                        *&buf[22] = 2080;
                                        v543 = " ";
                                        *v544 = 1024;
                                        *&v544[2] = v502;
                                        _os_log_impl(&dword_181A37000, v501, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                                      }
                                    }

                                    v282 = *(v208 + 88);
                                    nw_protocol_error(*(v208 + 48), v208);
                                    nw_protocol_disconnect(v208, v282);
                                  }
                                }
                              }

LABEL_480:
                              *(v173 + 476) = 2;
                              return;
                            }

LABEL_947:
                            dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                            goto LABEL_363;
                          }

LABEL_861:
                          v463 = __nwlog_obj();
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          LODWORD(v509) = 12;
                          v464 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v463, 16, "%{public}s called with null webtransport_stream", buf, v509);
                          type[0] = 16;
                          LOBYTE(v529) = 0;
                          if (!__nwlog_fault(v464, type, &v529))
                          {
                            goto LABEL_1005;
                          }

                          if (type[0] == 17)
                          {
                            v465 = __nwlog_obj();
                            v466 = type[0];
                            if (!os_log_type_enabled(v465, type[0]))
                            {
                              goto LABEL_1005;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                            v467 = "%{public}s called with null webtransport_stream";
LABEL_1004:
                            _os_log_impl(&dword_181A37000, v465, v466, v467, buf, 0xCu);
                            goto LABEL_1005;
                          }

                          if (v529 != 1)
                          {
                            v465 = __nwlog_obj();
                            v466 = type[0];
                            if (!os_log_type_enabled(v465, type[0]))
                            {
                              goto LABEL_1005;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                            v467 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                            goto LABEL_1004;
                          }

                          backtrace_string = __nw_create_backtrace_string();
                          v465 = __nwlog_obj();
                          v466 = type[0];
                          v486 = os_log_type_enabled(v465, type[0]);
                          if (!backtrace_string)
                          {
                            if (!v486)
                            {
                              goto LABEL_1005;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                            v467 = "%{public}s called with null webtransport_stream, no backtrace";
                            goto LABEL_1004;
                          }

                          if (!v486)
                          {
LABEL_920:
                            free(backtrace_string);
                            if (!v464)
                            {
                              goto LABEL_480;
                            }

                            goto LABEL_1006;
                          }

                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = backtrace_string;
                          v481 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_919:
                          _os_log_impl(&dword_181A37000, v465, v466, v481, buf, 0x16u);
                          goto LABEL_920;
                        }

                        v478 = __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        LODWORD(v509) = 12;
                        v464 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v478, 16, "%{public}s called with null input_protocol", buf, v509);
                        type[0] = 16;
                        LOBYTE(v529) = 0;
                        if (!__nwlog_fault(v464, type, &v529))
                        {
                          goto LABEL_1005;
                        }

                        if (type[0] != 17)
                        {
                          if (v529 == 1)
                          {
                            backtrace_string = __nw_create_backtrace_string();
                            v465 = __nwlog_obj();
                            v466 = type[0];
                            v480 = os_log_type_enabled(v465, type[0]);
                            if (backtrace_string)
                            {
                              if (!v480)
                              {
                                goto LABEL_920;
                              }

                              *buf = 136446466;
                              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = backtrace_string;
                              v481 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                              goto LABEL_919;
                            }

LABEL_995:
                            if (!v480)
                            {
                              goto LABEL_1005;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                            v467 = "%{public}s called with null input_protocol, no backtrace";
                            goto LABEL_1004;
                          }

                          goto LABEL_955;
                        }

                        goto LABEL_932;
                      }

                      v253 = *(v173 + 32);
                      if (v253)
                      {
                        v254 = v253[3];
                        if (v254 && *(v254 + 80))
                        {
                          for (i = 3; (i | 2) == 3; i = *(v173 + 476))
                          {
                            if (!nw_protocol_get_input_frames(v253, v173, 0, 0, 0xFFFFFFFFLL, v173 + 120))
                            {
                              return;
                            }

                            *buf = 0;
                            *&buf[8] = buf;
                            *&buf[16] = 0x3802000000;
                            v543 = __Block_byref_object_copy__36471;
                            *v544 = __Block_byref_object_dispose__36472;
                            *&v544[8] = nw_protocol_copy_http_definition();
                            v544[16] |= 1u;
                            *type = MEMORY[0x1E69E9820];
                            *&type[8] = 0x40000000;
                            *&type[16] = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                            v538 = &unk_1E6A31940;
                            v539 = buf;
                            v540 = v173;
                            v541 = v173 + 120;
                            v256 = *(v173 + 120);
                            do
                            {
                              if (!v256)
                              {
                                break;
                              }

                              v257 = *(v256 + 32);
                              v258 = (*&type[16])(type);
                              v256 = v257;
                            }

                            while ((v258 & 1) != 0);
                            _Block_object_dispose(buf, 8);
                            if ((v544[16] & 1) != 0 && *&v544[8])
                            {
                              os_release(*&v544[8]);
                            }
                          }

                          v276 = *(v173 + 480);
                          if (v276 != 1)
                          {
                            if (v276)
                            {
                              return;
                            }

                            if ((*(v173 + 580) & 2) == 0 && gLogDatapath == 1)
                            {
                              v503 = __nwlog_obj();
                              if (os_log_type_enabled(v503, OS_LOG_TYPE_DEBUG))
                              {
                                v504 = *(v173 + 492);
                                *buf = 136446978;
                                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                *&buf[12] = 2082;
                                *&buf[14] = v173 + 496;
                                *&buf[22] = 2080;
                                v543 = " ";
                                *v544 = 1024;
                                *&v544[2] = v504;
                                _os_log_impl(&dword_181A37000, v503, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                              }
                            }

                            if (*(v173 + 476) != 4)
                            {
                              return;
                            }

                            v277 = (v173 + 96);
                            while (1)
                            {
                              capsule = nw_http_capsule_framer_read_capsule((v173 + 96), v173);
                              if (!capsule && !*(v173 + 136))
                              {
                                return;
                              }

                              if (*(v173 + 456))
                              {
                                goto LABEL_606;
                              }

                              v336 = *v277;
                              if (*v277 == -1)
                              {
LABEL_663:
                                v350 = __nwlog_obj();
                                if (os_log_type_enabled(v350, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446466;
                                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v336;
                                  _os_log_impl(&dword_181A37000, v350, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                                }

                                goto LABEL_606;
                              }

                              v337 = *(v173 + 104) != -1 && *(v173 + 112) == 0;
                              if (v336 <= 16770303)
                              {
                                if ((v336 - 16770048) < 6 || (v336 + 1) <= 4 && v336)
                                {
                                  goto LABEL_663;
                                }
                              }

                              else if ((v336 - 420171065) <= 9 && ((1 << (v336 - 57)) & 0x2EF) != 0)
                              {
                                v536 = -1;
                                if (nw_http_capsule_framer_parse_vle_value((v173 + 96), v173, &v536))
                                {
                                  stream = nw_webtransport_session_get_stream(v173, v536);
                                  if (stream)
                                  {
                                    goto LABEL_657;
                                  }

                                  if ((v336 - 420171067) > 1)
                                  {
                                    goto LABEL_688;
                                  }

                                  v357 = v536;
                                  v358 = *(v173 + 580);
                                  if (v536 >> 60 || ((v536 ^ v358) & 1) == 0)
                                  {
                                    if ((v358 & 2) == 0)
                                    {
                                      v366 = __nwlog_obj();
                                      if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
                                      {
                                        v367 = *(v173 + 492);
                                        *buf = 136446978;
                                        *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v173 + 496;
                                        *&buf[22] = 2080;
                                        v543 = " ";
                                        *v544 = 1024;
                                        *&v544[2] = v367;
                                        v368 = v366;
                                        v369 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                                        goto LABEL_687;
                                      }
                                    }

LABEL_688:
                                    if ((*(v173 + 580) & 2) == 0)
                                    {
                                      v370 = __nwlog_obj();
                                      if (os_log_type_enabled(v370, OS_LOG_TYPE_ERROR))
                                      {
                                        v371 = *(v173 + 492);
                                        *buf = 136447490;
                                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v173 + 496;
                                        *&buf[22] = 2080;
                                        v543 = " ";
                                        *v544 = 1024;
                                        *&v544[2] = v371;
                                        *&v544[6] = 2048;
                                        *&v544[8] = v536;
                                        *&v544[16] = 2048;
                                        *&v544[18] = v336;
                                        _os_log_impl(&dword_181A37000, v370, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                                      }
                                    }

                                    goto LABEL_606;
                                  }

                                  v359 = *(v173 + 424);
                                  if (!v359 || (v360 = *v359) == 0 || !*v360)
                                  {
                                    if ((v358 & 2) == 0)
                                    {
                                      v372 = __nwlog_obj();
                                      if (os_log_type_enabled(v372, OS_LOG_TYPE_ERROR))
                                      {
                                        v373 = *(v173 + 492);
                                        *buf = 136446978;
                                        *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v173 + 496;
                                        *&buf[22] = 2080;
                                        v543 = " ";
                                        *v544 = 1024;
                                        *&v544[2] = v373;
                                        v368 = v372;
                                        v369 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_687:
                                        _os_log_impl(&dword_181A37000, v368, OS_LOG_TYPE_ERROR, v369, buf, 0x26u);
                                      }
                                    }

                                    goto LABEL_688;
                                  }

                                  v361 = _nw_parameters_copy();
                                  *(v173 + 580) |= 0x20u;
                                  *(v173 + 176) = v357;
                                  v362 = (***(v173 + 424))(*(v173 + 424), *(v173 + 384), v361);
                                  *(v173 + 176) = -1;
                                  *(v173 + 580) &= ~0x20u;
                                  if (v362)
                                  {
                                    stream = nw_webtransport_session_get_stream(v173, v357);
                                  }

                                  else
                                  {
                                    stream = 0;
                                  }

                                  if (v361)
                                  {
                                    os_release(v361);
                                  }

                                  if (!stream)
                                  {
                                    goto LABEL_688;
                                  }

                                  if (*(stream + 46) != 3)
                                  {
LABEL_657:
                                    *(v173 + 456) = stream;
                                    goto LABEL_606;
                                  }

                                  if ((*(v173 + 580) & 2) != 0)
                                  {
                                    goto LABEL_606;
                                  }

                                  v374 = __nwlog_obj();
                                  if (!os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_606;
                                  }

                                  v375 = *(v173 + 492);
                                  *buf = 136447234;
                                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v173 + 496;
                                  *&buf[22] = 2080;
                                  v543 = " ";
                                  *v544 = 1024;
                                  *&v544[2] = v375;
                                  *&v544[6] = 2048;
                                  *&v544[8] = v536;
                                  v353 = v374;
                                  v354 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                                }

                                else
                                {
                                  if (!v337)
                                  {
                                    goto LABEL_606;
                                  }

                                  if ((*(v173 + 580) & 2) != 0)
                                  {
                                    goto LABEL_606;
                                  }

                                  v351 = __nwlog_obj();
                                  if (!os_log_type_enabled(v351, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_606;
                                  }

                                  v352 = *(v173 + 492);
                                  *buf = 136447234;
                                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v173 + 496;
                                  *&buf[22] = 2080;
                                  v543 = " ";
                                  *v544 = 1024;
                                  *&v544[2] = v352;
                                  *&v544[6] = 2048;
                                  *&v544[8] = v336;
                                  v353 = v351;
                                  v354 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
                                }

                                _os_log_impl(&dword_181A37000, v353, OS_LOG_TYPE_ERROR, v354, buf, 0x30u);
                              }

                              else if ((v336 - 16770304) < 4)
                              {
                                goto LABEL_663;
                              }

LABEL_606:
                              v335 = *(v173 + 96);
                              if ((*(v173 + 580) & 2) == 0 && gLogDatapath == 1)
                              {
                                v376 = __nwlog_obj();
                                if (os_log_type_enabled(v376, OS_LOG_TYPE_DEBUG))
                                {
                                  v377 = *(v173 + 492);
                                  v378 = *(v173 + 104);
                                  *buf = 136447490;
                                  *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v173 + 496;
                                  *&buf[22] = 2080;
                                  v543 = " ";
                                  *v544 = 1024;
                                  *&v544[2] = v377;
                                  *&v544[6] = 2048;
                                  *&v544[8] = v335;
                                  *&v544[16] = 2048;
                                  *&v544[18] = v378;
                                  _os_log_impl(&dword_181A37000, v376, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                                }
                              }

                              if (v335 > 16770303)
                              {
                                if (v335 <= 420171064)
                                {
                                  if ((v335 - 16770304) < 4)
                                  {
                                    goto LABEL_625;
                                  }

                                  if (v335 == 420171064)
                                  {
                                    goto LABEL_624;
                                  }

                                  goto LABEL_627;
                                }

                                if ((v335 - 420171065) >= 2)
                                {
                                  if ((v335 - 420171067) < 2)
                                  {
                                    v338 = *(v173 + 456);
                                    v340 = v335 == 420171068 && capsule;
                                    v529 = MEMORY[0x1E69E9820];
                                    v530 = 0x40000000;
                                    v531 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                                    v532 = &__block_descriptor_tmp_34_36485;
                                    v535 = v340;
                                    v533 = v173 + 96;
                                    v534 = v338;
                                    v341 = *(v173 + 136);
                                    do
                                    {
                                      if (!v341)
                                      {
                                        break;
                                      }

                                      v342 = *(v341 + 32);
                                      v343 = (v531)(&v529);
                                      v341 = v342;
                                    }

                                    while ((v343 & 1) != 0);
                                    if (!v340)
                                    {
                                      goto LABEL_683;
                                    }

                                    nw_protocol_input_finished(v338, v173);
                                  }

                                  goto LABEL_627;
                                }

                                if (capsule)
                                {
                                  v344 = *(v173 + 456);
                                  v536 = -1;
                                  if (nw_http_capsule_framer_parse_vle_value((v173 + 96), v173, &v536))
                                  {
                                    if (!v344 || (*(v344 + 276) & 0x10) == 0)
                                    {
                                      v345 = __nwlog_obj();
                                      if (os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
                                      {
                                        if (v344)
                                        {
                                          v346 = (v344 + 192);
                                        }

                                        else
                                        {
                                          v346 = "";
                                        }

                                        v347 = " ";
                                        if (!v344)
                                        {
                                          v347 = "";
                                        }

                                        v348 = *(v344 + 88);
                                        if (v348)
                                        {
                                          v331 = *(v348 + 492);
                                        }

                                        else
                                        {
                                          v331 = -1;
                                        }

                                        v332 = *(v344 + 64);
                                        *buf = 136448002;
                                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v346;
                                        *&buf[22] = 2080;
                                        v543 = v347;
                                        *v544 = 1024;
                                        *&v544[2] = v331;
                                        *&v544[6] = 2048;
                                        *&v544[8] = v332;
                                        *&v544[16] = 2048;
                                        *&v544[18] = v335;
                                        *&v544[26] = 2048;
                                        *&v544[28] = v332;
                                        v545 = 2048;
                                        v546 = v536;
                                        _os_log_impl(&dword_181A37000, v345, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                                      }
                                    }

                                    nw_protocol_webtransport_stream_error(v344, v173);
                                    nw_protocol_webtransport_stream_disconnect(v344, v333);
                                  }

                                  else if ((*(v173 + 580) & 2) == 0)
                                  {
                                    v355 = __nwlog_obj();
                                    if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
                                    {
                                      v356 = *(v173 + 492);
                                      *buf = 136447234;
                                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v173 + 496;
                                      *&buf[22] = 2080;
                                      v543 = " ";
                                      *v544 = 1024;
                                      *&v544[2] = v356;
                                      *&v544[6] = 2048;
                                      *&v544[8] = v335;
                                      _os_log_impl(&dword_181A37000, v355, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                                    }
                                  }

LABEL_602:
                                  *(v173 + 456) = 0;
                                  nw_http_capsule_complete_capsule(v173 + 96);
                                }
                              }

                              else
                              {
                                if (v335 <= 16770047)
                                {
                                  if ((v335 - 1) < 3 || v335 == -1)
                                  {
LABEL_625:
                                    v339 = __nwlog_obj();
                                    if (os_log_type_enabled(v339, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 136446466;
                                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v335;
                                      _os_log_impl(&dword_181A37000, v339, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                                    }

                                    goto LABEL_627;
                                  }

                                  if (!v335)
                                  {
                                    v338 = *(v173 + 448);
                                    if (v338 && *(v338 + 184) != 3)
                                    {
                                      v523 = MEMORY[0x1E69E9820];
                                      v524 = 0x40000000;
                                      v525 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                                      v526 = &__block_descriptor_tmp_35_36486;
                                      v527 = v173 + 96;
                                      v528 = v338;
                                      v363 = *(v173 + 136);
                                      do
                                      {
                                        if (!v363)
                                        {
                                          break;
                                        }

                                        v364 = *(v363 + 32);
                                        v365 = (v525)(&v523);
                                        v363 = v364;
                                      }

                                      while ((v365 & 1) != 0);
LABEL_683:
                                      nw_protocol_input_available(v338, v173);
                                      goto LABEL_627;
                                    }

LABEL_624:
                                    nw_frame_array_finalize(v173 + 136, 1, 1);
                                  }
                                }

                                else if ((v335 - 16770048) < 6)
                                {
                                  goto LABEL_625;
                                }

LABEL_627:
                                if (capsule)
                                {
                                  goto LABEL_602;
                                }
                              }
                            }
                          }

LABEL_474:
                          nw_webtransport_http3_handle_input(v173);
                          v281 = *(v173 + 448);
                          if (v281 && *(v281 + 72))
                          {
                            nw_protocol_input_available(*(v281 + 48), v281);
                          }

                          return;
                        }

LABEL_826:
                        if ((v205 & 2) == 0)
                        {
                          v444 = __nwlog_obj();
                          if (os_log_type_enabled(v444, OS_LOG_TYPE_ERROR))
                          {
                            v445 = *(v173 + 492);
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v173 + 496;
                            *&buf[22] = 2080;
                            v543 = " ";
                            *v544 = 1024;
                            *&v544[2] = v445;
                            _os_log_impl(&dword_181A37000, v444, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                          }
                        }

                        v446 = __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        LODWORD(v509) = 12;
                        v234 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v446, 16, "%{public}s output handler has no get_input_frames callback", buf, v509);
                        type[0] = 16;
                        LOBYTE(v529) = 0;
                        if (__nwlog_fault(v234, type, &v529))
                        {
                          if (type[0] == 17)
                          {
                            v235 = __nwlog_obj();
                            v236 = type[0];
                            if (!os_log_type_enabled(v235, type[0]))
                            {
                              goto LABEL_1000;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            v237 = "%{public}s output handler has no get_input_frames callback";
                            goto LABEL_999;
                          }

                          if (v529 != 1)
                          {
                            v235 = __nwlog_obj();
                            v236 = type[0];
                            if (!os_log_type_enabled(v235, type[0]))
                            {
                              goto LABEL_1000;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            v237 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                            goto LABEL_999;
                          }

                          v468 = __nw_create_backtrace_string();
                          v235 = __nwlog_obj();
                          v236 = type[0];
                          v469 = os_log_type_enabled(v235, type[0]);
                          if (!v468)
                          {
                            if (!v469)
                            {
                              goto LABEL_1000;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            v237 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                            goto LABEL_999;
                          }

                          if (v469)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v468;
                            v470 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_908:
                            _os_log_impl(&dword_181A37000, v235, v236, v470, buf, 0x16u);
                            goto LABEL_909;
                          }

                          goto LABEL_909;
                        }

LABEL_1000:
                        if (!v234)
                        {
                          return;
                        }

                        goto LABEL_1001;
                      }

                      v482 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_session_http_get_input";
                      LODWORD(v509) = 12;
                      v234 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v482, 16, "%{public}s called with null output_handler", buf, v509);
                      type[0] = 16;
                      LOBYTE(v529) = 0;
                      if (!__nwlog_fault(v234, type, &v529))
                      {
                        goto LABEL_1000;
                      }

                      if (type[0] != 17)
                      {
                        if (v529 == 1)
                        {
                          v468 = __nw_create_backtrace_string();
                          v235 = __nwlog_obj();
                          v236 = type[0];
                          v483 = os_log_type_enabled(v235, type[0]);
                          if (v468)
                          {
                            if (!v483)
                            {
                              goto LABEL_909;
                            }

                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v468;
                            v470 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                            goto LABEL_908;
                          }

                          goto LABEL_997;
                        }

                        goto LABEL_962;
                      }

                      goto LABEL_936;
                    }

                    if (v206)
                    {
                      return;
                    }

                    *(v173 + 476) = 3;
                    v212 = *(v173 + 48);
                    if (v212)
                    {
                      v213 = *(v212 + 40);
                      if (v213)
                      {
LABEL_327:
                        *(v173 + 440) = v213;
                        return;
                      }

LABEL_372:
                      v233 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                      LODWORD(v509) = 12;
                      v234 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v233, 16, "%{public}s called with null webtransport_stream", buf, v509);
                      type[0] = 16;
                      LOBYTE(v529) = 0;
                      if (!__nwlog_fault(v234, type, &v529))
                      {
                        goto LABEL_1000;
                      }

                      if (type[0] == 17)
                      {
                        v235 = __nwlog_obj();
                        v236 = type[0];
                        if (!os_log_type_enabled(v235, type[0]))
                        {
                          goto LABEL_1000;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        v237 = "%{public}s called with null webtransport_stream";
LABEL_999:
                        _os_log_impl(&dword_181A37000, v235, v236, v237, buf, 0xCu);
                        goto LABEL_1000;
                      }

                      if (v529 != 1)
                      {
                        v235 = __nwlog_obj();
                        v236 = type[0];
                        if (!os_log_type_enabled(v235, type[0]))
                        {
                          goto LABEL_1000;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        v237 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                        goto LABEL_999;
                      }

                      v468 = __nw_create_backtrace_string();
                      v235 = __nwlog_obj();
                      v236 = type[0];
                      v485 = os_log_type_enabled(v235, type[0]);
                      if (!v468)
                      {
                        if (!v485)
                        {
                          goto LABEL_1000;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        v237 = "%{public}s called with null webtransport_stream, no backtrace";
                        goto LABEL_999;
                      }

                      if (v485)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v468;
                        v470 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                        goto LABEL_908;
                      }

                      goto LABEL_909;
                    }

                    goto LABEL_849;
                  }

LABEL_348:
                  if (!*(v173 + 476))
                  {
                    nw_webtransport_http_send_connect(v173);
                  }

                  return;
                }

                goto LABEL_350;
              }
            }
          }

          v181 = nw_protocol_copy_info(v177);
          v182 = v181;
          aBlock = MEMORY[0x1E69E9820];
          v519 = 0x40000000;
          v520 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
          v521 = &__block_descriptor_tmp_27_36446;
          v522 = v173;
          if (v181)
          {
            _nw_array_apply(v181, &aBlock);
            v183 = *(v173 + 400);
            if (!v183)
            {
              goto LABEL_295;
            }
          }

          else
          {
            v183 = *(v173 + 400);
            if (!v183)
            {
              return;
            }
          }

          version = nw_http_connection_metadata_get_version(v183);
          v185 = version;
          if (version == 4)
          {
            v186 = 0;
          }

          else
          {
            if (version != 5)
            {
LABEL_299:
              v198 = v177[2];
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v440 = v177[2];
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v198 = v440;
              }

              v199 = nw_protocols_are_equal(v198, &nw_protocol_http_messaging_identifier::protocol_identifier);
              v200 = *(v173 + 580);
              if (v199)
              {
                v200 |= 0x40u;
                *(v173 + 580) = v200;
              }

              if ((v200 & 2) == 0)
              {
                v201 = __nwlog_obj();
                if (os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
                {
                  v202 = *(v173 + 492);
                  if (v185 == 4)
                  {
                    v203 = 2;
                  }

                  else
                  {
                    v203 = 3;
                  }

                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_session_establish";
                  *&buf[12] = 2082;
                  *&buf[14] = v173 + 496;
                  *&buf[22] = 2080;
                  v543 = " ";
                  *v544 = 1024;
                  *&v544[2] = v202;
                  *&v544[6] = 1024;
                  *&v544[8] = v203;
                  _os_log_impl(&dword_181A37000, v201, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
                }
              }

              if (v182)
              {
                os_release(v182);
              }

              goto LABEL_311;
            }

            v186 = 1;
          }

          *(v173 + 480) = v186;
          goto LABEL_299;
        }

        v76 = __nwlog_obj();
        v77 = v74[2];
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = "connection_state->local_sessions";
        *&buf[22] = 2048;
        v543 = 1;
        *v544 = 2048;
        *&v544[2] = v77;
        v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
        type[0] = 16;
        LOBYTE(v529) = 0;
        if (__nwlog_fault(v78, type, &v529))
        {
          if (type[0] == 17)
          {
            v79 = __nwlog_obj();
            v80 = type[0];
            if (os_log_type_enabled(v79, type[0]))
            {
              v81 = v74[2];
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v543 = 1;
              *v544 = 2048;
              *&v544[2] = v81;
              v82 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_247:
              _os_log_impl(&dword_181A37000, v79, v80, v82, buf, 0x2Au);
            }
          }

          else if (v529 == 1)
          {
            v132 = __nw_create_backtrace_string();
            v79 = __nwlog_obj();
            v80 = type[0];
            v133 = os_log_type_enabled(v79, type[0]);
            if (v132)
            {
              if (v133)
              {
                v134 = v74[2];
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_session_terminate";
                *&buf[12] = 2082;
                *&buf[14] = "connection_state->local_sessions";
                *&buf[22] = 2048;
                v543 = 1;
                *v544 = 2048;
                *&v544[2] = v134;
                *&v544[10] = 2082;
                *&v544[12] = v132;
                _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v132);
              goto LABEL_248;
            }

            if (v133)
            {
              v172 = v74[2];
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v543 = 1;
              *v544 = 2048;
              *&v544[2] = v172;
              v82 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_247;
            }
          }

          else
          {
            v79 = __nwlog_obj();
            v80 = type[0];
            if (os_log_type_enabled(v79, type[0]))
            {
              v142 = v74[2];
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v543 = 1;
              *v544 = 2048;
              *&v544[2] = v142;
              v82 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_247;
            }
          }
        }

LABEL_248:
        if (v78)
        {
          free(v78);
        }

        v74[2] = 0;
        goto LABEL_251;
      }

LABEL_95:
      if ((v60 & 2) != 0)
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v83 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v84 = *(a1 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 496;
      *&buf[22] = 2080;
      v543 = " ";
      *v544 = 1024;
      *&v544[2] = v84;
      v85 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
      v86 = v83;
      v87 = OS_LOG_TYPE_INFO;
LABEL_98:
      _os_log_impl(&dword_181A37000, v86, v87, v85, buf, 0x26u);
      return;
    }

    v60 = *(a1 + 580);
    if (*(a1 + 476) == 5)
    {
      goto LABEL_95;
    }

    if ((*(a1 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v88 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v89 = *(a1 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 496;
        *&buf[22] = 2080;
        v543 = " ";
        *v544 = 1024;
        *&v544[2] = v89;
        *&v544[6] = 1024;
        *&v544[8] = 12;
        _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
      }
    }

    v90 = *(a1 + 476);
    *(a1 + 476) = 5;
    v91 = *(a1 + 192);
    if (v91)
    {
      v513 = MEMORY[0x1E69E9820];
      v514 = 0x40000000;
      v515 = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
      v516 = &__block_descriptor_tmp_24_36439;
      v517 = 12;
      nw_hash_table_apply(v91, &v513);
    }

    v92 = *(a1 + 448);
    if (v92)
    {
      v93 = *(v92 + 88);
      nw_protocol_error(*(v92 + 48), *(a1 + 448));
      nw_protocol_disconnect(v92, v93);
    }

    v94 = *(a1 + 336);
    if (v94)
    {
      do
      {
        v95 = *(v94 + 112);
        v96 = *(v94 + 88);
        nw_protocol_error(*(v94 + 48), v94);
        nw_protocol_disconnect(v94, v96);
        v94 = v95;
      }

      while (v95);
    }

    v97 = *(a1 + 440);
    if (v97)
    {
      v98 = *(v97 + 88);
      nw_protocol_error(*(v97 + 48), *(a1 + 440));
      nw_protocol_disconnect(v97, v98);
    }

    if (*(a1 + 32))
    {
      nw_protocol_remove_instance(a1);
      nw_protocol_disconnect(*(a1 + 32), a1);
    }

    v99 = *(a1 + 400);
    if (!v99)
    {
      return;
    }

    v100 = nw_http_connection_metadata_get_webtransport_state(v99);
    if (!v100)
    {
      return;
    }

    v101 = v100;
    if (v90 != 4 && v90 != 1)
    {
      return;
    }

    v102 = *(v100 + 16);
    *(v100 + 16) = v102 - 1;
    if (v102)
    {
LABEL_278:
      if (*(a1 + 580))
      {
        return;
      }

      v173 = *v101;
      if (!*v101)
      {
        return;
      }

      v188 = *(v173 + 352);
      v189 = *(v173 + 360);
      v190 = (v188 + 360);
      if (!v188)
      {
        v190 = v101 + 1;
      }

      *v190 = v189;
      *v189 = v188;
      *(v173 + 352) = 0;
      *(v173 + 360) = 0;
      v191 = *(v173 + 32);
      if (!v191 || *(v173 + 480) != 2)
      {
        goto LABEL_346;
      }

      v192 = v191[2];
      if (nw_protocol_http2_identifier::onceToken != -1)
      {
        v439 = v191[2];
        dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
        v192 = v439;
      }

      if (!nw_protocols_are_equal(v192, &nw_protocol_http2_identifier::http2_protocol_identifier))
      {
        v193 = v191[2];
        if (nw_protocol_http3_identifier::onceToken != -1)
        {
          v458 = v191[2];
          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
          v193 = v458;
        }

        if (!nw_protocols_are_equal(v193, &nw_protocol_http3_identifier::http3_protocol_identifier))
        {
          v194 = v191[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v477 = v191[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v194 = v477;
          }

          if (!nw_protocols_are_equal(v194, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
            goto LABEL_346;
          }
        }
      }

      v195 = nw_protocol_copy_info(v191);
      v182 = v195;
      aBlock = MEMORY[0x1E69E9820];
      v519 = 0x40000000;
      v520 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      v521 = &__block_descriptor_tmp_27_36446;
      v522 = v173;
      if (v195)
      {
        _nw_array_apply(v195, &aBlock);
        v196 = *(v173 + 400);
        if (!v196)
        {
LABEL_295:
          v197 = v182;
LABEL_466:
          os_release(v197);
          return;
        }
      }

      else
      {
        v196 = *(v173 + 400);
        if (!v196)
        {
          return;
        }
      }

      v214 = nw_http_connection_metadata_get_version(v196);
      v215 = v214;
      if (v214 == 4)
      {
        v216 = 0;
      }

      else
      {
        if (v214 != 5)
        {
LABEL_334:
          v217 = v191[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v447 = v191[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v217 = v447;
          }

          v218 = nw_protocols_are_equal(v217, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v219 = *(v173 + 580);
          if (v218)
          {
            v219 |= 0x40u;
            *(v173 + 580) = v219;
          }

          if ((v219 & 2) == 0)
          {
            v220 = __nwlog_obj();
            if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
            {
              v221 = *(v173 + 492);
              if (v215 == 4)
              {
                v222 = 2;
              }

              else
              {
                v222 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v173 + 496;
              *&buf[22] = 2080;
              v543 = " ";
              *v544 = 1024;
              *&v544[2] = v221;
              *&v544[6] = 1024;
              *&v544[8] = v222;
              _os_log_impl(&dword_181A37000, v220, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v182)
          {
            os_release(v182);
          }

LABEL_346:
          v223 = *(v173 + 480);
          v205 = *(v173 + 580);
          if (v223 > 1)
          {
LABEL_350:
            if ((v205 & 2) != 0)
            {
              return;
            }

            v224 = __nwlog_obj();
            if (!os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            v225 = *(v173 + 492);
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_establish";
            *&buf[12] = 2082;
            *&buf[14] = v173 + 496;
            *&buf[22] = 2080;
            v543 = " ";
            *v544 = 1024;
            *&v544[2] = v225;
            v85 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
            v86 = v224;
            v87 = OS_LOG_TYPE_ERROR;
            goto LABEL_98;
          }

          if ((*(v173 + 580) & 1) == 0)
          {
            goto LABEL_348;
          }

          v226 = *(v173 + 476);
          if (v223 != 1)
          {
            if (v226)
            {
              return;
            }

            *(v173 + 476) = 3;
            v232 = *(v173 + 48);
            if (v232)
            {
              v213 = *(v232 + 40);
              if (v213)
              {
                goto LABEL_327;
              }

              goto LABEL_372;
            }

LABEL_849:
            v460 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            LODWORD(v509) = 12;
            v234 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v460, 16, "%{public}s called with null input_protocol", buf, v509);
            type[0] = 16;
            LOBYTE(v529) = 0;
            if (!__nwlog_fault(v234, type, &v529))
            {
              goto LABEL_1000;
            }

            if (type[0] == 17)
            {
              v235 = __nwlog_obj();
              v236 = type[0];
              if (!os_log_type_enabled(v235, type[0]))
              {
                goto LABEL_1000;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              v237 = "%{public}s called with null input_protocol";
              goto LABEL_999;
            }

            if (v529 != 1)
            {
              v235 = __nwlog_obj();
              v236 = type[0];
              if (!os_log_type_enabled(v235, type[0]))
              {
                goto LABEL_1000;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              v237 = "%{public}s called with null input_protocol, backtrace limit exceeded";
              goto LABEL_999;
            }

            v468 = __nw_create_backtrace_string();
            v235 = __nwlog_obj();
            v236 = type[0];
            v484 = os_log_type_enabled(v235, type[0]);
            if (!v468)
            {
              if (!v484)
              {
                goto LABEL_1000;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              v237 = "%{public}s called with null input_protocol, no backtrace";
              goto LABEL_999;
            }

            if (v484)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              *&buf[12] = 2082;
              *&buf[14] = v468;
              v470 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
              goto LABEL_908;
            }

LABEL_909:
            free(v468);
            if (!v234)
            {
              return;
            }

LABEL_1001:
            free(v234);
            return;
          }

          if (v226 != 3)
          {
            if (v226)
            {
              return;
            }

            v227 = *(v173 + 48);
            if (v227)
            {
              v208 = *(v227 + 40);
              if (v208)
              {
                nw_protocol_replace_input_handler(*(v173 + 32), v173, *(v227 + 40));
                *(v173 + 440) = v208;
                nw_protocol_set_output_handler(v173, 0);
                nw_protocol_set_input_handler(v173, 0);
                if ((*(v173 + 580) & 1) == 0)
                {
                  goto LABEL_480;
                }

                v209 = *(*(v173 + 440) + 32);
                v228 = *(v209 + 16);
                if (nw_protocol_http_messaging_identifier::onceToken != -1)
                {
                  dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                }

                if (nw_protocols_are_equal(v228, &nw_protocol_http_messaging_identifier::protocol_identifier))
                {
                  goto LABEL_364;
                }

                v211 = *(v209 + 16);
                if (nw_protocol_http3_identifier::onceToken == -1)
                {
                  goto LABEL_363;
                }

                goto LABEL_947;
              }

              goto LABEL_861;
            }

            v487 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            LODWORD(v509) = 12;
            v464 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v487, 16, "%{public}s called with null input_protocol", buf, v509);
            type[0] = 16;
            LOBYTE(v529) = 0;
            if (!__nwlog_fault(v464, type, &v529))
            {
              goto LABEL_1005;
            }

            if (type[0] != 17)
            {
              if (v529 == 1)
              {
                v492 = __nw_create_backtrace_string();
                v465 = __nwlog_obj();
                v466 = type[0];
                v480 = os_log_type_enabled(v465, type[0]);
                if (v492)
                {
                  if (v480)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v492;
                    _os_log_impl(&dword_181A37000, v465, v466, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v492);
LABEL_1005:
                  if (!v464)
                  {
                    goto LABEL_480;
                  }

LABEL_1006:
                  free(v464);
                  goto LABEL_480;
                }

                goto LABEL_995;
              }

LABEL_955:
              v465 = __nwlog_obj();
              v466 = type[0];
              if (!os_log_type_enabled(v465, type[0]))
              {
                goto LABEL_1005;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v467 = "%{public}s called with null input_protocol, backtrace limit exceeded";
              goto LABEL_1004;
            }

LABEL_932:
            v465 = __nwlog_obj();
            v466 = type[0];
            if (!os_log_type_enabled(v465, type[0]))
            {
              goto LABEL_1005;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v467 = "%{public}s called with null input_protocol";
            goto LABEL_1004;
          }

          v265 = *(v173 + 32);
          if (!v265)
          {
            v488 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            LODWORD(v509) = 12;
            v234 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v488, 16, "%{public}s called with null output_handler", buf, v509);
            type[0] = 16;
            LOBYTE(v529) = 0;
            if (!__nwlog_fault(v234, type, &v529))
            {
              goto LABEL_1000;
            }

            if (type[0] != 17)
            {
              if (v529 == 1)
              {
                v493 = __nw_create_backtrace_string();
                v235 = __nwlog_obj();
                v236 = type[0];
                v483 = os_log_type_enabled(v235, type[0]);
                if (v493)
                {
                  if (v483)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v493;
                    _os_log_impl(&dword_181A37000, v235, v236, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v493);
                  goto LABEL_1000;
                }

LABEL_997:
                if (!v483)
                {
                  goto LABEL_1000;
                }

                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                v237 = "%{public}s called with null output_handler, no backtrace";
                goto LABEL_999;
              }

LABEL_962:
              v235 = __nwlog_obj();
              v236 = type[0];
              if (!os_log_type_enabled(v235, type[0]))
              {
                goto LABEL_1000;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_session_http_get_input";
              v237 = "%{public}s called with null output_handler, backtrace limit exceeded";
              goto LABEL_999;
            }

LABEL_936:
            v235 = __nwlog_obj();
            v236 = type[0];
            if (!os_log_type_enabled(v235, type[0]))
            {
              goto LABEL_1000;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v237 = "%{public}s called with null output_handler";
            goto LABEL_999;
          }

          v266 = v265[3];
          if (!v266 || !*(v266 + 80))
          {
            goto LABEL_826;
          }

          for (j = 3; (j | 2) == 3; j = *(v173 + 476))
          {
            if (!nw_protocol_get_input_frames(v265, v173, 0, 0, 0xFFFFFFFFLL, v173 + 120))
            {
              return;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v543 = __Block_byref_object_copy__36471;
            *v544 = __Block_byref_object_dispose__36472;
            *&v544[8] = nw_protocol_copy_http_definition();
            v544[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            *&type[8] = 0x40000000;
            *&type[16] = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
            v538 = &unk_1E6A31940;
            v539 = buf;
            v540 = v173;
            v541 = v173 + 120;
            v268 = *(v173 + 120);
            do
            {
              if (!v268)
              {
                break;
              }

              v269 = *(v268 + 32);
              v270 = (*&type[16])(type);
              v268 = v269;
            }

            while ((v270 & 1) != 0);
            _Block_object_dispose(buf, 8);
            if ((v544[16] & 1) != 0 && *&v544[8])
            {
              os_release(*&v544[8]);
            }
          }

          v279 = *(v173 + 480);
          if (v279 == 1)
          {
            goto LABEL_474;
          }

          if (v279)
          {
            return;
          }

          if ((*(v173 + 580) & 2) == 0 && gLogDatapath == 1)
          {
            v506 = __nwlog_obj();
            if (os_log_type_enabled(v506, OS_LOG_TYPE_DEBUG))
            {
              v507 = *(v173 + 492);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2082;
              *&buf[14] = v173 + 496;
              *&buf[22] = 2080;
              v543 = " ";
              *v544 = 1024;
              *&v544[2] = v507;
              _os_log_impl(&dword_181A37000, v506, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          if (*(v173 + 476) != 4)
          {
            return;
          }

          v280 = (v173 + 96);
          while (1)
          {
            v382 = nw_http_capsule_framer_read_capsule((v173 + 96), v173);
            if (!v382 && !*(v173 + 136))
            {
              return;
            }

            if (*(v173 + 456))
            {
              goto LABEL_712;
            }

            v384 = *v280;
            if (*v280 == -1)
            {
LABEL_769:
              v398 = __nwlog_obj();
              if (os_log_type_enabled(v398, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2048;
                *&buf[14] = v384;
                _os_log_impl(&dword_181A37000, v398, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_712;
            }

            v385 = *(v173 + 104) != -1 && *(v173 + 112) == 0;
            if (v384 <= 16770303)
            {
              if ((v384 - 16770048) < 6 || (v384 + 1) <= 4 && v384)
              {
                goto LABEL_769;
              }
            }

            else if ((v384 - 420171065) <= 9 && ((1 << (v384 - 57)) & 0x2EF) != 0)
            {
              v536 = -1;
              if (nw_http_capsule_framer_parse_vle_value((v173 + 96), v173, &v536))
              {
                v397 = nw_webtransport_session_get_stream(v173, v536);
                if (v397)
                {
                  goto LABEL_763;
                }

                if ((v384 - 420171067) > 1)
                {
                  goto LABEL_794;
                }

                v405 = v536;
                v406 = *(v173 + 580);
                if (v536 >> 60 || ((v536 ^ v406) & 1) == 0)
                {
                  if ((v406 & 2) == 0)
                  {
                    v414 = __nwlog_obj();
                    if (os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
                    {
                      v415 = *(v173 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v173 + 496;
                      *&buf[22] = 2080;
                      v543 = " ";
                      *v544 = 1024;
                      *&v544[2] = v415;
                      v416 = v414;
                      v417 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                      goto LABEL_793;
                    }
                  }

LABEL_794:
                  if ((*(v173 + 580) & 2) == 0)
                  {
                    v418 = __nwlog_obj();
                    if (os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
                    {
                      v419 = *(v173 + 492);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                      *&buf[12] = 2082;
                      *&buf[14] = v173 + 496;
                      *&buf[22] = 2080;
                      v543 = " ";
                      *v544 = 1024;
                      *&v544[2] = v419;
                      *&v544[6] = 2048;
                      *&v544[8] = v536;
                      *&v544[16] = 2048;
                      *&v544[18] = v384;
                      _os_log_impl(&dword_181A37000, v418, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                    }
                  }

                  goto LABEL_712;
                }

                v407 = *(v173 + 424);
                if (!v407 || (v408 = *v407) == 0 || !*v408)
                {
                  if ((v406 & 2) == 0)
                  {
                    v420 = __nwlog_obj();
                    if (os_log_type_enabled(v420, OS_LOG_TYPE_ERROR))
                    {
                      v421 = *(v173 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v173 + 496;
                      *&buf[22] = 2080;
                      v543 = " ";
                      *v544 = 1024;
                      *&v544[2] = v421;
                      v416 = v420;
                      v417 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_793:
                      _os_log_impl(&dword_181A37000, v416, OS_LOG_TYPE_ERROR, v417, buf, 0x26u);
                    }
                  }

                  goto LABEL_794;
                }

                v409 = _nw_parameters_copy();
                *(v173 + 580) |= 0x20u;
                *(v173 + 176) = v405;
                v410 = (***(v173 + 424))(*(v173 + 424), *(v173 + 384), v409);
                *(v173 + 176) = -1;
                *(v173 + 580) &= ~0x20u;
                if (v410)
                {
                  v397 = nw_webtransport_session_get_stream(v173, v405);
                }

                else
                {
                  v397 = 0;
                }

                if (v409)
                {
                  os_release(v409);
                }

                if (!v397)
                {
                  goto LABEL_794;
                }

                if (*(v397 + 46) != 3)
                {
LABEL_763:
                  *(v173 + 456) = v397;
                  goto LABEL_712;
                }

                if ((*(v173 + 580) & 2) != 0)
                {
                  goto LABEL_712;
                }

                v422 = __nwlog_obj();
                if (!os_log_type_enabled(v422, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_712;
                }

                v423 = *(v173 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v173 + 496;
                *&buf[22] = 2080;
                v543 = " ";
                *v544 = 1024;
                *&v544[2] = v423;
                *&v544[6] = 2048;
                *&v544[8] = v536;
                v401 = v422;
                v402 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
              }

              else
              {
                if (!v385)
                {
                  goto LABEL_712;
                }

                if ((*(v173 + 580) & 2) != 0)
                {
                  goto LABEL_712;
                }

                v399 = __nwlog_obj();
                if (!os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_712;
                }

                v400 = *(v173 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v173 + 496;
                *&buf[22] = 2080;
                v543 = " ";
                *v544 = 1024;
                *&v544[2] = v400;
                *&v544[6] = 2048;
                *&v544[8] = v384;
                v401 = v399;
                v402 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
              }

              _os_log_impl(&dword_181A37000, v401, OS_LOG_TYPE_ERROR, v402, buf, 0x30u);
            }

            else if ((v384 - 16770304) < 4)
            {
              goto LABEL_769;
            }

LABEL_712:
            v383 = *(v173 + 96);
            if ((*(v173 + 580) & 2) == 0 && gLogDatapath == 1)
            {
              v424 = __nwlog_obj();
              if (os_log_type_enabled(v424, OS_LOG_TYPE_DEBUG))
              {
                v425 = *(v173 + 492);
                v426 = *(v173 + 104);
                *buf = 136447490;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = v173 + 496;
                *&buf[22] = 2080;
                v543 = " ";
                *v544 = 1024;
                *&v544[2] = v425;
                *&v544[6] = 2048;
                *&v544[8] = v383;
                *&v544[16] = 2048;
                *&v544[18] = v426;
                _os_log_impl(&dword_181A37000, v424, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
              }
            }

            if (v383 > 16770303)
            {
              if (v383 <= 420171064)
              {
                if ((v383 - 16770304) < 4)
                {
                  goto LABEL_731;
                }

                if (v383 == 420171064)
                {
                  goto LABEL_730;
                }

                goto LABEL_733;
              }

              if ((v383 - 420171065) >= 2)
              {
                if ((v383 - 420171067) < 2)
                {
                  v386 = *(v173 + 456);
                  v388 = v383 == 420171068 && v382;
                  v529 = MEMORY[0x1E69E9820];
                  v530 = 0x40000000;
                  v531 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                  v532 = &__block_descriptor_tmp_34_36485;
                  v535 = v388;
                  v533 = v173 + 96;
                  v534 = v386;
                  v389 = *(v173 + 136);
                  do
                  {
                    if (!v389)
                    {
                      break;
                    }

                    v390 = *(v389 + 32);
                    v391 = (v531)(&v529);
                    v389 = v390;
                  }

                  while ((v391 & 1) != 0);
                  if (!v388)
                  {
                    goto LABEL_789;
                  }

                  nw_protocol_input_finished(v386, v173);
                }

                goto LABEL_733;
              }

              if (v382)
              {
                v392 = *(v173 + 456);
                v536 = -1;
                if (nw_http_capsule_framer_parse_vle_value((v173 + 96), v173, &v536))
                {
                  if (!v392 || (*(v392 + 276) & 0x10) == 0)
                  {
                    v393 = __nwlog_obj();
                    if (os_log_type_enabled(v393, OS_LOG_TYPE_ERROR))
                    {
                      if (v392)
                      {
                        v394 = (v392 + 192);
                      }

                      else
                      {
                        v394 = "";
                      }

                      v395 = " ";
                      if (!v392)
                      {
                        v395 = "";
                      }

                      v396 = *(v392 + 88);
                      if (v396)
                      {
                        v379 = *(v396 + 492);
                      }

                      else
                      {
                        v379 = -1;
                      }

                      v380 = *(v392 + 64);
                      *buf = 136448002;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v394;
                      *&buf[22] = 2080;
                      v543 = v395;
                      *v544 = 1024;
                      *&v544[2] = v379;
                      *&v544[6] = 2048;
                      *&v544[8] = v380;
                      *&v544[16] = 2048;
                      *&v544[18] = v383;
                      *&v544[26] = 2048;
                      *&v544[28] = v380;
                      v545 = 2048;
                      v546 = v536;
                      _os_log_impl(&dword_181A37000, v393, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                    }
                  }

                  nw_protocol_webtransport_stream_error(v392, v173);
                  nw_protocol_webtransport_stream_disconnect(v392, v381);
                }

                else if ((*(v173 + 580) & 2) == 0)
                {
                  v403 = __nwlog_obj();
                  if (os_log_type_enabled(v403, OS_LOG_TYPE_ERROR))
                  {
                    v404 = *(v173 + 492);
                    *buf = 136447234;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2082;
                    *&buf[14] = v173 + 496;
                    *&buf[22] = 2080;
                    v543 = " ";
                    *v544 = 1024;
                    *&v544[2] = v404;
                    *&v544[6] = 2048;
                    *&v544[8] = v383;
                    _os_log_impl(&dword_181A37000, v403, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                  }
                }

LABEL_708:
                *(v173 + 456) = 0;
                nw_http_capsule_complete_capsule(v173 + 96);
              }
            }

            else
            {
              if (v383 <= 16770047)
              {
                if ((v383 - 1) < 3 || v383 == -1)
                {
LABEL_731:
                  v387 = __nwlog_obj();
                  if (os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2048;
                    *&buf[14] = v383;
                    _os_log_impl(&dword_181A37000, v387, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                  }

                  goto LABEL_733;
                }

                if (!v383)
                {
                  v386 = *(v173 + 448);
                  if (v386 && *(v386 + 184) != 3)
                  {
                    v523 = MEMORY[0x1E69E9820];
                    v524 = 0x40000000;
                    v525 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                    v526 = &__block_descriptor_tmp_35_36486;
                    v527 = v173 + 96;
                    v528 = v386;
                    v411 = *(v173 + 136);
                    do
                    {
                      if (!v411)
                      {
                        break;
                      }

                      v412 = *(v411 + 32);
                      v413 = (v525)(&v523);
                      v411 = v412;
                    }

                    while ((v413 & 1) != 0);
LABEL_789:
                    nw_protocol_input_available(v386, v173);
                    goto LABEL_733;
                  }

LABEL_730:
                  nw_frame_array_finalize(v173 + 136, 1, 1);
                }
              }

              else if ((v383 - 16770048) < 6)
              {
                goto LABEL_731;
              }

LABEL_733:
              if (v382)
              {
                goto LABEL_708;
              }
            }
          }
        }

        v216 = 1;
      }

      *(v173 + 480) = v216;
      goto LABEL_334;
    }

    v103 = __nwlog_obj();
    v104 = v101[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v543 = 1;
    *v544 = 2048;
    *&v544[2] = v104;
    v105 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = 16;
    LOBYTE(v529) = 0;
    if (__nwlog_fault(v105, type, &v529))
    {
      if (type[0] == 17)
      {
        v106 = __nwlog_obj();
        v107 = type[0];
        if (os_log_type_enabled(v106, type[0]))
        {
          v108 = v101[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v543 = 1;
          *v544 = 2048;
          *&v544[2] = v108;
          v109 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_274:
          _os_log_impl(&dword_181A37000, v106, v107, v109, buf, 0x2Au);
        }
      }

      else if (v529 == 1)
      {
        v135 = __nw_create_backtrace_string();
        v106 = __nwlog_obj();
        v107 = type[0];
        v136 = os_log_type_enabled(v106, type[0]);
        if (v135)
        {
          if (v136)
          {
            v137 = v101[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v543 = 1;
            *v544 = 2048;
            *&v544[2] = v137;
            *&v544[10] = 2082;
            *&v544[12] = v135;
            _os_log_impl(&dword_181A37000, v106, v107, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v135);
          goto LABEL_275;
        }

        if (v136)
        {
          v187 = v101[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v543 = 1;
          *v544 = 2048;
          *&v544[2] = v187;
          v109 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_274;
        }
      }

      else
      {
        v106 = __nwlog_obj();
        v107 = type[0];
        if (os_log_type_enabled(v106, type[0]))
        {
          v163 = v101[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v543 = 1;
          *v544 = 2048;
          *&v544[2] = v163;
          v109 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_274;
        }
      }
    }

LABEL_275:
    if (v105)
    {
      free(v105);
    }

    v101[2] = 0;
    goto LABEL_278;
  }

LABEL_8:
  v4 = nw_parameters_copy_protocol_options_legacy(*(a1 + 368), a1);
  v5 = v4;
  if (!v4)
  {
    v238 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_options_copy_request_fields";
    v239 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v238, 16, "%{public}s called with null options", buf, 12);

    type[0] = 16;
    LOBYTE(v529) = 0;
    if (!__nwlog_fault(v239, type, &v529))
    {
      goto LABEL_487;
    }

    if (type[0] == 17)
    {
      v240 = __nwlog_obj();
      v241 = type[0];
      if (os_log_type_enabled(v240, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v240, v241, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v529 == 1)
    {
      v259 = __nw_create_backtrace_string();
      v240 = __nwlog_obj();
      v260 = type[0];
      v261 = os_log_type_enabled(v240, type[0]);
      if (v259)
      {
        if (v261)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_options_copy_request_fields";
          *&buf[12] = 2082;
          *&buf[14] = v259;
          _os_log_impl(&dword_181A37000, v240, v260, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v259);
        if (!v239)
        {
          goto LABEL_489;
        }

        goto LABEL_488;
      }

      if (v261)
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v240, v260, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v240 = __nwlog_obj();
      v273 = type[0];
      if (os_log_type_enabled(v240, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v240, v273, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_486;
  }

  v6 = v4;
  if (nw_protocol_copy_webtransport_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
  }

  v7 = nw_protocol_options_matches_definition(v6, nw_protocol_copy_webtransport_definition::definition);

  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v543 = __Block_byref_object_copy__63087;
    *v544 = __Block_byref_object_dispose__63088;
    *&v544[8] = 0;
    *type = MEMORY[0x1E69E9820];
    *&type[8] = 3221225472;
    *&type[16] = __nw_webtransport_options_copy_request_fields_block_invoke;
    v538 = &unk_1E6A3A858;
    v539 = buf;
    nw_protocol_options_access_handle(v6, type);
    v8 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_13;
  }

  v242 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_webtransport_options_copy_request_fields";
  v239 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v242, 16, "%{public}s protocol options are not webtransport", buf, 12);

  type[0] = 16;
  LOBYTE(v529) = 0;
  if (__nwlog_fault(v239, type, &v529))
  {
    if (type[0] == 17)
    {
      v240 = __nwlog_obj();
      v243 = type[0];
      if (os_log_type_enabled(v240, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v240, v243, "%{public}s protocol options are not webtransport", buf, 0xCu);
      }

LABEL_486:

      goto LABEL_487;
    }

    if (v529 != 1)
    {
      v240 = __nwlog_obj();
      v274 = type[0];
      if (os_log_type_enabled(v240, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v240, v274, "%{public}s protocol options are not webtransport, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_486;
    }

    v262 = __nw_create_backtrace_string();
    v240 = __nwlog_obj();
    v263 = type[0];
    v264 = os_log_type_enabled(v240, type[0]);
    if (!v262)
    {
      if (v264)
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v240, v263, "%{public}s protocol options are not webtransport, no backtrace", buf, 0xCu);
      }

      goto LABEL_486;
    }

    if (v264)
    {
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_options_copy_request_fields";
      *&buf[12] = 2082;
      *&buf[14] = v262;
      _os_log_impl(&dword_181A37000, v240, v263, "%{public}s protocol options are not webtransport, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v262);
  }

LABEL_487:
  if (v239)
  {
LABEL_488:
    free(v239);
  }

LABEL_489:
  v8 = 0;
LABEL_13:

  v512 = nw_parameters_copy_url_endpoint(*(a1 + 368));
  url = nw_endpoint_get_url(v512);
  v10 = nw_http_request_create_from_url("CONNECT", url);
  nw_http_request_set_extended_connect_protocol(v10);
  if (v8)
  {
    nw_http_request_set_header_fields(v10, v8);
  }

  v511 = v8;
  metadata_for_request = nw_http_create_metadata_for_request(v10);
  v12 = *(a1 + 32);
  if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v244 = __nwlog_obj();
    if (os_log_type_enabled(v244, OS_LOG_TYPE_DEBUG))
    {
      v245 = *(a1 + 492);
      *type = 136446978;
      *&type[4] = "nw_webtransport_session_send_metadata";
      *&type[12] = 2082;
      *&type[14] = a1 + 496;
      *&type[22] = 2080;
      v538 = " ";
      LOWORD(v539) = 1024;
      *(&v539 + 2) = v245;
      _os_log_impl(&dword_181A37000, v244, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", type, 0x26u);
    }
  }

  v529 = 0;
  v530 = &v529;
  output_frames = nw_protocol_get_output_frames(v12, a1, 0, 0, 1, &v529);
  if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v246 = output_frames;
    v247 = __nwlog_obj();
    v248 = os_log_type_enabled(v247, OS_LOG_TYPE_DEBUG);
    output_frames = v246;
    if (v248)
    {
      v249 = *(a1 + 492);
      *type = 136447234;
      *&type[4] = "nw_webtransport_session_send_metadata";
      *&type[12] = 2082;
      *&type[14] = a1 + 496;
      *&type[22] = 2080;
      v538 = " ";
      LOWORD(v539) = 1024;
      *(&v539 + 2) = v249;
      HIWORD(v539) = 1024;
      LODWORD(v540) = v246;
      _os_log_impl(&dword_181A37000, v247, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got %u output frames", type, 0x2Cu);
      output_frames = v246;
    }
  }

  if (!output_frames)
  {
    v19 = *(a1 + 580);
    goto LABEL_42;
  }

  *type = 0;
  *&type[8] = type;
  *&type[16] = 0x2000000000;
  LOBYTE(v538) = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL37nw_webtransport_session_send_metadataP23nw_webtransport_sessionP20nw_protocol_metadataP11nw_protocol_block_invoke;
  v543 = &unk_1E6A31918;
  *v544 = type;
  *&v544[8] = &v529;
  *&v544[16] = a1;
  *&v544[24] = metadata_for_request;
  v14 = metadata_for_request;
  v15 = v529;
  do
  {
    if (!v15)
    {
      break;
    }

    v16 = *(v15 + 32);
    v17 = (*&buf[16])(buf);
    v15 = v16;
  }

  while ((v17 & 1) != 0);
  v18 = nw_protocol_finalize_output_frames(v12, &v529);
  _Block_object_dispose(type, 8);
  v19 = *(a1 + 580);
  if ((v18 & 1) == 0)
  {
    metadata_for_request = v14;
LABEL_42:
    v33 = *(a1 + 476);
    if (v33 == 5)
    {
      if ((v19 & 2) != 0)
      {
        goto LABEL_456;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_456;
      }

      v35 = *(a1 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 496;
      *&buf[22] = 2080;
      v543 = " ";
      *v544 = 1024;
      *&v544[2] = v35;
      v36 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
      v37 = v34;
      v38 = OS_LOG_TYPE_INFO;
LABEL_46:
      _os_log_impl(&dword_181A37000, v37, v38, v36, buf, 0x26u);
      if (!metadata_for_request)
      {
        goto LABEL_458;
      }

      goto LABEL_457;
    }

    if ((v19 & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v39 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 496;
        *&buf[22] = 2080;
        v543 = " ";
        *v544 = 1024;
        *&v544[2] = v40;
        *&v544[6] = 1024;
        *&v544[8] = 12;
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
      }

      v33 = *(a1 + 476);
    }

    v510 = metadata_for_request;
    *(a1 + 476) = 5;
    v41 = *(a1 + 192);
    if (v41)
    {
      v513 = MEMORY[0x1E69E9820];
      v514 = 0x40000000;
      v515 = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
      v516 = &__block_descriptor_tmp_24_36439;
      v517 = 12;
      nw_hash_table_apply(v41, &v513);
    }

    v42 = *(a1 + 448);
    if (v42)
    {
      v43 = *(v42 + 88);
      nw_protocol_error(*(v42 + 48), *(a1 + 448));
      nw_protocol_disconnect(v42, v43);
    }

    v44 = *(a1 + 336);
    if (v44)
    {
      do
      {
        v45 = *(v44 + 112);
        v46 = *(v44 + 88);
        nw_protocol_error(*(v44 + 48), v44);
        nw_protocol_disconnect(v44, v46);
        v44 = v45;
      }

      while (v45);
    }

    v47 = *(a1 + 440);
    if (v47)
    {
      v48 = *(v47 + 88);
      nw_protocol_error(*(v47 + 48), *(a1 + 440));
      nw_protocol_disconnect(v47, v48);
    }

    metadata_for_request = v510;
    if (*(a1 + 32))
    {
      nw_protocol_remove_instance(a1);
      nw_protocol_disconnect(*(a1 + 32), a1);
    }

    v49 = *(a1 + 400);
    if (!v49 || (v50 = nw_http_connection_metadata_get_webtransport_state(v49)) == 0 || (v51 = v50, v33 != 4) && v33 != 1)
    {
LABEL_456:
      if (!metadata_for_request)
      {
        goto LABEL_458;
      }

      goto LABEL_457;
    }

    v52 = *(v50 + 16);
    *(v50 + 16) = v52 - 1;
    if (v52)
    {
LABEL_147:
      if (*(a1 + 580))
      {
        goto LABEL_456;
      }

      v121 = *v51;
      if (!*v51)
      {
        goto LABEL_456;
      }

      v122 = *(v121 + 352);
      v123 = *(v121 + 360);
      v124 = (v122 + 360);
      if (!v122)
      {
        v124 = v51 + 1;
      }

      *v124 = v123;
      *v123 = v122;
      *(v121 + 352) = 0;
      *(v121 + 360) = 0;
      v125 = *(v121 + 32);
      if (!v125 || *(v121 + 480) != 2)
      {
        goto LABEL_198;
      }

      v126 = v125[2];
      if (nw_protocol_http2_identifier::onceToken != -1)
      {
        v427 = v125[2];
        dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
        v126 = v427;
      }

      if (!nw_protocols_are_equal(v126, &nw_protocol_http2_identifier::http2_protocol_identifier))
      {
        v127 = v125[2];
        if (nw_protocol_http3_identifier::onceToken != -1)
        {
          v429 = v125[2];
          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
          v127 = v429;
        }

        if (!nw_protocols_are_equal(v127, &nw_protocol_http3_identifier::http3_protocol_identifier))
        {
          v128 = v125[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v431 = v125[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v128 = v431;
          }

          if (!nw_protocols_are_equal(v128, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
LABEL_198:
            v149 = *(v121 + 480);
            if (v149 > 1)
            {
              if ((*(v121 + 580) & 2) != 0)
              {
                goto LABEL_456;
              }

              v150 = __nwlog_obj();
              if (!os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_456;
              }

              v151 = *(v121 + 492);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v121 + 496;
              *&buf[22] = 2080;
              v543 = " ";
              *v544 = 1024;
              *&v544[2] = v151;
              v36 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
              v37 = v150;
              v38 = OS_LOG_TYPE_ERROR;
              goto LABEL_46;
            }

            if ((*(v121 + 580) & 1) == 0)
            {
              if (*(v121 + 476))
              {
                goto LABEL_456;
              }

              nw_webtransport_http_send_connect(v121);
              if (!metadata_for_request)
              {
                goto LABEL_458;
              }

              goto LABEL_457;
            }

            v152 = *(v121 + 476);
            if (v149 == 1)
            {
              if (v152 != 3)
              {
                if (v152)
                {
                  goto LABEL_456;
                }

                v153 = *(v121 + 48);
                if (v153)
                {
                  v154 = *(v153 + 40);
                  if (v154)
                  {
                    nw_protocol_replace_input_handler(*(v121 + 32), v121, *(v153 + 40));
                    *(v121 + 440) = v154;
                    nw_protocol_set_output_handler(v121, 0);
                    nw_protocol_set_input_handler(v121, 0);
                    if ((*(v121 + 580) & 1) == 0)
                    {
                      goto LABEL_455;
                    }

                    v155 = *(*(v121 + 440) + 32);
                    v156 = *(v155 + 16);
                    if (nw_protocol_http_messaging_identifier::onceToken != -1)
                    {
                      v474 = *(v155 + 16);
                      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                      v156 = v474;
                    }

                    if (!nw_protocols_are_equal(v156, &nw_protocol_http_messaging_identifier::protocol_identifier))
                    {
                      v157 = *(v155 + 16);
                      if (nw_protocol_http3_identifier::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                      }

                      metadata_for_request = v510;
                      if (!nw_protocols_are_equal(v157, &nw_protocol_http3_identifier::http3_protocol_identifier))
                      {
                        goto LABEL_455;
                      }
                    }

                    v158 = *(v121 + 368);
                    if (!v158)
                    {
                      goto LABEL_455;
                    }

                    v159 = nw_parameters_copy_protocol_options_legacy(v158, v155);
                    if (v159)
                    {
                      v160 = v159;
                      if ((*(v154 + 276) & 0x10) == 0 && gLogDatapath == 1)
                      {
                        v489 = __nwlog_obj();
                        if (os_log_type_enabled(v489, OS_LOG_TYPE_DEBUG))
                        {
                          v490 = *(v154 + 88);
                          if (v490)
                          {
                            v491 = *(v490 + 492);
                          }

                          else
                          {
                            v491 = -1;
                          }

                          v505 = *(v154 + 64);
                          *buf = 136447490;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = v154 + 192;
                          *&buf[22] = 2080;
                          v543 = " ";
                          *v544 = 1024;
                          *&v544[2] = v491;
                          *&v544[6] = 2048;
                          *&v544[8] = v505;
                          *&v544[16] = 2048;
                          *&v544[18] = v160;
                          _os_log_impl(&dword_181A37000, v489, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                        }
                      }

                      nw_http3_set_stream_mode(v160, 0);
                      os_release(v160);
                    }

                    else
                    {
                      if ((*(v121 + 580) & 2) == 0 && gLogDatapath == 1)
                      {
                        v496 = __nwlog_obj();
                        if (os_log_type_enabled(v496, OS_LOG_TYPE_DEBUG))
                        {
                          v497 = *(v121 + 492);
                          *buf = 136446978;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = v121 + 496;
                          *&buf[22] = 2080;
                          v543 = " ";
                          *v544 = 1024;
                          *&v544[2] = v497;
                          _os_log_impl(&dword_181A37000, v496, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                        }
                      }

                      v278 = *(v154 + 88);
                      nw_protocol_error(*(v154 + 48), v154);
                      nw_protocol_disconnect(v154, v278);
                    }

LABEL_454:
                    metadata_for_request = v510;
LABEL_455:
                    *(v121 + 476) = 2;
                    goto LABEL_456;
                  }

                  v454 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                  LODWORD(v509) = 12;
                  v449 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v454, 16, "%{public}s called with null webtransport_stream", buf, v509);
                  type[0] = 16;
                  LOBYTE(v529) = 0;
                  if (!__nwlog_fault(v449, type, &v529))
                  {
                    goto LABEL_984;
                  }

                  if (type[0] == 17)
                  {
                    v450 = __nwlog_obj();
                    v451 = type[0];
                    if (!os_log_type_enabled(v450, type[0]))
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v452 = "%{public}s called with null webtransport_stream";
                    goto LABEL_983;
                  }

                  if (v529 != 1)
                  {
                    v450 = __nwlog_obj();
                    v451 = type[0];
                    if (!os_log_type_enabled(v450, type[0]))
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v452 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_983;
                  }

                  v475 = __nw_create_backtrace_string();
                  v450 = __nwlog_obj();
                  v451 = type[0];
                  v476 = os_log_type_enabled(v450, type[0]);
                  if (v475)
                  {
                    if (v476)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v475;
                      _os_log_impl(&dword_181A37000, v450, v451, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v475);
                    if (!v449)
                    {
                      goto LABEL_454;
                    }

                    goto LABEL_985;
                  }

                  if (v476)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v452 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_983:
                    _os_log_impl(&dword_181A37000, v450, v451, v452, buf, 0xCu);
                  }
                }

                else
                {
                  v448 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                  LODWORD(v509) = 12;
                  v449 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v448, 16, "%{public}s called with null input_protocol", buf, v509);
                  type[0] = 16;
                  LOBYTE(v529) = 0;
                  if (!__nwlog_fault(v449, type, &v529))
                  {
                    goto LABEL_984;
                  }

                  if (type[0] == 17)
                  {
                    v450 = __nwlog_obj();
                    v451 = type[0];
                    if (!os_log_type_enabled(v450, type[0]))
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v452 = "%{public}s called with null input_protocol";
                    goto LABEL_983;
                  }

                  if (v529 != 1)
                  {
                    v450 = __nwlog_obj();
                    v451 = type[0];
                    if (!os_log_type_enabled(v450, type[0]))
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v452 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_983;
                  }

                  v471 = __nw_create_backtrace_string();
                  v450 = __nwlog_obj();
                  v451 = type[0];
                  v472 = os_log_type_enabled(v450, type[0]);
                  if (!v471)
                  {
                    if (!v472)
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v452 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_983;
                  }

                  if (v472)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v471;
                    _os_log_impl(&dword_181A37000, v450, v451, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v471);
                }

LABEL_984:
                if (!v449)
                {
                  goto LABEL_454;
                }

LABEL_985:
                free(v449);
                goto LABEL_454;
              }

              v166 = *(v121 + 32);
              if (v166)
              {
                v167 = v166[3];
                if (v167 && *(v167 + 80))
                {
                  for (k = 3; ; k = *(v121 + 476))
                  {
                    metadata_for_request = v510;
                    if ((k | 2) != 3)
                    {
                      break;
                    }

                    if (!nw_protocol_get_input_frames(v166, v121, 0, 0, 0xFFFFFFFFLL, v121 + 120))
                    {
                      goto LABEL_456;
                    }

                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v543 = __Block_byref_object_copy__36471;
                    *v544 = __Block_byref_object_dispose__36472;
                    *&v544[8] = nw_protocol_copy_http_definition();
                    v544[16] |= 1u;
                    *type = MEMORY[0x1E69E9820];
                    *&type[8] = 0x40000000;
                    *&type[16] = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                    v538 = &unk_1E6A31940;
                    v539 = buf;
                    v540 = v121;
                    v541 = v121 + 120;
                    v169 = *(v121 + 120);
                    do
                    {
                      if (!v169)
                      {
                        break;
                      }

                      v170 = *(v169 + 32);
                      v171 = (*&type[16])(type);
                      v169 = v170;
                    }

                    while ((v171 & 1) != 0);
                    _Block_object_dispose(buf, 8);
                    if ((v544[16] & 1) != 0 && *&v544[8])
                    {
                      os_release(*&v544[8]);
                    }
                  }

                  v250 = *(v121 + 480);
                  if (v250 == 1)
                  {
                    nw_webtransport_http3_handle_input(v121);
                    v275 = *(v121 + 448);
                    if (!v275 || !*(v275 + 72))
                    {
                      goto LABEL_456;
                    }

                    nw_protocol_input_available(*(v275 + 48), v275);
                    if (!v510)
                    {
                      goto LABEL_458;
                    }

LABEL_457:
                    os_release(metadata_for_request);
                    goto LABEL_458;
                  }

                  if (v250)
                  {
                    goto LABEL_456;
                  }

                  if ((*(v121 + 580) & 2) == 0 && gLogDatapath == 1)
                  {
                    v494 = __nwlog_obj();
                    if (os_log_type_enabled(v494, OS_LOG_TYPE_DEBUG))
                    {
                      v495 = *(v121 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v121 + 496;
                      *&buf[22] = 2080;
                      v543 = " ";
                      *v544 = 1024;
                      *&v544[2] = v495;
                      _os_log_impl(&dword_181A37000, v494, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                    }
                  }

                  if (*(v121 + 476) == 4)
                  {
                    v251 = (v121 + 96);
                    v252 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    while (1)
                    {
                      v286 = nw_http_capsule_framer_read_capsule((v121 + 96), v121);
                      if (!v286 && !*(v121 + 136))
                      {
                        break;
                      }

                      if (!*(v121 + 456))
                      {
                        v288 = *v251;
                        if (*v251 == -1)
                        {
                          goto LABEL_553;
                        }

                        v289 = *(v121 + 104) != -1 && *(v121 + 112) == 0;
                        if (v288 <= 16770303)
                        {
                          v252 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          if ((v288 - 16770048) >= 6 && ((v288 + 1) > 4 || !v288))
                          {
                            goto LABEL_498;
                          }

LABEL_553:
                          v302 = __nwlog_obj();
                          if (os_log_type_enabled(v302, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                            *&buf[12] = 2048;
                            *&buf[14] = v288;
                            _os_log_impl(&dword_181A37000, v302, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                          }

                          goto LABEL_498;
                        }

                        if ((v288 - 420171065) <= 9 && ((1 << (v288 - 57)) & 0x2EF) != 0)
                        {
                          v536 = -1;
                          if ((nw_http_capsule_framer_parse_vle_value((v121 + 96), v121, &v536) & 1) == 0)
                          {
                            if (v289 && (*(v121 + 580) & 2) == 0)
                            {
                              v329 = __nwlog_obj();
                              if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
                              {
                                v330 = *(v121 + 492);
                                *buf = 136447234;
                                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                *&buf[12] = 2082;
                                *&buf[14] = v121 + 496;
                                *&buf[22] = 2080;
                                v543 = " ";
                                *v544 = 1024;
                                *&v544[2] = v330;
                                *&v544[6] = 2048;
                                *&v544[8] = v288;
                                v324 = v329;
                                v325 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
LABEL_593:
                                _os_log_impl(&dword_181A37000, v324, OS_LOG_TYPE_ERROR, v325, buf, 0x30u);
                              }
                            }

LABEL_556:
                            v252 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                            goto LABEL_498;
                          }

                          v301 = nw_webtransport_session_get_stream(v121, v536);
                          if (v301)
                          {
                            goto LABEL_547;
                          }

                          if ((v288 - 420171067) <= 1)
                          {
                            v305 = v536;
                            v306 = *(v121 + 580);
                            if (v536 >> 60 || ((v536 ^ v306) & 1) == 0)
                            {
                              if ((v306 & 2) != 0)
                              {
                                goto LABEL_579;
                              }

                              v314 = __nwlog_obj();
                              if (!os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_579;
                              }

                              v315 = *(v121 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v121 + 496;
                              *&buf[22] = 2080;
                              v543 = " ";
                              *v544 = 1024;
                              *&v544[2] = v315;
                              v316 = v314;
                              v317 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                            }

                            else
                            {
                              v307 = *(v121 + 424);
                              if (v307)
                              {
                                v308 = *v307;
                                if (v308)
                                {
                                  if (*v308)
                                  {
                                    v309 = _nw_parameters_copy();
                                    *(v121 + 580) |= 0x20u;
                                    *(v121 + 176) = v305;
                                    v310 = (***(v121 + 424))(*(v121 + 424), *(v121 + 384), v309);
                                    *(v121 + 176) = -1;
                                    *(v121 + 580) &= ~0x20u;
                                    if (v310)
                                    {
                                      v301 = nw_webtransport_session_get_stream(v121, v305);
                                    }

                                    else
                                    {
                                      v301 = 0;
                                    }

                                    if (v309)
                                    {
                                      os_release(v309);
                                    }

                                    if (v301)
                                    {
                                      if (*(v301 + 46) == 3)
                                      {
                                        if ((*(v121 + 580) & 2) == 0)
                                        {
                                          v322 = __nwlog_obj();
                                          if (os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
                                          {
                                            v323 = *(v121 + 492);
                                            *buf = 136447234;
                                            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                            *&buf[12] = 2082;
                                            *&buf[14] = v121 + 496;
                                            *&buf[22] = 2080;
                                            v543 = " ";
                                            *v544 = 1024;
                                            *&v544[2] = v323;
                                            *&v544[6] = 2048;
                                            *&v544[8] = v536;
                                            v324 = v322;
                                            v325 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                                            goto LABEL_593;
                                          }
                                        }
                                      }

                                      else
                                      {
LABEL_547:
                                        *(v121 + 456) = v301;
                                      }

                                      goto LABEL_556;
                                    }

                                    goto LABEL_579;
                                  }
                                }
                              }

                              if ((v306 & 2) != 0)
                              {
                                goto LABEL_579;
                              }

                              v320 = __nwlog_obj();
                              if (!os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_579;
                              }

                              v321 = *(v121 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v121 + 496;
                              *&buf[22] = 2080;
                              v543 = " ";
                              *v544 = 1024;
                              *&v544[2] = v321;
                              v316 = v320;
                              v317 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
                            }

                            _os_log_impl(&dword_181A37000, v316, OS_LOG_TYPE_ERROR, v317, buf, 0x26u);
                          }

LABEL_579:
                          if ((*(v121 + 580) & 2) == 0)
                          {
                            v318 = __nwlog_obj();
                            if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
                            {
                              v319 = *(v121 + 492);
                              *buf = 136447490;
                              *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                              *&buf[12] = 2082;
                              *&buf[14] = v121 + 496;
                              *&buf[22] = 2080;
                              v543 = " ";
                              *v544 = 1024;
                              *&v544[2] = v319;
                              *&v544[6] = 2048;
                              *&v544[8] = v536;
                              *&v544[16] = 2048;
                              *&v544[18] = v288;
                              _os_log_impl(&dword_181A37000, v318, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                            }
                          }

                          goto LABEL_556;
                        }

                        v252 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        if ((v288 - 16770304) < 4)
                        {
                          goto LABEL_553;
                        }
                      }

LABEL_498:
                      v287 = *(v121 + 96);
                      if ((*(v121 + 580) & 2) == 0 && BYTE1(v252[82].isa) == 1)
                      {
                        v326 = __nwlog_obj();
                        if (os_log_type_enabled(v326, OS_LOG_TYPE_DEBUG))
                        {
                          v327 = *(v121 + 492);
                          v328 = *(v121 + 104);
                          *buf = 136447490;
                          *&buf[4] = "nw_webtransport_http2_handle_capsules";
                          *&buf[12] = 2082;
                          *&buf[14] = v121 + 496;
                          *&buf[22] = 2080;
                          v543 = " ";
                          *v544 = 1024;
                          *&v544[2] = v327;
                          *&v544[6] = 2048;
                          *&v544[8] = v287;
                          *&v544[16] = 2048;
                          *&v544[18] = v328;
                          _os_log_impl(&dword_181A37000, v326, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                        }
                      }

                      if (v287 <= 16770303)
                      {
                        if (v287 <= 16770047)
                        {
                          if ((v287 - 1) < 3 || v287 == -1)
                          {
                            goto LABEL_517;
                          }

                          if (!v287)
                          {
                            v290 = *(v121 + 448);
                            if (!v290 || *(v290 + 184) == 3)
                            {
                              nw_frame_array_finalize(v121 + 136, 1, 1);
LABEL_572:
                              v252 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                              goto LABEL_573;
                            }

                            v523 = MEMORY[0x1E69E9820];
                            v524 = 0x40000000;
                            v525 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                            v526 = &__block_descriptor_tmp_35_36486;
                            v527 = v121 + 96;
                            v528 = v290;
                            v311 = *(v121 + 136);
                            do
                            {
                              if (!v311)
                              {
                                break;
                              }

                              v312 = *(v311 + 32);
                              v313 = (v525)(&v523);
                              v311 = v312;
                            }

                            while ((v313 & 1) != 0);
                            goto LABEL_571;
                          }
                        }

                        else if ((v287 - 16770048) < 6)
                        {
                          goto LABEL_517;
                        }

                        goto LABEL_573;
                      }

                      if (v287 <= 420171064)
                      {
                        if ((v287 - 16770304) >= 4)
                        {
                          if (v287 == 420171064)
                          {
                            nw_frame_array_finalize(v121 + 136, 1, 1);
                          }

                          goto LABEL_573;
                        }

LABEL_517:
                        v291 = __nwlog_obj();
                        if (os_log_type_enabled(v291, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http2_handle_capsules";
                          *&buf[12] = 2048;
                          *&buf[14] = v287;
                          _os_log_impl(&dword_181A37000, v291, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                        }

                        goto LABEL_573;
                      }

                      if ((v287 - 420171065) < 2)
                      {
                        if (v286)
                        {
                          v296 = *(v121 + 456);
                          v536 = -1;
                          if (nw_http_capsule_framer_parse_vle_value((v121 + 96), v121, &v536))
                          {
                            if (!v296 || (*(v296 + 276) & 0x10) == 0)
                            {
                              v297 = __nwlog_obj();
                              if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
                              {
                                if (v296)
                                {
                                  v298 = (v296 + 192);
                                }

                                else
                                {
                                  v298 = "";
                                }

                                v299 = " ";
                                if (!v296)
                                {
                                  v299 = "";
                                }

                                v300 = *(v296 + 88);
                                if (v300)
                                {
                                  v283 = *(v300 + 492);
                                }

                                else
                                {
                                  v283 = -1;
                                }

                                v284 = *(v296 + 64);
                                *buf = 136448002;
                                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                *&buf[12] = 2082;
                                *&buf[14] = v298;
                                *&buf[22] = 2080;
                                v543 = v299;
                                *v544 = 1024;
                                *&v544[2] = v283;
                                *&v544[6] = 2048;
                                *&v544[8] = v284;
                                *&v544[16] = 2048;
                                *&v544[18] = v287;
                                *&v544[26] = 2048;
                                *&v544[28] = v284;
                                v545 = 2048;
                                v546 = v536;
                                _os_log_impl(&dword_181A37000, v297, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                              }
                            }

                            nw_protocol_webtransport_stream_error(v296, v121);
                            nw_protocol_webtransport_stream_disconnect(v296, v285);
                          }

                          else if ((*(v121 + 580) & 2) == 0)
                          {
                            v303 = __nwlog_obj();
                            if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
                            {
                              v304 = *(v121 + 492);
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = v121 + 496;
                              *&buf[22] = 2080;
                              v543 = " ";
                              *v544 = 1024;
                              *&v544[2] = v304;
                              *&v544[6] = 2048;
                              *&v544[8] = v287;
                              _os_log_impl(&dword_181A37000, v303, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                            }
                          }

                          v252 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_494:
                          *(v121 + 456) = 0;
                          nw_http_capsule_complete_capsule(v121 + 96);
                        }
                      }

                      else
                      {
                        if ((v287 - 420171067) < 2)
                        {
                          v290 = *(v121 + 456);
                          v292 = v287 == 420171068 && v286;
                          v529 = MEMORY[0x1E69E9820];
                          v530 = 0x40000000;
                          v531 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                          v532 = &__block_descriptor_tmp_34_36485;
                          v535 = v292;
                          v533 = v121 + 96;
                          v534 = v290;
                          v293 = *(v121 + 136);
                          do
                          {
                            if (!v293)
                            {
                              break;
                            }

                            v294 = *(v293 + 32);
                            v295 = (v531)(&v529);
                            v293 = v294;
                          }

                          while ((v295 & 1) != 0);
                          if (v292)
                          {
                            nw_protocol_input_finished(v290, v121);
                            goto LABEL_572;
                          }

LABEL_571:
                          nw_protocol_input_available(v290, v121);
                          goto LABEL_572;
                        }

LABEL_573:
                        if (v286)
                        {
                          goto LABEL_494;
                        }
                      }
                    }
                  }

LABEL_979:
                  metadata_for_request = v510;
                  if (!v510)
                  {
                    goto LABEL_458;
                  }

                  goto LABEL_457;
                }

                if ((*(v121 + 580) & 2) == 0)
                {
                  v432 = __nwlog_obj();
                  if (os_log_type_enabled(v432, OS_LOG_TYPE_ERROR))
                  {
                    v433 = *(v121 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v121 + 496;
                    *&buf[22] = 2080;
                    v543 = " ";
                    *v544 = 1024;
                    *&v544[2] = v433;
                    _os_log_impl(&dword_181A37000, v432, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                  }
                }

                v434 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                LODWORD(v509) = 12;
                v435 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v434, 16, "%{public}s output handler has no get_input_frames callback", buf, v509);
                type[0] = 16;
                LOBYTE(v529) = 0;
                if (!__nwlog_fault(v435, type, &v529))
                {
LABEL_977:
                  if (v435)
                  {
                    free(v435);
                  }

                  goto LABEL_979;
                }

                if (type[0] == 17)
                {
                  v436 = __nwlog_obj();
                  v437 = type[0];
                  if (!os_log_type_enabled(v436, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v438 = "%{public}s output handler has no get_input_frames callback";
LABEL_976:
                  _os_log_impl(&dword_181A37000, v436, v437, v438, buf, 0xCu);
                  goto LABEL_977;
                }

                if (v529 != 1)
                {
                  v436 = __nwlog_obj();
                  v437 = type[0];
                  if (!os_log_type_enabled(v436, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v438 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                  goto LABEL_976;
                }

                v455 = __nw_create_backtrace_string();
                v436 = __nwlog_obj();
                v437 = type[0];
                v456 = os_log_type_enabled(v436, type[0]);
                if (!v455)
                {
                  if (!v456)
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v438 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                  goto LABEL_976;
                }

                if (v456)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v455;
                  v457 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_878:
                  _os_log_impl(&dword_181A37000, v436, v437, v457, buf, 0x16u);
                }
              }

              else
              {
                v453 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                LODWORD(v509) = 12;
                v435 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v453, 16, "%{public}s called with null output_handler", buf, v509);
                type[0] = 16;
                LOBYTE(v529) = 0;
                if (!__nwlog_fault(v435, type, &v529))
                {
                  goto LABEL_977;
                }

                if (type[0] == 17)
                {
                  v436 = __nwlog_obj();
                  v437 = type[0];
                  if (!os_log_type_enabled(v436, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v438 = "%{public}s called with null output_handler";
                  goto LABEL_976;
                }

                if (v529 != 1)
                {
                  v436 = __nwlog_obj();
                  v437 = type[0];
                  if (!os_log_type_enabled(v436, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v438 = "%{public}s called with null output_handler, backtrace limit exceeded";
                  goto LABEL_976;
                }

                v455 = __nw_create_backtrace_string();
                v436 = __nwlog_obj();
                v437 = type[0];
                v473 = os_log_type_enabled(v436, type[0]);
                if (!v455)
                {
                  if (!v473)
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v438 = "%{public}s called with null output_handler, no backtrace";
                  goto LABEL_976;
                }

                if (v473)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v455;
                  v457 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                  goto LABEL_878;
                }
              }
            }

            else
            {
              if (v152)
              {
                goto LABEL_456;
              }

              *(v121 + 476) = 3;
              v161 = *(v121 + 48);
              if (v161)
              {
                v162 = *(v161 + 40);
                if (v162)
                {
                  *(v121 + 440) = v162;
                  if (!metadata_for_request)
                  {
                    goto LABEL_458;
                  }

                  goto LABEL_457;
                }

                v443 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                LODWORD(v509) = 12;
                v435 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v443, 16, "%{public}s called with null webtransport_stream", buf, v509);
                type[0] = 16;
                LOBYTE(v529) = 0;
                if (!__nwlog_fault(v435, type, &v529))
                {
                  goto LABEL_977;
                }

                if (type[0] == 17)
                {
                  v436 = __nwlog_obj();
                  v437 = type[0];
                  if (!os_log_type_enabled(v436, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v438 = "%{public}s called with null webtransport_stream";
                  goto LABEL_976;
                }

                if (v529 != 1)
                {
                  v436 = __nwlog_obj();
                  v437 = type[0];
                  if (!os_log_type_enabled(v436, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v438 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                  goto LABEL_976;
                }

                v455 = __nw_create_backtrace_string();
                v436 = __nwlog_obj();
                v437 = type[0];
                v462 = os_log_type_enabled(v436, type[0]);
                if (!v455)
                {
                  if (!v462)
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v438 = "%{public}s called with null webtransport_stream, no backtrace";
                  goto LABEL_976;
                }

                if (v462)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v455;
                  v457 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                  goto LABEL_878;
                }
              }

              else
              {
                v442 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                LODWORD(v509) = 12;
                v435 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v442, 16, "%{public}s called with null input_protocol", buf, v509);
                type[0] = 16;
                LOBYTE(v529) = 0;
                if (!__nwlog_fault(v435, type, &v529))
                {
                  goto LABEL_977;
                }

                if (type[0] == 17)
                {
                  v436 = __nwlog_obj();
                  v437 = type[0];
                  if (!os_log_type_enabled(v436, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v438 = "%{public}s called with null input_protocol";
                  goto LABEL_976;
                }

                if (v529 != 1)
                {
                  v436 = __nwlog_obj();
                  v437 = type[0];
                  if (!os_log_type_enabled(v436, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v438 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                  goto LABEL_976;
                }

                v455 = __nw_create_backtrace_string();
                v436 = __nwlog_obj();
                v437 = type[0];
                v461 = os_log_type_enabled(v436, type[0]);
                if (!v455)
                {
                  if (!v461)
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v438 = "%{public}s called with null input_protocol, no backtrace";
                  goto LABEL_976;
                }

                if (v461)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v455;
                  v457 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                  goto LABEL_878;
                }
              }
            }

            free(v455);
            goto LABEL_977;
          }
        }
      }

      v129 = nw_protocol_copy_info(v125);
      v130 = v129;
      aBlock = MEMORY[0x1E69E9820];
      v519 = 0x40000000;
      v520 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      v521 = &__block_descriptor_tmp_27_36446;
      v522 = v121;
      if (v129)
      {
        _nw_array_apply(v129, &aBlock);
        v131 = *(v121 + 400);
        if (!v131)
        {
          os_release(v130);
          if (!metadata_for_request)
          {
            goto LABEL_458;
          }

          goto LABEL_457;
        }
      }

      else
      {
        v131 = *(v121 + 400);
        if (!v131)
        {
          goto LABEL_456;
        }
      }

      v139 = nw_http_connection_metadata_get_version(v131);
      v140 = v139;
      if (v139 == 4)
      {
        v141 = 0;
      }

      else
      {
        if (v139 != 5)
        {
LABEL_186:
          v143 = v125[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v428 = v125[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v143 = v428;
          }

          v144 = nw_protocols_are_equal(v143, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v145 = *(v121 + 580);
          if (v144)
          {
            v145 |= 0x40u;
            *(v121 + 580) = v145;
          }

          if ((v145 & 2) == 0)
          {
            v146 = __nwlog_obj();
            if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
            {
              v147 = *(v121 + 492);
              if (v140 == 4)
              {
                v148 = 2;
              }

              else
              {
                v148 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v121 + 496;
              *&buf[22] = 2080;
              v543 = " ";
              *v544 = 1024;
              *&v544[2] = v147;
              *&v544[6] = 1024;
              *&v544[8] = v148;
              _os_log_impl(&dword_181A37000, v146, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v130)
          {
            os_release(v130);
          }

          goto LABEL_198;
        }

        v141 = 1;
      }

      *(v121 + 480) = v141;
      goto LABEL_186;
    }

    v53 = __nwlog_obj();
    v54 = v51[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v543 = 1;
    *v544 = 2048;
    *&v544[2] = v54;
    LODWORD(v509) = 42;
    v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v509);
    type[0] = 16;
    LOBYTE(v529) = 0;
    if (__nwlog_fault(v55, type, &v529))
    {
      if (type[0] == 17)
      {
        v56 = __nwlog_obj();
        v57 = type[0];
        if (os_log_type_enabled(v56, type[0]))
        {
          v58 = v51[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v543 = 1;
          *v544 = 2048;
          *&v544[2] = v58;
          v59 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_142:
          v120 = v56;
LABEL_143:
          _os_log_impl(&dword_181A37000, v120, v57, v59, buf, 0x2Au);
        }
      }

      else if (v529 == 1)
      {
        v114 = __nw_create_backtrace_string();
        v115 = __nwlog_obj();
        v57 = type[0];
        v116 = os_log_type_enabled(v115, type[0]);
        if (v114)
        {
          if (v116)
          {
            v117 = v51[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v543 = 1;
            *v544 = 2048;
            *&v544[2] = v117;
            *&v544[10] = 2082;
            *&v544[12] = v114;
            _os_log_impl(&dword_181A37000, v115, v57, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v114);
          goto LABEL_144;
        }

        if (v116)
        {
          v138 = v51[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v543 = 1;
          *v544 = 2048;
          *&v544[2] = v138;
          v59 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          v120 = v115;
          goto LABEL_143;
        }
      }

      else
      {
        v56 = __nwlog_obj();
        v57 = type[0];
        if (os_log_type_enabled(v56, type[0]))
        {
          v119 = v51[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v543 = 1;
          *v544 = 2048;
          *&v544[2] = v119;
          v59 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_142;
        }
      }
    }

LABEL_144:
    if (v55)
    {
      free(v55);
    }

    v51[2] = 0;
    metadata_for_request = v510;
    goto LABEL_147;
  }

  if ((*(a1 + 580) & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_http_send_connect";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 496;
      *&buf[22] = 2080;
      v543 = " ";
      *v544 = 1024;
      *&v544[2] = v21;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Sent CONNECT request to WebTransport server", buf, 0x26u);
    }
  }

  *(a1 + 476) = 1;
  v22 = webtransport_state[2];
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  v25 = v23;
  webtransport_state[2] = v24;
  metadata_for_request = v14;
  if (v25 << 63 >> 63 == v25)
  {
    goto LABEL_456;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = webtransport_state[2];
  *buf = 136446978;
  *&buf[4] = "nw_webtransport_http_send_connect";
  *&buf[12] = 2082;
  *&buf[14] = "connection_state->local_sessions";
  *&buf[22] = 2048;
  v543 = 1;
  *v544 = 2048;
  *&v544[2] = v26;
  LODWORD(v509) = 42;
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v509);
  type[0] = 16;
  LOBYTE(v529) = 0;
  if (!__nwlog_fault(v27, type, &v529))
  {
    goto LABEL_136;
  }

  if (type[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    v29 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_136;
    }

    v30 = webtransport_state[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_http_send_connect";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v543 = 1;
    *v544 = 2048;
    *&v544[2] = v30;
    v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_135:
    _os_log_impl(&dword_181A37000, v28, v29, v31, buf, 0x2Au);
    goto LABEL_136;
  }

  if (v529 != 1)
  {
    v28 = __nwlog_obj();
    v29 = type[0];
    if (!os_log_type_enabled(v28, type[0]))
    {
      goto LABEL_136;
    }

    v113 = webtransport_state[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_http_send_connect";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v543 = 1;
    *v544 = 2048;
    *&v544[2] = v113;
    v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
    goto LABEL_135;
  }

  v110 = __nw_create_backtrace_string();
  v28 = __nwlog_obj();
  v29 = type[0];
  v111 = os_log_type_enabled(v28, type[0]);
  if (!v110)
  {
    if (!v111)
    {
      goto LABEL_136;
    }

    v118 = webtransport_state[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_http_send_connect";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v543 = 1;
    *v544 = 2048;
    *&v544[2] = v118;
    v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
    goto LABEL_135;
  }

  if (v111)
  {
    v112 = webtransport_state[2];
    *buf = 136447234;
    *&buf[4] = "nw_webtransport_http_send_connect";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v543 = 1;
    *v544 = 2048;
    *&v544[2] = v112;
    *&v544[10] = 2082;
    *&v544[12] = v110;
    _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
  }

  free(v110);
LABEL_136:
  if (v27)
  {
    free(v27);
  }

  webtransport_state[2] = 0xFFFFFFFFLL;
  metadata_for_request = v14;
  if (v14)
  {
    goto LABEL_457;
  }

LABEL_458:
  if (v10)
  {
    os_release(v10);
  }

  if (v512)
  {
    os_release(v512);
  }

  if (v511)
  {
    os_release(v511);
  }

  if (v5)
  {
    v197 = v5;
    goto LABEL_466;
  }
}

void sub_18262CC08(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 208), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36471(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__36472(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t *nw_webtransport_session_get_stream(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = a2;
  if (!(a2 >> 60))
  {
    result = *(a1 + 192);
    if (result)
    {
      result = nw_hash_table_get_node(result, &v12, 8);
      if (result)
      {
        return result[2];
      }
    }

    return result;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_webtransport_session_get_stream";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT)", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_webtransport_session_get_stream";
        v7 = "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v10 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_webtransport_session_get_stream";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_webtransport_session_get_stream";
        v7 = "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT), no backtrace";
        goto LABEL_19;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_webtransport_session_get_stream";
        v7 = "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT), backtrace limit exceeded";
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_protocol_webtransport_stream_error(nw_protocol *a1, nw_protocol *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_webtransport_stream_error";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v4, &type, &v24))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v27 = "nw_protocol_webtransport_stream_error";
      v7 = "%{public}s called with null protocol";
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v18 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_protocol_webtransport_stream_error";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v4)
        {
          return;
        }

        goto LABEL_55;
      }

      if (!v18)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v27 = "nw_protocol_webtransport_stream_error";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v27 = "nw_protocol_webtransport_stream_error";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_53;
  }

  handle = a1->handle;
  if (!handle)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_webtransport_stream_error";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v4, &type, &v24))
    {
      goto LABEL_54;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v24 != 1)
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v27 = "nw_protocol_webtransport_stream_error";
        v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_53;
      }

      v19 = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v20 = os_log_type_enabled(v5, type);
      if (!v19)
      {
        if (!v20)
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v27 = "nw_protocol_webtransport_stream_error";
        v7 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_53;
      }

      if (v20)
      {
        *buf = 136446466;
        v27 = "nw_protocol_webtransport_stream_error";
        v28 = 2082;
        v29 = v19;
        v21 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_36:
        _os_log_impl(&dword_181A37000, v5, v6, v21, buf, 0x16u);
      }

LABEL_37:
      free(v19);
      if (!v4)
      {
        return;
      }

LABEL_55:
      free(v4);
      return;
    }

    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    v27 = "nw_protocol_webtransport_stream_error";
    v7 = "%{public}s called with null webtransport_stream";
LABEL_53:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_54;
  }

  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_webtransport_stream_error";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v4, &type, &v24))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v27 = "nw_protocol_webtransport_stream_error";
      v7 = "%{public}s called with null other_protocol";
      goto LABEL_53;
    }

    if (v24 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v27 = "nw_protocol_webtransport_stream_error";
      v7 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_53;
    }

    v19 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v22 = os_log_type_enabled(v5, type);
    if (!v19)
    {
      if (!v22)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v27 = "nw_protocol_webtransport_stream_error";
      v7 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_53;
    }

    if (v22)
    {
      *buf = 136446466;
      v27 = "nw_protocol_webtransport_stream_error";
      v28 = 2082;
      v29 = v19;
      v21 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v10 = a2;
    v11 = a1;
    v12 = __nwlog_obj();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    a2 = v10;
    v14 = v13;
    a1 = v11;
    if (v14)
    {
      v15 = handle[11];
      if (v15)
      {
        v16 = *(v15 + 492);
      }

      else
      {
        v16 = -1;
      }

      v23 = handle[8];
      *buf = 136447234;
      v27 = "nw_protocol_webtransport_stream_error";
      v28 = 2082;
      v29 = (handle + 24);
      v30 = 2080;
      v31 = " ";
      v32 = 1024;
      v33 = v16;
      v34 = 2048;
      v35 = v23;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a2 = v10;
      a1 = v11;
    }
  }

  nw_protocol_error(a1->default_input_handler, a2);
}

void nw_protocol_webtransport_stream_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v216 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v60 = __nwlog_obj();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v61 = handle[11];
          if (v61)
          {
            v62 = *(v61 + 492);
          }

          else
          {
            v62 = -1;
          }

          v93 = handle[8];
          *buf = 136447234;
          *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
          *&buf[12] = 2082;
          *&buf[14] = handle + 24;
          *&buf[22] = 2080;
          v210 = " ";
          *v211 = 1024;
          *&v211[2] = v62;
          *&v211[6] = 2048;
          *&v211[8] = v93;
          _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        }
      }

      if (*(handle + 46) != 3 || *(handle + 47) != 3)
      {
        handle[23] = 0x300000003;
      }

      v4 = handle[11];
      v5 = *(v4 + 480);
      if (v5 != 1)
      {
        if (v5)
        {
          return;
        }

        goto LABEL_10;
      }

      if (handle != *(v4 + 440))
      {
        output_handler = a1->output_handler;
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            if (callbacks->disconnect)
            {
              nw_protocol_disconnect(output_handler, a1);
              return;
            }
          }
        }

        goto LABEL_10;
      }

      if (*(v4 + 476) == 5)
      {
        if ((*(v4 + 580) & 2) != 0)
        {
          goto LABEL_10;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v9 = *(v4 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = v4 + 496;
        *&buf[22] = 2080;
        v210 = " ";
        *v211 = 1024;
        *&v211[2] = v9;
        v10 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
        v11 = v8;
        v12 = OS_LOG_TYPE_INFO;
        goto LABEL_21;
      }

      if ((*(v4 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v14 = *(v4 + 492);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 496;
          *&buf[22] = 2080;
          v210 = " ";
          *v211 = 1024;
          *&v211[2] = v14;
          *&v211[6] = 1024;
          *&v211[8] = 57;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
        }
      }

      v15 = *(v4 + 476);
      *(v4 + 476) = 5;
      v16 = *(v4 + 192);
      if (v16)
      {
        v187[0] = MEMORY[0x1E69E9820];
        v187[1] = 0x40000000;
        v187[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
        v187[3] = &__block_descriptor_tmp_24_36439;
        v188 = 57;
        nw_hash_table_apply(v16, v187);
      }

      v17 = *(v4 + 448);
      if (v17)
      {
        v18 = *(v17 + 88);
        nw_protocol_error(*(v17 + 48), *(v4 + 448));
        nw_protocol_disconnect(v17, v18);
      }

      v19 = *(v4 + 336);
      if (v19)
      {
        do
        {
          v20 = *(v19 + 112);
          v21 = *(v19 + 88);
          nw_protocol_error(*(v19 + 48), v19);
          nw_protocol_disconnect(v19, v21);
          v19 = v20;
        }

        while (v20);
      }

      v22 = *(v4 + 440);
      if (v22)
      {
        v23 = *(v22 + 88);
        nw_protocol_error(*(v22 + 48), *(v4 + 440));
        nw_protocol_disconnect(v22, v23);
      }

      if (*(v4 + 32))
      {
        nw_protocol_remove_instance(v4);
        nw_protocol_disconnect(*(v4 + 32), v4);
      }

      v24 = *(v4 + 400);
      if (!v24)
      {
        goto LABEL_10;
      }

      webtransport_state = nw_http_connection_metadata_get_webtransport_state(v24);
      if (!webtransport_state)
      {
        goto LABEL_10;
      }

      v26 = webtransport_state;
      if (v15 != 4 && v15 != 1)
      {
        goto LABEL_10;
      }

      v27 = *(webtransport_state + 16);
      *(webtransport_state + 16) = v27 - 1;
      if (v27)
      {
LABEL_57:
        if (*(v4 + 580))
        {
          goto LABEL_10;
        }

        v40 = *v26;
        if (!*v26)
        {
          goto LABEL_10;
        }

        v41 = *(v40 + 352);
        v42 = *(v40 + 360);
        v43 = (v41 + 360);
        if (!v41)
        {
          v43 = v26 + 1;
        }

        *v43 = v42;
        *v42 = v41;
        *(v40 + 352) = 0;
        *(v40 + 360) = 0;
        v44 = *(v40 + 32);
        if (!v44 || *(v40 + 480) != 2)
        {
          goto LABEL_104;
        }

        v45 = v44[2];
        if (nw_protocol_http2_identifier::onceToken != -1)
        {
          v147 = v44[2];
          dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
          v45 = v147;
        }

        if (!nw_protocols_are_equal(v45, &nw_protocol_http2_identifier::http2_protocol_identifier))
        {
          v46 = v44[2];
          if (nw_protocol_http3_identifier::onceToken != -1)
          {
            v149 = v44[2];
            dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
            v46 = v149;
          }

          if (!nw_protocols_are_equal(v46, &nw_protocol_http3_identifier::http3_protocol_identifier))
          {
            v47 = v44[2];
            if (nw_protocol_http_messaging_identifier::onceToken != -1)
            {
              v150 = v44[2];
              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
              v47 = v150;
            }

            if (!nw_protocols_are_equal(v47, &nw_protocol_http_messaging_identifier::protocol_identifier))
            {
LABEL_104:
              v69 = *(v40 + 480);
              if (v69 > 1)
              {
                if ((*(v40 + 580) & 2) != 0)
                {
                  goto LABEL_10;
                }

                v70 = __nwlog_obj();
                if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_10;
                }

                v71 = *(v40 + 492);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_establish";
                *&buf[12] = 2082;
                *&buf[14] = v40 + 496;
                *&buf[22] = 2080;
                v210 = " ";
                *v211 = 1024;
                *&v211[2] = v71;
                v10 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
                v11 = v70;
                v12 = OS_LOG_TYPE_ERROR;
LABEL_21:
                _os_log_impl(&dword_181A37000, v11, v12, v10, buf, 0x26u);
                goto LABEL_10;
              }

              if ((*(v40 + 580) & 1) == 0)
              {
                if (!*(v40 + 476))
                {
                  nw_webtransport_http_send_connect(v40);
                }

                goto LABEL_10;
              }

              v72 = *(v40 + 476);
              if (v69 == 1)
              {
                if (v72 != 3)
                {
                  if (v72)
                  {
                    goto LABEL_10;
                  }

                  v73 = *(v40 + 48);
                  if (v73)
                  {
                    v74 = *(v73 + 40);
                    if (v74)
                    {
                      nw_protocol_replace_input_handler(*(v40 + 32), v40, *(v73 + 40));
                      *(v40 + 440) = v74;
                      nw_protocol_set_output_handler(v40, 0);
                      nw_protocol_set_input_handler(v40, 0);
                      if (*(v40 + 580))
                      {
                        v75 = *(*(v40 + 440) + 32);
                        v76 = *(v75 + 16);
                        if (nw_protocol_http_messaging_identifier::onceToken != -1)
                        {
                          dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                        }

                        if (nw_protocols_are_equal(v76, &nw_protocol_http_messaging_identifier::protocol_identifier))
                        {
                          goto LABEL_123;
                        }

                        v77 = *(v75 + 16);
                        if (nw_protocol_http3_identifier::onceToken != -1)
                        {
                          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                        }

                        if (nw_protocols_are_equal(v77, &nw_protocol_http3_identifier::http3_protocol_identifier))
                        {
LABEL_123:
                          v78 = *(v40 + 368);
                          if (v78)
                          {
                            v79 = nw_parameters_copy_protocol_options_legacy(v78, v75);
                            if (v79)
                            {
                              v80 = v79;
                              if ((*(v74 + 276) & 0x10) == 0 && gLogDatapath == 1)
                              {
                                v178 = __nwlog_obj();
                                if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
                                {
                                  v179 = *(v74 + 88);
                                  if (v179)
                                  {
                                    v180 = *(v179 + 492);
                                  }

                                  else
                                  {
                                    v180 = -1;
                                  }

                                  v185 = *(v74 + 64);
                                  *buf = 136447490;
                                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v74 + 192;
                                  *&buf[22] = 2080;
                                  v210 = " ";
                                  *v211 = 1024;
                                  *&v211[2] = v180;
                                  *&v211[6] = 2048;
                                  *&v211[8] = v185;
                                  *&v211[16] = 2048;
                                  *&v211[18] = v80;
                                  _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                                }
                              }

                              nw_http3_set_stream_mode(v80, 0);
                              os_release(v80);
                            }

                            else
                            {
                              if ((*(v40 + 580) & 2) == 0 && gLogDatapath == 1)
                              {
                                v183 = __nwlog_obj();
                                if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
                                {
                                  v184 = *(v40 + 492);
                                  *buf = 136446978;
                                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v40 + 496;
                                  *&buf[22] = 2080;
                                  v210 = " ";
                                  *v211 = 1024;
                                  *&v211[2] = v184;
                                  _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                                }
                              }

                              v98 = *(v74 + 88);
                              nw_protocol_error(*(v74 + 48), v74);
                              nw_protocol_disconnect(v74, v98);
                            }
                          }
                        }
                      }

                      goto LABEL_181;
                    }

                    v166 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    LODWORD(v186) = 12;
                    v161 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v166, 16, "%{public}s called with null webtransport_stream", buf, v186);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v202[0]) = 0;
                    if (__nwlog_fault(v161, type, v202))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v162 = __nwlog_obj();
                        v163 = type[0];
                        if (!os_log_type_enabled(v162, type[0]))
                        {
                          goto LABEL_382;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v164 = "%{public}s called with null webtransport_stream";
                        goto LABEL_381;
                      }

                      if (LOBYTE(v202[0]) != 1)
                      {
                        v162 = __nwlog_obj();
                        v163 = type[0];
                        if (!os_log_type_enabled(v162, type[0]))
                        {
                          goto LABEL_382;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v164 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                        goto LABEL_381;
                      }

                      backtrace_string = __nw_create_backtrace_string();
                      v162 = __nwlog_obj();
                      v163 = type[0];
                      v177 = os_log_type_enabled(v162, type[0]);
                      if (backtrace_string)
                      {
                        if (v177)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = backtrace_string;
                          _os_log_impl(&dword_181A37000, v162, v163, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(backtrace_string);
                        if (!v161)
                        {
                          goto LABEL_181;
                        }

                        goto LABEL_383;
                      }

                      if (v177)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v164 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_381:
                        _os_log_impl(&dword_181A37000, v162, v163, v164, buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v160 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    LODWORD(v186) = 12;
                    v161 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v160, 16, "%{public}s called with null input_protocol", buf, v186);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v202[0]) = 0;
                    if (!__nwlog_fault(v161, type, v202))
                    {
                      goto LABEL_382;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v162 = __nwlog_obj();
                      v163 = type[0];
                      if (!os_log_type_enabled(v162, type[0]))
                      {
                        goto LABEL_382;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v164 = "%{public}s called with null input_protocol";
                      goto LABEL_381;
                    }

                    if (LOBYTE(v202[0]) != 1)
                    {
                      v162 = __nwlog_obj();
                      v163 = type[0];
                      if (!os_log_type_enabled(v162, type[0]))
                      {
                        goto LABEL_382;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v164 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                      goto LABEL_381;
                    }

                    v172 = __nw_create_backtrace_string();
                    v162 = __nwlog_obj();
                    v163 = type[0];
                    v173 = os_log_type_enabled(v162, type[0]);
                    if (!v172)
                    {
                      if (!v173)
                      {
                        goto LABEL_382;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v164 = "%{public}s called with null input_protocol, no backtrace";
                      goto LABEL_381;
                    }

                    if (v173)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v172;
                      _os_log_impl(&dword_181A37000, v162, v163, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v172);
                  }

LABEL_382:
                  if (!v161)
                  {
LABEL_181:
                    *(v40 + 476) = 2;
                    goto LABEL_10;
                  }

LABEL_383:
                  free(v161);
                  goto LABEL_181;
                }

                v87 = *(v40 + 32);
                if (!v87)
                {
                  v165 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  LODWORD(v186) = 12;
                  v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v165, 16, "%{public}s called with null output_handler", buf, v186);
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v202[0]) = 0;
                  if (!__nwlog_fault(v154, type, v202))
                  {
                    goto LABEL_377;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v155 = __nwlog_obj();
                    v156 = type[0];
                    if (!os_log_type_enabled(v155, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v157 = "%{public}s called with null output_handler";
                  }

                  else if (LOBYTE(v202[0]) == 1)
                  {
                    v174 = __nw_create_backtrace_string();
                    v155 = __nwlog_obj();
                    v156 = type[0];
                    v175 = os_log_type_enabled(v155, type[0]);
                    if (v174)
                    {
                      if (v175)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        *&buf[12] = 2082;
                        *&buf[14] = v174;
                        _os_log_impl(&dword_181A37000, v155, v156, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v174);
LABEL_377:
                      if (!v154)
                      {
                        goto LABEL_10;
                      }

LABEL_378:
                      free(v154);
                      goto LABEL_10;
                    }

                    if (!v175)
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v157 = "%{public}s called with null output_handler, no backtrace";
                  }

                  else
                  {
                    v155 = __nwlog_obj();
                    v156 = type[0];
                    if (!os_log_type_enabled(v155, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v157 = "%{public}s called with null output_handler, backtrace limit exceeded";
                  }

LABEL_376:
                  _os_log_impl(&dword_181A37000, v155, v156, v157, buf, 0xCu);
                  goto LABEL_377;
                }

                v88 = v87[3];
                if (v88 && *(v88 + 80))
                {
                  for (i = 3; (i | 2) == 3; i = *(v40 + 476))
                  {
                    if (!nw_protocol_get_input_frames(v87, v40, 0, 0, 0xFFFFFFFFLL, v40 + 120))
                    {
                      goto LABEL_10;
                    }

                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v210 = __Block_byref_object_copy__36471;
                    *v211 = __Block_byref_object_dispose__36472;
                    *&v211[8] = nw_protocol_copy_http_definition();
                    v211[16] |= 1u;
                    *type = MEMORY[0x1E69E9820];
                    v191 = 0x40000000;
                    v192 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                    v193 = &unk_1E6A31940;
                    v194 = buf;
                    v195 = v40;
                    v196 = v40 + 120;
                    v90 = *(v40 + 120);
                    do
                    {
                      if (!v90)
                      {
                        break;
                      }

                      v91 = *(v90 + 32);
                      v92 = (v192)(type);
                      v90 = v91;
                    }

                    while ((v92 & 1) != 0);
                    _Block_object_dispose(buf, 8);
                    if ((v211[16] & 1) != 0 && *&v211[8])
                    {
                      os_release(*&v211[8]);
                    }
                  }

                  v94 = *(v40 + 480);
                  if (v94 == 1)
                  {
                    nw_webtransport_http3_handle_input(v40);
                    v97 = *(v40 + 448);
                    if (v97 && *(v97 + 72))
                    {
                      nw_protocol_input_available(*(v97 + 48), v97);
                    }

                    goto LABEL_10;
                  }

                  if (v94)
                  {
                    goto LABEL_10;
                  }

                  if ((*(v40 + 580) & 2) == 0 && gLogDatapath == 1)
                  {
                    v181 = __nwlog_obj();
                    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                    {
                      v182 = *(v40 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v40 + 496;
                      *&buf[22] = 2080;
                      v210 = " ";
                      *v211 = 1024;
                      *&v211[2] = v182;
                      _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                    }
                  }

                  if (*(v40 + 476) != 4)
                  {
LABEL_10:
                    nw_protocol_disconnected(a1->default_input_handler, a1);
                    return;
                  }

                  v95 = (v40 + 96);
                  v96 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                  while (1)
                  {
                    capsule = nw_http_capsule_framer_read_capsule((v40 + 96), v40);
                    if (!capsule && !*(v40 + 136))
                    {
                      goto LABEL_10;
                    }

                    if (!*(v40 + 456))
                    {
                      v104 = *v95;
                      if (*v95 == -1)
                      {
                        goto LABEL_245;
                      }

                      v105 = *(v40 + 104) != -1 && *(v40 + 112) == 0;
                      if (v104 <= 16770303)
                      {
                        if ((v104 - 16770048) >= 6 && ((v104 + 1) > 4 || !v104))
                        {
                          goto LABEL_190;
                        }

LABEL_245:
                        v118 = __nwlog_obj();
                        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                          *&buf[12] = 2048;
                          *&buf[14] = v104;
                          _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                        }

                        goto LABEL_190;
                      }

                      if ((v104 - 420171065) <= 9 && ((1 << (v104 - 57)) & 0x2EF) != 0)
                      {
                        v208 = -1;
                        if ((nw_http_capsule_framer_parse_vle_value((v40 + 96), v40, &v208) & 1) == 0)
                        {
                          if (v105 && (*(v40 + 580) & 2) == 0)
                          {
                            v145 = __nwlog_obj();
                            if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                            {
                              v146 = *(v40 + 492);
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                              *&buf[12] = 2082;
                              *&buf[14] = v40 + 496;
                              *&buf[22] = 2080;
                              v210 = " ";
                              *v211 = 1024;
                              *&v211[2] = v146;
                              *&v211[6] = 2048;
                              *&v211[8] = v104;
                              v140 = v145;
                              v141 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
LABEL_285:
                              _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_ERROR, v141, buf, 0x30u);
                            }
                          }

LABEL_248:
                          v96 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          goto LABEL_190;
                        }

                        stream = nw_webtransport_session_get_stream(v40, v208);
                        if (stream)
                        {
                          goto LABEL_239;
                        }

                        if ((v104 - 420171067) <= 1)
                        {
                          v121 = v208;
                          v122 = *(v40 + 580);
                          if (v208 >> 60 || ((v208 ^ v122) & 1) == 0)
                          {
                            if ((v122 & 2) != 0)
                            {
                              goto LABEL_271;
                            }

                            v130 = __nwlog_obj();
                            if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_271;
                            }

                            v131 = *(v40 + 492);
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = v40 + 496;
                            *&buf[22] = 2080;
                            v210 = " ";
                            *v211 = 1024;
                            *&v211[2] = v131;
                            v132 = v130;
                            v133 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                          }

                          else
                          {
                            v123 = *(v40 + 424);
                            if (v123)
                            {
                              v124 = *v123;
                              if (v124)
                              {
                                if (*v124)
                                {
                                  v125 = _nw_parameters_copy();
                                  *(v40 + 580) |= 0x20u;
                                  *(v40 + 176) = v121;
                                  v126 = (***(v40 + 424))(*(v40 + 424), *(v40 + 384), v125);
                                  *(v40 + 176) = -1;
                                  *(v40 + 580) &= ~0x20u;
                                  if (v126)
                                  {
                                    stream = nw_webtransport_session_get_stream(v40, v121);
                                  }

                                  else
                                  {
                                    stream = 0;
                                  }

                                  if (v125)
                                  {
                                    os_release(v125);
                                  }

                                  if (stream)
                                  {
                                    if (*(stream + 46) == 3)
                                    {
                                      if ((*(v40 + 580) & 2) == 0)
                                      {
                                        v138 = __nwlog_obj();
                                        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                                        {
                                          v139 = *(v40 + 492);
                                          *buf = 136447234;
                                          *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                          *&buf[12] = 2082;
                                          *&buf[14] = v40 + 496;
                                          *&buf[22] = 2080;
                                          v210 = " ";
                                          *v211 = 1024;
                                          *&v211[2] = v139;
                                          *&v211[6] = 2048;
                                          *&v211[8] = v208;
                                          v140 = v138;
                                          v141 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                                          goto LABEL_285;
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_239:
                                      *(v40 + 456) = stream;
                                    }

                                    goto LABEL_248;
                                  }

                                  goto LABEL_271;
                                }
                              }
                            }

                            if ((v122 & 2) != 0)
                            {
                              goto LABEL_271;
                            }

                            v136 = __nwlog_obj();
                            if (!os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_271;
                            }

                            v137 = *(v40 + 492);
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = v40 + 496;
                            *&buf[22] = 2080;
                            v210 = " ";
                            *v211 = 1024;
                            *&v211[2] = v137;
                            v132 = v136;
                            v133 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
                          }

                          _os_log_impl(&dword_181A37000, v132, OS_LOG_TYPE_ERROR, v133, buf, 0x26u);
                        }

LABEL_271:
                        if ((*(v40 + 580) & 2) == 0)
                        {
                          v134 = __nwlog_obj();
                          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                          {
                            v135 = *(v40 + 492);
                            *buf = 136447490;
                            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                            *&buf[12] = 2082;
                            *&buf[14] = v40 + 496;
                            *&buf[22] = 2080;
                            v210 = " ";
                            *v211 = 1024;
                            *&v211[2] = v135;
                            *&v211[6] = 2048;
                            *&v211[8] = v208;
                            *&v211[16] = 2048;
                            *&v211[18] = v104;
                            _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                          }
                        }

                        goto LABEL_248;
                      }

                      v96 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                      if ((v104 - 16770304) < 4)
                      {
                        goto LABEL_245;
                      }
                    }

LABEL_190:
                    v103 = *(v40 + 96);
                    if ((*(v40 + 580) & 2) == 0 && BYTE1(v96[82].isa) == 1)
                    {
                      v142 = __nwlog_obj();
                      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
                      {
                        v143 = *(v40 + 492);
                        v144 = *(v40 + 104);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                        *&buf[12] = 2082;
                        *&buf[14] = v40 + 496;
                        *&buf[22] = 2080;
                        v210 = " ";
                        *v211 = 1024;
                        *&v211[2] = v143;
                        *&v211[6] = 2048;
                        *&v211[8] = v103;
                        *&v211[16] = 2048;
                        *&v211[18] = v144;
                        _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                      }
                    }

                    if (v103 <= 16770303)
                    {
                      if (v103 <= 16770047)
                      {
                        if ((v103 - 1) < 3 || v103 == -1)
                        {
                          goto LABEL_209;
                        }

                        if (!v103)
                        {
                          v106 = *(v40 + 448);
                          if (!v106 || *(v106 + 184) == 3)
                          {
                            nw_frame_array_finalize(v40 + 136, 1, 1);
LABEL_264:
                            v96 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                            goto LABEL_265;
                          }

                          v197[0] = MEMORY[0x1E69E9820];
                          v197[1] = 0x40000000;
                          v198 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                          v199 = &__block_descriptor_tmp_35_36486;
                          v200 = v40 + 96;
                          v201 = v106;
                          v127 = *(v40 + 136);
                          do
                          {
                            if (!v127)
                            {
                              break;
                            }

                            v128 = *(v127 + 32);
                            v129 = (v198)(v197);
                            v127 = v128;
                          }

                          while ((v129 & 1) != 0);
                          goto LABEL_263;
                        }
                      }

                      else if ((v103 - 16770048) < 6)
                      {
                        goto LABEL_209;
                      }

                      goto LABEL_265;
                    }

                    if (v103 <= 420171064)
                    {
                      if ((v103 - 16770304) >= 4)
                      {
                        if (v103 == 420171064)
                        {
                          nw_frame_array_finalize(v40 + 136, 1, 1);
                        }

                        goto LABEL_265;
                      }

LABEL_209:
                      v107 = __nwlog_obj();
                      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                        *&buf[12] = 2048;
                        *&buf[14] = v103;
                        _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                      }

                      goto LABEL_265;
                    }

                    if ((v103 - 420171065) < 2)
                    {
                      if (capsule)
                      {
                        v112 = *(v40 + 456);
                        v208 = -1;
                        if (nw_http_capsule_framer_parse_vle_value((v40 + 96), v40, &v208))
                        {
                          if (!v112 || (*(v112 + 276) & 0x10) == 0)
                          {
                            v113 = __nwlog_obj();
                            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                            {
                              if (v112)
                              {
                                v114 = (v112 + 192);
                              }

                              else
                              {
                                v114 = "";
                              }

                              v115 = " ";
                              if (!v112)
                              {
                                v115 = "";
                              }

                              v116 = *(v112 + 88);
                              if (v116)
                              {
                                v99 = *(v116 + 492);
                              }

                              else
                              {
                                v99 = -1;
                              }

                              v100 = *(v112 + 64);
                              *buf = 136448002;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = v114;
                              *&buf[22] = 2080;
                              v210 = v115;
                              *v211 = 1024;
                              *&v211[2] = v99;
                              *&v211[6] = 2048;
                              *&v211[8] = v100;
                              *&v211[16] = 2048;
                              *&v211[18] = v103;
                              v212 = 2048;
                              v213 = v100;
                              v214 = 2048;
                              v215 = v208;
                              _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                            }
                          }

                          nw_protocol_webtransport_stream_error(v112, v40);
                          nw_protocol_webtransport_stream_disconnect(v112, v101);
                        }

                        else if ((*(v40 + 580) & 2) == 0)
                        {
                          v119 = __nwlog_obj();
                          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                          {
                            v120 = *(v40 + 492);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2082;
                            *&buf[14] = v40 + 496;
                            *&buf[22] = 2080;
                            v210 = " ";
                            *v211 = 1024;
                            *&v211[2] = v120;
                            *&v211[6] = 2048;
                            *&v211[8] = v103;
                            _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                          }
                        }

                        v96 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_186:
                        *(v40 + 456) = 0;
                        nw_http_capsule_complete_capsule(v40 + 96);
                      }
                    }

                    else
                    {
                      if ((v103 - 420171067) < 2)
                      {
                        v106 = *(v40 + 456);
                        v108 = v103 == 420171068 && capsule;
                        v202[0] = MEMORY[0x1E69E9820];
                        v202[1] = 0x40000000;
                        v203 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                        v204 = &__block_descriptor_tmp_34_36485;
                        v207 = v108;
                        v205 = v40 + 96;
                        v206 = v106;
                        v109 = *(v40 + 136);
                        do
                        {
                          if (!v109)
                          {
                            break;
                          }

                          v110 = *(v109 + 32);
                          v111 = (v203)(v202);
                          v109 = v110;
                        }

                        while ((v111 & 1) != 0);
                        if (v108)
                        {
                          nw_protocol_input_finished(v106, v40);
                          goto LABEL_264;
                        }

LABEL_263:
                        nw_protocol_input_available(v106, v40);
                        goto LABEL_264;
                      }

LABEL_265:
                      if (capsule)
                      {
                        goto LABEL_186;
                      }
                    }
                  }
                }

                if ((*(v40 + 580) & 2) == 0)
                {
                  v151 = __nwlog_obj();
                  if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                  {
                    v152 = *(v40 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v40 + 496;
                    *&buf[22] = 2080;
                    v210 = " ";
                    *v211 = 1024;
                    *&v211[2] = v152;
                    _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                  }
                }

                v153 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                LODWORD(v186) = 12;
                v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v153, 16, "%{public}s output handler has no get_input_frames callback", buf, v186);
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v202[0]) = 0;
                if (!__nwlog_fault(v154, type, v202))
                {
                  goto LABEL_377;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v155 = __nwlog_obj();
                  v156 = type[0];
                  if (!os_log_type_enabled(v155, type[0]))
                  {
                    goto LABEL_377;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v157 = "%{public}s output handler has no get_input_frames callback";
                  goto LABEL_376;
                }

                if (LOBYTE(v202[0]) != 1)
                {
                  v155 = __nwlog_obj();
                  v156 = type[0];
                  if (!os_log_type_enabled(v155, type[0]))
                  {
                    goto LABEL_377;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v157 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                  goto LABEL_376;
                }

                v167 = __nw_create_backtrace_string();
                v155 = __nwlog_obj();
                v156 = type[0];
                v168 = os_log_type_enabled(v155, type[0]);
                if (!v167)
                {
                  if (!v168)
                  {
                    goto LABEL_377;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v157 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                  goto LABEL_376;
                }

                if (v168)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v167;
                  v169 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_330:
                  _os_log_impl(&dword_181A37000, v155, v156, v169, buf, 0x16u);
                }
              }

              else
              {
                if (v72)
                {
                  goto LABEL_10;
                }

                *(v40 + 476) = 3;
                v81 = *(v40 + 48);
                if (v81)
                {
                  v82 = *(v81 + 40);
                  if (v82)
                  {
                    *(v40 + 440) = v82;
                    goto LABEL_10;
                  }

                  v159 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  LODWORD(v186) = 12;
                  v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v159, 16, "%{public}s called with null webtransport_stream", buf, v186);
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v202[0]) = 0;
                  if (!__nwlog_fault(v154, type, v202))
                  {
                    goto LABEL_377;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v155 = __nwlog_obj();
                    v156 = type[0];
                    if (!os_log_type_enabled(v155, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v157 = "%{public}s called with null webtransport_stream";
                    goto LABEL_376;
                  }

                  if (LOBYTE(v202[0]) != 1)
                  {
                    v155 = __nwlog_obj();
                    v156 = type[0];
                    if (!os_log_type_enabled(v155, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v157 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_376;
                  }

                  v167 = __nw_create_backtrace_string();
                  v155 = __nwlog_obj();
                  v156 = type[0];
                  v171 = os_log_type_enabled(v155, type[0]);
                  if (!v167)
                  {
                    if (!v171)
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v157 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_376;
                  }

                  if (v171)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v167;
                    v169 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                    goto LABEL_330;
                  }
                }

                else
                {
                  v158 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  LODWORD(v186) = 12;
                  v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v158, 16, "%{public}s called with null input_protocol", buf, v186);
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v202[0]) = 0;
                  if (!__nwlog_fault(v154, type, v202))
                  {
                    goto LABEL_377;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v155 = __nwlog_obj();
                    v156 = type[0];
                    if (!os_log_type_enabled(v155, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v157 = "%{public}s called with null input_protocol";
                    goto LABEL_376;
                  }

                  if (LOBYTE(v202[0]) != 1)
                  {
                    v155 = __nwlog_obj();
                    v156 = type[0];
                    if (!os_log_type_enabled(v155, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v157 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_376;
                  }

                  v167 = __nw_create_backtrace_string();
                  v155 = __nwlog_obj();
                  v156 = type[0];
                  v170 = os_log_type_enabled(v155, type[0]);
                  if (!v167)
                  {
                    if (!v170)
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v157 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_376;
                  }

                  if (v170)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v167;
                    v169 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                    goto LABEL_330;
                  }
                }
              }

              free(v167);
              if (!v154)
              {
                goto LABEL_10;
              }

              goto LABEL_378;
            }
          }
        }

        v48 = nw_protocol_copy_info(v44);
        v49 = v48;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_27_36446;
        aBlock[4] = v40;
        if (v48)
        {
          _nw_array_apply(v48, aBlock);
          v50 = *(v40 + 400);
          if (!v50)
          {
            os_release(v49);
            goto LABEL_10;
          }
        }

        else
        {
          v50 = *(v40 + 400);
          if (!v50)
          {
            goto LABEL_10;
          }
        }

        version = nw_http_connection_metadata_get_version(v50);
        v52 = version;
        if (version == 4)
        {
          v53 = 0;
        }

        else
        {
          if (version != 5)
          {
LABEL_92:
            v63 = v44[2];
            if (nw_protocol_http_messaging_identifier::onceToken != -1)
            {
              v148 = v44[2];
              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
              v63 = v148;
            }

            v64 = nw_protocols_are_equal(v63, &nw_protocol_http_messaging_identifier::protocol_identifier);
            v65 = *(v40 + 580);
            if (v64)
            {
              v65 |= 0x40u;
              *(v40 + 580) = v65;
            }

            if ((v65 & 2) == 0)
            {
              v66 = __nwlog_obj();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
              {
                v67 = *(v40 + 492);
                if (v52 == 4)
                {
                  v68 = 2;
                }

                else
                {
                  v68 = 3;
                }

                *buf = 136447234;
                *&buf[4] = "nw_webtransport_session_establish";
                *&buf[12] = 2082;
                *&buf[14] = v40 + 496;
                *&buf[22] = 2080;
                v210 = " ";
                *v211 = 1024;
                *&v211[2] = v67;
                *&v211[6] = 1024;
                *&v211[8] = v68;
                _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
              }
            }

            if (v49)
            {
              os_release(v49);
            }

            goto LABEL_104;
          }

          v53 = 1;
        }

        *(v40 + 480) = v53;
        goto LABEL_92;
      }

      v28 = __nwlog_obj();
      v29 = v26[2];
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = "connection_state->local_sessions";
      *&buf[22] = 2048;
      v210 = 1;
      *v211 = 2048;
      *&v211[2] = v29;
      v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v202[0]) = 0;
      if (__nwlog_fault(v30, type, v202))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v31 = __nwlog_obj();
          v32 = type[0];
          if (os_log_type_enabled(v31, type[0]))
          {
            v33 = v26[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v210 = 1;
            *v211 = 2048;
            *&v211[2] = v33;
            v34 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_53:
            _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x2Au);
          }
        }

        else if (LOBYTE(v202[0]) == 1)
        {
          v35 = __nw_create_backtrace_string();
          v31 = __nwlog_obj();
          v32 = type[0];
          v36 = os_log_type_enabled(v31, type[0]);
          if (v35)
          {
            if (v36)
            {
              v37 = v26[2];
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v210 = 1;
              *v211 = 2048;
              *&v211[2] = v37;
              *&v211[10] = 2082;
              *&v211[12] = v35;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v35);
            goto LABEL_54;
          }

          if (v36)
          {
            v39 = v26[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v210 = 1;
            *v211 = 2048;
            *&v211[2] = v39;
            v34 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_53;
          }
        }

        else
        {
          v31 = __nwlog_obj();
          v32 = type[0];
          if (os_log_type_enabled(v31, type[0]))
          {
            v38 = v26[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v210 = 1;
            *v211 = 2048;
            *&v211[2] = v38;
            v34 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_53;
          }
        }
      }

LABEL_54:
      if (v30)
      {
        free(v30);
      }

      v26[2] = 0;
      goto LABEL_57;
    }

    v59 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
    v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v202[0]) = 0;
    if (__nwlog_fault(v55, type, v202))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = type[0];
        if (!os_log_type_enabled(v56, type[0]))
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
        v58 = "%{public}s called with null webtransport_stream";
        goto LABEL_172;
      }

      if (LOBYTE(v202[0]) != 1)
      {
        v56 = __nwlog_obj();
        v57 = type[0];
        if (!os_log_type_enabled(v56, type[0]))
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
        v58 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_172;
      }

      v85 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = type[0];
      v86 = os_log_type_enabled(v56, type[0]);
      if (v85)
      {
        if (v86)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
          *&buf[12] = 2082;
          *&buf[14] = v85;
          _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v85);
        if (v55)
        {
          goto LABEL_174;
        }

        return;
      }

      if (v86)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
        v58 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_172:
        _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0xCu);
      }
    }
  }

  else
  {
    v54 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
    v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v202[0]) = 0;
    if (!__nwlog_fault(v55, type, v202))
    {
      goto LABEL_173;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v56 = __nwlog_obj();
      v57 = type[0];
      if (!os_log_type_enabled(v56, type[0]))
      {
        goto LABEL_173;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
      v58 = "%{public}s called with null protocol";
      goto LABEL_172;
    }

    if (LOBYTE(v202[0]) != 1)
    {
      v56 = __nwlog_obj();
      v57 = type[0];
      if (!os_log_type_enabled(v56, type[0]))
      {
        goto LABEL_173;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
      v58 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_172;
    }

    v83 = __nw_create_backtrace_string();
    v56 = __nwlog_obj();
    v57 = type[0];
    v84 = os_log_type_enabled(v56, type[0]);
    if (!v83)
    {
      if (!v84)
      {
        goto LABEL_173;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
      v58 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_172;
    }

    if (v84)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
      *&buf[12] = 2082;
      *&buf[14] = v83;
      _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v83);
  }

LABEL_173:
  if (v55)
  {
LABEL_174:
    free(v55);
  }
}