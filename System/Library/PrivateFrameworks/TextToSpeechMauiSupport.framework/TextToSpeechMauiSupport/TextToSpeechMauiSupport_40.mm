uint64_t tag_label_sparse(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 6);
  v195 = 0;
  v196[0] = 0;
  v10 = 2585796618;
  v194 = 0;
  if (!a4)
  {
    v10 = 2585796615;
    if (a5)
    {
      *a5 = 0;
    }

    return v10;
  }

  v11 = a4;
  v186 = v9;
  *a4 = 0;
  if (!a5)
  {
    return 2585796615;
  }

  v15 = a1;
  *a5 = 0;
  v16 = a1[14];
  if (*(a1 + 9))
  {
    v17 = rdr_readraw_qp(v16, a2, a3, v196);
    if ((v17 & 0x80000000) == 0)
    {
      if (v196[0])
      {
        v18 = rdr_raw2seq_qp(v16, v196[0], *(v15 + 3) | (*(v15[14] + 56) != 0), &v195);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_21:
        LODWORD(v26) = 0;
        v10 = v18;
        goto LABEL_245;
      }

      return 2585796615;
    }

    return v17;
  }

  v17 = rdr_readraw(v16, a2, a3, v196);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (!v196[0])
  {
    return 2585796615;
  }

  v18 = rdr_raw2seq(v16, v196[0], *(v15 + 3) | (*(v15[14] + 56) != 0), &v195);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  v172 = v11;
  v173 = *v195;
  v19 = v186;
  v20 = heap_Alloc(*(v8 + 8), 4 * v186 * v173);
  v21 = heap_Alloc(*(v8 + 8), 4 * v186 * v173);
  v22 = heap_Alloc(*(v8 + 8), 4 * v186);
  v23 = v22;
  v185 = v20;
  v179 = v21;
  if (v20)
  {
    v24 = v21 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24 || v22 == 0)
  {
    v11 = v172;
    LODWORD(v26) = v173;
    goto LABEL_239;
  }

  v175 = v22;
  v164 = a5;
  v192 = v15;
  v193 = v8;
  if (a6 && a7)
  {
    v27 = *(v15 + 11);
    v28 = heap_Calloc(*(v8 + 8), 1, 4 * v27 * a3);
    *(v195 + 2) = v28;
    v11 = v172;
    if (!v28)
    {
      LODWORD(v26) = v173;
      v23 = v175;
      goto LABEL_240;
    }

    if (*(v15 + 9))
    {
      if (a3)
      {
        v29 = 0;
        v30 = 0;
        v31 = a3;
        do
        {
          v32 = *(a7 + 4 * v30);
          if (v32)
          {
            v33 = 0;
            v34 = 0;
            do
            {
              qp_str2id(v193, *(*(v192 + 112) + 40), *(*(a6 + 8 * v30) + 8 * v33), &v194, 0);
              if (v194 != -1)
              {
                *(*(v195 + 2) + 4 * (v194 + v27 * v30)) = 1;
                ++v34;
              }

              ++v33;
            }

            while (v33 < *(a7 + 4 * v30));
            LOBYTE(v32) = v34 != 0;
            v15 = v192;
            v19 = v186;
          }

          if ((v32 & 1) == 0 && v27)
          {
            v35 = *(v195 + 2);
            v36 = v27;
            v37 = v29;
            do
            {
              *(v35 + 4 * v37++) = 1;
              --v36;
            }

            while (v36);
          }

          ++v30;
          v29 += v27;
        }

        while (v30 != v31);
      }
    }

    else if (a3)
    {
      v38 = 0;
      v39 = 0;
      v40 = a3;
      do
      {
        v41 = *(a7 + 4 * v39);
        if (v41)
        {
          v42 = 0;
          v43 = 0;
          do
          {
            qrk_str2id(v193, *(*(v192 + 112) + 40), *(*(a6 + 8 * v39) + 8 * v42), &v194, 0);
            if (v194 != -1)
            {
              *(*(v195 + 2) + 4 * (v194 + v27 * v39)) = 1;
              ++v43;
            }

            ++v42;
          }

          while (v42 < *(a7 + 4 * v39));
          LOBYTE(v41) = v43 != 0;
          v15 = v192;
          v19 = v186;
        }

        if ((v41 & 1) == 0 && v27)
        {
          v44 = *(v195 + 2);
          v45 = v27;
          v46 = v38;
          do
          {
            *(v44 + 4 * v46++) = 1;
            --v45;
          }

          while (v45);
        }

        ++v39;
        v38 += v27;
      }

      while (v39 != v40);
    }
  }

  v47 = v195;
  v48 = *v15;
  v49 = *(v15 + 11);
  v50 = *v195;
  v51 = xvm_new(*v15, v49 * v49 * v50);
  v52 = *(v48 + 8);
  v174 = v50;
  if (v19 != 1)
  {
    v63 = heap_Alloc(v52, 4 * v186 * v49 * v50);
    v64 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v65 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v66 = v65;
    if (v51)
    {
      v67 = v63 == 0;
    }

    else
    {
      v67 = 1;
    }

    if (v67 || v64 == 0 || v65 == 0)
    {
      v70 = 0;
      v10 = 2585796618;
      v8 = v193;
      goto LABEL_199;
    }

    v191 = v65;
    v189 = *(v15 + 10);
    v182 = v47;
    if (v189 == 1)
    {
      tag_memmsc_sparse(v15, v47, v51);
      v71 = 1;
    }

    else
    {
      tag_expsc_sparse(v15, v47, v51);
      v71 = 0;
    }

    v8 = v193;
    v94 = v185;
    if (*(v15[14] + 56))
    {
      tag_forced(v15, v182, v51, v71);
    }

    v95 = v174;
    if (v49)
    {
      v96 = 0;
      v97 = 0;
      do
      {
        *(v64 + 4 * v97) = v51[v96];
        v98 = v97 + 1;
        if (v19)
        {
          v99 = v97 + v19;
          v100 = v19 - 1;
          do
          {
            *(v64 + 4 * v98++) = 0x80000000;
            --v100;
          }

          while (v100);
          v98 = v99;
        }

        ++v96;
        v97 = v98;
      }

      while (v96 != v49);
    }

    v101 = v179;
    if (v174 >= 2)
    {
      v102 = (v49 * v19);
      v168 = 4 * v102;
      v181 = vdupq_n_s64(v19 - 1);
      v166 = (v19 + 3) & 0x1FFFFFFFCLL;
      v163 = 1;
      v165 = vdupq_n_s64(4uLL);
      v162 = v49 * v19;
      v171 = v48;
      v167 = v102;
      while (1)
      {
        v103 = v64;
        v104 = v191;
        v105 = v102;
        v106 = v102;
        if (v102)
        {
          do
          {
            v107 = *v103++;
            *v104++ = v107;
            --v105;
          }

          while (v105);
        }

        if (v49)
        {
          break;
        }

LABEL_161:
        v162 += v106;
        v95 = v174;
        ++v163;
        v102 = v106;
        v15 = v192;
        v94 = v185;
        if (v163 == v174)
        {
          goto LABEL_162;
        }
      }

      v188 = 0;
      v169 = v163 * v49;
      v184 = v162;
      while (1)
      {
        v108 = heap_Alloc(*(v48 + 8), v168);
        if (!v108)
        {
          break;
        }

        v109 = v108;
        v110 = 0;
        v111 = 0;
        v112 = v49;
        v113 = (v63 + 8 + 4 * v184);
        do
        {
          v114 = v112;
          while (!v19)
          {
            if (!--v114)
            {
              v123 = 0;
              v124 = v63;
              v8 = v193;
              v101 = v179;
              v106 = v167;
              goto LABEL_149;
            }
          }

          v178 = v113;
          v177 = v111 + v19;
          v115 = v19;
          do
          {
            v116 = v191[v111];
            *(v109 + 4 * v111) = v116;
            v117 = v51[(v188 + (v169 + v110) * v49)];
            if (v189 == 1)
            {
              v118 = fix16_mul(v116, v117);
            }

            else
            {
              v118 = fix16_add(v116, v117);
            }

            *(v109 + 4 * v111++) = v118;
            --v115;
          }

          while (v115);
          ++v110;
          --v112;
          v111 = v177;
          v19 = v186;
          v48 = v171;
          v113 = v178;
        }

        while (v110 != v49);
        v119 = 0;
        v124 = (v63 + 4 * ((v169 + v188) * v186));
        v120 = xmmword_26ECC7980;
        v121 = xmmword_26ECCE810;
        v8 = v193;
        v101 = v179;
        v106 = v167;
        do
        {
          v122 = vmovn_s64(vcgeq_u64(v181, v120));
          if (vuzp1_s16(v122, *v120.i8).u8[0])
          {
            *(v113 - 2) = v119;
          }

          if (vuzp1_s16(v122, *&v120).i8[2])
          {
            *(v113 - 1) = v119 + 1;
          }

          if (vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v181, *&v121))).i32[1])
          {
            *v113 = v119 + 2;
            v113[1] = v119 + 3;
          }

          v119 += 4;
          v121 = vaddq_s64(v121, v165);
          v120 = vaddq_s64(v120, v165);
          v113 += 4;
        }

        while (v166 != v119);
        v123 = v186 * v188;
LABEL_149:
        v125 = v19;
        if (v106 > v19)
        {
          do
          {
            v126 = 0;
            if (v19)
            {
              v127 = 1;
              do
              {
                if (*(v109 + 4 * v124[v127]) < *(v109 + 4 * v124[v126]))
                {
                  v126 = v127;
                }

                ++v127;
              }

              while (v19 != v127);
            }

            if (*(v109 + 4 * v125) > *(v109 + 4 * v124[v126]))
            {
              v124[v126] = v125;
            }

            ++v125;
          }

          while (v125 != v106);
        }

        v128 = v19;
        if (v19)
        {
          do
          {
            v129 = *v124++;
            *(v64 + 4 * v123++) = *(v109 + 4 * v129);
            --v128;
          }

          while (v128);
        }

        heap_Free(*(v48 + 8), v109);
        v184 += v19;
        if (++v188 == v49)
        {
          goto LABEL_161;
        }
      }

      v70 = 0;
      v10 = 2585796618;
      v15 = v192;
LABEL_198:
      v66 = v191;
LABEL_199:
      v11 = v172;
      if (v66)
      {
        heap_Free(*(v48 + 8), v66);
      }

      if (v64)
      {
        heap_Free(*(v48 + 8), v64);
      }

      if (v63)
      {
        heap_Free(*(v48 + 8), v63);
      }

      if (v51)
      {
        xvm_free(v48, v51);
      }

      v26 = v173;
      v23 = v175;
      if (!v70)
      {
        goto LABEL_239;
      }

      goto LABEL_208;
    }

LABEL_162:
    if (!v19)
    {
      goto LABEL_178;
    }

    v130 = 0;
    v131 = (v49 * v19);
LABEL_164:
    if (v131 < 2)
    {
      v132 = 0;
    }

    else
    {
      v132 = 0;
      for (i = 1; i != v131; ++i)
      {
        if (*(v64 + 4 * i) > *(v64 + 4 * v132))
        {
          v132 = i;
        }
      }
    }

    v175[v130] = *(v64 + 4 * v132);
    *(v64 + 4 * v132) = 0x80000000;
    for (j = v95; ; v132 = *(v63 + 4 * (v132 + j * v49 * v19)))
    {
      if (j == 1)
      {
        j = 0;
        v135 = 0;
      }

      else
      {
        if (!j)
        {
          if (++v130 == v19)
          {
LABEL_178:
            v10 = 0;
            v70 = 1;
            goto LABEL_198;
          }

          goto LABEL_164;
        }

        v135 = *(v63 + 4 * (v132 + --j * v131)) / v19;
      }

      v136 = v130 + j * v19;
      *(v94 + 4 * v136) = v132 / v19;
      *(v101 + 4 * v136) = v51[v132 / v19 + (v135 + j * v49) * v49];
    }
  }

  v53 = heap_Alloc(v52, 4 * v49 * v50);
  v54 = heap_Alloc(*(v48 + 8), 4 * v49);
  v55 = heap_Alloc(*(v48 + 8), 4 * v49);
  v56 = v55;
  if (v51)
  {
    v57 = v53 == 0;
  }

  else
  {
    v57 = 1;
  }

  v59 = v57 || v54 == 0 || v55 == 0;
  v60 = v59;
  v10 = 2585796618;
  if (v59)
  {
    goto LABEL_187;
  }

  v61 = *(v192 + 40);
  if (v61 == 1)
  {
    tag_memmsc_sparse(v192, v47, v51);
    v62 = 1;
  }

  else
  {
    tag_expsc_sparse(v192, v47, v51);
    v62 = 0;
  }

  if (*(*(v192 + 112) + 56))
  {
    tag_forced(v192, v47, v51, v62);
  }

  v176 = v60;
  v170 = v48;
  if (v49)
  {
    v72 = v51;
    v73 = v54;
    v74 = v49;
    do
    {
      v75 = *v72++;
      *v73++ = v75;
      --v74;
    }

    while (v74);
  }

  v76 = v174;
  if (v174 >= 2)
  {
    v183 = 1;
    v180 = v49 * v49;
    v187 = v54;
    v190 = v53;
    do
    {
      v77 = v54;
      v78 = v56;
      v79 = v49;
      if (v49)
      {
        do
        {
          v80 = *v77++;
          *v78++ = v80;
          --v79;
        }

        while (v79);
        v81 = 0;
        v82 = v180;
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = 0x80000000;
          v86 = v82;
          do
          {
            v87 = *(v56 + 4 * v83);
            v88 = v51[v86];
            if (v61 == 1)
            {
              v89 = fix16_mul(v87, v88);
            }

            else
            {
              v89 = fix16_add(v87, v88);
            }

            if (v89 > v85)
            {
              v85 = v89;
              v84 = v83;
            }

            ++v83;
            v86 += v49;
          }

          while (v49 != v83);
          v54 = v187;
          *(v190 + 4 * (v183 * v49 + v81)) = v84;
          v53 = v190;
          *(v187 + 4 * v81++) = v85;
          ++v82;
        }

        while (v81 != v49);
      }

      v180 += v49 * v49;
      v76 = v174;
      ++v183;
    }

    while (v183 != v174);
  }

  if (v49 < 2)
  {
    v90 = 0;
    v92 = v185;
    v19 = v186;
    v93 = v179;
    v48 = v170;
    v60 = v176;
  }

  else
  {
    v90 = 0;
    v91 = 1;
    v92 = v185;
    v19 = v186;
    v93 = v179;
    v48 = v170;
    v60 = v176;
    do
    {
      if (*(v54 + 4 * v91) > *(v54 + 4 * v90))
      {
        v90 = v91;
      }

      ++v91;
    }

    while (v49 != v91);
  }

  *v175 = *(v54 + 4 * v90);
  while (1)
  {
    v137 = v76 - 1;
    if (v76 != 1)
    {
      break;
    }

    v138 = 0;
    v76 = 0;
    v139 = 0;
LABEL_185:
    *(v92 + 4 * v76) = v90;
    *(v93 + 4 * v76) = v51[v90 + (v139 + v138) * v49];
    v90 = v139;
  }

  if (v76)
  {
    v138 = v137 * v49;
    v139 = *(v53 + 4 * (v137 * v49 + v90));
    v76 = (v76 - 1);
    goto LABEL_185;
  }

  v10 = v76;
LABEL_187:
  if (v56)
  {
    heap_Free(*(v48 + 8), v56);
  }

  v11 = v172;
  v8 = v193;
  if (v54)
  {
    heap_Free(*(v48 + 8), v54);
  }

  v15 = v192;
  if (v53)
  {
    heap_Free(*(v48 + 8), v53);
  }

  if (v51)
  {
    xvm_free(v48, v51);
  }

  v26 = v173;
  v23 = v175;
  if (v60)
  {
    goto LABEL_239;
  }

LABEL_208:
  v140 = heap_Calloc(*(v8 + 8), 8, v26);
  *v11 = v140;
  if (!v140)
  {
LABEL_236:
    v10 = 2585796618;
    goto LABEL_238;
  }

  v141 = v185;
  if (!v26)
  {
LABEL_235:
    v10 = 0;
    *v164 = v26;
    goto LABEL_238;
  }

  v142 = 0;
  v143 = (3 * v19 + 1);
  while (2)
  {
    v144 = heap_Alloc(*(v8 + 8), v143);
    if (!v144)
    {
      goto LABEL_236;
    }

    v145 = v144;
    *v144 = 0;
    if (*(v15 + 9))
    {
      if (v19)
      {
        for (k = 0; k != v19; ++k)
        {
          v147 = qp_id2str(v193, *(*(v192 + 112) + 40), *(v141 + 4 * (v19 * v142 + k)));
          v148 = cstdlib_strlen(v145);
          v149 = cstdlib_strlen(v147);
          v150 = 3 * v19 + 1;
          do
          {
            v151 = v150;
            v150 *= 2;
          }

          while (v151 < v148 + v149 + 2);
          if (v151 <= v143)
          {
            v152 = v145;
          }

          else
          {
            v152 = heap_Realloc(*(v193 + 8), v145, v151);
            if (!v152)
            {
              goto LABEL_237;
            }
          }

          cstdlib_strncat(v152, v147, v149);
          cstdlib_strcat(v152, " ");
          v145 = v152;
          v141 = v185;
        }

LABEL_234:
        *(*v11 + 8 * v142++) = v152;
        LODWORD(v26) = v173;
        v15 = v192;
        v8 = v193;
        if (v142 == v173)
        {
          goto LABEL_235;
        }

        continue;
      }

LABEL_233:
      v152 = v144;
      goto LABEL_234;
    }

    break;
  }

  if (!v19)
  {
    goto LABEL_233;
  }

  v153 = 0;
  while (2)
  {
    v154 = qrk_id2str(v193, *(*(v192 + 112) + 40), *(v141 + 4 * (v19 * v142 + v153)));
    v155 = cstdlib_strlen(v145);
    v156 = cstdlib_strlen(v154);
    v157 = 3 * v19 + 1;
    do
    {
      v158 = v157;
      v157 *= 2;
    }

    while (v158 < v155 + v156 + 2);
    if (v158 <= v143)
    {
      v152 = v145;
LABEL_231:
      cstdlib_strncat(v152, v154, v156);
      cstdlib_strcat(v152, " ");
      ++v153;
      v145 = v152;
      v141 = v185;
      if (v153 == v19)
      {
        goto LABEL_234;
      }

      continue;
    }

    break;
  }

  v152 = heap_Realloc(*(v193 + 8), v145, v158);
  if (v152)
  {
    goto LABEL_231;
  }

LABEL_237:
  v8 = v193;
  heap_Free(*(v193 + 8), v145);
  v10 = 2585796618;
  LODWORD(v26) = v173;
LABEL_238:
  v23 = v175;
LABEL_239:
  if (v23)
  {
LABEL_240:
    heap_Free(*(v8 + 8), v23);
  }

  if (v179)
  {
    heap_Free(*(v8 + 8), v179);
  }

  if (v185)
  {
    heap_Free(*(v8 + 8), v185);
  }

LABEL_245:
  if (v195)
  {
    rdr_freeseq(v8, v195);
  }

  if (v196[0])
  {
    rdr_freeraw(v8, v196[0]);
  }

  if ((v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v159 = *v11;
  if (*v11)
  {
    if (v26)
    {
      v160 = 0;
      do
      {
        heap_Free(*(v8 + 8), *(*v11 + v160));
        v160 += 8;
      }

      while (8 * v26 != v160);
      v159 = *v11;
    }

    heap_Free(*(v8 + 8), v159);
    *v11 = 0;
  }

  return v10;
}

uint64_t tag_memmsc(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 44);
  v5 = *a2;
  tag_expsc(a1, a2, a3);
  result = xvm_expma(a3, a3, 0, v4 * v4 * v5);
  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = 0;
          v12 = v4;
          v13 = v10;
          do
          {
            v11 = fix16_add(v11, a3[v13++]);
            --v12;
          }

          while (v12);
          v14 = v4;
          v15 = v10;
          do
          {
            result = fix16_div(a3[v15], v11);
            a3[v15++] = result;
            --v14;
          }

          while (v14);
          ++v9;
          v10 += v4;
        }

        while (v9 != v4);
      }

      ++v8;
      v7 += v4 * v4;
    }

    while (v8 != v16);
  }

  return result;
}

uint64_t tag_expsc(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = *(result + 80);
  v42 = result;
  v5 = *(result + 44);
  v6 = *a2;
  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v39 = *a2;
  if (v8)
  {
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v5)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = v5;
          v14 = v12;
          do
          {
            *(a3 + 4 * v14) = 0x80000000;
            v14 += v5;
            --v13;
          }

          while (v13);
          ++v11;
          ++v12;
        }

        while (v11 != v5);
      }

      ++v10;
      v9 += v5 * v5;
    }

    while (v10 != v39);
  }

  v43 = 0;
  *&v40[8] = 0;
  v37 = a2 + 6;
  *v40 = (v5 * v5);
  do
  {
    if (v5)
    {
      v15 = 0;
      v16 = v43;
      v17 = &v37[8 * *&v40[4]];
      do
      {
        if (!v7 || *(v7 + 4 * (v5 * *&v40[4] + v15)) || ((v18 = *v17, v18 != -1) ? (v19 = v15 == v18) : (v19 = 0), v19))
        {
          v20 = v17[1];
          if (v20)
          {
            LODWORD(result) = 0;
            v21 = *(v17 + 2);
            v22 = *(v42 + 64);
            do
            {
              v23 = *v21++;
              result = fix16_add(result, *(v4 + 4 * (*(v22 + 4 * v23) + v15)));
              --v20;
            }

            while (v20);
          }

          else
          {
            result = 0;
          }

          v24 = v5;
          v25 = v16;
          do
          {
            *(a3 + 4 * v25) = result;
            v25 += v5;
            --v24;
          }

          while (v24);
        }

        ++v15;
        ++v16;
      }

      while (v15 != v5);
    }

    v43 += *v40;
    ++*&v40[4];
  }

  while (*&v40[4] != v39);
  if (v39 >= 2)
  {
    for (i = 1; i != v39; ++i)
    {
      if (v5)
      {
        *&v41[8] = 0;
        v26 = 0;
        v27 = &v37[8 * i];
        *v41 = (v5 * (i - 1));
        v44 = v5 * i;
        do
        {
          if (!v7 || *(v7 + 4 * (*v41 + *&v41[4])) || v37[8 * i - 8] != -1 && *&v41[4] == *v27)
          {
            v28 = 0;
            v45 = (v44 + *&v41[4]) * v5;
            do
            {
              if (!v7 || *(v7 + 4 * (v44 + v28)) || ((v29 = *v27, v29 != -1) ? (v30 = v28 == v29) : (v30 = 0), v30))
              {
                v31 = v7;
                v32 = v27[2];
                if (v32)
                {
                  v33 = 0;
                  v34 = *(v27 + 3);
                  v35 = *(v42 + 72);
                  do
                  {
                    v36 = *v34++;
                    v33 = fix16_add(v33, *(v4 + 4 * (*(v35 + 4 * v36) + v26)));
                    --v32;
                  }

                  while (v32);
                }

                else
                {
                  v33 = 0;
                }

                result = fix16_add(*(a3 + 4 * (v45 + v28)), v33);
                *(a3 + 4 * (v45 + v28)) = result;
                v7 = v31;
              }

              ++v28;
              ++v26;
            }

            while (v28 != v5);
          }

          ++*&v41[4];
        }

        while (*&v41[4] != v5);
      }
    }
  }

  return result;
}

