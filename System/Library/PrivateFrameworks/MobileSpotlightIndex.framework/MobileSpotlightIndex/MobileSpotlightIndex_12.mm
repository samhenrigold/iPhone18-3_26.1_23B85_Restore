uint64_t _performSearch(SISearchCtx_METADATA *this, PartialQueryResults *a2)
{
  v244 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v206 = *__error();
    v207 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "_performSearch";
      _os_log_impl(&dword_1C278D000, v207, OS_LOG_TYPE_DEFAULT, "Enter %s", buf, 0xCu);
    }

    *__error() = v206;
  }

  v4 = *(*(this + 3) + 2072);
  v5 = *(this + 1);
  v6 = 320;
  if (*(this + 644))
  {
    v6 = 304;
  }

  v7 = *(v5 + v6);
  v8 = *(this + 23);
  if (v8 || (v9 = v7, *(this + 22)))
  {
    v9 = v7;
    if (*(*(this + 13) + 99) == 1)
    {
      v10 = *(this + 40);
      v9 = v7;
      if (v10 <= 6)
      {
        if (((1 << v10) & 0x4A) != 0)
        {
          updated = SISearchCtx_METADATA::updateGroupingCount(this);
          MEMORY[0x1EEE9AC00](v15);
          v17 = &v223 - v16;
          bzero(&v223 - v16, v18);
          if (updated < 2)
          {
            goto LABEL_24;
          }

          v9 = 0;
          v19 = updated;
          for (i = 1; i != v19; ++i)
          {
            if (!v4 || CFBitVectorGetBitAtIndex(*(*(this + 3) + 2096), i))
            {
              v21 = *(this + 22);
              v201 = v21 <= *&v17[4 * i];
              v22 = v9 + 4 * v21;
              if (!v201)
              {
                v9 = v22;
              }
            }
          }

          if (!v9)
          {
LABEL_24:
            v9 = 8 * *(this + 22);
          }
        }

        else if (((1 << v10) & 0x24) != 0 || (v9 = v7, v10 == 4) && (v9 = v7, *(this + 22)))
        {
          v9 = v7;
          if (!*(v5 + 288))
          {
            v9 = v7;
            if (!*(v5 + 272))
            {
              v11 = atomic_load(this + 68);
              if (v8 <= v11)
              {
                return 0;
              }

              v12 = *(this + 23);
              v13 = atomic_load(this + 68);
              v9 = v12 - v13;
            }
          }
        }
      }
    }
  }

  v224 = v5;
  v23 = *(this + 1);
  v24 = *(this + 168);
  if (v24 >= 0xA)
  {
    v25 = 10;
  }

  else
  {
    v25 = *(this + 168);
  }

  v26 = v9 + v9 * (*(v23 + 480) + (1 << v25));
  *(this + 168) = v24 + 1;
  if (!v26)
  {
    v26 = 4096;
  }

  if (v26 >= v7)
  {
    v27 = v7;
  }

  else
  {
    v27 = v26;
  }

  if (*(this + 208) >= 2u)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(v23 + 16);
  if (v29)
  {
    v245.length = CFArrayGetCount(*(v23 + 16));
    v245.location = 0;
    if (CFArrayContainsValue(v29, v245, @"_kMDItemSDBInfo") || (v30 = *(*(this + 1) + 16), v246.length = CFArrayGetCount(v30), v246.location = 0, CFArrayContainsValue(v30, v246, @"kMDItemPhotosSceneClassificationLabels")) || (v31 = *(*(this + 1) + 16), v247.length = CFArrayGetCount(v31), v247.location = 0, CFArrayContainsValue(v31, v247, @"kMDItemPhotosSceneClassificationSynonyms")) || (v32 = *(*(this + 1) + 16), v248.length = CFArrayGetCount(v32), v248.location = 0, CFArrayContainsValue(v32, v248, @"kMDItemPhotosSceneClassificationConfidences")) || (v33 = *(*(this + 1) + 16), v249.length = CFArrayGetCount(v33), v249.location = 0, CFArrayContainsValue(v33, v249, @"kMDItemPhotosSceneClassificationIdentifiers")))
    {
      if (v28 > 0x10000)
      {
        v28 = 65537;
      }

      goto LABEL_68;
    }

    v23 = *(this + 1);
  }

  v34 = *(v23 + 24);
  if (v34)
  {
    v250.length = CFBitVectorGetCount(*(v23 + 24));
    v250.location = 0;
    CountOfBit = CFBitVectorGetCountOfBit(v34, v250, 1u);
  }

  else
  {
    v36 = *(v23 + 16);
    if (!v36)
    {
      goto LABEL_55;
    }

    CountOfBit = CFArrayGetCount(v36);
  }

  if (CountOfBit >= 2)
  {
    v37 = *(this + 1);
    v38 = *(v37 + 24);
    if (v38)
    {
      v251.length = CFBitVectorGetCount(*(v37 + 24));
      v251.location = 0;
      Count = CFBitVectorGetCountOfBit(v38, v251, 1u);
      goto LABEL_56;
    }

    v40 = *(v37 + 16);
    if (v40)
    {
      Count = CFArrayGetCount(v40);
      goto LABEL_56;
    }
  }

LABEL_55:
  Count = 1;
LABEL_56:
  if (v28 >= 0x28000 / Count)
  {
    v41 = *(this + 1);
    v42 = *(v41 + 24);
    if (v42)
    {
      v252.length = CFBitVectorGetCount(*(v41 + 24));
      v252.location = 0;
      v43 = CFBitVectorGetCountOfBit(v42, v252, 1u);
    }

    else
    {
      v44 = *(v41 + 16);
      if (!v44)
      {
        goto LABEL_66;
      }

      v43 = CFArrayGetCount(v44);
    }

    if (v43 >= 2)
    {
      v45 = *(this + 1);
      v46 = *(v45 + 24);
      if (v46)
      {
        v253.length = CFBitVectorGetCount(*(v45 + 24));
        v253.location = 0;
        v47 = CFBitVectorGetCountOfBit(v46, v253, 1u);
LABEL_67:
        v28 = 0x28000 / v47;
        goto LABEL_68;
      }

      v48 = *(v45 + 16);
      if (v48)
      {
        v47 = CFArrayGetCount(v48);
        goto LABEL_67;
      }
    }

LABEL_66:
    v47 = 1;
    goto LABEL_67;
  }

LABEL_68:
  v49 = 16;
  if (*(this + 644))
  {
    v49 = 0;
  }

  v50 = *(v5 + 300 + v49);
  v51 = **(*(this + 3) + 8 * *(this + 76) + 1024);
  v52 = v51;
  do
  {
    v53 = v52;
    v52 = *v52;
  }

  while (v52);
  if ((*(v53 + 34) > 1u || *(v53 + 33) <= 3) && (*(v51 + 136) > 1u || *(v51 + 132) < 4))
  {
    v231 = 0;
  }

  else
  {
    v50 = fmin(v50, 0.05);
    if (v28 >= 0xBB8)
    {
      v28 = 3000;
    }

    v231 = 1;
  }

  v54 = *__error();
  v55 = _SILogForLogForCategory(1);
  v56 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = *(v53 + 33);
    *buf = 134218496;
    *&buf[4] = v28;
    v240 = 2048;
    v241 = v50;
    v242 = 1024;
    v243 = v57;
    _os_log_impl(&dword_1C278D000, v55, v56, "Batch size: %ld. Timeout: %f. Waiting: %d", buf, 0x1Cu);
  }

  *__error() = v54;
  Current = CFAbsoluteTimeGetCurrent();
  v229 = (this + 600);
  v59 = v50 + Current;
  *&v60 = 136315138;
  v223 = v60;
  *&v60 = 134218240;
  v226 = v60;
  *&v60 = 134217984;
  v225 = v60;
  v61 = 1;
  v230 = a2;
  while (1)
  {
    v62 = *(this + 75);
    v63 = *(this + 76);
    if (v62 == v63)
    {
      if (*(a2 + 432) == 1)
      {
        v64 = *(a2 + 433);
      }

      else
      {
        v64 = PartialQueryResults::__needsWhatFieldsMatched(a2);
        *(a2 + 433) = v64;
        *(a2 + 432) = 1;
      }

      v65 = v229;
      *v229 = 0;
      v65[1] = 0;
      v61 = refillOids(this, (v64 & 1) == 0, v59, v28);
      if (dword_1EBF46AD0 >= 5)
      {
        v196 = *__error();
        v197 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
        {
          v198 = "false";
          if (v61)
          {
            v198 = "true";
          }

          *buf = v223;
          *&buf[4] = v198;
          _os_log_impl(&dword_1C278D000, v197, OS_LOG_TYPE_DEFAULT, "Refilled oids. More: %s", buf, 0xCu);
        }

        *__error() = v196;
      }

      v62 = *(this + 75);
      v63 = *(this + 76);
      if (!v62)
      {
        return v61;
      }
    }

    else
    {
      if (!v63)
      {
        v202 = __si_assert_copy_extra_332();
        v203 = v202;
        v204 = "";
        if (v202)
        {
          v204 = v202;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 4189, "self->currentOid!=0", v204);
        free(v203);
        if (__valid_fs(-1))
        {
          v205 = 2989;
        }

        else
        {
          v205 = 3072;
        }

        *v205 = -559038737;
        abort();
      }

      if (!v62)
      {
        return v61;
      }
    }

    v66 = *(this + 77);
    if (!v66)
    {
      return v61;
    }

    v67 = *(this + 13);
    if (*(v67 + 96))
    {
      return v61;
    }

    do
    {
      v68 = v67;
      v67 = *(v67 + 80);
    }

    while (v67);
    if (*(*(v68 + 8) + 12))
    {
      return v61;
    }

    v69 = v62 - v63;
    if (v28 >= v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = v28;
    }

    v71 = *(*(this + 3) + 2072);
    v233 = v28;
    v234 = v61;
    if (v71)
    {
LABEL_107:
      v77 = v70;
      goto LABEL_140;
    }

    v72 = *(this + 83);
    v73 = v72 ? (v72 + 2 * v63) : 0;
    v237 = *(this + 79);
    v238 = v73;
    v236 = *(this + 117);
    v74 = CFAbsoluteTimeGetCurrent();
    v75 = *(this + 4);
    if (v75 && CFArrayGetCount(v75))
    {
      v76 = 0;
    }

    else
    {
      if (*(this + 649))
      {
        goto LABEL_107;
      }

      v76 = 1;
    }

    if (!(v70 >> 17) && *MEMORY[0x1E69E9AC8] < v70)
    {
      ++sTotal;
    }

    v78 = malloc_type_zone_calloc(queryZone, 1uLL, v70, 0x5BAF1CEAuLL);
    if (!v78)
    {
      _log_fault_for_malloc_failure();
    }

    v79 = CFAbsoluteTimeGetCurrent();
    *(*(this + 1) + 424) = *(*(this + 1) + 424) + v79 - v74;
    v80 = *(this + 3);
    *buf = 0;
    v81 = *(v80 + 1416);
    v82 = *(v81 + 80);
    v235 = v66 + 8 * v63;
    v82(v81);
    if (*buf)
    {
      if (malloc_size(*buf))
      {
        v208 = __si_assert_copy_extra_332();
        v216 = v208;
        v217 = "";
        if (v208)
        {
          v217 = v208;
        }

        __message_assert_336(v208, v209, v210, v211, v212, v213, v214, v215, "SIVirtualPSIDSupport.c", 587, "malloc_size(map)==0", v217);
        free(v216);
        if (__valid_fs(-1))
        {
          v218 = 2989;
        }

        else
        {
          v218 = 3072;
        }

        *v218 = -559038737;
        abort();
      }

      munmap(*buf, 0x10000uLL);
    }

    v83 = CFAbsoluteTimeGetCurrent();
    v84 = *__error();
    v85 = _SILogForLogForCategory(1);
    v86 = 2 * (dword_1EBF46AD0 < 4);
    v87 = v83 - v79;
    if (os_log_type_enabled(v85, v86))
    {
      *buf = v226;
      *&buf[4] = v70;
      v240 = 2048;
      v241 = v87;
      _os_log_impl(&dword_1C278D000, v85, v86, "Scope checked %ld dbos in %f seconds!", buf, 0x16u);
    }

    *__error() = v84;
    v88 = *(this + 1);
    if (v76)
    {
      *(v88 + 424) = *(v88 + 424) + v87;
    }

    else
    {
      *(v88 + 432) = *(v88 + 432) + v87;
    }

    v89 = v238;
    v227 = v78;
    v228 = v70;
    if (v70)
    {
      v90 = v70;
      v77 = 0;
      v91 = &v237[v63];
      v92 = &v236[10 * v63];
      v93 = v238;
      v232 = &v237[v63];
      v94 = v92;
      v95 = v235;
      do
      {
        v97 = *v78++;
        v96 = v97;
        if (v97 == 2)
        {
          _SIDeleteAttributes(*(this + 3), *v95);
          v89 = v238;
        }

        else if (!v96)
        {
          if (v89)
          {
            *(v89 + v77) = *v93;
          }

          if (v237)
          {
            v232[v77] = *v91;
          }

          if (v236)
          {
            v98 = &v92[10 * v77];
            *v98 = *v94;
            v99 = *(v94 + 1);
            v100 = *(v94 + 2);
            v101 = *(v94 + 4);
            *(v98 + 3) = *(v94 + 3);
            *(v98 + 4) = v101;
            *(v98 + 1) = v99;
            *(v98 + 2) = v100;
          }

          *(v235 + 8 * v77++) = *v95;
        }

        ++v95;
        v94 += 10;
        ++v91;
        v93 = (v93 + 2);
        --v90;
      }

      while (v90);
    }

    else
    {
      v77 = 0;
    }

    free(v227);
    v102 = *__error();
    v103 = _SILogForLogForCategory(1);
    v104 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v103, v104))
    {
      *buf = v225;
      *&buf[4] = v77;
      _os_log_impl(&dword_1C278D000, v103, v104, "Permission for %ld items!", buf, 0xCu);
    }

    *__error() = v102;
    a2 = v230;
    v70 = v228;
LABEL_140:
    if (*(this + 644) == 1 && v77 == 0)
    {
      break;
    }

    v106 = *(this + 76) + v70;
    *(this + 76) = v106;
    if (!v77)
    {
      if (!v234)
      {
        return *v229 > v106;
      }

      return 1;
    }

    v107 = *(this + 13);
    if (*(v107 + 96))
    {
      return 0;
    }

    do
    {
      v108 = v107;
      v107 = *(v107 + 80);
    }

    while (v107);
    if (*(*(v108 + 8) + 12))
    {
      return 0;
    }

    v109 = *(a2 + 29);
    v110.n128_f64[0] = CFAbsoluteTimeGetCurrent();
    v111 = v110.n128_f64[0];
    v112 = *(this + 83);
    if (v112)
    {
      v113 = (v112 + 2 * v63);
    }

    else
    {
      v113 = 0;
    }

    v114 = *(this + 117);
    if (v114)
    {
      v115 = (v114 + 80 * v63);
    }

    else
    {
      v115 = 0;
    }

    v116 = *(this + 118);
    if (v116)
    {
      v117 = (v116 + 5 * v63);
    }

    else
    {
      v117 = 0;
    }

    v118 = *(this + 119);
    if (v118)
    {
      v119 = (v118 + 28 * v63);
    }

    else
    {
      v119 = 0;
    }

    if ((*(this + 641) & 1) != 0 || *(*(this + 105) + 16) || *(this + 40) == 3)
    {
      v120 = 1;
    }

    else if (v109)
    {
      v120 = *(*(this + 13) + 99);
    }

    else
    {
      v120 = 0;
    }

    if (!*(this + 640) || (v121 = *(this + 79), (v121 == 0) | v120 & 1))
    {
      v122 = (*(this + 77) + 8 * v63);
      if (v120)
      {
        v123 = *(this + 79);
        if (v123)
        {
          v124 = (v123 + v63);
        }

        else
        {
          v124 = 0;
        }

        readSDBForOids(this, v122, v113, v115, v117, v119, v77, v124, v110, a2, 0, 0);
        goto LABEL_187;
      }

      v125 = this;
      v126 = v113;
      v127 = v115;
      v128 = v77;
LABEL_186:
      packOids(v125, v122, v126, v127, v128, a2, 0);
LABEL_187:
      v134 = v233;
      goto LABEL_188;
    }

    if (v63 >= v77 + v63)
    {
      goto LABEL_185;
    }

    v129 = 0;
    v130 = 0;
    v131 = (v114 + 80 * v63 + 69);
    do
    {
      if (*(v121 + v63 + v129))
      {
        ++v130;
      }

      else if (v114)
      {
        v132 = *(v131 - 37);
        v133 = *(v131 - 29);
        if (*v131)
        {
          v133 = 0;
          v132 = *(v131 - 1);
        }

        if (v132 | v133)
        {
          ++v130;
        }
      }

      ++v129;
      v131 += 80;
    }

    while (v77 != v129);
    if (!v130)
    {
LABEL_185:
      v122 = (*(this + 77) + 8 * v63);
      v125 = this;
      v126 = v113;
      v127 = v115;
      v128 = v77;
      a2 = v230;
      goto LABEL_186;
    }

    if (v77 == v130)
    {
      a2 = v230;
      readSDBForOids(this, (*(this + 77) + 8 * v63), v113, v115, v117, v119, v77, (v121 + v63), v110, v230, 0, 0);
      goto LABEL_187;
    }

    v232 = (v77 - v130);
    if (v130 <= v77 - v130)
    {
      v150 = v77 - v130;
    }

    else
    {
      v150 = v130;
    }

    v238 = malloc_type_zone_malloc(queryZone, 8 * v150, 0xA4971684uLL);
    if (!v238)
    {
      _log_fault_for_malloc_failure();
    }

    if (!v113)
    {
      goto LABEL_231;
    }

    v151 = malloc_type_zone_malloc(queryZone, 2 * v150, 0xA4971684uLL);
    if (!v151)
    {
      _log_fault_for_malloc_failure();
LABEL_231:
      v151 = 0;
    }

    v236 = v115;
    v237 = v151;
    if (v115)
    {
      v115 = malloc_type_zone_malloc(queryZone, 80 * v150, 0xA4971684uLL);
      if (!v115)
      {
        _log_fault_for_malloc_failure();
      }
    }

    v235 = v150;
    if (v117)
    {
      v152 = malloc_type_zone_malloc(queryZone, 5 * v150, 0xA4971684uLL);
      if (!v152)
      {
        _log_fault_for_malloc_failure();
      }
    }

    else
    {
      v152 = 0;
    }

    if (v119)
    {
      v153 = malloc_type_zone_malloc(queryZone, 28 * v235, 0xA4971684uLL);
      if (!v153)
      {
        _log_fault_for_malloc_failure();
      }
    }

    else
    {
      v153 = 0;
    }

    if (!*(this + 79))
    {
      goto LABEL_247;
    }

    v154 = malloc_type_zone_malloc(queryZone, v235, 0xA4971684uLL);
    if (!v154)
    {
      _log_fault_for_malloc_failure();
LABEL_247:
      v154 = 0;
    }

    v155 = *(this + 13);
    v156 = v155;
    do
    {
      v157 = v156;
      v156 = *(v156 + 80);
    }

    while (v156);
    v158 = *(*(v157 + 8) + 80);
    v159 = *(v155 + 80);
    v235 = v154;
    if (v159)
    {
      v160 = 0;
      do
      {
        v160 ^= *(v155 + 104) == 0;
        v155 = v159;
        v159 = *(v159 + 80);
      }

      while (v159);
      if (v160)
      {
        v161 = 3553;
      }

      else
      {
        v161 = 2781;
      }
    }

    else
    {
      v161 = 2781;
    }

    v162 = PartialQueryResults::start(v230, v158, v161, v77, 0);
    v164 = 0;
    v165 = v237;
    v166 = v236 + 69;
    v167 = v63;
    v168 = v113;
    v169 = v117;
    v170 = v119;
    v171 = v77;
    v172 = v238;
    v173 = v235;
    do
    {
      if (*(*(this + 79) + v167))
      {
        goto LABEL_259;
      }

      if (v115)
      {
        v180 = *(v166 - 37);
        v181 = *(v166 - 29);
        if (*v166)
        {
          v181 = 0;
          v180 = *(v166 - 1);
        }

        if (v180 | v181)
        {
LABEL_259:
          if (v165)
          {
            *&v165[2 * v164] = *v168;
          }

          if (v115)
          {
            v174 = &v115[10 * v164];
            *v174 = *(v166 - 69);
            v163 = *(v166 - 53);
            v175 = *(v166 - 37);
            v176 = *(v166 - 5);
            *(v174 + 3) = *(v166 - 21);
            *(v174 + 4) = v176;
            *(v174 + 1) = v163;
            *(v174 + 2) = v175;
          }

          if (v152)
          {
            v177 = *v169;
            v178 = v152 + 5 * v164;
            v178[4] = *(v169 + 4);
            *v178 = v177;
          }

          if (v153)
          {
            v163 = *v170;
            v179 = &v153[7 * v164];
            *(v179 + 12) = *(v170 + 12);
            *v179 = v163;
          }

          if (v173)
          {
            v173[v164] = *(*(this + 79) + v167);
          }

          v172[v164++] = *(*(this + 77) + 8 * v167);
        }
      }

      v170 = (v170 + 28);
      v169 = (v169 + 5);
      v166 += 80;
      ++v168;
      ++v167;
      --v171;
    }

    while (v171);
    v228 = v162;
    readSDBForOids(this, v238, v237, v115, v152, v153, v130, v173, v163, v230, v162, 0);
    v183 = v237;
    v182 = v238;
    v184 = 0;
    v185 = (v236 + 4);
    v186 = v77;
    v187 = v232;
    do
    {
      if (!*(*(this + 79) + v63) && (!v115 || *v185 == 0))
      {
        if (v183)
        {
          v183[v184] = *v113;
        }

        if (v115)
        {
          v188 = &v115[10 * v184];
          *v188 = *(v185 - 2);
          v189 = *(v185 - 1);
          v190 = *v185;
          v191 = v185[2];
          *(v188 + 3) = v185[1];
          *(v188 + 4) = v191;
          *(v188 + 1) = v189;
          *(v188 + 2) = v190;
        }

        if (v152)
        {
          v192 = *v117;
          v193 = v152 + 5 * v184;
          v193[4] = *(v117 + 4);
          *v193 = v192;
        }

        if (v153)
        {
          v194 = *v119;
          v195 = &v153[7 * v184];
          *(v195 + 3) = *(v119 + 12);
          *v195 = v194;
        }

        v182[v184++] = *(*(this + 77) + 8 * v63);
      }

      v119 = (v119 + 28);
      v117 = (v117 + 5);
      v185 += 5;
      ++v113;
      ++v63;
      --v186;
    }

    while (v186);
    a2 = v230;
    packOids(this, v182, v183, v115, v187, v230, v228);
    if (*(a2 + 186))
    {
      _MDPlistBytesEndArray();
      _MDPlistBytesEndPlist();
    }

    v134 = v233;
    if (*(a2 + 58))
    {
      _MDStoreOIDArrayEndBulkAdd();
      _MDStoreOIDArrayEndSequence();
      *(a2 + 443) = 0;
    }

    free(v238);
    free(v237);
    free(v115);
    free(v152);
    free(v153);
    free(v235);
LABEL_188:
    *(*(this + 1) + 416) = *(*(this + 1) + 416) + CFAbsoluteTimeGetCurrent() - v111;
    *(this + 644) = 0;
    v135 = *(this + 40);
    if (v135 == 3)
    {
      goto LABEL_191;
    }

    if (v135 != 2)
    {
      if (v135 != 1)
      {
        if (*(this + 22))
        {
          v143 = atomic_load(this + 68);
          if (v143 >= *(this + 22))
          {
            v144 = atomic_load(this + 68);
            if (v144 >= *(*(this + 1) + 216))
            {
              *(this + 96) = 1;
            }
          }
        }

        goto LABEL_209;
      }

LABEL_191:
      if ((*(this + 40) & 0x80) != 0)
      {
        v136 = atomic_load(this + 68);
        if (v136 >= *(this + 22))
        {
          v137 = atomic_load(this + 68);
          if (v137 >= *(*(this + 1) + 216))
          {
            return 0;
          }
        }
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v138 = *__error();
        v139 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          v140 = "true";
          if (!v234)
          {
            v140 = "false";
            if (*(this + 75) > *(this + 76))
            {
              v140 = "true";
            }
          }

          *buf = v223;
          *&buf[4] = v140;
          _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "Not enough data yet. More to collect: %s", buf, 0xCu);
        }

        *__error() = v138;
      }

      goto LABEL_209;
    }

    v141 = atomic_load(this + 68);
    if (v141 >= *(this + 22))
    {
      v142 = atomic_load(this + 68);
      if (v142 >= *(*(this + 1) + 216) && *(this + 208) < 2u)
      {
        return 0xFFFFFFFFLL;
      }
    }

LABEL_209:
    v145 = *(this + 13);
    if (*(v145 + 96))
    {
      goto LABEL_300;
    }

    do
    {
      v146 = v145;
      v145 = *(v145 + 80);
    }

    while (v145);
    if ((*(*(v146 + 8) + 12) & 1) != 0 || 3 * v77 >= 2 * v134 || (v28 = v134 - (v77 >> 1)) == 0)
    {
LABEL_300:
      v149 = v234;
LABEL_301:
      if (dword_1EBF46AD0 >= 5)
      {
        v219 = *__error();
        v220 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
        {
          v221 = PartialQueryResults::totalcount(a2);
          *buf = v226;
          *&buf[4] = this;
          v240 = 2048;
          v241 = *&v221;
          _os_log_impl(&dword_1C278D000, v220, OS_LOG_TYPE_DEFAULT, "%p found %ld results\n", buf, 0x16u);
        }

        *__error() = v219;
        if (v149)
        {
          return 1;
        }
      }

      else if (v149)
      {
        return 1;
      }

      return *(this + 75) > *(this + 76);
    }

    v147 = CFAbsoluteTimeGetCurrent();
    v148 = v231;
    if (v59 <= v147)
    {
      v148 = 1;
    }

    v149 = v234;
    if ((v148 & 1) == 0 && (*(this + 96) & 1) == 0)
    {
      v61 = 1;
      if (v234)
      {
        continue;
      }

      v61 = 0;
      if (*(this + 75) > *(this + 76))
      {
        continue;
      }
    }

    goto LABEL_301;
  }

  v199 = *(v224 + 304);
  v200 = v234;
  if (v70 == v199)
  {
    *(v224 + 304) = 4 * v199;
  }

  v106 = *(this + 76) + v70;
  *(this + 76) = v106;
  if (v200)
  {
    return 1;
  }

  return *v229 > v106;
}

void blob_free(void *a1, unsigned int a2, void *a3)
{
  v4 = 4 * a2;
  v5 = *MEMORY[0x1E69E9AC8];
  if (v4 >= *MEMORY[0x1E69E9AC8] >> 1)
  {

    munmap(a1, (v4 + v5 - 1) & -v5);
  }

  else if (a3 && a2 - 8 <= 0x37 && (HIDWORD(v7) = a2 - 8, LODWORD(v7) = a2 - 8, v6 = v7 >> 3, v6 <= 7) && ((0x8Bu >> v6) & 1) != 0)
  {
    v8 = qword_1C2BFF6A8[v6];
    v9 = a3 + 2;
    v10 = a3[v8 + 2];
    *a1 = 0;
    a1[1] = v10;
    if (v10)
    {
      v11 = *(v10 + 16) + 1;
    }

    else
    {
      v11 = 1;
    }

    *(a1 + 4) = v11;
    v9[v8] = a1;
    if (v11 >= 0x80u >> v8)
    {
      cicachelistenqueue(*a3 + 24 * v8 + 32, a1, 0);
      v9[v8] = 0;
    }
  }

  else
  {

    free(a1);
  }
}

