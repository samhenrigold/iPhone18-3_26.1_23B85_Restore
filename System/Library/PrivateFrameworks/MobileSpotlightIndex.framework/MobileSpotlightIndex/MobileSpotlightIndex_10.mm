uint64_t refillOids(SISearchCtx_METADATA *a1, int a2, double a3, size_t a4)
{
  v365 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 85))
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 13);
  if (*(v5 + 96))
  {
    goto LABEL_5;
  }

  do
  {
    v9 = v5;
    v5 = *(v5 + 80);
  }

  while (v5);
  if (*(*(v9 + 8) + 12))
  {
LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  kdebug_trace();
  Log = _MDPerf_QueryLog();
  v13 = *(a1 + 1);
  if (v13 + 1 >= 2)
  {
    v73 = Log;
    if (os_signpost_enabled(Log))
    {
      v74 = *(v13 + 608);
      v75 = qos_class_self();
      LODWORD(v353[0]) = 134218240;
      *(v353 + 4) = v74;
      WORD6(v353[0]) = 1024;
      *(v353 + 14) = v75;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v73, OS_SIGNPOST_INTERVAL_BEGIN, v13, "QueryRefillOids", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", v353, 0x12u);
    }
  }

  v14 = *(a1 + 5);
  v15 = (v14 >> 7) & 2;
  if ((v14 & 0x80) == 0)
  {
    ++v15;
  }

  v16 = **(a1 + 105);
  v17 = *(v16 + 48);
  v333 = a2;
  if (v17 == 4)
  {
    v18 = *(v16 + 16);
    if (v18)
    {
      LODWORD(v18) = (*(v18 + 24) < 0xFu) & (0x5060u >> *(v18 + 24));
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 != ((v17 >> 3) & 1))
  {
    v15 |= 4u;
  }

  v19 = (v14 >> 9) & 8 | v15;
  v20 = ~v14;
  if ((v14 & 0x100000) != 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 | 0x10;
  }

  if ((*&v20 & 0x600000) != 0)
  {
    v21 |= 0x20u;
  }

  v344 = v21;
  Current = CFAbsoluteTimeGetCurrent();
  v23 = CFAbsoluteTimeGetCurrent();
  v24 = *(a1 + 75);
  v352 = v24;
  *(a1 + 640) = 0;
  v351 = 0;
  v350 = 0;
  v25 = *(a1 + 77);
  v26 = &qword_1EDD81000;
  if (malloc_size(v25) >= 8 * a4)
  {
    v27 = v25;
  }

  else
  {
    v27 = malloc_type_zone_malloc(queryZone, 8 * a4, 0xA4971684uLL);
    if (!v27)
    {
      _log_fault_for_malloc_failure();
    }

    if (8 * v24 >= 4 * *MEMORY[0x1E69E9AC8])
    {
      madvise(v27, 8 * v24, 3);
    }

    memcpy(v27, v25, 8 * v24);
    free(v25);
  }

  *(a1 + 77) = v27;
  v28 = *(a1 + 78);
  v29 = *(a1 + 75);
  if (malloc_size(v28) >= 8 * a4)
  {
    v30 = v28;
  }

  else
  {
    v30 = malloc_type_zone_malloc(queryZone, 8 * a4, 0xA4971684uLL);
    if (!v30)
    {
      _log_fault_for_malloc_failure();
    }

    if (8 * v29 >= (4 * *MEMORY[0x1E69E9AC8]))
    {
      madvise(v30, 8 * v29, 3);
    }

    memcpy(v30, v28, 8 * v29);
    free(v28);
  }

  *(a1 + 78) = v30;
  v31 = *(a1 + 79);
  v32 = *(a1 + 75);
  if (malloc_size(v31) >= a4)
  {
    v33 = v31;
  }

  else
  {
    v33 = malloc_type_zone_malloc(queryZone, a4, 0xA4971684uLL);
    if (!v33)
    {
      _log_fault_for_malloc_failure();
    }

    if (v32 >= 4 * *MEMORY[0x1E69E9AC8])
    {
      madvise(v33, v32, 3);
    }

    memcpy(v33, v31, v32);
    free(v31);
  }

  *(a1 + 79) = v33;
  v34 = *(a1 + 117);
  v35 = *(a1 + 75);
  v338 = 8 * a4;
  v336 = 80 * a4;
  if (malloc_size(v34) >= 80 * a4)
  {
    v36 = v34;
  }

  else
  {
    v36 = malloc_type_zone_malloc(queryZone, 80 * a4, 0xA4971684uLL);
    if (!v36)
    {
      _log_fault_for_malloc_failure();
    }

    if (80 * v35 >= (4 * *MEMORY[0x1E69E9AC8]))
    {
      madvise(v36, 80 * v35, 3);
    }

    memcpy(v36, v34, 80 * v35);
    free(v34);
    v26 = &qword_1EDD81000;
  }

  *(a1 + 117) = v36;
  v37 = *(a1 + 118);
  v38 = *(a1 + 75);
  if (malloc_size(v37) >= 5 * a4)
  {
    v39 = v37;
  }

  else
  {
    v39 = malloc_type_zone_malloc(v26[58], 5 * a4, 0xA4971684uLL);
    if (!v39)
    {
      _log_fault_for_malloc_failure();
    }

    if (5 * v38 >= (4 * *MEMORY[0x1E69E9AC8]))
    {
      madvise(v39, 5 * v38, 3);
    }

    memcpy(v39, v37, 5 * v38);
    free(v37);
    v26 = &qword_1EDD81000;
  }

  *(a1 + 118) = v39;
  v40 = *(a1 + 119);
  v41 = *(a1 + 75);
  v343 = 28 * a4;
  if (malloc_size(v40) >= 28 * a4)
  {
    v43 = v40;
  }

  else
  {
    v42 = 28 * v41;
    v43 = malloc_type_zone_malloc(v26[58], 28 * a4, 0xA4971684uLL);
    if (!v43)
    {
      _log_fault_for_malloc_failure();
    }

    if (v42 >= 4 * *MEMORY[0x1E69E9AC8])
    {
      madvise(v43, 28 * v41, 3);
    }

    memcpy(v43, v40, 28 * v41);
    free(v40);
    bzero(&v43[v42], v343 - v42);
  }

  *(a1 + 119) = v43;
  v44 = *(a1 + 83);
  v45 = *(a1 + 75);
  v335 = 2 * a4;
  if (malloc_size(v44) >= 2 * a4)
  {
    v46 = v44;
  }

  else
  {
    v46 = malloc_type_zone_malloc(v26[58], 2 * a4, 0xA4971684uLL);
    if (!v46)
    {
      _log_fault_for_malloc_failure();
    }

    if (2 * v45 >= (4 * *MEMORY[0x1E69E9AC8]))
    {
      madvise(v46, 2 * v45, 3);
    }

    memcpy(v46, v44, 2 * v45);
    free(v44);
  }

  v47 = 0;
  v342 = (a1 + 936);
  *(a1 + 83) = v46;
  do
  {
    if (*(a1 + v47 + 984))
    {
      *(a1 + v47 + 124) = *(*(*(a1 + 105) + 48 * *(a1 + v47 + 984)) + 24);
    }

    ++v47;
  }

  while (v47 != 5);
  v337 = 5 * a4;
  v48 = 0;
  v49 = a1 + 1032;
  v50 = a1 + 1080;
  v51 = a1 + 1104;
  v346 = a4;
  v347 = a1 + 1056;
  do
  {
    if (*&v49[8 * v48])
    {
      v52 = 0;
      do
      {
        v53 = (*&v50[8 * v48] + 2 * v52);
        v54 = *(*(a1 + 105) + 48 * *v53 - 48);
        v55 = *(v54 + 24);
        if (v55)
        {
          v56 = *(v54 + 40);
          if (v56)
          {
            v57 = v53[1];
            if (*v56 >= v57)
            {
              v58 = &v56[v57];
              v59 = v58[1];
              if (v58[1])
              {
                v60 = *(v55 + 8 * v57);
                v61 = *&v51[8 * v48];
                v62 = v61 ? malloc_type_realloc(v61, 8 * (*&v347[8 * v48] + v58[1]), 0x80040B8603338uLL) : malloc_type_malloc(8 * v58[1], 0x80040B8603338uLL);
                *&v51[8 * v48] = v62;
                if (v59 >= 1)
                {
                  v63 = *&v347[8 * v48];
                  do
                  {
                    v64 = *v60++;
                    *(*&v51[8 * v48] + 8 * v63++) = v64;
                    --v59;
                  }

                  while (v59);
                  *&v347[8 * v48] = v63;
                }
              }
            }
          }
        }

        ++v52;
      }

      while (v52 < *&v49[8 * v48]);
    }

    ++v48;
  }

  while (v48 != 3);
  v65 = *(a1 + 40);
  v66 = v65 > 6;
  v67 = (1 << v65) & 0x4A;
  v68 = v66 || v67 == 0;
  if (v68)
  {
    v70 = v346;
    if (*(a1 + 157))
    {
      os_unfair_lock_lock(a1 + 316);
    }

    v109 = *(a1 + 85);
    v110 = *(a1 + 77);
    v111 = *(a1 + 78);
    v112 = *(a1 + 79);
    v113 = *(a1 + 83);
    v114 = v342[13];
    v362 = v342[12];
    v363 = v114;
    v364 = v342[14];
    v115 = v342[9];
    v358 = v342[8];
    v359 = v115;
    v116 = v342[11];
    v360 = v342[10];
    v361 = v116;
    v117 = v342[5];
    v355[0] = v342[4];
    v355[1] = v117;
    v118 = v342[7];
    v356 = v342[6];
    v357 = v118;
    v119 = v342[1];
    v353[0] = *v342;
    v353[1] = v119;
    v120 = v342[3];
    v354[0] = v342[2];
    v354[1] = v120;
    v121 = *(a1 + 1);
    v122 = *(a1 + 22);
    if (!v122)
    {
      v122 = *(a1 + 23);
    }

    v120.n128_u64[0] = *(v121 + 360);
    ContentIndexDocSetResolveOIDsAndGroups_Step(v109, v110, v111, v112, v113, v353, v120.n128_f64[0], *(a1 + 116), v120, v346, &v352, &v351, &v350, v344, v122, 0, v346, *(v121 + 216) != 0, *(a1 + 157));
    if (*(a1 + 157))
    {
      os_unfair_lock_unlock(a1 + 316);
    }

    v123 = v352;
    *(a1 + 75) = v352;
    v94 = *__error();
    v106 = _SILogForLogForCategory(1);
    v107 = 2 * (dword_1EBF46AD0 < 4);
    if (!os_log_type_enabled(v106, v107))
    {
      goto LABEL_127;
    }

    LODWORD(v353[0]) = 134217984;
    *(v353 + 4) = v123;
    v108 = "Real Count: %ld";
    goto LABEL_126;
  }

  v344 |= 0x40u;
  v69 = *(a1 + 22);
  v70 = v346;
  if (v69)
  {
    if (v69 <= v346)
    {
      v71 = v346;
    }

    else
    {
      v71 = *(a1 + 22);
    }

    v72 = 4;
  }

  else
  {
    v76 = *(a1 + 23);
    if (v76 <= v346)
    {
      v77 = v346;
    }

    else
    {
      v77 = *(a1 + 23);
    }

    v78 = v76 != 0;
    if (v76)
    {
      v71 = v77;
    }

    else
    {
      v71 = v346;
    }

    v72 = 2 * v78;
  }

  v79 = *(a1 + 85);
  v80 = *(a1 + 77);
  v81 = *(a1 + 78);
  v82 = *(a1 + 79);
  v83 = *(a1 + 83);
  if ((*(a1 + 40) & 0x80) == 0)
  {
    v84 = v342[13];
    v362 = v342[12];
    v363 = v84;
    v364 = v342[14];
    v85 = v342[9];
    v358 = v342[8];
    v359 = v85;
    v86 = v342[11];
    v360 = v342[10];
    v361 = v86;
    v87 = v342[5];
    v355[0] = v342[4];
    v355[1] = v87;
    v88 = v342[7];
    v356 = v342[6];
    v357 = v88;
    v89 = v342[1];
    v353[0] = *v342;
    v353[1] = v89;
    v90 = v342[3];
    v354[0] = v342[2];
    v354[1] = v90;
    v91 = *(a1 + 1);
    if (!v69)
    {
      v69 = *(a1 + 23);
    }

    v90.n128_u64[0] = *(v91 + 360);
    v92 = ContentIndexDocSetResolveOIDsAndGroups_Step(v79, v80, v81, v82, v83, v353, v90.n128_f64[0], *(a1 + 116), v90, v346, &v352, &v351, &v350, v344, v69, v72, v71, *(v91 + 216) != 0, 0) != 0;
    v93 = v352;
    *(a1 + 75) = v352;
    v94 = *__error();
    v95 = _SILogForLogForCategory(1);
    v96 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v95, v96))
    {
      LODWORD(v353[0]) = 134217984;
      *(v353 + 4) = v93;
      _os_log_impl(&dword_1C278D000, v95, v96, "Real Count: %ld", v353, 0xCu);
    }

    v70 = v346;
    goto LABEL_128;
  }

  v97 = v342[13];
  v362 = v342[12];
  v363 = v97;
  v364 = v342[14];
  v98 = v342[9];
  v358 = v342[8];
  v359 = v98;
  v99 = v342[11];
  v360 = v342[10];
  v361 = v99;
  v100 = v342[5];
  v355[0] = v342[4];
  v355[1] = v100;
  v101 = v342[7];
  v356 = v342[6];
  v357 = v101;
  v102 = v342[1];
  v353[0] = *v342;
  v353[1] = v102;
  v103 = v342[3];
  v354[0] = v342[2];
  v354[1] = v103;
  v104 = *(a1 + 1);
  if (!v69)
  {
    v69 = *(a1 + 23);
  }

  v103.n128_u64[0] = *(v104 + 360);
  ContentIndexDocSetResolveOIDsAndGroups_Step(v79, v80, v81, v82, v83, v353, v103.n128_f64[0], *(a1 + 116), v103, v346, &v352, &v351, &v350, v344, v69, v72, v71, *(v104 + 216) != 0, 0);
  v105 = v352;
  *(a1 + 75) = v352;
  v94 = *__error();
  v106 = _SILogForLogForCategory(1);
  v107 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v106, v107))
  {
    LODWORD(v353[0]) = 134217984;
    *(v353 + 4) = v105;
    v108 = "Count: %ld";
LABEL_126:
    _os_log_impl(&dword_1C278D000, v106, v107, v108, v353, 0xCu);
  }

LABEL_127:
  v92 = 0;
LABEL_128:
  *__error() = v94;
  *(a1 + 640) |= v351;
  v125 = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 1) + 408) = *(*(a1 + 1) + 408) + v125 - v23;
  if (v92)
  {
    v126 = 0.0;
    v127 = 1;
    v10 = 1;
    goto LABEL_316;
  }

  v126 = 0.0;
  *&v124 = 134218752;
  v341 = v124;
  *&v124 = 134218496;
  v332 = v124;
  *&v124 = 134217984;
  v340 = v124;
  *&v124 = 67109120;
  v331 = v124;
  v10 = 1;
  while (1)
  {
    v128 = *(a1 + 75);
    if (v128 >= v346 || (v10 & 1) == 0)
    {
      v127 = 0;
      v70 = v346;
      v10 &= v128 >= v346;
      goto LABEL_316;
    }

    if (!*(a1 + 85))
    {
      goto LABEL_310;
    }

    v129 = *(a1 + 13);
    if (*(v129 + 96))
    {
      goto LABEL_310;
    }

    v130 = *(a1 + 13);
    do
    {
      v131 = v130;
      v130 = *(v130 + 80);
    }

    while (v130);
    if (*(*(v131 + 8) + 12))
    {
LABEL_310:
      v127 = 0;
      v10 = 1;
      goto LABEL_315;
    }

    v349 = 0;
    v132 = 0;
    if (v126 >= a3)
    {
LABEL_159:
      v133 = 1;
    }

    else
    {
      v133 = 1;
      do
      {
        v134 = *(a1 + 75) >= v346 || v349 >= v346;
        if (v134 || !v133)
        {
          break;
        }

        v135 = v129;
        do
        {
          v136 = v135;
          v135 = *(v135 + 80);
        }

        while (v135);
        if (*(*(v136 + 8) + 12))
        {
          goto LABEL_159;
        }

        v137 = ContentIndexDocSet_Step(*(a1 + 85), &v349, (v129 + 96));
        LODWORD(v345) = *__error();
        v138 = _SILogForLogForCategory(1);
        v139 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v138, v139))
        {
          v140 = *(a1 + 75);
          LODWORD(v353[0]) = v341;
          *(v353 + 4) = v132;
          WORD6(v353[0]) = 2048;
          *(v353 + 14) = v349;
          WORD3(v353[1]) = 2048;
          *(&v353[1] + 1) = v140;
          LOWORD(v354[0]) = 1024;
          *(v354 + 2) = v137 == 35;
          _os_log_impl(&dword_1C278D000, v138, v139, "Available at %ld loops: %ld (%ld) keep going:%d", v353, 0x26u);
        }

        *__error() = v345;
        v133 = v137 == 35;
        v141 = CFAbsoluteTimeGetCurrent();
        v129 = *(a1 + 13);
        if (*(v129 + 96))
        {
          goto LABEL_305;
        }

        v142 = *(a1 + 13);
        do
        {
          v143 = v142;
          v142 = *(v142 + 80);
        }

        while (v142);
        if (*(*(v143 + 8) + 12))
        {
          goto LABEL_305;
        }

        v144 = *(a1 + 13);
        do
        {
          v145 = v144;
          v144 = *(v144 + 80);
        }

        while (v144);
        if (*(*(v145 + 8) + 12) == 1)
        {
LABEL_305:
          *(a1 + 75) = 0;
          *(*(a1 + 1) + 408) = *(*(a1 + 1) + 408) + CFAbsoluteTimeGetCurrent() - v125;
          v303 = *__error();
          v304 = _SILogForLogForCategory(1);
          v305 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v304, v305))
          {
            LODWORD(v353[0]) = v340;
            *(v353 + 4) = v349;
            _os_log_impl(&dword_1C278D000, v304, v305, "Canceled; leaving with: %ld", v353, 0xCu);
          }

          *__error() = v303;
          kdebug_trace();
          v306 = _MDPerf_QueryLog();
          v307 = *(a1 + 1);
          if (v307 + 1 >= 2)
          {
            v308 = v306;
            if (os_signpost_enabled(v306))
            {
              v309 = *(v307 + 608);
              v310 = qos_class_self();
              LODWORD(v353[0]) = 134218240;
              *(v353 + 4) = v309;
              WORD6(v353[0]) = 1024;
              *(v353 + 14) = v310;
              _os_signpost_emit_with_name_impl(&dword_1C278D000, v308, OS_SIGNPOST_INTERVAL_END, v307, "QueryRefillOids", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", v353, 0x12u);
            }
          }

          goto LABEL_5;
        }

        ++v132;
      }

      while (v141 < a3);
    }

    LODWORD(v345) = v133;
    v146 = *__error();
    v147 = _SILogForLogForCategory(1);
    v148 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v147, v148))
    {
      v149 = *(a1 + 75);
      LODWORD(v353[0]) = v332;
      *(v353 + 4) = v132;
      WORD6(v353[0]) = 2048;
      *(v353 + 14) = v349;
      WORD3(v353[1]) = 2048;
      *(&v353[1] + 1) = v149;
      _os_log_impl(&dword_1C278D000, v147, v148, "Available after %ld loops: %ld (%ld)", v353, 0x20u);
    }

    v150 = __error();
    v151 = 0;
    *v150 = v146;
    do
    {
      if (*(a1 + v151 + 984))
      {
        *(a1 + v151 + 124) = *(*(*(a1 + 105) + 48 * *(a1 + v151 + 984)) + 24);
      }

      ++v151;
    }

    while (v151 != 5);
    for (i = 0; i != 3; ++i)
    {
      if (*&v49[8 * i])
      {
        v153 = 0;
        do
        {
          v154 = (*&v50[8 * i] + 2 * v153);
          v155 = *(*(a1 + 105) + 48 * *v154 - 48);
          v156 = *(v155 + 24);
          if (v156)
          {
            v157 = *(v155 + 40);
            if (v157)
            {
              v158 = v154[1];
              if (*v157 >= v158)
              {
                v159 = &v157[v158];
                v160 = v159[1];
                if (v159[1])
                {
                  v161 = *(v156 + 8 * v158);
                  v162 = *&v51[8 * i];
                  v163 = v162 ? malloc_type_realloc(v162, 8 * (*&v347[8 * i] + v159[1]), 0x80040B8603338uLL) : malloc_type_malloc(8 * v159[1], 0x80040B8603338uLL);
                  *&v51[8 * i] = v163;
                  if (v160 >= 1)
                  {
                    v164 = *&v347[8 * i];
                    do
                    {
                      v165 = *v161++;
                      *(*&v51[8 * i] + 8 * v164++) = v165;
                      --v160;
                    }

                    while (v160);
                    *&v347[8 * i] = v164;
                  }
                }
              }
            }
          }

          ++v153;
        }

        while (v153 < *&v49[8 * i]);
      }
    }

    v166 = *(a1 + 77);
    v167 = *(a1 + 75);
    v168 = malloc_size(v166);
    v169 = v338;
    if (v168 >= v338)
    {
      v170 = v166;
    }

    else
    {
      v170 = malloc_type_zone_malloc(queryZone, v338, 0xA4971684uLL);
      if (!v170)
      {
        _log_fault_for_malloc_failure();
      }

      v171 = 8 * v167;
      if (v171 >= 4 * *MEMORY[0x1E69E9AC8])
      {
        madvise(v170, v171, 3);
      }

      memcpy(v170, v166, v171);
      free(v166);
    }

    *(a1 + 77) = v170;
    v172 = *(a1 + 78);
    v173 = *(a1 + 75);
    if (malloc_size(v172) >= v169)
    {
      v174 = v172;
    }

    else
    {
      v174 = malloc_type_zone_malloc(queryZone, v169, 0xA4971684uLL);
      if (!v174)
      {
        _log_fault_for_malloc_failure();
      }

      v175 = 8 * v173;
      if (v175 >= 4 * *MEMORY[0x1E69E9AC8])
      {
        madvise(v174, v175, 3);
      }

      memcpy(v174, v172, v175);
      free(v172);
    }

    *(a1 + 78) = v174;
    v176 = *(a1 + 79);
    v177 = *(a1 + 75);
    v178 = malloc_size(v176);
    if (v178 >= v346)
    {
      v179 = v176;
    }

    else
    {
      v179 = malloc_type_zone_malloc(queryZone, v346, 0xA4971684uLL);
      if (!v179)
      {
        _log_fault_for_malloc_failure();
      }

      if (v177 >= 4 * *MEMORY[0x1E69E9AC8])
      {
        madvise(v179, v177, 3);
      }

      memcpy(v179, v176, v177);
      free(v176);
    }

    *(a1 + 79) = v179;
    v180 = *(a1 + 117);
    v181 = *(a1 + 75);
    v182 = malloc_size(v180);
    if (v182 >= v336)
    {
      v183 = v180;
    }

    else
    {
      v183 = malloc_type_zone_malloc(queryZone, v336, 0xA4971684uLL);
      if (!v183)
      {
        _log_fault_for_malloc_failure();
      }

      v184 = 80 * v181;
      if (v184 >= 4 * *MEMORY[0x1E69E9AC8])
      {
        madvise(v183, v184, 3);
      }

      memcpy(v183, v180, v184);
      free(v180);
    }

    *(a1 + 117) = v183;
    v185 = *(a1 + 118);
    v186 = *(a1 + 75);
    v187 = malloc_size(v185);
    if (v187 >= v337)
    {
      v188 = v185;
    }

    else
    {
      v188 = malloc_type_zone_malloc(queryZone, v337, 0xA4971684uLL);
      if (!v188)
      {
        _log_fault_for_malloc_failure();
      }

      v189 = 5 * v186;
      if (v189 >= 4 * *MEMORY[0x1E69E9AC8])
      {
        madvise(v188, v189, 3);
      }

      memcpy(v188, v185, v189);
      free(v185);
    }

    *(a1 + 118) = v188;
    v190 = *(a1 + 119);
    v191 = *(a1 + 75);
    v192 = malloc_size(v190);
    if (v192 >= v343)
    {
      v193 = v190;
    }

    else
    {
      v193 = malloc_type_zone_malloc(queryZone, v343, 0xA4971684uLL);
      if (!v193)
      {
        _log_fault_for_malloc_failure();
      }

      v194 = 28 * v191;
      if (v194 >= 4 * *MEMORY[0x1E69E9AC8])
      {
        madvise(v193, v194, 3);
      }

      memcpy(v193, v190, v194);
      free(v190);
      bzero(&v193[v194], v343 - v194);
    }

    *(a1 + 119) = v193;
    v195 = *(a1 + 83);
    v196 = *(a1 + 75);
    v197 = malloc_size(v195);
    if (v197 >= v335)
    {
      v198 = v195;
    }

    else
    {
      v198 = malloc_type_zone_malloc(queryZone, v335, 0xA4971684uLL);
      if (!v198)
      {
        _log_fault_for_malloc_failure();
      }

      v199 = 2 * v196;
      if (v199 >= 4 * *MEMORY[0x1E69E9AC8])
      {
        madvise(v198, v199, 3);
      }

      memcpy(v198, v195, v199);
      free(v195);
    }

    *(a1 + 83) = v198;
    v200 = *(a1 + 40);
    if (v200 > 6 || ((1 << v200) & 0x4A) == 0)
    {
      v252 = *__error();
      v253 = _SILogForLogForCategory(1);
      v254 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v253, v254))
      {
        v255 = *(a1 + 75);
        LODWORD(v353[0]) = v340;
        *(v353 + 4) = v255;
        _os_log_impl(&dword_1C278D000, v253, v254, "(Full)Available: %ld", v353, 0xCu);
      }

      *__error() = v252;
      if (*(a1 + 157))
      {
        os_unfair_lock_lock(a1 + 316);
      }

      v256 = *(a1 + 85);
      v257 = *(a1 + 77);
      v258 = *(a1 + 78);
      v259 = *(a1 + 79);
      v260 = *(a1 + 83);
      v261 = v342[13];
      v362 = v342[12];
      v363 = v261;
      v364 = v342[14];
      v262 = v342[9];
      v358 = v342[8];
      v359 = v262;
      v263 = v342[11];
      v360 = v342[10];
      v361 = v263;
      v264 = v342[5];
      v355[0] = v342[4];
      v355[1] = v264;
      v265 = v342[7];
      v356 = v342[6];
      v357 = v265;
      v266 = v342[1];
      v353[0] = *v342;
      v353[1] = v266;
      v267 = v342[3];
      v354[0] = v342[2];
      v354[1] = v267;
      v268 = *(a1 + 1);
      v269 = *(a1 + 22);
      if (!v269)
      {
        v269 = *(a1 + 23);
      }

      v267.n128_u64[0] = *(v268 + 360);
      ContentIndexDocSetResolveOIDsAndGroups_Step(v256, v257, v258, v259, v260, v353, v267.n128_f64[0], *(a1 + 116), v267, v346, &v352, &v351, &v350, v344, v269, 0, v346, *(v268 + 216) != 0, *(a1 + 157));
      if (*(a1 + 157))
      {
        os_unfair_lock_unlock(a1 + 316);
      }

      v270 = v352;
      v271 = v352 > *(a1 + 75);
      *(a1 + 75) = v352;
      LODWORD(v334) = *__error();
      v272 = _SILogForLogForCategory(1);
      v273 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v272, v273))
      {
        LODWORD(v353[0]) = v340;
        *(v353 + 4) = v270;
        _os_log_impl(&dword_1C278D000, v272, v273, "(Full)Count: %ld", v353, 0xCu);
      }

      v10 = v271 | v345;
      v230 = __error();
      LODWORD(v339) = 0;
      goto LABEL_269;
    }

    v201 = *(a1 + 22);
    if (v201)
    {
      if (v201 <= v346)
      {
        v201 = v346;
      }

      v339 = v201;
      v202 = 4;
    }

    else
    {
      v203 = *(a1 + 23);
      if (v203 <= v346)
      {
        v204 = v346;
      }

      else
      {
        v204 = *(a1 + 23);
      }

      v68 = v203 == 0;
      v205 = v203 != 0;
      if (v68)
      {
        v204 = v346;
      }

      v339 = v204;
      v202 = 2 * v205;
    }

    v334 = v202;
    v206 = *(a1 + 5);
    v207 = *__error();
    v208 = _SILogForLogForCategory(1);
    v209 = 2 * (dword_1EBF46AD0 < 4);
    v210 = os_log_type_enabled(v208, v209);
    if ((v206 & 0x80) == 0)
    {
      if (v210)
      {
        v211 = *(a1 + 75);
        LODWORD(v353[0]) = v340;
        *(v353 + 4) = v211;
        _os_log_impl(&dword_1C278D000, v208, v209, "(Full)Available: %ld", v353, 0xCu);
      }

      *__error() = v207;
      v212 = *(a1 + 85);
      v213 = *(a1 + 77);
      v214 = *(a1 + 78);
      v215 = *(a1 + 79);
      v216 = *(a1 + 83);
      v217 = v342[13];
      v362 = v342[12];
      v363 = v217;
      v364 = v342[14];
      v218 = v342[9];
      v358 = v342[8];
      v359 = v218;
      v219 = v342[11];
      v360 = v342[10];
      v361 = v219;
      v220 = v342[5];
      v355[0] = v342[4];
      v355[1] = v220;
      v221 = v342[7];
      v356 = v342[6];
      v357 = v221;
      v222 = v342[1];
      v353[0] = *v342;
      v353[1] = v222;
      v223 = v342[3];
      v354[0] = v342[2];
      v354[1] = v223;
      v224 = *(a1 + 1);
      v225 = *(a1 + 22);
      if (!v225)
      {
        v225 = *(a1 + 23);
      }

      v223.n128_u64[0] = *(v224 + 360);
      LODWORD(v339) = ContentIndexDocSetResolveOIDsAndGroups_Step(v212, v213, v214, v215, v216, v353, v223.n128_f64[0], *(a1 + 116), v223, v346, &v352, &v351, &v350, v344, v225, v334, v339, *(v224 + 216) != 0, 0) != 0;
      v226 = v352;
      v227 = v352 > *(a1 + 75);
      *(a1 + 75) = v352;
      LODWORD(v334) = *__error();
      v228 = _SILogForLogForCategory(1);
      v229 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v228, v229))
      {
        LODWORD(v353[0]) = v340;
        *(v353 + 4) = v226;
        _os_log_impl(&dword_1C278D000, v228, v229, "(Full)Count: %ld", v353, 0xCu);
      }

      v10 = v227 | v345;
      v230 = __error();
