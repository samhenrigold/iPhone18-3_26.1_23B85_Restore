void *RIPLayerBltShape(int *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int32x2_t *a6, uint64_t a7)
{
  v10 = a4;
  v11 = a3;
  v54 = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  v34[1] = 0;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (a2)
  {
    if (a4)
    {
      if (*(a4 + 64) || *(a4 + 56))
      {
        if ((ripl_Combine(a4, a2, 0) & 1) == 0)
        {
          return 0;
        }

LABEL_17:
        v14 = (v10 + 12);
        if (!v11)
        {
          v11 = (v10 + 12);
        }

        if (*(v10 + 64))
        {
          if (*(v10 + 72))
          {
            goto LABEL_31;
          }

          if (v11 == v14 || !ripl_IsContained(v11, v14))
          {
            if (ripl_CreateMask(v10, 0))
            {
              goto LABEL_31;
            }

            return 0;
          }
        }

        else
        {
          if (*(v10 + 56))
          {
            goto LABEL_31;
          }

          if (v11 != v14)
          {
            if (CGSBoundsIntersection((v10 + 12), v11, v34))
            {
              v10 = 0;
              v11 = v34;
              goto LABEL_31;
            }

            return 0;
          }
        }

        v10 = 0;
        goto LABEL_31;
      }

      v13 = (a4 + 12);
      if (a3)
      {
        if (v13 != a3)
        {
          v11 = v34;
          v10 = a2;
          if (!CGSBoundsIntersection(v13, a3, v34))
          {
            return 0;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v11 = (a4 + 12);
      }
    }

    v10 = a2;
    goto LABEL_17;
  }

  if (a4)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    v11 = a1 + 3;
  }

LABEL_31:
  v16 = *(a1 + 5);
  if (!v16)
  {
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = &v35;
    v35 = 0u;
    v36 = 0u;
  }

  result = (*(*a1 + 32))(a1, 32, v11);
  if (result)
  {
    v17 = result;
    v18 = *result;
    if (!*result || !v18[4] || !*(a1 + 7) && !ripl_CreateMask(a1, 1))
    {
      goto LABEL_64;
    }

    *v16 = *a7;
    v19.n128_f64[0] = ripl_BltOpDestination(v16, v11, a1);
    if (!a5)
    {
      v21 = 0;
      v22 = v18[3];
      if (!v22)
      {
LABEL_65:
        (*(*a1 + 48))(a1, v21);
        return (v21 != 0);
      }

      v32 = 0;
      v33 = a6;
      v23 = 0;
      v24 = *(a7 + 48);
      v25 = 0;
      goto LABEL_47;
    }

    v20 = *a5;
    if (*a5 != &ripc_class)
    {
      if (v20)
      {
        while (v20 != RIPLayer_ripl_class)
        {
          if (!*v20)
          {
            goto LABEL_64;
          }

          v20 = (*v20)(v19);
          v21 = 0;
          if (!v20)
          {
            goto LABEL_65;
          }
        }

        v30 = (*(*a5 + 32))(a5, 16, a5 + 12, v19);
        if (v30)
        {
          if (*(*v30 + 8) != v18[1] || !*(a5 + 56) && !ripl_CreateMask(a5, 0))
          {
            v21 = 0;
LABEL_78:
            (*(*a5 + 48))(a5, 0);
            goto LABEL_65;
          }

          ripl_BltOpSourceLayer(v16, v11, a1, a6, a5);
          v31 = 0;
          v27 = 0;
LABEL_69:
          ripl_BltOpMask(v16, v11, v10);
          if (CGBlt_initialize(v16))
          {
            if ((v18[4])(v17, v16))
            {
              v21 = v11;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          if (v27)
          {
            if (v27 != v16 + 184)
            {
              free(v27);
            }
          }

          if (v31)
          {
            goto LABEL_65;
          }

          goto LABEL_78;
        }
      }

      goto LABEL_64;
    }

    v22 = v18[3];
    if (!v22)
    {
      goto LABEL_64;
    }

    v28 = *(a7 + 48);
    v21 = *(a5 + 8);
    v24 = *(a5 + 156) * v28;
    if (v21 && *(a5 + 20) == *(v16 + 43) && v21 == *(v16 + 20) && *(a5 + 16) == *(v16 + 42) && v24 == *(v16 + 44))
    {
      v27 = v16 + 184;
LABEL_68:
      ripl_BltOpSourcePattern(v16, a1, a6, v27);
      v31 = 1;
      goto LABEL_69;
    }

    v25 = a5 + 28;
    v29 = *(a5 + 24);
    if (v29)
    {
      if (v29 != 2)
      {
        if (v29 == 1)
        {
          LODWORD(v32) = *(a5 + 20);
          HIDWORD(v32) = *(a5 + 16);
          v33 = a6;
          v23 = 3;
          goto LABEL_47;
        }

LABEL_64:
        v21 = 0;
        goto LABEL_65;
      }

      LODWORD(v32) = *(a5 + 20);
      HIDWORD(v32) = *(a5 + 16);
      v33 = a6;
      v23 = 4;
    }

    else
    {
      LODWORD(v32) = *(a5 + 20);
      HIDWORD(v32) = *(a5 + 16);
      v33 = a6;
      v23 = 1;
    }

LABEL_47:
    v26 = v22(v17, v16 + 184, 64, v23, v25, *(a7 + 4), v24);
    v27 = v26;
    if (v26 == v16 + 184)
    {
      a6 = v33;
      if ((*v26 & 0xFFF00000) == 0x400000)
      {
        *(v16 + 20) = v21;
        *(v16 + 42) = HIDWORD(v32);
        *(v16 + 43) = v32;
        *(v16 + 44) = v24;
      }

      else
      {
        *(v16 + 20) = 0;
        *(v16 + 21) = 0;
      }
    }

    else
    {
      a6 = v33;
    }

    goto LABEL_68;
  }

  return result;
}

void ripr_Finish(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 != a1 + 168)
    {
      v3 = *(v1 + 24);
      if (v3)
      {
        aa_free_edges(*(v1 + 24));
        free(v3);
      }

      v4 = *(v1 + 32);
      if (v4)
      {
        aal_free_edges(*(v1 + 32));
        while (1)
        {
          v5 = v4[28];
          if (!v5)
          {
            break;
          }

          v4[28] = *v5;
          free(v5);
        }

        free(v4);
      }

      (*(*(v1 + 120) + 24))(v1 + 120);
      if (*(v1 + 8))
      {
        free(*(v1 + 16));
      }

      free(v1);
    }

    *(a1 + 16) = 0;
  }
}

void CGContextRestoreGState(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(c + 12) = CGGStackRestore(*(c + 13));
      return;
    }

    v1 = c;
  }

  else
  {
    v1 = 0;
  }

  handle_invalid_context("CGContextRestoreGState", v1);
}

uint64_t aa_render(uint64_t result, unsigned int a2, char *a3, unint64_t a4, int a5, int a6, int a7, int a8)
{
  v207 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  v8 = result;
  v10 = *result;
  v9 = *(result + 4);
  v12 = *(result + 8);
  v11 = *(result + 12);
  v13 = v12 - *result < 31 || v11 - v9 < 31;
  if (v13)
  {
    return 0;
  }

  v14 = *(result + 184);
  if (24 * v14 + 44 < 1)
  {
    return 0;
  }

  v16 = a3;
  v17 = a2;
  v18 = v10 >> 12;
  v19 = (v12 + 4095) >> 12;
  v20 = v9 >> 12;
  v21 = (v11 + 4095) >> 12;
  if ((a2 & 4) != 0)
  {
    result = 0;
    if (a7 <= a5)
    {
      return result;
    }

    v22 = a8 - a6 - 1;
    if (a8 - a6 < 1)
    {
      return result;
    }

    result = 0;
    v32 = v20 - a6;
    if (v20 >= a6)
    {
      v33 = -(v32 * a4);
    }

    else
    {
      v33 = 0;
    }

    if (v20 < a6)
    {
      v20 = a6;
    }

    v34 = v18 - a5;
    if (v18 < a5)
    {
      v35 = a5;
    }

    else
    {
      v35 = v18;
    }

    v36 = v21 - a8;
    if (v21 - a8 >= 1)
    {
      v21 = a8;
    }

    v37 = v19 - a7;
    v38 = v19 - a7 >= 1 ? a7 : v19;
    if (v21 <= v20)
    {
      return result;
    }

    v189 = v35;
    v188 = v38;
    if (v38 <= v35)
    {
      return result;
    }

    v39 = &a3[(v34 & ~(v34 >> 31)) + v33];
    if (v32 >= 0)
    {
      v40 = 3;
    }

    else
    {
      v40 = 4;
    }

    if (v40 + (~v34 >> 31) - (v36 < 1) == v37 < 1)
    {
      v17 = a2 & 0xFFFFFFFB;
    }

    else
    {
      v17 = a2;
    }

    if ((v36 | v37) < 0 || v39 != a3)
    {
      bzero(a3, (a8 - a6) * a4);
      v17 |= 0x40u;
      v14 = *(v8 + 184);
    }

    v16 = v39;
  }

  else
  {
    v22 = v21 + ~v20;
    v189 = (v10 >> 12);
    v188 = (v12 + 4095) >> 12;
  }

  v23 = (v22 * a4);
  v192 = &v16[v23];
  if (v14 == 2 && *(v8 + 188) == 2)
  {
    v24 = *v8;
    if (*v8 <= v189 << 12)
    {
      v24 = v189 << 12;
    }

    if (*(v8 + 8) >= v188 << 12)
    {
      v25 = v188 << 12;
    }

    else
    {
      v25 = *(v8 + 8);
    }

    v26 = v25 - 1;
    v27 = (v24 >> 12);
    v28 = (v26 >> 12);
    v205 = a4;
    if (v27 == v26 >> 12)
    {
      v29 = 0;
      v30 = ((v26 - v24) >> 4);
      v31 = v30;
    }

    else
    {
      v31 = (v26 >> 4);
      v30 = ~(v24 >> 4);
      v29 = v28 + ~v27;
    }

    if (*(v8 + 4) <= v20 << 12)
    {
      v141 = v20 << 12;
    }

    else
    {
      v141 = *(v8 + 4);
    }

    if (*(v8 + 12) >= v21 << 12)
    {
      v142 = v21 << 12;
    }

    else
    {
      v142 = *(v8 + 12);
    }

    v143 = v142 - 1;
    v144 = v141 >> 12;
    v145 = v143 >> 12;
    if (v141 >> 12 == v143 >> 12)
    {
      v146 = 0;
      v147 = 0;
      v143 -= v141;
      v148 = v141 >> 12;
    }

    else
    {
      v148 = v144 + 1;
      v146 = ~(v141 >> 4);
      v147 = v145 - (v144 + 1);
    }

    v149 = (v143 >> 4);
    if (v146 <= 0xFE)
    {
      v150 = v146;
    }

    else
    {
      v148 = v141 >> 12;
      v150 = 0;
    }

    if (v146 <= 0xFE)
    {
      v151 = v147;
    }

    else
    {
      v151 = v147 + 1;
    }

    if (v149 == 255)
    {
      v152 = 0;
    }

    else
    {
      v152 = v149;
    }

    if (v149 == 255)
    {
      v153 = v151 + 1;
    }

    else
    {
      v153 = v151;
    }

    v154 = v27;
    v155 = v189;
    v156 = v148 - v20;
    v206 = v27 - v189;
    v204 = v29;
    LODWORD(v201) = v145;
    v202 = v152;
    if ((v17 & 0x40) == 0 && v144 == v20 && v153 * v29 >= 0x21 && v27 == v189 && v145 == v21 - 1)
    {
      v157 = v29;
      if (v28 == v188 - 1)
      {
        v200 = v23;
        v158 = v27;
        v159 = v28;
        LODWORD(v203) = v148 - v20;
        memset(&v192[v205 - v205 * (v153 + v156)], 255, v153 * v205);
        v155 = v189;
        v23 = v200;
        v156 = v203;
        v28 = v159;
        v27 = v158;
        v29 = v204;
        v157 = 0;
        v160 = v31 == 255 && v30 == 255;
        if (v160)
        {
          v153 = 0;
        }
      }
    }

    else
    {
      v157 = v29;
    }

    v161 = v28;
    v203 = v28 - v155;
    if (v150)
    {
      v162 = &v192[-((v144 - v20) * v205)];
      v163 = ((v150 * v30) >> 8) + v150 * v30 + 1;
      v164 = ((v150 * v31) >> 8) + v150 * v31 + 1;
      if (v29 < 0x21)
      {
        if (v29)
        {
          v168 = v150;
          v198 = v27;
          v199 = v28;
          v200 = v23;
          v169 = v156;
          v196 = v164;
          v197 = v163;
          memset(&v162[v206 + 1], v168, v204);
          BYTE1(v164) = BYTE1(v196);
          BYTE1(v163) = BYTE1(v197);
          v156 = v169;
          LODWORD(v28) = v199;
          LODWORD(v23) = v200;
          LODWORD(v27) = v198;
          v167 = v206;
        }

        else
        {
          v167 = v206;
        }
      }

      else
      {
        v197 = ((v150 * v30) >> 8) + v150 * v30 + 1;
        v198 = v27;
        v196 = ((v150 * v31) >> 8) + v150 * v31 + 1;
        v165 = v150;
        v199 = v28;
        v200 = v23;
        v166 = v156;
        memset(&v162[v206 + 1], v165, v204);
        v167 = v206;
        BYTE1(v164) = BYTE1(v196);
        BYTE1(v163) = BYTE1(v197);
        LODWORD(v27) = v198;
        v156 = v166;
        LODWORD(v28) = v199;
        LODWORD(v23) = v200;
      }

      v162[v167] = BYTE1(v163);
      v162[v203] = BYTE1(v164);
    }

    if (v153)
    {
      v170 = v205;
      v171 = v156 * v205;
      if (v157)
      {
        if (v157 >= 0x20)
        {
          v177 = -v205;
          v178 = &v16[v23 + v28 - v189 - v171];
          v179 = &v16[v23 + v27 - v189 - v171 + 1];
          do
          {
            memset(v179, 255, v157);
            *(v179 - 1) = v30;
            *v178 = v31;
            v178 += v177;
            v179 += v177;
            --v153;
          }

          while (v153);
        }

        else
        {
          v172 = 0;
          v173 = v205;
          v174 = &v16[v23 + v28 - v189 - v171];
          v175 = &v16[v23 + v27 - v189 - v171];
          do
          {
            memset(&v175[v172 + 1], 255, v157);
            v175[v172] = v30;
            v174[v172] = v31;
            v172 -= v173;
            --v153;
          }

          while (v153);
        }
      }

      else
      {
        v176 = &v16[v23 - v189 - v171];
        do
        {
          v176[v154] = v30;
          v176[v161] = v31;
          v176 -= v170;
          --v153;
        }

        while (v153);
      }
    }

    if (v202)
    {
      v180 = &v192[-((v201 - v20) * v205)];
      v181 = ((v31 * v202) >> 8) + v31 * v202 + 1;
      if (v204)
      {
        memset(&v180[v206 + 1], v202, v204);
      }

      v180[v206] = (((v30 * v202) >> 8) + v30 * v202 + 1) >> 8;
      v180[v203] = BYTE1(v181);
    }

    return 0xFFFFFFFFLL;
  }

  v41 = (v20 << 12);
  v42 = (v21 << 12);
  if (v21 - v20 > 1015)
  {
    v43 = 8 * (v21 - v20 + 16);
    v45 = malloc_type_malloc(v43, 0x80040B8603338uLL);
    v184 = v45;
  }

  else
  {
    v43 = 8 * (v21 - v20 + 16);
    MEMORY[0x1EEE9AC00](result);
    v45 = &v182 - v44;
    bzero(&v182 - v44, v43);
    v184 = 0;
  }

  bzero(v45, v43);
  v46 = (v45 + 32);
  v47 = &v46[-v20];
  *(v8 + 176) = ((v17 << 21) & 0x400000 | ((v17 & 1) << 25) | *(v8 + 176) & 0xFC0FFFFF) ^ 0x600000;
  if ((v17 & 4) != 0)
  {
    v48 = aa_distribute_clip_edges(v8, v47, (v20 << 12), v42);
    if (v48)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v48 = aa_distribute_edges(v8, v47);
    if (v48)
    {
LABEL_50:
      v205 = a4;
      v49 = v19 - v18;
      if (v19 - v18 > 1015)
      {
        v50 = 4 * (v49 + 16);
        v52 = malloc_type_malloc(v50, 0x100004052888210uLL);
        v183 = v52;
      }

      else
      {
        v50 = 4 * (v19 - v18 + 16);
        MEMORY[0x1EEE9AC00](v48);
        v52 = (&v182 - v51);
        bzero(&v182 - v51, v50);
        v183 = 0;
      }

      bzero(v52, v50);
      *(v8 + 200) = 0;
      v200 = (v8 + 200);
      *(v8 + 208) = 0;
      if (v41 >= v42)
      {
LABEL_215:
        if (v183)
        {
          free(v183);
        }

        if (v184)
        {
          free(v184);
        }

        return 0xFFFFFFFFLL;
      }

      v53.i32[0] = 0;
      LODWORD(v196) = 0;
      LODWORD(v195) = 0;
      LODWORD(v204) = v189 << 12;
      LODWORD(v203) = v188 << 12;
      v206 = v52[1].i64 + (-(v52 - 4 * v18 + 16 + 4 * v189) & 0x1FLL) + -4 * v18;
      v55 = &v52[3].u64[1] + 4 * v49 + 4;
      v190 = ((v17 >> 6) & 1) - 1;
      v54.i32[0] = v17 & 0x20;
      v56 = *&vdupq_lane_s32(*&vceqq_s32(v54, v53), 0) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if ((v17 & 0x20) != 0)
      {
        v57 = &unk_1844EE660;
      }

      else
      {
        v57 = &unk_1844EF670;
      }

      v187 = v188 + 3;
      v186 = -v205;
      v58 = 0uLL;
      v202 = v52;
      v205 = v55;
      v194 = v56;
      v185 = v57;
      while (1)
      {
        v59 = *v46;
        if (*v46)
        {
          *v46 = *v59;
          *v59 = 0;
        }

        v201 = v46;
        LODWORD(v197) = 0;
        v60 = v41 + 4096;
        v191 = v41 + 4096;
        if (v41 + 4096 >= v42)
        {
          v60 = v42;
        }

        v193 = v60;
        if (!v59)
        {
LABEL_107:
          v75 = v193;
          if (v193 == v41)
          {
            goto LABEL_192;
          }

          goto LABEL_108;
        }

        while (1)
        {
          v75 = *(v59 + 20);
          if (v41 == v75)
          {
            v75 = v41;
            v61 = v201;
            do
            {
LABEL_70:
              v62 = *(v59 + 16);
              if (v62 > 1)
              {
                if (v62 != 2)
                {
                  if (v62 != 3)
                  {
LABEL_278:
                    abort();
                  }

                  v64 = *v200;
                  if (*v200)
                  {
                    v65 = *v200;
                    do
                    {
                      v66 = v64;
                      v68 = v64;
                      v64 = *v64;
                      v67 = *(v68 + 1);
                      if (v67)
                      {
                        v69 = v66[10];
                        v70 = v64;
                        v71 = v67;
                        do
                        {
                          v72 = v71[10];
                          if (v69 > v72 || v69 == v72 && v66[9] >= v71[9])
                          {
                            break;
                          }

                          v73 = *(v71 + 1);
                          *(v66 + 1) = v73;
                          if (v73)
                          {
                            *v73 = v66;
                            v70 = *v66;
                          }

                          *v71 = v70;
                          if (v70)
                          {
                            *(v70 + 1) = v71;
                          }

                          *(v71 + 1) = v66;
                          *v66 = v71;
                          if (v65 == v71)
                          {
                            v65 = v66;
                          }

                          v70 = v71;
                          v71 = *(v66 + 1);
                        }

                        while (v71);
                        if (v67 != v71 && (*(v8 + 178) & 0xC0) != 0)
                        {
                          v74 = v64;
                          do
                          {
                            if (v74)
                            {
                              aa_intersection_event(v8, v47, v67, v74, v75, v42);
                            }

                            v74 = v71;
                            v160 = v67 == v66;
                            v67 = v66;
                          }

                          while (!v160);
                        }
                      }
                    }

                    while (v64);
                  }

                  else
                  {
                    v65 = 0;
                  }

                  *(v8 + 200) = v65;
                  *v59 = *(v8 + 216);
                  *(v8 + 216) = v59;
                  v61 = v201;
                  v52 = v202;
                  v55 = v205;
                }
              }

              else if (v62)
              {
                if (v62 != 1)
                {
                  goto LABEL_278;
                }

                aa_ael_remove(v8, v47, v75, v42, *(v59 + 8));
                v63 = *(v59 + 8);
                *(v63 + 72) = *(v8 + 216);
                *(v63 + 48) = v63 + 72;
                *(v8 + 216) = v63 + 48;
              }

              else
              {
                aa_ael_insert(v8, v47, v75, v42, *(v59 + 8));
              }

              v59 = *v61;
              if (!*v61)
              {
                break;
              }

              *v61 = *v59;
              *v59 = 0;
            }

            while (*(v59 + 20) == v75);
            goto LABEL_104;
          }

LABEL_108:
          v76 = *v200;
          v77 = v203;
          v78 = v204;
          if (*v200)
          {
            v79 = -2 * v41;
            LODWORD(v199) = 16 * (v75 - v41);
            LODWORD(v198) = (v75 - v41) << 16;
            v80 = vdupq_n_s32(v198);
            v81 = v204;
            v78 = v204;
            v77 = v203;
            do
            {
              v82 = *(v76 + 46);
              v83 = v76[4];
              if (*(v76 + 47))
              {
                v84 = v76[6];
                v85 = v76[10];
                v86 = v76[8];
                v87 = v83 + ((v76[9] * (v75 - v84)) >> 12);
                v76[10] = v87;
                if (v82)
                {
                  v88 = v82 - 1;
                  v89 = 1 - v82;
                  v90 = v86;
                  v91 = (v206 + 4 * (v85 >> 12));
                  v92 = v82 - 2;
                  v93 = v85 & 0xFFFFF000;
                  if (v86 < 1)
                  {
                    v95 = v87 & v92 | v85 & v89;
                    if (v93 <= v87)
                    {
                      v93 = v85;
                      v97 = v41;
                    }

                    else
                    {
                      v100 = (v86 * (v93 - v83)) >> 12;
                      v97 = v84 + v100;
                      if (v91 >= v52 && v91 <= v55)
                      {
                        v55 = v205;
                        v91->i32[0] += (v89 ^ (8 * (v93 - v85) * (v97 - v41))) + v88;
                        v91 = (v91 - 4);
                      }

                      if (v93 - 4096 > v87)
                      {
                        v101 = (v79 + 2 * v84 + 2 * v100 - v86) << 15;
                        v102 = v86 << 16;
                        do
                        {
                          v103 = v93;
                          if (v91 >= v52 && v91 <= v55)
                          {
                            v91->i32[0] += v89 - (v101 ^ v89);
                            v91 = (v91 - 4);
                          }

                          v97 -= v90;
                          v93 -= 4096;
                          v101 -= v102;
                        }

                        while (v103 - 0x2000 > v87);
                      }
                    }

                    goto LABEL_141;
                  }

                  v94 = v93 + 4096;
                  v95 = v87 & v89 | v85 & v92;
                  if (v93 + 4096 >= v87)
                  {
                    v93 = v85;
                    v97 = v41;
                  }

                  else
                  {
                    v96 = ((v94 - v83) * v86) >> 12;
                    v97 = v84 + v96;
                    if (v91 >= v52 && v91 <= v205)
                    {
                      v52 = v202;
                      v91->i32[0] += (v89 ^ (8 * (v94 - v85) * (v97 - v41))) + v88;
                      v91 = (v91 + 4);
                    }

                    if (v93 + 0x2000 < v87)
                    {
                      v98 = (v79 + v86 + 2 * v84 + 2 * v96) << 15;
                      v55 = v205;
                      do
                      {
                        v99 = v94;
                        if (v91 >= v52 && v91 <= v55)
                        {
                          v91->i32[0] += (v98 ^ v89) + v88;
                          v91 = (v91 + 4);
                        }

                        v97 += v86;
                        v94 += 4096;
                        v98 += v86 << 16;
                      }

                      while (v99 + 0x2000 < v87);
                      v93 = v99 + 4096;
                      goto LABEL_141;
                    }

                    v93 += 4096;
                  }

                  v55 = v205;
LABEL_141:
                  if (v91 >= v52 && v91 <= v55)
                  {
                    v91->i32[0] += (v89 ^ (8 * (v87 - v93) * (v75 - 2 * v41 + v97))) + v88;
                  }

LABEL_144:
                  if (v82 < 2)
                  {
                    if (v78 >= v95)
                    {
                      v78 = v95;
                    }

                    if (v87 <= v204)
                    {
                      v81 = v204;
                    }

                    else
                    {
                      v81 = v87;
                    }
                  }

                  else
                  {
                    if (v77 <= v95)
                    {
                      v77 = v95;
                    }

                    if (v87 >= v203)
                    {
                      v104 = v203;
                    }

                    else
                    {
                      v104 = v87;
                    }

                    if (v87 > v81)
                    {
                      v105 = (v206 + 4 * (v81 >> 12));
                      v106 = ~(v81 >> 12) + (v104 >> 12);
                      if ((v106 & 0x80000000) != 0)
                      {
                        v107 = v81;
                      }

                      else
                      {
                        if (v105 >= v52 && v105 <= v55)
                        {
                          v105->i32[0] += (v75 - v41 - (((v81 & 0xFFFu) * (v75 - v41)) >> 12)) << 16;
                          v105 = (v105 + 4);
                        }

                        if (v106 >= 4)
                        {
                          do
                          {
                            v106 -= 4;
                            *v105 = vaddq_s32(*v105, v80);
                            ++v105;
                          }

                          while (v106 > 3);
                        }

                        if (v106 >= 2)
                        {
                          *v105->i8 = vadd_s32(*v105->i8, *v80.i8);
                          v105 = (v105 + 8);
                          v106 -= 2;
                        }

                        v107 = v104 & 0xFFFFF000;
                        if (v106)
                        {
                          v105->i32[0] += v198;
                          v105 = (v105 + 4);
                        }
                      }

                      if (v105 >= v52 && v105 <= v55)
                      {
                        v105->i32[0] += v199 * (v104 - v107);
                      }
                    }
                  }
                }
              }

              else
              {
                v95 = v76[4];
                v87 = v95;
                if (*(v76 + 46))
                {
                  goto LABEL_144;
                }
              }

              v76 = *v76;
            }

            while (v76);
          }

          v109 = v78 >> 12;
          v110 = (v77 + 4095) >> 12;
          v111 = v195;
          if (v78 >> 12 >= v195)
          {
            v112 = v195;
          }

          else
          {
            v112 = v78 >> 12;
          }

          v113 = v196;
          if (v110 <= v196)
          {
            v114 = v196;
          }

          else
          {
            v114 = (v77 + 4095) >> 12;
          }

          v115 = v197;
          if (v197)
          {
            v116 = v197;
          }

          else
          {
            v116 = 2;
          }

          if (v197)
          {
            v109 = v112;
            v110 = v114;
          }

          if (v78 <= v77)
          {
            v115 = v116;
          }

          LODWORD(v197) = v115;
          if (v78 <= v77)
          {
            v111 = v109;
          }

          LODWORD(v195) = v111;
          if (v78 <= v77)
          {
            v113 = v110;
          }

          LODWORD(v196) = v113;
          if (!v59)
          {
            break;
          }

          v61 = v201;
          if (*(v59 + 20) == v75)
          {
            goto LABEL_70;
          }

LABEL_104:
          aa_ael_mark(*(v8 + 176), *(v8 + 200));
          v41 = v75;
          v56 = v194;
          v58 = 0uLL;
          if (!v59)
          {
            goto LABEL_107;
          }
        }

LABEL_192:
        v117 = v201;
        v118 = v192;
        v119 = v192;
        v120 = v189;
        v121 = v189;
        if (v197)
        {
          v119 = v192;
          v121 = v189;
          if (v196 >= v189)
          {
            v119 = v192;
            v121 = v189;
            if (v195 <= v188)
            {
              v122 = v195;
              if (v195 <= v189)
              {
                v122 = v189;
              }

              if (v196 >= v188)
              {
                v123 = v188;
              }

              else
              {
                v123 = v196;
              }

              v124 = v122 - v189;
              v125 = v190 & ((v122 - v189) >> 2);
              v119 = v192;
              v126 = v125 - 1;
              if (v125 >= 1)
              {
                bzero(v192, 4 * (v190 & (v124 >> 2)));
                v58 = 0uLL;
                v56 = v194;
                v119 = &v118[4 * v126 + 4];
              }

              v127 = (v206 + 4 * ((v124 & 0xFFFFFFFC) + v120));
              v128 = (v123 - v120 + 3) & 0xFFFFFFFC;
              v129 = v128 - (v124 & 0xFFFFFFFC);
              if (v129 < 16)
              {
                v132 = v185;
              }

              else
              {
                v130 = 0;
                v131 = v129 + 16;
                v132 = v185;
                do
                {
                  v133 = vqmovun_high_s32(vqmovun_s32(vshrq_n_s32(*v127, 0x14uLL)), vshrq_n_s32(v127[1], 0x14uLL));
                  v134 = vqmovun_high_s32(vqmovun_s32(vshrq_n_s32(v127[2], 0x14uLL)), vshrq_n_s32(v127[3], 0x14uLL));
                  *&v119[v130] = vqmovn_high_u16(vqmovn_u16(vorrq_s8(v133, vcgtq_u16(v133, v56))), vorrq_s8(v134, vcgtq_u16(v134, v56)));
                  v127[2] = v58;
                  v127[3] = v58;
                  *v127 = v58;
                  v127[1] = v58;
                  v127 += 4;
                  v131 -= 16;
                  v130 += 16;
                }

                while (v131 > 0x1F);
                v129 -= v130;
                v119 += v130;
              }

              if (v129 >= 4)
              {
                do
                {
                  v135 = v132[v127->u32[0] >> 20];
                  v136 = v132[v127->u32[1] >> 20];
                  v127->i64[0] = 0;
                  *v119 = v135;
                  v119[1] = v136;
                  v137 = v132[v127->u32[2] >> 20];
                  v138 = v132[v127->u32[3] >> 20];
                  v127->i64[1] = 0;
                  v119[2] = v137;
                  v119[3] = v138;
                  v119 += 4;
                  ++v127;
                  v13 = v129 > 7;
                  v129 -= 4;
                }

                while (v13);
              }

              v121 = v128 + v120;
              if (v129 >= 1)
              {
                v139 = v129 + 1;
                do
                {
                  v140 = v132[v127->u32[0] >> 20];
                  v127->i32[0] = 0;
                  v127 = (v127 + 4);
                  *v119++ = v140;
                  --v139;
                }

                while (v139 > 1);
              }
            }
          }
        }

        if ((v190 & ((v187 - v121) >> 2)) >= 1)
        {
          bzero(v119, 4 * (v190 & ((v187 - v121) >> 2)));
          v58 = 0uLL;
          v56 = v194;
        }

        v192 = &v118[v186];
        v46 = v117 + 1;
        v41 = v191;
        v55 = v205;
        if (v191 >= v42)
        {
          goto LABEL_215;
        }
      }
    }
  }

  result = v184;
  if (v184)
  {
    free(v184);
    return 0;
  }

  return result;
}