_DWORD *_CIIndexSetConvertIfInvertedArrayIsMoreEfficient(_DWORD *result, void *a2, int8x8_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = result[5];
  v5 = result[6];
  v6 = v5 - v4;
  v7 = v5 - v4 + 1;
  v8 = (v5 - v4 + 48) / 0x30;
  if (result[4] + v7 + 10 < v8)
  {
    v9 = result;
    result = lockedCountItemsInRange(result, v4, v5, a3);
    v9[4] = -10 - result;
    v11 = v7 - result;
    if (v11 < v8)
    {
      v9[4] = -10 - v11;
      v12 = v9[8];
      v14 = v12 >= v11 && v12 < 2 * v11;
      if (v14)
      {
        if (v11 <= 0x1FF)
        {
          MEMORY[0x1EEE9AC00](v10);
          v16 = &buf[-v15];
          bzero(&buf[-v15], v17);
          v18 = 0;
          goto LABEL_32;
        }

        v28 = 4 * v11;
        if (v28 < *MEMORY[0x1E69E9AC8] >> 1)
        {
          v29 = malloc_type_zone_malloc(queryZone, v28, 0xA4971684uLL);
          v18 = v29;
          if (v29)
          {
            v16 = v29;
            goto LABEL_32;
          }

          _log_fault_for_malloc_failure();
          goto LABEL_31;
        }

        v30 = (v28 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      else
      {
        v19 = (v6 - result) | ((v6 - result) >> 1) | (((v6 - result) | ((v6 - result) >> 1)) >> 2);
        v20 = v19 | (v19 >> 4) | ((v19 | (v19 >> 4)) >> 8);
        v21 = v20 | HIWORD(v20);
        v11 = v21 + 1;
        v22 = 4 * (v21 + 1);
        if (v22 < *MEMORY[0x1E69E9AC8] >> 1)
        {
          if (a2)
          {
            v23 = v21 - 7;
            v26 = v23 > 0x37;
            HIDWORD(v25) = v23;
            LODWORD(v25) = v23;
            v24 = v25 >> 3;
            v26 = v26 || v24 > 7;
            if (!v26 && ((0x8Bu >> v24) & 1) != 0)
            {
              v45 = qword_1C2BFF6A8[v24];
              v18 = a2[v45 + 2];
              if (v18 || *a2 && (v46 = v22, v47 = cicachelistdequeue(*a2 + 24 * v45 + 32, 0), v22 = v46, (v18 = v47) != 0))
              {
                a2[v45 + 2] = *(v18 + 1);
                v16 = v18;
LABEL_32:
                v32 = v9[5];
                v31 = v9[6];
                v33 = (v31 - v32) >> 5;
                if (v31 - v32 >= 0x20)
                {
                  v34 = 0;
                  if (v33 <= 1)
                  {
                    v35 = 1;
                  }

                  else
                  {
                    v35 = (v31 - v32) >> 5;
                  }

                  v36 = 4 * v35;
                  do
                  {
                    *(*(v9 + 5) + v34) = ~*(*(v9 + 5) + v34);
                    v34 += 4;
                  }

                  while (v36 != v34);
                  v32 = v9[5];
                  v31 = v9[6];
                }

                if (v32 <= v31)
                {
                  v37 = -v32;
                  do
                  {
                    if (v33 != (v31 + v37) >> 5)
                    {
                      break;
                    }

                    *(*(v9 + 5) + 4 * v33) ^= 1 << (v31 + v37);
                    ++v32;
                    v31 = v9[6];
                    --v37;
                  }

                  while (v32 <= v31);
                  v32 = v9[5];
                }

                *buf = 0u;
                v49 = 0u;
                v38 = v9[4];
                if (v38 <= -10)
                {
                  DWORD2(v49) = 2;
                  *buf = v31;
                  *&buf[4] = v32;
                  *&v49 = v9;
LABEL_46:
                  *&buf[8] = 0;
                  goto LABEL_64;
                }

                if (v38 > -2)
                {
                  if (CFGetTypeID(v9) == __kCIIndexSetInvertedTypeID)
                  {
                    v40 = 3;
                  }

                  else
                  {
                    v40 = 1;
                  }

                  DWORD2(v49) = v40;
                  v38 = v9[4];
                  *buf = v31;
                  *&buf[4] = v32;
                  *&v49 = v9;
                  if (v38 >= 1)
                  {
                    v41 = binarySearchMap(v9, v31);
                    *&buf[8] = v41;
                    if (v41 != v9[9])
                    {
                      goto LABEL_64;
                    }

                    v39 = v9[8] + v41 - v9[4];
                    goto LABEL_63;
                  }

                  if ((v38 & 0x80000000) == 0 || v38 <= 0xFFFFFFF6)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  *buf = v31;
                  *&buf[4] = v32;
                  *&v49 = v9;
                }

                if (v38 <= 0xFFFFFFFD)
                {
                  if (v31 >= v9[8])
                  {
                    v39 = 0;
                    goto LABEL_63;
                  }

                  if (v38 != -3)
                  {
                    if (v31 >= v9[9])
                    {
                      v39 = 1;
                      goto LABEL_63;
                    }

                    if (v38 != -4)
                    {
                      if (v31 >= v9[10])
                      {
                        v39 = 2;
                        goto LABEL_63;
                      }

                      if (v38 != -5)
                      {
                        if (v31 >= v9[11])
                        {
                          v39 = 3;
                          goto LABEL_63;
                        }

                        if (v38 != -6)
                        {
                          if (v31 >= v9[12])
                          {
                            v39 = 4;
                            goto LABEL_63;
                          }

                          if (v38 != -7)
                          {
                            if (v31 >= v9[13])
                            {
                              v39 = 5;
                              goto LABEL_63;
                            }

                            if (v38 != -8 && v31 >= v9[14])
                            {
                              v39 = 6;
                              goto LABEL_63;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v39 = -2 - v38;
LABEL_63:
                *&buf[8] = v39;
LABEL_64:
                v42 = _CIIndexSetEnumeratorNext(buf);
                if (v42)
                {
                  v43 = 0;
                  do
                  {
                    v44 = (v43 + 1);
                    v16[v43] = v42;
                    v42 = _CIIndexSetEnumeratorNext(buf);
                    v43 = v44;
                  }

                  while (v42);
                  if (v14)
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                  v44 = 0;
                  if (v14)
                  {
LABEL_68:
                    v9[4] = 0;
                    v9[9] = 0;
                    _CIIndexSetAddSortedIndexes(v9, v16, v44, 1, a2, 1);
                    if (v18)
                    {
                      blob_free(v18, v11, a2);
                    }

                    return _CFRuntimeSetInstanceTypeID();
                  }
                }

                blob_free(*(v9 + 5), v9[8], a2);
                *(v9 + 5) = v16;
                v9[4] = v44;
                v9[8] = v11;
                v9[9] = v44;
                return _CFRuntimeSetInstanceTypeID();
              }
            }
          }

          v27 = malloc_type_zone_malloc(queryZone, v22, 0xA4971684uLL);
          if (!v27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            }

            v18 = 0;
LABEL_31:
            v16 = 0;
            goto LABEL_32;
          }

LABEL_29:
          v18 = v27;
          v16 = v27;
          goto LABEL_32;
        }

        v30 = (v22 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      v27 = mmap(0, v30, 3, 4098, -134217728, 0);
      goto LABEL_29;
    }
  }

  return result;
}

BOOL PartialQueryResults::__needsWhatFieldsMatched(PartialQueryResults *this)
{
  v3 = (this + 232);
  v2 = *(this + 29);
  if (*this == 1)
  {
    if (!v2)
    {
      return 0;
    }

    v4 = (this + 104);
    if (!*(this + 13))
    {
      v5 = *(this + 16);
      if (v5)
      {
        v28 = 0;
        SIFlattenArrayToCStringVector(v5, v4, &v28, &v27);
      }
    }
  }

  else
  {
    v6 = (this + 96);
    if (v2)
    {
      v7 = *(this + 12) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = *(this + 15);
      if (v8)
      {
        SIFlattenArrayToCStringVector(v8, v6, this + 30, v3);
        if (!*(this + 12))
        {
          v16 = __si_assert_copy_extra_332();
          v24 = v16;
          v25 = "";
          if (v16)
          {
            v25 = v16;
          }

          __message_assert_336(v16, v17, v18, v19, v20, v21, v22, v23, "SISearchCtx.h", 998, "fAttributeVector", v25);
          free(v24);
          if (__valid_fs(-1))
          {
            v26 = 2989;
          }

          else
          {
            v26 = 3072;
          }

          *v26 = -559038737;
          abort();
        }
      }
    }
  }

  v9 = *v3;
  if (*v3 < 1)
  {
    return 0;
  }

  v10 = 1;
  v11 = *(this + 12);
  v12 = *v3;
  v13 = 1;
  do
  {
    v14 = *v11;
    if (!strcmp("kMDQueryResultMatchedDisplayNameField", *v11))
    {
      break;
    }

    if (!strcmp("kMDQueryResultMatchedFields", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultContentRelevance", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultGroupId", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultTopMatchedField", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultTextContentDistances", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultHasTextContentMatch", v14))
    {
      break;
    }

    v13 = v9 > v10;
    ++v11;
    ++v10;
    --v12;
  }

  while (v12);
  return v13;
}

void SIFlattenArrayToCStringVector(const __CFArray *a1, char **a2, size_t *a3, CFIndex *a4)
{
  v30 = a3;
  v31 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  v8 = *a2;
  v9 = 8 * Count;
  MEMORY[0x1EEE9AC00](v10);
  v11 = (&v26 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  if (Count < 1)
  {
    if (!v8)
    {
      return;
    }

    goto LABEL_17;
  }

  v27 = a2;
  v28 = a4;
  v12 = 0;
  v13 = 0;
  v29 = v8;
  v14 = &v8[8 * Count];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
    Length = CFStringGetLength(ValueAtIndex);
    v17 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
    v18 = *v30;
    if (*v30 < (v17 + v9))
    {
      v20 = v29;
      do
      {
        if (v18)
        {
          v21 = 2 * v18;
        }

        else
        {
          v21 = 4096;
        }

        v22 = v30;
        *v30 = v21;
        v20 = malloc_type_realloc(v20, v21, 0x5C8D2EB9uLL);
        v18 = *v22;
      }

      while (*v22 < (v17 + v9));
      v29 = v20;
      v14 = &v20[8 * Count];
    }

    v11[v13] = v12;
    CFStringGetCString(ValueAtIndex, &v14[v12], v17, 0x8000100u);
    v19 = strlen(&v14[v12]);
    v12 += v19 + 1;
    v9 += v19 + 1;
    ++v13;
  }

  while (v13 != Count);
  a2 = v27;
  a4 = v28;
  v8 = v29;
  if (v29)
  {
    v23 = v29;
    v24 = Count;
    do
    {
      v25 = *v11++;
      *v23 = &v14[v25];
      v23 += 8;
      --v24;
    }

    while (v24);
LABEL_17:
    *a2 = v8;
    *a4 = Count;
  }
}

unint64_t *handleUpdate(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1[19] > a1[17])
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 328, "changes->hole <= changes->count", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  v5 = a5;
  result = changesHandleUpdate((a1 + 16), a2, a3);
  if (a1[19] > a1[17])
  {
    v15 = __si_assert_copy_extra(0);
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 330, "changes->hole <= changes->count", v17);
    free(v16);
    if (__valid_fs(-1))
    {
      v18 = 2989;
    }

    else
    {
      v18 = 3072;
    }

    *v18 = -559038737;
    abort();
  }

  if (a4)
  {
    v10 = a1[9];
    if (!v10)
    {
      v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200406E8F4065uLL);
      atomic_store(1u, v10 + 8);
      a1[9] = v10;
    }

    return distanceHolderSetMinDistance(v10, a2, v5, *(&a4 + 1));
  }

  return result;
}

void *CITokenizerCreate(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F0040AEFF90DEuLL);
  v3 = v2;
  if (v2)
  {
    v2[3] = 0;
    v2[4] = 0;
    *(v2 + 10) = a1;
    v4 = NLStringTokenizerCreate();
    v3[1] = v4;
    v3[2] = 0;
    if (!v4)
    {
      v6 = __si_assert_copy_extra_332();
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = "";
      }

      v9 = __error();
      __message_assert("%s:%u: failed assertion '%s' %s NLStringTokenizerCreate err:%d", "CITokenizer.c", 173, "false", v8, *v9);
      free(v7);
      if (__valid_fs(-1))
      {
        v10 = 2989;
      }

      else
      {
        v10 = 3072;
      }

      *v10 = -559038737;
      abort();
    }

    v3[7] = 0;
    v3[8] = 0;
  }

  return v3;
}

uint64_t unpackPosting(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = *a2;
  do
  {
    v6 = v5++;
    v4 |= (*(a1 + v6) & 0x7F) << v3;
    if ((*(a1 + v6) & 0x80) == 0)
    {
      break;
    }

    v7 = v3 == 63;
    v3 += 7;
  }

  while (!v7);
  *a2 = v5;
  *(a3 + 4) = v4;
  if (v4)
  {
    v12 = 0;
    *(a3 + 4) = v4 >> 1;
LABEL_9:
    *a3 = 1;
    return v12;
  }

  v8 = v6 + 2;
  v9 = *(a1 + v5);
  v10 = *(a1 + v5);
  if (v9 < 0)
  {
    v11 = v6 + 3;
    v13 = *(a1 + v8);
    v14 = *(a1 + v8);
    if (v13 < 0)
    {
      v15 = v6 + 4;
      v16 = *(a1 + v11);
      v17 = v16;
      if (v16 < 0)
      {
        v11 = v6 + 5;
        v19 = *(a1 + v15);
        v20 = *(a1 + v15);
        if (v19 < 0)
        {
          v22 = *(a1 + v11);
          if (v22 < 0)
          {
            v35 = __si_assert_copy_extra(0);
            v36 = v35;
            v37 = "";
            if (v35)
            {
              v37 = v35;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v37);
            free(v36);
            if (__valid_fs(-1))
            {
              v38 = 2989;
            }

            else
            {
              v38 = 3072;
            }

            *v38 = -559038737;
            abort();
          }

          v11 = v6 + 6;
          v21 = ((v20 & 0x7F) << 21) | (v22 << 28) | ((v17 & 0x7F) << 14);
        }

        else
        {
          v21 = ((v17 & 0x7F) << 14) | (v20 << 21);
        }

        v18 = v21 & 0xFFFFC000 | ((v14 & 0x7F) << 7) | v10 & 0x7F;
      }

      else
      {
        v18 = ((v14 & 0x7F) << 7) | (v16 << 14) | v10 & 0x7F;
        v11 = v15;
      }

      v10 = v18;
    }

    else
    {
      v10 = v10 & 0x7F | (v14 << 7);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

  *a2 = v11;
  *a3 = v10;
  *(a3 + 4) = v4 >> 1;
  if (v10)
  {
    return 0;
  }

  v24 = v11 + 1;
  v12 = *(a1 + v11);
  if (*(a1 + v11) < 0)
  {
    v25 = v11 + 2;
    v26 = *(a1 + v24);
    v27 = *(a1 + v24);
    if (v26 < 0)
    {
      v28 = v11 + 3;
      v29 = *(a1 + v25);
      v30 = v29;
      if (v29 < 0)
      {
        v25 = v11 + 4;
        v32 = *(a1 + v28);
        v33 = *(a1 + v28);
        if (v32 < 0)
        {
          v39 = *(a1 + v25);
          if (v39 < 0)
          {
            v40 = __si_assert_copy_extra(0);
            v41 = v40;
            v42 = "";
            if (v40)
            {
              v42 = v40;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v42);
            free(v41);
            if (__valid_fs(-1))
            {
              v43 = 2989;
            }

            else
            {
              v43 = 3072;
            }

            *v43 = -559038737;
            abort();
          }

          v25 = v11 + 5;
          v34 = ((v33 & 0x7F) << 21) | (v39 << 28) | ((v30 & 0x7F) << 14);
        }

        else
        {
          v34 = ((v30 & 0x7F) << 14) | (v33 << 21);
        }

        v31 = v34 & 0xFFFFC000 | ((v27 & 0x7F) << 7) | v12 & 0x7F;
      }

      else
      {
        v31 = ((v27 & 0x7F) << 7) | (v29 << 14) | (v12 & 0x7F);
        v25 = v28;
      }

      v12 = v31;
    }

    else
    {
      v12 = v12 & 0x7F | (v27 << 7);
    }
  }

  else
  {
    v25 = v11 + 1;
  }

  *a2 = v25;
  if (v12 != 2)
  {
    goto LABEL_9;
  }

  return v12;
}

void pqpush(void *result, uint64_t a2)
{
  if (*result == 1)
  {
    v14 = __si_assert_copy_extra(0);
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PQueue.h", 259, "!pqueue->has_meta", v16);
    free(v15);
    if (__valid_fs(-1))
    {
      v17 = 2989;
    }

    else
    {
      v17 = 3072;
    }

    *v17 = -559038737;
    abort();
  }

  v4 = result[2];
  v5 = result[3];
  v6 = result[1];
  if ((v5 + 2) >= v4)
  {
    v8 = 2 * v4;
    v9 = v4 < 4;
    v10 = 4;
    if (!v9)
    {
      v10 = v8;
    }

    result[2] = v10;
    v11 = 8 * v10;
    if (v6)
    {
      v12 = malloc_type_zone_realloc(queryZone, v6, v11 + 16, 0xA1A7ADA0uLL);
    }

    else
    {
      v12 = malloc_type_zone_malloc(queryZone, v11 + 16, 0x566E289CuLL);
    }

    v6 = v12;
    if (!v12)
    {
      _log_fault_for_malloc_failure();
    }

    result[1] = v6;
    *v6 = 0;
    v7 = result[3];
  }

  else
  {
    v7 = result[3];
  }

  result[3] = v7 + 1;
  v6[v5] = a2;
  if (v5 >= 2)
  {
    do
    {
      v13 = v6[v5 >> 1];
      if ((a2 & 0x3FFFFFFFFFFFFFFFuLL) > (v13 & 0x3FFFFFFFFFFFFFFFuLL))
      {
        break;
      }

      v6[v5] = v13;
      v6[v5 >> 1] = a2;
      v9 = v5 > 3;
      v5 >>= 1;
    }

    while (v9);
  }
}

void SISearchCtx_METADATA::cleanUp(SISearchCtx_METADATA *this, char a2)
{
  if (*(this + 208))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 105);
    do
    {
      v7 = *(v6 + v4 + 16);
      if (v7)
      {
        clear_node_field_caches(v7);
        v6 = *(this + 105);
      }

      v8 = *(v6 + v4 + 8);
      if (v8)
      {
        clear_node_field_caches(v8);
        v6 = *(this + 105);
      }

      v9 = *(v6 + v4 + 24);
      if (v9)
      {
        clear_node_field_caches(v9);
        v6 = *(this + 105);
      }

      v10 = *(v6 + v4 + 32);
      if (v10)
      {
        ContentIndexDocSetCleanupBorrowedChildren(v10);
        ContentIndexDocSetDispose(*(*(this + 105) + v4 + 32));
        v6 = *(this + 105);
        *(v6 + v4 + 32) = 0;
      }

      ++v5;
      v4 += 48;
    }

    while (v5 < *(this + 208));
  }

  *(this + 643) = 0;
  v11 = *(this + 85);
  if (v11)
  {
    if (a2)
    {
LABEL_14:
      v12 = *(this + 85);
      v13 = freeQueue;
      v14 = qos_class_self();
      if (v14 < 0x1A)
      {
        v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_5621);
      }

      else
      {
        v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v14, 0, &__block_literal_global_5621);
      }

      v23 = v15;
      dispatch_async(v13, v15);
      _Block_release(v23);
      dispatch_semaphore_wait(freeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      v24 = freeQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_3;
      block[3] = &__block_descriptor_tmp_7_5622;
      block[4] = v12;
      v25 = qos_class_self();
      if (v25 < 0x1A)
      {
        v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      }

      else
      {
        v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v25, 0, block);
      }

      v27 = v26;
      dispatch_async(v24, v26);
      _Block_release(v27);
      *(this + 85) = 0;
      goto LABEL_35;
    }

    if ((*(v11 + 58) & 1) == 0)
    {
      v16 = *(v11 + 16);
      if (!v16)
      {
        goto LABEL_56;
      }

      if (*v16 == 1)
      {
        goto LABEL_19;
      }

      v34 = *(v16 + 112);
      if (v34 >= 1)
      {
        v35 = *(v16 + 120);
        while (1)
        {
          v36 = *v35;
          if (*v35)
          {
            if (*(v36 + 40) == PayloadIterate && *(v36 + 136) > 0x8000)
            {
              break;
            }
          }

          ++v35;
          if (!--v34)
          {
            goto LABEL_57;
          }
        }

        LODWORD(v34) = 1;
      }

      else
      {
LABEL_56:
        LODWORD(v34) = 0;
      }

LABEL_57:
      v37 = *(*(*v11 + 8) + 4512);
      v38 = *(this + 3);
      v39 = *(v38 + 1392);
      v40 = *(v38 + 1384);
      if (v34)
      {
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 0x40000000;
        v55 = ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_1;
        v56 = &__block_descriptor_tmp_2_5619;
        v58 = v37;
        v57 = this;
        if (v39 && *(v39 + 8))
        {
          v41 = 0;
          while ((v55)(v54, *(*v39 + 8 * v41), 0))
          {
            if (++v41 >= *(v39 + 8))
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
LABEL_63:
          if (v40 && *(v40 + 8))
          {
            v42 = 0;
            do
            {
              if (!(v55)(v54, *(*v40 + 8 * v42), 1))
              {
                break;
              }

              ++v42;
            }

            while (v42 < *(v40 + 8));
          }
        }
      }

      else
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 0x40000000;
        v50 = ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_3;
        v51 = &__block_descriptor_tmp_4_5620;
        v53 = v37;
        v52 = this;
        if (v39 && *(v39 + 8))
        {
          v43 = 0;
          while ((v50)(v49, *(*v39 + 8 * v43), 0))
          {
            if (++v43 >= *(v39 + 8))
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
LABEL_74:
          if (v40 && *(v40 + 8))
          {
            v44 = 0;
            do
            {
              if (!(v50)(v49, *(*v40 + 8 * v44), 1))
              {
                break;
              }

              ++v44;
            }

            while (v44 < *(v40 + 8));
          }
        }
      }

      goto LABEL_14;
    }

LABEL_19:
    v17 = *(*(*v11 + 8) + 4512);
    v18 = *(this + 3);
    v19 = *(v18 + 1392);
    v20 = *(v18 + 1384);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 0x40000000;
    v60 = ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke;
    v61 = &__block_descriptor_tmp_5618;
    v63 = v17;
    v62 = this;
    if (v19 && *(v19 + 8))
    {
      v21 = 0;
      while ((v60)(v59, *(*v19 + 8 * v21), 0))
      {
        if (++v21 >= *(v19 + 8))
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      if (v20 && *(v20 + 8))
      {
        v22 = 0;
        do
        {
          if (!(v60)(v59, *(*v20 + 8 * v22), 1))
          {
            break;
          }

          ++v22;
        }

        while (v22 < *(v20 + 8));
      }
    }

    goto LABEL_14;
  }

LABEL_35:
  v28 = *(this + 103);
  if (v28)
  {
    *(v28 + 24) = 0;
    v29 = *(this + 103);
    if (*v29 != 3506)
    {
      v45 = __si_assert_copy_extra_332();
      v46 = v45;
      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 572, v47);
      free(v46);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (*(v29 + 250))
    {
      v30 = *(v29 + 1);
      if (v30)
      {
        v30();
      }
    }

    v31 = *(v29 + 255);
    if (v31)
    {
      free(v31);
    }

    if (v29[499] >= 1)
    {
      v32 = 0;
      do
      {
        free(*&v29[2 * v32++ + 8]);
      }

      while (v32 < v29[499]);
    }

    free(v29);
    *(this + 103) = 0;
  }

  v33 = *(this + 102);
  if (v33)
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 0x40000000;
    v64[2] = __db_query_tree_apply_block_block_invoke;
    v64[3] = &unk_1E8198ED0;
    v64[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v33, v64, 0);
    *(this + 102) = 0;
  }
}

uint64_t ipqpop(void *a1)
{
  v1 = a1[2];
  if (v1 == 1)
  {
    v26 = __si_assert_copy_extra(0);
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 83, "pqcount_ItemIteratorRef(queue)!=0", v28);
    free(v27);
    if (__valid_fs(-1))
    {
      v29 = 2989;
    }

    else
    {
      v29 = 3072;
    }

    *v29 = -559038737;
    abort();
  }

  v2 = a1[1];
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 8 * v1 - 8);
  *(*a1 + 8) = v4;
  a1[2] = v1 - 1;
  v5 = v2 >> 1;
  v6 = 1;
  v7 = 2;
  v8 = 3;
  do
  {
    v9 = *a1;
    v10 = *(*a1 + 8 * v7);
    if (v8 >= v1)
    {
      if (v7 >= v1)
      {
        return v3;
      }

      v11 = -1;
    }

    else
    {
      v11 = *(v9 + 8 * v8);
    }

    v12 = v4;
    if (v4 + 1 >= 2)
    {
      v12 = *(v4 + 8);
    }

    v13 = *(*a1 + 8 * v7);
    if (v10 + 1 >= 2)
    {
      v13 = *(v10 + 8);
    }

    v14 = v11;
    if ((v11 + 1) >= 2)
    {
      v14 = *(v11 + 8);
    }

    if (v13 >= v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    if (v13 >= v12)
    {
      v7 = v6;
    }

    if (v14 >= v15)
    {
      v16 = v7;
    }

    else
    {
      v16 = v8;
    }

    _X13 = v9 + 16 * v16;
    __asm { PRFM            #1, [X13] }

    if (v16 == v6)
    {
      break;
    }

    v7 = 2 * v16;
    v23 = v13 >= v12 ? v4 : v10;
    v24 = v14 >= v15 ? v23 : v11;
    *(v9 + 8 * v16) = v4;
    v8 = v7 | 1;
    *(*a1 + 8 * v6) = v24;
    v6 = v16;
  }

  while (v16 < v5);
  return v3;
}

uint64_t ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) != *(a1 + 40))
  {
    return 1;
  }

  if (!*(a2 + 15712))
  {
    return 0;
  }

  result = 0;
  *(*(a1 + 32) + 647) = 1;
  return result;
}

void *query_realloc(void *ptr, size_t size)
{
  if (ptr)
  {
    v2 = malloc_type_zone_realloc(queryZone, ptr, size, 0xA1A7ADA0uLL);
  }

  else
  {
    v2 = malloc_type_zone_malloc(queryZone, size, 0x566E289CuLL);
  }

  v3 = v2;
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  return v3;
}

{
  if (ptr)
  {
    result = malloc_type_zone_realloc(queryZone, ptr, size, 0xA1A7ADA0uLL);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = malloc_type_zone_malloc(queryZone, size, 0x566E289CuLL);
    if (result)
    {
      return result;
    }
  }

  v3 = result;
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  result = v3;
  if (v4)
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v5, 2u);
    return v3;
  }

  return result;
}

uint64_t _CIIndexSetAddIndexesInRange(uint64_t result, unsigned int a2, unsigned int a3, _DWORD *a4, int8x8_t a5)
{
  v107 = *MEMORY[0x1E69E9840];
  if (a2 > a3)
  {
    v78 = __si_assert_copy_extra_332();
    v86 = v78;
    v87 = "";
    if (v78)
    {
      v87 = v78;
    }

    __message_assert_336(v78, v79, v80, v81, v82, v83, v84, v85, "CIIndexSet.c", 2531, "start <=end", v87);
    goto LABEL_108;
  }

  v5 = *(result + 24);
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (*(result + 20) <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(result + 20);
  }

  v8 = v6 - v7;
  if (v6 < v7)
  {
    return result;
  }

  if (v6 == v7)
  {

    return _CIIndexSetAddIndex(result, v6, 0, a4, a5);
  }

  v10 = result;
  v11 = CFGetTypeID(result);
  v13 = v11;
  v14 = v10;
  if (v13 != __kCIIndexSetInvertedTypeID)
  {
    v15 = *(v10 + 16);
    if (v15 > -10 || ((v16 = *(v10 + 24) - *(v10 + 20), v17 = v8 - v15 - 9, v16 + 1 < v17) ? (v18 = v16 + 1) : (v18 = v17), v15 = -10 - v18, *(v10 + 16) = -10 - v18, (v18 & 0x80000000) != 0))
    {
      v19 = (v8 + 1);
      if (v15 >= -1)
      {
        v20 = *(v10 + 32);
      }

      else
      {
        v20 = 4;
      }

      if (v15 < -1)
      {
        v15 = -2 - v15;
      }

      if (v20 < v15 + v19)
      {
        _CIIndexSetMakeSpace(v10, v19, 0, 0, 0);
        v14 = v10;
      }
    }
  }

  if (*(v14 + 16) <= -10)
  {
    v21 = *(v14 + 24);
    v22 = v21 - v6;
    v23 = (v21 - v6) >> 5;
    v24 = v21 - v7;
    v25 = (v21 - v7) >> 5;
    if (v23 > v25)
    {
      v88 = __si_assert_copy_extra_332();
      v86 = v88;
      v96 = "";
      if (v88)
      {
        v96 = v88;
      }

      __message_assert_336(v88, v89, v90, v91, v92, v93, v94, v95, "CIIndexSet.c", 2463, "startSlot <=endSlot", v96);
    }

    else
    {
      if (v23 < *(v14 + 32))
      {
        v26 = v22 & 0x1F;
        v27 = v24 & 0x1F;
        if (v23 == v25)
        {
          v28 = v27 + 1;
          v29 = masks[v26];
          if (v26 != v28)
          {
            v29 = masks[v28] & ~v29;
          }
        }

        else
        {
          *(*(v14 + 40) + 4 * v23) |= ~masks[v26];
          v35 = v23 + 1;
          if (v35 < v25)
          {
            do
            {
              *(*(v14 + 40) + 4 * v35++) = -1;
            }

            while (v25 != v35);
          }

          v29 = masks[v27 + 1];
          v23 = v25;
        }

        *(*(v14 + 40) + 4 * v23) |= v29;

        return _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(v14, 0, v12);
      }

      v97 = __si_assert_copy_extra_332();
      v86 = v97;
      v105 = "";
      if (v97)
      {
        v105 = v97;
      }

      __message_assert_336(v97, v98, v99, v100, v101, v102, v103, v104, "CIIndexSet.c", 2464, "startSlot < set->_size", v105);
    }

LABEL_108:
    free(v86);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  result = CFGetTypeID(v14);
  if (result == __kCIIndexSetInvertedTypeID)
  {

    return CIIndexSetClearRange_Array(v10, v7, v6);
  }

  v30 = *(v10 + 16);
  if ((v30 & 0x80000000) != 0)
  {
    v36 = v10;
    v37 = -2;
    v38 = -2 - v30;
    v106 = *(v10 + 32);
    *(v10 + 16) = -2;
    if (v30 > 0xFFFFFFFD)
    {
      v40 = 0;
      LODWORD(v39) = 0;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = v10 + 32;
      v42 = -3;
      do
      {
        v37 = v42;
        v43 = *(&v106 + v40);
        if (v43 <= v6)
        {
          *(v41 + 4 * v39) = v6;
          *(v10 + 16) = v37;
          if (v43 == v6)
          {
            ++v40;
          }

          LODWORD(v6) = v6 - 1;
        }

        else
        {
          ++v40;
          *(v41 + 4 * v39) = v43;
          *(v10 + 16) = v37;
        }

        ++v39;
        if (v40 >= v38)
        {
          break;
        }

        v42 = v37 - 1;
      }

      while (v6 >= v7);
    }

    if (v40 >= v38)
    {
LABEL_92:
      if (v6 < v7)
      {
        return result;
      }

      v39 = v39;
      LODWORD(v65) = v6 - v7;
      if (v6 - 1 >= v7 - 1)
      {
        v65 = v65;
      }

      else
      {
        v65 = 0;
      }

      if (v65 >= 7)
      {
        v66 = v65 + 1;
        v67 = (v65 + 1) & 0x1FFFFFFF8;
        v68 = v37;
        v69 = 0uLL;
        v70 = vaddq_s32(vdupq_n_s32(v6), xmmword_1C2BFA430);
        v71 = (v36 + 4 * v39 + 48);
        v72.i64[0] = 0x300000003;
        v72.i64[1] = 0x300000003;
        v73.i64[0] = -1;
        v73.i64[1] = -1;
        v74.i64[0] = 0x700000007;
        v74.i64[1] = 0x700000007;
        v75 = v67;
        do
        {
          v71[-1] = v70;
          *v71 = vaddq_s32(v70, v72);
          v68 = vaddq_s32(v68, v73);
          v69 = vaddq_s32(v69, v73);
          v70 = vaddq_s32(v70, v74);
          v71 += 2;
          v75 -= 8;
        }

        while (v75);
        v37 = vaddvq_s32(vaddq_s32(v69, v68));
        if (v66 == v67)
        {
          goto LABEL_103;
        }

        v39 = v67 + v39;
        LODWORD(v6) = v6 - v67;
      }

      v76 = (v36 + 4 * v39 + 32);
      do
      {
        *v76++ = v6;
        --v37;
        LODWORD(v6) = v6 - 1;
      }

      while (v6 >= v7);
LABEL_103:
      *(v36 + 16) = v37;
      return result;
    }

    v52 = v39;
    v53 = v40;
    v54 = v40 + v30;
    result = memcpy((v10 + 4 * v39 + 32), &v106 + 4 * v40, 4 * (-3 - (v40 + v30)) + 4);
    v55 = v54 + v37;
    v56 = -2 - v30 - v53;
    if (v56 >= 4)
    {
      v59 = v56 & 0xFFFFFFFFFFFFFFFCLL;
      v60 = 0uLL;
      v61 = v52;
      v62 = vdupq_n_s64(1uLL);
      v63 = v56 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v61 = vaddq_s64(v61, v62);
        v60 = vaddq_s64(v60, v62);
        v63 -= 4;
      }

      while (v63);
      LODWORD(v52) = vaddvq_s64(vaddq_s64(v60, v61));
      v64 = v56 == v59;
      v36 = v10;
      if (v64)
      {
        goto LABEL_91;
      }

      LODWORD(v53) = v59 + v53;
    }

    else
    {
      v36 = v10;
    }

    LODWORD(v52) = v52 - (v53 + v30) - 2;
LABEL_91:
    v37 = v55 + 2;
    *(v36 + 16) = v55 + 2;
    LODWORD(v39) = v52;
    goto LABEL_92;
  }

  if (v7)
  {
    v31 = v7 - 1;
  }

  else
  {
    v31 = 0;
  }

  result = searchMapWithHint(v10, v31, a4, 1);
  v32 = v10;
  v33 = *(v10 + 16);
  v34 = *(v10 + 32);
  if (v34 != v33)
  {
    v44 = *(v10 + 36);
    if (v44 == result)
    {
      goto LABEL_61;
    }

    v57 = *(v10 + 40);
    if (v44 >= result)
    {
      v77 = result;
      memmove((v57 + 4 * (v34 - v33 + result)), (v57 + 4 * result), 4 * (v44 - result));
      result = v77;
      v32 = v10;
    }

    else
    {
      v58 = result;
      memmove((v57 + 4 * v44), (v57 + 4 * (v44 + v34 - v33)), 4 * (result - (v44 + v34 - v33)));
      v32 = v10;
      result = (v58 - *(v10 + 32) + *(v10 + 16));
    }
  }

  *(v32 + 36) = result;
LABEL_61:
  v45 = *(v32 + 40);
  v46 = result - 1;
  if (result >= 33)
  {
    LODWORD(v47) = 0;
    while (1)
    {
      v48 = v47 + (v46 - v47) / 2;
      v49 = *(v45 + 4 * v48);
      if (v49 == v6)
      {
        break;
      }

      if (v49 > v6)
      {
        LODWORD(v47) = v48 + 1;
      }

      else
      {
        v46 = v48 - 1;
      }

      if (v47 > v46 - 32)
      {
        v47 = v47;
        goto LABEL_70;
      }
    }
  }

  else
  {
    v47 = 0;
LABEL_70:
    if (v46 + 1 > v47)
    {
      v48 = v46 + 1;
    }

    else
    {
      v48 = v47;
    }

    while (v47 <= v46)
    {
      v50 = *(v45 + 4 * v47++);
      if (v50 <= v6)
      {
        v48 = v47 - 1;
        break;
      }
    }
  }

  if (v8 + 1 > (result - v48))
  {
    *(v32 + 16) -= result - v48;
    *(v32 + 36) = v48;
    v51 = 4 * v48;
    do
    {
      *(*(v32 + 40) + v51) = v6;
      ++*(v32 + 16);
      result = (*(v32 + 36) + 1);
      *(v32 + 36) = result;
      LODWORD(v6) = v6 - 1;
      v51 += 4;
    }

    while (v6 >= v7);
  }

  *a4 = result;
  return result;
}

uint64_t array_popcount(const char *a1, int a2)
{
  v2 = (4 * a2);
  v3 = 0uLL;
  if (v2 >= 0x40)
  {
    do
    {
      v4 = v2 >> 6;
      if (v2 >= 0x7C0)
      {
        v4 = 31;
      }

      v5 = v4;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = a1;
      do
      {
        v19 = vld4q_s8(v10);
        v10 += 64;
        v9 = vaddq_s8(vcntq_s8(v19.val[0]), v9);
        v8 = vaddq_s8(vcntq_s8(v19.val[1]), v8);
        v7 = vaddq_s8(vcntq_s8(v19.val[2]), v7);
        v6 = vaddq_s8(vcntq_s8(v19.val[3]), v6);
        --v5;
      }

      while (v5);
      v3 = vpadalq_u32(v3, vpaddlq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v8), v9), v7), v6)));
      v11 = v4 << 6;
      v2 -= v11;
      a1 += v11;
    }

    while (v2 > 0x3F);
  }

  if (v2 > 0xF)
  {
    v12 = 0;
    v13 = v2 & 0xFFFFFFF3;
    v14 = 0uLL;
    do
    {
      v14 = vaddq_s8(vcntq_s8(*&a1[v12]), v14);
      v12 += 16;
    }

    while (v12 < v13);
    v2 &= 0xCu;
    v3 = vpadalq_u32(v3, vpaddlq_u16(vpaddlq_u8(v14)));
    a1 += v13;
  }

  for (i = vaddvq_s64(v3); v2; v2 -= 4)
  {
    v16 = *a1;
    a1 += 4;
    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    i += v17.u32[0];
  }

  return i;
}