uint64_t tag_forced(uint64_t result, unsigned int *a2, uint64_t a3, int a4)
{
  v4 = *(result + 44);
  v5 = *a2;
  v6 = (a4 == 0) << 31;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4 * v4;
    v10 = v4 * v4;
    do
    {
      v11 = a2[8 * v8 + 6];
      if (v11 != -1)
      {
        if (v8 && v4)
        {
          LODWORD(result) = 0;
          v12 = v7;
          do
          {
            if (result != v11)
            {
              v13 = v4;
              v14 = v12;
              do
              {
                *(a3 + 4 * v14) = v6;
                v14 += v4;
                --v13;
              }

              while (v13);
            }

            result = (result + 1);
            ++v12;
          }

          while (result != v4);
        }

        if (v8 != v5 - 1 && v4)
        {
          LODWORD(result) = 0;
          v15 = v10;
          do
          {
            if (result != v11)
            {
              v16 = v4;
              v17 = v15;
              do
              {
                *(a3 + 4 * v17++) = v6;
                --v16;
              }

              while (v16);
            }

            result = (result + 1);
            v15 += v4;
          }

          while (result != v4);
        }
      }

      ++v8;
      v7 += v9;
      v10 += v9;
    }

    while (v8 != v5);
  }

  v18 = a2[6];
  if (v18 != -1 && v4 != 0)
  {
    v20 = 0;
    do
    {
      if (v18 != v20)
      {
        v21 = v4;
        v22 = v20;
        do
        {
          *(a3 + 4 * v22) = v6;
          v22 += v4;
          --v21;
        }

        while (v21);
      }

      ++v20;
    }

    while (v20 != v4);
  }

  return result;
}

uint64_t tag_memmsc_sparse(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 44);
  v5 = *a2;
  tag_expsc_sparse(a1, a2, a3);
  result = xvm_expma(a3, a3, 0, v4 * v4 * v5);
  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = 0;
          v12 = v4;
          v13 = v10;
          do
          {
            v11 = fix16_add(v11, a3[v13++]);
            --v12;
          }

          while (v12);
          v14 = v4;
          v15 = v10;
          do
          {
            result = fix16_div(a3[v15], v11);
            a3[v15++] = result;
            --v14;
          }

          while (v14);
          ++v9;
          v10 += v4;
        }

        while (v9 != v4);
      }

      ++v8;
      v7 += v4 * v4;
    }

    while (v8 != v16);
  }

  return result;
}

uint64_t tag_expsc_sparse(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 88);
  v7 = *(result + 44);
  v8 = *a2;
  if (*(a2 + 2))
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v7)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = v7;
          v15 = v13;
          do
          {
            *(a3 + 4 * v15) = 0x80000000;
            v15 += v7;
            --v14;
          }

          while (v14);
          ++v12;
          ++v13;
        }

        while (v12 != v7);
      }

      ++v11;
      v10 += v7 * v7;
    }

    while (v11 != v8);
  }

  v47 = 0;
  v16 = 0;
  v44 = a2 + 6;
  v17 = -v7;
  v46 = v8;
  do
  {
    if (v7)
    {
      v18 = 0;
      v19 = &v44[8 * v16];
      v20 = v47;
      v49 = v17;
      do
      {
        v21 = *(v4 + 2);
        if (!v21 || *(v21 + 4 * (v7 * v16 + v18)) || ((v22 = *v19, v22 != -1) ? (v23 = v18 == v22) : (v23 = 0), v23))
        {
          v51 = v20;
          if (v19[1])
          {
            v24 = 0;
            v25 = 0;
            do
            {
              v26 = sparray_get(v6, *(*(v5 + 64) + 4 * *(*(v19 + 2) + 4 * v24)) + v18);
              result = fix16_add(v25, v26);
              v25 = result;
              ++v24;
            }

            while (v24 < v19[1]);
          }

          else
          {
            v25 = 0;
          }

          v27 = 0;
          v20 = v51;
          v28 = v51;
          v17 = v49;
          do
          {
            if (!v16 || (v29 = *(v4 + 2)) == 0 || *(v29 + 4 * (v49 + v27)) || v44[8 * (v16 - 1)] != -1 && v27 == *v19)
            {
              *(a3 + 4 * v28) = v25;
            }

            ++v27;
            v28 += v7;
          }

          while (v7 != v27);
        }

        ++v18;
        ++v20;
      }

      while (v18 != v7);
    }

    ++v16;
    v47 += v7 * v7;
    v17 += v7;
  }

  while (v16 != v46);
  if (v46 >= 2)
  {
    for (i = 1; i != v46; ++i)
    {
      if (v7)
      {
        v30 = 0;
        v31 = 0;
        v32 = &v44[8 * i];
        v50 = v7 * i;
        do
        {
          v33 = *(v4 + 2);
          v48 = v30;
          if (!v33 || *(v33 + 4 * (v7 * (i - 1) + v30)) || ((v34 = v44[8 * i - 8], v34 != -1) ? (v35 = v30 == v34) : (v35 = 0), v35))
          {
            v36 = 0;
            v52 = (v50 + v30) * v7;
            do
            {
              v37 = *(v4 + 2);
              if (!v37 || *(v37 + 4 * (v50 + v36)) || ((v38 = *v32, v38 != -1) ? (v39 = v36 == v38) : (v39 = 0), v39))
              {
                v40 = v4;
                if (v32[2])
                {
                  v41 = 0;
                  v42 = 0;
                  do
                  {
                    v43 = sparray_get(v6, *(*(v5 + 72) + 4 * *(*(v32 + 3) + 4 * v41)) + v31);
                    v42 = fix16_add(v42, v43);
                    ++v41;
                  }

                  while (v41 < v32[2]);
                }

                else
                {
                  v42 = 0;
                }

                result = fix16_add(*(a3 + 4 * (v52 + v36)), v42);
                *(a3 + 4 * (v52 + v36)) = result;
                v4 = v40;
              }

              ++v36;
              ++v31;
            }

            while (v36 != v7);
          }

          else
          {
            v31 += v7;
          }

          v30 = v48 + 1;
        }

        while (v48 + 1 != v7);
      }
    }
  }

  return result;
}

void *kh_init_32(uint64_t a1)
{
  result = heap_Calloc(*(a1 + 8), 1, 48);
  if (result)
  {
    *result = a1;
  }

  return result;
}

void *kh_destroy_32(uint64_t *a1)
{
  v2 = *a1;
  heap_Free(*(*a1 + 8), a1[4]);
  heap_Free(*(v2 + 8), a1[3]);
  heap_Free(*(v2 + 8), a1[5]);
  v3 = *(v2 + 8);

  return heap_Free(v3, a1);
}

void *kh_clear_32(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[3];
    if (result)
    {
      v2 = v1[2];
      if (v2 >= 0x10)
      {
        v3 = (v2 >> 2) & 0x3FFFFFFC;
      }

      else
      {
        v3 = 4;
      }

      result = cstdlib_memset(result, 170, v3);
      v1[3] = 0;
      v1[4] = 0;
    }
  }

  return result;
}

uint64_t kh_get_32(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  if (result)
  {
    v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v5 = (v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11);
    v6 = (result - 1) & (v5 ^ HIWORD(v5));
    v7 = 1;
    v8 = v6;
    while (1)
    {
      v9 = *(*(a1 + 24) + 4 * (v8 >> 4)) >> (2 * (v8 & 0xF));
      if ((v9 & 2) != 0 || (v9 & 1) == 0 && *(*(a1 + 32) + 4 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + v7++) & (result - 1);
      if (v8 == v6)
      {
        return result;
      }
    }

    if ((v9 & 3) != 0)
    {
      return result;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t kh_resize_32(uint64_t *a1, int a2)
{
  v2 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  v4 = v3 | HIWORD(v3);
  if ((v4 + 1) > 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4;
  }

  v6 = 3 * v5 + 2;
  if (*(a1 + 3) >= v6)
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(*a1 + 8);
  if ((v4 + 1) >= 0x10)
  {
    v10 = (v5 >> 2) & 0x3FFFFFFC;
  }

  else
  {
    v10 = 4;
  }

  v11 = heap_Alloc(v9, v10);
  if (v11)
  {
    v12 = v11;
    cstdlib_memset(v11, 170, v10);
    v13 = *(a1 + 2);
    if (v13 >= v5)
    {
      goto LABEL_13;
    }

    v14 = heap_Realloc(*(v8 + 8), a1[4], 4 * v5);
    if (v14)
    {
      a1[4] = v14;
      v15 = heap_Realloc(*(v8 + 8), a1[5], 4 * v5);
      if (v15)
      {
        a1[5] = v15;
        v13 = *(a1 + 2);
        if (!v13)
        {
LABEL_26:
          heap_Free(*(v8 + 8), a1[3]);
          result = 0;
          a1[3] = v12;
          *(a1 + 2) = v5;
          *(a1 + 4) = *(a1 + 3);
          *(a1 + 5) = v6;
          return result;
        }

LABEL_13:
        v16 = 0;
        v17 = a1[3];
        v18 = v5 - 1;
        do
        {
          v19 = *(v17 + 4 * (v16 >> 4));
          if (((v19 >> (2 * (v16 & 0xF))) & 3) == 0)
          {
            v20 = a1[4];
            v21 = a1[5];
            v22 = *(v20 + 4 * v16);
            v23 = *(v21 + 4 * v16);
            *(v17 + 4 * (v16 >> 4)) = v19 | (1 << (2 * (v16 & 0xF)));
            while (1)
            {
              v24 = 9 * ((v22 + ~(v22 << 15)) ^ ((v22 + ~(v22 << 15)) >> 10));
              v25 = (v24 ^ (v24 >> 6)) + ~((v24 ^ (v24 >> 6)) << 11);
              v26 = (v25 ^ HIWORD(v25)) & v18;
              v27 = v26 >> 4;
              v28 = *(v12 + 4 * v27);
              v29 = 2 * (v26 & 0xF);
              v30 = 2 << v29;
              if (((2 << v29) & v28) == 0)
              {
                v31 = 1;
                do
                {
                  v26 = (v26 + v31) & v18;
                  v27 = v26 >> 4;
                  v28 = *(v12 + 4 * v27);
                  v29 = 2 * (v26 & 0xF);
                  v30 = 2 << v29;
                  ++v31;
                }

                while (((2 << v29) & v28) == 0);
              }

              *(v12 + 4 * v27) = v28 & ~v30;
              if (v26 >= *(a1 + 2) || ((*(v17 + 4 * v27) >> v29) & 3) != 0)
              {
                break;
              }

              v32 = *(v20 + 4 * v26);
              *(v20 + 4 * v26) = v22;
              v33 = *(v21 + 4 * v26);
              *(v21 + 4 * v26) = v23;
              *(v17 + 4 * v27) |= 1 << v29;
              v22 = v32;
              v23 = v33;
            }

            *(v20 + 4 * v26) = v22;
            *(v21 + 4 * v26) = v23;
            v13 = *(a1 + 2);
          }

          ++v16;
        }

        while (v16 != v13);
        if (v13 > v5)
        {
          a1[4] = heap_Realloc(*(v8 + 8), a1[4], 4 * v5);
          a1[5] = heap_Realloc(*(v8 + 8), a1[5], 4 * v5);
        }

        goto LABEL_26;
      }
    }

    heap_Free(*(v8 + 8), v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t kh_put_32(uint64_t a1, int a2, int *a3)
{
  if (*(a1 + 16) >= *(a1 + 20))
  {
    v6 = *(a1 + 8);
    v7 = v6 <= *(a1 + 12) >> 1 ? v6 + 1 : v6 - 1;
    if ((kh_resize_32(a1, v7) & 0x80000000) != 0)
    {
      *a3 = -1;
      return *(a1 + 8);
    }
  }

  v8 = *(a1 + 8);
  v9 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v10 = (v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11);
  v11 = (v8 - 1) & (v10 ^ HIWORD(v10));
  v12 = *(a1 + 24);
  if (((*(v12 + 4 * (v11 >> 4)) >> (2 * (v11 & 0xF))) & 2) != 0)
  {
    result = v11;
  }

  else
  {
    v14 = 1;
    v15 = v11;
    LODWORD(result) = *(a1 + 8);
    do
    {
      v16 = *(v12 + 4 * (v15 >> 4)) >> (2 * (v15 & 0xF));
      if ((v16 & 2) != 0 || (v16 & 1) == 0 && *(*(a1 + 32) + 4 * v15) == a2)
      {
        v17 = ((*(v12 + 4 * (v15 >> 4)) >> (2 * (v15 & 0xF))) & 2) == 0;
        goto LABEL_20;
      }

      if (v16)
      {
        result = v15;
      }

      else
      {
        result = result;
      }

      v15 = (v15 + v14++) & (v8 - 1);
    }

    while (v15 != v11);
    if (result != v8)
    {
      goto LABEL_26;
    }

    v17 = 1;
    LODWORD(result) = *(a1 + 8);
    v15 = v11;
LABEL_20:
    if (result == v8 || v17)
    {
      result = v15;
    }

    else
    {
      result = result;
    }
  }

LABEL_26:
  v19 = result >> 4;
  v20 = 2 * (result & 0xF);
  v21 = *(v12 + 4 * (result >> 4)) >> v20;
  if ((v21 & 2) != 0)
  {
    *(*(a1 + 32) + 4 * result) = a2;
    *(v12 + 4 * v19) &= ~(3 << v20);
    *(a1 + 12) = vadd_s32(*(a1 + 12), 0x400000004);
    v22 = 1;
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      *a3 = 0;
      return result;
    }

    *(*(a1 + 32) + 4 * result) = a2;
    *(v12 + 4 * v19) &= ~(3 << v20);
    *(a1 + 12) += 4;
    v22 = 2;
  }

  *a3 = v22;
  return result;
}

uint64_t kh_del_32(uint64_t result, unsigned int a2)
{
  if (*(result + 8) != a2)
  {
    v2 = *(result + 24);
    v3 = *(v2 + 4 * (a2 >> 4));
    if (((v3 >> (2 * (a2 & 0xF))) & 3) == 0)
    {
      *(v2 + 4 * (a2 >> 4)) = v3 | (1 << (2 * (a2 & 0xF)));
      *(result + 12) -= 4;
    }
  }

  return result;
}

_DWORD *xvm_scale(_DWORD *result, int *a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = a4;
    do
    {
      v8 = *a2++;
      result = fix16_mul(v8, a3);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t xvm_unit(_DWORD *a1, int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = 0;
    v7 = a3;
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v6 = fix16_add(v6, v10);
      --v8;
    }

    while (v8);
    v11 = fix16_div(0x10000, v6);
    do
    {
      v12 = *v4++;
      *a1++ = fix16_mul(v12, v11);
      --v7;
    }

    while (v7);
    return v11;
  }

  else
  {

    return fix16_div(0x10000, 0);
  }
}

_DWORD *xvm_expma(_DWORD *result, unsigned int *a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = a4;
    do
    {
      v8 = *a2++;
      v9 = fix16_exp(v8);
      result = fix16_sub(v9, a3);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  return result;
}

_DWORD *xvm_expma_cache(_DWORD *result, unsigned int *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v10 = result;
    v11 = a4;
    do
    {
      v12 = *a2++;
      v13 = fix16_exp_cache(v12, a5, a6);
      result = fix16_sub(v13, a3);
      *v10++ = result;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t _parse_one_rule(uint64_t a1, char *__s1, uint64_t a3)
{
  v6 = *(a3 + 16) + 16 * *(a3 + 8);
  while (1)
  {
    v7 = *__s1;
    if (v7 != 32)
    {
      break;
    }

    ++__s1;
  }

  if (!*__s1 || v7 == 35)
  {
    return 0;
  }

  v8 = 2585796618;
  v9 = cstdlib_strstr(__s1, ")-->");
  if (v9 && (v10 = v9, cstdlib_strlen(v9) >= 5))
  {
    v11 = *(a1 + 8);
    v12 = cstdlib_strlen(v10 + 4);
    v13 = heap_Calloc(v11, 1, (v12 + 1));
    *(v6 + 8) = v13;
    if (!v13)
    {
      return v8;
    }

    cstdlib_strcpy(v13, v10 + 4);
  }

  else
  {
    wapiti_info(*(a1 + 32), "invalid rule label: %s");
  }

  v14 = *(a1 + 8);
  v15 = cstdlib_strlen(__s1);
  v16 = heap_Calloc(v14, 1, (v15 + 2));
  if (v16)
  {
    v17 = v16;
    v34 = 0;
    *v6 = 0;
    v18 = __s1;
    do
    {
      if (!cstdlib_strstr(v18, ")^") && !cstdlib_strstr(v18, ")-->"))
      {
        break;
      }

      ++*v6;
      v19 = cstdlib_strstr(v18, ")^");
      v18 = v19 + 2;
    }

    while (v19);
    v20 = *(a3 + 32);
    v21 = *(a3 + 36);
    if (v20 + 4 * *v6 <= v21)
    {
LABEL_19:
      *(v6 + 4) = v20;
      while (1)
      {
        v23 = cstdlib_strstr(__s1, ")^");
        if (!v23)
        {
          v23 = cstdlib_strstr(__s1, ")-->");
          if (!v23)
          {
            break;
          }
        }

        *v23 = 0;
        v24 = cstdlib_strstr(__s1, "(");
        if (!v24)
        {
          wapiti_info(*(a1 + 32), "invalid feature id: %s");
          break;
        }

        *v24 = 0;
        v25 = *__s1;
        v26 = v25 == 33;
        if (v25 == 33)
        {
          v27 = __s1 + 1;
        }

        else
        {
          v27 = __s1;
        }

        v28 = cstdlib_strstr(v27, "_");
        if (v28)
        {
          *v28 = 0;
          v29 = cstdlib_atoi(v27);
          v27 += cstdlib_strlen(v27) + 1;
        }

        else
        {
          wapiti_info(*(a1 + 32), "invalid offset: %s");
          v29 = 0;
        }

        v30 = cstdlib_atoi(v27);
        v31 = &v27[cstdlib_strlen(v27) + 1];
        cstdlib_strcpy(v17, "|");
        cstdlib_strcat(v17, v31);
        cstdlib_strcat(v17, "|");
        if ((qrk_str2id(a1, *a3, v17, &v34, 0) & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        v32 = *(a3 + 24);
        *(v32 + 4 * *(a3 + 32)) = v26;
        *(v32 + 4 * (*(a3 + 32) + 1)) = v29;
        *(v32 + 4 * (*(a3 + 32) + 2)) = v30;
        *(v32 + 4 * (*(a3 + 32) + 3)) = v34;
        *(a3 + 32) += 4;
        __s1 = &v31[cstdlib_strlen(v31) + 2];
      }

      ++*(a3 + 8);
LABEL_33:
      heap_Free(*(a1 + 8), v17);
      return 0;
    }

    v22 = heap_Realloc(*(a1 + 8), *(a3 + 24), 4 * (*v6 + v21 + 50));
    if (v22)
    {
      v20 = *(a3 + 32);
      *(a3 + 36) += *v6 + 50;
      *(a3 + 24) = v22;
      goto LABEL_19;
    }
  }

  return v8;
}

uint64_t wapiti_rules_load(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  wapiti_info(*(a1 + 32), "Load wapiti forcing rules...");
  result = heap_Calloc(*(a1 + 8), 1, 40);
  if (result)
  {
    v9 = result;
    if (!a3 || cstdlib_strstr(a2, "Rule_Number: ") != a2)
    {
      cstdlib_strlen(a2);
LABEL_5:
      result = 0;
      *a4 = v9;
      return result;
    }

    v10 = cstdlib_atoi((a2 + 13));
    v11 = cstdlib_strlen(a2);
    if (!v10)
    {
      goto LABEL_5;
    }

    v12 = v11;
    if ((qrk_new(a1, v9) & 0x80000000) != 0)
    {
      return 0;
    }

    v13 = heap_Calloc(*(a1 + 8), 1, 16 * v10);
    *(v9 + 16) = v13;
    if (!v13)
    {
      return 2585796618;
    }

    result = heap_Calloc(*(a1 + 8), 300, 4);
    *(v9 + 24) = result;
    if (result)
    {
      v14 = (a2 + v12 + 1);
      *(v9 + 36) = 300;
      *(v9 + 8) = 0;
      v15 = a2 + a3;
      while (v14 < v15)
      {
        v16 = cstdlib_strlen(v14);
        _parse_one_rule(a1, v14, v9);
        v14 += v16 + 1;
      }

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t _apply_one_rule(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  if (!*a3)
  {
    return *(a3 + 8);
  }

  v10 = 0;
  v21 = a4 + 24;
  for (i = 3; ; i += 4)
  {
    v12 = a2[3];
    v13 = i + *(a3 + 4);
    v14 = *(v12 + 4 * (v13 - 3));
    v15 = *(v12 + 4 * (v13 - 2)) + a5;
    if (v15 < 0 || v15 >= *a4 || (v16 = *(v12 + 4 * (v13 - 1)), v16 >= *(*(a4 + 16) + 4 * v15)))
    {
      v17 = 0;
    }

    else
    {
      __s1 = qrk_id2str(a1, *a2, *(v12 + 4 * v13));
      cstdlib_strcpy(a6, "|");
      cstdlib_strcat(a6, *(*(v21 + 8 * v15) + 8 * v16));
      cstdlib_strcat(a6, "|");
      v17 = cstdlib_strstr(__s1, a6);
    }

    if (!v14 && v17 == 0)
    {
      break;
    }

    if (v14 == 1 && v17 != 0)
    {
      break;
    }

    if (++v10 >= *a3)
    {
      return *(a3 + 8);
    }
  }

  return 0;
}

uint64_t wapiti_rules_apply(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  wapiti_info(*(a1 + 32), "Apply wapiti forcing rules...");
  v6 = *a3;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a3 + 2);
    do
    {
      if (*(v9 + 4 * v7))
      {
        v10 = 0;
        do
        {
          v11 = cstdlib_strlen(*(*&a3[2 * v7 + 6] + 8 * v10));
          if (v8 <= v11)
          {
            v8 = v11;
          }

          ++v10;
          v9 = *(a3 + 2);
        }

        while (v10 < *(v9 + 4 * v7));
        v6 = *a3;
      }

      ++v7;
    }

    while (v7 < v6);
    v12 = v8 + 10;
  }

  else
  {
    v12 = 10;
  }

  v13 = 2585796618;
  v14 = heap_Calloc(*(a1 + 8), 1, v12);
  if (v14)
  {
    v15 = v14;
    if (*(a3 + 1) || (v16 = heap_Calloc(*(a1 + 8), 1, 8 * *a3), (*(a3 + 1) = v16) != 0))
    {
      if (*a3)
      {
        v17 = 0;
        LODWORD(v18) = *(a2 + 8);
        while (!v18)
        {
          v21 = *(a3 + 1);
          if (!*(v21 + 8 * v17))
          {
            goto LABEL_27;
          }

LABEL_24:
          if (++v17 >= *a3)
          {
            goto LABEL_28;
          }
        }

        v19 = 0;
        v20 = 1;
        do
        {
          *(*(a3 + 1) + 8 * v17) = _apply_one_rule(a1, a2, *(a2 + 16) + v19, a3, v17, v15);
          v21 = *(a3 + 1);
          v22 = *(v21 + 8 * v17);
          v18 = *(a2 + 8);
          v19 += 16;
        }

        while (v20++ < v18 && v22 == 0);
        if (v22)
        {
          goto LABEL_24;
        }

LABEL_27:
        *(v21 + 8 * v17) = "";
        goto LABEL_24;
      }

LABEL_28:
      heap_Free(*(a1 + 8), v15);
      return 0;
    }
  }

  return v13;
}

uint64_t wapiti_rules_unload(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    wapiti_info(*(a1 + 32), "Unload wapiti forcing rules...");
    if (*(a2 + 8) && *(a2 + 16))
    {
      v4 = 0;
      v5 = 8;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 16) + v5));
        ++v4;
        v5 += 16;
      }

      while (v4 < *(a2 + 8));
      heap_Free(*(a1 + 8), *(a2 + 16));
      heap_Free(*(a1 + 8), *(a2 + 24));
    }

    if (*a2)
    {
      qrk_free(a1, *a2, 0);
    }

    heap_Free(*(a1 + 8), a2);
  }

  return 0;
}

uint64_t crf_Init_ReadOnly_ReferenceCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, int a6, uint64_t a7, const char *a8, __int16 a9, char a10, uint64_t a11)
{
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  cstdlib_memset(&v22, 0, 0x38uLL);
  result = InitRsrcFunction(a1, a2, &v28);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v27);
    if ((result & 0x80000000) == 0)
    {
      *&v22 = a1;
      *(&v22 + 1) = a2;
      *&v23 = a3;
      *(&v23 + 1) = a4;
      cstdlib_strcpy(&v24, a8);
      DWORD2(v24) = a6;
      BYTE14(v24) = a10;
      WORD6(v24) = a9;
      v25 = a11;
      ObjcForThisApi = getObjcForThisApi(v28, v27);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a7, crf_ObjcLoad, crf_ObjcClose, &v22, &v26);
      if ((result & 0x80000000) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v26 + 32);
      }

      *a5 = v21;
    }
  }

  return result;
}

uint64_t crf_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  v41 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  result = InitRsrcFunction(a1, a2, &v40);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v41);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_memcpy(v15, v40, 0x1A0uLL);
      v16 = *(v41 + 32);
      v11 = *(a5 + 40);
      v12 = *(a5 + 48);
      v13 = *(a5 + 44) | (*(a5 + 46) << 16);
      v43 = 0;
      result = ssftriff_reader_ObjOpen(a1, a2, v11, a3, (a5 + 32), v13, &v43);
      if ((result & 0x80000000) == 0)
      {
        v14 = heap_Calloc(*(&v15[0] + 1), 1, 344);
        *(a4 + 32) = v14;
        if (v14)
        {
          result = crf_Init(a1, a2, v43, v14);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          cstdlib_strcpy((*(a4 + 32) + 84), a3);
          if (v12)
          {
            v42 = 1;
            result = v12(v15, *(a4 + 32), &v42);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            *(*(*(a4 + 32) + 24) + 24) = v42;
          }

          return ssftriff_reader_ObjClose(v43);
        }

        else
        {
          return 2585796618;
        }
      }
    }
  }

  return result;
}

