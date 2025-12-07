uint64_t ZSTD_decompressSequencesSplitLitBuffer(uint64_t a1, char *__dst, uint64_t a3, unsigned __int8 *a4, unint64_t a5, int a6)
{
  v6 = __dst;
  v8 = a1 + 26684;
  v9 = &__dst[a3 & ~(a3 >> 63)];
  v10 = *(a1 + 30120);
  v239 = v10;
  v11 = *(a1 + 30360);
  if (!a6)
  {
    v223 = v6;
    goto LABEL_8;
  }

  v12 = *(a1 + 29896);
  v224 = *(a1 + 29912);
  v225 = *(a1 + 29904);
  *(a1 + 30004) = 1;
  v13.i64[0] = *v8;
  v13.i64[1] = HIDWORD(*v8);
  v237 = v13;
  v238 = *(a1 + 26692);
  if (!a5)
  {
    return -20;
  }

  v14 = a6;
  v222 = v9;
  v15 = a4 + 8;
  v230 = a4 + 8;
  v16 = a5 - 8;
  if (a5 >= 8)
  {
    v17 = *&a4[v16];
    v228 = &a4[v16];
    v226 = v17;
    if (!HIBYTE(v17) || a5 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    v18 = 8 - (__clz(HIBYTE(v17)) ^ 0x1F);
    goto LABEL_32;
  }

  v17 = *a4;
  v228 = a4;
  v226 = v17;
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
    goto LABEL_27;
  }

  if (a5 != 2)
  {
    if (a5 == 3)
    {
LABEL_28:
      v17 += a4[2] << 16;
      goto LABEL_29;
    }

    if (a5 != 4)
    {
      goto LABEL_30;
    }

LABEL_27:
    v17 += a4[3] << 24;
    goto LABEL_28;
  }

LABEL_29:
  v17 += a4[1] << 8;
  v226 = v17;
LABEL_30:
  if (!a4[a5 - 1])
  {
    return -20;
  }

  v16 = 0;
  v18 = __clz(a4[a5 - 1]) - 8 * a5 + 41;
LABEL_32:
  v24 = *(*a1 + 4);
  v25 = v24 + v18;
  v231 = (v17 >> -(v24 + v18)) & BIT_mask_36272[v24];
  if (v24 + v18 >= 0x41)
  {
    v27 = &BIT_reloadDStream_zeroFilled;
    v228 = &BIT_reloadDStream_zeroFilled;
  }

  else
  {
    v26 = &a4[v16];
    if (v16 >= 8)
    {
      v27 = &v26[-(v25 >> 3)];
      v228 = v27;
      v25 &= 7u;
    }

    else
    {
      v27 = a4;
      if (!v16)
      {
        goto LABEL_41;
      }

      v28 = v25 >> 3;
      if (&v26[-v28] >= a4)
      {
        v28 = v28;
      }

      else
      {
        v28 = v16;
      }

      v27 = &v26[-v28];
      v228 = &v26[-v28];
      v25 -= 8 * v28;
    }

    v17 = *v27;
    v226 = *v27;
  }

LABEL_41:
  v232 = *a1 + 8;
  v29 = *(a1 + 16);
  v30 = *(v29 + 4);
  v31 = v30 + v25;
  v233 = (v17 >> -v31) & BIT_mask_36272[v30];
  if (v31 >= 0x41)
  {
    v27 = &BIT_reloadDStream_zeroFilled;
    v228 = &BIT_reloadDStream_zeroFilled;
  }

  else
  {
    if (v27 >= v15)
    {
      v27 -= v31 >> 3;
      v17 = *v27;
      v31 &= 7u;
    }

    else
    {
      if (v27 == a4)
      {
        goto LABEL_50;
      }

      v32 = v31 >> 3;
      if (&v27[-v32] >= a4)
      {
        v33 = v32;
      }

      else
      {
        v33 = (v27 - a4);
      }

      v27 -= v33;
      v17 = *v27;
      v31 -= 8 * v33;
    }

    v228 = v27;
    v226 = v17;
  }

LABEL_50:
  v234 = v29 + 8;
  v34 = *(a1 + 8);
  v35 = *(v34 + 4);
  v36 = v35 + v31;
  v227 = v36;
  v235 = (v17 >> -v36) & BIT_mask_36272[v35];
  v221 = a1 + 26684;
  if (v36 >= 0x41)
  {
    v228 = &BIT_reloadDStream_zeroFilled;
    goto LABEL_59;
  }

  if (v27 >= v15)
  {
    v228 = &v27[-(v36 >> 3)];
    v227 = v36 & 7;
    v38 = *v228;
LABEL_58:
    v226 = v38;
    goto LABEL_59;
  }

  if (v27 != a4)
  {
    v37 = v36 >> 3;
    if (&v27[-v37] >= a4)
    {
      v37 = v37;
    }

    else
    {
      v37 = (v27 - a4);
    }

    v228 = &v27[-v37];
    v227 = v36 - 8 * v37;
    v38 = *&v27[-v37];
    goto LABEL_58;
  }

LABEL_59:
  v236 = v34 + 8;
  v223 = v6;
  do
  {
    v39 = (v232 + 8 * v231);
    v40 = (v236 + 8 * v235);
    v41 = (v234 + 8 * v233);
    v42 = *(v40 + 1);
    v43 = *(v39 + 1);
    v44 = *(v41 + 1);
    v45 = *(v39 + 2);
    v46 = *(v40 + 2);
    v47 = *(v41 + 2);
    v48 = *v39;
    v49 = *v40;
    v50 = *v41;
    v51 = *(v39 + 3);
    v52 = *(v40 + 3);
    v53 = *(v41 + 3);
    if (v47 >= 2)
    {
      v54 = v226 << v227 >> -v47;
      v227 += v47;
      v55 = v54 + v44;
LABEL_62:
      v238 = v237.i64[1];
      v56 = &v237;
      goto LABEL_65;
    }

    if (*(v41 + 2))
    {
      if (v43)
      {
        v44 = v44;
      }

      else
      {
        v44 = (v44 + 1);
      }

      v88 = v226 << v227++;
      v89 = v44 + (v88 >> 63);
      if (v89 == 3)
      {
        if (v237.i64[0] == 1)
        {
          v55 = -1;
        }

        else
        {
          v55 = v237.i64[0] - 1;
        }

        goto LABEL_62;
      }

      if (v237.i64[v89])
      {
        v55 = v237.u64[v89];
      }

      else
      {
        v55 = -1;
      }

      v56 = &v237;
      if (v89 != 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v55 = v237.u64[v43 == 0];
      v56 = (&v237 + 8 * (v43 != 0));
    }

LABEL_65:
    v57 = v56->i64[0];
    v237.i64[0] = v55;
    v237.i64[1] = v57;
    if (v46)
    {
      v58 = v226 << v227 >> -v46;
      v227 += v46;
      v42 += v58;
    }

    if ((v46 + v45 + v47) >= 0x1Fu)
    {
      if (v227 >= 0x41)
      {
        v228 = &BIT_reloadDStream_zeroFilled;
      }

      else
      {
        if (v228 >= v230)
        {
          v81 = &v228[-(v227 >> 3)];
          v228 = v81;
          v82 = v227 & 7;
        }

        else
        {
          if (v228 == a4)
          {
            goto LABEL_68;
          }

          if (&v228[-(v227 >> 3)] >= a4)
          {
            v80 = v227 >> 3;
          }

          else
          {
            v80 = (v228 - a4);
          }

          v81 = &v228[-v80];
          v228 -= v80;
          v82 = v227 - 8 * v80;
        }

        v227 = v82;
        v226 = *v81;
      }
    }

LABEL_68:
    if (v45)
    {
      v59 = v226 << v227 >> -v45;
      v227 += v45;
      v43 += v59;
    }

    if (v14 == 1)
    {
      v60 = v239;
      v61 = &v239[v43];
      v62 = *(a1 + 30360);
      if (&v239[v43] > v62)
      {
        v97 = 1;
        goto LABEL_144;
      }

      goto LABEL_83;
    }

    v63 = ((v226 >> -(v227 + v51)) & BIT_mask_36272[v51]) + v48;
    v64 = v227 + v51 + v52;
    v235 = ((v226 >> -v64) & BIT_mask_36272[v52]) + v49;
    v65 = v64 + v53;
    v227 = v64 + v53;
    v231 = v63;
    v233 = ((v226 >> -(v64 + v53)) & BIT_mask_36272[v53]) + v50;
    if ((v64 + v53) >= 0x41)
    {
      v228 = &BIT_reloadDStream_zeroFilled;
    }

    else
    {
      if (v228 >= v230)
      {
        v68 = &v228[-(v65 >> 3)];
        v228 = v68;
        v69 = v65 & 7;
      }

      else
      {
        if (v228 == a4)
        {
          goto LABEL_82;
        }

        v66 = v65 >> 3;
        if (&v228[-v66] >= a4)
        {
          v67 = v66;
        }

        else
        {
          v67 = (v228 - a4);
        }

        v68 = &v228[-v67];
        v228 -= v67;
        v69 = v65 - 8 * v67;
      }

      v227 = v69;
      v226 = *v68;
    }

LABEL_82:
    v60 = v239;
    v61 = &v239[v43];
    v62 = *(a1 + 30360);
    if (&v239[v43] > v62)
    {
      v97 = v14;
      if (v14 < 1)
      {
        return -20;
      }

LABEL_144:
      v98 = v62 - v60;
      if (v62 == v60)
      {
        goto LABEL_191;
      }

      if (v98 > (v222 - v6))
      {
        return -70;
      }

      v99 = v6 - v60;
      v100 = &v6[v98];
      if (v6 - v60 <= -8 && v98 > 7)
      {
        v101 = 0;
        if (v99 > 0xFFFFFFFFFFFFFFEFLL || (v102 = v100 - 32, v103 = v98 - 32, v100 - 32 < v6))
        {
          v102 = v6;
        }

        else
        {
          *v6 = *v60;
          if (v103 >= 17)
          {
            v104 = v6 + 16;
            v105 = (v60 + 32);
            do
            {
              *v104 = *(v105 - 1);
              v106 = *v105;
              v105 += 2;
              *(v104 + 1) = v106;
              v104 += 32;
            }

            while (v104 < v102);
          }

          v60 += v103;
          v101 = (v102 - v60) < 0x20;
        }

        v110 = &v6[v98] - v102;
        if (v110 < 8 || v101)
        {
          v112 = v102;
        }

        else
        {
          if (v110 < 0x20)
          {
            v111 = 0;
LABEL_171:
            v117 = v110 & 0xFFFFFFFFFFFFFFF8;
            v112 = &v102[v110 & 0xFFFFFFFFFFFFFFF8];
            v118 = v111 - (v110 & 0xFFFFFFFFFFFFFFF8);
            v119 = &v60[v111];
            v120 = &v102[v111];
            do
            {
              v121 = *v119;
              v119 += 8;
              *v120 = v121;
              v120 += 8;
              v118 += 8;
            }

            while (v118);
            if (v110 == v117)
            {
              goto LABEL_190;
            }

            v60 += v117;
            goto LABEL_186;
          }

          v111 = v110 & 0xFFFFFFFFFFFFFFE0;
          v113 = (v60 + 16);
          v114 = v102 + 16;
          v115 = v110 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v116 = *v113;
            *(v114 - 1) = *(v113 - 1);
            *v114 = v116;
            v113 += 2;
            v114 += 2;
            v115 -= 32;
          }

          while (v115);
          if (v110 == v111)
          {
            goto LABEL_190;
          }

          if ((v110 & 0x18) != 0)
          {
            goto LABEL_171;
          }

          v60 += v111;
          v112 = &v102[v111];
        }

        do
        {
LABEL_186:
          v132 = *v60++;
          *v112++ = v132;
        }

        while (v112 != &v6[v98]);
        goto LABEL_190;
      }

      if (v98 < 1)
      {
LABEL_190:
        v43 -= v98;
        v6 += v98;
LABEL_191:
        v239 = (v221 + 3688);
        v11 = a1 + 95908;
        *(v221 + 3684) = 0;
        v134 = &v6[v43];
        _X9 = &v6[v43 - v55];
        __asm { PRFM            #0, [X9] }

        v141 = v222 - 32;
        if (v43 > 0x10000 || (v22 = v43 + v42, &v6[v43 + v42] > v141))
        {
          v240 = v43;
          v241 = v42;
          v242 = v55;
          v206 = v97;
          v207 = ZSTD_execSequenceEnd(v6, v222, &v240, &v239, a1 + 95908, v12, v225, v224);
          v97 = v206;
          v22 = v207;
          v8 = v221;
          goto LABEL_204;
        }

        v142 = (a1 + v43 + 30372);
        *v6 = *(v221 + 3688);
        v72 = v43 > 0x10;
        v143 = v43 - 16;
        if (v72)
        {
          *(v6 + 1) = *(v221 + 3704);
          if (v143 >= 17)
          {
            v208 = v6 + 32;
            v209 = (v221 + 3736);
            do
            {
              *v208 = *(v209 - 1);
              v210 = *v209;
              v209 += 2;
              *(v208 + 1) = v210;
              v208 += 32;
            }

            while (v208 < v134);
          }
        }

        v239 = v142;
        if (v55 <= v134 - v12)
        {
          goto LABEL_198;
        }

        if (v55 <= &v134[-v225])
        {
          v220 = v97;
          v144 = _X9 - v12;
          v145 = (v224 + _X9 - v12);
          if (v145 + v42 > v224)
          {
            memmove(v134, v145, v12 - _X9);
            v134 -= v144;
            v42 += v144;
            _X9 = v12;
            v141 = v222 - 32;
            v97 = v220;
LABEL_198:
            if (v55 < 0x10)
            {
              if (v55 > 7)
              {
                *v134 = *_X9;
              }

              else
              {
                v211 = ZSTD_overlapCopy8_dec64table[v55];
                *v134 = *_X9;
                v134[1] = _X9[1];
                v134[2] = _X9[2];
                v134[3] = _X9[3];
                v212 = &_X9[ZSTD_overlapCopy8_dec32table[v55]];
                *(v134 + 1) = *v212;
                _X9 = &v212[-v211];
              }

              if (v42 >= 9)
              {
                v213 = _X9 + 8;
                v214 = v134 + 8;
                v215 = &v134[v42];
                if (v134 - _X9 > 15)
                {
                  *v214 = *v213;
                  if (v42 >= 25)
                  {
                    v217 = v134 + 24;
                    v218 = (_X9 + 40);
                    do
                    {
                      *v217 = *(v218 - 1);
                      v219 = *v218;
                      v218 += 2;
                      *(v217 + 1) = v219;
                      v217 += 32;
                    }

                    while (v217 < v215);
                  }
                }

                else
                {
                  do
                  {
                    v216 = *v213;
                    v213 = (v213 + 8);
                    *v214 = v216;
                    v214 = (v214 + 8);
                  }

                  while (v214 < v215);
                }
              }

              v141 = v222 - 32;
              v8 = v221;
            }

            else
            {
              *v134 = *_X9;
              if (v42 >= 17)
              {
                v146 = v134 + 16;
                v147 = (_X9 + 32);
                do
                {
                  *v146 = *(v147 - 1);
                  v148 = *v147;
                  v147 += 2;
                  *(v146 + 1) = v148;
                  v146 += 32;
                }

                while (v146 < &v134[v42]);
              }

              v8 = v221;
            }

            goto LABEL_204;
          }

          memmove(v134, v145, v42);
          v141 = v222 - 32;
          v8 = v221;
          v97 = v220;
LABEL_204:
          if (v22 > 0xFFFFFFFFFFFFFF88)
          {
            return v22;
          }

          v6 += v22;
          if (v14 == 1)
          {
            goto LABEL_140;
          }

          v149 = v97 - 1;
          while (1)
          {
            v150 = (v232 + 8 * v231);
            v151 = (v236 + 8 * v235);
            v152 = (v234 + 8 * v233);
            v153 = *(v151 + 1);
            v154 = *(v150 + 1);
            v155 = *(v152 + 1);
            v156 = *(v150 + 2);
            v157 = *(v151 + 2);
            v158 = *(v152 + 2);
            v159 = *v150;
            v160 = *v151;
            v161 = *v152;
            v162 = *(v150 + 3);
            v163 = *(v151 + 3);
            v164 = *(v152 + 3);
            if (v158 >= 2)
            {
              break;
            }

            if (*(v152 + 2))
            {
              if (v154)
              {
                v155 = v155;
              }

              else
              {
                v155 = (v155 + 1);
              }

              v196 = v226 << v227++;
              v197 = v155 + (v196 >> 63);
              if (v197 == 3)
              {
                if (v237.i64[0] == 1)
                {
                  v166 = -1;
                }

                else
                {
                  v166 = v237.i64[0] - 1;
                }

                v141 = v222 - 32;
                goto LABEL_209;
              }

              if (v237.i64[v197])
              {
                v166 = v237.u64[v197];
              }

              else
              {
                v166 = -1;
              }

              v167 = &v237;
              v141 = v222 - 32;
              if (v197 != 1)
              {
                goto LABEL_209;
              }
            }

            else
            {
              v166 = v237.u64[v154 == 0];
              v167 = (&v237 + 8 * (v154 != 0));
            }

LABEL_212:
            v168 = v167->i64[0];
            v237.i64[0] = v166;
            v237.i64[1] = v168;
            if (v157)
            {
              v169 = v226 << v227 >> -v157;
              v227 += v157;
              v153 += v169;
            }

            if ((v157 + v156 + v158) >= 0x1Fu)
            {
              if (v227 >= 0x41)
              {
                v228 = &BIT_reloadDStream_zeroFilled;
                v141 = v222 - 32;
              }

              else if (v228 >= v230)
              {
                v228 -= v227 >> 3;
                v227 &= 7u;
                v226 = *v228;
                v141 = v222 - 32;
              }

              else
              {
                v141 = v222 - 32;
                if (v228 != a4)
                {
                  if (&v228[-(v227 >> 3)] >= a4)
                  {
                    v190 = v227 >> 3;
                  }

                  else
                  {
                    v190 = (v228 - a4);
                  }

                  v228 -= v190;
                  v227 -= 8 * v190;
                  v226 = *v228;
                }
              }
            }

            if (v156)
            {
              v170 = v226 << v227 >> -v156;
              v227 += v156;
              v154 += v170;
            }

            if (v149 != 1)
            {
              v171 = ((v226 >> -(v227 + v162)) & BIT_mask_36272[v162]) + v159;
              v172 = v227 + v162 + v163;
              v235 = ((v226 >> -v172) & BIT_mask_36272[v163]) + v160;
              v173 = v172 + v164;
              v227 = v172 + v164;
              v231 = v171;
              v233 = ((v226 >> -(v172 + v164)) & BIT_mask_36272[v164]) + v161;
              if ((v172 + v164) >= 0x41)
              {
                v228 = &BIT_reloadDStream_zeroFilled;
                goto LABEL_227;
              }

              if (v228 >= v230)
              {
                v176 = &v228[-(v173 >> 3)];
                v228 = v176;
                v177 = v173 & 7;
LABEL_226:
                v227 = v177;
                v226 = *v176;
                goto LABEL_227;
              }

              if (v228 != a4)
              {
                v174 = v173 >> 3;
                if (&v228[-v174] >= a4)
                {
                  v175 = v174;
                }

                else
                {
                  v175 = (v228 - a4);
                }

                v176 = &v228[-v175];
                v228 -= v175;
                v177 = v173 - 8 * v175;
                goto LABEL_226;
              }
            }

LABEL_227:
            v178 = &v6[v154];
            v179 = v239;
            v180 = &v239[v154];
            _X9 = &v6[v154 - v166];
            __asm { PRFM            #0, [X9] }

            if (&v239[v154] > v11 || (v22 = v154 + v153, &v6[v154 + v153] > v141))
            {
              v240 = v154;
              v241 = v153;
              v242 = v166;
              v22 = ZSTD_execSequenceEnd(v6, v222, &v240, &v239, a1 + 95908, v12, v225, v224);
            }

            else
            {
              *v6 = *v239;
              v72 = v154 > 0x10;
              v183 = v154 - 16;
              if (v72)
              {
                *(v6 + 1) = *(v179 + 1);
                if (v183 >= 17)
                {
                  v191 = v6 + 32;
                  v192 = (v179 + 48);
                  do
                  {
                    *v191 = *(v192 - 1);
                    v193 = *v192;
                    v192 += 2;
                    *(v191 + 1) = v193;
                    v191 += 32;
                  }

                  while (v191 < v178);
                }
              }

              v239 = v180;
              if (v166 > v178 - v12)
              {
                if (v166 > &v178[-v225])
                {
                  return -20;
                }

                v184 = _X9 - v12;
                v185 = (v224 + _X9 - v12);
                if (v185 + v153 <= v224)
                {
                  memmove(v178, v185, v153);
                  goto LABEL_242;
                }

                memmove(v178, v185, v12 - _X9);
                v178 -= v184;
                v153 += v184;
                _X9 = v12;
                v141 = v222 - 32;
              }

              if (v166 < 0x10)
              {
                if (v166 > 7)
                {
                  *v178 = *_X9;
                }

                else
                {
                  v194 = ZSTD_overlapCopy8_dec64table[v166];
                  *v178 = *_X9;
                  v178[1] = _X9[1];
                  v178[2] = _X9[2];
                  v178[3] = _X9[3];
                  v195 = &_X9[ZSTD_overlapCopy8_dec32table[v166]];
                  *(v178 + 1) = *v195;
                  _X9 = &v195[-v194];
                }

                if (v153 >= 9)
                {
                  v198 = _X9 + 8;
                  v199 = v178 + 8;
                  v200 = &v178[v153];
                  if (v178 - _X9 > 15)
                  {
                    *v199 = *v198;
                    if (v153 >= 25)
                    {
                      v202 = v178 + 24;
                      v203 = (_X9 + 40);
                      do
                      {
                        *v202 = *(v203 - 1);
                        v204 = *v203;
                        v203 += 2;
                        *(v202 + 1) = v204;
                        v202 += 32;
                      }

                      while (v202 < v200);
                    }
                  }

                  else
                  {
                    do
                    {
                      v201 = *v198;
                      v198 = (v198 + 8);
                      *v199 = v201;
                      v199 = (v199 + 8);
                    }

                    while (v199 < v200);
                  }
                }

LABEL_242:
                v141 = v222 - 32;
                v8 = v221;
LABEL_243:
                if (v22 > 0xFFFFFFFFFFFFFF88)
                {
                  return v22;
                }

                goto LABEL_244;
              }

              *v178 = *_X9;
              if (v153 >= 17)
              {
                v186 = &v178[v153];
                v187 = v178 + 16;
                v188 = (_X9 + 32);
                v8 = v221;
                do
                {
                  *v187 = *(v188 - 1);
                  v189 = *v188;
                  v188 += 2;
                  *(v187 + 1) = v189;
                  v187 += 32;
                }

                while (v187 < v186);
                goto LABEL_243;
              }
            }

            v8 = v221;
            if (v22 > 0xFFFFFFFFFFFFFF88)
            {
              return v22;
            }

LABEL_244:
            v6 += v22;
            if (!--v149)
            {
              goto LABEL_140;
            }
          }

          v165 = v226 << v227 >> -v158;
          v227 += v158;
          v166 = v165 + v155;
LABEL_209:
          v238 = v237.i64[1];
          v167 = &v237;
          goto LABEL_212;
        }

        return -20;
      }

      v107 = &v62[v6] - v60;
      if (v107 <= (v6 + 1))
      {
        v107 = (v6 + 1);
      }

      v108 = v107 - v6;
      if (v108 < 8)
      {
        v122 = v6;
      }

      else if (v99 < 0x20)
      {
        v122 = v6;
      }

      else
      {
        if (v108 < 0x20)
        {
          v109 = 0;
LABEL_181:
          v127 = v108 & 0xFFFFFFFFFFFFFFF8;
          v122 = &v6[v108 & 0xFFFFFFFFFFFFFFF8];
          v128 = v109 - (v108 & 0xFFFFFFFFFFFFFFF8);
          v129 = &v60[v109];
          v130 = &v6[v109];
          do
          {
            v131 = *v129;
            v129 += 8;
            *v130 = v131;
            v130 += 8;
            v128 += 8;
          }

          while (v128);
          if (v108 == v127)
          {
            goto LABEL_190;
          }

          v60 += v127;
          goto LABEL_189;
        }

        v109 = v108 & 0xFFFFFFFFFFFFFFE0;
        v123 = (v60 + 16);
        v124 = v6 + 16;
        v125 = v108 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v126 = *v123;
          *(v124 - 1) = *(v123 - 1);
          *v124 = v126;
          v123 += 2;
          v124 += 2;
          v125 -= 32;
        }

        while (v125);
        if (v108 == v109)
        {
          goto LABEL_190;
        }

        if ((v108 & 0x18) != 0)
        {
          goto LABEL_181;
        }

        v60 += v109;
        v122 = &v6[v109];
      }

      do
      {
LABEL_189:
        v133 = *v60++;
        *v122++ = v133;
      }

      while (v122 < v100);
      goto LABEL_190;
    }

LABEL_83:
    v70 = v61 - 32;
    if (v61 > v11 || (v22 = v43 + v42, &v6[v43 + v42] > v70))
    {
      v240 = v43;
      v241 = v42;
      v242 = v55;
      v22 = ZSTD_execSequenceEndSplitLitBuffer(v6, v222, v70, &v240, &v239, v11, v12, v225, v224);
    }

    else
    {
      v71 = &v6[v43];
      *v6 = *v60;
      v72 = v43 > 0x10;
      v73 = v43 - 16;
      if (v72)
      {
        *(v6 + 1) = *(v60 + 1);
        if (v73 >= 17)
        {
          v83 = v6 + 32;
          v84 = (v60 + 48);
          do
          {
            *v83 = *(v84 - 1);
            v85 = *v84;
            v84 += 2;
            *(v83 + 1) = v85;
            v83 += 32;
          }

          while (v83 < v71);
        }
      }

      v74 = &v71[-v55];
      v239 = v61;
      if (v55 > v71 - v12)
      {
        if (v55 > &v71[-v225])
        {
          return -20;
        }

        v75 = v74 - v12;
        v76 = (v224 + v74 - v12);
        if (v76 + v42 <= v224)
        {
          memmove(v71, v76, v42);
          goto LABEL_96;
        }

        memmove(v71, v76, v12 - v74);
        v71 -= v75;
        v42 += v75;
        v74 = v12;
      }

      if (v55 < 0x10)
      {
        if (v55 > 7)
        {
          *v71 = *v74;
        }

        else
        {
          v86 = ZSTD_overlapCopy8_dec64table[v55];
          *v71 = *v74;
          v71[1] = v74[1];
          v71[2] = v74[2];
          v71[3] = v74[3];
          v87 = &v74[ZSTD_overlapCopy8_dec32table[v55]];
          *(v71 + 1) = *v87;
          v74 = &v87[-v86];
        }

        if (v42 >= 9)
        {
          v90 = v74 + 8;
          v91 = v71 + 8;
          v92 = &v71[v42];
          if (v71 - v74 > 15)
          {
            *v91 = *v90;
            if (v42 >= 25)
            {
              v94 = v71 + 24;
              v95 = (v74 + 40);
              do
              {
                *v94 = *(v95 - 1);
                v96 = *v95;
                v95 += 2;
                *(v94 + 1) = v96;
                v94 += 32;
              }

              while (v94 < v92);
            }
          }

          else
          {
            do
            {
              v93 = *v90;
              v90 = (v90 + 8);
              *v91 = v93;
              v91 = (v91 + 8);
            }

            while (v91 < v92);
          }
        }
      }

      else
      {
        *v71 = *v74;
        if (v42 >= 17)
        {
          v77 = v71 + 16;
          v78 = (v74 + 32);
          do
          {
            *v77 = *(v78 - 1);
            v79 = *v78;
            v78 += 2;
            *(v77 + 1) = v79;
            v77 += 32;
          }

          while (v77 < &v71[v42]);
        }
      }
    }

LABEL_96:
    if (v22 > 0xFFFFFFFFFFFFFF88)
    {
      return v22;
    }

    v6 += v22;
    --v14;
  }

  while (v14);
  v8 = v221;
LABEL_140:
  v22 = -20;
  if (v228 == a4 && v227 == 64)
  {
    *v8 = vmovn_s64(v237);
    *(v8 + 8) = v238;
    v10 = v239;
    v9 = v222;
LABEL_8:
    if (*(v8 + 3684) == 2)
    {
      v19 = v11 - v10;
      if (v11 - v10 <= v9 - v6)
      {
        if (v6)
        {
          v20 = v9;
          memmove(v6, v10, v11 - v10);
          v9 = v20;
          v6 += v19;
        }

        v10 = (a1 + 30372);
        v11 = a1 + 95908;
        *(v8 + 3684) = 0;
        goto LABEL_13;
      }

      return -70;
    }

    else
    {
LABEL_13:
      v21 = v11 - v10;
      if (v11 - v10 > v9 - v6)
      {
        return -70;
      }

      if (v6)
      {
        memcpy(v6, v10, v11 - v10);
        v23 = &v6[v21];
      }

      else
      {
        v23 = 0;
      }

      return v23 - v223;
    }
  }

  return v22;
}

uint64_t ZSTD_decompressSequences(uint64_t a1, char *__dst, uint64_t a3, unsigned __int8 *a4, unint64_t a5, int a6)
{
  v7 = __dst;
  v8 = (a1 + 26684);
  if (*(a1 + 30368))
  {
    v9 = *(a1 + 30352);
  }

  else
  {
    v9 = &__dst[a3 & ~(a3 >> 63)];
  }

  v10 = *(a1 + 30120);
  v118 = v10;
  v104 = &v10[*(a1 + 30152)];
  if (a6)
  {
    v11 = *(a1 + 29896);
    v102 = *(a1 + 29912);
    v103 = *(a1 + 29904);
    *(a1 + 30004) = 1;
    v12.i64[0] = *v8;
    v12.i64[1] = HIDWORD(*v8);
    v116 = v12;
    v117 = *(a1 + 26692);
    if (!a5)
    {
      return -20;
    }

    v13 = a4 + 8;
    v109 = a4 + 8;
    v14 = a5 - 8;
    if (a5 >= 8)
    {
      v15 = *&a4[v14];
      v107 = &a4[v14];
      v105 = v15;
      if (HIBYTE(v15) && a5 <= 0xFFFFFFFFFFFFFF88)
      {
        v16 = 8 - (__clz(HIBYTE(v15)) ^ 0x1F);
        goto LABEL_30;
      }

      return -20;
    }

    v15 = *a4;
    v107 = a4;
    v105 = v15;
    if (a5 > 4)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          v15 |= a4[6] << 48;
        }

        v15 += a4[5] << 40;
      }

      v15 += a4[4] << 32;
    }

    else
    {
      if (a5 == 2)
      {
LABEL_27:
        v15 += a4[1] << 8;
        v105 = v15;
        goto LABEL_28;
      }

      if (a5 == 3)
      {
LABEL_26:
        v15 += a4[2] << 16;
        goto LABEL_27;
      }

      if (a5 != 4)
      {
LABEL_28:
        if (a4[a5 - 1])
        {
          v14 = 0;
          v16 = __clz(a4[a5 - 1]) - 8 * a5 + 41;
LABEL_30:
          v21 = *(*a1 + 4);
          v22 = v21 + v16;
          v110 = (v15 >> -(v21 + v16)) & BIT_mask_36272[v21];
          if (v21 + v16 >= 0x41)
          {
            v24 = &BIT_reloadDStream_zeroFilled;
            v107 = &BIT_reloadDStream_zeroFilled;
          }

          else
          {
            v23 = &a4[v14];
            if (v14 >= 8)
            {
              v24 = &v23[-(v22 >> 3)];
              v107 = v24;
              v22 &= 7u;
            }

            else
            {
              v24 = a4;
              if (!v14)
              {
                goto LABEL_39;
              }

              v25 = v22 >> 3;
              if (&v23[-v25] >= a4)
              {
                v25 = v25;
              }

              else
              {
                v25 = v14;
              }

              v24 = &v23[-v25];
              v107 = &v23[-v25];
              v22 -= 8 * v25;
            }

            v15 = *v24;
            v105 = *v24;
          }

LABEL_39:
          v26 = *(a1 + 16);
          v27 = *(v26 + 4);
          v28 = v27 + v22;
          v111 = *a1 + 8;
          v112 = (v15 >> -v28) & BIT_mask_36272[v27];
          v101 = v7;
          v99 = (a1 + 26684);
          if (v28 >= 0x41)
          {
            v24 = &BIT_reloadDStream_zeroFilled;
            v107 = &BIT_reloadDStream_zeroFilled;
          }

          else
          {
            if (v24 >= v13)
            {
              v24 -= v28 >> 3;
              v15 = *v24;
              v28 &= 7u;
            }

            else
            {
              if (v24 == a4)
              {
                goto LABEL_48;
              }

              v29 = v28 >> 3;
              if (&v24[-v29] >= a4)
              {
                v30 = v29;
              }

              else
              {
                v30 = (v24 - a4);
              }

              v24 -= v30;
              v15 = *v24;
              v28 -= 8 * v30;
            }

            v107 = v24;
            v105 = v15;
          }

LABEL_48:
          v31 = *(a1 + 8);
          v32 = *(v31 + 4);
          v33 = v32 + v28;
          v106 = v33;
          v113 = v26 + 8;
          v114 = (v15 >> -v33) & BIT_mask_36272[v32];
          if (v33 >= 0x41)
          {
            v107 = &BIT_reloadDStream_zeroFilled;
            goto LABEL_57;
          }

          if (v24 >= v13)
          {
            v107 = &v24[-(v33 >> 3)];
            v106 = v33 & 7;
            v35 = *v107;
          }

          else
          {
            if (v24 == a4)
            {
LABEL_57:
              v115 = v31 + 8;
              v100 = v9;
              v36 = v9 - 32;
              v17 = v7;
              while (1)
              {
                v37 = (v111 + 8 * v110);
                v38 = (v115 + 8 * v114);
                v39 = (v113 + 8 * v112);
                v40 = *(v38 + 1);
                v41 = *(v37 + 1);
                v42 = *(v39 + 1);
                v43 = *(v37 + 2);
                v44 = *(v38 + 2);
                v45 = *(v39 + 2);
                v46 = *v37;
                v47 = *v38;
                v48 = *v39;
                v49 = *(v37 + 3);
                v50 = *(v38 + 3);
                v51 = *(v39 + 3);
                if (v45 >= 2)
                {
                  break;
                }

                if (*(v39 + 2))
                {
                  if (v41)
                  {
                    v42 = v42;
                  }

                  else
                  {
                    v42 = (v42 + 1);
                  }

                  v89 = v105 << v106++;
                  v90 = v42 + (v89 >> 63);
                  if (v90 == 3)
                  {
                    if (v116.i64[0] == 1)
                    {
                      v53 = -1;
                    }

                    else
                    {
                      v53 = v116.i64[0] - 1;
                    }

                    goto LABEL_60;
                  }

                  if (v116.i64[v90])
                  {
                    v53 = v116.u64[v90];
                  }

                  else
                  {
                    v53 = -1;
                  }

                  v54 = &v116;
                  if (v90 != 1)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  v53 = v116.u64[v41 == 0];
                  v54 = (&v116 + 8 * (v41 != 0));
                }

LABEL_63:
                v55 = v54->i64[0];
                v116.i64[0] = v53;
                v116.i64[1] = v55;
                if (v44)
                {
                  v56 = v105 << v106 >> -v44;
                  v106 += v44;
                  v40 += v56;
                }

                if ((v44 + v43 + v45) >= 0x1Fu)
                {
                  if (v106 >= 0x41)
                  {
                    v107 = &BIT_reloadDStream_zeroFilled;
                  }

                  else
                  {
                    if (v107 >= v109)
                    {
                      v82 = &v107[-(v106 >> 3)];
                      v107 = v82;
                      v83 = v106 & 7;
                    }

                    else
                    {
                      if (v107 == a4)
                      {
                        goto LABEL_66;
                      }

                      if (&v107[-(v106 >> 3)] >= a4)
                      {
                        v81 = v106 >> 3;
                      }

                      else
                      {
                        v81 = (v107 - a4);
                      }

                      v82 = &v107[-v81];
                      v107 -= v81;
                      v83 = v106 - 8 * v81;
                    }

                    v106 = v83;
                    v105 = *v82;
                  }
                }

LABEL_66:
                if (v43)
                {
                  v57 = v105 << v106 >> -v43;
                  v106 += v43;
                  v41 += v57;
                }

                if (a6 != 1)
                {
                  v58 = ((v105 >> -(v106 + v49)) & BIT_mask_36272[v49]) + v46;
                  v59 = v106 + v49 + v50;
                  v114 = ((v105 >> -v59) & BIT_mask_36272[v50]) + v47;
                  v60 = v59 + v51;
                  v106 = v59 + v51;
                  v110 = v58;
                  v112 = ((v105 >> -(v59 + v51)) & BIT_mask_36272[v51]) + v48;
                  if ((v59 + v51) >= 0x41)
                  {
                    v107 = &BIT_reloadDStream_zeroFilled;
                    goto LABEL_78;
                  }

                  if (v107 >= v109)
                  {
                    v63 = &v107[-(v60 >> 3)];
                    v107 = v63;
                    v64 = v60 & 7;
LABEL_77:
                    v106 = v64;
                    v105 = *v63;
                    goto LABEL_78;
                  }

                  if (v107 != a4)
                  {
                    v61 = v60 >> 3;
                    if (&v107[-v61] >= a4)
                    {
                      v62 = v61;
                    }

                    else
                    {
                      v62 = (v107 - a4);
                    }

                    v63 = &v107[-v62];
                    v107 -= v62;
                    v64 = v60 - 8 * v62;
                    goto LABEL_77;
                  }
                }

LABEL_78:
                v65 = &v17[v41];
                v66 = v118;
                v67 = &v118[v41];
                _X9 = &v17[v41 - v53];
                __asm { PRFM            #0, [X9] }

                if (&v118[v41] > v104 || (v19 = v41 + v40, &v17[v41 + v40] > v36))
                {
                  v119[0] = v41;
                  v119[1] = v40;
                  v119[2] = v53;
                  v19 = ZSTD_execSequenceEnd(v17, v100, v119, &v118, v104, v11, v103, v102);
                }

                else
                {
                  *v17 = *v118;
                  v74 = v41 > 0x10;
                  v75 = v41 - 16;
                  if (v74)
                  {
                    *(v17 + 1) = *(v66 + 1);
                    if (v75 >= 17)
                    {
                      v84 = v17 + 32;
                      v85 = (v66 + 48);
                      do
                      {
                        *v84 = *(v85 - 1);
                        v86 = *v85;
                        v85 += 2;
                        *(v84 + 1) = v86;
                        v84 += 32;
                      }

                      while (v84 < v65);
                    }
                  }

                  v118 = v67;
                  if (v53 <= v65 - v11)
                  {
                    goto LABEL_85;
                  }

                  if (v53 > &v65[-v103])
                  {
                    return -20;
                  }

                  v76 = _X9 - v11;
                  v77 = (v102 + _X9 - v11);
                  if (v77 + v40 > v102)
                  {
                    memmove(v65, v77, v11 - _X9);
                    v65 -= v76;
                    v40 += v76;
                    _X9 = v11;
LABEL_85:
                    if (v53 < 0x10)
                    {
                      if (v53 > 7)
                      {
                        *v65 = *_X9;
                      }

                      else
                      {
                        v87 = ZSTD_overlapCopy8_dec64table[v53];
                        *v65 = *_X9;
                        v65[1] = _X9[1];
                        v65[2] = _X9[2];
                        v65[3] = _X9[3];
                        v88 = &_X9[ZSTD_overlapCopy8_dec32table[v53]];
                        *(v65 + 1) = *v88;
                        _X9 = &v88[-v87];
                      }

                      if (v40 >= 9)
                      {
                        v91 = _X9 + 8;
                        v92 = v65 + 8;
                        v93 = &v65[v40];
                        if (v65 - _X9 > 15)
                        {
                          *v92 = *v91;
                          if (v40 >= 25)
                          {
                            v95 = v65 + 24;
                            v96 = (_X9 + 40);
                            do
                            {
                              *v95 = *(v96 - 1);
                              v97 = *v96;
                              v96 += 2;
                              *(v95 + 1) = v97;
                              v95 += 32;
                            }

                            while (v95 < v93);
                          }
                        }

                        else
                        {
                          do
                          {
                            v94 = *v91;
                            v91 = (v91 + 8);
                            *v92 = v94;
                            v92 += 8;
                          }

                          while (v92 < v93);
                        }
                      }
                    }

                    else
                    {
                      *v65 = *_X9;
                      if (v40 >= 17)
                      {
                        v78 = v65 + 16;
                        v79 = (_X9 + 32);
                        do
                        {
                          *v78 = *(v79 - 1);
                          v80 = *v79;
                          v79 += 2;
                          *(v78 + 1) = v80;
                          v78 += 32;
                        }

                        while (v78 < &v65[v40]);
                      }
                    }

                    goto LABEL_91;
                  }

                  memmove(v65, v77, v40);
                }

LABEL_91:
                if (v19 > 0xFFFFFFFFFFFFFF88)
                {
                  return v19;
                }

                v17 += v19;
                if (!--a6)
                {
                  v19 = -20;
                  if (v107 == a4 && v106 == 64)
                  {
                    v9 = v100;
                    *v99 = vmovn_s64(v116);
                    v99[1].i32[0] = v117;
                    v10 = v118;
                    v7 = v101;
                    goto LABEL_11;
                  }

                  return v19;
                }
              }

              v52 = v105 << v106 >> -v45;
              v106 += v45;
              v53 = v52 + v42;
LABEL_60:
              v117 = v116.i64[1];
              v54 = &v116;
              goto LABEL_63;
            }

            v34 = v33 >> 3;
            if (&v24[-v34] >= a4)
            {
              v34 = v34;
            }

            else
            {
              v34 = (v24 - a4);
            }

            v107 = &v24[-v34];
            v106 = v33 - 8 * v34;
            v35 = *&v24[-v34];
          }

          v105 = v35;
          goto LABEL_57;
        }

        return -20;
      }
    }

    v15 += a4[3] << 24;
    goto LABEL_26;
  }

  v17 = v7;