uint64_t _protectedReadVInt32(uint64_t result, unint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (*a2 >= a3)
  {
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 19, "offset < bufferLength", v21);
    goto LABEL_22;
  }

  v5 = v3 + 1;
  v6 = *(result + v3);
  v7 = *(result + v3);
  if (v6 < 0)
  {
    if (v5 >= a3)
    {
      v22 = __si_assert_copy_extra_332();
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 22, "offset < bufferLength", v24);
      goto LABEL_31;
    }

    v8 = v3 + 2;
    v9 = *(result + v5);
    v10 = *(result + v5);
    if ((v9 & 0x80000000) == 0)
    {
      v7 = v7 & 0x7F | (v10 << 7);
      goto LABEL_18;
    }

    if (v8 >= a3)
    {
      v25 = __si_assert_copy_extra_332();
      v23 = v25;
      v26 = "";
      if (v25)
      {
        v26 = v25;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 25, "offset < bufferLength", v26);
      goto LABEL_31;
    }

    v11 = v3 + 3;
    v12 = *(result + v8);
    v13 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      v14 = ((v10 & 0x7F) << 7) | (v12 << 14) | (v7 & 0x7F);
      v8 = v3 + 3;
LABEL_17:
      v7 = v14;
      goto LABEL_18;
    }

    if (v11 >= a3)
    {
      v28 = __si_assert_copy_extra_332();
      v20 = v28;
      v29 = "";
      if (v28)
      {
        v29 = v28;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 28, "offset < bufferLength", v29);
    }

    else
    {
      v8 = v3 + 4;
      v15 = *(result + v11);
      v16 = *(result + v11);
      if ((v15 & 0x80000000) == 0)
      {
        v17 = ((v13 & 0x7F) << 14) | (v16 << 21);
LABEL_16:
        v14 = v17 & 0xFFFFC000 | ((v10 & 0x7F) << 7) | v7 & 0x7F;
        goto LABEL_17;
      }

      if (v8 < a3)
      {
        v18 = *(result + v8);
        if ((v18 & 0x80000000) == 0)
        {
          v8 = v3 + 5;
          v17 = ((v16 & 0x7F) << 21) | (v18 << 28) | ((v13 & 0x7F) << 14);
          goto LABEL_16;
        }

        v32 = __si_assert_copy_extra_332();
        v23 = v32;
        v33 = "";
        if (v32)
        {
          v33 = v32;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 33, "(b4 & 0x80) == 0", v33);
LABEL_31:
        free(v23);
        if (__valid_fs(-1))
        {
          v27 = 2989;
        }

        else
        {
          v27 = 3072;
        }

        *v27 = -559038737;
        abort();
      }

      v30 = __si_assert_copy_extra_332();
      v20 = v30;
      v31 = "";
      if (v30)
      {
        v31 = v30;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 31, "offset < bufferLength", v31);
    }

LABEL_22:
    free(v20);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v8 = v3 + 1;
LABEL_18:
  *a2 = v8;
  return v7;
}

void hybridScoringL1(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, float *a7, uint8_t *a8, __n128 a9, _DWORD *a10)
{
  v10 = a9.n128_f32[0];
  v17 = a1;
  v18 = a2[15];
  v19 = a1;
  if (v18 && (v20 = a2[21]) != 0)
  {
    v21 = 0;
    v22 = 0;
    v23 = 3.4028e38;
LABEL_4:
    v24 = *(v20 + 8 * v22);
    if (v24)
    {
      v42 = 0;
      a9.n128_f32[0] = distanceHolderGetMinDistance(v24, *(a3 + 80) + v19, &v42, 0);
      v21 = v42;
      a9.n128_f32[0] = fminf(v23, a9.n128_f32[0]);
      if (v42)
      {
        v23 = a9.n128_f32[0];
      }

      v18 = a2[15];
    }

    while (++v22 < v18)
    {
      v20 = a2[21];
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v21 = 0;
    v23 = 3.4028e38;
  }

  v25 = a2[16];
  if (v25)
  {
    v26 = a2[22];
    if (v26)
    {
      v27 = 0;
LABEL_15:
      v28 = *(v26 + 8 * v27);
      if (v28)
      {
        v42 = 0;
        a9.n128_f32[0] = distanceHolderGetMinDistance(v28, *(a3 + 80) + v19, &v42, 0);
        v21 = v42;
        a9.n128_f32[0] = fminf(v23, a9.n128_f32[0]);
        if (v42)
        {
          v23 = a9.n128_f32[0];
        }

        v25 = a2[16];
      }

      while (++v27 < v25)
      {
        v26 = a2[22];
        if (v26)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v29 = a2[17];
  if (v29)
  {
    v30 = a2[23];
    if (v30)
    {
      v40 = v17;
      v31 = a5;
      v32 = a7;
      v33 = a8;
      v34 = a6;
      v35 = 0;
LABEL_25:
      v36 = *(v30 + 8 * v35);
      if (v36)
      {
        v42 = 0;
        a9.n128_f32[0] = distanceHolderGetMinDistance(v36, *(a3 + 80) + v19, &v42, 0);
        v21 = v42;
        a9.n128_f32[0] = fminf(v23, a9.n128_f32[0]);
        if (v42)
        {
          v23 = a9.n128_f32[0];
        }

        v29 = a2[17];
      }

      while (++v35 < v29)
      {
        v30 = a2[23];
        if (v30)
        {
          goto LABEL_25;
        }
      }

      a6 = v34;
      a8 = v33;
      a7 = v32;
      a5 = v31;
      v17 = v40;
    }
  }

  if (a5 && a4 && a7 && a8)
  {
    a9.n128_u64[0] = 0;
    if ((v21 & 1) == 0)
    {
      if (isDebugVerboseMode_onceToken != -1)
      {
        dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
      }

      a9.n128_u64[0] = 0;
      if (!isDebugVerboseMode_debugEnabled)
      {
        a9.n128_f32[0] = v10;
      }
    }

    v37 = ContentIndexDocSetComputeScore(a5, v17, a6, a8, a9);
    *a7 = v37;
    v38 = v37 != 0.0;
    *a10 = v38;
    if ((v21 & 1) == 0)
    {
      if (v37 != 0.0)
      {
        return;
      }

      goto LABEL_50;
    }

LABEL_47:
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    goto LABEL_51;
  }

  if (v21)
  {
    LOBYTE(v38) = 0;
    goto LABEL_47;
  }

LABEL_50:
  v39 = 1;
LABEL_51:
  *a10 = v39;
}

BOOL CIIndexSetHasIndex(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 20) > a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (v6 <= -10)
  {
    return (*(*(a1 + 40) + 4 * (v4 >> 5)) >> v4) & 1;
  }

  if ((v6 & 0x80000000) == 0)
  {
    v9 = binarySearchMap(a1, a2);
    v10 = a1;
    v11 = *(a1 + 36);
    if (v9 < v11 || (v12 = 0, v13 = *(v10 + 32), v9 < v13) && v9 >= v13 + v11 - *(v10 + 16))
    {
      v12 = *(*(v10 + 40) + 4 * v9) == a2;
    }

    return v12 ^ (CFGetTypeID(v10) == __kCIIndexSetInvertedTypeID);
  }

  if (v6 > 0xFFFFFFFD)
  {
    return 0;
  }

  v14 = *(a1 + 32) == a2;
  if (*(a1 + 32) == a2)
  {
    return v14;
  }

  if (v6 == -3)
  {
    return v14;
  }

  v14 = *(a1 + 36) == a2;
  if (*(a1 + 36) == a2)
  {
    return v14;
  }

  if (v6 == -4)
  {
    return v14;
  }

  v14 = *(a1 + 40) == a2;
  if (*(a1 + 40) == a2)
  {
    return v14;
  }

  if (v6 == -5)
  {
    return v14;
  }

  v14 = *(a1 + 44) == a2;
  if (*(a1 + 44) == a2)
  {
    return v14;
  }

  if (v6 == -6)
  {
    return v14;
  }

  v14 = *(a1 + 48) == a2;
  if (*(a1 + 48) == a2)
  {
    return v14;
  }

  if (v6 == -7)
  {
    return v14;
  }

  v14 = *(a1 + 52) == a2;
  if (*(a1 + 52) == a2 || v6 == -8)
  {
    return v14;
  }

  return *(a1 + 56) == a2;
}

void readSDBForOids(SISearchCtx_METADATA *a1, unint64_t *a2, _WORD *a3, uint64_t *a4, int *a5, unsigned int *a6, size_t a7, _BYTE *a8, __n128 a9, PartialQueryResults *a10, uint64_t a11, unsigned __int8 a12)
{
  v550 = a4;
  v551 = a8;
  v542 = a5;
  v543 = a6;
  v611 = *MEMORY[0x1E69E9840];
  v590 = a1;
  v16 = *(a1 + 1);
  if (v16 && *(v16 + 8))
  {
    if (dword_1EBF46AD0 < 5)
    {
      goto LABEL_7;
    }

    v17 = *__error();
    v18 = _SILogForLogForCategory(1);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_593;
    }

    v19 = qos_class_self();
    current_queue = dispatch_get_current_queue();
    v21 = *(*(a1 + 1) + 8);
    v602[0].n128_u32[0] = 134218754;
    *(v602[0].n128_u64 + 4) = a1;
    v602[0].n128_u16[6] = 1024;
    *(&v602[0].n128_u32[3] + 2) = v19;
    v602[1].n128_u16[1] = 2112;
    *(v602[1].n128_u64 + 4) = current_queue;
    v602[1].n128_u16[6] = 2112;
    *(&v602[1].n128_u64[1] + 6) = v21;
    v22 = "readSDBForOids %p QoS %d queue %@ query %@";
    v23 = v18;
    v24 = 38;
    goto LABEL_592;
  }

  if (dword_1EBF46AD0 < 5)
  {
    goto LABEL_7;
  }

  v17 = *__error();
  v511 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v511, OS_LOG_TYPE_DEFAULT))
  {
    v602[0].n128_u32[0] = 134218498;
    *(v602[0].n128_u64 + 4) = a1;
    v602[0].n128_u16[6] = 1024;
    *(&v602[0].n128_u32[3] + 2) = qos_class_self();
    v602[1].n128_u16[1] = 2112;
    *(v602[1].n128_u64 + 4) = dispatch_get_current_queue();
    v22 = "readSDBForOids %p QoS %d queue %@ query (missing)";
    v23 = v511;
    v24 = 28;
LABEL_592:
    _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, v22, v602, v24);
  }

LABEL_593:
  *__error() = v17;