uint64_t crf_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = v7;
      crf_Deinit(v5);
      heap_Free(*(v6 + 8), v5);
    }

    return 0;
  }

  return result;
}

uint64_t crf_Deinit_ReadOnly_DereferenceCnt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjcForThisApi = getObjcForThisApi(a1, a2);

  return objc_ReleaseObject(ObjcForThisApi, a3 + 84);
}

uint64_t crf_Init(_WORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  __dst[13] = *MEMORY[0x277D85DE8];
  v202 = 0;
  v201 = 0;
  *(a4 + 68) = 0;
  Chunk = ssftriff_reader_FindChunk(a3, "FAST", 2 * (*(a4 + 72) != 0), &v202, &v201);
  if (Chunk < 0)
  {
    LODWORD(v10) = Chunk;
    if ((Chunk & 0x1FFF) == 0xA)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a4 + 68) = 1;
    v9 = ssftriff_reader_CloseChunk(a3);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }
  }

  *(a4 + 80) = 0;
  v11 = ssftriff_reader_FindChunk(a3, "QPTR", 2 * (*(a4 + 72) != 0), &v202, &v201);
  if (v11 < 0)
  {
    LODWORD(v10) = v11;
    if ((v11 & 0x1FFF) != 0xA)
    {
      goto LABEL_12;
    }

LABEL_9:
    v12 = ssftriff_reader_CloseChunk(a3);
    if (v12 >= 0)
    {
      return v10;
    }

    else
    {
      return v12;
    }
  }

  *(a4 + 80) = 1;
  v9 = ssftriff_reader_CloseChunk(a3);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

LABEL_12:
  if (!*(a4 + 68))
  {
    *__s1 = 0;
    __dst[0] = 0;
    v212 = 0;
    v203[4] = 0;
    *v203 = 0;
    *v210 = 0;
    __s = 0;
    v209 = 0;
    HIDWORD(__n) = 0;
    inited = InitRsrcFunction(a1, a2, &__s);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    wapiti_info(*(__s + 4), "CRF COMP Init...");
    inited = rdr_new(__s, 0, v210);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    inited = mdl_new(*v210, &v209);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    v93 = v209;
    *(v209 + 8) = opt_defaults;
    *(v93 + 24) = unk_26ECDBD08;
    v94 = ssftriff_reader_OpenChunk(a3, v203, __s1, __dst);
    v95 = 0;
    if ((v94 & 0x80000000) != 0)
    {
LABEL_186:
      if ((v94 & 0x1FFF) == 0x14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v94;
      }

      wapiti_info(*(__s + 4), "OBS Count from model:%I32u, OBSW count:%d");
      goto LABEL_337;
    }

    v10 = 2585796618;
    while (1)
    {
      v96 = heap_Alloc(*(__s + 1), 100);
      if (!v96)
      {
        goto LABEL_337;
      }

      v97 = v96;
      if (!cstdlib_strcmp(v203, "LIST"))
      {
        break;
      }

      if (!cstdlib_strcmp(v203, "PARA"))
      {
        v98 = _crf_parse_params(__s, __dst[0], *__s1, a4);
        if ((v98 & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        goto LABEL_185;
      }

      if (!cstdlib_strcmp(v203, "RULE"))
      {
        v98 = wapiti_rules_load(__s, __dst[0], *__s1, (*(v209 + 112) + 56));
        if ((v98 & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        goto LABEL_185;
      }

      if (!cstdlib_strcmp(v203, "SPRS"))
      {
        *(v209 + 32) = 1;
        v99 = *(__s + 4);
        v100 = "sparse theta ENABLED";
        goto LABEL_132;
      }

      LODWORD(__n) = 0;
      v199 = v203;
      v200 = *__s1;
      wapiti_info(*(__s + 4), "ChunkID:%s, cChunk:%d");
      if (!cstdlib_strcmp(v203, "OBSW"))
      {
        if (*(v209 + 32))
        {
          v98 = mdl_sync_sparse(v209);
          if ((v98 & 0x80000000) != 0)
          {
            goto LABEL_335;
          }
        }

        else
        {
          v98 = mdl_sync(v209);
          if ((v98 & 0x80000000) != 0)
          {
LABEL_335:
            v10 = v98;
LABEL_337:
            v194 = v209;
            goto LABEL_350;
          }
        }
      }

      cstdlib_memset(v97, 0, 0x64uLL);
      v101 = *__s1;
      if (*__s1)
      {
        v102 = 0;
        v103 = 0;
        do
        {
          v207 = 0;
          v212 = 100;
          ssftriff_reader_ReadStringZ(a3, __dst[0], v101, v102, v97, &v212);
          if (cstdlib_strcmp(v203, "MODE"))
          {
            if (cstdlib_strcmp(v203, "RDER"))
            {
              if (cstdlib_strcmp(v203, "QRKL"))
              {
                if (cstdlib_strcmp(v203, "QRKO"))
                {
                  if (!cstdlib_strcmp(v203, "OBSW"))
                  {
                    v206 = 0;
                    if (wapiti_scanf_fmt_pair(v97, "=", &v206 + 1, &v206) != 2)
                    {
                      wapiti_fatal(*(__s + 4), "Bad format of OBSW chunk", v199, v200);
                    }

                    if (*(v209 + 32))
                    {
                      sparray_set(*(v209 + 88), HIDWORD(v206), v206);
                    }

                    else
                    {
                      *(*(v209 + 80) + 4 * HIDWORD(v206)) = v206;
                    }

                    v95 = (v95 + 1);
                  }

                  goto LABEL_184;
                }

                v115 = *(v209 + 112);
                if (wapiti_scanf_fmt_1(v97, "#qrk#", &v207 + 1) != 1)
                {
                  HIDWORD(v206) = 0;
                  v116 = wapiti_ns_readline(__s, v97, &v206 + 1);
                  v117 = __s;
                  v118 = *(v115 + 48);
LABEL_172:
                  v98 = qrk_str2id(v117, v118, &v97[v116], &__n, HIDWORD(v206));
                  if ((v98 & 0x80000000) != 0)
                  {
                    goto LABEL_335;
                  }

                  goto LABEL_184;
                }

                v108 = *(__s + 4);
                v199 = HIDWORD(v207);
                v109 = "Quark O Size:%d";
              }

              else
              {
                v107 = *(v209 + 112);
                if (wapiti_scanf_fmt_1(v97, "#qrk#", &v207 + 1) != 1)
                {
                  HIDWORD(v206) = 0;
                  v116 = wapiti_ns_readline(__s, v97, &v206 + 1);
                  v117 = __s;
                  v118 = *(v107 + 40);
                  goto LABEL_172;
                }

                v108 = *(__s + 4);
                v199 = HIDWORD(v207);
                v109 = "Quark L Size:%d";
              }

              wapiti_info(v108, v109);
            }

            else
            {
              v104 = *(v209 + 112);
              if (wapiti_scanf_fmt_3(v97, "#rdr#", (v104 + 24), (v104 + 20), (v104 + 8)) == 3)
              {
                *(v104 + 12) = 0;
                *(v104 + 16) = 0;
                v105 = *(v104 + 24);
                if (v105)
                {
                  v106 = heap_Calloc(*(__s + 1), 8, v105);
                  *(v104 + 32) = v106;
                  if (!v106)
                  {
                    goto LABEL_337;
                  }
                }

                v103 = 0;
              }

              else if (*(v104 + 24))
              {
                v110 = v95;
                HIDWORD(v206) = 0;
                v111 = wapiti_ns_readline(__s, v97, &v206 + 1);
                v112 = heap_Alloc(*(__s + 1), (HIDWORD(v206) + 1));
                if (!v112)
                {
                  goto LABEL_337;
                }

                v113 = v112;
                cstdlib_strncpy(v112, &v97[v111], HIDWORD(v206));
                v113[HIDWORD(v206)] = 0;
                v98 = pat_comp(__s, v113, (*(v104 + 32) + 8 * v103));
                if ((v98 & 0x80000000) != 0)
                {
                  goto LABEL_335;
                }

                v114 = cstdlib_tolower(*v113);
                if (v114 == 42)
                {
                  *(v104 + 12) = vadd_s32(*(v104 + 12), 0x100000001);
                  v95 = v110;
                }

                else
                {
                  v95 = v110;
                  if (v114 == 98)
                  {
                    ++*(v104 + 16);
                  }

                  else if (v114 == 117)
                  {
                    ++*(v104 + 12);
                  }
                }

                ++v103;
              }

              v119 = *(v104 + 24);
              if (v103 == v119)
              {
                v120 = 0;
              }

              else
              {
                v120 = v103;
              }

              if (v119)
              {
                v103 = v120;
              }
            }
          }

          else if (wapiti_scanf_fmt_2(v97, "#mdl#", &v207, &__n + 1) == 2)
          {
            *(v209 + 40) = v207;
          }

          else
          {
            if (wapiti_scanf_fmt_1(v97, "#mdl#", &__n + 1) != 1)
            {
              wapiti_fatal(*(__s + 4), "crf riff data error, mode chunk format error", v199, v200);
              v10 = 2585796626;
              goto LABEL_337;
            }

            *(v209 + 40) = 0;
          }

LABEL_184:
          v102 += v212;
          cstdlib_memset(v97, 0, 0x64uLL);
          v101 = *__s1;
        }

        while (v102 < *__s1);
      }

LABEL_185:
      heap_Free(*(__s + 1), v97);
      ssftriff_reader_CloseChunk(a3);
      v94 = ssftriff_reader_OpenChunk(a3, v203, __s1, __dst);
      if ((v94 & 0x80000000) != 0)
      {
        goto LABEL_186;
      }
    }

    v99 = *(__s + 4);
    v100 = "ChunkID:%s, cChunk:%d, pChunk:%s";
LABEL_132:
    wapiti_info(v99, v100);
    goto LABEL_185;
  }

  if (!*(a4 + 80))
  {
    v212 = 0;
    *v210 = 0;
    __s = 0;
    __n = 0;
    v209 = 0;
    v205 = 0;
    *__s1 = 0;
    *v203 = 0;
    inited = InitRsrcFunction(a1, a2, v210);
    if ((inited & 0x80000000) == 0)
    {
      inited = rdr_new(*v210, 0, &v209);
      if ((inited & 0x80000000) == 0)
      {
        inited = mdl_new(v209, v203);
        if ((inited & 0x80000000) == 0)
        {
          v121 = *v203;
          *(*v203 + 8) = opt_defaults;
          *(v121 + 24) = unk_26ECDBD08;
          while (1)
          {
            v15 = ssftriff_reader_OpenChunk(a3, __s1, &v212, &__s);
            if ((v15 & 0x80000000) != 0)
            {
LABEL_332:
              if ((v15 & 0x1FFF) == 0x14)
              {
                v10 = 0;
              }

              else
              {
                v10 = v15;
              }

              goto LABEL_349;
            }

            if (!cstdlib_strcmp(__s1, "PARA"))
            {
              StringZ = _crf_parse_params(*v210, __s, v212, a4);
              if ((StringZ & 0x80000000) != 0)
              {
                goto LABEL_348;
              }

              goto LABEL_221;
            }

            if (!cstdlib_strcmp(__s1, "RULE"))
            {
              StringZ = wapiti_rules_load(*v210, __s, v212, (*(*v203 + 112) + 56));
              if ((StringZ & 0x80000000) != 0)
              {
                goto LABEL_348;
              }

              goto LABEL_221;
            }

            if (!cstdlib_strcmp(__s1, "SPRS"))
            {
              break;
            }

            if (!cstdlib_strcmp(__s1, "QPTR"))
            {
              *(*v203 + 36) = 1;
              v126 = *(*v210 + 32);
              v127 = "QP-Tree ENABLED";
              goto LABEL_220;
            }

            if (!cstdlib_strcmp(__s1, "MODE"))
            {
              if (v212)
              {
                *(*v203 + 40) = *__s;
              }

              goto LABEL_221;
            }

            if (cstdlib_strcmp(__s1, "RDER"))
            {
              if (cstdlib_strcmp(__s1, "QRKL"))
              {
                if (!cstdlib_strcmp(__s1, "KEYL") || !cstdlib_strcmp(__s1, "LEFL"))
                {
                  LODWORD(__n) = 0;
                  if (__s1[0] == 76)
                  {
                    v140 = *__s;
                    LODWORD(__n) = *__s;
                  }

                  else if (__s1[0] == 75 && (v139 = v212, v212))
                  {
                    v140 = 0;
                    v141 = __s;
                    do
                    {
                      if (!*v141++)
                      {
                        LODWORD(__n) = ++v140;
                      }

                      --v139;
                    }

                    while (v139);
                  }

                  else
                  {
                    v140 = 0;
                  }

                  v10 = 2585796618;
                  v154 = heap_Realloc(*(*v210 + 8), *(*(v209 + 40) + 8), 8 * v140);
                  if (!v154)
                  {
                    goto LABEL_349;
                  }

                  v155 = v154;
                  v156 = __n;
                  *(*(v209 + 40) + 24) = __n;
                  v157 = heap_Calloc(*(*v210 + 8), v156, 16);
                  if (!v157)
                  {
                    goto LABEL_342;
                  }

                  v158 = v157;
                  v159 = ssftriff_reader_DetachChunkData(a3, a4, &__s);
                  if ((v159 & 0x80001FFF) == 0x8000000A)
                  {
                    v10 = v159;
LABEL_342:
                    v197 = *(v209 + 40);
LABEL_343:
                    *(v197 + 8) = v155;
                    goto LABEL_349;
                  }

                  if (__s1[0] == 75)
                  {
                    v163 = __n;
                    if (__n)
                    {
                      v164 = 0;
                      v165 = __s;
                      do
                      {
                        *v158 = v164;
                        *(v158 + 8) = v165;
                        *(v155 + 8 * v164) = v158;
                        v165 += cstdlib_strlen(v165) + 1;
                        ++v164;
                        v163 = __n;
                        v158 += 16;
                      }

                      while (v164 < __n);
                    }
                  }

                  else if (__s1[0] == 76)
                  {
                    if (__n)
                    {
                      v160 = 0;
                      v161 = __s + 4;
                      v162 = &__s[__n + 4];
                      do
                      {
                        *v158 = v160;
                        *(v158 + 8) = v162;
                        *(v155 + 8 * v160) = v158;
                        v162 += v161[v160++] + 1;
                        v158 += 16;
                      }

                      while (v160 < __n);
                      v163 = __n;
                    }

                    else
                    {
                      v163 = 0;
                    }
                  }

                  else
                  {
                    v163 = __n;
                  }

                  v181 = *(v209 + 40);
                  goto LABEL_300;
                }

                if (cstdlib_strcmp(__s1, "QRKO"))
                {
                  if (!cstdlib_strcmp(__s1, "KEYO") || !cstdlib_strcmp(__s1, "LEFO"))
                  {
                    LODWORD(__n) = 0;
                    if (__s1[0] == 76)
                    {
                      v167 = *__s;
                      LODWORD(__n) = *__s;
                    }

                    else if (__s1[0] == 75 && (v166 = v212, v212))
                    {
                      v167 = 0;
                      v168 = __s;
                      do
                      {
                        if (!*v168++)
                        {
                          LODWORD(__n) = ++v167;
                        }

                        --v166;
                      }

                      while (v166);
                    }

                    else
                    {
                      v167 = 0;
                    }

                    v10 = 2585796618;
                    v182 = heap_Realloc(*(*v210 + 8), *(*(v209 + 48) + 8), 8 * v167);
                    if (!v182)
                    {
                      goto LABEL_349;
                    }

                    v155 = v182;
                    v183 = __n;
                    *(*(v209 + 48) + 24) = __n;
                    v184 = heap_Calloc(*(*v210 + 8), v183, 16);
                    if (!v184)
                    {
                      goto LABEL_355;
                    }

                    v185 = v184;
                    v186 = ssftriff_reader_DetachChunkData(a3, (a4 + 8), &__s);
                    if ((v186 & 0x80001FFF) == 0x8000000A)
                    {
                      v10 = v186;
LABEL_355:
                      v197 = *(v209 + 48);
                      goto LABEL_343;
                    }

                    if (__s1[0] == 75)
                    {
                      v163 = __n;
                      if (__n)
                      {
                        v190 = 0;
                        v191 = __s;
                        do
                        {
                          *v185 = v190;
                          *(v185 + 8) = v191;
                          *(v155 + 8 * v190) = v185;
                          v191 += cstdlib_strlen(v191) + 1;
                          ++v190;
                          v163 = __n;
                          v185 += 16;
                        }

                        while (v190 < __n);
                      }
                    }

                    else if (__s1[0] == 76)
                    {
                      if (__n)
                      {
                        v187 = 0;
                        v188 = __s + 4;
                        v189 = &__s[__n + 4];
                        do
                        {
                          *v185 = v187;
                          *(v185 + 8) = v189;
                          *(v155 + 8 * v187) = v185;
                          v189 += v188[v187++] + 1;
                          v185 += 16;
                        }

                        while (v187 < __n);
                        v163 = __n;
                      }

                      else
                      {
                        v163 = 0;
                      }
                    }

                    else
                    {
                      v163 = __n;
                    }

                    v181 = *(v209 + 48);
LABEL_300:
                    *(v181 + 8) = v155;
                    *(v181 + 20) = v163;
                    goto LABEL_221;
                  }

                  if (cstdlib_strcmp(__s1, "OBSW"))
                  {
                    if (!cstdlib_strcmp(__s1, "OBWF"))
                    {
                      *(a4 + 76) = 1;
                      StringZ = mdl_sync_sparse(*v203);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }

                      StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 16), &__s);
                      if ((StringZ & 0x80001FFF) == 0x8000000A)
                      {
                        goto LABEL_348;
                      }

                      v122 = __s;
                      v123 = *__s;
                      v124 = *(*v203 + 88);
                      *(v124 + 8) = *__s;
                      *(v124 + 12) = *(v122 + 1);
                      *(v124 + 16) = *(v122 + 2);
                      *(v124 + 20) = *(v122 + 3);
                      v125 = (v123 >> 4) + 4;
                      if (v123 < 0x10)
                      {
                        v125 = 5;
                      }

                      *(v124 + 24) = v122 + 16;
                      *(v124 + 32) = &v122[4 * v125];
                      *(v124 + 40) = &v122[4 * v125 + 4 * v123];
                    }
                  }

                  else
                  {
                    if (*(*v203 + 32))
                    {
                      StringZ = mdl_sync_sparse(*v203);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }
                    }

                    else
                    {
                      StringZ = mdl_sync(*v203);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }
                    }

                    LODWORD(__n) = v212 >> 2;
                    if (v212 >= 4)
                    {
                      v192 = 0;
                      v193 = __s;
                      do
                      {
                        if (*(*v203 + 32))
                        {
                          sparray_set(*(*v203 + 88), *&v193[4 * v192], *&v193[4 * v192 + 4]);
                        }

                        else
                        {
                          *(*(*v203 + 80) + 4 * *&v193[4 * v192]) = *&v193[4 * v192 + 4];
                        }

                        v192 += 2;
                      }

                      while (v192 < __n);
                    }
                  }
                }

                else
                {
                  LODWORD(__n) = v212 >> 4;
                  v170 = heap_Alloc(*(*v210 + 8), 24 * (v212 >> 4));
                  if (!v170)
                  {
LABEL_340:
                    v10 = 2585796618;
                    goto LABEL_349;
                  }

                  **(v209 + 48) = v170;
                  v171 = **(v209 + 48);
                  v172 = __n;
                  LODWORD(__n) = v212 >> 2;
                  if (v212 >= 4)
                  {
                    v173 = 0;
                    v174 = v171 + 24 * v172;
                    v175 = __s;
                    v176 = v174 - 8;
                    do
                    {
                      v177 = *&v175[4 * v173];
                      if ((v177 & 0x80000000) != 0)
                      {
                        v178 = v174 + 24 * v177;
                      }

                      else
                      {
                        v178 = *(*(*(v209 + 48) + 8) + 8 * v177) | 1;
                      }

                      *(v176 - 16) = v178;
                      v179 = *&v175[4 * v173 + 4];
                      if ((v179 & 0x80000000) != 0)
                      {
                        v180 = v174 + 24 * v179;
                      }

                      else
                      {
                        v180 = *(*(*(v209 + 48) + 8) + 8 * v179) | 1;
                      }

                      *(v176 - 8) = v180;
                      *v176 = *&v175[4 * v173 + 8];
                      *(v176 + 4) = *&v175[4 * v173 + 12];
                      v173 += 4;
                      v176 -= 24;
                    }

                    while (v173 < __n);
                  }
                }
              }

              else
              {
                LODWORD(__n) = v212 >> 4;
                v143 = heap_Alloc(*(*v210 + 8), 24 * (v212 >> 4));
                if (!v143)
                {
                  goto LABEL_340;
                }

                **(v209 + 40) = v143;
                v144 = **(v209 + 40);
                v145 = __n;
                LODWORD(__n) = v212 >> 2;
                if (v212 >= 4)
                {
                  v146 = 0;
                  v147 = v144 + 24 * v145;
                  v148 = __s;
                  v149 = v147 - 8;
                  do
                  {
                    v150 = *&v148[4 * v146];
                    if ((v150 & 0x80000000) != 0)
                    {
                      v151 = v147 + 24 * v150;
                    }

                    else
                    {
                      v151 = *(*(*(v209 + 40) + 8) + 8 * v150) | 1;
                    }

                    *(v149 - 16) = v151;
                    v152 = *&v148[4 * v146 + 4];
                    if ((v152 & 0x80000000) != 0)
                    {
                      v153 = v147 + 24 * v152;
                    }

                    else
                    {
                      v153 = *(*(*(v209 + 40) + 8) + 8 * v152) | 1;
                    }

                    *(v149 - 8) = v153;
                    *v149 = *&v148[4 * v146 + 8];
                    *(v149 + 4) = *&v148[4 * v146 + 12];
                    v146 += 4;
                    v149 -= 24;
                  }

                  while (v146 < __n);
                }
              }
            }

            else
            {
              v128 = v212;
              if (v212)
              {
                v10 = 2585796618;
                v129 = __s;
                v130 = *(*v203 + 112);
                v209 = v130;
                v131 = *__s;
                *(v130 + 24) = v131;
                *(v130 + 20) = *(v129 + 1);
                *(v130 + 8) = *(v129 + 2);
                *(v130 + 16) = 0;
                if (v131)
                {
                  v132 = heap_Calloc(*(*v210 + 8), v131, 8);
                  *(v209 + 32) = v132;
                  if (!v132)
                  {
                    goto LABEL_349;
                  }

                  v128 = v212;
                }

                if (v128 >= 0xD)
                {
                  v133 = 0;
                  v134 = 12;
                  do
                  {
                    HIDWORD(__n) = 100;
                    StringZ = ssftriff_reader_ReadStringZ(a3, __s, v128, v134, __dst, &__n + 1);
                    if ((StringZ & 0x80000000) != 0)
                    {
                      goto LABEL_348;
                    }

                    if (*(v209 + 24))
                    {
                      v135 = wapiti_ns_readline(*v210, __dst, &__n);
                      v136 = heap_Alloc(*(*v210 + 8), (__n + 1));
                      if (!v136)
                      {
                        goto LABEL_349;
                      }

                      v137 = v136;
                      cstdlib_strcpy(v136, "");
                      cstdlib_strncat(v137, __dst + v135, __n);
                      StringZ = pat_comp(*v210, v137, (*(v209 + 32) + 8 * v133));
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }

                      v138 = cstdlib_tolower(*v137);
                      switch(v138)
                      {
                        case '*':
                          *(v209 + 12) = vadd_s32(*(v209 + 12), 0x100000001);
                          break;
                        case 'b':
                          ++*(v209 + 16);
                          break;
                        case 'u':
                          ++*(v209 + 12);
                          break;
                      }

                      ++v133;
                    }

                    v134 += HIDWORD(__n);
                    v128 = v212;
                  }

                  while (v134 < v212);
                }
              }
            }

LABEL_221:
            StringZ = ssftriff_reader_CloseChunk(a3);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          *(*v203 + 32) = 1;
          v126 = *(*v210 + 32);
          v127 = "sparse theta ENABLED";
LABEL_220:
          wapiti_info(v126, v127);
          goto LABEL_221;
        }
      }
    }