LABEL_269:
      *v230 = v334;
      goto LABEL_270;
    }

    if (v210)
    {
      v231 = *(a1 + 75);
      LODWORD(v353[0]) = v340;
      *(v353 + 4) = v231;
      _os_log_impl(&dword_1C278D000, v208, v209, "(Full)Available: %ld", v353, 0xCu);
    }

    *__error() = v207;
    v232 = *(a1 + 85);
    v233 = *(a1 + 77);
    v234 = *(a1 + 78);
    v235 = *(a1 + 79);
    v236 = *(a1 + 83);
    v237 = v342[13];
    v362 = v342[12];
    v363 = v237;
    v364 = v342[14];
    v238 = v342[9];
    v358 = v342[8];
    v359 = v238;
    v239 = v342[11];
    v360 = v342[10];
    v361 = v239;
    v240 = v342[5];
    v355[0] = v342[4];
    v355[1] = v240;
    v241 = v342[7];
    v356 = v342[6];
    v357 = v241;
    v242 = v342[1];
    v353[0] = *v342;
    v353[1] = v242;
    v243 = v342[3];
    v354[0] = v342[2];
    v354[1] = v243;
    v244 = *(a1 + 1);
    v245 = *(a1 + 22);
    if (!v245)
    {
      v245 = *(a1 + 23);
    }

    v243.n128_u64[0] = *(v244 + 360);
    ContentIndexDocSetResolveOIDsAndGroups_Step(v232, v233, v234, v235, v236, v353, v243.n128_f64[0], *(a1 + 116), v243, v346, &v352, &v351, &v350, v344, v245, v334, v339, *(v244 + 216) != 0, 0);
    v246 = *__error();
    v247 = _SILogForLogForCategory(1);
    v248 = 2 * (dword_1EBF46AD0 < 4);
    v249 = os_log_type_enabled(v247, v248);
    v250 = v352;
    if (v249)
    {
      LODWORD(v353[0]) = v340;
      *(v353 + 4) = v352;
      _os_log_impl(&dword_1C278D000, v247, v248, "(Full)Count: %ld", v353, 0xCu);
    }

    v251 = __error();
    LODWORD(v339) = 0;
    *v251 = v246;
    v10 = (v250 > *(a1 + 75)) | v345;
    *(a1 + 75) = v250;
LABEL_270:
    v126 = CFAbsoluteTimeGetCurrent();
    v274 = *__error();
    v275 = _SILogForLogForCategory(1);
    v276 = 2 * (dword_1EBF46AD0 < 4);
    v277 = os_log_type_enabled(v275, v276);
    if (v126 > a3)
    {
      break;
    }

    if (v277)
    {
      LODWORD(v353[0]) = v331;
      DWORD1(v353[0]) = v10 & 1;
      _os_log_impl(&dword_1C278D000, v275, v276, "keepGoing: %d", v353, 8u);
    }

    *__error() = v274;
    if (v10)
    {
      v10 = 1;
    }

    else if (*(a1 + 75) >= v346 || !v333 || ((v351 & 1) != 0 || *(a1 + 640) == 1) && *(a1 + 79) || (*(a1 + 641) & 1) != 0 || (v279 = *(a1 + 105), *(v279 + 16)) || *(a1 + 108) || (v288 = *(a1 + 212)) != 0 && (v289 = *(v279 + 48 * v288)) != 0 && (db_node_has_ranking_weights(v289) & 1) != 0 || (v290 = *(a1 + 1), *(v290 + 96)) && *(v290 + 152) == 3 || *(a1 + 75) && (*(v290 + 152) - 1) < 3)
    {
      v280 = *__error();
      v281 = _SILogForLogForCategory(1);
      v282 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v281, v282))
      {
        v283 = *(a1 + 75);
        LODWORD(v353[0]) = v332;
        *(v353 + 4) = v283;
        WORD6(v353[0]) = 2048;
        *(v353 + 14) = v346;
        WORD3(v353[1]) = 1024;
        DWORD2(v353[1]) = v333;
        _os_log_impl(&dword_1C278D000, v281, v282, "Abandoning %ld %ld %d", v353, 0x1Cu);
      }

      v10 = 0;
      *__error() = v280;
    }

    else
    {
      v345 = &v331;
      MEMORY[0x1EEE9AC00](v278);
      v292 = &v331 - ((v291 + 15) & 0xFFFFFFFF0);
      bzero(v292, v291);
      v293 = CICleanUpThreadLoc();
      v294 = v293;
      v295 = *(a1 + 208);
      if (v295)
      {
        v296 = (*(a1 + 105) + 32);
        v297 = v292;
        do
        {
          *v297++ = *v296;
          *v296 = 0;
          v296 += 6;
          --v295;
        }

        while (v295);
      }

      *&v353[0] = a1;
      *(&v353[0] + 1) = v292;
      v298 = CICleanUpPush(v293, cleanupDocSets, v353);
      SISearchCtx_METADATA::cleanUp(a1, 0);
      v299 = *(a1 + 1);
      *(v299 + 408) = *(v299 + 408) + CFAbsoluteTimeGetCurrent() - v125;
      v10 = gatherIndexInfo(a1, v292, 1);
      v125 = CFAbsoluteTimeGetCurrent();
      CICleanUpClearItem(v294, v298);
      cleanupDocSets(v353);
      if ((v10 & 1) == 0)
      {
        v300 = *__error();
        v301 = _SILogForLogForCategory(1);
        v302 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v301, v302))
        {
          v348[0] = 0;
          _os_log_impl(&dword_1C278D000, v301, v302, "Couldn't gather.", v348, 2u);
        }

        *__error() = v300;
      }
    }

    *(a1 + 640) |= v351;
    v284 = *__error();
    v285 = _SILogForLogForCategory(1);
    v286 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v285, v286))
    {
      v287 = *(a1 + 75);
      LODWORD(v353[0]) = v340;
      *(v353 + 4) = v287;
      _os_log_impl(&dword_1C278D000, v285, v286, "(Loop end)Available: %ld", v353, 0xCu);
    }

    *__error() = v284;
    if (v339)
    {
      v127 = 1;
LABEL_315:
      v70 = v346;
      goto LABEL_316;
    }
  }

  if (v277)
  {
    LOWORD(v353[0]) = 0;
    _os_log_impl(&dword_1C278D000, v275, v276, "Timeout", v353, 2u);
  }

  *__error() = v274;
  *(a1 + 640) |= v351;
  v70 = v346;
  v127 = v339;
LABEL_316:
  v311 = *__error();
  v312 = _SILogForLogForCategory(1);
  v313 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v312, v313))
  {
    v314 = *(a1 + 75);
    v315 = CFAbsoluteTimeGetCurrent();
    v316 = "No";
    v317 = *(a1 + 85);
    v318 = *(a1 + 640);
    if (v127)
    {
      v319 = "Yes";
    }

    else
    {
      v319 = "No";
    }

    v320 = v350;
    if (*(a1 + 75) >= v70)
    {
      v321 = "Yes";
    }

    else
    {
      v321 = "No";
    }

    LODWORD(v353[0]) = 134220034;
    if (v126 < a3)
    {
      v322 = "No";
    }

    else
    {
      v322 = "Yes";
    }

    *(v353 + 4) = v314;
    if (v10)
    {
      v323 = "Yes";
    }

    else
    {
      v323 = "No";
    }

    if (v317)
    {
      v324 = "Yes";
    }

    else
    {
      v324 = "No";
    }

    WORD6(v353[0]) = 2048;
    *(v353 + 14) = v315 - Current;
    if (v318)
    {
      v316 = "Yes";
    }

    WORD3(v353[1]) = 2080;
    *(&v353[1] + 1) = v319;
    LOWORD(v354[0]) = 2080;
    *(v354 + 2) = v321;
    WORD5(v354[0]) = 2080;
    *(v354 + 12) = v322;
    WORD2(v354[1]) = 2080;
    *(&v354[1] + 6) = v323;
    HIWORD(v354[1]) = 2080;
    *&v355[0] = v324;
    WORD4(v355[0]) = 2080;
    *(v355 + 10) = v316;
    WORD1(v355[1]) = 2048;
    *(&v355[1] + 4) = v350;
    _os_log_impl(&dword_1C278D000, v312, v313, "Extracted %ld oids in %f seconds! bad batch:%s batch full:%s timeout:%s keepgoing:%s iterator:%s check needed:%s discarded:%ld", v353, 0x5Cu);
  }

  else
  {
    v320 = v350;
  }

  *__error() = v311;
  *(*(a1 + 1) + 504) += *(a1 + 75);
  *(*(a1 + 1) + 496) += v320;
  if (*(a1 + 75))
  {
    kdebug_trace();
    v325 = _MDPerf_QueryLog();
    v326 = *(a1 + 1);
    if (v326 + 1 >= 2)
    {
      v327 = v325;
      if (os_signpost_enabled(v325))
      {
        goto LABEL_342;
      }
    }
  }

  else
  {
    *(*(a1 + 1) + 408) = *(*(a1 + 1) + 408) + CFAbsoluteTimeGetCurrent() - v125;
    kdebug_trace();
    v328 = _MDPerf_QueryLog();
    v326 = *(a1 + 1);
    if (v326 + 1 >= 2)
    {
      v327 = v328;
      if (os_signpost_enabled(v328))
      {
LABEL_342:
        v329 = *(v326 + 608);
        v330 = qos_class_self();
        LODWORD(v353[0]) = 134218240;
        *(v353 + 4) = v329;
        WORD6(v353[0]) = 1024;
        *(v353 + 14) = v330;
        _os_signpost_emit_with_name_impl(&dword_1C278D000, v327, OS_SIGNPOST_INTERVAL_END, v326, "QueryRefillOids", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", v353, 0x12u);
      }
    }
  }

  return v10 & 1;
}

void executeSearchContextCracked_2(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v113 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v86 = *__error();
    v87 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *v104 = 67109120;
      v105 = qos_class_self();
      _os_log_impl(&dword_1C278D000, v87, OS_LOG_TYPE_DEFAULT, "QOS executeSearchContextCracked_2: %d", v104, 8u);
    }

    *__error() = v86;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = 0x1EBF46000;
  v95 = *MEMORY[0x1E695E498];
  alloc = *MEMORY[0x1E695E480];
  v94 = v2;
  while (1)
  {
    bzero(v104, 0x11E0uLL);
    v7 = *(v4 + 8);
    v8 = *(v7 + 24);
    v9 = *(v4 + 56);
    v10 = *(v4 + 64);
    v11 = *(v4 + 72);
    v12 = *(v4 + 208);
    v13 = *(v7 + 152);
    v14 = *(v4 + 104);
    do
    {
      v15 = v14;
      v14 = *(v14 + 80);
    }

    while (v14);
    v16 = *(v15 + 40);
    v17 = *(v7 + 360);
    v18 = *(v4 + 248);
    v20 = *(v4 + 256);
    v19 = *(v4 + 264);
    v22 = *(v4 + 272);
    v21 = *(v4 + 280);
    if (v19)
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v97 = *(v15 + 40);
      v98 = *(v7 + 152);
      *v99 = *(v4 + 208);
      v100 = *(v4 + 72);
      v101 = *(v4 + 64);
      v102 = *(v4 + 56);
      v103 = *(v7 + 24);
      v24 = CIRetainIndexingTokenizer(3);
      v25 = CFStringCreateWithCStringNoCopy(alloc, v19, 0x8000100u, v95);
      v26 = strlen(v19);
      if (v26 >= 2 && v19[v26 - 1] == 42)
      {
        v114.length = CFStringGetLength(v25) - 1;
        v114.location = 0;
        v27 = CFStringCreateWithSubstring(alloc, v25, v114);
        CFRelease(v25);
        v28 = 1;
        v25 = v27;
        v2 = v94;
      }

      else
      {
        v28 = 0;
      }

      memset(buf, 0, 32);
      CIReleaseIndexingTokenizer(v24);
      if (v28 && *&buf[8])
      {
        v29 = strlen(*(*&buf[24] + 8 * *&buf[8] - 8));
        v30 = malloc_type_realloc(*(*&buf[24] + 8 * *&buf[8] - 8), v29 + 2, 0x100004077774924uLL);
        v31 = v29 + 2;
        v2 = v94;
        strlcat(v30, "*", v31);
        ++*&buf[16];
        *(*&buf[24] + 8 * *&buf[8] - 8) = v30;
      }

      v22 = malloc_type_calloc(1uLL, 0x60uLL, 0x10F004045811E64uLL);
      *v22 = v19;
      v32 = *&buf[24];
      *(v22 + 4) = *&buf[8];
      *(v22 + 5) = v32;
      *(v22 + 3) = CFStringGetLength(v25);
      CFRelease(v25);
      v6 = 0x1EBF46000uLL;
      if (*(v22 + 5))
      {
        v33 = *&buf[16] + *(v22 + 4);
        *(v22 + 1) = malloc_type_malloc(v33 + 1, 0x100004077774924uLL);
        *(v22 + 2) = malloc_type_malloc(v33 + 1, 0x100004077774924uLL);
        strlcpy(*(v22 + 1), **(v22 + 5), v33 + 1);
        strlcpy(*(v22 + 2), **(v22 + 5), v33 + 1);
        v34 = *(v22 + 4);
        if (v34 >= 2)
        {
          for (i = 1; i < v34; ++i)
          {
            v36 = *(*(v22 + 5) + 8 * i);
            if (*v36 != 42)
            {
              strlcat(*(v22 + 1), "*", v33 + 1);
              strlcat(*(v22 + 2), " ", v33 + 1);
              v36 = *(*(v22 + 5) + 8 * i);
            }

            strlcat(*(v22 + 1), v36, v33 + 1);
            strlcat(*(v22 + 2), *(*(v22 + 5) + 8 * i), v33 + 1);
            v34 = *(v22 + 4);
          }
        }

        if (v34)
        {
          *(v22 + 10) = malloc_type_calloc(v34, 8uLL, 0x2004093837F09uLL);
        }
      }

      *(v4 + 272) = v22;
      v9 = v102;
      v8 = v103;
      v11 = v100;
      v10 = v101;
      v12 = *v99;
      v13 = v98;
      v16 = v97;
    }

    v37 = gCPUCount;
    if (gCPUCount >= 0x80)
    {
      v37 = 128;
    }

    PartialQueryResults::PartialQueryResults(v104, v9, v8, v10, v11, v12, v13, v16, v17, v18, v20, v21, v22, v37);
    if ((v106 & 1) != 0 && !atomic_load_explicit((v4 + 280), memory_order_acquire))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "kicking off background suggestions model population task", buf, 2u);
      }

      dispatch_get_global_queue(-32768, 0);
      md_deadline_once_start();
    }

    v38 = (*(*v4 + 32))(v4, v104);
    v39 = *(v4 + 8);
    v40 = CFAbsoluteTimeGetCurrent();
    siquery_addactivetime(v39, v40 - Current);
    if (*(v6 + 2768) >= 5)
    {
      v50 = *__error();
      v51 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = CFAbsoluteTimeGetCurrent() - Current;
        v53 = qos_class_self();
        *buf = 134218240;
        *&buf[4] = v52;
        *&buf[12] = 1024;
        *&buf[14] = v53;
        _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "Search was active (performSearch) for %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
      }

      *__error() = v50;
    }

    v41 = *(v4 + 248);
    if (!*(v4 + 256))
    {
      explicit = atomic_load_explicit(v107, memory_order_acquire);
      if (explicit)
      {
        atomic_fetch_add(explicit, 1u);
      }

      *(v4 + 256) = explicit;
    }

    v43 = v111;
    if (!v111)
    {
      goto LABEL_47;
    }

    v44 = 0;
    v45 = 0;
    do
    {
      if (v110[v44])
      {
        VectorCount = _MDStoreOIDArrayGetVectorCount();
        v43 = v111;
      }

      else
      {
        VectorCount = 0;
      }

      v45 += VectorCount;
      ++v44;
    }

    while (v44 < v43);
    if (!v45)
    {
LABEL_47:
      v49 = *(v4 + 160);
      if (v49 != 3)
      {
        if (v49 == 4)
        {
          si_querypipe_addcoalescedresults(*(v4 + 104), v104, *(*(v4 + 24) + 1192), 0);
        }

LABEL_52:
        LOBYTE(v48) = 0;
        goto LABEL_73;
      }

      query_updateTimingOnInitialResults(*(v4 + 8));
      si_querypipe_addresults(*(v4 + 104), v104, *(v2 + 32), 0, *(v4 + 8));
      if (*(v6 + 2768) >= 5)
      {
        v54 = *__error();
        v55 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = PartialQueryResults::totalcount(v104);
          *buf = 134217984;
          *&buf[4] = v56;
          _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "Got %ld results", buf, 0xCu);
        }

        *__error() = v54;
        if (v38)
        {
          goto LABEL_52;
        }
      }

      else if (v38)
      {
        goto LABEL_52;
      }

      v57 = v109;
      v109 = 0;
      si_querypipe_send_matchinfo(*(v4 + 104), v57);
LABEL_63:
      if ((v41 & 0x100) != 0)
      {
        SISearchCtx::pushCompletions(v4, v104);
      }

      else
      {
        SISearchCtx::pushCompletionsWithLanguage(v4, v104);
      }

      v58 = atomic_load_explicit((v4 + 280), memory_order_acquire);
      if (!v58)
      {
        md_deadline_once_wait();
        v58 = atomic_load_explicit((v4 + 280), memory_order_acquire);
      }

      if (!v108)
      {
        if (v58)
        {
          atomic_fetch_add(v58, 1u);
        }

        v108 = v58;
      }

      si_querypipe_addcompletions(*(v4 + 104), v104, *(v4 + 80), *(v4 + 8));
      LOBYTE(v48) = 1;
      goto LABEL_73;
    }

    v47 = *(v4 + 160);
    if (v47 >= 5)
    {
      LOBYTE(v48) = v38 ^ 1;
      si_querypipe_addresults(*(v4 + 104), v104, *(v2 + 32), v38 ^ 1, *(v4 + 8));
      goto LABEL_73;
    }

    v48 = (v47 != 3) & (v38 ^ 1);
    query_updateTimingOnInitialResults(*(v4 + 8));
    si_querypipe_addresults(*(v4 + 104), v104, *(v2 + 32), v48, *(v4 + 8));
    if (*(v6 + 2768) >= 5)
    {
      v62 = *__error();
      v63 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = PartialQueryResults::totalcount(v104);
        *buf = 134217984;
        *&buf[4] = v64;
        _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "Got %ld results", buf, 0xCu);
      }

      *__error() = v62;
    }

    if (!((*(v4 + 160) != 3) | v38 & 1))
    {
      goto LABEL_63;
    }

LABEL_73:
    v59 = *(v4 + 104);
    if (*(v4 + 96) == 1)
    {
      *(v59 + 99) = 0;
    }

    if (*(v59 + 96))
    {
      goto LABEL_89;
    }

    v60 = v59;
    do
    {
      v61 = v60;
      v60 = *(v60 + 80);
    }

    while (v60);
    if (*(*(v61 + 8) + 12))
    {
LABEL_89:
      if (*(v6 + 2768) >= 5)
      {
        v88 = *__error();
        v89 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v89, OS_LOG_TYPE_DEFAULT, "Query canceled", buf, 2u);
        }

        *__error() = v88;
      }

      goto LABEL_90;
    }

    if (!v38)
    {
      goto LABEL_90;
    }

    if ((v2[4] & 1) == 0)
    {
      break;
    }

    PartialQueryResults::~PartialQueryResults(v104);
  }

  do
  {
    v65 = v59;
    v59 = *(v59 + 80);
  }

  while (v59);
  if (si_resultqueue_count(**(v65 + 8)) >= 0xB)
  {
    v69 = *__error();
    v70 = _SILogForLogForCategory(1);
    v71 = 2 * (*(v6 + 2768) < 4);
    if (os_log_type_enabled(v70, v71))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v70, v71, "Result queue overflowed. Not rescheduling", buf, 2u);
    }

    *__error() = v69;
    *(v2 + 2) = "executeSearchContextCracked_2 (overflow)";
    v2[1] = CFAbsoluteTimeGetCurrent();
    if ((*(v4 + 304) & 0x80000000) == 0)
    {
      *(v4 + 304) = -1;
    }

    for (j = 312; j != 352; j += 8)
    {
      v73 = *(*v2 + j);
      *(*v2 + j) = 0;
      si_scheduler_resume_with_token(v73);
    }

    si_querypipe_set_semaphore(*(v4 + 104), 0);
    os_unfair_lock_lock(&sActiveCtxLock);
    Mutable = activeCtxs;
    if (!activeCtxs)
    {
      Mutable = CFSetCreateMutable(alloc, 0, 0);
      activeCtxs = Mutable;
    }

    CFSetAddValue(Mutable, v4);
    os_unfair_lock_unlock(&sActiveCtxLock);
    v75 = *(v4 + 104);
    do
    {
      v76 = v75;
      v75 = *(v75 + 80);
    }

    while (v75);
    *(*(v76 + 8) + 16) = 2;
    v77 = *(v4 + 104);
    do
    {
      v78 = v77;
      v77 = *(v77 + 80);
    }

    while (v77);
    v79 = *(v78 + 8);
    pthread_mutex_lock((*v79 + 8));
    v80 = *(v79 + 12);
    if ((v80 & 1) != 0 || (v81 = si_simplequeue_count_locked(*v79), v82 = *(v79 + 16), v81 < v82))
    {
      pthread_mutex_unlock((*v79 + 8));
      lowWaterRoutine(v2, v80);
    }

    else
    {
      if (!v82)
      {
        v90 = __si_assert_copy_extra_332();
        v91 = v90;
        v92 = "";
        if (v90)
        {
          v92 = v90;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIResultQueue.c", 277, "queue->lowWaterMark!=0", v92);
        free(v91);
        if (__valid_fs(-1))
        {
          v93 = 2989;
        }

        else
        {
          v93 = 3072;
        }

        *v93 = -559038737;
        abort();
      }

      v83 = *(v79 + 40);
      v84 = *(v79 + 44);
      if (v83 >= v84)
      {
        v85 = 2 * v84;
        if (!v84)
        {
          v85 = 4;
        }

        *(v79 + 44) = v85;
        *(v79 + 24) = malloc_type_realloc(*(v79 + 24), 8 * v85, 0x80040B8603338uLL);
        *(v79 + 32) = malloc_type_realloc(*(v79 + 32), 8 * *(v79 + 44), 0x80040B8603338uLL);
        v83 = *(v79 + 40);
      }

      *(*(v79 + 24) + 8 * v83) = lowWaterRoutine;
      *(*(v79 + 32) + 8 * v83) = v2;
      *(v79 + 40) = v83 + 1;
      pthread_mutex_unlock((*v79 + 8));
    }

    goto LABEL_114;
  }

  *(v2 + 2) = "executeSearchContextCracked_2";
  v2[1] = CFAbsoluteTimeGetCurrent();
  v66 = si_querypipe_copy_jobid(*(*v2 + 104));
  if (v66)
  {
    v67 = v66;
    (*(*v4 + 24))(v4, executeSearchCtx2, v2, v66);
    si_release_qid(v67);
LABEL_114:
    PartialQueryResults::~PartialQueryResults(v104);
    return;
  }