LABEL_7:
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  v25 = v590;
  if (SIIsAppleInternal_internal && *(v590 + 650) == 1 && (v26 = *(v590 + 1)) != 0 && (v27 = *(v26 + 32)) != 0)
  {
    v539 = CFStringGetLength(v27) > 3;
    v25 = v590;
  }

  else
  {
    v539 = 0;
  }

  v28 = *(*(v25 + 3) + 6587);
  v29 = *(a10 + 432);
  v554 = a2;
  if (v29 == 1)
  {
    v549 = *(a10 + 433);
  }

  else
  {
    v549 = PartialQueryResults::__needsWhatFieldsMatched(a10);
    *(a10 + 433) = v549;
    *(a10 + 432) = 1;
  }

  v30 = 1;
  if (!v551)
  {
    if (v550)
    {
      v41 = v550 + 69;
      v42 = 1;
      do
      {
        v43 = *(v41 - 37);
        v44 = *(v41 - 29);
        if (*v41)
        {
          v44 = 0;
          v43 = *(v41 - 1);
        }

        v45 = v43 | v44;
        v30 = v45 != 0;
        if (v42 >= a7)
        {
          break;
        }

        ++v42;
        v41 += 80;
      }

      while (!v45);
    }

    else
    {
      v30 = 0;
    }
  }

  v555 = a10;
  v31 = *(v590 + 641);
  if ((v549 & 1) != 0 && !*(*(v590 + 105) + 24))
  {
    a9.n128_u64[0] = *(*(v590 + 1) + 360);
    queryFromCFString(a9);
    v33 = v32;
    *(*(v590 + 105) + 24) = v32;
    Current = CFAbsoluteTimeGetCurrent();
    decorateExpandingFunctions(v33, **(v590 + 1), *(*(v590 + 1) + 656), Current);
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v504 = *__error();
    v505 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v505, OS_LOG_TYPE_DEFAULT))
    {
      v602[0].n128_u32[0] = 134218240;
      *(v602[0].n128_u64 + 4) = v590;
      v602[0].n128_u16[6] = 2048;
      *(&v602[0].n128_u64[1] + 6) = a7;
      _os_log_impl(&dword_1C278D000, v505, OS_LOG_TYPE_DEFAULT, "readSDBForOids %p item count: %ld", v602, 0x16u);
    }

    *__error() = v504;
  }

  v35 = v590;
  if (a3 && ((v36 = *(v590 + 40), v37 = v36 > 6, v38 = (1 << v36) & 0x4A, !v37) ? (v39 = v38 == 0) : (v39 = 1), !v39 || *(v590 + 29)))
  {
    updated = SISearchCtx_METADATA::updateGroupingCount(v590);
    v538 = 1;
    v35 = v590;
  }

  else
  {
    v538 = 0;
    updated = 0;
  }

  v46 = *(v35 + 1);
  v47 = v46[79];
  v536 = v46[78];
  v537 = v47;
  v48 = v46[81];
  v49 = v46[80];
  if (!(v49 | v48))
  {
    v48 = -1;
    v49 = -1;
  }

  v534 = v49;
  v535 = v48;
  v589.opaque2 = 0;
  v589.opaque1 = 0;
  v50 = *(*(v35 + 13) + 24);
  v548 = a3;
  if (v50)
  {
    v546 = _Block_copy(v50);
  }

  else
  {
    v546 = 0;
  }

  v544 = a11;
  v533 = v28 & 1;
  v547 = updated;
  if (updated <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = updated;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v506 = *__error();
    v507 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v507, OS_LOG_TYPE_DEFAULT))
    {
      v602[0].n128_u32[0] = 134217984;
      *(v602[0].n128_u64 + 4) = v51;
      _os_log_impl(&dword_1C278D000, v507, OS_LOG_TYPE_DEFAULT, "categoryCount:%ld", v602, 0xCu);
    }

    *__error() = v506;
  }

  v571 = a7;
  v540 = &v521;
  v532 = (v549 & 1) == 0;
  v545 = v31 | v30;
  MEMORY[0x1EEE9AC00](a9);
  v553 = &v521 - ((8 * v51 + 15) & 0xFFFFFFFF0);
  bzero(v553, 8 * v51);
  v52 = 240 * v51;
  MEMORY[0x1EEE9AC00](v53);
  v54 = &(&v521)[-30 * v51];
  bzero(v54, 240 * v51);
  v55 = 0;
  do
  {
    v56 = &v54[v55 / 8];
    *(v56 + 12) = xmmword_1C2BFF4C0;
    *(v56 + 13) = unk_1C2BFF4D0;
    *(v56 + 14) = xmmword_1C2BFF4E0;
    *(v56 + 8) = xmmword_1C2BFF480;
    *(v56 + 9) = unk_1C2BFF490;
    *(v56 + 10) = xmmword_1C2BFF4A0;
    *(v56 + 11) = unk_1C2BFF4B0;
    *(v56 + 4) = xmmword_1C2BFF440;
    *(v56 + 5) = unk_1C2BFF450;
    *(v56 + 6) = xmmword_1C2BFF460;
    *(v56 + 7) = unk_1C2BFF470;
    *v56 = ZERO_COMBO_BITS;
    *(v56 + 1) = *algn_1C2BFF410;
    v55 += 240;
    *(v56 + 2) = xmmword_1C2BFF420;
    *(v56 + 3) = unk_1C2BFF430;
  }

  while (v52 != v55);
  v57 = v590;
  v58 = *(v590 + 22);
  v59 = v550;
  if (v58 || (v58 = *(v590 + 23)) != 0)
  {
    if (v58 <= *(v590 + 21))
    {
      v58 = *(v590 + 21);
    }

    v572 = v58;
  }

  else
  {
    v572 = 0;
  }

  v588 = 0;
  v565 = unk_1C2BFF4B0;
  v566 = unk_1C2BFF490;
  v563 = xmmword_1C2BFF440;
  v564 = xmmword_1C2BFF4A0;
  v561 = unk_1C2BFF470;
  v562 = unk_1C2BFF450;
  v559 = ZERO_COMBO_BITS;
  v560 = xmmword_1C2BFF460;
  v557 = unk_1C2BFF430;
  v558 = *algn_1C2BFF410;
  v556 = xmmword_1C2BFF420;
  v552 = &(&v521)[v52 / 0xFFFFFFFFFFFFFFF8];
  v569 = unk_1C2BFF4D0;
  v570 = xmmword_1C2BFF4C0;
  v567 = xmmword_1C2BFF480;
  v568 = xmmword_1C2BFF4E0;
  if (!v550 || !v572 || *(*(v590 + 1) + 216))
  {
    if (!v572)
    {
      if (v51 >= 1)
      {
        bzero(v553, 8 * v51);
        v157 = v556;
        v156 = v557;
        v159 = v558;
        v158 = v559;
        v161 = v560;
        v160 = v561;
        v163 = v562;
        v162 = v563;
        v165 = v564;
        v164 = v565;
        v167 = v566;
        v166 = v567;
        v169 = v568;
        v168 = v569;
        v170 = v570;
        v92 = v554;
        do
        {
          *(v54 + 12) = v170;
          *(v54 + 13) = v168;
          *(v54 + 14) = v169;
          *(v54 + 8) = v166;
          *(v54 + 9) = v167;
          *(v54 + 10) = v165;
          *(v54 + 11) = v164;
          *(v54 + 4) = v162;
          *(v54 + 5) = v163;
          *(v54 + 6) = v161;
          *(v54 + 7) = v160;
          *v54 = v158;
          *(v54 + 1) = v159;
          *(v54 + 2) = v157;
          *(v54 + 3) = v156;
          v54 += 30;
          --v51;
        }

        while (v51);
        v91 = 0;
        v123 = 0;
        v124 = v548;
        goto LABEL_99;
      }

      v91 = 0;
      v123 = 0;
LABEL_98:
      v124 = v548;
      v92 = v554;
LABEL_99:
      v93 = &unk_1C2BF9000;
      goto LABEL_103;
    }

LABEL_80:
    v94 = *(v590 + 116);
    if (!v94)
    {
      v95 = malloc_type_malloc(32 * v51 + 40, 0x10000400A747E1EuLL);
      *(v590 + 116) = v95;
      v95[4] = 0;
      *v95 = 0u;
      *(v95 + 1) = 0u;
      *(v95 + 1) = v51;
      L1ComboQueueInit();
    }

    os_unfair_lock_lock(v94);
    v96 = v590;
    if (v51 >= 1)
    {
      v97 = 40;
      v99 = v552;
      v98 = v553;
      do
      {
        v100 = *(*(v96 + 116) + v97);
        v101 = L1ComboQueueCount(v100);
        *v98 = v101;
        if (v101)
        {
          v102 = *v100[2];
          if (v102)
          {
            v103 = (v102 + 80);
          }

          else
          {
            v103 = &ZERO_RANKING_WRAPPED_BITS;
          }

          v104 = v103[3];
          v602[2] = v103[2];
          v602[3] = v104;
          v602[4] = v103[4];
          v105 = *v103;
          v602[1] = v103[1];
          v602[0] = v105;
          v106 = **v100;
          if (v106)
          {
            v107 = (v106 + 80);
          }

          else
          {
            v107 = &ZERO_RANKING_WRAPPED_BITS;
          }

          v603 = *v107;
          v108 = v107[1];
          v109 = v107[2];
          v110 = v107[4];
          v604[2] = v107[3];
          v605 = v110;
          v604[0] = v108;
          v604[1] = v109;
          v111 = *v100[1];
          if (v111)
          {
            v112 = (v111 + 80);
          }

          else
          {
            v112 = &ZERO_RANKING_WRAPPED_BITS;
          }

          v606 = *v112;
          v113 = v112[1];
          v114 = v112[2];
          v115 = v112[4];
          v609 = v112[3];
          v610 = v115;
          v607 = v113;
          v608 = v114;
        }

        else
        {
          v608 = v570;
          v609 = v569;
          v610 = v568;
          v604[2] = v567;
          v605 = v566;
          v607 = v565;
          v606 = v564;
          v602[4] = v563;
          v603 = v562;
          v604[1] = v561;
          v604[0] = v560;
          v602[0] = v559;
          v602[1] = v558;
          v602[3] = v557;
          v602[2] = v556;
        }

        v116 = v609;
        *(v99 + 12) = v608;
        *(v99 + 13) = v116;
        *(v99 + 14) = v610;
        v117 = v605;
        *(v99 + 8) = v604[2];
        *(v99 + 9) = v117;
        v118 = v607;
        *(v99 + 10) = v606;
        *(v99 + 11) = v118;
        v119 = v603;
        *(v99 + 4) = v602[4];
        *(v99 + 5) = v119;
        v120 = v604[1];
        *(v99 + 6) = v604[0];
        *(v99 + 7) = v120;
        v121 = v602[1];
        *v99 = v602[0];
        *(v99 + 1) = v121;
        v122 = v602[3];
        *(v99 + 2) = v602[2];
        *(v99 + 3) = v122;
        v99 += 30;
        ++v98;
        v97 += 32;
        --v51;
      }

      while (v51);
    }

    os_unfair_lock_unlock(*(v96 + 116));
    v91 = 0;
    v123 = 0;
    v57 = v590;
    v59 = v550;
    goto LABEL_98;
  }

  if (!v30 && (*(v590 + 641) & 1) != 0)
  {
    goto LABEL_80;
  }

  LODWORD(v541) = a12;
  v60 = *(v590 + 116);
  if (!v60)
  {
    v61 = malloc_type_malloc(32 * v51 + 40, 0x10000400A747E1EuLL);
    *(v590 + 116) = v61;
    v61[4] = 0;
    *v61 = 0u;
    *(v61 + 1) = 0u;
    *(v61 + 1) = v51;
    L1ComboQueueInit();
  }

  os_unfair_lock_lock(v60);
  v62 = v590;
  if (v51 >= 1)
  {
    v63 = 40;
    v65 = v552;
    v64 = v553;
    v66 = v51;
    do
    {
      v67 = *(*(v62 + 116) + v63);
      v68 = L1ComboQueueCount(v67);
      *v64 = v68;
      if (v68)
      {
        v69 = *v67[2];
        if (v69)
        {
          v70 = (v69 + 80);
        }

        else
        {
          v70 = &ZERO_RANKING_WRAPPED_BITS;
        }

        v71 = v70[3];
        v602[2] = v70[2];
        v602[3] = v71;
        v602[4] = v70[4];
        v72 = *v70;
        v602[1] = v70[1];
        v602[0] = v72;
        v73 = **v67;
        if (v73)
        {
          v74 = (v73 + 80);
        }

        else
        {
          v74 = &ZERO_RANKING_WRAPPED_BITS;
        }

        v603 = *v74;
        v75 = v74[1];
        v76 = v74[2];
        v77 = v74[4];
        v604[2] = v74[3];
        v605 = v77;
        v604[0] = v75;
        v604[1] = v76;
        v78 = *v67[1];
        if (v78)
        {
          v79 = (v78 + 80);
        }

        else
        {
          v79 = &ZERO_RANKING_WRAPPED_BITS;
        }

        v606 = *v79;
        v80 = v79[1];
        v81 = v79[2];
        v82 = v79[4];
        v609 = v79[3];
        v610 = v82;
        v607 = v80;
        v608 = v81;
      }

      else
      {
        v608 = v570;
        v609 = v569;
        v610 = v568;
        v604[2] = v567;
        v605 = v566;
        v607 = v565;
        v606 = v564;
        v602[4] = v563;
        v603 = v562;
        v604[1] = v561;
        v604[0] = v560;
        v602[0] = v559;
        v602[1] = v558;
        v602[3] = v557;
        v602[2] = v556;
      }

      v83 = v609;
      *(v65 + 12) = v608;
      *(v65 + 13) = v83;
      *(v65 + 14) = v610;
      v84 = v605;
      *(v65 + 8) = v604[2];
      *(v65 + 9) = v84;
      v85 = v607;
      *(v65 + 10) = v606;
      *(v65 + 11) = v85;
      v86 = v603;
      *(v65 + 4) = v602[4];
      *(v65 + 5) = v86;
      v87 = v604[1];
      *(v65 + 6) = v604[0];
      *(v65 + 7) = v87;
      v88 = v602[1];
      *v65 = v602[0];
      *(v65 + 1) = v88;
      v89 = v602[3];
      *(v65 + 2) = v602[2];
      *(v65 + 3) = v89;
      v65 += 30;
      ++v64;
      v63 += 32;
      --v66;
    }

    while (v66);
  }

  os_unfair_lock_unlock(*(v62 + 116));
  v57 = v590;
  v90 = v547;
  if (v541)
  {
    v91 = 0;
    v59 = v550;
    v92 = v554;
    goto LABEL_78;
  }

  v59 = v550;
  v92 = v554;
  v93 = &unk_1C2BF9000;
  if (*(v590 + 1192))
  {
    goto LABEL_101;
  }

  v171 = *(v590 + 40);
  if (v171 == 2)
  {
    if (v572 >= 0x1389)
    {
LABEL_101:
      v91 = 0;
      goto LABEL_102;
    }
  }

  else if (v572 > 0x1388 || v171 != 4)
  {
    v91 = 0;
    if (v572 > 0x3E8 || (v171 & 0xFFFFFFFD) != 1)
    {
      goto LABEL_102;
    }
  }

  if (!*(v590 + 147))
  {
    if ((v171 & 0xFFFFFFFD) == 1)
    {
      v172 = 0;
    }

    else
    {
      v172 = v572;
    }

    Info = createFetchInfo(v51, v172);
    v57 = v590;
    *(v590 + 147) = Info;
  }

  Mutable = *(v57 + 148);
  if (!Mutable)
  {
    Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
    v57 = v590;
    *(v590 + 148) = Mutable;
  }

  v175 = *(v57 + 147);
  v541 = Mutable;
  pthread_rwlock_wrlock((Mutable + 16));
  v176 = 0;
  v177 = v550;
  v178 = v551;
  v179 = v571;
  do
  {
    if (RLEOIDArrayContainsOid_locked(v541, v554[v176]) || v178 && v178[v176])
    {
      goto LABEL_169;
    }

    v180 = v177[4];
    v181 = v177[5];
    v182 = *(v177 + 68);
    v183 = *(v177 + 69);
    v184 = (v183 & 1) != 0 ? 0 : v177[5];
    v185 = (*(v177 + 69) & 1) != 0 ? *(v177 + 68) : v177[4];
    if (v185 | v184)
    {
      goto LABEL_169;
    }

    if (v547)
    {
      v186 = v548[v176];
      v187 = v186 & 0xFFDF;
      if (v547 <= (v186 & 0xFFFFFFDF))
      {
        v187 = 18;
      }

      if (v547 <= v186)
      {
        LOWORD(v186) = 0;
      }

      if (*(v590 + 650) == 1)
      {
        v188 = v186;
      }

      else
      {
        v188 = v187;
      }
    }

    else
    {
      v188 = 0;
    }

    v189 = *v177;
    v190 = v177[1];
    if ((*(v590 + 25) & *v177) == 0)
    {
      if (*(v590 + 58) & v189 | *(v590 + 59) & v190)
      {
        v192 = *v177;
        v191 = v177[1];
LABEL_194:
        v195 = *(v590 + 62) & v189;
        v196 = *(v590 + 129);
        v197 = ((*(v590 + 63) & v190) << v196) | (v195 >> 1 >> ~v196);
        v198 = v195 << v196;
        if ((v196 & 0x40) != 0)
        {
          v194 = v198;
        }

        else
        {
          v194 = v197;
        }

        if ((v196 & 0x40) != 0)
        {
          v198 = 0;
        }

        v193 = v198 | 1;
        goto LABEL_200;
      }

      v193 = 0;
      v194 = 0;
      v192 = *v177;
      v191 = v177[1];
    }

    else
    {
      v191 = *(v590 + 53) & v190;
      v192 = *(v590 + 52) & v189;
      if (*(v590 + 58) & v189 | *(v590 + 59) & v190)
      {
        goto LABEL_194;
      }

      v193 = 0;
      v194 = 0;
    }

LABEL_200:
    v199 = v188;
    if (*(v590 + 164) > v188)
    {
      v200 = *(v177 + 14);
      v201 = *(v177 + 13);
      v202 = *(v177 + 12);
      v203 = *(v590 + 116);
      v204 = *(v590 + 22);
      v602[0].n128_u64[1] = v191;
      v602[0].n128_u64[0] = v192;
      v602[1].n128_u64[1] = v194;
      v602[1].n128_u64[0] = v193;
      v602[2].n128_u64[1] = v181;
      v602[2].n128_u64[0] = v180;
      v602[3].n128_u64[0] = __PAIR64__(v201, v202);
      v602[3].n128_u32[2] = v200;
      *(&v602[3].n128_u64[1] + 4) = *(v177 + 60);
      v602[4].n128_u8[4] = v182;
      v602[4].n128_u8[5] = v183;
      *(v602[4].n128_u64 + 6) = 0;
      v602[4].n128_u16[7] = 0;
      ci_donebits_push(v203, v572, v204, v199, v602);
    }

LABEL_169:
    ++v176;
    v177 += 10;
  }

  while (v179 != v176);
  v205 = 0;
  v531 = v175 + 8;
  if (v572 >= 0x3E8)
  {
    v206 = 1000;
  }

  else
  {
    v206 = v572;
  }

  while (2)
  {
    v207 = *(v590 + 116);
    v208 = L1ComboQueueCount(*&v207[8 * v205 + 10]._os_unfair_lock_opaque);
    *&v553[8 * v205] = v208;
    os_unfair_lock_lock(v207);
    if (v208)
    {
      v209 = v590;
      v210 = *(*(v590 + 116) + 32 * v205 + 40);
      v211 = *v210[2];
      if (v211)
      {
        v212 = (v211 + 80);
      }

      else
      {
        v212 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v213 = v212[3];
      v602[2] = v212[2];
      v602[3] = v213;
      v602[4] = v212[4];
      v214 = *v212;
      v602[1] = v212[1];
      v602[0] = v214;
      v215 = **v210;
      if (v215)
      {
        v216 = (v215 + 80);
      }

      else
      {
        v216 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v603 = *v216;
      v605 = v216[4];
      v604[2] = v216[3];
      v604[1] = v216[2];
      v604[0] = v216[1];
      v217 = *v210[1];
      if (v217)
      {
        v218 = (v217 + 80);
      }

      else
      {
        v218 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v607 = v218[1];
      v608 = v218[2];
      v609 = v218[3];
      v610 = v218[4];
      v606 = *v218;
    }

    else
    {
      v608 = v570;
      v609 = v569;
      v610 = v568;
      v604[2] = v567;
      v605 = v566;
      v607 = v565;
      v606 = v564;
      v602[4] = v563;
      v603 = v562;
      v604[1] = v561;
      v604[0] = v560;
      v602[0] = v559;
      v602[1] = v558;
      v602[3] = v557;
      v602[2] = v556;
      v209 = v590;
    }

    v219 = v609;
    v220 = &v552[30 * v205];
    *(v220 + 12) = v608;
    *(v220 + 13) = v219;
    *(v220 + 14) = v610;
    v221 = v605;
    *(v220 + 8) = v604[2];
    *(v220 + 9) = v221;
    v222 = v607;
    *(v220 + 10) = v606;
    *(v220 + 11) = v222;
    v223 = v603;
    *(v220 + 4) = v602[4];
    *(v220 + 5) = v223;
    v224 = v604[1];
    *(v220 + 6) = v604[0];
    *(v220 + 7) = v224;
    v225 = v602[1];
    *v220 = v602[0];
    *(v220 + 1) = v225;
    v226 = v602[3];
    *(v220 + 2) = v602[2];
    *(v220 + 3) = v226;
    os_unfair_lock_unlock(*(v209 + 116));
    if (v208 >= v572)
    {
      v227 = (v531 + 40 * v205);
      if (v227[2] - 1 > v572)
      {
        while (2)
        {
          if (*v227)
          {
            v228 = (*v227 + 160);
          }

          else
          {
            v228 = &ZERO_FETCHINFO;
          }

          v230 = *v228;
          v229 = *(v228 + 1);
          v231 = *(v228 + 15);
          v232 = *(v228 + 16);
          if (*(v228 + 69))
          {
            v233 = v220 + 20;
            if (v232 == 0.0)
            {
              goto LABEL_229;
            }
          }

          else
          {
            v233 = v220 + 20;
            if (!(v230 | v229))
            {
              goto LABEL_229;
            }
          }

          v233 = v220;
          if (v231 == v232)
          {
            v233 = v220 + 10;
          }

LABEL_229:
          v234 = *(v228 + 12);
          v235 = *(v228 + 13);
          v236 = *(v233 + 12);
          v237 = *(v233 + 13);
          if (*(v233 + 69))
          {
            v238 = *(v233 + 15);
            if (v238 <= v231)
            {
              if (v238 != v231)
              {
                break;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v241 = v233;
            v239 = *v233;
            v240 = v241[1];
            if (__PAIR128__(v229, v230) >= __PAIR128__(v240, v239))
            {
              if (v240 != v229 || v239 != v230)
              {
                break;
              }

LABEL_239:
              if (v237 <= v235 && (v237 != v235 || v236 >= v234))
              {
                break;
              }
            }
          }

          v605 = 0u;
          memset(v604, 0, sizeof(v604));
          v603 = 0u;
          memset(v602, 0, sizeof(v602));
          pqpop_rankAndFetchInfo_t(v602, v227);
          if (v602[3].n128_u32[2])
          {
            v244 = v227[3];
            if (!v244)
            {
              v244 = container_fetch_table_create(v206);
              v227[3] = v244;
            }

            v600[0] = v604[0];
            v600[1] = v604[1];
            v600[2] = v604[2];
            v601 = v605;
            v597 = v602[3];
            v598 = v602[4];
            v599 = v603;
            v594 = v602[0];
            v595 = v602[1];
            v596 = v602[2];
            container_fetch_table_check_and_insert(v244, &v594);
            v245 = v227[4];
            if (!v245)
            {
              v245 = container_fetch_table_q2_create(v206);
              v227[4] = v245;
            }

            *(&v601 + 1) = 0;
            *(&v601 + 1) = 0;
            v597 = v602[3];
            v598 = v602[4];
            v595 = v602[1];
            v596 = v602[2];
            v594 = v602[0];
            LODWORD(v600[0]) = v604[0];
            BYTE4(v600[0]) = BYTE4(v604[0]);
            v599 = v603;
            DWORD2(v600[0]) = DWORD2(v604[0]);
            BYTE12(v600[0]) = BYTE12(v604[0]);
            *(v600 + 13) = *(v604 + 13);
            *(&v600[1] + 12) = *(&v604[1] + 12);
            DWORD1(v600[2]) = 0;
            *(&v600[2] + 1) = *(&v604[2] + 1);
            LOBYTE(v601) = v605;
            container_fetch_table_q2_check_and_insert(v245, &v594);
          }

          if (v227[2] - 1 <= v572)
          {
            break;
          }

          continue;
        }
      }
    }

    if (++v205 != v51)
    {
      continue;
    }

    break;
  }

  *&v570 = malloc_type_malloc(v571, 0x100004077774924uLL);
  *&v569 = 0;
  v246 = v554;
  v247 = v548;
  v59 = v550;
  v248 = v551;
  v249 = v550;
  v250 = v542;
  v251 = v543;
  v252 = v541;
  while (2)
  {
    if (!RLEOIDArrayContainsOid_locked(v252, *v246))
    {
      if (v547)
      {
        v253 = *v247;
        v254 = v253 & 0xFFDF;
        if (v547 <= (v253 & 0xFFFFFFDF))
        {
          v254 = 18;
        }

        if (v547 <= v253)
        {
          LOWORD(v253) = 0;
        }

        if (*(v590 + 650) == 1)
        {
          v255 = v253;
        }

        else
        {
          v255 = v254;
        }
      }

      else
      {
        v255 = 0;
      }

      v256 = v570;
      if (v551 && *v248 || ((v258 = v249[4], v257 = v249[5], v259 = *(v249 + 68), v260 = *(v249 + 69), (v260 & 1) == 0) ? (v261 = v249[5]) : (v261 = 0), (v260 & 1) == 0 ? (v262 = v249[4]) : (v262 = *(v249 + 68)), v262 | v261))
      {
        v263 = v569;
        v554[v569] = *v246;
        v548[v263] = *v247;
        v264 = &v59[10 * v263];
        *v264 = *v249;
        v265 = *(v249 + 1);
        v266 = *(v249 + 2);
        v267 = *(v249 + 4);
        *(v264 + 3) = *(v249 + 3);
        *(v264 + 4) = v267;
        *(v264 + 1) = v265;
        *(v264 + 2) = v266;
        v551[v263] = *v248;
        v268 = v542 + 5 * v263;
        v269 = *v250;
        v268[4] = *(v250 + 4);
        *v268 = v269;
        v270 = &v543[7 * v263];
        v271 = *v251;
        *(v270 + 3) = *(v251 + 3);
        *v270 = v271;
        *(v256 + v263) = 1;
        *&v569 = v263 + 1;
        goto LABEL_273;
      }

      v592 = 0;
      v593 = 0;
      v584 = 0;
      v585 = 0;
      v594.n128_u64[0] = 0;
      *(v594.n128_u64 + 7) = 0;
      v272 = *v249;
      v273 = v249[1];
      if ((*(v590 + 25) & *v249) == 0)
      {
        v275 = *v249;
        v274 = v249[1];
        if (*(v590 + 58) & v272 | *(v590 + 59) & v273)
        {
          goto LABEL_279;
        }

        v276 = 0;
        v277 = 0;
        v275 = *v249;
        v274 = v249[1];
      }

      else
      {
        v274 = *(v590 + 53) & v273;
        v275 = *(v590 + 52) & v272;
        if (!(*(v590 + 58) & v272 | *(v590 + 59) & v273))
        {
          v276 = 0;
          v277 = 0;
          goto LABEL_286;
        }

LABEL_279:
        v278 = *(v590 + 62) & v272;
        v279 = *(v590 + 129);
        v280 = ((*(v590 + 63) & v273) << v279) | (v278 >> 1 >> ~v279);
        v281 = v278 << v279;
        if ((v279 & 0x40) != 0)
        {
          v277 = v281;
        }

        else
        {
          v277 = v280;
        }

        if ((v279 & 0x40) != 0)
        {
          v282 = 0;
        }

        else
        {
          v282 = v281;
        }

        v276 = v282 | 1;
      }

LABEL_286:
      v283 = *(v249 + 15);
      v284 = *(v249 + 16);
      v285 = *(v249 + 14);
      v286 = *(v249 + 13);
      v287 = *(v249 + 12);
      v586 = *v250;
      v587 = *(v250 + 4);
      v288 = *(v251 + 4);
      v289 = *v251;
      v591[0] = *(v251 + 5);
      *(v591 + 15) = *(v251 + 5);
      v290 = *v246;
      if (isDebugVerboseMode_onceToken != -1)
      {
        v558.n128_u64[0] = *v246;
        *&v564 = v257;
        *&v560 = v272;
        *&v566 = v273;
        v559.n128_u32[0] = v260;
        *&v565 = v259;
        *&v561 = v258;
        LODWORD(v568) = v285;
        LODWORD(v567) = v287;
        v563.n128_u64[0] = v275;
        v529 = v274;
        *&v562 = v276;
        v557.n128_u64[0] = v277;
        dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
        v277 = v557.n128_u64[0];
        v276 = v562;
        v274 = v529;
        v275 = v563.n128_u64[0];
        v287 = v567;
        v285 = v568;
        v257 = v564;
        v258 = v561;
        v259 = v565;
        v260 = v559.n128_u32[0];
        v273 = v566;
        v272 = v560;
        v290 = v558.n128_u64[0];
      }

      v291 = v255;
      if (isDebugVerboseMode_debugEnabled == 1)
      {
        v557.n128_u64[0] = v277;
        *&v562 = v276;
        v529 = v274;
        v563.n128_u64[0] = v275;
        LODWORD(v567) = v287;
        LODWORD(v568) = v285;
        *&v564 = v257;
        *&v561 = v258;
        *&v565 = v259;
        v559.n128_u32[0] = v260;
        *&v566 = v273;
        *&v560 = v272;
        v558.n128_u64[0] = v290;
        v556.n128_u32[0] = *__error();
        v530 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v530, OS_LOG_TYPE_DEFAULT))
        {
          v602[0].n128_u32[0] = 134219776;
          *(v602[0].n128_u64 + 4) = v531 + 40 * v255;
          v602[0].n128_u16[6] = 1024;
          *(&v602[0].n128_u32[3] + 2) = v255;
          v602[1].n128_u16[1] = 2048;
          *(v602[1].n128_u64 + 4) = v558.n128_u64[0];
          v602[1].n128_u16[6] = 1024;
          *(&v602[1].n128_u32[3] + 2) = v568;
          v602[2].n128_u16[1] = 2048;
          *(v602[2].n128_f64 + 4) = v284;
          v602[2].n128_u16[6] = 1024;
          *(&v602[2].n128_u32[3] + 2) = v567;
          v602[3].n128_u16[1] = 2048;
          *(v602[3].n128_f64 + 4) = v283;
          v602[3].n128_u16[6] = 2048;
          *(&v602[3].n128_f64[1] + 6) = v286;
          _os_log_impl(&dword_1C278D000, v530, OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: collecting, oid: %lld, containerId : %u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v602, 0x46u);
        }

        *__error() = v556.n128_u32[0];
        v290 = v558.n128_u64[0];
        v272 = v560;
        v273 = v566;
        v260 = v559.n128_u32[0];
        v259 = v565;
        v258 = v561;
        v257 = v564;
        v285 = v568;
        v287 = v567;
        v275 = v563.n128_u64[0];
        v274 = v529;
        v276 = v562;
        v277 = v557.n128_u64[0];
        v291 = v255;
      }

      v292 = v289 | (v288 << 32);
      if (*&v553[8 * v291] < v572)
      {
        v602[0].n128_u64[0] = v275;
        v602[0].n128_u64[1] = v274;
        v602[1].n128_u64[0] = v276;
        v602[1].n128_u64[1] = v277;
        v602[2].n128_u64[0] = v258;
        v602[2].n128_u64[1] = v257;
        v602[3].n128_u64[0] = __PAIR64__(LODWORD(v286), v287);
        v602[3].n128_u64[1] = __PAIR64__(LODWORD(v283), v285);
        v602[4].n128_f32[0] = v284;
        v602[4].n128_u8[4] = v259;
        v602[4].n128_u8[5] = v260;
        *(v602[4].n128_u64 + 6) = 0;
        v602[4].n128_u16[7] = 0;
        *&v603 = v272;
        *(&v603 + 1) = v273;
        LODWORD(v604[0]) = v586;
        BYTE4(v604[0]) = v587;
        *(v604 + 5) = 0;
        BYTE7(v604[0]) = 0;
        BYTE12(v604[0]) = (v289 | (v288 << 32)) >> 32;
        DWORD2(v604[0]) = v289;
        *(v604 + 13) = v591[0];
        *(&v604[1] + 12) = *(v591 + 15);
        DWORD1(v604[2]) = 0;
        *(&v604[2] + 1) = v290;
        v605 = 0uLL;
        v293 = v290;
        pqpush_rankAndFetchInfo_t(v531 + 40 * v291, v602);
        v252 = v541;
        v294 = (v541 + 216);
        v295 = v293;
        goto LABEL_291;
      }

      v296 = &v552[30 * v291];
      v59 = v550;
      v252 = v541;
      if (v260)
      {
        if (v284 != 0.0)
        {
LABEL_295:
          if (v283 == v284)
          {
            v296 += 10;
          }

LABEL_299:
          v297 = *(v296 + 12);
          v298 = *(v296 + 13);
          if (*(v296 + 69))
          {
            v299 = *(v296 + 15);
            if (v299 < v283)
            {
              goto LABEL_312;
            }

            if (v299 != v283)
            {
              goto LABEL_339;
            }

LABEL_309:
            if (v298 < v286 || v298 == v286 && v297 >= v287)
            {
LABEL_312:
              v304 = (v531 + 40 * v291);
              if (v304[2] - 1 < v572)
              {
                v558.n128_u64[0] = v290;
                *&v564 = v257;
                *&v560 = v272;
                *&v566 = v273;
                v559.n128_u32[0] = v260;
                *&v565 = v259;
                *&v561 = v258;
                LODWORD(v568) = v285;
                LODWORD(v567) = v287;
                v563.n128_u64[0] = v275;
                v305 = v274;
                *&v562 = v276;
                v557.n128_u64[0] = v277;
                v556.n128_u64[0] = v292;
                v530 = (v531 + 40 * v291);
                SIValueSet<unsigned long long>::SIValueSetInsert((v541 + 216), v290);
                v602[0].n128_u64[1] = v305;
                v602[0].n128_u64[0] = v563.n128_u64[0];
                v602[1].n128_u64[1] = v557.n128_u64[0];
                v602[1].n128_u64[0] = v562;
                v602[2].n128_u64[1] = v564;
                v602[2].n128_u64[0] = v561;
                v602[3].n128_u64[0] = __PAIR64__(LODWORD(v286), v567);
                v602[3].n128_u64[1] = __PAIR64__(LODWORD(v283), v568);
                v602[4].n128_f32[0] = v284;
                v602[4].n128_u8[4] = v565;
                v602[4].n128_u8[5] = v559.n128_u8[0];
                *(v602[4].n128_u64 + 6) = 0;
                v602[4].n128_u16[7] = 0;
                *(&v603 + 1) = v566;
                *&v603 = v560;
                LODWORD(v604[0]) = v586;
                BYTE4(v604[0]) = v587;
                *(v604 + 5) = v584;
                BYTE7(v604[0]) = v585;
                BYTE12(v604[0]) = v556.n128_u8[4];
                DWORD2(v604[0]) = v556.n128_u32[0];
                *(v604 + 13) = v591[0];
                *(&v604[1] + 12) = *(v591 + 15);
                DWORD1(v604[2]) = 0;
                *(&v604[2] + 1) = v558.n128_u64[0];
                v605 = 0uLL;
                pqpush_rankAndFetchInfo_t(v530, v602);
                goto LABEL_273;
              }

              v306 = (*v304 + 160);
              if (!*v304)
              {
                v306 = &ZERO_FETCHINFO;
              }

              v307 = *(v306 + 12);
              v308 = *(v306 + 13);
              if ((*(v306 + 69) | v260))
              {
                v309 = *(v306 + 15);
                if (v283 != v309 || v286 <= v308 && (v286 != v308 || v287 >= v307))
                {
                  v310 = v283 != 100.0;
                  if (v283 <= v309)
                  {
                    v310 = v309 == 100.0;
                  }

                  if (!v310)
                  {
                    goto LABEL_339;
                  }
                }
              }

              else
              {
                v313 = v306;
                v311 = *v306;
                v312 = *(v313 + 1);
                if (__PAIR128__(v312, v311) >= __PAIR128__(v274, v275))
                {
                  v324 = v274 == v312 && v275 == v311;
                  if (!v324 || v286 <= v308 && (v286 != v308 || v287 >= v307))
                  {
                    goto LABEL_339;
                  }
                }
              }

              v556.n128_u64[0] = v292;
              v528 = v291;
              v557.n128_u64[0] = v277;
              *&v562 = v276;
              v314 = v274;
              v563.n128_u64[0] = v275;
              LODWORD(v567) = v287;
              LODWORD(v568) = v285;
              *&v564 = v257;
              *&v561 = v258;
              *&v565 = v259;
              v559.n128_u32[0] = v260;
              *&v566 = v273;
              *&v560 = v272;
              v315 = v290;
              v530 = (v531 + 40 * v291);
              pqpop_rankAndFetchInfo_t(v602, v304);
              v316 = v602[3].n128_u32[0];
              v317 = v602[3].n128_f32[1];
              v318 = v602[3].n128_u32[2];
              v319 = v602[3].n128_f32[3];
              v320 = v602[4].n128_f32[0];
              v321 = *(&v604[2] + 1);
              if (isDebugVerboseMode_onceToken != -1)
              {
                v526 = v602[3].n128_f32[3];
                v527 = v602[3].n128_f32[1];
                v525 = v602[4].n128_f32[0];
                v523 = v602[3].n128_u32[2];
                v524 = v602[3].n128_u32[0];
                dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
                v318 = v523;
                v316 = v524;
                v320 = v525;
                v319 = v526;
                v317 = v527;
              }

              v322 = v315;
              if (isDebugVerboseMode_debugEnabled == 1)
              {
                v523 = v318;
                v524 = v316;
                v525 = v320;
                v526 = v319;
                v527 = v317;
                v522 = *__error();
                v521 = _SILogForLogForCategory(1);
                if (os_log_type_enabled(v521, OS_LOG_TYPE_DEFAULT))
                {
                  v602[0].n128_u32[0] = 134219776;
                  *(v602[0].n128_u64 + 4) = v530;
                  v602[0].n128_u16[6] = 1024;
                  *(&v602[0].n128_u32[3] + 2) = v528;
                  v602[1].n128_u16[1] = 2048;
                  *(v602[1].n128_u64 + 4) = v321;
                  v602[1].n128_u16[6] = 1024;
                  *(&v602[1].n128_u32[3] + 2) = v523;
                  v602[2].n128_u16[1] = 2048;
                  *(v602[2].n128_f64 + 4) = v525;
                  v602[2].n128_u16[6] = 1024;
                  *(&v602[2].n128_u32[3] + 2) = v524;
                  v602[3].n128_u16[1] = 2048;
                  *(v602[3].n128_f64 + 4) = v526;
                  v602[3].n128_u16[6] = 2048;
                  *(&v602[3].n128_f64[1] + 6) = v527;
                  _os_log_impl(&dword_1C278D000, v521, OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: popped, oid: %lld, containerId : %u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v602, 0x46u);
                }

                *__error() = v522;
                v322 = v315;
              }

              v252 = v541;
              v323 = v322;
              SIValueSet<unsigned long long>::SIValueSetInsert((v541 + 216), v322);
              v602[0].n128_u64[1] = v314;
              v602[0].n128_u64[0] = v563.n128_u64[0];
              v602[1].n128_u64[1] = v557.n128_u64[0];
              v602[1].n128_u64[0] = v562;
              v602[2].n128_u64[1] = v564;
              v602[2].n128_u64[0] = v561;
              v602[3].n128_u64[0] = __PAIR64__(LODWORD(v286), v567);
              v602[3].n128_u64[1] = __PAIR64__(LODWORD(v283), v568);
              v602[4].n128_f32[0] = v284;
              v602[4].n128_u8[4] = v565;
              v602[4].n128_u8[5] = v559.n128_u8[0];
              *(v602[4].n128_u64 + 6) = v592;
              v602[4].n128_u16[7] = v593;
              *(&v603 + 1) = v566;
              *&v603 = v560;
              LODWORD(v604[0]) = v586;
              BYTE4(v604[0]) = v587;
              *(v604 + 5) = v584;
              BYTE7(v604[0]) = v585;
              BYTE12(v604[0]) = v556.n128_u8[4];
              DWORD2(v604[0]) = v556.n128_u32[0];
              *(v604 + 13) = v591[0];
              *(&v604[1] + 12) = *(v591 + 15);
              DWORD1(v604[2]) = 0;
              *(&v604[2] + 1) = v323;
              LOBYTE(v605) = 0;
              *(&v605 + 1) = v594.n128_u64[0];
              *(&v605 + 1) = *(v594.n128_u64 + 7);
              pqpush_rankAndFetchInfo_t(v530, v602);
LABEL_292:
              v59 = v550;
              goto LABEL_273;
            }
          }

          else
          {
            v302 = v296;
            v300 = *v296;
            v301 = v302[1];
            if (__PAIR128__(v301, v300) < __PAIR128__(v274, v275))
            {
              goto LABEL_312;
            }

            if (v301 == v274 && v300 == v275)
            {
              goto LABEL_309;
            }
          }

LABEL_339:
          if (isDebugVerboseMode_onceToken != -1)
          {
            v528 = v291;
            v529 = v274;
            v558.n128_u64[0] = v290;
            *&v564 = v257;
            *&v560 = v272;
            *&v566 = v273;
            v338 = v260;
            *&v565 = v259;
            v339 = v258;
            LODWORD(v568) = v285;
            LODWORD(v567) = v287;
            v563.n128_u64[0] = v275;
            *&v562 = v276;
            v557.n128_u64[0] = v277;
            v556.n128_u64[0] = v292;
            dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
            v292 = v556.n128_u64[0];
            v291 = v528;
            v274 = v529;
            v277 = v557.n128_u64[0];
            v276 = v562;
            v275 = v563.n128_u64[0];
            v287 = v567;
            v285 = v568;
            v257 = v564;
            v258 = v339;
            v259 = v565;
            v260 = v338;
            v273 = v566;
            v272 = v560;
            v290 = v558.n128_u64[0];
          }

          if (isDebugVerboseMode_debugEnabled == 1)
          {
            v556.n128_u64[0] = v292;
            v340 = v291;
            v557.n128_u64[0] = v277;
            *&v562 = v276;
            v529 = v274;
            v563.n128_u64[0] = v275;
            v341 = v287;
            LODWORD(v568) = v285;
            *&v564 = v257;
            *&v561 = v258;
            *&v565 = v259;
            v559.n128_u32[0] = v260;
            *&v566 = v273;
            *&v560 = v272;
            v558.n128_u64[0] = v290;
            LODWORD(v530) = *__error();
            v342 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v342, OS_LOG_TYPE_DEFAULT))
            {
              v602[0].n128_u32[0] = 134219776;
              *(v602[0].n128_u64 + 4) = v531 + 40 * v340;
              v602[0].n128_u16[6] = 1024;
              *(&v602[0].n128_u32[3] + 2) = v340;
              v602[1].n128_u16[1] = 2048;
              *(v602[1].n128_u64 + 4) = v558.n128_u64[0];
              v602[1].n128_u16[6] = 1024;
              *(&v602[1].n128_u32[3] + 2) = v568;
              v602[2].n128_u16[1] = 2048;
              *(v602[2].n128_f64 + 4) = v284;
              v602[2].n128_u16[6] = 1024;
              *(&v602[2].n128_u32[3] + 2) = v341;
              v602[3].n128_u16[1] = 2048;
              *(v602[3].n128_f64 + 4) = v283;
              v602[3].n128_u16[6] = 2048;
              *(&v602[3].n128_f64[1] + 6) = v286;
              _os_log_impl(&dword_1C278D000, v342, OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: insert_hash, oid: %lld, containerId:%u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v602, 0x46u);
            }

            *__error() = v530;
            v252 = v541;
            v290 = v558.n128_u64[0];
            v272 = v560;
            v273 = v566;
            v260 = v559.n128_u32[0];
            v259 = v565;
            v258 = v561;
            v257 = v564;
            v285 = v568;
            v287 = v341;
            v275 = v563.n128_u64[0];
            v274 = v529;
            v276 = v562;
            v277 = v557.n128_u64[0];
            v291 = v340;
            v292 = v556.n128_u64[0];
            if (!v568)
            {
              goto LABEL_292;
            }
          }

          else if (!v285)
          {
            goto LABEL_292;
          }

          v528 = v291;
          v529 = v274;
          v325 = (v531 + 40 * v291);
          isa = v325[3].isa;
          v530 = v325;
          v558.n128_u64[0] = v290;
          *&v566 = v273;
          *&v565 = v259;
          *&v561 = v258;
          *&v564 = v257;
          LODWORD(v568) = v285;
          LODWORD(v567) = v287;
          v563.n128_u64[0] = v275;
          *&v562 = v276;
          if (!isa)
          {
            v327 = v272;
            v328 = v260;
            v557.n128_u64[0] = v277;
            v556.n128_u64[0] = v292;
            isa = container_fetch_table_create(v572);
            v274 = v529;
            v325 = v530;
            v292 = v556.n128_u64[0];
            v277 = v557.n128_u64[0];
            v276 = v562;
            v275 = v563.n128_u64[0];
            v287 = v567;
            v285 = v568;
            v257 = v564;
            v258 = v561;
            LOBYTE(v259) = v565;
            v260 = v328;
            v273 = v566;
            v272 = v327;
            v290 = v558.n128_u64[0];
            v530[3].isa = isa;
          }

          if (!v325[4].isa)
          {
            v329 = v272;
            v330 = v260;
            v557.n128_u64[0] = v277;
            v556.n128_u64[0] = v292;
            v331 = container_fetch_table_q2_create(v572);
            v292 = v556.n128_u64[0];
            v277 = v557.n128_u64[0];
            v276 = v562;
            v274 = v529;
            v332 = v530;
            v275 = v563.n128_u64[0];
            v287 = v567;
            v285 = v568;
            v257 = v564;
            v258 = v561;
            LOBYTE(v259) = v565;
            v260 = v330;
            v273 = v566;
            v272 = v329;
            v290 = v558.n128_u64[0];
            v530[4].isa = v331;
            isa = v332[3].isa;
          }

          v602[0].n128_u64[0] = v275;
          v602[0].n128_u64[1] = v274;
          v602[1].n128_u64[0] = v276;
          v333 = v277;
          v602[1].n128_u64[1] = v277;
          v602[2].n128_u64[0] = v258;
          v602[2].n128_u64[1] = v257;
          v602[3].n128_u64[0] = __PAIR64__(LODWORD(v286), v287);
          v602[3].n128_u64[1] = __PAIR64__(LODWORD(v283), v285);
          v602[4].n128_f32[0] = v284;
          v602[4].n128_u8[4] = v259;
          v559.n128_u32[0] = v260;
          v602[4].n128_u8[5] = v260;
          *(v602[4].n128_u64 + 6) = 0;
          v602[4].n128_u16[7] = 0;
          *&v560 = v272;
          *&v603 = v272;
          *(&v603 + 1) = v273;
          LODWORD(v604[0]) = v586;
          BYTE4(v604[0]) = v587;
          *(v604 + 5) = 0;
          BYTE7(v604[0]) = 0;
          BYTE12(v604[0]) = BYTE4(v292);
          v334 = v292;
          DWORD2(v604[0]) = v292;
          *(v604 + 13) = v591[0];
          *(&v604[1] + 12) = *(v591 + 15);
          DWORD1(v604[2]) = 0;
          *(&v604[2] + 1) = v290;
          v605 = 0uLL;
          v557.n128_u32[0] = container_fetch_table_check_and_insert(isa, v602);
          if (v557.n128_u32[0])
          {
            if (isDebugVerboseMode_onceToken != -1)
            {
              dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
            }

            if (isDebugVerboseMode_debugEnabled == 1)
            {
              v343 = *__error();
              v556.n128_u64[0] = _SILogForLogForCategory(1);
              if (os_log_type_enabled(v556.n128_u64[0], OS_LOG_TYPE_DEFAULT))
              {
                v602[0].n128_u32[0] = 134219776;
                *(v602[0].n128_u64 + 4) = v530;
                v602[0].n128_u16[6] = 1024;
                *(&v602[0].n128_u32[3] + 2) = v528;
                v602[1].n128_u16[1] = 2048;
                *(v602[1].n128_u64 + 4) = v558.n128_u64[0];
                v602[1].n128_u16[6] = 1024;
                *(&v602[1].n128_u32[3] + 2) = v568;
                v602[2].n128_u16[1] = 2048;
                *(v602[2].n128_f64 + 4) = v284;
                v602[2].n128_u16[6] = 1024;
                *(&v602[2].n128_u32[3] + 2) = v567;
                v602[3].n128_u16[1] = 2048;
                *(v602[3].n128_f64 + 4) = v283;
                v602[3].n128_u16[6] = 2048;
                *(&v602[3].n128_f64[1] + 6) = v286;
                _os_log_impl(&dword_1C278D000, v556.n128_u64[0], OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: insert_hash_table, oid: %lld, containerId:%u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v602, 0x46u);
              }

              *__error() = v343;
              v252 = v541;
            }
          }

          v335 = v530[4].isa;
          v602[0].n128_u64[1] = v529;
          v602[0].n128_u64[0] = v563.n128_u64[0];
          v602[1].n128_u64[1] = v333;
          v602[1].n128_u64[0] = v562;
          v602[2].n128_u64[1] = v564;
          v602[2].n128_u64[0] = v561;
          v602[3].n128_u64[0] = __PAIR64__(LODWORD(v286), v567);
          v602[3].n128_u64[1] = __PAIR64__(LODWORD(v283), v568);
          v602[4].n128_f32[0] = v284;
          v602[4].n128_u8[4] = v565;
          v602[4].n128_u8[5] = v559.n128_u8[0];
          *(v602[4].n128_u64 + 6) = v592;
          v602[4].n128_u16[7] = v593;
          *(&v603 + 1) = v566;
          *&v603 = v560;
          BYTE4(v604[0]) = v587;
          LODWORD(v604[0]) = v586;
          *(v604 + 5) = v334 << 24;
          *(v604 + 13) = v591[0];
          *(&v604[1] + 12) = *(v591 + 15);
          DWORD1(v604[2]) = 0;
          *(&v604[2] + 1) = v558.n128_u64[0];
          v605 = 0uLL;
          if (container_fetch_table_q2_check_and_insert(v335, v602))
          {
            if (isDebugVerboseMode_onceToken != -1)
            {
              dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
            }

            v295 = v558.n128_u64[0];
            if (isDebugVerboseMode_debugEnabled == 1)
            {
              v336 = *__error();
              v337 = _SILogForLogForCategory(1);
              if (os_log_type_enabled(v337, OS_LOG_TYPE_DEFAULT))
              {
                v602[0].n128_u32[0] = 134219776;
                *(v602[0].n128_u64 + 4) = v530;
                v602[0].n128_u16[6] = 1024;
                *(&v602[0].n128_u32[3] + 2) = v528;
                v602[1].n128_u16[1] = 2048;
                *(v602[1].n128_u64 + 4) = v558.n128_u64[0];
                v602[1].n128_u16[6] = 1024;
                *(&v602[1].n128_u32[3] + 2) = v568;
                v602[2].n128_u16[1] = 2048;
                *(v602[2].n128_f64 + 4) = v284;
                v602[2].n128_u16[6] = 1024;
                *(&v602[2].n128_u32[3] + 2) = v567;
                v602[3].n128_u16[1] = 2048;
                *(v602[3].n128_f64 + 4) = v283;
                v602[3].n128_u16[6] = 2048;
                *(&v602[3].n128_f64[1] + 6) = v286;
                _os_log_impl(&dword_1C278D000, v337, OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: insert_hash_tableq2, oid: %lld,  containerId:%u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v602, 0x46u);
              }

              *__error() = v336;
              v252 = v541;
              v295 = v558.n128_u64[0];
            }
          }

          else
          {
            v295 = v558.n128_u64[0];
            if (!v557.n128_u32[0])
            {
              goto LABEL_292;
            }
          }

          v294 = (v252 + 216);
LABEL_291:
          SIValueSet<unsigned long long>::SIValueSetInsert(v294, v295);
          goto LABEL_292;
        }
      }

      else if (v275 | v274)
      {
        goto LABEL_295;
      }

      v296 += 20;
      goto LABEL_299;
    }

LABEL_273:
    v251 += 7;
    v250 = (v250 + 5);
    ++v248;
    v249 += 10;
    ++v247;
    ++v246;
    if (--v571)
    {
      continue;
    }

    break;
  }

  pthread_rwlock_unlock((v252 + 16));
  v344 = v569;
  if (!v569)
  {
    if (v546)
    {
      _Block_release(v546);
    }

    if (dword_1EBF46AD0 < 5)
    {
      goto LABEL_572;
    }

    v345 = *__error();
    v346 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v346, OS_LOG_TYPE_DEFAULT))
    {
      v602[0].n128_u32[0] = 134217984;
      *(v602[0].n128_u64 + 4) = v590;
      v347 = "readSDBForOids early exit %p";
LABEL_583:
      _os_log_impl(&dword_1C278D000, v346, OS_LOG_TYPE_DEFAULT, v347, v602, 0xCu);
    }