LABEL_330:
    v10 = inited;
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_351;
    }

    return v10;
  }

  v212 = 0;
  *v210 = 0;
  __s = 0;
  __n = 0;
  v209 = 0;
  v205 = 0;
  *__s1 = 0;
  *v203 = 0;
  inited = InitRsrcFunction(a1, a2, v210);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  inited = rdr_new_qp(*v210, 0, &v209);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  inited = mdl_new_qp(v209, v203);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  v14 = *v203;
  *(*v203 + 24) = unk_26ECDBD08;
  v10 = 2585796618;
  *(v14 + 8) = opt_defaults;
  *(v14 + 36) = 1;
  while (1)
  {
    v15 = ssftriff_reader_OpenChunk(a3, __s1, &v212, &__s);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_332;
    }

    if (!cstdlib_strcmp(__s1, "PARA"))
    {
      StringZ = _crf_parse_params(*v210, __s, v212, a4);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_348;
      }

      goto LABEL_107;
    }

    if (!cstdlib_strcmp(__s1, "RULE"))
    {
      StringZ = wapiti_rules_load(*v210, __s, v212, (*(*v203 + 112) + 56));
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_348;
      }

      goto LABEL_107;
    }

    if (!cstdlib_strcmp(__s1, "SPRS"))
    {
      *(*v203 + 32) = 1;
      wapiti_info(*(*v210 + 32), "sparse theta ENABLED");
      goto LABEL_107;
    }

    if (!cstdlib_strcmp(__s1, "MODE"))
    {
      if (v212)
      {
        *(*v203 + 40) = *__s;
      }

      goto LABEL_107;
    }

    if (!cstdlib_strcmp(__s1, "RDER"))
    {
      break;
    }

    if (cstdlib_strcmp(__s1, "QRKL"))
    {
      if (!cstdlib_strcmp(__s1, "LEFL"))
      {
        v50 = *(__s + 1);
        LODWORD(__n) = *__s;
        v51 = __n;
        v52 = *(v209 + 40);
        *(v52 + 28) = v50;
        v53 = heap_Realloc(*(*v210 + 8), *(v52 + 8), 8 * v51);
        if (!v53)
        {
          goto LABEL_349;
        }

        v54 = v53;
        v55 = __n;
        *(*(v209 + 40) + 24) = __n;
        v56 = heap_Calloc(*(*v210 + 8), v55, 16);
        if (!v56)
        {
          v195 = *(v209 + 40);
LABEL_345:
          *(v195 + 8) = v54;
          goto LABEL_349;
        }

        v57 = v56;
        StringZ = ssftriff_reader_DetachChunkData(a3, a4, &__s);
        if ((StringZ & 0x80001FFF) == 0x8000000A)
        {
          v196 = *(v209 + 40);
LABEL_347:
          *(v196 + 8) = v54;
          goto LABEL_348;
        }

        if (__n)
        {
          v58 = 0;
          v59 = __s + 8;
          v60 = &__s[__n + 8];
          do
          {
            *v57 = v58;
            *(v57 + 8) = v60;
            *(v54 + 8 * v58) = v57;
            v60 += v59[v58++] + 1;
            v61 = __n;
            v57 += 16;
          }

          while (v58 < __n);
        }

        else
        {
          v61 = 0;
        }

        v90 = *(v209 + 40);
        goto LABEL_106;
      }

      if (cstdlib_strcmp(__s1, "QRKO"))
      {
        if (!cstdlib_strcmp(__s1, "LEFO"))
        {
          v80 = *(__s + 1);
          LODWORD(__n) = *__s;
          v81 = __n;
          v82 = *(v209 + 48);
          *(v82 + 28) = v80;
          v83 = heap_Realloc(*(*v210 + 8), *(v82 + 8), 8 * v81);
          if (!v83)
          {
            goto LABEL_349;
          }

          v54 = v83;
          v84 = __n;
          *(*(v209 + 48) + 24) = __n;
          v85 = heap_Calloc(*(*v210 + 8), v84, 16);
          if (!v85)
          {
            v195 = *(v209 + 48);
            goto LABEL_345;
          }

          v86 = v85;
          StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 8), &__s);
          if ((StringZ & 0x80001FFF) == 0x8000000A)
          {
            v196 = *(v209 + 48);
            goto LABEL_347;
          }

          if (__n)
          {
            v87 = 0;
            v88 = __s + 8;
            v89 = &__s[__n + 8];
            do
            {
              *v86 = v87;
              *(v86 + 8) = v89;
              *(v54 + 8 * v87) = v86;
              v89 += v88[v87++] + 1;
              v61 = __n;
              v86 += 16;
            }

            while (v87 < __n);
          }

          else
          {
            v61 = 0;
          }

          v90 = *(v209 + 48);
LABEL_106:
          *(v90 + 8) = v54;
          *(v90 + 20) = v61;
          goto LABEL_107;
        }

        if (cstdlib_strcmp(__s1, "OBSW"))
        {
          if (!cstdlib_strcmp(__s1, "OBWF"))
          {
            *(a4 + 76) = 1;
            StringZ = mdl_sync_sparse(*v203);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }

            StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 16), &__s);
            if ((StringZ & 0x80001FFF) == 0x8000000A)
            {
              goto LABEL_348;
            }

            v17 = __s;
            v18 = *__s;
            v19 = *(*v203 + 88);
            *(v19 + 8) = *__s;
            *(v19 + 12) = *(v17 + 1);
            *(v19 + 16) = *(v17 + 2);
            *(v19 + 20) = *(v17 + 3);
            v20 = (v18 >> 4) + 4;
            if (v18 < 0x10)
            {
              v20 = 5;
            }

            *(v19 + 24) = v17 + 16;
            *(v19 + 32) = &v17[4 * v20];
            *(v19 + 40) = &v17[4 * v20 + 4 * v18];
          }
        }

        else
        {
          if (*(*v203 + 32))
          {
            StringZ = mdl_sync_sparse(*v203);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          else
          {
            StringZ = mdl_sync(*v203);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          LODWORD(__n) = v212 >> 2;
          if (v212 >= 4)
          {
            v91 = 0;
            v92 = __s;
            do
            {
              if (*(*v203 + 32))
              {
                sparray_set(*(*v203 + 88), *&v92[4 * v91], *&v92[4 * v91 + 4]);
              }

              else
              {
                *(*(*v203 + 80) + 4 * *&v92[4 * v91]) = *&v92[4 * v91 + 4];
              }

              v91 += 2;
            }

            while (v91 < __n);
          }
        }
      }

      else
      {
        v62 = *(*(v209 + 48) + 28);
        v63 = heap_Calloc(*(*v210 + 8), v62, 16);
        if (!v63)
        {
          goto LABEL_349;
        }

        **(v209 + 48) = v63;
        v64 = **(v209 + 48);
        v65 = (v212 >> 2) - 2 * v62;
        v66 = heap_Calloc(*(*v210 + 8), v65, 8);
        if (!v66)
        {
          goto LABEL_349;
        }

        ***(v209 + 48) = v66;
        v67 = ***(v209 + 48);
        LODWORD(__n) = v212 >> 2;
        if (v212 >= 4)
        {
          v68 = 0;
          v69 = (v64 + 16 * v62);
          v70 = __s;
          v71 = v67 + 8 * v65;
          v72 = v69;
          do
          {
            v73 = *&v70[4 * v68];
            *(v72 - 2) = v73;
            *(v72 - 1) = *&v70[4 * (v68 + 1)];
            v74 = popcount(v73);
            v71 -= 8 * v74;
            *(v72 - 2) = v71;
            v72 -= 2;
            v75 = v68 + 2;
            if (v74)
            {
              v76 = 0;
              v77 = v68 + 2;
              do
              {
                v78 = *&v70[4 * v77];
                if ((v78 & 0x80000000) != 0)
                {
                  v79 = &v69[2 * v78];
                }

                else
                {
                  v79 = *(*(*(v209 + 48) + 8) + 8 * v78) | 1;
                }

                *(*v72 + v76) = v79;
                v76 += 8;
                ++v77;
              }

              while (8 * v74 != v76);
            }

            v68 = v74 + v75;
          }

          while (v74 + v75 < __n);
        }
      }
    }

    else
    {
      v32 = *(*(v209 + 40) + 28);
      v33 = heap_Calloc(*(*v210 + 8), v32, 16);
      if (!v33)
      {
        goto LABEL_349;
      }

      **(v209 + 40) = v33;
      v34 = **(v209 + 40);
      v35 = (v212 >> 2) - 2 * v32;
      v36 = heap_Calloc(*(*v210 + 8), v35, 8);
      if (!v36)
      {
        goto LABEL_349;
      }

      ***(v209 + 40) = v36;
      v37 = ***(v209 + 40);
      LODWORD(__n) = v212 >> 2;
      if (v212 >= 4)
      {
        v38 = 0;
        v39 = (v34 + 16 * v32);
        v40 = __s;
        v41 = v37 + 8 * v35;
        v42 = v39;
        do
        {
          v43 = *&v40[4 * v38];
          *(v42 - 2) = v43;
          *(v42 - 1) = *&v40[4 * (v38 + 1)];
          v44 = popcount(v43);
          v41 -= 8 * v44;
          *(v42 - 2) = v41;
          v42 -= 2;
          v45 = v38 + 2;
          if (v44)
          {
            v46 = 0;
            v47 = v38 + 2;
            do
            {
              v48 = *&v40[4 * v47];
              if ((v48 & 0x80000000) != 0)
              {
                v49 = &v39[2 * v48];
              }

              else
              {
                v49 = *(*(*(v209 + 40) + 8) + 8 * v48) | 1;
              }

              *(*v42 + v46) = v49;
              v46 += 8;
              ++v47;
            }

            while (8 * v44 != v46);
          }

          v38 = v44 + v45;
        }

        while (v44 + v45 < __n);
      }
    }

LABEL_107:
    StringZ = ssftriff_reader_CloseChunk(a3);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_348;
    }
  }

  v21 = v212;
  if (!v212)
  {
    goto LABEL_107;
  }

  v22 = __s;
  v23 = *(*v203 + 112);
  v209 = v23;
  v24 = *__s;
  *(v23 + 24) = v24;
  *(v23 + 20) = *(v22 + 1);
  *(v23 + 8) = *(v22 + 2);
  *(v23 + 16) = 0;
  if (v24)
  {
    v25 = heap_Calloc(*(*v210 + 8), v24, 8);
    *(v209 + 32) = v25;
    if (!v25)
    {
      goto LABEL_349;
    }

    v21 = v212;
  }

  if (v21 < 0xD)
  {
    goto LABEL_107;
  }

  v26 = 0;
  v27 = 12;
  while (1)
  {
    HIDWORD(__n) = 100;
    StringZ = ssftriff_reader_ReadStringZ(a3, __s, v21, v27, __dst, &__n + 1);
    if ((StringZ & 0x80000000) != 0)
    {
      break;
    }

    if (*(v209 + 24))
    {
      v28 = wapiti_ns_readline(*v210, __dst, &__n);
      v29 = heap_Alloc(*(*v210 + 8), (__n + 1));
      if (!v29)
      {
        goto LABEL_349;
      }

      v30 = v29;
      cstdlib_strcpy(v29, "");
      cstdlib_strncat(v30, __dst + v28, __n);
      StringZ = pat_comp(*v210, v30, (*(v209 + 32) + 8 * v26));
      if ((StringZ & 0x80000000) != 0)
      {
        break;
      }

      v31 = cstdlib_tolower(*v30);
      switch(v31)
      {
        case '*':
          *(v209 + 12) = vadd_s32(*(v209 + 12), 0x100000001);
          break;
        case 'b':
          ++*(v209 + 16);
          break;
        case 'u':
          ++*(v209 + 12);
          break;
      }

      ++v26;
    }

    v27 += HIDWORD(__n);
    v21 = v212;
    if (v27 >= v212)
    {
      goto LABEL_107;
    }
  }

LABEL_348:
  v10 = StringZ;
LABEL_349:
  v194 = *v203;
LABEL_350:
  *(a4 + 24) = v194;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_351:
    crf_Deinit(a4);
    v9 = ssftriff_reader_CloseChunk(a3);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }
  }

  return v10;
}

uint64_t crf_Deinit(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *v2;
      if (*(a1 + 68))
      {
        ssftriff_reader_ReleaseChunkData(*a1);
        ssftriff_reader_ReleaseChunkData(*(a1 + 8));
      }

      if (*(a1 + 76))
      {
        ssftriff_reader_ReleaseChunkData(*(a1 + 16));
      }

      if (*(a1 + 80))
      {
        mdl_free_qp(v2, *(a1 + 76));
      }

      else
      {
        mdl_free(v2, *(a1 + 68), *(a1 + 76));
      }

      *(a1 + 24) = 0;
      v4 = *(a1 + 32);
      if (v4)
      {
        heap_Free(*(v3 + 8), v4);
        *(a1 + 32) = 0;
      }

      v5 = *(a1 + 48);
      if (v5)
      {
        heap_Free(*(v3 + 8), v5);
        *(a1 + 48) = 0;
      }

      v6 = *(a1 + 56);
      if (v6)
      {
        heap_Free(*(v3 + 8), v6);
        *(a1 + 56) = 0;
      }
    }
  }

  return 0;
}