uint64_t aa_distribute_edges(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v3 = *(a1 + 192);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (v2 >> 20) & 3;
  v10 = v9 - 1;
  do
  {
    v11 = *(v3 + 3);
    if (v11)
    {
      v12 = 0;
      v13 = v3 + 3;
      do
      {
        if (*(v13 + 22))
        {
          if (v9)
          {
            v15 = *(v13 + 6);
            v14 = *(v13 + 7);
            v16 = v13 + 2;
            v17 = v15;
            v18 = v14;
          }

          else
          {
            v14 = *(v13 + 6);
            v15 = *(v13 + 7);
            v16 = v13 + 5;
            v17 = (4095 - v15);
            v18 = (4095 - v14);
          }

          *(v13 + 10) = *v16;
          if (!v6 || v17 < v4 || (v19 = v6, (v17 ^ v4) >= 0x1000))
          {
            if (!v7 || v17 < v5 || (v19 = v7, (v17 ^ v5) >= 0x1000))
            {
              v19 = (a2 + 8 * (v15 >> 12));
            }
          }

          v20 = *v19;
          if (*v19)
          {
            do
            {
              v21 = v20;
              v22 = *(v20 + 5) - v15;
              if (v22)
              {
                if (v22 * v10 > 0)
                {
                  goto LABEL_25;
                }
              }

              else if (!*(v21 + 4))
              {
                goto LABEL_25;
              }

              v20 = *v21;
              v19 = v21;
            }

            while (*v21);
            v19 = v21;
          }

          v21 = 0;
LABEL_25:
          v13[6] = v21;
          v13[7] = v13;
          *(v13 + 16) = 0;
          *(v13 + 17) = v15;
          *v19 = v13 + 6;
          if (!v6 || v18 < v4 || (v18 ^ v4) >= 0x1000)
          {
            if (v18 < v17 || (v6 = v19, (v18 ^ v17) >= 0x1000))
            {
              v6 = (a2 + 8 * (v14 >> 12));
            }
          }

          v23 = *v6;
          if (*v6)
          {
            do
            {
              v24 = *(v23 + 5) - v14;
              if (!v24)
              {
                break;
              }

              if (v24 * v10 > 0)
              {
                break;
              }

              v6 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          v13[9] = v23;
          v13[10] = v13;
          *(v13 + 22) = 1;
          *(v13 + 23) = v14;
          v8 = (v8 + 1);
          v4 = v18;
          v5 = v17;
          v7 = v19;
          *v6 = v13 + 9;
        }

        else
        {
          *v13 = *(a1 + 224);
          *(a1 + 224) = v13;
          v19 = v7;
          v17 = v5;
          v18 = v4;
        }

        ++v12;
        v13 += 12;
      }

      while (v12 != v11);
    }

    else
    {
      v19 = v7;
      v17 = v5;
      v18 = v4;
    }

    v3 = *v3;
    v4 = v18;
    v5 = v17;
    v7 = v19;
  }

  while (v3);
  return v8;
}

char *aa_ael_insert(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = result;
  v10 = *(result + 25);
  if (!v10)
  {
    *a5 = 0;
    a5[1] = 0;
    *(result + 25) = a5;
    goto LABEL_67;
  }

  v11 = (*(result + 44) >> 20) & 3;
  v12 = v11 - 1;
  v13 = *(result + 26);
  v15 = *(a5 + 9);
  v14 = *(a5 + 10);
  v16 = *(v10 + 10) - v14;
  if (!v16)
  {
    v17 = *(v10 + 9);
    if (v17 == v15)
    {
LABEL_24:
      v13 = *(result + 25);
      goto LABEL_25;
    }

    if (v17 <= v15)
    {
      v16 = 1 - v11;
    }

    else
    {
      v16 = v11 - 1;
    }
  }

  if (v16 >= 1)
  {
    *a5 = v10;
    a5[1] = 0;
    *(result + 25) = a5;
    v10[1] = a5;
    goto LABEL_67;
  }

  if (!v16)
  {
    goto LABEL_24;
  }

  if (!v13 || v13 == v10)
  {
    goto LABEL_53;
  }

  v18 = *(v13 + 10) - v14;
  if (v18 || (v28 = *(v13 + 9), v28 != v15) && (v28 <= v15 ? (v18 = 1 - v11) : (v18 = v11 - 1), v18))
  {
    if ((v18 & 0x80000000) == 0)
    {
      if (v13[1] != v10)
      {
        v19 = 1 - v11;
        v10 = *(result + 26);
        do
        {
          v10 = v10[1];
          v20 = *(v10 + 10) - v14;
          if (!v20)
          {
            v21 = *(v10 + 9);
            if (v21 == v15)
            {
              break;
            }

            if (v21 <= v15)
            {
              v20 = v19;
            }

            else
            {
              v20 = v12;
            }
          }
        }

        while (v20 > 0);
      }

LABEL_64:
      *a5 = *v10;
      a5[1] = v10;
      *v10 = a5;
      if (*a5)
      {
        (*a5)[1] = a5;
      }

      *(result + 26) = a5;
      goto LABEL_67;
    }

    v10 = *(result + 26);
LABEL_53:
    v29 = 1 - v11;
    v13 = v10;
    while (1)
    {
      v10 = v13;
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_64;
      }

      v30 = *(v13 + 10) - v14;
      if (v30)
      {
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v31 = *(v13 + 9);
        if (v31 == v15)
        {
          break;
        }

        if (v31 <= v15)
        {
          v30 = v29;
        }

        else
        {
          v30 = v12;
        }

        if ((v30 & 0x80000000) == 0)
        {
LABEL_63:
          if (!v30)
          {
            break;
          }

          goto LABEL_64;
        }
      }
    }
  }

LABEL_25:
  if (*(v13 + 22) == 2)
  {
    v22 = v13[10];
    v23 = v22[1];
    *a5 = v22;
    a5[1] = v23;
    if (v23)
    {
      *v23 = a5;
      v24 = v13;
      v13 = *a5;
    }

    else
    {
      v24 = v13;
      v13 = v22;
    }
  }

  else
  {
    v24 = *(result + 28);
    if (v24)
    {
      *(result + 28) = *v24;
    }

    else
    {
      result = aa_new_edge(result);
      v24 = result;
      if (!result)
      {
        return result;
      }
    }

    result = memmove(v24, v13, 0x60uLL);
    v25 = v13[1];
    if (v25)
    {
      *v25 = v24;
    }

    if (*v13)
    {
      *(*v13 + 8) = v24;
    }

    if (v13 == *(v9 + 25))
    {
      *(v9 + 25) = v24;
    }

    *v13 = 0;
    v13[1] = 0;
    *(v24 + 16) = 0;
    v24[6] = 0;
    v24[7] = v24;
    *(v24 + 22) = 2;
    v24[9] = 0;
    v24[10] = v13;
    *(v13 + 16) = 2;
    v13[7] = v24;
    *v5 = v13;
    v5[1] = 0;
  }

  v13[1] = v5;
  v24[10] = v5;
  *(v5 + 16) = 2;
  v5[7] = v24;
  *(v24 + 22) += *(v5 + 22);
  v26 = *(v5 + 7);
  if (*(v24 + 7) >= v26)
  {
    v27 = *(v5 + 6);
    if (*(v24 + 6) <= v27)
    {
      *(v9 + 26) = v24;
      return result;
    }
  }

  else
  {
    *(v24 + 7) = v26;
    v27 = *(v5 + 6);
    *(v24 + 5) = *(v5 + 5);
    if (*(v24 + 6) <= v27)
    {
      goto LABEL_44;
    }
  }

  *(v24 + 6) = v27;
  *(v24 + 4) = *(v5 + 4);
LABEL_44:
  *(v9 + 26) = v24;
  v5 = v24;
LABEL_67:
  if ((v9[178] & 0xC0) != 0)
  {
    v33 = *v5;
    v32 = v5[1];
    do
    {
      if (v32)
      {
        result = aa_intersection_event(v9, a2, v32, v5, v7, v6);
      }

      v34 = v32 == v33;
      v32 = v33;
    }

    while (!v34);
  }

  return result;
}

char *aa_intersection_event(char *result, uint64_t a2, int *a3, int *a4, int a5, int a6)
{
  v6 = a3[9];
  v7 = a4[9];
  if (v6 == v7)
  {
    return result;
  }

  v8 = 4;
  if (v6 >= 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  v10 = a3[v9];
  if (v7 >= 0)
  {
    v8 = 5;
  }

  if (v10 >= a4[v8])
  {
    return result;
  }

  v11 = a3 + 5;
  v12 = a4 + 5;
  if (v7 >= 0)
  {
    v12 = a4 + 4;
  }

  if (v6 < 0)
  {
    v11 = a3 + 4;
  }

  if (*v12 >= *v11)
  {
    return result;
  }

  v14 = a3[6];
  v13 = a3[7];
  v15 = a4[6];
  if (v13 >= a4[7])
  {
    v13 = a4[7];
  }

  v16 = v14 <= v15 ? a4[6] : a3[6];
  if (v13 <= v16)
  {
    return result;
  }

  if (v13 >= a6)
  {
    v13 = a6;
  }

  if (v16 <= a5)
  {
    v16 = a5;
  }

  if (v13 <= v16)
  {
    return result;
  }

  v17 = result;
  v18 = *(result + 19);
  v19 = a3[4];
  v20 = v18 * v6;
  v21 = a4[4];
  v22 = v18 * v7;
  v23 = v19 + v20 * (v16 - v14);
  v24 = v19 + v20 * (v13 - v14);
  v25 = v18 - v18;
  v26 = v23 - (v21 + v22 * (v16 - v15));
  v27 = v24 - (v21 + v22 * (v13 - v15));
  v28 = v27 == v25 || v26 == v25;
  if (v28 || v26 > v25 != v27 <= v25)
  {
    return result;
  }

  v29 = fabs(v26);
  v30 = v16 + vcvtmd_s64_f64(v29 / (fabs(v27) + v29) * (v13 - v16));
  v31 = v30 + 1;
  if (v30 >= v13 || v31 < v16)
  {
    return result;
  }

  v33 = (a2 + 8 * (v31 >> 12));
  v34 = *v33;
  if (!*v33)
  {
LABEL_40:
    v35 = 0;
    goto LABEL_41;
  }

  while (1)
  {
    v35 = v34;
    v36 = *(v34 + 5) - v31;
    if (v36)
    {
      if (v36 * (((*(result + 44) >> 20) & 3) - 1) > 0)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v37 = *(v35 + 4);
    if (v37 != 1)
    {
      break;
    }

LABEL_38:
    v34 = *v35;
    v33 = v35;
    if (!*v35)
    {
      v33 = v35;
      goto LABEL_40;
    }
  }

  if (v37 == 3)
  {
    return result;
  }

LABEL_41:
  result = *(result + 27);
  if (result)
  {
    v38 = *result;
  }

  else
  {
    result = *(v17 + 28);
    if (result)
    {
      *(v17 + 28) = *result;
    }

    else
    {
      result = aa_new_edge(v17);
      if (!result)
      {
        return result;
      }
    }

    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 6) = v30;
    *(result + 7) = v31;
    *(result + 4) = 0;
    result[47] = 0;
    *(result + 22) = 0;
    *(result + 9) = 0;
    v38 = result + 72;
    *(result + 6) = result + 72;
    result += 48;
  }

  *(v17 + 27) = v38;
  *result = v35;
  *(result + 1) = 0;
  *(result + 4) = 3;
  *(result + 5) = v31;
  *v33 = result;
  return result;
}

char *aa_ael_remove(char *result, uint64_t a2, int a3, int a4, uint64_t *a5)
{
  v7 = *(result + 25);
  v6 = *(result + 26);
  v8 = *a5;
  if (v7 == a5)
  {
    *(result + 25) = v8;
    if (v8)
    {
      *(v8 + 8) = 0;
    }

    if (v6 == a5)
    {
      *(result + 26) = v8;
    }
  }

  else
  {
    v10 = a5[1];
    if (v10)
    {
      *v10 = v8;
    }

    if (v8)
    {
      *(v8 + 8) = v10;
    }

    if (*(a5 + 16) == 2)
    {
      v11 = a5[7];
      *(v11 + 44) -= *(a5 + 22);
      if (v8)
      {
        *(v11 + 80) = v8;
        return result;
      }

      if (v10)
      {
        *(v11 + 80) = v10;
        return result;
      }

      *(v11 + 80) = 0;
      v8 = *v11;
      v10 = *(v11 + 8);
      if (v10)
      {
        *v10 = v8;
      }

      if (v8)
      {
        *(v8 + 8) = v10;
      }

      *v11 = *(result + 28);
      *(result + 28) = v11;
      if (v6 == v11)
      {
        *(result + 26) = v8;
      }

      if (v7 == v11)
      {
        *(result + 25) = v8;
        return result;
      }
    }

    else if (v6 == a5)
    {
      *(result + 26) = v10;
    }

    if ((result[178] & 0xC0) != 0)
    {
      if (v8)
      {
        return aa_intersection_event(result, a2, v10, v8, a3, a4);
      }
    }
  }

  return result;
}

void *aal_free_edges(uint64_t a1)
{
  v2 = *(a1 + 176);
  result = *v2;
  if (*v2)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  *(a1 + 184) = v2;
  *v2 = 0;
  *(a1 + 168) = 0;
  *(v2 + 16) = 0;
  *(a1 + 48) = 0;
  return result;
}

void ripr_release(_DWORD *a1)
{
  v2 = a1[2] - 1;
  a1[2] = v2;
  if (!v2)
  {
    if (*(a1 + 2))
    {
      ripr_Finish(a1);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(v4 + 24))(a1 + 6);
    }

    free(a1);
  }
}

uint64_t (*__trc_get_input_range_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTRCGetInputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  trc_get_input_range_f = v1;
  return result;
}

uint64_t (*__trc_get_input_range_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTRCGetInputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  trc_get_input_range_f_68 = v1;
  return result;
}

const void *__RIPGetCacheState_block_invoke()
{
  v3 = 0;
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200400855E00DuLL);
  *v0 = 0;
  v0[1] = xmmword_18439CC60;
  v1 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  *v1 = v1;
  v1[1] = v1;
  *(v0 + 1) = v1;
  *(v0 + 32) = 1;
  if (get_BOOLean_property("RIP_ENABLE_FUNCTION_CACHE", copy_local_domain_value, &v3))
  {
    *(v0 + 32) = v3;
  }

  *(v0 + 33) = 1;
  if (get_BOOLean_property("RIP_ENABLE_PATTERN_CACHE", copy_local_domain_value, &v3))
  {
    *(v0 + 33) = v3;
  }

  *(v0 + 34) = 1;
  result = get_BOOLean_property("RIP_ENABLE_IMAGE_CACHE", copy_local_domain_value, &v3);
  if (result)
  {
    *(v0 + 34) = v3;
  }

  RIPGetCacheState_cache_state = v0;
  return result;
}