LABEL_584:
    *__error() = v345;
    goto LABEL_572;
  }

  v57 = v590;
  *(*(v590 + 1) + 512) += v569;
  v571 = v344;
  v90 = v547;
  v92 = v554;
  v91 = v570;
LABEL_78:
  v93 = &unk_1C2BF9000;
LABEL_102:
  v123 = v582;
  v582[0] = MEMORY[0x1E69E9820];
  v582[1] = v93[294];
  v582[2] = ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke;
  v582[3] = &__block_descriptor_tmp_117;
  v583 = v90;
  v582[4] = v57;
  v124 = v548;
  v582[5] = v548;
  v582[6] = v553;
  v582[7] = v572;
  v582[8] = v552;
  v582[9] = v59;
LABEL_103:
  if ((v545 & 1) != 0 && (*(v57 + 641) & 1) == 0 && !v91)
  {
    v125 = v571;
    v91 = malloc_type_malloc(v571, 0x100004077774924uLL);
    v126 = 0;
    v127 = v59 + 69;
    v128 = v551;
    while (1)
    {
      if (v128)
      {
        v129 = v128[v126] != 0;
        if (v128[v126])
        {
          v130 = 1;
        }

        else
        {
          v130 = v59 == 0;
        }

        if (!v130)
        {
LABEL_114:
          v131 = *(v127 - 37);
          v132 = *(v127 - 29);
          if (*v127)
          {
            v132 = 0;
            v131 = *(v127 - 1);
          }

          v129 = (v131 | v132) != 0;
        }
      }

      else
      {
        if (v59)
        {
          goto LABEL_114;
        }

        v129 = 0;
      }

      v91[v126++] = v129;
      v127 += 80;
      if (v125 == v126)
      {
        v57 = v590;
        break;
      }
    }
  }

  *&v570 = v91;
  v133 = *(v57 + 13);
  do
  {
    v134 = v133;
    v133 = *(v133 + 80);
  }

  while (v133);
  v135 = *(v134 + 40);
  v580[0] = MEMORY[0x1E69E9820];
  v136 = v93[294];
  v580[1] = v136;
  v580[2] = ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_2;
  v580[3] = &__block_descriptor_tmp_118_5707;
  v580[4] = &v588;
  v580[5] = v92;
  v581 = v539;
  v580[6] = v135;
  v580[7] = v59;
  v580[8] = v57;
  v137 = CFAbsoluteTimeGetCurrent();
  kdebug_trace();
  Log = _MDPerf_QueryLog();
  v139 = v590;
  v140 = *(v590 + 1);
  if (v140 + 1 >= 2)
  {
    v153 = Log;
    if (os_signpost_enabled(Log))
    {
      v154 = *(v140 + 608);
      v155 = qos_class_self();
      v602[0].n128_u32[0] = 134218240;
      *(v602[0].n128_u64 + 4) = v154;
      v602[0].n128_u16[6] = 1024;
      *(&v602[0].n128_u32[3] + 2) = v155;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v153, OS_SIGNPOST_INTERVAL_BEGIN, v140, "QueryReadSDB", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", v602, 0x12u);
      v139 = v590;
    }
  }

  PartialQueryResults::attributeIdVector(v555, *(*(v139 + 3) + 1192));
  v141 = *(v590 + 5);
  v142 = (v141 & 0x80) == 0;
  v143 = *(v590 + 3);
  if (*(v143 + 6587))
  {
    if (*(v143 + 2072))
    {
      v144 = 8;
    }

    else
    {
      v144 = 0;
    }

    LODWORD(v569) = v144;
  }

  else
  {
    LODWORD(v569) = 0;
  }

  if (v549)
  {
    v145 = 6;
  }

  else
  {
    v145 = 4;
  }

  v146 = *v555;
  v147 = *(v555 + 29);
  *&v568 = v555 + 232;
  if (v146 != 1)
  {
    if (!v147)
    {
      goto LABEL_407;
    }

    v148 = v555;
    v149 = v555 + 192;
    if (*(v555 + 24))
    {
      goto LABEL_386;
    }

    v150 = *(v555 + 12);
    if (!v150)
    {
      v152 = *(v555 + 15);
      if (v152)
      {
        SIFlattenArrayToCStringVector(v152, v555 + 12, v555 + 30, v568);
        v150 = *(v148 + 12);
        if (!v150)
        {
          goto LABEL_519;
        }
      }

      else
      {
        v150 = 0;
      }
    }

    v348 = (v148 + 8);
    goto LABEL_385;
  }

  if (v147)
  {
    v148 = v555;
    v149 = v555 + 200;
    if (!*(v555 + 25))
    {
      v150 = *(v555 + 13);
      if (!v150)
      {
        v151 = *(v555 + 16);
        if (v151)
        {
          v602[0].n128_u64[0] = 0;
          SIFlattenArrayToCStringVector(v151, v555 + 13, v602[0].n128_u64, &v594);
          v150 = *(v148 + 13);
        }

        else
        {
          v150 = 0;
        }

        v148 = v555;
      }

      v348 = v602;
LABEL_385:
      PartialQueryResults::setupCannedAttributeVector(v148, v150, v149, v348);
    }

LABEL_386:
    v349 = *(v148 + 29);
    if (*v148)
    {
      if (v349)
      {
        v350 = v555 + 184;
        if (!*(v555 + 23))
        {
          v351 = v555;
          v353 = (v555 + 104);
          v352 = *(v555 + 13);
          if (!v352)
          {
            v354 = *(v555 + 16);
            if (v354)
            {
              v602[0].n128_u64[0] = 0;
              SIFlattenArrayToCStringVector(v354, v555 + 13, v602[0].n128_u64, &v594);
              v352 = *v353;
            }

            else
            {
              v352 = 0;
            }

            v351 = v555;
          }

          v368 = v602;
          goto LABEL_406;
        }
      }
    }

    else if (v349)
    {
      v350 = v555 + 176;
      if (!*(v555 + 22))
      {
        v355 = v555;
        v352 = *(v555 + 12);
        if (!v352)
        {
          v356 = *(v555 + 15);
          if (v356)
          {
            SIFlattenArrayToCStringVector(v356, v555 + 12, v555 + 30, v568);
            v352 = *(v355 + 12);
            if (!v352)
            {
              v357 = __si_assert_copy_extra_332();
              v365 = v357;
              v366 = "";
              if (v357)
              {
                v366 = v357;
              }

              __message_assert_336(v357, v358, v359, v360, v361, v362, v363, v364, "SISearchCtx.h", 998, "fAttributeVector", v366);
              free(v365);
              if (__valid_fs(-1))
              {
                v367 = 2989;
              }

              else
              {
                v367 = 3072;
              }

              *v367 = -559038737;
              abort();
            }
          }

          else
          {
            v352 = 0;
          }
        }

        v368 = (v355 + 16);
        v351 = v355;
LABEL_406:
        PartialQueryResults::setupCannedCollectAttributeVector(v351, v352, v350, v368);
      }
    }
  }