LABEL_90:
  (*(*v4 + 48))(v4, 0);
  if ((v48 & 1) == 0)
  {
    v68 = v109;
    v109 = 0;
    si_querypipe_send_matchinfo(*(v4 + 104), v68);
    si_querypipe_remove_process(*(v4 + 104), *(v4 + 8), 0, 0);
  }

  PartialQueryResults::~PartialQueryResults(v104);
  search_ctx_destroy(v2, 0);
}

uint64_t test_compress_obj(uint64_t a1, int a2, _DWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v6 = *a3 + 24;
  v7 = malloc_type_malloc(v6, 0xF00A9BA8uLL);
  *v7 = 1684172850;
  v7[1] = v6;
  v7[2] = v6;
  v7[3] = 4;
  v7[4] = a2;
  memcpy(v7 + 5, a3, (*a3 + 4));
  if (page_compress(a1, v7, &v18, 0, (*(a1 + 804) & 2) != 0))
  {
    v8 = page_compress(a1, v7, &v18, 0, 2);
    if (v8)
    {
      v9 = v8;
      if (dword_1EBF46AE8 < 5)
      {
LABEL_4:
        free(v7);
        return v9;
      }

      v11 = *__error();
      v12 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        *__error() = v11;
        goto LABEL_4;
      }

      v13 = *(a3 + 4);
      if (a3[1] < 0)
      {
        v14 = *(a3 + 4);
        if (v14 > 0xBF)
        {
          if (v14 > 0xDF)
          {
            if (v14 > 0xEF)
            {
              if (v14 > 0xF7)
              {
                if (v14 > 0xFB)
                {
                  if (v14 > 0xFD)
                  {
                    if (v14 == 255)
                    {
                      v13 = *(a3 + 5);
                      goto LABEL_25;
                    }

                    v15 = (*(a3 + 5) << 48) | (*(a3 + 6) << 40) | (*(a3 + 7) << 32) | (*(a3 + 8) << 24) | (*(a3 + 9) << 16) | (*(a3 + 10) << 8);
                    v16 = *(a3 + 11);
                  }

                  else
                  {
                    v15 = ((v13 & 1) << 48) | (*(a3 + 5) << 40) | (*(a3 + 6) << 32) | (*(a3 + 7) << 24) | (*(a3 + 8) << 16) | (*(a3 + 9) << 8);
                    v16 = *(a3 + 10);
                  }
                }

                else
                {
                  v15 = ((v13 & 3) << 40) | (*(a3 + 5) << 32) | (*(a3 + 6) << 24) | (*(a3 + 7) << 16) | (*(a3 + 8) << 8);
                  v16 = *(a3 + 9);
                }
              }

              else
              {
                v15 = ((v13 & 7) << 32) | (*(a3 + 5) << 24) | (*(a3 + 6) << 16) | (*(a3 + 7) << 8);
                v16 = *(a3 + 8);
              }
            }

            else
            {
              v15 = ((v13 & 0xF) << 24) | (*(a3 + 5) << 16) | (*(a3 + 6) << 8);
              v16 = *(a3 + 7);
            }
          }

          else
          {
            v15 = ((v13 & 0x1F) << 16) | (*(a3 + 5) << 8);
            v16 = *(a3 + 6);
          }

          v13 = v15 | v16;
          goto LABEL_25;
        }

        v13 = *(a3 + 5) | ((v13 & 0x3F) << 8);
      }

LABEL_25:
      v17 = *a3 + 4;
      *buf = 67109888;
      v20 = v9;
      v21 = 1024;
      v22 = 2;
      v23 = 2048;
      v24 = v13;
      v25 = 1024;
      v26 = v17;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "test_compress_obj: ERR %d: compressing %d dbo with oid 0x%llx (%d bytes)", buf, 0x1Eu);
      goto LABEL_26;
    }
  }

  free(v7);
  free(v18);
  return 0;
}

size_t fast_compress_limitedOutput(const uint8_t *a1, uint8_t *a2, int a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (7 * a4 < a3)
  {
    return 0;
  }

  compression_encode_scratch_buffer_size(COMPRESSION_LZ4);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &buf[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v11, v12);
  result = compression_encode_buffer(a2, a4, a1, a3, v11, COMPRESSION_LZ4);
  if (dword_1EBF46AE8)
  {
    if (result)
    {
      atomic_fetch_add(&fast_compress_limitedOutput_totalUncompressed, a3);
      atomic_fetch_add(&fast_compress_limitedOutput_totalCompressed, result);
      atomic_fetch_add(&fast_compress_limitedOutput_successCompressed, 1uLL);
      if (dword_1EBF46AE8 >= 5)
      {
        v13 = result;
        v14 = *__error();
        v15 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v21 = fast_compress_limitedOutput_totalUncompressed / fast_compress_limitedOutput_totalCompressed;
          v22 = 2048;
          v23 = fast_compress_limitedOutput_successCompressed;
          v24 = 2048;
          v25 = fast_compress_limitedOutput_failedCompressed;
          v16 = "Compression ratio: %f good:%lld bad:%lld\n";
          v17 = v15;
          v18 = 32;
LABEL_12:
          _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else
    {
      atomic_fetch_add(&fast_compress_limitedOutput_failedCompressed, 1uLL);
      if (dword_1EBF46AE8 >= 5)
      {
        v13 = result;
        v14 = *__error();
        v19 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v21) = a3;
          v16 = "Failed compressing %d bytes\n";
          v17 = v19;
          v18 = 8;
          goto LABEL_12;
        }

LABEL_13:
        *__error() = v14;
        return v13;
      }
    }
  }

  return result;
}

uint64_t storage_reader_get_ptr(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (a2)
  {
    v9 = a2;
    v58 = a2;
    v10 = CICleanUpThreadLoc();
    v11 = 0;
    v12 = a4 + a3;
    if (a3 <= a4 + a3)
    {
      v13 = a4 + a3;
    }

    else
    {
      v13 = a3;
    }

LABEL_5:
    v14 = v9 + 584;
    v15 = v9 + 12;
    while (1)
    {
      v16 = a3 >> *(v9 + 576);
      if (v16 < *(v9 + 560))
      {
        v17 = *(v14 + 8 * v16);
        if (v17)
        {
          v18 = v17[1];
          if ((v18 + 1) >= 2)
          {
            v19 = v17[2];
            v20 = a3 >= v19;
            v21 = a3 - v19;
            if (v20 && v17[3] >= v12 && *(a1 + 224) >= v12)
            {
              return v18 + v21;
            }
          }
        }
      }

      v22 = *(a1 + 224);
      if (v22 <= v13)
      {
        return -1;
      }

      v23 = *(a1 + 248);
      *(v9 + 560) = v23;
      v56 = v11;
      if (v16 >= v23 - 1)
      {
        if (v16 >= v23)
        {
          if (v23 << *(v9 + 576) <= a3 && v22 > a3)
          {
            do
            {
              v32 = *(v9 + 560);
              os_unfair_lock_lock(&windowLock + v32);
              CIOnThreadCleanUpPush(v10, MEMORY[0x1E69E9B80], &windowLock + 4 * v32);
              if (v32 != *(v9 + 560))
              {
                break;
              }

              v33 = v9 + 8 * v32;
              v34 = *(v9 + 564);
              v35 = *(v9 + 568);
              v36 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
              atomic_store(1u, v36);
              *(v36 + 1) = 0;
              *(v36 + 2) = 0;
              *(v36 + 40) = v34;
              *(v36 + 3) = 0;
              *(v36 + 4) = v35;
              *(v33 + 584) = v36;
              v9 = v58;
              v37 = *(v58 + 576);
              v38 = *(v58 + 560);
              v39 = v38 << v37;
              v40 = (v38 + 1) << v37;
              v41 = v40 >= *(a1 + 224) ? *(a1 + 224) : v40;
              _initWindow(*(v58 + 8 * v32 + 584), (v58 + 528), v39, v41, 0, 0);
              CIOnThreadCleanUpPop(v10);
              if ((v32 + 1) << *(v9 + 576) > a3)
              {
                break;
              }
            }

            while (*(a1 + 224) > a3);
          }

          goto LABEL_68;
        }

        v25 = *(v14 + 8 * v16);
        v53 = v25;
        v55 = (v14 + 8 * v16);
        if (v25)
        {
          v47 = *(v25 + 1);
          v50 = *(v25 + 3) - *(v25 + 2);
        }

        else
        {
          v50 = 0;
          v47 = 0;
        }

        os_unfair_lock_lock(&windowLock + v16);
        CIOnThreadCleanUpPush(v10, MEMORY[0x1E69E9B80], &windowLock + 4 * v16);
        v26 = *v55;
        v57 = v26;
        if (v26)
        {
          v27 = *(v26 + 3) - *(v26 + 2);
        }

        else
        {
          v27 = 0;
        }

        v28 = v26 == v53 && v50 == v27;
        if (v28 && v50 <= 1 << *(a1 + 264))
        {
          if (v26)
          {
            if (v47 == *(v26 + 1) && (*(v26 + 2) > a3 || *(v26 + 3) < v12 || *(a1 + 224) < v12))
            {
              if ((v47 + 1) >= 2)
              {
                storageWindowRelease(v55);
                *(v15 + v16) = 0;
                v57 = 0;
              }

LABEL_72:
              allocateReaderWindowAtSlot(&v58, a1 + 216, v16, &v57);
              CIOnThreadCleanUpPop(v10);
              goto LABEL_68;
            }
          }

          else if (!v47)
          {
            goto LABEL_72;
          }
        }
      }

      else
      {
        v24 = *(v14 + 8 * v16);
        v57 = v24;
        v52 = v24;
        v54 = (v14 + 8 * v16);
        if (v24 && (*(v24 + 8) + 1) >= 2 && *(v15 + v16) == 1)
        {
          v51 = *(v24 + 24);
          v48 = *(v24 + 8);
          v49 = *(v24 + 16);
          v29 = (&windowLock + 4 * v16);
          os_unfair_lock_lock(v29);
          CIOnThreadCleanUpPush(v10, MEMORY[0x1E69E9B80], v29);
          if (v52 == *v54 && v51 - v49 == *(v52 + 3) - *(v52 + 2) && v51 - v49 <= (1 << *(a1 + 264)) && v48 == *(v52 + 1))
          {
            storageWindowRelease(v54);
            v57 = 0;
            goto LABEL_67;
          }
        }

        else
        {
          os_unfair_lock_lock(&windowLock + v16);
          CIOnThreadCleanUpPush(v10, MEMORY[0x1E69E9B80], &windowLock + 4 * v16);
          if (*v54 == v52)
          {
            if (!v52)
            {
              goto LABEL_52;
            }

            if ((*(v52 + 1) + 1) < 2 || *(v52 + 2) > a3 || *(v52 + 3) < v12 || *(a1 + 224) < v12)
            {
              storageWindowRelease(v54);
              *(v15 + v16) = 0;
              v57 = 0;
LABEL_52:
              v30 = *(a1 + 272 + 8 * v16);
              if (v30)
              {
                atomic_fetch_add(v30, 1u);
                v9 = v58;
                *(v58 + 8 * v16 + 584) = v30;
              }

              else
              {
                allocateReaderWindowAtSlot(&v58, a1 + 216, v16, &v57);
              }

LABEL_67:
              CIOnThreadCleanUpPop(v10);
              __dmb(0xBu);
              *(v9 + 560) = *(a1 + 248);
LABEL_68:
              v11 = v56 + 1;
              if (v56 != 1000)
              {
                goto LABEL_5;
              }

              return -1;
            }
          }
        }
      }

      CIOnThreadCleanUpPop(v10);
      v11 = v56;
    }
  }

  else
  {
    result = _moveWindowsInner((a1 + 216), a3, a4, 1, a5, a6);
    if (!result || result == a3)
    {
      v43 = __si_assert_copy_extra(0);
      v44 = v43;
      v45 = "";
      if (v43)
      {
        v45 = v43;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 234, "result && (offset_t)(intptr_t)result != inOffset", v45);
      free(v44);
      if (__valid_fs(-1))
      {
        v46 = 2989;
      }

      else
      {
        v46 = 3072;
      }

      *v46 = -559038737;
      abort();
    }
  }

  return result;
}

unsigned __int8 *termFieldMatch(int a1, unsigned __int8 *a2, int a3, int a4)
{
  if (!a1)
  {
    if (*a2 < 4u)
    {
      return 0;
    }

    v7 = a3;
    v8 = &a2[a3];
    v9 = *(v8 - 1);
    if ((a4 & 0x800) != 0)
    {
      if (v9 != 1)
      {
        return 0;
      }

      if (*(v8 - 2) == 1)
      {
        return 0;
      }

      v7 = a3 - 1;
    }

    else
    {
      if (v9 == 1)
      {
        return 0;
      }

      if (v9 == 2 && a2[a3 - 2] == 1)
      {
        if ((a4 & 0x3180) != 0)
        {
          return 0;
        }

        v7 = a3 - 2;
      }
    }

    v15 = &a2[v7];
    v16 = a2[v7 - 1];
    if (v16 == 5)
    {
      v17 = *(v15 - 2);
      if ((v17 - 6) < 0xFFFFFFFC)
      {
        return 0;
      }

      if (*(v15 - 3) != 1)
      {
        return 0;
      }

      if ((a4 & 0x78000000) != 0)
      {
        switch(v17)
        {
          case 4:
            if ((a4 & 0x20000000) == 0)
            {
              return 0;
            }

            break;
          case 3:
            if ((a4 & 0x10000000) == 0)
            {
              return 0;
            }

            break;
          case 2:
            if ((a4 & 0x8000000) == 0)
            {
              return 0;
            }

            break;
          default:
            if ((a4 & 0x40000000) == 0)
            {
              return 0;
            }

            break;
        }
      }
    }

    else
    {
      v18 = 0;
      if ((a4 & 0x78000000) != 0 || v16 <= 4)
      {
        return v18;
      }
    }

    return a2;
  }

  if (a1 == 1 && (a4 & 8) == 0)
  {
    if (*a2 < 4u)
    {
      return 0;
    }

    v5 = &a2[a3];
    v12 = *(v5 - 1);
    if ((a4 & 0x800) != 0)
    {
      if (v12 != 4)
      {
        if (v12 != 3 || *(v5 - 2) != 4)
        {
          return 0;
        }

        goto LABEL_37;
      }
    }

    else if (v12 != 1)
    {
      if (v12 != 3 || *(v5 - 2) != 1)
      {
        return 0;
      }

LABEL_37:
      if (*(v5 - 3) != 1)
      {
        return 0;
      }

      return a2;
    }

LABEL_39:
    if (*(v5 - 2) == 1)
    {
      return a2;
    }

    return 0;
  }

  if (a1 == 5)
  {
    if ((a4 & 0x800) == 0)
    {
      return 0;
    }

    v5 = &a2[a3];
    v6 = *(v5 - 1);
    if (v6 != 5)
    {
      if (v6 != 3 || *(v5 - 2) != 5)
      {
        return 0;
      }

      goto LABEL_37;
    }

    goto LABEL_39;
  }

  if (*a2 != 1)
  {
    return 0;
  }

  if (a2[1] == 2)
  {
    v10 = 2;
    if (a3 < 2)
    {
      goto LABEL_65;
    }

    goto LABEL_23;
  }

  if ((a4 & 8) != 0)
  {
    return 0;
  }

  if (a3 <= 2)
  {
    v10 = 1;
    if (a3 < 2)
    {
      goto LABEL_65;
    }

LABEL_23:
    v11 = a3;
    if (a2[a3 - 1] == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

  v11 = a3;
  v13 = &a2[a3];
  v14 = *(v13 - 1);
  if (v14 == 3)
  {
    if (*(v13 - 2) == 1 && *(v13 - 3) == 1)
    {
      return 0;
    }

    v10 = 1;
  }

  else
  {
    v10 = 1;
    if (v14 == 1)
    {
LABEL_24:
      if (a2[v11 - 2] == 1)
      {
        return 0;
      }
    }
  }

LABEL_65:
  v19 = v10 + 1;
  v20 = a2[v10];
  if (a2[v10] < 0)
  {
    v21 = v10 + 2;
    v22 = a2[v19];
    v23 = a2[v19];
    if (v22 < 0)
    {
      v24 = v10 + 3;
      v25 = a2[v21];
      v26 = v25;
      if (v25 < 0)
      {
        v21 = v10 | 4;
        v27 = a2[v24];
        v28 = a2[v24];
        if (v27 < 0)
        {
          v29 = ((v28 & 0x7F) << 21) | (a2[v21] << 28) | ((v26 & 0x7F) << 14) | ((v23 & 0x7F) << 7) | v20 & 0x7F;
          v21 = v10 + 5;
          v20 = v29;
        }

        else
        {
          v20 = ((v26 & 0x7F) << 14) | (v28 << 21) | ((v23 & 0x7F) << 7) | v20 & 0x7F;
        }
      }

      else
      {
        v21 = v10 + 3;
        v20 = ((v23 & 0x7F) << 7) | (v26 << 14) | v20 & 0x7F;
      }
    }

    else
    {
      v20 = v20 & 0x7F | (v23 << 7);
    }
  }

  else
  {
    v21 = v10 + 1;
  }

  v18 = 0;
  if (!v20)
  {
    return v18;
  }

  v30 = a1 == 1 || v20 == a1;
  v31 = v30;
  if (v20 < 6 || !v31)
  {
    return v18;
  }

  if (a1 != 1)
  {
    goto LABEL_92;
  }

  if ((a4 & 8) == 0)
  {
    goto LABEL_92;
  }

  v32 = a2[a3 - 1];
  if (v32 == 1)
  {
    goto LABEL_92;
  }

  v18 = 0;
  if (a3 < 3 || v32 != 3)
  {
    return v18;
  }

  if (__PAIR64__(a2[a3 - 2], a2[a3 - 3]) == 0x100000001)
  {
LABEL_92:
    a2 += v21;
    return a2;
  }

  return 0;
}

uint64_t PayloadProcessDocIDRangeBitsReversed(uint64_t *a1, unint64_t a2, uint64_t a3, uint8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v11 = a3;
  v81 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  v17 = 0x1EBF46000uLL;
  if (dword_1EBF46AF4 >= 5)
  {
    v60 = *__error();
    loga = _SILogForLogForCategory(10);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 5);
      v30 = *(v14 + 88);
      *buf = 134219008;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v11;
      *&buf[18] = 2048;
      *&buf[20] = a4;
      *&buf[28] = 1024;
      *&buf[30] = v29;
      *&buf[34] = 2048;
      *&buf[36] = v30;
      _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "range: %llu %u (%p) hint:%d docSet:%p", buf, 0x2Cu);
    }

    *__error() = v60;
    v17 = 0x1EBF46000;
    if (!a5)
    {
      goto LABEL_3;
    }
  }

  else if (!a5)
  {
LABEL_3:
    if ((a6 & 1) == 0)
    {
      v18 = v11;
      goto LABEL_19;
    }

    if (a2)
    {
      v18 = v11;
      LODWORD(a6) = a2 + v11 - 1;
      if (a4)
      {
        if (!v11)
        {
          goto LABEL_19;
        }

        log = v16;
        v19 = 0;
        v59 = v11;
        v20 = -v11;
        do
        {
          if ((a4[v19 >> 3] >> (v19 & 7)))
          {
            distanceHolderSetMinDistance(*(v14 + 72), *(v14 + 112) + a6, v7, *(&a6 + 1));
          }

          ++v19;
          LODWORD(a6) = a6 - 1;
          v21 = __CFADD__(v20++, 1);
        }

        while (!v21);
        v16 = log;
      }

      else
      {
        if (!v11)
        {
          goto LABEL_19;
        }

        v59 = v11;
        v22 = -v11;
        do
        {
          distanceHolderSetMinDistance(*(v14 + 72), *(v14 + 112) + a6, v7, *(&a6 + 1));
          LODWORD(a6) = a6 - 1;
          v21 = __CFADD__(v22++, 1);
        }

        while (!v21);
      }

      v17 = 0x1EBF46000uLL;
      v18 = v59;
LABEL_19:
      v23 = a2 + v11 - 1;
      if (*(v15 + 40) >= v23)
      {
        if (a2 < *(v15 + 44))
        {
          *(v15 + 44) = a2;
        }
      }

      else
      {
        *(v15 + 40) = v11 + a2 - 1;
      }

      v24 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      memset(buf, 0, sizeof(buf));
      v25 = *(v14 + 136);
      if (!v25)
      {
        goto LABEL_24;
      }

      v61 = v18;
      v31 = v17;
      v32 = *(v14 + 128);
      if (!*(v14 + 152))
      {
        v32 += 2 * (*(v14 + 144) - v25);
      }

      v33 = *(v14 + 112) + a2;
      v34 = *v32;
      if (*(v31 + 2804) >= 5)
      {
        logb = v16;
        v55 = *__error();
        v53 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *v63 = 134218240;
          v64 = v33;
          v65 = 2048;
          v66 = v34;
          _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "rMin:%lld, uMax:%lld, ", v63, 0x16u);
        }

        v16 = logb;
        *__error() = v55;
      }

      if (v34 < v33)
      {
        goto LABEL_24;
      }

      v35 = *(v14 + 152);
      if (v35 != *(v14 + 136))
      {
        v35 = *(v14 + 144);
      }

      v36 = a2 + v61 + *(v14 + 112) - 1;
      v37 = *(*(v14 + 128) + 16 * v35 - 16);
      if (*(v31 + 2804) >= 5)
      {
        v62 = *__error();
        v54 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *v63 = 134218240;
          v64 = v36;
          v65 = 2048;
          v66 = v37;
          _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, "rMax:%lld, uMin:%lld, ", v63, 0x16u);
        }

        *__error() = v62;
      }

      if (v37 <= v36)
      {
        v38 = (v11 + 7) >> 3;
        v26 = v38 > 0xFB;
        if (v38 <= 0xFB)
        {
          v40 = buf;
          if (a4)
          {
            __memcpy_chk();
          }

          else
          {
            __memset_chk();
          }
        }

        else
        {
          v39 = malloc_type_malloc(v38 + 4, 0xD1A5971DuLL);
          v40 = v39;
          if (a4)
          {
            memcpy(v39, a4, v38);
          }

          else
          {
            memset(v39, 255, v38);
          }
        }

        checkAgainstUpdatesBulkReversed(v14, a2, v11, v40);
        a4 = v40;
        if (!v16)
        {
LABEL_63:
          if (*(v14 + 104) && lockedCountItemsInRange(*(v14 + 96), a2, v11 - 1 + a2, v24) && v11)
          {
            for (i = 0; i != v11; ++i)
            {
              if (!a4 || ((a4[i >> 3] >> (i & 7))) && _CIIndexSetRemoveIndex(*(v14 + 96), v23))
              {
                --*(v14 + 104);
              }

              v23 = (v23 - 1);
            }
          }

          goto LABEL_72;
        }
      }

      else
      {
LABEL_24:
        v26 = 0;
        if (!v16)
        {
          goto LABEL_63;
        }
      }

      if (v11)
      {
        for (j = 0; j != v11; ++j)
        {
          if (!a4 || ((a4[j >> 3] >> (j & 7))) && !CIIndexSetHasIndex(*(v14 + 88), v23))
          {
            v28 = *(v14 + 96);
            *v63 = -1;
            if (_CIIndexSetAddIndex(v28, v23, 0, v63, v24))
            {
              ++*(v14 + 104);
            }
          }

          v23 = (v23 - 1);
        }
      }

LABEL_72:
      CIIndexSetAddRangeFromBitVectorWithHint(*(v14 + 88), a2, v11, a4, a1 + 5, v24);
      if (v26)
      {
        free(a4);
      }

      return 1;
    }

    v41 = __si_assert_copy_extra(0);
    v42 = v41;
    v43 = "";
    if (v41)
    {
      v43 = v41;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 389, "range.location > 0", v43);
LABEL_54:
    free(v42);
    if (__valid_fs(-1))
    {
      v44 = 2989;
    }

    else
    {
      v44 = 3072;
    }

    *v44 = -559038737;
    abort();
  }

  if (v11 != 1)
  {
    v47 = __si_assert_copy_extra(0);
    v42 = v47;
    v48 = "";
    if (v47)
    {
      v48 = v47;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 550, "range.length == 1", v48);
    goto LABEL_54;
  }

  if (a4)
  {
    v49 = __si_assert_copy_extra(0);
    v50 = v49;
    v51 = "";
    if (v49)
    {
      v51 = v49;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 551, "bits == ((void*)0)", v51);
    free(v50);
    if (__valid_fs(-1))
    {
      v52 = 2989;
    }

    else
    {
      v52 = 3072;
    }

    *v52 = -559038737;
    abort();
  }

  handleUpdate(v14, a2, a5, a6, v7);
  return 1;
}