uint64_t aa_clip_edge(_DWORD *a1, int a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v14 = a12;
  v15 = a3 & 0xFFFFFFEF;
  v16 = a14 - a12;
  v17 = a13 - a11;
  v18 = 0;
  v19 = a2 & 0xFFFFFFEF;
  if ((a2 & 0xFFFFFFEF) == 0)
  {
    goto LABEL_13;
  }

  v20 = 16 * (v15 == 0);
  while ((v15 & v19) == 0)
  {
    if (v19)
    {
      if ((v19 & 4) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *a1 = (a10 + a8 * a11);
      a1[1] = (a10 + a9 * v14);
      a1 += 2;
      v18 = (v18 + 1);
LABEL_13:
      v20 = 0;
      v17 = -v17;
      v16 = -v16;
      v14 = a14;
      a11 = a13;
      v19 = v15;
      v15 = 0;
      if ((v19 & 4) == 0)
      {
LABEL_6:
        if (v19)
        {
          if ((v20 & 5) != 0)
          {
            v19 &= 0xFFFFFFFA;
          }

          else
          {
            v14 = v14 + (a6 - a11) * v16 / v17;
            v19 = (2 * (v14 > a7)) | (8 * (v14 < a5));
          }

          v20 |= 1u;
          a11 = a6;
        }

        else if ((v19 & 2) != 0)
        {
          if ((v20 & 0xA) != 0)
          {
            v19 &= 0xFFFFFFF8;
          }

          else
          {
            a11 = a11 + (a7 - v14) * v17 / v16;
            v19 = (a11 > a6) | (4 * (a11 < a4));
          }

          v20 |= 2u;
          v14 = a7;
        }

        else if ((v19 & 8) != 0)
        {
          v19 &= 0xFFFFFFF0;
          v21 = a11 + (a5 - v14) * v17 / v16;
          if ((v20 & 0xA) == 0)
          {
            a11 = v21;
            v19 = (v21 > a6) | (4 * (v21 < a4));
          }

          v20 |= 8u;
          v14 = a5;
        }

        goto LABEL_26;
      }
    }

    if ((v20 & 5) != 0)
    {
      v19 &= ~4u;
    }

    else
    {
      v14 = v14 + (a4 - a11) * v16 / v17;
      v19 = (2 * (v14 > a7)) | (8 * (v14 < a5));
    }

    v20 |= 4u;
    a11 = a4;
LABEL_26:
    if (!(v20 & 0x10 | v15 | v19))
    {
      goto LABEL_27;
    }
  }

  if (a2 == a3)
  {
    return v18;
  }

  if (((a3 | a2) & 0x10) == 0)
  {
    LOBYTE(a3) = a3 | a2 | 0x10;
    goto LABEL_28;
  }

  if ((v15 & v19 & 4) != 0)
  {
    if ((a2 & 4) == 0)
    {
      if ((a2 & 8) != 0)
      {
        v14 = a5;
      }

      else
      {
        v14 = a7;
      }

      a11 = a4;
      goto LABEL_27;
    }
  }

  else if (v15 & v19)
  {
    if ((a2 & 1) == 0)
    {
      if ((a2 & 8) != 0)
      {
        v14 = a5;
      }

      else
      {
        v14 = a7;
      }

      a11 = a6;
      goto LABEL_27;
    }
  }

  else if ((v15 & v19 & 2) != 0)
  {
    if ((a2 & 2) == 0)
    {
      if ((a2 & 4) != 0)
      {
        a11 = a4;
      }

      else
      {
        a11 = a6;
      }

      v14 = a7;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v15 & v19 & 8) == 0)
    {
LABEL_27:
      *a1 = (a10 + a8 * a11);
      a1[1] = (a10 + a9 * v14);
      a1 += 2;
      v18 = (v18 + 1);
      goto LABEL_28;
    }

    if ((a2 & 8) == 0)
    {
      if ((a2 & 4) != 0)
      {
        a11 = a4;
      }

      else
      {
        a11 = a6;
      }

      v14 = a5;
      goto LABEL_27;
    }
  }

LABEL_28:
  if ((a3 & 0x10) != 0)
  {
    if ((a3 & 4) == 0)
    {
      a4 = a6;
    }

    if ((a3 & 8) == 0)
    {
      a5 = a7;
    }

    *a1 = (a10 + a8 * a4);
    a1[1] = (a10 + a9 * a5);
    return (v18 + 1);
  }

  return v18;
}

uint64_t aa_ael_mark(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = (BYTE3(result) & 3) - 1;
    v4 = 1;
    do
    {
      v2 += *(a2 + 22);
      v5 = v4;
      if (v4)
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }

      v4 = (v2 & v3) == 0;
      if ((v2 & v3) == 0)
      {
        v5 = v6;
      }

      *(a2 + 46) = v5;
      a2 = *a2;
    }

    while (a2);
  }

  return result;
}

uint64_t rgba32_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v563 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  if (*(v2 + 132))
  {
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
    }

    v6 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v4;
  v8 = *(v4 + 96);
  v9 = *(*(v5 + 56) + 16 * *v4 + 8 * (v8 == 0) + 4 * (*(v4 + 48) == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(v4 + 4);
  v12 = v11 - 1;
  if (v11 < 1)
  {
    return 0;
  }

  v13 = *(v4 + 8);
  if (v13 < 1)
  {
    return 0;
  }

  if (v9 >= 24)
  {
    if (*v5 == 134755144)
    {
      v9 = (v9 + 4);
    }

    else
    {
      v9 = v9;
    }
  }

  v14 = *(v4 + 136);
  if ((v7 & 0xFF0000) != 0x50000 && v14)
  {
    v15 = *(v4 + 128);
    if ((v15 | 8) == 8)
    {
      if ((*v4 & 0xFF00) == 0x400)
      {
        rgba32_mark_constmask(v4, v9);
      }

      else if ((v6 & 1) != 0 && ((1 << v9) & 0xFFFFFE) != 0)
      {
        rgba32_mark_pixelmask_template(v4, v9);
      }

      else
      {
        rgba32_mark_pixelmask(v4, v9);
      }
    }

    else
    {
      v30 = *(v4 + 112);
      v31 = *(v4 + 116);
      v32 = (v30 + 15) & 0xFFFFFFF0;
      v33 = v32 * v31;
      if (v33 <= 4096)
      {
        v35 = v562;
      }

      else
      {
        v34 = malloc_type_malloc(v33, 0x97CEE3C3uLL);
        if (!v34)
        {
          return 1;
        }

        v35 = v34;
        v14 = *(v4 + 136);
        v15 = *(v4 + 128);
      }

      CGSConvertBitsToMask(v14, *(v4 + 124), v35, v32, v30, v31, v15);
      v38 = *(v4 + 112);
      v558 = *(v4 + 96);
      v559 = v38;
      v39 = *(v4 + 144);
      v560 = *(v4 + 128);
      v561 = v39;
      v40 = *(v4 + 48);
      v554 = *(v4 + 32);
      v555 = v40;
      v41 = *(v4 + 80);
      v556 = *(v4 + 64);
      v557 = v41;
      v42 = *(v4 + 16);
      *v552 = *v4;
      v553 = v42;
      HIDWORD(v559) = (v30 + 15) & 0xFFFFFFF0;
      *(&v560 + 1) = v35;
      if (BYTE1(v552[0]) << 8 == 1024)
      {
        rgba32_mark_constmask(v552, v9);
      }

      else
      {
        rgba32_mark_pixelmask(v552, v9);
      }

      if (v35 != v562)
      {
        v43 = v35;
        goto LABEL_1066;
      }
    }

    return 1;
  }

  v528 = v4;
  v540 = v9;
  v550 = *(v4 + 48);
  if (BYTE1(v7) == 1)
  {
    if ((v6 & 1) != 0 && ((1 << v9) & 0xFFFFFE) != 0)
    {
      rgba32_mark_pixelshape_template(v4, v9);
      return 1;
    }
  }

  else if (BYTE1(v7) == 4)
  {
    v562[0] = *(v4 + 4);
    v552[0] = v13;
    v16 = **(v4 + 88);
    v542 = *(v4 + 28);
    v548 = v542 >> 2;
    v17 = (*(v4 + 40) + 4 * (v542 >> 2) * *(v4 + 16) + 4 * *(v4 + 12));
    v544 = v17;
    if (v14)
    {
      shape_enum_clip_alloc(v1, v2, v14, 1, 1, 1, *(v4 + 104), *(v4 + 108), v11, v13);
      v19 = v18;
      if (v18)
      {
        goto LABEL_330;
      }

      return 1;
    }

    v547 = 0;
LABEL_62:
    v51 = v548 - v11;
    v52 = v11;
    switch(v9)
    {
      case 0:
        v53 = v552[0];
        v54 = 4 * v11;
        v55 = v542 & 0xFFFFFFFC;
        v56 = 0;
        goto LABEL_180;
      case 1:
        v56 = 0;
        v105 = *(v4 + 88);
        if (v105)
        {
          v56 = *v105;
        }

        v54 = 4 * v11;
        v53 = v552[0];
        v55 = v542 & 0xFFFFFFFC;
LABEL_180:
        CGBlt_fillBytes(v54, v53, v56, v17, v55);
        goto LABEL_328;
      case 2:
        v92 = v11 & 3;
        v93 = v552[0];
        v94 = (v11 >> 2) + 1;
        do
        {
          if (v11 < 4)
          {
            v98 = v11;
          }

          else
          {
            v95 = v94;
            do
            {
              DplusDM_21871(v17, v16, *v17, ~v16);
              DplusDM_21871(v17 + 1, v16, v17[1], ~v16);
              DplusDM_21871(v17 + 2, v16, v17[2], ~v16);
              v97 = v17[3];
              v96 = v17 + 3;
              DplusDM_21871(v96, v16, v97, ~v16);
              v17 = v96 + 1;
              --v95;
            }

            while (v95 > 1);
            v98 = v92;
          }

          if (v98 < 1)
          {
            v100 = v17;
          }

          else
          {
            v99 = v98 + 1;
            v100 = v17;
            do
            {
              v101 = *v100++;
              DplusDM_21871(v17, v16, v101, ~v16);
              --v99;
              v17 = v100;
            }

            while (v99 > 1);
          }

          v17 = &v100[v51];
          v552[0] = --v93;
          v4 = v528;
          LODWORD(v11) = v52;
        }

        while (v93);
        goto LABEL_328;
      case 3:
        do
        {
          v60 = v562[0];
          do
          {
            v61 = *v17;
            if (*v17)
            {
              v62 = v61 == 255;
              v61 = v16;
              if (!v62)
              {
                v61 = PDM_21869(v16, *v17);
              }
            }

            *v17++ = v61;
            --v60;
          }

          while (v60);
          v17 += v51;
          --v552[0];
        }

        while (v552[0]);
        goto LABEL_328;
      case 4:
        do
        {
          v57 = v562[0];
          do
          {
            v58 = *v17 ^ 0xFF;
            if (v58)
            {
              v59 = v16;
              if (v58 != 255)
              {
                v59 = PDM_21869(v16, v58);
              }
            }

            else
            {
              v59 = 0;
            }

            *v17++ = v59;
            --v57;
          }

          while (v57);
          v17 += v51;
          --v552[0];
        }

        while (v552[0]);
        goto LABEL_328;
      case 5:
        v115 = v552[0];
        do
        {
          v116 = v11;
          v117 = v17;
          do
          {
            v118 = *v117++;
            DMplusDM_21870(v17, v16, v118, v118, ~v16);
            v17 = v117;
            --v116;
          }

          while (v116);
          v17 = &v117[v51];
          v552[0] = --v115;
          LODWORD(v11) = v52;
        }

        while (v115);
        goto LABEL_328;
      case 6:
        do
        {
          v125 = v562[0];
          do
          {
            if (*v17 != 0xFF)
            {
              if (~*v17 == 255)
              {
                *v17 = v16;
              }

              else
              {
                DplusDM_21871(v17, *v17, v16, ~*v17);
              }
            }

            ++v17;
            --v125;
          }

          while (v125);
          v17 += v51;
          --v552[0];
        }

        while (v552[0]);
        goto LABEL_328;
      case 7:
        do
        {
          v63 = v562[0];
          do
          {
            *v17 = PDM_21869(*v17, v16);
            ++v17;
            --v63;
          }

          while (v63);
          v17 += v51;
          --v552[0];
        }

        while (v552[0]);
        goto LABEL_328;
      case 8:
        do
        {
          v64 = v562[0];
          do
          {
            *v17 = PDM_21869(*v17, ~v16);
            ++v17;
            --v64;
          }

          while (v64);
          v17 += v51;
          --v552[0];
        }

        while (v552[0]);
        goto LABEL_328;
      case 9:
        v82 = v552[0];
        do
        {
          v83 = v11;
          v84 = v17;
          do
          {
            v85 = *v84++;
            DMplusDM_21870(v17, v16, ~v85, v85, v16);
            v17 = v84;
            --v83;
          }

          while (v83);
          v17 = &v84[v51];
          v552[0] = --v82;
          LODWORD(v11) = v52;
        }

        while (v82);
        goto LABEL_328;
      case 10:
        v129 = v552[0];
        do
        {
          v130 = v11;
          v131 = v17;
          do
          {
            v132 = *v131++;
            DMplusDM_21870(v17, v16, ~v132, v132, ~v16);
            v17 = v131;
            --v130;
          }

          while (v130);
          v17 = &v131[v51];
          v552[0] = --v129;
          LODWORD(v11) = v52;
        }

        while (v129);
        goto LABEL_328;
      case 11:
        v74 = v552[0];
        do
        {
          v75 = v11;
          v76 = v17;
          do
          {
            v78 = *v76++;
            v77 = v78;
            if (v550)
            {
              v79 = v77;
            }

            else
            {
              v79 = -1;
            }

            *v3.i8 = DAplusdDA_21872(v17, v77, v79, v16, v16, v3);
            v17 = v76;
            --v75;
          }

          while (v75);
          v17 = &v76[v51];
          v552[0] = --v74;
          LODWORD(v11) = v52;
        }

        while (v74);
        goto LABEL_328;
      case 12:
        do
        {
          v81 = v562[0];
          do
          {
            v80 = (v16 >> 8) & 0xFF00FF;
            *v17 = ((((*v17 >> 8) & 0xFF00FF) + v80) << 8) & 0xFF00FF00 | ((*v17 & 0xFF00FF) + (v16 & 0xFF00FF)) & 0xFF00FF | (15 * ((((*v17 >> 8) & 0xFF00FF) + v80) & 0x1000100 | (((*v17 & 0xFF00FF) + (v16 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * ((((*v17 >> 8) & 0xFF00FF) + v80) & 0x1000100 | (((*v17 & 0xFF00FF) + (v16 & 0xFF00FF)) >> 8) & 0x10001));
            ++v17;
            --v81;
          }

          while (v81);
          v17 += v51;
          --v552[0];
        }

        while (v552[0]);
        goto LABEL_328;
      case 13:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v122 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v123) = -1;
LABEL_232:
              v124 = PDAmultiplyPDA_21873(*v17, v123, v16, v16);
              goto LABEL_233;
            }

            v123 = *v17;
            v124 = v16;
            if (*v17)
            {
              goto LABEL_232;
            }

LABEL_233:
            *v17++ = v124;
            --v122;
          }

          while (v122);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 14:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v71 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v72) = -1;
LABEL_113:
              v73 = PDAscreenPDA_21874(*v17, v72, v16, v16);
              goto LABEL_114;
            }

            v72 = *v17;
            v73 = v16;
            if (*v17)
            {
              goto LABEL_113;
            }

LABEL_114:
            *v17++ = v73;
            --v71;
          }

          while (v71);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 15:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v102 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v103) = -1;
LABEL_173:
              v104 = PDAoverlayPDA_21875(*v17, v103, v16, v16);
              goto LABEL_174;
            }

            v103 = *v17;
            v104 = v16;
            if (*v17)
            {
              goto LABEL_173;
            }

LABEL_174:
            *v17++ = v104;
            --v102;
          }

          while (v102);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 16:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v68 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v69) = -1;
LABEL_103:
              v70 = PDAdarkenPDA_21877(*v17, v69, v16, v16);
              goto LABEL_104;
            }

            v69 = *v17;
            v70 = v16;
            if (*v17)
            {
              goto LABEL_103;
            }

LABEL_104:
            *v17++ = v70;
            --v68;
          }

          while (v68);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 17:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v109 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v110) = -1;
LABEL_197:
              v111 = PDAlightenPDA_21876(*v17, v110, v16, v16);
              goto LABEL_198;
            }

            v110 = *v17;
            v111 = v16;
            if (*v17)
            {
              goto LABEL_197;
            }

