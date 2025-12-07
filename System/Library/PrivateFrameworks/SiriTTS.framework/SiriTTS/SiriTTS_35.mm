uint64_t extractNnFeatures(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v249[13] = *MEMORY[0x1E69E9840];
  v246[1] = 0;
  v247 = 0;
  v246[0] = 0;
  v249[0] = fExtGetPhoneFeats;
  v249[1] = fExtGetLexicalFeats;
  v249[2] = fExtGetParseFeats;
  v249[3] = fExtGetPhraseFeats;
  v249[4] = fExtGetPunctFeats;
  v249[5] = fExtGetPhone2BdryFeats;
  v249[6] = fExtGetSyll2BdryFeats;
  v249[7] = fExtGetStrGrp2BdryFeats;
  v249[8] = fExtGetWord2BdryFeats;
  v249[9] = fExtGetParse2BdryFeats;
  v249[10] = fExtGetPhrase2BdryFeats;
  v249[11] = fExtGetPunct2BdryFeats;
  v249[12] = fExtGetVPhone2BdryFeats;
  TrieIntInit(v246);
  v16 = TrieIntAdd(a1, v246, "Phone", a9);
  v17 = TrieIntAdd(a1, v246, "Voicing", a9) | v16;
  v18 = TrieIntAdd(a1, v246, "ConsVow", a9);
  v19 = v17 | v18 | TrieIntAdd(a1, v246, "BroadClass", a9);
  v20 = TrieIntAdd(a1, v246, "LexStress", a9);
  v21 = v20 | TrieIntAdd(a1, v246, "PhoneTag", a9);
  v22 = v19 | v21 | TrieIntAdd(a1, v246, "PhoneDiff", a9);
  v23 = TrieIntAdd(a1, v246, "Prominence", a9);
  v24 = v23 | TrieIntAdd(a1, v246, "POS", a9);
  v25 = v24 | TrieIntAdd(a1, v246, "nluPOS", a9);
  v26 = v22 | v25 | TrieIntAdd(a1, v246, "nluCLS", a9);
  v27 = TrieIntAdd(a1, v246, "nluPNC", a9);
  v28 = v27 | TrieIntAdd(a1, v246, "nluCMP", a9);
  v29 = v28 | TrieIntAdd(a1, v246, "nluBDS", a9);
  v30 = v29 | TrieIntAdd(a1, v246, "nluCPS", a9);
  v31 = v26 | v30 | TrieIntAdd(a1, v246, "IsFxnWord", a9);
  v32 = TrieIntAdd(a1, v246, "IsWHWord", a9);
  v33 = v32 | TrieIntAdd(a1, v246, "IsAuxWord", a9);
  v34 = v33 | TrieIntAdd(a1, v246, "IsConjWord", a9);
  v35 = v34 | TrieIntAdd(a1, v246, "IsAdposWord", a9);
  if (v31 | v35 | TrieIntAdd(a1, v246, "CommonWord", a9) || ((v243 = a2, v236 = a8, !a10) ? (v36 = 13) : (v36 = 14), v37 = kaldi::QuantizedMatrixBase<short>::NumRows(v246), (v38 = FillProsWords(a1, a6, a7, &v247 + 1, &v247, "-", a4, a5)) == 0))
  {
LABEL_49:
    NNFX_logMsg(a1, 0);
    return 0;
  }

  v39 = v38;
  v234 = v37;
  v40 = v247;
  v41 = HIDWORD(v247);
  v42 = heap_Alloc(a1[1], 72);
  if (!v42)
  {
    goto LABEL_48;
  }

  v43 = v42;
  *(v42 + 64) = 0;
  *(v42 + 32) = 0u;
  *(v42 + 48) = 0u;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v44 = heap_Alloc(a1[1], 24);
  if (!v44 || (v45 = v44, TierInit(a1, v44, v40, "Phone-level PHONE tier")))
  {
    NNFX_logMsg(a1, 0);
    *v43 = 0;
    goto LABEL_48;
  }

  v238 = v41;
  v241 = v45;
  v229 = v36;
  v231 = v43;
  v232 = v40;
  if (v41)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = v39[v46];
      v49 = *(v48 + 144);
      if (v49)
      {
        v50 = v39;
        v51 = 0;
        v52 = *(v241 + 1) + 2 * v47;
        do
        {
          v53 = *(a3 + 2);
          v54 = 1;
          if (v53 != -1 && v53 <= 499)
          {
            if (strchr(**(v243 + 16 * *(a3 + 2) + 8), *(*(v48 + 152) + v51)))
            {
              v54 = 2;
            }

            else
            {
              v54 = 1;
            }
          }

          *(v52 + 2 * v51++) = v54;
        }

        while (v49 != v51);
        v47 += v51;
        v39 = v50;
        v41 = v238;
      }

      ++v46;
    }

    while (v46 != v41);
  }

  v55 = v232;
  v241[1] = v232;
  *v231 = v241;
  v56 = heap_Alloc(a1[1], 24);
  if (!v56)
  {
    goto LABEL_47;
  }

  v57 = v56;
  if (TierInit(a1, v56, v232, "Phone-level SYLLABLE tier"))
  {
    goto LABEL_47;
  }

  v58 = v238;
  if (v238)
  {
    v59 = 0;
    v58 = 0;
    while (1)
    {
      v60 = v39[v59];
      v61 = *(v60 + 144);
      if (v61)
      {
        break;
      }

LABEL_37:
      if (++v59 == v238)
      {
        goto LABEL_38;
      }
    }

    v62 = 0;
    v63 = v232 - v58;
    v64 = 4 * v61;
    if (v232 < v58)
    {
      v63 = 0;
    }

    v65 = 4 * v63;
    v66 = 2 * v58;
    while (v65 != v62)
    {
      *(*(v57 + 1) + v66) = *(*(v60 + 184) + v62);
      v62 += 4;
      ++v58;
      v66 += 2;
      if (v64 == v62)
      {
        goto LABEL_37;
      }
    }

LABEL_47:
    NNFX_logMsg(a1, 0);
    v231[1] = 0;
    goto LABEL_48;
  }

LABEL_38:
  if (v58 != v232)
  {
    goto LABEL_47;
  }

  v67 = 0;
  if (v232)
  {
    v68 = *(v57 + 1);
    v69 = v232;
    do
    {
      if (*v68++)
      {
        ++v67;
      }

      --v69;
    }

    while (v69);
  }

  v57[1] = v67;
  v231[1] = v57;
  v71 = heap_Alloc(a1[1], 24);
  if (!v71)
  {
    goto LABEL_51;
  }

  v72 = v71;
  if (TierInit(a1, v71, v232, "Phone-level WORD tier"))
  {
    goto LABEL_51;
  }

  if (v238)
  {
    v75 = 0;
    v76 = 0;
    while (v76 < v232)
    {
      v77 = *(v72 + 1);
      v78 = *(v39[v75] + 144) - 1;
      if (*(v39[v75] + 144) != 1)
      {
        v79 = v78 + v76;
        do
        {
          *(v77 + 2 * v76++) = 0;
          --v78;
        }

        while (v78);
        v76 = v79;
      }

      v80 = v76 + 1;
      *(v77 + 2 * v76) = 1;
      ++v75;
      ++v76;
      if (v75 == v238)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_51;
  }

  v80 = 0;
LABEL_62:
  if (v80 != v232)
  {
    goto LABEL_51;
  }

  v81 = 0;
  if (v232)
  {
    v82 = *(v72 + 1);
    do
    {
      if (*v82++)
      {
        ++v81;
      }

      --v55;
    }

    while (v55);
  }

  v72[1] = v81;
  if (v81 != v238)
  {
LABEL_51:
    NNFX_logMsg(a1, 0);
    v231[2] = 0;
    goto LABEL_48;
  }

  v84 = v39;
  v231[2] = v72;
  v85 = heap_Alloc(a1[1], 24);
  if (!v85 || (v86 = v85, TierInit(a1, v85, v232, "Phone-level PHRASE tier")))
  {
LABEL_134:
    NNFX_logMsg(a1, 0);
    v231[3] = 0;
    goto LABEL_48;
  }

  if (!v238)
  {
    v95 = 0;
    goto LABEL_94;
  }

  v87 = 0;
  for (i = 0; ; ++i)
  {
    v89 = v39[v87];
    v90 = *(v89 + 144) - 1;
    if (*(v89 + 144) != 1)
    {
      v91 = v232 - i;
      if (v232 < i)
      {
        v91 = 0;
      }

      v92 = 2 * i;
      while (v91)
      {
        *(*(v86 + 1) + v92) = 0;
        ++i;
        v92 += 2;
        --v91;
        if (!--v90)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_134;
    }

LABEL_84:
    if (v87 == v238 - 1)
    {
      break;
    }

    if (*(v89 + 192) == 1)
    {
      if (i >= v232)
      {
        goto LABEL_134;
      }

      v93 = *(v86 + 1);
    }

    else
    {
      if (i >= v232)
      {
        goto LABEL_134;
      }

      v94 = *(v89 + 136) & 0xFB;
      v93 = *(v86 + 1);
      if (v94 == 83)
      {
        *(v93 + 2 * i) = 1;
        goto LABEL_92;
      }
    }

    *(v93 + 2 * i) = 0;
LABEL_92:
    ++v87;
  }

  if (i >= v232)
  {
    goto LABEL_134;
  }

  v95 = i + 1;
  *(*(v86 + 1) + 2 * i) = 1;
LABEL_94:
  if (v95 != v232)
  {
    goto LABEL_134;
  }

  v96 = v232;
  if (v232)
  {
    v96 = 0;
    v97 = *(v86 + 1);
    v98 = v232;
    do
    {
      if (*v97++)
      {
        ++v96;
      }

      --v98;
    }

    while (v98);
  }

  v86[1] = v96;
  v231[3] = v86;
  v100 = heap_Alloc(a1[1], 24);
  if (!v100)
  {
    goto LABEL_146;
  }

  v101 = v100;
  if (TierInit(a1, v100, v232, "Phone-level PUNCTUATION tier"))
  {
    goto LABEL_146;
  }

  if (v238)
  {
    v102 = 0;
    v103 = 0;
    v104 = (v238 - 1);
    while (1)
    {
      v105 = *(v84 + 8 * v102);
      v106 = *(v105 + 144) - 1;
      if (*(v105 + 144) != 1)
      {
        break;
      }

LABEL_113:
      if (v102 == v104)
      {
        if (v103 >= v232)
        {
          goto LABEL_146;
        }

        v109 = 1;
      }

      else
      {
        if (*(v105 + 192) || (v110 = strlen(*(v105 + 32))) == 0 || ((v111 = *(*(v105 + 32) + (v110 - 1)), v112 = v111 > 0x3F, v113 = (1 << v111) & 0x8C00500200000000, !v112) ? (v114 = v113 == 0) : (v114 = 1), v114))
        {
          v109 = 0;
        }

        else
        {
          v109 = 1;
          if (*(v105 + 136) == 78)
          {
            NNFX_logMsg(a1, 1);
          }
        }

        if (v103 >= v232)
        {
          goto LABEL_146;
        }

        if (v102 == v238 - 2 && *(*(v84 + 8 * v104) + 192))
        {
          v109 = 1;
        }
      }

      *(*(v101 + 1) + 2 * v103++) = v109;
      if (++v102 == v238)
      {
        goto LABEL_137;
      }
    }

    v107 = v232 - v103;
    if (v232 < v103)
    {
      v107 = 0;
    }

    v108 = 2 * v103;
    while (v107)
    {
      *(*(v101 + 1) + v108) = 0;
      ++v103;
      v108 += 2;
      --v107;
      if (!--v106)
      {
        goto LABEL_113;
      }
    }

LABEL_146:
    NNFX_logMsg(a1, 0);
    v231[4] = 0;
LABEL_48:
    NNFX_logMsg(a1, 0);
    goto LABEL_49;
  }

  v103 = 0;
LABEL_137:
  if (v103 != v232)
  {
    goto LABEL_146;
  }

  v115 = v232;
  if (v232)
  {
    v115 = 0;
    v116 = *(v101 + 1);
    v117 = v232;
    do
    {
      if (*v116++)
      {
        ++v115;
      }

      --v117;
    }

    while (v117);
  }

  v101[1] = v115;
  v231[4] = v101;
  v119 = heap_Alloc(a1[1], 24);
  if (!v119 || (v120 = v119, TierInit(a1, v119, v232, "Phone-level SENTENCE tier")))
  {
LABEL_169:
    v130 = a1;
    v122 = 0;
    goto LABEL_170;
  }

  v121 = heap_Calloc(a1[1], v238, 2);
  v122 = v121;
  if (!v121)
  {
    v130 = a1;
LABEL_170:
    NNFX_logMsg(v130, v122);
    v231[7] = 0;
    goto LABEL_48;
  }

  v123 = v238;
  v124 = (v238 - 1);
  if (v238 == 1)
  {
    v129 = 0;
LABEL_157:
    *(v121 + 2 * v129) = v123;
    goto LABEL_159;
  }

  v125 = v84;
  v126 = v121;
  v127 = (v238 - 1);
  do
  {
    v128 = *v125++;
    *v126++ = *(v128 + 196) == 1;
    --v127;
  }

  while (v127);
  *(v121 + 2 * v124) = 1;
  if (v238 >= 2 && *(*(v84 + 8 * v124) + 192))
  {
    v123 = 0;
    v129 = (v238 - 2);
    goto LABEL_157;
  }

  if (v238)
  {
LABEL_159:
    v131 = 0;
    v132 = 0;
    while (1)
    {
      v133 = *(*(v84 + 8 * v131) + 144) - 1;
      if (*(*(v84 + 8 * v131) + 144) != 1)
      {
        break;
      }

LABEL_166:
      if (v132 >= v232)
      {
        goto LABEL_169;
      }

      v136 = v132 + 1;
      *(*(v120 + 1) + 2 * v132++) = *(v121 + 2 * v131++);
      if (v131 == v238)
      {
        goto LABEL_172;
      }
    }

    v134 = v232 - v132;
    if (v232 < v132)
    {
      v134 = 0;
    }

    v135 = 2 * v132;
    while (v134)
    {
      *(*(v120 + 1) + v135) = 0;
      ++v132;
      v135 += 2;
      --v134;
      if (!--v133)
      {
        goto LABEL_166;
      }
    }

    goto LABEL_169;
  }

  v136 = 0;
LABEL_172:
  heap_Free(a1[1], v121);
  if (v136 != v232)
  {
    goto LABEL_169;
  }

  v137 = v232;
  if (v232)
  {
    v137 = 0;
    v138 = *(v120 + 1);
    v139 = v232;
    do
    {
      if (*v138++)
      {
        ++v137;
      }

      --v139;
    }

    while (v139);
  }

  v120[1] = v137;
  v231[7] = v120;
  v141 = heap_Alloc(a1[1], 24);
  if (!v141 || (v142 = v141, TierInit(a1, v141, v232, "Phone-level PARSE tier")) || (v143 = heap_Calloc(a1[1], v238, 2)) == 0)
  {
LABEL_215:
    NNFX_logMsg(a1, 0);
    v231[5] = 0;
    goto LABEL_48;
  }

  v144 = v143;
  if (v238 == 1)
  {
    *(v143 + 2 * v124) = 1;
    goto LABEL_205;
  }

  v145 = v84 + 8;
  v146 = (v238 - 1);
  v147 = v143;
  do
  {
    v148 = *(v145 - 8);
    *v147++ = *(v148 + 192) == 1 || strcmp(*(v148 + 88), *(*v145 + 88));
    v145 += 8;
    --v146;
  }

  while (v146);
  *(v144 + 2 * v124) = 1;
  if (v238)
  {
LABEL_205:
    v156 = 0;
    v157 = 0;
    while (1)
    {
      v158 = *(*(v84 + 8 * v156) + 144) - 1;
      if (*(*(v84 + 8 * v156) + 144) != 1)
      {
        break;
      }

LABEL_212:
      if (v157 >= v232)
      {
        goto LABEL_215;
      }

      v149 = v157 + 1;
      *(*(v142 + 1) + 2 * v157++) = *(v144 + 2 * v156++);
      if (v156 == v238)
      {
        goto LABEL_195;
      }
    }

    v159 = v232 - v157;
    if (v232 < v157)
    {
      v159 = 0;
    }

    v160 = 2 * v157;
    while (v159)
    {
      *(*(v142 + 1) + v160) = 0;
      ++v157;
      v160 += 2;
      --v159;
      if (!--v158)
      {
        goto LABEL_212;
      }
    }

    goto LABEL_215;
  }

  v149 = 0;
LABEL_195:
  heap_Free(a1[1], v144);
  if (v149 != v232)
  {
    goto LABEL_215;
  }

  v150 = v232;
  if (v232)
  {
    v150 = 0;
    v151 = *(v142 + 1);
    v152 = v232;
    do
    {
      if (*v151++)
      {
        ++v150;
      }

      --v152;
    }

    while (v152);
  }

  v142[1] = v150;
  v231[5] = v142;
  v154 = heap_Alloc(a1[1], 24);
  if (!v154)
  {
    goto LABEL_334;
  }

  v155 = v154;
  if (TierInit(a1, v154, v232, "Phone-level STRESS-GROUP tier"))
  {
    goto LABEL_334;
  }

  v161 = v238;
  if (v238)
  {
    v162 = 0;
    v161 = 0;
    while (1)
    {
      v163 = *(v84 + 8 * v162);
      v164 = *(v163 + 144);
      if (v164)
      {
        break;
      }

      v168 = v162 + 1;
LABEL_243:
      v162 = v168;
      if (v168 == v238)
      {
        goto LABEL_244;
      }
    }

    v165 = 0;
    v166 = *(v163 + 184);
    v167 = (v164 - 1);
    v168 = v162 + 1;
    LODWORD(v169) = v232 - v161;
    if (v232 >= v161)
    {
      v169 = v169;
    }

    else
    {
      v169 = 0;
    }

    while (2)
    {
      if (*(v166 + 4 * v165) != 1)
      {
        goto LABEL_232;
      }

      if (v165 < v167 && *(*(v163 + 176) + 4 * v165 + 4) == 1)
      {
LABEL_231:
        v170 = 1;
      }

      else
      {
        v170 = 0;
        if (v162 < v124 && v167 == v165)
        {
          if (**(*(v84 + 8 * v168) + 176) == 1)
          {
            goto LABEL_231;
          }

LABEL_232:
          v170 = 0;
        }
      }

      if (v169 == v165)
      {
        goto LABEL_334;
      }

      if (v167 == v165 && v162 == v124)
      {
        v170 = 1;
      }

      *(*(v155 + 1) + 2 * v161 + 2 * v165++) = v170;
      if (v164 == v165)
      {
        v161 += v165;
        goto LABEL_243;
      }

      continue;
    }
  }

LABEL_244:
  if (v161 != v232)
  {
LABEL_334:
    NNFX_logMsg(a1, 0);
    v231[6] = 0;
    goto LABEL_48;
  }

  v172 = v232;
  if (v232)
  {
    v172 = 0;
    v173 = *(v155 + 1);
    v174 = v232;
    do
    {
      if (*v173++)
      {
        ++v172;
      }

      --v174;
    }

    while (v174);
  }

  v155[1] = v172;
  v231[6] = v155;
  v176 = BuildSilencePhT(a1, v84, v238, v232);
  v231[8] = v176;
  if (!v176)
  {
    goto LABEL_48;
  }

  v177 = v231;
  TierAddBoundaries(v231[6], v231[3]);
  TierAddBoundaries(v177[6], v177[8]);
  TierAddBoundaries(v177[5], v177[3]);
  TierAddBoundaries(v177[5], v177[4]);
  TierAddBoundaries(v177[5], v177[8]);
  v225 = (v234 + v229);
  v228 = heap_Calloc(a1[1], v225, 8);
  if (!v228)
  {
    goto LABEL_49;
  }

  for (j = 0; j != 13; ++j)
  {
    v179 = (v249[j])(a1, v243, a3, v84, v231, HIDWORD(v247), v247);
    v228[j] = v179;
    if (!v179)
    {
      goto LABEL_49;
    }
  }

  v227 = 0;
  v226 = 0;
  do
  {
    v180 = v228[v227];
    if (*(v180 + 4016))
    {
      for (k = 0; k < *(v180 + 4016); ++k)
      {
        v181 = *(*(v180 + 8) + 8 * k);
        v245 = 0;
        if (v181)
        {
          v182 = TrieIntGet(v246, v181, &v245);
          v180 = v228[v227];
          if (!v182)
          {
            v239 = *(v180 + 4032);
            v230 = v245;
            v248 = 0;
            v183 = heap_Calloc(a1[1], 1, 4048);
            if (!v183)
            {
              goto LABEL_338;
            }

            v184 = v183;
            v185 = (2 * v230);
            *(v183 + 4016) = v185;
            *(v183 + 4024) = *(v180 + 4024);
            if (v185 >= 1)
            {
              v186 = heap_Calloc(a1[1], v185, 8);
              *(v184 + 8) = v186;
              if (!v186 || (v187 = heap_Calloc(a1[1], *(v184 + 4016), 4), (*(v184 + 4040) = v187) == 0) || allocpppFeats(a1, v184, *(v184 + 4016), *(v184 + 4024)))
              {
LABEL_338:
                NNFX_logMsg(a1, 0);
                v228[v226 + 13] = 0;
                goto LABEL_49;
              }

              if (*(v184 + 4016) >= 1)
              {
                v188 = 0;
                v189 = *(v184 + 4040);
                do
                {
                  *(v189 + 4 * v188++) = 0;
                }

                while (v188 < *(v184 + 4016));
              }
            }

            if (v230 >= 1)
            {
              v242 = 0;
              v233 = 0;
              v235 = 1;
              do
              {
                if (v233)
                {
                  v190 = 2;
                }

                else
                {
                  v190 = 1;
                }

                BYTE4(v248) = 95;
                LOBYTE(v248) = 95;
                memset(&v248 + 5, 76, v190);
                memset(&v248 + 1, 82, v190);
                if (v235 >= 3)
                {
                  BYTE6(v248) = v235 + 48;
                  BYTE2(v248) = v235 + 48;
                }

                v191 = *(v184 + 4024);
                if (v191 >= 1)
                {
                  v192 = 0;
                  v193 = 8 * v191;
                  do
                  {
                    *(*(*v184 + 8 * v242) + v192) = 0;
                    v192 += 8;
                  }

                  while (v193 != v192);
                }

                if (v239[1] > v235)
                {
                  v194 = 0;
                  do
                  {
                    ElementInGroup = lastElementInGroup(a1, v239, v194);
                    v196 = firstElementInGroup(a1, v239, v194 + v235);
                    v197 = lastElementInGroup(a1, v239, v194 + v235);
                    if (v196 <= v197)
                    {
                      v198 = v197 - v196 + 1;
                      v199 = 8 * v196;
                      do
                      {
                        *(*(*v184 + 8 * v242) + v199) = *(*(*v180 + 8 * k) + 8 * ElementInGroup);
                        v199 += 8;
                        --v198;
                      }

                      while (v198);
                    }

                    ++v194;
                  }

                  while (v194 < (v239[1] - v235));
                }

                *(*(v184 + 8) + 8 * v242) = stringcat(a1, *(*(v180 + 8) + 8 * k), &v248 + 4);
                v200 = v242 | 1;
                v201 = *(v184 + 4024);
                if (v201 >= 1)
                {
                  v202 = 0;
                  v203 = 8 * v201;
                  do
                  {
                    *(*(*v184 + 8 * v200) + v202) = 0;
                    v202 += 8;
                  }

                  while (v203 != v202);
                }

                for (m = v235; m < v239[1]; ++m)
                {
                  v205 = lastElementInGroup(a1, v239, m);
                  v206 = firstElementInGroup(a1, v239, m - v235);
                  v207 = lastElementInGroup(a1, v239, m - v235);
                  if (v206 <= v207)
                  {
                    v208 = v207 - v206 + 1;
                    v209 = 8 * v206;
                    do
                    {
                      *(*(*v184 + 8 * v200) + v209) = *(*(*v180 + 8 * k) + 8 * v205);
                      v209 += 8;
                      --v208;
                    }

                    while (v208);
                  }
                }

                *(*(v184 + 8) + 8 * v200) = stringcat(a1, *(*(v180 + 8) + 8 * k), &v248);
                v242 += 2;
                ++v235;
                ++v233;
              }

              while (v233 != v230);
            }

            v228[v226 + 13] = v184;
            ++v226;
            v180 = v228[v227];
          }
        }
      }
    }

    ++v227;
  }

  while (v227 != 13);
  if (v226 != kaldi::QuantizedMatrixBase<short>::NumRows(v246))
  {
    goto LABEL_49;
  }

  if (a10)
  {
    v228[(v225 - 1)] = a10;
  }

  v73 = mergePhoneFeaturesAtStateLevel(a1, v228, v225, v236);
  if (v73)
  {
    if (v225)
    {
      for (n = 0; n != v225; ++n)
      {
        v211 = v228[n];
        if (*(v211 + 4016))
        {
          v212 = 0;
          do
          {
            *(*(v211 + 8) + 8 * v212++) = 0;
            v211 = v228[n];
          }

          while (v212 < *(v211 + 4016));
        }
      }
    }

    v213 = HIDWORD(v247);
    if (HIDWORD(v247))
    {
      v214 = 0;
      do
      {
        v215 = *(v84 + 8 * v214);
        if (v215)
        {
          freepPWRI(a1, v215);
          *(v84 + 8 * v214) = 0;
          v213 = HIDWORD(v247);
        }

        ++v214;
      }

      while (v214 < v213);
    }

    heap_Free(a1[1], v84);
    freepPhoneTiers(a1, v231);
    if (v225)
    {
      v216 = 0;
      while (1)
      {
        v217 = v228[v216];
        if (v217)
        {
          break;
        }

LABEL_332:
        if (++v216 == v225)
        {
          goto LABEL_333;
        }
      }

      v218 = *(v217 + 4016);
      if (v218)
      {
        for (ii = 0; ii < v218; ++ii)
        {
          v220 = *(*(v217 + 8) + 8 * ii);
          if (v220)
          {
            heap_Free(a1[1], v220);
            v218 = *(v217 + 4016);
          }
        }
      }

      v221 = *(v217 + 8);
      if (v221)
      {
        heap_Free(a1[1], v221);
      }

      v222 = *(v217 + 4040);
      v223 = *v217;
      if (v222)
      {
        if (!v223)
        {
          goto LABEL_330;
        }

        if (*(v217 + 4016))
        {
          v224 = 0;
          do
          {
            freeppFeats(a1, *(*v217 + 8 * v224), *(v217 + 4024), *(*(v217 + 4040) + 4 * v224));
            *(*v217 + 8 * v224++) = 0;
          }

          while (v224 < *(v217 + 4016));
          v223 = *v217;
        }

        heap_Free(a1[1], v223);
      }

      else
      {
        freepppFeats(a1, v223, *(v217 + 4016), *(v217 + 4024));
      }

      *v217 = 0;
      v222 = *(v217 + 4040);
      if (!v222)
      {
LABEL_331:
        *(v217 + 4040) = 0;
        heap_Free(a1[1], v217);
        goto LABEL_332;
      }

LABEL_330:
      heap_Free(a1[1], v222);
      goto LABEL_331;
    }

LABEL_333:
    heap_Free(a1[1], v228);
    TrieIntFree(a1, v246);
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v73;
}

uint64_t nnextract_Deallocate(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t **a4, int a5)
{
  freeppSRI(a1, a2, a3);
  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v9 = *(a4 + 1004);
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v11 = a4[1][i];
          if (v11)
          {
            heap_Free(*(a1 + 8), v11);
            a4[1][i] = 0;
            v9 = *(a4 + 1004);
          }
        }

        v8 = a4[1];
      }

      heap_Free(*(a1 + 8), v8);
      a4[1] = 0;
    }

    v12 = *a4;
    if (*a4)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = *(a4 + 1006);
        if (v14)
        {
          for (j = 0; j < v14; ++j)
          {
            v16 = *(**a4 + 8 * j);
            if (v16)
            {
              freepFeat(a1, v16);
              *(**a4 + 8 * j) = 0;
              v14 = *(a4 + 1006);
            }
          }

          v13 = **a4;
        }

        heap_Free(*(a1 + 8), v13);
        **a4 = 0;
      }

      v17 = *(a4 + 1004);
      if (v17 >= 2)
      {
        for (k = 1; k < v17; ++k)
        {
          v19 = (*a4)[k];
          if (v19)
          {
            v20 = *(a4 + 1006);
            if (v20)
            {
              v21 = 0;
              do
              {
                v22 = (*a4)[k];
                v23 = v21;
                v24 = *(v22 + 8 * v21);
                if (v24)
                {
                  v25 = a4[505];
                  if (!v25 || *(v25 + 4 * k))
                  {
                    freepFeat(a1, v24);
                    v22 = (*a4)[k];
                    v20 = *(a4 + 1006);
                  }

                  *(v22 + 8 * v23) = 0;
                }

                v21 = v23 + a5;
              }

              while (v23 + a5 < v20);
              v19 = (*a4)[k];
            }

            heap_Free(*(a1 + 8), v19);
            (*a4)[k] = 0;
            v17 = *(a4 + 1004);
          }
        }
      }

      heap_Free(*(a1 + 8), *a4);
      *a4 = 0;
    }

    v26 = a4[505];
    if (v26)
    {
      heap_Free(*(a1 + 8), v26);
    }

    a4[505] = 0;
    heap_Free(*(a1 + 8), a4);
  }

  return 0;
}