unsigned int *CIIndexSetAddRangeFromBitVectorWithHint(unsigned int *result, unint64_t a2, int a3, uint64_t a4, _DWORD *a5, int8x8_t a6)
{
  v6 = result[6];
  if (a2 <= v6 && a3 != 0)
  {
    v8 = result[5];
    v9 = a2 - v8;
    if (a2 <= v8)
    {
      v10 = result[5];
    }

    else
    {
      v10 = a2;
    }

    v11 = (v8 - a2) >> 3;
    if (v8 <= a2)
    {
      v11 = 0;
      v9 = 0;
    }

    v12 = (v9 + a3);
    v13 = v10 + v12 - 1;
    if (v13 <= v6)
    {
      v14 = 0;
    }

    else
    {
      v14 = v6 - v13;
    }

    v15 = v14 + v12;
    if (a4)
    {
      v16 = (a4 + v11);
      v17 = result[4];
      if (v17 > -10)
      {
        LODWORD(v25) = 0;
        v26 = v10 + v15 - 1;
        while (v25 < v15)
        {
          if ((*(v16 + (v25 >> 3)) >> (v25 & 7)))
          {
            v27 = v26 - v25;
            while (1)
            {
              v28 = v25;
              v25 = (v25 + 1);
              if (v25 >= v15)
              {
                break;
              }

              if (((*(v16 + (v25 >> 3)) >> (v25 & 7)) & 1) == 0)
              {
                LODWORD(v25) = v28 + 1;
                break;
              }
            }

            v29 = result;
            v30 = a5;
            _CIIndexSetAddIndexesInRange(result, v26 - v28, v27, a5, a6);
            a5 = v30;
            result = v29;
            v31 = v29[4];
            if (v31 <= -10)
            {
              v32 = v25 & 0xFFFFFFF8;
              v33 = v29[6] - v29[5];
              v34 = ((v15 - (v25 & 0xFFFFFFF8)) >> 1) - v31 - 10;
              if (v33 + 1 < v34)
              {
                v34 = v33 + 1;
              }

              v29[4] = -10 - v34;
              if (v15 != v32)
              {
                CIIndexSetAddRangeFromBitVector_Bitmap(v29, v10, v15 - v32, (v16 + (v25 >> 3)));
                v23 = v29;
                goto LABEL_21;
              }

              return result;
            }
          }

          else
          {
            LODWORD(v25) = v25 + 1;
          }
        }
      }

      else
      {
        v18 = v6 - v8;
        v19 = (v15 >> 1) - v17 - 10;
        if (v18 + 1 < v19)
        {
          v20 = v18 + 1;
        }

        else
        {
          v20 = v19;
        }

        result[4] = -10 - v20;
        v21 = result;
        CIIndexSetAddRangeFromBitVector_Bitmap(result, v10, v15, v16);
        v23 = v21;
LABEL_21:

        return _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(v23, 0, v22);
      }
    }

    else
    {
      v24 = v10 + v15 - 1;
      if (v10 == v24)
      {

        return _CIIndexSetAddIndex(result, v10 + v15 - 1, 0, a5, a6);
      }

      else
      {

        return _CIIndexSetAddIndexesInRange(result, v10, v24, a5, a6);
      }
    }
  }

  return result;
}

void db_apply_for_field_ids_matching_name_locked(int *a1, char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v4 = db_copy_field_ids_with_buffer_locked(a1, a2, v8, 8uLL, 0);
  if (v4)
  {
    v5 = v4;
    if (*v4)
    {
      v6 = v4 + 1;
      do
      {
        (*(a3 + 16))(a3);
      }

      while (*v6++);
    }

    if (v5 != v8)
    {
      free(v5);
    }
  }
}

void __processLeaves_block_invoke(uint64_t a1, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *v61 = 134217984;
      *&v61[4] = a2;
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "Processing leaf %ld", v61, 0xCu);
    }

    *__error() = v45;
  }

  makeThreadId();
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8 * a2);
  v60 = 0;
  *v61 = v4;
  *&v61[8] = 0u;
  v62 = 0u;
  v63 = 0;
  v6 = *(v5 + 56);
  if (*(v6 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v8 = setThreadIdAndInfo(*(v6 + 64), sIndexExceptionCallbacks, v6, 0x20000000, add_explicit + 1);
    *buf = v8;
    v9 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
    v58 = HIDWORD(v8);
    v57 = __PAIR64__(v10, v11);
    *(v9 + 216) = 0;
    v12 = *(v9 + 312);
    v13 = *(v9 + 224);
    if (v13)
    {
      v13(*(v9 + 288));
    }

    v56 = *buf;
    v55 = v58;
    v54 = v57;
    if (_setjmp(v9))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v53 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v53, 2u);
      }

      *(v9 + 312) = v12;
      if ((~*(v9 + 212) & 0xA0000000) == 0)
      {
        v14 = *(v9 + 288);
        if (v14)
        {
          _CIMakeInvalid(v14);
        }
      }

      v15 = v54;
      if (__THREAD_SLOT_KEY[0])
      {
        v16 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v16)
        {
          goto LABEL_56;
        }
      }

      else
      {
        makeThreadId();
        v16 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v16)
        {
          goto LABEL_56;
        }
      }

      v17 = v16;
      if (v16 < 0x801)
      {
LABEL_14:
        v18 = &threadData[9 * v17];
        v20 = *(v18 - 4);
        v19 = (v18 - 2);
        if (v20 > v15)
        {
          v21 = v17 - 1;
          do
          {
            CIOnThreadCleanUpPop(v21);
          }

          while (*v19 > v15);
        }

        dropThreadId(v56, 1, add_explicit + 1);
        CICleanUpReset(v56, HIDWORD(v54));
        goto LABEL_49;
      }

LABEL_56:
      makeThreadId();
      v17 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_14;
    }

    v22 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v23 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v22 + 1);
    v52 = HIDWORD(v23);
    *v53 = v23;
    v51 = __PAIR64__(v24, v25);
    v26 = threadData[9 * v23 + 1] + 320 * HIDWORD(v23);
    v27 = *(v26 + 312);
    v28 = *(v26 + 224);
    if (v28)
    {
      v28(*(v26 + 288));
    }

    v50 = *v53;
    v49 = v52;
    v48 = v51;
    if (!_setjmp(v26))
    {
      v60 = 1;
      *(v5 + 32) = 0;
      _ContentIndexDocSetIteratorProcessIterHits(v5, *(a1 + 68), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(*(*(a1 + 32) + 8 * a2) + 34), v61);
      if (*(a1 + 56) == 1)
      {
        v37 = *(v5 + 48);
        if (v37 == 8 || v37 == 3)
        {
          v38 = *(*(v5 + 64) + 88);
          if (v38)
          {
            if (v38[4] <= -10)
            {
              _CIIndexSetConvertIfArrayIsMuchMoreEfficient(v38, v38[5], v38[6], 0, 0, v36);
              if (v38[4] <= -10)
              {
                _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(v38, 0, v36);
              }
            }
          }

          v39 = *(*(v5 + 64) + 96);
          if (v39)
          {
            if (v39[4] <= -10)
            {
              _CIIndexSetConvertIfArrayIsMuchMoreEfficient(v39, v39[5], v39[6], 0, 0, v36);
              if (v39[4] <= -10)
              {
                _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(v39, 0, v40);
              }
            }
          }
        }
      }

      v60 = 0;
      v41 = threadData[9 * v50 + 1] + 320 * v49;
      *(v41 + 312) = v27;
      v42 = *(v41 + 232);
      if (v42)
      {
        v42(*(v41 + 288));
      }

      dropThreadId(v50, 0, v22 + 1);
      goto LABEL_46;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v47, 2u);
    }

    *(v26 + 312) = v27;
    v29 = v48;
    if (__THREAD_SLOT_KEY[0])
    {
      v30 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v30)
      {
        goto LABEL_58;
      }
    }

    else
    {
      makeThreadId();
      v30 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v30)
      {
        goto LABEL_58;
      }
    }

    v31 = v30;
    if (v30 < 0x801)
    {
LABEL_28:
      v32 = &threadData[9 * v31];
      v34 = *(v32 - 4);
      v33 = (v32 - 2);
      if (v34 > v29)
      {
        v35 = v31 - 1;
        do
        {
          CIOnThreadCleanUpPop(v35);
        }

        while (*v33 > v29);
      }

      dropThreadId(v50, 1, v22 + 1);
      CICleanUpReset(v50, HIDWORD(v48));
LABEL_46:
      v43 = threadData[9 * v56 + 1] + 320 * v55;
      *(v43 + 312) = v12;
      v44 = *(v43 + 232);
      if (v44)
      {
        v44(*(v43 + 288));
      }

      dropThreadId(v56, 0, add_explicit + 1);
      goto LABEL_49;
    }

LABEL_58:
    makeThreadId();
    v31 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_49:
  CIIndexSetDisposePerThreadCache(v61);
  if (v60 == 1)
  {
    **(a1 + 48) = 1;
  }
}

uint64_t PayloadIterator_ConsumeUpdates(void *a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = a1[19];
  v3 = a1[17];
  v4 = v2 - v3;
  if (v2 > v3)
  {
    v48 = __si_assert_copy_extra(0);
    v49 = v48;
    v50 = "";
    if (v48)
    {
      v50 = v48;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 262, "changes->hole <= changes->count", v50);
LABEL_50:
    free(v49);
    if (__valid_fs(-1))
    {
      v51 = 2989;
    }

    else
    {
      v51 = 3072;
    }

    *v51 = -559038737;
    abort();
  }

  v5 = a2;
  v7 = a1[14] + a2;
  v8 = (a1 + 16);
  if (v2 == v3)
  {
    v9 = a2;
    goto LABEL_22;
  }

  v10 = a1[18];
  v11 = a1[16];
  if (v2 < 1)
  {
    v21 = a1[18];
    v9 = a2;
LABEL_21:
    v22 = v21 - (v10 + v4);
    a1[17] = v22;
    memmove(v11, &v11[2 * v10 + 2 * v4], 16 * v22);
    v2 = a1[17];
    a1[19] = v2;
LABEL_22:
    v23 = *v8;
    if (v2 < 1 || (v24 = *v23, v7 >= *v23))
    {
      v30 = 0;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = 1;
      v28 = 67109632;
      v29 = *v8;
      do
      {
        v30 = v27;
        if ((v29[1] & 0x80000000) == 0)
        {
          v31 = a1[11];
          v32 = (v24 - *(a1 + 28));
          *buf = -1;
          _CIIndexSetAddIndex(v31, v32, 0, buf, v28);
          v23 = a1[16];
          v33 = LODWORD(v23[v25]) - *(a1 + 28);
          v9 = v33 <= v5 ? v5 : v33;
          if (dword_1EBF46AF4 >= 5)
          {
            v57 = *__error();
            v56 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a1[16] + v25 * 8);
              v35 = v34 - *(a1 + 28);
              *buf = 67109632;
              v60 = v35;
              v61 = 2048;
              v62 = v34;
              v63 = 2048;
              v64 = v8;
              _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "Squashed update %u (%llu) from %p\n", buf, 0x1Cu);
            }

            *__error() = v57;
            v23 = *v8;
          }
        }

        v2 = a1[17];
        if (v30 >= v2)
        {
          break;
        }

        ++v26;
        v29 = &v23[2 * v26];
        v24 = v23[v25 + 2];
        v27 = v30 + 1;
        v25 += 2;
      }

      while (v7 < v24);
    }

    memmove(v23, &v23[2 * v30], 16 * (v2 - v30));
    v36 = a1[17];
    a1[17] = v36 - v30;
    v37 = a1[19];
    a1[19] = v37 - v30;
    v5 = v9;
    if (v37 > v36)
    {
      v38 = __si_assert_copy_extra(0);
      v39 = v38;
      v40 = "";
      if (v38)
      {
        v40 = v38;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 317, "changes->hole <= changes->count", v40);
      free(v39);
      if (__valid_fs(-1))
      {
        v41 = 2989;
      }

      else
      {
        v41 = 3072;
      }

      *v41 = -559038737;
      abort();
    }

    return v5;
  }

  v12 = *v11;
  if (v7 < *v11)
  {
    v58 = a1[18];
    v13 = 0;
    v14 = 0;
    v15 = 67109632;
    v9 = a2;
    while (1)
    {
      if ((v11[1] & 0x80000000) == 0)
      {
        v16 = a1[11];
        v17 = (v12 - *(a1 + 28));
        *buf = -1;
        _CIIndexSetAddIndex(v16, v17, 0, buf, v15);
        v18 = *(a1[16] + v13 * 8) - *(a1 + 28);
        v9 = v18 <= v5 ? v5 : v18;
        if (dword_1EBF46AF4 >= 5)
        {
          v55 = *__error();
          log = _SILogForLogForCategory(10);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1[16] + v13 * 8);
            v20 = v19 - *(a1 + 28);
            *buf = 67109632;
            v60 = v20;
            v61 = 2048;
            v62 = v19;
            v63 = 2048;
            v64 = v8;
            _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Squashed update %u (%llu) from %p\n", buf, 0x1Cu);
          }

          *__error() = v55;
        }
      }

      ++v14;
      v2 = a1[19];
      if (v14 >= v2)
      {
        break;
      }

      v11 = &(*v8)[2 * v14];
      v12 = (*v8)[v13 + 2];
      v13 += 2;
      if (v7 >= v12)
      {
        v5 = v9;
        goto LABEL_42;
      }
    }

    v21 = a1[18];
    v11 = a1[16];
    v10 = v58;
    goto LABEL_21;
  }

  v14 = 0;
LABEL_42:
  v42 = v2 - v14;
  if (v2 - v14 >= 1)
  {
    v43 = 0;
    v44 = 0;
    v45 = 16 * v14;
    do
    {
      *(a1[16] + v43) = *(a1[16] + v45);
      ++v44;
      v2 = a1[19];
      v42 = v2 - v14;
      v45 += 16;
      v43 += 16;
    }

    while (v2 - v14 > v44);
  }

  a1[19] = v42;
  v46 = a1[17];
  a1[17] = v46 - v14;
  if (v2 > v46)
  {
    v52 = __si_assert_copy_extra(0);
    v49 = v52;
    v53 = "";
    if (v52)
    {
      v53 = v52;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 272, "changes->hole <= changes->count", v53);
    goto LABEL_50;
  }

  return v5;
}

uint64_t ContentIndexDocSetSquashUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  if ((v5 - 4) < 4)
  {
    if (*(a1 + 96))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (ContentIndexDocSetSquashUpdate(*(*(a1 + 72) + 8 * v6), a2, a3) > v7)
        {
          v7 = ContentIndexDocSetSquashUpdate(*(*(a1 + 72) + 8 * v6), a2, a3);
        }

        ++v6;
      }

      while (v6 < *(a1 + 96));
      return v7;
    }

    return 0;
  }

  if (v5 != 3)
  {
    return 0;
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    return 0;
  }

  return PayloadIterator_ConsumeUpdates(v8, a2);
}

void CIIndexSetDisposePerThreadCache(void *result)
{
  v2 = result[1];
  if (v2)
  {
    cicachelistenqueue(*result + 8, v2, 20);
    result[1] = 0;
  }

  v3 = result[2];
  if (v3)
  {
    cicachelistenqueue(*result + 32, v3, 0);
    result[2] = 0;
  }

  v4 = result[3];
  if (v4)
  {
    cicachelistenqueue(*result + 56, v4, 0);
    result[3] = 0;
  }

  v5 = result[4];
  if (v5)
  {
    cicachelistenqueue(*result + 80, v5, 0);
    result[4] = 0;
  }

  v6 = result[5];
  if (v6)
  {
    cicachelistenqueue(*result + 104, v6, 0);
    result[5] = 0;
  }
}

void ContentIndexDocSetIteratorDispose(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(*(v2 + 8));
    v3 = *(v2 + 32);
    if (*(v2 + 40) == 1)
    {
      munmap(v3, *(v2 + 88));
    }

    else
    {
      free(v3);
    }

    free(*(v2 + 120));
    free(v2);
  }

  v4 = a1[9];
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = a1[i + 10];
      if (v6)
      {
        ContentIndexDocSetDispose(v6);
        v4 = a1[9];
      }
    }
  }

  v7 = *a1;
  if (*a1 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    v8 = v7[2];
    if (v8)
    {
      v9 = *(v8 + 4496);
      if (v9 != -1)
      {
        _fd_release_fd(*(v8 + 4488), v9, 0, *(v8 + 4504));
        *(v8 + 4496) = -1;
      }

      fd_release(*(v8 + 4488));
      free(v8);
    }

    v10 = v7[1];
    if (v10)
    {
      v11 = *(v10 + 4496);
      if (v11 != -1)
      {
        _fd_release_fd(*(v10 + 4488), v11, 0, *(v10 + 4504));
        *(v10 + 4496) = -1;
      }

      fd_release(*(v10 + 4488));
      free(v10);
    }

    v12 = v7[3];
    if (v12)
    {
      posreadunlock(v12);
    }

    free(v7);
  }

  free(a1);
}

uint64_t _moveWindowsInner(void *a1, unint64_t a2, uint64_t a3, char a4, __n128 a5, __n128 a6)
{
  v104 = *MEMORY[0x1E69E9840];
  v10 = a1 + 7;
  v11 = a3 + a2;
  v12 = MEMORY[0x1E69E9AC8];
  v13 = MEMORY[0x1E69E9AB8];
  v14 = 0x1EBF46000uLL;
  a5.n128_u64[0] = 134217984;
  a6.n128_u64[0] = 134219520;
LABEL_2:
  v15 = a2 >> *(a1 + 48);
  if (a4)
  {
    goto LABEL_10;
  }

  if (a2 && a1[2] <= a2)
  {
    v81 = __si_assert_copy_extra(*a1);
    v82 = v81;
    v83 = "";
    if (v81)
    {
      v83 = v81;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%llx, freeRegion: 0x%llx", "storage_window.c", 477, "inOffset==0 || inOffset < windows->_freeRegion", v83, a2, a1[2]);
    free(v82);
    if (__valid_fsp(*a1))
    {
      v84 = 2989;
    }

    else
    {
      v84 = 3072;
    }

    *v84 = -559038737;
    abort();
  }

  if (v15 >= *(a1 + 8) || (v16 = v10[v15]) == 0 || (v17 = v16[1], (v17 + 1) < 2) || (v18 = v16[2], v18 > a2) || v16[3] < v11)
  {
LABEL_10:
    v93 = a6;
    v94 = a5;
    v96 = (*v12 + a1[1]) & ~*v13;
    v95 = v15 + 1;
    lock = (&windowLock + 4 * v15);
    for (i = CICleanUpThreadLoc(); ; CIOnThreadCleanUpPop(i))
    {
      if (v15 >= *(a1 + 8))
      {
        v54 = *__error();
        v55 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v94.n128_u32[0];
          *&buf[4] = v15;
          _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "3: %lld", buf, 0xCu);
        }

        *__error() = v54;
        v56 = *(a1 + 8);
        v57 = i;
        if (v15 >= v56)
        {
          v58 = v56;
          do
          {
            v91 = v58;
            v59 = (&windowLock + 4 * v58);
            os_unfair_lock_lock(v59);
            CIOnThreadCleanUpPush(v57, MEMORY[0x1E69E9B80], v59);
            if (v56 == *(a1 + 8))
            {
              if (!v10[v91])
              {
                v60 = *(a1 + 36);
                v61 = a1[5];
                v62 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
                atomic_store(1u, v62);
                *(v62 + 1) = 0;
                *(v62 + 2) = 0;
                *(v62 + 40) = v60;
                *(v62 + 3) = 0;
                *(v62 + 4) = v61;
                v63 = *(a1 + 48);
                v64 = (*MEMORY[0x1E69E9AC8] + ((1 << v63) >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
                v65 = v15 << v63;
                v66 = v95 << v63;
                if (*MEMORY[0x1E69E9AC8] > v64)
                {
                  v64 = *MEMORY[0x1E69E9AC8];
                }

                *(v62 + 2) = v65;
                *(v62 + 3) = v64 + v66;
                v10[v91] = v62;
                v56 = *(a1 + 8);
              }

              *(a1 + 8) = v56 + 1;
            }

            v57 = i;
            CIOnThreadCleanUpPop(i);
            v56 = *(a1 + 8);
            v58 = v56;
          }

          while (v15 >= v56);
        }

        v34 = v10[v15];
        if (!v34[2])
        {
          v34[2] = v15 << *(a1 + 48);
        }

        v47 = i;
      }

      else
      {
        if (*(v14 + 2804) >= 5)
        {
          v67 = *__error();
          v68 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v94.n128_u32[0];
            *&buf[4] = v15;
            _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "2: %lld", buf, 0xCu);
          }

          *__error() = v67;
        }

        v19 = v10[v15];
        if (v19)
        {
          v17 = v19[1];
          if ((v17 + 1) >= 2)
          {
            v18 = v19[2];
            if (v18 <= a2 && v19[3] >= v11 && !((a1[1] < v11) | a4 & 1))
            {
              return v17 + a2 - v18;
            }
          }

          v20 = v19[3] - v19[2];
        }

        else
        {
          v20 = 0;
          v17 = 0;
        }

        os_unfair_lock_lock(lock);
        v21 = CIOnThreadCleanUpPush(i, MEMORY[0x1E69E9B80], lock);
        v29 = v10[v15];
        if (v29)
        {
          v30 = v29[1];
          if ((v30 + 1) >= 2)
          {
            v45 = v29[2];
            v44 = v29[3];
            if (v20 != v44 - v45 || v20 >> *(a1 + 48) || v17 != v30 || v45 <= a2 && v44 >= v11 && a1[1] >= v11)
            {
              CIOnThreadCleanUpPop(i);
              a4 = 0;
              v12 = MEMORY[0x1E69E9AC8];
              v13 = MEMORY[0x1E69E9AB8];
              a6 = v93;
              a5 = v94;
              goto LABEL_2;
            }

            if (*(a1 + 37) == 1)
            {
              si_analytics_log(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v45, v44, a2, a3);
            }
          }
        }

        v31 = *(a1 + 36);
        v32 = a1[5];
        v33 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
        v34 = v33;
        atomic_store(1u, v33);
        v33[1] = 0;
        v33[2] = 0;
        *(v33 + 40) = v31;
        v33[3] = 0;
        v33[4] = v32;
        if (v15)
        {
          v35 = v15 << *(a1 + 48);
          v33[2] = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v11)
        {
          v36 = *(a1 + 48);
          v37 = 1 << v36;
          v38 = v95 << v36;
          v39 = (*MEMORY[0x1E69E9AC8] + (v37 >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
          if (*MEMORY[0x1E69E9AC8] > v39)
          {
            v39 = *MEMORY[0x1E69E9AC8];
          }

          v40 = v39 + v38;
          v33[3] = v40;
          if (v40 > a1[1])
          {
            if (*(v14 + 2804) >= 5)
            {
              v73 = *__error();
              v74 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                v75 = v34[3];
                *buf = v94.n128_u32[0];
                *&buf[4] = v75;
                _os_log_impl(&dword_1C278D000, v74, OS_LOG_TYPE_DEFAULT, "2.1: %lld", buf, 0xCu);
              }

              *__error() = v73;
            }

            if (*(a1 + 37))
            {
              v41 = *(a1 + 48);
              v42 = 1 << v41;
              v43 = v95 << v41;
            }

            else
            {
              v42 = a1[1];
              v43 = v42;
            }

            v46 = (*MEMORY[0x1E69E9AC8] + (v42 >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
            if (*MEMORY[0x1E69E9AC8] > v46)
            {
              v46 = *MEMORY[0x1E69E9AC8];
            }

            v34[3] = v46 + v43;
            v35 = v34[2];
          }
        }

        if (!v35)
        {
          v34[2] = v15 << *(a1 + 48);
        }

        *buf = v10[v15];
        v10[v15] = v34;
        storageWindowRelease(buf);
        v47 = i;
        CIOnThreadCleanUpPop(i);
        a4 = 0;
      }

      os_unfair_lock_lock(lock);
      CIOnThreadCleanUpPush(v47, MEMORY[0x1E69E9B80], lock);
      v48 = v34[2];
      if (!v48)
      {
        v48 = v15 << *(a1 + 48);
        v34[2] = v48;
      }

      v49 = v34[3];
      v14 = 0x1EBF46000uLL;
      if (!v49)
      {
        if ((*(a1 + 37) & 1) != 0 || v15)
        {
          v49 = v95 << *(a1 + 48);
        }

        else
        {
          v49 = a1[1];
        }

        v34[3] = v49;
      }

      if (*(a1 + 36))
      {
        v50 = 1;
      }

      else
      {
        v50 = 3;
      }

      v34[1] = fd_mmap(*a1, v49 - v48, v50, 1025, v48);
      v51 = v34 + 1;
      v52 = __error();
      v53 = *v52;
      if (dword_1EBF46AF4 >= 5)
      {
        v92 = *v52;
        v90 = *__error();
        v69 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 = v34[1];
          v71 = v34[2];
          v72 = v34[3] - v71;
          *buf = v93.n128_u32[0];
          *&buf[4] = a1;
          v100 = 2048;
          *v101 = v34;
          *&v101[8] = 2048;
          *&v101[10] = v70;
          *&v101[18] = 2048;
          *&v101[20] = v71;
          *&v101[28] = 2048;
          *&v101[30] = v72;
          *&v101[38] = 2048;
          *v102 = a2;
          *&v102[8] = 2048;
          v103 = v11;
          _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "mmap (%p/%p) %p 0x%llx-0x%llx (0x%llx-0x%llx)", buf, 0x48u);
        }

        *__error() = v90;
        v14 = 0x1EBF46000;
        v53 = v92;
      }

      if (*v51 != -1)
      {
        break;
      }

      *v51 = 0;
      v34[2] = 0;
      v34[3] = 0;
      if (v53 != 12 || v96 < 0x200000)
      {
        if (v53)
        {
          v76 = v53;
          v77 = *__error();
          v78 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            v85 = a1[2];
            *buf = 136316674;
            *&buf[4] = "_moveWindowsInner";
            v100 = 1024;
            *v101 = 719;
            *&v101[4] = 2048;
            *&v101[6] = a1;
            *&v101[14] = 2048;
            *&v101[16] = a2;
            *&v101[24] = 2048;
            *&v101[26] = a3;
            *&v101[34] = 1024;
            *&v101[36] = v76;
            *v102 = 2048;
            *&v102[2] = v85;
            _os_log_error_impl(&dword_1C278D000, v78, OS_LOG_TYPE_ERROR, "%s:%d: mmap(%p, offset: %llx, size: %ld) error:%d, fSize:%lld", buf, 0x40u);
          }

          *__error() = v77;
          v79 = mmap(0, 4uLL, 0, 4098, -50331648, 0);
          *v51 = v79;
          if (v79 == -1)
          {
            v86 = __si_assert_copy_extra(*a1);
            v87 = v86;
            v88 = "";
            if (v86)
            {
              v88 = v86;
            }

            __message_assert("%s:%u: failed assertion '%s' %s mmap(%p, offset: %llx, size: %ld) error:%d, fSize:%lld", "storage_window.c", 730, "false", v88, a1, a2, a3, v76, a1[2]);
            free(v87);
            if (__valid_fsp(*a1))
            {
              v89 = 2989;
            }

            else
            {
              v89 = 3072;
            }

            *v89 = -559038737;
            abort();
          }

          *(v34 + 1) = xmmword_1C2BFA300;
          *v79 = 1;
        }

        break;
      }

      v96 >>= 1;
    }

    CIOnThreadCleanUpPop(i);
    v17 = v34[1];
    v18 = v34[2];
  }

  return v17 + a2 - v18;
}