LABEL_198:
            *v17++ = v111;
            --v109;
          }

          while (v109);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 18:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v126 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v127) = -1;
LABEL_250:
              v128 = PDAcolordodgePDA_21878(*v17, v127, v16, v16);
              goto LABEL_251;
            }

            v127 = *v17;
            v128 = v16;
            if (*v17)
            {
              goto LABEL_250;
            }

LABEL_251:
            *v17++ = v128;
            --v126;
          }

          while (v126);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 19:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v139 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v140) = -1;
LABEL_285:
              v141 = PDAcolorburnPDA_21879(*v17, v140, v16, v16);
              goto LABEL_286;
            }

            v140 = *v17;
            v141 = v16;
            if (*v17)
            {
              goto LABEL_285;
            }

LABEL_286:
            *v17++ = v141;
            --v139;
          }

          while (v139);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 20:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v112 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v113) = -1;
LABEL_207:
              v114 = PDAsoftlightPDA_21881(*v17, v113, v16, v16);
              goto LABEL_208;
            }

            v113 = *v17;
            v114 = v16;
            if (*v17)
            {
              goto LABEL_207;
            }

LABEL_208:
            *v17++ = v114;
            --v112;
          }

          while (v112);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 21:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v119 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v120) = -1;
LABEL_222:
              v121 = PDAhardlightPDA_21880(*v17, v120, v16, v16);
              goto LABEL_223;
            }

            v120 = *v17;
            v121 = v16;
            if (*v17)
            {
              goto LABEL_222;
            }

LABEL_223:
            *v17++ = v121;
            --v119;
          }

          while (v119);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 22:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v136 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v137) = -1;
LABEL_275:
              v138 = PDAdifferencePDA_21882(*v17, v137, v16, v16);
              goto LABEL_276;
            }

            v137 = *v17;
            v138 = v16;
            if (*v17)
            {
              goto LABEL_275;
            }

LABEL_276:
            *v17++ = v138;
            --v136;
          }

          while (v136);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 23:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v142 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v143) = -1;
LABEL_295:
              v144 = PDAexclusionPDA_21883(*v17, v143, v16, v16);
              goto LABEL_296;
            }

            v143 = *v17;
            v144 = v16;
            if (*v17)
            {
              goto LABEL_295;
            }

LABEL_296:
            *v17++ = v144;
            --v142;
          }

          while (v142);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 24:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v89 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v90) = -1;
LABEL_150:
              v91 = PDAhuePDA_21884(*v17, v90, v16, v16);
              goto LABEL_151;
            }

            v90 = *v17;
            v91 = v16;
            if (*v17)
            {
              goto LABEL_150;
            }

LABEL_151:
            *v17++ = v91;
            --v89;
          }

          while (v89);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 25:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v86 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v87) = -1;
LABEL_140:
              v88 = PDAsaturationPDA_21885(*v17, v87, v16, v16);
              goto LABEL_141;
            }

            v87 = *v17;
            v88 = v16;
            if (*v17)
            {
              goto LABEL_140;
            }

LABEL_141:
            *v17++ = v88;
            --v86;
          }

          while (v86);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 26:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v151 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v152) = -1;
LABEL_325:
              v153 = PDAluminosityPDA_21886(v16, v16, *v17, v152);
              goto LABEL_326;
            }

            v152 = *v17;
            v153 = v16;
            if (*v17)
            {
              goto LABEL_325;
            }

LABEL_326:
            *v17++ = v153;
            --v151;
          }

          while (v151);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 27:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v65 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v66) = -1;
LABEL_93:
              v67 = PDAluminosityPDA_21886(*v17, v66, v16, v16);
              goto LABEL_94;
            }

            v66 = *v17;
            v67 = v16;
            if (*v17)
            {
              goto LABEL_93;
            }

LABEL_94:
            *v17++ = v67;
            --v65;
          }

          while (v65);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 28:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v145 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v146) = -1;
LABEL_305:
              v147 = PDAtranspose_huePDA_21887(*v17, v146, v16, v16);
              goto LABEL_306;
            }

            v146 = *v17;
            v147 = v16;
            if (*v17)
            {
              goto LABEL_305;
            }

LABEL_306:
            *v17++ = v147;
            --v145;
          }

          while (v145);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 29:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v148 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v149) = -1;
LABEL_315:
              v150 = PDAtranspose_saturationPDA_21888(*v17, v149, v16, v16);
              goto LABEL_316;
            }

            v149 = *v17;
            v150 = v16;
            if (*v17)
            {
              goto LABEL_315;
            }

LABEL_316:
            *v17++ = v150;
            --v148;
          }

          while (v148);
          v17 += v51;
          if (!--v552[0])
          {
LABEL_328:
            v17 = v544;
            v19 = v547;
            if (!v547)
            {
              return 1;
            }

            v551 = 0;
LABEL_330:
            if (!shape_enum_clip_next(v19, &v551 + 1, &v551, v562, v552))
            {
              v43 = v19;
              goto LABEL_1066;
            }

            v547 = v19;
            v17 += v548 * v551 + SHIDWORD(v551);
            LODWORD(v11) = v562[0];
            LODWORD(v9) = v540;
            goto LABEL_62;
          }
        }

      case 30:
        if (!v16)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v133 = v562[0];
          do
          {
            if (!v550)
            {
              LOBYTE(v134) = -1;
LABEL_265:
              v135 = PDAtranspose_luminosityPDA_21889(v16, v16, *v17, v134);
              goto LABEL_266;
            }

            v134 = *v17;
            v135 = v16;
            if (*v17)
            {
              goto LABEL_265;
            }

LABEL_266:
            *v17++ = v135;
            --v133;
          }

          while (v133);
          v17 += v51;
          if (!--v552[0])
          {
            goto LABEL_328;
          }
        }

      case 31:
        if (!v16)
        {
          goto LABEL_328;
        }

        break;
      default:
        goto LABEL_328;
    }

LABEL_182:
    v106 = v562[0];
    while (1)
    {
      if (v550)
      {
        v107 = *v17;
        v108 = v16;
        if (!*v17)
        {
          goto LABEL_188;
        }
      }

      else
      {
        LOBYTE(v107) = -1;
      }

      v108 = PDAtranspose_luminosityPDA_21889(*v17, v107, v16, v16);
LABEL_188:
      *v17++ = v108;
      if (!--v106)
      {
        v17 += v51;
        if (!--v552[0])
        {
          goto LABEL_328;
        }

        goto LABEL_182;
      }
    }
  }

  v562[0] = *(v4 + 4);
  v552[0] = v13;
  v20 = *(v4 + 88);
  v21 = *(v4 + 28) >> 2;
  v22 = *(v4 + 40) + 4 * v21 * *(v4 + 16) + 4 * *(v4 + 12);
  v23 = *(v4 + 56);
  v24 = *(v4 + 60);
  v25 = *(v4 + 76) >> 2;
  if ((v7 & 0xFF00) != 0x100)
  {
    v29 = *(v4 + 64);
    v530 = *(v4 + 68);
    v543 = v20 + 4 * v25 * v530;
    v36 = v8 != 0;
    if (v14)
    {
      v546 = *(v4 + 76) >> 2;
      v549 = *(v4 + 88);
      v526 = *(v4 + 60);
      v527 = *(v4 + 56);
      v28 = 1;
      v37 = v549;
      goto LABEL_58;
    }

    v545 = v21 - v11;
    if (v20)
    {
      v539 = 0;
      v44 = v23 % v29;
      v45 = v20 + 4 * v25 * (v24 % v530);
      v46 = (v45 + 4 * v44);
      v37 = v45 + 4 * v29;
      v529 = 1;
      v546 = *(v4 + 76) >> 2;
      v549 = v46;
      v47 = (*(v4 + 40) + 4 * v21 * *(v4 + 16) + 4 * *(v4 + 12));
      v526 = v24 % v530;
      v527 = v44;
      goto LABEL_333;
    }

    v526 = *(v4 + 60);
    v527 = *(v4 + 56);
    v37 = 0;
    v529 = 1;
    v48 = v11;
    goto LABEL_61;
  }

  v20 += 4 * v25 * v24 + 4 * v23;
  if (v25 == v21)
  {
    v26 = (v22 - v20) >> 2;
    if (v26 < 1)
    {
LABEL_33:
      v28 = 1;
      v29 = *(v4 + 28) >> 2;
      goto LABEL_56;
    }

    if (v26 <= v11)
    {
      v22 += 4 * v12;
      v28 = -1;
      v29 = *(v4 + 28) >> 2;
      v20 += 4 * v12;
    }

    else
    {
      v27 = v21 * (v13 - 1);
      if (v22 > v20 + 4 * v27 + 4 * v11 - 4)
      {
        goto LABEL_33;
      }

      v22 += 4 * v27;
      v29 = -v21;
      v28 = 1;
      v20 += 4 * v27;
      v21 = -v21;
    }
  }

  else
  {
    v28 = 1;
    v29 = *(v4 + 76) >> 2;
  }

LABEL_56:
  v526 = *(v4 + 60);
  v527 = *(v4 + 56);
  v36 = v8 != 0;
  if (!v14)
  {
    v529 = v28;
    v530 = 0;
    v48 = v28 * v11;
    v545 = v21 - v48;
    v37 = -1;
    v25 = v29;
LABEL_61:
    v539 = 0;
    v543 = 0;
    v546 = v25 - v48;
    v549 = 0;
    v46 = v20;
    v47 = v22;
LABEL_333:
    while (2)
    {
      v541 = v11;
      switch(v9)
      {
        case 0:
          v154 = v47 - 4 * v11 + 4;
          v155 = v545 + v11;
          if (v529 < 0)
          {
            v155 = v545 - v11;
          }

          else
          {
            v154 = v47;
          }

          v156 = (v154 + 4 * ((v155 * (v552[0] - 1)) & (v155 >> 63)));
          if (v155 < 0)
          {
            v155 = -v155;
          }

          CGBlt_fillBytes(4 * v11, v552[0], 0, v156, 4 * v155);
          goto LABEL_1058;
        case 1:
          if (BYTE1(*v4) == 2)
          {
            if (v11 >= 8 && (4 * v29) <= 0x40)
            {
              v3.i32[0] = 4 * v29;
              v496 = vcnt_s8(*v3.i8);
              v496.i16[0] = vaddlv_u8(v496);
              if (v496.i32[0] <= 1u)
              {
                CGSFillDRAM64(v47, 4 * (v11 + v545), 4 * v11, v552[0], v20, 4 * v546, 4 * v29, v530, 4 * v527, v526);
                goto LABEL_1058;
              }
            }
          }

          else if (BYTE1(*v4) == 1)
          {
            if (v550 == 0 || v36)
            {
              if (v529 < 0)
              {
                v288 = v546 - v11;
                v521 = 4 * v11 - 4;
                v46 = (v46 - v521);
                v289 = v545 - v11;
                v47 = (v47 - v521);
              }

              else
              {
                v288 = v546 + v11;
                v289 = v545 + v11;
              }

              v522 = v552[0] - 1;
              v523 = &v46[(v288 * v522) & (v288 >> 63)];
              if (v288 >= 0)
              {
                v524 = v288;
              }

              else
              {
                v524 = -v288;
              }

              if (v289 >= 0)
              {
                LODWORD(v525) = v289;
              }

              else
              {
                v525 = -v289;
              }

              v546 = v524;
              CGBlt_copyBytes(4 * v11, v552[0], v523, v47 + 4 * ((v289 * v522) & (v289 >> 63)), 4 * v524, 4 * v525);
            }

            else
            {
              do
              {
                v505 = v562[0];
                do
                {
                  v47->i32[0] = *v46 | 0xFF;
                  v506 = &v46[v529];
                  if (v506 >= v37)
                  {
                    v507 = -v29;
                  }

                  else
                  {
                    v507 = 0;
                  }

                  v46 = &v506[v507];
                  v47 = (v47 + 4 * v529);
                  --v505;
                }

                while (v505);
                v47 = (v47 + 4 * v545);
                v508 = v549;
                v509 = &v549[v546];
                if (v509 >= v543)
                {
                  v510 = -(v546 * v530);
                }

                else
                {
                  v510 = 0;
                }

                v511 = &v509[v510];
                v512 = v37 + 4 * v510 + 4 * v546;
                if (v543)
                {
                  v37 = v512;
                  v508 = v511;
                }

                v549 = v508;
                if (v543)
                {
                  v46 = v511;
                }

                else
                {
                  v46 += v546;
                }

                --v552[0];
              }

              while (v552[0]);
            }

            goto LABEL_1058;
          }

          if ((*v4 & 0xFF00) == 0x200)
          {
            blt_bitmap_copy_XXXX32(v11, v552[0], v47, v545 + v11, v29, v530, v20, v546, v527, v526);
          }

          else if (v550 == 0 || v36)
          {
            do
            {
              v497 = v562[0];
              do
              {
                v47->i32[0] = *v46;
                v498 = &v46[v529];
                if (v498 >= v37)
                {
                  v499 = -v29;
                }

                else
                {
                  v499 = 0;
                }

                v46 = &v498[v499];
                v47 = (v47 + 4 * v529);
                --v497;
              }

              while (v497);
              v47 = (v47 + 4 * v545);
              v500 = v549;
              v501 = &v549[v546];
              if (v501 >= v543)
              {
                v502 = -(v546 * v530);
              }

              else
              {
                v502 = 0;
              }

              v503 = &v501[v502];
              v504 = v37 + 4 * v502 + 4 * v546;
              if (v543)
              {
                v37 = v504;
                v500 = v503;
              }

              v549 = v500;
              if (v543)
              {
                v46 = v503;
              }

              else
              {
                v46 += v546;
              }

              --v552[0];
            }

            while (v552[0]);
          }

          else
          {
            do
            {
              v513 = v562[0];
              do
              {
                v47->i32[0] = *v46 | 0xFF;
                v514 = &v46[v529];
                if (v514 >= v37)
                {
                  v515 = -v29;
                }

                else
                {
                  v515 = 0;
                }

                v46 = &v514[v515];
                v47 = (v47 + 4 * v529);
                --v513;
              }

              while (v513);
              v47 = (v47 + 4 * v545);
              v516 = v549;
              v517 = &v549[v546];
              if (v517 >= v543)
              {
                v518 = -(v546 * v530);
              }

              else
              {
                v518 = 0;
              }

              v519 = &v517[v518];
              v520 = v37 + 4 * v518 + 4 * v546;
              if (v543)
              {
                v37 = v520;
                v516 = v519;
              }

              v549 = v516;
              if (v543)
              {
                v46 = v519;
              }

              else
              {
                v46 += v546;
              }

              --v552[0];
            }

            while (v552[0]);
          }

          goto LABEL_1058;
        case 2:
          if (*(v4 + 1) << 8 != 512)
          {
            v532 = v20;
            v533 = v21;
            v534 = v22;
            v531 = v29;
            do
            {
              v485 = v562[0];
              do
              {
                v486 = *v46;
                if (*v46)
                {
                  if (*v46 == 255)
                  {
                    v47->i32[0] = v486;
                  }

                  else
                  {
                    DplusDM_21871(v47, v486, v47->i32[0], ~*v46);
                  }
                }

                v487 = &v46[v529];
                if (v487 >= v37)
                {
                  v488 = -v29;
                }

                else
                {
                  v488 = 0;
                }

                v46 = &v487[v488];
                v47 = (v47 + 4 * v529);
                --v485;
              }

              while (v485);
              v47 = (v47 + 4 * v545);
              v489 = v549;
              v490 = &v549[v546];
              v491 = -(v546 * v530);
              if (v490 < v543)
              {
                v491 = 0;
              }

              v492 = &v490[v491];
              v493 = v37 + 4 * v491 + 4 * v546;
              if (v543)
              {
                v37 = v493;
                v489 = v492;
              }

              v549 = v489;
              if (v543)
              {
                v46 = v492;
              }

              else
              {
                v46 += v546;
              }

              --v552[0];
            }

            while (v552[0]);
            goto LABEL_1056;
          }

          blt_bitmap_blend_XXXA32(v11, v552[0], v47, v545 + v11, v29, v530, v20, v546, v527, v526);
          goto LABEL_1058;
        case 3:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          do
          {
            v269 = v562[0];
            do
            {
              if (v47->i32[0] == 255)
              {
                v270 = *v46;
                if (!v36)
                {
                  v270 = 255;
                }

                v47->i32[0] = v270 | *v46 & 0xFFFFFF00;
              }

              else if (v47->i32[0])
              {
                if (v36)
                {
                  v271 = *v46;
                }

                else
                {
                  v271 = -1;
                }

                DAM_21894(v47, *v46, v271, v47->i32[0]);
              }

              else
              {
                v47->i32[0] = 0;
              }

              v272 = &v46[v529];
              if (v272 >= v37)
              {
                v273 = -v29;
              }

              else
              {
                v273 = 0;
              }

              v46 = &v272[v273];
              v47 = (v47 + 4 * v529);
              --v269;
            }

            while (v269);
            v47 = (v47 + 4 * v545);
            v274 = v549;
            v275 = &v549[v546];
            v276 = -(v546 * v530);
            if (v275 < v543)
            {
              v276 = 0;
            }

            v277 = &v275[v276];
            v278 = v37 + 4 * v276 + 4 * v546;
            if (v543)
            {
              v37 = v278;
              v274 = v277;
            }

            v549 = v274;
            if (v543)
            {
              v46 = v277;
            }

            else
            {
              v46 += v546;
            }

            --v552[0];
          }

          while (v552[0]);
          goto LABEL_1056;
        case 4:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          do
          {
            v204 = v562[0];
            do
            {
              if (~v47->i8[0] == 255)
              {
                v205 = *v46;
                if (!v36)
                {
                  v205 = 255;
                }

                v47->i32[0] = v205 | *v46 & 0xFFFFFF00;
              }

              else if (v47->i8[0] == -1)
              {
                v47->i32[0] = 0;
              }

              else
              {
                if (v36)
                {
                  v206 = *v46;
                }

                else
                {
                  v206 = -1;
                }

                DAM_21894(v47, *v46, v206, ~v47->i8[0]);
              }

              v207 = &v46[v529];
              if (v207 >= v37)
              {
                v208 = -v29;
              }

              else
              {
                v208 = 0;
              }

              v46 = &v207[v208];
              v47 = (v47 + 4 * v529);
              --v204;
            }

            while (v204);
            v47 = (v47 + 4 * v545);
            v209 = v549;
            v210 = &v549[v546];
            v211 = -(v546 * v530);
            if (v210 < v543)
            {
              v211 = 0;
            }

            v212 = &v210[v211];
            v213 = v37 + 4 * v211 + 4 * v546;
            if (v543)
            {
              v37 = v213;
              v209 = v212;
            }

            v549 = v209;
            if (v543)
            {
              v46 = v212;
            }

            else
            {
              v46 += v546;
            }

            --v552[0];
          }

          while (v552[0]);
          goto LABEL_1056;
        case 5:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          v326 = v552[0];
          do
          {
            v537 = v326;
            v327 = v11;
            do
            {
              DMplusDM_21870(v47, *v46, v47->i32[0], v47->i32[0], ~*v46);
              v328 = &v46[v529];
              if (v328 >= v37)
              {
                v329 = -v29;
              }

              else
              {
                v329 = 0;
              }

              v46 = &v328[v329];
              v47 = (v47 + 4 * v529);
              --v327;
            }

            while (v327);
            v47 = (v47 + 4 * v545);
            v330 = v549;
            v331 = &v549[v546];
            LODWORD(v11) = v541;
            v332 = -(v546 * v530);
            if (v331 < v543)
            {
              v332 = 0;
            }

            v333 = &v331[v332];
            v334 = v37 + 4 * v332 + 4 * v546;
            if (v543)
            {
              v37 = v334;
              v330 = v333;
            }

            v549 = v330;
            if (v543)
            {
              v46 = v333;
            }

            else
            {
              v46 += v546;
            }

            v326 = v537 - 1;
            v552[0] = v537 - 1;
          }

          while (v537 != 1);
          goto LABEL_1056;
        case 6:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          do
          {
            v359 = v562[0];
            do
            {
              if (v47->i32[0] != 0xFF)
              {
                if (~v47->i8[0] == 255)
                {
                  v360 = *v46;
                  if (!v36)
                  {
                    v360 = 255;
                  }

                  v47->i32[0] = v360 | *v46 & 0xFFFFFF00;
                }

                else
                {
                  if (v36)
                  {
                    v361 = *v46;
                  }

                  else
                  {
                    v361 = -1;
                  }

                  DplusDAM_21893(v47, v47->i32[0], *v46, v361, ~v47->i8[0]);
                }
              }

              v362 = &v46[v529];
              if (v362 >= v37)
              {
                v363 = -v29;
              }

              else
              {
                v363 = 0;
              }

              v46 = &v362[v363];
              v47 = (v47 + 4 * v529);
              --v359;
            }

            while (v359);
            v47 = (v47 + 4 * v545);
            v364 = v549;
            v365 = &v549[v546];
            v366 = -(v546 * v530);
            if (v365 < v543)
            {
              v366 = 0;
            }

            v367 = &v365[v366];
            v368 = v37 + 4 * v366 + 4 * v546;
            if (v543)
            {
              v37 = v368;
              v364 = v367;
            }

            v549 = v364;
            if (v543)
            {
              v46 = v367;
            }

            else
            {
              v46 += v546;
            }

            --v552[0];
          }

          while (v552[0]);
          goto LABEL_1056;
        case 7:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v279 = v562[0];
            do
            {
              v280 = *v46;
              if (*v46)
              {
                if (v280 == 255)
                {
                  goto LABEL_607;
                }

                v280 = PDM_21869(v47->i32[0], *v46);
              }

              v47->i32[0] = v280;
LABEL_607:
              v281 = &v46[v529];
              if (v281 >= v37)
              {
                v282 = -v29;
              }

              else
              {
                v282 = 0;
              }

              v46 = &v281[v282];
              v47 = (v47 + 4 * v529);
              --v279;
            }

            while (v279);
            v47 = (v47 + 4 * v545);
            v283 = v549;
            v284 = &v549[v546];
            if (v284 >= v543)
            {
              v285 = -(v546 * v530);
            }

            else
            {
              v285 = 0;
            }

            v286 = &v284[v285];
            v287 = v37 + 4 * v285 + 4 * v546;
            if (v543)
            {
              v37 = v287;
              v283 = v286;
            }

            v549 = v283;
            if (v543)
            {
              v46 = v286;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1056;
            }
          }

        case 8:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          do
          {
            v390 = v562[0];
            do
            {
              v391 = *v46 ^ 0xFF;
              if (v391)
              {
                if (v391 == 255)
                {
                  goto LABEL_842;
                }

                v391 = PDM_21869(v47->i32[0], v391);
              }

              v47->i32[0] = v391;
LABEL_842:
              v392 = &v46[v529];
              if (v392 >= v37)
              {
                v393 = -v29;
              }

              else
              {
                v393 = 0;
              }

              v46 = &v392[v393];
              v47 = (v47 + 4 * v529);
              --v390;
            }

            while (v390);
            v47 = (v47 + 4 * v545);
            v394 = v549;
            v395 = &v549[v546];
            if (v395 >= v543)
            {
              v396 = -(v546 * v530);
            }

            else
            {
              v396 = 0;
            }

            v397 = &v395[v396];
            v398 = v37 + 4 * v396 + 4 * v546;
            if (v543)
            {
              v37 = v398;
              v394 = v397;
            }

            v549 = v394;
            if (v543)
            {
              v46 = v397;
            }

            else
            {
              v46 += v546;
            }

            --v552[0];
          }

          while (v552[0]);
LABEL_1056:
          v4 = v528;
LABEL_1057:
          LODWORD(v9) = v540;
          v21 = v533;
          v22 = v534;
          v29 = v531;
          v20 = v532;
LABEL_1058:
          v50 = v539;
          if (!v539)
          {
            return 1;
          }

          v551 = 0;
LABEL_1060:
          if (!shape_enum_clip_next(v50, &v551 + 1, &v551, v562, v552))
          {
            v43 = v50;
LABEL_1066:
            free(v43);
            return 1;
          }

          v539 = v50;
          if (v543)
          {
            v47 = (v22 + 4 * v21 * v551 + 4 * SHIDWORD(v551));
            LODWORD(v11) = v562[0];
            v494 = v20 + 4 * v546 * ((v551 + *(v4 + 60)) % v530);
            v46 = (v494 + 4 * ((HIDWORD(v551) + *(v4 + 56)) % v29));
            v37 = v494 + 4 * v29;
            v549 = v46;
            v495 = v562[0];
            v526 = (v551 + *(v4 + 60)) % v530;
            v527 = (HIDWORD(v551) + *(v4 + 56)) % v29;
          }

          else
          {
            LODWORD(v11) = v562[0];
            v495 = v562[0] * v529;
            v47 = (v22 + 4 * v21 * v551 + 4 * HIDWORD(v551) * v529);
            v46 = (v20 + 4 * v551 * v29 + 4 * HIDWORD(v551) * v529);
            v546 = v29 - v562[0] * v529;
          }

          v545 = v21 - v495;
          continue;
        case 9:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          v224 = v552[0];
          do
          {
            v536 = v224;
            v225 = v11;
            do
            {
              DMplusDM_21870(v47, *v46, ~v47->i8[0], v47->i32[0], *v46);
              v226 = &v46[v529];
              if (v226 >= v37)
              {
                v227 = -v29;
              }

              else
              {
                v227 = 0;
              }

              v46 = &v226[v227];
              v47 = (v47 + 4 * v529);
              --v225;
            }

            while (v225);
            v47 = (v47 + 4 * v545);
            v228 = v549;
            v229 = &v549[v546];
            LODWORD(v11) = v541;
            v230 = -(v546 * v530);
            if (v229 < v543)
            {
              v230 = 0;
            }

            v231 = &v229[v230];
            v232 = v37 + 4 * v230 + 4 * v546;
            if (v543)
            {
              v37 = v232;
              v228 = v231;
            }

            v549 = v228;
            if (v543)
            {
              v46 = v231;
            }

            else
            {
              v46 += v546;
            }

            v224 = v536 - 1;
            v552[0] = v536 - 1;
          }

          while (v536 != 1);
          goto LABEL_1056;
        case 10:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          v381 = v552[0];
          do
          {
            v538 = v381;
            v382 = v11;
            do
            {
              DMplusDM_21870(v47, *v46, ~v47->i8[0], v47->i32[0], ~*v46);
              v383 = &v46[v529];
              if (v383 >= v37)
              {
                v384 = -v29;
              }

              else
              {
                v384 = 0;
              }

              v46 = &v383[v384];
              v47 = (v47 + 4 * v529);
              --v382;
            }

            while (v382);
            v47 = (v47 + 4 * v545);
            v385 = v549;
            v386 = &v549[v546];
            LODWORD(v11) = v541;
            v387 = -(v546 * v530);
            if (v386 < v543)
            {
              v387 = 0;
            }

            v388 = &v386[v387];
            v389 = v37 + 4 * v387 + 4 * v546;
            if (v543)
            {
              v37 = v389;
              v385 = v388;
            }

            v549 = v385;
            if (v543)
            {
              v46 = v388;
            }

            else
            {
              v46 += v546;
            }

            v381 = v538 - 1;
            v552[0] = v538 - 1;
          }

          while (v538 != 1);
          goto LABEL_1056;
        case 11:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          v193 = v552[0];
          do
          {
            v535 = v193;
            v194 = v11;
            do
            {
              if (v550)
              {
                v195 = v47->i32[0];
              }

              else
              {
                v195 = -1;
              }

              if (v36)
              {
                v196 = *v46;
              }

              else
              {
                v196 = -1;
              }

              *v3.i8 = DAplusdDA_21872(v47, v47->i32[0], v195, *v46, v196, v3);
              v197 = &v46[v529];
              if (v197 >= v37)
              {
                v198 = -v29;
              }

              else
              {
                v198 = 0;
              }

              v46 = &v197[v198];
              v47 = (v47 + 4 * v529);
              --v194;
            }

            while (v194);
            v47 = (v47 + 4 * v545);
            v199 = v549;
            v200 = &v549[v546];
            LODWORD(v11) = v541;
            v201 = -(v546 * v530);
            if (v200 < v543)
            {
              v201 = 0;
            }

            v202 = &v200[v201];
            v203 = v37 + 4 * v201 + 4 * v546;
            if (v543)
            {
              v37 = v203;
              v199 = v202;
            }

            v549 = v199;
            if (v543)
            {
              v46 = v202;
            }

            else
            {
              v46 += v546;
            }

            v193 = v535 - 1;
            v552[0] = v535 - 1;
          }

          while (v535 != 1);
          goto LABEL_1056;
        case 12:
          do
          {
            v214 = v562[0];
            do
            {
              v215 = *v46;
              if (!v36)
              {
                v215 = 255;
              }

              v216 = ((*v46 >> 8) & 0xFF00FF) + ((v47->i32[0] >> 8) & 0xFF00FF);
              v47->i32[0] = (v216 << 8) & 0xFF00FF00 | ((v215 | *v46 & 0xFF0000) + (v47->i32[0] & 0xFF00FF)) & 0xFF00FF | (15 * ((((v215 | *v46 & 0xFF0000) + (v47->i32[0] & 0xFF00FF)) >> 8) & 0x10001 | v216 & 0x1000100)) | (240 * ((((v215 | *v46 & 0xFF0000) + (v47->i32[0] & 0xFF00FF)) >> 8) & 0x10001 | v216 & 0x1000100));
              v217 = &v46[v529];
              if (v217 >= v37)
              {
                v218 = -v29;
              }

              else
              {
                v218 = 0;
              }

              v46 = &v217[v218];
              v47 = (v47 + 4 * v529);
              --v214;
            }

            while (v214);
            v47 = (v47 + 4 * v545);
            v219 = v549;
            v220 = &v549[v546];
            if (v220 >= v543)
            {
              v221 = -(v546 * v530);
            }

            else
            {
              v221 = 0;
            }

            v222 = &v220[v221];
            v223 = v37 + 4 * v221 + 4 * v546;
            if (v543)
            {
              v37 = v223;
              v219 = v222;
            }

            v549 = v219;
            if (v543)
            {
              v46 = v222;
            }

            else
            {
              v46 += v546;
            }

            --v552[0];
          }

          while (v552[0]);
          goto LABEL_1058;
        case 13:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v347 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v348) = -1;
LABEL_751:
                if (v550)
                {
                  v349 = *v46;
                  if (v47->i32[0])
                  {
                    v350 = v47->i32[0];
                    goto LABEL_755;
                  }

                  v351 = v349 & 0xFFFFFF00 | v348;
                }

                else
                {
                  v349 = *v46;
                  LOBYTE(v350) = -1;
LABEL_755:
                  v351 = PDAmultiplyPDA_21873(v47->i32[0], v350, v349, v348);
                }

                v47->i32[0] = v351;
                goto LABEL_758;
              }

              v348 = *v46;
              if (*v46)
              {
                goto LABEL_751;
              }