uint64_t nnextract_Skip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a1 + 16 * *(a2 + 32) + 8);
  v6 = a3 + 16;
  do
  {
    v7 = *(v5 + 8 * v4);
    if (!v7)
    {
      break;
    }

    v8 = *(a3 + 4016);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *(a3 + 8);
      do
      {
        if (!strcmp(v7, *(v10 + 8 * v9)))
        {
          *(v6 + 4 * v9) = 0;
          --*(a3 + 4020);
          v8 = *(a3 + 4016);
        }

        ++v9;
      }

      while (v9 < v8);
    }

    ++v4;
  }

  while (v4 != 500);
  return 0;
}

uint64_t nnextract_Rolled(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6, uint64_t *a7, uint64_t a8, char *a9, uint64_t a10)
{
  v11 = *(a6 + 8);
  if (!v11)
  {
    goto LABEL_13;
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  GetLingTabIndex(v11, v25);
  if (SLOWORD(v25[0]) == -1)
  {
    NNFX_logMsg(a1, 1);
  }

  if (SWORD1(v25[0]) == -1)
  {
    NNFX_logMsg(a1, 1);
  }

  LOBYTE(v24) = a5;
  NnFeatures = extractNnFeatures(a1, *(a6 + 8), v25, a9, a10, a2, a3, a4, v24, a8);
  *a7 = NnFeatures;
  if (NnFeatures)
  {
    v20 = NnFeatures;
    *(NnFeatures + 4020) = 0;
    if (*(NnFeatures + 4016) >= 1)
    {
      v21 = 0;
      do
      {
        *(NnFeatures + 16 + 4 * v21) = 1;
        ++*(NnFeatures + 4020);
        ++v21;
      }

      while (v21 < *(NnFeatures + 4016));
    }

    v22 = *(a6 + 8);
    if (*(v22 + 16 * v26 + 8))
    {
      nnextract_Skip(v22, v25, v20);
    }

    return 0;
  }

  else
  {
LABEL_13:
    NNFX_logMsg(a1, 0);
    return 1;
  }
}

uint64_t fExtGetPhoneFeats(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, void *a5, unsigned int a6, int a7)
{
  v92 = *MEMORY[0x1E69E9840];
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v14 = heap_Calloc(*(a1 + 8), 1, 4048);
  v15 = v14;
  if (v14)
  {
    *(v14 + 4016) = 8;
    *(v14 + 4024) = a7;
    *(v14 + 4032) = *a5;
    v16 = heap_Alloc(*(a1 + 8), 64);
    *(v15 + 8) = v16;
    if (!v16)
    {
      goto LABEL_107;
    }

    **(v15 + 8) = stringdup(a1, "Phone");
    *(*(v15 + 8) + 8) = stringdup(a1, "VowInSyll");
    *(*(v15 + 8) + 16) = stringdup(a1, "Voicing");
    *(*(v15 + 8) + 24) = stringdup(a1, "ConsVow");
    *(*(v15 + 8) + 32) = stringdup(a1, "BroadClass");
    *(*(v15 + 8) + 40) = stringdup(a1, "LexStress");
    *(*(v15 + 8) + 48) = stringdup(a1, "PhoneTag");
    *(*(v15 + 8) + 56) = stringdup(a1, "PhoneDiff");
    v17 = *(v15 + 4016);
    if (v17 >= 1)
    {
      v18 = *(v15 + 8);
      v19 = *(v15 + 4016);
      while (*v18)
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_107;
    }

LABEL_7:
    v20 = heap_Alloc(*(a1 + 8), 8 * v17);
    *v15 = v20;
    if (!v20)
    {
      goto LABEL_107;
    }

    if (*(v15 + 4016))
    {
      v21 = 0;
      do
      {
        v22 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 4024));
        *(*v15 + 8 * v21) = v22;
        if (!v22)
        {
          goto LABEL_107;
        }
      }

      while (++v21 < *(v15 + 4016));
    }

    if (a6)
    {
      v23 = 0;
      v24 = 0;
      v78 = a6;
      v79 = a7;
      v87 = a3;
      v80 = a2;
      while (!*(*(a4 + 8 * v23) + 144))
      {
LABEL_98:
        if (++v23 == v78)
        {
          goto LABEL_106;
        }
      }

      v25 = 0;
      v88 = 1;
      v81 = v23;
      while (1)
      {
        v90 = v25;
        v26 = heap_Alloc(*(a1 + 8), 16);
        if (!v26)
        {
          goto LABEL_107;
        }

        v27 = v26;
        v89 = v24;
        v28 = heap_Alloc(*(a1 + 8), 16);
        if (!v28)
        {
          goto LABEL_107;
        }

        v29 = v28;
        v30 = heap_Alloc(*(a1 + 8), 16);
        if (!v30)
        {
          goto LABEL_107;
        }

        v31 = v30;
        v32 = heap_Alloc(*(a1 + 8), 16);
        if (!v32)
        {
          goto LABEL_107;
        }

        v33 = v32;
        v34 = heap_Alloc(*(a1 + 8), 16);
        if (!v34)
        {
          goto LABEL_107;
        }

        v85 = v33;
        v86 = v34;
        v35 = heap_Alloc(*(a1 + 8), 16);
        if (!v35)
        {
          goto LABEL_107;
        }

        v36 = v35;
        v37 = heap_Alloc(*(a1 + 8), 16);
        if (!v37)
        {
          goto LABEL_107;
        }

        v83 = v36;
        v84 = v37;
        v38 = heap_Alloc(*(a1 + 8), 16);
        if (!v38)
        {
          goto LABEL_107;
        }

        v39 = v38;
        v40 = *(a4 + 8 * v23);
        *(v27 + 8) = 3;
        __s = *(*(v40 + 152) + v90);
        v41 = stringdup(a1, &__s);
        *v27 = v41;
        if (!v41)
        {
          goto LABEL_107;
        }

        *(**v15 + 8 * v89) = v27;
        v42 = *(a4 + 8 * v23);
        v82 = v39;
        if (*(v42 + 192))
        {
          goto LABEL_51;
        }

        if (v90)
        {
          v43 = v88;
          while (1)
          {
            v44 = v43 - 2;
            if ((v43 - 2) < 0)
            {
              break;
            }

            --v43;
            if (*(*(v42 + 184) + 4 * v44) == 1)
            {
              goto LABEL_32;
            }
          }
        }

        v43 = 0;
LABEL_32:
        v45 = *(v42 + 144) - 1;
        if (v90 <= v45)
        {
          v46 = v90;
          while (*(*(v42 + 184) + 4 * v46) != 1)
          {
            if (++v46 > v45)
            {
              goto LABEL_38;
            }
          }

          v45 = v46;
        }

LABEL_38:
        v47 = *a3;
        if (v47 == -1 || v43 > v45)
        {
          break;
        }

        v49 = **(v80 + 16 * v47 + 8);
        v50 = *(v42 + 152);
        v51 = v43;
        while (1)
        {
          v52 = strchr(v49, *(v50 + v51));
          if (v52)
          {
            break;
          }

          if (++v51 > v45)
          {
            goto LABEL_47;
          }
        }

        v53 = *v52;
        if (v53 == 45)
        {
          break;
        }

LABEL_52:
        *(v29 + 8) = 3;
        __s = v53;
        v55 = stringdup(a1, &__s);
        *v29 = v55;
        if (!v55)
        {
          goto LABEL_107;
        }

        *(*(*v15 + 8) + 8 * v89) = v29;
        if (*v87 == -1)
        {
          v57 = 45;
          a7 = v79;
          v56 = v80;
          v23 = v81;
        }

        else
        {
          v56 = v80;
          v23 = v81;
          v57 = strchr(**(v80 + 16 * v87[1] + 8), *(*(*(a4 + 8 * v81) + 152) + v90)) ? 86 : 45;
          a7 = v79;
        }

        *(v31 + 8) = 2;
        *v31 = v57;
        *(*(*v15 + 16) + 8 * v89) = v31;
        v58 = *v87;
        if (v58 == -1)
        {
          v61 = 45;
          v59 = v90;
        }

        else
        {
          v59 = v90;
          v60 = *(*(*(a4 + 8 * v23) + 152) + v90);
          if (v60 == SilPhone[0])
          {
            v61 = 45;
          }

          else
          {
            v62 = strchr(**(v56 + 16 * v58 + 8), v60);
            v59 = v90;
            v61 = v62 ? 86 : 67;
          }
        }

        *(v85 + 8) = 2;
        *v85 = v61;
        *(*(*v15 + 24) + 8 * v89) = v85;
        v63 = *(*(*(a4 + 8 * v23) + 152) + v59);
        if (v63 == SilPhone[0])
        {
          v64 = 45;
        }

        else
        {
          v65 = v63;
          v66 = v87[2];
          if (v66 != -1 && (v67 = *(v56 + 16 * v66 + 8)) != 0 && strchr(*v67, v65))
          {
            v64 = 77;
          }

          else
          {
            v68 = v87[3];
            if (v68 != -1 && (v69 = *(v56 + 16 * v68 + 8)) != 0 && strchr(*v69, v65))
            {
              v64 = 68;
            }

            else if (check_phn_class(v56, v87[4], v65))
            {
              v64 = 65;
            }

            else if (check_phn_class(v56, v87[5], v65))
            {
              v64 = 70;
            }

            else if (check_phn_class(v56, v87[6], v65))
            {
              v64 = 83;
            }

            else if (check_phn_class(v56, v87[7], v65))
            {
              v64 = 76;
            }

            else if (check_phn_class(v56, v87[8], v65))
            {
              v64 = 78;
            }

            else
            {
              v64 = check_phn_class(v56, v87[9], v65) ? 71 : 45;
            }
          }

          v59 = v90;
        }

        *(v86 + 8) = 2;
        *v86 = v64;
        *(*(*v15 + 32) + 8 * v89) = v86;
        v70 = *(a4 + 8 * v23);
        *(v83 + 8) = 2;
        v71 = *(*(v70 + 176) + 4 * v59);
        v72 = v71 ? v71 + 48 : 45;
        *v83 = v72;
        *(*(*v15 + 40) + 8 * v89) = v83;
        *(v84 + 8) = 3;
        v73 = v59;
        v74 = stringdup(a1, *(*(*(a4 + 8 * v23) + 168) + 8 * v59));
        *v84 = v74;
        if (!v74)
        {
          goto LABEL_107;
        }

        *(*(*v15 + 48) + 8 * v89) = v84;
        v75 = *(a4 + 8 * v23);
        *(v82 + 8) = 2;
        v76 = *(*(v75 + 160) + v73);
        if (v76 == 32)
        {
          LOBYTE(v76) = 45;
        }

        *v82 = v76;
        *(*(*v15 + 56) + 8 * v89) = v82;
        v24 = v89 + 1;
        v25 = v73 + 1;
        ++v88;
        a3 = v87;
        if (v25 >= *(*(a4 + 8 * v23) + 144))
        {
          goto LABEL_98;
        }
      }

LABEL_47:
      NNFX_logMsg(a1, 1);
      if (v43 <= v45)
      {
        v54 = v43;
        do
        {
          NNFX_logMsg(a1, 1);
          ++v54;
        }

        while (v54 <= v45);
      }

      NNFX_logMsg(a1, 1);
LABEL_51:
      LOBYTE(v53) = 45;
      goto LABEL_52;
    }

    v24 = 0;
LABEL_106:
    if (v24 != a7)
    {
LABEL_107:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v15;
}

uint64_t fExtGetLexicalFeats(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v14 = heap_Calloc(*(a1 + 8), 1, 4048);
  v15 = v14;
  if (v14)
  {
    *(v14 + 4016) = 15;
    *(v14 + 4024) = a7;
    *(v14 + 4032) = *(a5 + 16);
    v16 = heap_Alloc(*(a1 + 8), 120);
    *(v15 + 8) = v16;
    if (!v16)
    {
      goto LABEL_110;
    }

    **(v15 + 8) = stringdup(a1, "Prominence");
    *(*(v15 + 8) + 8) = stringdup(a1, "POS");
    *(*(v15 + 8) + 16) = stringdup(a1, "nluPOS");
    *(*(v15 + 8) + 24) = stringdup(a1, "nluCLS");
    *(*(v15 + 8) + 32) = stringdup(a1, "nluPNC");
    *(*(v15 + 8) + 40) = stringdup(a1, "nluCMP");
    *(*(v15 + 8) + 48) = stringdup(a1, "nluBDS");
    *(*(v15 + 8) + 56) = stringdup(a1, "nluCPS");
    *(*(v15 + 8) + 64) = stringdup(a1, "IsFxnWord");
    *(*(v15 + 8) + 72) = stringdup(a1, "IsWHWord");
    *(*(v15 + 8) + 80) = stringdup(a1, "IsAuxWord");
    *(*(v15 + 8) + 88) = stringdup(a1, "IsConjWord");
    *(*(v15 + 8) + 96) = stringdup(a1, "IsAdposWord");
    *(*(v15 + 8) + 104) = stringdup(a1, "CommonWord");
    *(*(v15 + 8) + 112) = stringdup(a1, "EndPhraseType");
    v17 = *(v15 + 4016);
    if (v17)
    {
      v18 = *(v15 + 8);
      v19 = *(v15 + 4016);
      while (*v18)
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_110;
    }

LABEL_7:
    v20 = heap_Alloc(*(a1 + 8), 8 * v17);
    *v15 = v20;
    if (!v20)
    {
      goto LABEL_110;
    }

    if (*(v15 + 4016))
    {
      v21 = 0;
      do
      {
        v22 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 4024));
        *(*v15 + 8 * v21) = v22;
        if (!v22)
        {
          goto LABEL_110;
        }
      }

      while (++v21 < *(v15 + 4016));
    }

    v23 = *(a5 + 16);
    if (v23[1] != a6 || *v23 != a7)
    {
LABEL_110:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    if (a6)
    {
      v24 = 0;
      v25 = 0;
      v26 = -1;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, v23, v24);
        if (ElementInGroup == -1)
        {
          goto LABEL_110;
        }

        v110 = lastElementInGroup(a1, *(a5 + 16), v24);
        if (v110 == -1 || ElementInGroup != v26 + 1 || v110 >= a7)
        {
          goto LABEL_110;
        }

        if (v25)
        {
          heap_Free(*(a1 + 8), v25);
        }

        v27 = stringdup(a1, *(*(a4 + 8 * v24) + 32));
        if (!v27)
        {
          goto LABEL_110;
        }

        v25 = v27;
        v108 = v24;
        if (*v27)
        {
          v28 = 0;
          v29 = 1;
          do
          {
            v25[v28] = __tolower(v25[v28]);
            v28 = v29;
          }

          while (strlen(v25) > v29++);
        }

        v111 = check_lex_feat(a2, v25, a3[11]);
        v106 = check_lex_feat(a2, v25, a3[12]);
        v104 = check_lex_feat(a2, v25, a3[14]);
        v102 = check_lex_feat(a2, v25, a3[13]);
        v31 = check_lex_feat(a2, v25, a3[15]);
        v32 = a3[10];
        LODWORD(v33) = -1;
        if (v32 != -1 && v32 <= 499)
        {
          v34 = *(a2 + 16 * a3[10] + 8);
          if (v34)
          {
            v113 = v31;
            v33 = 0;
            do
            {
              v35 = *(v34 + 8 * v33);
              if (!v35)
              {
                break;
              }

              if (!strcmp(v25, v35))
              {
                goto LABEL_35;
              }

              ++v33;
            }

            while (v33 != 500);
            LODWORD(v33) = -1;
LABEL_35:
            v31 = v113;
          }

          else
          {
            LODWORD(v33) = -1;
          }
        }

        v101 = v33;
        v36 = v108;
        if (ElementInGroup <= v110)
        {
          v114 = 0;
          if (v111)
          {
            v37 = 49;
          }

          else
          {
            v37 = 45;
          }

          v90 = v37;
          if (v106)
          {
            v38 = 49;
          }

          else
          {
            v38 = 45;
          }

          v89 = v38;
          if (v104)
          {
            v39 = 49;
          }

          else
          {
            v39 = 45;
          }

          if (v102)
          {
            v40 = 49;
          }

          else
          {
            v40 = 45;
          }

          v87 = v40;
          v88 = v39;
          if (v31)
          {
            v41 = 49;
          }

          else
          {
            v41 = 45;
          }

          v86 = v41;
          v112 = 8 * ElementInGroup;
          do
          {
            v42 = heap_Alloc(*(a1 + 8), 16);
            if (!v42)
            {
              goto LABEL_110;
            }

            v43 = v42;
            v44 = heap_Alloc(*(a1 + 8), 16);
            if (!v44)
            {
              goto LABEL_110;
            }

            v45 = v44;
            v105 = heap_Alloc(*(a1 + 8), 16);
            if (!v105)
            {
              goto LABEL_110;
            }

            v46 = heap_Alloc(*(a1 + 8), 16);
            if (!v46)
            {
              goto LABEL_110;
            }

            v103 = v46;
            v100 = heap_Alloc(*(a1 + 8), 16);
            if (!v100)
            {
              goto LABEL_110;
            }

            v47 = heap_Alloc(*(a1 + 8), 16);
            if (!v47)
            {
              goto LABEL_110;
            }

            v99 = v47;
            v98 = heap_Alloc(*(a1 + 8), 16);
            if (!v98)
            {
              goto LABEL_110;
            }

            v48 = heap_Alloc(*(a1 + 8), 16);
            if (!v48)
            {
              goto LABEL_110;
            }

            v97 = v48;
            v49 = heap_Alloc(*(a1 + 8), 16);
            if (!v49)
            {
              goto LABEL_110;
            }

            v96 = v49;
            v50 = heap_Alloc(*(a1 + 8), 16);
            if (!v50)
            {
              goto LABEL_110;
            }

            v95 = v50;
            v51 = heap_Alloc(*(a1 + 8), 16);
            if (!v51)
            {
              goto LABEL_110;
            }

            v94 = v51;
            v52 = heap_Alloc(*(a1 + 8), 16);
            if (!v52)
            {
              goto LABEL_110;
            }

            v93 = v52;
            v53 = heap_Alloc(*(a1 + 8), 16);
            if (!v53)
            {
              goto LABEL_110;
            }

            v92 = v53;
            v54 = heap_Alloc(*(a1 + 8), 16);
            if (!v54)
            {
              goto LABEL_110;
            }

            v107 = v54;
            v55 = heap_Alloc(*(a1 + 8), 16);
            if (!v55)
            {
              goto LABEL_110;
            }

            v91 = v55;
            v56 = *(*(a4 + 8 * v108) + 20);
            v57 = v56 ? v56 + 48 : 45;
            *v43 = v57;
            *(**v15 + v112 + 8 * v114) = v43;
            *(v43 + 8) = 2;
            *(v45 + 8) = 3;
            v58 = *(*(a4 + 8 * v108) + 56);
            if (*v58)
            {
              v59 = stringdup(a1, v58);
              *v45 = v59;
              v60 = v105;
              if (!v59)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v61 = stringdup(a1, "-");
              *v45 = v61;
              v60 = v105;
              if (!v61)
              {
                goto LABEL_110;
              }
            }

            *(*(*v15 + 8) + v112 + 8 * v114) = v45;
            *(v60 + 8) = 3;
            v36 = v108;
            v62 = *(*(a4 + 8 * v108) + 80);
            if (*v62)
            {
              v63 = stringdup(a1, v62);
              *v60 = v63;
              if (!v63)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v64 = stringdup(a1, "-");
              *v60 = v64;
              if (!v64)
              {
                goto LABEL_110;
              }
            }

            *(*(*v15 + 16) + v112 + 8 * v114) = v60;
            *(v103 + 8) = 3;
            v65 = *(*(a4 + 8 * v108) + 96);
            if (*v65)
            {
              v66 = stringdup(a1, v65);
              *v103 = v66;
              if (!v66)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v67 = stringdup(a1, "-");
              *v103 = v67;
              if (!v67)
              {
                goto LABEL_110;
              }
            }

            *(*(*v15 + 24) + v112 + 8 * v114) = v103;
            *(v100 + 8) = 3;
            v68 = *(*(a4 + 8 * v108) + 112);
            if (*v68)
            {
              v69 = stringdup(a1, v68);
              *v100 = v69;
              if (!v69)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v70 = stringdup(a1, "-");
              *v100 = v70;
              if (!v70)
              {
                goto LABEL_110;
              }
            }

            *(*(*v15 + 32) + v112 + 8 * v114) = v100;
            *(v99 + 8) = 3;
            v71 = *(*(a4 + 8 * v108) + 104);
            if (*v71)
            {
              v72 = stringdup(a1, v71);
              *v99 = v72;
              if (!v72)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v73 = stringdup(a1, "-");
              *v99 = v73;
              if (!v73)
              {
                goto LABEL_110;
              }
            }

            *(*(*v15 + 40) + v112 + 8 * v114) = v99;
            *(v98 + 8) = 3;
            v74 = *(*(a4 + 8 * v108) + 120);
            if (*v74)
            {
              v75 = stringdup(a1, v74);
              *v98 = v75;
              if (!v75)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v76 = stringdup(a1, "-");
              *v98 = v76;
              if (!v76)
              {
                goto LABEL_110;
              }
            }

            *(*(*v15 + 48) + v112 + 8 * v114) = v98;
            *(v97 + 8) = 3;
            v77 = *(*(a4 + 8 * v108) + 128);
            if (*v77)
            {
              v78 = stringdup(a1, v77);
              *v97 = v78;
              if (!v78)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v79 = stringdup(a1, "-");
              *v97 = v79;
              if (!v79)
              {
                goto LABEL_110;
              }
            }

            *(*(*v15 + 56) + v112 + 8 * v114) = v97;
            *(v96 + 8) = 2;
            *v96 = v90;
            *(*(*v15 + 64) + v112 + 8 * v114) = v96;
            *v95 = v89;
            *(*(*v15 + 72) + v112 + 8 * v114) = v95;
            *(v95 + 8) = 2;
            *(v94 + 8) = 2;
            *v94 = v88;
            *(*(*v15 + 80) + v112 + 8 * v114) = v94;
            v93[2] = 2;
            *v93 = v87;
            *(*(*v15 + 88) + v112 + 8 * v114) = v93;
            *(v92 + 8) = 2;
            *v92 = v86;
            *(*(*v15 + 96) + v112 + 8 * v114) = v92;
            *(v107 + 8) = 3;
            if (v101 == -1)
            {
              v81 = a1;
              v80 = "-";
            }

            else
            {
              v80 = *(*(a2 + 16 * a3[10] + 8) + 8 * v101);
              v81 = a1;
            }

            v82 = stringdup(v81, v80);
            *v107 = v82;
            if (!v82)
            {
              goto LABEL_110;
            }

            v83 = v114;
            *(*(*v15 + 104) + v112 + 8 * v114) = v107;
            *(v91 + 8) = 2;
            v84 = **(*(a4 + 8 * v108) + 48);
            if (!v84)
            {
              v84 = 45;
            }

            *v91 = v84;
            *(*(*v15 + 112) + v112 + 8 * v114++) = v91;
          }

          while (~v110 + ElementInGroup + v83 + 1);
        }

        v24 = v36 + 1;
        v23 = *(a5 + 16);
        v26 = v110;
        if (v24 >= v23[1])
        {
          heap_Free(*(a1 + 8), v25);
          return v15;
        }
      }
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v15;
}