void __CIIndexSetFinalize(uint64_t a1)
{
  if (*(a1 + 16) <= 0xFFFFFFF6)
  {
    v2 = *(a1 + 40);
    v3 = 4 * *(a1 + 32);
    if (v3 >= *MEMORY[0x1E69E9AC8] >> 1)
    {
      munmap(v2, (*MEMORY[0x1E69E9AC8] + v3 - 1) & -*MEMORY[0x1E69E9AC8]);
    }

    else
    {
      free(v2);
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
}

uint64_t db_get_localized_string(int *a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v46 = *__error();
    v47 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = *a1;
      *buf = 136315650;
      v89 = "db_get_localized_string";
      v90 = 1024;
      v91 = 407;
      v92 = 1024;
      v93 = v48;
      _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v46;
    v49 = __si_assert_copy_extra_332();
    v50 = v49;
    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 407, v51);
    free(v50);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v84 = 0;
  v85 = &v84;
  v87 = 2;
  v86 = 0x2000000000;
  if ((*(a2 + 2) & 0x80) == 0 || *a2 != 11)
  {
    v43 = 22;
    goto LABEL_54;
  }

  v11 = a3;
  if (!a3 || (v12 = *a3) == 0)
  {
    v11 = &localized_language_defaults;
    v12 = localized_language_defaults;
  }

  bzero(buf, 0x400uLL);
  v80 = 0;
  v81 = &v80;
  v82 = 0x2000000000;
  v83 = buf;
  v76 = 0;
  v77 = &v76;
  v79 = 0;
  v78 = 0x2000000000;
  v74[0] = 0;
  v74[1] = v74;
  v75 = 128;
  v74[2] = 0x2000000000;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2000000000;
  v73 = 0;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 0x40000000;
  v69[2] = __db2_get_localized_string_block_invoke;
  v69[3] = &unk_1E8198C08;
  v69[10] = a4;
  v69[11] = a5;
  v69[4] = &v70;
  v69[5] = &v84;
  v69[6] = &v76;
  v69[7] = v74;
  v69[8] = &v80;
  v69[9] = v12;
  db_iterate_localized_field(a1, a2, a6, v69);
  if ((v71[3] & 1) == 0)
  {
    v13 = *(v77 + 6);
    if (v13)
    {
      v14 = v81[3];
      if (sBestLanguageOnceDictionaryToken != -1)
      {
        dispatch_once(&sBestLanguageOnceDictionaryToken, &__block_literal_global_11021);
      }

      key = 0;
      v61 = v11;
      WORD1(key) = v13;
      v62 = v14;
      v15 = *v11;
      if (*v11)
      {
        v15 = 0;
          ;
        }
      }

      LOWORD(key) = v15;
      pthread_rwlock_rdlock(&sBestLanguageDictionaryLock);
      Value = CFDictionaryGetValue(sBestLanguageDictionary, &key);
      pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
      if (Value)
      {
LABEL_49:
        key = MEMORY[0x1E69E9820];
        v61 = 0x40000000;
        v62 = __db2_get_localized_string_block_invoke_2;
        v63 = &unk_1E8198C30;
        v66 = Value;
        v67 = a4;
        v68 = a5;
        v64 = &v70;
        v65 = &v84;
        db_iterate_localized_field(a1, a2, a6, &key);
        goto LABEL_50;
      }

      v18 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], WORD1(key), MEMORY[0x1E695E9C0]);
      if (WORD1(key))
      {
        v20 = 0;
        do
        {
          v21 = CFStringCreateWithCString(v18, *(v62 + v20), 0x8000100u);
          if (v21)
          {
            v22 = v21;
            CFArrayAppendValue(Mutable, v21);
            CFRelease(v22);
          }

          ++v20;
        }

        while (v20 < WORD1(key));
      }

      v23 = CFArrayCreateMutable(v18, key, MEMORY[0x1E695E9C0]);
      if (key)
      {
        v24 = 0;
        do
        {
          v25 = CFStringCreateWithCString(v18, *(v61 + 8 * v24), 0x8000100u);
          if (v25)
          {
            v26 = v25;
            CFArrayAppendValue(v23, v25);
            CFRelease(v26);
          }

          ++v24;
        }

        while (v24 < key);
      }

      v27 = CFBundleCopyLocalizationsForPreferences(Mutable, v23);
      if (!v27)
      {
        Value = 0;
        goto LABEL_48;
      }

      v28 = v27;
      v59 = v23;
      v29 = key;
      v30 = WORD1(key);
      v31 = v61;
      v57 = v62;
      if (CFArrayGetCount(v27))
      {
        v54 = v30;
        v55 = v29;
        v56 = v31;
        ValueAtIndex = CFArrayGetValueAtIndex(v28, 0);
        Length = CFStringGetLength(ValueAtIndex);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        Value = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xCB420A60uLL);
        if (CFStringGetCString(ValueAtIndex, Value, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          v52 = v28;
          v53 = Mutable;
          v35 = malloc_type_malloc(0x18uLL, 0x1080040C4643742uLL);
          v35[1] = v54;
          *(v35 + 2) = malloc_type_malloc(8 * v54, 0x10040436913F5uLL);
          if (v35[1])
          {
            v36 = 0;
            v37 = 8 * v35[1];
            do
            {
              *(*(v35 + 2) + v36) = strdup(*(v57 + v36));
              v36 += 8;
            }

            while (v37 != v36);
          }

          *v35 = v55;
          *(v35 + 1) = malloc_type_malloc(8 * v55, 0x10040436913F5uLL);
          if (*v35)
          {
            v38 = 0;
            v39 = 8 * *v35;
            do
            {
              *(*(v35 + 1) + v38) = strdup(*(v56 + v38));
              v38 += 8;
            }

            while (v39 != v38);
          }

          pthread_rwlock_wrlock(&sBestLanguageDictionaryLock);
          v40 = CFDictionaryGetValue(sBestLanguageDictionary, v35);
          v28 = v52;
          if (v40)
          {
            v58 = v40;
            free(Value);
            pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
            v23 = v59;
            if (v35[1])
            {
              v41 = 0;
              do
              {
                free(*(*(v35 + 2) + 8 * v41++));
              }

              while (v41 < v35[1]);
            }

            free(*(v35 + 2));
            if (*v35)
            {
              v42 = 0;
              do
              {
                free(*(*(v35 + 1) + 8 * v42++));
              }

              while (v42 < *v35);
            }

            free(*(v35 + 1));
            free(v35);
            Value = v58;
            Mutable = v53;
            goto LABEL_47;
          }

          CFDictionarySetValue(sBestLanguageDictionary, v35, Value);
          pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
          Mutable = v53;
LABEL_46:
          v23 = v59;
LABEL_47:
          CFRelease(v28);
LABEL_48:
          CFRelease(v23);
          CFRelease(Mutable);
          if (!Value)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        free(Value);
      }

      Value = 0;
      goto LABEL_46;
    }
  }

LABEL_50:
  v44 = v81[3];
  if (v44 && v44 != buf)
  {
    free(v44);
  }

  v43 = *(v85 + 6);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(v74, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
LABEL_54:
  _Block_object_dispose(&v84, 8);
  return v43;
}

void *db_copy_field_ids_with_buffer_locked(int *a1, char *a2, void *a3, unint64_t a4, _DWORD *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *a1;
      *buf = 136315650;
      v19 = "db_copy_field_ids_with_buffer_locked";
      v20 = 1024;
      v21 = 286;
      v22 = 1024;
      v23 = v14;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v12;
    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 286, v17);
    free(v16);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v7 = internal_copy_field_ids(a1, a2, a3, a4, 1);
  if (a5)
  {
    v8 = *(a1 + 110);
    if ((a1[201] & 0x14) != 0)
    {
      LODWORD(v9) = 0;
      if (v8)
      {
        v10 = *(v8 + 216);
        if (v10 > 842150449)
        {
          if (v10 != 1684300900)
          {
            if (v10 == 842150450)
            {
              LODWORD(v9) = *(v8 + 220) - 1;
            }

            goto LABEL_15;
          }
        }

        else
        {
          if (v10 == -572662307)
          {
            LODWORD(v9) = data_map_double_count(*(a1 + 110));
            goto LABEL_15;
          }

          if (v10 != -270471200)
          {
            goto LABEL_15;
          }
        }

        v9 = *(v8 + 224) - 1;
      }
    }

    else
    {
      LODWORD(v9) = *(v8 + 56);
    }

LABEL_15:
    *a5 = v9;
  }

  return v7;
}

void _CIQueryNodeForString(uint64_t a1, const __CFString *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v12 = a3;
  v202 = *MEMORY[0x1E69E9840];
  icu_locale_create();
  if ((a4 & 0x820) == 0x20)
  {
    v15 = a4 & 0x7FFDB00F;
  }

  else
  {
    v15 = a4 & 0x7FFDB00F | 0x100;
  }

  v184 = a4;
  if ((a4 & 4) != 0)
  {
    v16 = a4 & 0x7FFDB00F;
  }

  else
  {
    v16 = v15;
  }

  v185 = v16;
  if (a1 && *(a1 + 45))
  {
    v17 = (a7 & 0x84) == 4 && v12 > 1;
    if (v12 == 1 && (a4 & 4) == 0)
    {
      v18 = &__s1[2];
      if (CFStringGetLength(a2) && CFStringGetCharacterAtIndex(a2, 0) == 42)
      {
        bzero(&__s1[3], 0x411uLL);
        *__s1 = 513;
        LOBYTE(v19) = 1;
        v20 = 3;
        v21 = a8;
        goto LABEL_280;
      }

      v187 = 0;
      if ((a4 & 0x800) == 0)
      {
        goto LABEL_51;
      }

LABEL_58:
      v33 = malloc_type_zone_malloc(queryZone, 8uLL, 0xA4971684uLL);
      if (!v33)
      {
        _log_fault_for_malloc_failure();
      }

      v37 = malloc_type_zone_malloc(queryZone, 0x400uLL, 0xA4971684uLL);
      if (!v37)
      {
        _log_fault_for_malloc_failure();
      }

      *v33 = v37;
      CFStringGetFileSystemRepresentation(a2, v37, 1024);
      v178 = 0;
      v35 = 0;
      v38 = 1;
      v187 = 1;
      goto LABEL_74;
    }
  }

  else
  {
    v17 = (~a7 & 0xC) == 0;
  }

  if (v12 >= 2 && !a4 && CFEqual(a2, @"*"))
  {
    if (v17)
    {
      v22 = 296;
    }

    else
    {
      v22 = 360;
    }

    if (v22 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_14063;
    }

    v23 = &__s1[1];
    v24 = 1;
    v25 = malloc_type_zone_calloc(queryZone, 1uLL, v22, 0x5BAF1CEAuLL);
    if (!v25)
    {
      _log_fault_for_malloc_failure();
    }

    v25[4] = v25 + 5;
    *v25 = 1;
    *(v25 + 1) = v15;
    *(v25 + 2) = 0;
    v200 = 0u;
    memset(v201, 0, sizeof(v201));
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    memset(&__s1[1], 0, 32);
    __s1[0] = 1;
    if ((a7 & 4) == 0)
    {
      v24 = 2;
      __s1[1] = 2;
      v23 = &__s1[2];
    }

    v26 = v12 >> 28;
    v27 = v12 >> 7;
    v28 = v12 >> 14;
    v29 = v12 >> 21;
    v186 = v12 >> 21;
    if (v12 >> 28)
    {
      __s1[v24] = v12 | 0x80;
      v23[1] = v27 | 0x80;
      v23[2] = v28 | 0x80;
      v23[3] = v29 | 0x80;
      v30 = v24 + 5;
      v23[4] = v26;
    }

    else if (v12 >= 0x200000)
    {
      __s1[v24] = v12 | 0x80;
      v23[1] = v27 | 0x80;
      v23[2] = v28 | 0x80;
      v30 = v24 | 4;
      v23[3] = v29;
    }

    else if (v12 >= 0x4000)
    {
      __s1[v24] = v12 | 0x80;
      v23[1] = v27 | 0x80;
      v30 = v24 + 3;
      v23[2] = v28;
    }

    else if (v12 >= 0x80)
    {
      __s1[v24] = v12 | 0x80;
      v30 = v24 + 2;
      v23[1] = v27;
    }

    else
    {
      v30 = v24 + 1;
      __s1[v24] = v12;
    }

    *&__s1[v30] = 42;
    v138 = v25[4];
    v139 = strdup(__s1);
    if (v15)
    {
      v140 = 8;
    }

    else
    {
      v140 = 12;
    }

    *v138 = v139;
    *(v138 + 8) = 0;
    *(v138 + 16) = v15;
    *(v138 + 20) = -1;
    *(v138 + 24) = v140;
    *(v138 + 32) = 0u;
    *(v138 + 48) = 0u;
    if (v17)
    {
      v141 = 1;
    }

    else
    {
      *__s1 = 513;
      if (v26)
      {
        __s1[2] = v12 | 0x80;
        v143 = &__s1[8];
        __s1[3] = v27 | 0x80;
        __s1[4] = v28 | 0x80;
        __s1[5] = v186 | 0x80;
        v142 = &__s1[7];
        __s1[6] = v12 >> 28;
      }

      else if (v12 >= 0x200000)
      {
        __s1[2] = v12 | 0x80;
        __s1[3] = v27 | 0x80;
        __s1[4] = v28 | 0x80;
        __s1[5] = v12 >> 21;
        v142 = &__s1[6];
        v143 = &__s1[7];
      }

      else if (v12 >= 0x4000)
      {
        __s1[2] = v12 | 0x80;
        __s1[3] = v27 | 0x80;
        __s1[4] = v12 >> 14;
        v142 = &__s1[5];
        v143 = &__s1[6];
      }

      else if (v12 >= 0x80)
      {
        __s1[2] = v12 | 0x80;
        __s1[3] = v12 >> 7;
        v142 = &__s1[4];
        v143 = &__s1[5];
      }

      else
      {
        __s1[2] = v12;
        v142 = &__s1[3];
        v143 = &__s1[4];
      }

      *v142 = 42;
      *v143 = 0;
      v167 = v25[4];
      *(v167 + 64) = strdup(__s1);
      *(v167 + 72) = 0;
      *(v167 + 80) = v15;
      *(v167 + 84) = -1;
      *(v167 + 88) = v140;
      v141 = 2;
      *(v167 + 96) = 0u;
      *(v167 + 112) = 0u;
    }

    __s1[0] = 4;
    if (v26)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v28 | 0x80;
      __s1[4] = v186 | 0x80;
      v168 = &__s1[6];
      v169 = &__s1[7];
      __s1[5] = v12 >> 28;
    }

    else if (v12 >= 0x200000)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v28 | 0x80;
      __s1[4] = v12 >> 21;
      v168 = &__s1[5];
      v169 = &__s1[6];
    }

    else if (v12 >= 0x4000)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v12 >> 14;
      v168 = &__s1[4];
      v169 = &__s1[5];
    }

    else if (v12 >= 0x80)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v12 >> 7;
      v168 = &__s1[3];
      v169 = &__s1[4];
    }

    else
    {
      __s1[1] = v12;
      v168 = &__s1[2];
      v169 = &__s1[3];
    }

    *v168 = 42;
    *v169 = 0;
    v170 = v25[4] + (v141 << 6);
    *v170 = strdup(__s1);
    *(v170 + 8) = 0;
    *(v170 + 16) = v15;
    *(v170 + 20) = -1;
    *(v170 + 24) = v140;
    *(v170 + 32) = 0u;
    *(v170 + 48) = 0u;
    __s1[0] = 2;
    if (v26)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v28 | 0x80;
      __s1[4] = v186 | 0x80;
      v171 = &__s1[6];
      v172 = &__s1[7];
      __s1[5] = v12 >> 28;
    }

    else if (v12 >= 0x200000)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v28 | 0x80;
      __s1[4] = v12 >> 21;
      v171 = &__s1[5];
      v172 = &__s1[6];
    }

    else if (v12 >= 0x4000)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v12 >> 14;
      v171 = &__s1[4];
      v172 = &__s1[5];
    }

    else if (v12 >= 0x80)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v12 >> 7;
      v171 = &__s1[3];
      v172 = &__s1[4];
    }

    else
    {
      __s1[1] = v12;
      v171 = &__s1[2];
      v172 = &__s1[3];
    }

    *v171 = 42;
    *v172 = 0;
    v173 = v25[4] + (v141 << 6);
    *(v173 + 64) = strdup(__s1);
    *(v173 + 72) = 0;
    *(v173 + 80) = v15;
    *(v173 + 84) = -1;
    *(v173 + 88) = v140;
    *(v173 + 96) = 0u;
    *(v173 + 112) = 0u;
    __s1[0] = 3;
    if (v26)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v28 | 0x80;
      __s1[4] = v186 | 0x80;
      v175 = &__s1[6];
      __s1[5] = v12 >> 28;
      v174 = &__s1[7];
    }

    else if (v12 >= 0x200000)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v28 | 0x80;
      __s1[4] = v12 >> 21;
      v175 = &__s1[5];
      v174 = &__s1[6];
    }

    else if (v12 >= 0x4000)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v27 | 0x80;
      __s1[3] = v12 >> 14;
      v175 = &__s1[4];
      v174 = &__s1[5];
    }

    else if (v12 >= 0x80)
    {
      __s1[1] = v12 | 0x80;
      __s1[2] = v12 >> 7;
      v175 = &__s1[3];
      v174 = &__s1[4];
    }

    else
    {
      __s1[1] = v12;
      v174 = &__s1[3];
      v175 = &__s1[2];
    }

    *v175 = 42;
    *v174 = 0;
    v176 = v25[4] + (v141 << 6);
    *(v176 + 128) = strdup(__s1);
    *(v176 + 136) = 0;
    *(v176 + 144) = v15;
    *(v176 + 148) = -1;
    *(v176 + 152) = v140;
    *(v176 + 160) = 0u;
    *(v176 + 176) = 0u;
    *(v25 + 6) = v141 + 3;
    goto LABEL_342;
  }

  v31 = v12 < 2 || v17;
  if (v31 & 1) == 0 && (a4 & 0x824) == 0 && (*(a1 + 15202))
  {
    v18 = &__s1[2];
    bzero(&__s1[2], 0x412uLL);
    *__s1 = 513;
    v19 = v12 >> 28;
    v21 = a8;
    if (v12 >> 28)
    {
      __s1[2] = v12 | 0x80;
      __s1[3] = (v12 >> 7) | 0x80;
      __s1[4] = (v12 >> 14) | 0x80;
      __s1[5] = (v12 >> 21) | 0x80;
      v20 = 7;
      v18 = &__s1[6];
    }

    else if (v12 >= 0x200000)
    {
      __s1[2] = v12 | 0x80;
      __s1[3] = (v12 >> 7) | 0x80;
      __s1[4] = (v12 >> 14) | 0x80;
      v19 = v12 >> 21;
      v20 = 6;
      v18 = &__s1[5];
    }

    else if (v12 >= 0x4000)
    {
      __s1[2] = v12 | 0x80;
      __s1[3] = (v12 >> 7) | 0x80;
      v19 = v12 >> 14;
      v20 = 5;
      v18 = &__s1[4];
    }

    else if (v12 >= 0x80)
    {
      __s1[2] = v12 | 0x80;
      v19 = v12 >> 7;
      v20 = 4;
      v18 = &__s1[3];
    }

    else
    {
      v20 = 3;
      LOBYTE(v19) = v12;
    }

LABEL_280:
    *v18 = v19;
    v144 = CIDecomposeCFString(a2, __s1, v20);
    v145 = *MEMORY[0x1E69E9AC8];
    if (!v144)
    {
      if (v145 <= 0x27)
      {
        ++sTotal_14063;
      }

      v159 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
      if (!v159)
      {
        _log_fault_for_malloc_failure();
      }

      v159[2] = 0;
      goto LABEL_342;
    }

    v146 = v144;
    if (v145 <= 0xE7)
    {
      ++sTotal_14063;
    }

    v147 = malloc_type_zone_calloc(queryZone, 1uLL, 0xE8uLL, 0x5BAF1CEAuLL);
    if (!v147)
    {
      _log_fault_for_malloc_failure();
    }

    v147[4] = v147 + 5;
    *v147 = 1;
    *(v147 + 1) = v185;
    *(v147 + 2) = 1;
    if ((a4 & 0x8000) != 0)
    {
      v160 = *&v146[v20];
      *&v146[v20] = 42;
      v161 = v147[4];
      v162 = strdup(v146);
      v163 = 8;
      *v161 = v162;
      *(v161 + 8) = 0;
      if ((v185 & 0x3100) == 0)
      {
        v163 = 12;
      }

      if (v12 > 1)
      {
        v164 = -1;
      }

      else
      {
        v164 = v12;
      }

      *(v161 + 16) = v185 & 0x7FFCB108;
      *(v161 + 20) = v164;
      *(v161 + 24) = v163;
      *(v161 + 32) = 0u;
      *(v161 + 48) = 0u;
      *&v146[v20] = v160;
      *(v147[4] + 8) = strdup(&v146[v20]);
      v165 = icu_regex_create();
      v158 = v147[4];
      *(v158 + 40) = v165;
      v157 = 1;
    }

    else
    {
      v148 = strdup(v146);
      if ((v185 & 0x3100) != 0)
      {
        v149 = 8;
      }

      else
      {
        v149 = 12;
      }

      v150 = v149 & 0xFFFFFFFE | v185 & 1;
      v147[5] = v148;
      v147[6] = 0;
      if ((v185 & 0x10000) != 0)
      {
        v150 |= (v185 >> 8) & 0x7C00 | 0x10;
      }

      if (v12 > 1)
      {
        v151 = -1;
      }

      else
      {
        v151 = v12;
      }

      *(v147 + 14) = v185;
      *(v147 + 15) = v151;
      v147[8] = v150 | v185 & 2;
      v147[9] = 0;
      v147[10] = 0;
      v147[11] = 0;
      *(v147 + 24) = 0;
      *(v147 + 25) = v21;
      icu_local_id();
      *(v147[4] + 32) = icu_search_context_create_with_wildcard_limit();
      is_fuzzy = icu_search_context_is_fuzzy();
      v153 = v147[4];
      if (is_fuzzy)
      {
        v154 = *(v153 + 32);
        is_prefix = icu_search_context_is_prefix();
        la_init(v154, is_prefix);
      }

      *(v153 + 64) = 0;
      *(v153 + 72) = 0;
      *(v153 + 80) = 100;
      *(v153 + 84) = v12;
      *(v153 + 88) = 8;
      *(v153 + 92) = 0u;
      *(v153 + 108) = 0u;
      *(v153 + 124) = 0;
      v156 = v147[4];
      *(v156 + 128) = 0;
      *(v156 + 136) = 0;
      *(v156 + 144) = 100;
      *(v156 + 148) = v12;
      *(v156 + 152) = 8;
      *(v156 + 156) = 0u;
      *(v156 + 172) = 0u;
      *(v156 + 188) = 0;
      v157 = FillQueryNodeRangePatternsCopy(v147[4] + 64, a2, a2) + 1;
      v158 = v147[4];
    }

    v166 = *(v158 + 20);
    *(v158 + 16) |= 8u;
    if (v166 == -1)
    {
      *(v158 + 20) = v12;
    }

    *(v147 + 6) = v157;
    if (v146 != __s1)
    {
      v137 = v146;
      goto LABEL_261;
    }

LABEL_342:
    icu_locale_release();
    return;
  }

  v187 = 0;
  if ((a4 & 0x800) != 0)
  {
    goto LABEL_58;
  }

  if (!v12)
  {
    v32 = atomic_load((a1 + 36));
    if ((v32 & 0x10) != 0)
    {
      v33 = 0;
LABEL_68:
      v35 = 1;
      goto LABEL_72;
    }
  }

LABEL_51:
  if ((a4 & 0x6008000) == 0)
  {
    if (*(a1 + 46))
    {
      v39 = 16;
    }

    else
    {
      v39 = 0;
    }

    v33 = ContentIndexCopyQueryTerms(a2, a6, a5, v39, &v187);
    goto LABEL_68;
  }

  bzero(__s1, 0x414uLL);
  v34 = CIDecomposeCFString(a2, __s1, 0);
  v35 = v34 == 0;
  if (v34)
  {
    v36 = v34;
    v33 = malloc_type_zone_malloc(queryZone, 8uLL, 0xA4971684uLL);
    if (!v33)
    {
      _log_fault_for_malloc_failure();
    }

    if (v36 == __s1)
    {
      v36 = strdup(v36);
    }

    *v33 = v36;
    v187 = 1;
  }

  else
  {
    v33 = 0;
  }