LABEL_11:
  v18 = v104 - v10;
  if (v104 - v10 > (v9 - v17))
  {
    return -70;
  }

  if (v17)
  {
    memcpy(v17, v10, v104 - v10);
    v20 = &v17[v18];
  }

  else
  {
    v20 = 0;
  }

  return v20 - v7;
}

uint64_t ZSTD_execSequenceEnd(char *a1, uint64_t a2, uint64_t *a3, char **a4, uint64_t a5, char *a6, uint64_t a7, unint64_t a8)
{
  v8 = *a3;
  v9 = a3[1] + *a3;
  if (v9 > a2 - a1)
  {
    return -70;
  }

  v11 = *a4;
  if (v8 > (a5 - *a4))
  {
    return -20;
  }

  v12 = a1;
  v13 = &a1[v8];
  v14 = &v11[v8];
  v15 = a3[2];
  v16 = (a2 - 32);
  if (v8 > 7)
  {
    if (v13 <= v16)
    {
      *v12 = *v11;
      if (v8 >= 0x11)
      {
        v23 = v12 + 16;
        v24 = (v11 + 32);
        do
        {
          *v23 = *(v24 - 1);
          v25 = *v24;
          v24 += 2;
          *(v23 + 1) = v25;
          v23 += 32;
        }

        while (v23 < v13);
      }

      goto LABEL_55;
    }

    v20 = v16 - v12;
    if (v16 >= v12)
    {
      *v12 = *v11;
      if (v20 >= 17)
      {
        v26 = v12 + 16;
        v27 = (v11 + 32);
        do
        {
          *v26 = *(v27 - 1);
          v28 = *v27;
          v27 += 2;
          *(v26 + 1) = v28;
          v26 += 32;
        }

        while (v26 < v16);
      }

      v22 = &v11[v20];
      v21 = v16;
    }

    else
    {
      v21 = v12;
      v22 = *a4;
    }

    if (v21 >= v13)
    {
      goto LABEL_55;
    }

    v29 = &v12[v8];
    if (v12 <= v16)
    {
      v30 = v16;
    }

    else
    {
      v30 = v12;
    }

    v31 = v29 - v30;
    if (v31 >= 8 && (v12 - v11) >= 0x20)
    {
      if (v31 >= 0x20)
      {
        v32 = v31 & 0xFFFFFFFFFFFFFFE0;
        v43 = v30 + 16;
        v44 = &v11[v30 + 16 - v12];
        v45 = v31 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v46 = *v44;
          *(v43 - 1) = *(v44 - 1);
          *v43 = v46;
          v44 += 32;
          v43 += 2;
          v45 -= 32;
        }

        while (v45);
        if (v31 == v32)
        {
          goto LABEL_55;
        }

        if ((v31 & 0x18) == 0)
        {
          v21 += v32;
          v22 += v32;
          goto LABEL_54;
        }
      }

      else
      {
        v32 = 0;
      }

      v47 = v31 & 0xFFFFFFFFFFFFFFF8;
      v22 += v31 & 0xFFFFFFFFFFFFFFF8;
      v48 = v32 - (v31 & 0xFFFFFFFFFFFFFFF8);
      v49 = &v30[v32];
      v50 = &v11[v49 - v12];
      do
      {
        v51 = *v50;
        v50 += 8;
        *v49 = v51;
        v49 += 8;
        v48 += 8;
      }

      while (v48);
      if (v31 == v47)
      {
        goto LABEL_55;
      }

      v21 += v47;
    }

    do
    {
LABEL_54:
      v53 = *v22++;
      *v21++ = v53;
    }

    while (v21 < v13);
    goto LABEL_55;
  }

  if (v8 < 1)
  {
    goto LABEL_55;
  }

  v17 = &v12[v8];
  if (&v12[v8] <= v12 + 1)
  {
    v17 = v12 + 1;
  }

  v18 = v17 - v12;
  if (v18 < 8)
  {
    v33 = *a4;
    goto LABEL_51;
  }

  if ((v12 - v11) < 0x20)
  {
    v33 = *a4;
    goto LABEL_51;
  }

  if (v18 >= 0x20)
  {
    v19 = v18 & 0xFFFFFFFFFFFFFFE0;
    v34 = v12 + 16;
    v35 = (v11 + 16);
    v36 = v18 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v37 = *v35;
      *(v34 - 1) = *(v35 - 1);
      *v34 = v37;
      v34 += 2;
      v35 += 2;
      v36 -= 32;
    }

    while (v36);
    if (v18 == v19)
    {
      goto LABEL_55;
    }

    if ((v18 & 0x18) == 0)
    {
      v12 += v19;
      v33 = &v11[v19];
      do
      {
LABEL_51:
        v52 = *v33++;
        *v12++ = v52;
      }

      while (v12 < v13);
      goto LABEL_55;
    }
  }

  else
  {
    v19 = 0;
  }

  v38 = v18 & 0xFFFFFFFFFFFFFFF8;
  v33 = &v11[v18 & 0xFFFFFFFFFFFFFFF8];
  v39 = v19 - (v18 & 0xFFFFFFFFFFFFFFF8);
  v40 = &v12[v19];
  v41 = &v11[v19];
  do
  {
    v42 = *v41;
    v41 += 8;
    *v40 = v42;
    v40 += 8;
    v39 += 8;
  }

  while (v39);
  if (v18 != v38)
  {
    v12 += v38;
    goto LABEL_51;
  }

LABEL_55:
  v54 = &v13[-v15];
  *a4 = v14;
  v55 = a3[2];
  if (v55 <= v13 - a6)
  {
    v56 = v9;
    v57 = a3[1];
    v58 = &v13[-v15];
  }

  else
  {
    if (v55 > &v13[-a7])
    {
      return -20;
    }

    v56 = v9;
    v59 = v54 - a6;
    v60 = (a8 + v54 - a6);
    if (v60 + a3[1] <= a8)
    {
      memmove(v13, v60, a3[1]);
      return v56;
    }

    v61 = v13;
    v62 = v16;
    memmove(v13, v60, -v59);
    v16 = v62;
    v58 = a6;
    v13 = &v61[-v59];
    v57 = a3[1] + v59;
    a3[1] = v57;
  }

  ZSTD_safecopy(v13, v16, v58, v57);
  return v56;
}

_BYTE *ZSTD_safecopy(_BYTE *result, _BYTE *a2, char *a3, uint64_t a4)
{
  v4 = result - a3;
  v5 = &result[a4];
  if (a4 > 7)
  {
    if (v4 > 7)
    {
      *result = *a3;
    }

    else
    {
      v9 = ZSTD_overlapCopy8_dec64table[v4];
      *result = *a3;
      result[1] = a3[1];
      result[2] = a3[2];
      result[3] = a3[3];
      v10 = &a3[ZSTD_overlapCopy8_dec32table[v4]];
      *(result + 1) = *v10;
      a3 = &v10[-v9];
    }

    v11 = a3 + 8;
    v12 = (result + 8);
    if (v5 <= a2)
    {
      if ((v12 - v11) > 15)
      {
        *v12 = *v11;
        if ((a4 - 8) >= 0x11)
        {
          v20 = result + 24;
          v21 = a3 + 40;
          do
          {
            *v20 = *(v21 - 1);
            v22 = *v21;
            v21 += 32;
            v20[1] = v22;
            v20 += 2;
          }

          while (v20 < v5);
        }
      }

      else
      {
        do
        {
          v15 = *v11;
          v11 += 8;
          *v12 = v15;
          v12 += 8;
        }

        while (v12 < v5);
      }

      return result;
    }

    if (v12 <= a2)
    {
      v16 = &a2[-v12];
      if ((v12 - v11) >= 16)
      {
        *v12 = *v11;
        if (v16 > 16)
        {
          v33 = result + 24;
          v34 = a3 + 40;
          do
          {
            *v33 = *(v34 - 1);
            v35 = *v34;
            v34 += 32;
            v33[1] = v35;
            v33 += 2;
          }

          while (v33 < a2);
        }
      }

      else
      {
        v17 = result + 8;
        v18 = a3 + 8;
        do
        {
          v19 = *v18;
          v18 += 8;
          *v17++ = v19;
        }

        while (v17 < a2);
      }

      v14 = &v11[v16];
      v13 = a2;
      if (a2 >= v5)
      {
        return result;
      }
    }

    else
    {
      v13 = result + 8;
      v14 = a3 + 8;
      if (v12 >= v5)
      {
        return result;
      }
    }

    if (v12 <= a2)
    {
      v36 = a2;
    }

    else
    {
      v36 = result + 8;
    }

    v37 = &result[a4] - v36;
    if (v37 >= 8 && v12 - v11 >= 0x20)
    {
      if (v37 >= 0x20)
      {
        v38 = v37 & 0xFFFFFFFFFFFFFFE0;
        v39 = v36 + 16;
        v40 = &a3[v36 + 16 - result];
        v41 = v37 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v42 = *v40;
          *(v39 - 1) = *(v40 - 1);
          *v39 = v42;
          v40 += 32;
          v39 += 2;
          v41 -= 32;
        }

        while (v41);
        if (v37 == v38)
        {
          return result;
        }

        if ((v37 & 0x18) == 0)
        {
          v13 += v38;
          v14 += v38;
          goto LABEL_60;
        }
      }

      else
      {
        v38 = 0;
      }

      v43 = v37 & 0xFFFFFFFFFFFFFFF8;
      v14 += v37 & 0xFFFFFFFFFFFFFFF8;
      v44 = v38 - (v37 & 0xFFFFFFFFFFFFFFF8);
      v45 = &v36[v38];
      v46 = &a3[v45 - result];
      do
      {
        v47 = *v46;
        v46 += 8;
        *v45 = v47;
        v45 += 8;
        v44 += 8;
      }

      while (v44);
      if (v37 == v43)
      {
        return result;
      }

      v13 += v43;
    }

    do
    {
LABEL_60:
      v49 = *v14++;
      *v13++ = v49;
    }

    while (v13 < v5);
    return result;
  }

  if (a4 < 1)
  {
    return result;
  }

  v6 = &result[a4];
  if (&result[a4] <= result + 1)
  {
    v6 = result + 1;
  }

  v7 = v6 - result;
  if (v7 < 8)
  {
    v23 = a3;
    goto LABEL_57;
  }

  if (v4 < 0x20)
  {
    v23 = a3;
    goto LABEL_57;
  }

  if (v7 >= 0x20)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFE0;
    v24 = result + 16;
    v25 = a3 + 16;
    v26 = v7 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v27 = *v25;
      *(v24 - 1) = *(v25 - 1);
      *v24 = v27;
      v24 += 2;
      v25 += 32;
      v26 -= 32;
    }

    while (v26);
    if (v7 == v8)
    {
      return result;
    }

    if ((v7 & 0x18) == 0)
    {
      result += v8;
      v23 = &a3[v8];
      do
      {
LABEL_57:
        v48 = *v23++;
        *result++ = v48;
      }

      while (result < v5);
      return result;
    }
  }

  else
  {
    v8 = 0;
  }

  v28 = v7 & 0xFFFFFFFFFFFFFFF8;
  v23 = &a3[v7 & 0xFFFFFFFFFFFFFFF8];
  v29 = v8 - (v7 & 0xFFFFFFFFFFFFFFF8);
  v30 = &result[v8];
  v31 = &a3[v8];
  do
  {
    v32 = *v31;
    v31 += 8;
    *v30++ = v32;
    v29 += 8;
  }

  while (v29);
  if (v7 != v28)
  {
    result += v28;
    goto LABEL_57;
  }

  return result;
}