LABEL_758:
              v352 = &v46[v529];
              if (v352 >= v37)
              {
                v353 = -v29;
              }

              else
              {
                v353 = 0;
              }

              v46 = &v352[v353];
              v47 = (v47 + 4 * v529);
              --v347;
            }

            while (v347);
            v47 = (v47 + 4 * v545);
            v354 = v549;
            v355 = &v549[v546];
            v356 = -(v546 * v530);
            if (v355 < v543)
            {
              v356 = 0;
            }

            v357 = &v355[v356];
            v358 = v37 + 4 * v356 + 4 * v546;
            if (v543)
            {
              v37 = v358;
              v354 = v357;
            }

            v549 = v354;
            if (v543)
            {
              v46 = v357;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 14:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v181 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v182) = -1;
LABEL_398:
                if (v550)
                {
                  v183 = *v46;
                  if (v47->i32[0])
                  {
                    v184 = v47->i32[0];
                    goto LABEL_402;
                  }

                  v185 = v183 & 0xFFFFFF00 | v182;
                }

                else
                {
                  v183 = *v46;
                  LOBYTE(v184) = -1;
LABEL_402:
                  v185 = PDAscreenPDA_21874(v47->i32[0], v184, v183, v182);
                }

                v47->i32[0] = v185;
                goto LABEL_405;
              }

              v182 = *v46;
              if (*v46)
              {
                goto LABEL_398;
              }

LABEL_405:
              v186 = &v46[v529];
              if (v186 >= v37)
              {
                v187 = -v29;
              }

              else
              {
                v187 = 0;
              }

              v46 = &v186[v187];
              v47 = (v47 + 4 * v529);
              --v181;
            }

            while (v181);
            v47 = (v47 + 4 * v545);
            v188 = v549;
            v189 = &v549[v546];
            v190 = -(v546 * v530);
            if (v189 < v543)
            {
              v190 = 0;
            }

            v191 = &v189[v190];
            v192 = v37 + 4 * v190 + 4 * v546;
            if (v543)
            {
              v37 = v192;
              v188 = v191;
            }

            v549 = v188;
            if (v543)
            {
              v46 = v191;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 15:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v257 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v258) = -1;
LABEL_556:
                if (v550)
                {
                  v259 = *v46;
                  if (v47->i32[0])
                  {
                    v260 = v47->i32[0];
                    goto LABEL_560;
                  }

                  v261 = v259 & 0xFFFFFF00 | v258;
                }

                else
                {
                  v259 = *v46;
                  LOBYTE(v260) = -1;
LABEL_560:
                  v261 = PDAoverlayPDA_21875(v47->i32[0], v260, v259, v258);
                }

                v47->i32[0] = v261;
                goto LABEL_563;
              }

              v258 = *v46;
              if (*v46)
              {
                goto LABEL_556;
              }

LABEL_563:
              v262 = &v46[v529];
              if (v262 >= v37)
              {
                v263 = -v29;
              }

              else
              {
                v263 = 0;
              }

              v46 = &v262[v263];
              v47 = (v47 + 4 * v529);
              --v257;
            }

            while (v257);
            v47 = (v47 + 4 * v545);
            v264 = v549;
            v265 = &v549[v546];
            v266 = -(v546 * v530);
            if (v265 < v543)
            {
              v266 = 0;
            }

            v267 = &v265[v266];
            v268 = v37 + 4 * v266 + 4 * v546;
            if (v543)
            {
              v37 = v268;
              v264 = v267;
            }

            v549 = v264;
            if (v543)
            {
              v46 = v267;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 16:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v169 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v170) = -1;
LABEL_372:
                if (v550)
                {
                  v171 = *v46;
                  if (v47->i32[0])
                  {
                    v172 = v47->i32[0];
                    goto LABEL_376;
                  }

                  v173 = v171 & 0xFFFFFF00 | v170;
                }

                else
                {
                  v171 = *v46;
                  LOBYTE(v172) = -1;
LABEL_376:
                  v173 = PDAdarkenPDA_21877(v47->i32[0], v172, v171, v170);
                }

                v47->i32[0] = v173;
                goto LABEL_379;
              }

              v170 = *v46;
              if (*v46)
              {
                goto LABEL_372;
              }

LABEL_379:
              v174 = &v46[v529];
              if (v174 >= v37)
              {
                v175 = -v29;
              }

              else
              {
                v175 = 0;
              }

              v46 = &v174[v175];
              v47 = (v47 + 4 * v529);
              --v169;
            }

            while (v169);
            v47 = (v47 + 4 * v545);
            v176 = v549;
            v177 = &v549[v546];
            v178 = -(v546 * v530);
            if (v177 < v543)
            {
              v178 = 0;
            }

            v179 = &v177[v178];
            v180 = v37 + 4 * v178 + 4 * v546;
            if (v543)
            {
              v37 = v180;
              v176 = v179;
            }

            v549 = v176;
            if (v543)
            {
              v46 = v179;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 17:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v302 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v303) = -1;
LABEL_658:
                if (v550)
                {
                  v304 = *v46;
                  if (v47->i32[0])
                  {
                    v305 = v47->i32[0];
                    goto LABEL_662;
                  }

                  v306 = v304 & 0xFFFFFF00 | v303;
                }

                else
                {
                  v304 = *v46;
                  LOBYTE(v305) = -1;
LABEL_662:
                  v306 = PDAlightenPDA_21876(v47->i32[0], v305, v304, v303);
                }

                v47->i32[0] = v306;
                goto LABEL_665;
              }

              v303 = *v46;
              if (*v46)
              {
                goto LABEL_658;
              }

LABEL_665:
              v307 = &v46[v529];
              if (v307 >= v37)
              {
                v308 = -v29;
              }

              else
              {
                v308 = 0;
              }

              v46 = &v307[v308];
              v47 = (v47 + 4 * v529);
              --v302;
            }

            while (v302);
            v47 = (v47 + 4 * v545);
            v309 = v549;
            v310 = &v549[v546];
            v311 = -(v546 * v530);
            if (v310 < v543)
            {
              v311 = 0;
            }

            v312 = &v310[v311];
            v313 = v37 + 4 * v311 + 4 * v546;
            if (v543)
            {
              v37 = v313;
              v309 = v312;
            }

            v549 = v309;
            if (v543)
            {
              v46 = v312;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 18:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v369 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v370) = -1;
LABEL_801:
                if (v550)
                {
                  v371 = *v46;
                  if (v47->i32[0])
                  {
                    v372 = v47->i32[0];
                    goto LABEL_805;
                  }

                  v373 = v371 & 0xFFFFFF00 | v370;
                }

                else
                {
                  v371 = *v46;
                  LOBYTE(v372) = -1;
LABEL_805:
                  v373 = PDAcolordodgePDA_21878(v47->i32[0], v372, v371, v370);
                }

                v47->i32[0] = v373;
                goto LABEL_808;
              }

              v370 = *v46;
              if (*v46)
              {
                goto LABEL_801;
              }

LABEL_808:
              v374 = &v46[v529];
              if (v374 >= v37)
              {
                v375 = -v29;
              }

              else
              {
                v375 = 0;
              }

              v46 = &v374[v375];
              v47 = (v47 + 4 * v529);
              --v369;
            }

            while (v369);
            v47 = (v47 + 4 * v545);
            v376 = v549;
            v377 = &v549[v546];
            v378 = -(v546 * v530);
            if (v377 < v543)
            {
              v378 = 0;
            }

            v379 = &v377[v378];
            v380 = v37 + 4 * v378 + 4 * v546;
            if (v543)
            {
              v37 = v380;
              v376 = v379;
            }

            v549 = v376;
            if (v543)
            {
              v46 = v379;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 19:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v424 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v425) = -1;
LABEL_914:
                if (v550)
                {
                  v426 = *v46;
                  if (v47->i32[0])
                  {
                    v427 = v47->i32[0];
                    goto LABEL_918;
                  }

                  v428 = v426 & 0xFFFFFF00 | v425;
                }

                else
                {
                  v426 = *v46;
                  LOBYTE(v427) = -1;
LABEL_918:
                  v428 = PDAcolorburnPDA_21879(v47->i32[0], v427, v426, v425);
                }

                v47->i32[0] = v428;
                goto LABEL_921;
              }

              v425 = *v46;
              if (*v46)
              {
                goto LABEL_914;
              }

LABEL_921:
              v429 = &v46[v529];
              if (v429 >= v37)
              {
                v430 = -v29;
              }

              else
              {
                v430 = 0;
              }

              v46 = &v429[v430];
              v47 = (v47 + 4 * v529);
              --v424;
            }

            while (v424);
            v47 = (v47 + 4 * v545);
            v431 = v549;
            v432 = &v549[v546];
            v433 = -(v546 * v530);
            if (v432 < v543)
            {
              v433 = 0;
            }

            v434 = &v432[v433];
            v435 = v37 + 4 * v433 + 4 * v546;
            if (v543)
            {
              v37 = v435;
              v431 = v434;
            }

            v549 = v431;
            if (v543)
            {
              v46 = v434;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 20:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v314 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v315) = -1;
LABEL_684:
                if (v550)
                {
                  v316 = *v46;
                  if (v47->i32[0])
                  {
                    v317 = v47->i32[0];
                    goto LABEL_688;
                  }

                  v318 = v316 & 0xFFFFFF00 | v315;
                }

                else
                {
                  v316 = *v46;
                  LOBYTE(v317) = -1;
LABEL_688:
                  v318 = PDAsoftlightPDA_21881(v47->i32[0], v317, v316, v315);
                }

                v47->i32[0] = v318;
                goto LABEL_691;
              }

              v315 = *v46;
              if (*v46)
              {
                goto LABEL_684;
              }

LABEL_691:
              v319 = &v46[v529];
              if (v319 >= v37)
              {
                v320 = -v29;
              }

              else
              {
                v320 = 0;
              }

              v46 = &v319[v320];
              v47 = (v47 + 4 * v529);
              --v314;
            }

            while (v314);
            v47 = (v47 + 4 * v545);
            v321 = v549;
            v322 = &v549[v546];
            v323 = -(v546 * v530);
            if (v322 < v543)
            {
              v323 = 0;
            }

            v324 = &v322[v323];
            v325 = v37 + 4 * v323 + 4 * v546;
            if (v543)
            {
              v37 = v325;
              v321 = v324;
            }

            v549 = v321;
            if (v543)
            {
              v46 = v324;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 21:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v335 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v336) = -1;
LABEL_725:
                if (v550)
                {
                  v337 = *v46;
                  if (v47->i32[0])
                  {
                    v338 = v47->i32[0];
                    goto LABEL_729;
                  }

                  v339 = v337 & 0xFFFFFF00 | v336;
                }

                else
                {
                  v337 = *v46;
                  LOBYTE(v338) = -1;
LABEL_729:
                  v339 = PDAhardlightPDA_21880(v47->i32[0], v338, v337, v336);
                }

                v47->i32[0] = v339;
                goto LABEL_732;
              }

              v336 = *v46;
              if (*v46)
              {
                goto LABEL_725;
              }