uint64_t fExtGetParseFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v12 = heap_Calloc(*(a1 + 8), 1, 4048);
  v13 = v12;
  if (!v12)
  {
    NNFX_logMsg(a1, 0);
    return v13;
  }

  *(v12 + 4016) = 1;
  *(v12 + 4024) = a7;
  *(v12 + 4032) = *(a5 + 40);
  v14 = heap_Alloc(*(a1 + 8), 8);
  *(v13 + 8) = v14;
  if (!v14)
  {
    goto LABEL_35;
  }

  **(v13 + 8) = stringdup(a1, "SyntaxTag");
  if (!**(v13 + 8))
  {
    goto LABEL_35;
  }

  v15 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4016));
  *v13 = v15;
  if (!v15)
  {
    goto LABEL_35;
  }

  if (*(v13 + 4016))
  {
    v16 = 0;
    do
    {
      v17 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4024));
      *(*v13 + 8 * v16) = v17;
      if (!v17)
      {
        goto LABEL_35;
      }
    }

    while (++v16 < *(v13 + 4016));
  }

  v18 = *(a5 + 40);
  if (*v18 != a7)
  {
LABEL_35:
    NNFX_logMsg(a1, 0);
    return 0;
  }

  if (v18[1])
  {
    v19 = 0;
    v20 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v18, v19);
      if (ElementInGroup == -1)
      {
        goto LABEL_35;
      }

      v22 = ElementInGroup;
      v23 = lastElementInGroup(a1, *(a5 + 40), v19);
      if (v23 == -1)
      {
        goto LABEL_35;
      }

      if (v22 != v20 + 1)
      {
        goto LABEL_35;
      }

      v24 = v23;
      if (v23 >= a7 || !a6)
      {
        goto LABEL_35;
      }

      v25 = 0;
      v26 = 0;
      v37 = v23;
      while (*(*(a4 + 8 * v26) + 140) != v22)
      {
        ++v26;
        v25 += 0x100000000;
        if (a6 == v26)
        {
          goto LABEL_35;
        }
      }

      v36 = v19;
      v27 = 0;
      v28 = 0;
      while (*(*(a4 + 8 * v28) + 140) + *(*(a4 + 8 * v28) + 144) - 1 != v23)
      {
        ++v28;
        v27 += 0x100000000;
        if (a6 == v28)
        {
          goto LABEL_35;
        }
      }

      v38 = v27 >> 29;
      if (strcmp(*(*(a4 + (v25 >> 29)) + 88), *(*(a4 + (v27 >> 29)) + 88)))
      {
        goto LABEL_35;
      }

      if (v22 <= v24)
      {
        v29 = 8 * v22;
        v30 = v24 - v22 + 1;
        do
        {
          v31 = heap_Alloc(*(a1 + 8), 16);
          if (!v31)
          {
            goto LABEL_35;
          }

          v32 = v31;
          *(v31 + 8) = 3;
          v33 = *(*(a4 + v38) + 88);
          if (!*v33)
          {
            v33 = "-";
          }

          v34 = stringdup(a1, v33);
          *v32 = v34;
          if (!v34)
          {
            goto LABEL_35;
          }

          *(**v13 + v29) = v32;
          v29 += 8;
        }

        while (--v30);
      }

      v19 = v36 + 1;
      v18 = *(a5 + 40);
      v20 = v37;
      if (v36 + 1 >= v18[1])
      {
        return v13;
      }
    }
  }

  return v13;
}

uint64_t fExtGetPhraseFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v12 = heap_Calloc(*(a1 + 8), 1, 4048);
  v13 = v12;
  if (!v12)
  {
    NNFX_logMsg(a1, 0);
    return v13;
  }

  *(v12 + 4016) = 1;
  *(v12 + 4024) = a7;
  *(v12 + 4032) = *(a5 + 24);
  v14 = heap_Alloc(*(a1 + 8), 8);
  *(v13 + 8) = v14;
  if (!v14)
  {
    goto LABEL_29;
  }

  **(v13 + 8) = stringdup(a1, "PhraseBoundaryStrength");
  if (!**(v13 + 8))
  {
    goto LABEL_29;
  }

  v15 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4016));
  *v13 = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

  if (*(v13 + 4016))
  {
    v16 = 0;
    do
    {
      v17 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4024));
      *(*v13 + 8 * v16) = v17;
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    while (++v16 < *(v13 + 4016));
  }

  v18 = *(a5 + 24);
  if (*v18 != a7)
  {
LABEL_29:
    NNFX_logMsg(a1, 0);
    return 0;
  }

  if (v18[1])
  {
    v19 = 0;
    v20 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v18, v19);
      if (ElementInGroup == -1)
      {
        goto LABEL_29;
      }

      v22 = ElementInGroup;
      v23 = lastElementInGroup(a1, *(a5 + 24), v19);
      if (v23 == -1 || v22 != v20 + 1 || v23 >= a7 || !a6)
      {
        goto LABEL_29;
      }

      v24 = 0;
      v25 = a4;
      v26 = a6;
      while (*(*v25 + 140) + *(*v25 + 144) - 1 != v23)
      {
        v24 += 0x100000000;
        v25 += 8;
        if (!--v26)
        {
          goto LABEL_29;
        }
      }

      v33 = v23;
      v34 = v19;
      if (v22 <= v23)
      {
        v27 = v24 >> 29;
        v28 = 8 * v22;
        v29 = v23 - v22 + 1;
        do
        {
          v30 = heap_Alloc(*(a1 + 8), 16);
          if (!v30)
          {
            goto LABEL_29;
          }

          *(v30 + 8) = 2;
          v31 = *(*(a4 + v27) + 136);
          if (v31 == 78)
          {
            LOBYTE(v31) = 45;
          }

          *v30 = v31;
          *(**v13 + v28) = v30;
          v28 += 8;
        }

        while (--v29);
      }

      v20 = v33;
      v19 = v34 + 1;
      v18 = *(a5 + 24);
      if (v34 + 1 >= v18[1])
      {
        return v13;
      }
    }
  }

  return v13;
}

uint64_t fExtGetPunctFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  NNFX_logMsg(a1, 3);
  v12 = heap_Calloc(*(a1 + 8), 1, 4048);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4016) = 1;
    *(v12 + 4024) = a7;
    *(v12 + 4032) = *(a5 + 32);
    v14 = heap_Alloc(*(a1 + 8), 8);
    *(v13 + 8) = v14;
    if (!v14)
    {
      goto LABEL_60;
    }

    **(v13 + 8) = stringdup(a1, "PunctMark");
    if (!**(v13 + 8))
    {
      goto LABEL_60;
    }

    v15 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4016));
    *v13 = v15;
    if (!v15)
    {
      goto LABEL_60;
    }

    if (*(v13 + 4016))
    {
      v16 = 0;
      do
      {
        v17 = heap_Alloc(*(a1 + 8), 8 * *(v13 + 4024));
        *(*v13 + 8 * v16) = v17;
        if (!v17)
        {
          goto LABEL_60;
        }
      }

      while (++v16 < *(v13 + 4016));
    }

    v18 = *(a5 + 32);
    if (*v18 != a7)
    {
LABEL_60:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    if (v18[1])
    {
      v19 = 0;
      v48 = a6;
      __s = 0;
      v20 = -1;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, v18, v19);
        if (ElementInGroup == -1)
        {
          goto LABEL_60;
        }

        v22 = ElementInGroup;
        v23 = lastElementInGroup(a1, *(a5 + 32), v19);
        if (v23 == -1 || v22 != v20 + 1 || v23 >= a7 || !a6)
        {
          goto LABEL_60;
        }

        v24 = 0;
        v25 = 0;
        v47 = v23;
        while (*(*(a4 + 8 * v25) + 140) != v22)
        {
          ++v25;
          v24 += 0x100000000;
          if (v48 == v25)
          {
            goto LABEL_60;
          }
        }

        v46 = v19;
        v45 = a6;
        v26 = 0;
        v27 = 0;
        while (*(*(a4 + 8 * v27) + 140) + *(*(a4 + 8 * v27) + 144) - 1 != v23)
        {
          ++v27;
          ++v26;
          if (v48 == v27)
          {
            goto LABEL_60;
          }
        }

        if (__s)
        {
          v44 = v23;
          heap_Free(*(a1 + 8), __s);
          v23 = v44;
        }

        if (v27 < v25)
        {
          __s = 0;
          a6 = v45;
          v28 = v46;
          goto LABEL_45;
        }

        v29 = v26 + 1;
        v30 = a4 + 8 * v26;
        v28 = v46;
        while (*(*v30 + 192))
        {
          --v29;
          v30 -= 8;
          if (v29 <= v24 >> 32)
          {
            __s = 0;
            a6 = v45;
            goto LABEL_45;
          }
        }

        v31 = v23;
        v32 = *(*v30 + 32);
        v33 = strlen(v32);
        if (!v33)
        {
          goto LABEL_42;
        }

        v34 = v32[v33 - 1];
        if (v34 > 0x39)
        {
          a6 = v45;
          if (v34 == 58)
          {
            v35 = "COLON";
          }

          else
          {
            if (v34 != 59)
            {
              if (v34 == 63)
              {
                v35 = "QMARK";
              }

              else
              {
LABEL_42:
                v35 = "PERIOD";
              }

              a6 = v45;
              goto LABEL_44;
            }

            v35 = "SEMICOLON";
          }
        }

        else
        {
          a6 = v45;
          if (v34 == 33)
          {
            v35 = "EXCL";
          }

          else
          {
            if (v34 != 44)
            {
              goto LABEL_42;
            }

            v35 = "COMMA";
          }
        }

LABEL_44:
        v36 = stringdup(a1, v35);
        v23 = v31;
        __s = v36;
        if (!v36)
        {
          goto LABEL_60;
        }

LABEL_45:
        if (v22 <= v23)
        {
          v37 = 8 * v22;
          v38 = v23 - v22 + 1;
          do
          {
            v39 = heap_Alloc(*(a1 + 8), 16);
            if (!v39)
            {
              goto LABEL_60;
            }

            v40 = v39;
            *(v39 + 8) = 3;
            if (__s)
            {
              v41 = stringdup(a1, __s);
              *v40 = v41;
              if (!v41)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v42 = stringdup(a1, "-");
              *v40 = v42;
              if (!v42)
              {
                goto LABEL_60;
              }
            }

            *(**v13 + v37) = v40;
            v37 += 8;
          }

          while (--v38);
        }

        v19 = v28 + 1;
        v18 = *(a5 + 32);
        v20 = v47;
        if (v19 >= v18[1])
        {
          if (__s)
          {
            heap_Free(*(a1 + 8), __s);
          }

          return v13;
        }
      }
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v13;
}