LABEL_72:
  v38 = v187;
  if (v187)
  {
    v178 = 1;
LABEL_74:
    v183 = (v38 - 1);
    v40 = (v38 << 6) + 16 * v183 + 40;
    if (!(v40 >> 17) && v40 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_14063;
    }

    v41 = malloc_type_zone_calloc(queryZone, 1uLL, v40, 0x5BAF1CEAuLL);
    if (!v41)
    {
      _log_fault_for_malloc_failure();
    }

    *v41 = 0;
    v41[1] = v185;
    v42 = v12 == 0;
    if (v38 <= 1)
    {
      v42 = 0;
    }

    if (v38 >= 1)
    {
      v43 = 0;
      v181 = v42 && v35;
      v44 = &v41[4 * v183 + 10];
      v45 = v41 + 6;
      v46 = v184;
      v180 = v38;
      v182 = v33;
      v177 = v41;
      while (1)
      {
        v47 = v33[v43];
        v48 = v181;
        if (v43 != v183)
        {
          v48 = 0;
        }

        if (v48 == 1)
        {
          v49 = strlen(v33[v43]);
          v50 = v49;
          if (v49 >= 2)
          {
            v51 = &v47[v49 & 0x7FFFFFFF];
            if (*(v51 - 1) == 42)
            {
              v52 = (v51 - 2);
              if (*(v51 - 2) != 92 || v52 <= v47)
              {
                v54 = *v47;
                v55 = *v47;
                if (v54 < 0)
                {
                  v56 = v54 >> 4;
                  v57 = utf8_byte_length(unsigned char)::utf8_len_table[v56];
                  v54 = v55 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v57];
                  if ((~v56 & 0xC) == 0)
                  {
                    if (v57 <= 2)
                    {
                      v58 = 2;
                    }

                    else
                    {
                      v58 = utf8_byte_length(unsigned char)::utf8_len_table[v56];
                    }

                    v59 = v58 - 1;
                    v60 = v47 + 1;
                    do
                    {
                      v61 = *v60++;
                      v54 = v61 & 0x3F | (v54 << 6);
                      --v59;
                    }

                    while (v59);
                  }
                }

                else
                {
                  v56 = v55 >> 4;
                }

                v62 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v56];
                v63 = &v47[v62];
                if (v54 == 92)
                {
                  v54 = *v63;
                  v64 = *v63;
                  if (v54 < 0)
                  {
                    v65 = v54 >> 4;
                    v67 = utf8_byte_length(unsigned char)::utf8_len_table[v65];
                    v54 = v64 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v67];
                    if ((~v65 & 0xC) == 0)
                    {
                      if (v67 <= 2)
                      {
                        v68 = 2;
                      }

                      else
                      {
                        v68 = utf8_byte_length(unsigned char)::utf8_len_table[v65];
                      }

                      v69 = v68 - 1;
                      v70 = &v47[v62 + 1];
                      do
                      {
                        v71 = *v70++;
                        v54 = v71 & 0x3F | (v54 << 6);
                        --v69;
                      }

                      while (v69);
                    }
                  }

                  else
                  {
                    v65 = v64 >> 4;
                  }

                  v66 = v52;
                  v63 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[v65];
                }

                else
                {
                  v66 = v52;
                }

                v72 = u_ispunct(v54);
                v73 = v66;
                v41 = v177;
                if (v72)
                {
                  if (v63 > v73)
                  {
                    goto LABEL_124;
                  }

                  v74 = *v63;
                  v75 = *v63;
                  if (v74 < 0)
                  {
                    v76 = v74 >> 4;
                    v77 = utf8_byte_length(unsigned char)::utf8_len_table[v76];
                    v74 = v75 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v77];
                    if ((~v76 & 0xC) == 0)
                    {
                      if (v77 <= 2)
                      {
                        v78 = 2;
                      }

                      else
                      {
                        v78 = utf8_byte_length(unsigned char)::utf8_len_table[v76];
                      }

                      v79 = v78 - 1;
                      v80 = (v63 + 1);
                      do
                      {
                        v81 = *v80++;
                        v74 = v81 & 0x3F | (v74 << 6);
                        --v79;
                      }

                      while (v79);
                    }
                  }

                  else
                  {
                    v76 = v75 >> 4;
                  }

                  v82 = &v63[utf8_byte_length_noerror(unsigned char)::utf8_len_table[v76]];
                  if (v74 == 92)
                  {
                    v82 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v82 >> 4];
                  }

                  if (v82 > v73)
                  {
LABEL_124:
                    v47[v50 - 1] = 0;
                  }
                }
              }
            }
          }
        }

        if (!v43 && *v47 == 46 && !v47[1] && v12 != 0)
        {
          goto LABEL_245;
        }

        if (v12)
        {
          v84 = 0;
        }

        else
        {
          v84 = v38 == 1;
        }

        v86 = !v84 && (v12 & 0xFFFFFFFD) != 1;
        if ((v46 & 0x20) == 0)
        {
          v89 = v12;
          v87 = v185;
          goto LABEL_146;
        }

        v87 = v185;
        if ((v86 & 1) == 0)
        {
          LODWORD(v88) = *v47;
          if (v88 != 42)
          {
            break;
          }
        }

        v89 = v12;
LABEL_146:
        v185 = v87;
        if (v180 < 2 || *v47 != 42 || v47[1] || v12 <= 5 && v12 != 4)
        {
          *&v45[4 * *v41 + 2] = v44;
          if ((v87 & 0x8000) != 0)
          {
            v90 = v87 & 0xFFFEFFF8;
          }

          else
          {
            v90 = v87;
          }

          if ((v90 & 0x3180) != 0)
          {
            v91 = 8;
          }

          else
          {
            v91 = 12;
          }

          v92 = v91 & 0xFFFFFFFE | v90 & 1;
          if ((v90 & 0x10000) != 0)
          {
            v92 |= (v90 >> 8) & 0x7C00 | 0x10;
          }

          v93 = v92 | v90 & 2;
          v94 = v46;
          if (v12 > 1)
          {
            v95 = -1;
          }

          else
          {
            v95 = v12;
          }

          if (v94 < 0)
          {
            Term = copyQueryTerm("*", v89);
            memset(__s1, 0, 28);
            *v44 = Term;
            *(v44 + 8) = 0;
            *(v44 + 16) = v90;
            *(v44 + 20) = v95;
            *(v44 + 24) = v93;
            *(v44 + 32) = *__s1;
            *(v44 + 44) = *&__s1[12];
            *(v44 + 60) = 0;
            *(*&v45[4 * *v41 + 2] + 8) = strdup(v47);
            raw = icu_regex_create();
            v103 = 40;
          }

          else
          {
            v96 = copyQueryTerm(v47, v89);
            memset(__s1, 0, 28);
            *v44 = v96;
            *(v44 + 8) = 0;
            *(v44 + 16) = v90;
            *(v44 + 20) = v95;
            *(v44 + 24) = v93;
            *(v44 + 32) = *__s1;
            *(v44 + 44) = *&__s1[12];
            *(v44 + 60) = a8;
            if (v178)
            {
              icu_local_id();
              v97 = icu_search_context_create_with_wildcard_limit();
              v98 = *v41;
              v99 = *&v45[4 * *v41 + 2];
              *(v99 + 32) = v97;
              v46 = v184;
              v33 = v182;
              if ((v184 & 0x10000) != 0)
              {
                v132 = v97;
                v133 = icu_search_context_is_prefix();
                la_init(v132, v133);
              }

              v100 = v98;
              goto LABEL_228;
            }

            raw = icu_search_context_create_raw();
            v103 = 32;
          }

          v46 = v184;
          v33 = v182;
          v98 = *v41;
          v100 = *v41;
          v99 = *&v45[4 * v100 + 2];
          *(v99 + v103) = raw;
LABEL_228:
          if (*(v99 + 20) == -1)
          {
            if (v12 == -1)
            {
              v129 = 1;
            }

            else
            {
              v129 = v12;
            }

            *(v99 + 20) = v129;
          }

          v45[4 * v100] = 1;
          if (!v12)
          {
            if (v187 == 1)
            {
              v130 = (*v47 == 42) << 8;
              v131 = v41[1];
            }

            else
            {
              v131 = v41[1];
              if ((v131 & 0x3000) != 0)
              {
                v130 = 256;
              }

              else
              {
                v130 = 384;
              }
            }

            v41[1] = v131 | v130;
            *(v99 + 16) |= v130;
          }

          v44 += 64;
          *v41 = v98 + 1;
          goto LABEL_241;
        }

        --v180;
        v41[2] = 3;
LABEL_245:
        v33 = v182;
LABEL_241:
        free(v33[v43]);
        v33[v43++] = 0;
        v38 = v187;
        if (v43 >= v187)
        {
          if (!v12)
          {
            v134 = 0;
            goto LABEL_253;
          }

          if (v187 == 1 && (v46 & 0x20) != 0)
          {
            v134 = 1;
LABEL_253:
            v41[2] = v134;
            goto LABEL_260;
          }

          goto LABEL_251;
        }
      }

      v104 = 1;
      v89 = v12;
      v105 = v47;
      while (1)
      {
        v106 = v104;
        v107 = utf8_byte_length(unsigned char)::utf8_len_table[v88 >> 4];
        v108 = &v105[v107];
        v88 = v105[v107];
        if (!v105[v107])
        {
          goto LABEL_146;
        }

        if ((v88 & 0x80) != 0)
        {
          v109 = utf8_byte_length(unsigned char)::utf8_len_table[v88 >> 4];
          v110 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v109] & v88;
          if ((~(v88 >> 4) & 0xC) != 0)
          {
            goto LABEL_177;
          }

          v111 = v109 <= 2 ? 2 : utf8_byte_length(unsigned char)::utf8_len_table[v88 >> 4];
          v112 = v111 - 1;
          v113 = &v105[v107 + 1];
          do
          {
            v114 = *v113++;
            v110 = v114 & 0x3F | (v110 << 6);
            --v112;
          }

          while (v112);
          if (v110 < 0x10000)
          {
LABEL_177:
            if ((v110 - 12441) >= 4 && (v110 - 65438) >= 2)
            {
              if (v110 < 0x300u)
              {
                goto LABEL_195;
              }

              v126 = __CFUniCharCombiningBitmap[BYTE1(v110)];
              if (!__CFUniCharCombiningBitmap[BYTE1(v110)] || v126 != 255 && ((__CFUniCharCombiningBitmap[32 * v126 + 224 + (v110 >> 3)] >> (v110 & 7)) & 1) == 0)
              {
                goto LABEL_195;
              }
            }
          }

          else
          {
            v123 = v110 - 917760;
            v124 = v110 - 127995;
            if (v123 >= 0xF0 && v124 > 4)
            {
              goto LABEL_195;
            }
          }

          v108 += v109;
          v88 = *v108;
          if (v106)
          {
            if (v88 == 42)
            {
              goto LABEL_196;
            }

            if ((v88 & 0x80) == 0)
            {
              goto LABEL_146;
            }

            v116 = utf8_byte_length(unsigned char)::utf8_len_table[v88 >> 4];
            v117 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v116] & v88;
            if ((~(v88 >> 4) & 0xC) != 0)
            {
              goto LABEL_191;
            }

            v118 = v116 <= 2 ? 2 : utf8_byte_length(unsigned char)::utf8_len_table[v88 >> 4];
            v119 = v118 - 1;
            v120 = &v105[v109 + 1 + v107];
            do
            {
              v121 = *v120++;
              v117 = v121 & 0x3F | (v117 << 6);
              --v119;
            }

            while (v119);
            if (v117 < 0x10000)
            {
LABEL_191:
              if ((v117 - 12441) >= 4 && (v117 - 65438) >= 2)
              {
                if (v117 < 0x300u)
                {
                  goto LABEL_146;
                }

                v128 = __CFUniCharCombiningBitmap[BYTE1(v117)];
                if (v128 != 255 && (!__CFUniCharCombiningBitmap[BYTE1(v117)] || ((__CFUniCharCombiningBitmap[32 * v128 + 224 + (v117 >> 3)] >> (v117 & 7)) & 1) == 0))
                {
                  goto LABEL_146;
                }
              }
            }

            else if ((v117 - 917760) >= 0xF0 && (v117 - 127995) > 4)
            {
              goto LABEL_146;
            }
          }
        }

LABEL_195:
        if (v88 == 42)
        {
LABEL_196:
          if (v108[1] || *(v108 - 1) == 92)
          {
            LODWORD(v88) = 42;
          }

          else
          {
            LODWORD(v88) = 0;
            *v108 = 0;
            v87 |= 0x800u;
            if (v12 == 3)
            {
              v89 = 0;
              v12 = 5;
            }
          }
        }

        v104 = 0;
        v105 = v108;
        if ((v106 & 1) == 0)
        {
          goto LABEL_146;
        }
      }
    }

    if (v12)
    {
LABEL_251:
      v135 = 3;
      goto LABEL_259;
    }

LABEL_258:
    v135 = 0;
LABEL_259:
    v41[2] = v135;
    if (!v33)
    {
      goto LABEL_342;
    }

LABEL_260:
    v137 = v33;
LABEL_261:
    free(v137);
    goto LABEL_342;
  }

  if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
  {
    ++sTotal_14063;
  }

  v136 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
  if (v136)
  {
    v41 = v136;
    goto LABEL_258;
  }

  _log_fault_for_malloc_failure();
  __break(1u);
}

char *CIDecomposeCFString(const __CFString *a1, char *a2, size_t a3)
{
  v19 = 0;
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    v10 = CharactersPtr;
    v11 = 0;
    goto LABEL_7;
  }

  v12 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
  if (!v12)
  {
    return 0;
  }

  v10 = v12;
  v20.location = 0;
  v20.length = Length;
  CFStringGetCharacters(a1, v20, v12);
  v11 = v10;
LABEL_7:
  v13 = a2;
  if (MaximumSizeForEncoding >= (1044 - a3))
  {
    v14 = malloc_type_malloc(MaximumSizeForEncoding + 1 + a3, 0x100004077774924uLL);
    v13 = v14;
    if (a2)
    {
      if (a3)
      {
        memcpy(v14, a2, a3);
      }
    }
  }

  if (v13)
  {
    v15 = utf8_encodestr(v10, 2 * Length, &v13[a3], &v19, MaximumSizeForEncoding + 1);
    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  free(v11);
  if (v16 && v16 != a2)
  {
    free(v16);
  }

  return v17;
}

uint64_t utf8_encodestr(unsigned __int16 *a1, unint64_t a2, _BYTE *a3, void *a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  v25[1] = 0;
  if (a2 >= 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = &a3[a5 - 1];
    v13 = a2 >> 1;
    v8 = a3;
    while (1)
    {
      --v13;
      if (v10 < 1)
      {
        v16 = *a1++;
        v14 = v16;
        v17 = v16;
        if (v16 >= 0xC0u)
        {
          v18 = __CFUniCharDecomposableBitmap[v17 >> 8];
          if (!__CFUniCharDecomposableBitmap[v17 >> 8] || v18 != 255 && ((__CFUniCharDecomposableBitmap[32 * v18 + 224 + (v17 >> 3)] >> (v17 & 7)) & 1) == 0)
          {
            goto LABEL_26;
          }

          v19 = v14 + 21504;
          if ((v14 + 21504) > 0x2BA4u)
          {
            v10 = unicode_recursive_decompose(v14, v25, 4449) - 1;
            v14 = LOWORD(v25[0]);
          }

          else
          {
            v20 = (v14 + 21504) % 0x1Cu;
            v14 = ((28533 * (v14 + 21504)) >> 24) | 0x1100;
            LOWORD(v25[0]) = ((28533 * v19) >> 24) | 0x1100;
            WORD1(v25[0]) = v19 % 0x24Cu / 0x1C + 4449;
            if (v19 % 0x1Cu)
            {
              WORD2(v25[0]) = v20 + 4519;
              v10 = 2;
            }

            else
            {
              v10 = 1;
            }
          }

          v13 += v10;
          v11 = v25 + 1;
        }
      }

      else
      {
        v15 = *v11++;
        v14 = v15;
        --v10;
      }

      if (v14)
      {
        if (v14 == 47)
        {
          LOBYTE(v14) = 47;
LABEL_24:
          if (v8 >= v12)
          {
            goto LABEL_35;
          }

          *v8++ = v14;
          goto LABEL_4;
        }

        LODWORD(v17) = v14;
        if (v14 < 0x80u)
        {
          goto LABEL_24;
        }

LABEL_26:
        if (v14 <= 0x7FFu)
        {
          if (v8 + 1 >= v12)
          {
            goto LABEL_35;
          }

          *v8 = (v14 >> 6) | 0xC0;
          v8[1] = v14 & 0x3F | 0x80;
          v8 += 2;
          goto LABEL_4;
        }

        v22 = v14 >> 6;
        v21 = v14 >> 12;
        if (v14 >> 10 == 54 && v13)
        {
          v23 = *a1;
          if ((v23 & 0xFC00) == 0xDC00)
          {
            if (v8 + 3 >= v12)
            {
LABEL_35:
              result = 63;
              goto LABEL_37;
            }

            v24 = v23 + (v17 << 10) - 56613888;
            --v13;
            ++a1;
            *v8 = (v24 >> 18) | 0xF0;
            v8[1] = (v24 >> 12) & 0x3F | 0x80;
            v8[2] = (v24 >> 6) & 0x3F | 0x80;
            v8[3] = v23 & 0x3F | 0x80;
            v8 += 4;
            goto LABEL_4;
          }

          LOBYTE(v21) = 13;
        }

        goto LABEL_21;
      }

      LOBYTE(v14) = 0;
      LOBYTE(v21) = 2;
      LOBYTE(v22) = -112;
LABEL_21:
      if (v8 + 2 >= v12)
      {
        goto LABEL_35;
      }

      *v8 = v21 | 0xE0;
      v8[1] = v22 & 0x3F | 0x80;
      v8[2] = v14 & 0x3F | 0x80;
      v8 += 3;
LABEL_4:
      if (!v13)
      {
        result = 0;
        goto LABEL_37;
      }
    }
  }

  result = 0;
  v8 = a3;
LABEL_37:
  *a4 = v8 - a3;
  *v8 = 0;
  return result;
}

uint64_t FillQueryNodeRangePatternsCopy(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!(cf | a3))
  {
    goto LABEL_55;
  }

  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (a3 && v6 != CFGetTypeID(a3))
    {
      goto LABEL_55;
    }

    if (v6 == CFNumberGetTypeID())
    {
      v7 = copyNumberTermFromNumber(cf, *(a1 + 20));
LABEL_9:
      *a1 = v7;
      v8 = *(a1 + 20);
      if (a3)
      {
        v9 = copyNumberTermFromNumber(a3, v8);
LABEL_35:
        *(a1 + 8) = v9;
        *(a1 + 20) = -1;
        return 1;
      }

      v20 = 1;
      goto LABEL_34;
    }

    if (v6 == CFDateGetTypeID())
    {
      v10 = copyDateTermFromDate(cf, *(a1 + 20));
LABEL_15:
      *a1 = v10;
      v8 = *(a1 + 20);
      if (a3)
      {
        v9 = copyDateTermFromDate(a3, v8);
        goto LABEL_35;
      }

      v20 = 0;
LABEL_34:
      v9 = copyMaximumTerm(v20, v8);
      goto LABEL_35;
    }
  }

  else
  {
    v6 = CFGetTypeID(a3);
    if (v6 == CFNumberGetTypeID())
    {
      v7 = copyMinimumTerm(1, *(a1 + 20));
      goto LABEL_9;
    }

    if (v6 == CFDateGetTypeID())
    {
      v10 = copyMinimumTerm(0, *(a1 + 20));
      goto LABEL_15;
    }
  }

  if (v6 == CFStringGetTypeID())
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *buffer = 0u;
    v35 = 0u;
    valuePtr = 0.0;
    if (cf)
    {
      CFStringGetCString(cf, buffer, 256, 0x8000100u);
      v11 = copyCFNumberTermFromString(buffer);
      if (!v11)
      {
        goto LABEL_55;
      }

      v12 = v11;
      CFNumberGetValue(v11, kCFNumberDoubleType, &valuePtr);
      v13 = CFDateCreate(0, valuePtr);
      if (!v13)
      {
LABEL_54:
        CFRelease(v12);
        goto LABEL_55;
      }

      v14 = v13;
      if (CFNumberIsFloatType(v12))
      {
        v32 = 0.0;
        v15 = copyCFNumberFloatTermFromString(buffer);
        if (v15)
        {
          v16 = v15;
          CFNumberGetValue(v15, kCFNumberFloatType, &v32);
          v18 = (LODWORD(v32) & 0x7FFFFFFFu) < 0x7F800001 && ((LODWORD(v32) & 0x7FFFFFFFu) - 0x800000) >> 24 > 0x7E && (LODWORD(v32) & 0x7FFFFFFFu) - 1 > 0x7FFFFE;
          if (v18 || valuePtr <= v32)
          {
            v19 = v16;
          }

          else
          {
            v19 = v12;
            v12 = v16;
          }

          CFRelease(v19);
        }
      }

      *a1 = copyDateTermFromDate(v14, *(a1 + 20));
      *(a1 + 64) = copyNumberTermFromNumber(v12, *(a1 + 84));
      CFRelease(v12);
      CFRelease(v14);
    }

    else
    {
      *a1 = copyMinimumTerm(0, *(a1 + 20));
      *(a1 + 64) = copyMinimumTerm(1, *(a1 + 84));
    }

    if (!a3)
    {
      *(a1 + 8) = copyMaximumTerm(0, *(a1 + 20));
      *(a1 + 72) = copyMaximumTerm(1, *(a1 + 20));
LABEL_68:
      *(a1 + 20) = -1;
      *(a1 + 84) = -1;
      return 2;
    }

    CFStringGetCString(a3, buffer, 256, 0x8000100u);
    v22 = copyCFNumberTermFromString(buffer);
    if (v22)
    {
      v12 = v22;
      CFNumberGetValue(v22, kCFNumberDoubleType, &valuePtr);
      v23 = CFDateCreate(0, valuePtr);
      if (v23)
      {
        v24 = v23;
        if (CFNumberIsFloatType(v12))
        {
          v32 = 0.0;
          v25 = copyCFNumberFloatTermFromString(buffer);
          if (v25)
          {
            v26 = v25;
            CFNumberGetValue(v25, kCFNumberFloatType, &v32);
            v28 = (LODWORD(v32) & 0x7FFFFFFFu) < 0x7F800001 && ((LODWORD(v32) & 0x7FFFFFFFu) - 0x800000) >> 24 > 0x7E && (LODWORD(v32) & 0x7FFFFFFFu) - 1 > 0x7FFFFE;
            if (v28 || valuePtr >= v32)
            {
              v29 = v26;
            }

            else
            {
              v29 = v12;
              v12 = v26;
            }

            CFRelease(v29);
          }
        }

        *(a1 + 8) = copyDateTermFromDate(v24, *(a1 + 20));
        *(a1 + 72) = copyNumberTermFromNumber(v12, *(a1 + 84));
        CFRelease(v12);
        CFRelease(v24);
        goto LABEL_68;
      }

      goto LABEL_54;
    }
  }

LABEL_55:
  if (*a1)
  {
    free(*a1);
  }

  v30 = *(a1 + 8);
  if (v30)
  {
    free(v30);
  }

  v31 = *(a1 + 64);
  if (v31)
  {
    free(v31);
  }

  result = *(a1 + 72);
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

CFNumberRef copyCFNumberTermFromString(char *__str)
{
  v1 = __str;
  if (*__str == 1)
  {
    if (__str[1] < 0)
    {
      if (__str[2] < 0)
      {
        if (__str[3] < 0)
        {
          if (__str[4] < 0)
          {
            if (__str[5] < 0)
            {
              v10 = __si_assert_copy_extra_332();
              v11 = v10;
              v12 = "";
              if (v10)
              {
                v12 = v10;
              }

              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v12);
              free(v11);
              if (__valid_fs(-1))
              {
                v13 = 2989;
              }

              else
              {
                v13 = 3072;
              }

              *v13 = -559038737;
              abort();
            }

            v2 = 5;
          }

          else
          {
            v2 = 4;
          }
        }

        else
        {
          v2 = 3;
        }
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 1;
    }

    v1 = &__str[v2 + 1];
  }

  __endptr = 0;
  v15 = strtoll(v1, &__endptr, 0);
  v3 = __endptr;
  if (__endptr != v1)
  {
    v4 = *__endptr;
    if (v4 == 42)
    {
      ++__endptr;
      v4 = v3[1];
    }

    if (v4 <= 1)
    {
      p_valuePtr = &v15;
      v6 = kCFNumberLongLongType;
      return CFNumberCreate(0, v6, p_valuePtr);
    }

    valuePtr = strtod(v1, &__endptr);
    v7 = __endptr;
    if (__endptr != v1)
    {
      v8 = *__endptr;
      if (v8 == 42)
      {
        ++__endptr;
        v8 = v7[1];
      }

      if (v8 <= 1)
      {
        p_valuePtr = &valuePtr;
        v6 = kCFNumberDoubleType;
        return CFNumberCreate(0, v6, p_valuePtr);
      }
    }
  }

  return 0;
}

void si_routine_mailIndex(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

uint64_t ContentIndexMatchLocalizedFields(int *a1, uint64_t a2, _DWORD *a3)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2000000000;
  v39 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v6 = *a1;
  if (*a1 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = a1 + 6;
    v9 = *a1;
    do
    {
      v10 = *v8;
      v8 += 4;
      v11 = v10 - 1;
      if (v10 <= 1)
      {
        v11 = 0;
      }

      v7 += v11;
      --v9;
    }

    while (v9);
  }

  v12 = v7 + v6;
  v13 = malloc_type_zone_malloc(queryZone, (v7 + v6) << 6, 0xA4971684uLL);
  if (!v13)
  {
    _log_fault_for_malloc_failure();
  }

  v14 = *a1;
  if (*a1 < 1)
  {
    LODWORD(v16) = 0;
    if (!a2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    v17 = &a1[4 * v15 + 6];
    if (*v17 >= 1)
    {
      v18 = 0;
      v19 = v16;
      if (v16 <= v12)
      {
        v20 = v12;
      }

      else
      {
        v20 = v16;
      }

      v21 = (v20 - v16);
      do
      {
        if (v18 == v21)
        {
          v29 = __si_assert_copy_extra_332();
          v30 = v29;
          v31 = "";
          if (v29)
          {
            v31 = v29;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 1233, "pos<(secondaryCount+nodeCount)", v31);
          free(v30);
          if (__valid_fs(-1))
          {
            v32 = 2989;
          }

          else
          {
            v32 = 3072;
          }

          *v32 = -559038737;
          abort();
        }

        v16 = v19 + 1;
        v22 = &v13[8 * v19];
        v23 = (*(v17 + 1) + (v18 << 6));
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[3];
        v22[2] = v23[2];
        v22[3] = v26;
        *v22 = v24;
        v22[1] = v25;
        ++v18;
        v19 = v16;
      }

      while (v18 < *v17);
      v14 = *a1;
    }

    ++v15;
  }

  while (v15 < v14);
  if (a2)
  {
LABEL_22:
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 0x40000000;
    v33[2] = ___CIMatchLocalizedFields_block_invoke;
    v33[3] = &unk_1E81987C8;
    v33[4] = &v34;
    v33[5] = v38;
    v33[6] = &v40;
    termUpdateSetResolveQueryInfo(a2, v16, v13, 0, 0, 0, v33);
  }

LABEL_23:
  free(v13);
  *a3 = *(v35 + 6);
  v27 = v41[3];
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v40, 8);
  return v27;
}