LABEL_732:
              v340 = &v46[v529];
              if (v340 >= v37)
              {
                v341 = -v29;
              }

              else
              {
                v341 = 0;
              }

              v46 = &v340[v341];
              v47 = (v47 + 4 * v529);
              --v335;
            }

            while (v335);
            v47 = (v47 + 4 * v545);
            v342 = v549;
            v343 = &v549[v546];
            v344 = -(v546 * v530);
            if (v343 < v543)
            {
              v344 = 0;
            }

            v345 = &v343[v344];
            v346 = v37 + 4 * v344 + 4 * v546;
            if (v543)
            {
              v37 = v346;
              v342 = v345;
            }

            v549 = v342;
            if (v543)
            {
              v46 = v345;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 22:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v412 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v413) = -1;
LABEL_888:
                if (v550)
                {
                  v414 = *v46;
                  if (v47->i32[0])
                  {
                    v415 = v47->i32[0];
                    goto LABEL_892;
                  }

                  v416 = v414 & 0xFFFFFF00 | v413;
                }

                else
                {
                  v414 = *v46;
                  LOBYTE(v415) = -1;
LABEL_892:
                  v416 = PDAdifferencePDA_21882(v47->i32[0], v415, v414, v413);
                }

                v47->i32[0] = v416;
                goto LABEL_895;
              }

              v413 = *v46;
              if (*v46)
              {
                goto LABEL_888;
              }

LABEL_895:
              v417 = &v46[v529];
              if (v417 >= v37)
              {
                v418 = -v29;
              }

              else
              {
                v418 = 0;
              }

              v46 = &v417[v418];
              v47 = (v47 + 4 * v529);
              --v412;
            }

            while (v412);
            v47 = (v47 + 4 * v545);
            v419 = v549;
            v420 = &v549[v546];
            v421 = -(v546 * v530);
            if (v420 < v543)
            {
              v421 = 0;
            }

            v422 = &v420[v421];
            v423 = v37 + 4 * v421 + 4 * v546;
            if (v543)
            {
              v37 = v423;
              v419 = v422;
            }

            v549 = v419;
            if (v543)
            {
              v46 = v422;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 23:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v436 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v437) = -1;
LABEL_940:
                if (v550)
                {
                  v438 = *v46;
                  if (v47->i32[0])
                  {
                    v439 = v47->i32[0];
                    goto LABEL_944;
                  }

                  v440 = v438 & 0xFFFFFF00 | v437;
                }

                else
                {
                  v438 = *v46;
                  LOBYTE(v439) = -1;
LABEL_944:
                  v440 = PDAexclusionPDA_21883(v47->i32[0], v439, v438, v437);
                }

                v47->i32[0] = v440;
                goto LABEL_947;
              }

              v437 = *v46;
              if (*v46)
              {
                goto LABEL_940;
              }

LABEL_947:
              v441 = &v46[v529];
              if (v441 >= v37)
              {
                v442 = -v29;
              }

              else
              {
                v442 = 0;
              }

              v46 = &v441[v442];
              v47 = (v47 + 4 * v529);
              --v436;
            }

            while (v436);
            v47 = (v47 + 4 * v545);
            v443 = v549;
            v444 = &v549[v546];
            v445 = -(v546 * v530);
            if (v444 < v543)
            {
              v445 = 0;
            }

            v446 = &v444[v445];
            v447 = v37 + 4 * v445 + 4 * v546;
            if (v543)
            {
              v37 = v447;
              v443 = v446;
            }

            v549 = v443;
            if (v543)
            {
              v46 = v446;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 24:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v245 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v246) = -1;
LABEL_528:
                if (v550)
                {
                  v247 = *v46;
                  if (v47->i32[0])
                  {
                    v248 = v47->i32[0];
                    goto LABEL_532;
                  }

                  v249 = v247 & 0xFFFFFF00 | v246;
                }

                else
                {
                  v247 = *v46;
                  LOBYTE(v248) = -1;
LABEL_532:
                  v249 = PDAhuePDA_21884(v47->i32[0], v248, v247, v246);
                }

                v47->i32[0] = v249;
                goto LABEL_535;
              }

              v246 = *v46;
              if (*v46)
              {
                goto LABEL_528;
              }

LABEL_535:
              v250 = &v46[v529];
              if (v250 >= v37)
              {
                v251 = -v29;
              }

              else
              {
                v251 = 0;
              }

              v46 = &v250[v251];
              v47 = (v47 + 4 * v529);
              --v245;
            }

            while (v245);
            v47 = (v47 + 4 * v545);
            v252 = v549;
            v253 = &v549[v546];
            v254 = -(v546 * v530);
            if (v253 < v543)
            {
              v254 = 0;
            }

            v255 = &v253[v254];
            v256 = v37 + 4 * v254 + 4 * v546;
            if (v543)
            {
              v37 = v256;
              v252 = v255;
            }

            v549 = v252;
            if (v543)
            {
              v46 = v255;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 25:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v233 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v234) = -1;
LABEL_502:
                if (v550)
                {
                  v235 = *v46;
                  if (v47->i32[0])
                  {
                    v236 = v47->i32[0];
                    goto LABEL_506;
                  }

                  v237 = v235 & 0xFFFFFF00 | v234;
                }

                else
                {
                  v235 = *v46;
                  LOBYTE(v236) = -1;
LABEL_506:
                  v237 = PDAsaturationPDA_21885(v47->i32[0], v236, v235, v234);
                }

                v47->i32[0] = v237;
                goto LABEL_509;
              }

              v234 = *v46;
              if (*v46)
              {
                goto LABEL_502;
              }

LABEL_509:
              v238 = &v46[v529];
              if (v238 >= v37)
              {
                v239 = -v29;
              }

              else
              {
                v239 = 0;
              }

              v46 = &v238[v239];
              v47 = (v47 + 4 * v529);
              --v233;
            }

            while (v233);
            v47 = (v47 + 4 * v545);
            v240 = v549;
            v241 = &v549[v546];
            v242 = -(v546 * v530);
            if (v241 < v543)
            {
              v242 = 0;
            }

            v243 = &v241[v242];
            v244 = v37 + 4 * v242 + 4 * v546;
            if (v543)
            {
              v37 = v244;
              v240 = v243;
            }

            v549 = v240;
            if (v543)
            {
              v46 = v243;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 26:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v472 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v473) = -1;
LABEL_1018:
                if (v550)
                {
                  v474 = v47->i32[0];
                  v475 = *v46;
                  if (v47->i32[0])
                  {
                    v476 = v47->i32[0];
                    goto LABEL_1022;
                  }

                  v477 = v475 & 0xFFFFFF00 | v473;
                }

                else
                {
                  v475 = *v46;
                  v474 = v47->i32[0];
                  LOBYTE(v476) = -1;
LABEL_1022:
                  v477 = PDAluminosityPDA_21886(v475, v473, v474, v476);
                }

                v47->i32[0] = v477;
                goto LABEL_1025;
              }

              v473 = *v46;
              if (*v46)
              {
                goto LABEL_1018;
              }

LABEL_1025:
              v478 = &v46[v529];
              if (v478 >= v37)
              {
                v479 = -v29;
              }

              else
              {
                v479 = 0;
              }

              v46 = &v478[v479];
              v47 = (v47 + 4 * v529);
              --v472;
            }

            while (v472);
            v47 = (v47 + 4 * v545);
            v480 = v549;
            v481 = &v549[v546];
            v482 = -(v546 * v530);
            if (v481 < v543)
            {
              v482 = 0;
            }

            v483 = &v481[v482];
            v484 = v37 + 4 * v482 + 4 * v546;
            if (v543)
            {
              v37 = v484;
              v480 = v483;
            }

            v549 = v480;
            if (v543)
            {
              v46 = v483;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 27:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v157 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v158) = -1;
LABEL_346:
                if (v550)
                {
                  v159 = *v46;
                  if (v47->i32[0])
                  {
                    v160 = v47->i32[0];
                    goto LABEL_350;
                  }

                  v161 = v159 & 0xFFFFFF00 | v158;
                }

                else
                {
                  v159 = *v46;
                  LOBYTE(v160) = -1;
LABEL_350:
                  v161 = PDAluminosityPDA_21886(v47->i32[0], v160, v159, v158);
                }

                v47->i32[0] = v161;
                goto LABEL_353;
              }

              v158 = *v46;
              if (*v46)
              {
                goto LABEL_346;
              }

LABEL_353:
              v162 = &v46[v529];
              if (v162 >= v37)
              {
                v163 = -v29;
              }

              else
              {
                v163 = 0;
              }

              v46 = &v162[v163];
              v47 = (v47 + 4 * v529);
              --v157;
            }

            while (v157);
            v47 = (v47 + 4 * v545);
            v164 = v549;
            v165 = &v549[v546];
            v166 = -(v546 * v530);
            if (v165 < v543)
            {
              v166 = 0;
            }

            v167 = &v165[v166];
            v168 = v37 + 4 * v166 + 4 * v546;
            if (v543)
            {
              v37 = v168;
              v164 = v167;
            }

            v549 = v164;
            if (v543)
            {
              v46 = v167;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 28:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v448 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v449) = -1;
LABEL_966:
                if (v550)
                {
                  v450 = *v46;
                  if (v47->i32[0])
                  {
                    v451 = v47->i32[0];
                    goto LABEL_970;
                  }

                  v452 = v450 & 0xFFFFFF00 | v449;
                }

                else
                {
                  v450 = *v46;
                  LOBYTE(v451) = -1;
LABEL_970:
                  v452 = PDAtranspose_huePDA_21887(v47->i32[0], v451, v450, v449);
                }

                v47->i32[0] = v452;
                goto LABEL_973;
              }

              v449 = *v46;
              if (*v46)
              {
                goto LABEL_966;
              }

LABEL_973:
              v453 = &v46[v529];
              if (v453 >= v37)
              {
                v454 = -v29;
              }

              else
              {
                v454 = 0;
              }

              v46 = &v453[v454];
              v47 = (v47 + 4 * v529);
              --v448;
            }

            while (v448);
            v47 = (v47 + 4 * v545);
            v455 = v549;
            v456 = &v549[v546];
            v457 = -(v546 * v530);
            if (v456 < v543)
            {
              v457 = 0;
            }

            v458 = &v456[v457];
            v459 = v37 + 4 * v457 + 4 * v546;
            if (v543)
            {
              v37 = v459;
              v455 = v458;
            }

            v549 = v455;
            if (v543)
            {
              v46 = v458;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 29:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v460 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v461) = -1;
LABEL_992:
                if (v550)
                {
                  v462 = *v46;
                  if (v47->i32[0])
                  {
                    v463 = v47->i32[0];
                    goto LABEL_996;
                  }

                  v464 = v462 & 0xFFFFFF00 | v461;
                }

                else
                {
                  v462 = *v46;
                  LOBYTE(v463) = -1;
LABEL_996:
                  v464 = PDAtranspose_saturationPDA_21888(v47->i32[0], v463, v462, v461);
                }

                v47->i32[0] = v464;
                goto LABEL_999;
              }

              v461 = *v46;
              if (*v46)
              {
                goto LABEL_992;
              }

LABEL_999:
              v465 = &v46[v529];
              if (v465 >= v37)
              {
                v466 = -v29;
              }

              else
              {
                v466 = 0;
              }

              v46 = &v465[v466];
              v47 = (v47 + 4 * v529);
              --v460;
            }

            while (v460);
            v47 = (v47 + 4 * v545);
            v467 = v549;
            v468 = &v549[v546];
            v469 = -(v546 * v530);
            if (v468 < v543)
            {
              v469 = 0;
            }

            v470 = &v468[v469];
            v471 = v37 + 4 * v469 + 4 * v546;
            if (v543)
            {
              v37 = v471;
              v467 = v470;
            }

            v549 = v467;
            if (v543)
            {
              v46 = v470;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 30:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          while (1)
          {
            v399 = v562[0];
            do
            {
              if (!v36)
              {
                LOBYTE(v400) = -1;
LABEL_862:
                if (v550)
                {
                  v401 = v47->i32[0];
                  v402 = *v46;
                  if (v47->i32[0])
                  {
                    v403 = v47->i32[0];
                    goto LABEL_866;
                  }

                  v404 = v402 & 0xFFFFFF00 | v400;
                }

                else
                {
                  v402 = *v46;
                  v401 = v47->i32[0];
                  LOBYTE(v403) = -1;
LABEL_866:
                  v404 = PDAtranspose_luminosityPDA_21889(v402, v400, v401, v403);
                }

                v47->i32[0] = v404;
                goto LABEL_869;
              }

              v400 = *v46;
              if (*v46)
              {
                goto LABEL_862;
              }

LABEL_869:
              v405 = &v46[v529];
              if (v405 >= v37)
              {
                v406 = -v29;
              }

              else
              {
                v406 = 0;
              }

              v46 = &v405[v406];
              v47 = (v47 + 4 * v529);
              --v399;
            }

            while (v399);
            v47 = (v47 + 4 * v545);
            v407 = v549;
            v408 = &v549[v546];
            v409 = -(v546 * v530);
            if (v408 < v543)
            {
              v409 = 0;
            }

            v410 = &v408[v409];
            v411 = v37 + 4 * v409 + 4 * v546;
            if (v543)
            {
              v37 = v411;
              v407 = v410;
            }

            v549 = v407;
            if (v543)
            {
              v46 = v410;
            }

            else
            {
              v46 += v546;
            }

            if (!--v552[0])
            {
              goto LABEL_1057;
            }
          }

        case 31:
          v532 = v20;
          v533 = v21;
          v534 = v22;
          v531 = v29;
          break;
        default:
          goto LABEL_1058;
      }

      break;
    }

LABEL_627:
    v290 = v562[0];
    while (1)
    {
      if (v36)
      {
        v291 = *v46;
        if (!*v46)
        {
          goto LABEL_639;
        }
      }

      else
      {
        LOBYTE(v291) = -1;
      }

      if (v550)
      {
        v292 = *v46;
        if (!v47->i32[0])
        {
          v294 = v292 & 0xFFFFFF00 | v291;
          goto LABEL_638;
        }

        v293 = v47->i32[0];
      }

      else
      {
        v292 = *v46;
        LOBYTE(v293) = -1;
      }

      v294 = PDAtranspose_luminosityPDA_21889(v47->i32[0], v293, v292, v291);
LABEL_638:
      v47->i32[0] = v294;
LABEL_639:
      v295 = &v46[v529];
      if (v295 >= v37)
      {
        v296 = -v29;
      }

      else
      {
        v296 = 0;
      }

      v46 = &v295[v296];
      v47 = (v47 + 4 * v529);
      if (!--v290)
      {
        v47 = (v47 + 4 * v545);
        v297 = v549;
        v298 = &v549[v546];
        v299 = -(v546 * v530);
        if (v298 < v543)
        {
          v299 = 0;
        }

        v300 = &v298[v299];
        v301 = v37 + 4 * v299 + 4 * v546;
        if (v543)
        {
          v37 = v301;
          v297 = v300;
        }

        v549 = v297;
        if (v543)
        {
          v46 = v300;
        }

        else
        {
          v46 += v546;
        }

        if (!--v552[0])
        {
          goto LABEL_1057;
        }

        goto LABEL_627;
      }
    }
  }

  v530 = 0;
  v546 = v29;
  v549 = 0;
  v543 = 0;
  v37 = -1;
LABEL_58:
  v529 = v28;
  shape_enum_clip_alloc(v1, v2, v14, v28, v21, 1, *(v4 + 104), *(v4 + 108), v11, v13);
  v50 = v49;
  if (v49)
  {
    goto LABEL_1060;
  }

  return 1;
}

_DWORD *rgba32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_21896(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD30;
    a2[6] = 0;
    a2[12] = v8;
    *(a2 + 2) = 1;
    if (v8 == 0xFF)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 + 12;
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v9;
  }

  return a2;
}

void rgba32_mark_constmask(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v141 = *(a1 + 28);
  v144 = *(a1 + 4);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 136);
  v8 = **(a1 + 88);
  pthread_mutex_lock(&rgba32_cacheColorLock);
  v9 = rgba32_cacheColor;
  if (!rgba32_cacheColor || *(rgba32_cacheColor + 16) != v8)
  {
    v12 = 0;
    while (1)
    {
      if (!v9)
      {
        goto LABEL_9;
      }

      v13 = v12;
      v12 = v9;
      if (*(v9 + 16) == v8)
      {
        break;
      }

      v9 = *v9;
      if (!*v12)
      {
        if (rgba32_cacheColorCount > 6)
        {
          v138 = a2;
          v16 = v5;
          *v13 = 0;
          v17 = *(v12 + 8);
        }

        else
        {
LABEL_9:
          v14 = rgba32_cacheColorBase;
          v138 = a2;
          if (rgba32_cacheColorBase)
          {
            v15 = rgba32_cacheColorCount;
          }

          else
          {
            v14 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x10200408056D5EBuLL);
            v15 = 0;
            rgba32_cacheColorBase = v14;
          }

          v16 = v5;
          v12 = v14 + 24 * v15;
          v17 = v14 + 1024 * v15 + 168;
          *(v12 + 8) = v17;
          rgba32_cacheColorCount = v15 + 1;
        }

        v18 = 0;
        *v12 = rgba32_cacheColor;
        rgba32_cacheColor = v12;
        *(v12 + 16) = v8;
        do
        {
          *(v17 + 4 * v18) = PDM_21869(v8, v18);
          ++v18;
        }

        while (v18 != 256);
        v11 = v12 + 8;
        pthread_mutex_unlock(&rgba32_cacheColorLock);
        v5 = v16;
        a2 = v138;
        goto LABEL_20;
      }
    }

    if (v13)
    {
      *v13 = *v9;
      *v9 = rgba32_cacheColor;
      rgba32_cacheColor = v9;
    }
  }

  pthread_mutex_unlock(&rgba32_cacheColorLock);
  v11 = v9 + 8;