LABEL_407:
  v369 = v590;
  if (*(v590 + 40) == 3)
  {
    v370 = v555;
    PartialQueryResults::completionAttributeIdVector(v555, *(*(v590 + 3) + 1192));
    if ((*(v370 + 321) & 1) == 0)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v512 = *__error();
        v513 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v513, OS_LOG_TYPE_DEFAULT))
        {
          v602[0].n128_u16[0] = 0;
          _os_log_impl(&dword_1C278D000, v513, OS_LOG_TYPE_DEFAULT, "Will generate spotlight completions", v602, 2u);
        }

        *__error() = v512;
      }

      dispatch_get_global_queue(-32768, 0);
      md_deadline_once_start();
    }

    v369 = v590;
    if (!*(v590 + 44))
    {
      v371 = v547;
      v372 = malloc_type_calloc(1uLL, 24 * v547 + 8, 0x1000040789AEA99uLL);
      v369 = v590;
      *(v590 + 44) = v372;
      v372[2] = v371;
      if (v371)
      {
        v373 = 0;
        do
        {
          v374 = *(v590 + 44) + 24 * v373;
          *(v374 + 16) = xmmword_1C2BF7A50;
          *(v374 + 8) = 0;
          ++v373;
        }

        while (v371 > v373);
        v369 = v590;
      }
    }
  }

  v375 = v555;
  prepareFieldIds(v369, v555);
  v376 = v590;
  if (*(v590 + 40) == 3)
  {
    v377 = v570;
    if ((*(v375 + 321) & 1) == 0)
    {
      SILanguageModelReserve();
      v377 = v570;
      v376 = v590;
    }
  }

  else
  {
    v377 = v570;
  }

  v378 = *(v376 + 114);
  if (!v378)
  {
    goto LABEL_449;
  }

  if (*v378 != 3506)
  {
    v517 = __si_assert_copy_extra_332();
    v515 = v517;
    v518 = "";
    if (v517)
    {
      v518 = v517;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 693, v518);
    goto LABEL_610;
  }

  if ((*(v378 + 74) & 1) == 0)
  {
    v508 = __si_assert_copy_extra_3233(0, -1);
    v460 = v508;
    v509 = "";
    if (v508)
    {
      v509 = v508;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12774, "dboi->isSuspended", v509);
    goto LABEL_588;
  }

  *(v378 + 75) = 0;
  *(v378 + 184) = 0;
  v380 = *(v378 + 24);
  v379 = *(v378 + 32);
  if (*(v378 + 136) < v571 || !v379)
  {
    free(v379);
    v381 = 32 * v571;
    v382 = malloc_type_zone_malloc(queryZone, 32 * v571, 0xA4971684uLL);
    if (v382)
    {
      *(v378 + 32) = v382;
      madvise(v382, v381, 3);
      goto LABEL_427;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v602[0].n128_u16[0] = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v602, 2u);
    }

    *(v378 + 32) = 0;
    db_obj_iter_release(*(v590 + 114));
    v376 = v590;
    v377 = v551;
LABEL_449:
    v391 = v571;
    v407 = db_obj_iter_create_with_filter(*(*(v376 + 3) + 1192), v571, v554, v124, v377, (v145 | v569) | v142, v580, v123, *(v376 + 115));
    *(v590 + 114) = v407;
    if (*v407 == 3506)
    {
      *(v407 + 72) = 1;
      v390 = 0x1EBF46000uLL;
      v387 = v555;
      v392 = v544;
      goto LABEL_451;
    }

    v519 = __si_assert_copy_extra_332();
    v515 = v519;
    v520 = "";
    if (v519)
    {
      v520 = v519;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 707, v520);
LABEL_610:
    free(v515);
LABEL_589:
    v510 = 2989;
    goto LABEL_595;
  }

LABEL_427:
  *(v378 + 136) = v571;
  atomic_store(0, (v378 + 144));
  *(v378 + 160) = 0;
  v383 = *(v378 + 48);
  if (v383)
  {
    _Block_release(v383);
  }

  *(v378 + 48) = _Block_copy(v123);
  v384 = *(v378 + 40);
  v385 = v554;
  if (v384)
  {
    _Block_release(v384);
  }

  *(v378 + 40) = _Block_copy(v580);
  v387 = v555;
  if ((*(v380 + 804) & 1) != 0 && (v141 & 0x80) != 0)
  {
    v388 = 0;
    v389 = 16;
    v390 = 0x1EBF46000;
    v391 = v571;
    v392 = v544;
    v393 = v570;
    do
    {
      v394 = (*(v378 + 32) + v389);
      *(v394 - 2) = *(v385 + 8 * v388);
      *v394 = 0;
      if (v393)
      {
        v395 = 4 * (*(v393 + v388) & 1);
      }

      else
      {
        v395 = 0;
      }

      *(*(v378 + 32) + v389 + 8) = *(*(v378 + 32) + v389 + 8) & 0xFB | v395;
      v396 = *(v378 + 32) + v389;
      *(v396 + 9) = 0;
      *(v396 + 8) &= ~1u;
      *(*(v378 + 32) + v389) |= 0x400000000uLL;
      *(*(v378 + 32) + v389 + 8) &= ~2u;
      v397 = (*(v378 + 32) + v389);
      v398 = *v397 | 0x3FFFFFFFCLL;
      *(v397 - 1) = v388;
      *v397 = v398;
      if (v124)
      {
        v399 = (*(v124 + 2 * v388) & 0xFFDF) == 17;
      }

      else
      {
        v399 = 3;
      }

      *(*(v378 + 32) + v389) = *(*(v378 + 32) + v389) & 0xFFFFFFFFFFFFFFFCLL | v399;
      ++v388;
      v389 += 32;
    }

    while (v391 != v388);
  }

  else
  {
    v392 = v544;
    v400 = v570;
    if (v570)
    {
      v401 = 0;
      v402 = 16;
      v390 = 0x1EBF46000;
      v391 = v571;
      do
      {
        v403 = (*(v378 + 32) + v402);
        *(v403 - 2) = *(v385 + 8 * v401);
        *v403 = 0;
        *(*(v378 + 32) + v402 + 8) = *(*(v378 + 32) + v402 + 8) & 0xFB | (4 * (*(v400 + v401) & 1));
        v404 = *(v378 + 32) + v402;
        *(v404 + 9) = 0;
        *(v404 + 8) &= ~1u;
        *(*(v378 + 32) + v402) |= 0x400000000uLL;
        *(*(v378 + 32) + v402 + 8) &= ~2u;
        v405 = (*(v378 + 32) + v402);
        v406 = *v405 | 0x3FFFFFFFCLL;
        *(v405 - 1) = v401;
        *v405 = v406;
        *(*(v378 + 32) + v402) &= 0xFFFFFFFFFFFFFFFCLL;
        ++v401;
        v402 += 32;
      }

      while (v391 != v401);
    }

    else
    {
      v442 = 0;
      v443 = 16;
      v390 = 0x1EBF46000;
      v391 = v571;
      do
      {
        v444 = (*(v378 + 32) + v443);
        *(v444 - 2) = *(v385 + 8 * v442);
        *v444 = 0;
        *(*(v378 + 32) + v443 + 8) &= ~4u;
        v445 = *(v378 + 32) + v443;
        *(v445 + 9) = 0;
        *(v445 + 8) &= ~1u;
        *(*(v378 + 32) + v443) |= 0x400000000uLL;
        *(*(v378 + 32) + v443 + 8) &= ~2u;
        v446 = (*(v378 + 32) + v443);
        v447 = *v446 | 0x3FFFFFFFCLL;
        *(v446 - 1) = v442;
        *v446 = v447;
        *(*(v378 + 32) + v443) &= 0xFFFFFFFFFFFFFFFCLL;
        ++v442;
        v443 += 32;
      }

      while (v391 != v442);
    }
  }

LABEL_451:
  v408 = 128;
  if (gCPUCount < 2)
  {
    v408 = 1;
  }

  v409 = gCPUCount >> 1;
  if ((gCPUCount - 256) < 0xFFFFFF02)
  {
    v409 = v408;
  }

  v410 = v590;
  if (v392 || *(v590 + 40) == 4 || (*(*(v590 + 3) + 6587) & 1) == 0)
  {
    v411 = 1;
  }

  else if (v391 < v409)
  {
    v411 = 1;
  }

  else
  {
    v411 = v409;
  }

  v412 = 8 * v411;
  MEMORY[0x1EEE9AC00](v386);
  bzero(&v521 - ((8 * v411 + 15) & 0x7FFFFFFF0), 8 * v411);
  ++*(*(v410 + 1) + 480);
  v413 = *(v410 + 114);
  *&v569 = &v521 - ((8 * v411 + 15) & 0x7FFFFFFF0);
  db_obj_iter_create_subiterators(v413, v411, v569, v414, v415, v416);
  v417 = *__error();
  v418 = _SILogForLogForCategory(1);
  v419 = 2 * (*(v390 + 2768) < 4);
  if (os_log_type_enabled(v418, v419))
  {
    v420 = CFAbsoluteTimeGetCurrent();
    v602[0].n128_u32[0] = 134218240;
    *(v602[0].n128_u64 + 4) = v391;
    v602[0].n128_u16[6] = 2048;
    *(&v602[0].n128_f64[1] + 6) = v420 - v137;
    _os_log_impl(&dword_1C278D000, v418, v419, "Created iterator for %ld oids in %f seconds!", v602, 0x16u);
  }

  *__error() = v417;
  v421 = v590;
  if (v545)
  {
    if ((*(v590 + 642) & 1) == 0)
    {
      preparePostCheckQueries(&v590);
      v421 = v590;
    }

    if ((*(v421 + 643) & 1) == 0)
    {
      *&v567 = 8 * v411;
      if (*(v421 + 208))
      {
        v422 = 0;
        v423 = 0;
        do
        {
          v424 = *(v421 + 105);
          v425 = *(v424 + v422 + 8);
          if (v425)
          {
            v594.n128_u64[0] = MEMORY[0x1E69E9820];
            v594.n128_u64[1] = v136;
            v595.n128_u64[0] = ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke;
            v595.n128_u64[1] = &__block_descriptor_tmp_151;
            v596.n128_u64[0] = &v590;
            v602[0].n128_u64[0] = MEMORY[0x1E69E9820];
            v602[0].n128_u64[1] = v136;
            v602[1].n128_u64[0] = __db_query_tree_apply_block_block_invoke;
            v602[1].n128_u64[1] = &unk_1E8198ED0;
            v602[2].n128_u64[0] = &v594;
            db_query_tree_apply_block_with_meta(v425, v602, 0);
            v421 = v590;
            v424 = *(v590 + 105);
          }

          v426 = *(v424 + v422 + 24);
          if (v426)
          {
            v594.n128_u64[0] = MEMORY[0x1E69E9820];
            v594.n128_u64[1] = v136;
            v595.n128_u64[0] = ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke;
            v595.n128_u64[1] = &__block_descriptor_tmp_151;
            v596.n128_u64[0] = &v590;
            v602[0].n128_u64[0] = MEMORY[0x1E69E9820];
            v602[0].n128_u64[1] = v136;
            v602[1].n128_u64[0] = __db_query_tree_apply_block_block_invoke;
            v602[1].n128_u64[1] = &unk_1E8198ED0;
            v602[2].n128_u64[0] = &v594;
            db_query_tree_apply_block_with_meta(v426, v602, 0);
            v421 = v590;
            v424 = *(v590 + 105);
          }

          v427 = *(v424 + v422 + 16);
          if (v427)
          {
            v594.n128_u64[0] = MEMORY[0x1E69E9820];
            v594.n128_u64[1] = v136;
            v595.n128_u64[0] = ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke;
            v595.n128_u64[1] = &__block_descriptor_tmp_151;
            v596.n128_u64[0] = &v590;
            v602[0].n128_u64[0] = MEMORY[0x1E69E9820];
            v602[0].n128_u64[1] = v136;
            v602[1].n128_u64[0] = __db_query_tree_apply_block_block_invoke;
            v602[1].n128_u64[1] = &unk_1E8198ED0;
            v602[2].n128_u64[0] = &v594;
            db_query_tree_apply_block_with_meta(v427, v602, 0);
            v421 = v590;
            v424 = *(v590 + 105);
          }

          v428 = *(v424 + v422);
          if (v428)
          {
            v594.n128_u64[0] = MEMORY[0x1E69E9820];
            v594.n128_u64[1] = v136;
            v595.n128_u64[0] = ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke;
            v595.n128_u64[1] = &__block_descriptor_tmp_151;
            v596.n128_u64[0] = &v590;
            v602[0].n128_u64[0] = MEMORY[0x1E69E9820];
            v602[0].n128_u64[1] = v136;
            v602[1].n128_u64[0] = __db_query_tree_apply_block_block_invoke;
            v602[1].n128_u64[1] = &unk_1E8198ED0;
            v602[2].n128_u64[0] = &v594;
            db_query_tree_apply_block_with_meta(v428, v602, 0);
            v421 = v590;
          }

          ++v423;
          v422 += 48;
        }

        while (v423 < *(v421 + 208));
      }

      *(v421 + 643) = 1;
      v390 = 0x1EBF46000uLL;
      v387 = v555;
      v391 = v571;
      v59 = v550;
      v412 = v567;
    }
  }

  v429 = *(v421 + 212);
  v39 = v429 == 1;
  v430 = v429 > 1;
  if (!v39 || v59 == 0)
  {
    v432 = v430;
  }

  else
  {
    v432 = 2;
  }

  *&v567 = *(*(v421 + 3) + 1192);
  v433 = v568;
  *&v566 = *v568;
  v434.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v435 = v434.n128_f64[0];
  if (*v433)
  {
    if (*(v387 + 18) || (v436 = PartialQueryResults::attributeIdVector(v387, *(*(v590 + 3) + 1192)), PartialQueryResults::setupFieldIdVector(v387, v436, v387 + 19, v387 + 18, 0), v437 = 1, PartialQueryResults::setupFieldIdVector(v387, v436, v387 + 21, v387 + 20, 1), *(v387 + 29)))
    {
      if (*(v387 + 28))
      {
        if ((*v387 & 1) == 0)
        {
          v438 = 1;
          goto LABEL_514;
        }

LABEL_509:
        v448 = (v387 + 200);
        if (!*(v387 + 25))
        {
          v449 = *(v387 + 13);
          if (!v449)
          {
            v450 = *(v387 + 16);
            if (v450)
            {
              v602[0].n128_u64[0] = 0;
              SIFlattenArrayToCStringVector(v450, v387 + 13, v602[0].n128_u64, &v594);
              v449 = *(v387 + 13);
            }

            else
            {
              v449 = 0;
            }
          }

          v462 = v602;
LABEL_526:
          PartialQueryResults::setupCannedAttributeVector(v387, v449, v448, v462);
        }

        goto LABEL_527;
      }

      if (*v387)
      {
        v439 = *(v387 + 13);
        if (v439)
        {
          goto LABEL_506;
        }

        v440 = *(v387 + 16);
        if (v440)
        {
          v602[0].n128_u64[0] = 0;
          SIFlattenArrayToCStringVector(v440, v387 + 13, v602[0].n128_u64, &v594);
          v439 = *(v387 + 13);
          goto LABEL_506;
        }

LABEL_505:
        v439 = 0;
        goto LABEL_506;
      }

      v439 = *(v387 + 12);
      if (!v439)
      {
        v441 = *(v387 + 15);
        if (!v441)
        {
          goto LABEL_505;
        }

        SIFlattenArrayToCStringVector(v441, v387 + 12, v387 + 30, v568);
        v439 = *(v387 + 12);
        if (!v439)
        {
LABEL_519:
          v452 = __si_assert_copy_extra_332();
          v460 = v452;
          v461 = "";
          if (v452)
          {
            v461 = v452;
          }

          __message_assert_336(v452, v453, v454, v455, v456, v457, v458, v459, "SISearchCtx.h", 998, "fAttributeVector", v461);
LABEL_588:
          free(v460);
          if (__valid_fs(-1))
          {
            goto LABEL_589;
          }

          v510 = 3072;
LABEL_595:
          *v510 = -559038737;
          abort();
        }
      }

LABEL_506:
      PartialQueryResults::setupFixedFunctionVector(v387, v439, v387 + 28);
      v438 = *(v387 + 29);
      v437 = v438 == 0;
    }

    else
    {
      v438 = 0;
    }
  }

  else
  {
    v438 = 0;
    v437 = 1;
  }

  if (*v387)
  {
    if (!v437)
    {
      goto LABEL_509;
    }

    goto LABEL_527;
  }

  if (v437)
  {
    goto LABEL_527;
  }

LABEL_514:
  v448 = (v387 + 192);
  if (!*(v387 + 24))
  {
    v449 = *(v387 + 12);
    if (v438 && !v449)
    {
      v451 = *(v387 + 15);
      if (v451)
      {
        SIFlattenArrayToCStringVector(v451, v387 + 12, v387 + 30, v568);
        v449 = *(v387 + 12);
        if (!v449)
        {
          goto LABEL_519;
        }
      }

      else
      {
        v449 = 0;
      }
    }

    v462 = (v387 + 8);
    goto LABEL_526;
  }

LABEL_527:
  LODWORD(v568) = v432;
  *&v565 = &v521;
  v463.n128_f64[0] = MEMORY[0x1EEE9AC00](v434);
  v464 = v412;
  v465 = (&v521 - ((v412 + 15) & 0x7FFFFFFF0));
  v466.n128_f64[0] = MEMORY[0x1EEE9AC00](v463);
  v468 = (&v521 - v467);
  MEMORY[0x1EEE9AC00](v466);
  v470 = &v521 - v469;
  bzero(&v521 - v469, v464);
  bzero(v465, v464);
  bzero(v468, v464);
  v471 = v590;
  if (*(v590 + 40) == 4)
  {
    v472 = v546;
    v473 = v544;
    if (!v544 && (*(*(v590 + 13) + 99) & 1) == 0 && !v546)
    {
LABEL_531:
      if (v411)
      {
        v474 = 0;
        v475 = v569;
        do
        {
          v476 = *(v590 + 13);
          v477 = v476;
          do
          {
            v478 = v477;
            v477 = *(v477 + 80);
          }

          while (v477);
          v479 = *(v476 + 80);
          if (v479)
          {
            v480 = 0;
            do
            {
              v480 ^= *(v476 + 104) == 0;
              v476 = v479;
              v479 = *(v479 + 80);
            }

            while (v479);
            if (v480)
            {
              v481 = 3553;
            }

            else
            {
              v481 = 2781;
            }
          }

          else
          {
            v481 = 2781;
          }

          *&v470[8 * v474] = PartialQueryResults::start(v387, *(*(v478 + 8) + 80), v481, *(*(v475 + 8 * v474) + 56), v474);
          ++v474;
        }

        while (v474 != v411);
        LOBYTE(v482) = 1;
        v471 = v590;
        v390 = 0x1EBF46000;
        v391 = v571;
        v59 = v550;
        v472 = v546;
      }

      else
      {
        LOBYTE(v482) = 0;
      }

      v483 = v568;
      goto LABEL_556;
    }
  }

  else
  {
    v472 = v546;
    v473 = v544;
    if (!(v544 | v546))
    {
      goto LABEL_531;
    }
  }

  v483 = v568;
  if (v411)
  {
    v482 = (v411 + 1) & 0xFFFFFFFE;
    v484 = vdupq_n_s64(v411 - 1);
    v485 = xmmword_1C2BF7A50;
    v486 = (v470 + 8);
    v487 = vdupq_n_s64(2uLL);
    do
    {
      v488 = vmovn_s64(vcgeq_u64(v484, v485));
      if (v488.i8[0])
      {
        *(v486 - 1) = v473;
      }

      if (v488.i8[4])
      {
        *v486 = v473;
      }

      v485 = vaddq_s64(v485, v487);
      v486 += 2;
      v482 -= 2;
    }

    while (v482);
  }

  else
  {
    LOBYTE(v482) = 0;
  }

LABEL_556:
  v573[0] = MEMORY[0x1E69E9820];
  v573[1] = v136;
  v573[2] = ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_120;
  v573[3] = &unk_1E8194388;
  v573[8] = v472;
  v573[9] = v471;
  v573[10] = v569;
  v573[11] = v470;
  v577 = v533;
  v573[12] = &v589;
  v573[13] = v391;
  v573[14] = v567;
  v573[15] = v566;
  v573[4] = v534;
  v573[5] = v535;
  v573[6] = v536;
  v573[7] = v537;
  v573[16] = v553;
  v573[17] = v548;
  v573[18] = v551;
  v573[19] = v572;
  v574 = v547;
  v575 = v483;
  v573[20] = v59;
  v573[21] = v542;
  v573[22] = v543;
  v573[23] = v387;
  v576 = v532;
  v578 = v538;
  v579 = v482;
  v573[24] = v552;
  v573[25] = v465;
  v573[26] = v468;
  dispatch_apply(v411, 0, v573);
  v489 = *__error();
  v490 = _SILogForLogForCategory(1);
  v491 = 2 * (*(v390 + 2768) < 4);
  if (os_log_type_enabled(v490, v491))
  {
    v492 = CFAbsoluteTimeGetCurrent();
    v602[0].n128_u32[0] = 134218240;
    *(v602[0].n128_u64 + 4) = v391;
    v602[0].n128_u16[6] = 2048;
    *(&v602[0].n128_f64[1] + 6) = v492 - v435;
    _os_log_impl(&dword_1C278D000, v490, v491, "Read/evaluated %ld dbos in %f seconds!", v602, 0x16u);
  }

  *__error() = v489;
  if (v546)
  {
    _Block_release(v546);
  }

  v493 = *(v590 + 114);
  if (*v493 != 3506)
  {
    v514 = __si_assert_copy_extra_332();
    v515 = v514;
    v516 = "";
    if (v514)
    {
      v516 = v514;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 702, v516);
    goto LABEL_610;
  }

  db2_obj_iter_suspend(v493);
  if (v411)
  {
    v494 = v590;
    do
    {
      v495 = *v465++;
      *(*(v494 + 1) + 464) += v495;
      v496 = *v468++;
      *(*(v494 + 1) + 488) += v496;
      --v411;
    }

    while (v411);
  }

  while (1)
  {
    v497 = OSAtomicDequeue(&v589, 0);
    if (!v497)
    {
      break;
    }

    free(v497);
  }

  kdebug_trace();
  v498 = _MDPerf_QueryLog();
  v499 = v590;
  v500 = *(v590 + 1);
  if (v500 + 1 >= 2)
  {
    v501 = v498;
    if (os_signpost_enabled(v498))
    {
      v502 = *(v500 + 608);
      v503 = qos_class_self();
      v602[0].n128_u32[0] = 134218240;
      *(v602[0].n128_u64 + 4) = v502;
      v602[0].n128_u16[6] = 1024;
      *(&v602[0].n128_u32[3] + 2) = v503;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v501, OS_SIGNPOST_INTERVAL_END, v500, "QueryReadSDB", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", v602, 0x12u);
      v499 = v590;
    }
  }

  if (*(v499 + 40) == 3 && (*(v387 + 321) & 1) == 0)
  {
    SILanguageModelUnreserve();
  }

  if (*(v390 + 2768) >= 5)
  {
    v345 = *__error();
    v346 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v346, OS_LOG_TYPE_DEFAULT))
    {
      v602[0].n128_u32[0] = 134217984;
      *(v602[0].n128_u64 + 4) = v590;
      v347 = "readSDBForOids exit %p";
      goto LABEL_583;
    }

    goto LABEL_584;
  }

LABEL_572:
  free(v570);
}

uint64_t CIIndexSetAddSortedIndexes_ArrayBackwards(uint64_t a1, unsigned int *a2, int a3)
{
  result = binarySearchMap(a1, *a2);
  v7 = result;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  if (v9 == v8)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v10 = *(a1 + 36);
    if (v10 == result)
    {
      goto LABEL_5;
    }

    v35 = *(a1 + 40);
    if (v10 >= result)
    {
      result = memmove((v35 + 4 * (v9 - v8 + result)), (v35 + 4 * result), 4 * (v10 - result));
      v9 = *(a1 + 32);
      v8 = *(a1 + 16);
    }

    else
    {
      result = memmove((v35 + 4 * v10), (v35 + 4 * (v10 + v9 - v8)), 4 * (result - (v10 + v9 - v8)));
      v9 = *(a1 + 32);
      v8 = *(a1 + 16);
      v7 = v7 - v9 + v8;
    }
  }

  *(a1 + 36) = v7;
LABEL_5:
  v11 = v9 - v8 + v7;
  v14 = v8 < 1;
  v12 = v8 + a3;
  v13 = (__clz(v8) ^ 0x1F) * a3;
  v14 = v14 || v12 <= v13;
  v15 = a3;
  if (v14)
  {
    v16 = 0;
    while (1)
    {
      v18 = a2[v16];
      if (v18 <= *(a1 + 24) && v18 >= *(a1 + 20))
      {
        if (v11 >= *(a1 + 32))
        {
          goto LABEL_11;
        }

        v11 = v11;
        while (1)
        {
          v19 = *(a1 + 40);
          v20 = *(v19 + 4 * v11);
          if (v20 <= v18)
          {
            break;
          }

          ++v11;
          v17 = v7 + 1;
          *(v19 + 4 * v7++) = v20;
          if (v11 >= *(a1 + 32))
          {
            goto LABEL_12;
          }
        }

        if (v20 == v18)
        {
          LODWORD(v11) = v11 + 1;
          *(v19 + 4 * v7++) = v18;
        }

        else
        {
LABEL_11:
          v17 = v7;
LABEL_12:
          v7 = v17 + 1;
          *(*(a1 + 40) + 4 * v17) = v18;
          ++*(a1 + 16);
        }
      }

      if (++v16 == a3)
      {
        goto LABEL_50;
      }
    }
  }

  v60 = a3;
  v21 = 0;
  v22 = a3 - 1;
  v23 = a2 + 1;
  while (1)
  {
    v25 = a2[v21];
    if (v25 > *(a1 + 24) || v25 < *(a1 + 20))
    {
      goto LABEL_25;
    }

    v26 = *(a1 + 40);
    v27 = *(a1 + 32);
    v28 = v27 - 1;
    LODWORD(v29) = v11;
    if ((v27 - 33) < v11)
    {
LABEL_34:
      v29 = v29;
      v24 = v28 + 1 > v29 ? v28 + 1 : v29;
      while (v29 <= v28)
      {
        v31 = *(v26 + 4 * v29++);
        if (v31 <= v25)
        {
          v24 = v29 - 1;
          break;
        }
      }
    }

    else
    {
      while (1)
      {
        v24 = (v29 + (v28 - v29) / 2);
        v30 = *(v26 + 4 * v24);
        if (v30 == v25)
        {
          break;
        }

        if (v30 > v25)
        {
          LODWORD(v29) = v24 + 1;
        }

        else
        {
          v28 = v24 - 1;
        }

        if (v29 > v28 - 32)
        {
          goto LABEL_34;
        }
      }
    }

    if (v24 < v27 && v25 == *(v26 + 4 * v24))
    {
      goto LABEL_25;
    }

    ++*(a1 + 16);
    v32 = v24 - v11;
    if (v24 != v11)
    {
      break;
    }

    v24 = v11;
LABEL_24:
    *(v26 + 4 * v7++) = v25;
    v11 = v24;
LABEL_25:
    ++v21;
    --v22;
    ++v23;
    if (v21 == v15)
    {
      goto LABEL_50;
    }
  }

  v33 = (v26 + 4 * v7);
  v34 = (v26 + 4 * v11);
  if (v24 != v27)
  {
    result = memmove(v33, v34, 4 * (v24 - v11));
    v7 += v32;
    v26 = *(a1 + 40);
    goto LABEL_24;
  }

  v36 = v27 - v11;
  result = memmove(v33, v34, 4 * (v27 - v11));
  v37 = v36 + v7;
  if ((v36 + v7) > *(a1 + 16))
  {
    v51 = __si_assert_copy_extra_332();
    v49 = v51;
    v59 = "";
    if (v51)
    {
      v59 = v51;
    }

    __message_assert_336(v51, v52, v53, v54, v55, v56, v57, v58, "CIIndexSet.c", 1632, "(int32_t)hole <= set->_count", v59);
LABEL_62:
    free(v49);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v7 = v37 + 1;
  *(*(a1 + 40) + 4 * v37) = v25;
  if (v21 + 1 < v60)
  {
    do
    {
      v39 = *v23++;
      v38 = v39;
      if (v39 <= *(a1 + 24) && v38 >= *(a1 + 20))
      {
        v40 = *(a1 + 40);
        if (v38 >= *(v40 + 4 * (v7 - 1)))
        {
          v41 = __si_assert_copy_extra_332();
          v49 = v41;
          v50 = "";
          if (v41)
          {
            v50 = v41;
          }

          __message_assert_336(v41, v42, v43, v44, v45, v46, v47, v48, "CIIndexSet.c", 1639, "o_at < set->_blob[hole-1]", v50);
          goto LABEL_62;
        }

        *(v40 + 4 * v7++) = v38;
        ++*(a1 + 16);
      }

      --v22;
    }

    while (v22);
  }

LABEL_50:
  *(a1 + 36) = v7;
  return result;
}