uint64_t **fExtGetSyll2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 24;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 192);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_34;
    }

    *v11[1] = stringdup(a1, "Syll2StrGrpLCtInt");
    v11[1][1] = stringdup(a1, "Syll2StrGrpRCtInt");
    v11[1][2] = stringdup(a1, "Syll2StrGrpLCtFloat");
    v11[1][3] = stringdup(a1, "Syll2StrGrpRCtFloat");
    v11[1][4] = stringdup(a1, "Syll2WordLCtInt");
    v11[1][5] = stringdup(a1, "Syll2WordRCtInt");
    v11[1][6] = stringdup(a1, "Syll2WordLCtFloat");
    v11[1][7] = stringdup(a1, "Syll2WordRCtFloat");
    v11[1][8] = stringdup(a1, "Syll2StxGrpLCtInt");
    v11[1][9] = stringdup(a1, "Syll2StxGrpRCtInt");
    v11[1][10] = stringdup(a1, "Syll2StxGrpLCtFloat");
    v11[1][11] = stringdup(a1, "Syll2StxGrpRCtFloat");
    v11[1][12] = stringdup(a1, "Syll2PhraseLCtInt");
    v11[1][13] = stringdup(a1, "Syll2PhraseRCtInt");
    v11[1][14] = stringdup(a1, "Syll2PhraseLCtFloat");
    v11[1][15] = stringdup(a1, "Syll2PhraseRCtFloat");
    v11[1][16] = stringdup(a1, "Syll2PunctLCtInt");
    v11[1][17] = stringdup(a1, "Syll2PunctRCtInt");
    v11[1][18] = stringdup(a1, "Syll2PunctLCtFloat");
    v11[1][19] = stringdup(a1, "Syll2PunctRCtFloat");
    v11[1][20] = stringdup(a1, "Syll2SentLCtInt");
    v11[1][21] = stringdup(a1, "Syll2SentRCtInt");
    v11[1][22] = stringdup(a1, "Syll2SentLCtFloat");
    v11[1][23] = stringdup(a1, "Syll2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_34;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, a5[1], a5[6]), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, a5[1], a5[6]), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0) || (v21 = getLeftCounts(a1, a5[1], a5[2]), ((*v11)[4] = v21) == 0) || (v22 = getRightCounts(a1, a5[1], a5[2]), ((*v11)[5] = v22) == 0) || (v23 = normalizeCounts(a1, (*v11)[4], (*v11)[5], v7), ((*v11)[6] = v23) == 0) || (v24 = normalizeCounts(a1, (*v11)[5], (*v11)[4], v7), ((*v11)[7] = v24) == 0) || (v25 = getLeftCounts(a1, a5[1], a5[5]), ((*v11)[8] = v25) == 0) || (v26 = getRightCounts(a1, a5[1], a5[5]), ((*v11)[9] = v26) == 0) || (v27 = normalizeCounts(a1, (*v11)[8], (*v11)[9], v7), ((*v11)[10] = v27) == 0) || (v28 = normalizeCounts(a1, (*v11)[9], (*v11)[8], v7), ((*v11)[11] = v28) == 0) || (v29 = getLeftCounts(a1, a5[1], a5[3]), ((*v11)[12] = v29) == 0) || (v30 = getRightCounts(a1, a5[1], a5[3]), ((*v11)[13] = v30) == 0) || (v31 = normalizeCounts(a1, (*v11)[12], (*v11)[13], v7), ((*v11)[14] = v31) == 0) || (v32 = normalizeCounts(a1, (*v11)[13], (*v11)[12], v7), ((*v11)[15] = v32) == 0) || (v33 = getLeftCounts(a1, a5[1], a5[4]), ((*v11)[16] = v33) == 0) || (v34 = getRightCounts(a1, a5[1], a5[4]), ((*v11)[17] = v34) == 0) || (v35 = normalizeCounts(a1, (*v11)[16], (*v11)[17], v7), ((*v11)[18] = v35) == 0) || (v36 = normalizeCounts(a1, (*v11)[17], (*v11)[16], v7), ((*v11)[19] = v36) == 0) || (v37 = getLeftCounts(a1, a5[1], a5[7]), ((*v11)[20] = v37) == 0) || (v38 = getRightCounts(a1, a5[1], a5[7]), ((*v11)[21] = v38) == 0) || (v39 = normalizeCounts(a1, (*v11)[20], (*v11)[21], v7), ((*v11)[22] = v39) == 0) || (v40 = normalizeCounts(a1, (*v11)[21], (*v11)[20], v7), ((*v11)[23] = v40) == 0))
    {
LABEL_34:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetStrGrp2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 8;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 64);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_18;
    }

    *v11[1] = stringdup(a1, "StrGrp2PhraseLCtInt");
    v11[1][1] = stringdup(a1, "StrGrp2PhraseRCtInt");
    v11[1][2] = stringdup(a1, "StrGrp2PhraseLCtFloat");
    v11[1][3] = stringdup(a1, "StrGrp2PhraseRCtFloat");
    v11[1][4] = stringdup(a1, "StrGrp2SentLCtInt");
    v11[1][5] = stringdup(a1, "StrGrp2SentRCtInt");
    v11[1][6] = stringdup(a1, "StrGrp2SentLCtFloat");
    v11[1][7] = stringdup(a1, "StrGrp2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_18;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, a5[6], a5[3]), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, a5[6], a5[3]), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0) || (v21 = getLeftCounts(a1, a5[6], a5[7]), ((*v11)[4] = v21) == 0) || (v22 = getRightCounts(a1, a5[6], a5[7]), ((*v11)[5] = v22) == 0) || (v23 = normalizeCounts(a1, (*v11)[4], (*v11)[5], v7), ((*v11)[6] = v23) == 0) || (v24 = normalizeCounts(a1, (*v11)[5], (*v11)[4], v7), ((*v11)[7] = v24) == 0))
    {
LABEL_18:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetWord2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 16;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 128);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_26;
    }

    *v11[1] = stringdup(a1, "Word2StxGrpLCtInt");
    v11[1][1] = stringdup(a1, "Word2StxGrpRCtInt");
    v11[1][2] = stringdup(a1, "Word2StxGrpLCtFloat");
    v11[1][3] = stringdup(a1, "Word2StxGrpRCtFloat");
    v11[1][4] = stringdup(a1, "Word2PhraseLCtInt");
    v11[1][5] = stringdup(a1, "Word2PhraseRCtInt");
    v11[1][6] = stringdup(a1, "Word2PhraseLCtFloat");
    v11[1][7] = stringdup(a1, "Word2PhraseRCtFloat");
    v11[1][8] = stringdup(a1, "Word2PunctLCtInt");
    v11[1][9] = stringdup(a1, "Word2PunctRCtInt");
    v11[1][10] = stringdup(a1, "Word2PunctLCtFloat");
    v11[1][11] = stringdup(a1, "Word2PunctRCtFloat");
    v11[1][12] = stringdup(a1, "Word2SentLCtInt");
    v11[1][13] = stringdup(a1, "Word2SentRCtInt");
    v11[1][14] = stringdup(a1, "Word2SentLCtFloat");
    v11[1][15] = stringdup(a1, "Word2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_26;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, a5[2], a5[5]), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, a5[2], a5[5]), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0) || (v21 = getLeftCounts(a1, a5[2], a5[3]), ((*v11)[4] = v21) == 0) || (v22 = getRightCounts(a1, a5[2], a5[3]), ((*v11)[5] = v22) == 0) || (v23 = normalizeCounts(a1, (*v11)[4], (*v11)[5], v7), ((*v11)[6] = v23) == 0) || (v24 = normalizeCounts(a1, (*v11)[5], (*v11)[4], v7), ((*v11)[7] = v24) == 0) || (v25 = getLeftCounts(a1, a5[2], a5[4]), ((*v11)[8] = v25) == 0) || (v26 = getRightCounts(a1, a5[2], a5[4]), ((*v11)[9] = v26) == 0) || (v27 = normalizeCounts(a1, (*v11)[8], (*v11)[9], v7), ((*v11)[10] = v27) == 0) || (v28 = normalizeCounts(a1, (*v11)[9], (*v11)[8], v7), ((*v11)[11] = v28) == 0) || (v29 = getLeftCounts(a1, a5[2], a5[7]), ((*v11)[12] = v29) == 0) || (v30 = getRightCounts(a1, a5[2], a5[7]), ((*v11)[13] = v30) == 0) || (v31 = normalizeCounts(a1, (*v11)[12], (*v11)[13], v7), ((*v11)[14] = v31) == 0) || (v32 = normalizeCounts(a1, (*v11)[13], (*v11)[12], v7), ((*v11)[15] = v32) == 0))
    {
LABEL_26:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetParse2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 12;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 96);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_22;
    }

    *v11[1] = stringdup(a1, "StxGrp2PhraseLCtInt");
    v11[1][1] = stringdup(a1, "StxGrp2PhraseRCtInt");
    v11[1][2] = stringdup(a1, "StxGrp2PhraseLCtFloat");
    v11[1][3] = stringdup(a1, "StxGrp2PhraseRCtFloat");
    v11[1][4] = stringdup(a1, "StxGrp2PunctLCtInt");
    v11[1][5] = stringdup(a1, "StxGrp2PunctRCtInt");
    v11[1][6] = stringdup(a1, "StxGrp2PunctLCtFloat");
    v11[1][7] = stringdup(a1, "StxGrp2PunctRCtFloat");
    v11[1][8] = stringdup(a1, "StxGrp2SentLCtInt");
    v11[1][9] = stringdup(a1, "StxGrp2SentRCtInt");
    v11[1][10] = stringdup(a1, "StxGrp2SentLCtFloat");
    v11[1][11] = stringdup(a1, "StxGrp2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_22;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, a5[5], a5[3]), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, a5[5], a5[3]), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0) || (v21 = getLeftCounts(a1, a5[5], a5[4]), ((*v11)[4] = v21) == 0) || (v22 = getRightCounts(a1, a5[5], a5[4]), ((*v11)[5] = v22) == 0) || (v23 = normalizeCounts(a1, (*v11)[4], (*v11)[5], v7), ((*v11)[6] = v23) == 0) || (v24 = normalizeCounts(a1, (*v11)[5], (*v11)[4], v7), ((*v11)[7] = v24) == 0) || (v25 = getLeftCounts(a1, a5[5], a5[7]), ((*v11)[8] = v25) == 0) || (v26 = getRightCounts(a1, a5[5], a5[7]), ((*v11)[9] = v26) == 0) || (v27 = normalizeCounts(a1, (*v11)[8], (*v11)[9], v7), ((*v11)[10] = v27) == 0) || (v28 = normalizeCounts(a1, (*v11)[9], (*v11)[8], v7), ((*v11)[11] = v28) == 0))
    {
LABEL_22:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetPhrase2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 4;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 32);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    *v11[1] = stringdup(a1, "Phrase2SentLCtInt");
    v11[1][1] = stringdup(a1, "Phrase2SentRCtInt");
    v11[1][2] = stringdup(a1, "Phrase2SentLCtFloat");
    v11[1][3] = stringdup(a1, "Phrase2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_14;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, *(a5 + 24), *(a5 + 56)), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, *(a5 + 24), *(a5 + 56)), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0))
    {
LABEL_14:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetPunct2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v10 = heap_Calloc(*(a1 + 8), 1, 4048);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4016) = 4;
    *(v10 + 4024) = v7;
    v12 = heap_Alloc(*(a1 + 8), 32);
    v11[1] = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    *v11[1] = stringdup(a1, "Punct2SentLCtInt");
    v11[1][1] = stringdup(a1, "Punct2SentRCtInt");
    v11[1][2] = stringdup(a1, "Punct2SentLCtFloat");
    v11[1][3] = stringdup(a1, "Punct2SentRCtFloat");
    v13 = *(v11 + 1004);
    if (v13 >= 1)
    {
      v14 = v11[1];
      v15 = *(v11 + 1004);
      while (*v14)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_14;
    }

LABEL_7:
    v16 = heap_Alloc(*(a1 + 8), 8 * v13);
    *v11 = v16;
    if (!v16 || (LeftCounts = getLeftCounts(a1, *(a5 + 32), *(a5 + 56)), (**v11 = LeftCounts) == 0) || (RightCounts = getRightCounts(a1, *(a5 + 32), *(a5 + 56)), ((*v11)[1] = RightCounts) == 0) || (v19 = normalizeCounts(a1, **v11, (*v11)[1], v7), ((*v11)[2] = v19) == 0) || (v20 = normalizeCounts(a1, (*v11)[1], **v11, v7), ((*v11)[3] = v20) == 0))
    {
LABEL_14:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v11;
}

uint64_t **fExtGetVPhone2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7)
{
  result = fExtGetPhone2BdryFeats__(a1, a4, a5, a6, a7, PhoneTierIsVoiced);
  if (result && *(result + 1004) >= 1)
  {
    v8 = result[1];
    do
    {
      v9 = *v8++;
      *v9 = 86;
    }

    while (v8 < &result[1][*(result + 1004)]);
  }

  return result;
}

uint64_t mergePhoneFeaturesAtStateLevel(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a4 > 9)
  {
    goto LABEL_37;
  }

  v8 = *(*a2 + 4024);
  if (a3 >= 2)
  {
    v9 = 1;
    while (*(a2[v9] + 4024) == v8)
    {
      if (a3 == ++v9)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_37;
  }

LABEL_6:
  if (a3)
  {
    v10 = 0;
    v11 = a3;
    v12 = a2;
    do
    {
      v13 = *v12++;
      v10 += *(v13 + 4016);
      --v11;
    }

    while (v11);
    v14 = v10 + 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = heap_Calloc(*(a1 + 8), 1, 4048);
  v16 = v15;
  if (v15)
  {
    *(v15 + 4016) = v14;
    *(v15 + 4024) = v8 * a4;
    if (v14)
    {
      v17 = heap_Calloc(*(a1 + 8), v14, 8);
      *(v16 + 8) = v17;
      if (!v17)
      {
        goto LABEL_37;
      }

      v18 = heap_Calloc(*(a1 + 8), *(v16 + 4016), 4);
      *(v16 + 4040) = v18;
      if (!v18)
      {
        goto LABEL_37;
      }
    }

    **(v16 + 8) = stringdup(a1, "StateID");
    if (!**(v16 + 8))
    {
      goto LABEL_37;
    }

    if (a3)
    {
      v19 = 0;
      v20 = 1;
      while (1)
      {
        v21 = a2[v19];
        v22 = *(v21 + 4016);
        if (!*(v21 + 4040))
        {
          break;
        }

        if (v22)
        {
          goto LABEL_20;
        }

LABEL_32:
        if (++v19 == a3)
        {
          goto LABEL_33;
        }
      }

      if (!v22)
      {
        goto LABEL_32;
      }

      v26 = heap_Calloc(*(a1 + 8), v22, 4);
      *(a2[v19] + 4040) = v26;
      if (!v26)
      {
        goto LABEL_37;
      }

      v21 = a2[v19];
      if (!*(v21 + 4016))
      {
        goto LABEL_32;
      }

      v27 = 0;
      v28 = *(v21 + 4040);
      do
      {
        *(v28 + 4 * v27++) = 1;
        v29 = *(v21 + 4016);
      }

      while (v27 < v29);
      if (!v29)
      {
        goto LABEL_32;
      }

LABEL_20:
      v23 = 0;
      do
      {
        *(*(v16 + 8) + 8 * (v20 + v23)) = *(*(v21 + 8) + 8 * v23);
        v21 = a2[v19];
        v24 = *(v21 + 4040);
        if (v24)
        {
          v25 = *(v24 + 4 * v23);
        }

        else
        {
          v25 = 1;
        }

        *(*(v16 + 4040) + 4 * (v20 + v23)) = v25;
        *(v24 + 4 * v23++) = 0;
      }

      while (v23 < *(v21 + 4016));
      v20 += v23;
      goto LABEL_32;
    }

LABEL_33:
    if (allocpppFeats(a1, v16, *(v16 + 4016), *(v16 + 4024)))
    {
LABEL_37:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    if (v8)
    {
      v31 = 0;
      v32 = 0;
      while (1)
      {
        v47 = v31;
        if (a4)
        {
          break;
        }

        v38 = v32;
LABEL_48:
        v31 = v47 + 1;
        v32 = v38;
        if (v47 + 1 == v8)
        {
          goto LABEL_49;
        }
      }

      v33 = a4;
      v34 = "S01";
      while (1)
      {
        v35 = heap_Alloc(*(a1 + 8), 16);
        if (!v35)
        {
          goto LABEL_37;
        }

        v36 = v35;
        *(v35 + 8) = 3;
        v37 = heap_Alloc(*(a1 + 8), 5);
        *v36 = v37;
        if (!v37)
        {
          goto LABEL_37;
        }

        strcpy(v37, v34);
        v38 = (v32 + 1);
        *(**v16 + 8 * v32) = v36;
        v34 += 5;
        LODWORD(v32) = v32 + 1;
        if (!--v33)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_49:
    if (a3)
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = a2[v39];
        if (*(v41 + 4016))
        {
          v42 = 0;
          do
          {
            if (v8)
            {
              v43 = 0;
              v44 = 0;
              do
              {
                if (a4)
                {
                  v45 = v44 + a4;
                  v46 = a4;
                  do
                  {
                    *(*(*v16 + 8 * v40) + 8 * v44++) = *(*(*a2[v39] + 8 * v42) + 8 * v43);
                    --v46;
                  }

                  while (v46);
                  v44 = v45;
                }

                ++v43;
              }

              while (v43 != v8);
              v41 = a2[v39];
            }

            ++v40;
            ++v42;
          }

          while (v42 < *(v41 + 4016));
        }

        ++v39;
      }

      while (v39 != a3);
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v16;
}

void *freepPhoneTiers(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (v4)
  {
    freepTier(a1, v4);
    *a2 = 0;
  }

  v5 = a2[1];
  if (v5)
  {
    freepTier(a1, v5);
    a2[1] = 0;
  }

  v6 = a2[2];
  if (v6)
  {
    freepTier(a1, v6);
    a2[2] = 0;
  }

  v7 = a2[3];
  if (v7)
  {
    freepTier(a1, v7);
    a2[3] = 0;
  }

  v8 = a2[4];
  if (v8)
  {
    freepTier(a1, v8);
    a2[4] = 0;
  }

  v9 = a2[5];
  if (v9)
  {
    freepTier(a1, v9);
    a2[5] = 0;
  }

  v10 = a2[6];
  if (v10)
  {
    freepTier(a1, v10);
    a2[6] = 0;
  }

  v11 = a2[7];
  if (v11)
  {
    freepTier(a1, v11);
    a2[7] = 0;
  }

  v12 = a2[8];
  if (v12)
  {
    freepTier(a1, v12);
    a2[8] = 0;
  }

  v13 = *(a1 + 8);

  return heap_Free(v13, a2);
}

BOOL check_phn_class(uint64_t a1, int a2, int __c)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 16 * a2 + 8);
  return v3 && strchr(*v3, __c) != 0;
}

uint64_t check_lex_feat(uint64_t a1, char *__s1, int a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 16 * a3 + 8);
  if (v3)
  {
    for (i = 0; i != 4000; i += 8)
    {
      v6 = *(v3 + i);
      if (!v6)
      {
        break;
      }

      if (!strcmp(__s1, v6))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t **fExtGetPhone2BdryFeats__(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5, BOOL (*a6)(int a1))
{
  v7 = a5;
  v10 = *a3;
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  NNFX_logMsg(a1, 3);
  v11 = heap_Calloc(*(a1 + 8), 1, 4048);
  v12 = v11;
  if (v11)
  {
    *(v11 + 4016) = 28;
    *(v11 + 4024) = v7;
    v13 = heap_Alloc(*(a1 + 8), 224);
    v12[1] = v13;
    if (!v13)
    {
      goto LABEL_38;
    }

    *v12[1] = stringdup(a1, "Phone2SyllLCtInt");
    v12[1][1] = stringdup(a1, "Phone2SyllRCtInt");
    v12[1][2] = stringdup(a1, "Phone2SyllLCtFloat");
    v12[1][3] = stringdup(a1, "Phone2SyllRCtFloat");
    v12[1][4] = stringdup(a1, "Phone2StrGrpLCtInt");
    v12[1][5] = stringdup(a1, "Phone2StrGrpRCtInt");
    v12[1][6] = stringdup(a1, "Phone2StrGrpLCtFloat");
    v12[1][7] = stringdup(a1, "Phone2StrGrpRCtFloat");
    v12[1][8] = stringdup(a1, "Phone2WordLCtInt");
    v12[1][9] = stringdup(a1, "Phone2WordRCtInt");
    v12[1][10] = stringdup(a1, "Phone2WordLCtFloat");
    v12[1][11] = stringdup(a1, "Phone2WordRCtFloat");
    v12[1][12] = stringdup(a1, "Phone2StxGrpLCtInt");
    v12[1][13] = stringdup(a1, "Phone2StxGrpRCtInt");
    v12[1][14] = stringdup(a1, "Phone2StxGrpLCtFloat");
    v12[1][15] = stringdup(a1, "Phone2StxGrpRCtFloat");
    v12[1][16] = stringdup(a1, "Phone2PhraseLCtInt");
    v12[1][17] = stringdup(a1, "Phone2PhraseRCtInt");
    v12[1][18] = stringdup(a1, "Phone2PhraseLCtFloat");
    v12[1][19] = stringdup(a1, "Phone2PhraseRCtFloat");
    v12[1][20] = stringdup(a1, "Phone2PunctLCtInt");
    v12[1][21] = stringdup(a1, "Phone2PunctRCtInt");
    v12[1][22] = stringdup(a1, "Phone2PunctLCtFloat");
    v12[1][23] = stringdup(a1, "Phone2PunctRCtFloat");
    v12[1][24] = stringdup(a1, "Phone2SentLCtInt");
    v12[1][25] = stringdup(a1, "Phone2SentRCtInt");
    v12[1][26] = stringdup(a1, "Phone2SentLCtFloat");
    v12[1][27] = stringdup(a1, "Phone2SentRCtFloat");
    v14 = *(v12 + 1004);
    if (v14 >= 1)
    {
      v15 = v12[1];
      v16 = *(v12 + 1004);
      while (*v15)
      {
        ++v15;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_38;
    }

LABEL_7:
    v17 = heap_Alloc(*(a1 + 8), 8 * v14);
    *v12 = v17;
    if (!v17 || (LeftCounts = getLeftCounts_(a1, v10, a3[1], a6), (**v12 = LeftCounts) == 0) || (RightCounts = getRightCounts_(a1, v10, a3[1], a6), ((*v12)[1] = RightCounts) == 0) || (v20 = normalizeCounts(a1, **v12, (*v12)[1], v7), ((*v12)[2] = v20) == 0) || (v21 = normalizeCounts(a1, (*v12)[1], **v12, v7), ((*v12)[3] = v21) == 0) || (v22 = getLeftCounts_(a1, v10, a3[6], a6), ((*v12)[4] = v22) == 0) || (v23 = getRightCounts_(a1, v10, a3[6], a6), ((*v12)[5] = v23) == 0) || (v24 = normalizeCounts(a1, (*v12)[4], (*v12)[5], v7), ((*v12)[6] = v24) == 0) || (v25 = normalizeCounts(a1, (*v12)[5], (*v12)[4], v7), ((*v12)[7] = v25) == 0) || (v26 = getLeftCounts_(a1, v10, a3[2], a6), ((*v12)[8] = v26) == 0) || (v27 = getRightCounts_(a1, v10, a3[2], a6), ((*v12)[9] = v27) == 0) || (v28 = normalizeCounts(a1, (*v12)[8], (*v12)[9], v7), ((*v12)[10] = v28) == 0) || (v29 = normalizeCounts(a1, (*v12)[9], (*v12)[8], v7), ((*v12)[11] = v29) == 0) || (v30 = getLeftCounts_(a1, v10, a3[5], a6), ((*v12)[12] = v30) == 0) || (v31 = getRightCounts_(a1, v10, a3[5], a6), ((*v12)[13] = v31) == 0) || (v32 = normalizeCounts(a1, (*v12)[12], (*v12)[13], v7), ((*v12)[14] = v32) == 0) || (v33 = normalizeCounts(a1, (*v12)[13], (*v12)[12], v7), ((*v12)[15] = v33) == 0) || (v34 = getLeftCounts_(a1, v10, a3[3], a6), ((*v12)[16] = v34) == 0) || (v35 = getRightCounts_(a1, v10, a3[3], a6), ((*v12)[17] = v35) == 0) || (v36 = normalizeCounts(a1, (*v12)[16], (*v12)[17], v7), ((*v12)[18] = v36) == 0) || (v37 = normalizeCounts(a1, (*v12)[17], (*v12)[16], v7), ((*v12)[19] = v37) == 0) || (v38 = getLeftCounts_(a1, v10, a3[4], a6), ((*v12)[20] = v38) == 0) || (v39 = getRightCounts_(a1, v10, a3[4], a6), ((*v12)[21] = v39) == 0) || (v40 = normalizeCounts(a1, (*v12)[20], (*v12)[21], v7), ((*v12)[22] = v40) == 0) || (v41 = normalizeCounts(a1, (*v12)[21], (*v12)[20], v7), ((*v12)[23] = v41) == 0) || (v42 = getLeftCounts_(a1, v10, a3[7], a6), ((*v12)[24] = v42) == 0) || (v43 = getRightCounts_(a1, v10, a3[7], a6), ((*v12)[25] = v43) == 0) || (v44 = normalizeCounts(a1, (*v12)[24], (*v12)[25], v7), ((*v12)[26] = v44) == 0) || (v45 = normalizeCounts(a1, (*v12)[25], (*v12)[24], v7), ((*v12)[27] = v45) == 0))
    {
LABEL_38:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v12;
}

uint64_t BuildSilencePhT(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v8 = heap_Alloc(*(a1 + 8), 24);
  if (!v8)
  {
    NNFX_logMsg(a1, 0);
    return v8;
  }

  if (TierInit(a1, v8, v4, "Phone-level SILENCE tier"))
  {
    goto LABEL_3;
  }

  v12 = heap_Alloc(*(a1 + 8), 2 * a3);
  v10 = v12;
  if (!v12)
  {
    v9 = a1;
    goto LABEL_4;
  }

  v13 = a3 - 1;
  if (a3 == 1)
  {
    v18 = 1;
  }

  else
  {
    v14 = (a2 + 8);
    v15 = a3 - 1;
    v16 = v12;
    do
    {
      v17 = *v14++;
      *v16++ = *(v17 + 192) == 1;
      --v15;
    }

    while (v15);
    *(v12 + 2 * v13) = 1;
    if (a3 < 2 || !*(*(a2 + 8 * v13) + 192))
    {
      if (!a3)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v18 = 0;
    v13 = a3 - 2;
  }

  *(v12 + 2 * v13) = v18;
LABEL_18:
  v19 = 0;
  v20 = 0;
  v21 = a3;
  v22 = *(v8 + 8);
  do
  {
    v23 = *(*(a2 + 8 * v19) + 144) - 1;
    if (*(*(a2 + 8 * v19) + 144) != 1)
    {
      v24 = v23 + v20;
      do
      {
        *(v22 + 2 * v20++) = 0;
        --v23;
      }

      while (v23);
      v20 = v24;
    }

    a3 = v20 + 1;
    *(v22 + 2 * v20++) = *(v12 + 2 * v19++);
  }

  while (v19 != v21);
LABEL_24:
  heap_Free(*(a1 + 8), v12);
  if (a3 != v4)
  {
LABEL_3:
    v9 = a1;
    v10 = 0;
LABEL_4:
    NNFX_logMsg(v9, v10);
    return 0;
  }

  v25 = 0;
  if (v4)
  {
    v26 = *(v8 + 8);
    v27 = v4;
    do
    {
      if (*v26++)
      {
        ++v25;
      }

      --v27;
    }

    while (v27);
  }

  *(v8 + 4) = v25;
  return v8;
}

uint64_t allocpppFeats(uint64_t a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = a3;
  v9 = heap_Calloc(*(a1 + 8), a3, 8);
  if (v9)
  {
    v10 = v9;
    *a2 = v9;
    if (!v5)
    {
      return 0;
    }

    v11 = v9 + 8 * v8;
    while (1)
    {
      v12 = heap_Calloc(*(a1 + 8), a4, 8);
      *v10 = v12;
      if (!v12)
      {
        break;
      }

      if (++v10 >= v11)
      {
        return 0;
      }
    }

    freepppFeats(a1, *a2, v5, a4);
  }

  return 1;
}

void *freepppFeats(void *result, uint64_t **a2, unsigned int a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    if (a3)
    {
      v6 = a4;
      v7 = a3;
      v8 = a2;
      do
      {
        freeppFeats(v5, *v8, v6, 1);
        *v8++ = 0;
        --v7;
      }

      while (v7);
    }

    v9 = v5[1];

    return heap_Free(v9, a2);
  }

  return result;
}

void *freeppFeats(void *result, uint64_t *a2, unsigned int a3, int a4)
{
  if (a2)
  {
    v5 = result;
    if (a3)
    {
      v7 = a3;
      v8 = a2;
      do
      {
        if (a4 && *v8)
        {
          freepFeat(v5, *v8);
          *v8 = 0;
        }

        ++v8;
        --v7;
      }

      while (v7);
    }

    v9 = v5[1];

    return heap_Free(v9, a2);
  }

  return result;
}

void *freepFeat(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 8) == 3)
    {
      v4 = *a2;
      if (*a2)
      {
        heap_Free(result[1], v4);
        *a2 = 0;
      }
    }

    v5 = v3[1];

    return heap_Free(v5, a2);
  }

  return result;
}

void *freepTier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *(a2 + 16) = 0;
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    *(a2 + 8) = 0;
  }

  v6 = *(a1 + 8);

  return heap_Free(v6, a2);
}

void *TrieIntInit(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *TrieIntFree(void *result, uint64_t a2)
{
  if (a2 && *(a2 + 8))
  {
    v3 = result;
    for (i = 0; i != 2048; i += 8)
    {
      TrieIntFree(v3, *(*(a2 + 8) + i));
      heap_Free(v3[1], *(*(a2 + 8) + i));
    }

    result = heap_Free(v3[1], *(a2 + 8));
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t TrieSet(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = *(a2 + 8);
  if (result || (result = heap_Calloc(*(a1 + 8), 256, 8), (*(a2 + 8) = result) != 0))
  {
    result = *(result + 8 * a3);
    if (!result)
    {
      *(*(a2 + 8) + 8 * a3) = heap_Alloc(*(a1 + 8), 16);
      v7 = *(*(a2 + 8) + 8 * a3);
      if (v7)
      {
        *v7 = 0;
        v7[1] = 0;
        return *(*(a2 + 8) + 8 * a3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TrieIntAdd_(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, int a4, int a5)
{
  v5 = *a3;
  if (!*a3)
  {
    return 1;
  }

  v7 = a2;
  if (a4)
  {
    v9 = a4 - 1;
    for (i = a3 + 1; ; ++i)
    {
      if (v5)
      {
        a2 = TrieSet(a1, a2, v5);
        if (!a2)
        {
          break;
        }
      }

      if (!v9)
      {
        goto LABEL_8;
      }

      v11 = *i;
      v5 = v11;
      --v9;
    }

    return 1;
  }

  else
  {
LABEL_8:
    result = 0;
    *a2 = -1;
    a2[1] = a5;
    ++*v7;
  }

  return result;
}

uint64_t TrieIntAdd(uint64_t a1, _DWORD *a2, char *__s, int a4)
{
  v8 = strlen(__s);

  return TrieIntAdd_(a1, a2, __s, v8, a4);
}

BOOL TrieIntGet_(uint64_t a1, _BYTE *a2, int a3, _DWORD *a4)
{
  if (a3)
  {
    while (1)
    {
      if (*a2)
      {
        if (!a1)
        {
          return 1;
        }

        v4 = *(a1 + 8);
        if (!v4)
        {
          return 1;
        }

        a1 = *(v4 + 8 * *a2);
        if (!a1)
        {
          return 1;
        }
      }

      ++a2;
      if (!--a3)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *a4 = *(a1 + 4);
    return *a1 != -1;
  }
}

BOOL TrieIntGet(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = strlen(__s);

  return TrieIntGet_(a1, __s, v6, a3);
}

void *TierClear(void *result, void *a2)
{
  v3 = result;
  *a2 = 0;
  v4 = a2[1];
  if (v4)
  {
    result = heap_Free(result[1], v4);
  }

  a2[1] = 0;
  v5 = a2[2];
  if (v5)
  {
    result = heap_Free(v3[1], v5);
  }

  a2[2] = 0;
  return result;
}

uint64_t TierInit(uint64_t a1, unsigned int *a2, unsigned int a3, char *a4)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  TierClear(a1, a2);
  if (a4)
  {
    *(a2 + 2) = stringdup(a1, a4);
  }

  if (a3 < 1)
  {
    return 0;
  }

  *a2 = a3;
  *(a2 + 1) = 0;
  v8 = heap_Calloc(*(a1 + 8), a3, 2);
  *(a2 + 1) = v8;
  if (!v8)
  {
    return 1;
  }

  v9 = v8 + 2 * *a2;
  if (!*(v9 - 2))
  {
    ++a2[1];
  }

  result = 0;
  *(v9 - 2) = 1;
  return result;
}

uint64_t TierAddBoundaries(unsigned int *a1, uint64_t a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v3 = *a1;
    if (v3 == *a2)
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(a2 + 8);
        v6 = 2 * v3;
        do
        {
          if (*(v5 + v4))
          {
            v7 = *(a1 + 1);
            if (!*(v7 + v4))
            {
              ++a1[1];
            }

            *(v7 + v4) = 1;
          }

          v4 += 2;
        }

        while (v6 != v4);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return v2;
}

uint64_t leftMostSupraBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != *a3)
  {
LABEL_10:
    NNFX_logMsg(a1, 0);
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 4) <= a4)
  {
    NNFX_logMsg(a1, 0);
    if (**(a2 + 16))
    {
      v10 = 1;
      do
      {
        NNFX_logMsg(a1, 0);
      }

      while (strlen(*(a2 + 16)) > v10++);
    }

    return 0xFFFFFFFFLL;
  }

  ElementInGroup = lastElementInGroup(a1, a2, a4);
  if (ElementInGroup == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = ElementInGroup;
  while (1)
  {
    result = v8;
    if (v8 < 1)
    {
      return result;
    }

    --v8;
    if (*(*(a3 + 8) + 2 * result - 2))
    {
      if (result == 1)
      {
        return 1;
      }

      if (*(*(a2 + 8) + 2 * v8))
      {
        return result;
      }

      NNFX_logMsg(a1, 0);
      goto LABEL_10;
    }
  }
}

uint64_t lastElementInGroup(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (a2[1] <= a3)
  {
    NNFX_logMsg(a1, 0);
    if (**(a2 + 2))
    {
      v8 = 1;
      do
      {
        NNFX_logMsg(a1, 0);
      }

      while (*(*(a2 + 2) + v8++));
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *a2;
    if (v4)
    {
      result = 0;
      v6 = -1;
      while (1)
      {
        if (*(*(a2 + 1) + 2 * result))
        {
          ++v6;
        }

        if (v6 == a3)
        {
          break;
        }

        if (v4 == ++result)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t rightMostSupraBoundary(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (*a2 != *a3)
  {
    goto LABEL_11;
  }

  if (*(a2 + 4) <= a4)
  {
    NNFX_logMsg(a1, 0);
    NNFX_logMsg(a1, 0);
    if (**(a2 + 16))
    {
      v10 = 1;
      do
      {
        NNFX_logMsg(a1, 0);
      }

      while (strlen(*(a2 + 16)) > v10++);
    }

    return 0xFFFFFFFFLL;
  }

  result = lastElementInGroup(a1, a2, a4);
  if (result != -1)
  {
    if (result < *a3)
    {
      v8 = (*(a3 + 1) + 2 * result);
      while (!*v8++)
      {
        result = (result + 1);
        if (*a3 == result)
        {
          result = *a3;
          break;
        }
      }
    }

    if (!*(*(a2 + 8) + 2 * result))
    {
      NNFX_logMsg(a1, 0);
LABEL_11:
      NNFX_logMsg(a1, 0);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t getLeftCounts_(uint64_t a1, unsigned int *a2, _DWORD *a3, BOOL (*a4)(int a1))
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = TierIsBoundary;
  }

  v6 = *a2;
  if (v6 != *a3)
  {
    return 0;
  }

  v7 = a3;
  v9 = heap_Calloc(*(a1 + 8), v6, 8);
  if (v9)
  {
    LODWORD(v10) = *a2;
    if (*a2)
    {
      v11 = 0;
      do
      {
        v12 = heap_Alloc(*(a1 + 8), 16);
        if (!v12)
        {
          goto LABEL_28;
        }

        v12[2] = 0;
        *v12 = 0;
        *(v9 + 8 * v11++) = v12;
        v10 = *a2;
      }

      while (v11 < v10);
    }

    if (a2[1])
    {
      v13 = 0;
      v14 = -1;
      v28 = v7;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, a2, v13);
        if (ElementInGroup == -1)
        {
          break;
        }

        v16 = ElementInGroup;
        v17 = lastElementInGroup(a1, a2, v13);
        if (v17 == -1)
        {
          break;
        }

        if (v16 != v14 + 1)
        {
          break;
        }

        v18 = v17;
        v19 = leftMostSupraBoundary(a1, a2, v7, v13);
        if (v19 == -1)
        {
          break;
        }

        v20 = 0;
        v21 = v18 - v19;
        if (v18 > v19)
        {
          v22 = 2 * v19;
          do
          {
            v20 += (v5)(*(*(a2 + 1) + v22));
            v22 += 2;
            --v21;
          }

          while (v21);
        }

        if (v16 <= v18)
        {
          v23 = (v9 + 8 * v16);
          v24 = v18 - v16 + 1;
          do
          {
            v25 = *v23++;
            *v25 = v20;
            --v24;
          }

          while (v24);
        }

        v13 = (v13 + 1);
        v14 = v18;
        v7 = v28;
        if (v13 >= a2[1])
        {
          LODWORD(v10) = *a2;
          v26 = v18 + 1;
          goto LABEL_27;
        }
      }

LABEL_28:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    v26 = 1;
LABEL_27:
    if (v26 != v10)
    {
      goto LABEL_28;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v9;
}

uint64_t firstElementInGroup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 4) <= a3)
  {
    NNFX_logMsg(a1, 0);
    if (**(a2 + 16))
    {
      v9 = 1;
      do
      {
        NNFX_logMsg(a1, 0);
      }

      while (*(*(a2 + 16) + v9++));
    }

    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = *a2;
  if (a3 && v6)
  {
    v7 = 0;
    v8 = -1;
    while (1)
    {
      if (*(*(a2 + 8) + 2 * v7))
      {
        ++v8;
      }

      if (v8 == a3 - 1)
      {
        break;
      }

      if (v6 == ++v7)
      {
        result = 0;
        goto LABEL_15;
      }
    }

    result = (v7 + 1);
  }

LABEL_15:
  if (result >= v6)
  {
    NNFX_logMsg(a1, 0);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t getRightCounts_(uint64_t a1, unsigned int *a2, unsigned int *a3, BOOL (*a4)(int a1))
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = TierIsBoundary;
  }

  v6 = *a2;
  if (v6 != *a3)
  {
    return 0;
  }

  v7 = a3;
  v9 = heap_Calloc(*(a1 + 8), v6, 8);
  if (v9)
  {
    LODWORD(v10) = *a2;
    if (*a2)
    {
      v11 = 0;
      do
      {
        v12 = heap_Alloc(*(a1 + 8), 16);
        if (!v12)
        {
          goto LABEL_29;
        }

        v12[2] = 0;
        *v12 = 0;
        *(v9 + 8 * v11++) = v12;
        v10 = *a2;
      }

      while (v11 < v10);
    }

    if (a2[1])
    {
      v13 = 0;
      v14 = -1;
      v28 = v7;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, a2, v13);
        if (ElementInGroup == -1)
        {
          break;
        }

        v16 = ElementInGroup;
        v17 = lastElementInGroup(a1, a2, v13);
        if (v17 == -1)
        {
          break;
        }

        if (v16 != v14 + 1)
        {
          break;
        }

        v18 = v17;
        v19 = rightMostSupraBoundary(a1, a2, v7, v13);
        if (v19 == -1)
        {
          break;
        }

        if (v18 <= v19)
        {
          v20 = 0;
          v21 = 2 * v18;
          v22 = v19 - v18 + 1;
          do
          {
            v20 += (v5)(*(*(a2 + 1) + v21));
            v21 += 2;
            --v22;
          }

          while (v22);
        }

        else
        {
          v20 = 0;
        }

        if (v16 <= v18)
        {
          v23 = (v9 + 8 * v16);
          v24 = v18 - v16 + 1;
          do
          {
            v25 = *v23++;
            *v25 = v20;
            --v24;
          }

          while (v24);
        }

        ++v13;
        v14 = v18;
        v7 = v28;
        if (v13 >= a2[1])
        {
          LODWORD(v10) = *a2;
          v26 = v18 + 1;
          goto LABEL_28;
        }
      }

LABEL_29:
      NNFX_logMsg(a1, 0);
      return 0;
    }

    v26 = 1;
LABEL_28:
    if (v26 != v10)
    {
      goto LABEL_29;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v9;
}

uint64_t normalizeCounts(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 0;
  if (a2 && a3 && a4)
  {
    if (!*(*a2 + 8) && !*(*a3 + 8))
    {
      v9 = a4;
      v4 = heap_Calloc(*(a1 + 8), a4, 8);
      if (!v4)
      {
        NNFX_logMsg(a1, 0);
        return v4;
      }

      v10 = 0;
      while (1)
      {
        v11 = heap_Alloc(*(a1 + 8), 16);
        if (!v11)
        {
          break;
        }

        *(v11 + 8) = 1;
        v12 = **(a2 + 8 * v10);
        v13 = **(a3 + 8 * v10) + v12;
        if (v13 < 1)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v12 / v13;
        }

        *v11 = v14;
        *(v4 + 8 * v10++) = v11;
        if (v9 == v10)
        {
          return v4;
        }
      }
    }

    NNFX_logMsg(a1, 0);
    return 0;
  }

  return v4;
}

uint64_t SymTabInit(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *SymTabFree(void *result, int *a2)
{
  if (a2)
  {
    v3 = *(a2 + 1);
    if (v3)
    {
      v4 = result;
      if (*a2 >= 1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          TrieIntFree(v4, *(a2 + 1) + v5);
          ++v6;
          v5 += 16;
        }

        while (v6 < *a2);
        v3 = *(a2 + 1);
      }

      result = heap_Free(v4[1], v3);
      *(a2 + 1) = 0;
    }
  }

  return result;
}

uint64_t SymTabReadBuf(uint64_t a1, int *a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v31[128] = *MEMORY[0x1E69E9840];
  bzero(__dst, 0x800uLL);
  SymTabFree(a1, a2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v27 = a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 16);
  *(a2 + 1) = v9;
  if (!v9)
  {
    return 1;
  }

  if (a4 < 1)
  {
    v12 = 0;
LABEL_25:
    v25 = *(*a5 + 4016) - v12;
    *(*a5 + 4020) = v25;
    if (*a2 != v25)
    {
      NNFX_logMsg(a1, 0);
    }

    return 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 0;
    v14 = __dst;
    v15 = v31;
    v29 = -1;
    v26 = a2;
    while (1)
    {
      v16 = v15;
      v17 = strcpy(v14, *(a3 + 8 * v10));
      v18 = strrchr(v17, 10);
      if (v18)
      {
        *v18 = 0;
      }

      v19 = strchr(v14, 32);
      if (v19)
      {
        *v19 = 0;
      }

      v20 = strchr(v14, 9);
      if (v20)
      {
        *v20 = 0;
      }

      v21 = strchr(v14, 61);
      v22 = v21;
      if (v21)
      {
        *v21 = 0;
        v22 = v21 + 1;
      }

      if (!*v14)
      {
        return 2;
      }

      if (strcmp(v14, v16))
      {
        v23 = *a5;
        if (v13 < *(*a5 + 4016))
        {
          v13 = v13;
          do
          {
            if (!strcmp(*(*(v23 + 8) + 8 * v13), v14))
            {
              break;
            }

            NNFX_logMsg(a1, 3);
            v23 = *a5;
            *(*a5 + 4 * v13++ + 16) = 0;
            ++v12;
          }

          while (v13 < *(v23 + 4016));
        }

        NNFX_logMsg(a1, 3);
        v11 = 0;
        *(*a5 + 4 * v13 + 16) = 1;
        LODWORD(v13) = v13 + 1;
        ++v29;
        a2 = v26;
        ++*v26;
      }

      if (v22)
      {
        TrieIntAdd(a1, (*(a2 + 1) + 16 * v29), v22, ++v11);
      }

      ++v10;
      v15 = v14;
      v14 = v16;
      if (v10 == v27)
      {
        goto LABEL_25;
      }
    }
  }
}

uint64_t SymTabToIntInplace_(uint64_t a1, uint64_t a2, unsigned __int8 ***a3, int a4, unsigned __int8 a5)
{
  *__s = 0;
  v17 = 0;
  if (a4 >= 1)
  {
    v5 = a3;
    v8 = 0;
    v9 = 0;
    v10 = a5;
    v11 = &a3[a4];
    while (1)
    {
      v12 = *v5;
      if (*v5)
      {
        v13 = *(v12 + 2);
        if (v13 >= 2)
        {
          break;
        }
      }

LABEL_19:
      if (++v5 >= v11)
      {
        return v8;
      }
    }

    if (v13 == 2)
    {
      __s[0] = *v12;
      v15 = TrieIntGet(a2, __s, &v17);
      v12 = *v5;
      if (**v5 == v10)
      {
LABEL_11:
        v9 = 0;
        v17 = 0;
LABEL_15:
        if (*(v12 + 2) == 3 && *v12)
        {
          heap_Free(*(a1 + 8), *v12);
          *v12 = 0;
          v12 = *v5;
        }

        *v12 = v17;
        *(*v5 + 2) = 0;
        goto LABEL_19;
      }

      v9 = v15;
    }

    else if (v13 == 3)
    {
      v9 = TrieIntGet(a2, *v12, &v17);
      v12 = *v5;
      v14 = **v5;
      if (*v14 == v10 && !v14[1])
      {
        goto LABEL_11;
      }
    }

    if (v9)
    {
      v17 = 0;
      v8 = (v8 + 1);
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t SymTabToIntInplaceActive(uint64_t a1, int *a2, uint64_t *a3, int a4, unsigned __int8 a5)
{
  v6 = *a3;
  v7 = *(*a3 + 4020);
  v8 = *a2;
  if (*(*a3 + 4016) < 1)
  {
    v18 = 1;
  }

  else
  {
    v20 = *a2;
    v21 = *(*a3 + 4020);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (a4 + v13 >= *a2)
      {
        break;
      }

      if (*(v6 + 4 * v13 + 16))
      {
        v16 = *(a2 + 1);
        if (*(v16 + 16 * (v15 + a4)) <= 0)
        {
          ++v14;
        }

        else
        {
          v17 = SymTabToIntInplace_(a1, v16 + 16 * v15 + 16 * a4, *(*v6 + 8 * v13), *(v6 + 4024), a5);
          if (v17 >= 1)
          {
            NNFX_logMsg(a1, 1);
          }

          v6 = *a3;
          v14 = v14 - v17 + *(*a3 + 4024);
        }

        ++v15;
      }

      ++v13;
    }

    while (v13 < *(v6 + 4016));
    v18 = v14 < 1;
    v8 = v20;
    v7 = v21;
  }

  return (v7 + a4 > v8) | v18;
}

uint64_t unrollNnFeatures(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v10 = *a2;
  v11 = *(*a2 + 1005);
  v12 = *(*a2 + 1006);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = *(a3 + 8);
    do
    {
      v16 = *v14;
      v14 += 4;
      v15 = v16;
      if (v16 <= 1)
      {
        v15 = 1;
      }

      v13 += v15;
      --v11;
    }

    while (v11);
  }

  v17 = *v10;
  v18 = v10[1004];
  v19 = heap_Calloc(*(a1 + 8), (v13 * v12), 4);
  if (!v19)
  {
    return 1;
  }

  *a4 = v19;
  *a5 = v13;
  if (v18 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *a2 + 2;
    do
    {
      if (*(v23 + v20))
      {
        v24 = (v21 + 1);
        v25 = *(*(a3 + 8) + 16 * v21);
        if (v25)
        {
          if (v12 >= 1)
          {
            v26 = *(v17 + 8 * v20);
            v27 = v12;
            v28 = v19 - 4 + 4 * v22;
            do
            {
              v29 = *v26;
              if (*v26)
              {
                if (v29[2])
                {
                  goto LABEL_36;
                }

                v30 = *v29;
                if ((v30 & 0x80000000) != 0 || v30 > v25)
                {
                  goto LABEL_36;
                }

                if (v30)
                {
                  *(v28 + 4 * v30) = 1065353216;
                }
              }

              v28 += 4 * v13;
              ++v26;
              --v27;
            }

            while (v27);
          }

          v22 += v25;
        }

        else
        {
          if (v12 >= 1)
          {
            v31 = *(v17 + 8 * v20);
            v32 = v12;
            v33 = v22;
            do
            {
              v34 = *v31;
              if (*v31)
              {
                v35 = *(v34 + 8);
                if (v35 == 1)
                {
                  v36 = *v34;
                }

                else
                {
                  if (v35)
                  {
LABEL_36:
                    NNFX_logMsg(a1, 0);
                    return 1;
                  }

                  v36 = *v34;
                }

                *(v19 + 4 * v33) = v36;
              }

              v33 += v13;
              ++v31;
              --v32;
            }

            while (v32);
          }

          ++v22;
        }
      }

      else
      {
        v24 = v21;
      }

      ++v20;
      v21 = v24;
    }

    while (v20 != v18);
  }

  return 0;
}

void *stringdup(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = heap_Alloc(*(a1 + 8), v4 + 1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = strlen(__s) + 1;

  return memmove(v6, __s, v7);
}

void *safe_strcpy(void *result, char *__s)
{
  if (result && __s)
  {
    v3 = result;
    v4 = strlen(__s) + 1;

    return memmove(v3, __s, v4);
  }

  return result;
}

char *stringcat(uint64_t a1, char *__s, const char *a3)
{
  if (!__s)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = strlen(__s);
  v7 = strlen(a3);
  v8 = heap_Alloc(*(a1 + 8), v6 + v7 + 1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  safe_strcpy(v8, __s);

  return strcat(v9, a3);
}

uint64_t Lingdb2NnWordRec(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7, uint64_t a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  v13 = a6;
  v18 = a9;
  v19 = *a6;
  v138 = 0;
  v139 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v131 = 0;
  v132 = 4;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  *a7 = 0;
  *a9 = 0;
  *a10 = 0;
  v20 = (*(a3 + 104))(a4, a5, 1, 0, &v134 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = v20;
    goto LABEL_9;
  }

  v21 = (*(a3 + 168))(a4, a5, HIWORD(v134), 3, 1, a7, &v133);
  if ((v21 & 0x80000000) != 0)
  {
LABEL_9:
    *(v13 + 5) = 0;
    return v21;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v134), 1, &v128) & 0x80000000) == 0 && v128 == 1)
  {
    v21 = (*(a3 + 176))(a4, a5, HIWORD(v134), 1, &v129, &v128 + 2);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  v22 = a11;
  if (HIWORD(v128))
  {
    v124 = v129[3];
  }

  else
  {
    v124 = 0;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v134), 0, &v128) & 0x80000000) != 0 || v128 != 1)
  {
    if (((*(a3 + 184))(a4, a5, HIWORD(v134), 4, &v128) & 0x80000000) != 0 || v128 != 1)
    {
      goto LABEL_21;
    }

    v21 = (*(a3 + 176))(a4, a5, HIWORD(v134), 4, &v139, &v133);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = (*(a3 + 176))(a4, a5, HIWORD(v134), 0, &v139, &v133);
    if ((v21 & 0x80000000) != 0)
    {
      log_OutPublic(a1[4], a2, 0, 0);
      goto LABEL_9;
    }
  }

  if (v133 <= 1u)
  {
    v139 = 0;
    goto LABEL_27;
  }

LABEL_21:
  if (!v139)
  {
LABEL_27:
    v28 = 0;
    if (a8 && HIWORD(v128))
    {
      v29 = 0;
      v30 = v129;
      do
      {
        v31 = *v30;
        v30 += 8;
        v32 = (1 << v31) & 0x270F0100;
        if (v31 <= 0x1D && v32 != 0)
        {
          *a8 = 15;
          *(a8 + 12) = 0;
          *(a8 + 16) = 0;
          *(a8 + 120) = 83;
          *(a8 + 144) = 4;
          *(a8 + 160) = 0;
          **(a8 + 280) = 35;
          *a9 = 1;
          *a10 = 1;
          v28 = 2;
          *a11 = 2;
          goto LABEL_37;
        }

        ++v29;
      }

      while (v29 < HIWORD(v128));
      v28 = 0;
    }

LABEL_37:
    *(v13 + 5) = v28;
    return v21;
  }

  LODWORD(v24) = HIWORD(v128);
  if (HIWORD(v128))
  {
    v25 = 0;
    v26 = v129 + 3;
    while (1)
    {
      v27 = *v26;
      v26 += 8;
      if (v27 != v124)
      {
        break;
      }

      if (HIWORD(v128) == ++v25)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v24) = v25;
  }

LABEL_39:
  v34 = (*(a3 + 152))(a4, a5, 2, HIWORD(v134), &v128);
  LOWORD(v35) = 0;
  if (v34 < 0 || !v128)
  {
    v121 = 0;
  }

  else
  {
    v21 = (*(a3 + 104))(a4, a5, 2, HIWORD(v134), &v134);
    if ((v21 & 0x80000000) != 0)
    {
      v107 = 1;
      goto LABEL_288;
    }

    v36 = v134;
    if (v134)
    {
      v113 = 0;
      v121 = 0;
      v35 = 0;
      v116 = 0;
      v117 = 1;
      v118 = 0;
      v114 = v13;
      v115 = a8;
      while (1)
      {
        v123 = v35;
        v37 = (*(a3 + 168))(a4, a5, v36, 0, 1, &v132, &v133);
        if ((v37 & 0x80000000) != 0)
        {
LABEL_286:
          v21 = v37;
LABEL_287:
          v107 = v117;
LABEL_288:
          *(v13 + 5) = v107;
          return v21;
        }

        v38 = v132;
        v39 = a8 + 144 * v123;
        *v39 = v132;
        if ((v38 - 9) >= 6)
        {
          if (v38 == 15)
          {
            ++*a10;
            if (((*(a3 + 184))(a4, a5, v134, 7, &v128) & 0x80000000) == 0 && v128 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v134, 7, 1, &v130, &v133);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v39 + 12) = v130;
            }

            if (((*(a3 + 184))(a4, a5, v134, 1, &v128) & 0x80000000) == 0 && v128 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v134, 1, 1, &v131, &v133);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v39 + 4) = v131;
            }

            if (((*(a3 + 184))(a4, a5, v134, 2, &v128) & 0x80000000) == 0 && v128 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v134, 2, 1, &v130 + 2, &v133);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v39 + 8) = HIWORD(v130);
            }

            v133 = 0;
            if (((*(a3 + 184))(a4, a5, v134, 4, &v128) & 0x80000000) == 0 && v128 == 1)
            {
              v37 = (*(a3 + 176))(a4, a5, v134, 4, &v136, &v133);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              if (v136)
              {
                strcpy(*(v39 + 32), v136);
              }
            }

            if (v139)
            {
              v127 = 0;
              v76 = v131;
              if (v131 >= HIWORD(v130))
              {
                v77 = 0;
              }

              else
              {
                v77 = 0;
                do
                {
                  v78 = *(v139 + v76);
                  v79 = *(v39 + 128);
                  v127 = v77 + 1;
                  *(v79 + v77) = v78;
                  ++v76;
                  v77 = v127;
                }

                while (v76 < HIWORD(v130) && v127 < 0x1FFuLL);
              }

              *(*(v39 + 128) + v77) = 0;
            }

            if (v130 <= 2u)
            {
              *(v39 + 120) = 0x575353u >> (8 * v130);
            }

            if (v123)
            {
              v80 = v123 - 1;
              while (1)
              {
                v81 = v80;
                v82 = *(a8 + 144 * v80);
                if ((v82 - 9) < 6 || v82 == 4)
                {
                  break;
                }

                if (v82 != 15)
                {
                  --v80;
                  if (v81)
                  {
                    continue;
                  }
                }

                goto LABEL_222;
              }

              *(a8 + 144 * v80 + 120) = *(v39 + 120);
LABEL_222:
              v113 = v123;
            }

            else
            {
              v123 = 0;
              v113 = 0;
            }

            goto LABEL_224;
          }

          if (v38 != 4)
          {
            if (((*(a3 + 184))(a4, a5, v134, 1, &v128) & 0x80000000) == 0 && v128 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v134, 1, 1, &v131, &v133);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v39 + 4) = v131;
            }

            if (((*(a3 + 184))(a4, a5, v134, 2, &v128) & 0x80000000) == 0 && v128 == 1)
            {
              v37 = (*(a3 + 168))(a4, a5, v134, 2, 1, &v130 + 2, &v133);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v39 + 8) = HIWORD(v130);
            }

            v133 = 0;
            if (((*(a3 + 184))(a4, a5, v134, 4, &v128) & 0x80000000) == 0 && v128 == 1)
            {
              v37 = (*(a3 + 176))(a4, a5, v134, 4, &v137, &v133);
              if ((v37 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              if (v137)
              {
                strcpy(*(v39 + 32), v137);
              }
            }

            if (v139)
            {
              v127 = 0;
              v47 = v131;
              if (v131 >= HIWORD(v130))
              {
                v48 = 0;
              }

              else
              {
                v48 = 0;
                do
                {
                  v49 = *(v139 + v47);
                  v50 = *(v39 + 128);
                  v127 = v48 + 1;
                  *(v50 + v48) = v49;
                  ++v47;
                  v48 = v127;
                }

                while (v47 < HIWORD(v130) && v127 < 0x1FFuLL);
              }

              *(*(v39 + 128) + v48) = 0;
            }

LABEL_224:
            v22 = a11;
            goto LABEL_258;
          }
        }

        ++*v18;
        if (v38 == 12)
        {
          v40 = v118;
        }

        else
        {
          v40 = 0;
        }

        v122 = v40;
        v42 = v38 != 14 || v118 == 0;
        if (((*(a3 + 184))(a4, a5, v134, 1, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 168))(a4, a5, v134, 1, 1, &v131, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v39 + 4) = v131;
        }

        if (((*(a3 + 184))(a4, a5, v134, 2, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 168))(a4, a5, v134, 2, 1, &v130 + 2, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v39 + 8) = HIWORD(v130);
        }

        if (((*(a3 + 184))(a4, a5, v134, 13, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v134, 13, &v135, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v39 + 20) = atoi(v135);
        }

        if (((*(a3 + 184))(a4, a5, v134, 7, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 168))(a4, a5, v134, 7, 1, &v131 + 2, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v39 + 12) = HIWORD(v131);
        }

        if (((*(a3 + 184))(a4, a5, v134, 17, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v134, 17, &v135, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v39 + 24) = atoi(v135);
        }

        if (v136)
        {
          strcpy(*(v39 + 32), v136);
        }

        if (((*(a3 + 184))(a4, a5, v134, 5, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v134, 5, &v137, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (v137)
          {
            strcpy(*(v39 + 40), v137);
          }
        }

        if (((*(a3 + 184))(a4, a5, v134, 6, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v134, 6, &v137, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (v137)
          {
            strcpy(*(v39 + 48), v137);
          }
        }

        if (((*(a3 + 184))(a4, a5, v134, 9, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v134, 9, &v137, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (v137)
          {
            strcpy(*(v39 + 56), v137);
          }
        }

        if (((*(a3 + 184))(a4, a5, v134, 14, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v134, 14, &v137, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (v137)
          {
            ParseWnluStr(v137, v39);
          }
        }

        if (v139)
        {
          v127 = 0;
          v43 = v131;
          if (v131 >= HIWORD(v130))
          {
            v44 = 0;
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v139 + v43);
              v46 = *(v39 + 128);
              v127 = v44 + 1;
              *(v46 + v44) = v45;
              ++v43;
              v44 = v127;
            }

            while (v43 < HIWORD(v130) && v127 < 0x1FFuLL);
          }

          *(*(v39 + 128) + v44) = 0;
        }

        v133 = 0;
        v138 = 0;
        if (((*(a3 + 184))(a4, a5, v134, 3, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 176))(a4, a5, v134, 3, &v138, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }

        v51 = v133;
        v119 = v42;
        if (v133 >= 2u)
        {
          v52 = v138;
        }

        else if (v132 == 14)
        {
          v52 = "M";
          v138 = "M";
        }

        else
        {
          v52 = 0;
          v138 = 0;
        }

        v53 = atoi(v135);
        if (!v52 || v53)
        {
          if (!v52)
          {
            goto LABEL_149;
          }
        }

        else if (*v52 == 34 && !v52[1])
        {
          v138 = 0;
LABEL_149:
          a8 = v115;
          v18 = a9;
          goto LABEL_235;
        }

        if (v51 >= 2)
        {
          v54 = 0;
          while (1)
          {
            v55 = v54;
            v56 = v138[v54];
            if (v56 < 0)
            {
              if (!__maskrune(v138[v54], 0x4000uLL))
              {
LABEL_150:
                v57 = v39;
                goto LABEL_151;
              }
            }

            else if ((*(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x4000) == 0)
            {
              goto LABEL_150;
            }

            if (v133 - 1 <= ++v54)
            {
              v57 = v39;
              v55 = v54;
              v54 = v54;
              goto LABEL_151;
            }
          }
        }

        v57 = v39;
        v55 = 0;
        v54 = 0;
LABEL_151:
        v58 = 0;
        while (v133 - 1 > v58)
        {
          v59 = v19;
          v60 = v138;
          v61 = v138[v55 + v58];
          if (v61 < 0)
          {
            if (__maskrune(v138[v55 + v58], 0x4000uLL))
            {
LABEL_159:
              v19 = v59;
              break;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v61 + 60) & 0x4000) != 0)
          {
            goto LABEL_159;
          }

          *(*(v57 + 136) + v58) = v60[(v54 + v58)];
          ++v58;
          v19 = v59;
          if (v58 == 511)
          {
            break;
          }
        }

        *(*(v57 + 136) + v58) = 0;
        v18 = a9;
        v62 = v116;
        if (!v138)
        {
          a8 = v115;
          v22 = a11;
          v13 = v114;
          goto LABEL_236;
        }

        v63 = v57;
        v13 = v114;
        a8 = v115;
        if (*v138)
        {
          v64 = v117;
          v65 = v117 > 1 && v122 == 0;
          v66 = v119;
          if (!v65)
          {
            v66 = 0;
          }

          if (v66 && v132 != 14)
          {
            v68 = HIWORD(v128);
            if (v24 < HIWORD(v128))
            {
              v69 = 0;
              v70 = 0;
              v71 = v24;
              v72 = &v129[8 * v24];
              while (v72[3] - v124 <= v131)
              {
                v74 = *v72;
                v72 += 8;
                v73 = v74;
                if (v74 == 8)
                {
                  v75 = v70 + 1;
                }

                else
                {
                  v75 = v70;
                }

                if (v73 == 26)
                {
                  ++v69;
                }

                else
                {
                  v70 = v75;
                }

                if (HIWORD(v128) == ++v71)
                {
                  goto LABEL_226;
                }
              }

              v68 = v71;
LABEL_226:
              if (v69)
              {
                v120 = v68;
                if (v70)
                {
                  v84 = *(v115 + 144 * v121 + 16);
                }

                else
                {
                  v84 = 200;
                }

                *(v115 + 144 * v121 + 16) = v84;
                v94 = *v114;
                if (strstr((*v114 + 152), "bet4") || strstr((v94 + 152), "bet5"))
                {
                  inited = InitFromWrdRec(a1, v63, v63 + 432);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  inited = Init_WrdRec(a1, &v126, 1);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  inited = InitFromWrdRec(a1, v126, v63);
                  v18 = a9;
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  *v63 = 15;
                  *(v63 + 12) = 0x100000002;
                  *(v63 + 120) = 87;
                  v96 = v115 + 144 * (v123 + 1);
                  inited = InitFromWrdRec(a1, v126, v96);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  *v96 = 4;
                  **(v96 + 136) = 35;
                  v97 = v115 + 144 * (v123 + 2);
                  inited = InitFromWrdRec(a1, v126, v97);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  *v97 = 15;
                  v98 = v115 + 144 * v113;
                  *(v97 + 12) = *(v98 + 12);
                  *(v97 + 120) = *(v98 + 120);
                  v123 += 3;
                  Free_WrdRec(a1, v126, 1u);
                  *a10 += 2;
                  ++*a9;
                  v62 = 5;
                  v64 = v117;
                  LODWORD(v24) = v120;
                }

                else
                {
                  v18 = a9;
                  v64 = v117;
                }
              }
            }
          }

          v85 = v64 <= 1 || v62 == 0;
          v86 = v117;
          if (!v85)
          {
            v86 = v117 + 1;
          }

          v117 = v86;
        }

LABEL_235:
        v22 = a11;
LABEL_236:
        if (v132 != 13)
        {
          if (v132 != 14)
          {
            goto LABEL_240;
          }

          v122 = 1;
        }

        ++*(v13 + 7);
LABEL_240:
        v87 = 0;
        if (((*(a3 + 184))(a4, a5, v134, 8, &v128) & 0x80000000) == 0 && v128 == 1)
        {
          v37 = (*(a3 + 168))(a4, a5, v134, 8, 1, &v127, &v133);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v87 = v127;
        }

        v88 = v123;
        *(a8 + 144 * v123 + 16) = v87;
        v89 = v124;
        if (v138 && *v138)
        {
          v140[0] = v138;
          skipUnvalidPhonemes(v19, v140);
          v90 = v140[0];
          if (*v140[0])
          {
            v91 = 0;
            do
            {
              ++v91;
              v140[0] = v90 + 1;
              skipUnvalidPhonemes(v19, v140);
              v90 = v140[0];
            }

            while (*v140[0]);
          }

          else
          {
            v91 = 0;
          }

          v117 += v91;
          v18 = a9;
          v88 = v123;
          v89 = v124;
        }

        v116 = v87;
        if (v24 < HIWORD(v128))
        {
          v24 = v24;
          v92 = &v129[8 * v24 + 3];
          while (1)
          {
            v93 = *v92;
            v92 += 8;
            if (v93 - v89 > v131)
            {
              break;
            }

            if (HIWORD(v128) == ++v24)
            {
              LODWORD(v24) = HIWORD(v128);
              break;
            }
          }
        }

        v121 = v88;
        v118 = v122;
LABEL_258:
        v21 = (*(a3 + 120))(a4, a5, v134, &v134);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_287;
        }

        v35 = v123 + 1;
        v36 = v134;
        if (!v134)
        {
          goto LABEL_272;
        }
      }
    }

    LOWORD(v35) = 0;
    v121 = 0;
  }

LABEL_272:
  if (!*v18)
  {
LABEL_295:
    if (v35)
    {
      v109 = v35 - 1;
      while (1)
      {
        v110 = v109;
        v111 = *(a8 + 144 * v109);
        if ((v111 - 9) < 6 || v111 == 4)
        {
          break;
        }

        if (v111 != 15)
        {
          --v109;
          if (v110)
          {
            continue;
          }
        }

        goto LABEL_305;
      }

      *(a8 + 144 * v109 + 120) = 83;
    }

LABEL_305:
    *v22 = v35;
    return v21;
  }

  v99 = v35;
  v100 = *v13;
  if (!strstr((*v13 + 152), "bet4") && !strstr((v100 + 152), "bet5") || v24 >= HIWORD(v128))
  {
LABEL_294:
    LOWORD(v35) = v99;
    goto LABEL_295;
  }

  v101 = v24;
  v102 = &v129[8 * v24];
  v103 = -1;
  LOWORD(v35) = v99;
  do
  {
    v104 = *v102;
    v102 += 8;
    if (v104 == 26)
    {
      v103 = v101;
    }

    ++v101;
  }

  while (HIWORD(v128) != v101);
  if (v103 == -1)
  {
    goto LABEL_295;
  }

  v105 = v99 + 1;
  v106 = a8 + 144 * (v99 - 1);
  while (v105 - 2 > v121)
  {
    v21 = InitFromWrdRec(a1, v106, a8 + 144 * v105--);
    v106 -= 144;
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  *(a8 + 144 * v121 + 16) = 0;
  inited = Init_WrdRec(a1, &v126, 1);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v108 = a8 + 144 * v121;
  inited = InitFromWrdRec(a1, v126, v108 + 144);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v108 + 144) = 15;
  *(v108 + 156) = 0x100000000;
  *(v108 + 264) = 83;
  v21 = InitFromWrdRec(a1, v126, v108 + 288);
  if ((v21 & 0x80000000) == 0)
  {
    *(v108 + 288) = 4;
    *(v108 + 304) = 200;
    **(v108 + 424) = 35;
    ++v127;
    ++*a10;
    ++*a9;
    v99 += 2;
    Free_WrdRec(a1, v126, 1u);
    goto LABEL_294;
  }

  return v21;
}

uint64_t skipUnvalidPhonemes(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (**a2)
  {
    while (*(result + 2144 + v3) == 255)
    {
      if (v3 == 92)
      {
        v4 = v2 + 1;
        do
        {
          *a2 = v4;
          v6 = *v4++;
          v5 = v6;
          if (v6 == 92)
          {
            v2 = v4 - 1;
            goto LABEL_10;
          }
        }

        while (v5);
        *a2 = v2;
        if (*v2)
        {
          goto LABEL_10;
        }

        return result;
      }

LABEL_10:
      *a2 = v2 + 1;
      v3 = *++v2;
      if (!v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t usextract_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7)
{
  v14 = *a6;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 4;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  __src = 0;
  v61 = 0;
  *a7 = 0;
  v15 = (*(a3 + 272))(a4, a5, 114, 3, 0, 0);
  if ((v15 & 0x80000000) != 0 || (v15 = (*(a3 + 104))(a4, a5, 1, 0, &v69 + 2), (v15 & 0x80000000) != 0))
  {
    v17 = v15;
    goto LABEL_14;
  }

  v17 = (*(a3 + 168))(a4, a5, HIWORD(v69), 3, 1, a7, &v68);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v69), 1, &v61) & 0x80000000) != 0 || v61 != 1)
  {
    LODWORD(v19) = *(a6 + 880);
  }

  else
  {
    v17 = (*(a3 + 176))(a4, a5, HIWORD(v69), 1, &__src, &v68);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v18 = heap_Alloc(*(a1 + 8), 32 * v68);
    a6[439] = v18;
    if (!v18)
    {
      goto LABEL_46;
    }

    memcpy(v18, __src, 32 * v68);
    LODWORD(v19) = v68;
    *(a6 + 880) = v68;
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      while (marker_copyParts(a6[439] + v20, *(a1 + 8), a6[439] + v20))
      {
        ++v21;
        v19 = *(a6 + 880);
        v20 += 32;
        if (v21 >= v19)
        {
          goto LABEL_18;
        }
      }

      if (v21)
      {
        v34 = 0;
        do
        {
          marker_freeParts((a6[439] + 32 * v34++), *(a1 + 8));
        }

        while (v21 > v34);
      }

      heap_Free(*(a1 + 8), a6[439]);
      a6[439] = 0;
LABEL_46:
      log_OutPublic(*(a1 + 32), a2, 19000, 0);
      LOWORD(v22) = 0;
      v17 = 2229280778;
      goto LABEL_15;
    }
  }

LABEL_18:
  v24 = v19 ? *(a6[439] + 12) : 0;
  if (((*(a3 + 184))(a4, a5, HIWORD(v69), 0, &v61) & 0x80000000) != 0 || v61 != 1)
  {
    if (((*(a3 + 184))(a4, a5, HIWORD(v69), 4, &v61) & 0x80000000) != 0 || v61 != 1)
    {
      goto LABEL_30;
    }

    v25 = (*(a3 + 176))(a4, a5, HIWORD(v69), 4, &v70, &v68);
  }

  else
  {
    v25 = (*(a3 + 176))(a4, a5, HIWORD(v69), 0, &v70, &v68);
  }

  v17 = v25;
  if ((v25 & 0x80000000) != 0)
  {
LABEL_14:
    LOWORD(v22) = 0;
    goto LABEL_15;
  }

  if (v68 <= 1u)
  {
    v70 = 0;
    goto LABEL_36;
  }

LABEL_30:
  if (!v70)
  {
LABEL_36:
    v30 = *(a6 + 880);
    if (v30)
    {
      v31 = a6[439];
      while (1)
      {
        v32 = *v31;
        v31 += 8;
        v33 = v32 - 8;
        if (v32 - 8) < 0x16 && ((0x270F01u >> v33))
        {
          break;
        }

        if (!--v30)
        {
          goto LABEL_122;
        }
      }

      LOWORD(v30) = 2;
    }

    goto LABEL_122;
  }

  v26 = *(a6 + 880);
  if (v26)
  {
    v27 = 0;
    v28 = (a6[439] + 12);
    while (1)
    {
      v29 = *v28;
      v28 += 8;
      if (v29 != v24)
      {
        break;
      }

      if (v26 == ++v27)
      {
        goto LABEL_48;
      }
    }

    LODWORD(v26) = v27;
  }

LABEL_48:
  HIDWORD(v65) = v26;
  v35 = (*(a3 + 152))(a4, a5, 2, HIWORD(v69), &v61);
  v36 = 3;
  if (v35 < 0 || !v61)
  {
LABEL_121:
    LOWORD(v30) = v36 + *(a6 + 7);
LABEL_122:
    *(a6 + 5) = v30;
    *(a6 + 1762) = *(v14 + 3578) * v30;
    return v17;
  }

  v17 = (*(a3 + 104))(a4, a5, 2, HIWORD(v69), &v69);
  if ((v17 & 0x80000000) != 0)
  {
    LOWORD(v22) = 1;
    goto LABEL_15;
  }

  v37 = v69;
  if (!v69)
  {
    v36 = 3;
    goto LABEL_121;
  }

  v59 = 0;
  v22 = 1;
  while (1)
  {
    v38 = (*(a3 + 168))(a4, a5, v37, 0, 1, &v67, &v68);
    if ((v38 & 0x80000000) != 0)
    {
      break;
    }

    if ((v67 - 9) >= 6 && v67 != 4)
    {
      goto LABEL_106;
    }

    v58 = v67;
    v40 = v59;
    if (v67 != 12)
    {
      v40 = 0;
    }

    v60 = v40;
    v38 = usextract_readFromPos(a3, a4, a5, v69, &v64);
    if ((v38 & 0x80000000) != 0)
    {
      break;
    }

    v68 = 0;
    if (((*(a3 + 184))(a4, a5, v69, 3, &v61) & 0x80000000) == 0 && v61 == 1)
    {
      v38 = (*(a3 + 176))(a4, a5, v69, 3, &v66, &v68);
      if ((v38 & 0x80000000) != 0)
      {
        break;
      }
    }

    if (v68 <= 1u)
    {
      v41 = v67;
      if (v67 != 14)
      {
        v66 = 0;
        goto LABEL_92;
      }

      v42 = "M";
      v66 = "M";
LABEL_69:
      if (*v42)
      {
        v43 = *(a6 + 880);
        v44 = v43 >= v26;
        v45 = v43 - v26;
        if (v45 != 0 && v44)
        {
          v46 = (a6[439] + 32 * v26);
          while (v46[3] - v24 <= v64)
          {
            if (*v46 == 26)
            {
              v47 = v60;
              if (v58 == 14)
              {
                v47 = v59;
              }

              if (!v47)
              {
                v49 = v22 > 1;
                v48 = v67 != 14;
                v50 = v65;
                if (v67 != 14 && v65 == 0 && v22 >= 2)
                {
                  v50 = 5;
                  LODWORD(v65) = 5;
                  v49 = 1;
                  v63 = 1;
                  v48 = 1;
                }

                goto LABEL_82;
              }

              break;
            }

            v46 += 8;
            if (!--v45)
            {
              break;
            }
          }
        }

        v48 = 0;
        v49 = v22 > 1;
        v50 = v65;
LABEL_82:
        if (v50)
        {
          v51 = !v49;
        }

        else
        {
          v51 = 1;
        }

        if (!v51)
        {
          usextract_insertPause(0, a6, v50, v63, v22++, v24, v64, &v65 + 1);
        }

        if (v48)
        {
          v52 = *a6;
          if (strstr((*a6 + 152), "bet4") || strstr((v52 + 152), "bet5"))
          {
            usextract_insertPause(0, a6, 5u, 1, v22++, v24, v64, &v65 + 1);
          }
        }
      }

      goto LABEL_91;
    }

    v42 = v66;
    if (v66)
    {
      goto LABEL_69;
    }

LABEL_91:
    v41 = v67;
LABEL_92:
    if (v41 == 13)
    {
      goto LABEL_95;
    }

    if (v41 == 14)
    {
      v60 = 1;
LABEL_95:
      ++*(a6 + 7);
    }

    v38 = usextract_readSilDur(a3, a4, a5, v69, &v65, &v63);
    if ((v38 & 0x80000000) != 0)
    {
      break;
    }

    v53 = *(a6 + 880);
    LODWORD(v26) = HIDWORD(v65);
    if (HIDWORD(v65) < v53)
    {
      v54 = (a6[439] + 32 * HIDWORD(v65) + 12);
      while (1)
      {
        v55 = *v54;
        v54 += 8;
        if (v55 - v24 > v64)
        {
          break;
        }

        LODWORD(v26) = v26 + 1;
        if (v53 == v26)
        {
          LODWORD(v26) = *(a6 + 880);
          break;
        }
      }
    }

    HIDWORD(v65) = v26;
    if (v66 && *v66)
    {
      v22 += usextract_nrOfValidPhonemes(v14, v66);
    }

    v59 = v60;
LABEL_106:
    v17 = (*(a3 + 120))(a4, a5, v69, &v69);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_15;
    }

    v37 = v69;
    if (!v69)
    {
      v36 = v22 + 2;
      goto LABEL_121;
    }
  }

  v17 = v38;
LABEL_15:
  *(a6 + 5) = v22;
  *(a6 + 1762) = *(v14 + 3578) * v22;
  usextract_ProcessEnd(a1, v16, a6);
  return v17;
}

uint64_t usextract_readFromPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v12 = 0;
  *a5 = 0;
  v10 = (*(a1 + 184))(a2, a3, a4, 1, &v12 + 2);
  result = 0;
  if ((v10 & 0x80000000) == 0 && HIWORD(v12) == 1)
  {
    return (*(a1 + 168))(a2, a3, a4, 1, 1, a5, &v12);
  }

  return result;
}

void *usextract_insertPause(uint64_t a1, unsigned int *a2, unsigned int a3, int a4, int a5, int a6, unsigned int a7, _DWORD *a8)
{
  v15 = *a2;
  v16 = strstr((*a2 + 152), "bet4");
  v17 = strstr((v15 + 152), "bet5");
  result = strstr((v15 + 152), "bet6");
  v19 = result;
  if (a1 && *(a1 + 674) < a5)
  {
    result = memset((*(a2 + 13) + *(a1 + 674)), 4, (a5 - *(a1 + 674)) & ~((a5 - *(a1 + 674)) >> 31));
  }

  v20 = *a8;
  v21 = a2[880];
  v22 = v21 - v20;
  if (v21 <= v20)
  {
    v23 = 0;
    v25 = a3;
  }

  else
  {
    v23 = 0;
    v24 = (*(a2 + 439) + 32 * v20);
    v25 = a3;
    do
    {
      if (v24[3] - a6 > a7)
      {
        break;
      }

      v26 = *v24;
      v24 += 8;
      if (v26 == 8)
      {
        ++v23;
      }

      --v22;
    }

    while (v22);
  }

  if (a4)
  {
    v27 = 1;
  }

  else
  {
    v27 = (v17 | v19) == 0;
  }

  v28 = !v27;
  if (v16)
  {
    v29 = v23 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v28 = 1;
  }

  if (v25 >= 0xFFFF)
  {
    v30 = -1;
  }

  else
  {
    v30 = v25;
  }

  if (v23)
  {
    v31 = *(a2 + 439);
    do
    {
      v32 = *(v31 + 32 * v20) == 8;
      if (a1)
      {
        ++*(*(a2 + 225) + 2 * a5);
      }

      LODWORD(v20) = v20 + 1;
      *a8 = v20;
      v23 -= v32;
    }

    while (v23);
  }

  if (a1)
  {
    ++*(a1 + 720);
    *(a1 + 716) = 0;
    *(a1 + 682) = a5;
    *(*(a2 + 4) + a5) = 35;
    if (*(a1 + 666) == a5)
    {
      *(a1 + 666) = a5 + 1;
    }

    if (*(a1 + 668) == a5)
    {
      *(a1 + 668) = a5 + 1;
    }

    v33 = *(a2 + 72);
    if (v33)
    {
      *(v33 + a5) = *(v33 + a5 - 1);
    }

    if (v28)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30;
    }

    *(*(a2 + 223) + 2 * a5) = v34;
    *(*(a2 + 14) + a5 - 1) = 3;
    *(*(a2 + 13) + a5) = 3;
    *(a1 + 12) = 3;
    *(*(a2 + 15) + a5) = *(a1 + 14);
    *(a1 + 15) = 0;
  }

  return result;
}

uint64_t usextract_readSilDur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v16 = 0;
  *a5 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v15 = 0;
  __s1 = 0;
  v12 = 0;
  if (((*(a1 + 184))(a2, a3, a4, 8, &v16 + 2) & 0x80000000) == 0 && HIWORD(v16) == 1)
  {
    v12 = (*(a1 + 168))(a2, a3, a4, 8, 1, &v15, &v16);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    *a5 = v15;
  }

  if (a6)
  {
    if (((*(a1 + 184))(a2, a3, a4, 18, &v16 + 2) & 0x80000000) == 0 && HIWORD(v16) == 1)
    {
      v12 = (*(a1 + 176))(a2, a3, a4, 18, &__s1, &v16);
      if ((v12 & 0x80000000) == 0 && !strcmp(__s1, "external"))
      {
        *a6 = 1;
      }
    }
  }

  return v12;
}

uint64_t usextract_nrOfValidPhonemes(uint64_t a1, unsigned __int8 *a2)
{
  v6 = a2;
  skipUnvalidPhonemes(a1, &v6);
  v3 = v6;
  if (*v6)
  {
    v4 = 0;
    do
    {
      ++v4;
      v6 = v3 + 1;
      skipUnvalidPhonemes(a1, &v6);
      v3 = v6;
    }

    while (*v6);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t usextract_ProcessEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 3512);
  if (v3)
  {
    if (*(a3 + 3520))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        marker_freeParts((*(a3 + 3512) + v6), *(a1 + 8));
        ++v7;
        v6 += 32;
      }

      while (v7 < *(a3 + 3520));
      v3 = *(a3 + 3512);
    }

    heap_Free(*(a1 + 8), v3);
    *(a3 + 3512) = 0;
  }

  return 0;
}

uint64_t usextract_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = a1;
  v11 = 0;
  v362 = *MEMORY[0x1E69E9840];
  v12 = *a6;
  v338 = 0;
  v337 = 0;
  v336 = 4;
  v334 = 0;
  __s = 0;
  v333 = 0;
  v332 = 0;
  v331 = 0;
  v13 = *(a6 + 5);
  v14 = v13 & ~(v13 >> 31);
  v330 = 0u;
  memset(v329, 0, sizeof(v329));
  v328 = 0u;
  memset(v349, 0, 448);
  v347 = 0u;
  v348 = 0u;
  v345 = 0u;
  v346 = 0u;
  v322 = *(v12 + 2744);
  v327 = 0;
  LODWORD(v328) = 0;
  v329[3] = 0;
  *&v330 = 0x100000000;
  WORD4(v330) = -1;
  v325 = 0;
  v326 = 0;
  v15 = a6 + 2;
  *(&v328 + 1) = 0;
  v329[0] = 0;
  v16 = &word_1C37B13A4;
  v17 = 9;
  v18 = 33;
  LOWORD(v329[1]) = 0;
  do
  {
    *(&v345 + v17 + 1) = *(v16 - 2);
    if (v15[v17])
    {
      *(&v349[9] + v11++ + 6) = v17;
    }

    v19 = *v16;
    v16 += 2;
    v17 = v19;
    --v18;
  }

  while (v18);
  *(&v349[9] + v11 + 6) = 218;
  BYTE6(v347) = 0;
  v20 = *(v12 + 3336);
  v323 = v12;
  if (v20)
  {
    if (*v20)
    {
      v21 = 0;
      v22 = v20 + 1;
        ;
      }

      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v350 = heap_Alloc(*(a1 + 8), v24);
    if (!v350)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v350 = 0;
  }

  LOBYTE(v345) = 0;
  v360 = 0;
  v361 = 0;
  v356 = 0;
  v357 = 0;
  v358 = 0;
  v359 = -1;
  v351 = xmmword_1C37B1380;
  __len = 0xFFFF;
  if (v13 <= 1)
  {
    log_OutPublic(*(v10 + 32), a2, 19010, 0);
    v25 = 0;
    v26 = 0;
    v27 = 2229280785;
    goto LABEL_573;
  }

  if (*(a6 + 7) >= 1)
  {
    v28 = heap_Alloc(*(v10 + 8), 500);
    *(&v328 + 1) = v28;
    if (!v28)
    {
      goto LABEL_23;
    }

    *v28 = 0;
    v29 = heap_Alloc(*(v10 + 8), 500);
    v329[0] = v29;
    if (!v29)
    {
      goto LABEL_23;
    }

    *v29 = 0;
  }

  if (!a6[57])
  {
    v30 = v10;
    v316 = 0;
    v312 = 0;
    v319 = 0;
    goto LABEL_25;
  }

  v319 = heap_Calloc(*(v10 + 8), 1, (v14 + 3));
  if (!v319)
  {
LABEL_23:
    v27 = 2229280778;
    log_OutPublic(*(v10 + 32), a2, 19000, 0);
    v25 = 0;
    v26 = 0;
    goto LABEL_573;
  }

  v312 = v14 + 2;
  v316 = heap_Alloc(*(v10 + 8), (v14 + 2));
  if (!v316)
  {
    v27 = 2229280778;
    log_OutPublic(*(v10 + 32), a2, 19000, 0);
    v25 = 0;
    v26 = v319;
    goto LABEL_573;
  }

  v30 = v10;
LABEL_25:
  v31 = a3;
  v321 = a5;
  v32 = v30;
  if (log_HasTraceTuningDataSubscriber(*(v30 + 32)))
  {
    log_OutTraceTuningData(*(v32 + 32), 301, "%s%s %s%.*s %s%s", v33, v34, v35, v36, v37, "BEG");
  }

  v317 = v32;
  SentType = usextract_GetSentType(v32, a2, v323, "\\TS\"", 0, 0, &v332);
  LOBYTE(v345) = SentType;
  BYTE14(v346) = SentType;
  memset(a6[23], 4, v14);
  memset(a6[12], 3, v14);
  memset(a6[31], SentType, v14);
  if (*(v323 + 2604) == 2)
  {
    v39 = 87;
  }

  else
  {
    v39 = 88;
  }

  memset(a6[6], v39, v14);
  v40 = a6[36];
  if (v40)
  {
    memset(v40, 1, v14);
  }

  v41 = a6[39];
  v42 = v321;
  v43 = v31;
  if (v41)
  {
    memset(v41, 1, v14);
  }

  v10 = v317;
  if (!*(v323 + 2516))
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = *a6;
    LODWORD(v48) = *(*a6 + 2966);
    if (v14 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v13 & ~(v13 >> 31);
    }

    do
    {
      if (v48)
      {
        v50 = 0;
        v51 = 0;
        do
        {
          v52 = *(v47 + 2968) + v50;
          v53 = *(v52 + 4);
          v54 = v45 * *(*a6 + 2966);
          *(a6[446] + 4 * (v51 + v54)) = v53;
          *(a6[447] + 4 * (v51 + v54)) = v53;
          *(a6[450] + v54 + v51++) = *(v52 + 10);
          v48 = *(v47 + 2966);
          v50 += 32;
        }

        while (v51 < v48);
      }

      v55 = *(v47 + 3360);
      if (*(v47 + 3360))
      {
        v56 = (*(v47 + 3368) + 4);
        v57 = v44 * *(*a6 + 3360);
        v58 = (a6[449] + v57);
        v59 = (a6[448] + v57);
        do
        {
          v60 = *v56;
          v56 += 3;
          *v59++ = v60;
          *v58++ = v60;
          --v55;
        }

        while (v55);
      }

      ++v46;
      ++v45;
      v44 += 4;
    }

    while (v46 != v49);
  }

  *a6[13] = 1;
  *(a6[13] + 1) = 5;
  *a6[15] = 1;
  *(a6[15] + 1) = 1;
  v61 = a4;
  WordPrm = (*(v43 + 104))(a4, v321, 1, 0, &v338 + 2);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  v318 = v43;
  if (*(a6 + 880))
  {
    v63 = a6[439];
    v64 = *(v63 + 12);
    v65 = *(a6 + 880);
    v66 = strstr((*a6 + 152), "bet4");
    v67 = v65;
    v10 = v317;
    v68 = v64;
    v42 = v321;
    v61 = a4;
    v69 = 0;
    v70 = 0;
    v71 = a6[225];
    v72 = *v71;
    v73 = (v63 + 24);
    v43 = v318;
    while (1)
    {
      if (*(v73 - 6) == 8)
      {
        v69 += *v73;
      }

      *v71 = ++v72;
      if (v67 - 1 == v70)
      {
        break;
      }

      ++v70;
      v74 = v73[5];
      v73 += 8;
      if (v74 != v68)
      {
        goto LABEL_56;
      }
    }

    LODWORD(v70) = v67;
LABEL_56:
    v313 = v68;
    HIDWORD(v334) = v70;
  }

  else
  {
    v66 = strstr((*a6 + 152), "bet4");
    v313 = 0;
    v69 = 0;
  }

  *a6[4] = 35;
  if (v69 >= 0xFFFF)
  {
    LOWORD(v69) = -1;
  }

  if (v66)
  {
    LOWORD(v69) = 0;
  }

  *a6[223] = v69;
  LODWORD(v334) = 0;
  v344 = 0;
  v342 = 0;
  v341 = 4;
  v340 = 0;
  v339 = 0;
  __s1 = 0;
  WordPrm = (*(v43 + 104))(v61, v42, 1, 0, &v344 + 2);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  v308 = a2;
  if (((*(v43 + 152))(v61, v42, 2, HIWORD(v344), &v340) & 0x80000000) != 0 || !v340)
  {
    goto LABEL_108;
  }

  WordPrm = (*(v43 + 104))(v61, v42, 2, HIWORD(v344), &v344);
  if ((WordPrm & 0x80000000) != 0)
  {
LABEL_570:
    v27 = WordPrm;
    goto LABEL_571;
  }

  v75 = v344;
  if (!v344)
  {
    goto LABEL_108;
  }

  v314 = 0;
  LOWORD(v76) = 0;
  do
  {
    if (!v76)
    {
LABEL_85:
      v83 = v61;
      v84 = v321;
      goto LABEL_86;
    }

    v77 = (*(v43 + 168))(v61, v321, v75, 0, 1, &v341, &v342 + 2);
    if ((v77 & 0x80000000) != 0)
    {
      v27 = v77;
      v42 = v321;
      goto LABEL_105;
    }

    __s1 = 0;
    if (((*(v43 + 184))(v61, v321, v76, 14, &v340) & 0x80000000) == 0 && v340 == 1)
    {
      v78 = (*(v43 + 176))(v61, v321, v76, 14, &__s1, &v342 + 2);
      if ((v78 & 0x80000000) != 0)
      {
        v27 = v78;
        goto LABEL_103;
      }
    }

    if ((v341 - 9) < 6)
    {
      goto LABEL_73;
    }

    if (v341 != 15)
    {
      if (v341 != 4)
      {
        goto LABEL_85;
      }

LABEL_73:
      v79 = __s1;
      if (!__s1)
      {
        goto LABEL_85;
      }

      v339 = __s1;
      do
      {
        if (!strncmp(__s1, "BNDSHAPE", 8uLL))
        {
          v80 = hlp_NLUStrStrip(v79);
        }

        else
        {
          v80 = hlp_NLUStrNext(v79);
        }

        v79 = v80;
        v339 = v80;
      }

      while (v80);
      hlp_NLUStrJoin(__s1, "");
      v81 = (strlen(__s1) + 1);
      v82 = v61;
      v83 = v61;
      v84 = v321;
      (*(v43 + 160))(v82, v321, v76, 14, v81, __s1, &v342);
      goto LABEL_86;
    }

    if (__s1)
    {
      if (hlp_NLUStrFind(__s1, "BNDSHAPE", &v339, &v342 + 1))
      {
        goto LABEL_85;
      }

      v86 = strlen(__s1);
      v87 = heap_Realloc(*(v10 + 8), v314, v86 + 13);
      v339 = v87;
      if (!v87)
      {
        goto LABEL_731;
      }

      v88 = v87;
      v89 = strcpy(v87, __s1);
      hlp_NLUStrJoin(v89, "BNDSHAPE:L%");
      v90 = (strlen(v88) + 1);
      v91 = v61;
      v83 = v61;
      v84 = v321;
      (*(v43 + 160))(v91, v321, v76, 14, v90, v88, &v342);
      v314 = v88;
    }

    else
    {
      v85 = v61;
      v83 = v61;
      v84 = v321;
      (*(v43 + 160))(v85, v321, v76, 14, 12, "BNDSHAPE:L%", &v342);
    }

LABEL_86:
    v76 = v344;
    v27 = (*(v43 + 120))(v83, v84, v344, &v344);
    if ((v27 & 0x80000000) != 0)
    {
      v42 = v321;
      v61 = a4;
      v43 = v318;
      goto LABEL_105;
    }

    v75 = v344;
    v61 = a4;
    v43 = v318;
  }

  while (v344);
  if (!v76)
  {
    goto LABEL_103;
  }

  __s1 = 0;
  v42 = v321;
  if (((*(v318 + 184))(a4, v321, v76, 14, &v340) & 0x80000000) != 0 || v340 != 1 || (v27 = (*(v318 + 176))(a4, v321, v76, 14, &__s1, &v342 + 2), (v27 & 0x80000000) == 0))
  {
    if (__s1)
    {
      if (hlp_NLUStrFind(__s1, "BNDSHAPE", &v339, &v342 + 1))
      {
        goto LABEL_105;
      }

      v92 = strlen(__s1);
      v93 = heap_Realloc(*(v10 + 8), v314, v92 + 13);
      v339 = v93;
      if (v93)
      {
        v94 = v93;
        v95 = strcpy(v93, __s1);
        hlp_NLUStrJoin(v95, "BNDSHAPE:L%");
        v96 = (strlen(v94) + 1);
        (*(v318 + 160))(a4, v321, v76, 14, v96, v94, &v342);
        v43 = v318;
        v97 = v94;
        v42 = v321;
        v61 = a4;
        goto LABEL_106;
      }

LABEL_731:
      v27 = 2229280778;
      log_OutPublic(*(v10 + 32), v308, 19000, 0);
LABEL_103:
      v42 = v321;
      goto LABEL_105;
    }

    (*(v318 + 160))(a4, v321, v76, 14, 12, "BNDSHAPE:L%", &v342);
  }

LABEL_105:
  v97 = v314;
  if (!v314)
  {
    goto LABEL_107;
  }

LABEL_106:
  heap_Free(*(v10 + 8), v97);
LABEL_107:
  if ((v27 & 0x80000000) != 0)
  {
    goto LABEL_571;
  }

LABEL_108:
  v98 = 0;
  LOWORD(v99) = 1;
  if (((*(v43 + 152))(v61, v42, 2, HIWORD(v338), &v332 + 2) & 0x80000000) != 0 || !HIWORD(v332))
  {
LABEL_589:
    if (HIDWORD(v327))
    {
      usextract_finishPrompt(&v325, v317, v308, a6, v99);
    }

    if (a6[72])
    {
      LOWORD(v259) = v99 - 1;
      do
      {
        *(a6[72] + v259) = 5;
        v259 = (v259 - 1);
      }

      while (v259 >= 1 && *(a6[4] + v259) == 35);
    }

    v260 = WORD3(v351);
    v261 = SWORD4(v351);
    v262 = SWORD4(v351);
    if (SWORD4(v351) < v99)
    {
      memset((a6[15] + SWORD4(v351)), 3, (v99 - SWORD4(v351)) & ~((v99 - SWORD4(v351)) >> 31));
      if (a6[74])
      {
        v263 = v262;
        do
        {
          *(a6[74] + v263++) = 5;
        }

        while (v99 != v263);
      }
    }

    v264 = v260 != v262;
    if (v261 < v99 && (v262 & 0x80000000) == 0 && a6[68])
    {
      v265 = v262;
      do
      {
        v266 = a6[68];
        if (*(v266 + v265) > v264)
        {
          *(v266 + v265) = v264;
        }

        ++v265;
      }

      while (v99 != v265);
    }

    if (v262 < v99 && (v262 & 0x80000000) == 0 && a6[180])
    {
      do
      {
        v267 = a6[180];
        if (*(v267 + v262) > v264)
        {
          *(v267 + v262) = v264;
        }

        ++v262;
      }

      while (v99 != v262);
    }

    v268 = SWORD5(v351);
    if (SWORD5(v351) < v99)
    {
      v269 = WORD3(v351);
      v270 = SWORD5(v351);
      memset((a6[13] + SWORD5(v351)), 5, (v99 - SWORD5(v351)) & ~((v99 - SWORD5(v351)) >> 31));
      if (a6[76])
      {
        v271 = v268;
        do
        {
          *(a6[76] + v271++) = 5;
        }

        while (v99 != v271);
      }

      v272 = v269 != v268;
      if (a6[70])
      {
        v273 = v268;
        do
        {
          *(a6[70] + v273++) = v272;
        }

        while (v99 != v273);
      }

      if (a6[187])
      {
        do
        {
          *(a6[187] + v270++) = v272;
        }

        while (v99 != v270);
      }
    }

    usextract_updateLastStrAcc(a6, v99, SWORD6(v351), 1u);
    usextract_updateLastStrAccShp(a6, v99, SHIWORD(v351), 6u, 1u);
    if (SHIWORD(__len) >= 1)
    {
      memset(a6[17], 1, SHIWORD(__len));
    }

    v274 = *a6;
    v275 = strstr((*a6 + 152), "bet4");
    v276 = strstr((v274 + 152), "bet5");
    v277 = HIDWORD(v334);
    v278 = *(a6 + 880);
    v26 = v319;
    v25 = v316;
    if (v275 | v276 && HIDWORD(v334) < v278)
    {
      v279 = HIDWORD(v334) + 1;
      v280 = (a6[439] + 32 * HIDWORD(v334));
      do
      {
        v282 = *v280;
        v280 += 8;
        v281 = v282;
      }

      while (v282 != 26 && v279++ < v278);
      if (v281 == 26)
      {
        *(a6[4] + v99) = 35;
        if (a6[72])
        {
          LOWORD(v284) = v99;
          do
          {
            *(a6[72] + v284) = 5;
            v284 = (v284 - 1);
          }

          while (v284 >= 1 && *(a6[4] + v284) == 35);
        }

        *(a6[13] + v99) = 5;
        *(a6[15] + v99) = 3;
        *(a6[31] + v99) = *(a6[31] + v99 - 1);
        LOWORD(v99) = v99 + 1;
        LODWORD(v278) = *(a6 + 880);
      }
    }

    if (v277 >= v278)
    {
      v285 = 0;
      v287 = v99;
    }

    else
    {
      v285 = 0;
      v286 = a6[225];
      v287 = v99;
      v288 = *(v286 + 2 * v99);
      v289 = v278 - v277;
      v290 = (a6[439] + 32 * v277);
      do
      {
        if (*v290 == 8)
        {
          v285 += v290[6];
        }

        *(v286 + 2 * v99) = ++v288;
        v290 += 8;
        --v289;
      }

      while (v289);
      HIDWORD(v334) = v278;
    }

    *(a6[4] + v287) = 35;
    if (a6[72])
    {
      LOWORD(v291) = v99;
      do
      {
        *(a6[72] + v291) = 5;
        v291 = (v291 - 1);
      }

      while (v291 >= 1 && *(a6[4] + v291) == 35);
    }

    if (v285 >= 0xFFFF)
    {
      v292 = -1;
    }

    else
    {
      v292 = v285;
    }

    if (v275)
    {
      v292 = 0;
    }

    *(a6[223] + 2 * v287) = v292;
    *(a6[13] + v287) = 5;
    *(a6[15] + v287) = 3;
    *(a6[31] + v287) = *(a6[31] + v287 - 1);
    v293 = (v99 + 1);
    v294 = a6[57];
    if (v294 && *(a6[4] + (v99 + 1)) == v319[v98])
    {
      *(v294 + (v99 + 1)) = v316[v98];
    }

    v295 = *(a6 + 5);
    if (v295 >= v293)
    {
      *(a6 + 5) = v293;
      usextract_setUnknownOnPauses(a6);
      v296 = v323;
      v10 = v317;
      if ((*(v323 + 3104) & 0x80000000) == 0 && (*(v323 + 3208) & 0x80000000) == 0)
      {
        usextract_setNextDifferentiator(v323, a6);
      }

      if ((*(v323 + 3092) & 0x80000000) != 0)
      {
        v297 = BYTE14(v346);
        if (BYTE14(v346) == 2 && WORD5(v351) == 1 && WORD4(v351) == 1)
        {
          v297 = 0;
          BYTE14(v346) = 0;
        }

        memset(a6[31], v297, v293 & ~(v293 >> 31));
        v296 = v323;
      }

      usextract_setPrePostSylBnd(a6);
      if (!*(v296 + 2516) && *(v323 + 2604) != 2)
      {
        v298 = *(a6 + 5);
        if (v298 >= 1)
        {
          v299 = 0;
          do
          {
            v300 = *(a6[4] + v299);
            if (v300 != 35)
            {
              *(a6[6] + v299) = *(v323 + 1373 + *(v323 + 2144 + v300));
              LOWORD(v298) = *(a6 + 5);
            }

            ++v299;
          }

          while (v299 < v298);
        }
      }

      usextract_setWordPhrs(a6);
      usextract_setFineSylPosInPhrs(a6);
      usextract_finalizeSylType(a6);
      usextract_setSylPos(a6, SHIWORD(__len));
      usextract_finalizeNrSylInPhrs(a6);
      usextract_finalizePhnCntSyl(a6);
      if (a6[72])
      {
        if (!a6[177] || !a6[176] || (usextract_setNrSylInIP4(a6), a6[72]))
        {
          if (!a6[182] || (usextract_setSylNrInIP4(a6), usextract_finalizeFineSylPosInIP4(a6), a6[72]))
          {
            if (!a6[179] || !a6[178] || !a6[183] || !a6[184] || (usextract_setSylStressedPrm(a6), a6[72]))
            {
              if (!a6[175] || !a6[185] || !a6[186] || (usextract_setWrdBndTone(a6), a6[72]))
              {
                if (!a6[188] || !a6[189] || (usextract_setIP4PosInSent(a6), a6[72]))
                {
                  if (a6[179])
                  {
                    if (!a6[191] || !a6[193] || !a6[195] || !a6[197] || (usextract_setRhythmRelated(a6), a6[72]))
                    {
                      if (a6[179] && a6[190] && a6[192] && a6[194] && a6[196])
                      {
                        usextract_setRhythmRelatedBackward(a6);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (a6[71] && a6[179] && a6[198])
      {
        usextract_finalizeFineSylBndShape(a6);
      }

      if (a6[173])
      {
        usextract_setSylIndexInWordFromStart(a6);
      }

      if (a6[174])
      {
        usextract_setSylIndexInWordFromEnd(a6);
      }

      if (a6[38])
      {
        usextract_setSylPosInWordRelEnd(a6);
      }

      if (a6[37])
      {
        usextract_setSylPosInSenRelStr(a6, __len, v359);
      }

      usextract_setPitchAndDurFromCart(v323, a6);
      if ((*(v323 + 3392) & 0x80000000) == 0 || (*(v323 + 3396) & 0x80000000) == 0)
      {
        usextract_setSylTrans(v323, a6);
      }

      if (*(v323 + 2560))
      {
        usextract_setSylChunk(a6);
      }

      v301 = usextract_applyGenericContextRules(v323, a6);
      if ((v301 & 0x80000000) != 0)
      {
        v27 = v301;
      }

      else
      {
        if (*(a6 + 7) >= 1 && !strstr((*a6 + 152), "bet5"))
        {
          usextract_removePromptColumns(a6);
        }

        usextract_setMNXfeatures(v317, v308, a6);
        if (log_GetLogLevel(*(v317 + 32)) >= 6)
        {
          usextract_logAllFeatures(v317, v308, a6);
        }

        v27 = 0;
      }
    }

    else
    {
      v10 = v317;
      log_OutPublic(*(v317 + 32), v308, 19011, "%s%d%s%d", "allocated", v295, "required", v293);
      v27 = 2229281030;
    }

    goto LABEL_573;
  }

  v100 = v321;
  v101 = (*(v43 + 104))(v61, v321, 2, HIWORD(v338), &v338);
  if ((v101 & 0x80000000) != 0)
  {
    v27 = v101;
    v26 = v319;
    v25 = v316;
    v10 = v317;
    goto LABEL_573;
  }

  v307 = 0;
  v102 = 0;
  v10 = v317;
  if (v316)
  {
    v103 = v319 == 0;
  }

  else
  {
    v103 = 1;
  }

  v104 = v103;
  v304 = v104;
  v305 = 0;
  v311 = v323 + 2144;
  v99 = 1;
  while (2)
  {
    if (!v338)
    {
      v98 = v307;
      goto LABEL_589;
    }

    v315 = v102;
    WordPrm = (*(v43 + 168))(v61, v100);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }

    v105 = v336;
    if ((v336 - 9) < 6)
    {
      break;
    }

    if (v336 == 15)
    {
      usextract_handlePhraseRecord(&v345, v43, v61, v100, v338, a6, v99);
      goto LABEL_559;
    }

    if (v336 != 4)
    {
LABEL_559:
      WordPrm = (*(v43 + 120))(v61, v100, v338, &v338);
      v102 = v315;
      if ((WordPrm & 0x80000000) != 0)
      {
        goto LABEL_570;
      }

      continue;
    }

    break;
  }

  if (v336 != 11 && HIDWORD(v327) != 0)
  {
    usextract_finishPrompt(&v325, v10, v308, a6, v99);
    v305 = 1;
    v105 = v336;
  }

  LODWORD(v328) = 0;
  if (v105 != 12 && v327)
  {
    LODWORD(v327) = 0;
    LODWORD(v328) = v105 == 14;
  }

  WordPrm = usextract_readFromPos(v43, v61, v100, v338, &v331);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  v337 = 0;
  if (((*(v43 + 184))(v61, v100, v338, 3, &v332 + 2) & 0x80000000) == 0 && HIWORD(v332) == 1)
  {
    WordPrm = (*(v43 + 176))(v61, v100, v338, 3, &__s, &v337);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }
  }

  v320 = v99;
  if (v337 > 1u)
  {
    v108 = __s;
    if (__s)
    {
      v109 = strlen(__s);
      v110 = v109;
      LOWORD(__s1) = 0;
      if (!v109)
      {
        goto LABEL_153;
      }

      v111 = 0;
      v112 = 0;
      do
      {
        while (v111)
        {
          v113 = &v108[v111];
          if (*v113 != 42 || *(v113 - 1) == 45)
          {
            break;
          }

          *v113 = 45;
          ++v111;
          v112 = 1;
          if (v109 <= v111)
          {
            goto LABEL_151;
          }
        }

        ++v111;
      }

      while (v109 > v111);
      if (v112)
      {
LABEL_151:
        v114 = v109;
        strlen(v108);
        v100 = v321;
        WordPrm = (*(v318 + 160))(v61);
        v110 = v114;
        v43 = v318;
        if ((WordPrm & 0x80000000) != 0)
        {
          goto LABEL_570;
        }
      }

      else
      {
LABEL_153:
        v100 = v321;
      }
    }

    else
    {
      v110 = v315;
    }

    v315 = v110;
    v107 = __s;
  }

  else
  {
    log_OutText(*(v10 + 32), v308, 5, 0, "Word record with empty phonetization, eTokenType=%d", v336);
    v315 = v336 == 14;
    v107 = v336 == 14 ? "M" : 0;
  }

  if (a6[67])
  {
    WordPrm = usextract_readWordPrm(v43, v61, v100, v338, v349 + 2);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }
  }

  if (a6[178])
  {
    WordPrm = usextract_readWordPrm(v43, v61, v100, v338, &v349[7] + 1);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }
  }

  if (a6[438])
  {
    v115 = v338;
    v116 = v350;
    LOWORD(v339) = 0;
    LOWORD(v341) = 0;
    __s1 = 0;
    v117 = *(v323 + 3336);
    if (*v117)
    {
      v118 = v117 + 1;
      v119 = v350;
      do
      {
        *v119++ = 0;
      }

      while (*v118++);
    }

    v309 = v116;
    if (((*(v43 + 184))(v61, v100, v115, 14, &v339) & 0x80000000) != 0 || v339 != 1)
    {
      goto LABEL_180;
    }

    v27 = (*(v43 + 176))(v61, v321, v115, 14, &__s1, &v341);
    if ((v27 & 0x80000000) != 0 || !v341)
    {
LABEL_217:
      v100 = v321;
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_571;
      }
    }

    else
    {
      v121 = __s1;
      if (__s1)
      {
        v122 = *__s1;
        if (*__s1)
        {
          v123 = 0;
          do
          {
            if (v121[1] == 95 && memchr("SsEeIi", v122, 7uLL))
            {
              v124 = strlen(v121 + 2);
              memmove(v121, v121 + 2, v124 + 1);
            }

            else if (v122 == 58 && v123)
            {
              v125 = strlen(v121 + 1);
              memmove(v121 + 3, v121 + 1, v125 + 1);
              v122 = 0;
              v121[2] = 95;
              v121 += 2;
              *(v121 - 1) = v123;
            }

            else
            {
              v122 = v123;
            }

            v123 = v122;
            v126 = *++v121;
            v122 = v126;
          }

          while (v126);
          v121 = __s1;
          goto LABEL_214;
        }

        v10 = v317;
        while (*v121)
        {
          v127 = v121 - 1;
          do
          {
            v128 = *++v127;
          }

          while (memchr(";: \t", v128, 5uLL));
          v129 = strchr(v127, 58);
          if (!v129)
          {
            log_OutPublic(*(v10 + 32), v308, 19021, "%s%s", "missing feature value", v127);
            v61 = a4;
            goto LABEL_217;
          }

          v130 = v129;
          if (v129 > v127)
          {
            while (1)
            {
              v130 = (v129 - 1);
              v131 = *(v129 - 1);
              v152 = v131 > 0x20;
              v132 = (1 << v131) & 0x100000201;
              if (v152 || v132 == 0)
              {
                break;
              }

              --v129;
              if (v130 <= v127)
              {
                goto LABEL_195;
              }
            }

            v130 = v129;
          }

LABEL_195:
          Index = usextract_getIndex(*(v323 + 3336), v127, v130);
          if ((Index & 0x80000000) != 0)
          {
            log_OutText(*(v317 + 32), v308, 3, 0, "unknown generic feature");
          }

          v135 = (v130 - 1);
          do
          {
            v136 = *++v135;
          }

          while (memchr(": \t", v136, 4uLL));
          v137 = strchr(v135, 59);
          if (!v137)
          {
            v137 = &v135[strlen(v135)];
          }

          if (v137 > v135)
          {
            v121 = v137;
            while (1)
            {
              v138 = *--v121;
              v139 = (1 << v138) & 0x100000201;
              if (v138 > 0x20 || v139 == 0)
              {
                break;
              }

              v137 = v121;
              if (v121 <= v135)
              {
                goto LABEL_210;
              }
            }
          }

          v121 = v137;
LABEL_210:
          if ((Index & 0x80000000) == 0)
          {
            v141 = usextract_getIndex(*(*(v323 + 3344) + 8 * Index), v135, v121);
            if ((v141 & 0x80000000) != 0)
            {
              log_OutText(*(v317 + 32), v308, 3, 0, "unknown generic feature");
            }

            else
            {
              *(v309 + Index) = *(*(*(v323 + 3352) + 8 * Index) + v141);
            }
          }

LABEL_214:
          v10 = v317;
          v61 = a4;
          if (!v121)
          {
            goto LABEL_217;
          }
        }

        goto LABEL_217;
      }

LABEL_180:
      v100 = v321;
    }
  }

  v142 = v313;
  v143 = v323;
  if (a6[57])
  {
    v144 = v338;
    __s1 = 0;
    HIWORD(v342) = 0;
    if (v304)
    {
      v27 = 2229280775;
      goto LABEL_571;
    }

    LOWORD(v339) = 0;
    LOWORD(v341) = 0;
    v344 = 0;
    v145 = (*(v318 + 152))(v61, v100, 4, v338, &v342 + 2, v313);
    v146 = 0;
    if ((v145 & 0x80000000) == 0 && HIWORD(v342))
    {
      v147 = (*(v318 + 104))(v61, v100, 4, v144, &v339);
      if ((v147 & 0x80000000) != 0 || (v147 = (*(v318 + 104))(v61, v100, 5, v339, &v341), (v147 & 0x80000000) != 0))
      {
LABEL_587:
        v27 = v147;
        v26 = v319;
        *v319 = 0;
        goto LABEL_572;
      }

      v146 = 0;
      if (v312)
      {
        v148 = v341;
        if (v341)
        {
          v149 = v100;
          v150 = 0;
          do
          {
            v147 = (*(v318 + 176))(v61, v149, v148, 0, &__s1, &v344);
            if ((v147 & 0x80000000) != 0)
            {
              goto LABEL_587;
            }

            if (__s1)
            {
              v151 = *__s1;
              if (v151 == 35 || *(v311 + v151) != 255)
              {
                v147 = (*(v318 + 168))(v61, v321, v341, 1, 1, &v344 + 2, &v344);
                if ((v147 & 0x80000000) != 0)
                {
                  goto LABEL_587;
                }

                v319[v150] = *__s1;
                v316[v150++] = BYTE2(v344);
              }
            }

            v149 = v321;
            (*(v318 + 112))(v61, v321, v341, &v341);
            v148 = v341;
            if (v341)
            {
              v152 = v312 > v150;
            }

            else
            {
              v152 = 0;
            }
          }

          while (v152);
          v146 = v150;
          v100 = v321;
        }
      }
    }

    v307 = 0;
    v319[v146] = 0;
    v142 = v313;
    if (*v319 == 35)
    {
      v143 = v323;
      if (v320 >= 1)
      {
        v153 = v320 - 1;
        if (*(a6[4] + v153) == 35)
        {
          *(a6[57] + v153) = *v316;
          v307 = 1;
        }

        else
        {
          v307 = 0;
        }
      }
    }

    else
    {
      v143 = v323;
    }
  }

  if (!v107 || !*v107)
  {
    goto LABEL_279;
  }

  v154 = *(a6 + 880);
  if (v154 > HIDWORD(v334))
  {
    v155 = v154 - HIDWORD(v334);
    v156 = (a6[439] + 32 * HIDWORD(v334));
    while (v156[3] - v142 <= v331)
    {
      if (*v156 == 26)
      {
        if (v327 | v328)
        {
          break;
        }

        v158 = v320 > 1;
        v157 = v336 != 14;
        v159 = v334;
        if (v336 != 14 && v334 == 0 && v320 >= 2)
        {
          v159 = 5;
          LODWORD(v334) = 5;
          v158 = 1;
          v333 = 1;
          v157 = 1;
        }

        goto LABEL_254;
      }

      v156 += 8;
      if (!--v155)
      {
        break;
      }
    }
  }

  v157 = 0;
  v158 = v320 > 1;
  v159 = v334;
LABEL_254:
  if (v159)
  {
    v160 = !v158;
  }

  else
  {
    v160 = 1;
  }

  if (v160)
  {
    if (v305 && v320 >= 1 && !*(v143 + 2692))
    {
      *(a6[451] + ((((v320 * *(v143 + 3578)) << 32) - 0x100000000) >> 30)) = -1;
    }
  }

  else
  {
    usextract_insertPause(&v345, a6, v159, v333, v320, v142, v331, &v334 + 1);
    v161 = a6[57];
    if (v161)
    {
      v162 = v323;
      if (*(a6[4] + v320) == v319[v307])
      {
        *(v161 + v320) = v316[v307++];
      }
    }

    else
    {
      v162 = v323;
    }

    if (v327 && *(v162 + 3578))
    {
      memset_pattern16((a6[451] + 4 * v320 * *(v162 + 3578)), &unk_1C37B1390, 4 * *(v162 + 3578));
    }

    v320 = (v320 + 1);
  }

  if (!v157)
  {
    v305 = 0;
LABEL_279:
    v310 = 0;
    goto LABEL_280;
  }

  v163 = *a6;
  if (strstr((*a6 + 152), "bet4") || strstr((v163 + 152), "bet5"))
  {
    usextract_insertPause(&v345, a6, 5u, 1, v320, v313, v331, &v334 + 1);
    v164 = a6[57];
    if (v164 && *(a6[4] + v320) == v319[v307])
    {
      *(v164 + v320) = v316[v307++];
    }

    v305 = 0;
    v320 = (v320 + 1);
    v310 = 1;
  }

  else
  {
    v305 = 0;
    v310 = 1;
  }

LABEL_280:
  if (v336 != 11)
  {
    if (v336 == 14)
    {
      LODWORD(v327) = 1;
    }

    else if (v336 == 13)
    {
      goto LABEL_283;
    }

LABEL_311:
    WordPrm = usextract_readSilDur(v318, v61, v100, v338, &v334, &v333);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }

    v171 = *(a6 + 880);
    v172 = HIDWORD(v334);
    if (HIDWORD(v334) < v171)
    {
      v173 = (a6[439] + 32 * HIDWORD(v334) + 12);
      v174 = v313;
      while (1)
      {
        v175 = *v173;
        v173 += 8;
        if (v175 - v174 > v331)
        {
LABEL_327:
          v10 = v317;
          v100 = v321;
          goto LABEL_328;
        }

        if (!v310)
        {
          break;
        }

        v176 = *a6;
        if (strstr((*a6 + 152), "bet4"))
        {
          v174 = v313;
          if (v320 < 1)
          {
            break;
          }
        }

        else
        {
          if (strstr((v176 + 152), "bet5"))
          {
            v178 = v320 <= 0;
          }

          else
          {
            v178 = 1;
          }

          v174 = v313;
          if (v178)
          {
            break;
          }
        }

        v177 = (a6[225] + 2 * v320 - 2);
LABEL_325:
        ++*v177;
        if (v171 == ++v172)
        {
          v172 = v171;
          goto LABEL_327;
        }
      }

      v177 = (a6[225] + 2 * v320);
      goto LABEL_325;
    }

LABEL_328:
    HIDWORD(v334) = v172;
    v61 = a4;
    if (!v107 || !*v107)
    {
      v43 = v318;
      v99 = v320;
      goto LABEL_559;
    }

    usextract_handleWordStart(&v345, a6, v107, v320);
    v179 = v322;
    v43 = v318;
    if (a6[35])
    {
      v180 = 0;
      do
      {
        v181 = v107[v180];
        if (v181 <= 0x2D && ((1 << v181) & 0x200800000001) != 0)
        {
          break;
        }

        v183 = v181 - 49;
        if ((v181 - 49) < 4u)
        {
          goto LABEL_340;
        }

        ++v180;
      }

      while (v181 != 53);
      v183 = 0;
LABEL_340:
      BYTE2(v347) = v183;
    }

    usextract_handleBoundaryShape(&v345, v323);
    LOWORD(v332) = 0;
    v184 = v315;
    if (!v315)
    {
LABEL_558:
      v10 = v317;
      v250 = v107;
      v99 = v320;
      usextract_handleWordEnd(&v325, &v345, v317, v308, a6, v250, v320);
      goto LABEL_559;
    }

    v185 = 0;
    v186 = 0;
    while (2)
    {
      if (v179)
      {
        if (__len_4 == -1)
        {
          v190 = 0;
          goto LABEL_353;
        }

        v187 = __len_6;
        if (__len_6 == -1 || v185 <= __len_6)
        {
          if (v185 > v355)
          {
            LOWORD(v190) = v355;
            v189 = 1;
            goto LABEL_370;
          }
        }

        else
        {
          v190 = __len_6;
LABEL_353:
          __len_4 = v190;
          v187 = v190;
          do
          {
            __len_6 = ++v187;
            v191 = v107[v187];
            if (v107[v187])
            {
              v192 = v179 == v191;
            }

            else
            {
              v192 = 1;
            }
          }

          while (!v192);
          v189 = 0;
          if (v190)
          {
            v193 = 2;
          }

          else
          {
            v193 = 1;
          }

          if (v190)
          {
            v194 = 3;
          }

          else
          {
            v194 = 0;
          }

          if (v179 == v191)
          {
            v195 = v193;
          }

          else
          {
            v195 = v194;
          }

          BYTE9(v349[9]) = v195;
          v355 = v190;
          if (v107[v190 + 1] == 45)
          {
            LOWORD(v190) = v190 + 1;
          }

          while (1)
          {
LABEL_370:
            LOWORD(v190) = v190 + 1;
            v355 = v190;
            if (!v107[v190])
            {
LABEL_373:
              if (v189)
              {
                v196 = 3;
              }

              else
              {
                v196 = 0;
              }

              goto LABEL_379;
            }

            if (v107[v190] == 45)
            {
              break;
            }

            if (v190 >= v187)
            {
              goto LABEL_373;
            }
          }

          if (v189)
          {
            v196 = 2;
          }

          else
          {
            v196 = 1;
          }

LABEL_379:
          BYTE10(v349[9]) = v196;
        }
      }

      v197 = &v107[v186];
      v198 = *v197;
      v199 = *a6;
      if (*(v311 + v198) != 255)
      {
        if (BYTE7(v346) != 255)
        {
          ++BYTE7(v346);
          LOBYTE(v198) = *v197;
        }

        *(a6[4] + v320) = v198;
        v200 = WORD6(v349[9]);
        if (WORD6(v349[9]) != 218)
        {
          v201 = 1;
          do
          {
            *(v15[v200] + v320) = *(&v345 + v200 + 1);
            v200 = *(&v349[9] + v201++ + 6);
          }

          while (v200 != 218);
        }

        v202 = *(*a6 + 3336);
        v100 = v321;
        if (v202 && *v202)
        {
          v203 = 0;
          v204 = v202 + 1;
          do
          {
            *(*(a6[438] + 8 * v203) + v320) = v350[v203];
          }

          while (v204[v203++]);
        }

        v206 = a6[33];
        if (v206)
        {
          v207 = v185 + 1;
          if (v207 < v184)
          {
            v208 = strchr((v199 + 2400), v107[v207]);
            v184 = v315;
            if (v208)
            {
              *(v206 + v320) = v208 - (v199 + 96) + 1;
            }
          }

          v209 = a6[34];
          v100 = v321;
          if (v209)
          {
            v210 = v320 - 1;
            if (*(a6[4] + v210) == 35)
            {
              v211 = strlen((v199 + 2400));
              v184 = v315;
              v212 = v211 + 1;
            }

            else if (*(a6[14] + v210))
            {
              v212 = *(a6[33] + v210);
            }

            else
            {
              v212 = *(v209 + v210);
            }

            *(v209 + v320) = v212;
          }
        }

        if (BYTE6(v346) <= 1u)
        {
          BYTE6(v346) = 2;
        }

        BYTE6(v349[0]) = 0;
        v219 = a6[57];
        v43 = v318;
        if (v219 && *(a6[4] + v320) == v319[v307])
        {
          *(v219 + v320) = v316[v307++];
        }

        v220 = *a6;
        if (v327)
        {
          if (*(v220 + 3578))
          {
            memset_pattern16((a6[451] + 4 * v320 * *(v220 + 3578)), &unk_1C37B1390, 4 * *(v220 + 3578));
            v184 = v315;
          }

          goto LABEL_440;
        }

        if (!HIDWORD(v327))
        {
          goto LABEL_440;
        }

        if (LOBYTE(v329[1]))
        {
          --LOBYTE(v329[1]);
          goto LABEL_440;
        }

        if (HIDWORD(v329[1]))
        {
LABEL_445:
          DWORD1(v330) = 0;
          goto LABEL_446;
        }

        v227 = a6[4];
        v228 = *(v227 + v320);
        v229 = v326;
        v230 = *v326;
        if (v228 != 35 && v230 == 35)
        {
          do
          {
            v326 = v229 + 1;
            skipUnvalidPhonemes(v220, &v326);
            v229 = v326;
            v329[3] += 4 * *(v220 + 3578);
            v230 = *v326;
          }

          while (v230 == 35);
          v228 = *(v227 + v320);
          v184 = v315;
          v100 = v321;
        }

        v43 = v318;
        if (v228 == v230)
        {
          if (!HIDWORD(v329[1]))
          {
            if (LODWORD(v329[2]))
            {
              LODWORD(v329[2]) = 0;
              v231 = *(v220 + 3578);
            }

            else
            {
              v231 = *(v220 + 3578);
              *(a6[451] + 4 * v320 * *(v220 + 3578)) = *v329[3];
            }

            if (v231 >= 2)
            {
              v245 = v231;
              v246 = v231 - 1;
              v247 = (a6[451] + 4 * v320 * v245 + 4);
              v248 = v329[3] + 4;
              do
              {
                v249 = *v248;
                v248 += 4;
                *v247++ = v249;
                --v246;
              }

              while (v246);
            }

            if (*v229)
            {
              v326 = v229 + 1;
              skipUnvalidPhonemes(v220, &v326);
              v184 = v315;
              v329[3] += 4 * *(v220 + 3578);
            }

LABEL_440:
            v320 = (v320 + 1);
            v61 = a4;
LABEL_441:
            v179 = v322;
LABEL_442:
            LOWORD(v332) = ++v186;
            v185 = v186;
            if (v184 <= v186)
            {
              goto LABEL_558;
            }

            continue;
          }
        }

        else
        {
          HIDWORD(v329[1]) = 1;
          v238 = strlen(v229);
          v184 = v315;
          if (v238 > 1)
          {
            goto LABEL_445;
          }
        }

LABEL_446:
        if (v320 >= 1 && *(a6[4] + v320) != 35 && !*(v220 + 2692))
        {
          *(a6[451] + ((((v320 * *(v220 + 3578)) << 32) - 0x100000000) >> 30)) = -1;
        }

        goto LABEL_440;
      }

      break;
    }

    LOWORD(__s1) = 0;
    if (v198 > 48)
    {
      if ((v198 - 49) < 5)
      {
        if (a6[35])
        {
          v213 = 0;
          v100 = v321;
          v179 = v322;
          do
          {
            v214 = v197[v213 + 1];
            if (v214 <= 0x2D && ((1 << v214) & 0x200800000001) != 0)
            {
              break;
            }

            v216 = v214 - 49;
            if ((v214 - 49) < 4u)
            {
              goto LABEL_409;
            }

            ++v213;
          }

          while (v214 != 53);
          v216 = 0;
LABEL_409:
          BYTE2(v347) = v216;
          goto LABEL_442;
        }

LABEL_423:
        if (!strchr((v199 + 2400), v198))
        {
          log_OutPublic(*(v317 + 32), v308, 19012, "%s%d%s%s", "phoneme", v198, "word", v107);
        }

        v100 = v321;
LABEL_426:
        v179 = v322;
        v184 = v315;
        goto LABEL_442;
      }

      if (v198 == 96)
      {
        v100 = v321;
        if (WORD4(v351) != v320)
        {
          log_OutPublic(*(v317 + 32), v308, 19015, "%s%s", "word", v107);
          v184 = v315;
        }

        BYTE10(v345) = 1;
        BYTE3(v346) = 7;
        BYTE4(v349[0]) = 7;
        BYTE2(v349[7]) = 12;
        goto LABEL_441;
      }

      if (v198 != 92)
      {
        goto LABEL_423;
      }

      v217 = usextract_GetSentType(v317, v308, v199, v197, v345, 1, &__s1);
      v184 = v315;
      BYTE14(v346) = v217;
      v218 = __s1 - 1;
      if (__s1 <= 1u)
      {
        v218 = 1;
      }

      v186 = v218 + v332;
LABEL_422:
      v100 = v321;
      goto LABEL_441;
    }

    switch(v198)
    {
      case '""':
        if (WORD4(v351) != v320)
        {
          log_OutPublic(*(v317 + 32), v308, 19013, "%s%s", "word", v107);
          v184 = v315;
        }

        v221 = v360++;
        BYTE10(v345) = 3;
        LOWORD(__len) = v320;
        BYTE3(v347) = 2;
        v100 = v321;
        v179 = v322;
        if (BYTE4(v346) <= 1u)
        {
          BYTE4(v346) = 2;
        }

        if (BYTE4(v349[7]) <= 2u)
        {
          if (BYTE1(v349[7]) <= 1u)
          {
            v222 = 3;
          }

          else
          {
            v222 = 4;
          }

          BYTE4(v349[7]) = v222;
        }

        if (v359 == -1)
        {
          v359 = v320;
        }

        if (v361)
        {
          v223 = 4;
        }

        else
        {
          v223 = 3;
        }

        if (v221)
        {
          v224 = 2;
        }

        else
        {
          v224 = v223;
        }

        BYTE3(v346) = v224;
        if (BYTE2(v349[0]) == 3)
        {
          v226 = 0;
          goto LABEL_509;
        }

        if (BYTE2(v349[0]) == 2)
        {
          goto LABEL_476;
        }

        break;
      case '\'':
        if (WORD4(v351) != v320)
        {
          log_OutPublic(*(v317 + 32), v308, 19014, "%s%s", "word", v107);
          v184 = v315;
        }

        BYTE10(v345) = 2;
        LOWORD(__len) = v320;
        BYTE3(v347) = 2;
        v100 = v321;
        v179 = v322;
        if (v359 == -1)
        {
          v359 = v320;
        }

        v225 = 1;
        BYTE3(v346) = 1;
        if (BYTE2(v349[0]) == 3)
        {
          v226 = 0;
          goto LABEL_514;
        }

        if (BYTE2(v349[0]) == 2)
        {
LABEL_476:
          if (HIDWORD(v356))
          {
            if (v356)
            {
              v226 = 5;
            }

            else
            {
              v226 = 4;
            }

LABEL_509:
            v225 = 1;
          }

          else
          {
            v225 = 1;
            v226 = 3;
          }

LABEL_514:
          BYTE4(v349[0]) = v226;
          switch(BYTE1(v349[7]))
          {
            case 4u:
              v239 = 0;
              goto LABEL_526;
            case 3u:
              if (HIDWORD(v357))
              {
                if (v357)
                {
                  v239 = 5;
                }

                else
                {
                  v239 = 4;
                }

LABEL_526:
                v240 = 1;
              }

              else
              {
                v240 = 1;
                v239 = 3;
              }

              break;
            case 2u:
              if (HIDWORD(v357))
              {
                if (v357)
                {
                  v239 = 10;
                }

                else
                {
                  v239 = 9;
                }

                goto LABEL_526;
              }

              v240 = 1;
              v239 = 8;
              break;
            default:
              v240 = 0;
              v239 = 11;
              break;
          }

          BYTE2(v349[7]) = v239;
          if (v225)
          {
            v356 = 0x100000001;
            WORD6(v351) = v320;
          }

          if (v240)
          {
            v357 = 0x100000001;
            HIWORD(v351) = v320;
          }

          goto LABEL_442;
        }

        break;
      case '-':
        if (WORD4(v351) == v320)
        {
          log_OutPublic(*(v317 + 32), v308, 19019, "%s%s", "word", v107);
          v184 = v315;
          goto LABEL_422;
        }

        WORD4(v351) = v320;
        v232 = v320 - 1;
        *(a6[14] + v232) = 1;
        BYTE10(v345) = 0;
        BYTE6(v346) = 1;
        v100 = v321;
        if (BYTE6(v347) != 255)
        {
          ++BYTE6(v347);
        }

        if (HIBYTE(v345) != 255)
        {
          ++HIBYTE(v345);
        }

        v233 = v197 + 1;
        if (strchr(v197 + 1, 45))
        {
          v234 = 2;
        }

        else
        {
          v234 = 3;
        }

        BYTE11(v345) = v234;
        BYTE7(v346) = 0;
        BYTE14(v345) = 2;
        BYTE3(v346) = 0;
        BYTE3(v349[0]) = 12;
        BYTE3(v349[7]) = 12;
        BYTE6(v349[0]) = 1;
        BYTE8(v349[0]) = 1;
        BYTE14(v349[0]) = 1;
        v235 = a6[72];
        if (v235)
        {
          *(v235 + v232) = 1;
        }

        if (v186)
        {
          v236 = a6[23];
          if (*(v236 + v232) == 2)
          {
            *(v236 + v232) = 3;
          }
        }

        BYTE4(v349[0]) = 8;
        BYTE2(v349[7]) = 13;
        if (BYTE3(v347) == 2)
        {
          BYTE3(v347) = 1;
        }

        v43 = v318;
        if (BYTE4(v346) == 2)
        {
          v237 = 3;
LABEL_535:
          BYTE4(v346) = v237;
        }

        else if (BYTE4(v346) == 3)
        {
          v237 = 4;
          goto LABEL_535;
        }

        if (BYTE4(v349[7]) - 3 <= 3)
        {
          BYTE4(v349[7]) += 2;
        }

        if (a6[35])
        {
          v241 = 0;
          do
          {
            v242 = v233[v241];
            if (v242 <= 0x2D && ((1 << v242) & 0x200800000001) != 0)
            {
              break;
            }

            v244 = v242 - 49;
            if ((v242 - 49) < 4u)
            {
              goto LABEL_548;
            }

            ++v241;
          }

          while (v242 != 53);
          v244 = 0;
LABEL_548:
          BYTE2(v347) = v244;
        }

        if (*v233 == 42)
        {
          log_OutPublic(*(v317 + 32), v308, 19016, "%s%s", "word", v107);
          LOWORD(v332) = ++v186;
        }

        goto LABEL_426;
      default:
        goto LABEL_423;
    }

    v225 = 0;
    v226 = 6;
    goto LABEL_514;
  }

LABEL_283:
  HIDWORD(v327) = 1;
  v303 = *a6;
  LOWORD(v339) = 0;
  LOWORD(v341) = 0;
  LODWORD(__s1) = 0;
  v306 = v338;
  WordPrm = (*(v318 + 176))(v61, v100);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  WordPrm = (*(v318 + 176))(v61, v100, v306, 15, &v326, &v339);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  valid = usextract_nrOfValidPhonemes(v303, v326);
  v165 = usextract_readSilDur(v318, v61, v100, v306, &__s1, 0);
  if ((v165 & 0x80000000) == 0)
  {
    v166 = *(v303 + 3578);
    if (__s1)
    {
      v167 = valid;
      v168 = v341;
      v61 = a4;
      if (v166 + v166 * valid == v341)
      {
        LODWORD(v330) = 1;
LABEL_293:
        v325 = v326;
        skipUnvalidPhonemes(v303, &v326);
        if (v336 == 13)
        {
          usextract_startNewPrompt(&v325, a6, v107, v320);
        }

        if (v329[0] && v325)
        {
          v169 = strlen(v329[0]);
          if (strlen(v325) + v169 > 0x1EF)
          {
            if (v169 <= 0x1EF)
            {
              *&v329[0][strlen(v329[0])] = 3026478;
            }

            log_OutText(*(v317 + 32), v308, 3, 0, "prompt too long for logging");
          }

          else
          {
            strcat(v329[0], v325);
          }

          v61 = a4;
        }

        v10 = v317;
        if (v107 && *(&v328 + 1))
        {
          v170 = strlen(*(&v328 + 1));
          if (strlen(v107) + v170 > 0x1EF)
          {
            if (v170 <= 0x1EF)
            {
              *(*(&v328 + 1) + strlen(*(&v328 + 1))) = 3026478;
            }

            log_OutText(*(v317 + 32), v308, 3, 0, "phon too long for prompt logging");
          }

          else
          {
            strcat(*(&v328 + 1), v107);
          }

          v61 = a4;
        }

        goto LABEL_311;
      }
    }

    else
    {
      v168 = v341;
      v61 = a4;
      v167 = valid;
    }

    LODWORD(v330) = 0;
    if (v166 * v167 != v168)
    {
      log_OutText(*(v317 + 32), v308, 3, 0, "Warning (incoherent prompt): %d segment ids for %d valid phones", v168, v167);
      HIDWORD(v329[1]) = 1;
      DWORD1(v330) = 0;
    }

    goto LABEL_293;
  }

  v27 = v165;
  v10 = v317;
LABEL_571:
  v26 = v319;
LABEL_572:
  v25 = v316;
LABEL_573:
  if (log_HasTraceTuningDataSubscriber(*(v10 + 32)))
  {
    log_OutTraceTuningData(*(v10 + 32), 301, "%s%s %s%.*s", v253, v254, v255, v256, v257, "END");
  }

  if (*(&v328 + 1))
  {
    heap_Free(*(v10 + 8), *(&v328 + 1));
  }

  if (v329[0])
  {
    heap_Free(*(v10 + 8), v329[0]);
  }

  if (v26)
  {
    heap_Free(*(v10 + 8), v26);
  }

  if (v25)
  {
    heap_Free(*(v10 + 8), v25);
  }

  if (v350)
  {
    heap_Free(*(v10 + 8), v350);
  }

  return v27;
}