char *db_get_field_name_for_id_locked(int *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      *buf = 136315650;
      v11 = "db_get_field_name_for_id_locked";
      v12 = 1024;
      v13 = 388;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 388, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return get_string_and_length_for_id_15021(a1, 0, a2, 0, 1);
}

char *copyDateTermFromDate(const void *a1, unsigned int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&__s1[1], 0, 255);
  if (a2 <= 0)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 158, "field >= 1", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      v7 = 2989;
    }

    else
    {
      v7 = 3072;
    }

    *v7 = -559038737;
    abort();
  }

  __s1[0] = 3;
  if (a2 >> 28)
  {
    v2 = &__s1[6];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = (a2 >> 21) | 0x80;
    __s1[5] = a2 >> 28;
  }

  else if (a2 >= 0x200000)
  {
    v2 = &__s1[5];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = a2 >> 21;
  }

  else if (a2 >= 0x4000)
  {
    v2 = &__s1[4];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = a2 >> 14;
  }

  else if (a2 >= 0x80)
  {
    v2 = &__s1[3];
    __s1[1] = a2 | 0x80;
    __s1[2] = a2 >> 7;
  }

  else
  {
    v2 = &__s1[2];
    __s1[1] = a2;
  }

  FlattenCFTypeToBuffer(a1, v2);
  return strdup(__s1);
}

uint64_t FlattenCFTypeToBuffer(const void *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFDateGetTypeID())
  {
    v5 = MEMORY[0x1C691E960](a1);
    goto LABEL_3;
  }

  if (v4 != CFNumberGetTypeID())
  {
    TypeID = CFBooleanGetTypeID();
    v10 = a2;
    if (v4 != TypeID)
    {
      goto LABEL_19;
    }

    Value = CFBooleanGetValue(a1);
    v6 = COERCE__INT64(Value) << 12;
    v8 = COERCE_UNSIGNED_INT64(Value) >> 52;
    v13 = a2;
    LODWORD(v7) = 0;
    goto LABEL_18;
  }

  Type = CFNumberGetType(a1);
  v10 = a2;
  if (Type <= kCFNumberCGFloatType)
  {
    if (((1 << Type) & 0xCF9E) != 0)
    {
      valuePtr = 0;
      if (!CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
      {
        v17 = __si_assert_copy_extra_332();
        v18 = v17;
        v19 = "";
        if (v17)
        {
          v19 = v17;
        }

        __message_assert(v17, "n2s.c", 184, "conversionSucceeded", v19);
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

      if (valuePtr >= 0)
      {
        v11 = valuePtr;
      }

      else
      {
        v11 = -valuePtr;
      }

      v12 = __clz(v11);
      v7 = valuePtr >> 63;
      if (valuePtr)
      {
        v6 = 2 * (v11 << v12);
      }

      else
      {
        v6 = 0;
      }

      if (valuePtr)
      {
        v8 = 1086 - v12;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_17;
    }

    v10 = a2;
    if (((1 << Type) & 0x13060) == 0)
    {
      goto LABEL_19;
    }

    valuePtr = 0;
    if (!CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr))
    {
      v21 = __si_assert_copy_extra_332();
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert(v21, "n2s.c", 165, "conversionSucceeded", v23);
      free(v22);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v5 = *&valuePtr;
LABEL_3:
    v6 = *&v5 << 12;
    v7 = *&v5 >> 63;
    v8 = (*&v5 >> 52) & 0x7FFLL;
LABEL_17:
    v13 = a2;
LABEL_18:
    v10 = WriteCharactersFromSignBiasedExponentStrippedMantissa(v13, v7, v8, v6);
  }

LABEL_19:
  *v10 = 0;
  return (v10 - a2);
}

_BYTE *WriteCharactersFromSignBiasedExponentStrippedMantissa(_BYTE *a1, int a2, unint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v4 = a4 == 0;
    a4 = -a4;
    if (v4)
    {
      a3 = (a3 ^ 0x7FF) + 1;
    }

    else
    {
      a3 ^= 0x7FFuLL;
    }

    *a1++ = 45;
  }

  *a1 = kHexDigits[(a3 >> 8) & 0xF];
  a1[1] = kHexDigits[a3 >> 4];
  a1[2] = kHexDigits[a3 & 0xF];
  a1[3] = 95;
  if (!a4)
  {
    return a1 + 4;
  }

  a1[4] = kHexDigits[a4 >> 60];
  if ((a4 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return a1 + 5;
  }

  a1[5] = kHexDigits[HIBYTE(a4) & 0xF];
  if ((a4 & 0xFFFFFFFFFFFFFFLL) == 0)
  {
    return a1 + 6;
  }

  a1[6] = kHexDigits[(a4 >> 52) & 0xF];
  if ((a4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    return a1 + 7;
  }

  a1[7] = kHexDigits[HIWORD(a4) & 0xF];
  if ((a4 & 0xFFFFFFFFFFFFLL) == 0)
  {
    return a1 + 8;
  }

  a1[8] = kHexDigits[(a4 >> 44) & 0xF];
  if ((a4 & 0xFFFFFFFFFFFLL) == 0)
  {
    return a1 + 9;
  }

  a1[9] = kHexDigits[(a4 >> 40) & 0xF];
  if ((a4 & 0xFFFFFFFFFFLL) == 0)
  {
    return a1 + 10;
  }

  a1[10] = kHexDigits[(a4 >> 36) & 0xF];
  if ((a4 & 0xFFFFFFFFFLL) == 0)
  {
    return a1 + 11;
  }

  a1[11] = kHexDigits[HIDWORD(a4) & 0xF];
  if (!a4)
  {
    return a1 + 12;
  }

  a1[12] = kHexDigits[a4 >> 28];
  if ((a4 & 0xFFFFFFF) == 0)
  {
    return a1 + 13;
  }

  a1[13] = kHexDigits[(a4 >> 24) & 0xF];
  if ((a4 & 0xFFFFFF) == 0)
  {
    return a1 + 14;
  }

  a1[14] = kHexDigits[(a4 >> 20) & 0xF];
  if ((a4 & 0xFFFFF) == 0)
  {
    return a1 + 15;
  }

  a1[15] = kHexDigits[(a4 >> 16) & 0xF];
  if (!a4)
  {
    return a1 + 16;
  }

  a1[16] = kHexDigits[a4 >> 12];
  if ((a4 & 0xFFF) == 0)
  {
    return a1 + 17;
  }

  a1[17] = kHexDigits[(a4 >> 8) & 0xF];
  if (!a4)
  {
    return a1 + 18;
  }

  a1[18] = kHexDigits[a4 >> 4];
  if ((a4 & 0xF) == 0)
  {
    return a1 + 19;
  }

  a1[19] = kHexDigits[a4 & 0xF];
  return a1 + 20;
}

char *copyNumberTermFromNumber(const void *a1, unsigned int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&__s1[1], 0, 255);
  if (a2 <= 0)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 146, "field >= 1", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      v7 = 2989;
    }

    else
    {
      v7 = 3072;
    }

    *v7 = -559038737;
    abort();
  }

  __s1[0] = 2;
  if (a2 >> 28)
  {
    v2 = &__s1[6];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = (a2 >> 21) | 0x80;
    __s1[5] = a2 >> 28;
  }

  else if (a2 >= 0x200000)
  {
    v2 = &__s1[5];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = a2 >> 21;
  }

  else if (a2 >= 0x4000)
  {
    v2 = &__s1[4];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = a2 >> 14;
  }

  else if (a2 >= 0x80)
  {
    v2 = &__s1[3];
    __s1[1] = a2 | 0x80;
    __s1[2] = a2 >> 7;
  }

  else
  {
    v2 = &__s1[2];
    __s1[1] = a2;
  }

  FlattenCFTypeToBuffer(a1, v2);
  return strdup(__s1);
}

char *ContentIndexQueryNodeForRange(const void *a1, const void *a2, int a3, int a4, int a5)
{
  if (*MEMORY[0x1E69E9AC8] <= 0xA7uLL)
  {
    ++sTotal_14063;
  }

  v10 = malloc_type_zone_calloc(queryZone, 1uLL, 0xA8uLL, 0x5BAF1CEAuLL);
  if (!v10)
  {
    _log_fault_for_malloc_failure();
  }

  if (a3)
  {
    *v10 = 1;
    *(v10 + 5) = 0;
    *(v10 + 4) = v10 + 40;
    if (a4)
    {
      v11 = 36;
    }

    else
    {
      v11 = 4;
    }

    *(v10 + 6) = 0;
    if (a5)
    {
      v11 |= 0x40u;
    }

    *(v10 + 14) = v11;
    *(v10 + 15) = a3;
    *(v10 + 16) = 8;
    *(v10 + 68) = 0u;
    *(v10 + 84) = 0u;
    *(v10 + 100) = 0u;
    *(v10 + 29) = 0;
    *(v10 + 30) = v11;
    *(v10 + 31) = a3;
    *(v10 + 32) = 8;
    *(v10 + 132) = 0u;
    *(v10 + 148) = 0u;
    *(v10 + 41) = 0;
    NodeRangePatternsCopy = FillQueryNodeRangePatternsCopy((v10 + 40), a1, a2);
    *(v10 + 6) = NodeRangePatternsCopy;
    if (!NodeRangePatternsCopy)
    {
      *v10 = 0;
    }
  }

  return v10;
}

uint64_t ContentIndexQueryNodeHash(int *a1)
{
  v1 = *a1;
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = a1 + 6;
    v4 = *a1;
    while (1)
    {
      v5 = &v3[4 * v2];
      v6 = *v5;
      if (v6 >= 1)
      {
        break;
      }

LABEL_19:
      if (++v2 == v1)
      {
        return v4;
      }
    }

    v7 = *(v5 + 1);
    while (1)
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 20);
      v4 ^= v9 ^ v8 ^ *(v7 + 24);
      if ((v8 & 0x600) != 0)
      {
        v10 = 8 * v9;
      }

      else
      {
        if ((v8 & 0x10) == 0)
        {
          v11 = strlen(*v7);
          v4 ^= commonHash(v11, *v7);
          v12 = *(v7 + 8);
          if (v12)
          {
            v13 = strlen(*(v7 + 8));
            v4 ^= commonHash(v13, v12);
          }

          goto LABEL_8;
        }

        v14 = *(v7 + 60);
        v15 = v14 & 3;
        v16 = (v14 >> 2) & 3;
        if (v15 == 3 || v16 == 3)
        {
          v10 = -1;
        }

        else
        {
          v10 = vector_dimension_vec_sizes_15424[v15] * vector_size_elem_sizes_15423[v16];
        }
      }

      commonHash(v10, *v7);
LABEL_8:
      v7 += 64;
      if (!--v6)
      {
        goto LABEL_19;
      }
    }
  }

  return *a1;
}

void trie_level_list_destroy(CFTypeRef *a1)
{
  CFRelease(a1[2]);
  if (*a1 >= 1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      free(*(a1[1] + v3));
      ++v2;
      v3 += 40;
    }

    while (v2 < *a1);
  }

  v4 = a1[1];

  free(v4);
}

void oqsort_offset_t(uint64_t a1)
{
  if (*(a1 + 24) >= 2)
  {
    v2 = qos_class_self();
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    if (v2 < 0x12)
    {
      _qsort_offset_t(v3, 0, v4 - 1);
    }

    else
    {
      parallel_qsort_offset_t(v3, v4);
    }
  }

  if (*(a1 + 48))
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert(v5, "OQueue.c", 14, "!queue->split", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }
}

_DWORD *CIIndexSetCreateWithRange(uint64_t a1, unsigned int a2, int a3)
{
  if (CIIndexSetGetTypeID_onceToken != -1)
  {
    v10 = a1;
    dispatch_once(&CIIndexSetGetTypeID_onceToken, &__block_literal_global_5901);
    LODWORD(a1) = v10;
  }

  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  v6 = a2 - v5;
  if (a2 < v5)
  {
    v11 = __si_assert_copy_extra_332();
    v19 = v11;
    v20 = "";
    if (v11)
    {
      v20 = v11;
    }

    __message_assert_336(v11, v12, v13, v14, v15, v16, v17, v18, "CIIndexSet.c", 999, "start <= end", v20);
    free(v19);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  result = _CFRuntimeCreateInstance();
  if (a3 == 2 || a3 == 4)
  {
    result[4] = -10;
    result[8] = (v6 + 32) >> 5;
    result[9] = -1;
    v8 = result;
    v9 = blob_calloc((v6 + 32) >> 5, 0);
    result = v8;
    *(v8 + 5) = v9;
  }

  else
  {
    result[4] = -2;
  }

  result[5] = v5;
  result[6] = a2;
  return result;
}

double __CIIndexSetInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

_OWORD *__query_node_unique_retain_block_invoke(uint64_t a1, _OWORD *value)
{
  if (!*(value + 2) && (value[3] & 0x30) == 0 || (v4 = CFBagGetValue(*(*(a1 + 32) + 64), value)) == 0)
  {
    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal_15332;
    }

    v6 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (v6)
    {
      v5 = v6;
      *v6 = *value;
      v7 = value[1];
      v8 = value[2];
      v9 = value[4];
      v6[3] = value[3];
      v6[4] = v9;
      v6[1] = v7;
      v6[2] = v8;
      v10 = *(value + 2);
      if (!v10)
      {
LABEL_11:
        if ((value[3] & 0x30) == 0)
        {
LABEL_13:
          _assessNodeCost(v5);
          return v5;
        }

LABEL_12:
        CFBagAddValue(*(*(a1 + 32) + 64), v5);
        goto LABEL_13;
      }

      piece = clone_query_piece(v10);
      *(v5 + 16) = piece;
      if (piece)
      {
        if (*(value + 2))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      free(v5);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v13[0] = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v13, 2u);
    }

    return 0;
  }

  v5 = v4;
  CFBagAddValue(*(*(a1 + 32) + 64), v4);
  _assessNodeCost(v5);
  *(v5 + 52) /= 2;
  return v5;
}

void ___ZL19_evaluateFuzzyQueryP20SISearchCtx_METADATAP14__ContentIndexPP19_ContentIndexDocSetPm_block_invoke(uint64_t a1, void *key, void *value)
{
  v5 = *(a1 + 32);
  Mutable = *(v5 + 216);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(kCIQueryZoneAllocator, 0, &dbqpDictionaryKeyCallbacks, &kCIDocSetCallbacks);
    *(v5 + 216) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
}

size_t _assessNodeCost(size_t result)
{
  if (*(result + 48) == 4)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if ((*(v1 + 33) & 4) == 0)
      {
        v2 = *v1;
        if (!*v1 || (result = strcmp(*v1, "kMDItemTextContent"), result) && (result = strncmp(v2, "_kMDItemOCRContent", 0x12uLL), result))
        {
          v3 = *(v1 + 72);
          if (!v3)
          {
            v5 = 0;
            goto LABEL_24;
          }

          result = strlen(*(v1 + 72));
          v4 = *v3;
          if (result < 1)
          {
            if (v4 != 42)
            {
LABEL_11:
              v5 = 5;
LABEL_24:
              *(v1 + 48) = v5;
              return result;
            }
          }

          else if (v4 != 42 && v3[(result & 0x7FFFFFFF) - 1] != 42)
          {
            goto LABEL_11;
          }

          v5 = 9;
          goto LABEL_24;
        }
      }

      v6 = *(v1 + 72);
      if (!v6)
      {
        v9 = 0;
        goto LABEL_23;
      }

      result = strlen(*(v1 + 72));
      v7 = *v6;
      if (result < 1)
      {
        if (v7 == 42)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v8 = v6[(result & 0x7FFFFFFF) - 1];
        if (v7 == 42)
        {
          if (v8 == 42)
          {
            v9 = 99;
LABEL_23:
            v5 = 100 * v9;
            goto LABEL_24;
          }

LABEL_19:
          v9 = 99 - result;
          goto LABEL_23;
        }

        if (v8 == 42)
        {
          v9 = 50 - result;
          goto LABEL_23;
        }
      }

      v9 = -result;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t hash_bytes(unsigned __int16 *a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (a2 >= 4)
    {
      v4 = a2 >> 2;
      v5 = a1 + 3;
      v3 = a2;
      do
      {
        v6 = *(v5 - 3) + v3;
        v7 = ((*v5 << 19) | (*(v5 - 1) << 11)) ^ (v6 << 16);
        v3 = (v7 ^ v6) + ((v7 ^ v6) >> 11);
        v5 += 4;
        --v4;
      }

      while (v4);
      a1 = (a1 + (a2 & 0xFFFFFFFFFFFFFFFCLL));
      if ((a2 & 3) > 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = a2;
      if ((a2 & 3) > 1)
      {
LABEL_5:
        if ((a2 & 3) == 2)
        {
          v3 = ((*a1 + v3) ^ ((*a1 + v3) << 11)) + (((*a1 + v3) ^ ((*a1 + v3) << 11)) >> 17);
        }

        else
        {
          v8 = *a1 + v3;
          v9 = (*(a1 + 2) << 18) ^ (v8 << 16);
          v3 = (v9 ^ v8) + ((v9 ^ v8) >> 11);
        }

LABEL_13:
        v10 = (v3 ^ (8 * v3)) + ((v3 ^ (8 * v3)) >> 5);
        v11 = (v10 ^ (16 * v10)) + ((v10 ^ (16 * v10)) >> 17);
        return (v11 ^ (v11 << 25)) + ((v11 ^ (v11 << 25)) >> 6);
      }
    }

    if ((a2 & 3) != 0)
    {
      v3 = ((v3 + *a1) ^ ((v3 + *a1) << 10)) + (((v3 + *a1) ^ ((v3 + *a1) << 10)) >> 1);
    }

    goto LABEL_13;
  }

  return v2;
}

atomic_uint *_ContentIndexDocSetRetain(const __CFAllocator *a1, atomic_uint *a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add(a2, 1u);
  }

  return result;
}

atomic_uint *ContentIndexDocSetExceptLazy(atomic_uint *result, atomic_uint *a2, float a3)
{
  v3 = result[12];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = a2[12];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = a2[13];
  v6 = v5 | result[13];
  if (v4 == 1)
  {
    if (v5)
    {
      result[13] = v6;
LABEL_6:
      atomic_fetch_add(result, 1u);
      return result;
    }

    if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
    {
      ++sTotal_6326;
    }

    v19 = *(result + 7);
    v20 = result[4];
    result = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
    if (!result)
    {
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      result = 0;
      if (v21)
      {
        v22[0] = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v22, 2u);
        result = 0;
      }
    }

    atomic_store(1u, result);
    result[1] = -1073627135;
    *(result + 7) = v19;
    result[12] = 0;
    *(result + 5) = -1;
    result[5] = v20;
  }

  else if (v3 == 1)
  {
    result = ContentIndexDocSetNotLazy(a2, a3);
    result[13] = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E9AC8];
    if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
    {
      ++sTotal_6326;
    }

    v9 = result;
    v10 = *(result + 7);
    v11 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
    if (!v11)
    {
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      v11 = 0;
      if (v12)
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        v11 = 0;
      }
    }

    atomic_store(1u, v11);
    v11[1] = -1073627135;
    *(v11 + 7) = v10;
    *(v11 + 5) = -1;
    v11[12] = 7;
    v11[13] = v6;
    v13 = v11;
    if (*v8 <= 0xFuLL)
    {
      ++sTotal_6326;
    }

    v14 = malloc_type_zone_calloc(queryZone, 1uLL, 0x10uLL, 0x5BAF1CEAuLL);
    if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v24, 2u);
    }

    result = v13;
    *(v13 + 9) = v14;
    atomic_fetch_add(v9, 1u);
    v15 = *(v13 + 9);
    v16 = v13[24];
    v13[24] = v16 + 1;
    *(v15 + 8 * v16) = v9;
    atomic_fetch_add(a2, 1u);
    v17 = *(v13 + 9);
    v18 = v13[24];
    v13[24] = v18 + 1;
    *(v17 + 8 * v18) = a2;
  }

  return result;
}

uint64_t ContentIndexDocSetHasWeights(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 12) != 0.0 || *(a1 + 16) != 0.0)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (v2 > 9)
  {
    assert_invalid_doc_type(a1);
  }

  if (((1 << v2) & 0x30F) != 0)
  {
    return 0;
  }

  HasWeights = *(a1 + 96);
  if (HasWeights)
  {
    v4 = 0;
    do
    {
      v5 = a1;
      HasWeights = ContentIndexDocSetHasWeights(*(*(a1 + 72) + 8 * v4));
      if (HasWeights)
      {
        break;
      }

      ++v4;
      a1 = v5;
    }

    while (v4 < *(v5 + 96));
  }

  return HasWeights;
}

void CITokenizerSetLocale(uint64_t a1, const __CFString *a2, char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a2 && (v6 = buffer, CFStringGetCString(a2, buffer, 1024, 0x8000100u)) || (v6 = a3) != 0)
  {
    if (*v6)
    {
      a3 = v6;
    }

    else
    {
      a3 = 0;
    }

    if (*v6)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 64);
  if (a3 == v8)
  {
    return;
  }

  if (a3 && v8)
  {
    if (!strcmp(a3, *(a1 + 64)))
    {
      return;
    }

    goto LABEL_17;
  }

  if (v8)
  {
LABEL_17:
    free(v8);
  }

  *(a1 + 64) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 56) = 0;
  v10 = MEMORY[0x1E695E480];
  if (a3 && !v7)
  {
    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a3, 0x8000100u);
  }

  if (v7)
  {
    v11 = CFLocaleCreate(*v10, v7);
    *(a1 + 56) = v11;
    if (v11)
    {
      *(a1 + 64) = strdup(a3);
    }

    if (v7 != a2)
    {
      CFRelease(v7);
    }
  }

  *(a1 + 72) = MEMORY[0x1C691F9C0](*(a1 + 56));
}

atomic_uint *ContentIndexDocSetUnionLazy(uint64_t a1, uint64_t *a2, float a3)
{
  v4 = a2;
  v5 = a1;
  if (a1 < 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    LODWORD(v16) = 0;
    LOBYTE(v6) = 0;
  }

  else
  {
    LOBYTE(v6) = ContentIndexDocSetHasWeights(*a2);
    v8 = *(*v4 + 48);
    v7 = *(*v4 + 52);
    v9 = v8 == 2;
    if (v8 == 1)
    {
      v10 = *(*v4 + 48);
    }

    else
    {
      v10 = 0;
    }

    if (v8 == 1)
    {
      v9 = 0;
    }

    v11 = v8 == 0;
    if (v8)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    if (v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    if (v7 == 3)
    {
      v14 = 3;
    }

    else
    {
      v14 = v7 == 1;
    }

    v15 = v5 - 1;
    if (v5 == 1)
    {
      LODWORD(v16) = v14;
    }

    else
    {
      v18 = v4 + 1;
      do
      {
        if (v6)
        {
          LOBYTE(v6) = 1;
        }

        else
        {
          v6 = *v18;
          if (*v18)
          {
            LOBYTE(v6) = ContentIndexDocSetHasWeights(v6);
          }
        }

        v19 = *v18;
        if (*v18 && (v20 = *(v19 + 48)) != 0)
        {
          if (v20 == 2)
          {
            v21 = v13 + 1;
          }

          else
          {
            v21 = v13;
          }

          if (v20 == 1)
          {
            ++v12;
          }

          else
          {
            v13 = v21;
          }
        }

        else
        {
          ++v11;
        }

        v22 = *(v19 + 52);
        if (v22 == v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = 1;
          if (v14 != 1 && (v22 & 0xFFFFFFFD) != 1)
          {
            v16 = v14;
            if (v14 == 3)
            {
              if (v22)
              {
                v16 = 3;
              }

              else
              {
                v16 = 1;
              }
            }
          }
        }

        ++v18;
        v14 = v16;
        --v15;
      }

      while (v15);
    }
  }

  if (v11 == v5)
  {
    v17 = *v4;
    if (!*v4)
    {
      return v17;
    }

    goto LABEL_24;
  }

  v17 = *v4;
  if (v12 == v5)
  {
    v17[13] = v16;
LABEL_24:
    atomic_fetch_add(v17, 1u);
    return v17;
  }

  v23 = v6;
  if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
  {
    ++sTotal_6326;
  }

  v24 = *(v17 + 7);
  v25 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
  if (!v25 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v40[0] = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v40, 2u);
  }

  atomic_store(1u, v25);
  v25[1] = -1073627135;
  *(v25 + 7) = v24;
  v25[12] = 4;
  *(v25 + 5) = -1;
  v26 = v13 + v11;
  if (v12)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26 == v5;
  }

  if (v27)
  {
    v28 = v23;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    if (v26 == v5)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    v25[12] = v29;
  }

  v30 = 8 * v5;
  if (!(v5 >> 14) && *MEMORY[0x1E69E9AC8] < v30)
  {
    ++sTotal_6326;
  }

  v31 = malloc_type_zone_calloc(queryZone, 1uLL, v30, 0x5BAF1CEAuLL);
  if (!v31 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  *(v25 + 9) = v31;
  if (v5 >= 1)
  {
    if (v23)
    {
      do
      {
        v34 = *v4;
        if (*v4)
        {
          atomic_fetch_add(v34, 1u);
        }

        v32 = *(v25 + 9);
        v33 = v25[24];
        v25[24] = v33 + 1;
        *(v32 + 8 * v33) = v34;
        ++v4;
        --v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v35 = *v4;
        if (*v4 && v35[12])
        {
          atomic_fetch_add(v35, 1u);
          v36 = *(v25 + 9);
          v37 = v25[24];
          v25[24] = v37 + 1;
          *(v36 + 8 * v37) = v35;
        }

        ++v4;
        --v5;
      }

      while (v5);
    }
  }

  if (v25[24] == 1)
  {
    v38 = v23;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    v17 = v25;
  }

  else
  {
    v17 = **(v25 + 9);
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
    }

    ContentIndexDocSetDispose(v25);
  }

  *(v17 + 5) = a3;
  return v17;
}