void oqpush_offset_t(void *result, uint64_t a2, size_t size)
{
  if (*(result + 12))
  {
    if (result[7] < (a2 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v17 = __si_assert_copy_extra(0);
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, "!queue->split || queue->splitPoint >= offset_t_GET_VALUE(value)", v19);
      free(v18);
      if (__valid_fs(-1))
      {
        v20 = 2989;
      }

      else
      {
        v20 = 3072;
      }

      *v20 = -559038737;
      abort();
    }

    v5 = result[3];
    if (v5 >= result[2])
    {
      v6 = __si_assert_copy_extra(0);
      v7 = v6;
      v8 = "";
      if (v6)
      {
        v8 = v6;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, "!queue->split", v8);
      free(v7);
      if (__valid_fs(-1))
      {
        v9 = 2989;
      }

      else
      {
        v9 = 3072;
      }

      *v9 = -559038737;
      abort();
    }
  }

  else
  {
    v10 = result[2];
    v5 = result[3];
    if (v5 >= v10)
    {
      v11 = 2 * v10;
      if (!v10)
      {
        v11 = 4;
      }

      result[2] = v11;
      v12 = result[1];
      v13 = 8 * v11;
      if (v12)
      {
        v14 = malloc_type_zone_realloc(queryZone, v12, v13, 0xA1A7ADA0uLL);
      }

      else
      {
        v14 = malloc_type_zone_malloc(queryZone, v13, 0x566E289CuLL);
      }

      v15 = v14;
      if (!v14)
      {
        _log_fault_for_malloc_failure();
      }

      result[1] = v15;
      v5 = result[3];
    }
  }

  v16 = result[1];
  result[3] = v5 + 1;
  *(v16 + 8 * v5) = a2;
}

uint64_t L1ComboQueueCount(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v1 = *(v1 + 16) - 1;
  }

  v2 = a1[1];
  if (v2)
  {
    v2 = *(v2 + 16) - 1;
  }

  v3 = *a1;
  if (*a1)
  {
    v3 = *(v3 + 16) - 1;
  }

  return v2 + v1 + v3;
}

uint64_t PartialQueryResults::attributeIdVector(PartialQueryResults *this, datastore_info *a2)
{
  v4 = (this + 232);
  v3 = *(this + 29);
  if (v3 && !*(this + 17))
  {
    v6 = (this + 96);
    v7 = *(this + 12);
    if (!v7)
    {
      v8 = *(this + 15);
      if (v8)
      {
        SIFlattenArrayToCStringVector(v8, v6, this + 30, v4);
        v7 = *(this + 12);
        if (!v7)
        {
          v23 = __si_assert_copy_extra_332();
          v31 = v23;
          v32 = "";
          if (v23)
          {
            v32 = v23;
          }

          __message_assert_336(v23, v24, v25, v26, v27, v28, v29, v30, "SISearchCtx.h", 998, "fAttributeVector", v32);
          free(v31);
          if (__valid_fs(-1))
          {
            v33 = 2989;
          }

          else
          {
            v33 = 3072;
          }

          *v33 = -559038737;
          abort();
        }

        v3 = *v4;
      }

      else
      {
        v7 = 0;
      }
    }

    v9 = 8 * v3;
    if (v3 >> 14)
    {
      v10 = 1;
    }

    else
    {
      v10 = *MEMORY[0x1E69E9AC8] >= v9;
    }

    if (!v10)
    {
      ++sTotal;
    }

    v12 = malloc_type_zone_calloc(queryZone, 1uLL, v9, 0x5BAF1CEAuLL);
    if (!v12)
    {
      _log_fault_for_malloc_failure();
    }

    *(this + 17) = v12;
    if (*(this + 29) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(v7 + 8 * v13);
        if (a2)
        {
          v15 = db_copy_field_ids_with_buffer(a2, *(v7 + 8 * v13), 0, 0);
        }

        else
        {
          v15 = 0;
        }

        *(*(this + 17) + 8 * v13) = v15;
        v16 = *(this + 17);
        if (!*(v16 + 8 * v13))
        {
          v17 = PartialQueryResults::VectorIdAttribute(v14, v11);
          if (v17)
          {
            v14 = strndup(v14, v17);
          }

          if (a2)
          {
            v18 = db_copy_field_ids_with_buffer(a2, v14, 0, 0);
            v16 = *(this + 17);
          }

          else
          {
            v18 = 0;
          }

          *(v16 + 8 * v13) = v18;
          if (v14 != *(v7 + 8 * v13))
          {
            free(v14);
          }
        }

        ++v13;
      }

      while (*v4 > v13);
    }

    if (!*(this + 34))
    {
      if (a2)
      {
        v19 = db_copy_field_ids_with_buffer(a2, "kMDItemLastUsedDate", 0, 0);
      }

      else
      {
        v19 = 0;
      }

      *(this + 34) = v19;
    }

    if (!*(this + 35))
    {
      if (a2)
      {
        v20 = db_copy_field_ids_with_buffer(a2, "kMDItemContentCreationDate", 0, 0);
      }

      else
      {
        v20 = 0;
      }

      *(this + 35) = v20;
    }

    if (!*(this + 36))
    {
      if (a2)
      {
        v21 = db_copy_field_ids_with_buffer(a2, "kMDItemEmailConversationID", 0, 0);
      }

      else
      {
        v21 = 0;
      }

      *(this + 36) = v21;
    }
  }

  return *(this + 17);
}

BOOL _CIIndexSetConvertIfArrayIsMuchMoreEfficient(_DWORD *a1, unsigned int a2, uint64_t a3, int a4, void *a5, int8x8_t a6)
{
  v8 = a3;
  v9 = a2;
  v51 = *MEMORY[0x1E69E9840];
  v11 = a1[6];
  if (v11 >= a3)
  {
    a3 = a3;
  }

  else
  {
    a3 = v11;
  }

  if (a1[5] > a2)
  {
    a2 = a1[5];
  }

  locked = lockedCountItemsInRange(a1, a2, a3, a6);
  v14 = locked + a4;
  v15 = (v8 - v9 + 63) >> 6;
  if (locked + a4 < v15)
  {
    v48 = a5;
    if (!a4 || ((v16 = a1[8], v16 >= v14) ? (v17 = v16 >= 2 * v14) : (v17 = 1), v17))
    {
      v18 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
      v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
      v20 = v19 | HIWORD(v19);
      v21 = v20 + 1;
      v22 = 4 * (v20 + 1);
      if (v22 >= *MEMORY[0x1E69E9AC8] >> 1)
      {
        v27 = mmap(0, (v22 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 3, 4098, -134217728, 0);
      }

      else
      {
        if (a5)
        {
          v23 = v20 - 7;
          v26 = v23 > 0x37;
          HIDWORD(v25) = v23;
          LODWORD(v25) = v23;
          v24 = v25 >> 3;
          v26 = v26 || v24 > 7;
          if (!v26 && ((0x8Bu >> v24) & 1) != 0)
          {
            v45 = qword_1C2BFF6A8[v24];
            v27 = a5[v45 + 2];
            if (v27 || *a5 && (v46 = v22, v27 = cicachelistdequeue(*a5 + 24 * v45 + 32, 0), v22 = v46, v27))
            {
              v28 = 0;
              a5[v45 + 2] = v27[1];
              goto LABEL_26;
            }
          }
        }

        v27 = malloc_type_zone_malloc(queryZone, v22, 0xA4971684uLL);
        if (!v27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          v28 = 0;
          v27 = 0;
          v29 = 0;
LABEL_27:
          *buf = 0u;
          v50 = 0u;
          v30 = a1[5];
          v31 = a1[6];
          v32 = a1[4];
          v47 = v27;
          if (v32 <= -10)
          {
            DWORD2(v50) = 2;
            *buf = v31;
            *&buf[4] = v30;
            *&v50 = a1;
LABEL_29:
            *&buf[8] = 0;
            goto LABEL_54;
          }

          if (v32 > -2)
          {
            if (CFGetTypeID(a1) == __kCIIndexSetInvertedTypeID)
            {
              v36 = 3;
            }

            else
            {
              v36 = 1;
            }

            DWORD2(v50) = v36;
            v32 = a1[4];
            *buf = v31;
            *&buf[4] = v30;
            *&v50 = a1;
            if (v32 >= 1)
            {
              v37 = binarySearchMap(a1, v31);
              *&buf[8] = v37;
              if (v37 != a1[9])
              {
                goto LABEL_54;
              }

              v33 = a1[8] + v37 - a1[4];
              goto LABEL_53;
            }

            if ((v32 & 0x80000000) == 0 || v32 <= 0xFFFFFFF6)
            {
              goto LABEL_29;
            }
          }

          else
          {
            *buf = v31;
            *&buf[4] = v30;
            *&v50 = a1;
          }

          if (v32 <= 0xFFFFFFFD)
          {
            if (v31 >= a1[8])
            {
              v33 = 0;
              goto LABEL_53;
            }

            if (v32 != -3)
            {
              if (v31 >= a1[9])
              {
                v33 = 1;
                goto LABEL_53;
              }

              if (v32 != -4)
              {
                if (v31 >= a1[10])
                {
                  v33 = 2;
                  goto LABEL_53;
                }

                if (v32 != -5)
                {
                  if (v31 >= a1[11])
                  {
                    v33 = 3;
                    goto LABEL_53;
                  }

                  if (v32 != -6)
                  {
                    if (v31 >= a1[12])
                    {
                      v33 = 4;
                      goto LABEL_53;
                    }

                    if (v32 != -7)
                    {
                      if (v31 >= a1[13])
                      {
                        v33 = 5;
                        goto LABEL_53;
                      }

                      if (v32 != -8 && v31 >= a1[14])
                      {
                        v33 = 6;
                        goto LABEL_53;
                      }
                    }
                  }
                }
              }
            }
          }

          v33 = -2 - v32;
LABEL_53:
          *&buf[8] = v33;
LABEL_54:
          v39 = _CIIndexSetEnumeratorNext(buf);
          if (v39)
          {
            v41 = 0;
            do
            {
              v42 = (v41 + 1);
              v29[v41] = v39;
              v39 = _CIIndexSetEnumeratorNext(buf);
              v41 = v42;
            }

            while (v39);
            a1[5] = v9;
            a1[6] = v8;
            if (v28)
            {
LABEL_58:
              a1[4] = 0;
              a1[9] = 0;
              v43 = v48;
              _CIIndexSetAddSortedIndexes(a1, v29, v42, 1, v48, 1, v40);
              if (v47)
              {
                blob_free(v47, v21, v43);
              }

              return v14 < v15;
            }
          }

          else
          {
            v42 = 0;
            a1[5] = v9;
            a1[6] = v8;
            if (v28)
            {
              goto LABEL_58;
            }
          }

          blob_free(*(a1 + 5), a1[8], v48);
          *(a1 + 5) = v29;
          a1[4] = v42;
          a1[8] = v21;
          a1[9] = v42;
          return v14 < v15;
        }
      }

      v28 = 0;
    }

    else
    {
      v21 = locked;
      if (locked <= 0x1FF)
      {
        MEMORY[0x1EEE9AC00](v13);
        v29 = (&v47 - v34);
        bzero(&v47 - v34, v35);
        v27 = 0;
        v28 = 1;
        goto LABEL_27;
      }

      v38 = 4 * locked;
      if (v38 >= *MEMORY[0x1E69E9AC8] >> 1)
      {
        v27 = mmap(0, (v38 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 3, 4098, -134217728, 0);
      }

      else
      {
        v27 = malloc_type_zone_malloc(queryZone, v38, 0xA4971684uLL);
        if (!v27)
        {
          _log_fault_for_malloc_failure();
          v27 = 0;
          v29 = 0;
          v28 = 1;
          goto LABEL_27;
        }
      }

      v28 = 1;
    }

LABEL_26:
    v29 = v27;
    goto LABEL_27;
  }

  return v14 < v15;
}

uint64_t CIIndexSetAddRangeFromBitVector_Bitmap(uint64_t result, int a2, unsigned int a3, unsigned int *a4)
{
  v4 = *(result + 24);
  v5 = v4 - (a2 + a3) + 1;
  v6 = v5 >> 5;
  v7 = v5 & 0x1F;
  v8 = v4 - a2;
  v9 = v8 >> 5;
  v10 = v8 & 0x1F;
  v11 = *a4;
  if (v6 == v8 >> 5)
  {
    v12 = v10 + 1;
    v13 = masks[v7];
    if (v7 != v12)
    {
      v13 = masks[v12] & ~v13;
    }

    v14 = v13 & (v11 << v7);
    v15 = (result + 40);
    goto LABEL_34;
  }

  v16 = 32 - v7;
  v15 = (result + 40);
  *(*(result + 40) + 4 * v6) |= (v11 << v7) & ~masks[v7];
  if (a3 >= 0x21)
  {
    if (v7)
    {
      if ((v6 + 1) < *(result + 32))
      {
        *(*v15 + 4 * (v6 + 1)) |= v11 >> v16;
      }

      if (a3 + 31 > 0x5F)
      {
        v17 = (a3 + 31) >> 5;
        if (v17 <= 3)
        {
          v17 = 3;
        }

        v18 = v17 - 1;
        v19 = v18 - 1;
        v20 = 4 * v6;
        v21 = a4 + 1;
        do
        {
          v22 = *v21++;
          *(*v15 + v20 + 4) |= v22 << v7;
          *(*v15 + v20 + 8) |= v22 >> v16;
          v20 += 4;
          --v19;
        }

        while (v19);
        goto LABEL_24;
      }
    }

    else if (a3 + 31 > 0x5F)
    {
      v23 = (a3 + 31) >> 5;
      if (v23 <= 3)
      {
        v23 = 3;
      }

      v18 = v23 - 1;
      v24 = v18 - 1;
      v25 = 4 * v6 + 4;
      v26 = a4 + 1;
      do
      {
        v27 = *v26++;
        *(*v15 + v25) |= v27;
        v25 += 4;
        --v24;
      }

      while (v24);
LABEL_24:
      v11 = a4[v18];
      v28 = v18 + v6;
      v29 = v11 << v7;
      if (v18 + v6 >= v9 || v28 + 1 >= *(result + 32))
      {
        v29 &= masks[v10 + 1];
      }

      *(*v15 + 4 * v28) |= v29;
      if (!v7)
      {
        return result;
      }

      goto LABEL_28;
    }

    LODWORD(v18) = 1;
    goto LABEL_24;
  }

  LODWORD(v18) = 0;
  if (!v7)
  {
    return result;
  }

LABEL_28:
  LODWORD(v6) = v6 + v18 + 1;
  if (v6 <= v9 && v6 < *(result + 32))
  {
    v14 = masks[v10 + 1] & (v11 >> v16);
LABEL_34:
    *(*v15 + 4 * v6) |= v14;
  }

  return result;
}

size_t PartialQueryResults::VectorIdAttribute(PartialQueryResults *this, const char *a2)
{
  v3 = strlen(this);
  if (v3 < 0xA)
  {
    return 0;
  }

  v4 = v3 - 9;
  if (!strcmp(this + v3 - 9, "VectorIds"))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void PartialQueryResults::setupCannedAttributeVector(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 232);
  v9 = 8 * v8;
  if (((v8 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v9 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v11 = malloc_type_zone_calloc(queryZone, 1uLL, v9, 0x5BAF1CEAuLL);
  if (!v11)
  {
    _log_fault_for_malloc_failure();
  }

  *a3 = v11;
  v12 = *(a1 + 232);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = strlen(*(a2 + 8 * v13));
      v16 = CannedFieldTable::in_word_set(*(a2 + 8 * v13), v15);
      if (v16)
      {
        *(*a3 + 8 * v13) = v16[1];
        ++v14;
      }

      ++v13;
    }

    while (v12 != v13);
  }

  *a4 = v14;
}

void PartialQueryResults::setupCannedCollectAttributeVector(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 232);
  v9 = 8 * v8;
  if (((v8 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v9 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v11 = malloc_type_zone_calloc(queryZone, 1uLL, v9, 0x5BAF1CEAuLL);
  if (!v11)
  {
    _log_fault_for_malloc_failure();
  }

  *a3 = v11;
  v12 = *(a1 + 232);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = strlen(*(a2 + 8 * v13));
      v16 = CannedFieldTable::in_word_set(*(a2 + 8 * v13), v15);
      if (v16)
      {
        *(*a3 + 8 * v13) = v16[3];
        ++v14;
      }

      ++v13;
    }

    while (v12 != v13);
  }

  *a4 = v14;
}

void prepareFieldIds(SISearchCtx_METADATA *a1, PartialQueryResults *this)
{
  v140[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 115) || (*(a1 + 641) & 1) != 0 || *(*(a1 + 105) + 16) != 0)
  {
    return;
  }

  v4 = PartialQueryResults::attributeIdVector(this, *(*(a1 + 3) + 1192));
  v6 = (this + 232);
  if (*(this + 29) >= 1)
  {
    v7 = v4;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = *(v7 + 8 * v10);
      if (v12 && *v12)
      {
        v13 = v12 + 1;
        do
        {
          ++v8;
        }

        while (*v13++);
      }

      if (*this == 1)
      {
        if (!*(this + 25))
        {
          v15 = *(this + 13);
          if (!v15)
          {
            v16 = *(this + 16);
            if (v16)
            {
              v140[0] = 0;
              SIFlattenArrayToCStringVector(v16, this + 13, v140, &v139);
              v15 = *(this + 13);
            }

            else
            {
              v15 = 0;
            }
          }

          PartialQueryResults::setupCannedAttributeVector(this, v15, this + 25, v140);
        }

        v19 = 200;
      }

      else
      {
        if (!*(this + 24))
        {
          v17 = *(this + 12);
          if (v11 && !v17)
          {
            v18 = *(this + 15);
            if (v18)
            {
              SIFlattenArrayToCStringVector(v18, this + 12, this + 30, this + 29);
              v17 = *(this + 12);
              if (!v17)
              {
LABEL_184:
                v116 = __si_assert_copy_extra_332();
                v124 = v116;
                v125 = "";
                if (v116)
                {
                  v125 = v116;
                }

                __message_assert_336(v116, v117, v118, v119, v120, v121, v122, v123, "SISearchCtx.h", 998, "fAttributeVector", v125);
                free(v124);
                if (__valid_fs(-1))
                {
                  v126 = 2989;
                }

                else
                {
                  v126 = 3072;
                }

                *v126 = -559038737;
                abort();
              }
            }

            else
            {
              v17 = 0;
            }
          }

          PartialQueryResults::setupCannedAttributeVector(this, v17, this + 24, this + 1);
        }

        v19 = 192;
      }

      if (*(*(this + v19) + 8 * v10))
      {
        v20 = *(this + 29);
        if (*this == 1)
        {
          if (v20 && !*(this + 25))
          {
            v21 = *(this + 13);
            if (!v21)
            {
              v22 = *(this + 16);
              if (v22)
              {
                v140[0] = 0;
                SIFlattenArrayToCStringVector(v22, this + 13, v140, &v139);
                v21 = *(this + 13);
              }

              else
              {
                v21 = 0;
              }
            }

            PartialQueryResults::setupCannedAttributeVector(this, v21, this + 25, v140);
          }

          v25 = 216;
        }

        else
        {
          if (v20 && !*(this + 26))
          {
            v23 = *(this + 12);
            if (!v23)
            {
              v24 = *(this + 15);
              if (v24)
              {
                SIFlattenArrayToCStringVector(v24, this + 12, this + 30, this + 29);
                v23 = *(this + 12);
                if (!v23)
                {
                  v127 = __si_assert_copy_extra_332();
                  v135 = v127;
                  v136 = "";
                  if (v127)
                  {
                    v136 = v127;
                  }

                  __message_assert_336(v127, v128, v129, v130, v131, v132, v133, v134, "SISearchCtx.h", 998, "fAttributeVector", v136);
                  free(v135);
                  if (__valid_fs(-1))
                  {
                    v137 = 2989;
                  }

                  else
                  {
                    v137 = 3072;
                  }

                  *v137 = -559038737;
                  abort();
                }
              }

              else
              {
                v23 = 0;
              }
            }

            PartialQueryResults::setupCannedRequiredAttributeVector(this, v23, this + 26);
          }

          v25 = 208;
        }

        v26 = *(*(this + v25) + 8 * v10);
        if (!v26)
        {
          return;
        }

        v27 = v26(*(a1 + 3));
        if (v27 && *v27)
        {
          v28 = v27 + 1;
          do
          {
            ++v9;
          }

          while (*v28++);
        }
      }

      ++v10;
      v11 = *v6;
      if (v10 >= *v6)
      {
        goto LABEL_55;
      }
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_55:
  if (*(*(a1 + 1) + 762) == 1)
  {
    v30 = SISearchCtx_METADATA::photosDerivedAttributes(a1, *(*(a1 + 3) + 1192));
    v31 = *(a1 + 90);
    if (v31 >= 1)
    {
      for (i = 0; i != v31; ++i)
      {
        v33 = *(v30 + 8 * i);
        if (v33 && *v33)
        {
          v34 = v33 + 1;
          do
          {
            ++v8;
          }

          while (*v34++);
        }
      }
    }
  }

  if (*(a1 + 40) == 3)
  {
    v36 = PartialQueryResults::completionAttributeIdVector(this, *(*(a1 + 3) + 1192));
    v37 = *(this + 45);
    if (v37 >= 1)
    {
      for (j = 0; j != v37; ++j)
      {
        v39 = *(v36 + 8 * j);
        if (v39 && *v39)
        {
          v40 = v39 + 1;
          do
          {
            ++v8;
          }

          while (*v40++);
        }
      }
    }
  }

  MEMORY[0x1EEE9AC00](v5);
  v43 = (&v138 - v42);
  bzero(&v138 - v42, v44);
  if (!v9)
  {
    goto LABEL_97;
  }

  if (*v6 >= 1)
  {
    v45 = 0;
    LODWORD(v46) = 0;
    v47 = 1;
    do
    {
      if (*this == 1)
      {
        if (!*(this + 25))
        {
          v48 = *(this + 13);
          if (!v48)
          {
            v49 = *(this + 16);
            if (v49)
            {
              v140[0] = 0;
              SIFlattenArrayToCStringVector(v49, this + 13, v140, &v139);
              v48 = *(this + 13);
            }

            else
            {
              v48 = 0;
            }
          }

          PartialQueryResults::setupCannedAttributeVector(this, v48, this + 25, v140);
        }

        v52 = 216;
      }

      else
      {
        if (!*(this + 26))
        {
          v50 = *(this + 12);
          if (v47 && !v50)
          {
            v51 = *(this + 15);
            if (v51)
            {
              SIFlattenArrayToCStringVector(v51, this + 12, this + 30, this + 29);
              v50 = *(this + 12);
              if (!v50)
              {
                goto LABEL_184;
              }
            }

            else
            {
              v50 = 0;
            }
          }

          PartialQueryResults::setupCannedRequiredAttributeVector(this, v50, this + 26);
        }

        v52 = 208;
      }

      v53 = *(*(this + v52) + 8 * v45);
      if (v53)
      {
        v54 = v53(*(a1 + 3));
        if (v54)
        {
          v55 = *v54;
          if (*v54)
          {
            v46 = v46;
            v56 = v54 + 1;
            do
            {
              v43[v46++] = db_copy_field_ids_with_buffer(*(*(a1 + 3) + 1192), v55, 0, 0);
              v57 = *v56++;
              v55 = v57;
            }

            while (v57);
          }
        }
      }

      ++v45;
      v47 = *v6;
    }

    while (v45 < *v6);
LABEL_97:
    if (!v9 && !v8)
    {
      return;
    }
  }

  v138 = &v138;
  v59 = *(this + 34);
  v58 = *(this + 35);
  v60 = *(this + 36);
  if (*(a1 + 40) == 3)
  {
    if (v58 && *v58)
    {
      v61 = v58 + 1;
      do
      {
        ++v8;
      }

      while (*v61++);
    }

    if (v59 && *v59)
    {
      v63 = v59 + 1;
      do
      {
        ++v8;
      }

      while (*v63++);
    }

    if (v60 && *v60)
    {
      v65 = v60 + 1;
      do
      {
        ++v8;
      }

      while (*v65++);
    }
  }

  v67 = v9;
  if (v9 >= 1)
  {
    for (k = 0; k != v9; ++k)
    {
      v69 = v43[k];
      if (v69 && *v69)
      {
        v70 = v69 + 1;
        do
        {
          ++v8;
        }

        while (*v70++);
      }
    }
  }

  malloc = query_malloc(4 * v8 + 4);
  if (*(a1 + 40) == 3)
  {
    v73 = PartialQueryResults::completionAttributeIdVector(this, *(*(a1 + 3) + 1192));
    v74 = *(this + 45);
    if (v74 < 1)
    {
      v80 = 0;
    }

    else
    {
      v75 = 0;
      v76 = 0;
      do
      {
        v77 = *(v73 + 8 * v75);
        if (v77 && (v78 = *v77) != 0)
        {
          v79 = v77 + 1;
          do
          {
            v80 = v76 + 1;
            malloc[v76] = v78;
            v81 = *v79++;
            v78 = v81;
            ++v76;
          }

          while (v81);
        }

        else
        {
          v80 = v76;
        }

        ++v75;
        v76 = v80;
      }

      while (v75 != v74);
    }

    if (v58 && (v83 = *v58) != 0)
    {
      v84 = v58 + 1;
      do
      {
        v85 = v80 + 1;
        malloc[v80] = v83;
        v86 = *v84++;
        v83 = v86;
        ++v80;
      }

      while (v86);
    }

    else
    {
      v85 = v80;
    }

    if (v59 && (v87 = *v59) != 0)
    {
      v88 = v59 + 1;
      do
      {
        v89 = v85 + 1;
        malloc[v85] = v87;
        v90 = *v88++;
        v87 = v90;
        ++v85;
      }

      while (v90);
    }

    else
    {
      v89 = v85;
    }

    if (v60 && (v91 = *v60) != 0)
    {
      v92 = v60 + 1;
      do
      {
        v82 = v89 + 1;
        malloc[v89] = v91;
        v93 = *v92++;
        v91 = v93;
        ++v89;
      }

      while (v93);
    }

    else
    {
      v82 = v89;
    }
  }

  else
  {
    v82 = 0;
  }

  if (*(*(a1 + 1) + 762) == 1)
  {
    v94 = SISearchCtx_METADATA::photosDerivedAttributes(a1, *(*(a1 + 3) + 1192));
    v95 = *(a1 + 90);
    if (v95 >= 1)
    {
      for (m = 0; m < v95; ++m)
      {
        v97 = *(v94 + 8 * m);
        if (v97)
        {
          v98 = *v97;
          if (*v97)
          {
            v99 = v97 + 1;
            do
            {
              malloc[v82++] = v98;
              v100 = *v99++;
              v98 = v100;
            }

            while (v100);
            v95 = *(a1 + 90);
          }
        }
      }
    }
  }

  if (v9 < 1)
  {
    v105 = v82;
  }

  else
  {
    for (n = 0; n != v9; ++n)
    {
      v102 = v43[n];
      if (v102 && (v103 = *v102) != 0)
      {
        v104 = v102 + 1;
        do
        {
          v105 = v82 + 1;
          malloc[v82] = v103;
          v106 = *v104++;
          v103 = v106;
          ++v82;
        }

        while (v106);
      }

      else
      {
        v105 = v82;
      }

      v82 = v105;
    }
  }

  v107 = PartialQueryResults::attributeIdVector(this, *(*(a1 + 3) + 1192));
  v108 = *(this + 29);
  if (v108 < 1)
  {
    v113 = v105;
  }

  else
  {
    for (ii = 0; ii != v108; ++ii)
    {
      v110 = *(v107 + 8 * ii);
      if (v110 && (v111 = *v110) != 0)
      {
        v112 = v110 + 1;
        do
        {
          v113 = v105 + 1;
          malloc[v105] = v111;
          v114 = *v112++;
          v111 = v114;
          ++v105;
        }

        while (v114);
      }

      else
      {
        v113 = v105;
      }

      v105 = v113;
    }
  }

  malloc[v113] = 0;
  qsort_b(malloc, v113, 4uLL, &__block_literal_global_140);
  *(a1 + 115) = malloc;
  if (v9 >= 1)
  {
    do
    {
      v115 = *v43++;
      free(v115);
      --v67;
    }

    while (v67);
  }
}

void PartialQueryResults::setupCannedRequiredAttributeVector(PartialQueryResults *this, const char **a2, const char **(***a3)(__SI *))
{
  v6 = *(this + 29);
  v7 = 8 * v6;
  if (((v6 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v7 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v9 = malloc_type_zone_calloc(queryZone, 1uLL, v7, 0x5BAF1CEAuLL);
  if (!v9)
  {
    _log_fault_for_malloc_failure();
  }

  *a3 = v9;
  v10 = *(this + 29);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = strlen(a2[i]);
      v13 = CannedFieldTable::in_word_set(a2[i], v12);
      if (v13)
      {
        v14 = v13[4];
      }

      else
      {
        v14 = 0;
      }

      (*a3)[i] = v14;
    }
  }
}

void PayloadIteratorDestroy(uint64_t a1)
{
  free(*(a1 + 240));
  free(*(a1 + 176));
  v2 = *(a1 + 128);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    ReleaseEmbeddingDistances(v5);
    *(a1 + 72) = 0;
  }
}

void emitResults(SISearchCtx_METADATA *this, PartialQueryResults *a2, int a3)
{
  v143 = *MEMORY[0x1E69E9840];
  if (*(this + 212))
  {
    v6 = **(this + 105);
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 0x40000000;
    v132[2] = ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke;
    v132[3] = &__block_descriptor_tmp_167;
    v132[4] = this;
    *&v133 = MEMORY[0x1E69E9820];
    *(&v133 + 1) = 0x40000000;
    *&v134 = __db_query_tree_apply_block_block_invoke;
    *(&v134 + 1) = &unk_1E8198ED0;
    *&v135 = v132;
    db_query_tree_apply_block_with_meta(v6, &v133, 0);
    if (a3)
    {
      v127 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
      Mutable = _MDPlistContainerCreateMutable();
      _MDPlistContainerBeginContainer();
      _MDPlistContainerBeginDictionary();
      v8 = **(this + 105);
      v131[0] = MEMORY[0x1E69E9820];
      v131[1] = 0x40000000;
      v131[2] = ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_2;
      v131[3] = &__block_descriptor_tmp_168;
      v131[4] = &v127;
      v131[5] = Mutable;
      *&v133 = MEMORY[0x1E69E9820];
      *(&v133 + 1) = 0x40000000;
      *&v134 = __db_query_tree_apply_block_block_invoke;
      *(&v134 + 1) = &unk_1E8198ED0;
      *&v135 = v131;
      db_query_tree_apply_block_with_meta(v8, &v133, 0);
      _MDPlistContainerEndDictionary();
      _MDPlistContainerEndContainer();
      _MDPlistContainerGetBytes();
      _MDPlistContainerGetLength();
      v9 = _MDPlistContainerCreateWithCopiedBytes();
      v10 = *(a2 + 57);
      if (v10)
      {
        CFRelease(v10);
      }

      *(a2 + 57) = v9;
      free(v127);
      CFRelease(Mutable);
    }
  }

  v11 = *(this + 147);
  if (v11)
  {
    v12 = *(this + 40);
    v13 = 1;
    v14 = v12 > 6;
    v15 = (1 << v12) & 0x4A;
    if (!v14 && v15 != 0)
    {
      updated = SISearchCtx_METADATA::updateGroupingCount(this);
      if (updated < 1)
      {
        return;
      }

      v11 = *(this + 147);
      v13 = updated;
    }

    v18 = 0;
    v19 = 0;
    v20 = v11 + 8;
    do
    {
      v21 = v20 + 40 * v18;
      v22 = *(v21 + 24);
      if (v22 && (v23 = *v22, v23))
      {
        LODWORD(v24) = 0;
        v25 = (v22 + 18);
        do
        {
          v26 = *v25;
          v25 += 40;
          if (v26)
          {
            v24 = (v24 + 1);
          }

          else
          {
            v24 = v24;
          }

          --v23;
        }

        while (v23);
      }

      else
      {
        v24 = 0;
      }

      v27 = *(v20 + 40 * v18 + 32);
      if (v27 && (v28 = *v27, v28))
      {
        LODWORD(v29) = 0;
        v30 = (v27 + 18);
        do
        {
          v31 = *v30;
          v30 += 40;
          if (v31)
          {
            v29 = (v29 + 1);
          }

          else
          {
            v29 = v29;
          }

          --v28;
        }

        while (v28);
      }

      else
      {
        v29 = 0;
      }

      v19 = v19 + *(v21 + 16) + v24 + v29 - 1;
      ++v18;
    }

    while (v18 != v13);
    if (v19)
    {
      v32 = malloc_type_zone_malloc(queryZone, 8 * v19, 0xA4971684uLL);
      if (!v32)
      {
        _log_fault_for_malloc_failure();
      }

      v33 = malloc_type_zone_malloc(queryZone, 2 * v19, 0xA4971684uLL);
      if (!v33)
      {
        _log_fault_for_malloc_failure();
      }

      v95 = malloc_type_zone_malloc(queryZone, 80 * v19, 0xA4971684uLL);
      if (!v95)
      {
        _log_fault_for_malloc_failure();
      }

      v100 = v33;
      v34 = malloc_type_zone_malloc(queryZone, 5 * v19, 0xA4971684uLL);
      if (!v34)
      {
        _log_fault_for_malloc_failure();
      }

      v35 = v95;
      v94 = malloc_type_zone_malloc(queryZone, 28 * v19, 0xA4971684uLL);
      if (!v94)
      {
        _log_fault_for_malloc_failure();
      }

      v92 = v19;
      v93 = a2;
      v36 = malloc_type_zone_malloc(queryZone, v19, 0xA4971684uLL);
      if (!v36)
      {
        _log_fault_for_malloc_failure();
      }

      v37 = 0;
      v127 = 0;
      v128 = &v127;
      v129 = 0x2000000000;
      v130 = 0;
      v123 = 0;
      v124 = &v123;
      v125 = 0x2000000000;
      v126 = 0;
      v97 = a3;
      v38 = v94;
      v96 = v32;
      do
      {
        v98 = *(*(this + 147) + 40 * v37 + 24);
        v39 = v98 - 1;
        v99 = malloc_type_malloc(160 * (v98 - 1), 0x100004073294F05uLL);
        v40 = *(this + 147) + 40 * v124[3];
        if (*(v40 + 24) != 1)
        {
          v41 = v32;
          v42 = (v40 + 8);
          v43 = v99;
          do
          {
            pqpop_rankAndFetchInfo_t(&v133, v42);
            v43[6] = v139;
            v43[7] = v140;
            v43[8] = v141;
            v43[9] = v142;
            v43[2] = v135;
            v43[3] = v136;
            v43[4] = v137;
            v43[5] = v138;
            *v43 = v133;
            v43[1] = v134;
            v44 = v124;
            v45 = *(v124 + 24);
            v46 = v128;
            v47 = v128[3];
            v41[v47] = *(v43 + 17);
            v100[v47] = v45;
            v48 = &v35[10 * v47];
            *v48 = *v43;
            v49 = v43[1];
            v50 = v43[2];
            v51 = v43[4];
            *(v48 + 3) = v43[3];
            *(v48 + 4) = v51;
            *(v48 + 1) = v49;
            *(v48 + 2) = v50;
            v52 = *(v43 + 11);
            *v48 = *(v43 + 10);
            v48[1] = v52;
            v53 = v34 + 5 * v47;
            v54 = *(v43 + 24);
            v53[4] = *(v43 + 100);
            *v53 = v54;
            v55 = &v38[7 * v47];
            v56 = *(v43 + 104);
            *(v55 + 3) = *(v43 + 116);
            *v55 = v56;
            *(v47 + v36) = *(v43 + 144);
            v46[3] = v46[3] + 1;
            v57 = *(this + 147) + 40 * v44[3];
            v42 = (v57 + 8);
            v43 += 10;
          }

          while (*(v57 + 24) != 1);
        }

        v58 = v97;
        if (v98 >= 2 && (v97 & 1) == 0)
        {
          v59 = v99;
          do
          {
            v60 = *(this + 147) + 40 * v124[3];
            v139 = v59[6];
            v140 = v59[7];
            v141 = v59[8];
            v142 = v59[9];
            v135 = v59[2];
            v136 = v59[3];
            v137 = v59[4];
            v138 = v59[5];
            v133 = *v59;
            v134 = v59[1];
            pqpush_rankAndFetchInfo_t(v60 + 8, &v133);
            v59 += 10;
            --v39;
          }

          while (v39);
        }

        free(v99);
        v61 = *(this + 147);
        v62 = v124;
        v63 = *(v61 + 40 * v124[3] + 32);
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 0x40000000;
        v113 = ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_3;
        v114 = &unk_1E81945E0;
        v38 = v94;
        v35 = v95;
        v117 = v34;
        v118 = v94;
        v115 = &v123;
        v116 = &v127;
        v119 = v100;
        v120 = v36;
        v32 = v96;
        v121 = v96;
        v122 = v95;
        if (v63)
        {
          v64 = *v63;
          if (v64)
          {
            v65 = 0;
            v66 = v63 + 18;
            do
            {
              if (*v66)
              {
                v67 = *(v66 - 10);
                v133 = *(v66 - 14);
                v134 = v67;
                v68 = *(v66 - 6);
                v69 = *(v66 - 2);
                v70 = *(v66 + 6);
                v137 = *(v66 + 2);
                v138 = v70;
                v135 = v68;
                v136 = v69;
                v71 = *(v66 + 10);
                v72 = *(v66 + 14);
                v73 = *(v66 + 22);
                v141 = *(v66 + 18);
                v142 = v73;
                v139 = v71;
                v140 = v72;
                v113(v112, &v133);
                v64 = *v63;
              }

              ++v65;
              v66 += 40;
            }

            while (v65 < v64);
            v61 = *(this + 147);
            v62 = v124;
            v58 = v97;
            v32 = v96;
          }
        }

        if (v58)
        {
          v74 = *(v61 + 40 * v62[3] + 32);
          if (v74)
          {
            v75 = *v74;
            if (v75)
            {
              v76 = v74 + 4;
              do
              {
                v76[6] = xmmword_1C2BFF380;
                v76[7] = unk_1C2BFF390;
                v76[8] = xmmword_1C2BFF3A0;
                v76[9] = unk_1C2BFF3B0;
                v76[2] = xmmword_1C2BFF340;
                v76[3] = unk_1C2BFF350;
                v76[4] = xmmword_1C2BFF360;
                v76[5] = unk_1C2BFF370;
                *v76 = ZERO_FETCHINFO;
                v76[1] = *algn_1C2BFF330;
                v76 += 10;
                --v75;
              }

              while (v75);
              v61 = *(this + 147);
            }
          }
        }

        v77 = *(v61 + 40 * v62[3] + 40);
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 0x40000000;
        v102 = ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_4;
        v103 = &unk_1E8194608;
        v106 = v34;
        v107 = v94;
        v104 = &v123;
        v105 = &v127;
        v108 = v100;
        v109 = v36;
        v110 = v32;
        v111 = v95;
        if (v77)
        {
          v78 = *v77;
          if (v78)
          {
            v79 = 0;
            v80 = v77 + 18;
            do
            {
              if (*v80)
              {
                v81 = *(v80 - 10);
                v133 = *(v80 - 14);
                v134 = v81;
                v82 = *(v80 - 6);
                v83 = *(v80 - 2);
                v84 = *(v80 + 6);
                v137 = *(v80 + 2);
                v138 = v84;
                v135 = v82;
                v136 = v83;
                v85 = *(v80 + 10);
                v86 = *(v80 + 14);
                v87 = *(v80 + 22);
                v141 = *(v80 + 18);
                v142 = v87;
                v139 = v85;
                v140 = v86;
                v102(v101, &v133);
                v78 = *v77;
              }

              ++v79;
              v80 += 40;
            }

            while (v79 < v78);
            v62 = v124;
            v58 = v97;
            v32 = v96;
          }
        }

        if (v58)
        {
          v88 = *(*(this + 147) + 40 * v62[3] + 40);
          if (v88)
          {
            v89 = *v88;
            if (v89)
            {
              v90 = v88 + 4;
              do
              {
                *(v90 + 144) = 0;
                *(v90 + 6) = xmmword_1C2BF6C10;
                *(v90 + 7) = unk_1C2BF6C20;
                *(v90 + 8) = xmmword_1C2BF6C30;
                *(v90 + 2) = xmmword_1C2BF6BD0;
                *(v90 + 3) = unk_1C2BF6BE0;
                *(v90 + 4) = xmmword_1C2BF6BF0;
                *(v90 + 5) = unk_1C2BF6C00;
                *v90 = ZERO_FETCHINFO_Q2;
                *(v90 + 1) = unk_1C2BF6BC0;
                v90 += 40;
                --v89;
              }

              while (v89);
            }
          }
        }

        v37 = v62[3] + 1;
        v62[3] = v37;
      }

      while (v37 < v13);
      _Block_object_dispose(&v123, 8);
      _Block_object_dispose(&v127, 8);
      readSDBForOids(this, v32, v100, v95, v34, v94, v92, v36, v91, v93, 0, 1u);
      free(v32);
      free(v100);
      free(v95);
      free(v34);
      free(v94);
      free(v36);
    }
  }
}

void SISearchCtx_METADATA::postIterate(SISearchCtx_METADATA *this, char a2)
{
  SISearchCtx_METADATA::cleanUp(this, a2);

  SISearchCtx::common_postIterate(this, v3);
}

void SISearchCtx::common_postIterate(SISearchCtx *this, SISearchCtx *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    db_release_files(v3);
    *(this + 18) = 0;
  }

  *(this + 17) = CFAbsoluteTimeGetCurrent();
}

void storageWindowRelease(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(v2 + 4);
      if (v3)
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 0x40000000;
        v4[2] = __storageWindowDestroy_block_invoke;
        v4[3] = &__block_descriptor_tmp_18;
        v4[4] = v2;
        (*(v3 + 16))(v3, v4);
      }

      else
      {
        storageWindowDestroyImmediate(v2);
      }
    }

    *a1 = 0;
  }
}