unint64_t ZSTD_execSequenceEndSplitLitBuffer(char *a1, uint64_t a2, _BYTE *a3, uint64_t *a4, char **a5, uint64_t a6, char *a7, uint64_t a8, unint64_t a9)
{
  v9 = *a4;
  v10 = a4[1] + *a4;
  if (v10 > a2 - a1)
  {
    return -70;
  }

  v12 = *a5;
  if (v9 > (a6 - *a5))
  {
    return -20;
  }

  v13 = (v12 + v9);
  v14 = a4[2];
  if (v12 < a1 && v13 > a1)
  {
    return -70;
  }

  v16 = &a1[v9];
  v17 = a1;
  v18 = &a1[-v12];
  if (v9 < 8 || v18 >= -7)
  {
    if (v9 < 1)
    {
      goto LABEL_50;
    }

    v25 = &a1[v9];
    if (v25 <= a1 + 1)
    {
      v25 = a1 + 1;
    }

    v26 = v25 - a1;
    if ((v25 - v17) < 8 || v18 < 0x20)
    {
      goto LABEL_49;
    }

    if (v26 >= 0x20)
    {
      v27 = v26 & 0xFFFFFFFFFFFFFFE0;
      v40 = (v12 + 16);
      v41 = v17 + 16;
      v42 = v26 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v43 = *v40;
        *(v41 - 1) = *(v40 - 1);
        *v41 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 32;
      }

      while (v42);
      if (v26 == v27)
      {
        goto LABEL_50;
      }

      if ((v26 & 0x18) == 0)
      {
        v12 += v27;
        v17 += v27;
        goto LABEL_49;
      }
    }

    else
    {
      v27 = 0;
    }

    v44 = v26 & 0xFFFFFFFFFFFFFFF8;
    v45 = v17;
    v17 += v26 & 0xFFFFFFFFFFFFFFF8;
    v46 = v27 - (v26 & 0xFFFFFFFFFFFFFFF8);
    v47 = (v12 + v27);
    v48 = &v45[v27];
    do
    {
      v49 = *v47++;
      *v48 = v49;
      v48 += 8;
      v46 += 8;
    }

    while (v46);
    if (v26 == v44)
    {
      goto LABEL_50;
    }

    v12 += v44;
    do
    {
LABEL_49:
      v52 = *v12++;
      *v17++ = v52;
    }

    while (v17 < v16);
    goto LABEL_50;
  }

  v19 = 0;
  v20 = v16 - 32;
  v21 = v16 - 32 - v17;
  if (v16 - 32 < v17 || v18 > 0xFFFFFFFFFFFFFFEFLL)
  {
    v20 = v17;
  }

  else
  {
    *v17 = *v12;
    if (v21 >= 17)
    {
      v22 = v17 + 16;
      v23 = (v12 + 32);
      do
      {
        *v22 = *(v23 - 1);
        v24 = *v23;
        v23 += 2;
        *(v22 + 1) = v24;
        v22 += 32;
      }

      while (v22 < v20);
    }

    v12 += v21;
    v19 = &v20[-v12] < 0x20;
  }

  v28 = &v17[v9] - v20;
  if (v28 < 8 || v19)
  {
    v30 = v20;
    goto LABEL_45;
  }

  if (v28 >= 0x20)
  {
    v29 = v28 & 0xFFFFFFFFFFFFFFE0;
    v31 = (v12 + 16);
    v32 = v20 + 16;
    v33 = v28 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v34 = *v31;
      *(v32 - 1) = *(v31 - 1);
      *v32 = v34;
      v31 += 2;
      v32 += 2;
      v33 -= 32;
    }

    while (v33);
    if (v28 == v29)
    {
      goto LABEL_50;
    }

    if ((v28 & 0x18) == 0)
    {
      v12 += v29;
      v30 = &v20[v29];
LABEL_45:
      v50 = &v20[v28];
      do
      {
        v51 = *v12++;
        *v30++ = v51;
      }

      while (v30 != v50);
      goto LABEL_50;
    }
  }

  else
  {
    v29 = 0;
  }

  v35 = v28 & 0xFFFFFFFFFFFFFFF8;
  v30 = &v20[v28 & 0xFFFFFFFFFFFFFFF8];
  v36 = v29 - (v28 & 0xFFFFFFFFFFFFFFF8);
  v37 = (v12 + v29);
  v38 = &v20[v29];
  do
  {
    v39 = *v37++;
    *v38 = v39;
    v38 += 8;
    v36 += 8;
  }

  while (v36);
  if (v28 != v35)
  {
    v12 += v35;
    goto LABEL_45;
  }

LABEL_50:
  v53 = &v16[-v14];
  *a5 = v13;
  v54 = a4[2];
  if (v54 <= v16 - a7)
  {
    v55 = v10;
    v56 = a4[1];
    v57 = &v16[-v14];
  }

  else
  {
    if (v54 > &v16[-a8])
    {
      return -20;
    }

    v55 = v10;
    v58 = v53 - a7;
    v59 = (a9 + v53 - a7);
    if (v59 + a4[1] <= a9)
    {
      memmove(v16, v59, a4[1]);
      return v55;
    }

    v60 = v16;
    v61 = a3;
    memmove(v16, v59, a7 - v53);
    v57 = a7;
    a3 = v61;
    v16 = &v60[-v58];
    v56 = a4[1] + v58;
    a4[1] = v56;
  }

  ZSTD_safecopy(v16, a3, v57, v56);
  return v55;
}

unint64_t FSE_readNCount_bmi2(void *a1, _DWORD *a2, _DWORD *a3, char *a4, size_t a5)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (a5 > 7)
  {
    v12 = (*a2 + 1);
    bzero(a1, 2 * v12);
    v13 = *a4 & 0xF;
    if (v13 > 0xA)
    {
      return -44;
    }

    v14 = 0;
    v15 = *a4 >> 4;
    *a3 = v13 + 5;
    v16 = 32 << v13;
    v17 = (32 << v13) | 1;
    v18 = v13 + 6;
    v19 = &a4[a5 - 7];
    v20 = &a4[a5 - 4];
    v21 = 4;
    v22 = a4;
    while (1)
    {
      v28 = 2 * v16 - 1;
      v29 = v28 - v17;
      v30 = v15 & (v16 - 1);
      v31 = v15 & v28;
      if (v31 >= v16)
      {
        v32 = v28 - v17;
      }

      else
      {
        v32 = 0;
      }

      v33 = v31 - v32;
      v34 = v18 - 1;
      if (v30 < v29)
      {
        v33 = v30;
      }

      else
      {
        v34 = v18;
      }

      v26 = v34 + v21;
      v35 = v33 - 1;
      if (v33 <= 0)
      {
        v36 = v33 - 1;
      }

      else
      {
        v36 = 1 - v33;
      }

      v17 += v36;
      *(a1 + v14++) = v35;
      v37 = v35 != 0;
      if (v17 < v16)
      {
        if (v17 < 2)
        {
          goto LABEL_41;
        }

        v38 = __clz(v17);
        v18 = 32 - v38;
        v16 = 1 << (v38 ^ 0x1F);
      }

      if (v14 >= v12)
      {
        break;
      }

      v39 = v26 >> 3;
      if (v22 <= v19 || &v22[v39] <= v20)
      {
        v22 += v39;
        v21 = v26 & 7;
      }

      else
      {
        v21 = (v26 + 8 * (v22 - v20)) & 0x1F;
        v22 = &a4[a5 - 4];
      }

      v15 = *v22 >> v21;
      if (!v37)
      {
        v23 = __clz(__rbit32(~v15 | 0x80000000));
        if (v23 >= 0x18)
        {
          do
          {
            if (v22 <= v19)
            {
              v22 += 3;
            }

            else
            {
              v21 = (v21 + 8 * (v22 - v19)) & 0x1F;
              v22 = &a4[a5 - 4];
            }

            v15 = *v22 >> v21;
            v23 = __clz(__rbit32(~v15 | 0x80000000));
            v14 += 36;
          }

          while (v23 > 0x17);
        }

        v24 = 3 * (v23 >> 1);
        v25 = v23 & 0x1E;
        v14 += v24 + ((v15 >> v25) & 3);
        v26 = v21 + v25 + 2;
        if (v14 >= v12)
        {
          goto LABEL_41;
        }

        v27 = v26 >> 3;
        if (v22 <= v19 || &v22[v27] <= v20)
        {
          v22 += v27;
          v21 = v26 & 7;
        }

        else
        {
          v21 = (v26 + 8 * (v22 - v20)) & 0x1F;
          v22 = &a4[a5 - 4];
        }

        v15 = *v22 >> v21;
      }
    }

    if (v17 != 1)
    {
      return -20;
    }

LABEL_41:
    if (v14 > v12)
    {
      return -48;
    }

    if (v26 <= 32)
    {
      *a2 = v14 - 1;
      return &v22[(v26 + 7) >> 3] - a4;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    v40[0] = 0;
    memcpy(v40, a4, a5);
    result = FSE_readNCount_bmi2(a1, a2, a3, v40, 8uLL);
    if (result > a5 && result < 0xFFFFFFFFFFFFFF89)
    {
      return -20;
    }
  }

  return result;
}

size_t HUF_readStats_wksp(unint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, char *a5, size_t a6, char *a7)
{
  if (!a6)
  {
    return -72;
  }

  v7 = *a5;
  if (*a5 < 0)
  {
    if ((v7 - 126) >> 1 >= a6)
    {
      return -72;
    }

    v17 = v7 - 127;
    if (v7 - 127 > 0xFF)
    {
      return -20;
    }

    if (v7 == 127)
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return -20;
    }

    v18 = v7 - 128;
    if (v7 - 128 <= 0xD || ((v19 = a5 + 1, &a5[(v18 >> 1) + 2] > a1) ? (v20 = v19 >= a1 + (v7 & 0x7E) + 2) : (v20 = 1), !v20))
    {
      v23 = 0;
      goto LABEL_22;
    }

    v21 = (v18 >> 1) + 1;
    if (v18 >= 0x3E)
    {
      v73 = 0;
      v22 = v21 & 0x60;
      v74 = (a1 + 32);
      v75.i64[0] = 0xF0F0F0F0F0F0F0FLL;
      v75.i64[1] = 0xF0F0F0F0F0F0F0FLL;
      do
      {
        v76 = &v19[v73 & 0x7FFFFFFFFFFFFFE0];
        v77 = *(v76 + 1);
        v208.val[0] = vshrq_n_u8(*v76, 4uLL);
        v208.val[1] = vandq_s8(*v76, v75);
        v78 = v74 - 32;
        vst2q_s8(v78, v208);
        v208.val[0] = vshrq_n_u8(v77, 4uLL);
        v208.val[1] = vandq_s8(v77, v75);
        vst2q_s8(v74, v208);
        v73 += 32;
        v74 += 64;
      }

      while (v22 != v73);
      if (v21 == v22)
      {
        goto LABEL_24;
      }

      if ((v21 & 0x18) == 0)
      {
        v23 = 2 * v22;
        goto LABEL_22;
      }
    }

    else
    {
      v22 = 0;
    }

    v79 = v21 & 0x78;
    v80 = (a1 + 2 * v22);
    do
    {
      v81 = *&v19[v22 & 0x7FFFFFFFFFFFFFF8];
      v207.val[0] = vshr_n_u8(v81, 4uLL);
      v207.val[1] = vand_s8(v81, 0xF0F0F0F0F0F0F0FLL);
      vst2_s8(v80, v207);
      v80 += 16;
      v22 += 8;
    }

    while (v79 != v22);
    if (v21 == v79)
    {
      goto LABEL_24;
    }

    v23 = 2 * v79;
LABEL_22:
    v24 = &a5[(v23 >> 1) + 1];
    do
    {
      v25 = (a1 + v23);
      *v25 = *v24 >> 4;
      v26 = *v24++;
      v25[1] = v26 & 0xF;
      v23 += 2;
    }

    while (v23 < v17);
LABEL_24:
    v7 = (v7 - 126) >> 1;
    goto LABEL_25;
  }

  if (v7 >= a6)
  {
    return -72;
  }

  v194 = a2;
  v195 = a4;
  v192 = a1;
  v193 = a3;
  v8 = a5 + 1;
  v196 = 255;
  v197 = 0;
  v10 = FSE_readNCount_bmi2(a7, &v196, &v197, a5 + 1, v7);
  v11 = v10;
  if (v10 > 0xFFFFFFFFFFFFFF88)
  {
    return v11;
  }

  v12 = v197;
  if (v197 > 6)
  {
    return -44;
  }

  v13 = v196;
  v14 = v196 + 1;
  v15 = 4 << v197;
  if ((((4 << v197) + (1 << v197) + 2 * v14 + 19) & 0x7FFFFFFFFFFFFFFCuLL) > 0x168)
  {
    return -44;
  }

  v11 = -46;
  if (v196 <= 0xFF)
  {
    v36 = (v15 + 4);
    if ((1 << v197) + 2 * v14 + 8 <= (364 - v36))
    {
      v37 = 0;
      v38 = a7;
      v39 = (a7 + 512);
      v40 = &v8[v10];
      v17 = v7 - v10;
      v41 = &a7[v36 + 512];
      v42 = a7 + 516;
      v43 = &v41[2 * v196 + 2];
      v44 = 1 << v197;
      v45 = (1 << v197) - 1;
      v46 = (0x8000 << v197) >> 16;
      v47 = 1;
      v48 = (1 << v197) - 1;
      a3 = v193;
      a2 = v194;
      a1 = v192;
      a4 = v195;
      do
      {
        v50 = *&v38[2 * v37];
        if (v50 == -1)
        {
          v51 = &v42[4 * v48--];
          v51[2] = v37;
          v49 = 1;
        }

        else
        {
          v49 = *&v38[2 * v37];
          if (v46 <= v50)
          {
            v47 = 0;
          }
        }

        *&v41[2 * v37++] = v49;
      }

      while (v14 != v37);
      *(v38 + 256) = v12;
      *(v38 + 257) = v47;
      v52 = (v44 >> 3) + (v44 >> 1) + 3;
      if (v48 == v45)
      {
        v191 = v39;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v190 = 2 * v13 + v15;
        while (1)
        {
          v56 = *&v38[2 * v53];
          *(v43 + v54) = v55;
          if (v56 >= 9)
          {
            if (v56 <= 0x10)
            {
              v57 = 16;
            }

            else
            {
              v57 = v56;
            }

            v58 = v57 - 9;
            if (v58 >= 0x18)
            {
              v60 = (v58 >> 3) + 1;
              v61 = vdupq_n_s64(v55);
              v62 = &v38[v190 + 526 + v54];
              v63 = v60 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                *v62 = v61;
                v62[1] = v61;
                v62 += 2;
                v63 -= 4;
              }

              while (v63);
              if (v60 == (v60 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_47;
              }

              v59 = (8 * (v60 & 0x3FFFFFFFFFFFFFFCLL)) | 8;
            }

            else
            {
              v59 = 8;
            }

            v64 = &v38[v190 + 518 + v54 + v59];
            do
            {
              *v64++ = v55;
              v59 += 8;
            }

            while (v59 < v56);
          }

LABEL_47:
          v54 += v56;
          ++v53;
          v55 += 0x101010101010101;
          if (v53 == v14)
          {
            v69 = 0;
            v70 = 0;
            v71 = &v38[v190];
            do
            {
              v42[4 * (v70 & v45) + 2] = v71[v69 + 518];
              v42[4 * ((v70 + v52) & v45) + 2] = v71[v69 + 519];
              v70 = (v70 + 2 * v52) & v45;
              v69 += 2;
            }

            while (v69 < v44);
            v72 = 1 << v12;
            v39 = v191;
            goto LABEL_83;
          }
        }
      }

      v65 = 0;
      v66 = 0;
      do
      {
        v67 = *&v38[2 * v65];
        if (v67 >= 1)
        {
          for (i = 0; i != v67; ++i)
          {
            v42[4 * v66 + 2] = v65;
            do
            {
              v66 = (v52 + v66) & v45;
            }

            while (v66 > v48);
          }
        }

        ++v65;
      }

      while (v65 != v14);
      if (v66)
      {
        return -1;
      }

      v72 = v44;
LABEL_83:
      v82 = v12 - 31;
      v83 = v38 + 519;
      do
      {
        v84 = *(v83 - 1);
        v85 = *&v41[2 * v84];
        *&v41[2 * v84] = v85 + 1;
        LOBYTE(v84) = v82 + __clz(v85);
        *v83 = v84;
        *(v83 - 3) = (v85 << v84) - v44;
        v83 += 4;
        --v72;
      }

      while (v72);
      if (v47)
      {
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v200 = 0;
        v201 = 0;
        v198 = 0;
        v199 = 0;
        if (v17)
        {
          v205 = v40;
          v206 = v40 + 8;
          if (v17 >= 8)
          {
            v86 = *&v8[v7 - 8];
            v204 = &v8[v7 - 8];
            v202 = v86;
            if (HIBYTE(v86))
            {
              LODWORD(v203) = 8 - (__clz(HIBYTE(v86)) ^ 0x1F);
              if (v17 > 0xFFFFFFFFFFFFFF88)
              {
                goto LABEL_178;
              }

              goto LABEL_117;
            }

LABEL_94:
            v17 = -1;
            goto LABEL_178;
          }

          v88 = *v40;
          v204 = v40;
          v202 = v88;
          if (v17 > 4)
          {
            if (v17 != 5)
            {
              if (v17 != 6)
              {
                v88 |= v40[6] << 48;
              }

              v88 += v40[5] << 40;
            }

            v88 += v40[4] << 32;
          }

          else
          {
            if (v17 == 2)
            {
LABEL_114:
              v202 = v88 + (v40[1] << 8);
              goto LABEL_115;
            }

            if (v17 == 3)
            {
LABEL_113:
              v88 += v40[2] << 16;
              goto LABEL_114;
            }

            if (v17 != 4)
            {
LABEL_115:
              if (v8[v7 - 1])
              {
                LODWORD(v203) = __clz(v8[v7 - 1]) - 8 * v17 + 41;
LABEL_117:
                FSE_initDState(&v200, &v202, v39);
                FSE_initDState(&v198, &v202, v39);
                v90 = v203;
                v91 = v201;
                v92 = v202;
                v94 = v205;
                v93 = v206;
                v95 = v199;
                v96 = v200;
                v97 = v198;
                if (v203 > 0x40)
                {
                  v98 = 0;
                  v99 = &BIT_reloadDStream_zeroFilled_36125;
                  a3 = v193;
                  a2 = v194;
                  a1 = v192;
                  a4 = v195;
                  goto LABEL_134;
                }

                v98 = 0;
                v99 = v204;
                a3 = v193;
                a2 = v194;
                a1 = v192;
                a4 = v195;
                do
                {
                  if (v99 >= v93)
                  {
                    LODWORD(v100) = v90 >> 3;
                    v90 &= 7u;
                    v101 = 1;
                  }

                  else
                  {
                    if (v99 == v94)
                    {
                      goto LABEL_129;
                    }

                    v100 = v90 >> 3;
                    v101 = &v99[-v100] >= v94;
                    if (&v99[-v100] < v94)
                    {
                      LODWORD(v100) = v99 - v94;
                    }

                    v90 -= 8 * v100;
                  }

                  v99 -= v100;
                  v92 = *v99;
                  if (v98 > 0xFB || !v101)
                  {
                    goto LABEL_129;
                  }

                  v102 = (v91 + 4 * v96);
                  v103 = *v102;
                  v104 = *(v102 + 2);
                  LODWORD(v102) = *(v102 + 3);
                  v105 = (v92 << v90) >> -v102;
                  LODWORD(v102) = v90 + v102;
                  v106 = (v192 + v98);
                  *v106 = v104;
                  v107 = (v95 + 4 * v97);
                  v108 = *v107;
                  v109 = *(v107 + 2);
                  LODWORD(v107) = *(v107 + 3);
                  v110 = (v92 << v102) >> -v107;
                  LODWORD(v102) = v102 + v107;
                  v106[1] = v109;
                  v111 = v91 + 4 * v105 + 4 * v103;
                  v112 = *v111;
                  v113 = *(v111 + 2);
                  LODWORD(v111) = *(v111 + 3);
                  v114 = (v92 << v102) >> -v111;
                  LODWORD(v111) = v102 + v111;
                  v96 = v114 + v112;
                  v106[2] = v113;
                  v115 = (v95 + 4 * v110 + 4 * v108);
                  v116 = *v115;
                  v117 = *(v115 + 2);
                  LODWORD(v115) = *(v115 + 3);
                  v118 = (v92 << v111) >> -v115;
                  v90 = v111 + v115;
                  v97 = v118 + v116;
                  v106[3] = v117;
                  v98 += 4;
                }

                while (v90 <= 0x40);
                v99 = &BIT_reloadDStream_zeroFilled_36125;
LABEL_129:
                if (v98 <= 253)
                {
                  while (1)
                  {
LABEL_134:
                    v120 = a1 + v98;
                    v121 = (v91 + 4 * v96);
                    v122 = *v121;
                    v123 = *(v121 + 2);
                    v124 = *(v121 + 3);
                    v125 = v90 + v124;
                    *(a1 + v98) = v123;
                    v126 = (a1 + v98 + 1);
                    if (v90 + v124 > 0x40)
                    {
                      v185 = (v95 + 4 * v97 + 2);
                      v186 = 2;
                      goto LABEL_204;
                    }

                    if (v99 >= v93)
                    {
                      break;
                    }

                    if (v99 != v94)
                    {
                      v127 = v125 >> 3;
                      if (&v99[-v127] < v94)
                      {
                        LODWORD(v127) = v99 - v94;
                      }

                      v125 -= 8 * v127;
LABEL_141:
                      v99 -= v127;
                      v128 = *v99;
                      if (v98 > 0xFC)
                      {
                        goto LABEL_176;
                      }

                      goto LABEL_142;
                    }

                    v128 = v92;
                    if (v98 > 0xFC)
                    {
                      goto LABEL_176;
                    }

LABEL_142:
                    v96 = ((v92 << v90) >> -v124) + v122;
                    v129 = (v95 + 4 * v97);
                    v130 = *v129;
                    v131 = *(v129 + 3);
                    v90 = v125 + v131;
                    v132 = v98 + 2;
                    *v126 = *(v129 + 2);
                    if (v125 + v131 > 0x40)
                    {
                      v120 = a1 + v98;
                      v126 = (a1 + v132);
                      v185 = (v91 + 4 * v96 + 2);
                      v186 = 3;
LABEL_204:
                      v187 = v120 + v186;
                      *v126 = *v185;
LABEL_208:
                      a1 = v192;
                      a3 = v193;
                      v17 = v187 - v192;
                      a2 = v194;
                      a4 = v195;
LABEL_178:
                      v11 = v17;
                      if (v17 > 0xFFFFFFFFFFFFFF88)
                      {
                        return v11;
                      }

LABEL_25:
                      *(a2 + 48) = 0;
                      *(a2 + 16) = 0u;
                      *(a2 + 32) = 0u;
                      *a2 = 0u;
                      if (v17)
                      {
                        v27 = 0;
                        v28 = 0;
                        v29 = 1;
                        while (1)
                        {
                          v30 = *(a1 + v27);
                          if (v30 > 0xC)
                          {
                            break;
                          }

                          ++*(a2 + 4 * v30);
                          v28 += 1 << *(a1 + v27) >> 1;
                          v27 = v29++;
                          if (v17 <= v27)
                          {
                            if (v28 - 4096 < 0xFFFFF001)
                            {
                              return -20;
                            }

                            v31 = __clz(v28);
                            *a4 = 32 - v31;
                            v32 = (1 << -v31) - v28;
                            v33 = __clz(v32);
                            if (0x80000000 >> v33 != v32)
                            {
                              return -20;
                            }

                            v34 = 32 - v33;
                            *(a1 + v17) = v34;
                            ++*(a2 + 4 * v34);
                            v35 = *(a2 + 4);
                            v11 = -20;
                            if (v35 >= 2 && (v35 & 1) == 0)
                            {
                              *a3 = v17 + 1;
                              return v7 + 1;
                            }

                            return v11;
                          }
                        }
                      }

                      return -20;
                    }

                    if (v99 >= v93)
                    {
                      LODWORD(v119) = v90 >> 3;
                      v90 &= 7u;
                    }

                    else
                    {
                      if (v99 == v94)
                      {
                        v92 = v128;
                        goto LABEL_133;
                      }

                      v119 = v90 >> 3;
                      if (&v99[-v119] < v94)
                      {
                        LODWORD(v119) = v99 - v94;
                      }

                      v90 -= 8 * v119;
                    }

                    v99 -= v119;
                    v92 = *v99;
LABEL_133:
                    v97 = ((v128 << v125) >> -v131) + v130;
                    v98 = v132;
                    if (v132 == 254)
                    {
                      goto LABEL_176;
                    }
                  }

                  LODWORD(v127) = v125 >> 3;
                  v125 &= 7u;
                  goto LABEL_141;
                }

LABEL_176:
                v17 = -70;
                goto LABEL_178;
              }

LABEL_177:
              v17 = -20;
              goto LABEL_178;
            }
          }

          v88 += v40[3] << 24;
          goto LABEL_113;
        }

LABEL_95:
        v17 = -72;
        goto LABEL_178;
      }

      v202 = 0;
      v203 = 0;
      v204 = 0;
      v200 = 0;
      v201 = 0;
      v198 = 0;
      v199 = 0;
      if (!v17)
      {
        goto LABEL_95;
      }

      v205 = v40;
      v206 = v40 + 8;
      if (v17 >= 8)
      {
        v87 = *&v8[v7 - 8];
        v204 = &v8[v7 - 8];
        v202 = v87;
        if (!HIBYTE(v87))
        {
          goto LABEL_94;
        }

        LODWORD(v203) = 8 - (__clz(HIBYTE(v87)) ^ 0x1F);
        if (v17 > 0xFFFFFFFFFFFFFF88)
        {
          goto LABEL_178;
        }

LABEL_163:
        FSE_initDState(&v200, &v202, v39);
        FSE_initDState(&v198, &v202, v39);
        v133 = v203;
        v134 = v201;
        v135 = v202;
        v137 = v205;
        v136 = v206;
        v138 = v199;
        v139 = v200;
        v140 = v198;
        if (v203 <= 0x40)
        {
          v141 = 0;
          v142 = v204;
          a3 = v193;
          a2 = v194;
          a1 = v192;
          a4 = v195;
          do
          {
            if (v142 >= v136)
            {
              LODWORD(v143) = v133 >> 3;
              v133 &= 7u;
              v144 = 1;
            }

            else
            {
              if (v142 == v137)
              {
                goto LABEL_175;
              }

              v143 = v133 >> 3;
              v144 = &v142[-v143] >= v137;
              if (&v142[-v143] < v137)
              {
                LODWORD(v143) = v142 - v137;
              }

              v133 -= 8 * v143;
            }

            v142 -= v143;
            v135 = *v142;
            if (v141 > 0xFB || !v144)
            {
              goto LABEL_175;
            }

            v145 = (v134 + 4 * v139);
            v146 = *v145;
            v147 = *(v145 + 2);
            v148 = *(v145 + 3);
            v149 = v133 + v148;
            v150 = (v135 >> -v149) & BIT_mask_36272[v148];
            v151 = (v192 + v141);
            *v151 = v147;
            v152 = (v138 + 4 * v140);
            v153 = *v152;
            v154 = *(v152 + 2);
            v155 = *(v152 + 3);
            v156 = v149 + v155;
            v157 = (v135 >> -v156) & BIT_mask_36272[v155];
            v151[1] = v154;
            v158 = (v134 + 4 * v150 + 4 * v146);
            v159 = *v158;
            v160 = *(v158 + 2);
            v161 = *(v158 + 3);
            v162 = v156 + v161;
            v139 = ((v135 >> -v162) & BIT_mask_36272[v161]) + v159;
            v151[2] = v160;
            v163 = (v138 + 4 * v157 + 4 * v153);
            v164 = *v163;
            LOBYTE(v153) = *(v163 + 2);
            v165 = *(v163 + 3);
            v133 = v162 + v165;
            v140 = ((v135 >> -v133) & BIT_mask_36272[v165]) + v164;
            v151[3] = v153;
            v141 += 4;
          }

          while (v133 <= 0x40);
          v142 = &BIT_reloadDStream_zeroFilled_36125;
LABEL_175:
          if (v141 <= 253)
          {
            goto LABEL_185;
          }

          goto LABEL_176;
        }

        v141 = 0;
        v142 = &BIT_reloadDStream_zeroFilled_36125;
        a3 = v193;
        a2 = v194;
        a1 = v192;
        a4 = v195;
        while (1)
        {
LABEL_185:
          v167 = a1 + v141;
          v168 = (v134 + 4 * v139);
          v169 = *v168;
          v170 = *(v168 + 2);
          v171 = *(v168 + 3);
          v172 = v133 + v171;
          v173 = BIT_mask_36272[v171];
          *(a1 + v141) = v170;
          v174 = (a1 + v141 + 1);
          if (v172 > 0x40)
          {
            v188 = (v138 + 4 * v140 + 2);
            v189 = 2;
LABEL_207:
            v187 = v167 + v189;
            *v174 = *v188;
            goto LABEL_208;
          }

          if (v142 >= v136)
          {
            break;
          }

          if (v142 != v137)
          {
            v175 = v172 >> 3;
            if (&v142[-v175] < v137)
            {
              LODWORD(v175) = v142 - v137;
            }

            v176 = v172 - 8 * v175;
LABEL_192:
            v142 -= v175;
            v177 = *v142;
            if (v141 > 0xFC)
            {
              goto LABEL_176;
            }

            goto LABEL_193;
          }

          v176 = v172;
          v177 = v135;
          if (v141 > 0xFC)
          {
            goto LABEL_176;
          }

LABEL_193:
          v139 = ((v135 >> -v172) & v173) + v169;
          v178 = (v138 + 4 * v140);
          v179 = *v178;
          v180 = *(v178 + 2);
          v181 = *(v178 + 3);
          v182 = v176 + v181;
          v183 = BIT_mask_36272[v181];
          v184 = v141 + 2;
          *v174 = v180;
          if (v182 > 0x40)
          {
            v167 = a1 + v141;
            v174 = (a1 + v184);
            v188 = (v134 + 4 * v139 + 2);
            v189 = 3;
            goto LABEL_207;
          }

          if (v142 >= v136)
          {
            LODWORD(v166) = v182 >> 3;
            v133 = v182 & 7;
          }

          else
          {
            if (v142 == v137)
            {
              v133 = v182;
              v135 = v177;
              goto LABEL_184;
            }

            v166 = v182 >> 3;
            if (&v142[-v166] < v137)
            {
              LODWORD(v166) = v142 - v137;
            }

            v133 = v182 - 8 * v166;
          }

          v142 -= v166;
          v135 = *v142;
LABEL_184:
          v140 = ((v177 >> -v182) & v183) + v179;
          v141 = v184;
          if (v184 == 254)
          {
            goto LABEL_176;
          }
        }

        LODWORD(v175) = v172 >> 3;
        v176 = v172 & 7;
        goto LABEL_192;
      }

      v89 = *v40;
      v204 = v40;
      v202 = v89;
      if (v17 > 4)
      {
        if (v17 != 5)
        {
          if (v17 != 6)
          {
            v89 |= v40[6] << 48;
          }

          v89 += v40[5] << 40;
        }

        v89 += v40[4] << 32;
      }

      else
      {
        if (v17 == 2)
        {
LABEL_160:
          v202 = v89 + (v40[1] << 8);
LABEL_161:
          if (!v8[v7 - 1])
          {
            goto LABEL_177;
          }

          LODWORD(v203) = __clz(v8[v7 - 1]) - 8 * v17 + 41;
          goto LABEL_163;
        }

        if (v17 == 3)
        {
LABEL_159:
          v89 += v40[2] << 16;
          goto LABEL_160;
        }

        if (v17 != 4)
        {
          goto LABEL_161;
        }
      }

      v89 += v40[3] << 24;
      goto LABEL_159;
    }
  }

  return v11;
}