uint64_t crf_Process_Constrained(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 24);
  if (*(v7 + 32))
  {
    return tag_label_sparse(v7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return tag_label(v7, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t _crf_parse_params(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4)
{
  v8 = 2585796618;
  v9 = (a4 + 48);
  v10 = a3;
  v11 = heap_Realloc(*(a1 + 8), *(a4 + 48), a3);
  if (v11)
  {
    v12 = v11;
    cstdlib_memcpy(v11, a2, v10);
    v12[a3 - 1] = 0;
    *(a4 + 48) = v12;
    v13 = &v12[v10];
    *(a4 + 40) = 0;
    if (a3)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (!*v15)
        {
          *(a4 + 40) = ++v14;
        }

        ++v15;
      }

      while (v15 < v13);
      v16 = (v14 + 1) >> 1;
    }

    else
    {
      v16 = 0;
    }

    *(a4 + 40) = v16;
    v17 = heap_Realloc(*(a1 + 8), *(a4 + 32), 16 * v16);
    if (!v17)
    {
      *(a4 + 40) = 0;
      heap_Free(*(a1 + 8), *(a4 + 48));
LABEL_22:
      *v9 = 0;
      return v8;
    }

    v8 = 0;
    *(a4 + 32) = v17;
    if (*(a4 + 40) && a3)
    {
      v18 = 0;
      v19 = 1;
      while (1)
      {
        *(*(a4 + 32) + v18) = v12;
        v20 = cstdlib_strlen(v12);
        v21 = &v12[v20 + 1];
        v22 = *(a4 + 32);
        if (v21 >= v13)
        {
          break;
        }

        *(v22 + v18 + 8) = v21;
        v12 = (v21 + cstdlib_strlen(&v12[v20 + 1]) + 1);
        v18 += 16;
        v23 = v19++ >= *(a4 + 40);
        v23 = v23 || v12 >= v13;
        if (v23)
        {
          return 0;
        }
      }

      v8 = 0;
      v9 = (v22 + v18 + 8);
      goto LABEL_22;
    }
  }

  return v8;
}

char *hlp_NLUStrAddI(char *a1, char *a2)
{
  if (cstdlib_strcmp(a1, ""))
  {
    cstdlib_strcat(a1, ";");
  }

  v4 = cstdlib_strlen(a1);
  v5 = hlp_NLUStrLength(a2);
  result = cstdlib_strncat(&a1[v4], a2, v5);
  a1[v4] = 73;
  return result;
}

char *hlp_NLUStrLength(char *a1)
{
  result = cstdlib_strstr(a1, ";");
  if (result)
  {
    LOWORD(result) = result - a1;
  }

  else
  {
    LOWORD(result) = cstdlib_strlen(a1);
  }

  return result;
}

char *hlp_NLUStrSearchI(char *a1, uint64_t a2)
{
  v4 = hlp_NLUStrLength(a2);
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = v4 - 1;
  while (v5 != hlp_NLUStrLength(a1) || cstdlib_strncmp((a2 + 1), a1 + 1, v6))
  {
    result = cstdlib_strstr(a1, ";");
    a1 = result + 1;
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

char *hlp_NLUStrNext(char *a1)
{
  v1 = cstdlib_strstr(a1, ";");
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

char *hlp_NLUStrRemoveI(char *a1, uint64_t a2)
{
  result = hlp_NLUStrLength(a2);
  if (a1)
  {
    v5 = result;
    v6 = result - 1;
    v7 = a1;
    while (v5 != hlp_NLUStrLength(v7) || cstdlib_strncmp((a2 + 1), v7 + 1, v6))
    {
      result = cstdlib_strstr(v7, ";");
      v7 = result + 1;
      if (!result)
      {
        return result;
      }
    }

    hlp_NLUStrStrip(v7);

    return hlp_NLUStrJoin(a1, "");
  }

  return result;
}

char *hlp_NLUStrStrip(char *a1)
{
  v1 = a1;
  v2 = cstdlib_strstr(a1, ";");
  if (v2)
  {
    v3 = v2;
    v4 = cstdlib_strlen(v2 + 1);
    cstdlib_memmove(v1, v3 + 1, v4 + 1);
  }

  else
  {
    cstdlib_strcpy(v1, "");
    return 0;
  }

  return v1;
}

char *hlp_NLUStrJoin(const char *a1, const char *a2)
{
  v4 = &a1[cstdlib_strlen(a1)];
  if (cstdlib_strcmp(a1, ""))
  {
    v5 = cstdlib_strcmp(a2, "");
    v6 = cstdlib_strcmp(v4 - 1, ";");
    if (v5)
    {
      if (v6)
      {
        cstdlib_strcpy(v4++, ";");
      }
    }

    else if (!v6)
    {
      --v4;
    }
  }

  cstdlib_strcpy(v4, a2);
  return v4;
}

char *hlp_NLUStrKeyLen(char *a1)
{
  v2 = cstdlib_strstr(a1, ";");
  result = cstdlib_strstr(a1, ":");
  if (!result)
  {
    if (!v2)
    {
      LOWORD(result) = cstdlib_strlen(a1);
      return result;
    }

    goto LABEL_6;
  }

  if (v2 && v2 < result)
  {
LABEL_6:
    LOWORD(result) = v2 - a1;
    return result;
  }

  LOWORD(result) = result - a1;
  return result;
}

char *hlp_NLUStrKeyValue(char *a1)
{
  v1 = &a1[hlp_NLUStrKeyLen(a1)];
  v3 = *v1;
  v2 = v1 + 1;
  if (v3 == 58)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

char *hlp_NLUStrValueLen(char *a1)
{
  if (a1)
  {
    return hlp_NLUStrKeyLen(a1);
  }

  return a1;
}

char *hlp_NLUStrFind(char *a1, char *__s, char **a3, unsigned __int16 *a4)
{
  v8 = cstdlib_strlen(__s);
  if (a1)
  {
    v9 = v8;
    while (hlp_NLUStrKeyLen(a1) != v9 || cstdlib_strncmp(__s, a1, v9))
    {
      v10 = cstdlib_strstr(a1, ";");
      a1 = v10 + 1;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v11 = &a1[hlp_NLUStrKeyLen(a1)];
    v13 = *v11;
    v12 = v11 + 1;
    v14 = v13 == 58;
    if (v13 == 58)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    if (v14)
    {
      v16 = hlp_NLUStrKeyLen(v12);
    }

    else
    {
      v16 = 0;
    }

    *a4 = v16;
  }

  else
  {
LABEL_6:
    a1 = 0;
    *a4 = 0;
    *a3 = 0;
  }

  return a1;
}

uint64_t hlp_NLUStrExist(char *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  if (!a1)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    if (hlp_NLUStrKeyLen(a1) == v5)
    {
      result = cstdlib_strncmp(__s, a1, v5);
      if (!result)
      {
        break;
      }
    }

    v7 = cstdlib_strstr(a1, ";");
    a1 = v7 + 1;
    if (!v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t hlp_NLUStrRemoveKeyVal(char *a1, const char *a2)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v4 = hlp_NLUStrKeyLen(v3);
      if (cstdlib_strlen(a2) != v4 || cstdlib_strncmp(a2, v3, v4))
      {
        goto LABEL_8;
      }

      v5 = cstdlib_strstr(v3, ";");
      if (v5)
      {
        v6 = v5;
        v7 = cstdlib_strlen(v5 + 1);
        cstdlib_memmove(v3, v6 + 1, v7);
        v3[v7] = 0;
      }

      else
      {
        *v3 = 0;
LABEL_8:
        v8 = cstdlib_strstr(v3, ";");
        v3 = v8 + 1;
        if (!v8)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t hlp_NLUStrRemoveRangeKey(unsigned __int8 *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    v5 = a1;
    while (1)
    {
        ;
      }

      v6 = *v5 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      if (v7 || v8 == 0)
      {
        goto LABEL_20;
      }

      if (v5[1] != 95)
      {
        goto LABEL_20;
      }

      v10 = cstdlib_strlen(a2);
      if (cstdlib_strncmp(v5 + 2, a2, v10))
      {
        goto LABEL_20;
      }

      v11 = &v5[hlp_NLUStrKeyLen(v5)];
      v13 = *v11;
      v12 = (v11 + 1);
      if (v13 == 58)
      {
        v14 = hlp_NLUStrLength(v12);
        if (!a3)
        {
          goto LABEL_20;
        }

        v15 = v14;
        if (cstdlib_strlen(a3) != v14 || cstdlib_strncmp(a3, v12, v15))
        {
          goto LABEL_20;
        }
      }

      else if (a3 && cstdlib_strcmp(a3, ""))
      {
        goto LABEL_20;
      }

      v16 = cstdlib_strstr(v5, ";");
      if (v16)
      {
        v17 = v16;
        v18 = cstdlib_strlen(v16 + 1);
        cstdlib_memmove(v5, v17 + 1, v18);
        v5[v18] = 0;
      }

      else
      {
        *v5 = 0;
LABEL_20:
        v19 = cstdlib_strstr(v5, ";");
        v5 = (v19 + 1);
        if (!v19)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t hlp_NLUStrAppendKeyVal(char *a1, const char *a2, const char *a3)
{
  v6 = cstdlib_strlen(a1);
  if (v6 && a1[v6 - 1] != 59)
  {
    cstdlib_strcat(a1, ";");
  }

  cstdlib_strcat(a1, a2);
  if (a3 && cstdlib_strlen(a3))
  {
    cstdlib_strcat(a1, ":");
    cstdlib_strcat(a1, a3);
  }

  return 0;
}

char *hlp_NLUStrSet(char *a1, char *a2, char *__s)
{
  v20 = 0;
  v19 = 0;
  v6 = cstdlib_strlen(__s);
  v7 = hlp_NLUStrFind(a1, a2, &v20, &v19);
  if (v7)
  {
    v8 = v7;
    v9 = v19;
    if (v19 != v6)
    {
      v14 = v20;
      if (v19 || v20)
      {
        v17 = cstdlib_strlen(&v20[v19]);
        cstdlib_memmove(&v14[v6], &v14[v9], v17 + 1);
      }

      else
      {
        v15 = &v7[hlp_NLUStrKeyLen(v7)];
        v14 = v15 + 1;
        v16 = cstdlib_strlen(v15);
        cstdlib_memmove(&v15[v6 + 1], v15, v16 + 1);
        *v15 = 58;
      }

      v12 = v6;
      v10 = v14;
      v11 = __s;
      goto LABEL_13;
    }

    if (v19)
    {
      v10 = v20;
      v11 = __s;
      v12 = v19;
LABEL_13:
      cstdlib_strncpy(v10, v11, v12);
    }
  }

  else
  {
    v13 = hlp_NLUStrJoin(a1, a2);
    v8 = v13;
    if (__s && v6)
    {
      cstdlib_strcat(v13, ":");
      cstdlib_strcat(v8, __s);
    }
  }

  return v8;
}

char *hlp_NLUStrAppend(char *a1, char *a2, char *a3, const char *a4)
{
  v16 = 0;
  v15 = 0;
  v8 = hlp_NLUStrFind(a1, a2, &v16, &v15);
  if (v8 && v15)
  {
    v9 = v8;
    v10 = &v16[v15];
    v11 = cstdlib_strlen(a4);
    v12 = cstdlib_strlen(a3);
    v13 = cstdlib_strlen(v10);
    cstdlib_memmove(&v10[v11 + v12], v10, v13 + 1);
    cstdlib_strncpy(v10, a4, v11);
    cstdlib_strncpy(&v10[v11], a3, v12);
    return v9;
  }

  else
  {

    return hlp_NLUStrSet(a1, a2, a3);
  }
}

char *hlp_NLUStrOverride(char *a1, char *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = &v5[hlp_NLUStrKeyLen(v5)];
      v7 = *v6;
      v8 = hlp_NLUStrKeyLen(v5);
      v9 = v8;
      if (v7 == 58)
      {
        v10 = hlp_NLUStrKeyLen(v6 + 1);
        cstdlib_strncpy(__dst, v5, v9);
        __dst[v9] = 0;
        cstdlib_strncpy(v13, v6 + 1, v10);
      }

      else
      {
        cstdlib_strncpy(__dst, v5, v8);
        v10 = 0;
        __dst[v9] = 0;
      }

      v13[v10] = 0;
      if (__dst[1] == 95)
      {
        hlp_NLUStrJoin(a1, __dst);
        if (v7 == 58)
        {
          cstdlib_strcat(a1, ":");
          cstdlib_strcat(a1, v13);
        }
      }

      else if (!a3 || !cstdlib_strcmp(__dst, "BND"))
      {
        hlp_NLUStrSet(a1, __dst, v13);
      }

      v11 = cstdlib_strstr(v5, ";");
      v5 = v11 + 1;
    }

    while (v11);
  }

  return a1;
}

uint64_t hlp_dynstr_add(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v8 = 2601525248;
  v9 = cstdlib_strlen(*a2);
  v10 = cstdlib_strlen(a3);
  v11 = *(a2 + 8);
  if (v9 + v10 + 2 >= v11)
  {
    v12 = heap_Realloc(*(a1 + 8), *a2, v10 + v11 + *(a2 + 10));
    if (!v12)
    {
      log_OutPublic(*(a1 + 32), "GLOBALBEADAPT", 66000, 0);
      return 2601525258;
    }

    *a2 = v12;
    *(a2 + 8) += v10 + *(a2 + 10);
  }

  if (a4 == 1)
  {
    cstdlib_strcat(*a2, a3);
    return 0;
  }

  if (a4 == 2)
  {
    cstdlib_strcpy(*a2, a3);
    return 0;
  }

  return v8;
}

void *hlp_dynstr_free(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    result = heap_Free(result[1], v3);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t hlp_dynstr_init(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = a3;
  v8 = heap_Calloc(*(a1 + 8), 1, a3);
  *a2 = v8;
  if (v8)
  {
    *(a2 + 8) = v5;
    *(a2 + 10) = a4;
    cstdlib_strcpy(v8, "");
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return 2601525258;
  }
}

uint64_t globalbeadapt_OutputMorphemesToLingDBAsWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, unsigned __int8 *a6, char *a7, _DWORD *a8)
{
  v79 = 0;
  v80[0] = 0;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  __sa = 0;
  v16 = cstdlib_strlen(__s);
  v73 = 0;
  __b = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v68[0] = 0;
  v68[1] = 0;
  *a8 = 0;
  cstdlib_memset(&__b, 0, 0x10uLL);
  cstdlib_memset(&v69, 0, 0x10uLL);
  cstdlib_memset(v68, 0, 0x10uLL);
  v17 = a6 - 1;
  do
  {
    v19 = *++v17;
    v18 = v19;
  }

  while (v19 == 32);
  v20 = 0;
  while (v18 == 32)
  {
    --v17;
    do
    {
      v21 = *++v17;
      v18 = v21;
    }

    while (v21 == 32);
    ++v20;
    a6 = v17;
LABEL_10:
    if (v18)
    {
      ++v17;
    }

    v18 = *v17;
  }

  if (v18)
  {
    goto LABEL_10;
  }

  v22 = v17 != a6;
  v23 = a7;
  v24 = a7;
  while (1)
  {
    v25 = *v23;
    if (v25 <= 0x22)
    {
      break;
    }

    if (v25 != 35)
    {
      if (v25 != 47)
      {
        goto LABEL_27;
      }

      if (v23[1] == 84)
      {
        v25 = 47;
        goto LABEL_27;
      }
    }

LABEL_19:
    LOWORD(v18) = v18 + 1;
    while (1)
    {
      if (v25 != 32 && v25 != 35)
      {
        if (v25 != 47)
        {
          goto LABEL_26;
        }

        if (v23[1] == 84)
        {
          break;
        }
      }

      v26 = *++v23;
      v25 = v26;
    }

    v25 = 47;
LABEL_26:
    v24 = v23;
LABEL_27:
    if (v25)
    {
      ++v23;
    }
  }

  if (v25 == 32)
  {
    goto LABEL_19;
  }

  if (*v23)
  {
    goto LABEL_27;
  }

  v27 = v20 + v22;
  if (v23 != v24)
  {
    LOWORD(v18) = v18 + 1;
  }

  if (v27 == v18)
  {
    v28 = (*(a1[1] + 104))(a2, a3, 2, a4, v80 + 2);
    if ((v28 & 0x80000000) != 0 || (v28 = hlp_dynstr_init(*a1, &__b, 0x20u, 16), (v28 & 0x80000000) != 0) || (v28 = hlp_dynstr_init(*a1, &v69, 0x20u, 16), (v28 & 0x80000000) != 0) || (v28 = hlp_dynstr_init(*a1, v68, 0x20u, 16), (v28 & 0x80000000) != 0))
    {
LABEL_143:
      v62 = v28;
    }

    else
    {
      v73 = 0;
      v29 = HIWORD(v80[0]);
      if (HIWORD(v80[0]))
      {
        v66 = v16;
        v67 = a3;
        while (1)
        {
          v28 = (*(a1[1] + 168))(a2, a3, v29, 0, 1, &v77, v80);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          if ((v77 - 9) >= 6 && v77 != 4)
          {
            v47 = 1;
            goto LABEL_135;
          }

          v28 = (*(a1[1] + 168))(a2, a3, HIWORD(v80[0]), 1, 1, &v79, v80);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          v28 = (*(a1[1] + 168))(a2, a3, HIWORD(v80[0]), 2, 1, &v78, v80);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          if (!v79 || __s[v79 - 1] == 32)
          {
            goto LABEL_60;
          }

          if (v79 == 1 || __s[v79 - 1] != 95)
          {
            v32 = v77;
            if (v77 == 11)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v31 = cstdlib_strchr(":;,", __s[v79 - 2]);
            v32 = v77;
            if (v31)
            {
              v33 = 1;
            }

            else
            {
              v33 = v77 == 11;
            }

            if (v33)
            {
              goto LABEL_60;
            }
          }

          if ((v32 - 12) > 2)
          {
            v65 = 0;
            goto LABEL_61;
          }

LABEL_60:
          HIWORD(v73) = v79;
          v65 = 1;
LABEL_61:
          if (v66 <= v78)
          {
            goto LABEL_72;
          }

          v34 = &__s[v78];
          v35 = *v34;
          if (v35 == 32)
          {
            goto LABEL_72;
          }

          if (v35 == 95)
          {
            v36 = cstdlib_strchr(":;,", *(v34 - 1));
            v37 = v77;
            if (v36)
            {
              v38 = 1;
            }

            else
            {
              v38 = v77 == 11;
            }

            if (v38)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v37 = v77;
            if (v77 == 11)
            {
              goto LABEL_72;
            }
          }

          if ((v37 - 12) > 2)
          {
            v39 = 0;
            goto LABEL_73;
          }

LABEL_72:
          LOWORD(v73) = v78;
          v39 = 1;
LABEL_73:
          v28 = (*(a1[1] + 176))(a2, v67, HIWORD(v80[0]), 3, &v76, v80);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          v28 = (*(a1[1] + 176))(a2, v67, HIWORD(v80[0]), 5, &v75, v80);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          v28 = hlp_dynstr_add(*a1, &__b, v75, 1);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          v28 = (*(a1[1] + 176))(a2, v67, HIWORD(v80[0]), 14, &__sa, v80);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          if (LOWORD(v80[0]))
          {
            hlp_NLUStrRemoveKeyVal(__sa, "POS");
            if (!hlp_NLUStrExist(__sa, "PHR"))
            {
              hlp_NLUStrRemoveKeyVal(__sa, "PHR");
            }

            v28 = hlp_dynstr_add(*a1, &v69, __sa, 1);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_143;
            }

            v40 = __sa;
            if (*__sa)
            {
              if (v40[cstdlib_strlen(__sa) - 1] != 59)
              {
                v28 = hlp_dynstr_add(*a1, &v69, ";", 1);
                if ((v28 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }
              }
            }
          }

          if (cstdlib_strcmp(v76, ""))
          {
            if (cstdlib_strstr(v76, "-*"))
            {
              v41 = cstdlib_strchr(&__s[v79], 45);
              if (v41)
              {
                if (v41 < &__s[v78])
                {
                  do
                  {
                    *v41 = 95;
                    v41 = cstdlib_strchr(v41 + 1, 45);
                    if (v41)
                    {
                      v42 = v41 >= &__s[v78];
                    }

                    else
                    {
                      v42 = 1;
                    }
                  }

                  while (!v42);
                }
              }
            }

            if (v39)
            {
              i = a7;
              if ((v77 - 15) >= 0xFFFFFFFC)
              {
                while (1)
                {
                  v44 = *i;
                  v46 = v44 > 0x23 || ((1 << v44) & 0x900800001) == 0;
                  if (!v46 || v44 == 95)
                  {
                    break;
                  }

                  ++i;
                }
              }

              else
              {
                for (i = a7; ; ++i)
                {
                  v44 = *i;
                  if (v44 <= 0x23 && ((1 << v44) & 0x900000001) != 0)
                  {
                    break;
                  }
                }
              }

              if (v44)
              {
                *i++ = 0;
              }

              if (*a7 == 45)
              {
                ++a7;
              }

              cstdlib_strlen(a7);
              v64 = a7;
              log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "write joined word %d,%d POS=%s PHON=%s", HIWORD(v73), v73, __b, a7);
              if ((v65 & 1) == 0)
              {
                v28 = (*(a1[1] + 160))(a2, v67, HIWORD(v80[0]), 0, 1, &v77, &v79 + 2);
                if ((v28 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }

                v28 = (*(a1[1] + 160))(a2, v67, HIWORD(v80[0]), 1, 1, &v73 + 2, &v79 + 2);
                if ((v28 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }

                v28 = (*(a1[1] + 160))(a2, v67, HIWORD(v80[0]), 2, 1, &v73, &v79 + 2);
                if ((v28 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }

                v48 = *(a1[1] + 160);
                v49 = HIWORD(v80[0]);
                v50 = cstdlib_strlen(__b);
                v28 = v48(a2, v67, v49, 5, (v50 + 1), __b, &v79 + 2);
                if ((v28 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }
              }

              v28 = hlp_dynstr_add(*a1, v68, v69, 1);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v28 = hlp_dynstr_add(*a1, v68, "POS:", 1);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v28 = hlp_dynstr_add(*a1, v68, __b, 1);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v51 = *(a1[1] + 160);
              v52 = HIWORD(v80[0]);
              v53 = cstdlib_strlen(v68[0]);
              v28 = v51(a2, v67, v52, 14, (v53 + 1), v68[0], &v79 + 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v54 = *(a1[1] + 160);
              v55 = HIWORD(v80[0]);
              v56 = cstdlib_strlen(v64);
              v28 = v54(a2, v67, v55, 3, (v56 + 1), v64, &v79 + 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              while (1)
              {
                v57 = *i;
                v58 = v57 > 0x2F;
                v59 = (1 << v57) & 0x800900000000;
                if (v58 || v59 == 0)
                {
                  break;
                }

                ++i;
              }

              v28 = hlp_dynstr_add(*a1, &__b, "", 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v28 = hlp_dynstr_add(*a1, &v69, "", 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v28 = hlp_dynstr_add(*a1, v68, "", 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v47 = 1;
              a7 = i;
            }

            else
            {
              v47 = 0;
            }
          }

          else
          {
            v47 = 1;
          }

          a3 = v67;
LABEL_135:
          v61 = HIWORD(v80[0]);
          v62 = (*(a1[1] + 120))(a2, a3, HIWORD(v80[0]), v80 + 2);
          if ((v62 & 0x80000000) == 0)
          {
            if ((v47 & 1) != 0 || (v62 = (*(a1[1] + 192))(a2, a3, v61), (v62 & 0x80000000) == 0))
            {
              v29 = HIWORD(v80[0]);
              if (HIWORD(v80[0]))
              {
                continue;
              }
            }
          }

          goto LABEL_144;
        }
      }

      v62 = 0;
    }

LABEL_144:
    if (__b)
    {
      heap_Free(*(*a1 + 8), __b);
      __b = 0;
    }

    LODWORD(v72) = 0;
    if (v69)
    {
      heap_Free(*(*a1 + 8), v69);
      v69 = 0;
    }

    LODWORD(v70) = 0;
    if (v68[0])
    {
      heap_Free(*(*a1 + 8), v68[0]);
    }
  }

  else
  {
    *a8 = 1;
    log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "Could not align morphemes into words, word count in L2=%d, not equal to word count in O1=%d", v27, v18);
    return 0;
  }

  return v62;
}

uint64_t globalbeadapt_SetFEBOOLKeyword(void *a1, uint64_t a2, _DWORD *a3, int a4)
{
  memset(__c, 0, sizeof(__c));
  *a3 = a4;
  if (((*(a1[7] + 96))(a1[5], a1[6], "fecfg", a2, &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v6 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "1"))
    {
      *a3 = 1;
    }

    if (!cstdlib_strcmp(**&__c[3], "0"))
    {
      *a3 = 0;
    }
  }

  return 0;
}

uint64_t globalbeadapt_OutputToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  __s1 = 0;
  result = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v30 + 2);
  if ((result & 0x80000000) == 0)
  {
    v12 = HIWORD(v30);
    if (HIWORD(v30))
    {
      while (1)
      {
        result = (*(*(a1 + 8) + 168))(a2, a3, v12, 0, 1, &v27, &v30);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if ((v27 - 9) >= 6 && v27 != 4)
        {
          goto LABEL_26;
        }

        result = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v30), 3, &__s1, &v30);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (cstdlib_strcmp(__s1, ""))
        {
          if (cstdlib_strstr(__s1, "-*"))
          {
            result = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v30), 1, 1, &v29, &v30);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v30), 2, 1, &v28, &v30);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v14 = cstdlib_strchr((a5 + v29), 45);
            if (v14 && v14 < a5 + v28)
            {
              do
              {
                *v14 = 95;
                v14 = cstdlib_strchr(v14 + 1, 45);
                if (v14)
                {
                  v15 = v14 >= a5 + v28;
                }

                else
                {
                  v15 = 1;
                }
              }

              while (!v15);
            }
          }

          for (i = a6; ; ++i)
          {
            v17 = *i;
            if (!*i)
            {
              break;
            }

            if (v17 == 32 || v17 == 35)
            {
              *i++ = 0;
              break;
            }
          }

          if (*(a1 + 88))
          {
            v18 = cstdlib_strcmp(a6, "_") != 0;
          }

          else
          {
            v18 = 1;
          }

          if (*a6 == 45)
          {
            ++a6;
          }

          v19 = cstdlib_strlen(a6);
          if (a6[(v19 + 1) - 1] == 45)
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 + 1;
          }

          result = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v30), 3, v20, a6, &v29 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          while (1)
          {
            v21 = *i;
            v22 = v21 > 0x2F;
            v23 = (1 << v21) & 0x800900000000;
            if (v22 || v23 == 0)
            {
              break;
            }

            ++i;
          }

          a6 = i;
        }

        else
        {
LABEL_26:
          v18 = 1;
        }

        v25 = HIWORD(v30);
        result = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v30), &v30 + 2);
        if ((result & 0x80000000) == 0)
        {
          if (v18 || (result = (*(*(a1 + 8) + 192))(a2, a3, v25), (result & 0x80000000) == 0))
          {
            v12 = HIWORD(v30);
            if (HIWORD(v30))
            {
              continue;
            }
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t globalbeadapt_SetupDepesInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, int a6)
{
  v159 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  v135 = 0;
  v131 = 0;
  v129 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v12 = *(a1 + 106);
  if (*(a1 + 106))
  {
    bzero(v157, v12);
    memset(__b, 32, v12);
    memset(v155, 126, v12);
    memset_pattern16(v154, &unk_26ECDB6D0, 4 * v12);
  }

  v157[*(a1 + 224)] = 126;
  v157[*(a1 + 226)] = 126;
  if (*(a1 + 256) == 1)
  {
    v157[*(a1 + 228)] = 126;
  }

  v157[*(a1 + 238)] = 126;
  if (*(a1 + 248))
  {
    v13 = *(a1 + 240);
    v157[v13] = 126;
    v154[v13] = 0;
  }

  v146 = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v141 = 0;
  v142 = 0;
  v140 = 0;
  v136 = 0;
  __dst = 0;
  v134 = 0;
  v130 = 0;
  v126 = 0;
  v124 = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v131);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  com_depes_StartWritingToLayers(a1 + 96);
  Str = (*(*(a1 + 8) + 176))(a2, a3, a4, 0, &v146, &v145);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v145 + 2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v116 = 0;
  v117 = 0;
  v15 = 0;
  v16 = 0;
  v114 = 0;
  v115 = a1 + 208;
  v118 = 0xFFFF;
  v119 = 1;
  v122 = 126;
  while (1)
  {
    v120 = v15;
    if (!HIWORD(v145))
    {
      v95 = *(v115 + 2 * *(a1 + 224));
      if (*(a1 + 248))
      {
        v96 = v119 == 0;
      }

      else
      {
        v96 = 0;
      }

      if (v96)
      {
        if (v135)
        {
          hlp_AddTnTag(a1, WORD2(v114), v135, v155);
        }

        else if (v15)
        {
          v107 = 0;
          do
          {
            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }
          }

          while (++v107 < v15);
        }
      }

      if (!v116 || (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "◄"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b), (BacktransPOS & 0x80000000) == 0))
      {
        if (!v117 || (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b), (BacktransPOS & 0x80000000) == 0))
        {
          if (!*(a1 + 248) || v135 || (v97 = *(v115 + 2 * *(a1 + 224)) - v95) == 0)
          {
LABEL_268:
            v25 = hlp_ConvertOrthographyLayer(a1);
            if ((v25 & 0x80000000) == 0 && *(a1 + 106))
            {
              v99 = 14;
              do
              {
                v100 = *(a1 + 8 * v99);
                if (v100)
                {
                  v101 = a5;
                  log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "%s L%d: %s", a5, v99 - 13, v100);
                  v102 = *(a1 + 32);
                  v103 = *(a1 + 8 * v99);
                  v104 = v99 - 14 >= *(a1 + 104) ? *(v102 + 136) : *(v102 + 120);
                  v105 = cstdlib_strlen(*(a1 + 8 * v99));
                  v25 = v104(*(a1 + 16), *(a1 + 24), (v99 - 14), v103, v105);
                  a5 = v101;
                  if ((v25 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v106 = v99 - 13;
                ++v99;
              }

              while (v106 < *(a1 + 106));
            }

            goto LABEL_286;
          }

          v98 = 0;
          while (1)
          {
            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              break;
            }

            if (++v98 >= v97)
            {
              goto LABEL_268;
            }
          }
        }
      }

LABEL_285:
      v25 = BacktransPOS;
      goto LABEL_286;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_285;
    }

    v18 = v143;
    if (v143 == 15)
    {
      BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v145), 7, 1, &v126, &v145);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      v118 = v126;
      v18 = v143;
    }

    v19 = (v18 - 9) < 6 || v18 == 4;
    if (v19)
    {
      BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v145), 1, 1, &v144 + 2, &v145);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v145), 2, 1, &v144, &v145);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      HIDWORD(v117) = v144;
      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 5, &v142, &v145);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      if (*(a1 + 88))
      {
        BacktransPOS = com_mosynt_GetBacktransPOS(*(a1 + 40), *(a1 + 48), *(a1 + 56), v142, __s);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        v142 = __s;
        v20 = *(*(a1 + 8) + 160);
        v21 = HIWORD(v145);
        v22 = cstdlib_strlen(__s);
        BacktransPOS = v20(a2, a3, v21, 5, v22, v142, &v124);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }
      }

      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 6, &v141, &v145);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v145), 10, &v127) & 0x80000000) != 0 || v127 != 1)
      {
        v136 = "";
      }

      else
      {
        BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 10, &v136, &v145);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }
      }

      strcpy(v139, "~");
      if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v145), 9, &v127) & 0x80000000) == 0 && v127 == 1)
      {
        BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 9, &v140, &v145);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        if ((!*v140 || (v139[0] = *v140) == 0 || !LH_stricmp(v140, v131) || !LH_stricmp(v140, "normal")) && ((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v145), 12, &v127) & 0x80000000) == 0 && v127 == 1)
        {
          BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 12, &v130, &v145);
          if ((BacktransPOS & 0x80000000) != 0)
          {
            goto LABEL_285;
          }

          v23 = *(a1 + 296);
          if (v23)
          {
            ReadOnly = ssftmap_FindReadOnly(v23, v130, &v129);
            if ((ReadOnly & 0x80000000) != 0)
            {
              v25 = ReadOnly;
              if ((ReadOnly & 0x1FFF) != 0x14)
              {
                goto LABEL_286;
              }
            }

            else
            {
              v139[0] = *v129;
            }
          }
        }
      }

      v133 = 0;
      if (*(a1 + 88) || *(a1 + 264))
      {
        BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 13, &v134, &v145);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        v26 = *v134;
        if (!*v134)
        {
          v26 = 48;
        }

        LOBYTE(v133) = v26;
      }

      v27 = HIWORD(v145);
      v153 = 0;
      v151 = 0;
      v152 = 0;
      v150 = 0;
      strcpy(__src, "docclass_");
      v149 = 0;
      v147 = 0;
      strcpy(v132, "~");
      if (((*(*(a1 + 8) + 184))(a2, a3, v27, 14, &v153 + 2) & 0x80000000) == 0 && HIWORD(v153) == 1)
      {
        BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, v27, 14, &v152, &v153);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        if (hlp_NLUStrFind(v152, "S_CLASS", &v151, &v150) || hlp_NLUStrFind(v152, "I_CLASS", &v151, &v150) || hlp_NLUStrFind(v152, "E_CLASS", &v151, &v150))
        {
          if (*(a1 + 252))
          {
            v28 = *(*a1 + 8);
            v29 = cstdlib_strlen(v151);
            v30 = heap_Alloc(v28, (v29 + 10));
            if (!v30)
            {
              v25 = 2601525258;
              log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
              goto LABEL_286;
            }

            v31 = v30;
            cstdlib_strcpy(v30, __src);
            cstdlib_strncat(v31, v151, v150);
            v148 = 0;
            v32 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", v31, &v149, &v148, &v147);
            if ((v32 & 0x80000000) != 0)
            {
              v25 = v32;
              heap_Free(*(*a1 + 8), v31);
              goto LABEL_286;
            }

            if (v148 == 1 && v149)
            {
              v132[0] = **v149;
            }

            heap_Free(*(*a1 + 8), v31);
          }

          else
          {
            v132[0] = *v151;
          }
        }
      }

      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 3, &__s1, &v145);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      v33 = __s1;
      if (!a6)
      {
        goto LABEL_123;
      }

      if (4 * cstdlib_strlen(__s1) - 125 > 0xFFFFFFFFFFFFFF7ELL)
      {
        v34 = 128;
      }

      else
      {
        v34 = 4 * cstdlib_strlen(__s1) + 4;
      }

      v35 = heap_Realloc(*(*a1 + 8), v16, v34);
      if (!v35)
      {
        v25 = 2601525258;
        log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
        return v25;
      }

      v33 = v35;
      if (cstdlib_strstr(__s1, "\\TQ\""))
      {
        *(a1 + 268) = 1;
      }

      if (v143 == 11)
      {
        v111 = v34;
      }

      else
      {
        if (v143 != 13)
        {
LABEL_110:
          v53 = __s1;
          v54 = cstdlib_strlen(__s1);
          if (v54)
          {
            v55 = 0;
            v56 = 0;
            v57 = (v53 + 1);
            do
            {
              v58 = *(v57 - 1);
              if (v56)
              {
                v56 = v58 != 92;
              }

              else if (v58 != 92 || (v59 = *v57, v56 = 1, v59 != 47) && v59 != 84)
              {
                v56 = 0;
                v60 = v55++;
                v33[v60] = v58;
              }

              ++v57;
              --v54;
            }

            while (v54);
            v54 = v55;
          }

          v33[v54] = 0;
          cstdlib_strcpy(__s1, v33);
          v61 = __s1;
          v62 = cstdlib_strlen(__s1);
          v63 = utf8_DepesToUtf8(v61, v62 + 1, 0, v33, v34, &v125, 0);
          if ((v63 & 0x80000000) != 0 || (v64 = *(*(a1 + 8) + 160), v65 = HIWORD(v145), v66 = cstdlib_strlen(v33), v63 = v64(a2, a3, v65, 3, (v66 + 1), v33, &v145), (v63 & 0x80000000) != 0))
          {
            v25 = v63;
            goto LABEL_287;
          }

          __s1 = v33;
          v16 = v33;
LABEL_123:
          if (cstdlib_strcmp(v33, ""))
          {
            if (*(a1 + 248) && !v119)
            {
              if (v135 && HIWORD(v144) != v128)
              {
                if (HIWORD(v144) > HIWORD(v128))
                {
                  hlp_AddTnTag(a1, WORD2(v114), v135, v155);
                  v135 = 0;
                }
              }

              else if (v120)
              {
                v67 = 0;
                do
                {
                  BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 240), " ");
                  if ((BacktransPOS & 0x80000000) != 0)
                  {
                    goto LABEL_285;
                  }
                }

                while (++v67 < v120);
              }
            }

            v68 = *(a1 + 224);
            v69 = *(v115 + 2 * v68);
            v70 = v143;
            if (v143 != 10 && v116 != 0)
            {
              BacktransPOS = com_depes_AddToLayer((a1 + 96), v68, "◄");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              v116 = 0;
              v70 = v143;
            }

            if (v70 != 11 && v117)
            {
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              LODWORD(v117) = 0;
            }

            if (!v119 && (v118 & 0x80000000) == 0)
            {
              v72 = v118 > 1 ? " /" : " #";
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), v72);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            LOWORD(v127) = 0;
            if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v145), 8, &v127) & 0x80000000) == 0 && v127 == 1)
            {
              BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v145), 8, 1, &v127 + 2, &v145);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            if (!v119)
            {
              v73 = HIWORD(v144);
              if (*(v146 + HIWORD(v144) - 1))
              {
                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v146, HIWORD(v144));
                BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 226), (v146 + HIWORD(v144) - (v73 - PreviousUtf8Offset)), (v73 - PreviousUtf8Offset));
                if ((BacktransPOS & 0x80000000) != 0)
                {
                  goto LABEL_285;
                }
              }

              else
              {
                log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "unexpected empty orthography when filling depes layer (frompos: %d, topos: %d", HIWORD(v144), v144);
                BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 224), " ", 1, 0);
                if ((BacktransPOS & 0x80000000) != 0)
                {
                  goto LABEL_285;
                }
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            v75 = v143;
            if (v143 == 10 && !v116)
            {
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "◄");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              v116 = 1;
              v75 = v143;
            }

            if (v75 == 13)
            {
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              LODWORD(v117) = 1;
            }

            LODWORD(v114) = *(v115 + 2 * *(a1 + 224));
            v76 = cstdlib_strstr(__s1, "▲");
            __dst = v76;
            if (v76)
            {
              *v76 = 0;
            }

            BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), __s1);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 226), (v146 + HIWORD(v144)), v144 - HIWORD(v144));
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            v77 = *(a1 + 228);
            v78 = (a1 + 96);
            if (*(a1 + 256) == 1)
            {
              BacktransPOS = com_depes_AddToLayer(v78, v77, v142);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            else
            {
              BacktransPOS = com_depes_AddToLayerN(v78, v77, v142, 1);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 230), v141, 1);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 232), v139, 1, v139[0] != 126);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 234), &v133, 1);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 236), v132, 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 238), v136);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, v157);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            if (__dst)
            {
              cstdlib_strncpy(__dst, "▲", 3uLL);
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), __dst);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v154, v157);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            v15 = *(v115 + 2 * *(a1 + 224)) - v114;
            if (*(a1 + 248))
            {
              v79 = v114 - v69;
              v80 = v135;
              if (v135 && HIWORD(v144) != v128)
              {
                v119 = 0;
                v83 = v79 + HIDWORD(v114) + v15;
              }

              else
              {
                if (v114 != v69)
                {
                  v81 = *(v115 + 2 * *(a1 + 224)) - v114;
                  v82 = 0;
                  while (1)
                  {
                    BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
                    if ((BacktransPOS & 0x80000000) != 0)
                    {
                      goto LABEL_285;
                    }

                    if (++v82 >= v79)
                    {
                      v80 = v135;
                      v15 = v81;
                      break;
                    }
                  }
                }

                v119 = 0;
                v19 = v80 == 0;
                v83 = HIDWORD(v114);
                if (!v19)
                {
                  v83 = v15;
                }
              }

              HIDWORD(v114) = v83;
              v118 = 0xFFFF;
              goto LABEL_207;
            }

            v118 = 0xFFFF;
            v119 = 0;
          }

          else
          {
            v15 = v120;
          }

          goto LABEL_207;
        }

        v111 = v34;
        v122 = 126;
      }

      v112 = a3;
      v113 = a6;
      v36 = __s1;
      v37 = cstdlib_strlen(__s1);
      if (v37)
      {
        v38 = 0;
        v39 = 0;
        v40 = v36 + 1;
        v41 = 1;
        v42 = v122;
        while (1)
        {
          v43 = v36[v38];
          if (v39)
          {
            v39 = v43 != 92;
          }

          else
          {
            if (v43 == 92)
            {
              v44 = &v40[v38];
              v45 = v40[v38];
              if (v45 == 47)
              {
                v42 = 126;
                v49 = v122;
                if (v41 == 1)
                {
                  v49 = 126;
                }

                v122 = v49;
LABEL_105:
                v39 = 1;
                goto LABEL_106;
              }

              if (v45 == 84)
              {
                for (i = 1; ; i = v47 + 1)
                {
                  v47 = i;
                  v48 = v44[i];
                  if (!v48)
                  {
                    break;
                  }

                  if (v48 == 92)
                  {
                    v44[v47] = 0;
                    if (*(a1 + 284))
                    {
                      v108 = v42;
                      v109 = v40;
                      v110 = a5;
                      v50 = 0;
                      while (1)
                      {
                        v51 = *(*(a1 + 288) + 8 * v50);
                        if (v51)
                        {
                          if (cstdlib_strlen(v51) >= 4 && cstdlib_strstr((*(*(a1 + 288) + 8 * v50) + 3), v44))
                          {
                            break;
                          }
                        }

                        if (++v50 >= *(a1 + 284))
                        {
                          v40 = v109;
                          a5 = v110;
                          v42 = v108;
                          goto LABEL_104;
                        }
                      }

                      v42 = **(*(a1 + 288) + 8 * v50);
                      v52 = v122;
                      if (v41 == 1)
                      {
                        v52 = **(*(a1 + 288) + 8 * v50);
                      }

                      v122 = v52;
                      v40 = v109;
                      a5 = v110;
                    }

LABEL_104:
                    v44[v47] = 92;
                    goto LABEL_105;
                  }
                }

                goto LABEL_105;
              }
            }

            v39 = 0;
            v41 = 0;
          }

LABEL_106:
          if (++v38 == v37)
          {
            goto LABEL_109;
          }
        }
      }

      v42 = v122;