void ContentIndexQueryNodeDispose(char *a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = &a1[16 * v3 + 24];
      if (*v4 >= 1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = *(v4 + 1) + v5;
          v8 = *(v7 + 16);
          if ((v8 & 0x610) != 0)
          {
            if ((v8 & 0x10) != 0)
            {
              free(*v7);
            }
          }

          else
          {
            free(*v7);
            free(*(*(v4 + 1) + v5 + 8));
            icu_ctx_release();
          }

          v9 = *(*(v4 + 1) + v5 + 48);
          if (v9)
          {
            la_free(v9);
          }

          ++v6;
          v5 += 64;
        }

        while (v6 < *v4);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  free(a1);
}

void *query_malloc(size_t size)
{
  v1 = malloc_type_zone_malloc(queryZone, size, 0xA4971684uLL);
  if (!v1)
  {
    _log_fault_for_malloc_failure();
  }

  return v1;
}

void db_obj_iter_create_subiterators(uint64_t result, unint64_t a2, void *a3, double a4, double a5, __n128 a6)
{
  if (*result != 3506)
  {
    v36 = __si_assert_copy_extra_332();
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 717, v38);
    free(v37);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (*(result + 74) == 1)
  {
    obj_iter_resume(result, a4, a5, a6);
  }

  v9 = a2 - 1;
  if (a2 == 1)
  {
    *a3 = result + 80;
  }

  else
  {
    v10 = *(result + 136);
    v11 = (v9 + v10) / a2;
    v12 = v10 + v11;
    if (v11 * a2 <= v10 + v11)
    {
      v16 = 0;
      v14 = a2;
    }

    else
    {
      v13 = 0;
      v14 = a2;
      do
      {
        v15 = v14;
        while (1)
        {
          v14 = (v15 + 1) >> 1;
          v16 = v13 + v14;
          if (v13 + v14 <= a2 && v14 <= *(result + 136))
          {
            break;
          }

          v15 = (v15 + 1) >> 1;
          if (v14 * v11 <= v12)
          {
            v16 = v13;
            goto LABEL_19;
          }
        }

        if (v15)
        {
          v17 = 0;
          do
          {
            initializeSubIter(v13, result, v17++, v11, a3);
          }

          while (v14 != v17);
        }

        v10 -= v14 * v11;
        v11 = (v14 + v10 - 1) / v14;
        v12 = v10 + v11;
        v13 += v14;
      }

      while (v14 * v11 > v10 + v11);
    }

LABEL_19:
    v18 = a2 - v16;
    if (a2 < v16)
    {
      v18 = 0;
    }

    if (v14 + v16 <= a2)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        initializeSubIter(v16, result, i, v11, a3);
      }
    }

    v21 = v19 + v16;
    v22 = a2 - (v19 + v16);
    if (a2 > v19 + v16)
    {
      v23 = 0;
      do
      {
        initializeSubIter(v21, result, v23++, 0, a3);
      }

      while (v22 != v23);
    }

    v24 = a3[v9];
    v25 = *(v24 + 8);
    v26 = *(v24 + 56) + v25;
    v27 = *(result + 136);
    if (v26 != v27)
    {
      if (v26 >= v27)
      {
        if (v26 > v27)
        {
          v28 = v27 >= v25;
          v29 = v27 - v25;
          if (v28)
          {
            *(v24 + 56) = v29;
          }

          else
          {
            *(v24 + 8) = v27;
            *(v24 + 56) = 0;
            v30 = a2 - 2;
            if (a2 >= 2)
            {
              v31 = &a3[a2 - 1];
              do
              {
                v32 = *(v31 - 1);
                v33 = *(v32 + 8);
                v34 = *(*v31 + 8);
                if (v34 <= v33)
                {
                  *(v32 + 8) = v34;
                  *(v32 + 56) = 0;
                }

                else
                {
                  if (*(v32 + 56) + v33 <= v34)
                  {
                    return;
                  }

                  *(v32 + 56) = v34 - v33;
                }

                v35 = v30-- + 1;
                --v31;
              }

              while (v35 > 1);
            }
          }
        }
      }

      else
      {
        *(v24 + 56) = v27 - v25;
      }
    }
  }
}

uint64_t store_stream_flush(unsigned int *a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    return v2;
  }

  v6 = a1 + 2;
  v7 = *(a1 + 1);
  v8 = *a1;
  if (v7)
  {
    v9 = prot_pwrite_guarded(v8, v6, *(a1 + 6), *(a1 + 5), *(a1 + 3));
  }

  else
  {
    v9 = prot_pwrite(v8, *(a1 + 6), *(a1 + 5), *(a1 + 3));
  }

  if (*(a1 + 5) == v9)
  {
    *(a1 + 3) += v9;
  }

  else
  {
    v2 = *__error();
    a1[4] = v2;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v11 = 67109120;
    v12 = v2;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "store_stream_flush write err:%d", &v11, 8u);
  }

  v2 = a1[4];
LABEL_10:
  *(a1 + 5) = 0;
  if (a2 && !v2)
  {
    v10 = fsync(*a1);
    a1[4] = v10;
    if (v10)
    {
      v2 = *__error();
      a1[4] = v2;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = 67109120;
        v12 = v2;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "store_stream_flush sync err:%d", &v11, 8u);
        return a1[4];
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _partition_oid_lookups(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 32 * a2);
  v5 = &v4[2 * ((v3 + (v3 >> 63)) >> 1)];
  v6 = (a1 + 32 * a3);
  if (a3 - a2 < 1024)
  {
    v21 = (a1 + 32 * a3);
    v11 = (a1 + 32 * a2);
    goto LABEL_91;
  }

  v7 = v3 >> 3;
  v8 = &v4[2 * (v3 >> 3)];
  v9 = v4->i64[0];
  v10 = v8->i64[0];
  v11 = (a1 + 32 * a2);
  if (v4->i64[0] == v8->i64[0])
  {
    goto LABEL_31;
  }

  v12 = &v4[4 * v7];
  v13 = v12->i64[0];
  if (v12->i64[0] == v9 || v13 == v10)
  {
    goto LABEL_20;
  }

  v15 = v4[1].u64[0];
  v16 = v8[1].u64[0];
  v17 = v12[1].u64[0];
  v18 = v9 < v10;
  if (v15 != v16)
  {
    v18 = 0;
  }

  if (v15 >= v16 && !v18)
  {
    v22 = v10 > v13;
    if (v16 != v17)
    {
      v22 = 0;
    }

    if (v16 <= v17)
    {
      v11 = v8;
      if (!v22)
      {
        if (v9 < v13 && v15 == v17 || (v11 = &v4[4 * v7], v15 < v17))
        {
          v11 = (a1 + 32 * a2);
        }
      }

      goto LABEL_31;
    }

LABEL_30:
    v11 = v8;
    goto LABEL_31;
  }

  v20 = v10 < v13;
  if (v16 != v17)
  {
    v20 = 0;
  }

  if (v16 < v17)
  {
    goto LABEL_30;
  }

  v11 = v8;
  if (!v20)
  {
    if (v9 < v13 && v15 == v17 || (v11 = (a1 + 32 * a2), v15 < v17))
    {
LABEL_20:
      v11 = &v4[4 * v7];
    }
  }

LABEL_31:
  v23 = 2 * v7;
  v24 = -v7;
  v25 = &v5[-2 * v7];
  v26 = v25->i64[0];
  v27 = v5->i64[0];
  if (v25->i64[0] == v5->i64[0])
  {
    v5 -= 2 * v7;
  }

  else
  {
    v28 = &v5[2 * v7];
    v29 = v28->i64[0];
    if (v28->i64[0] == v26 || v29 == v27)
    {
      v5 = v28;
    }

    else
    {
      v31 = v25[1].u64[0];
      v32 = v5[1].u64[0];
      v33 = v28[1].u64[0];
      v34 = v26 < v27;
      if (v31 != v32)
      {
        v34 = 0;
      }

      if (v31 >= v32 && !v34)
      {
        v38 = v27 > v29;
        if (v32 != v33)
        {
          v38 = 0;
        }

        if (v32 <= v33 && !v38)
        {
          if ((v26 >= v29 || v31 != v33) && v31 >= v33)
          {
            v5 = v28;
          }

          else
          {
            v5 = v25;
          }
        }
      }

      else
      {
        v36 = v27 < v29;
        if (v32 != v33)
        {
          v36 = 0;
        }

        if (v32 >= v33 && !v36)
        {
          v5 = v31 < v33 ? v28 : v25;
          if (v26 < v29 && v31 == v33)
          {
            v5 = v28;
          }
        }
      }
    }
  }

  v21 = &v6[-2 * v23];
  v41 = &v6[2 * v24];
  v42 = v21->i64[0];
  v43 = v41->i64[0];
  if (v21->i64[0] != v41->i64[0])
  {
    v44 = v6->i64[0];
    if (v6->i64[0] == v42 || v44 == v43)
    {
      goto LABEL_89;
    }

    v45 = v21[1].u64[0];
    v46 = v41[1].u64[0];
    v47 = v6[1].u64[0];
    v48 = v42 < v43;
    if (v45 != v46)
    {
      v48 = 0;
    }

    if (v45 >= v46 && !v48)
    {
      v49 = v43 > v44;
      if (v46 != v47)
      {
        v49 = 0;
      }

      if (v46 <= v47 && !v49)
      {
        if (v42 < v44 && v45 == v47 || v45 < v47)
        {
          goto LABEL_91;
        }

LABEL_89:
        v21 = (a1 + 32 * a3);
        goto LABEL_91;
      }

LABEL_90:
      v21 = v41;
      goto LABEL_91;
    }

    v50 = v43 < v44;
    if (v46 != v47)
    {
      v50 = 0;
    }

    if (v46 < v47 || v50)
    {
      goto LABEL_90;
    }

    if (v42 < v44 && v45 == v47)
    {
      goto LABEL_89;
    }

    if (v45 < v47)
    {
      v21 = (a1 + 32 * a3);
    }
  }

LABEL_91:
  v51 = v11->i64[0];
  v52 = v5->i64[0];
  if (v11->i64[0] == v5->i64[0])
  {
    goto LABEL_116;
  }

  v53 = v21->i64[0];
  if (v21->i64[0] == v51 || v53 == v52)
  {
    goto LABEL_108;
  }

  v55 = v11[1].u64[0];
  v56 = v5[1].u64[0];
  v57 = v21[1].u64[0];
  v58 = v51 < v52;
  if (v55 != v56)
  {
    v58 = 0;
  }

  if (v55 >= v56 && !v58)
  {
    v61 = v52 > v53;
    if (v56 != v57)
    {
      v61 = 0;
    }

    if (v56 > v57 || v61)
    {
      goto LABEL_120;
    }

    if (v51 >= v53 || v55 != v57)
    {
      v5 = v21;
      if (v55 >= v57)
      {
        goto LABEL_120;
      }
    }

LABEL_116:
    v5 = v11;
    goto LABEL_120;
  }

  v60 = v52 < v53;
  if (v56 != v57)
  {
    v60 = 0;
  }

  if (v56 >= v57 && !v60)
  {
    if (v51 < v53 && v55 == v57)
    {
LABEL_108:
      v5 = v21;
      goto LABEL_120;
    }

    if (v55 < v57)
    {
      v5 = v21;
    }

    else
    {
      v5 = v11;
    }
  }

LABEL_120:
  v62 = *v5;
  v63 = v5[1];
  v64 = v6[1];
  *v5 = *v6;
  v5[1] = v64;
  *v6 = v62;
  v6[1] = v63;
  v65 = a3 - a2;
  if (a3 > a2)
  {
    v67 = *v4;
    v68 = v4[1];
    v66 = v4 + 3;
    v69 = v63.i64[0];
    do
    {
      v70 = v68;
      v71 = v67;
      v67 = v66[-1];
      v68 = *v66;
      if (v70.i64[0] < v69 || v70.i64[0] == v69 && (vmovn_s64(vcgtq_s64(v71, v62)).u8[0] & 1) == 0)
      {
        v72 = (a1 + 32 * a2);
        v73 = v72[1];
        v66[-3] = *v72;
        v66[-2] = v73;
        *v72 = v71;
        v72[1] = v70;
        ++a2;
      }

      v66 += 2;
      --v65;
    }

    while (v65);
  }

  v74 = (a1 + 32 * a2);
  v76 = *v74;
  v75 = v74[1];
  v77 = v6[1];
  *v74 = *v6;
  v74[1] = v77;
  *v6 = v76;
  v6[1] = v75;
  return a2;
}