__n128 ZSTD_adjustCParams_internal(uint64_t a1, unsigned int *a2, unint64_t a3, unint64_t a4, int a5, unsigned int a6)
{
  if (a4)
  {
    v6 = a3 == -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 513;
  if (!v6)
  {
    v7 = a3;
  }

  if (a5 != 2)
  {
    v7 = a3;
  }

  if (a5 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (a5 == 1)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (v8 >= 0x40000001 || v9 >= 0x40000001)
  {
    v11 = *a2;
    if (v9 == -1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v10 = 32 - __clz(v9 + v8 - 1);
    if (v9 + v8 < 0x40)
    {
      v10 = 6;
    }

    v11 = *a2;
    if (*a2 > v10)
    {
      *a2 = v10;
      v11 = v10;
    }
  }

  v12 = (1 << v11) + v8;
  v13 = v9 + v8;
  v14 = v12 >> 31;
  v15 = 32 - __clz(v12 - 1);
  if (v14)
  {
    v15 = 31;
  }

  if (1 << v11 < v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  v18 = a2[1];
  v19 = v18 - (a2[6] > 5);
  if (a2[2] > v17 + 1)
  {
    a2[2] = v17 + 1;
  }

  if (v19 > v17)
  {
    a2[1] = v18 + v17 - v19;
  }

LABEL_33:
  if (v11 <= 9)
  {
    *a2 = 10;
  }

  v20 = a2[6];
  if (a5 == 2 && v20 - 3 >= 0xFFFFFFFE)
  {
    if (a2[2] >= 0x19)
    {
      a2[2] = 24;
    }

    if (a2[1] >= 0x19)
    {
      a2[1] = 24;
    }
  }

  else if (a6 <= 1 && v20 - 6 >= 0xFFFFFFFD)
  {
    v21 = a2[3];
    v22 = v21 | 0x18;
    if (v21 >= 6)
    {
      v22 = 30;
    }

    if (v21 >= 4)
    {
      v23 = v22;
    }

    else
    {
      v23 = 28;
    }

    if (a2[2] > v23)
    {
      a2[2] = v23;
    }
  }

  *a1 = *a2;
  result = *(a2 + 3);
  *(a1 + 12) = result;
  return result;
}

size_t ZSTD_resetCCtx_internal(uint64_t a1, __int128 *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  *(a1 + 944) = 1;
  v6 = *a2;
  *(a1 + 248) = a2[1];
  *(a1 + 232) = v6;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[5];
  *(a1 + 296) = a2[4];
  *(a1 + 312) = v9;
  *(a1 + 264) = v7;
  *(a1 + 280) = v8;
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[9];
  *(a1 + 360) = a2[8];
  *(a1 + 376) = v12;
  *(a1 + 328) = v10;
  *(a1 + 344) = v11;
  v13 = a2[10];
  v14 = a2[11];
  v15 = a2[12];
  *(a1 + 440) = *(a2 + 26);
  *(a1 + 408) = v14;
  *(a1 + 424) = v15;
  *(a1 + 392) = v13;
  v17 = a1 + 236;
  v16 = *(a1 + 236);
  v18 = *(a1 + 328);
  if (v18 == 1)
  {
    *(a1 + 348) = v16;
    if (*(a1 + 340))
    {
      v19 = *(a1 + 332);
      if (v19)
      {
LABEL_4:
        v20 = *(a1 + 336);
        if (!*(a1 + 344))
        {
          v21 = v16 - v19;
          if (v16 < v19)
          {
            v21 = 0;
          }

          *(a1 + 344) = v21;
        }

        if (!v20)
        {
          v20 = 3;
        }

        if (v20 < v19)
        {
          v19 = v20;
        }

        *(a1 + 336) = v19;
        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 340) = 64;
      v19 = *(a1 + 332);
      if (v19)
      {
        goto LABEL_4;
      }
    }

    v19 = v16 - 7;
    if (v16 - 7 <= 6)
    {
      v19 = 6;
    }

    *(a1 + 332) = v19;
    goto LABEL_4;
  }

LABEL_13:
  v22 = 1 << v16;
  if (1 << v16 >= a3)
  {
    v22 = a3;
  }

  if (a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(a1 + 424);
  v25 = *(a1 + 432);
  if (v25 >= v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = *(a1 + 432);
  }

  v27 = *(a1 + 252);
  if (v24)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27 == 3;
  }

  if (v28)
  {
    v29 = 3;
  }

  else
  {
    v29 = 4;
  }

  if (*(a1 + 360))
  {
    v30 = 0;
  }

  else
  {
    if (v26 > 0xFF00FF00FF00FEFFLL)
    {
      goto LABEL_33;
    }

    v31 = (0x20000 - v26) >> 11;
    if (v26 >= 0x20000)
    {
      v31 = 0;
    }

    v32 = v26 + (v26 >> 8) + v31;
    if (!v32)
    {
LABEL_33:
      v32 = -72;
    }

    v30 = v32 + 1;
  }

  v33 = 0;
  if (*(a1 + 356))
  {
    v34 = 0;
  }

  else
  {
    v34 = v26 + v23;
  }

  v35 = *(a1 + 340);
  if (v18 == 1)
  {
    v33 = v26 / v35;
  }

  v36 = 1;
  if (!(a4 >> 29) && *(a1 + 3216) - *(a1 + 3224) <= 0xDF000000uLL)
  {
    v36 = *(a1 + 948) == 0;
  }

  v37 = *(a1 + 376);
  v38 = *(a1 + 260);
  if (v38 == 1 || v37 == 1 && v38 - 3 < 3)
  {
    v39 = 0;
  }

  else
  {
    v39 = 4 << *(a1 + 240);
  }

  v40 = 0;
  v41 = *(a1 + 904);
  if (!v25)
  {
    v25 = 0x20000;
  }

  if (v25 >= v23)
  {
    v25 = v23;
  }

  v42 = *(a1 + 244);
  if (v16 >= 0x11)
  {
    v16 = 17;
  }

  if (v27 == 3)
  {
    v43 = v16;
  }

  else
  {
    v43 = 0;
  }

  v44 = 128;
  if (v38 > 6)
  {
    v44 = 149376;
  }

  v45 = v38 - 6 >= 0xFFFFFFFD && v37 == 1;
  v46 = ((1 << v42) + 63) & 0xFFFFFFFFFFFFFFC0;
  if (!v45)
  {
    v46 = 0;
  }

  v47 = 4 << v42;
  v48 = 4 << v43;
  if (!v43)
  {
    v48 = 0;
  }

  v49 = *(a1 + 332);
  v50 = *(a1 + 336);
  if (v50 >= v49)
  {
    LOBYTE(v50) = *(a1 + 332);
  }

  v51 = (1 << (v49 - v50)) + (8 << v49);
  v52 = v18 == 1;
  if (v18 == 1)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v40 = (12 * (v25 / v35) + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  if (v24)
  {
    v54 = (16 * ((v25 >> 10) + v25 / 3) + 95) & 0xFFFFFFFFFFFFFFC0;
  }

  else
  {
    v54 = 0;
  }

  v55 = 25424;
  if (!v41)
  {
    v55 = 20184;
  }

  result = v34 + v55 + v30 + v44 + v25 + v48 + v39 + v54 + 3 * (v25 / v29) + ((8 * (v25 / v29) + 63) & 0xFFFFFFFFFFFFFFC0) + v47 + v53 + v46 + v40 + 32;
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (!v41)
    {
      ++*(a1 + 740);
    }

    v57 = *(a1 + 680);
    v58 = *(a1 + 688);
    v59 = *(a1 + 720) - *(a1 + 704) >= 3 * result && *(a1 + 740) > 128;
    if (v58 - v57 >= result && !v59)
    {
      v61 = (a1 + 744);
      v62 = *(a1 + 744);
      *(a1 + 704) = *(a1 + 696);
      *(a1 + 720) = v58 & 0xFFFFFFFFFFFFFFC0;
      v63 = (a1 + 736);
      *(a1 + 736) = 0;
      if (v62 >= 2)
      {
        *v61 = 1;
      }
    }

    else
    {
      if (v41)
      {
        return -64;
      }

      v116 = v29;
      v68 = *(a1 + 880);
      v69 = *(a1 + 888);
      *(v17 + 444) = 0u;
      *(v17 + 460) = 0u;
      *(v17 + 476) = 0u;
      *(v17 + 492) = 0u;
      *(v17 + 508) = 0;
      v70 = a5;
      v71 = a3;
      v72 = result;
      if (v57)
      {
        if (v68)
        {
          v68(v69);
        }

        else
        {
          free(v57);
        }

        result = v72;
      }

      v84 = *(a1 + 872);
      if (v84)
      {
        v85 = v84(*(a1 + 888), result);
        if (!v85)
        {
          return -64;
        }
      }

      else
      {
        v85 = malloc_type_malloc(result, 0xB2223D72uLL);
        if (!v85)
        {
          return -64;
        }
      }

      *(a1 + 680) = v85;
      *(a1 + 688) = &v85[v72];
      *(a1 + 696) = v85;
      *(a1 + 712) = v85;
      v86 = &v85[v72] & 0xFFFFFFFFFFFFFFC0;
      *(a1 + 728) = v86;
      *(a1 + 744) = 0;
      *(a1 + 704) = v85;
      *(a1 + 720) = v86;
      *(a1 + 736) = 0;
      *(a1 + 740) = 0;
      if (v72 <= 5631)
      {
        *(a1 + 736) = 1;
        *(a1 + 3200) = 0;
        return -64;
      }

      *(a1 + 696) = v85 + 5632;
      *(a1 + 704) = v85 + 5632;
      *(a1 + 712) = v85 + 5632;
      *(a1 + 3200) = v85;
      if (v72 >> 10 <= 0xA)
      {
        *(a1 + 736) = 1;
        *(a1 + 3208) = 0;
        return -64;
      }

      *(a1 + 696) = v85 + 11264;
      *(a1 + 704) = v85 + 11264;
      *(a1 + 712) = v85 + 11264;
      *(a1 + 3208) = v85 + 5632;
      if (v72 >> 3 <= 0x9DA)
      {
        *(a1 + 736) = 1;
        *(a1 + 3520) = 0;
        return -64;
      }

      LODWORD(a5) = v70;
      a3 = v71;
      *(a1 + 696) = v85 + 20184;
      v61 = (a1 + 744);
      *(a1 + 712) = v85 + 20184;
      v63 = (a1 + 736);
      *(a1 + 3520) = v85 + 11264;
      *(a1 + 704) = v85 + 20184;
      v36 = 1;
      v29 = v116;
    }

    *(a1 + 3472) = *v17;
    *(a1 + 3484) = *(v17 + 12);
    *(a1 + 3512) = *(a1 + 408) == 1;
    *(a1 + 768) = 0u;
    *(a1 + 760) = a3 + 1;
    if (a3 == -1)
    {
      *(a1 + 264) = 0;
    }

    *(a1 + 752) = v26;
    *(a1 + 784) = 0uLL;
    *(a1 + 800) = 0uLL;
    *(a1 + 864) = 0;
    *(a1 + 832) = 0uLL;
    *(a1 + 848) = 0uLL;
    *(a1 + 816) = 0uLL;
    *(a1 + 792) = xmmword_182B08D10;
    *(a1 + 816) = 0x61C8864E7A143579;
    *a1 = 1;
    *(a1 + 664) = 0;
    *(a1 + 672) = 0;
    v64 = *(a1 + 3200);
    *(v64 + 5616) = 0x400000001;
    *(v64 + 5624) = 8;
    *(v64 + 2056) = 0;
    *(v64 + 5604) = 0;
    *(v64 + 5608) = 0;
    result = ZSTD_reset_matchState(a1 + 3216, v17 + 444, v17, *(a1 + 376), a5, v36, 1);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v65 = *v61;
      v66 = v26 / v29;
      if (*v61 <= 1)
      {
        if (!v65)
        {
          v73 = *(a1 + 696);
          *(a1 + 712) = v73;
          v74 = *(a1 + 688);
          *(a1 + 728) = v74 & 0xFFFFFFFFFFFFFFC0;
          v75 = -v73 & 0x3FLL;
          v76 = v73 + v75;
          if (v76 > v74)
          {
            v65 = 0;
            v67 = 0;
            goto LABEL_114;
          }

          *(a1 + 696) = v76;
          *(a1 + 704) = v76;
          if (v75)
          {
            *(a1 + 712) = v76;
          }
        }

        v65 = 2;
        *v61 = 2;
      }

      v67 = (8 * v66 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v67)
      {
        v67 = *(a1 + 720) - v67;
        if (v67 >= *(a1 + 704))
        {
          if (v67 < *(a1 + 712))
          {
            *(a1 + 712) = v67;
          }

          *(a1 + 720) = v67;
        }

        else
        {
          v67 = 0;
          *v63 = 1;
        }
      }

LABEL_114:
      *(a1 + 952) = v67;
      if (*(a1 + 328) != 1)
      {
        goto LABEL_153;
      }

      v77 = 8 << *(a1 + 332);
      if (v65 <= 1)
      {
        v78 = *(a1 + 696);
        *(a1 + 712) = v78;
        v79 = *(a1 + 688);
        *(a1 + 728) = v79 & 0xFFFFFFFFFFFFFFC0;
        v80 = -v78 & 0x3FLL;
        v81 = v78 + v80;
        if (v81 > v79)
        {
          goto LABEL_123;
        }

        *(a1 + 696) = v81;
        *(a1 + 704) = v81;
        if (v80)
        {
          *(a1 + 712) = v81;
        }

        *v61 = 2;
      }

      v82 = (v77 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v82)
      {
        v83 = (*(a1 + 720) - v82);
        if (v83 >= *(a1 + 704))
        {
          if (v83 < *(a1 + 712))
          {
            *(a1 + 712) = v83;
          }

          *(a1 + 720) = v83;
        }

        else
        {
          v83 = 0;
          *v63 = 1;
        }

LABEL_137:
        *(a1 + 1072) = v83;
        bzero(v83, v77);
        v65 = *(a1 + 744);
        if (v65 <= 1)
        {
          if (!v65)
          {
            v88 = *(a1 + 696);
            *(a1 + 712) = v88;
            v89 = *(a1 + 688);
            *(a1 + 728) = v89 & 0xFFFFFFFFFFFFFFC0;
            v90 = -v88 & 0x3FLL;
            v91 = v88 + v90;
            if (v91 > v89)
            {
              v65 = 0;
              v87 = 0;
LABEL_152:
              *(a1 + 3144) = v87;
              *(a1 + 3152) = v33;
              *(a1 + 1064) = 0;
              *(a1 + 1040) = " ";
              *(a1 + 1048) = " ";
              *(a1 + 1056) = 0x200000002;
              *(a1 + 1032) = "nw_utilities_get_self_is_daemon_block_invoke";
              *(a1 + 1080) = 0;
LABEL_153:
              if (!*(a1 + 424))
              {
                goto LABEL_167;
              }

              v92 = (v26 >> 10) + v26 / 3 + 2;
              *(a1 + 5232) = v92;
              if (v65 <= 1)
              {
                v93 = *(a1 + 696);
                *(a1 + 712) = v93;
                v94 = *(a1 + 688);
                *(a1 + 728) = v94 & 0xFFFFFFFFFFFFFFC0;
                v95 = -v93 & 0x3FLL;
                v96 = v93 + v95;
                if (v96 > v94)
                {
                  v65 = 0;
                  v97 = 0;
LABEL_166:
                  *(a1 + 5224) = v97;
LABEL_167:
                  if (v65 <= 2)
                  {
                    if (!v65)
                    {
                      v101 = *(a1 + 696);
                      *(a1 + 712) = v101;
                      v102 = *(a1 + 688);
                      *(a1 + 728) = v102 & 0xFFFFFFFFFFFFFFC0;
                      v103 = -v101 & 0x3FLL;
                      v104 = v101 + v103;
                      if (v104 > v102)
                      {
                        v65 = 0;
                        v100 = 0;
                        *(a1 + 968) = 0;
                        *(a1 + 1016) = v26;
                        *(a1 + 3528) = 1;
                        *(a1 + 3544) = v34;
                        *(a1 + 728) = v102 & 0xFFFFFFFFFFFFFFC0;
                        *(a1 + 3536) = 0;
                        *(a1 + 3584) = v30;
                        goto LABEL_193;
                      }

                      *(a1 + 696) = v104;
                      *(a1 + 704) = v104;
                      if (v103)
                      {
                        *(a1 + 712) = v104;
                      }
                    }

                    v65 = 3;
                    *v61 = 3;
                  }

                  if (v26 == -32)
                  {
                    v98 = 0;
                  }

                  else
                  {
                    v98 = *(a1 + 720) - v26 - 32;
                    if (v98 >= *(a1 + 704))
                    {
                      if (v98 < *(a1 + 712))
                      {
                        *(a1 + 712) = v98;
                      }

                      *(a1 + 720) = v98;
                    }

                    else
                    {
                      v98 = 0;
                      *v63 = 1;
                    }
                  }

                  *(a1 + 968) = v98;
                  *(a1 + 1016) = v26;
                  *(a1 + 3528) = 1;
                  *(a1 + 3544) = v34;
                  if (v34)
                  {
                    v99 = *(a1 + 720) - v34;
                    if (v99 >= *(a1 + 704))
                    {
                      if (v99 < *(a1 + 712))
                      {
                        *(a1 + 712) = v99;
                      }

                      *(a1 + 720) = v99;
                    }

                    else
                    {
                      v99 = 0;
                      *v63 = 1;
                    }
                  }

                  else
                  {
                    v99 = 0;
                  }

                  *(a1 + 3536) = v99;
                  *(a1 + 3584) = v30;
                  if (v30)
                  {
                    v100 = *(a1 + 720) - v30;
                    if (v100 >= *(a1 + 704))
                    {
                      if (v100 < *(a1 + 712))
                      {
                        *(a1 + 712) = v100;
                      }

                      *(a1 + 720) = v100;
                    }

                    else
                    {
                      v100 = 0;
                      *v63 = 1;
                    }
                  }

                  else
                  {
                    v100 = 0;
                  }

LABEL_193:
                  *(a1 + 3576) = v100;
                  if (*(a1 + 328) == 1)
                  {
                    v105 = 1 << (*(a1 + 332) - *(a1 + 336));
                    if (v65 <= 2)
                    {
                      v106 = *(a1 + 696);
                      *(a1 + 712) = v106;
                      *(a1 + 728) = *(a1 + 688) & 0xFFFFFFFFFFFFFFC0;
                      v28 = (-v106 & 0x3FLL) == 0;
                      v107 = v106 + (-v106 & 0x3FLL);
                      *(a1 + 696) = v107;
                      *(a1 + 704) = v107;
                      if (!v28)
                      {
                        *(a1 + 712) = v107;
                      }

                      *v61 = 3;
                    }

                    v108 = (*(a1 + 720) - v105);
                    if (v108 < *(a1 + 712))
                    {
                      *(a1 + 712) = v108;
                    }

                    *(a1 + 720) = v108;
                    *(a1 + 1088) = v108;
                    bzero(v108, v105);
                    v65 = *(a1 + 744);
                  }

                  *(a1 + 3192) = 0;
                  *(a1 + 3160) = 0u;
                  *(a1 + 3176) = 0u;
                  *(a1 + 1008) = v66;
                  if (v65 <= 2)
                  {
                    if (!v65)
                    {
                      v112 = *(a1 + 696);
                      *(a1 + 712) = v112;
                      v113 = *(a1 + 688);
                      *(a1 + 728) = v113 & 0xFFFFFFFFFFFFFFC0;
                      v114 = -v112 & 0x3FLL;
                      v115 = v112 + v114;
                      if (v115 > v113)
                      {
                        v109 = 0;
                        *(a1 + 984) = 0uLL;
                        *(a1 + 728) = v113 & 0xFFFFFFFFFFFFFFC0;
LABEL_223:
                        result = 0;
                        *(a1 + 1000) = v109;
                        *(a1 + 948) = 1;
                        return result;
                      }

                      *(a1 + 696) = v115;
                      *(a1 + 704) = v115;
                      if (v114)
                      {
                        *(a1 + 712) = v115;
                      }
                    }

                    *v61 = 3;
                  }

                  if (v29 <= v26)
                  {
                    v110 = *(a1 + 720) - v66;
                    if (v110 >= *(a1 + 704))
                    {
                      if (v110 < *(a1 + 712))
                      {
                        *(a1 + 712) = v110;
                      }

                      *(a1 + 720) = v110;
                    }

                    else
                    {
                      v110 = 0;
                      *v63 = 1;
                    }

                    *(a1 + 984) = v110;
                    v111 = *(a1 + 720) - v66;
                    if (v111 >= *(a1 + 704))
                    {
                      if (v111 < *(a1 + 712))
                      {
                        *(a1 + 712) = v111;
                      }

                      *(a1 + 720) = v111;
                    }

                    else
                    {
                      v111 = 0;
                      *v63 = 1;
                    }

                    *(a1 + 992) = v111;
                    v109 = *(a1 + 720) - v66;
                    if (v109 >= *(a1 + 704))
                    {
                      if (v109 < *(a1 + 712))
                      {
                        *(a1 + 712) = v109;
                      }

                      *(a1 + 720) = v109;
                    }

                    else
                    {
                      v109 = 0;
                      *v63 = 1;
                    }
                  }

                  else
                  {
                    v109 = 0;
                    *(a1 + 984) = 0uLL;
                  }

                  goto LABEL_223;
                }

                *(a1 + 696) = v96;
                *(a1 + 704) = v96;
                if (v95)
                {
                  *(a1 + 712) = v96;
                }

                v65 = 2;
                *v61 = 2;
              }

              v97 = (16 * v92 + 63) & 0xFFFFFFFFFFFFFFC0;
              if (v97)
              {
                v97 = *(a1 + 720) - v97;
                if (v97 >= *(a1 + 704))
                {
                  if (v97 < *(a1 + 712))
                  {
                    *(a1 + 712) = v97;
                  }

                  *(a1 + 720) = v97;
                }

                else
                {
                  v97 = 0;
                  *v63 = 1;
                }
              }

              goto LABEL_166;
            }

            *(a1 + 696) = v91;
            *(a1 + 704) = v91;
            if (v90)
            {
              *(a1 + 712) = v91;
            }
          }

          v65 = 2;
          *v61 = 2;
        }

        v87 = (12 * v33 + 63) & 0xFFFFFFFFFFFFFFC0;
        if (v87)
        {
          v87 = *(a1 + 720) - v87;
          if (v87 >= *(a1 + 704))
          {
            if (v87 < *(a1 + 712))
            {
              *(a1 + 712) = v87;
            }

            *(a1 + 720) = v87;
          }

          else
          {
            v87 = 0;
            *v63 = 1;
          }
        }

        goto LABEL_152;
      }

LABEL_123:
      v83 = 0;
      goto LABEL_137;
    }
  }

  return result;
}

uint64_t ZSTD_reset_matchState(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int a5, int a6, int a7)
{
  v7 = a3[6];
  if ((a7 || !*(a1 + 140)) && (v7 == 1 || a4 == 1 && (v7 - 3) < 3))
  {
    v8 = 0;
    if (a7 != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 4 << a3[1];
    if (a7 != 1)
    {
      goto LABEL_13;
    }
  }

  if (a3[4] == 3)
  {
    if (*a3 >= 0x11u)
    {
      v9 = 17;
    }

    else
    {
      v9 = *a3;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = a3[2];
  if (a6 == 1)
  {
    *(a1 + 32) = 0;
    v11 = " ";
    *(a1 + 8) = " ";
    *(a1 + 16) = " ";
    v12 = "nw_utilities_get_self_is_daemon_block_invoke";
    *a1 = "nw_utilities_get_self_is_daemon_block_invoke";
    v13 = *(a2 + 16);
    *(a2 + 32) = v13;
  }

  else
  {
    v12 = *a1;
    v11 = *(a1 + 8);
    v13 = *(a2 + 16);
  }

  *(a1 + 300) = 0;
  v14 = v12 - v11;
  *(a1 + 24) = v14;
  *(a1 + 28) = v14;
  *(a1 + 44) = v14;
  *(a1 + 48) = v9;
  *(a1 + 40) = 0;
  *(a1 + 196) = 0;
  *(a1 + 248) = 0;
  *(a2 + 24) = v13;
  if (*(a2 + 64))
  {
    v15 = v13;
  }

  else
  {
    *(a2 + 32) = v13;
    v16 = *(a2 + 8);
    *(a2 + 48) = v16 & 0xFFFFFFFFFFFFFFC0;
    v17 = -v13 & 0x3FLL;
    v15 = v13 + v17;
    if (v13 + v17 > v16)
    {
      v18 = 0;
      *(a1 + 112) = 0;
      *(a2 + 48) = v16 & 0xFFFFFFFFFFFFFFC0;
      *(a1 + 128) = 0;
      goto LABEL_36;
    }

    *(a2 + 16) = v15;
    *(a2 + 24) = v15;
    if (v17)
    {
      *(a2 + 32) = v15;
    }

    *(a2 + 64) = 1;
  }

  v19 = v15 + (4 << v10);
  v20 = *(a2 + 40);
  if (v19 <= v20)
  {
    *(a2 + 24) = v19;
  }

  else
  {
    *(a2 + 56) = 1;
    v19 = v15;
    v15 = 0;
  }

  *(a1 + 112) = v15;
  v18 = v19 + v8;
  if (v18 <= v20)
  {
    *(a2 + 24) = v18;
  }

  else
  {
    *(a2 + 56) = 1;
    v18 = v19;
    v19 = 0;
  }

  *(a1 + 128) = v19;
  if (v9)
  {
    v21 = 4 << v9;
  }

  else
  {
    v21 = 0;
  }

  v13 = v18 + v21;
  if (v13 <= v20)
  {
    *(a2 + 24) = v13;
  }

  else
  {
    *(a2 + 56) = 1;
    v13 = v18;
    v18 = 0;
  }

LABEL_36:
  *(a1 + 120) = v18;
  if (*(a2 + 56))
  {
    return -64;
  }

  if (a5 != 1)
  {
    v23 = *(a2 + 32);
    if (v23 < v13)
    {
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v27 = a7;
      v28 = a4;
      bzero(*(a2 + 32), v13 - v23);
      a4 = v28;
      a7 = v27;
      a3 = v26;
      a1 = v24;
      a2 = v25;
      v13 = *(v25 + 24);
      v23 = *(v25 + 32);
    }

    if (v23 < v13)
    {
      *(a2 + 32) = v13;
    }
  }

  if (a4 == 1 && (a3[6] - 6) >= 0xFFFFFFFD)
  {
    v29 = 1 << v10;
    v30 = ((1 << v10) + 63) & 0xFFFFFFFFFFFFFFC0;
    v31 = *(a2 + 64);
    if (a7 != 1)
    {
      if (v31 <= 1)
      {
        if (!v31)
        {
          v37 = *(a2 + 8);
          v36 = *(a2 + 16);
          *(a2 + 32) = v36;
          *(a2 + 48) = v37 & 0xFFFFFFFFFFFFFFC0;
          v38 = (-v36 & 0x3FLL) == 0;
          v39 = v36 + (-v36 & 0x3FLL);
          *(a2 + 16) = v39;
          *(a2 + 24) = v39;
          if (!v38)
          {
            *(a2 + 32) = v39;
          }
        }

        *(a2 + 64) = 2;
      }

      v40 = a7;
      v41 = a3;
      v42 = (*(a2 + 40) - v30);
      if (v42 < *(a2 + 32))
      {
        *(a2 + 32) = v42;
      }

      *(a2 + 40) = v42;
      *(a1 + 56) = v42;
      v43 = a1;
      v44 = a2;
      bzero(v42, v29);
      a1 = v43;
      a2 = v44;
      *(v43 + 96) = 0;
      a3 = v41;
      a7 = v40;
      goto LABEL_70;
    }

    if (!v31)
    {
      v33 = *(a2 + 8);
      v32 = *(a2 + 16);
      *(a2 + 32) = v32;
      *(a2 + 48) = v33 & 0xFFFFFFFFFFFFFFC0;
      v34 = -v32 & 0x3FLL;
      v13 = v32 + v34;
      if (v13 > v33)
      {
        goto LABEL_62;
      }

      *(a2 + 16) = v13;
      *(a2 + 24) = v13;
      if (v34)
      {
        *(a2 + 32) = v13;
      }

      *(a2 + 64) = 1;
    }

    if (v30)
    {
      v35 = (*(a2 + 40) - v30);
      if (v35 >= v13)
      {
        if (v35 < *(a2 + 32))
        {
          *(a2 + 32) = v35;
        }

        *(a2 + 40) = v35;
        v45 = *(a2 + 48);
        if (v35 < v45)
        {
          v46 = v45 - v35;
          if (v46 >= v30)
          {
            v46 = v30;
          }

          v47 = a1;
          v48 = a2;
          v49 = a3;
          v50 = a7;
          bzero(v35, v46);
          a7 = v50;
          a3 = v49;
          a1 = v47;
          a2 = v48;
          *(v48 + 48) = v35;
        }
      }

      else
      {
        v35 = 0;
        *(a2 + 56) = 1;
      }

      goto LABEL_69;
    }

LABEL_62:
    v35 = 0;
LABEL_69:
    *(a1 + 56) = v35;
    v51 = __ROR8__(*(a1 + 96), 24) ^ __ROR8__(*(a1 + 96), 49) ^ *(a1 + 96);
    v52 = 0x9FB21C651E98DF25 * ((((0x9FB21C651E98DF25 * v51) >> 35) + 8) ^ (0x9FB21C651E98DF25 * v51));
    v53 = 0x9FB21C651E98DF25 * (__ROR8__(*(a1 + 104), 24) ^ (*(a1 + 104) << 15) ^ *(a1 + 104));
    *(a1 + 96) = v52 ^ (((0x9FB21C651E98DF25 * (((v53 >> 35) + 4) ^ v53)) ^ v52) >> 28) ^ (0x9FB21C651E98DF25 * (((v53 >> 35) + 4) ^ v53));
LABEL_70:
    v54 = a3[3];
    if (v54 >= 6)
    {
      v54 = 6;
    }

    if (v54 <= 4)
    {
      v54 = 4;
    }

    *(a1 + 52) = a3[2] - v54;
  }

  if (a7 != 1 || a3[6] < 7u)
  {
    goto LABEL_111;
  }

  v55 = *(a2 + 64);
  if (v55 > 1)
  {
    goto LABEL_80;
  }

  if (v55)
  {
LABEL_79:
    *(a2 + 64) = 2;
LABEL_80:
    v56 = *(a2 + 40);
    v57 = v56 - 1024;
    v58 = *(a2 + 24);
    if (v56 - 1024 >= v58)
    {
      if (v57 < *(a2 + 32))
      {
        *(a2 + 32) = v57;
      }

      *(a2 + 40) = v57;
      v59 = v56 - 1024;
    }

    else
    {
      v59 = 0;
      *(a2 + 56) = 1;
      v57 = v56;
    }

    *(a1 + 144) = v59;
    v60 = v57 - 192;
    if (v57 - 192 >= v58)
    {
      if (v60 < *(a2 + 32))
      {
        *(a2 + 32) = v60;
      }

      *(a2 + 40) = v60;
      v61 = v57 - 192;
    }

    else
    {
      v61 = 0;
      *(a2 + 56) = 1;
      v60 = v57;
    }

    *(a1 + 152) = v61;
    v62 = v60 - 256;
    if (v60 - 256 >= v58)
    {
      if (v62 < *(a2 + 32))
      {
        *(a2 + 32) = v62;
      }

      *(a2 + 40) = v62;
      v63 = v60 - 256;
    }

    else
    {
      v63 = 0;
      *(a2 + 56) = 1;
      v62 = v60;
    }

    *(a1 + 160) = v63;
    v64 = v62 - 128;
    if (v62 - 128 >= v58)
    {
      if (v64 < *(a2 + 32))
      {
        *(a2 + 32) = v64;
      }

      *(a2 + 40) = v64;
      v65 = v62 - 128;
    }

    else
    {
      v65 = 0;
      *(a2 + 56) = 1;
      v64 = v62;
    }

    *(a1 + 168) = v65;
    v66 = v64 - 32832;
    if (v64 - 32832 >= v58)
    {
      if (v66 < *(a2 + 32))
      {
        *(a2 + 32) = v66;
      }

      *(a2 + 40) = v66;
      v67 = v64 - 32832;
    }

    else
    {
      v67 = 0;
      *(a2 + 56) = 1;
      v66 = v64;
    }

    *(a1 + 176) = v67;
    v68 = v66 - 114816;
    if (v66 - 114816 >= v58)
    {
      if (v68 < *(a2 + 32))
      {
        *(a2 + 32) = v68;
      }

      *(a2 + 40) = v68;
    }

    else
    {
      v68 = 0;
      *(a2 + 56) = 1;
    }

    goto LABEL_110;
  }

  v71 = *(a2 + 8);
  v70 = *(a2 + 16);
  *(a2 + 32) = v70;
  *(a2 + 48) = v71 & 0xFFFFFFFFFFFFFFC0;
  v72 = -v70 & 0x3FLL;
  v73 = v70 + v72;
  if (v73 <= v71)
  {
    *(a2 + 16) = v73;
    *(a2 + 24) = v73;
    if (v72)
    {
      *(a2 + 32) = v73;
    }

    goto LABEL_79;
  }

  v68 = 0;
  *(a2 + 48) = v71 & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
LABEL_110:
  *(a1 + 184) = v68;
LABEL_111:
  v69 = *a3;
  *(a1 + 268) = *(a3 + 3);
  *(a1 + 256) = v69;
  if (*(a2 + 56))
  {
    return -64;
  }

  else
  {
    return 0;
  }
}

uint64_t ZSTD_compressEnd_public(int *a1, _DWORD *a2, size_t a3, char *a4, size_t a5)
{
  v8 = ZSTD_compressContinue_internal(a1, a2, a3, a4, a5, 1);
  v9 = v8;
  if (v8 > 0xFFFFFFFFFFFFFF88)
  {
    return v9;
  }

  v10 = *a1;
  if (!*a1)
  {
    return -60;
  }

  v11 = a2 + v8;
  v12 = a3 - v8;
  if (v10 == 3)
  {
    v17 = v11;
    if (a1[67])
    {
      goto LABEL_20;
    }
  }

  else if (v10 == 1)
  {
    v13 = a1[66];
    if (v12 < 0x12)
    {
      return -70;
    }

    v14 = 8 * *(a1 + 236) - 80;
    v15 = (4 * (a1[67] > 0)) | (32 * (v13 != 0));
    if (a1[58])
    {
      v16 = 0;
    }

    else
    {
      *v11 = -47205080;
      v16 = 4;
    }

    v11[v16] = v15;
    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    v11[v16 + 1] = v19;
    v20 = &v11[v16 | 2];
    *a1 = 2;
    *v20 = 1;
    v20[2] = 0;
    v17 = v20 + 3;
    v12 = v12 - (v16 | 2) - 3;
    if (a1[67])
    {
LABEL_20:
      if (v12 >= 4)
      {
        v21 = v8;
        v22 = ZSTD_XXH64_digest(a1 + 98);
        v8 = v21;
        *v17 = v22;
        v17 += 4;
        goto LABEL_22;
      }

      return -70;
    }
  }

  else
  {
    v18 = v12 >= 3;
    v12 -= 3;
    if (!v18)
    {
      return -70;
    }

    *v11 = 1;
    v11[2] = 0;
    v17 = v11 + 3;
    if (a1[67])
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  *a1 = 0;
  v9 = (v17 - v11);
  if ((v17 - v11) <= 0xFFFFFFFFFFFFFF88)
  {
    v23 = *(a1 + 95);
    if (v23 && v23 != *(a1 + 96) + 1)
    {
      return -72;
    }

    else
    {
      v9 += v8;
    }
  }

  return v9;
}

uint64_t ZSTD_compressContinue_internal(uint64_t a1, _DWORD *a2, size_t a3, char *a4, size_t a5, int a6)
{
  v473 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return -60;
  }

  v7 = a4;
  v8 = a3;
  if (*a1 != 1)
  {
    v22 = 0;
    if (!a5)
    {
      return v22;
    }

    goto LABEL_30;
  }

  v10 = *(a1 + 760) - 1;
  v11 = *(a1 + 664);
  v12 = v11 > 0xFF;
  if (v11)
  {
    ++v12;
  }

  if ((v11 & 0xFFFF0000) != 0)
  {
    ++v12;
  }

  if (*(a1 + 272))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 236);
  v15 = *(a1 + 264);
  if (v15)
  {
    v16 = v10 > 1 << v14;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  v18 = v10 >> 8 > 0x100;
  if (v10 > 0xFF)
  {
    ++v18;
  }

  if (v10 > 0xFFFFFFFE)
  {
    ++v18;
  }

  if (v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = 32;
  }

  else
  {
    v20 = 0;
  }

  if (a3 < 0x12)
  {
    return -70;
  }

  v29 = v20 | (v13 + 4 * (*(a1 + 268) > 0)) | (v19 << 6);
  if (*(a1 + 232))
  {
    v30 = 0;
  }

  else
  {
    *a2 = -47205080;
    v30 = 1;
  }

  v22 = (v30 * 4) | 1;
  LOBYTE(a2[v30]) = v29;
  if ((v17 & 1) == 0)
  {
    *(a2 + v22) = 8 * v14 - 80;
    v22 = (v30 * 4) | 2;
  }

  if (v13 == 3)
  {
    *(a2 + v22) = v11;
    v22 += 4;
    if (v19 != 1)
    {
      goto LABEL_523;
    }

LABEL_528:
    *(a2 + v22) = v10 - 256;
    v22 += 2;
    goto LABEL_531;
  }

  if (v13 == 2)
  {
    *(a2 + v22) = v11;
    v22 += 2;
LABEL_522:
    if (v19 != 1)
    {
      goto LABEL_523;
    }

    goto LABEL_528;
  }

  if (v13 != 1)
  {
    goto LABEL_522;
  }

  *(a2 + v22++) = v11;
  if (v19 == 1)
  {
    goto LABEL_528;
  }

LABEL_523:
  if (v19 == 2)
  {
    *(a2 + v22) = v10;
    v22 += 4;
  }

  else if (v19 == 3)
  {
    *(a2 + v22) = v10;
    v22 += 8;
  }

  else if (v17)
  {
    *(a2 + v22++) = v10;
  }

LABEL_531:
  v8 = a3 - v22;
  a2 = (a2 + v22);
  *a1 = 2;
  if (!a5)
  {
    return v22;
  }

LABEL_30:
  v450 = (a1 + 3216);
  v23 = *(a1 + 3216);
  if (*(a1 + 3352))
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 == a4;
  }

  v25 = !v24;
  if (v24)
  {
    v26 = *(a1 + 3232);
    v28 = *(a1 + 3244);
    v27 = *(a1 + 3240);
  }

  else
  {
    v26 = *(a1 + 3224);
    v27 = v23 - v26;
    v28 = *(a1 + 3240);
    *(a1 + 3244) = v28;
    *(a1 + 3240) = v23 - v26;
    *(a1 + 3232) = v26;
    *(a1 + 3224) = a4 - &v23[-v26];
    if (v23 - v26 - v28 <= 7)
    {
      *(a1 + 3244) = v27;
      v28 = v23 - v26;
    }
  }

  v31 = &a4[a5];
  *v450 = &a4[a5];
  if (&a4[a5] > v26 + v28 && v26 + v27 > a4)
  {
    v33 = &v31[-v26];
    if (v33 > v27)
    {
      LODWORD(v33) = v27;
    }

    *(a1 + 3244) = v33;
  }

  if (v25)
  {
    *(a1 + 3352) = 0;
    *(a1 + 3260) = v27;
  }

  if (*(a1 + 328) == 1)
  {
    v34 = *(a1 + 1032);
    if (v34 == a4)
    {
      v35 = *(a1 + 1048);
      v37 = *(a1 + 1060);
      LODWORD(v36) = *(a1 + 1056);
    }

    else
    {
      v35 = *(a1 + 1040);
      v36 = &v34[-v35];
      v37 = *(a1 + 1056);
      *(a1 + 1060) = v37;
      *(a1 + 1056) = v36;
      *(a1 + 1048) = v35;
      *(a1 + 1040) = a4 - v36;
      if (v36 - v37 <= 7)
      {
        *(a1 + 1060) = v36;
        v37 = v36;
      }
    }

    *(a1 + 1032) = v31;
    if (v31 > v35 + v37 && v35 + v36 > a4)
    {
      v38 = &v31[-v35];
      if (v38 > v36)
      {
        LODWORD(v38) = v36;
      }

      *(a1 + 1060) = v38;
    }
  }

  v428 = a2;
  v39 = (a1 + 232);
  v40 = *(a1 + 752);
  v42 = *(a1 + 236);
  if (*(a1 + 268))
  {
    ZSTD_XXH64_update((a1 + 784), a4, a5);
  }

  v448 = 1 << v42;
  v449 = a6 & 1;
  v444 = a1 + 4128;
  v451 = (a1 + 952);
  v452 = (a1 + 4048);
  v447 = (a1 + 3968);
  v441 = (a1 + 912);
  v412 = a5;
  v43 = a5;
  v44 = v428;
  v430 = v22;
  v45 = v40;
  v425 = a6;
  v443 = a1 + 232;
  do
  {
    v46 = v449;
    if (v45 < v43)
    {
      v46 = 0;
    }

    v455 = v46;
    if (v8 < 6)
    {
      return -70;
    }

    v453 = v43;
    if (v43 < v45)
    {
      v45 = v43;
    }

    ZSTD_overflowCorrectIfNeeded(v450, (a1 + 680), v39, v7, v7 + v45);
    v47 = *(a1 + 3224);
    v454 = &v7[v45];
    v48 = *(a1 + 3256);
    if (v48 + v448 < (v7 + v45 - v47) || v48 != *(a1 + 3240))
    {
      v48 = 0;
      *(a1 + 3256) = 0;
      *(a1 + 3464) = 0;
    }

    v49 = v7 - v47;
    v50 = *(a1 + 3244);
    if (v48 + v448 < v49)
    {
      if (v50 < v49 - v448)
      {
        *(a1 + 3244) = v49 - v448;
        v50 = v49 - v448;
      }

      if (*(a1 + 3240) < v50)
      {
        *(a1 + 3240) = v50;
      }

      *(a1 + 3256) = 0;
      *(a1 + 3464) = 0;
    }

    if (*(a1 + 3260) < v50)
    {
      *(a1 + 3260) = v50;
    }

    *v456 = v45;
    if (*(a1 + 288))
    {
      v51 = ZSTD_buildSeqStore(a1, v7, v45);
      v21 = v51;
      if (v51 > 0xFFFFFFFFFFFFFF88)
      {
        return v21;
      }

      if (v51)
      {
LABEL_95:
        v21 = v45 + 3;
        if (v45 + 3 > v8)
        {
          return -70;
        }

        *v44 = v455 | (8 * v45);
        *(v44 + 2) = v45 >> 13;
        memcpy((v44 + 3), v7, v45);
        if (v21 > 0xFFFFFFFFFFFFFF88)
        {
          return v21;
        }

        goto LABEL_97;
      }

      if (!*(a1 + 944) && *(a1 + 960) - *(a1 + 952) <= 0x1FuLL && *(a1 + 976) - *(a1 + 968) <= 9uLL && ZSTD_isRLE(v7, v45))
      {
        v88 = *v7;
        *v44 = v455 | (8 * v45) | 2;
        *(v44 + 2) = v45 >> 13;
        *(v44 + 3) = v88;
        v21 = 4;
        goto LABEL_97;
      }

      v472 = 0;
      v470 = 0u;
      v471 = 0u;
      v468 = 0u;
      v469 = 0u;
      v466 = 0u;
      v467 = 0u;
      v464 = 0u;
      v465 = 0u;
      v462 = 0u;
      v463 = 0u;
      v461 = 0u;
      memset(v460, 0, sizeof(v460));
      v21 = ZSTD_buildBlockEntropyStats(v451, *(a1 + 3200), *(a1 + 3208), v39, v460, *(a1 + 3520));
      if (v21 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_465;
      }

      __src = *(a1 + 3200);
      v429 = *(a1 + 8);
      v56 = *(a1 + 952);
      v57 = *(a1 + 960);
      v58 = *(a1 + 968);
      v413 = *(a1 + 976);
      v59 = v413 - v58;
      v60 = *(a1 + 288);
      if (v60 <= 0x53C)
      {
        v60 = 1340;
      }

      v438 = v60;
      __dst = *(a1 + 3208);
      v61 = v460[0];
      v442 = LODWORD(v460[0]) == 2;
      v426 = v8;
      v431 = v44 + v8;
      v62 = *(a1 + 984);
      v63 = *(a1 + 992);
      v64 = *(a1 + 1000);
      v445 = *(a1 + 960);
      v65 = (v57 - v56) >> 3;
      *v411 = *(a1 + 952);
      if (v57 == v56)
      {
        v89 = 1;
        v90 = v44;
        v422 = v7;
        goto LABEL_448;
      }

      v66 = *(a1 + 3520);
      LODWORD(v457) = 255;
      v67.i64[0] = 255;
      v67.i64[1] = 255;
      v436 = v413 - v58;
      if ((LODWORD(v460[0]) - 2) >= 2)
      {
        v68 = v413 - v58;
        if (LODWORD(v460[0]))
        {
          v68 = LODWORD(v460[0]) == 1;
        }

        goto LABEL_230;
      }

      v138 = v58;
      v139 = v62;
      v140 = v63;
      v141 = HIST_count_wksp(v66, &v457, v58, v413 - v58, v66);
      v63 = v140;
      v62 = v139;
      v58 = v138;
      v67.i64[0] = 255;
      v67.i64[1] = 255;
      v68 = v436;
      if (v141 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_230;
      }

      if ((v457 & 0x80000000) != 0)
      {
        v145 = 3;
LABEL_227:
        v165 = *(&v461 + 1);
        if (v61 != 2)
        {
          v165 = 0;
        }

        v68 = v145 + v165;
LABEL_230:
        v166 = DWORD1(v462);
        v167 = (v64 + v65);
        LODWORD(v457) = 31;
        if (v65 > 0x5DB)
        {
          v170 = xmmword_182B08DD0;
          v169 = xmmword_182B08DC0;
          v172 = xmmword_182B08DF0;
          v171 = xmmword_182B08DE0;
          if ((v66 & 3) == 0)
          {
            v432 = v58;
            v423 = v68;
            v178 = v62;
            v179 = v63;
            HIST_count_parallel_wksp(v66, &v457, v64, v65, 0, v66);
            v63 = v179;
            v62 = v178;
            v68 = v423;
            v58 = v432;
            v172 = xmmword_182B08DF0;
            v171 = xmmword_182B08DE0;
            v170 = xmmword_182B08DD0;
            v169 = xmmword_182B08DC0;
            v67.i64[0] = 255;
            v67.i64[1] = 255;
          }
        }

        else
        {
          *(v66 + 96) = 0u;
          *(v66 + 112) = 0u;
          *(v66 + 64) = 0u;
          *(v66 + 80) = 0u;
          *(v66 + 32) = 0u;
          *(v66 + 48) = 0u;
          v168 = v64;
          *v66 = 0u;
          *(v66 + 16) = 0u;
          v170 = xmmword_182B08DD0;
          v169 = xmmword_182B08DC0;
          v172 = xmmword_182B08DF0;
          v171 = xmmword_182B08DE0;
          do
          {
            v173 = *v168;
            v168 = (v168 + 1);
            ++*(v66 + 4 * v173);
          }

          while (v168 < v167);
          v174 = 32;
          v175 = 31;
          do
          {
            v176 = v175;
            --v174;
            --v175;
          }

          while (!*(v66 + 4 * v174));
          LODWORD(v457) = v174;
          if (v174 >= 7)
          {
            v177 = (v176 + 1) & 0x1FFFFFFF8;
            do
            {
              v177 -= 8;
            }

            while (v177);
          }
        }

        if (v166 != 1)
        {
          if (!v166)
          {
            if (v457 <= 0x1C)
            {
              v180 = v457 + 1;
              if (v457)
              {
                v181 = 0;
                v182 = 0;
                v183 = v180 & 0x3E;
                v184 = (v66 + 4);
                v185 = &word_182B0D082;
                v186 = v183;
                do
                {
                  v187 = *(v185 - 1);
                  v189 = *v185;
                  v185 += 2;
                  v188 = v189;
                  if (v187 == 0xFFFF)
                  {
                    LOWORD(v187) = 1;
                  }

                  if (v188 == 0xFFFF)
                  {
                    LOWORD(v188) = 1;
                  }

                  v181 += (kInverseProbabilityLog256[8 * (v187 & 0x1FFFFFFF)] * *(v184 - 1));
                  v182 += (kInverseProbabilityLog256[8 * (v188 & 0x1FFFFFFF)] * *v184);
                  v184 += 2;
                  v186 -= 2;
                }

                while (v186);
                v190 = v182 + v181;
                if (v183 == v180)
                {
                  goto LABEL_270;
                }
              }

              else
              {
                v183 = 0;
                v190 = 0;
              }

              v204 = v180 - v183;
              v205 = (v66 + 4 * v183);
              v206 = &OF_defaultNorm_36129[v183];
              do
              {
                v208 = *v206++;
                v207 = v208;
                if (v208 == 0xFFFF)
                {
                  v207 = 1;
                }

                v209 = *v205++;
                v190 += (kInverseProbabilityLog256[8 * (v207 & 0x1FFFFFFF)] * v209);
                --v204;
              }

              while (v204);
LABEL_270:
              v194 = v190 >> 8;
              goto LABEL_272;
            }

LABEL_258:
            v193 = 10 * v65;
            goto LABEL_290;
          }

          if ((v166 & 0xFFFFFFFE) == 2)
          {
            v191 = __dst[1032];
            if (__dst[1032])
            {
              v192 = 1 << (v191 - 1);
            }

            else
            {
              v192 = 1;
            }

            if (v457 <= __dst[1033])
            {
              v195 = 0;
              v196 = v457 + 1;
              v197 = &__dst[2 * v192 + 1036];
              v198 = v66;
              do
              {
                v200 = *v197;
                v197 += 4;
                v199 = v200;
                v202 = *v198++;
                v201 = v202;
                if (v202)
                {
                  v203 = ((HIWORD(v199) + 1) << 8) - ((((HIWORD(v199) + 1) << 24) - ((v199 + (1 << v191)) << 8)) >> v191);
                  if (v203 >= (v191 << 8) + 256)
                  {
                    goto LABEL_258;
                  }

                  v195 += v201 * v203;
                }

                --v196;
              }

              while (v196);
              v194 = v195 >> 8;
LABEL_272:
              if (v65 < 1)
              {
LABEL_289:
                v193 = v194 >> 3;
LABEL_290:
                v239 = v462;
                v240 = (v62 + v65);
                LODWORD(v457) = 35;
                if (v65 > 0x5DB)
                {
                  if ((v66 & 3) == 0)
                  {
                    v433 = v58;
                    v424 = v68;
                    v247 = v62;
                    v248 = v63;
                    HIST_count_parallel_wksp(v66, &v457, v62, v65, 0, v66);
                    v63 = v248;
                    v62 = v247;
                    v68 = v424;
                    v58 = v433;
                  }
                }

                else
                {
                  *(v66 + 112) = 0u;
                  *(v66 + 128) = 0u;
                  *(v66 + 80) = 0u;
                  *(v66 + 96) = 0u;
                  *(v66 + 48) = 0u;
                  *(v66 + 64) = 0u;
                  *(v66 + 16) = 0u;
                  *(v66 + 32) = 0u;
                  v241 = v62;
                  *v66 = 0u;
                  do
                  {
                    v242 = *v241;
                    v241 = (v241 + 1);
                    ++*(v66 + 4 * v242);
                  }

                  while (v241 < v240);
                  v243 = 36;
                  v244 = 35;
                  do
                  {
                    v245 = v244;
                    --v243;
                    --v244;
                  }

                  while (!*(v66 + 4 * v243));
                  LODWORD(v457) = v243;
                  if (v243 >= 7)
                  {
                    v246 = (v245 + 1) & 0x1FFFFFFF8;
                    do
                    {
                      v246 -= 8;
                    }

                    while (v246);
                  }
                }

                if (v239 != 1)
                {
                  if (!v239)
                  {
                    if (v457 <= 0x23)
                    {
                      v249 = v457 + 1;
                      if (v457)
                      {
                        v250 = 0;
                        v251 = 0;
                        v252 = v249 & 0x7E;
                        v253 = (v66 + 4);
                        v254 = &word_182B0D0BC;
                        v255 = v252;
                        do
                        {
                          v256 = *(v254 - 1);
                          v258 = *v254;
                          v254 += 2;
                          v257 = v258;
                          if (v256 == 0xFFFF)
                          {
                            LOWORD(v256) = 1;
                          }

                          if (v257 == 0xFFFF)
                          {
                            LOWORD(v257) = 1;
                          }

                          v250 += (kInverseProbabilityLog256[4 * (v256 & 0x3FFFFFFF)] * *(v253 - 1));
                          v251 += (kInverseProbabilityLog256[4 * (v257 & 0x3FFFFFFF)] * *v253);
                          v253 += 2;
                          v255 -= 2;
                        }

                        while (v255);
                        v259 = v251 + v250;
                        if (v252 == v249)
                        {
                          goto LABEL_330;
                        }
                      }

                      else
                      {
                        v252 = 0;
                        v259 = 0;
                      }

                      v273 = v249 - v252;
                      v274 = (v66 + 4 * v252);
                      v275 = &LL_defaultNorm_36131[v252];
                      do
                      {
                        v277 = *v275++;
                        v276 = v277;
                        if (v277 == 0xFFFF)
                        {
                          v276 = 1;
                        }

                        v278 = *v274++;
                        v259 += (kInverseProbabilityLog256[4 * (v276 & 0x3FFFFFFF)] * v278);
                        --v273;
                      }

                      while (v273);
LABEL_330:
                      v263 = v259 >> 8;
                      goto LABEL_332;
                    }

LABEL_318:
                    v262 = 10 * v65;
                    goto LABEL_343;
                  }

                  if ((v239 & 0xFFFFFFFE) == 2)
                  {
                    v260 = __dst[2144];
                    if (__dst[2144])
                    {
                      v261 = 1 << (v260 - 1);
                    }

                    else
                    {
                      v261 = 1;
                    }

                    if (v457 <= __dst[2145])
                    {
                      v264 = 0;
                      v265 = v457 + 1;
                      v266 = &__dst[2 * v261 + 2148];
                      v267 = v66;
                      do
                      {
                        v269 = *v266;
                        v266 += 4;
                        v268 = v269;
                        v271 = *v267++;
                        v270 = v271;
                        if (v271)
                        {
                          v272 = ((HIWORD(v268) + 1) << 8) - ((((HIWORD(v268) + 1) << 24) - ((v268 + (1 << v260)) << 8)) >> v260);
                          if (v272 >= (v260 << 8) + 256)
                          {
                            goto LABEL_318;
                          }

                          v264 += v270 * v272;
                        }

                        --v265;
                      }

                      while (v265);
                      v263 = v264 >> 8;
LABEL_332:
                      if (v65 >= 1)
                      {
                        v279 = v62 + v65;
                        v280 = v62 + 1;
                        if (v62 + v65 <= v62 + 1)
                        {
                          v279 = v62 + 1;
                        }

                        v281 = v279 - v62;
                        if (v281 > 1)
                        {
                          v283 = 0;
                          v284 = v281 & 0xFFFFFFFFFFFFFFFELL;
                          v285 = v281 & 0xFFFFFFFFFFFFFFFELL;
                          do
                          {
                            v286 = *(v280 - 1);
                            v287 = *v280;
                            v280 += 2;
                            v263 += LL_bits_36216[v286];
                            v283 += LL_bits_36216[v287];
                            v285 -= 2;
                          }

                          while (v285);
                          v263 += v283;
                          if (v281 == v284)
                          {
                            goto LABEL_342;
                          }

                          v282 = (v62 + v284);
                        }

                        else
                        {
                          v282 = v62;
                        }

                        do
                        {
                          v288 = *v282;
                          v282 = (v282 + 1);
                          v263 += LL_bits_36216[v288];
                        }

                        while (v282 < v240);
                      }

LABEL_342:
                      v262 = v263 >> 3;
LABEL_343:
                      v289 = DWORD2(v462);
                      v290 = (v63 + v65);
                      LODWORD(v457) = 52;
                      if (v65 > 0x5DB)
                      {
                        if ((v66 & 3) == 0)
                        {
                          v418 = v193;
                          v420 = v44;
                          v434 = v58;
                          v297 = v62;
                          v298 = v262;
                          v299 = v63;
                          HIST_count_parallel_wksp(v66, &v457, v63, v65, 0, v66);
                          v63 = v299;
                          v262 = v298;
                          v44 = v420;
                          v62 = v297;
                          v193 = v418;
                          v58 = v434;
                        }
                      }

                      else
                      {
                        *(v66 + 208) = 0;
                        *(v66 + 176) = 0u;
                        *(v66 + 192) = 0u;
                        *(v66 + 144) = 0u;
                        *(v66 + 160) = 0u;
                        *(v66 + 112) = 0u;
                        *(v66 + 128) = 0u;
                        *(v66 + 80) = 0u;
                        *(v66 + 96) = 0u;
                        *(v66 + 48) = 0u;
                        *(v66 + 64) = 0u;
                        *(v66 + 16) = 0u;
                        *(v66 + 32) = 0u;
                        v291 = v63;
                        *v66 = 0u;
                        do
                        {
                          v292 = *v291;
                          v291 = (v291 + 1);
                          ++*(v66 + 4 * v292);
                        }

                        while (v291 < v290);
                        v293 = 53;
                        v294 = 52;
                        do
                        {
                          v295 = v294;
                          --v293;
                          --v294;
                        }

                        while (!*(v66 + 4 * v293));
                        LODWORD(v457) = v293;
                        if (v293 >= 7)
                        {
                          v296 = (v295 + 1) & 0x1FFFFFFF8;
                          do
                          {
                            v296 -= 8;
                          }

                          while (v296);
                        }
                      }

                      if (v289 != 1)
                      {
                        if (!v289)
                        {
                          v59 = v436;
                          if (v457 <= 0x34)
                          {
                            v300 = v457 + 1;
                            if (v457)
                            {
                              v301 = 0;
                              v302 = 0;
                              v303 = v300 & 0x7E;
                              v304 = (v66 + 4);
                              v305 = &word_182B0D104;
                              v306 = v303;
                              do
                              {
                                v307 = *(v305 - 1);
                                v309 = *v305;
                                v305 += 2;
                                v308 = v309;
                                if (v307 == 0xFFFF)
                                {
                                  LOWORD(v307) = 1;
                                }

                                if (v308 == 0xFFFF)
                                {
                                  LOWORD(v308) = 1;
                                }

                                v301 += (kInverseProbabilityLog256[4 * (v307 & 0x3FFFFFFF)] * *(v304 - 1));
                                v302 += (kInverseProbabilityLog256[4 * (v308 & 0x3FFFFFFF)] * *v304);
                                v304 += 2;
                                v306 -= 2;
                              }

                              while (v306);
                              v310 = v302 + v301;
                              if (v303 == v300)
                              {
                                goto LABEL_383;
                              }
                            }

                            else
                            {
                              v303 = 0;
                              v310 = 0;
                            }

                            v323 = v300 - v303;
                            v324 = (v66 + 4 * v303);
                            v325 = &ML_defaultNorm_36133[v303];
                            do
                            {
                              v327 = *v325++;
                              v326 = v327;
                              if (v327 == 0xFFFF)
                              {
                                v326 = 1;
                              }

                              v328 = *v324++;
                              v310 += (kInverseProbabilityLog256[4 * (v326 & 0x3FFFFFFF)] * v328);
                              --v323;
                            }

                            while (v323);
LABEL_383:
                            v314 = v310 >> 8;
                            goto LABEL_385;
                          }

LABEL_371:
                          v313 = 10 * v65;
LABEL_396:
                          v45 = *v456;
                          if (v413 == v58)
                          {
                            v339 = 256;
                          }

                          else
                          {
                            v339 = (v68 << 8) / v59;
                          }

                          v340 = v68 + v193 + v262 + *(&v471 + 1) + v313 + 6;
                          v341 = (v340 + (v438 >> 1)) / v438;
                          if (v341 <= 1)
                          {
                            v341 = 1;
                          }

                          v22 = v430;
                          if (v340 > *v456)
                          {
                            goto LABEL_480;
                          }

                          v419 = v341 - 1;
                          if (v341 == 1)
                          {
                            v89 = 1;
                            v90 = v44;
                            v422 = v7;
                            v56 = *v411;
                          }

                          else
                          {
                            v342 = 0;
                            v343 = ((v340 - v68) << 8) / v65;
                            v89 = 1;
                            v56 = *v411;
                            v421 = v44;
                            v422 = v7;
                            v90 = v44;
                            v344 = (v340 << 8) / v341;
                            v417 = v7;
                            v415 = v343;
                            v416 = v339;
                            v414 = v344;
                            do
                            {
                              v65 = (v445 - v56) >> 3;
                              v345 = 30720;
                              if (v342)
                              {
                                v345 = 0;
                              }

                              if (v65 < 2)
                              {
                                v348 = 1;
                              }

                              else
                              {
                                v346 = *(v56 + 4);
                                v347 = v345 + v343 + v339 * v346;
                                v348 = 1;
                                if (v347 <= v344)
                                {
                                  v349 = v346 + *(v56 + 6) + 3;
                                  v350 = (v56 + 14);
                                  v348 = 1;
                                  while (1)
                                  {
                                    v351 = *(v350 - 1);
                                    v347 += v343 + v339 * v351;
                                    v349 += v351 + *v350 + 3;
                                    if (v347 > v344 && v347 < v349 << 8)
                                    {
                                      break;
                                    }

                                    v350 += 4;
                                    if (v65 == ++v348)
                                    {
                                      v348 = (v445 - v56) >> 3;
                                      break;
                                    }
                                  }
                                }
                              }

                              if (v56 + 8 * v348 == v445)
                              {
                                v44 = v421;
                                goto LABEL_447;
                              }

                              v439 = v342;
                              v353 = 0;
                              LODWORD(v457) = 0;
                              v459 = 0;
                              v354 = *(a1 + 1028);
                              v355 = v56 - *(a1 + 952);
                              v356 = 4;
                              v357 = v355;
                              v358 = v348;
                              do
                              {
                                v359 = *(v56 + v356);
                                if (v354 == (v357 >> 3) && *(a1 + 1024) == 1)
                                {
                                  v359 |= 0x10000uLL;
                                }

                                v353 += v359;
                                v357 += 8;
                                v356 += 8;
                                --v358;
                              }

                              while (v358);
                              v360 = 0;
                              v361 = 6;
                              v362 = v348;
                              do
                              {
                                v363 = *(v56 + v361);
                                v364 = v363 + 3;
                                if (v354 == (v355 >> 3))
                                {
                                  v365 = v363 + 65539;
                                  if (*(a1 + 1024) == 2)
                                  {
                                    v364 = v365;
                                  }
                                }

                                v360 += v364;
                                v355 += 8;
                                v361 += 8;
                                --v362;
                              }

                              while (v362);
                              v435 = v89;
                              v437 = v90;
                              v366 = v58;
                              v367 = v62;
                              v368 = v63;
                              v369 = ZSTD_compressSubBlock(__dst, v460, v56, v348, v58, v353, v62, v63, v64, v443, v90, v431 - v90, v429, v442, v89, &v457, &v459, 0);
                              v21 = v369;
                              if (v369 > 0xFFFFFFFFFFFFFF88)
                              {
                                a6 = v425;
                                v8 = v426;
                                v22 = v430;
                                v7 = v417;
                                v45 = *v456;
                                v44 = v421;
                                goto LABEL_465;
                              }

                              if (v369)
                              {
                                v58 = v366;
                                v62 = v367;
                                v63 = v368;
                                v370 = v439;
                                v344 = v414;
                                v343 = v415;
                                if (v369 >= v360 + v353)
                                {
                                  v7 = v417;
                                  v44 = v421;
                                  v90 = v437;
                                  v89 = v435;
                                }

                                else
                                {
                                  v44 = v421;
                                  v422 += v360 + v353;
                                  v58 = (v58 + v353);
                                  v90 = &v437[v369];
                                  v62 = (v367 + v348);
                                  v63 = (v368 + v348);
                                  v64 = (v64 + v348);
                                  v371 = v442;
                                  if (v457)
                                  {
                                    v371 = 0;
                                  }

                                  v442 = v371;
                                  if (v459)
                                  {
                                    v89 = 0;
                                  }

                                  else
                                  {
                                    v89 = v435;
                                  }

                                  v56 += 8 * v348;
                                  v7 = v417;
                                }

                                v339 = v416;
                              }

                              else
                              {
                                v7 = v417;
                                v58 = v366;
                                v44 = v421;
                                v62 = v367;
                                v63 = v368;
                                v90 = v437;
                                v370 = v439;
                                v89 = v435;
                                v343 = v415;
                                v339 = v416;
                                v344 = v414;
                              }

                              v342 = v370 + 1;
                            }

                            while (v342 != v419);
                            v65 = (v445 - v56) >> 3;
LABEL_447:
                            v59 = v413 - v58;
                          }

LABEL_448:
                          LODWORD(v457) = 0;
                          v459 = 0;
                          if (v445 == v56)
                          {
                            v372 = 0;
                          }

                          else
                          {
                            v372 = 0;
                            v373 = v56 - *(a1 + 952);
                            v374 = (v56 + 6);
                            v375 = v65;
                            do
                            {
                              v377 = *v374;
                              v374 += 4;
                              v376 = v377;
                              v378 = v377 + 3;
                              if (*(a1 + 1028) == (v373 >> 3))
                              {
                                v379 = v376 + 65539;
                                if (*(a1 + 1024) == 2)
                                {
                                  v378 = v379;
                                }
                              }

                              v372 += v378;
                              v373 += 8;
                              --v375;
                            }

                            while (v375);
                          }

                          v380 = v89;
                          v381 = v90;
                          v382 = v59;
                          v383 = ZSTD_compressSubBlock(__dst, v460, v56, v65, v58, v59, v62, v63, v64, v443, v90, v431 - v90, v429, v442, v89, &v457, &v459, v455);
                          v21 = v383;
                          if (v383 > 0xFFFFFFFFFFFFFF88)
                          {
                            v8 = v426;
                            v45 = *v456;
                            a6 = v425;
                            v22 = v430;
LABEL_465:
                            v39 = (a1 + 232);
                            if (v21 == -70)
                            {
                              goto LABEL_95;
                            }

                            if (v21 > 0xFFFFFFFFFFFFFF88)
                            {
                              return v21;
                            }

                            goto LABEL_481;
                          }

                          if (v383)
                          {
                            v384 = v422;
                            if (v383 < v372 + v382)
                            {
                              v384 = &v422[v372 + v382];
                              v385 = &v381[v383];
                              if (v459)
                              {
                                v386 = 0;
                              }

                              else
                              {
                                v386 = v380;
                              }

                              v56 += 8 * v65;
                              v45 = *v456;
                              v22 = v430;
                              if (v457)
                              {
                                goto LABEL_473;
                              }

                              goto LABEL_471;
                            }

                            v45 = *v456;
                            v385 = v381;
                          }

                          else
                          {
                            v45 = *v456;
                            v385 = v381;
                            v384 = v422;
                          }

                          v386 = v380;
                          v22 = v430;
LABEL_471:
                          if (v442)
                          {
                            v387 = v384;
                            memcpy(__dst, __src, 0x810uLL);
                            v384 = v387;
                          }

LABEL_473:
                          if (!v386 || (v462 - 1) >= 2 && (DWORD2(v462) - 1) >= 2 && (DWORD1(v462) - 3) <= 0xFFFFFFFD)
                          {
                            if (v384 >= v454)
                            {
                              a6 = v425;
                              v8 = v426;
                              v21 = &v385[-v44];
                            }

                            else
                            {
                              v388 = v454 - v384;
                              v389 = v431 - v385;
                              v390 = v385;
                              v21 = v454 - v384 + 3;
                              v8 = v426;
                              if (v21 > v389)
                              {
                                a6 = v425;
                                v39 = (a1 + 232);
                                goto LABEL_95;
                              }

                              *v390 = v455 | (8 * v388);
                              v390[2] = v388 >> 13;
                              memcpy(v390 + 3, v384, v388);
                              a6 = v425;
                              if (v21 <= 0xFFFFFFFFFFFFFF88)
                              {
                                v393 = &v390[v21];
                                if (v56 < v445)
                                {
                                  v394 = *v411;
                                  v457 = *(__src + 702);
                                  v458 = *(__src + 1406);
                                  if (*v411 < v56)
                                  {
                                    v395 = *(a1 + 1028);
                                    v396 = v458;
                                    v397 = v457;
                                    v398 = HIDWORD(v457);
                                    v399 = *v411 - *(a1 + 952);
                                    do
                                    {
                                      v401 = v394;
                                      v402 = *(v394 + 2);
                                      if (v395 == (v399 >> 3) && *(a1 + 1024) == 1)
                                      {
                                        v402 |= 0x10000u;
                                      }

                                      v403 = *v401;
                                      if (*v401 >= 4)
                                      {
                                        v458 = v398;
                                        HIDWORD(v457) = v397;
                                        v400 = v403 - 3;
                                      }

                                      else
                                      {
                                        if (v402)
                                        {
                                          v404 = *v401;
                                        }

                                        else
                                        {
                                          v404 = v403 + 1;
                                        }

                                        v405 = v404 - 1;
                                        if (v404 == 1)
                                        {
                                          goto LABEL_494;
                                        }

                                        if (v404 == 4)
                                        {
                                          v400 = v397 - 1;
                                        }

                                        else
                                        {
                                          v400 = *(&v457 + v405);
                                        }

                                        if (v405 == 1)
                                        {
                                          v398 = v396;
                                        }

                                        v458 = v398;
                                        HIDWORD(v457) = v397;
                                      }

                                      v396 = v398;
                                      LODWORD(v457) = v400;
                                      v398 = v397;
                                      v397 = v400;
LABEL_494:
                                      v394 = v401 + 2;
                                      v399 += 8;
                                    }

                                    while ((v401 + 2) < v56);
                                  }

                                  *(__dst + 702) = v457;
                                  *(__dst + 1406) = v458;
                                }

                                v21 = &v393[-v44];
                              }
                            }

                            goto LABEL_465;
                          }

LABEL_480:
                          v21 = 0;
                          a6 = v425;
                          v8 = v426;
                          v39 = (a1 + 232);
LABEL_481:
                          v391 = *(a1 + 260);
                          if (v391 <= 7)
                          {
                            v392 = 6;
                          }

                          else
                          {
                            v392 = v391 - 1;
                          }

                          if (!v21 || v21 >= v45 - (v45 >> v392) + 1)
                          {
                            goto LABEL_95;
                          }

                          *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
LABEL_97:
                          v52 = *(a1 + 3200);
                          if (*(v52 + 5604) == 2)
                          {
                            *(v52 + 5604) = 1;
                          }

                          goto LABEL_150;
                        }

                        if ((v289 & 0xFFFFFFFE) == 2)
                        {
                          v311 = __dst[1418];
                          if (__dst[1418])
                          {
                            v312 = 1 << (v311 - 1);
                          }

                          else
                          {
                            v312 = 1;
                          }

                          v59 = v436;
                          if (v457 <= __dst[1419])
                          {
                            v315 = 0;
                            v316 = v457 + 1;
                            v317 = &__dst[2 * v312 + 1422];
                            do
                            {
                              v319 = *v317;
                              v317 += 4;
                              v318 = v319;
                              v321 = *v66;
                              v66 += 4;
                              v320 = v321;
                              if (v321)
                              {
                                v322 = ((HIWORD(v318) + 1) << 8) - ((((HIWORD(v318) + 1) << 24) - ((v318 + (1 << v311)) << 8)) >> v311);
                                if (v322 >= (v311 << 8) + 256)
                                {
                                  goto LABEL_371;
                                }

                                v315 += v320 * v322;
                              }

                              --v316;
                            }

                            while (v316);
                            v314 = v315 >> 8;
LABEL_385:
                            if (v65 >= 1)
                            {
                              v329 = v63 + v65;
                              v330 = v63 + 1;
                              if (v63 + v65 <= v63 + 1)
                              {
                                v329 = v63 + 1;
                              }

                              v331 = v329 - v63;
                              if (v331 > 1)
                              {
                                v333 = 0;
                                v334 = v331 & 0xFFFFFFFFFFFFFFFELL;
                                v335 = v331 & 0xFFFFFFFFFFFFFFFELL;
                                do
                                {
                                  v336 = *(v330 - 1);
                                  v337 = *v330;
                                  v330 += 2;
                                  v314 += ML_bits_36218[v336];
                                  v333 += ML_bits_36218[v337];
                                  v335 -= 2;
                                }

                                while (v335);
                                v314 += v333;
                                if (v331 == v334)
                                {
                                  goto LABEL_395;
                                }

                                v332 = (v63 + v334);
                              }

                              else
                              {
                                v332 = v63;
                              }

                              do
                              {
                                v338 = *v332;
                                v332 = (v332 + 1);
                                v314 += ML_bits_36218[v338];
                              }

                              while (v332 < v290);
                            }

LABEL_395:
                            v313 = v314 >> 3;
                            goto LABEL_396;
                          }

                          goto LABEL_371;
                        }
                      }

                      v314 = 0;
                      v59 = v436;
                      goto LABEL_385;
                    }

                    goto LABEL_318;
                  }
                }

                v263 = 0;
                goto LABEL_332;
              }

              v210 = v64 + v65;
              if (v64 + v65 <= v64 + 1)
              {
                v210 = v64 + 1;
              }

              v211 = v210 - v64;
              if (v211 < 4)
              {
                v212 = v64;
                goto LABEL_288;
              }

              if (v211 >= 0x10)
              {
                v213 = v211 & 0xFFFFFFFFFFFFFFF0;
                v214 = 0uLL;
                v215 = v194;
                v216 = v64;
                v217 = v211 & 0xFFFFFFFFFFFFFFF0;
                v218 = 0uLL;
                v219 = 0uLL;
                v220 = 0uLL;
                v221 = 0uLL;
                v222 = 0uLL;
                v223 = 0uLL;
                do
                {
                  v224 = *v216++;
                  v225 = vqtbl1q_s8(v224, v169);
                  v226 = vqtbl1q_s8(v224, v170);
                  v227 = vqtbl1q_s8(v224, v171);
                  v228 = vqtbl1q_s8(v224, v172);
                  v214 = vaddw_high_u32(v214, v226);
                  v219 = vaddw_high_u32(v219, v225);
                  v218 = vaddw_u32(v218, *v225.i8);
                  v215 = vaddw_u32(v215, *v226.i8);
                  v220 = vaddw_u32(v220, *v227.i8);
                  v221 = vaddw_high_u32(v221, v227);
                  v222 = vaddw_u32(v222, *v228.i8);
                  v223 = vaddw_high_u32(v223, v228);
                  v217 -= 16;
                }

                while (v217);
                v55 = vaddq_s64(v219, v223);
                v194 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v215, v220), vaddq_s64(v218, v222)), vaddq_s64(vaddq_s64(v214, v221), v55)));
                if (v211 == v213)
                {
                  goto LABEL_289;
                }

                if ((v211 & 0xC) == 0)
                {
                  v212 = (v64 + v213);
                  do
                  {
LABEL_288:
                    v238 = *v212;
                    v212 = (v212 + 1);
                    v194 += v238;
                  }

                  while (v212 < v167);
                  goto LABEL_289;
                }
              }

              else
              {
                v213 = 0;
              }

              v229 = v211 & 0xFFFFFFFFFFFFFFFCLL;
              v230 = 0uLL;
              v231 = v194;
              v232 = v213 - (v211 & 0xFFFFFFFFFFFFFFFCLL);
              v233 = (v64 + v213);
              do
              {
                v234 = *v233++;
                v55.i32[0] = v234;
                v235 = vmovl_u16(*&vmovl_u8(*v55.i8));
                v236.i64[0] = v235.u32[0];
                v236.i64[1] = v235.u32[1];
                v237 = vandq_s8(v236, v67);
                v236.i64[0] = v235.u32[2];
                v236.i64[1] = v235.u32[3];
                v55 = vandq_s8(v236, v67);
                v230 = vaddq_s64(v230, v55);
                v231 = vaddq_s64(v231, v237);
                v232 += 4;
              }

              while (v232);
              v194 = vaddvq_s64(vaddq_s64(v231, v230));
              if (v211 == v229)
              {
                goto LABEL_289;
              }

              v212 = (v64 + v229);
              goto LABEL_288;
            }

            goto LABEL_258;
          }
        }

        v194 = 0;
        goto LABEL_272;
      }

      v142 = v457 + 1;
      if (v457 >= 7)
      {
        v143 = v142 & 0xFFFFFFF8;
        v146 = (v66 + 16);
        v147 = (__dst + 20);
        v148 = 0uLL;
        v149 = v143;
        v150 = 0uLL;
        v55 = 0uLL;
        v151 = 0uLL;
        do
        {
          v152 = v147[-2];
          v153 = v147[-1];
          v154 = *v147;
          v155 = v147[1];
          v147 += 4;
          v156 = v146[-1];
          v157 = vuzp1q_s32(vandq_s8(v152, v67), vandq_s8(v153, v67));
          v158 = vuzp1q_s32(vandq_s8(v154, v67), vandq_s8(v155, v67));
          v150 = vmlal_high_u32(v150, v157, v156);
          v148 = vmlal_u32(v148, *v157.i8, *v156.i8);
          v151 = vmlal_high_u32(v151, v158, *v146);
          v55 = vmlal_u32(v55, *v158.i8, *v146->i8);
          v146 += 2;
          v149 -= 8;
        }

        while (v149);
        v144 = vaddvq_s64(vaddq_s64(vaddq_s64(v55, v148), vaddq_s64(v151, v150)));
        if (v143 == v142)
        {
          goto LABEL_226;
        }
      }

      else
      {
        v143 = 0;
        v144 = 0;
      }

      v159 = v142 - v143;
      v160 = (v66 + 4 * v143);
      v161 = &__dst[4 * v143 + 4];
      do
      {
        v163 = *v161;
        v161 += 4;
        v162 = v163;
        v164 = *v160++;
        v144 += v162 * v164;
        --v159;
      }

      while (v159);
LABEL_226:
      v145 = (v144 >> 3) + 3;
      goto LABEL_227;
    }

    if (*(a1 + 372) != 1)
    {
      v69 = ZSTD_buildSeqStore(a1, v7, v45);
      v21 = v69;
      if (v69 > 0xFFFFFFFFFFFFFF88)
      {
        return v21;
      }

      v70 = *v441;
      if (v69 == 1)
      {
        if (v70)
        {
          return -106;
        }

        v21 = 0;
      }

      else
      {
        v86 = *(a1 + 3200);
        if (v70)
        {
          v87 = ZSTD_copyBlockSequences(v441, v451, (v86 + 5616));
          if (v87 > 0xFFFFFFFFFFFFFF88)
          {
            return v87;
          }

          *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
          goto LABEL_141;
        }

        v91 = ZSTD_entropyCompressSeqStore(v451, v86, *(a1 + 3208), v39, (v44 + 3), v8 - 3, v45, *(a1 + 3520), *(a1 + 8));
        v21 = v91;
        if (*(a1 + 944) || v91 > 0x18 || !ZSTD_isRLE(v7, v45))
        {
          if (v21 - 2 <= 0xFFFFFFFFFFFFFF86)
          {
            *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
          }
        }

        else
        {
          *(v44 + 3) = *v7;
          v21 = 1;
        }
      }

      v71 = *(a1 + 3200);
      if (*(v71 + 5604) == 2)
      {
        *(v71 + 5604) = 1;
      }

      if (v21 > 0xFFFFFFFFFFFFFF88)
      {
        return v21;
      }

      if (v21 == 1)
      {
        v72 = 2;
        v73 = v45;
        goto LABEL_149;
      }

      if (v21)
      {
        v72 = 4;
        v73 = v21;
LABEL_149:
        *v44 = v72 | v455 | (8 * v73);
        *(v44 + 2) = v73 >> 13;
        v21 += 3;
        goto LABEL_150;
      }

      goto LABEL_141;
    }

    v53 = ZSTD_buildSeqStore(a1, v7, v45);
    v21 = v53;
    if (v53 > 0xFFFFFFFFFFFFFF88)
    {
      return v21;
    }

    if (v53 != 1)
    {
      v74 = 0;
      v75 = *(a1 + 960) - *(a1 + 952);
      v76 = v75 >> 3;
      v460[0] = v444;
      if ((v75 >> 3) >= 5)
      {
        ZSTD_deriveBlockSplitsHelper(v460, 0, (v75 >> 3), a1, v451);
        v74 = *(&v460[0] + 1);
        *(*&v460[0] + 4 * *(&v460[0] + 1)) = v76;
      }

      v77 = *(a1 + 3200);
      *&v460[0] = *(v77 + 5616);
      DWORD2(v460[0]) = *(v77 + 5624);
      v457 = *&v460[0];
      v458 = DWORD2(v460[0]);
      *v452 = 0u;
      *(a1 + 4064) = 0u;
      *(a1 + 4080) = 0u;
      *(a1 + 4096) = 0u;
      *(a1 + 4112) = 0u;
      if (v74)
      {
        v78 = *(a1 + 4128);
        v79 = *(a1 + 1000);
        *(a1 + 4000) = *(a1 + 984);
        *(a1 + 4016) = v79;
        *(a1 + 4032) = *(a1 + 1016);
        v80 = *(a1 + 968);
        *v447 = *v451;
        *(a1 + 3984) = v80;
        if (*(a1 + 1024) && *(a1 + 1028) > v78)
        {
          *(a1 + 4040) = 0;
        }

        v81 = *(a1 + 952);
        *(a1 + 3968) = v81;
        *(a1 + 3976) = v81 + 8 * v78;
        if (v78 != (*(a1 + 960) - v81) >> 3)
        {
          v82 = 0;
          if (v78)
          {
            v83 = *(a1 + 4044);
            v84 = (v81 + 4);
            do
            {
              v85 = *v84;
              v84 += 4;
              v82 += v85;
              if (!v83 && *(a1 + 4040) == 1)
              {
                v82 += 0x10000;
              }

              --v83;
              --v78;
            }

            while (v78);
          }

          *(a1 + 3992) = *(a1 + 3984) + v82;
        }

        v92 = v7;
        v21 = 0;
        v93 = 0;
        v94 = 0;
        v427 = v8;
        v95 = v44;
        v446 = v74;
        while (1)
        {
          v96 = *(a1 + 3976);
          v97 = *(a1 + 3968);
          v98 = v96 - v97;
          if (v96 == v97)
          {
            v109 = 0;
          }

          else
          {
            v99 = 0;
            v100 = v98 >> 3;
            v101 = *(a1 + 4044);
            if (v100 <= 1)
            {
              v100 = 1;
            }

            v102 = (v97 + 4);
            v103 = *(a1 + 4044);
            v104 = v100;
            do
            {
              v105 = *v102;
              v102 += 4;
              v99 += v105;
              if (!v103 && *(a1 + 4040) == 1)
              {
                v99 += 0x10000;
              }

              --v103;
              --v104;
            }

            while (v104);
            v106 = 0;
            v107 = (v97 + 6);
            do
            {
              v108 = *v107;
              v107 += 4;
              v106 += v108 + 3;
              if (!v101 && *(a1 + 4040) == 2)
              {
                v106 += 0x10000;
              }

              --v101;
              --v100;
            }

            while (v100);
            v109 = v106 + v99;
          }

          v94 += v109;
          if (v93 == v74)
          {
            v110 = v44;
            v109 = v109 + *v456 - v94;
            v111 = v455;
          }

          else
          {
            v112 = (v444 + 4 * v93);
            v113 = *v112;
            v114 = v112[1];
            v115 = *(a1 + 1000);
            *(a1 + 4080) = *(a1 + 984);
            *(a1 + 4096) = v115;
            *(a1 + 4112) = *(a1 + 1016);
            v116 = *(a1 + 968);
            *v452 = *v451;
            *(a1 + 4064) = v116;
            if (v113)
            {
              v117 = *v451 + 8 * v113;
              v118 = v117 - *v452;
              if (v117 == *v452)
              {
                v119 = 0;
              }

              else
              {
                v119 = 0;
                v120 = v118 >> 3;
                v121 = *(a1 + 4124);
                if (v120 <= 1)
                {
                  v120 = 1;
                }

                v122 = (*v452 + 4);
                do
                {
                  v123 = *v122;
                  v122 += 4;
                  v119 += v123;
                  if (!v121 && *(a1 + 4120) == 1)
                  {
                    v119 += 0x10000;
                  }

                  --v121;
                  --v120;
                }

                while (v120);
              }

              *(a1 + 4064) += v119;
            }

            if (*(a1 + 1024))
            {
              v124 = *(a1 + 1028);
              if (v124 < v113 || v124 > v114)
              {
                *(a1 + 4120) = 0;
              }

              else
              {
                *(a1 + 4124) -= v113;
              }
            }

            v126 = *(a1 + 952);
            v127 = 8 * v113;
            *(a1 + 4048) = v126 + 8 * v113;
            v128 = 8 * v114;
            *(a1 + 4056) = v126 + 8 * v114;
            if (v114 != (*(a1 + 960) - v126) >> 3)
            {
              if (v114 == v113)
              {
                v129 = 0;
              }

              else
              {
                v129 = 0;
                v133 = (v128 - v127) >> 3;
                v134 = *(a1 + 4124);
                if (v133 <= 1)
                {
                  v133 = 1;
                }

                v135 = (v126 + v127 + 4);
                do
                {
                  v136 = *v135;
                  v135 += 4;
                  v129 += v136;
                  if (!v134 && *(a1 + 4120) == 1)
                  {
                    v129 += 0x10000;
                  }

                  --v134;
                  --v133;
                }

                while (v133);
              }

              *(a1 + 4072) = *(a1 + 4064) + v129;
            }

            v110 = v44;
            v111 = 0;
            *(a1 + 4080) += v113;
            *(a1 + 4088) += v113;
            *(a1 + 4096) += v113;
          }

          v130 = ZSTD_compressSeqStore_singleBlock(a1, v447, v460, &v457, v95, v8, v92, v109, v111, 1);
          if (v130 > 0xFFFFFFFFFFFFFF88)
          {
            break;
          }

          v92 += v109;
          v95 += v130;
          v8 -= v130;
          v21 += v130;
          v131 = *(a1 + 4096);
          *(a1 + 4000) = *(a1 + 4080);
          *(a1 + 4016) = v131;
          *(a1 + 4032) = *(a1 + 4112);
          v132 = *(a1 + 4064);
          *v447 = *v452;
          *(a1 + 3984) = v132;
          ++v93;
          v74 = v446;
          v45 = *v456;
          v44 = v110;
          if (v93 > v446)
          {
            v137 = *(a1 + 3200);
            *(v137 + 5616) = *&v460[0];
            *(v137 + 5624) = DWORD2(v460[0]);
            a6 = v425;
            v8 = v427;
            v39 = (a1 + 232);
            goto LABEL_74;
          }
        }

        v21 = v130;
        a6 = v425;
        v8 = v427;
        v39 = (a1 + 232);
        v45 = *v456;
        v44 = v110;
      }

      else
      {
        v45 = *v456;
        v21 = ZSTD_compressSeqStore_singleBlock(a1, v451, v460, &v457, v44, v8, v7, *v456, v455, 0);
      }

LABEL_74:
      v22 = v430;
      if (v21 >= 0xFFFFFFFFFFFFFF89)
      {
        return v21;
      }

      goto LABEL_150;
    }

    v54 = *(a1 + 3200);
    if (*(v54 + 5604) == 2)
    {
      *(v54 + 5604) = 1;
    }

    if (*v441)
    {
      return -106;
    }

LABEL_141:
    v21 = v45 + 3;
    if (v45 + 3 > v8)
    {
      return -70;
    }

    *v44 = v455 | (8 * v45);
    *(v44 + 2) = v45 >> 13;
    memcpy((v44 + 3), v7, v45);
    if (v21 >= 0xFFFFFFFFFFFFFF89)
    {
      return v21;
    }

LABEL_150:
    v44 += v21;
    v8 -= v21;
    *(a1 + 944) = 0;
    v7 = v454;
    v43 = v453 - v45;
  }

  while (v453 != v45);
  if (a6 && v44 > v428)
  {
    *a1 = 3;
  }

  v21 = v44 - v428;
  if (v44 - v428 <= 0xFFFFFFFFFFFFFF88)
  {
    v406 = *(a1 + 768) + v412;
    *(a1 + 768) = v406;
    *(a1 + 776) += v21 + v22;
    v407 = *(a1 + 760);
    if (v406 + 1 <= v407 || v407 == 0)
    {
      v21 += v22;
    }

    else
    {
      return -72;
    }
  }

  return v21;
}

uint32x2_t *ZSTD_overflowCorrectIfNeeded(uint32x2_t *result, void *a2, _DWORD *a3, int a4, int a5)
{
  v5 = result[1];
  if ((a5 - v5.i32[0]) >= 0xE0000001)
  {
    v6 = 1 << a3[1];
    v7 = 1 << (a3[2] - (a3[7] > 5u));
    v8 = (v7 - 1) & (a4 - v5.i32[0]);
    if (v7 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1 << (a3[2] - (a3[7] > 5u));
    }

    if (v8 >= 2)
    {
      v9 = 0;
    }

    if (v7 > v6)
    {
      v6 = 1 << (a3[2] - (a3[7] > 5u));
    }

    v10 = a4 - v5.i32[0] - (v6 + v8) - v9;
    v11 = (*&result[2] + v10);
    result[1] = (*&v5 + v10);
    result[2] = v11;
    v12 = v10 + 2;
    result[3] = vbsl_s8(vcgt_u32(vdup_n_s32(v10 + 2), result[3]), 0x200000002, vsub_s32(result[3], vdup_n_s32(v10)));
    ++result[4].i32[0];
    v13 = a2[2];
    a2[4] = v13;
    v14 = 1 << a3[3];
    v15 = v14 + 15;
    if (v14 >= 0)
    {
      v15 = 1 << a3[3];
    }

    if (v14 >= 16)
    {
      v16 = v15 >> 4;
      v17 = vdupq_n_s32(v12);
      v18 = vdupq_n_s32(v10);
      v19 = (*&result[14] + 32);
      do
      {
        v20 = vbicq_s8(vsubq_s32(v19[-1], v18), vcgtq_u32(v17, v19[-1]));
        v19[-2] = vbicq_s8(vsubq_s32(v19[-2], v18), vcgtq_u32(v17, v19[-2]));
        v19[-1] = v20;
        v21 = vbicq_s8(vsubq_s32(v19[1], v18), vcgtq_u32(v17, v19[1]));
        *v19 = vbicq_s8(vsubq_s32(*v19, v18), vcgtq_u32(v17, *v19));
        v19[1] = v21;
        v19 += 4;
        --v16;
      }

      while (v16);
    }

    v22 = a3[7];
    if (result[17].i32[1] || v22 != 1 && ((v22 - 3) <= 2 ? (v40 = a3[36] == 1) : (v40 = 0), !v40))
    {
      v23 = 1 << a3[2];
      v24 = result[16];
      v25 = v23 / 16;
      if (v22 == 6)
      {
        if (v23 >= 16)
        {
          v26 = vdupq_n_s32(v12);
          v27 = vdupq_n_s32(v10);
          v28 = (*&v24 + 32);
          v29.i64[0] = 0x100000001;
          v29.i64[1] = 0x100000001;
          do
          {
            v30 = v28[-2];
            v31 = v28[-1];
            v32 = vceqq_s32(v30, v29);
            v33 = vsubq_s32(vbicq_s8(vbicq_s8(vsubq_s32(v30, v27), vcgtq_u32(v26, v30)), v32), v32);
            v34 = vceqq_s32(v31, v29);
            v28[-2] = v33;
            v28[-1] = vsubq_s32(vbicq_s8(vbicq_s8(vsubq_s32(v31, v27), vcgtq_u32(v26, v31)), v34), v34);
            v35 = v28[1];
            v36 = vceqq_s32(*v28, v29);
            v37 = vsubq_s32(vbicq_s8(vbicq_s8(vsubq_s32(*v28, v27), vcgtq_u32(v26, *v28)), v36), v36);
            v38 = vbicq_s8(vsubq_s32(v35, v27), vcgtq_u32(v26, v35));
            v39 = vceqq_s32(v35, v29);
            *v28 = v37;
            v28[1] = vsubq_s32(vbicq_s8(v38, v39), v39);
            v28 += 4;
            --v25;
          }

          while (v25);
        }
      }

      else if (v23 >= 16)
      {
        v41 = vdupq_n_s32(v12);
        v42 = vdupq_n_s32(v10);
        v43 = (*&v24 + 32);
        do
        {
          v44 = vbicq_s8(vsubq_s32(v43[-1], v42), vcgtq_u32(v41, v43[-1]));
          v43[-2] = vbicq_s8(vsubq_s32(v43[-2], v42), vcgtq_u32(v41, v43[-2]));
          v43[-1] = v44;
          v45 = vbicq_s8(vsubq_s32(v43[1], v42), vcgtq_u32(v41, v43[1]));
          *v43 = vbicq_s8(vsubq_s32(*v43, v42), vcgtq_u32(v41, *v43));
          v43[1] = v45;
          v43 += 4;
          --v25;
        }

        while (v25);
      }
    }

    v46 = result[6].i32[0];
    if (v46)
    {
      v47 = 1 << v46;
      v48 = (1 << v46) + 15;
      if (v47 >= 0)
      {
        v48 = v47;
      }

      if (v47 >= 16)
      {
        v49 = v48 >> 4;
        v50 = vdupq_n_s32(v12);
        v51 = vdupq_n_s32(v10);
        v52 = (*&result[15] + 32);
        do
        {
          v53 = vbicq_s8(vsubq_s32(v52[-1], v51), vcgtq_u32(v50, v52[-1]));
          v52[-2] = vbicq_s8(vsubq_s32(v52[-2], v51), vcgtq_u32(v50, v52[-2]));
          v52[-1] = v53;
          v54 = vbicq_s8(vsubq_s32(v52[1], v51), vcgtq_u32(v50, v52[1]));
          *v52 = vbicq_s8(vsubq_s32(*v52, v51), vcgtq_u32(v50, *v52));
          v52[1] = v54;
          v52 += 4;
          --v49;
        }

        while (v49);
      }
    }

    v55 = a2[3];
    if (v13 < v55)
    {
      a2[4] = v55;
    }

    v56 = result[5].u32[1];
    v57 = v56 >= v10;
    v58 = v56 - v10;
    if (!v57)
    {
      v58 = 0;
    }

    result[5].i32[0] = 0;
    result[5].i32[1] = v58;
    result[31] = 0;
  }

  return result;
}

uint64_t ZSTD_buildSeqStore(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  if (a3 > 6)
  {
    v13 = a2;
    *(a1 + 976) = *(a1 + 968);
    *(a1 + 960) = *(a1 + 952);
    *(a1 + 1024) = 0;
    v14 = *(a1 + 3200);
    *(a1 + 3448) = v14;
    *(a1 + 3456) = *(a1 + 304);
    v15 = a2 - *(a1 + 3224);
    v16 = *(a1 + 3260);
    if (v16 + 384 < v15)
    {
      v17 = v15 - v16 - 384;
      if (v17 >= 0xC0)
      {
        v17 = 192;
      }

      *(a1 + 3260) = v15 - v17;
    }

    if (*(a1 + 3244) >= *(a1 + 3240))
    {
      v29 = *(a1 + 3464);
      if (v29)
      {
        if (*(v29 + 140))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 1;
    }

    v30 = *(a1 + 3208);
    v30[1404] = v14[1404];
    v30[1405] = v14[1405];
    v30[1406] = v14[1406];
    if (*(a1 + 3168) < *(a1 + 3184))
    {
      if (!*(a1 + 424))
      {
        v31 = *(a1 + 376);
        v32 = (a1 + 3160);
        v33 = &v4[402];
        v34 = &v4[119];
        v35 = v30 + 1404;
LABEL_250:
        v54 = ZSTD_ldm_blockCompress(v32, v33, v34, v35, v31, v13, v3);
        goto LABEL_251;
      }

      return -41;
    }

    if (*(a1 + 328) == 1)
    {
      *(&v226 + 1) = 0;
      v227 = 0;
      v228 = 0;
      if (*(a1 + 424))
      {
        return -41;
      }

      v40 = *(a1 + 3152);
      v208 = *(a1 + 3144);
      *&v226 = v208;
      v209 = v40;
      v229 = v40;
      if ((a3 & 0xFFFFF) != 0)
      {
        v41 = (a3 >> 20) + 1;
      }

      else
      {
        v41 = a3 >> 20;
      }

      if (!v41)
      {
LABEL_249:
        v31 = v4[47].i32[0];
        v32 = &v226;
        v33 = &v4[402];
        v34 = &v4[119];
        v35 = v30 + 1404;
        goto LABEL_250;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 1 << v4[43].i32[1];
      v47 = &v13[v3];
      v48 = &v4[137];
      v215 = v4 + 201;
      v202 = v4 + 203;
LABEL_62:
      if (v43 >= v209)
      {
LABEL_248:
        v30 = v4[401];
        goto LABEL_249;
      }

      v55 = &v13[0x100000 * v44];
      if (v3 - (v44 << 20) >= 0x100000)
      {
        v56 = v55 + 0x100000;
      }

      else
      {
        v56 = v47;
      }

      v57 = v4[130];
      v214 = v56;
      v58 = v56 - v57.i32[0];
      if (v58 > 0xE0000000)
      {
        v60 = v4[41].u32[1];
        v61 = 1 << v60;
        v62 = v55 - v57.i32[0] - v46;
        v63 = v62 - 2;
        v4[130] = (*&v57 + v63);
        *&v4[131] += v63;
        v4[132] = vbsl_s8(vcgt_u32(vdup_n_s32(v62), v4[132]), 0x200000002, vsub_s32(v4[132], vdup_n_s32(v63)));
        ++v4[133].i32[0];
        v64 = v4[134];
        if (v60 >= 3)
        {
          v66 = (1 << v60) & 3;
          if ((v61 & 3) == 0)
          {
            v66 = 4;
          }

          v65 = v61 - v66;
          v67 = vdupq_n_s32(v63);
          v68 = v4[134];
          v69 = v65;
          v70 = v68;
          do
          {
            v71 = vld2q_f32(v70);
            v70 += 8;
            v72 = vqsubq_u32(v71, v67);
            *v68 = *v72.i32;
            v68[2] = *&v72.i32[1];
            v68[4] = *&v72.i32[2];
            v68[6] = *&v72.i32[3];
            v68 = v70;
            v69 -= 4;
          }

          while (v69);
        }

        else
        {
          v65 = 0;
        }

        v59 = v61 - v65;
        v73 = (*&v64 + 8 * v65);
        do
        {
          v74 = *v73 - v63;
          if (*v73 < v63)
          {
            v74 = 0;
          }

          *v73 = v74;
          v73 += 2;
          --v59;
        }

        while (v59);
        v4[135].i32[0] = 0;
        v221 = v4[130];
        v58 = v214 - v221.i32[0];
      }

      else
      {
        v221 = v4[130];
        LODWORD(v59) = v4[135].i32[0];
      }

      v75 = v4[132].u32[1];
      if (v59 + v46 >= v58)
      {
        v77 = v4[132].u32[0];
      }

      else
      {
        v76 = v58 - v46;
        if (v75 < v76)
        {
          v4[132].i32[1] = v76;
          v75 = v76;
        }

        v77 = v4[132].u32[0];
        if (v77 < v75)
        {
          v4[132].i32[0] = v75;
          v77 = v75;
        }

        v4[135].i32[0] = 0;
      }

      v223 = v4[42].u32[1];
      v78 = v4[42].i32[0];
      v79 = v4[41].i32[1];
      if (v75 >= v77)
      {
        v80 = 0;
        v81 = v77;
      }

      else
      {
        v80 = v4[131];
        v81 = v75;
      }

      v82 = v214 - v55;
      v220 = v81;
      v83 = *&v80 + v81;
      if (v75 >= v77)
      {
        v83 = 0;
      }

      v216 = v83;
      v84 = (*&v80 + v77);
      v219 = v84;
      if (v75 >= v77)
      {
        v84 = 0;
      }

      v212 = v84;
      if (v82 < v223)
      {
        v85 = v43;
        v24 = v214 - v55;
        goto LABEL_226;
      }

      v218 = v80;
      v86 = v4[43].i32[0];
      if (v223 >= 0x40)
      {
        v87 = 64;
      }

      else
      {
        v87 = v4[42].u32[1];
      }

      v88 = v86 - 1;
      v89 = ~(-1 << v86);
      v90 = v87 - v86;
      if (v88 >= v87)
      {
        v90 = 0;
      }

      v231[0] = 0xFFFFFFFFLL;
      v231[1] = v89 << v90;
      if (&v55[v223] >= v214 - 8)
      {
        v24 = v214 - v55;
        v82 = v214 - v55;
        goto LABEL_225;
      }

      v189 = v214 - v55;
      v190 = v45;
      v211 = v75;
      v207 = v42;
      v192 = v47;
      v193 = v46;
      v194 = v44;
      v195 = v41;
      v196 = v13;
      v197 = v3;
      v210 = 1 << v78;
      v224 = (*&v221 + v77);
      v225 = (v214 - 7);
      v217 = (v214 - 1);
      v206 = *&v221 + 8 + v77;
      v191 = v43;
      v203 = v43;
      v91 = v214;
      v92 = (v214 - 8);
      v93 = &v55[v223];
      v201 = v4;
      v198 = v48;
      v222 = v77;
      v200 = ~(-1 << (v79 - v78));
      v199 = (v214 - 3);
LABEL_104:
      v230 = 0;
      v94 = ZSTD_ldm_gear_feed(v231, v93, v92 - v93, v48, &v230);
      v95 = v230;
      if (!v230)
      {
        goto LABEL_103;
      }

      v204 = v93;
      v205 = v94;
      v96 = v93 - v223;
      v97 = v4[134];
      v98 = v4[42].i32[0];
      v99 = v202;
      v100 = v48;
      v213 = v230;
      v101 = v223;
      do
      {
        v102 = *v100++;
        v103 = ZSTD_XXH64((v96 + v102), v223);
        v104 = v103 & v200;
        v99[-2] = (v96 + v102);
        v99[-1].i32[0] = v104;
        v99[-1].i32[1] = HIDWORD(v103);
        _X8 = *&v97 + 8 * (v104 << v98);
        *v99 = _X8;
        v99 += 3;
        __asm { PRFM            #0, [X8] }

        --v95;
      }

      while (v95);
      v110 = 0;
      v4 = v201;
      v111 = v213;
      v91 = v214;
      v112 = v221;
      v113 = v220;
      v114 = v203;
      while (1)
      {
        v119 = &v215[3 * v110];
        v120 = *v119;
        v121 = v119[1].u32[0];
        v122 = v119[1].u32[1];
        v123 = *v119 - *&v112;
        if (*v119 < v55)
        {
LABEL_108:
          v115 = v123 | (v122 << 32);
          v116 = v201[42].i32[0];
          v117 = v201[136];
          v118 = *(*&v117 + v121);
          *(*&v201[134] + 8 * (v121 << v116) + 8 * v118) = v115;
          *(*&v117 + v121) = (v118 + 1) & ~(-1 << v116);
          goto LABEL_109;
        }

        v124 = v119[2];
        v125 = &v124[2 * v210];
        if (v211 < v222)
        {
          v126 = 0;
          v127 = 0;
          v128 = 0;
          v129 = 0;
          while (1)
          {
            if (v124[1] == v122)
            {
              v130 = *v124;
              if (v130 > v113)
              {
                break;
              }
            }

LABEL_115:
            v124 += 2;
            if (v124 >= v125)
            {
              goto LABEL_220;
            }
          }

          if (v130 >= v222)
          {
            v131 = v112;
          }

          else
          {
            v131 = v218;
          }

          v132 = (*&v131 + v130);
          v133 = v214;
          if (v130 >= v222)
          {
            v134 = v214;
          }

          else
          {
            v134 = v219;
          }

          if (v120 + v134 - v132 < v91)
          {
            v133 = v120 + v134 - v132;
          }

          if (v133 - 7 <= v120)
          {
            v135 = (*&v131 + v130);
            v137 = v120;
            goto LABEL_135;
          }

          if (*v132 == *v120)
          {
            v135 = (*&v131 + v130 + 8);
            v136 = (v120 + 1);
            while (1)
            {
              v137 = v136;
              if (v136 >= (v133 - 7))
              {
                break;
              }

              v139 = *v135;
              v135 += 4;
              v138 = v139;
              v136 += 8;
              if (v139 != *v137)
              {
                v140 = &v137[__clz(__rbit64(*v137 ^ v138)) >> 3] - v120;
                v91 = v214;
                goto LABEL_145;
              }
            }

            v91 = v214;
LABEL_135:
            if (v137 < v133 - 3 && *v135 == *v137)
            {
              v135 += 2;
              v137 += 4;
            }

            if (v137 < v133 - 1 && *v135 == *v137)
            {
              ++v135;
              v137 += 2;
            }

            if (v137 < v133 && *v135 == *v137)
            {
              ++v137;
            }

            v140 = v137 - v120;
          }

          else
          {
            v140 = __clz(__rbit64(*v120 ^ *v132)) >> 3;
          }

LABEL_145:
          if (&v132[v140] != v134)
          {
            goto LABEL_164;
          }

          v141 = v120 + v140;
          if (v225 <= v120 + v140)
          {
            v143 = v224;
            v144 = (v120 + v140);
            if (v141 >= v199)
            {
              goto LABEL_155;
            }
          }

          else
          {
            if (*v224 != *v141)
            {
              v147 = __clz(__rbit64(*v141 ^ *v224)) >> 3;
              goto LABEL_163;
            }

            v142 = (v120 + v140 + 8);
            v143 = v206;
            while (1)
            {
              v144 = v142;
              if (v142 >= v225)
              {
                break;
              }

              v146 = *v143;
              v143 += 4;
              v145 = v146;
              ++v142;
              if (v146 != *v144)
              {
                v147 = v144 + (__clz(__rbit64(*v144 ^ v145)) >> 3) - v141;
                v91 = v214;
                goto LABEL_163;
              }
            }

            v91 = v214;
            if (v142 >= v199)
            {
LABEL_155:
              if (v144 < v217 && *v143 == *v144)
              {
                ++v143;
                v144 = (v144 + 2);
              }

              if (v144 < v91 && *v143 == *v144)
              {
                v144 = (v144 + 1);
              }

              v147 = v144 - v141;
LABEL_163:
              v140 += v147;
LABEL_164:
              v101 = v223;
              if (v140 < v223)
              {
                v112 = v221;
              }

              else
              {
                v148 = 0;
                v149 = v224;
                if (v130 < v222)
                {
                  v149 = v216;
                }

                if (v120 > v55 && v132 > v149)
                {
                  v148 = 0;
                  v150 = (*&v131 + v130 - 1);
                  v151 = v120 - 1;
                  do
                  {
                    if (*v151 != *v150)
                    {
                      break;
                    }

                    ++v148;
                    if (v151 <= v55)
                    {
                      break;
                    }

                    --v151;
                    v51 = v150-- > v149;
                  }

                  while (v51);
                }

                if (v149 != v216 && &v132[-v148] == v149)
                {
                  v152 = 0;
                  if (v212 > v216 && v120 - v148 > v55)
                  {
                    v152 = 0;
                    v153 = (v120 - v148 - 1);
                    v154 = (v212 - 1);
                    do
                    {
                      if (*v153 != *v154)
                      {
                        break;
                      }

                      ++v152;
                      if (v153 <= v55)
                      {
                        break;
                      }

                      --v153;
                      v51 = v154-- > v216;
                    }

                    while (v51);
                  }

                  v148 += v152;
                }

                if (v148 + v140 > v129)
                {
                  v129 = v148 + v140;
                  v128 = v148;
                  v127 = v140;
                  v126 = v124;
                }

                v112 = v221;
                v101 = v223;
              }

              v113 = v220;
              goto LABEL_115;
            }
          }

          if (*v143 == *v144)
          {
            v143 += 2;
            v144 = (v144 + 4);
          }

          goto LABEL_155;
        }

        v126 = 0;
        v127 = 0;
        v128 = 0;
        v155 = 0;
        do
        {
          if (v124[1] != v122)
          {
            goto LABEL_190;
          }

          v156 = *v124;
          if (v156 <= v113)
          {
            goto LABEL_190;
          }

          v157 = (*&v112 + v156);
          if (v225 <= v120)
          {
            v159 = v120;
          }

          else
          {
            if (*v157 != *v120)
            {
              v162 = __clz(__rbit64(*v120 ^ *v157)) >> 3;
              if (v162 < v101)
              {
                goto LABEL_190;
              }

LABEL_213:
              v163 = 0;
              if (v120 > v55 && v156 > v222)
              {
                v163 = 0;
                v164 = (*&v221 - 1 + v156);
                v165 = v120 - 1;
                do
                {
                  if (*v165 != *v164)
                  {
                    break;
                  }

                  ++v163;
                  if (v165 <= v55)
                  {
                    break;
                  }

                  --v165;
                  v51 = v164-- > v224;
                }

                while (v51);
              }

              if (v163 + v162 > v155)
              {
                v155 = v163 + v162;
                v128 = v163;
                v127 = v162;
                v126 = v124;
              }

              goto LABEL_190;
            }

            v157 = (*&v221 + 8 + v156);
            v158 = v120 + 1;
            while (1)
            {
              v159 = v158;
              if (v158 >= v225)
              {
                break;
              }

              v161 = *v157++;
              v160 = v161;
              ++v158;
              if (v161 != *v159)
              {
                v162 = v159 + (__clz(__rbit64(*v159 ^ v160)) >> 3) - v120;
                if (v162 < v101)
                {
                  goto LABEL_190;
                }

                goto LABEL_213;
              }
            }
          }

          if (v159 < v199 && *v157 == *v159)
          {
            v157 = (v157 + 4);
            v159 = (v159 + 4);
          }

          if (v159 < v217 && *v157 == *v159)
          {
            v157 = (v157 + 2);
            v159 = (v159 + 2);
          }

          if (v159 < v91 && *v157 == *v159)
          {
            v159 = (v159 + 1);
          }

          v162 = v159 - v120;
          if (v159 - v120 >= v101)
          {
            goto LABEL_213;
          }

LABEL_190:
          v124 += 2;
        }

        while (v124 < v125);
LABEL_220:
        v111 = v213;
        if (!v126)
        {
          goto LABEL_108;
        }

        if (v114 == v209)
        {
          return -70;
        }

        v166 = (v208 + 12 * v114);
        v167 = v123 - *v126;
        v166[1] = v120 - v128 - v55;
        v166[2] = v127 + v128;
        *v166 = v167;
        v228 = ++v114;
        v168 = v123 | (v122 << 32);
        LOBYTE(v166) = v201[42].i32[0];
        v169 = v201[136];
        LOBYTE(v167) = *(*&v169 + v121);
        *(*&v201[134] + 8 * (v121 << v166) + 8 * v167) = v168;
        *(*&v169 + v121) = (v167 + 1) & ~(-1 << v166);
        v55 = v120 + v127;
        v207 = v114;
        if (v120 + v127 > v204 + v205)
        {
          v94 = v205;
          v93 = &v55[-v205];
          v203 = v114;
          v48 = v198;
          v92 = (v214 - 8);
LABEL_103:
          v93 += v94;
          if (v93 < v92)
          {
            goto LABEL_104;
          }

          v24 = v91 - v55;
          v13 = v196;
          v3 = v197;
          v44 = v194;
          v41 = v195;
          v46 = v193;
          v43 = v191;
          v47 = v192;
          v82 = v189;
          v45 = v190;
          v42 = v207;
LABEL_225:
          v85 = v42;
          if (v24 > 0xFFFFFFFFFFFFFF88)
          {
            return v24;
          }

LABEL_226:
          if (v43 >= v85)
          {
            v24 = v82 + v45;
          }

          else
          {
            *(v208 + 12 * v43 + 4) += v45;
          }

          ++v44;
          v43 = v85;
          v45 = v24;
          if (v44 == v41)
          {
            goto LABEL_248;
          }

          goto LABEL_62;
        }

LABEL_109:
        if (++v110 == v111)
        {
          v203 = v114;
          v48 = v198;
          v92 = (v214 - 8);
          v93 = v204;
          v94 = v205;
          goto LABEL_103;
        }
      }
    }

    v36 = *(a1 + 424);
    if (!v36)
    {
      v49 = *(a1 + 260);
      v50 = v49 - 3;
      v51 = *(a1 + 376) != 1 || v50 > 2;
      v52 = &ZSTD_selectBlockCompressor_blockCompressor[10 * v18] + v49;
      if (!v51)
      {
        v52 = &ZSTD_selectBlockCompressor_rowBasedBlockCompressors[3 * v18] + v50;
      }

      v53 = *v52;
      *(a1 + 3504) = 0;
      v54 = (v53)(a1 + 3216, a1 + 952, v30 + 1404, a2, a3);
      goto LABEL_251;
    }

    v37 = v36(*(a1 + 416), *(a1 + 5224), *(a1 + 5232), a2, a3, 0, 0, *(a1 + 276), 1 << *(a1 + 236));
    v38 = v4[654];
    if (v37 - 1 >= v38)
    {
      goto LABEL_44;
    }

    v24 = v37;
    v39 = (*&v4[653] + 16 * v37);
    if (*(v39 - 4) | *(v39 - 2))
    {
      if (v37 == v38)
      {
LABEL_44:
        v24 = -106;
LABEL_241:
        if (!v4[51].i32[1])
        {
          return v24;
        }

        v174 = v4[32].i32[1];
        v175 = v174 - 3;
        v176 = v4[47].i32[0] != 1 || v175 > 2;
        v177 = &ZSTD_selectBlockCompressor_blockCompressor[10 * v18] + v174;
        if (!v176)
        {
          v177 = &ZSTD_selectBlockCompressor_rowBasedBlockCompressors[3 * v18] + v175;
        }

        v178 = *v177;
        v4[438] = 0;
        v54 = (v178)(&v4[402], &v4[119], *&v4[401] + 5616, v13, v3);
LABEL_251:
        v179 = v54;
        memcpy(*&v4[122], &v13[v3 - v54], v54);
        v24 = 0;
        *&v4[122] += v179;
        return v24;
      }

      *v39 = 0;
      v39[1] = 0;
      v24 = v37 + 1;
    }

    if (v24 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_241;
    }

    v171 = 0uLL;
    v226 = 0u;
    v172 = v4[653];
    if (!v24)
    {
LABEL_260:
      v24 = ZSTD_copySequencesToSeqStoreExplicitBlockDelim(v4, &v226, v172, v24, v13, v3, v4[55].i32[0]);
      if (v24 <= 0xFFFFFFFFFFFFFF88)
      {
        v24 = 0;
        v4[438] = 0;
      }

      return v24;
    }

    if (v24 == 1)
    {
      v173 = 0;
    }

    else
    {
      v173 = v24 & 0xFFFFFFFFFFFFFFFELL;
      v181 = (v172 + 20);
      v182 = v24 & 0xFFFFFFFFFFFFFFFELL;
      v183 = 0uLL;
      do
      {
        v184 = v181[-2];
        v185 = *v181;
        v181 += 4;
        v183 = vaddw_u32(v183, v184);
        v171 = vaddw_u32(v171, v185);
        v182 -= 2;
      }

      while (v182);
      v171 = vaddq_s64(v171, v183);
      if (v24 == v173)
      {
LABEL_258:
        if (vaddvq_s64(v171) > v3)
        {
          return -107;
        }

        goto LABEL_260;
      }
    }

    v186 = v24 - v173;
    v187 = (v172 + 16 * v173 + 4);
    do
    {
      v188 = *v187;
      v187 += 2;
      v171 = vaddw_u32(v171, v188);
      --v186;
    }

    while (v186);
    goto LABEL_258;
  }

  if (*(a1 + 260) < 7u)
  {
    if (a3)
    {
      v19 = *(a1 + 252);
      v20 = *(a1 + 3184);
      v21 = *(a1 + 3168);
      if (v21 <= v20)
      {
        v22 = *(a1 + 3184);
      }

      else
      {
        v22 = *(a1 + 3168);
      }

      v23 = 12 * v21;
      v24 = 1;
      while (v22 != v21)
      {
        v25 = (*(a1 + 3160) + v23);
        v26 = v25[1];
        v27 = v3 - v26;
        if (v3 <= v26)
        {
          v25[1] = v26 - v3;
          return 1;
        }

        v25[1] = 0;
        v28 = v25[2];
        v3 = v27 - v28;
        if (v27 < v28)
        {
          v25[2] = v28 - v27;
          if (v28 - v27 >= v19)
          {
            return 1;
          }

          v170 = v21 + 1;
          if (v170 < v20)
          {
            v25[4] += v28 - v27;
          }

          *(a1 + 3168) = v170;
          return 1;
        }

        v25[2] = 0;
        *(a1 + 3168) = ++v21;
        v23 += 12;
        if (v27 == v28)
        {
          return v24;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = *(a1 + 3176) + a3;
    if (v5)
    {
      v6 = *(a1 + 3184);
      v7 = *(a1 + 3168);
      if (v7 <= v6)
      {
        v8 = *(a1 + 3184);
      }

      else
      {
        v8 = *(a1 + 3168);
      }

      v9 = 12 * v7;
      while (1)
      {
        if (v8 == v7)
        {
          if (v8 != v6)
          {
            return 1;
          }

          goto LABEL_48;
        }

        v10 = *(*(a1 + 3160) + v9 + 8) + *(*(a1 + 3160) + v9 + 4);
        _CF = v5 >= v10;
        v12 = v5 - v10;
        if (!_CF)
        {
          break;
        }

        *(a1 + 3168) = ++v7;
        v9 += 12;
        v5 = v12;
        if (!v12)
        {
          goto LABEL_48;
        }
      }

      *(a1 + 3176) = v5;
      if (v7 != v6)
      {
        return 1;
      }
    }

LABEL_48:
    *(a1 + 3176) = 0;
    return 1;
  }

  return v24;
}

uint64_t ZSTD_isRLE(char *a1, unint64_t a2)
{
  if (a2 == 1)
  {
    return 1;
  }

  v2 = a2 & 0x1F;
  if ((a2 & 0x1F) != 0)
  {
    v3 = &a1[v2];
    v4 = a1;
    v5 = a1 + 1;
    if (v2 >= 9)
    {
      v6 = *(a1 + 1);
      if (*a1 != v6)
      {
        v9 = __clz(__rbit64(v6 ^ *a1)) >> 3;
        goto LABEL_21;
      }

      v7 = a1 + 9;
      while (1)
      {
        v5 = v7;
        if (v7 >= v3 - 7)
        {
          break;
        }

        v8 = *(v7 - 1);
        v7 += 8;
        if (v8 != *v5)
        {
          v5 += __clz(__rbit64(*v5 ^ v8)) >> 3;
          goto LABEL_20;
        }
      }

      v4 = v7 - 1;
    }

    if (v5 < v3 - 3 && *v4 == *v5)
    {
      v4 += 4;
      v5 += 4;
    }

    if (v5 < v3 - 1 && *v4 == *v5)
    {
      v4 += 2;
      v5 += 2;
    }

    if (v5 < v3 && *v4 == *v5)
    {
      ++v5;
    }

LABEL_20:
    v9 = v5 - (a1 + 1);
LABEL_21:
    if (v9 != v2 - 1)
    {
      return 0;
    }
  }

  if (a2 < 0x20)
  {
    return 1;
  }

  v11 = 0x101010101010101 * *a1;
  v12 = a2 & 0xFFFFFFFFFFFFFFE0;
  for (i = &a1[v2 + 16]; *(i - 2) == v11 && *(i - 1) == v11 && *i == v11 && *(i + 1) == v11; i += 32)
  {
    v12 -= 32;
    if (!v12)
    {
      return 1;
    }
  }

  return 0;
}

void *ZSTD_deriveBlockSplitsHelper(void *result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v79 = result;
  if (a3 - a2 >= 0x12C)
  {
    v8 = a2;
    v9 = (a4 + 3728);
    v10 = (a4 + 3808);
    v11 = (a4 + 3888);
    v12 = result[1];
    do
    {
      if (v12 > 0xC3)
      {
        break;
      }

      *v9 = *a5;
      v13 = *(a5 + 1);
      v14 = *(a5 + 2);
      v15 = *(a5 + 4);
      *(v9 + 3) = *(a5 + 3);
      *(v9 + 4) = v15;
      *(v9 + 1) = v13;
      *(v9 + 2) = v14;
      if (v8)
      {
        v16 = *a5 + 8 * v8;
        v17 = v16 - *v9;
        if (v16 == *v9)
        {
          v18 = 0;
        }

        else
        {
          v18 = 0;
          v19 = v17 >> 3;
          v20 = *(a4 + 3804);
          if (v19 <= 1)
          {
            v19 = 1;
          }

          v21 = (*v9 + 4);
          do
          {
            v22 = *v21;
            v21 += 4;
            v18 += v22;
            if (!v20 && *(a4 + 3800) == 1)
            {
              v18 += 0x10000;
            }

            --v20;
            --v19;
          }

          while (v19);
        }

        *(a4 + 3744) += v18;
      }

      if (*(a5 + 18))
      {
        v23 = *(a5 + 19);
        if (v8 > v23 || v23 > a3)
        {
          *(a4 + 3800) = 0;
        }

        else
        {
          *(a4 + 3804) -= v8;
        }
      }

      v24 = *a5 + 8 * v8;
      *(a4 + 3728) = v24;
      v25 = *a5;
      v26 = *a5 + 8 * a3;
      *(a4 + 3736) = v26;
      if (a3 != (a5[1] - v25) >> 3)
      {
        v27 = v26 - v24;
        if (v26 == v24)
        {
          v28 = 0;
        }

        else
        {
          v28 = 0;
          v29 = v27 >> 3;
          v30 = *(a4 + 3804);
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v31 = (v24 + 4);
          do
          {
            v32 = *v31;
            v31 += 4;
            v28 += v32;
            if (!v30 && *(a4 + 3800) == 1)
            {
              v28 += 0x10000;
            }

            --v30;
            --v29;
          }

          while (v29);
        }

        *(a4 + 3752) = *(a4 + 3744) + v28;
      }

      *(a4 + 3760) += v8;
      *(a4 + 3768) += v8;
      *(a4 + 3776) += v8;
      *v10 = *a5;
      v33 = *(a5 + 1);
      v34 = *(a5 + 2);
      v35 = *(a5 + 4);
      *(v10 + 3) = *(a5 + 3);
      *(v10 + 4) = v35;
      *(v10 + 1) = v33;
      *(v10 + 2) = v34;
      if (v8)
      {
        v36 = *a5 + 8 * v8;
        v37 = v36 - *v10;
        if (v36 == *v10)
        {
          v38 = 0;
        }

        else
        {
          v38 = 0;
          v39 = v37 >> 3;
          v40 = *(a4 + 3884);
          if (v39 <= 1)
          {
            v39 = 1;
          }

          v41 = (*v10 + 4);
          do
          {
            v42 = *v41;
            v41 += 4;
            v38 += v42;
            if (!v40 && *(a4 + 3880) == 1)
            {
              v38 += 0x10000;
            }

            --v40;
            --v39;
          }

          while (v39);
        }

        *(a4 + 3824) += v38;
      }

      v43 = (v8 + a3) >> 1;
      if (*(a5 + 18))
      {
        v44 = *(a5 + 19);
        if (v8 <= v44 && v43 >= v44)
        {
          *(a4 + 3884) -= v8;
        }

        else
        {
          *(a4 + 3880) = 0;
        }
      }

      v46 = *a5 + 8 * v8;
      *(a4 + 3808) = v46;
      v47 = *a5;
      v48 = *a5 + 8 * v43;
      *(a4 + 3816) = v48;
      if (v43 != (a5[1] - v47) >> 3)
      {
        v49 = v48 - v46;
        if (v48 == v46)
        {
          v50 = 0;
        }

        else
        {
          v50 = 0;
          v51 = v49 >> 3;
          v52 = *(a4 + 3884);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v53 = (v46 + 4);
          do
          {
            v54 = *v53;
            v53 += 4;
            v50 += v54;
            if (!v52 && *(a4 + 3880) == 1)
            {
              v50 += 0x10000;
            }

            --v52;
            --v51;
          }

          while (v51);
        }

        *(a4 + 3832) = *(a4 + 3824) + v50;
      }

      *(a4 + 3840) += v8;
      *(a4 + 3848) += v8;
      *(a4 + 3856) += v8;
      *v11 = *a5;
      v55 = *(a5 + 1);
      v56 = *(a5 + 2);
      v57 = *(a5 + 4);
      *(v11 + 3) = *(a5 + 3);
      *(v11 + 4) = v57;
      *(v11 + 1) = v55;
      *(v11 + 2) = v56;
      if (v8 + a3 >= 2)
      {
        v58 = *a5 + 8 * v43;
        v59 = v58 - *v11;
        if (v58 == *v11)
        {
          v60 = 0;
        }

        else
        {
          v60 = 0;
          v61 = v59 >> 3;
          v62 = *(a4 + 3964);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v63 = (*v11 + 4);
          do
          {
            v64 = *v63;
            v63 += 4;
            v60 += v64;
            if (!v62 && *(a4 + 3960) == 1)
            {
              v60 += 0x10000;
            }

            --v62;
            --v61;
          }

          while (v61);
        }

        *(a4 + 3904) += v60;
      }

      if (*(a5 + 18))
      {
        v65 = *(a5 + 19);
        if (v43 > v65 || v65 > a3)
        {
          *(a4 + 3960) = 0;
        }

        else
        {
          *(a4 + 3964) -= v43;
        }
      }

      v67 = *a5 + 8 * v43;
      *(a4 + 3888) = v67;
      v68 = *a5;
      v69 = *a5 + 8 * a3;
      *(a4 + 3896) = v69;
      if (a3 != (a5[1] - v68) >> 3)
      {
        v70 = v69 - v67;
        if (v69 == v67)
        {
          v71 = 0;
        }

        else
        {
          v71 = 0;
          v72 = v70 >> 3;
          v73 = *(a4 + 3964);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v74 = (v67 + 4);
          do
          {
            v75 = *v74;
            v74 += 4;
            v71 += v75;
            if (!v73 && *(a4 + 3960) == 1)
            {
              v71 += 0x10000;
            }

            --v73;
            --v72;
          }

          while (v72);
        }

        *(a4 + 3912) = *(a4 + 3904) + v71;
      }

      *(a4 + 3920) += v43;
      *(a4 + 3928) += v43;
      *(a4 + 3936) += v43;
      v76 = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(v9, a4);
      v77 = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(v10, a4);
      result = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(v11, a4);
      if (v76 > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (v77 > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (result > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (result + v77 >= v76)
      {
        break;
      }

      result = ZSTD_deriveBlockSplitsHelper(v79, v8, (v8 + a3) >> 1, a4, a5);
      v78 = v79[1];
      *(*v79 + 4 * v78) = v43;
      v12 = v78 + 1;
      v79[1] = v78 + 1;
      v8 = (v8 + a3) >> 1;
    }

    while (a3 - v43 > 0x12B);
  }

  return result;
}