LABEL_109:
      v139[0] = v122;
      v122 = v42;
      a6 = v113;
      a3 = v112;
      v34 = v111;
      goto LABEL_110;
    }

LABEL_207:
    v84 = v143;
    if (v143 == 7 && !v117)
    {
      break;
    }

LABEL_222:
    if (v84 != 6)
    {
      goto LABEL_292;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v145), 1, 1, &v128, &v145);
    if ((BacktransPOS & 0x80000000) == 0)
    {
      if (*(a1 + 248) && v135 && v128 > HIWORD(v128))
      {
        hlp_AddTnTag(a1, WORD2(v114), v135, v155);
        v15 = 0;
        v135 = 0;
      }

      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 4, &v135, &v145);
      if ((BacktransPOS & 0x80000000) == 0)
      {
        BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v145), 2, 1, &v128 + 2, &v145);
        HIDWORD(v114) = v15;
        if ((BacktransPOS & 0x80000000) == 0)
        {
LABEL_292:
          BacktransPOS = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v145), &v145 + 2);
          if ((BacktransPOS & 0x80000000) == 0)
          {
            continue;
          }
        }
      }
    }

    goto LABEL_285;
  }

  BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v145), 1, 1, &v144 + 2, &v145);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    goto LABEL_285;
  }

  BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v145), 4, &__dst, &v145);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    goto LABEL_285;
  }

  v121 = v16;
  v85 = v15;
  if (!__s1 || (v86 = cstdlib_strchr(__s1, 42), HIDWORD(v117) - 1 <= HIWORD(v144)) || (v87 = v86) == 0 || cstdlib_strchr(v86 + 1, 42))
  {
    v88 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "▲");
    if ((v88 & 0x80000000) != 0)
    {
      goto LABEL_244;
    }

    v88 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), __dst);
    if ((v88 & 0x80000000) != 0)
    {
      goto LABEL_244;
    }

    v88 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "▼");
    if ((v88 & 0x80000000) != 0)
    {
      goto LABEL_244;
    }

    v88 = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b);
    if ((v88 & 0x80000000) != 0)
    {
      goto LABEL_244;
    }

LABEL_219:
    if (v135)
    {
      HIDWORD(v114) += cstdlib_strlen(__dst);
    }

    v15 = v85 + cstdlib_strlen(__dst);
    v84 = v143;
    v16 = v121;
    goto LABEL_222;
  }

  if (__s1)
  {
    v89 = (__s1 - v87 - v114 + *(v115 + 2 * *(a1 + 224)));
  }

  else
  {
    v89 = 0;
  }

  v90 = Utf8_LengthInUtf8chars(v87, v89);
  v88 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), "▲", v89);
  if ((v88 & 0x80000000) == 0)
  {
    v88 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), __dst, v89);
    if ((v88 & 0x80000000) == 0)
    {
      v88 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), "▼", v89);
      if ((v88 & 0x80000000) == 0)
      {
        v91 = a3;
        cstdlib_strlen(__dst);
        v92 = 0;
        do
        {
          v93 = *(a1 + 228);
          if (v93 < *(a1 + 238))
          {
            do
            {
              v88 = com_depes_InsertBeforeEnd((a1 + 96), v93, " ", v90);
              if ((v88 & 0x80000000) != 0)
              {
                goto LABEL_244;
              }

              LOWORD(v93) = v93 + 1;
            }

            while (*(a1 + 238) > v93);
          }

          ++v92;
        }

        while (cstdlib_strlen(__dst) + 2 > v92);
        v88 = com_depes_FillToMaxLayerSet(a1 + 96, v154, __b);
        a3 = v91;
        if ((v88 & 0x80000000) == 0)
        {
          goto LABEL_219;
        }
      }
    }
  }

LABEL_244:
  v25 = v88;
  v16 = v121;
LABEL_286:
  v33 = v16;
  if (v16)
  {
LABEL_287:
    heap_Free(*(*a1 + 8), v33);
  }

  return v25;
}

uint64_t hlp_AddTnTag(uint64_t a1, unsigned int a2, char *__s, uint64_t a4)
{
  v8 = 2 * cstdlib_strlen(__s) - 2;
  result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "X");
  if (v8 >= a2)
  {
    if ((result & 0x80000000) == 0)
    {
      v15 = *(a1 + 240);
      v16 = cstdlib_strlen(__s);
      result = com_depes_AddToLayerN((a1 + 96), v15, __s + 1, v16 - 2);
      if ((result & 0x80000000) == 0)
      {
        result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "Y");
        if ((result & 0x80000000) == 0)
        {
          v17 = *(a1 + 240);
          v18 = cstdlib_strlen(__s);
          result = com_depes_AddToLayerN((a1 + 96), v17, __s + 1, v18 - 2);
          if ((result & 0x80000000) == 0)
          {

            return com_depes_FillToMaxAllLayers(a1 + 96, a4);
          }
        }
      }
    }
  }

  else if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 240);
    v11 = cstdlib_strlen(__s);
    result = com_depes_AddToLayerN((a1 + 96), v10, __s + 1, v11 - 2);
    if ((result & 0x80000000) == 0)
    {
      v12 = 2 * cstdlib_strlen(__s) - 2;
      if ((v12 & 0xFFFEu) >= a2)
      {
LABEL_7:
        result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "Y");
        if ((result & 0x80000000) == 0)
        {
          v13 = *(a1 + 240);
          v14 = cstdlib_strlen(__s) - 2;

          return com_depes_AddToLayerN((a1 + 96), v13, __s + 1, v14);
        }
      }

      else
      {
        while (1)
        {
          result = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), "~", 1, 0);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (a2 <= ++v12)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_ConvertOrthographyLayer(uint64_t a1)
{
  v2 = a1 + 176;
  v3 = *(a1 + 176 + 2 * *(a1 + 226));
  if (v3 >= 0x3FFF)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4 * v3;
  }

  v5 = heap_Alloc(*(*a1 + 8), v4);
  if (v5)
  {
    v6 = v5;
    v7 = a1 + 112;
    cstdlib_strcpy(v5, *(a1 + 112 + 8 * *(a1 + 226)));
    v8 = (*(*(a1 + 56) + 104))(*(a1 + 40), *(a1 + 48), "normal", v6, v3);
    v9 = *(*a1 + 8);
    if ((v8 & 0x80000000) != 0)
    {
      heap_Free(v9, v6);
    }

    else
    {
      heap_Free(v9, *(v7 + 8 * *(a1 + 226)));
      v10 = *(a1 + 226);
      *(v7 + 8 * v10) = v6;
      *(v2 + 2 * v10) = v4;
      *(a1 + 2 * *(a1 + 226) + 192) = cstdlib_strlen(v6);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return 2601525258;
  }

  return v8;
}

uint64_t globalbeadapt_DoPostprocessing(void *a1, const char *a2, char **a3, int a4)
{
  __s2 = 0;
  v99 = 0;
  v98 = 0;
  __s = 0;
  v8 = (*(a1[4] + 128))(a1[2], a1[3], 0, &__s2, &v99);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_100;
  }

  __s2[v99] = 0;
  v9 = v99;
  if (*a2 == 63 && !v99)
  {
    goto LABEL_100;
  }

  if (a4)
  {
    v8 = utf8_Utf8ToDepes(__s2, v99, 0, __s2, v99, &v98, 0);
    v9 = v98;
    v99 = v98;
  }

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = v10;
      v12 = __s2[v10];
      if (v12 == 126)
      {
        if (v10 < v9)
        {
          do
          {
            __s2[v11] = __s2[v11 + 1];
            ++v11;
            v9 = v99;
          }

          while (v11 < v99);
        }

        v99 = --v9;
        --v10;
      }

      else if (v12 == 30)
      {
        if (v10 >= v9)
        {
          v14 = 1;
        }

        else
        {
          v13 = v9 - v10 + 1;
          v14 = 1;
          while (__s2[v11] != 31)
          {
            ++v11;
            ++v14;
            if (v9 == v11)
            {
              v10 = v9;
              v14 = v13;
              goto LABEL_20;
            }
          }

          v10 = v11;
        }

LABEL_20:
        if ((v10 - v14 + 1) < v9)
        {
          v15 = (v10 - v14 + 1);
          do
          {
            __s2[v15] = __s2[v15 + v14];
            ++v15;
            v9 = v99;
          }

          while (v15 < v99);
        }

        v9 -= v14;
        v99 = v9;
        v10 -= v14;
      }

      ++v10;
    }

    while (v10 < v9);
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  __s2[v16] = 0;
  if (*(a1 + 65))
  {
    v17 = v99;
    if (v99)
    {
      v18 = 0;
      do
      {
        if (__s2[v18] == 173)
        {
          __s2[v18] = 126;
          v17 = v99;
        }

        ++v18;
      }

      while (v18 < v17);
    }
  }

  v19 = 0;
  if (!a4 || *(a1 + 70) != 1)
  {
    goto LABEL_101;
  }

  if ((v20 = __s2, a2[cstdlib_strlen(a2) - 1] != 63) && !cstdlib_strstr(a1[*(a1 + 112) + 14], "*?") && !*(a1 + 67) || cstdlib_strstr(v20, "\\TQ\""))
  {
LABEL_100:
    v19 = 0;
    goto LABEL_101;
  }

  if (*(a1 + 68) == 1)
  {
    if (*(a1 + 69) == 1)
    {
      v21 = 23;
    }

    else
    {
      v21 = 0;
    }

    v89 = v21;
  }

  else
  {
    v89 = 0;
  }

  v22 = __s2;
  v23 = v99;
  v24 = heap_Calloc(*(*a1 + 8), 10, 16);
  if (!v24)
  {
LABEL_99:
    v8 = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v87);
    goto LABEL_100;
  }

  v25 = v24;
  cstdlib_memset(&__b, 0, 5uLL);
  if (v23)
  {
    v26 = v23 - 1;
  }

  else
  {
    v26 = 0;
  }

  if (v23 >= 2)
  {
    while (v22[v26] == 32)
    {
      if (!--v26)
      {
        goto LABEL_88;
      }
    }
  }

  if (!v26)
  {
LABEL_88:
    v8 = 0;
    v19 = 0;
    goto LABEL_190;
  }

  v94 = 0;
  v27 = 0;
  v96 = 0;
  v90 = v22 - 1;
  v91 = v22;
  v87 = a3;
  v88 = v22 + 3;
  v28 = v26;
  v29 = &v22[v26 - 5];
  v92 = 10;
  do
  {
    if (v28 < 5 || cstdlib_strncmp(&v90[v28], "A\"", 2uLL))
    {
LABEL_54:
      if (v28 < (v96 + 3) || cstdlib_strncmp(&v22[(v28 - (v96 + 3))], "\\T", 2uLL) || cstdlib_strncmp(&v22[(v28 - (v96 + 1))], &__b, v96) || cstdlib_strncmp(&v90[v28], "A\"", 2uLL))
      {
        v30 = v22[v28];
        if (v30 == 32)
        {
          goto LABEL_62;
        }

        if (v30 == 45)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          ++v94;
          goto LABEL_63;
        }

        if (v89 == v30)
        {
LABEL_62:
          v31 = 0;
          v33 = 0;
          ++v94;
          v32 = 1;
        }

        else
        {
          if (v30 != 35 && (v30 != 47 || v22[(v28 - 1)] == 92))
          {
            v33 = 0;
            goto LABEL_70;
          }

          v31 = 0;
          v33 = 1;
          v32 = 2;
        }
      }

      else
      {
        v33 = 0;
        v32 = 3;
        v31 = 1;
      }
    }

    else
    {
      v40 = 0;
      while (1)
      {
        if (v28 + v40 == 5)
        {
          goto LABEL_54;
        }

        if (!cstdlib_strncmp((v29 + v40), "\\/T", 3uLL))
        {
          break;
        }

        if (--v40 == -4)
        {
          goto LABEL_54;
        }
      }

      cstdlib_memset(&__b, 0, 5uLL);
      v41 = 1 - v40;
      cstdlib_strncat(&__b, &v88[(v28 + v40 - 5)], (1 - v40));
      v31 = 0;
      v33 = 0;
      v32 = 4;
      v96 = v41;
    }

LABEL_63:
    if (v27 >= v92)
    {
      v35 = heap_Realloc(*(*a1 + 8), v25, 32 * (v92 & 0x7FFF));
      if (v35)
      {
        v34 = v27;
        v92 *= 2;
        v25 = v35;
        goto LABEL_67;
      }

      heap_Free(*(*a1 + 8), v25);
      a3 = v87;
      goto LABEL_99;
    }

    v34 = v27;
LABEL_67:
    v36 = v25;
    v37 = v34;
    v38 = v25 + 16 * v34;
    *v38 = v32;
    cstdlib_memset((v38 + 4), 0, 5uLL);
    cstdlib_strncat((v38 + 4), &__b, v96);
    *(v38 + 10) = v96;
    *(v38 + 12) = v28;
    v39 = v37 + 1;
    if (v31)
    {
      cstdlib_memset(&__b, 0, 5uLL);
      v96 = 0;
    }

    v25 = v36;
    v27 = v39;
    v22 = v91;
LABEL_70:
    if (!--v28)
    {
      break;
    }

    if (v94 > 2)
    {
      break;
    }

    --v29;
  }

  while (!v33);
  if (v26 <= v28 || v27)
  {
    a3 = v87;
    if (v27)
    {
      goto LABEL_93;
    }

    goto LABEL_88;
  }

  LOWORD(v27) = 1;
  *v25 = 1;
  cstdlib_memset((v25 + 4), 0, 5uLL);
  *(v25 + 10) = 0;
  *(v25 + 12) = v28;