LABEL_20:
  if (!v7)
  {
    return;
  }

  v19 = v144;
  v20 = *v11;
  v21 = *(*v11 + 1020);
  v22 = (v5 + 4 * (v141 >> 2) * *(a1 + 16) + 4 * *(a1 + 12));
  v23 = *(a1 + 124);
  v24 = v7 + *(a1 + 108) * v23 + *(a1 + 104);
  v25 = v23 - v144;
  v26 = (v141 >> 2) - v144;
  switch(a2)
  {
    case 0:
      do
      {
        v27 = v144;
        do
        {
          v28 = *v24;
          if (*v24)
          {
            if (v28 == 255)
            {
              v29 = 0;
            }

            else
            {
              v29 = PDM_21869(*v22, v28 ^ 0xFFu);
            }

            *v22 = v29;
          }

          ++v24;
          ++v22;
          --v27;
        }

        while (v27);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 1:
      v107 = -1;
      v108 = v24 & 3;
      if ((v24 & 3) != 0)
      {
        v19 = v108 + v144;
        v107 = -1 << (8 * v108);
        v109 = v24 & 3;
        v24 &= 0xFFFFFFFFFFFFFFFCLL;
        v22 -= v109;
      }

      if (((v19 + v24) & 3) != 0)
      {
        v110 = 4 - ((v19 + v24) & 3);
        v108 += v110;
        v111 = 0xFFFFFFFF >> (8 * v110);
        if (v19 >= 4)
        {
          v112 = v111;
        }

        else
        {
          v112 = 0;
        }

        if (v19 >= 4)
        {
          v111 = -1;
        }

        v107 &= v111;
      }

      else
      {
        v112 = 0;
      }

      v140 = v25 - v108;
      v137 = v19 >> 2;
      v146 = vdupq_n_s32(v21);
      v135 = v26 - v108;
      v143 = v107;
      do
      {
        v129 = *v24 & v107;
        v130 = v137;
        v131 = v112;
        if (!v129)
        {
          goto LABEL_379;
        }

LABEL_377:
        if (v129 == -1)
        {
          *v22 = v146;
          goto LABEL_379;
        }

        while (1)
        {
          if (v129)
          {
            if (v129 == 255)
            {
              *v22 = v21;
            }

            else
            {
              DplusDM_21871(v22, *(v20 + 4 * v129), *v22, ~v129);
            }
          }

          if (BYTE1(v129))
          {
            if (BYTE1(v129) == 255)
            {
              v22[1] = v21;
            }

            else
            {
              DplusDM_21871(v22 + 1, *(v20 + 4 * BYTE1(v129)), v22[1], ~(v129 >> 8));
            }
          }

          if (BYTE2(v129))
          {
            if (BYTE2(v129) == 255)
            {
              v22[2] = v21;
            }

            else
            {
              DplusDM_21871(v22 + 2, *(v20 + 4 * BYTE2(v129)), v22[2], ~HIWORD(v129));
            }
          }

          v133 = HIBYTE(v129);
          if (HIBYTE(v129) == 255)
          {
            v22[3] = v21;
          }

          else if (v133)
          {
            DplusDM_21871(v22 + 3, *(v20 + 4 * v133), v22[3], ~v129 >> 24);
          }

LABEL_379:
          while (1)
          {
            v132 = v130;
            v22 += 4;
            --v130;
            v24 += 4;
            if (v132 < 2)
            {
              break;
            }

            v129 = *v24;
            if (*v24)
            {
              goto LABEL_377;
            }
          }

          if (!v131)
          {
            break;
          }

          v131 = 0;
          v129 = *v24 & v112;
        }

        v24 += v140;
        v22 += v135;
        --v4;
        v107 = v143;
      }

      while (v4);
      return;
    case 2:
      v95 = -1;
      v96 = v24 & 3;
      if ((v24 & 3) != 0)
      {
        v19 = v96 + v144;
        v95 = -1 << (8 * v96);
        v97 = v24 & 3;
        v24 &= 0xFFFFFFFFFFFFFFFCLL;
        v22 -= v97;
      }

      if (((v19 + v24) & 3) != 0)
      {
        v98 = 4 - ((v19 + v24) & 3);
        v96 += v98;
        v99 = 0xFFFFFFFF >> (8 * v98);
        if (v19 >= 4)
        {
          v100 = v99;
        }

        else
        {
          v100 = 0;
        }

        v145 = v100;
        if (v19 >= 4)
        {
          v99 = -1;
        }

        v95 &= v99;
      }

      else
      {
        v145 = 0;
      }

      v139 = v25 - v96;
      v136 = v19 >> 2;
      v134 = v26 - v96;
      v142 = v95;
      do
      {
        v120 = *v24 & v95;
        v121 = v136;
        v122 = v145;
        if (!v120)
        {
          goto LABEL_358;
        }

LABEL_356:
        if (v120 == -1)
        {
          DplusDM_21871(v22, v21, *v22, ~v21);
          DplusDM_21871(v22 + 1, v21, v22[1], ~v21);
          DplusDM_21871(v22 + 2, v21, v22[2], ~v21);
          v123 = v22 + 3;
          v124 = v22[3];
          v125 = ~v21;
          v126 = v21;
LABEL_371:
          DplusDM_21871(v123, v126, v124, v125);
          goto LABEL_358;
        }

        while (1)
        {
          if (v120)
          {
            DplusDM_21871(v22, *(v20 + 4 * v120), *v22, ~*(v20 + 4 * v120));
          }

          if ((v120 & 0xFF00) != 0)
          {
            DplusDM_21871(v22 + 1, *(v20 + 4 * BYTE1(v120)), v22[1], ~*(v20 + 4 * BYTE1(v120)));
          }

          if ((v120 & 0xFF0000) != 0)
          {
            DplusDM_21871(v22 + 2, *(v20 + 4 * BYTE2(v120)), v22[2], ~*(v20 + 4 * BYTE2(v120)));
          }

          v128 = HIBYTE(v120);
          if (HIBYTE(v120))
          {
            v126 = *(v20 + 4 * v128);
            v123 = v22 + 3;
            v124 = v22[3];
            v125 = ~*(v20 + 4 * v128);
            goto LABEL_371;
          }

LABEL_358:
          while (1)
          {
            v127 = v121;
            v22 += 4;
            --v121;
            v24 += 4;
            if (v127 < 2)
            {
              break;
            }

            v120 = *v24;
            if (*v24)
            {
              goto LABEL_356;
            }
          }

          if (!v122)
          {
            break;
          }

          v122 = 0;
          v120 = *v24 & v145;
        }

        v24 += v139;
        v22 += v134;
        --v4;
        v95 = v142;
      }

      while (v4);
      return;
    case 3:
      do
      {
        v101 = v144;
        do
        {
          v102 = *v24;
          if (*v24)
          {
            if (v102 == 255)
            {
              *v22 = *(v20 + 4 * *v22);
            }

            else
            {
              v103 = *v22 * v102 + 128;
              DplusDM_21871(v22, *(v20 + 4 * ((v103 + (v103 >> 8)) >> 8)), *v22, v102 ^ 0xFF);
            }
          }

          ++v24;
          ++v22;
          --v101;
        }

        while (v101);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 4:
      do
      {
        v89 = v144;
        do
        {
          v90 = *v24;
          if (*v24)
          {
            if (v90 == 255)
            {
              *v22 = *(v20 + 4 * ~*v22);
            }

            else
            {
              DplusDM_21871(v22, *(v20 + 4 * ((~*v22 * v90 + 128 + ((~*v22 * v90 + 128) >> 8)) >> 8)), *v22, v90 ^ 0xFF);
            }
          }

          ++v24;
          ++v22;
          --v89;
        }

        while (v89);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 5:
      do
      {
        v113 = v144;
        do
        {
          if (*v24)
          {
            DMplusDM_21870(v22, *(v20 + 4 * *v24), *v22, *v22, ~*(v20 + 4 * *v24));
          }

          ++v24;
          ++v22;
          --v113;
        }

        while (v113);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 6:
      do
      {
        v114 = v144;
        do
        {
          v115 = *v24;
          if (*v24 && *v22 != 0xFF)
          {
            if (~*v22 == 255)
            {
              *v22 = *(v20 + 4 * v115);
            }

            else
            {
              DplusDM_21871(v22, *v22, *(v20 + 4 * v115), ~*v22);
            }
          }

          ++v24;
          ++v22;
          --v114;
        }

        while (v114);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 7:
      do
      {
        v104 = v144;
        do
        {
          v105 = *v24;
          if (*v24)
          {
            if (v105 == 255)
            {
              v106 = v21;
            }

            else
            {
              v106 = (~v105 + ((v21 * v105 + 128 + ((v21 * v105 + 128) >> 8)) >> 8));
            }

            *v22 = PDM_21869(*v22, v106);
          }

          ++v24;
          ++v22;
          --v104;
        }

        while (v104);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 8:
      do
      {
        v117 = v144;
        do
        {
          v118 = *v24;
          if (*v24)
          {
            if (v118 == 255)
            {
              v119 = ~v21;
            }

            else
            {
              v119 = ~((v21 * v118 + 128 + ((v21 * v118 + 128) >> 8)) >> 8);
            }

            *v22 = PDM_21869(*v22, v119);
          }

          ++v24;
          ++v22;
          --v117;
        }

        while (v117);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 9:
      do
      {
        v94 = v144;
        do
        {
          if (*v24)
          {
            DMplusDM_21870(v22, *(v20 + 4 * *v24), ~*v22, *v22, (*(v20 + 4 * *v24) + ~*v24));
          }

          ++v24;
          ++v22;
          --v94;
        }

        while (v94);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 10:
      do
      {
        v116 = v144;
        do
        {
          if (*v24)
          {
            DMplusDM_21870(v22, *(v20 + 4 * *v24), ~*v22, *v22, ~*(v20 + 4 * *v24));
          }

          ++v24;
          ++v22;
          --v116;
        }

        while (v116);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 11:
      do
      {
        v39 = v144;
        do
        {
          if (*v24)
          {
            if (v6)
            {
              v40 = *v22;
            }

            else
            {
              v40 = -1;
            }

            *v10.i8 = DAplusdDA_21872(v22, *v22, v40, *(v20 + 4 * *v24), *(v20 + 4 * *v24), v10);
          }

          ++v24;
          ++v22;
          --v39;
        }

        while (v39);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 12:
      do
      {
        v91 = v144;
        do
        {
          if (*v24)
          {
            v92 = *(v20 + 4 * *v24);
            v93 = ((*v22 >> 8) & 0xFF00FF) + ((v92 >> 8) & 0xFF00FF);
            *v22 = (v93 << 8) & 0xFF00FF00 | ((*v22 & 0xFF00FF) + (v92 & 0xFF00FF)) & 0xFF00FF | (15 * (v93 & 0x1000100 | (((*v22 & 0xFF00FF) + (v92 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v93 & 0x1000100 | (((*v22 & 0xFF00FF) + (v92 & 0xFF00FF)) >> 8) & 0x10001));
          }

          ++v24;
          ++v22;
          --v91;
        }

        while (v91);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 13:
      while (1)
      {
        v62 = v144;
        do
        {
          if (*v24)
          {
            v63 = *(v20 + 4 * *v24);
            if (v63)
            {
              if (v6)
              {
                v64 = *v22;
                if (!*v22)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                LOBYTE(v64) = -1;
              }

              v63 = PDAmultiplyPDA_21873(*v22, v64, v63, v63);
LABEL_168:
              *v22 = v63;
            }
          }

          ++v24;
          ++v22;
          --v62;
        }

        while (v62);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 14:
      while (1)
      {
        v36 = v144;
        do
        {
          if (*v24)
          {
            v37 = *(v20 + 4 * *v24);
            if (v37)
            {
              if (v6)
              {
                v38 = *v22;
                if (!*v22)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                LOBYTE(v38) = -1;
              }

              v37 = PDAscreenPDA_21874(*v22, v38, v37, v37);
LABEL_63:
              *v22 = v37;
            }
          }

          ++v24;
          ++v22;
          --v36;
        }

        while (v36);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 15:
      while (1)
      {
        v47 = v144;
        do
        {
          if (*v24)
          {
            v48 = *(v20 + 4 * *v24);
            if (v48)
            {
              if (v6)
              {
                v49 = *v22;
                if (!*v22)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                LOBYTE(v49) = -1;
              }

              v48 = PDAoverlayPDA_21875(*v22, v49, v48, v48);
LABEL_108:
              *v22 = v48;
            }
          }

          ++v24;
          ++v22;
          --v47;
        }

        while (v47);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 16:
      while (1)
      {
        v33 = v144;
        do
        {
          if (*v24)
          {
            v34 = *(v20 + 4 * *v24);
            if (v34)
            {
              if (v6)
              {
                v35 = *v22;
                if (!*v22)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                LOBYTE(v35) = -1;
              }

              v34 = PDAdarkenPDA_21877(*v22, v35, v34, v34);
LABEL_51:
              *v22 = v34;
            }
          }

          ++v24;
          ++v22;
          --v33;
        }

        while (v33);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 17:
      while (1)
      {
        v53 = v144;
        do
        {
          if (*v24)
          {
            v54 = *(v20 + 4 * *v24);
            if (v54)
            {
              if (v6)
              {
                v55 = *v22;
                if (!*v22)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                LOBYTE(v55) = -1;
              }

              v54 = PDAlightenPDA_21876(*v22, v55, v54, v54);
LABEL_132:
              *v22 = v54;
            }
          }

          ++v24;
          ++v22;
          --v53;
        }

        while (v53);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 18:
      while (1)
      {
        v65 = v144;
        do
        {
          if (*v24)
          {
            v66 = *(v20 + 4 * *v24);
            if (v66)
            {
              if (v6)
              {
                v67 = *v22;
                if (!*v22)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                LOBYTE(v67) = -1;
              }

              v66 = PDAcolordodgePDA_21878(*v22, v67, v66, v66);
LABEL_180:
              *v22 = v66;
            }
          }

          ++v24;
          ++v22;
          --v65;
        }

        while (v65);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 19:
      while (1)
      {
        v74 = v144;
        do
        {
          if (*v24)
          {
            v75 = *(v20 + 4 * *v24);
            if (v75)
            {
              if (v6)
              {
                v76 = *v22;
                if (!*v22)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                LOBYTE(v76) = -1;
              }

              v75 = PDAcolorburnPDA_21879(*v22, v76, v75, v75);
LABEL_216:
              *v22 = v75;
            }
          }

          ++v24;
          ++v22;
          --v74;
        }

        while (v74);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 20:
      while (1)
      {
        v56 = v144;
        do
        {
          if (*v24)
          {
            v57 = *(v20 + 4 * *v24);
            if (v57)
            {
              if (v6)
              {
                v58 = *v22;
                if (!*v22)
                {
                  goto LABEL_144;
                }
              }

              else
              {
                LOBYTE(v58) = -1;
              }

              v57 = PDAsoftlightPDA_21881(*v22, v58, v57, v57);
LABEL_144:
              *v22 = v57;
            }
          }

          ++v24;
          ++v22;
          --v56;
        }

        while (v56);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 21:
      while (1)
      {
        v59 = v144;
        do
        {
          if (*v24)
          {
            v60 = *(v20 + 4 * *v24);
            if (v60)
            {
              if (v6)
              {
                v61 = *v22;
                if (!*v22)
                {
                  goto LABEL_156;
                }
              }

              else
              {
                LOBYTE(v61) = -1;
              }

              v60 = PDAhardlightPDA_21880(*v22, v61, v60, v60);
LABEL_156:
              *v22 = v60;
            }
          }

          ++v24;
          ++v22;
          --v59;
        }

        while (v59);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 22:
      while (1)
      {
        v71 = v144;
        do
        {
          if (*v24)
          {
            v72 = *(v20 + 4 * *v24);
            if (v72)
            {
              if (v6)
              {
                v73 = *v22;
                if (!*v22)
                {
                  goto LABEL_204;
                }
              }

              else
              {
                LOBYTE(v73) = -1;
              }

              v72 = PDAdifferencePDA_21882(*v22, v73, v72, v72);
LABEL_204:
              *v22 = v72;
            }
          }

          ++v24;
          ++v22;
          --v71;
        }

        while (v71);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 23:
      while (1)
      {
        v77 = v144;
        do
        {
          if (*v24)
          {
            v78 = *(v20 + 4 * *v24);
            if (v78)
            {
              if (v6)
              {
                v79 = *v22;
                if (!*v22)
                {
                  goto LABEL_228;
                }
              }

              else
              {
                LOBYTE(v79) = -1;
              }

              v78 = PDAexclusionPDA_21883(*v22, v79, v78, v78);
LABEL_228:
              *v22 = v78;
            }
          }

          ++v24;
          ++v22;
          --v77;
        }

        while (v77);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 24:
      while (1)
      {
        v44 = v144;
        do
        {
          if (*v24)
          {
            v45 = *(v20 + 4 * *v24);
            if (v45)
            {
              if (v6)
              {
                v46 = *v22;
                if (!*v22)
                {
                  goto LABEL_96;
                }
              }

              else
              {
                LOBYTE(v46) = -1;
              }

              v45 = PDAhuePDA_21884(*v22, v46, v45, v45);
LABEL_96:
              *v22 = v45;
            }
          }

          ++v24;
          ++v22;
          --v44;
        }

        while (v44);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 25:
      while (1)
      {
        v41 = v144;
        do
        {
          if (*v24)
          {
            v42 = *(v20 + 4 * *v24);
            if (v42)
            {
              if (v6)
              {
                v43 = *v22;
                if (!*v22)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                LOBYTE(v43) = -1;
              }

              v42 = PDAsaturationPDA_21885(*v22, v43, v42, v42);
LABEL_84:
              *v22 = v42;
            }
          }

          ++v24;
          ++v22;
          --v41;
        }

        while (v41);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 26:
      while (1)
      {
        v86 = v144;
        do
        {
          if (*v24)
          {
            v87 = *(v20 + 4 * *v24);
            if (v87)
            {
              if (v6)
              {
                v88 = *v22;
                if (!*v22)
                {
                  goto LABEL_264;
                }
              }

              else
              {
                LOBYTE(v88) = -1;
              }

              v87 = PDAluminosityPDA_21886(v87, v87, *v22, v88);
LABEL_264:
              *v22 = v87;
            }
          }

          ++v24;
          ++v22;
          --v86;
        }

        while (v86);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 27:
      while (1)
      {
        v30 = v144;
        do
        {
          if (*v24)
          {
            v31 = *(v20 + 4 * *v24);
            if (v31)
            {
              if (v6)
              {
                v32 = *v22;
                if (!*v22)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                LOBYTE(v32) = -1;
              }

              v31 = PDAluminosityPDA_21886(*v22, v32, v31, v31);
LABEL_39:
              *v22 = v31;
            }
          }

          ++v24;
          ++v22;
          --v30;
        }

        while (v30);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 28:
      while (1)
      {
        v80 = v144;
        do
        {
          if (*v24)
          {
            v81 = *(v20 + 4 * *v24);
            if (v81)
            {
              if (v6)
              {
                v82 = *v22;
                if (!*v22)
                {
                  goto LABEL_240;
                }
              }

              else
              {
                LOBYTE(v82) = -1;
              }

              v81 = PDAtranspose_huePDA_21887(*v22, v82, v81, v81);
LABEL_240:
              *v22 = v81;
            }
          }

          ++v24;
          ++v22;
          --v80;
        }

        while (v80);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 29:
      while (1)
      {
        v83 = v144;
        do
        {
          if (*v24)
          {
            v84 = *(v20 + 4 * *v24);
            if (v84)
            {
              if (v6)
              {
                v85 = *v22;
                if (!*v22)
                {
                  goto LABEL_252;
                }
              }

              else
              {
                LOBYTE(v85) = -1;
              }

              v84 = PDAtranspose_saturationPDA_21888(*v22, v85, v84, v84);
LABEL_252:
              *v22 = v84;
            }
          }

          ++v24;
          ++v22;
          --v83;
        }

        while (v83);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 30:
      while (1)
      {
        v68 = v144;
        do
        {
          if (*v24)
          {
            v69 = *(v20 + 4 * *v24);
            if (v69)
            {
              if (v6)
              {
                v70 = *v22;
                if (!*v22)
                {
                  goto LABEL_192;
                }
              }

              else
              {
                LOBYTE(v70) = -1;
              }

              v69 = PDAtranspose_luminosityPDA_21889(v69, v69, *v22, v70);
LABEL_192:
              *v22 = v69;
            }
          }

          ++v24;
          ++v22;
          --v68;
        }

        while (v68);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 31:
      break;
    default:
      return;
  }

LABEL_112:
  v50 = v144;
  while (1)
  {
    if (!*v24)
    {
      goto LABEL_121;
    }

    v51 = *(v20 + 4 * *v24);
    if (!v51)
    {
      goto LABEL_121;
    }

    if (v6)
    {
      v52 = *v22;
      if (!*v22)
      {
        goto LABEL_120;
      }
    }

    else
    {
      LOBYTE(v52) = -1;
    }

    v51 = PDAtranspose_luminosityPDA_21889(*v22, v52, v51, v51);
LABEL_120:
    *v22 = v51;
LABEL_121:
    ++v24;
    ++v22;
    if (!--v50)
    {
      v24 += v25;
      v22 += v26;
      if (!--v4)
      {
        return;
      }

      goto LABEL_112;
    }
  }
}

UInt8 *CGGlyphBitmapCreateWithPathAndDilation(UInt8 *cf, int a2, uint64_t a3, uint64_t a4, double *a5, double a6, double a7)
{
  v8 = a4;
  v11 = cf;
  v43 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x982) != 0)
  {
    if (cf)
    {
      if ((CGPathDisableTypeValidation & 1) != 0 || (v13 = CFGetTypeID(cf), v13 == CGPathGetTypeID()))
      {
        v14 = malloc_type_malloc(0x60uLL, 0x1020040E03F46FBuLL);
        *(v14 + 8) = 0u;
        *(v14 + 24) = 0u;
        *(v14 + 40) = vdupq_n_s64(0x47EFFFFFE0000000uLL);
        *(v14 + 56) = vdupq_n_s64(0xC7EFFFFFE0000000);
        *(v14 + 18) = 1032805417;
        *(v14 + 5) = xmmword_18439CF70;
        *v14 = malloc_type_malloc(0x780uLL, 0x1000040504FFAC1uLL);
        operator new();
      }

      return 0;
    }
  }

  else if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) == 0)
    {
      v15 = CFGetTypeID(cf);
      if (v15 != CGPathGetTypeID())
      {
        return 0;
      }
    }

    font_info = get_font_info(a3);
    if (!font_info)
    {
      return 0;
    }

    v17 = font_info[2];
    if (!v17)
    {
      return 0;
    }

    v18 = vmul_s32(vdup_n_s32(v17), 0x64FFFFFF9CLL);
    v19.i64[0] = v18.i32[0];
    v19.i64[1] = v18.i32[1];
    info = vcvtq_f64_s64(v19);
    v39 = CGAffineTransformIdentity;
    AutohintTransform = 0;
    aa_create();
    v41 = v20;
    v21 = aa_free_edges(v20);
    if ((v8 & 0x400) != 0)
    {
      operator new();
    }

    if (a3)
    {
      v22 = *(a3 + 104);
      if (v22 < 0)
      {
        v22 = (*(*(a3 + 16) + 144))(*(a3 + 112), v21);
        *(a3 + 104) = v22;
      }

      if (v22 && (a2 & 0xFF000000) == 0)
      {
        Autohinter = CGFontGetAutohinter(a3);
        AutohintTransform = CGFontAutohinterCreateAutohintTransform(Autohinter, a5, 0, 0.0);
      }
    }

    CGPathApply(v11, &info, process_path_element_15304);
    v25 = v41;
    v26 = v41->i32[0];
    v27 = v41->i32[2];
    if (v27 - v41->i32[0] < 31 || (v28 = v41->i32[1], v29 = v41->i32[3], v29 - v28 <= 30))
    {
      v11 = CGGlyphBitmapCreate(a2, v8, 0, 0, 0, 0, 0, 0);
    }

    else
    {
      v30 = (v29 + 4095) >> 12;
      v31 = ((v27 + 4095) >> 12) - (v26 >> 12);
      v32 = v30 - (v28 >> 12);
      v33 = v31 + 15;
      v34 = CGGlyphBitmapCreate(a2, v8 | 1u, v26 >> 12, v30, v31, v32, (v31 + 15) & 0xFFFFFFFFFFFFFFF0, 0);
      v11 = v34;
      if (v34)
      {
        v35 = (v8 & 1) != 0 ? 2 : 34;
        aa_cache_render(v25, v35, (v34 + 40), v33 & 0xFFFFFFFFFFFFFFF0);
        if (default_glyph_bitmap_debugging == 1)
        {
          bzero(v42, 0x400uLL);
          __sprintf_chk(v42, 0, 0x400uLL, "*/bitmap_image.%03d.tiff", ++create_bitmap_count);
          CGGlyph8BitBitmapSaveAsImage(v31, v32, v33 & 0xFFFFFFFFFFFFFFF0, v11 + 40, v42);
        }
      }
    }

    v36 = v41;
    if (v41)
    {
      aa_free_edges(v41);
      free(v36);
    }

    v37 = AutohintTransform;
    if (AutohintTransform && atomic_fetch_add_explicit(AutohintTransform, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v37);
    }
  }

  return v11;
}

_DWORD *CGGlyphBitmapCreate(int a1, int a2, int a3, int a4, uint64_t a5, unint64_t a6, unint64_t a7, const void *a8)
{
  v9 = a5;
  if (a7)
  {
    v14 = 0;
    if ((a6 | a5) >> 16)
    {
      return v14;
    }

    v15 = a7;
    if (0xFFFFFFFFFFFFFFD7 / a7 < a6)
    {
      return v14;
    }

    v16 = 2;
    v17 = 1;
    if ((a2 & 0x980) != 0)
    {
      v17 = 2;
    }

    if ((a2 & 2) == 0)
    {
      v16 = v17;
    }

    v18 = 1;
    if ((a2 & 0x401) != 0)
    {
      v18 = v16;
    }

    if (v18 * a5 > a7)
    {
      return 0;
    }
  }

  else
  {
    if ((a6 | a5) >> 16)
    {
      return 0;
    }

    v19 = 2;
    v20 = 1;
    if ((a2 & 0x980) != 0)
    {
      v20 = 2;
    }

    if ((a2 & 2) == 0)
    {
      v19 = v20;
    }

    v21 = 1;
    if ((a2 & 0x401) != 0)
    {
      v21 = v19;
    }

    v15 = (v21 * a5 + 15) & 0x7FFF0;
  }

  v22 = 1;
  v23 = malloc_type_calloc(1uLL, v15 * a6 + 40, 0x10000400A747E1EuLL);
  v14 = v23;
  if (v23)
  {
    *v23 = 1;
    v23[1] = a1;
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = a4;
    v23[5] = v9;
    v23[6] = a6;
    if ((a2 & 0x401) != 0)
    {
      v22 = 16;
      v24 = a8;
      if ((a2 & 2) == 0)
      {
        if ((a2 & 0x980) != 0)
        {
          v22 = 16;
        }

        else
        {
          v22 = 8;
        }
      }
    }

    else
    {
      v24 = a8;
    }

    v23[7] = v22;
    v23[8] = v15;
    v23[9] = atomic_fetch_add_explicit(CGGlyphBitmapCreate_generation, 1u, memory_order_relaxed) + 1;
    if (v24)
    {
      memcpy(v23 + 10, v24, v15 * a6);
    }
  }

  return v14;
}

void aa_cache_render(int32x4_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v170 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v5 = a1->i32[0];
    v6 = a1->i32[1];
    v7 = a1->i32[2];
    v8 = a1->i32[3];
    v9 = v7 - a1->i32[0] < 31 || v8 - v6 < 31;
    if (!v9 && 24 * a1[11].i32[2] + 44 >= 1)
    {
      v159 = a4;
      v161 = v6;
      v12 = v6 >> 12;
      LODWORD(v160) = v8 + 4095;
      v13 = (v8 + 4095) >> 12;
      v14 = v13 - (v6 >> 12);
      v154 = (v5 >> 12);
      v15 = ((v7 + 4095) >> 12) - v154;
      if (v15 > 1015)
      {
        v18 = malloc_type_malloc(4 * (v15 + 16), 0x100004052888210uLL);
        v162 = v18;
      }

      else
      {
        MEMORY[0x1EEE9AC00](a1);
        v162 = &v152[-v16];
        bzero(&v152[-v16], v17);
        v18 = 0;
      }

      v158 = v18;
      if (v14 > 1015)
      {
        v19 = 8 * (v14 + 16);
        v21 = malloc_type_malloc(v19, 0x80040B8603338uLL);
        v157 = v21;
      }

      else
      {
        v19 = 8 * (v14 + 16);
        MEMORY[0x1EEE9AC00](v18);
        v21 = &v152[-v20];
        bzero(&v152[-v20], v19);
        v157 = 0;
      }

      v153 = v14;
      bzero(v162, 4 * (v15 + 16));
      bzero(v21, v19);
      v22 = (v21 + 32);
      v23 = &v22[-v12];
      v156 = a2;
      v155 = v15;
      if ((a2 & 0x10) != 0 && v15 <= 23 && a1[11].i16[6])
      {
        v163 = &v163;
        v164 = &v163;
        v24 = *a1;
        v25 = vaddq_s32(*a1, xmmword_18439CDB0);
        v165 = vuzp1q_s32(v25, vrev64q_s32(v25));
        v26 = a1[12].i64[0];
        if (v26)
        {
          v27 = v13 + 8;
          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          do
          {
            v28 = (96 * (*(v26 + 12) - 1)) | 0x18;
            do
            {
              v29 = v26 + v28;
              if (!*(v26 + v28 + 47))
              {
                v30 = *(v29 + 16);
                for (i = v164; ; i = i[1])
                {
                  v32 = *(i + 4);
                  if (v30 >= v32)
                  {
                    break;
                  }
                }

                v33 = *(v29 + 28) - *(v29 + 24);
                if (v30 <= v32)
                {
                  if (v33 <= *(i + 17))
                  {
                    *(v29 + 68) = v33;
                    *(v29 + 56) = i[7];
                    i[7] = v29;
                  }

                  else
                  {
                    v35 = *i;
                    v36 = i[1];
                    *i = 0;
                    i[1] = 0;
                    *v29 = v35;
                    *(v29 + 8) = v36;
                    *(v35 + 8) = v29;
                    *v36 = v29;
                    *(v29 + 68) = v33;
                    *(v29 + 56) = i;
                  }
                }

                else
                {
                  v34 = *i;
                  *v29 = *i;
                  *(v29 + 8) = i;
                  *(v34 + 8) = v29;
                  *i = v29;
                  *(v29 + 68) = v33;
                  *(v29 + 56) = 0;
                }
              }

              v9 = v28 < 120;
              v28 -= 96;
            }

            while (!v9);
            v26 = *v26;
          }

          while (v26);
          v37 = v163;
          v38 = v164;
          if (v163 == v164)
          {
            goto LABEL_67;
          }

          v39 = *(v163 + 4);
          v40 = *(v164 + 4);
          if (v39 < v40)
          {
            v41 = 4096;
            v42 = 4096;
            v43 = v164;
            v44 = v163;
            do
            {
              v45 = *(v38 + 4);
              if (v39 >= v45)
              {
                goto LABEL_41;
              }

              v46 = v44;
              while (1)
              {
                v47 = *(v46 + 17);
                if (v47 >= v42)
                {
                  break;
                }

                v46 = *v46;
                if (*(v46 + 4) >= v45)
                {
                  v44 = v46;
                  goto LABEL_41;
                }
              }

              v42 = v47 + 4095;
              v44 = *v46;
              v37 = v46;
              while (1)
              {
LABEL_41:
                if (v40 <= *(v37 + 4))
                {
                  v49 = v43;
                  goto LABEL_46;
                }

                v48 = *(v43 + 17);
                if (v48 >= v41)
                {
                  break;
                }

                v43 = v43[1];
                v40 = *(v43 + 4);
              }

              v41 = v48 + 4095;
              v49 = v43[1];
              v40 = *(v49 + 4);
              v38 = v43;
LABEL_46:
              v39 = *(v44 + 4);
              v43 = v49;
            }

            while (v39 < v40);
            v39 = *(v37 + 4);
          }

          if (*(v37 + 17) < 0x2000)
          {
LABEL_67:
            v54 = 0;
          }

          else
          {
            v50 = v24.i16[0] & 0xFFF;
            v51 = v39 & 0xFFF;
            v53 = v24.i32[0] > 0 || v39 > 4095;
            if (v51 <= v50 && v53)
            {
              v54 = -v51;
            }

            else
            {
              v150 = 2048 - (v24.i16[4] & 0xFFF);
              v54 = 4096 - v51;
              if ((4096 - v51) > v150)
              {
                v151 = !v53;
                if ((v51 - v50) >= (4096 - v51 - v150))
                {
                  v151 = 1;
                }

                if (v151)
                {
                  if (v51 <= 0x800)
                  {
                    v54 = 0;
                  }

                  else
                  {
                    v54 = 2048 - (v24.i16[4] & 0xFFF);
                  }
                }

                else
                {
                  v54 = -v50;
                }
              }
            }
          }

          v61 = a1[12].i64[0];
          if (v61)
          {
            v62 = vdup_n_s32(v54);
            do
            {
              v63 = 96 * (*(v61 + 12) - 1) + 120;
              do
              {
                v64 = v61 + v63;
                v65 = *(v61 + v63 - 72) >> 12;
                if (v65 >= v27)
                {
                  CGPostError("%s; index %d out of bounds; max_index = %d", "aa_cache_adjust_edges", *(v61 + v63 - 72) >> 12, v27);
                }

                else
                {
                  *(v64 - 96) = v23[v65];
                  v23[v65] = (v64 - 96);
                  *(v64 - 80) = vadd_s32(*(v64 - 80), v62);
                }

                v63 -= 96;
              }

              while (v63 >= 120);
              v61 = *v61;
            }

            while (v61);
          }
        }
      }

      else
      {
        v55 = a1[12].i64[0];
        if (v55)
        {
          v56 = v13 + 8;
          do
          {
            v57 = 96 * (*(v55 + 12) - 1);
            do
            {
              v58 = v55 + v57;
              v59 = *(v55 + v57 + 48) >> 12;
              if (v59 >= v56)
              {
                CGPostError("%s; index %d out of bounds; max_index = %d", "aa_cache_edges", *(v55 + v57 + 48) >> 12, v56);
              }

              else
              {
                *(v58 + 24) = v23[v59];
                v23[v59] = (v58 + 24);
              }

              v60 = v57 + 24;
              v57 -= 96;
            }

            while (v60 >= 120);
            v55 = *v55;
          }

          while (v55);
        }
      }

      a1[12].i64[1] = 0;
      a1[13].i64[0] = 0;
      v66 = &a1[12].i64[1];
      v67 = v161 & 0xFFFFF000;
      v161 = v160 & 0xFFFFF000;
      if (v67 < (v160 & 0xFFFFF000))
      {
        v68 = (a3 + (v153 - 1) * v159);
        v69 = &v162[(-(v162 - 2 * v154 + 8 + 2 * v154) & 0x1FLL) + 8 + -2 * v154];
        if ((v156 & 0x20) != 0)
        {
          v70 = 0;
        }

        else
        {
          v70 = 255;
        }

        v160 = -v159;
        v159 = &v69[2 * v154 - 2];
        v71 = v155 >> 2;
        v72 = vdupq_n_s32(v70);
        LODWORD(v162) = v155 & 3;
        do
        {
          v73 = 0;
          v74 = v67;
          v75 = *v22;
          v67 += 4096;
          for (j = *v66; ; j = 0)
          {
            v77 = j;
            if (v75)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    v78 = v75;
                    v75 = *v75;
                    v79 = *(v78 + 22);
                    v80 = v79 == 0xFFFF;
                    if (v79 == 0xFFFF)
                    {
                      v81 = 20;
                    }

                    else
                    {
                      v81 = 16;
                    }

                    v83 = *(v78 + 6);
                    v82 = *(v78 + 7);
                    if (v80)
                    {
                      v84 = *(v78 + 7);
                    }

                    else
                    {
                      v84 = *(v78 + 6);
                    }

                    if (v80)
                    {
                      v85 = 16;
                    }

                    else
                    {
                      v85 = 20;
                    }

                    if (v80)
                    {
                      v86 = *(v78 + 6);
                    }

                    else
                    {
                      v86 = *(v78 + 7);
                    }

                    if (v82 > v67)
                    {
                      *v78 = v73;
                      v73 = v78;
                    }

                    if (v83 == v82)
                    {
                      goto LABEL_146;
                    }

                    v87 = *(v78 + v85);
                    v88 = *(v78 + v81);
                    v89 = v84 - v74;
                    v90 = v86 - v74;
                    if (v87 != v88)
                    {
                      break;
                    }

                    if (v89 >= 0xFFF)
                    {
                      v91 = 4095;
                    }

                    else
                    {
                      v91 = v84 - v74;
                    }

                    if (v89 >= 0)
                    {
                      v92 = v91;
                    }

                    else
                    {
                      v92 = 0;
                    }

                    if (v90 >= 0xFFF)
                    {
                      v93 = 4095;
                    }

                    else
                    {
                      v93 = v86 - v74;
                    }

                    if (v90 >= 0)
                    {
                      v94 = v93;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    v95 = v94 - v92;
                    v96 = &v69[2 * (v87 >> 12)];
                    v97 = v95 * (4096 - (v87 & 0xFFF));
                    v98 = *(v96 + 1) + v95 - (v97 >> 12);
                    *v96 += v97 >> 12;
                    *(v96 + 1) = v98;
                    if (!v75)
                    {
                      goto LABEL_169;
                    }
                  }

                  v100 = v78 + 4;
                  v99 = *(v78 + 8);
                  v101 = *(v100 + 1);
                  if (v86 <= v84)
                  {
                    break;
                  }

                  if ((v89 & 0x80000000) == 0)
                  {
                    if (v90 > 4096)
                    {
                      if (v89 > 0xFFF)
                      {
                        goto LABEL_146;
                      }

LABEL_127:
                      v87 += (v101 * (4096 - v90)) >> 12;
                      v90 = 4096;
                      goto LABEL_128;
                    }

                    goto LABEL_128;
                  }

                  if (v90 >= 1)
                  {
                    v89 = 0;
                    v88 += ((v74 - v84) * v101) >> 12;
                    if (v90 > 0x1000)
                    {
                      goto LABEL_127;
                    }

                    goto LABEL_128;
                  }

LABEL_146:
                  if (!v75)
                  {
                    goto LABEL_169;
                  }
                }

                if (v89 <= 4096)
                {
                  if ((v90 & 0x80000000) == 0)
                  {
                    goto LABEL_128;
                  }

                  if (v89 >= 1)
                  {
LABEL_124:
                    v90 = 0;
                    v87 += (v101 * (v74 - v86)) >> 12;
                    goto LABEL_128;
                  }

                  goto LABEL_146;
                }

                if (v90 > 4095)
                {
                  goto LABEL_146;
                }

                v88 += (v101 * (4096 - v89)) >> 12;
                v89 = 4096;
                if (v90 < 0)
                {
                  goto LABEL_124;
                }

LABEL_128:
                v102 = v88 >> 12;
                if (v88 >> 12 == v87 >> 12)
                {
                  v103 = v87 - v88;
                  if (v87 - v88 < 0)
                  {
                    v103 = v88 - v87;
                  }

                  if (v87 <= v88)
                  {
                    v104 = v88;
                  }

                  else
                  {
                    v104 = v87;
                  }

                  v105 = &v69[2 * ((v88 + v87) >> 13)];
                  v106 = v90 - v89;
                  v107 = ((v103 - 2 * (v104 & 0xFFFu) + 0x2000) * v106) >> 13;
                  LOWORD(v106) = *(v105 + 1) + v106 - v107;
                  *v105 += v107;
                  *(v105 + 1) = v106;
                  if (!v75)
                  {
                    break;
                  }
                }

                else
                {
                  v108 = v87 >> 12;
                  if ((v102 - v108) * (v102 - v108) == 1)
                  {
                    v109 = v87 < v88;
                    if (v87 >= v88)
                    {
                      v110 = v88;
                    }

                    else
                    {
                      v110 = v87;
                    }

                    if (v87 <= v88)
                    {
                      LOWORD(v87) = v88;
                    }

                    if (v109)
                    {
                      v111 = -v99;
                    }

                    else
                    {
                      v111 = v99;
                    }

                    v112 = v90 - v89;
                    v113 = 4096 - (v110 & 0xFFF);
                    v114 = v113 * v111;
                    v115 = &v69[2 * (v110 >> 12)];
                    v116 = (v114 >> 12) * v113;
                    v117 = (v112 - (v114 >> 12)) * (v87 & 0xFFF);
                    v118 = *(v115 + 2);
                    v119 = *(v115 + 1) + v112 - ((v116 >> 13) + (v117 >> 13));
                    *v115 += v116 >> 13;
                    *(v115 + 1) = v119;
                    *(v115 + 2) = v118 + (v117 >> 13);
                    goto LABEL_146;
                  }

                  v120 = v87 < v88;
                  if (v87 < v88)
                  {
                    v121 = v87;
                  }

                  else
                  {
                    v121 = v88;
                  }

                  if (v87 >= v88)
                  {
                    LOWORD(v88) = v87;
                  }

                  if (v120)
                  {
                    v122 = -v99;
                  }

                  else
                  {
                    v122 = v99;
                  }

                  if (v120)
                  {
                    v123 = v108;
                  }

                  else
                  {
                    v123 = v102;
                  }

                  if (v120)
                  {
                    v108 = v102;
                  }

                  v124 = 4096 - (v121 & 0xFFF);
                  v125 = (v124 * v122) >> 12;
                  v126 = &v69[2 * v123];
                  v127 = v125 * v124;
                  v128 = v125 + (v122 >> 1);
                  v130 = *(v126 + 1);
                  v129 = v126 + 2;
                  *v126 += v127 >> 13;
                  *(v126 + 1) = v130 + v128 - (v127 >> 13);
                  v131 = v108 + ~v123;
                  if (v131 < 1)
                  {
                    v134 = 0;
                    v129 = v126;
                  }

                  else
                  {
                    if (v131 != 1)
                    {
                      v132 = v108 - v123;
                      do
                      {
                        v133 = *(v129 + 1);
                        v129 += 2;
                        LOWORD(v128) = v128 + v122;
                        *v129 = v133 + v122;
                        --v132;
                      }

                      while (v132 > 2);
                    }

                    v134 = v122;
                  }

                  v135 = v134 - (((((4096 - (v88 & 0xFFF)) * v122) >> 12) * (4096 - (v88 & 0xFFF))) >> 13);
                  v136 = *(v129 + 2);
                  *(v129 + 1) += v135;
                  *(v129 + 2) = v136 + v90 - (v89 + v128) - v135;
                  if (!v75)
                  {
                    break;
                  }
                }
              }
            }

LABEL_169:
            if (!v77)
            {
              break;
            }

            *v66 = 0;
            v75 = v77;
          }

          *v66 = v73;
          v137 = 0uLL;
          if (v71 < 1)
          {
            v140 = v68;
            v139 = v159;
          }

          else
          {
            v138 = v71;
            v139 = v159;
            v140 = v68;
            do
            {
              v141 = *(v139 + 2);
              *(v139 + 2) = 0;
              v139 += 8;
              v142 = vaddw_s16(vshlq_n_s64(vmovl_s16(v141), 0x20uLL), v141);
              v142.u64[1] = vadd_s32(*&vextq_s8(v142, v142, 8uLL), vdup_lane_s32(*v142.i8, 1));
              v143 = vaddq_s32(v142, v137);
              v144 = vmaxq_s32(vshrq_n_s32(vabsq_s32(v143), 4uLL), 0);
              *v140++ = vuzp1_s8(vmovn_s32(vorrq_s8(v144, vcgtq_s32(v144, v72))), *v72.i8).u32[0];
              v137 = vdupq_laneq_s32(v143, 3);
              --v138;
            }

            while (v138);
          }

          if (v162)
          {
            v145 = v137.i32[0];
            v146 = (v139 + 2);
            v147 = v162;
            do
            {
              v145 += *v146;
              *v146++ = 0;
              if (v145 >= 0)
              {
                v148 = v145;
              }

              else
              {
                v148 = -v145;
              }

              v149 = v148 >> 4;
              if (v149 > v70)
              {
                LOBYTE(v149) = -1;
              }

              *v140 = v149;
              v140 = (v140 + 1);
              --v147;
            }

            while (v147);
          }

          v68 = (v68 + v160);
          ++v22;
        }

        while (v67 < v161);
      }

      if (v158)
      {
        free(v158);
      }

      if (v157)
      {
        free(v157);
      }
    }
  }
}