atomic_uint *ContentIndexDocSetIntersectionLazy(uint64_t a1, atomic_uint **a2, float a3)
{
  v3 = a1;
  if (a1 < 1)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = a2;
    v9 = a1;
    do
    {
      v10 = *v8;
      v11 = (*v8)[12];
      if ((v11 | 2) == 2)
      {
        if (!v11)
        {
          ++v5;
        }

        v12 = *(v10 + 5);
        if (v12 == 1.0)
        {
          v12 = *(v10 + 4);
          if (v12 == 0.0)
          {
            v12 = 1.0;
          }
        }

        a3 = v12 + a3;
        v6 = 1;
      }

      if (v11 == 1)
      {
        v13 = *(v10 + 5);
        if (v13 == 1.0)
        {
          v13 = *(v10 + 3);
          if (v13 == 0.0)
          {
            v13 = 1.0;
          }
        }

        ++v7;
        a3 = v13 + a3;
      }

      v4 |= v10[13];
      ++v8;
      --v9;
    }

    while (v9);
  }

  if (v7 != a1)
  {
    result = *a2;
    if (v5 == v3)
    {
      goto LABEL_21;
    }

    v16 = a2;
    v17 = a3;
    if (v6)
    {
      v18 = 2;
    }

    else
    {
      v18 = 5;
    }

    v19 = MEMORY[0x1E69E9AC8];
    if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
    {
      ++sTotal_6326;
    }

    v20 = *(result + 7);
    v21 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
    if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v33[0] = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v33, 2u);
    }

    atomic_store(1u, v21);
    v21[1] = -1073627135;
    *(v21 + 7) = v20;
    *(v21 + 5) = -1;
    v21[12] = v18;
    v21[13] = v4;
    v22 = 8 * v3;
    if (!(v3 >> 14) && *v19 < v22)
    {
      ++sTotal_6326;
    }

    v23 = malloc_type_zone_calloc(queryZone, 1uLL, v22, 0x5BAF1CEAuLL);
    if (!v23 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    *(v21 + 9) = v23;
    v24 = LODWORD(v17);
    if (v3 >= 1)
    {
      v25 = 0;
      do
      {
        v26 = *v16;
        if (v25 != *v16)
        {
          if (v26)
          {
            if (v26[12] >= 2)
            {
              atomic_fetch_add(v26, 1u);
              v27 = *(v21 + 9);
              v28 = v21[24];
              v21[24] = v28 + 1;
              *(v27 + 8 * v28) = v26;
            }

            v25 = *v16;
          }

          else
          {
            v25 = 0;
          }
        }

        ++v16;
        --v3;
      }

      while (v3);
    }

    if (v21[24] == 1)
    {
      v29 = **(v21 + 9);
      v30 = *(v29 + 52);
      if (v30 <= v4)
      {
        v30 = v4;
      }

      if ((v6 & 1) == 0)
      {
        *(v29 + 52) = v30;
        v31 = **(v21 + 9);
        if (v31)
        {
          atomic_fetch_add(v31, 1u);
        }

        v32 = v31;
        ContentIndexDocSetDispose(v21);
        result = v32;
        v24 = LODWORD(v17);
        goto LABEL_56;
      }

      v21[13] = v30;
    }

    result = v21;
LABEL_56:
    result[5] = v24;
    return result;
  }

  result = *a2;
LABEL_21:
  v15 = result[13];
  if (v15 <= v4)
  {
    v15 = v4;
  }

  result[13] = v15;
  *(result + 5) = a3;
  atomic_fetch_add(result, 1u);
  return result;
}

unint64_t ContentIndexDocSetHash(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1 ^ (*(a1 + 33) << 10) ^ (16 * *(a1 + 52));
  if (v1 < 4 || v1 == 8)
  {
    return v2 ^ *(a1 + 64);
  }

  v5 = *(a1 + 96);
  v6 = (*(a1 + 34) << 16) ^ (v5 << 11) ^ v2 ^ *(a1 + 20);
  v7 = 8 * v5;
  v8 = v6 ^ 0x971E137B;
  if (((8 * v5) | 3u) >= 7)
  {
    v9 = *(a1 + 72) + v7;
    v10 = -(v7 >> 2);
    v11 = -1789642873;
    v12 = 718793509;
    do
    {
      v11 = 5 * v11 + 2071795100;
      v12 = 5 * v12 + 1808688022;
      HIDWORD(v13) = v11 * *(v9 + 4 * v10);
      LODWORD(v13) = HIDWORD(v13);
      v14 = (v13 >> 21) * v12;
      HIDWORD(v13) = v8;
      LODWORD(v13) = v8;
      v8 = v14 ^ (5 * (v13 >> 19) + 1390208809);
    }

    while (!__CFADD__(v10++, 1));
  }

  v16 = (-2048144789 * (v8 ^ v7)) ^ ((-2048144789 * (v8 ^ v7)) >> 13);
  return v6 ^ ((-1028477387 * v16) >> 16) ^ (-1028477387 * v16);
}

void UInt32TrieCreate(unsigned int a1, void **a2)
{
  if (a1 >= 257)
  {
    v6 = __si_assert_copy_extra(0);
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s bad length: %d", "FindTermIDs.c", 82, "size <= 256", v8, a1);
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

  v3 = 8 * a1 + 40;
  if (a1 == 256)
  {
    (*a2)[1] = ((*a2)[1] + 7) & 0xFFFFFFFFFFFFFFF8;
    v4 = (*a2)[1];
    if (&v4[v3 + 8] >= (*a2)[2])
    {
      v4 = slab_new(a2, 0x828uLL, 0xF8u);
    }

    else
    {
      (*a2)[1] = &v4[v3];
    }

    bzero(v4, 0x828uLL);
  }

  else
  {
    if (*MEMORY[0x1E69E9AC8] < v3)
    {
      ++sTotal_8910;
    }

    v4 = malloc_type_zone_calloc(queryZone, 1uLL, 8 * a1 + 40, 0x5BAF1CEAuLL);
    if (!v4)
    {
      _log_fault_for_malloc_failure();
      __break(1u);
      return;
    }
  }

  if (a1 == 256)
  {
    v5 = -1;
  }

  else
  {
    v5 = a1;
  }

  v4[37] = v5;
}

atomic_uint *_ContentIndexDocSetRetain(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add(a2, 1u);
  }

  return result;
}

BOOL ContentIndexDocSetEquals(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 33) == *(a2 + 33))
  {
    v2 = *(a1 + 48);
    if (*(a1 + 48) == *(a2 + 48) && *(a1 + 20) == *(a2 + 20) && (v2 >= 9 || ((0x10Fu >> v2) & 1) == 0) && *(a1 + 34) == *(a2 + 34))
    {
      v4 = *(a1 + 96);
      if (v4 == *(a2 + 96))
      {
        return memcmp(*(a1 + 72), *(a2 + 72), 8 * v4) == 0;
      }
    }
  }

  return 0;
}

uint64_t flatPageSearchBucketCompare(unsigned int **a1, unsigned int **a2)
{
  v2 = **a1 >> 3;
  v3 = **a2 >> 3;
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v5 = **a1 >> 3;
    v6 = **a2 >> 3;
    v7 = __si_assert_copy_extra(0);
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s duplicate pages %ld %ld", "FindTermIDs.c", 617, "false", v9, v5, v6);
    free(v8);
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

  return 0xFFFFFFFFLL;
}

uint64_t flattenChildrenAtIndex(void *value, unsigned int a2, CFSetRef theSet)
{
  v3 = *(*(value + 9) + 8 * a2);
  v4 = *(v3 + 96);
  if (!v4)
  {
    return 0;
  }

  if (theSet)
  {
    v8 = CFSetGetValue(theSet, value);
    v9 = v8 == value;
    if (v8 == value)
    {
      atomic_fetch_add(value, 1u);
      CFSetRemoveValue(theSet, value);
    }

    v4 = *(v3 + 96);
    if (v4 < 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (v4 < 2)
    {
      goto LABEL_7;
    }
  }

  v10 = malloc_type_realloc(*(value + 9), 8 * (v4 + *(value + 24) - 1), 0x2004093837F09uLL);
  *(value + 9) = v10;
  memmove(&v10[8 * *(v3 + 96) + 8 * a2], &v10[8 * a2 + 8], 8 * (*(value + 24) + ~a2));
  v4 = *(v3 + 96);
LABEL_7:
  if (v4)
  {
    v11 = 0;
    do
    {
      v13 = *(*(v3 + 72) + 8 * v11);
      if (v13)
      {
        atomic_fetch_add(v13, 1u);
      }

      *(*(value + 9) + 8 * (a2 + v11++)) = v13;
      v12 = *(v3 + 96);
    }

    while (v11 < v12);
    v14 = (v12 - 1);
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  *(value + 24) += v14;
  if (v9)
  {
    CFSetSetValue(theSet, value);
    ContentIndexDocSetDispose(value);
  }

  ContentIndexDocSetDispose(v3);
  return v14;
}

uint64_t findHandleMatch(uint64_t result, uint64_t a2, size_t a3, unsigned __int8 *a4, uint64_t a5, char a6)
{
  v6 = result;
  if (!a5)
  {
    v29 = __si_assert_copy_extra_2708(*(*(result + 8) + 4576));
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s invalid len", "BurstTrie.c", 3457, "str_len", v31);
    free(v30);
    if (__valid_fsp(*(v6[1] + 4576)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (*(result + 48))
  {
    v8 = a2;
  }

  else
  {
    v8 = a2;
  }

  v9 = *(result + 1248);
  v10 = *(v9 + 4);
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10 - 1;
  v12 = *v9;
  v13 = *(v9 + 2);
  v21 = v12 == 0;
  v14 = 3;
  if (!v21)
  {
    v14 = 4;
  }

  if ((*(v13 + (v11 << v14)) & 0x3FFFFFFFFFFFFFFFLL) != v8)
  {
LABEL_21:
    if ((a6 & 1) != 0 || (v15 = *(result + 1240), v16 = *(v15 + 20), v16 == -1) || ((v17 = *(v15 + 16), v18 = a4, v19 = a5, result = termPropertyID(a4, a5), result != v16) ? (!(v17 & 0x3080 | v16) ? (v21 = result == 2) : (v21 = 0), v21 ? (v20 = 0) : (v20 = 1)) : (v20 = 0), a4 = v18, LODWORD(a5) = v19, (v20 & 1) == 0))
    {
      if (v8)
      {
        if (v6[157])
        {
          if (a3)
          {
            v22 = a4;
            v23 = a5;
            v24 = termPropertyID(a4, a5);
            v25 = v22[v23 - 1];
            v26 = v6[156];
            if (!v24)
            {
              if (v25 == 3)
              {
                v27 = v8 | 0x4000000000000000;
              }

              else
              {
                v27 = v8;
              }

              oqpush(v26, v27, a3);
              v26 = v6[157];
              v28 = a3;
              goto LABEL_37;
            }

            if (v25 != 3)
            {
              goto LABEL_36;
            }

LABEL_33:
            v28 = v8 | 0x4000000000000000;
LABEL_37:

            return oqpush(v26, v28, a3);
          }

          if (a4[(a5 - 1)] == 3)
          {
LABEL_32:
            v26 = v6[156];
            goto LABEL_33;
          }

          result = termPropertyID(a4, a5);
          if (!result)
          {
            return result;
          }
        }

        else if (a4[(a5 - 1)] == 3)
        {
          goto LABEL_32;
        }

        v26 = v6[156];
LABEL_36:
        v28 = v8;
        goto LABEL_37;
      }
    }
  }

  return result;
}

uint64_t oqpush(uint64_t result, uint64_t a2, size_t size)
{
  if (*result == 1)
  {
    v19 = __si_assert_copy_extra_2708(0);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 332, "!oqueue->has_meta", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (*(result + 56))
  {
    if (*(result + 64) < (a2 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v22 = __si_assert_copy_extra_2708(0);
      v5 = v22;
      v6 = "";
      if (v22)
      {
        v6 = v22;
      }

      v7 = "!queue->split || queue->splitPoint >= offset_t_GET_VALUE(value)";
LABEL_26:
      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, v7, v6);
      free(v5);
      if (__valid_fs(-1))
      {
        v23 = 2989;
      }

      else
      {
        v23 = 3072;
      }

      *v23 = -559038737;
      abort();
    }

    v3 = *(result + 32);
    if (v3 >= *(result + 24))
    {
      v4 = __si_assert_copy_extra_2708(0);
      v5 = v4;
      v6 = "";
      if (v4)
      {
        v6 = v4;
      }

      v7 = "!queue->split";
      goto LABEL_26;
    }
  }

  else
  {
    v8 = *(result + 24);
    v3 = *(result + 32);
    if (v3 >= v8)
    {
      v9 = a2;
      v10 = 2 * v8;
      if (!v8)
      {
        v10 = 4;
      }

      *(result + 24) = v10;
      v11 = result;
      v12 = *(result + 16);
      v13 = 8 * v10;
      if (v12)
      {
        v14 = malloc_type_zone_realloc(queryZone, v12, v13, 0xA1A7ADA0uLL);
      }

      else
      {
        v14 = malloc_type_zone_malloc(queryZone, v13, 0x566E289CuLL);
      }

      v15 = v14;
      a2 = v9;
      result = v11;
      if (!v15)
      {
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
        a2 = v9;
        v17 = v16;
        result = v11;
        if (v17)
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          result = v11;
          a2 = v9;
        }
      }

      *(result + 16) = v15;
      v3 = *(result + 32);
    }
  }

  v18 = *(result + 16);
  *(result + 32) = v3 + 1;
  *(v18 + 8 * v3) = a2;
  return result;
}

void ContentIndexDocSetCreatePhraseIterators(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (v6 > 9)
  {
    assert_invalid_doc_type(a1);
  }

  v7 = 1 << v6;
  if ((v7 & 0x10F) == 0)
  {
    if ((v7 & 0xF0) != 0)
    {
      if (*(a1 + 96))
      {
        v11 = 0;
        do
        {
          ContentIndexDocSetCreatePhraseIterators(*(*(a1 + 72) + 8 * v11++), a2, a3, a4, a5);
        }

        while (v11 < *(a1 + 96));
      }

      return;
    }

    if (*(a1 + 112))
    {
      return;
    }

    v63[1] = v63;
    MEMORY[0x1EEE9AC00](a5);
    v13 = v63 - ((v12 + 15) & 0xFFFFFFFF0);
    bzero(v13, v12);
    v14 = *(a1 + 96);
    if (!v14)
    {
      goto LABEL_17;
    }

    v15 = *(a1 + 72);
    if (v14 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14 & 0xFFFFFFFE;
      v17 = v15 + 8;
      v18 = v13 + 8;
      v19 = v16;
      do
      {
        v20 = *(*v17 + 72);
        *(v18 - 1) = *(*(v17 - 8) + 72);
        *v18 = v20;
        v17 += 16;
        v18 += 2;
        v19 -= 2;
      }

      while (v19);
      if (v16 == v14)
      {
        goto LABEL_17;
      }
    }

    v21 = v14 - v16;
    v22 = 8 * v16;
    v23 = &v13[8 * v16];
    v24 = (v15 + v22);
    do
    {
      v25 = *v24++;
      *v23 = *(v25 + 72);
      v23 += 8;
      --v21;
    }

    while (v21);
LABEL_17:
    v26 = (*(a1 + 56) + 36);
    v27 = atomic_load(v26);
    v28 = atomic_load(v26);
    v29 = atomic_load((*(a1 + 56) + 36));
    v30 = *(a1 + 96);
    v65 = v13;
    v66 = 8 * v30;
    v31 = 8 * v30 + 3352;
    if (v30 <= 0x3E5C && *MEMORY[0x1E69E9AC8] < v31)
    {
      ++sTotal_13683;
    }

    v64 = v28 & 0x40;
    v32 = v27 & 4;
    v33 = v29 & 0xC;
    v34 = malloc_type_zone_calloc(queryZone, 1uLL, v31, 0x5BAF1CEAuLL);
    v35 = v34;
    if (v34)
    {
      v34[1] = v30;
      v34[2] = 1;
      v36 = v34;
      if (v30)
      {
        v36 = malloc_type_zone_malloc(queryZone, v66 + 16, 0xA4971684uLL);
        if (!v36)
        {
          _log_fault_for_malloc_failure();
        }

        *v35 = v36;
      }

      *v36 = 0;
    }

    else
    {
      _log_fault_for_malloc_failure();
      pqinit_ItemIteratorRef(0, v30);
    }

    v67 = v35 + 395;
    v37 = v64;
    v38 = v64 >> 6;
    v35[395] = a2;
    v35[396] = 0x10000;
    *(v35 + 3176) = v32 >> 2;
    if (v32)
    {
      v39 = 0;
    }

    else
    {
      v39 = v33 == 8;
    }

    v40 = v39;
    *(v35 + 3177) = v40;
    *(v35 + 3178) = 0;
    *(v35 + 3179) = v38;
    v41 = qos_class_self();
    v42 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], v41, 0);
    v35[398] = dispatch_queue_create("com.apple.spotlight.positions", v42);
    v43 = gCPUCount;
    if (gCPUCount >= 0x10)
    {
      v44 = 16;
    }

    else
    {
      v44 = gCPUCount;
    }

    *(v35 + 795) = v44;
    if (v43)
    {
      v45 = 0;
      do
      {
        v35[v45++ + 399] = dispatch_queue_create_with_target_V2(0, 0, v35[398]);
      }

      while (v45 < *(v35 + 795));
    }

    v35[415] = dispatch_semaphore_create(16);
    if (v37 && a4)
    {
      v46 = gCPUCount;
      if (gCPUCount >= v30)
      {
        v46 = v30;
      }

      if (v46 >= 8)
      {
        v47 = 8;
      }

      else
      {
        v47 = v46;
      }

      *(v35 + 837) = v47;
      if (v46)
      {
        v48 = 0;
        v49 = v35;
        do
        {
          v50 = &v35[49 * v48 + 3];
          *(v50 + 8) = -1;
          *v50 = malloc_type_malloc(0x10004uLL, 0xEB08432EuLL);
          *(v50 + 16) = a3;
          *(v50 + 20) = a3;
          *(v50 + 32) = 1;
          *(v50 + 384) = v67;
          *(v50 + 176) = 0;
          *(v50 + 184) = 0;
          if (*(v35 + 795))
          {
            v51 = 0;
            do
            {
              *(v49 + v51 + 86) = 0;
              v49[v51++ + 27] = 0;
            }

            while (v51 < *(v35 + 795));
          }

          ++v48;
          v49 += 49;
        }

        while (v48 < *(v35 + 837));
      }
    }

    else
    {
      *(v35 + 837) = 0;
      initFileState((v35 + 3), v67, a3);
    }

    v35[417] = 0;
    v52 = *(a2 + 24) >> 1;
    v35[416] = v52;
    if (v52 >= *(a2 + 32))
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v35[416] = v53;
    memcpy(v35 + 419, v65, v66);
    if (v30)
    {
      v54 = 419;
      do
      {
        PositionIterator_Split(v35[v54], v35[416]);
        v55 = v35[v54];
        v56 = v35[416];
        if ((*v55 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          if (v56)
          {
            v57 = *v55 > (2 * v56);
          }

          else
          {
            v57 = 0;
          }

          if (v57)
          {
            v59 = __si_assert_copy_extra(0);
            v60 = v59;
            v61 = "";
            if (v59)
            {
              v61 = v59;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 4907, "!bulkIter->split ||bulkIter->future[i]->ptr <= 2*bulkIter->split", v61);
            free(v60);
            if (__valid_fs(-1))
            {
              v62 = 2989;
            }

            else
            {
              v62 = 3072;
            }

            *v62 = -559038737;
            abort();
          }

          ipqpush(v35, v55);
        }

        else if (v56)
        {
          v58 = v35[417];
          v35[417] = v58 + 1;
          v35[v58 + 419] = v55;
        }

        ++v54;
        --v30;
      }

      while (v30);
      v53 = v35[416];
    }

    if (!v53 && v35[417] >= 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "renedebug\n", buf, 2u);
    }

    *(a1 + 112) = v35;
  }
}

void ContentIndexDocSetAppendIterators(uint64_t a1, uint64_t *a2, uint64_t *a3, void **a4, const __CFSet *a5)
{
  if (CFSetContainsValue(a5, a1))
  {
    return;
  }

  CFSetAddValue(a5, a1);
  v10 = *(a1 + 48);
  if (v10 > 3)
  {
    if ((v10 - 4) < 4)
    {
      goto LABEL_5;
    }

    if (v10 != 8)
    {
      if (v10 == 9)
      {
LABEL_5:
        if (*(a1 + 96))
        {
          v11 = 0;
          do
          {
            ContentIndexDocSetAppendIterators(*(*(a1 + 72) + 8 * v11++), a2, a3, a4, a5);
          }

          while (v11 < *(a1 + 96));
        }

        return;
      }

LABEL_15:
      assert_invalid_doc_type(a1);
    }

    goto LABEL_20;
  }

  if ((v10 - 1) >= 2)
  {
    if (!v10)
    {
      return;
    }

    if (v10 != 3)
    {
      goto LABEL_15;
    }

LABEL_20:
    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = *a3;
      v15 = *a2;
      v16 = *a4;
      if (*a3 >= *a2)
      {
        *a2 = 2 * v15;
        v16 = malloc_type_realloc(v16, 16 * v15, 0x2004093837F09uLL);
        *a4 = v16;
        v13 = *(a1 + 64);
        v14 = *a3;
      }

      *a3 = v14 + 1;
      *(v16 + v14) = v13;
    }

    return;
  }

  if (*(a1 + 96))
  {
    v12 = 0;
    do
    {
      ContentIndexDocSetAppendIterators(*(*(a1 + 72) + 8 * v12++), a2, a3, a4, a5);
    }

    while (v12 < *(a1 + 96));
  }
}

void UInt32TrieFree(uint64_t a1)
{
  if (*(a1 + 37) == 255)
  {
    v2 = 256;
  }

  else
  {
    v2 = *(a1 + 36);
  }

  v3 = 0;
  v4 = 0;
  v5 = (a1 + 4);
  while (((v5->i32[v3 >> 5] >> v3) & 1) == 0)
  {
LABEL_16:
    if (++v3 == 256)
    {
      goto LABEL_17;
    }
  }

  v6 = 0;
  v7 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v7 != 2)
    {
      v9 = vcnt_s8(*(a1 + 20));
      v9.i16[0] = vaddlv_u8(v9);
      v6 = v9.u32[0];
    }

    v10 = vcnt_s8(*(a1 + 12));
    v10.i16[0] = vaddlv_u8(v10);
    v6 += v10.u32[0];
    goto LABEL_12;
  }

  v8 = v3 >> 6;
  if (v7)
  {
LABEL_12:
    v11 = vcnt_s8(*v5);
    v11.i16[0] = vaddlv_u8(v11);
    v8 = v11.u32[0] + v6;
  }

  v12 = vcnt_s8((*&v5[v7] & ~(-1 << v3)));
  v12.i16[0] = vaddlv_u8(v12);
  v13 = *(a1 + 40 + 8 * (v12.u32[0] + v8));
  if ((v13 & 1) == 0)
  {
    UInt32TrieFree(v13);
  }

  if (++v4 != v2)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v2 != 256)
  {

    free(a1);
  }
}

uint64_t oq_set_offset_at_index(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*result == 1)
  {
    v3 = __si_assert_copy_extra_3233(0, -1);
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 466, "!queue->has_meta", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  *(*(result + 16) + 8 * a2) = a3;
  return result;
}

void _qsort_offset_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  v6[1] = 0;
  *v6 = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v9 = 128;
      }

      else
      {
        v9 = v7;
      }

      v10 = &v6[2 * v7 + 1];
      while (a3 - a2 > 32)
      {
        v11 = _partition_offset_t(a1, a2, a3);
        if (v11 < a2)
        {
          v20 = __si_assert_copy_extra_332();
          v21 = v20;
          v22 = "";
          if (v20)
          {
            v22 = v20;
          }

          __message_assert(v20, "OQueue.c", 14, "q>=left", v22);
          free(v21);
          if (__valid_fs(-1))
          {
            v23 = 2989;
          }

          else
          {
            v23 = 3072;
          }

          *v23 = -559038737;
          abort();
        }

        if (v9 == v7)
        {
          heapsort_b((a1 + 8 * a2), a3 - a2 + 1, 8uLL, &__block_literal_global_26_4145);
          v7 = v9;
          goto LABEL_3;
        }

        if (v11 - a2 <= a3 - v11)
        {
          *(v10 - 1) = a2;
          *v10 = v11 - 1;
          a2 = v11;
        }

        else
        {
          *(v10 - 1) = v11;
          *v10 = a3;
          a3 = v11 - 1;
        }

        ++v7;
        v10 += 2;
        if (a3 <= a2)
        {
          goto LABEL_3;
        }
      }

      v12 = a2 - 1;
      v13 = a1 + 8 + 8 * a2;
      v14 = a2;
      do
      {
        v15 = *(a1 + 8 * v14++);
        v16 = *(a1 + 8 * v14);
        v17 = v13;
        v18 = v12;
        for (i = v14; (v15 & 0x3FFFFFFFFFFFFFFFuLL) > (v16 & 0x3FFFFFFFFFFFFFFFuLL); --v17)
        {
          *v17 = v15;
          i = v18 + 1;
          if (v18 + 1 <= a2)
          {
            break;
          }

          v15 = *(v17 - 2);
          --v18;
        }

        *(a1 + 8 * i) = v16;
        ++v12;
        v13 += 8;
      }

      while (v14 != a3);
    }

LABEL_3:
    --v7;
    v8 = &v6[2 * v7];
    a2 = *v8;
    a3 = v8[1];
  }

  while (v7);

  free(v6);
}