LABEL_93:
  v42 = v27;
  v43 = v27 - 1;
  if (!v28 && v94 <= 2 && !v33)
  {
    v46 = v25 + 16 * v43;
    v47 = 0;
    if (*v46 != 3)
    {
      *(v46 + 12) = 0;
    }

    goto LABEL_134;
  }

  if (v43)
  {
    while (1)
    {
      v44 = *(v25 + 16 * v43) == 2;
      if (*(v25 + 16 * v43) != 2)
      {
        break;
      }

      if (!--v43)
      {
        v43 = 0;
        break;
      }
    }
  }

  else
  {
    v43 = 0;
    v44 = 1;
  }

  v48 = v25 + 16 * v43;
  if (!*v48)
  {
    goto LABEL_115;
  }

  if (*v48 != 1)
  {
    v47 = *(v48 + 12);
    goto LABEL_134;
  }

  if (v44)
  {
    v43 = 0;
    goto LABEL_115;
  }

  v50 = v25 + 16 * (v43 - 1);
  v51 = *v50;
  if (*v50 == 4)
  {
    v52 = *(v50 + 12) - *(v48 + 12);
    if (v52 == cstdlib_strlen((v50 + 4)) + 5)
    {
      v47 = *(v25 + 16 * (v43 - 1) + 12) - *(v25 + 16 * (v43 - 1) + 10) - 4;
LABEL_125:
      --v43;
      goto LABEL_134;
    }

    v51 = *v50;
    goto LABEL_127;
  }

  if (v51 != 3)
  {
LABEL_127:
    if (v51 == 1)
    {
      if (v43)
      {
        while (1)
        {
          v53 = v25 + 16 * (v43 - 1);
          if (*v53 != 1 || *(v53 + 12) - *(v25 + 16 * v43 + 12) != 1)
          {
            break;
          }

          if (!--v43)
          {
            goto LABEL_132;
          }
        }
      }

      else
      {
LABEL_132:
        v43 = 0;
      }

      v54 = v25 + 16 * v43;
      v47 = *(v54 + 12) + 1;
      *(v54 + 12) = v47;
      goto LABEL_134;
    }

LABEL_115:
    LOWORD(v49) = *(v48 + 12);
    goto LABEL_116;
  }

  v49 = *(v48 + 12);
  if (*(v50 + 12) - v49 == *(v50 + 10) + 4)
  {
    v47 = *(v25 + 16 * (v43 - 1) + 12) - *(v25 + 16 * (v43 - 1) + 10) - 3;
    goto LABEL_125;
  }

LABEL_116:
  v47 = v49 + 1;
  *(v48 + 12) = v49 + 1;
LABEL_134:
  v55 = __s2;
  v56 = v99;
  v101 = v99;
  if (v99)
  {
    __s = heap_Calloc(*(*a1 + 8), v99, 1);
    if (!__s)
    {
      v95 = v25;
      v8 = 2601525258;
LABEL_187:
      v19 = 0;
      a3 = v87;
      v25 = v95;
      goto LABEL_190;
    }

    v57 = ~v43 | 0xFFFF0000;
    v58 = v57 + v42;
    if ((v57 + v42) >= 0 && v42 > (v57 + v42))
    {
      v59 = 0;
      v95 = v25;
      v93 = 16 * (v57 + v42);
      v60 = v25 - 16 * v58 + 16 * v42;
      while (1)
      {
        v102 = 0uLL;
        v61 = (v60 + v59);
        __b = *(v60 + v59 - 16);
        if (!v59)
        {
          break;
        }

        if (__b == 4)
        {
          inserted = hlp_insert_question_Tag(a1, &__s, &v101, 3, &__b + 4);
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_192;
          }

          if (v58 + 1 >= v42)
          {
            if ((v56 - 1) > WORD6(__b))
            {
              cstdlib_memset(v104, 0, 5uLL);
              v63 = v104;
              goto LABEL_160;
            }
          }

          else
          {
            v102 = *(v60 + v59 - 32);
            if (v102 <= 1 && !BYTE4(v102))
            {
              p_b = &v102;
              goto LABEL_157;
            }
          }
        }

        else if (__b == 3)
        {
          if (v93 != v59)
          {
            v102 = *v61;
            if (v102 <= 1 && !BYTE4(v102))
            {
              inserted = hlp_insert_question_Tag(a1, &__s, &v101, 1, &v102 + 4);
              if ((inserted & 0x80000000) != 0)
              {
LABEL_192:
                v8 = inserted;
                goto LABEL_187;
              }
            }
          }

LABEL_150:
          v63 = &__b + 4;
          v64 = a1;
          v65 = 2;
          goto LABEL_163;
        }

LABEL_164:
        v67 = *(v61 - 4);
        v68 = v60 + v59;
        v69 = *(v60 + v59 - 4);
        if (v58 >= v42 - 1)
        {
          if (v67 == 4)
          {
            ++v69;
          }

          v77 = v69;
          v79 = a1;
          v80 = v55;
          v78 = v56;
        }

        else
        {
          v70 = *(v68 - 32);
          v71 = *(v68 - 22);
          v72 = *(v68 - 20);
          if ((v67 - 3) < 2)
          {
            ++v69;
          }

          v73 = v72 - v71;
          v74 = v72 - v71 - 5;
          v75 = v73 - 4;
          if (v70 != 3)
          {
            v75 = v72;
          }

          if (v70 == 4)
          {
            v75 = v74;
          }

          v76 = v72 - 1;
          if (v70 <= 1)
          {
            v75 = v76;
          }

          v77 = v69;
          v78 = v75;
          v79 = a1;
          v80 = v55;
        }

        v81 = hlp_insert_phonemes(v79, &__s, &v101, v80, v77, v78);
        v8 = v81;
        if ((v81 & 0x80000000) == 0)
        {
          ++v58;
          v59 -= 16;
          if (v42 != v58)
          {
            continue;
          }
        }

        v25 = v95;
        if ((v81 & 0x80000000) == 0)
        {
          goto LABEL_180;
        }

        v19 = 0;
LABEL_189:
        a3 = v87;
        goto LABEL_190;
      }

      if (BYTE4(__b))
      {
        if (__b == 4)
        {
          v63 = &__b + 4;
          v64 = a1;
          v65 = 5;
        }

        else
        {
          if (__b == 3)
          {
            goto LABEL_150;
          }

          v63 = &__b + 4;
          v64 = a1;
          v65 = 4;
        }
      }

      else
      {
        p_b = &__b;
LABEL_157:
        v63 = p_b + 4;
LABEL_160:
        v64 = a1;
        v65 = 0;
      }

LABEL_163:
      v8 = hlp_insert_question_Tag(v64, &__s, &v101, v65, v63);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_187;
      }

      goto LABEL_164;
    }
  }

LABEL_180:
  v82 = __s;
  v83 = cstdlib_strlen(__s);
  v84 = heap_Calloc(*(*a1 + 8), v83 + v47 + 1, 1);
  v19 = v84;
  if (!v84)
  {
    v8 = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    goto LABEL_189;
  }

  cstdlib_strncat(v84, __s2, v47);
  cstdlib_strncat(v19, v82, v83);
  v85 = com_depes_PrepareLayersForLen(a1 + 12, (v47 + v83));
  if ((v85 & 0x80000000) != 0)
  {
    v8 = v85;
    goto LABEL_189;
  }

  v86 = (*(a1[4] + 120))(a1[2], a1[3], 0, v19, (v47 + v83 + 1));
  a3 = v87;
  if ((v86 & 0x80000000) == 0)
  {
    v86 = (*(a1[4] + 128))(a1[2], a1[3], 0, &__s2, &v99);
  }

  v8 = v86;
LABEL_190:
  heap_Free(*(*a1 + 8), v25);
LABEL_101:
  if (__s)
  {
    heap_Free(*(*a1 + 8), __s);
  }

  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  *a3 = __s2;
  return v8;
}

uint64_t globalbeadapt_SplitWordRecordsWithSpecialChar(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char *__src)
{
  v118 = 0;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  v113 = 0;
  __s = 0;
  *v111 = 0;
  v112 = 0;
  __s1 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  __b = 0;
  v102 = 0;
  cstdlib_strcpy(__dst, __src);
  cstdlib_strcat(__dst, "_");
  cstdlib_memset(&__b, 0, 0x10uLL);
  cstdlib_memset(&v103, 0, 0x10uLL);
  v12 = hlp_dynstr_init(*a1, &__b, 0x20u, 16);
  if ((v12 & 0x80000000) != 0 || (v12 = hlp_dynstr_init(*a1, &v103, 0x20u, 16), (v12 & 0x80000000) != 0) || (v12 = (*(a1[1] + 104))(a2, a3, 2, a4, &v118), (v12 & 0x80000000) != 0))
  {
    v93 = v12;
    v14 = 0;
    goto LABEL_126;
  }

  v98 = a4;
  v99 = cstdlib_strlen(a5) + 1;
  v13 = heap_Alloc(*(*a1 + 8), v99);
  if (!v13)
  {
    v93 = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return v93;
  }

  v14 = v13;
  while (1)
  {
    v15 = a1[1];
    if (!v118)
    {
      v95 = *(v15 + 160);
      v96 = cstdlib_strlen(a5);
      v16 = v95(a2, a3, v98, 0, (v96 + 1), a5, &v116);
LABEL_135:
      v93 = v16;
      goto LABEL_126;
    }

    v16 = (*(v15 + 168))(a2, a3);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    if (v117 <= 0xA && ((1 << v117) & 0x610) != 0)
    {
      break;
    }

LABEL_123:
    v93 = (*(a1[1] + 120))(a2, a3, v118, &v118);
    if ((v93 & 0x80000000) != 0)
    {
      goto LABEL_126;
    }
  }

  v16 = (*(a1[1] + 168))(a2, a3, v118, 1, 1, &v108 + 2, &v116 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  v16 = (*(a1[1] + 168))(a2, a3, v118, 2, 1, &v108, &v116 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  v16 = (*(a1[1] + 176))(a2, a3, v118, 3, &v115, &v116 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  v18 = v115;
  if (v115)
  {
    v19 = 0;
    do
    {
      ++v19;
      v20 = cstdlib_strstr(v18, "\x17");
      v18 = v20 + 1;
    }

    while (v20);
  }

  else
  {
    v19 = 0;
  }

  v113 = &a5[HIWORD(v108)];
  __s = 0;
  v21 = (v108 - HIWORD(v108));
  cstdlib_strncpy(v14, v113, v21);
  v22 = 0;
  v14[v21] = 0;
  v23 = v14;
  do
  {
    __s = v23;
    ++v22;
    hlp_SearchMorph(__src, __dst, &__s);
    v23 = __s + 1;
  }

  while (__s);
  v16 = (*(a1[1] + 176))(a2, a3, v118, 5, &v112, &v116 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  v16 = (*(a1[1] + 168))(a2, a3, v118, 7, 1, &v107 + 2, &v116 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  HIWORD(v106) = 0;
  *v111 = 0;
  if (((*(a1[1] + 184))(a2, a3, v118, 14, &v106 + 2) & 0x80000000) == 0 && HIWORD(v106) == 1)
  {
    v16 = (*(a1[1] + 176))(a2, a3, v118, 14, v111, &v116 + 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }
  }

  HIWORD(v106) = 0;
  v110 = 0;
  if (((*(a1[1] + 184))(a2, a3, v118, 9, &v106 + 2) & 0x80000000) == 0 && HIWORD(v106) == 1)
  {
    v16 = (*(a1[1] + 176))(a2, a3, v118, 9, &v110, &v116 + 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }
  }

  LOWORD(v106) = 0;
  LOWORD(v107) = 0;
  if (((*(a1[1] + 184))(a2, a3, v118, 8, &v106) & 0x80000000) == 0 && v106 == 1)
  {
    v16 = (*(a1[1] + 168))(a2, a3, v118, 8, 1, &v107, &v116 + 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }
  }

  HIWORD(v105) = 0;
  if (((*(a1[1] + 184))(a2, a3, v118, 13, &v105 + 2) & 0x80000000) == 0 && HIWORD(v105) == 1)
  {
    v16 = (*(a1[1] + 176))(a2, a3, v118, 13, &__s1, &v116 + 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }
  }

  if (v19 < 2u || v22 < v19)
  {
    v42 = v108;
LABEL_114:
    if (HIWORD(v108) <= 1u)
    {
      v91 = 1;
    }

    else
    {
      v91 = HIWORD(v108);
    }

    if (v91 < v42)
    {
      v92 = &a5[v91];
      do
      {
        if (*v92 == 95 && !cstdlib_strchr(";:,", *(v92 - 1)))
        {
          *v92 = 45;
        }

        ++v91;
        ++v92;
      }

      while (v91 < v108);
    }

    goto LABEL_123;
  }

  if (*v111)
  {
    v16 = hlp_dynstr_add(*a1, &__b, *v111, 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v16 = hlp_dynstr_add(*a1, &v103, *v111, 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    if (!hlp_NLUStrExist(*v111, "S_PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(v103, "S_PUNC");
      hlp_NLUStrRemoveKeyVal(__b, "S_PUNC");
    }

    if (!hlp_NLUStrExist(*v111, "PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(*v111, "PUNC");
      hlp_NLUStrRemoveKeyVal(v103, "PUNC");
    }

    if (!hlp_NLUStrExist(*v111, "BNDSHAPE"))
    {
      hlp_NLUStrRemoveKeyVal(*v111, "BNDSHAPE");
      hlp_NLUStrRemoveKeyVal(v103, "BNDSHAPE");
    }

    if (!hlp_NLUStrExist(*v111, "E_PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(*v111, "E_PUNC");
      hlp_NLUStrRemoveKeyVal(v103, "E_PUNC");
    }
  }

  v24 = cstdlib_strlen(v115) + 1;
  if (v99 >= v24)
  {
LABEL_52:
    cstdlib_strcpy(v14, v115);
    v26 = cstdlib_strstr(v14, "\x17");
    __s = v26;
    if (v26)
    {
      *v26 = 0;
      __s = v26 + 1;
    }

    v113 = &a5[HIWORD(v108)];
    v27 = a5[v108];
    a5[v108] = 0;
    v28 = hlp_SearchMorph(__src, __dst, &v113);
    v29 = v113 - a5;
    LOWORD(v108) = v113 - a5;
    if (v28)
    {
      for (i = HIWORD(v108); i < v29; ++i)
      {
        if (a5[i] == 95)
        {
          a5[i] = 45;
        }
      }
    }

    HIWORD(v108) = v29 + 1;
    v16 = (*(a1[1] + 160))(a2, a3, v118, 2, 1, &v108, &v116);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v97 = v27;
    v31 = *(a1[1] + 160);
    v32 = v118;
    v33 = cstdlib_strlen(v14);
    v16 = v31(a2, a3, v32, 3, (v33 + 1), v14, &v116);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    if (v106 == 1)
    {
      v16 = (*(a1[1] + 160))(a2, a3, v118, 8, 1, &v105, &v116);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    if (HIWORD(v105) == 1)
    {
      v34 = cstdlib_strcmp(__s1, "0");
      v35 = *(a1[1] + 160);
      v36 = v118;
      if (v34)
      {
        v37 = (cstdlib_strlen("1") + 1);
        v38 = a2;
        v39 = a3;
        v40 = v36;
        v41 = "1";
      }

      else
      {
        v43 = cstdlib_strlen(__s1);
        v41 = __s1;
        v37 = (v43 + 1);
        v38 = a2;
        v39 = a3;
        v40 = v36;
      }

      v16 = v35(v38, v39, v40, 13, v37, v41, &v116);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    v44 = cstdlib_strstr(__s, "\x17");
    if (v44)
    {
      v45 = v44;
      do
      {
        *v45 = 0;
        v16 = (*(a1[1] + 80))(a2, a3, v118, &v118);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v16 = (*(a1[1] + 160))(a2, a3, v118, 0, 1, &v117, &v116);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v16 = (*(a1[1] + 160))(a2, a3, v118, 1, 1, &v108 + 2, &v116);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v113 = &a5[HIWORD(v108)];
        v46 = hlp_SearchMorph(__src, __dst, &v113);
        v47 = v113 - a5;
        LOWORD(v108) = v113 - a5;
        if (v46)
        {
          for (j = HIWORD(v108); j < v47; ++j)
          {
            if (a5[j] == 95)
            {
              a5[j] = 45;
            }
          }
        }

        HIWORD(v108) = v47 + 1;
        v16 = (*(a1[1] + 160))(a2, a3, v118, 2, 1, &v108, &v116);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v49 = *(a1[1] + 160);
        v50 = v118;
        v51 = __s;
        v52 = cstdlib_strlen(__s);
        v16 = v49(a2, a3, v50, 3, (v52 + 1), v51, &v116);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v53 = *(a1[1] + 160);
        v54 = v118;
        v55 = cstdlib_strlen(v112);
        v16 = v53(a2, a3, v54, 5, (v55 + 1), v112, &v116);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v16 = (*(a1[1] + 160))(a2, a3, v118, 7, 1, &v107 + 2, &v116);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        if (v106 == 1)
        {
          v16 = (*(a1[1] + 160))(a2, a3, v118, 8, 1, &v105, &v116);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }
        }

        if (HIWORD(v105) == 1)
        {
          v56 = cstdlib_strcmp(__s1, "0");
          v57 = *(a1[1] + 160);
          v58 = v118;
          if (v56)
          {
            v59 = (cstdlib_strlen("1") + 1);
            v60 = a2;
            v61 = a3;
            v62 = v58;
            v63 = "1";
          }

          else
          {
            v64 = cstdlib_strlen(__s1);
            v63 = __s1;
            v59 = (v64 + 1);
            v60 = a2;
            v61 = a3;
            v62 = v58;
          }

          v16 = v57(v60, v61, v62, 13, v59, v63, &v116);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }
        }

        if (v103)
        {
          v65 = *(a1[1] + 160);
          v66 = v118;
          v67 = cstdlib_strlen(v103);
          v16 = v65(a2, a3, v66, 14, (v67 + 1), v103, &v116);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }
        }

        if (v110)
        {
          v68 = *(a1[1] + 160);
          v69 = v118;
          v70 = cstdlib_strlen(v110);
          v16 = v68(a2, a3, v69, 9, (v70 + 1), v110, &v116);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }
        }

        __s = v45 + 1;
        v45 = cstdlib_strstr(v45 + 1, "\x17");
      }

      while (v45);
    }

    v16 = (*(a1[1] + 80))(a2, a3, v118, &v118);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v16 = (*(a1[1] + 160))(a2, a3, v118, 0, 1, &v117, &v116);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v16 = (*(a1[1] + 160))(a2, a3, v118, 1, 1, &v108 + 2, &v116);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v71 = &a5[HIWORD(v108)];
    v113 = v71;
    v72 = cstdlib_strstr(v71, " ");
    if (v72)
    {
      v73 = v72 - a5;
    }

    else
    {
      v74 = HIWORD(v108);
      v73 = v74 + cstdlib_strlen(v71);
    }

    LOWORD(v108) = v73;
    v16 = (*(a1[1] + 160))(a2, a3, v118, 2, 1, &v108, &v116);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v75 = *(a1[1] + 160);
    v76 = v118;
    v77 = __s;
    v78 = cstdlib_strlen(__s);
    v16 = v75(a2, a3, v76, 3, (v78 + 1), v77, &v116);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v79 = *(a1[1] + 160);
    v80 = v118;
    v81 = cstdlib_strlen(v112);
    v16 = v79(a2, a3, v80, 5, (v81 + 1), v112, &v116);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v16 = (*(a1[1] + 160))(a2, a3, v118, 7, 1, &v107 + 2, &v116);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    if (v106 == 1)
    {
      v16 = (*(a1[1] + 160))(a2, a3, v118, 8, 1, &v107, &v116);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    if (HIWORD(v105) == 1)
    {
      v82 = *(a1[1] + 160);
      v83 = v118;
      v84 = cstdlib_strlen(__s1);
      v16 = v82(a2, a3, v83, 13, (v84 + 1), __s1, &v116);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    if (__b)
    {
      v85 = *(a1[1] + 160);
      v86 = v118;
      v87 = cstdlib_strlen(__b);
      v16 = v85(a2, a3, v86, 14, (v87 + 1), __b, &v116);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    if (v110)
    {
      v88 = *(a1[1] + 160);
      v89 = v118;
      v90 = cstdlib_strlen(v110);
      v16 = v88(a2, a3, v89, 9, (v90 + 1), v110, &v116);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    v42 = v108;
    a5[v108] = v97;
    goto LABEL_114;
  }

  v25 = heap_Realloc(*(*a1 + 8), v14, v24);
  __s = v25;
  if (v25)
  {
    v14 = v25;
    v99 = v24;
    goto LABEL_52;
  }

  v93 = 2601525258;
  log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
LABEL_126:
  if (__b)
  {
    heap_Free(*(*a1 + 8), __b);
    __b = 0;
  }

  LODWORD(v102) = 0;
  if (v103)
  {
    heap_Free(*(*a1 + 8), v103);
    v103 = 0;
  }

  LODWORD(v104) = 0;
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  return v93;
}

uint64_t hlp_SearchMorph(const char *a1, const char *a2, char **a3)
{
  v5 = *a1;
  v6 = *a3;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = cstdlib_strstr(v6, a2);
  if (!v7)
  {
    v6 = *a3;
LABEL_5:
    v8 = cstdlib_strstr(v6, "_");
    v9 = 0;
    goto LABEL_6;
  }

  v8 = &v7[cstdlib_strlen(a1)];
  v9 = 1;
LABEL_6:
  *a3 = v8;
  return v9;
}

uint64_t globalbeadapt_RemoveSpecialChar(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v23 = 0;
  v24 = 0;
  __s = 0;
  v7 = (*(a1[1] + 104))(a2, a3, 2, a4, &v25);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v25;
    if (v25)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = (*(a1[1] + 168))(a2, a3, v8, 0, 1, &v24, &v23 + 2);
        if ((v11 & 0x80000000) != 0)
        {
          break;
        }

        if (v24 <= 0xA && ((1 << v24) & 0x610) != 0)
        {
          v11 = (*(a1[1] + 176))(a2, a3, v25, 3, &__s, &v23 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }

          v13 = cstdlib_strlen(__s) + 1;
          if (v9 < v13)
          {
            v14 = heap_Realloc(*(*a1 + 8), v10, v13);
            if (!v14)
            {
              log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
              v7 = 2601525258;
              if (!v10)
              {
                return v7;
              }

LABEL_22:
              heap_Free(*(*a1 + 8), v10);
              return v7;
            }

            v10 = v14;
            v9 = v13;
          }

          cstdlib_strcpy(v10, __s);
          v15 = cstdlib_strstr(v10, "\x17");
          if (v15)
          {
            v16 = v15;
            do
            {
              v17 = cstdlib_strlen(v16);
              cstdlib_memmove(v16, v16 + 1, v17);
              v16 = cstdlib_strstr(v16, "\x17");
            }

            while (v16);
          }

          v18 = *(a1[1] + 160);
          v19 = v25;
          v20 = cstdlib_strlen(v10);
          v11 = v18(a2, a3, v19, 3, (v20 + 1), v10, &v23);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }
        }

        v7 = (*(a1[1] + 120))(a2, a3, v25, &v25);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = v25;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v7 = v11;
LABEL_21:
      if (!v10)
      {
        return v7;
      }

      goto LABEL_22;
    }
  }

  return v7;
}

void *globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(void *result)
{
  v1 = result;
  v2 = *(result + 142);
  if (*(result + 142) && result[36])
  {
    v3 = 0;
    do
    {
      v4 = *(v1[36] + 8 * v3);
      if (v4)
      {
        heap_Free(*(*v1 + 8), v4);
        v2 = *(v1 + 142);
      }

      ++v3;
    }

    while (v3 < v2);
    result = heap_Free(*(*v1 + 8), v1[36]);
  }

  *(v1 + 142) = 0;
  v1[36] = 0;
  return result;
}

uint64_t globalbeadapt_Init_SpecialSymbolsFromPhonmap(uint64_t a1)
{
  v18 = 0;
  v17 = 0;
  globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v17);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 80))
  {
    return Str;
  }

  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(*(a1 + 64), *(a1 + 72), NullHandle, v4))
  {
    return Str;
  }

  v18 = 0;
  v5 = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a1 + 284, &v18, 0);
  if ((v5 & 0x80000000) != 0)
  {
    Str = v5;
LABEL_30:
    globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
    return Str;
  }

  v6 = heap_Alloc(*(*a1 + 8), v18 + 1);
  if (!v6)
  {
    Str = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 64000, 0);
    goto LABEL_30;
  }

  v7 = v6;
  Str = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a1 + 284, &v18, v6);
  if ((Str & 0x80000000) == 0)
  {
    v8 = heap_Calloc(*(*a1 + 8), *(a1 + 284), 8);
    *(a1 + 288) = v8;
    if (v8)
    {
      if (cstdlib_strlen(v7))
      {
        v9 = 0;
        v10 = v7;
        while (v9 < *(a1 + 284))
        {
          v11 = cstdlib_strchr(v10, 44);
          v12 = v11;
          if (v11)
          {
            *v11 = 0;
          }

          if (cstdlib_strlen(v10) != 3)
          {
            Str = 2601525248;
            break;
          }

          v18 = 0;
          v13 = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), 2, "alphabet", &v18, 0, v10);
          if ((v13 & 0x80000000) != 0)
          {
            Str = 0;
            v18 = 0;
            v14 = 4;
          }

          else
          {
            Str = v13;
            v14 = v18 + 4;
          }

          *(*(a1 + 288) + 8 * v9) = heap_Calloc(*(*a1 + 8), 1, v14);
          if (!*(*(a1 + 288) + 8 * v9))
          {
            goto LABEL_28;
          }

          if (LH_stricmp(v17, v10))
          {
            v15 = cstdlib_tolower(*v10);
          }

          else
          {
            v15 = 126;
          }

          **(*(a1 + 288) + 8 * v9) = v15;
          cstdlib_strcpy((*(*(a1 + 288) + 8 * v9) + 1), ": ");
          if (!v18 || (Str = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), 2, "alphabet", &v18, *(*(a1 + 288) + 8 * v9) + 3, v10), (Str & 0x80000000) == 0))
          {
            if (v12)
            {
              v10 = v12 + 1;
              ++v9;
              if (cstdlib_strlen(v7))
              {
                continue;
              }
            }
          }

          break;
        }
      }
    }

    else
    {
LABEL_28:
      Str = 2601525258;
      log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 64000, 0, v17);
    }
  }

  heap_Free(*(*a1 + 8), v7);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  return Str;
}

uint64_t globalbeadapt_Init_LOO(uint64_t *a1)
{
  v18 = 0;
  v17 = -1;
  v16 = 0;
  v15 = 0;
  __b = 0u;
  v14 = 0u;
  a1[37] = 0;
  v2 = (*(a1[7] + 96))(a1[5], a1[6], "fecfg", "loo_global_loomapping", &v18, &v17, &v16);
  if ((v2 & 0x80000000) == 0 && v17 == 1)
  {
    cstdlib_memset(&__b, 0, 0x28uLL);
    *&__b = ssftmap_ElemCopyString;
    *(&v14 + 1) = ssftmap_ElemCopyString;
    *(&__b + 1) = ssftmap_ElemFreeString;
    v15 = ssftmap_ElemFreeString;
    *&v14 = ssftmap_ElemCompareKeysString;
    v3 = *(*a1 + 8);
    v11[0] = __b;
    v11[1] = v14;
    v12 = ssftmap_ElemFreeString;
    v2 = ssftmap_ObjOpen(v3, 0, v11, a1 + 37);
    if ((v2 & 0x80000000) == 0)
    {
      v4 = *v18;
      v5 = cstdlib_strchr(*v18, v16);
      if (v5)
      {
        *v5 = 0;
      }

      if (v4)
      {
        while (1)
        {
          v6 = cstdlib_strchr(v4, 59);
          v7 = v6;
          if (v6)
          {
            *v6 = 0;
          }

          v8 = cstdlib_strchr(v4, 44);
          if (!v8)
          {
            break;
          }

          *v8 = 0;
          v9 = ssftmap_Insert(a1[37], v4, (v8 + 1));
          v2 = v9;
          if (v7)
          {
            v4 = v7 + 1;
          }

          else
          {
            v4 = 0;
          }

          if ((v9 & 0x80000000) != 0 || !v7)
          {
            return v2;
          }
        }

        return 2601525255;
      }
    }
  }

  return v2;
}

uint64_t globalbeadapt_DeInit_LOO(uint64_t a1)
{
  result = *(a1 + 296);
  if (result)
  {
    result = ssftmap_ObjClose(result);
    *(a1 + 296) = 0;
  }

  return result;
}

uint64_t hlp_insert_question_Tag(uint64_t a1, char **a2, unsigned int *a3, int a4, char *__s)
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  __s1[0] = 0;
  if (a4 > 1)
  {
    switch(a4)
    {
      case 2:
        v11 = "\\T";
        v12 = 2;
        goto LABEL_11;
      case 3:
        v11 = "\\/T";
        v12 = 3;
        goto LABEL_11;
      case 4:
        cstdlib_strncat(__s1, "\\/T", 3uLL);
        cstdlib_strncat(__s1, __s, v10);
        v11 = "A\\\\T";
        v12 = 4;
LABEL_11:
        cstdlib_strncat(__s1, v11, v12);
        cstdlib_strncat(__s1, __s, v10);
        v13 = "Q\"";
        v14 = 2;
        goto LABEL_14;
    }

LABEL_13:
    cstdlib_strncat(__s1, "\\/T", 3uLL);
    cstdlib_strncat(__s1, __s, v10);
    v13 = "A\\\\TQ\"";
    v14 = 6;
    goto LABEL_14;
  }

  if (!a4)
  {
    v13 = "\\TQ\"";
    v14 = 4;
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    goto LABEL_13;
  }

  v13 = "\\/TQ\"";
  v14 = 5;
LABEL_14:
  cstdlib_strncat(__s1, v13, v14);
  v15 = cstdlib_strlen(*a2);
  v16 = cstdlib_strlen(__s1);
  v17 = v16 + v15;
  v18 = *a2;
  if (v17 < *a3 || (v19 = 2 * v17 * *a3, *a3 = v19, v18 = heap_Realloc(*(*a1 + 8), v18, v19), (*a2 = v18) != 0))
  {
    cstdlib_strncat(v18, __s1, v16);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return 2601525258;
  }
}

uint64_t hlp_insert_phonemes(uint64_t a1, char **a2, unsigned int *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = a6 - a5;
  if (a6 < a5)
  {
    return 0;
  }

  v13 = v6 + 1;
  v14 = cstdlib_strlen(*a2) + (v6 + 1);
  v15 = *a2;
  if (v14 < *a3 || (v16 = 2 * v14 * *a3, *a3 = v16, v15 = heap_Realloc(*(*a1 + 8), v15, v16), (*a2 = v15) != 0))
  {
    cstdlib_strncat(v15, (a4 + a5), v13);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return 2601525258;
  }
}

BOOL marker_IsReadoutControlDefaultArg(int a1, unsigned int a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 != 36)
      {
        return result;
      }

      goto LABEL_7;
    }

    return a2 == a4;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 != 21)
      {
        return result;
      }

LABEL_7:
      if (!a3)
      {
        return 0;
      }

      v6 = (a3 + a2);
      MarkerArgStr = marker_getMarkerArgStr(1u);
      return cstdlib_strcmp(v6, MarkerArgStr) == 0;
    }

    return a2 == 15;
  }
}

unint64_t marker_GetArgOfLastOfType(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v5 = a1 + (a2 << 6);
  v6 = *(v5 + 20);
  result = *(v5 + 40);
  if (v6 == 7)
  {
    v8 = result == 43;
    if (a3 > (a2 + 1))
    {
      v9 = result == 43;
      v10 = (a1 + ((a2 + 1) << 6) + 20);
      v11 = (a2 + 1) + 1;
      do
      {
        if (*v10 == 7)
        {
          v12 = v10[5];
          v13 = !v9;
          if (v9)
          {
            v14 = result & 0xFFFFFFFF00000000 | 0xF;
          }

          else
          {
            v14 = result;
          }

          v15 = v13;
          if (v12 == 43)
          {
            result = v14;
          }

          else
          {
            result = result & 0xFFFFFFFF00000000 | v12;
          }

          if (v12 == 43)
          {
            v9 = v15;
          }

          else
          {
            v9 = 0;
          }

          if (a4 == 1)
          {
            *v10 = 999;
          }
        }

        v10 += 16;
        v13 = a3 == v11++;
      }

      while (!v13);
      v8 = v9;
    }

    if (v8)
    {
      return result & 0xFFFFFFFF00000000 | 0xF;
    }
  }

  else if (a3 > (a2 + 1))
  {
    v16 = (a2 + 1);
    v17 = a1 + (v16 << 6) + 20;
    v18 = v16 + 1;
    do
    {
      if (*v17 == v6)
      {
        result = *(v17 + 20);
        if (a4 == 1)
        {
          *v17 = 999;
        }
      }

      v17 += 64;
      v13 = a3 == v18++;
    }

    while (!v13);
  }

  return result;
}

uint64_t marker_CheckForEmptyMarkers(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  if (a4 >= 2)
  {
    v12 = a7;
    v13 = a6;
    v22 = (a5 + 28);
    v14 = 1;
    while (1)
    {
      v15 = a3 + (v14 << 6);
      v16 = *(v15 + 20);
      if (v16 != 999 && v16 != 0x4000)
      {
        if (*v15 == 1)
        {
          if (!a6)
          {
            v17 = v16 > 0x24 || ((1 << v16) & 0x1080200080) == 0;
            if (!v17 && !marker_IsReadoutControlDefaultArg(v16, *(v15 + 40), a1, a2) && *v15 != 1)
            {
              return 0;
            }
          }
        }

        else
        {
          if (!a6)
          {
            goto LABEL_21;
          }

          v18 = 0;
          v19 = v22;
          while (v18 <= v12 || v16 != *(v19 - 2) || *(v15 + 24) != *(v19 - 1) || *(v15 + 28) != *v19)
          {
            ++v18;
            v19 += 16;
            if (v18 >= v13)
            {
              goto LABEL_21;
            }
          }

          if (!*(v19 - 7))
          {
LABEL_21:
            v20 = 0;
            if (v16 > 0x24 || ((1 << v16) & 0x1080200080) == 0)
            {
              return v20;
            }

            if (!marker_IsReadoutControlDefaultArg(v16, *(v15 + 40), a1, a2))
            {
              return 0;
            }
          }
        }
      }

      if (a4 <= ++v14)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t marker_TraceTxt(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v18 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = a6;
  v12 = datac_RequestBlock(a5, a6, 1u, &v18);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = *(v18 + 16);
    if (*(v18 + 16))
    {
      if (v13 < 0x400)
      {
        v14 = heap_Calloc(*(a4 + 8), 1, v13 + 2);
        if (v14)
        {
          v15 = v14;
          cstdlib_strncpy(v14, *(v18 + 8), *(v18 + 16));
          *(v15 + *(v18 + 16)) = 0;
          v16 = "";
          if (*(v18 + 16))
          {
            v16 = v15;
          }

          log_OutText(*(a4 + 32), a2, 5, 0, "(Txt) (%s) (tag=%d) len=%d (UTF8) %s", a7, v8, *(v18 + 16), v16);
          heap_Free(*(a4 + 8), v15);
        }

        else
        {
          return (a1 << 20) | 0x8000200A;
        }
      }

      else
      {
        log_OutText(*(a4 + 32), a2, 5, 0, "(Txt) (%s) (tag=%d) len=%d (TXT TOO LONG)");
      }
    }

    else
    {
      log_OutText(*(a4 + 32), a2, 5, 0, "(Txt) (%s) (tag=%d) len=%d (EMPTY TXT)");
    }
  }

  return v12;
}

uint64_t marker_TraceMrk(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8, uint64_t a9, unsigned __int16 a10)
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = 0;
  if (!a3)
  {
    return 0;
  }

  v11 = a6;
  v16 = a9;
  log_OutText(*(a4 + 32), a2, 5, 0, "(Mrk) (%s) (tag=%d)", a7, a6);
  if (a9)
  {
    result = 0;
    v51 = 0;
    v18 = a10;
    if (!a10)
    {
      return result;
    }
  }

  else
  {
    result = datac_RequestBlock(a5, v11, 1u, &v57);
    v51 = *(v57 + 8);
    v18 = *(v57 + 16);
    if (!*(v57 + 16))
    {
      return result;
    }
  }

  v46 = a1;
  v47 = result;
  v19 = 0;
  __s = 0;
  v52 = v18;
  v48 = a8;
  do
  {
    if (v16)
    {
      __dst = 0;
      v20 = v16 + (v19 << 6);
      v21 = *(v20 + 40);
      v23 = *(v20 + 20);
      v22 = *(v20 + 24);
      v56 = *(v20 + 28);
      v55 = *(v20 + 32);
      v54 = *(v20 + 36);
      if (v23 == 32)
      {
        v53 = 0;
        if (v21 == 1)
        {
          v24 = 49;
        }

        else
        {
          v24 = 48;
        }

        __dst = v24;
        v59 = 0;
        v23 = 32;
LABEL_28:
        String = marker_getString(v23);
        goto LABEL_29;
      }

      v53 = 0;
    }

    else
    {
      v25 = v51 + (v19 << 6);
      v23 = *(v25 + 20);
      v22 = *(v25 + 24);
      v56 = *(v25 + 28);
      v55 = *(v25 + 32);
      v54 = *(v25 + 36);
      v53 = *(v25 + 56);
      v21 = *(v25 + 40);
      v26 = *(v25 + 48);
      if (v26)
      {
        v27 = cstdlib_strlen(v26);
        if ((v27 & 0xFFE0) != 0)
        {
          cstdlib_strcpy(&__dst, "EXTSTR TOO LONG");
        }

        else
        {
          v28 = v22;
          v29 = v27 & 0x1F;
          cstdlib_strncpy(&__dst, *(v25 + 48), v29);
          *(&__dst + v29) = 0;
          v22 = v28;
          a8 = v48;
        }
      }

      else
      {
        __dst = 0;
      }

      if (*(v25 + 20) == 32)
      {
        if (*(v25 + 40) == 1)
        {
          v30 = 49;
        }

        else
        {
          v30 = 48;
        }

        __dst = v30;
        v59 = 0;
      }
    }

    if (v23 != 7)
    {
      goto LABEL_28;
    }

    if (v21 == 43)
    {
      v23 = 7;
      String = "UTOI_PHONEME_MARKER";
    }

    else
    {
      v37 = &off_279DAD4A0;
      v38 = 19;
      while (*(v37 - 2) != v21)
      {
        v37 += 2;
        if (!--v38)
        {
          v23 = 7;
          String = "UTOI_UNDEF";
          goto LABEL_29;
        }
      }

      String = *v37;
      v23 = 7;
    }

LABEL_29:
    if (marker_hasNonConstCharPtrArg(v23) && v23 <= 0x27 && ((1 << v23) & 0xB400200000) != 0 && a8 == 1 && v21)
    {
      v49 = v22;
      v32 = cstdlib_strlen(v21);
      v33 = v32;
      if (v32 >= 0x401uLL)
      {
        v34 = 1024;
      }

      else
      {
        v34 = v32;
      }

      if (__s)
      {
        if (cstdlib_strlen(__s) >= v34)
        {
          v35 = __s;
        }

        else
        {
          v35 = heap_Realloc(*(a4 + 8), __s, v34 + 1);
          if (!v35)
          {
            return (v46 << 20) | 0x8000200A;
          }
        }
      }

      else
      {
        v35 = heap_Calloc(*(a4 + 8), 1, v34 + 1);
        if (!v35)
        {
          return (v46 << 20) | 0x8000200A;
        }
      }

      a8 = v48;
      __s = v35;
      if (v33 > 0x400)
      {
        v40 = v35;
        cstdlib_strcpy(v35, "ARGSTR TOO LONG");
      }

      else
      {
        v39 = v21;
        v40 = v35;
        cstdlib_strncpy(v35, v39, v33);
        v40[v33] = 0;
      }

      v36 = v40;
      v16 = a9;
      v22 = v49;
    }

    else
    {
      v36 = "";
    }

    v41 = *(a4 + 32);
    if (v16)
    {
      v16 = a9;
      log_OutText(v41, a2, 5, 0, "[%d] Markers %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s Ext=%d %s", v19, "", v23, String, v22, v56, v55, v54, v36, v53, &__dst);
    }

    else
    {
      v42 = v51 + (v19 << 6);
      v43 = "";
      if (*v42 == 1)
      {
        v43 = "[INT] ";
      }

      log_OutText(v41, a2, 5, 0, "[%d] Markers %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s Ext=%d %s", v19, v43, v23, String, v22, v56, v55, v54, v36, v53, &__dst);
      if (*(v42 + 16))
      {
        v44 = 0;
        v45 = 0;
        do
        {
          log_OutText(*(a4 + 32), a2, 5, 0, "[UTOI] Offsets[%d] %u,%u", v45++, *(*(v42 + 8) + v44), *(*(v42 + 8) + v44 + 4));
          v44 += 8;
        }

        while (v45 < *(v42 + 16));
      }
    }

    ++v19;
  }

  while (v19 != v52);
  if (__s)
  {
    heap_Free(*(a4 + 8), __s);
  }

  return v47;
}

uint64_t marker_loc_FilterSyncMarkers(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    v5 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = (v2 + 84);
    v4 = 1;
    v5 = 1;
    v6 = (v2 + 84);
    do
    {
      v7 = *v6;
      v6 += 16;
      if (v7 != 0x4000)
      {
        v8 = (v3 - 5);
        v9 = (v2 + (v5 << 6));
        v10 = *v8;
        v11 = v8[1];
        v12 = v8[3];
        v9[2] = v8[2];
        v9[3] = v12;
        *v9 = v10;
        v9[1] = v11;
        ++v5;
        v1 = *(a1 + 16);
      }

      ++v4;
      v3 = v6;
    }

    while (v4 < v1);
  }

  *(a1 + 16) = v5;
  return 0;
}

uint64_t ppParam_ClearReadOutParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), *(&aTAG2PARAM + v2 + 8));
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    v2 += 16;
    if (v2 == 64)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ppParam_ClearSequencerParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), off_279DAD608[v2]);
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    if (++v2 == 3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ppParam_ClearAllPPParameters(uint64_t a1)
{
  result = ppParam_ClearReadOutParameters(a1);
  if ((result & 0x80000000) == 0)
  {

    return ppParam_ClearSequencerParameters(a1);
  }

  return result;
}

uint64_t datac_ObjOpen(_WORD *a1, uint64_t a2, void *a3, int a4)
{
  v12 = 0;
  if (!a3 || (InitRsrcFunction(a1, a2, &v12) & 0x80000000) != 0)
  {
    v11 = -2147475449;
  }

  else
  {
    *a3 = 0;
    v8 = heap_Alloc(*(v12 + 8), 40);
    if (v8)
    {
      v9 = v8;
      cstdlib_memset(v8, 0, 0x28uLL);
      result = 0;
      *v9 = a1;
      v9[1] = a2;
      *(v9 + 8) = a4;
      *a3 = v9;
      return result;
    }

    v11 = -2147475446;
  }

  return v11 | (a4 << 20);
}

uint64_t datac_ObjClose(uint64_t a1)
{
  v8 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) != 0)
  {
    return (*(a1 + 32) << 20) | 0x80002007;
  }

  v2 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v3 = 0;
    v4 = 16;
    do
    {
      v5 = *(*(a1 + 24) + v4);
      if (v5)
      {
        heap_Free(*(v8 + 8), v5);
        v2 = *(a1 + 16);
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    heap_Free(*(v8 + 8), v6);
  }

  heap_Free(*(v8 + 8), a1);
  return 0;
}

uint64_t datac_RegisterBlock(uint64_t a1, int a2, int a3, int a4)
{
  v18 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  v4 = a3;
  if (!a3 || (v6 = a4, !a4) || (InitRsrcFunction(*a1, *(a1 + 8), &v18) & 0x80000000) != 0)
  {
    v12 = *(a1 + 32);
    v13 = -2147475449;
    return v13 | (v12 << 20);
  }

  v8 = *(a1 + 24);
  if (*(a1 + 16))
  {
    v9 = (v8 + 8);
    v10 = *(a1 + 16);
    while (1)
    {
      v11 = *v9;
      v9 += 16;
      if (v11 == a2)
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    v12 = *(a1 + 32);
    v13 = -2147475432;
    return v13 | (v12 << 20);
  }

  if (!v8)
  {
    v15 = heap_Alloc(*(v18 + 8), 32);
    if (v15)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_14:
  v15 = heap_Realloc(*(v18 + 8), v8, 32 * *(a1 + 16) + 32);
  if (!v15)
  {
LABEL_18:
    v12 = *(a1 + 32);
    v13 = -2147475446;
    return v13 | (v12 << 20);
  }

LABEL_15:
  *(a1 + 24) = v15;
  v16 = *(a1 + 16) + 1;
  *(a1 + 16) = v16;
  cstdlib_memset((v15 + 32 * v16 - 32), 0, 0x20uLL);
  result = 0;
  v17 = *(a1 + 24) + 32 * *(a1 + 16);
  *(v17 - 24) = a2;
  *(v17 - 22) = v4;
  *(v17 - 32) = v6;
  return result;
}

uint64_t datac_RequestBlock(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  v18 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if (!a3 || !a4 || (InitRsrcFunction(*a1, *(a1 + 8), &v18) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  *a4 = 0;
  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
LABEL_9:
    v10 = *(a1 + 32);
    v11 = -2147475436;
    return v11 | (v10 << 20);
  }

  v9 = *(a1 + 24) + 16;
  while (*(v9 - 8) != a2)
  {
    v9 += 32;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  if (*(v9 + 10) < a3)
  {
    v13 = *(v9 - 16);
    if (((v13 + a3) & 0x10000) != 0)
    {
LABEL_13:
      v10 = *(a1 + 32);
      v11 = -2147475449;
      return v11 | (v10 << 20);
    }

    v14 = v13 + v13 * (a3 / v13);
    v15 = *(v18 + 8);
    v16 = *(v9 - 6) * v14;
    if (*v9)
    {
      v17 = heap_Realloc(v15, *v9, v16 + 1);
    }

    else
    {
      v17 = heap_Alloc(v15, v16 + 1);
    }

    if (!v17)
    {
      v10 = *(a1 + 32);
      v11 = -2147475446;
      return v11 | (v10 << 20);
    }

    if (*v9 != v17)
    {
      *v9 = v17;
    }

    cstdlib_memset((v17 + *(v9 - 6) * *(v9 + 8)), 0, (v14 - *(v9 + 8)) * *(v9 - 6));
    *(v9 + 10) = v14;
  }

  result = 0;
  *a4 = v9 - 8;
  return result;
}

uint64_t datac_ReleaseBlock(uint64_t a1, int a2)
{
  v13 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) != 0)
  {
    v8 = *(a1 + 32);
    v9 = -2147475449;
    return v9 | (v8 << 20);
  }

  v4 = *(a1 + 16);
  if (!*(a1 + 16))
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = -2147475436;
    return v9 | (v8 << 20);
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 24);
  while (*(v7 + v5 + 8) != a2)
  {
    ++v6;
    v5 += 32;
    if (32 * v4 == v5)
    {
      goto LABEL_7;
    }
  }

  v11 = *(v7 + v5 + 16);
  if (v11)
  {
    heap_Free(*(v13 + 8), v11);
    LODWORD(v4) = *(a1 + 16);
  }

  v12 = v4;
  if (v4 - 1 > v6)
  {
    cstdlib_memmove((v7 + v5), (v7 + v5 + 32), 32 * (v4 - v6));
    v12 = *(a1 + 16);
  }

  result = 0;
  *(a1 + 16) = v12 - 1;
  return result;
}

uint64_t bed_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, int a6)
{
  v18 = 0;
  if (!a3 || !a5 || (InitRsrcFunction(a1, a2, &v18) & 0x80000000) != 0)
  {
    v16 = -2147475449;
    return v16 | (a6 << 20);
  }

  *a5 = 0;
  v12 = heap_Alloc(*(v18 + 8), 40);
  if (!v12)
  {
    v16 = -2147475446;
    return v16 | (a6 << 20);
  }

  v13 = v12;
  cstdlib_memset(v12, 0, 0x28uLL);
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  *(v13 + 36) = a6;
  v14 = datac_RequestBlock(a3, a4, 1u, (v13 + 24));
  if ((v14 & 0x80000000) != 0)
  {
    v15 = v14;
    bed_ObjClose(v13);
  }

  else
  {
    v15 = 0;
    *a5 = v13;
  }

  return v15;
}

uint64_t bed_ObjClose(uint64_t a1)
{
  v1 = 2368741383;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t bed_Goto(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  v3 = *(*(a1 + 24) + 16);
  if ((a2 & 0x80000000) != 0)
  {
    v5 = v3 + a2;
    if (v5 >= 0)
    {
      result = 0;
      *(a1 + 32) = v5;
      return result;
    }
  }

  else if (v3 >= a2)
  {
    result = 0;
    *(a1 + 32) = a2;
    return result;
  }

  return (*(a1 + 36) << 20) | 0x8000200F;
}