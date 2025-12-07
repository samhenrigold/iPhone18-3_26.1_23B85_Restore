uint64_t CICleanUpPush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &threadData[9 * a1];
  v7 = *(v5 + 8);
  v6 = *(v5 + 9);
  if (v7 >= v6)
  {
    if (v6)
    {
      v9 = 2 * v6;
    }

    else
    {
      v9 = 4;
    }

    *(v5 + 9) = v9;
    v8 = malloc_type_realloc(v5[6], 16 * v9, 0x80040803F642BuLL);
    v5[6] = v8;
    if (!*(v5 + 9))
    {
      v12 = __si_assert_copy_extra_332();
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1571, "td->cleanUpSize", v14);
      free(v13);
      if (__valid_fs(-1))
      {
        v15 = 2989;
      }

      else
      {
        v15 = 3072;
      }

      *v15 = -559038737;
      abort();
    }

    v7 = *(v5 + 8);
  }

  else
  {
    v8 = v5[6];
  }

  v10 = &v8[16 * v7];
  *v10 = a2;
  *(v10 + 1) = a3;
  *(v5 + 8) = v7 + 1;
  return v7;
}

uint64_t gatherIndexInfo(SISearchCtx_METADATA *a1, uint64_t a2, int a3)
{
  v230 = a3;
  v265 = *MEMORY[0x1E69E9840];
  v238 = a1;
  v5 = *__error();
  v6 = _SILogForLogForCategory(1);
  v7 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_1C278D000, v6, v7, "%p Start gatherIndexInfo", buf, 0xCu);
  }

  *__error() = v5;
  CFAbsoluteTimeGetCurrent();
  __dmb(0xBu);
  v8 = v238;
  v9 = *(v238 + 3);
  v10 = *(v9 + 1400);
  if (*(v238 + 69) == v10)
  {
    v11 = *(v238 + 73);
    if (v11)
    {
      v12 = *(v9 + 1384);
      if (v11 != v12)
      {
        *(v238 + 73) = v12;
        *(v8 + 70) = *(v12 + 8);
        cleanUp(v8);
        v9 = *(v8 + 3);
      }
    }

    v13 = *(v8 + 72);
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = *(v9 + 1392);
    if (v13 == v14)
    {
      goto LABEL_15;
    }

    *(v8 + 72) = v14;
    *(v8 + 71) = *(v14 + 8);
  }

  else
  {
    *(v238 + 69) = v10;
    if (*(v8 + 72))
    {
      v15 = *(v9 + 1392);
      *(v8 + 72) = v15;
      *(v8 + 71) = *(v15 + 8);
    }

    if (*(v8 + 70))
    {
      v16 = *(v9 + 1384);
      *(v8 + 73) = v16;
      *(v8 + 70) = *(v16 + 8);
    }
  }

  cleanUp(v8);
LABEL_15:
  kdebug_trace();
  Log = _MDPerf_QueryLog();
  v18 = *(v8 + 1);
  if (v18 + 1 >= 2)
  {
    v35 = Log;
    if (os_signpost_enabled(Log))
    {
      v36 = *(v18 + 608);
      v37 = qos_class_self();
      *buf = 134218240;
      *&buf[4] = v36;
      *&buf[12] = 1024;
      *&buf[14] = v37;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v18, "QueryGatherIndexInfo", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", buf, 0x12u);
    }
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v201 = *__error();
    v202 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v202, OS_LOG_TYPE_DEFAULT, "Get doc set!", buf, 2u);
    }

    *__error() = v201;
  }

  v229 = a2;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v20 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(v8 + 3) + 1192), 0x40000000, add_explicit + 1);
  v22 = v21;
  v23 = v20;
  v24 = HIDWORD(v20);
  v26 = v25;
  v27 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
  *(v27 + 216) = 0;
  v231 = *(v27 + 312);
  v28 = *(v27 + 224);
  if (v28)
  {
    v28(*(v27 + 288));
  }

  v237 = v23;
  v236 = v24;
  v235 = v26;
  v234 = v22;
  if (_setjmp(v27))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v27 + 312) = v231;
    CIOnThreadCleanUpReset(v234);
    dropThreadId(v237, 1, add_explicit + 1);
    CICleanUpReset(v237, v235);
    v31 = 0;
    goto LABEL_212;
  }

  v32 = *(v8 + 593);
  v232 = add_explicit;
  if (v32)
  {
    v33 = 0;
    v34 = v8;
    goto LABEL_109;
  }

  v226 = &buf[16];
  v227 = v242;
  v225 = &v249;
  v228 = 0;
  v29.n128_u64[0] = 134218240;
  *&v30 = 134218240;
  v223 = v30;
  v224 = v30;
  v221 = v29;
  v222 = v30;
  v220 = 32;
  v219 = 256;
  v218 = 1538202858;
  v217 = 16;
  v29.n128_u64[0] = 134217984;
  v216 = v29;
  v215 = 2761365124;
  v38 = v8;
  v39 = 0;
  while (1)
  {
    v40 = *(*(v38 + 105) + 32);
    if (v40 && *(v40 + 48))
    {
      goto LABEL_98;
    }

    if (*(v38 + 70) <= 0 && *(v38 + 71) < 1)
    {
      goto LABEL_98;
    }

    if (*(*(v38 + 13) + 96))
    {
      goto LABEL_98;
    }

    v41 = *(v38 + 13);
    do
    {
      v42 = v41;
      v41 = *(v41 + 80);
    }

    while (v41);
    if (*(*(v42 + 8) + 12))
    {
LABEL_98:
      v34 = v38;
      v33 = v39;
      goto LABEL_109;
    }

    v213 = v205;
    MEMORY[0x1EEE9AC00](v29);
    v214 = v205 - ((v43 + 15) & 0xFFFFFFFF0);
    bzero(v214, v43);
    v44 = v229;
    if (*(v38 + 208))
    {
      v45 = 32;
      v46 = 0;
      do
      {
        if (v44 && (v47 = *(v44 + 8 * v46)) != 0 || (v47 = *(*(v38 + 105) + v45)) != 0)
        {
          atomic_fetch_add(v47, 1u);
        }

        *&v214[8 * v46] = v47;
        v48 = *(v38 + 105);
        v49 = *(v48 + v45);
        if (v49)
        {
          ContentIndexDocSetCleanupBorrowedChildren(v49);
          ContentIndexDocSetDispose(*(*(v38 + 105) + v45));
          v48 = *(v38 + 105);
        }

        *(v48 + v45) = 0;
        ++v46;
        v45 += 48;
      }

      while (v46 < *(v38 + 208));
    }

    v50 = v38;
    if (v39)
    {
      ContentIndexDocSetContextRelease(v39);
      v50 = v238;
    }

    v51 = *(v50 + 70);
    if (v51)
    {
      v52 = v51 - 1;
      *(v50 + 70) = v52;
      v53 = *(**(v50 + 73) + 8 * v52);
      v54 = *__error();
      v55 = _SILogForLogForCategory(1);
      v56 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v50 + 70);
        *buf = v222;
        *&buf[4] = v50;
        *&buf[12] = 2048;
        *&buf[14] = v57;
        _os_log_impl(&dword_1C278D000, v55, v56, "%p gII live: %ld", buf, 0x16u);
      }

      *__error() = v54;
      if (!*(v50 + 70))
      {
        v58 = *(v50 + 3);
        v59 = *(v58 + 1392);
        *(v50 + 72) = v59;
        *(v50 + 71) = *(v59 + 8);
        *(v50 + 69) = *(v58 + 1400);
      }

      v60 = v53;
      v61 = v214;
    }

    else
    {
      v60 = *(v50 + 71);
      if (!v60)
      {
        v61 = v214;
        goto LABEL_62;
      }

      *(v50 + 71) = v60 - 1;
      v62 = *__error();
      v63 = _SILogForLogForCategory(1);
      v64 = 2 * (dword_1EBF46AD0 < 4);
      v65 = os_log_type_enabled(v63, v64);
      v61 = v214;
      if (v65)
      {
        v66 = *(v50 + 71);
        *buf = v221.n128_u32[0];
        *&buf[4] = v50;
        *&buf[12] = 2048;
        *&buf[14] = v66;
        _os_log_impl(&dword_1C278D000, v63, v64, "%p gII scan: %ld", buf, 0x16u);
      }

      *__error() = v62;
      v60 = *(**(v50 + 72) + 8 * *(v50 + 71));
    }

    if (*(v50 + 592) == 1 && v60 && *(v60 + 56) == *(v50 + 149))
    {
      *(v50 + 593) = 1;
    }

LABEL_62:
    v212 = v60;
    v67 = *__error();
    v68 = _SILogForLogForCategory(1);
    v69 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v68, v69))
    {
      *buf = v224;
      *&buf[4] = v50;
      *&buf[12] = 2048;
      *&buf[14] = v212;
      _os_log_impl(&dword_1C278D000, v68, v69, "%p gatherIndexInfo at %p", buf, 0x16u);
    }

    *__error() = v67;
    Current = CFAbsoluteTimeGetCurrent();
    if (*(v50 + 46))
    {
      v71 = v50;
    }

    else
    {
      v233 = v220;
      *(v50 + 47) = 0;
      if (*MEMORY[0x1E69E9AC8] <= 0xFFuLL)
      {
        ++sTotal;
      }

      v72 = malloc_type_zone_calloc(queryZone, 1uLL, v219, v218);
      if (!v72)
      {
        _log_fault_for_malloc_failure();
      }

      *(v50 + 46) = v72;
      v240[4] = v228;
      memset(v240, 0, 32);
      si_opt_cache_init(v240, *(v50 + 2));
      if (*(v50 + 208))
      {
        v73 = 0;
        v74 = *(v50 + 3);
        v209 = MEMORY[0x1E69E9820];
        v210 = v50 + 376;
        v208 = __preIterateQueryForIndex_block_invoke;
        v207 = MEMORY[0x1E69E9820];
        v206 = __preIterateQueryForIndex_block_invoke_167;
        v75 = 0;
        v76 = v72;
        do
        {
          v205[0] = v75;
          v77 = *(v50 + 105) + v73;
          v239 = *(v77 + 40);
          v78 = *(v50 + 2);
          v79 = v228;
          v243 = v228;
          v244 = &v243;
          v245 = 0x2000000000;
          v246 = v76;
          v80 = v217;
          if (!*(v74 + 2073))
          {
            v80 = v228;
          }

          if (*(v74 + 2072))
          {
            v81 = -124;
          }

          else
          {
            v81 = 12;
          }

          v241[0] = v209;
          v241[1] = 0x40000000;
          v242[0] = v208;
          v242[1] = &__block_descriptor_tmp_166;
          v242[2] = v74;
          *buf = v207;
          *&buf[8] = 0x40000000;
          *&buf[16] = v206;
          v253 = &unk_1E8196448;
          v256 = v80;
          v257 = v210;
          v254 = &v243;
          v255 = v240;
          v263 = v73 == 0;
          v258 = &v233;
          v259 = &v239;
          v260 = v74;
          v261 = v212;
          v262 = v78;
          v264 = v81;
          v82 = CICleanUpThreadLoc();
          db_string_table_rdlock(*(v74 + 1192));
          CIOnThreadCleanUpPush(v82, db_string_table_unlock, *(v74 + 1192));
          v83 = *v77;
          v247 = MEMORY[0x1E69E9820];
          v248 = 0x40000000;
          v249 = __db_query_tree_apply_block_block_invoke;
          v250 = &unk_1E8198ED0;
          v251 = v241;
          db_query_tree_apply_block_with_meta(v83, &v247, v79);
          db_optimize_query_tree(v77);
          v84 = *v77;
          v247 = MEMORY[0x1E69E9820];
          v248 = 0x40000000;
          v249 = __db_query_tree_apply_block_block_invoke;
          v250 = &unk_1E8198ED0;
          v251 = buf;
          db_query_tree_apply_block_with_meta(v84, &v247, v79);
          CIOnThreadCleanUpPop(v82);
          v72 = v244[3];
          _Block_object_dispose(&v243, 8);
          if (v239 == 1)
          {
            *(v50 + 641) = 1;
            v85 = *(v50 + 105) + v73;
            if (*(v85 + 40) != 1)
            {
              *(v50 + 642) = 0;
              *(v85 + 40) = 1;
            }
          }

          v75 = v205[0] + 1;
          v73 += 48;
          v76 = v72;
        }

        while (v205[0] + 1 < *(v50 + 208));
        v71 = v238;
        v61 = v214;
      }

      else
      {
        v71 = v50;
      }

      si_opt_cache_destroy(v240);
      *(v50 + 46) = v72;
    }

    v205[1] = v213;
    v86 = *(v71 + 1);
    *(v86 + 392) = *(v86 + 392) + CFAbsoluteTimeGetCurrent() - Current;
    v87 = CFAbsoluteTimeGetCurrent();
    v88 = *(v71 + 47);
    v89 = v88;
    v90 = CICleanUpThreadLoc();
    v247 = v71;
    v248 = v61;
    v91 = v90;
    v211 = CICleanUpPush(v90, cleanupDocSets, &v247);
    if (v88 <= 0x400)
    {
      MEMORY[0x1EEE9AC00](v92);
      v94 = v205 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v94, v93);
      MEMORY[0x1EEE9AC00](v95);
      v97 = v205 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v97, v96);
      v98 = v212;
      v99 = processNodes(v71, v212, v61, v94, v97, v89);
      if (!v99)
      {
        v117 = *__error();
        v118 = _SILogForLogForCategory(1);
        v119 = 2 * (dword_1EBF46AD0 < 4);
        v120 = os_log_type_enabled(v118, v119);
        add_explicit = v232;
        if (v120)
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v118, v119, "Got NULL context from processNodes", buf, 2u);
        }

        *__error() = v117;
        goto LABEL_108;
      }

      v100 = v94;
      v101 = v99;
      evaluateFuzzyQuery(v71, v98, v100);
      v33 = v101;
      add_explicit = v232;
      goto LABEL_92;
    }

    v102 = *__error();
    v103 = _SILogForLogForCategory(1);
    v104 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v103, v104))
    {
      v105 = *(v71 + 208);
      *buf = v223;
      *&buf[4] = v88;
      *&buf[12] = 2048;
      *&buf[14] = v105;
      _os_log_impl(&dword_1C278D000, v103, v104, "alloc %ld cinodes for %ld noded", buf, 0x16u);
    }

    *__error() = v102;
    v106 = malloc_type_zone_malloc(queryZone, 16 * v88, v215);
    if (!v106)
    {
      break;
    }

    v107 = v106;
    v108 = &v106[v88];
    v109 = v212;
    v110 = processNodes(v71, v212, v61, v106, v108, v89);
    add_explicit = v232;
    if (!v110)
    {
      v125 = *__error();
      v126 = _SILogForLogForCategory(1);
      v127 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v126, v127))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v126, v127, "Got NULL context from processNodes", buf, 2u);
      }

      *__error() = v125;
      free(v107);
      goto LABEL_108;
    }

    v33 = v110;
    evaluateFuzzyQuery(v71, v109, v107);
    free(v107);
LABEL_92:
    CFAbsoluteTimeGetCurrent();
    v34 = v238;
    v111 = *(v238 + 1);
    *(v111 + 400) = *(v111 + 400) + CFAbsoluteTimeGetCurrent() - v87;
    v112 = *__error();
    v113 = _SILogForLogForCategory(1);
    v114 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v113, v114))
    {
      v115 = CFAbsoluteTimeGetCurrent();
      *buf = v216.n128_u32[0];
      *&buf[4] = v115 - v87;
      _os_log_impl(&dword_1C278D000, v113, v114, "Computed doc set in %f seconds!", buf, 0xCu);
    }

    v116 = v211;
    *__error() = v112;
    CICleanUpClearItem(v91, v116);
    cleanupDocSets(&v247);
    if (*(v34 + 593) == 1)
    {
      v29 = 0uLL;
      *(v34 + 35) = 0u;
    }

    v38 = v34;
    v39 = v33;
    if (*(v34 + 593))
    {
      goto LABEL_109;
    }
  }

  _log_fault_for_malloc_failure();
  v121 = *__error();
  v122 = _SILogForLogForCategory(1);
  v123 = 2 * (dword_1EBF46AD0 < 4);
  v124 = os_log_type_enabled(v122, v123);
  add_explicit = v232;
  if (v124)
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v122, v123, "query_malloc failed", buf, 2u);
  }

  *__error() = v121;
LABEL_108:
  v33 = 0;
  v34 = v238;
LABEL_109:
  if (*(*(v34 + 13) + 96))
  {
    goto LABEL_113;
  }

  v128 = v230;
  v129 = *(v34 + 13);
  do
  {
    v130 = v129;
    v129 = *(v129 + 80);
  }

  while (v129);
  if (*(*(v130 + 8) + 12) == 1)
  {
LABEL_113:
    v131 = *__error();
    v132 = _SILogForLogForCategory(1);
    v133 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v132, v133))
    {
      *buf = 0;
      v134 = "Query invalidated";
      goto LABEL_133;
    }

    goto LABEL_134;
  }

  if (!v33)
  {
    v131 = *__error();
    v132 = _SILogForLogForCategory(1);
    v133 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v132, v133))
    {
      *buf = 0;
      v134 = "Null context";
LABEL_133:
      _os_log_impl(&dword_1C278D000, v132, v133, v134, buf, 2u);
    }

LABEL_134:
    v31 = 0;
    *__error() = v131;
    v8 = v34;
    goto LABEL_208;
  }

  if (*(v34 + 641) == 1 && (*(v34 + 642) & 1) == 0)
  {
    preparePostCheckQueries(&v238);
  }

  v135.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v136 = v135.n128_f64[0];
  v137 = *(*(v34 + 105) + 32);
  if (!v137 || (v138 = *(v137 + 48)) == 0)
  {
LABEL_205:
    v31 = 0;
    goto LABEL_206;
  }

  if (v138 != 1)
  {
    v247 = 0;
    v145 = *(v34 + 85);
    if (v145)
    {
      ContentIndexDocSetIteratorDispose(v145);
    }

    MEMORY[0x1EEE9AC00](v135);
    v147 = v205 - ((v146 + 15) & 0xFFFFFFFF0);
    bzero(v147, v146);
    v148 = *(v34 + 208);
    if (v148)
    {
      v149 = 0;
      v150 = 0;
      do
      {
        v151 = *(*(v34 + 105) + v150 + 32);
        *&v147[8 * v149] = v151;
        v152 = *(*(v34 + 105) + v150);
        if (v152)
        {
          v153 = *(v152 + 48);
          if (v153 == 4)
          {
            v154 = *(v152 + 16);
            if (v154)
            {
              LODWORD(v154) = (*(v154 + 24) < 0xFu) & (0x5060u >> *(v154 + 24));
            }
          }

          else
          {
            LODWORD(v154) = 0;
          }

          if (v154 != ((v153 >> 3) & 1))
          {
            *(v151 + 33) = 1;
            v148 = *(v34 + 208);
          }
        }

        ++v149;
        v150 += 48;
        v155 = v148;
      }

      while (v149 < v148);
    }

    else
    {
      v155 = 0;
    }

    if (*(v34 + 650))
    {
      v185 = *(v34 + 651);
    }

    else
    {
      v185 = 0;
    }

    Iterator = ContentIndexDocSetsCreateIterator(v147, v155, v33, v185 & 1, *(v34 + 1248), v34 + 688);
    v34 = v238;
    *(v238 + 85) = Iterator;
    v187 = *(v34 + 212);
    if (v187 && Iterator)
    {
      Iterator[8] = v187;
      Iterator = *(v34 + 85);
    }

    ContentIndexDocSet_Step(Iterator, &v247, (*(v34 + 13) + 96));
    v188 = *__error();
    v189 = _SILogForLogForCategory(10);
    v190 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v189, v190))
    {
      goto LABEL_198;
    }

    *buf = 134217984;
    *&buf[4] = v247;
    v191 = "2 - count: %ld";
    goto LABEL_197;
  }

  if (*(v34 + 23) && *(v34 + 22) || (*(v34 + 40) & 0x80) == 0 || (v139 = *(v34 + 7)) == 0 || !CFArrayGetCount(v139) || (v128 & 1) != 0)
  {
    v247 = 0;
    v156 = *(v34 + 85);
    if (v156)
    {
      ContentIndexDocSetIteratorDispose(v156);
    }

    MEMORY[0x1EEE9AC00](v135);
    v158 = (v205 - ((v157 + 15) & 0xFFFFFFFF0));
    bzero(v158, v157);
    v159 = *(v34 + 208);
    v160 = (v159 - 1);
    if (v159 <= 1)
    {
      if (v159)
      {
        v172 = 0;
        v173 = 0;
        v174 = *(v34 + 208);
        do
        {
          v175 = v172;
          v176 = *(*(v34 + 105) + v173 + 32);
          v158[v175] = v176;
          v177 = *(*(v34 + 105) + v173);
          if (v177)
          {
            v178 = *(v177 + 48);
            if (v178 == 4)
            {
              v179 = *(v177 + 16);
              if (v179)
              {
                LODWORD(v179) = (*(v179 + 24) < 0xFu) & (0x5060u >> *(v179 + 24));
              }
            }

            else
            {
              LODWORD(v179) = 0;
            }

            if (v179 != ((v178 >> 3) & 1))
            {
              *(v176 + 33) = 1;
              v174 = *(v34 + 208);
            }
          }

          v159 = v175 + 1;
          v171 = v159 >= v174;
          v172 = v159;
          v173 += 48;
          LODWORD(v159) = v174;
        }

        while (!v171);
      }
    }

    else
    {
      v161 = 8 * v159;
      v162 = 8;
      v163 = 80;
      do
      {
        v158[v162 / 8] = *(*(v34 + 105) + v163);
        v162 += 8;
        v163 += 48;
      }

      while (v161 != v162);
      *v158 = ContentIndexDocSetUnionLazy(v160, v158 + 1, 0.0);
      LODWORD(v159) = *(v34 + 208);
      if (v159 >= 2)
      {
        v164 = 1;
        v165 = 48;
        v166 = *(v34 + 208);
        do
        {
          v167 = v164;
          v168 = *(*(v34 + 105) + v165);
          if (v168)
          {
            v169 = *(v168 + 48);
            if (v169 == 4)
            {
              v170 = *(v168 + 16);
              if (v170)
              {
                LODWORD(v170) = (*(v170 + 24) < 0xFu) & (0x5060u >> *(v170 + 24));
              }
            }

            else
            {
              LODWORD(v170) = 0;
            }

            if (v170 != ((v169 >> 3) & 1))
            {
              *(v158[v167] + 33) = 1;
              v166 = *(v34 + 208);
            }
          }

          v159 = v167 + 1;
          v171 = v159 >= v166;
          v164 = v159;
          v165 += 48;
          LODWORD(v159) = v166;
        }

        while (!v171);
      }
    }

    if (*(v34 + 650) == 1)
    {
      v180 = *(v34 + 651);
    }

    else
    {
      v180 = 0;
    }

    v181 = ContentIndexDocSetsCreateIterator(v158, v159, v33, v180 & 1, *(v34 + 1248), v34 + 688);
    v34 = v238;
    *(v238 + 85) = v181;
    v182 = v181;
    if (*(v34 + 208) >= 2u)
    {
      ContentIndexDocSetDispose(*v158);
      v182 = *(v34 + 85);
    }

    v183 = *(v34 + 212);
    if (v183)
    {
      if (v182)
      {
        v182[8] = v183;
        v184 = *(v34 + 85);
      }

      else
      {
        v184 = 0;
      }
    }

    else
    {
      v184 = v182;
    }

    ContentIndexDocSet_Step(v184, &v247, (*(v34 + 13) + 96));
    v188 = *__error();
    v189 = _SILogForLogForCategory(10);
    v190 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v189, v190))
    {
      goto LABEL_198;
    }

    *buf = 134217984;
    *&buf[4] = v247;
    v191 = "1 - count: %ld";
LABEL_197:
    _os_log_impl(&dword_1C278D000, v189, v190, v191, buf, 0xCu);
LABEL_198:
    *__error() = v188;
LABEL_199:
    v31 = 1;
LABEL_206:
    v8 = v34;
    goto LABEL_207;
  }

  v140 = *(v34 + 105);
  query_node_with_ann = *(v140 + 8);
  if (query_node_with_ann)
  {
    v142 = *(v140 + 16);
    if (v142)
    {
      *(v34 + 102) = makeAndNode(query_node_with_ann, v142, 1, 1);
      v143 = *(v34 + 105);
      *(v143 + 8) = 0;
      *(v143 + 16) = 0;
      v144 = *(v34 + 102);
      goto LABEL_203;
    }

    *(v34 + 102) = query_node_with_ann;
    *(v140 + 8) = 0;
  }

  else
  {
    query_node_with_ann = db_make_query_node_with_ann("*=*", 0);
    *(v34 + 102) = query_node_with_ann;
  }

  v144 = query_node_with_ann;
LABEL_203:
  v192 = db_open_query_with_expr(*(*(v34 + 3) + 1192), v144);
  *(v34 + 103) = v192;
  if (v192)
  {
    goto LABEL_199;
  }

  if (dword_1EBF46AD0 < 5)
  {
    goto LABEL_205;
  }

  v203 = *__error();
  v204 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v204, OS_LOG_TYPE_DEFAULT, "Couldn't create raw sdb iterator", buf, 2u);
  }

  v31 = 0;
  *__error() = v203;
  v8 = v34;
  add_explicit = v232;
LABEL_207:
  *(*(v8 + 1) + 408) = *(*(v8 + 1) + 408) + CFAbsoluteTimeGetCurrent() - v136;
LABEL_208:
  v193 = threadData[9 * v237 + 1] + 320 * v236;
  *(v193 + 312) = v231;
  v194 = *(v193 + 232);
  if (v194)
  {
    v194(*(v193 + 288));
  }

  dropThreadId(v237, 0, add_explicit + 1);
  if (v33)
  {
    ContentIndexDocSetContextRelease(v33);
    v8 = v238;
  }

LABEL_212:
  kdebug_trace();
  v195 = _MDPerf_QueryLog();
  v196 = *(v8 + 1);
  if (v196 + 1 >= 2)
  {
    v198 = v195;
    if (os_signpost_enabled(v195))
    {
      v199 = *(v196 + 608);
      v200 = qos_class_self();
      *buf = 134218240;
      *&buf[4] = v199;
      *&buf[12] = 1024;
      *&buf[14] = v200;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v198, OS_SIGNPOST_INTERVAL_END, v196, "QueryGatherIndexInfo", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", buf, 0x12u);
    }
  }

  return v31;
}

void clear_node_field_caches(query_node *a1)
{
  var0 = a1->var0;
  if (var0)
  {
    clear_node_field_caches(var0);
  }

  var1 = a1->var1;
  if (var1)
  {
    clear_node_field_caches(var1);
  }

  var2 = a1->var2;
  if (var2)
  {
    v5 = *(var2 + 15);
    if (v5 != -1)
    {
      if (!v5)
      {
LABEL_11:
        var4 = a1->var4;
        if (var4 && var2 && (*(var2 + 33) & 8) == 0)
        {
          if (var4 != -1)
          {
            ContentIndexDocSetDispose(var4);
          }

          a1->var4 = 0;
        }

        return;
      }

      v6 = *(var2 + 16);
      if (v6)
      {
        v6();
        var2 = a1->var2;
      }
    }

    *(var2 + 15) = 0;
    *(var2 + 16) = 0;
    goto LABEL_11;
  }
}

void evaluateFuzzyQuery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v5 = *__error();
  v6 = _SILogForLogForCategory(1);
  v7 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v6, v7))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&dword_1C278D000, v6, v7, "evaluateFuzzyQuery for %p", &buf, 0xCu);
  }

  *__error() = v5;
  if (*(a1 + 832))
  {
    v8 = 0;
    v9 = 0;
    v35 = MEMORY[0x1E69E9820];
    v36 = *(a1 + 24);
    v10 = *(a1 + 840);
    do
    {
      v11 = (v10 + v8);
      v40 = *(v11 + 40);
      v12 = *v11;
      v39[0] = v35;
      v39[1] = 0x40000000;
      v39[2] = ___ZL19_evaluateFuzzyQueryP20SISearchCtx_METADATAP14__ContentIndexPP19_ContentIndexDocSetPm_block_invoke;
      v39[3] = &__block_descriptor_tmp_182;
      v39[4] = a1;
      if (v12 && (*(v12 + 56) & 1) != 0)
      {
        v14 = *(v12 + 24);
        if (!v14)
        {
          v14 = malloc_type_calloc(0x20uLL, 1uLL, 0xAEF55CC4uLL);
          *(v12 + 24) = v14;
        }

        v14[3] = 0;
        v14[1] = 0;
        v13 = 1;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v44 = __evaluateFuzzyQueryForIndex_block_invoke;
      v45 = &unk_1E8196470;
      v54 = v8 == 0;
      v48 = a2;
      v49 = a3;
      v50 = &v38;
      v51 = v12;
      v47 = &v40;
      v46 = v39;
      v55 = v13;
      v52 = v14;
      v53 = v36;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 0x40000000;
      v41[2] = __evaluateFuzzyQueryForIndex_block_invoke_184;
      v41[3] = &__block_descriptor_tmp_187;
      v41[4] = a2;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 0x40000000;
      v42[2] = __db_query_tree_apply_block_block_invoke;
      v42[3] = &unk_1E8198ED0;
      v42[4] = &buf;
      db_query_tree_apply_block_with_meta(v12, v42, v41);
      if (!Empty)
      {
        Empty = ContentIndexDocSetCreateEmpty(a2);
      }

      v10 = *(a1 + 840);
      v16 = v10 + v8;
      *(v10 + v8 + 32) = Empty;
      if (v40 == 1)
      {
        *(a1 + 641) = 1;
        if (*(v16 + 40) != 1)
        {
          *(a1 + 642) = 0;
          *(v16 + 40) = 1;
        }
      }

      ++v9;
      v8 += 48;
    }

    while (v9 < *(a1 + 832));
  }

  v17 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &kCIDocSetSetCallbacks);
  if (*(a1 + 832))
  {
    v19 = 0;
    v20 = *(a1 + 840);
    v21 = 32;
    do
    {
      _ContentIndexDocSetIteratorMarkNegation(*(v20 + v21), 0);
      v22 = *(*(a1 + 840) + v21);
      v23 = CFArrayCreateMutable(v17, 2, 0);
      v24 = _ContentIndexMemoizeDocSet(v22, Mutable, v23);
      CFRelease(v23);
      v20 = *(a1 + 840);
      *(v20 + v21) = v24;
      ++v19;
      v25 = *(a1 + 832);
      v21 += 48;
    }

    while (v19 < v25);
    if (v25)
    {
      v26 = 0;
      v27 = 32;
      do
      {
        v28 = *(*(a1 + 840) + v27);
        ContentIndexFlattenDocSet(v28, Mutable);
        _ContentIndexOptimizeDocSet(v28, 0, 0, Mutable);
        ++v26;
        v27 += 48;
      }

      while (v26 < *(a1 + 832));
    }
  }

  CFRelease(Mutable);
  v29 = *(a1 + 848);
  if (v29)
  {
    ContentIndexOrganizeWeightedTree(*(*(a1 + 840) + 48 * v29 + 32));
    v30 = *(*(a1 + 840) + 48 * *(a1 + 848) + 32);
    ContentIndexAnnotateWeightedTreeInner(v30, 0.0);
    *(v30 + 28) = *(v30 + 24);
  }

  if (v38 != *(a1 + 376))
  {
    v31 = __si_assert_copy_extra_332();
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 5769, "idx==ctx->cinodeCount", v33);
    free(v32);
    if (__valid_fs(-1))
    {
      v34 = 2989;
    }

    else
    {
      v34 = 3072;
    }

    *v34 = -559038737;
    abort();
  }
}

uint64_t _ContentIndexDocSetIteratorMarkNegation(uint64_t result, unsigned int a2)
{
  v2 = result;
  *(result + 34) = a2;
  v3 = *(result + 48);
  if (v3 > 9)
  {
    assert_invalid_doc_type(result);
  }

  v4 = 1 << v3;
  if ((v4 & 0x10F) == 0)
  {
    if ((v4 & 0xF0) != 0)
    {
      if (*(result + 64))
      {
        return result;
      }
    }

    else
    {
      *(result + 128) ^= 0x80000000;
      if (*(result + 64))
      {
        return result;
      }
    }

    if (*(result + 96))
    {
      v6 = 0;
      v7 = a2 ^ 1;
      do
      {
        v8 = *(v2 + 48);
        if (v8 == 6)
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }

        if ((v8 - 4) < 2 || v8 == 7)
        {
          v11 = a2;
        }

        else
        {
          v11 = v9;
        }

        result = _ContentIndexDocSetIteratorMarkNegation(*(*(v2 + 72) + 8 * v6++), v11);
      }

      while (v6 < *(v2 + 96));
    }
  }

  return result;
}

atomic_uint *_ContentIndexMemoizeDocSet(uint64_t a1, const __CFSet *a2, __CFArray *a3)
{
  v3 = a1;
  if (a1 && (*(a1 + 48) & 0xFFFFFFFC) == 4)
  {
    if (*(a1 + 96))
    {
      v6 = 0;
      do
      {
        *(*(v3 + 72) + 8 * v6) = _ContentIndexMemoizeDocSet(*(*(v3 + 72) + 8 * v6), a2, a3);
        ++v6;
      }

      while (v6 < *(v3 + 96));
    }

    Value = CFSetGetValue(a2, v3);
    if (Value)
    {
      if (Value != v3)
      {
        atomic_fetch_add(Value, 1u);
        v8 = Value;
        ContentIndexDocSetDispose(v3);
        CFArrayRemoveAllValues(a3);
        CFArrayAppendValue(a3, v8);
        return v8;
      }
    }

    else
    {
      CFSetAddValue(a2, v3);
      v10.length = CFArrayGetCount(a3);
      v10.location = 0;
      CFArrayApplyFunction(a3, v10, setShared, 0);
      CFArrayRemoveAllValues(a3);
    }
  }

  return v3;
}

void ContentIndexDocSetCleanupBorrowedChildren(uint64_t a1)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  _ContentIndexDocSetCleanupBorrowedChildren(a1, Mutable);

  CFRelease(Mutable);
}

void ContentIndexDocSetContextRelease(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v3 = a1[2];
    if (v3)
    {
      v4 = *(v3 + 4496);
      if (v4 != -1)
      {
        _fd_release_fd(*(v3 + 4488), v4, 0, *(v3 + 4504));
        *(v3 + 4496) = -1;
      }

      fd_release(*(v3 + 4488));
      free(v3);
    }

    v5 = a1[1];
    if (v5)
    {
      v6 = *(v5 + 4496);
      if (v6 != -1)
      {
        _fd_release_fd(*(v5 + 4488), v6, 0, *(v5 + 4504));
        *(v5 + 4496) = -1;
      }

      fd_release(*(v5 + 4488));
      free(v5);
    }

    v7 = a1[3];
    if (v7)
    {
      posreadunlock(v7);
    }

    free(a1);
  }
}

void ContentIndexDocSetDispose(uint64_t a1)
{
  if (!a1 || atomic_fetch_add(a1, 0xFFFFFFFF) != 1)
  {
    return;
  }

  v2 = *(a1 + 48);
  if (v2 > 3)
  {
    if ((v2 - 4) >= 4)
    {
      if (v2 != 9)
      {
        if (v2 == 8)
        {
          v3 = *(a1 + 64);
          if (v3)
          {
            PayloadIteratorDestroy__Positions(v3);
            free(*(a1 + 64));
          }

          v4 = *(a1 + 72);
          if (v4)
          {
            PositionIteratorDestroy(v4);
            free(*(a1 + 72));
          }

          if (*(a1 + 80))
          {
            (*(a1 + 96))();
          }

          if (*(a1 + 88))
          {
            (*(a1 + 96))();
          }
        }

        goto LABEL_40;
      }

      v7 = *(a1 + 112);
      if (v7)
      {
        BulkPositionIterator_Dispose(v7);
      }

      if ((*(a1 + 128) & 0x7FFFFFFF) != 0)
      {
        v8 = 0;
        do
        {
          ContentIndexDocSetDispose(*(*(a1 + 120) + 8 * v8++));
        }

        while (v8 < (*(a1 + 128) & 0x7FFFFFFFu));
      }

      v9 = *(a1 + 120);
      if (v9 != -1)
      {
        free(v9);
      }
    }

    goto LABEL_27;
  }

  if ((v2 - 1) < 2)
  {
LABEL_27:
    v10 = *(a1 + 80);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 88);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 136);
    if (v13)
    {
      free(v13);
    }

    if (*(a1 + 96))
    {
      v14 = 0;
      do
      {
        ContentIndexDocSetDispose(*(*(a1 + 72) + 8 * v14++));
      }

      while (v14 < *(a1 + 96));
    }

    v6 = *(a1 + 72);
    goto LABEL_39;
  }

  if (v2 == 3)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      PayloadIteratorDestroy(v5);
      v6 = *(a1 + 64);
LABEL_39:
      free(v6);
    }
  }

LABEL_40:

  free(a1);
}

void fd_release(atomic_uint *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1 + 8, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1 != -50529037)
    {
      v4 = __si_assert_copy_extra_661(-1);
      v5 = v4;
      v6 = "";
      if (v4)
      {
        v6 = v4;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 495, "obj->_magic==(0xFCFCFCF3)", v6);
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

    v8 = 0;
    pthread_mutex_lock(&g_fd_lock);
    v2 = _fd_remove_locked(a1, &v8);
    pthread_mutex_unlock(&g_fd_lock);
    if (v2 != -1)
    {
      guarded_close_np();
    }

    *a1 = 0;
    free(*(a1 + 9));
    v3 = *(a1 + 10);
    if (v3)
    {
      fd_release(v3);
    }

    free(a1);
  }
}

void cleanupDocSets(void *a1)
{
  v1 = *(*a1 + 832);
  if (v1)
  {
    v3 = 0;
    v4 = 8 * v1;
    do
    {
      v5 = *(a1[1] + v3);
      if (v5)
      {
        ContentIndexDocSetCleanupBorrowedChildren(v5);
        ContentIndexDocSetDispose(*(a1[1] + v3));
        *(a1[1] + v3) = 0;
      }

      v3 += 8;
    }

    while (v4 != v3);
  }
}

void _ContentIndexDocSetCleanupBorrowedChildren(uint64_t a1, const __CFSet *a2)
{
  if (CFSetContainsValue(a2, a1))
  {
    return;
  }

  CFSetAddValue(a2, a1);
  v4 = *(a1 + 48);
  if (v4 > 9)
  {
    return;
  }

  if (((1 << v4) & 0xF6) != 0)
  {
    if (*(a1 + 96))
    {
      goto LABEL_5;
    }

LABEL_17:
    if ((*(a1 + 64) & 1) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v4 != 9)
  {
    return;
  }

  v8 = *(a1 + 128);
  if ((v8 & 0x7FFFFFFF) != 0)
  {
    v9 = 0;
    do
    {
      _ContentIndexDocSetCleanupBorrowedChildren(*(*(a1 + 120) + 8 * v9), a2);
      ContentIndexDocSetDispose(*(*(a1 + 120) + 8 * v9));
      *(*(a1 + 120) + 8 * v9++) = 0;
      v8 = *(a1 + 128);
    }

    while (v9 < (v8 & 0x7FFFFFFFu));
  }

  *(a1 + 128) = v8 & 0x80000000;
  if (!*(a1 + 96))
  {
    goto LABEL_17;
  }

LABEL_5:
  v5 = 0;
  do
  {
    _ContentIndexDocSetCleanupBorrowedChildren(*(*(a1 + 72) + 8 * v5++), a2);
    v6 = *(a1 + 96);
  }

  while (v5 < v6);
  if (*(a1 + 64))
  {
    if (v6)
    {
      v7 = 0;
      do
      {
        ContentIndexDocSetDispose(*(*(a1 + 72) + 8 * v7++));
      }

      while (v7 < *(a1 + 96));
    }

LABEL_18:
    *(a1 + 64) = 0;
    *(a1 + 96) = 0;
  }
}

void userinteractive_query_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

uint64_t __preIterateQueryForIndex_block_invoke(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48) & 0xFFF7;
  if (v4 > 0x20)
  {
    goto LABEL_74;
  }

  if (((1 << (*(a2 + 48) & 0xF7)) & 0x100010006) != 0)
  {
    return a2;
  }

  if (v4 != 4)
  {
LABEL_74:
    v42 = __si_assert_copy_extra_661(*(*(a1 + 32) + 32));
    __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected type %d");
    goto LABEL_75;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v32 = *__error();
    v33 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "Factor.", buf, 2u);
    }

    *__error() = v32;
  }

  v6 = *(a2 + 16);
  if ((*(v6 + 33) & 8) == 0)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v34 = *__error();
      v35 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v35, OS_LOG_TYPE_DEFAULT, "Metadata or Content.", buf, 2u);
      }

      *__error() = v34;
      v6 = *(a2 + 16);
    }

    v7 = *(v6 + 24);
    if ((v7 - 11) < 2)
    {
      v9 = *v6;
      if (dword_1EBF46AD0 >= 5)
      {
        v36 = *v6;
        v37 = *__error();
        v38 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "Range query.", buf, 2u);
        }

        *__error() = v37;
        v6 = *(a2 + 16);
        v9 = v36;
      }

      if (*(v6 + 40) != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if ((v7 - 13) < 2)
    {
      v8 = *(a1 + 32);
      v9 = *v6;
LABEL_16:
      if (db_get_id_for_field_locked(*(v8 + 1192), v9) != -2)
      {
        return a2;
      }

      goto LABEL_17;
    }

    if (v7 == 15)
    {
      v9 = *v6;
      if (dword_1EBF46AD0 >= 5)
      {
        v39 = *v6;
        v40 = *__error();
        v41 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "Vector query.", buf, 2u);
        }

        *__error() = v40;
        v6 = *(a2 + 16);
        v9 = v39;
      }

      if (*(v6 + 40) != 5)
      {
LABEL_21:
        v10 = *(v6 + 24);
        goto LABEL_22;
      }

LABEL_13:
      if (**v6 == 42 && !*(*v6 + 1))
      {
        return a2;
      }

      v8 = *(a1 + 32);
      goto LABEL_16;
    }

    if (everythingQuery(v6))
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(1);
      v15 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v14, v15, "Found *=* query", buf, 2u);
      }

      *__error() = v13;
      return a2;
    }

    v16 = *v6;
    if (**v6 != 42 || v16[1])
    {
      v17 = *(v6 + 32);
      if ((v17 & 0x400) != 0)
      {
        id_for_field_locked = 0;
LABEL_38:
        String = copyQueryString(a2);
        if (String)
        {
          v20 = *(*(a2 + 16) + 24);
          if (v20 <= 0xF)
          {
            v21 = String;
            v22 = 1 << v20;
            if ((v22 & 0x8198) != 0)
            {
LABEL_48:
              CFRelease(v21);
              return a2;
            }

            if ((v22 & 0x66) != 0)
            {
              if (id_for_field_locked <= 1 && (!CFEqual(String, @"*") || db_get_id_for_field_locked(*(*(a1 + 32) + 1192), "_kMDItemTextContentIndexExists") == -2) && !id_for_field_locked)
              {
                if (*(*(a1 + 32) + 2008))
                {
                  v23 = *(a2 + 16);
                  v24 = *v23;
                  if (!strncmp(*v23, "_kMDItemOCRContent", 0x12uLL) && strncmp(v24 + 18, "Title", 5uLL) && strncmp(v24 + 18, "Level1", 6uLL) && strncmp(v24 + 18, "Level2", 6uLL) && strncmp(v24 + 18, "Level3", 6uLL))
                  {
                    if (dword_1EBF46AD0 >= 5)
                    {
                      v44 = *__error();
                      v45 = _SILogForLogForCategory(1);
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                      {
                        v46 = **(a2 + 16);
                        *buf = 136315138;
                        v48 = v46;
                        _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "Invalid property name %s", buf, 0xCu);
                      }

                      *__error() = v44;
                      v23 = *(a2 + 16);
                    }

                    v30 = *(v23 + 24) - 5;
                    if (v30 > 9)
                    {
                      v31 = 16;
                    }

                    else
                    {
                      v31 = *&asc_1C2BFFC88[2 * v30];
                    }

                    *(a2 + 48) = v31;
                  }
                }
              }

              goto LABEL_48;
            }
          }

          v42 = __si_assert_copy_extra_661(*(*(a1 + 32) + 32));
          __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected op %d");
LABEL_75:
          free(v42);
          if (__valid_fs(*(*(a1 + 32) + 32)))
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

        if (dword_1EBF46AD0 >= 5)
        {
          v25 = *__error();
          v26 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a2 + 16);
            v28 = *v27;
            v29 = v27[9];
            *buf = 136315394;
            v48 = v28;
            v49 = 2080;
            v50 = v29;
            _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "No string for %s = %s", buf, 0x16u);
          }

          *__error() = v25;
        }

LABEL_17:
        v10 = *(*(a2 + 16) + 24);
LABEL_22:
        v11 = v10 - 5;
        if (v11 > 9)
        {
          v12 = 16;
        }

        else
        {
          v12 = *&asc_1C2BFFC88[2 * v11];
        }

        *(a2 + 48) = v12;
        return a2;
      }

      if ((v17 & 0x40000) == 0)
      {
        id_for_field_locked = db_get_id_for_field_locked(*(*(a1 + 32) + 1192), v16);
        if (id_for_field_locked == -2)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }
    }

    id_for_field_locked = 1;
    goto LABEL_38;
  }

  return a2;
}

void executeSearchCtx_Start(uint64_t **a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v29) = qos_class_self();
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "QOS executeSearchCtx_Start: %d", buf, 8u);
    }

    *__error() = v14;
  }

  v4 = *a1;
  if (a2)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(1);
    v7 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v6, v7, "Search canceled while waiting on scheduler\n", buf, 2u);
    }

    *__error() = v5;
    si_querypipe_remove_process(v4[13], v4[1], 0, 1);
    search_ctx_destroy(a1, a2);
    return;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = Current - *(a1 + 1);
  *(v4[1] + 448) = *(v4[1] + 448) + v9;
  if (dword_1EBF46AD0 >= 5)
  {
    v27 = v9;
    v16 = *__error();
    v17 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = qos_class_self();
      *buf = 134218240;
      v29 = v27;
      v30 = 1024;
      v31 = v18;
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "Search waited %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
    }

    *__error() = v16;
  }

  a1[2] = "executeSearchCtx_Start";
  v10 = (*(*v4 + 40))(v4);
  v11 = v4[1];
  v12 = CFAbsoluteTimeGetCurrent();
  siquery_addactivetime(v11, v12 - Current);
  if (dword_1EBF46AD0 >= 5)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = CFAbsoluteTimeGetCurrent() - Current;
      v22 = qos_class_self();
      *buf = 134218240;
      v29 = v21;
      v30 = 1024;
      v31 = v22;
      _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "Search was active (preIterate) for %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
    }

    *__error() = v19;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else if (v10)
  {
LABEL_9:
    executeSearchContextCracked_2(v13);
    goto LABEL_20;
  }

  si_querypipe_remove_process(v4[13], v4[1], 0, 0);
  search_ctx_destroy(a1, 0);
LABEL_20:
  if (dword_1EBF46AD0 >= 5)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = CFAbsoluteTimeGetCurrent() - Current;
      v26 = qos_class_self();
      *buf = 134218240;
      v29 = v25;
      v30 = 1024;
      v31 = v26;
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "Search was active for %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
    }

    *__error() = v23;
  }
}

uint64_t _bt_findBulk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, __int128 *a8, uint64_t a9, _BYTE *a10, uint64_t a11, char *a12, char a13)
{
  v501 = a8;
  v17 = a2;
  v487 = a1;
  v541 = *MEMORY[0x1E69E9840];
  v488 = *(a2 + 160);
  v492 = *(a2 + 4589);
  v18 = __THREAD_SLOT_KEY[0];
  v498 = a2;
  if (!__THREAD_SLOT_KEY[0])
  {
    v441 = a6;
    makeThreadId();
    a6 = v441;
    v17 = v498;
    v18 = __THREAD_SLOT_KEY[0];
  }

  v499 = a6;
  v19 = pthread_getspecific(v18);
  if (!v19 || v19 >= 0x801)
  {
    makeThreadId();
    v19 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  }

  v20 = v19 - 1;
  v493 = LODWORD(threadData[9 * v19 - 5]);
  atomic_fetch_add_explicit((v17 + 4592), 1u, memory_order_relaxed);
  db_read_lock(v498 + 4600);
  atomic_fetch_add_explicit((v17 + 4592), 0xFFFFFFFF, memory_order_relaxed);
  CIOnThreadCleanUpPush(v20, si_dglock_rdunlock, v498 + 4600);
  v21 = malloc_type_zone_malloc(queryZone, 0x510uLL, 0xA4971684uLL);
  v22 = v21;
  if (v21)
  {
    v515[0] = 0;
    if (a10)
    {
      v23 = a10;
    }

    else
    {
      v23 = v515;
    }

    v496 = v23;
    v24 = v499;
    findTermIDsInit(v498, a3, a4, a5, v23, v499, a7, v501, a9, v21);
    v25 = v20;
    v26 = v22;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v527[0]) = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v527, 2u);
    }

    v515[0] = 0;
    if (a10)
    {
      v27 = a10;
    }

    else
    {
      v27 = v515;
    }

    v496 = v27;
    v24 = v499;
    findTermIDsInit(v498, a3, a4, a5, v27, v499, a7, v501, a9, 0);
    v25 = v20;
    v26 = 0;
  }

  CICleanUpPush(v25, findTermIDsFree, v26);
  Current = CFAbsoluteTimeGetCurrent();
  v30 = 0x1EBF46000uLL;
  v497 = v20;
  if (!v24)
  {
    goto LABEL_19;
  }

  if (!a11)
  {
    if (!*(v22 + 1152))
    {
      goto LABEL_19;
    }

    v41 = 0;
    v478 = 0;
    v42 = (v22 + 88);
    v476 = *MEMORY[0x1E695E480];
    v500 = &v525[1];
    v501 = &v527[1];
    v489 = &v527[1] + 8;
    *&v28 = 134217984;
    v474 = v28;
    *&v28 = 136315394;
    v477 = v28;
    *&v28 = 134218240;
    v475 = v28;
    v495 = (v22 + 88);
LABEL_35:
    if (**v22)
    {
      goto LABEL_19;
    }

    v43 = *(v22 + 1144) + (v41 << 6);
    *(v22 + 1240) = v43;
    if (*(v30 + 2768) >= 5)
    {
      v314 = v41;
      v315 = *__error();
      v316 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v527[0]) = v474;
        *(v527 + 4) = v43;
        _os_log_impl(&dword_1C278D000, v316, OS_LOG_TYPE_DEFAULT, "Comparing query %p", v527, 0xCu);
      }

      *__error() = v315;
      v30 = 0x1EBF46000;
      v41 = v314;
    }

    if ((*(v43 + 16) & 0x610) != 0)
    {
      v44 = *(v22 + 1240);
      v45 = *(v44 + 16);
      v46 = *(v30 + 2768);
      if ((v45 & 0x10) == 0)
      {
        if (v46 >= 5)
        {
          v345 = v41;
          v346 = *__error();
          v347 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v347, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v527[0]) = v474;
            *(v527 + 4) = v43;
            _os_log_impl(&dword_1C278D000, v347, OS_LOG_TYPE_DEFAULT, "Path node %p", v527, 0xCu);
          }

          *__error() = v346;
          v44 = *(v22 + 1240);
          v45 = *(v44 + 16);
          v30 = 0x1EBF46000;
          v41 = v345;
        }

        v47 = *(*(v22 + 1160) + 8 * v41);
        *(v22 + 1248) = v47;
        v48 = *(v22 + 24);
        if (!v48)
        {
          v42 = v495;
          goto LABEL_34;
        }

        v485 = v47;
        v491 = v41;
        v479 = (v45 & 0x400) == 0;
        v49 = *(v22 + 32);
        v50 = *(v44 + 20);
        v494.n128_u64[0] = *v44;
        v51 = __THREAD_SLOT_KEY[0];
        if (!__THREAD_SLOT_KEY[0])
        {
          makeThreadId();
          v51 = __THREAD_SLOT_KEY[0];
        }

        LODWORD(v486) = v45;
        v52 = v20;
        v53 = pthread_getspecific(v51);
        if (!v53 || v53 >= 0x801)
        {
          makeThreadId();
          v53 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        }

        v54 = (v48 + 4424);
        v55 = (v53 - 1);
        v481 = LODWORD(threadData[9 * v53 - 5]);
        v56 = *(v48 + 4440);
        v57 = *(v48 + 4448);
        v58 = v57 - v56 < 0x100000001 && v57 > v56;
        v59 = v57 & 0xFFFFFFFF00000000;
        if (!v58)
        {
          v59 = 0;
        }

        v483 = v59;
        v484 = v56;
        v60 = malloc_type_malloc(0x18uLL, 0x1020040F21E5318uLL);
        storage_reader_init(v48 + 8, v60);
        CICleanUpPush(v55, MEMORY[0x1E69E9B38], v60);
        v490 = v55;
        v482 = v60;
        CICleanUpPush(v55, storage_reader_destroy, v60);
        if (v50)
        {
          v63 = v494.n128_u64[0];
          v64 = v50 - (*(v494.n128_u64[0] + 8 * v50 - 8) == *v54);
          if (v49)
          {
            v480 = v54;
            v65 = (v49 + 8);
            pthread_rwlock_rdlock((v49 + 8));
            v66 = (v49 + 208);
            v67 = v486;
            if (v64)
            {
              v68 = ~(*(v494.n128_u64[0] + 8 * v64 - 8) == *v66) + v64;
            }

            else
            {
              v68 = -1;
            }

LABEL_286:
            *v524 = -1;
            *&v525[0] = 0;
            BestDirectory = getBestDirectory(v66, v68, v63, v524, v525);
            v224 = BestDirectory;
            v225 = 0;
            if ((*v524 & 0x80000000) == 0 && *&v525[0])
            {
              v225 = *(*&v525[0] + 16) != 0;
            }

            if (BestDirectory)
            {
              v226 = *(BestDirectory + 16);
              v225 = v226 != 0;
              if ((v67 & 0x400) == 0)
              {
                v227 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
                v227[1] = 1024;
                *(v227 + 1) = malloc_type_malloc(0x400uLL, 0xACA06861uLL);
                directoryDumpDirectoryPaths(v224, v227);
LABEL_298:
                pthread_rwlock_unlock(v65);
                pthread_rwlock_rdlock((v49 + 240));
                CIOnThreadCleanUpPush(v490, directoryOverlay_unlock, v49);
                if (v64 >= 1)
                {
                  v237 = v64;
                  v239 = (v494.n128_u64[0] + 8);
                  v238 = *v494.n128_u64[0];
                  do
                  {
                    v241 = *v239++;
                    v240 = v241;
                    Child = negativeFindChild(v49 + 440, v238, v525);
                    if (Child)
                    {
                      v225 |= *(Child + 8) == v240;
                    }

                    v238 = v240;
                    --v237;
                  }

                  while (v237);
                }

                if (v227)
                {
                  *&v527[0] = MEMORY[0x1E69E9820];
                  *(&v527[0] + 1) = 0x40000000;
                  *&v527[1] = __directoryStoreGetFileListOffsets_block_invoke;
                  *(&v527[1] + 1) = &__block_descriptor_tmp_4578;
                  v528[0] = v482;
                  v528[1] = v480;
                  v528[2] = v49;
                  v528[3] = v485;
                  LOBYTE(v529) = v479;
                  v528[4] = v484;
                  v528[5] = v483;
                  if (*v227)
                  {
                    v243 = 0;
                    do
                    {
                      v244 = (*(v227 + 1) + v243);
                      (*&v527[1])(v527, *v244, v244 + 2);
                      v243 += 8 * *v244 + 8;
                    }

                    while (v243 < *v227);
                  }

                  free(*(v227 + 1));
                  free(v227);
                }

                if ((v225 & 1) == 0)
                {
                  _directoryStoreGetFileListOffsets(v482, v480, v49, v64, v494.n128_u64[0], v485, (v486 & 0x400) == 0, v484, v235, v236, v483);
                }

                v124 = v490;
                CIOnThreadCleanUpPop(v490);
                v20 = v497;
                goto LABEL_313;
              }

              if (v226)
              {
                v227 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
                v228 = (8 * *(v224 + 16) + 16);
                v227[1] = v228;
                v229 = malloc_type_malloc(v228, 0x8E19CCC3uLL);
                *(v227 + 1) = v229;
                v230 = *(v224 + 16);
                v232 = *v227;
                LODWORD(v231) = v227[1];
                v233 = *v227 + 8 * v230 + 16;
                if (v233 > v231)
                {
                  do
                  {
                    v231 = (2 * v231);
                  }

                  while (v233 > v231);
                  v227[1] = v231;
                  v229 = reallocf(v229, v231);
                  *(v227 + 1) = v229;
                  v232 = *v227;
                  v230 = *(v224 + 16);
                }

                v234 = &v229[v232];
                *v234 = v230 + 1;
                *(v234 + 1) = *v224;
                memcpy(v234 + 16, *(v224 + 24), 8 * *(v224 + 16));
                *v227 += 8 * *(v224 + 16) + 16;
                goto LABEL_298;
              }
            }

            v227 = 0;
            goto LABEL_298;
          }

          v20 = v52;
          v124 = v490;
        }

        else
        {
          v480 = (v48 + 4424);
          v63 = v494.n128_u64[0];
          if (v49)
          {
            v65 = (v49 + 8);
            pthread_rwlock_rdlock((v49 + 8));
            v64 = 0;
            v66 = (v49 + 208);
            v68 = -1;
            v67 = v486;
            goto LABEL_286;
          }

          v20 = v52;
          v64 = 0;
          v124 = v490;
          v54 = v480;
        }

        _directoryStoreGetFileListOffsets(v482, v54, 0, v64, v63, v485, (v486 & 0x400) == 0, v484, v61, v62, v483);
LABEL_313:
        CICleanUpReset(v124, v481);
        v30 = 0x1EBF46000;
        v42 = v495;
        v41 = v491;
        goto LABEL_34;
      }

      if (v46 < 5)
      {
        if (!*(v22 + 16))
        {
LABEL_513:
          v283 = v41;
          v353 = *__error();
          v354 = _SILogForLogForCategory(1);
          v355 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v354, v355))
          {
            LOWORD(v527[0]) = 0;
            _os_log_impl(&dword_1C278D000, v354, v355, "Skip ANN; no vector index", v527, 2u);
          }

          *__error() = v353;
          v30 = 0x1EBF46000;
          v42 = v495;
          goto LABEL_516;
        }
      }

      else
      {
        v349 = v41;
        v350 = *__error();
        v351 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v351, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v527[0]) = v474;
          *(v527 + 4) = v43;
          _os_log_impl(&dword_1C278D000, v351, OS_LOG_TYPE_DEFAULT, "Vector node %p", v527, 0xCu);
        }

        *__error() = v350;
        v41 = v349;
        if (!*(v22 + 16))
        {
          goto LABEL_513;
        }
      }

      v77 = *(v22 + 1160);
      v491 = v41;
      v78 = *(v77 + 8 * v41);
      *(v22 + 1248) = v78;
      oq_force_meta(v78);
      v79 = *(v22 + 1248);
      v80 = *(v79 + 32);
      v494.n128_u64[0] = *(v22 + 16);
      v81 = *(v22 + 1240);
      v82 = *(v81 + 5);
      v83 = *(v81 + 15);
      v84 = v83 >> 25;
      v483 = v80;
      if (!v84)
      {
        if (current_vector_version::onceToken != -1)
        {
          dispatch_once(&current_vector_version::onceToken, &__block_literal_global_7971);
        }

        v84 = current_vector_version::vecVersion;
        v81 = *(v22 + 1240);
        v83 = *(v81 + 15);
        v79 = *(v22 + 1248);
      }

      v85 = *v81;
      v86 = *(v81 + 14);
      if (__THREAD_SLOT_KEY[0])
      {
        v87 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v87)
        {
          goto LABEL_518;
        }
      }

      else
      {
        makeThreadId();
        v87 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v87)
        {
          goto LABEL_518;
        }
      }

      if (v87 < 0x801)
      {
        v88 = 0;
LABEL_83:
        if (v87 <= 0x800)
        {
          v89 = &threadData[9 * v87];
          v88 = *(v89 - 11);
          *(v89 - 11) = 1;
        }

LABEL_85:
        LODWORD(v482) = v88;
        v90 = _SILogForLogForCategory(0);
        v91 = os_signpost_id_make_with_pointer(v90, 0);
        v92 = _SILogForLogForCategory(0);
        v484 = v91;
        v485 = (v91 - 1);
        if (v91 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v93 = v92;
          if (os_signpost_enabled(v92))
          {
            LOWORD(v527[0]) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C278D000, v93, OS_SIGNPOST_INTERVAL_BEGIN, v484, "VectorIndexANN", "Start", v527, 2u);
          }
        }

        *&v525[0] = MEMORY[0x1E69E9820];
        *(&v525[0] + 1) = 0x40000000;
        *&v525[1] = __vectorIndexANN_block_invoke;
        *(&v525[1] + 1) = &__block_descriptor_tmp_9_8236;
        *&v526[0] = v79;
        v519 = 0uLL;
        IVFVectorIndex_s::getVectorIndex(&v519, v494.n128_u64[0] + 8, v82, v84, v83 & 3, (v83 >> 2) & 3, 0);
        v94 = v519;
        v20 = v497;
        if (v519)
        {
          LODWORD(v490) = *__error();
          v95 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v96 = (v494.n128_u64[0] + 128);
            if (*(v494.n128_u64[0] + 151) < 0)
            {
              v96 = *v96;
            }

            (*(*v94 + 312))(v524, v94, v494.n128_u64[0] + 104);
            v97 = v524;
            if (v524[23] < 0)
            {
              v97 = *v524;
            }

            *buf = v477;
            *&buf[4] = v96;
            *&buf[12] = 2080;
            *&buf[14] = v97;
            _os_log_impl(&dword_1C278D000, v95, OS_LOG_TYPE_DEFAULT, "[%s] aNN search on %s", buf, 0x16u);
            if ((v524[23] & 0x80000000) != 0)
            {
              operator delete(*v524);
            }
          }

          *__error() = v490;
          operator new();
        }

        v490 = 0;
        v486 = 0;
        v523 = 0uLL;
        IVFVectorIndex_s::getVectorIndex(&v523, v494.n128_u64[0] + 8, v82, v84, v83 & 3, (v83 >> 2) & 3, 1u);
        v116 = v523;
        if (v523)
        {
          v117 = *__error();
          v118 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v481) = v117;
            v119 = (v494.n128_u64[0] + 128);
            if (*(v494.n128_u64[0] + 151) < 0)
            {
              v119 = *v119;
            }

            (*(*v116 + 312))(v524, v116, v494.n128_u64[0] + 104);
            v120 = v524;
            if (v524[23] < 0)
            {
              v120 = *v524;
            }

            *buf = v477;
            *&buf[4] = v119;
            *&buf[12] = 2080;
            *&buf[14] = v120;
            _os_log_impl(&dword_1C278D000, v118, OS_LOG_TYPE_DEFAULT, "[%s] aNN search on %s", buf, 0x16u);
            if ((v524[23] & 0x80000000) != 0)
            {
              operator delete(*v524);
            }

            v117 = v481;
          }

          *__error() = v117;
          v121 = v490 - v486;
          v122 = ((v490 - v486) >> 3) + 1;
          if (v122 >> 61)
          {
            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          if (v121 >> 2 > v122)
          {
            v122 = v121 >> 2;
          }

          if (v121 >= 0x7FFFFFFFFFFFFFF8)
          {
            v122 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v122)
          {
            if (!(v122 >> 61))
            {
              operator new();
            }

            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          v125 = (8 * (v121 >> 3));
          v125->isa = v116;
          v490 = &v125[1];
          memcpy(0, v486, v121);
          if (v486)
          {
            operator delete(v486);
          }

          v20 = v497;
          v123 = 0;
        }

        else
        {
          v123 = v486;
        }

        v486 = v123;
        if (v490 == v123)
        {
          LODWORD(v490) = *__error();
          v131 = _SILogForLogForCategory(16);
          v132 = dword_1EBF46B0C < 3;
          if (os_log_type_enabled(v131, (dword_1EBF46B0C < 3)))
          {
            v133 = (v494.n128_u64[0] + 128);
            if (*(v494.n128_u64[0] + 151) < 0)
            {
              v133 = *v133;
            }

            IVFIndexName(v524, v82, v84, v83 & 3, (v83 >> 2) & 3, 0);
            v134 = *(v494.n128_u64[0] + 127);
            if (v134 >= 0)
            {
              v135 = (v494.n128_u64[0] + 104);
            }

            else
            {
              v135 = *(v494.n128_u64[0] + 104);
            }

            if (v134 >= 0)
            {
              v136 = *(v494.n128_u64[0] + 127);
            }

            else
            {
              v136 = *(v494.n128_u64[0] + 112);
            }

            v137 = std::string::insert(v524, 0, v135, v136);
            v138 = v137->__r_.__value_.__r.__words[2];
            *buf = *&v137->__r_.__value_.__l.__data_;
            *&buf[16] = v138;
            v137->__r_.__value_.__l.__size_ = 0;
            v137->__r_.__value_.__r.__words[2] = 0;
            v137->__r_.__value_.__r.__words[0] = 0;
            if ((v524[23] & 0x80000000) != 0)
            {
              operator delete(*v524);
            }

            v139 = buf;
            if (buf[23] < 0)
            {
              v139 = *buf;
            }

            *v524 = v477;
            *&v524[4] = v133;
            *&v524[12] = 2080;
            *&v524[14] = v139;
            _os_log_impl(&dword_1C278D000, v131, v132, "*warn* [%s] aNN search on %s not found", v524, 0x16u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v20 = v497;
          }

          *__error() = v490;
        }

        else
        {
          v126 = (v490 - v123) >> 3;
          v127 = v123;
          v128 = (*(*v123->isa + 240))(v123->isa, (v83 >> 4) & 0xFFFFF);
          if (v126 <= 1)
          {
            v126 = 1;
          }

          do
          {
            isa = v127->isa;
            ++v127;
            (*(*isa + 248))(isa, v82, v84, v85, v83 & 3, (v83 >> 2) & 3, HIBYTE(v83) & 1, v128, v86);
            --v126;
          }

          while (v126);
          v130 = *(v490 - 1);
          *&v527[0] = MEMORY[0x1E69E9820];
          *(&v527[0] + 1) = 0x40000000;
          *&v527[1] = ___ZNK16IVFVectorIndex_s3aNNEjtPKv14vec_dimensions15vec_data_formatfjbP12__CIIndexSetU13block_pointerFvPyfjE_block_invoke;
          *(&v527[1] + 1) = &unk_1E8194D50;
          v528[0] = v525;
          (*(*v130 + 256))();
          v20 = v497;
        }

        v140 = *(&v523 + 1);
        v108 = v491;
        v42 = v495;
        if (*(&v523 + 1) && !atomic_fetch_add((*(&v523 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v140->__on_zero_shared)(v140);
          std::__shared_weak_count::__release_weak(v140);
        }

        v141 = *(&v519 + 1);
        if (*(&v519 + 1) && !atomic_fetch_add((*(&v519 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v141->__on_zero_shared)(v141);
          std::__shared_weak_count::__release_weak(v141);
        }

        if (v486)
        {
          operator delete(v486);
        }

        v142 = _SILogForLogForCategory(0);
        if (v485 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v143 = v142;
          if (os_signpost_enabled(v142))
          {
            LOWORD(v527[0]) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C278D000, v143, OS_SIGNPOST_INTERVAL_END, v484, "VectorIndexANN", "End", v527, 2u);
          }
        }

        if (__THREAD_SLOT_KEY[0])
        {
          v144 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (v144)
          {
            goto LABEL_186;
          }
        }

        else
        {
          makeThreadId();
          v144 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (v144)
          {
LABEL_186:
            if (v144 < 0x801)
            {
              goto LABEL_187;
            }
          }
        }

        makeThreadId();
        v144 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v144)
        {
LABEL_189:
          v145 = *(*(v22 + 1248) + 32);
          v146 = *__error();
          v147 = _SILogForLogForCategory(1);
          v148 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v147, v148))
          {
            v149 = *(v22 + 16);
            LODWORD(v527[0]) = v475;
            *(v527 + 4) = v149;
            WORD6(v527[0]) = 2048;
            *(v527 + 14) = v145 - v483;
            _os_log_impl(&dword_1C278D000, v147, v148, "%p Added %ld items from aNN", v527, 0x16u);
          }

          *__error() = v146;
          goto LABEL_384;
        }

LABEL_187:
        if (v144 <= 0x800)
        {
          *(&threadData[9 * v144 - 5] - 1) = v482;
        }

        goto LABEL_189;
      }

LABEL_518:
      makeThreadId();
      v87 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      v88 = 0;
      if (!v87)
      {
        goto LABEL_85;
      }

      goto LABEL_83;
    }

    if (*(v30 + 2768) >= 5)
    {
      v342 = v41;
      v343 = *__error();
      v344 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v527[0]) = v474;
        *(v527 + 4) = v43;
        _os_log_impl(&dword_1C278D000, v344, OS_LOG_TYPE_DEFAULT, "BT node %p", v527, 0xCu);
      }

      *__error() = v343;
      v30 = 0x1EBF46000;
      v41 = v342;
    }

    v69 = *v43;
    *(v22 + 1224) = *v43;
    *(v22 + 1232) = v69;
    v70 = *(v22 + 1160);
    if (v70)
    {
      v70 = *(v70 + 8 * v41);
    }

    *(v22 + 1248) = v70;
    v71 = *(v22 + 1168);
    if (v71)
    {
      v71 = *(v71 + 8 * v41);
    }

    *(v22 + 1256) = v71;
    *(v22 + 1140) = 0;
    *(v22 + 88) = 0;
    v72 = *(v22 + 8);
    v73 = *v72 >> 3;
    v74 = (*v72 & 7) << 32;
    if ((*v72 & 3) == 1)
    {
      v74 = 0x100000000;
      v73 = *v72 >> 2;
    }

    if (*v72)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    if (*v72)
    {
      v76 = v73;
    }

    else
    {
      v76 = *v72 >> 1;
    }

    *(v22 + 52) = v75 | v76;
    if ((*(v43 + 16) & 4) == 0)
    {
      if (**v43 == 42)
      {
        if (v478)
        {
          v478 = 1;
          *(v22 + 1289) = 1;
        }

        else if (**v22)
        {
          v478 = 1;
        }

        else
        {
          v478 = 1;
          findMatchTermWildcard(v22, v75 | v76, 4, 1);
          v30 = 0x1EBF46000;
        }

        goto LABEL_34;
      }

      if (*(v43 + 32))
      {
        is_fuzzy = icu_search_context_is_fuzzy();
        v106 = *(v22 + 1240);
        if (is_fuzzy)
        {
          v107 = *(v106 + 48);
          *(v22 + 1264) = v107;
          if (!v107)
          {
            v453 = __si_assert_copy_extra_2708(0);
            v454 = v453;
            v455 = "";
            if (v453)
            {
              v455 = v453;
            }

            __message_assert("%s:%u: failed assertion '%s' %s Failed to set up ctx->_node->la for %s %s", "BurstTrie.c", 6099, "ctx->la", v455, **(v22 + 1240), *(*(v22 + 1240) + 8));
            free(v454);
            goto LABEL_670;
          }
        }

        v108 = v41;
        v109 = *v106;
        v494.n128_u64[0] = strlen(*v106);
        *buf = 16;
        if (*MEMORY[0x1E69E9AC8] <= 0x27FuLL)
        {
          ++sTotal;
        }

        v110 = malloc_type_zone_calloc(queryZone, 0x10uLL, 0x28uLL, 0x5BAF1CEAuLL);
        if (!v110 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          LOWORD(v527[0]) = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v527, 2u);
        }

        *&buf[8] = v110;
        *&buf[16] = CFSetCreateMutable(v476, 0, &kTrieLevelInfoSetCallbacks);
        *&v519 = 16;
        if (*MEMORY[0x1E69E9AC8] <= 0x27FuLL)
        {
          ++sTotal;
        }

        v111 = malloc_type_zone_calloc(queryZone, 0x10uLL, 0x28uLL, 0x5BAF1CEAuLL);
        if (!v111 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          LOWORD(v527[0]) = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v527, 2u);
        }

        Mutable = 0;
        *(&v519 + 1) = v111;
        Mutable = CFSetCreateMutable(v476, 0, &kTrieLevelInfoSetCallbacks);
        if (__THREAD_SLOT_KEY[0])
        {
          v112 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (v112)
          {
            goto LABEL_120;
          }

LABEL_525:
          makeThreadId();
          v112 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        }

        else
        {
          makeThreadId();
          v112 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (!v112)
          {
            goto LABEL_525;
          }

LABEL_120:
          if (v112 >= 0x801)
          {
            goto LABEL_525;
          }
        }

        v113 = (v112 - 1);
        v486 = LODWORD(threadData[9 * v112 - 5]);
        CICleanUpPush(v112 - 1, trie_level_list_destroy, buf);
        v490 = v113;
        CICleanUpPush(v113, trie_level_list_destroy, &v519);
        if (*(*(v22 + 1240) + 20) < 7)
        {
          trie_level_list_insert_with_state(buf, *(v22 + 52), 0, 0, 1, 0);
          goto LABEL_196;
        }

        if (*v109 != 1)
        {
          goto LABEL_196;
        }

        v114 = v109[1];
        if ((v109[1] & 0x80000000) == 0)
        {
          v115 = 2;
          goto LABEL_460;
        }

        v250 = v109[2];
        if ((v109[2] & 0x80000000) == 0)
        {
          v114 = v114 & 0x7F | (v250 << 7);
          v115 = 3;
          goto LABEL_460;
        }

        v259 = v109[3];
        if ((v109[3] & 0x80000000) == 0)
        {
          v115 = 4;
          v114 = ((v250 & 0x7F) << 7) | (v259 << 14) | v114 & 0x7F;
          goto LABEL_460;
        }

        v313 = v109[4];
        if ((v109[4] & 0x80000000) == 0)
        {
          v115 = 5;
          v114 = ((v259 & 0x7F) << 14) | (v313 << 21) | ((v250 & 0x7F) << 7) | v114 & 0x7F;
          goto LABEL_460;
        }

        v321 = v109[5];
        if (v321 < 0)
        {
          goto LABEL_686;
        }

        v115 = 6;
        v114 = ((v313 & 0x7F) << 21) | (v321 << 28) | ((v259 & 0x7F) << 14) | ((v250 & 0x7F) << 7) | v114 & 0x7F;
LABEL_460:
        if (v114 == 2)
        {
          v322 = v115 + 1;
          if ((v109[v115] & 0x80000000) == 0)
          {
            goto LABEL_462;
          }

          v323 = v115 + 2;
          if ((v109[v322] & 0x80000000) == 0)
          {
LABEL_464:
            v115 = v323;
            goto LABEL_465;
          }

          v322 = v115 + 3;
          if ((v109[v323] & 0x80000000) == 0)
          {
LABEL_462:
            v115 = v322;
            goto LABEL_465;
          }

          v323 = v115 + 4;
          if ((v109[v322] & 0x80000000) == 0)
          {
            goto LABEL_464;
          }

          if ((v109[v323] & 0x80000000) == 0)
          {
            v115 += 5;
            goto LABEL_465;
          }

LABEL_686:
          v471 = __si_assert_copy_extra_2708(0);
          v472 = v471;
          v473 = "";
          if (v471)
          {
            v473 = v471;
          }

          __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v473);
          free(v472);
          if (__valid_fs(-1))
          {
            v456 = 2989;
LABEL_671:
            *v456 = -559038737;
            abort();
          }

LABEL_670:
          v456 = 3072;
          goto LABEL_671;
        }

LABEL_465:
        if (v115 > v494.n128_i32[0])
        {
          goto LABEL_196;
        }

        v324 = 0;
        v325 = *(v22 + 8);
        v326 = *(v22 + 52);
        v327 = v326;
        v328 = HIDWORD(v326);
        while (2)
        {
          if (v328 != 3)
          {
            if (v328 != 1)
            {
              if (!v324 || v328 || !v327)
              {
                goto LABEL_196;
              }

LABEL_503:
              findAddFlatBucket(v22, v327, v109, v324, 0, 0);
              goto LABEL_196;
            }

            v329 = mgetBase(v325, v327);
            v330 = *(&tcm + v109[v324]);
            v331 = (v329 + 4);
            if (((*(v329 + 4 + ((v330 >> 3) & 0x1C)) >> v330) & 1) == 0)
            {
              goto LABEL_196;
            }

            v332 = 0;
            v333 = v330 >> 6;
            if ((v330 >> 6) > 1)
            {
              if (v333 != 2)
              {
                v336 = vcnt_s8(*(v329 + 20));
                v336.i16[0] = vaddlv_u8(v336);
                v332 = v336.u32[0];
              }

              v337 = vcnt_s8(*(v329 + 12));
              v337.i16[0] = vaddlv_u8(v337);
              v332 += v337.u32[0];
            }

            else
            {
              v334 = v330 >> 6;
              if (!v333)
              {
LABEL_483:
                v339 = vcnt_s8((*&v331[v333] & ~(-1 << v330)));
                v339.i16[0] = vaddlv_u8(v339);
                v335 = *(v329 + 38 + 4 * (v339.u32[0] + v334));
                if (v335)
                {
                  goto LABEL_484;
                }

LABEL_477:
                v327 = v335 >> 1;
                if (!(v335 >> 1))
                {
                  goto LABEL_196;
                }

                v328 = 0;
                goto LABEL_469;
              }
            }

            v338 = vcnt_s8(*v331);
            v338.i16[0] = vaddlv_u8(v338);
            v334 = v338.u32[0] + v332;
            goto LABEL_483;
          }

          v335 = *(v325[1] + 1028 * v327 + 4 * *(&tcm + v109[v324]) + 4);
          if ((v335 & 1) == 0)
          {
            goto LABEL_477;
          }

LABEL_484:
          if ((v335 & 3) == 1)
          {
            v327 = v335 >> 2;
            if (!(v335 >> 2))
            {
              goto LABEL_196;
            }

            v328 = 1;
          }

          else
          {
            v327 = v335 >> 3;
            if (!(v335 >> 3))
            {
              goto LABEL_196;
            }

            v328 = v335 & 7;
          }

LABEL_469:
          if (v115 != ++v324)
          {
            continue;
          }

          break;
        }

        if (!v115)
        {
          goto LABEL_196;
        }

        if (!v328)
        {
          LODWORD(v324) = v115;
          goto LABEL_503;
        }

        v340 = v327;
        v341 = malloc_type_zone_malloc(queryZone, (v115 + 1), 0xA4971684uLL);
        if (!v341)
        {
          _log_fault_for_malloc_failure();
        }

        memcpy(v341, v109, v115);
        *(v341 + v115) = 0;
        trie_level_list_insert_with_state(buf, v340 | (v328 << 32), v341, v115, 1, 0);
        if (v115 < v494.n128_i32[0] && v109[v115] == 42)
        {
          v42 = v495;
          __memcpy_chk();
          v495[v115] = 0;
          *(v22 + 1140) = v115;
          findMatchTermWildcard(v22, **&buf[8], 0, 1);
          v153 = 0;
          v494.n128_u32[0] = 0;
          v518 = 0;
          v517 = 0;
          v516 = 0;
          goto LABEL_271;
        }

LABEL_196:
        v518 = 0;
        v517 = 0;
        v516 = 0;
        v42 = v495;
        if (icu_search_context_is_fuzzy())
        {
          while (*&buf[4])
          {
            if (*&buf[4] >= 1)
            {
              v193 = 0;
              v194 = 0;
              do
              {
                v523 = 0uLL;
                v523 = *(*&buf[8] + v193 + 24);
                v203 = *(v22 + 1264);
                v204 = DWORD2(v523);
                if (*(v203 + 48))
                {
                  v205 = v523 == 0;
                }

                else
                {
                  v205 = 1;
                }

                if (v205)
                {
                  goto LABEL_249;
                }

                v206 = *(v203 + 16) - *(v203 + 32);
                v207 = 5 * (BYTE8(v523) - v206);
                v208 = v206 >= DWORD2(v523);
                v209 = 5 * (v206 - BYTE8(v523));
                if (v208)
                {
                  v207 = 0;
                }

                if (!v208)
                {
                  v209 = 0;
                }

                if (((v523 << v207 >> v209) & 0x1F79C61) == 0)
                {
LABEL_249:
                  v195 = 2 * *(v203 + 32);
                  if (v195 < *(v203 + 16) - DWORD2(v523))
                  {
                    v196 = v195 + 1;
                  }

                  else
                  {
                    v196 = *(v203 + 16) - BYTE8(v523);
                  }

                  LOBYTE(v525[0]) = 0;
                  *&v527[0] = 0;
                  tt_transition_for_state(**v203, v523, v196 << 8, v527, v525);
                  v197 = *&v527[0];
                  v198 = *(v203 + 40) + 24 * v204;
                  *(v198 + 8) = *&v527[0];
                  *(v198 + 16) = LOBYTE(v525[0]) + v204;
                  v199 = *v198;
                  v200 = *(v198 + 16);
                  v201 = *(*&buf[8] + v193);
                  *v524 = *(*&buf[8] + v193 + 8);
                  *&v524[16] = *(*&buf[8] + v193 + 24);
                  v522 = 0;
                  v521 = 0;
                  v202 = *(v22 + 8);
                  *&v525[0] = MEMORY[0x1E69E9820];
                  *(&v525[0] + 1) = 0x40000000;
                  *&v525[1] = __trie_resolve_fuzzy_transition_block_invoke;
                  *(&v525[1] + 1) = &__block_descriptor_tmp_111;
                  *&v526[0] = v22;
                  *(&v526[0] + 1) = v201;
                  v526[1] = *v524;
                  v526[2] = *&v524[16];
                  *&v527[0] = MEMORY[0x1E69E9820];
                  *(&v527[0] + 1) = 0x40000000;
                  *&v527[1] = __trie_resolve_fuzzy_transition_block_invoke_2;
                  *(&v527[1] + 1) = &__block_descriptor_tmp_113;
                  *&v528[3] = *&v524[16];
                  *&v528[1] = *v524;
                  v528[0] = v201;
                  v528[5] = v197;
                  *&v529 = v200;
                  *(&v529 + 1) = v22;
                  *&v530 = &v519;
                  _trie_resolve_sub_trie(v202, v201, v199, &v521, 0, v197 != 0, v525, v527);
                }

                else
                {
                  v210 = (*&buf[8] + v193);
                  *(v22 + 1140) = *(*&buf[8] + v193 + 16);
                  __memcpy_chk();
                  v42[*(v22 + 1140)] = 0;
                  *(v22 + 1272) = &v523;
                  findMatchTermWildcard(v22, *v210, 0, 1);
                  *(v22 + 1272) = 0;
                }

                ++v194;
                v193 += 40;
              }

              while (v194 < *&buf[4]);
            }

            v211 = v489;
            v212 = 0uLL;
            if ((*(*(v22 + 1240) + 16) & 2) != 0 && SDWORD1(v519) >= 1)
            {
              v213 = 0;
              v214 = 0;
              do
              {
                v528[0] = 0;
                v527[0] = v212;
                v527[1] = v212;
                v215 = *(*(&v519 + 1) + v213 + 32);
                v216 = *(*(&v519 + 1) + v213 + 16);
                v527[0] = *(*(&v519 + 1) + v213);
                v217 = v527[0];
                v527[1] = v216;
                v528[0] = v215;
                *(v22 + 1272) = v211;
                v525[0] = v217;
                v525[1] = v216;
                *&v526[0] = v215;
                _trie_resolve_combining(v22, v525, &v519);
                v212 = 0uLL;
                *(v22 + 1272) = 0;
                ++v214;
                v213 += 40;
              }

              while (v214 < SDWORD1(v519));
            }

            v191 = Mutable;
            v192 = v519;
            v519 = *buf;
            Mutable = *&buf[16];
            DWORD1(v519) = 0;
            *buf = v192;
            *&buf[16] = v191;
          }

          v153 = 0;
          v494.n128_u32[0] = 0;
        }

        else
        {
          v494.n128_u32[0] = icu_search_context_item_get_item_count();
          v153 = 0;
          if (v494.n128_i32[0] >= 1 && *&buf[4] != 0)
          {
            do
            {
              info = icu_search_context_item_get_info();
              if (!info)
              {
                v440 = __si_assert_copy_extra_2708(0);
                __message_assert("%s:%u: failed assertion '%s' %s ");
                goto LABEL_654;
              }

              v156 = info;
              v157 = *&buf[4];
              if (*&buf[4] < 1)
              {
                goto LABEL_227;
              }

              if (info <= 2)
              {
                if (info == 1)
                {
                  v187 = 0;
                  v188 = v42;
                  v189 = 0;
                  do
                  {
                    v190 = (*&buf[8] + v187);
                    *(v22 + 1140) = *(*&buf[8] + v187 + 16);
                    __memcpy_chk();
                    v188[*(v22 + 1140)] = 0;
                    findMatchTermWildcard(v22, *v190, 0, 1);
                    ++v189;
                    v187 += 40;
                  }

                  while (v189 < *&buf[4]);
                  v42 = v188;
                }

                else if (info == 2)
                {
                  v171 = 0;
                  v172 = 0;
                  do
                  {
                    v527[0] = *(*&buf[8] + v171);
                    v527[1] = *(*&buf[8] + v171 + 16);
                    v528[0] = *(*&buf[8] + v171 + 32);
                    _trie_resolve_combining(v22, v527, buf);
                    ++v172;
                    v157 = *&buf[4];
                    v171 += 40;
                  }

                  while (v172 < *&buf[4]);
LABEL_226:
                  v42 = v495;
LABEL_227:
                  if (v156 == 2)
                  {
                    goto LABEL_229;
                  }
                }
              }

              else
              {
                switch(info)
                {
                  case 3:
                    v175 = v20;
                    v176 = v108;
                    v177 = 0;
                    v178 = 0;
                    do
                    {
                      v179 = strlen(v516);
                      v527[0] = *(*&buf[8] + v177);
                      v527[1] = *(*&buf[8] + v177 + 16);
                      v528[0] = *(*&buf[8] + v177 + 32);
                      trie_resolve_sub_string(v22, v527, v516, v179, &v519);
                      ++v178;
                      v177 += 40;
                    }

                    while (v178 < *&buf[4]);
                    v108 = v176;
                    v20 = v175;
                    v42 = v495;
                    break;
                  case 5:
                    v180 = 0;
                    do
                    {
                      if (v517 >= 1)
                      {
                        for (i = 0; i < v517; ++i)
                        {
                          v182 = *(v518 + 8 * i);
                          v183 = *&buf[8] + 40 * v180;
                          v184 = *v182;
                          v527[0] = *v183;
                          v527[1] = *(v183 + 16);
                          v528[0] = *(v183 + 32);
                          trie_resolve_sub_string(v22, v527, v182 + 1, v184, &v519);
                        }
                      }

                      if (v516)
                      {
                        v185 = *&buf[8] + 40 * v180;
                        v186 = strlen(v516);
                        v527[0] = *v185;
                        v527[1] = *(v185 + 16);
                        v528[0] = *(v185 + 32);
                        trie_resolve_sub_string(v22, v527, v516, v186, &v519);
                      }

                      ++v180;
                      v157 = *&buf[4];
                    }

                    while (v180 < *&buf[4]);
                    goto LABEL_226;
                  case 4:
                    v158 = 0;
                    do
                    {
                      if ((*(*(v22 + 1240) + 16) & 2) != 0)
                      {
                        if (v517 >= 1)
                        {
                          for (j = 0; j < v517; ++j)
                          {
                            v164 = *(v518 + 8 * j);
                            v165 = *v164;
                            v167 = v164[1];
                            v166 = (v164 + 1);
                            v168 = *&buf[8] + 40 * v158;
                            if (utf8_byte_length_noerror(unsigned char)::utf8_len_table[v167 >> 4] == v165)
                            {
                              v527[0] = *v168;
                              v527[1] = *(v168 + 16);
                              v528[0] = *(v168 + 32);
                              trie_resolve_sub_string(v22, v527, v166, v165, &v519);
                            }

                            else
                            {
                              v525[0] = *v168;
                              v525[1] = *(v168 + 16);
                              *&v526[0] = *(v168 + 32);
                              v538 = 0u;
                              v539 = 0u;
                              v536 = 0u;
                              v537 = 0u;
                              v534 = 0u;
                              v535 = 0u;
                              v532 = 0u;
                              v533 = 0u;
                              v530 = 0u;
                              v531 = 0u;
                              v529 = 0u;
                              memset(v528, 0, sizeof(v528));
                              memset(v527, 0, sizeof(v527));
                              _trie_resolve_sub_string_ignore_diacritics(v22, v525, v166, v165, &v519, v527, 0);
                            }
                          }
                        }
                      }

                      else if (v517 >= 1)
                      {
                        for (k = 0; k < v517; ++k)
                        {
                          v160 = *(v518 + 8 * k);
                          v161 = *&buf[8] + 40 * v158;
                          v162 = *v160;
                          v527[0] = *v161;
                          v527[1] = *(v161 + 16);
                          v528[0] = *(v161 + 32);
                          trie_resolve_sub_string(v22, v527, v160 + 1, v162, &v519);
                        }
                      }

                      if (v516)
                      {
                        v169 = *&buf[8] + 40 * v158;
                        v170 = strlen(v516);
                        v527[0] = *v169;
                        v527[1] = *(v169 + 16);
                        v528[0] = *(v169 + 32);
                        trie_resolve_sub_string(v22, v527, v516, v170, &v519);
                      }

                      ++v158;
                      v157 = *&buf[4];
                    }

                    while (v158 < *&buf[4]);
                    goto LABEL_226;
                }
              }

              v173 = Mutable;
              v174 = v519;
              v519 = *buf;
              Mutable = *&buf[16];
              DWORD1(v519) = 0;
              *buf = v174;
              *&buf[16] = v173;
              v157 = DWORD1(v174);
LABEL_229:
              ++v153;
            }

            while (v153 < v494.n128_i32[0] && v157);
          }
        }

LABEL_271:
        if (icu_search_context_is_fuzzy())
        {
          if (!*(*(v22 + 1264) + 48))
          {
LABEL_278:
            v218 = *(v22 + 1240);
            v220 = *(v218 + 16);
            v219 = *(v218 + 20);
            if ((v220 & 0x800) != 0)
            {
              if (v219)
              {
                if (v219 == 1)
                {
                  if (*&buf[4] >= 1)
                  {
                    v260 = 0;
                    v261 = 0;
                    do
                    {
                      v527[0] = *(*&buf[8] + v260);
                      v527[1] = *(*&buf[8] + v260 + 16);
                      v528[0] = *(*&buf[8] + v260 + 32);
                      trie_resolve_sub_string(v22, v527, "\x01\x04", 2, &v519);
                      v527[0] = *(*&buf[8] + v260);
                      v527[1] = *(*&buf[8] + v260 + 16);
                      v528[0] = *(*&buf[8] + v260 + 32);
                      trie_resolve_sub_string(v22, v527, "\x01\x04\x03", 2, &v519);
                      ++v261;
                      v260 += 40;
                    }

                    while (v261 < *&buf[4]);
                  }
                }

                else if (v219 == 5 && *&buf[4] >= 1)
                {
                  v247 = 0;
                  v248 = 0;
                  do
                  {
                    v527[0] = *(*&buf[8] + v247);
                    v527[1] = *(*&buf[8] + v247 + 16);
                    v528[0] = *(*&buf[8] + v247 + 32);
                    trie_resolve_sub_string(v22, v527, "\x01\x05", 2, &v519);
                    v527[0] = *(*&buf[8] + v247);
                    v527[1] = *(*&buf[8] + v247 + 16);
                    v528[0] = *(*&buf[8] + v247 + 32);
                    trie_resolve_sub_string(v22, v527, "\x01\x05\x03", 2, &v519);
                    ++v248;
                    v247 += 40;
                  }

                  while (v248 < *&buf[4]);
                }
              }

              else if (*&buf[4] >= 1)
              {
                v262 = 0;
                v263 = 0;
                do
                {
                  v527[0] = *(*&buf[8] + v262);
                  v527[1] = *(*&buf[8] + v262 + 16);
                  v528[0] = *(*&buf[8] + v262 + 32);
                  trie_resolve_sub_string(v22, v527, "\x01", 1, &v519);
                  ++v263;
                  v262 += 40;
                }

                while (v263 < *&buf[4]);
              }

              v264 = Mutable;
              v265 = v519;
              v519 = *buf;
              Mutable = *&buf[16];
              DWORD1(v519) = 0;
              *buf = v265;
              *&buf[16] = v264;
            }

            else if (v219)
            {
              if (v219 == 1)
              {
                if (*&buf[4] >= 1)
                {
                  v221 = 0;
                  v222 = 0;
                  do
                  {
                    v527[0] = *(*&buf[8] + v221);
                    v527[1] = *(*&buf[8] + v221 + 16);
                    v528[0] = *(*&buf[8] + v221 + 32);
                    trie_resolve_sub_string(v22, v527, "\x01\x01", 2, &v519);
                    v527[0] = *(*&buf[8] + v221);
                    v527[1] = *(*&buf[8] + v221 + 16);
                    v528[0] = *(*&buf[8] + v221 + 32);
                    trie_resolve_sub_string(v22, v527, "\x01\x01\x03", 3, &v519);
                    ++v222;
                    v221 += 40;
                  }

                  while (v222 < *&buf[4]);
                }
              }

              else if (v219 >= 7 && *&buf[4] >= 1)
              {
                v255 = 0;
                v256 = 0;
                do
                {
                  v527[0] = *(*&buf[8] + v255);
                  v527[1] = *(*&buf[8] + v255 + 16);
                  v528[0] = *(*&buf[8] + v255 + 32);
                  trie_resolve_sub_string(v22, v527, "\x01\x03", 2, &v519);
                  ++v256;
                  v255 += 40;
                }

                while (v256 < *&buf[4]);
              }
            }

            else if ((v220 & 0x3080) == 0 && *&buf[4] >= 1)
            {
              v253 = 0;
              v254 = 0;
              do
              {
                v527[0] = *(*&buf[8] + v253);
                v527[1] = *(*&buf[8] + v253 + 16);
                v528[0] = *(*&buf[8] + v253 + 32);
                trie_resolve_sub_string(v22, v527, "\x01\x02", 2, &v519);
                ++v254;
                v253 += 40;
              }

              while (v254 < *&buf[4]);
            }

            while (*(v22 + 48) == 1)
            {
              if (*&buf[4] >= 1)
              {
                v266 = 0;
                v267 = 0;
                while (1)
                {
                  v268 = *(*&buf[8] + v266);
                  v269 = *(*&buf[8] + v266 + 4);
                  if (v269 == 3)
                  {
                    break;
                  }

                  if (v269 == 1)
                  {
                    v270 = *mgetBase(*(v22 + 8), v268);
LABEL_361:
                    v271 = v270 >> 3;
                    v272 = (v270 & 7) << 32;
                    if ((v270 & 3) == 1)
                    {
                      v271 = v270 >> 2;
                      v272 = 0x100000000;
                    }

                    v273 = (v270 & 1) == 0;
                    if (v270)
                    {
                      v274 = v271;
                    }

                    else
                    {
                      v274 = v270 >> 1;
                    }

                    if (v273)
                    {
                      v275 = 0;
                    }

                    else
                    {
                      v275 = v272;
                    }

                    if (v274)
                    {
                      findAddFlatBucket(v22, v275 | v274, *(*&buf[8] + v266 + 8), *(*&buf[8] + v266 + 16), 0, 0);
                    }
                  }

                  ++v267;
                  v266 += 40;
                  if (v267 >= *&buf[4])
                  {
                    goto LABEL_382;
                  }
                }

                v270 = *(*(*(v22 + 8) + 8) + 1028 * v268);
                goto LABEL_361;
              }

LABEL_382:
              if (!DWORD1(v519))
              {
                goto LABEL_383;
              }

              v527[0] = v519;
              *&v527[1] = Mutable;
              v519 = *buf;
              Mutable = *&buf[16];
              DWORD1(v519) = 0;
              CFSetRemoveAllValues(*&buf[16]);
              *buf = v527[0];
              *&buf[16] = *&v527[1];
            }

            if (*&buf[4] < 1)
            {
              goto LABEL_382;
            }

            v276 = 0;
            v277 = 0;
            while (1)
            {
              v278 = *(*&buf[8] + v276);
              v279 = *(*&buf[8] + v276 + 4);
              if (v279 == 3)
              {
                v280 = *(*(*(v22 + 8) + 8) + 1028 * v278);
                if (v280)
                {
                  goto LABEL_379;
                }
              }

              else if (v279 == 1)
              {
                v280 = *mgetBase(*(v22 + 8), v278);
                if (v280)
                {
LABEL_379:
                  if (termFieldMatch(*(*(v22 + 1240) + 20), *(*&buf[8] + v276 + 8), *(*&buf[8] + v276 + 16), *(*(v22 + 1240) + 16)))
                  {
                    *&v527[0] = 0;
                    *&v525[0] = 0;
                    if (icu_search_match())
                    {
                      findHandleMatch(v22, v280, 0, *(*&buf[8] + v276 + 8), *(*&buf[8] + v276 + 16), 1);
                    }
                  }
                }
              }

              ++v277;
              v276 += 40;
              if (v277 >= *&buf[4])
              {
                goto LABEL_382;
              }
            }
          }
        }

        else if (v153 && v153 == v494.n128_u32[0] && *&buf[4] && icu_search_context_item_get_info() != 1)
        {
          goto LABEL_278;
        }

LABEL_383:
        CICleanUpReset(v490, v486);
        *(v22 + 1264) = 0;
LABEL_384:
        v30 = 0x1EBF46000;
        v41 = v108;
        goto LABEL_34;
      }

      v150 = **(v22 + 1240);
      if (*v150 > 3u)
      {
LABEL_453:
        findMatchTerm(v22, 0);
        v30 = 0x1EBF46000;
        goto LABEL_34;
      }

      v151 = v150[1];
      if (v150[1] < 0)
      {
        v249 = v150[2];
        if (v150[2] < 0)
        {
          v257 = v150[3];
          if (v150[3] < 0)
          {
            v311 = v150[4];
            if (v150[4] < 0)
            {
              v317 = v150[5];
              if (v317 < 0)
              {
                goto LABEL_686;
              }

              v318 = ((v311 & 0x7F) << 21) | (v317 << 28) | ((v257 & 0x7F) << 14) | ((v249 & 0x7F) << 7) | v151 & 0x7F;
              v152 = 6;
              v151 = v318;
            }

            else
            {
              v312 = ((v257 & 0x7F) << 14) | (v311 << 21) | ((v249 & 0x7F) << 7) | v151 & 0x7F;
              v152 = 5;
              v151 = v312;
            }
          }

          else
          {
            v258 = ((v249 & 0x7F) << 7) | (v257 << 14) | v151 & 0x7F;
            v152 = 4;
            v151 = v258;
          }
        }

        else
        {
          v151 = v151 & 0x7F | (v249 << 7);
          v152 = 3;
        }
      }

      else
      {
        v152 = 2;
      }

      if ((v151 - 1) > 5)
      {
LABEL_452:
        *(v22 + 1232) = &v69[v152];
        goto LABEL_453;
      }

      v319 = v152 + 1;
      if ((v150[v152] & 0x80000000) == 0)
      {
LABEL_449:
        v152 = v319;
        goto LABEL_452;
      }

      v320 = v152 + 2;
      if (v150[v319] < 0)
      {
        v319 = v152 + 3;
        if ((v150[v320] & 0x80000000) == 0)
        {
          goto LABEL_449;
        }

        v320 = v152 + 4;
        if (v150[v319] < 0)
        {
          if (v150[v320] < 0)
          {
            goto LABEL_686;
          }

          v152 += 5;
          goto LABEL_452;
        }
      }

      v152 = v320;
      goto LABEL_452;
    }

    v98 = *(v22 + 1240);
    v100 = *v98;
    v99 = v98[1];
    v101 = **v98;
    v102 = (v101 - 2) <= 2 && v101 == *v99;
    if (!v102)
    {
      goto LABEL_34;
    }

    v103 = *(v100 + 1);
    if (*(v100 + 1) < 0)
    {
      v104 = *(v100 + 2);
      if (*(v100 + 2) < 0)
      {
        v245 = *(v100 + 3);
        if (*(v100 + 3) < 0)
        {
          v251 = *(v100 + 4);
          if (*(v100 + 4) < 0)
          {
            v281 = *(v100 + 5);
            if (v281 < 0)
            {
              goto LABEL_686;
            }

            v252 = ((v251 & 0x7F) << 21) | (v281 << 28) | ((v245 & 0x7F) << 14);
          }

          else
          {
            v252 = ((v245 & 0x7F) << 14) | (v251 << 21);
          }

          v246 = v252 & 0xFFFFC07F | ((v104 & 0x7F) << 7);
        }

        else
        {
          v246 = ((v104 & 0x7F) << 7) | (v245 << 14);
        }

        v103 = v246 & 0xFFFFFF80 | v103 & 0x7F;
      }

      else
      {
        v103 = v103 & 0x7F | (v104 << 7);
      }
    }

    v282 = v99[1];
    if (v99[1] < 0)
    {
      v285 = v99[2];
      if (v99[2] < 0)
      {
        v286 = v99[3];
        if (v99[3] < 0)
        {
          v288 = v99[4];
          if (v99[4] < 0)
          {
            v289 = v99[5];
            if (v289 < 0)
            {
              v440 = __si_assert_copy_extra_2708(0);
              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_654:
              free(v440);
              if (!__valid_fs(-1))
              {
                goto LABEL_682;
              }

              goto LABEL_655;
            }

            v283 = v41;
            v287 = ((v288 & 0x7F) << 21) | (v289 << 28) | ((v286 & 0x7F) << 14) | ((v285 & 0x7F) << 7) | v282 & 0x7F;
            v284 = 6;
          }

          else
          {
            v283 = v41;
            v287 = ((v286 & 0x7F) << 14) | (v288 << 21) | ((v285 & 0x7F) << 7) | v282 & 0x7F;
            v284 = 5;
          }
        }

        else
        {
          v283 = v41;
          v287 = ((v285 & 0x7F) << 7) | (v286 << 14) | v282 & 0x7F;
          v284 = 4;
        }

        v282 = v287;
        if (!v103)
        {
          goto LABEL_516;
        }
      }

      else
      {
        v283 = v41;
        v282 = v282 & 0x7F | (v285 << 7);
        v284 = 3;
        if (!v103)
        {
          goto LABEL_516;
        }
      }
    }

    else
    {
      v283 = v41;
      v284 = 2;
      if (!v103)
      {
        goto LABEL_516;
      }
    }

    if (v103 != v282)
    {
      goto LABEL_516;
    }

    v290 = HIDWORD(v75);
    if (HIDWORD(v75) == 1)
    {
      if (*(v22 + 72) > v76)
      {
        goto LABEL_408;
      }

      v461 = __si_assert_copy_extra_2708(*(v72 + 112));
      v462 = v461;
      v463 = "";
      if (v461)
      {
        v463 = v461;
      }

      __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 6045, "ptr.next < ctx->trie_max", v463, v76, *(v22 + 64));
      free(v462);
      v464 = *(*(v22 + 8) + 112);
LABEL_681:
      if (!__valid_fsp(v464))
      {
LABEL_682:
        MEMORY[0xC00] = -559038737;
        abort();
      }

LABEL_655:
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (HIDWORD(v75) == 3 && *(v22 + 64) <= v76)
    {
      v465 = __si_assert_copy_extra_2708(*(v72 + 4576));
      v466 = v465;
      v467 = "";
      if (v465)
      {
        v467 = v465;
      }

      __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 6043, "ptr.next < ctx->trie_fat_max", v467, v76, *(v22 + 64));
      free(v466);
      v464 = *(*(v22 + 8) + 4576);
      goto LABEL_681;
    }

LABEL_408:
    while (1)
    {
      v291 = *(v22 + 1224);
      *(v22 + 1224) = v291 + 1;
      v292 = *v291;
      v293 = *(v22 + 8);
      v294 = v76;
      v295 = *(&tcm + v292);
      if (v290 == 1)
      {
        break;
      }

      if (v290 != 3)
      {
        goto LABEL_437;
      }

      v296 = *(v293[1] + 1028 * v294 + 4 * v295 + 4);
      v297 = v296 >> 3;
      v298 = (v296 & 7) << 32;
      if ((v296 & 3) == 1)
      {
        v297 = v296 >> 2;
        v298 = 0x100000000;
      }

      if (v296)
      {
        LODWORD(v76) = v297;
      }

      else
      {
        LODWORD(v76) = v296 >> 1;
      }

      if (v296)
      {
        v299 = v298;
      }

      else
      {
        v299 = 0;
      }

      v30 = 0x1EBF46000;
LABEL_432:
      if (!v76)
      {
        goto LABEL_516;
      }

      v310 = *(v22 + 1140);
      *(v22 + 1140) = v310 + 1;
      v42[v310] = v292;
      v42[*(v22 + 1140)] = 0;
      if (!v299)
      {
        findAddFlatBucket(v22, v76, 0, 0, 0, 0);
LABEL_437:
        v30 = 0x1EBF46000;
LABEL_516:
        v41 = v283;
LABEL_34:
        if (++v41 >= *(v22 + 1152))
        {
          goto LABEL_19;
        }

        goto LABEL_35;
      }

      v290 = HIDWORD(v299);
      if (!--v284)
      {
        findMatchRangeChars(v22, v299 | v76);
        goto LABEL_437;
      }
    }

    v300 = mgetBase(v293, v294);
    v301 = (v300 + 4);
    if (((*(v300 + 4 + 4 * (v295 >> 5)) >> v295) & 1) == 0)
    {
      goto LABEL_437;
    }

    v302 = 0;
    v303 = v295 >> 6;
    v30 = 0x1EBF46000;
    if (v295 >> 6 > 1)
    {
      if (v303 != 2)
      {
        v305 = vcnt_s8(*(v300 + 20));
        v305.i16[0] = vaddlv_u8(v305);
        v302 = v305.u32[0];
      }

      v306 = vcnt_s8(*(v300 + 12));
      v306.i16[0] = vaddlv_u8(v306);
      v302 += v306.u32[0];
    }

    else
    {
      v304 = v295 >> 6;
      if (!v303)
      {
LABEL_427:
        v308 = vcnt_s8((*&v301[v303] & ~(-1 << v295)));
        v308.i16[0] = vaddlv_u8(v308);
        v309 = *(v300 + 38 + 4 * (v308.u32[0] + v304));
        if (v309)
        {
          if ((*(v300 + 38 + 4 * (v308.u32[0] + v304)) & 3) == 1)
          {
            LODWORD(v76) = v309 >> 2;
            v299 = 0x100000000;
          }

          else
          {
            LODWORD(v76) = v309 >> 3;
            v299 = (v309 & 7) << 32;
          }
        }

        else
        {
          v299 = 0;
          LODWORD(v76) = v309 >> 1;
        }

        goto LABEL_432;
      }
    }

    v307 = vcnt_s8(*v301);
    v307.i16[0] = vaddlv_u8(v307);
    v304 = v307.u32[0] + v302;
    goto LABEL_427;
  }

  (*(a11 + 16))(a11, v22);
  v30 = 0x1EBF46000uLL;
LABEL_19:
  if (*(v30 + 2768) >= 5)
  {
    v442 = *__error();
    v443 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v443, OS_LOG_TYPE_DEFAULT))
    {
      v444 = *(v22 + 1184);
      v445 = CFAbsoluteTimeGetCurrent() - Current;
      LODWORD(v527[0]) = 67109376;
      DWORD1(v527[0]) = v444;
      WORD4(v527[0]) = 2048;
      *(v527 + 10) = v445;
      _os_log_impl(&dword_1C278D000, v443, OS_LOG_TYPE_DEFAULT, "resolve trie terms bc:%u : %f seconds", v527, 0x12u);
    }

    *__error() = v442;
    v31 = *(v22 + 1184);
    if (!v31)
    {
      goto LABEL_545;
    }
  }

  else
  {
    v31 = *(v22 + 1184);
    if (!v31)
    {
      goto LABEL_545;
    }
  }

  if (**v22)
  {
    goto LABEL_545;
  }

  if (v31 < 0x15)
  {
    goto LABEL_542;
  }

  if ((*(v22 + 1288) & 1) == 0)
  {
    goto LABEL_542;
  }

  v32 = CFAbsoluteTimeGetCurrent();
  v33 = *(v22 + 1184);
  memset(v528, 0, sizeof(v528));
  memset(v527, 0, sizeof(v527));
  v34 = 0x1EBF46000;
  if (!v33)
  {
    goto LABEL_542;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = *(v22 + 40);
  while (1)
  {
    v39 = *(v38 + 8 * v35);
    if ((*v39 & 3) == 0)
    {
      goto LABEL_26;
    }

    v40 = *(v39 + 8);
    if (v40 == 0.0)
    {
      goto LABEL_26;
    }

    ++v37;
    if (v36 > 19)
    {
      break;
    }

    *(v527 + v36++) = v40;
LABEL_26:
    if (v33 == ++v35)
    {
      goto LABEL_540;
    }
  }

  v356 = v32;
  qsort(v527, v36, 4uLL, _floatCompare);
  if (v33 <= v35)
  {
    v32 = v356;
    v34 = 0x1EBF46000uLL;
  }

  else
  {
    v357 = *(v22 + 40);
    v32 = v356;
    v34 = 0x1EBF46000;
    do
    {
      v359 = *(v357 + 8 * v35);
      if ((*v359 & 3) != 0)
      {
        v360 = *(v359 + 8);
        if (v360 != 0.0)
        {
          ++v37;
          if (v360 > *v527)
          {
            LODWORD(v527[0]) = *(v359 + 8);
            v361 = 1;
            while (1)
            {
              v362 = *(v527 + v361);
              if (v360 > v362)
              {
                break;
              }

              if (v361 <= 0x12)
              {
                ++v361;
                v102 = v360 == v362;
                v360 = v362;
                if (!v102)
                {
                  continue;
                }
              }

              goto LABEL_529;
            }

            v358 = v527 + v361;
            *(v358 - 1) = v362;
            *v358 = v360;
          }
        }
      }

LABEL_529:
      ++v35;
    }

    while (v35 != v33);
  }

LABEL_540:
  if (v37 < 0x15)
  {
LABEL_542:
    v369 = CFAbsoluteTimeGetCurrent();
    psort(*(v22 + 40), v31, 8uLL, flatPageSearchBucketCompare);
    v370 = *__error();
    v371 = _SILogForLogForCategory(1);
    v372 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v371, v372))
    {
      v373 = CFAbsoluteTimeGetCurrent() - v369;
      LODWORD(v527[0]) = 67109376;
      DWORD1(v527[0]) = v31;
      WORD4(v527[0]) = 2048;
      *(v527 + 10) = v373;
      _os_log_impl(&dword_1C278D000, v371, v372, "sort %d flat pages: %f seconds", v527, 0x12u);
    }

    *__error() = v370;
    goto LABEL_545;
  }

  v363 = 0;
  v364 = 0;
  v365 = 0;
  v366 = *v527;
  v367 = *(v22 + 40);
  v368 = v33;
  do
  {
    v378 = *v367;
    if ((**v367 & 3) != 0)
    {
      v379 = v378[2];
      if (v379 != 0.0)
      {
        if (v379 >= v366)
        {
          if (v379 <= v366)
          {
            ++v364;
          }

          else
          {
            ++v365;
          }
        }

        else
        {
          if (*(v22 + 1288) == 1)
          {
            v378[2] = -1.0;
          }

          ++v363;
        }
      }
    }

    ++v367;
    --v368;
  }

  while (v368);
  *(v22 + 1284) = v366;
  if (*(v34 + 2768) >= 5)
  {
    v457 = v32;
    v458 = *__error();
    v459 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v459, OS_LOG_TYPE_DEFAULT))
    {
      v460 = CFAbsoluteTimeGetCurrent();
      LODWORD(v525[0]) = 134219776;
      *(v525 + 4) = v22;
      WORD6(v525[0]) = 1024;
      *(v525 + 14) = v33;
      WORD1(v525[1]) = 1024;
      DWORD1(v525[1]) = v37;
      WORD4(v525[1]) = 1024;
      *(&v525[1] + 10) = v365;
      HIWORD(v525[1]) = 1024;
      LODWORD(v526[0]) = v364;
      WORD2(v526[0]) = 1024;
      *(v526 + 6) = v363;
      WORD5(v526[0]) = 2048;
      *(v526 + 12) = v366;
      WORD2(v526[1]) = 2048;
      *(&v526[1] + 6) = v460 - v457;
      _os_log_impl(&dword_1C278D000, v459, OS_LOG_TYPE_DEFAULT, "FindTermIDsContext %p invalidate fuzzy pages bc: %u fc: %u gc: %u mc:%u lc: %u s: %f took %f seconds", v525, 0x3Eu);
    }

    *__error() = v458;
    v20 = v497;
  }

  if ((**v22 & 1) == 0)
  {
    v432 = CFAbsoluteTimeGetCurrent();
    psort(*(v22 + 40), v31, 8uLL, flatPageSearchFuzzyBucketCompare);
    v433 = *__error();
    v434 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
    {
      v435 = CFAbsoluteTimeGetCurrent() - v432;
      LODWORD(v527[0]) = 134218496;
      *(v527 + 4) = v22;
      WORD6(v527[0]) = 1024;
      *(v527 + 14) = v31;
      WORD1(v527[1]) = 2048;
      *(&v527[1] + 4) = v435;
      _os_log_impl(&dword_1C278D000, v434, OS_LOG_TYPE_DEFAULT, "FindTermIDsContext %p fuzzy sort %d flat pages: %f seconds", v527, 0x1Cu);
    }

    *__error() = v433;
    v436 = v31 - 1;
    if (v31 - 1 >= -1)
    {
      v436 = -1;
    }

    v437 = v436 + 1;
    while (1)
    {
      v438 = v31 - 1;
      if (v31 - 1 < 0)
      {
        break;
      }

      v439 = *(*(v22 + 40) + 8 * (v438 & 0x7FFFFFFF));
      if ((*v439 & 3) == 0)
      {
        v437 = v31;
        break;
      }

      LODWORD(v31) = v31 - 1;
      if (*(v439 + 8) >= 0.0)
      {
        v437 = v438 + 1;
        break;
      }
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v468 = *__error();
      v469 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v469, OS_LOG_TYPE_DEFAULT))
      {
        v470 = *(v22 + 1184);
        LODWORD(v527[0]) = 134218496;
        *(v527 + 4) = v22;
        WORD6(v527[0]) = 1024;
        *(v527 + 14) = v470;
        WORD1(v527[1]) = 1024;
        DWORD1(v527[1]) = v437;
        _os_log_impl(&dword_1C278D000, v469, OS_LOG_TYPE_DEFAULT, "FindTermIDsContext %p, fuzzy bc: %d -> %d", v527, 0x18u);
      }

      *__error() = v468;
      v20 = v497;
    }

    *(v22 + 1184) = v437;
  }

LABEL_545:
  if ((*v496 & 1) == 0)
  {
    v374 = *(v22 + 1184);
    if (v374)
    {
      v375 = CFAbsoluteTimeGetCurrent();
      v524[0] = 0;
      *(v22 + 1280) = 0;
      *&v527[0] = 0;
      *(&v527[0] + 1) = v527;
      v376.n128_u64[0] = 0x2000000000;
      *&v527[1] = 0x2000000000;
      BYTE8(v527[1]) = 0;
      if (v374 != 1 && (a13 & 1) == 0)
      {
        v513[0] = MEMORY[0x1E69E9820];
        v376.n128_u64[0] = 0x40000000;
        v513[1] = 0x40000000;
        v500 = v513;
        v513[2] = ___bt_findBulk_block_invoke;
        v513[3] = &__block_descriptor_tmp_80;
        v513[4] = v22;
        v514 = v374;
        v377 = 1;
        goto LABEL_567;
      }

      v500 = 0;
      v380 = (2 * gCPUCount);
      if (!a13)
      {
        v380 = 1;
      }

      if (v380 >= v374)
      {
        v377 = v374;
      }

      else
      {
        v377 = v380;
      }

      if (v374 == 1)
      {
        v381 = 1;
        v382 = 1;
      }

      else
      {
LABEL_567:
        v381 = v374;
        v382 = (v377 + v374 - 1) / v377;
      }

      v501 = &v474;
      v495 = a12;
      MEMORY[0x1EEE9AC00](v376);
      v383 = &v474 - ((8 * v377 + 15) & 0xFFFFFFFF0);
      bzero(v383, 8 * v377);
      MEMORY[0x1EEE9AC00](v384);
      bzero(v383, 8 * v377);
      v386 = 0x1EBF46000uLL;
      if (v377)
      {
        v387 = 0;
        v388 = 0;
        v385.n128_u64[0] = 134218496;
        do
        {
          *&v383[8 * v388] = v387;
          v389 = v387 + v382;
          if (v387 + v382 >= v381)
          {
            v389 = v381;
          }

          if (v381 <= v389 + 1)
          {
            v390 = v389 + 1;
          }

          else
          {
            v390 = v381;
          }

          v387 = v390 - 1;
          while (v387 != v389)
          {
            v391 = v389 + 1;
            v392 = **(*(v22 + 40) + 8 * v389 + 8) ^ **(*(v22 + 40) + 8 * v389);
            ++v389;
            if (v392 >= 8)
            {
              v387 = v391 - 1;
              break;
            }
          }

          *&v383[8 * v388] = v387;
          if (*(v386 + 2768) >= 5)
          {
            v494 = v385;
            LODWORD(v491) = *__error();
            v490 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v490, OS_LOG_TYPE_DEFAULT))
            {
              v393 = *&v383[8 * v388];
              LODWORD(v525[0]) = v494.n128_u32[0];
              *(v525 + 4) = v388;
              WORD6(v525[0]) = 2048;
              *(v525 + 14) = v393;
              WORD3(v525[1]) = 2048;
              *(&v525[1] + 1) = v393;
              _os_log_impl(&dword_1C278D000, v490, OS_LOG_TYPE_DEFAULT, "Index %lu starting at %lu ending at %lu", v525, 0x20u);
            }

            *__error() = v491;
            v386 = 0x1EBF46000;
            v385 = v494;
          }

          ++v388;
        }

        while (v388 != v377);
      }

      MEMORY[0x1EEE9AC00](v385);
      v395 = &v474 - v377 * v394;
      bzero(v395, v396);
      v502[0] = MEMORY[0x1E69E9820];
      v502[1] = 0x40000000;
      v502[2] = ___bt_findBulk_block_invoke_81;
      v502[3] = &unk_1E8193428;
      v502[6] = v527;
      v503 = &v474 - ((8 * v377 + 15) & 0xFFFFFFFF0);
      v504 = v395;
      v505 = v22;
      v506 = v498;
      v507 = v503;
      v508 = v487;
      v509 = v496;
      v510 = v374;
      v397 = v499;
      v511 = v499;
      v512 = v488;
      v502[4] = v495;
      v502[5] = v500;
      dispatch_apply(v377, 0, v502);
      v398 = 0x1EBF46000uLL;
      if (v377)
      {
        if (*(v22 + 1160))
        {
          v399 = 0;
          v400 = 8 * v397;
          do
          {
            v401 = &v395[1296 * v399];
            *(v22 + 1280) += *(v401 + 320);
            if (*(v22 + 1160))
            {
              if (v397)
              {
                v402 = 0;
                do
                {
                  v410 = *(v401 + 145);
                  if (v410)
                  {
                    v411 = *(v410 + v402);
                    if (v411)
                    {
                      if ((*(*(&v527[0] + 1) + 24) & 1) == 0)
                      {
                        v412 = *(v411 + 32);
                        if (v412)
                        {
                          v413 = *(*(v22 + 1160) + v402);
                          if (*v411 == 1)
                          {
                            oq_force_meta(*(*(v22 + 1160) + v402));
                            v412 = *(v411 + 32);
                          }

                          v415 = *(v413 + 24);
                          v414 = *(v413 + 32);
                          v416 = v412 + v414;
                          if (*v413 == 1)
                          {
                            if (v415 >= v416)
                            {
                              v417 = *(v413 + 16);
                            }

                            else
                            {
                              *(v413 + 24) = v416;
                              v417 = malloc_type_realloc(*(v413 + 16), 16 * v416, 0x1000040451B5BE8uLL);
                              *(v413 + 16) = v417;
                              v414 = *(v413 + 32);
                              v412 = *(v411 + 32);
                            }

                            v419 = *(v411 + 16);
                            v420 = 16 * v412;
                            v421 = &v417[16 * v414];
                          }

                          else
                          {
                            if (v415 >= v416)
                            {
                              v418 = *(v413 + 16);
                            }

                            else
                            {
                              *(v413 + 24) = v416;
                              v418 = malloc_type_realloc(*(v413 + 16), 8 * v416, 0x100004000313F17uLL);
                              *(v413 + 16) = v418;
                              v414 = *(v413 + 32);
                              v412 = *(v411 + 32);
                            }

                            v419 = *(v411 + 16);
                            v420 = 8 * v412;
                            v421 = &v418[8 * v414];
                          }

                          memcpy(v421, v419, v420);
                          *(v413 + 32) += *(v411 + 32);
                          v411 = *(*(v401 + 145) + v402);
                        }
                      }

                      free(*(v411 + 16));
                      free(*(*(v401 + 145) + v402));
                    }
                  }

                  v422 = *(v22 + 1168);
                  if (v422)
                  {
                    v423 = *(v422 + v402);
                    if (v423)
                    {
                      v424 = *(v401 + 146);
                      if (v424)
                      {
                        v409 = *(v424 + v402);
                        if (v409)
                        {
                          if ((*(*(&v527[0] + 1) + 24) & 1) == 0)
                          {
                            v405 = *(v409 + 32);
                            if (v405)
                            {
                              if (*v409 == 1)
                              {
                                oq_force_meta(v423);
                                v405 = *(v409 + 32);
                              }

                              v425 = *(v423 + 24);
                              v404 = *(v423 + 32);
                              v426 = v405 + v404;
                              if (*v423 == 1)
                              {
                                if (v425 < v426)
                                {
                                  *(v423 + 24) = v426;
                                  v403 = malloc_type_realloc(*(v423 + 16), 16 * v426, 0x1000040451B5BE8uLL);
                                  *(v423 + 16) = v403;
                                  v404 = *(v423 + 32);
                                  v405 = *(v409 + 32);
                                }

                                else
                                {
                                  v403 = *(v423 + 16);
                                }

                                v406 = *(v409 + 16);
                                v407 = 16 * v405;
                                v408 = &v403[16 * v404];
                              }

                              else
                              {
                                if (v425 >= v426)
                                {
                                  v427 = *(v423 + 16);
                                }

                                else
                                {
                                  *(v423 + 24) = v426;
                                  v427 = malloc_type_realloc(*(v423 + 16), 8 * v426, 0x100004000313F17uLL);
                                  *(v423 + 16) = v427;
                                  v404 = *(v423 + 32);
                                  v405 = *(v409 + 32);
                                }

                                v406 = *(v409 + 16);
                                v407 = 8 * v405;
                                v408 = &v427[8 * v404];
                              }

                              memcpy(v408, v406, v407);
                              *(v423 + 32) += *(v409 + 32);
                              v409 = *(*(v401 + 146) + v402);
                            }
                          }

                          free(*(v409 + 16));
                          free(*(*(v401 + 146) + v402));
                        }
                      }
                    }
                  }

                  v402 += 8;
                }

                while (v400 != v402);
              }

              free(*(v401 + 145));
              free(*(v401 + 146));
              v397 = v499;
              v398 = 0x1EBF46000;
            }

            ++v399;
          }

          while (v399 != v377);
        }

        else
        {
          v428 = v395 + 1280;
          v429 = *(v22 + 1280);
          do
          {
            v429 += *v428;
            *(v22 + 1280) = v429;
            v428 += 324;
            --v377;
          }

          while (v377);
        }
      }

      v524[0] = *(*(&v527[0] + 1) + 24) ^ 1;
      v430 = v524[0] != 1 || *(v398 + 2768) <= 4;
      v20 = v497;
      if (!v430)
      {
        v446 = *__error();
        v447 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
        {
          v449 = *(v22 + 1280);
          LODWORD(v525[0]) = 67109376;
          DWORD1(v525[0]) = v499;
          WORD4(v525[0]) = 1024;
          *(v525 + 10) = v449;
          _os_log_impl(&dword_1C278D000, v447, OS_LOG_TYPE_DEFAULT, "node count: %d, compare count %d", v525, 0xEu);
        }

        *__error() = v446;
        if (dword_1EBF46AD0 >= 5)
        {
          v450 = *__error();
          v451 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v451, OS_LOG_TYPE_DEFAULT))
          {
            v452 = CFAbsoluteTimeGetCurrent() - v375;
            LODWORD(v525[0]) = 134217984;
            *(v525 + 4) = v452;
            _os_log_impl(&dword_1C278D000, v451, OS_LOG_TYPE_DEFAULT, "resolve flat page terms: %f seconds", v525, 0xCu);
          }

          *__error() = v450;
        }
      }

      _Block_object_dispose(v527, 8);
    }
  }

  CIOnThreadCleanUpPop(v20);
  CICleanUpReset(v20, v493);
  return v492;
}

uint64_t indexFindBulk(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7, char a8, _BYTE *a9, char **a10, char **a11, void *a12, uint64_t a13)
{
  v275 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v18 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
  v267 = v19;
  v266 = v20;
  v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  v22 = *(v21 + 312);
  v23 = *(v21 + 224);
  if (v23)
  {
    v23(*(v21 + 288));
  }

  if (_setjmp(v21))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v21 + 312) = v22;
    if (__THREAD_SLOT_KEY[0])
    {
      v24 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v24)
      {
        goto LABEL_223;
      }
    }

    else
    {
      makeThreadId();
      v24 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v24)
      {
        goto LABEL_223;
      }
    }

    v25 = v24;
    if (v24 < 0x801)
    {
LABEL_9:
      v26 = &threadData[9 * v25];
      v28 = *(v26 - 4);
      v27 = (v26 - 2);
      if (v28 > v266)
      {
        v29 = v25 - 1;
        do
        {
          CIOnThreadCleanUpPop(v29);
        }

        while (*v27 > v266);
      }

      dropThreadId(v18, 1, add_explicit + 1);
      return CICleanUpReset(v18, v267);
    }

LABEL_223:
    makeThreadId();
    v25 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_9;
  }

  v258 = a7;
  v259 = v22;
  v31 = *__error();
  v32 = _SILogForLogForCategory(1);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (a13)
  {
    if (v33)
    {
      v34 = *(a13 + 8);
      *buf = 138412546;
      *&buf[4] = v34;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "client bundle: %@, query nodes count %u", buf, 0x12u);
    }

    *__error() = v31;
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      v35 = *(a13 + 8);
      v36 = *__error();
      v37 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = @"unknown-client";
        if (v35)
        {
          v38 = v35;
        }

        *v270 = 138412546;
        *&v270[4] = v38;
        *&v270[12] = 1024;
        *&v270[14] = a3;
        _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "Bulk index search from %@ with %u nodes", v270, 0x12u);
      }

      *__error() = v36;
      if (a3 >= 0x3E9)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __analytics_log_large_index_find_block_invoke;
        v272 = &__block_descriptor_tmp_3736;
        v274 = a3;
        v273 = a13;
        analytics_send_event_lazy();
      }
    }
  }

  else
  {
    if (v33)
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "client bundle: UNKNOWN, query nodes count %u", buf, 8u);
    }

    *__error() = v31;
  }

  if (__THREAD_SLOT_KEY[0])
  {
    v39 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v39)
    {
      goto LABEL_30;
    }
  }

  else
  {
    makeThreadId();
    v39 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v39)
    {
LABEL_30:
      v40 = v39;
      if (v39 < 0x801)
      {
        goto LABEL_31;
      }
    }
  }

  makeThreadId();
  v40 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
LABEL_31:
  v41 = v40 - 1;
  v42 = threadData[9 * v40 - 5];
  v43 = a3;
  if (a3)
  {
    v44 = a3;
    v45 = a5;
    do
    {
      v46 = *v45++;
      *v46 = 0;
      *(v46 + 16) = 0uLL;
      *(v46 + 32) = 0uLL;
      *(v46 + 44) = 0uLL;
      *(v46 + 64) = 0xFFFFFFFFLL;
      *(v46 + 8) = 0;
      --v44;
    }

    while (v44);
  }

  v256 = v42;
  if (!a6)
  {
    v47 = -1;
    goto LABEL_40;
  }

  if (!a12)
  {
    v47 = -1;
    if (!a3)
    {
      goto LABEL_40;
    }

    goto LABEL_73;
  }

  if (pthread_rwlock_rdlock((a1 + 14184)))
  {
    v229 = __si_assert_copy_extra_332();
    v230 = v229;
    v231 = "";
    if (v229)
    {
      v231 = v229;
    }

    __message_assert(v229, "poslock.c", 14, "result==0", v231);
LABEL_229:
    free(v230);
    if (__valid_fs(-1))
    {
      v232 = 2989;
    }

    else
    {
      v232 = 3072;
    }

    *v232 = -559038737;
    abort();
  }

  v47 = CIOnThreadCleanUpPush(v41, posreadunlock, a1 + 14184);
  v43 = a3;
  if (a3)
  {
LABEL_73:
    v84 = v43;
    v85 = a6;
    do
    {
      v86 = *v85;
      if (*v85)
      {
        *v86 = 0;
        *(v86 + 16) = 0uLL;
        *(v86 + 32) = 0uLL;
        *(v86 + 44) = 0uLL;
        *(v86 + 64) = 0xFFFFFFFFLL;
        *(v86 + 8) = 0;
      }

      ++v85;
      --v84;
    }

    while (v84);
  }

LABEL_40:
  v255 = v41;
  v260 = add_explicit;
  v253 = v47;
  v48 = *__error();
  v49 = _SILogForLogForCategory(1);
  v50 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v49, v50))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_1C278D000, v49, v50, "process for %p", buf, 0xCu);
  }

  *__error() = v48;
  v51 = atomic_load((a1 + 36));
  v52 = a9;
  v53 = a3;
  if ((*a9 & 1) == 0)
  {
    v58 = 4685;
    if (a3)
    {
      _ZF = a6 == 0;
    }

    else
    {
      _ZF = 1;
    }

    v60 = !_ZF;
    v61 = 0uLL;
    while (1)
    {
      v62 = v51;
      v63 = *(a1 + 4680);
      if (v258)
      {
        v64 = 0;
      }

      else
      {
        v65 = *(a1 + 4928);
        v66 = *(a1 + 4912);
        v67 = a6;
        if (!v63)
        {
          v67 = 0;
        }

        v68 = a1 + 96;
        v69 = a1;
        v70 = a5;
        v71 = a5;
        v72 = a1;
        v73 = v51;
        v74 = v58;
        Bulk = _bt_findBulk(v69, v68, v66, v65, a2, v53, a4, v70, v67, v52, 0, 0, a8);
        v61 = 0uLL;
        v53 = a3;
        v52 = a9;
        if (*a9)
        {
          goto LABEL_43;
        }

        v58 = v74;
        v62 = v73;
        a1 = v72;
        a5 = v71;
        v64 = Bulk;
      }

      v76 = v64;
      if (v64 == *(a1 + v58))
      {
        if ((v62 & 4) != 0)
        {
          break;
        }

        v77 = atomic_load((a1 + 36));
        if ((v77 & 4) == 0)
        {
          break;
        }
      }

      v78 = a5;
      v79 = a3;
      if (v53)
      {
        do
        {
          v80 = *v78++;
          *v80 = 0;
          *(v80 + 16) = v61;
          *(v80 + 32) = v61;
          *(v80 + 44) = v61;
          *(v80 + 64) = 0xFFFFFFFFLL;
          *(v80 + 8) = 0;
          --v79;
        }

        while (v79);
        v81 = a6;
        v82 = a3;
        if (v60)
        {
          do
          {
            v83 = *v81;
            if (*v81)
            {
              *v83 = 0;
              *(v83 + 16) = v61;
              *(v83 + 32) = v61;
              *(v83 + 44) = v61;
              *(v83 + 64) = 0xFFFFFFFFLL;
              *(v83 + 8) = 0;
            }

            ++v81;
            --v82;
          }

          while (v82);
        }
      }

      v51 = atomic_load((a1 + 36));
      if (*v52)
      {
        goto LABEL_43;
      }
    }

    v87 = v53;
    v250 = v76;
    v252 = v58;
    Current = CFAbsoluteTimeGetCurrent();
    v242 = v63;
    v249 = a5;
    if (v63)
    {
      v89 = 0;
      v90 = v255;
    }

    else
    {
      v91 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
      v89 = v91;
      v91[1] = a3;
      v91[2] = 1;
      v90 = v255;
      if (v87)
      {
        v92 = malloc_type_zone_malloc(queryZone, 40 * a3 + 80, 0xA4971684uLL);
        if (!v92)
        {
          _log_fault_for_malloc_failure();
        }

        *v89 = v92;
        v92[4] = 0;
        *v92 = 0u;
        *(v92 + 1) = 0u;
        v87 = a3;
      }

      else
      {
        *v91 = 0;
      }

      CICleanUpPush(v255, PQueue_bulk_TermIdQueue_free, v89);
    }

    Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, a3, 0);
    CICleanUpPush(v90, MEMORY[0x1E695D7C0], Mutable);
    if (!v87)
    {
LABEL_115:
      v265 = 0;
      if (v242)
      {
        v265 = 1;
        v124 = a9;
        goto LABEL_149;
      }

      v125 = malloc_type_malloc(0x18uLL, 0x1020040F21E5318uLL);
      storage_reader_init(a1 + 4984, v125);
      CICleanUpPush(v255, storage_reader_free, v125);
      if (a6)
      {
        v126 = malloc_type_malloc(0x18uLL, 0x1020040F21E5318uLL);
        storage_reader_init(a1 + 9704, v126);
        CICleanUpPush(v255, storage_reader_free, v126);
      }

      else
      {
        v126 = 0;
      }

      v127 = *(a1 + 9400);
      if (v125 && *(v125 + 16) != 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
        }

LABEL_147:
        v124 = a9;
        if ((*a9 & 1) == 0 && v89[2] != 1)
        {
          v233 = __si_assert_copy_extra_3233(0, -1);
          v152 = v233;
          v234 = "";
          if (v233)
          {
            v234 = v233;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 960, "*canceled || pqcount_bulk_TermIdQueue_t(q_pqueue) == 0", v234);
LABEL_236:
          free(v152);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

LABEL_149:
        if (v265 != 1 || (*v124 & 1) != 0)
        {
          goto LABEL_43;
        }

        v147 = *(a1 + v252);
        if (v250 != v147 || (v62 & 4) != 0)
        {
          v149 = v258;
          v150 = a10;
          if (v250 != v147)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v148 = atomic_load((a1 + 36));
          v149 = v258;
          v150 = a10;
          if ((v148 & 4) != 0)
          {
LABEL_154:
            v151 = __si_assert_copy_extra_3233(0, -1);
            v152 = v151;
            v153 = "";
            if (v151)
            {
              v153 = v151;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 966, "!((renamed != cindex->trie.renamed) || (!isCompact && (cindex->flags & kIndexFlagCompact)))", v153);
            goto LABEL_236;
          }
        }

        if (v150)
        {
          *v150 = clonePayloadData((a1 + 4944), *(a1 + 56), v149 ^ 1u);
        }

        v54 = v260;
        if (a6 && a11)
        {
          *a11 = clonePayloadData((a1 + 9664), *(a1 + 56), v258 ^ 1u);
        }

        v154 = *__error();
        v155 = _SILogForLogForCategory(1);
        v156 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v155, v156))
        {
          v157 = CFAbsoluteTimeGetCurrent() - Current;
          *buf = 134217984;
          *&buf[4] = v157;
          _os_log_impl(&dword_1C278D000, v155, v156, "resolve term ids: %f seconds", buf, 0xCu);
        }

        *__error() = v154;
        v55 = v255;
        if (v253 == -1)
        {
          goto LABEL_45;
        }

        CIOnThreadCleanUpClearItem(v255, v253);
        *a12 = a1 + 14184;
        goto LABEL_44;
      }

      v128 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v129 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, v125, 0, v128 + 1);
      v264 = v130;
      v263 = v131;
      v132 = threadData[9 * v129 + 1] + 320 * HIDWORD(v129);
      v133 = *(v132 + 312);
      v134 = *(v132 + 224);
      if (v134)
      {
        v134(*(v132 + 288));
      }

      if (_setjmp(v132))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v132 + 312) = v133;
        CIOnThreadCleanUpReset(v263);
        dropThreadId(v129, 1, v128 + 1);
        CICleanUpReset(v129, v264);
        goto LABEL_147;
      }

      if (v126 && *(v126 + 16) != 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
        }

        goto LABEL_144;
      }

      v244 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v135 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, v126, 0, v244 + 1);
      v262 = v136;
      v261 = v137;
      v138 = threadData[9 * v135 + 1] + 320 * HIDWORD(v135);
      v243 = *(v138 + 312);
      v139 = *(v138 + 224);
      if (v139)
      {
        v139(*(v138 + 288));
      }

      if (_setjmp(v138))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v138 + 312) = v243;
        CIOnThreadCleanUpReset(v261);
        dropThreadId(v135, 1, v244 + 1);
        CICleanUpReset(v135, v262);
LABEL_144:
        v145 = threadData[9 * v129 + 1] + 320 * HIDWORD(v129);
        *(v145 + 312) = v133;
        v146 = *(v145 + 232);
        if (v146)
        {
          v146(*(v145 + 288));
        }

        dropThreadId(v129, 0, v128 + 1);
        goto LABEL_147;
      }

      v245 = v125;
      v248 = v128;
      v141 = v89[2];
      v142 = a9;
      if (v141 == 1)
      {
LABEL_141:
        v265 = 1;
        v143 = threadData[9 * v135 + 1] + 320 * HIDWORD(v135);
        *(v143 + 312) = v243;
        v144 = *(v143 + 232);
        if (v144)
        {
          v144(*(v143 + 288));
        }

        dropThreadId(v135, 0, v244 + 1);
        v128 = v248;
        goto LABEL_144;
      }

      v251 = v62;
LABEL_170:
      if (*v142)
      {
        goto LABEL_141;
      }

      v158 = *v89;
      v159 = *(*v89 + 40);
      v160 = *(*v89 + 56);
      v239 = *(*v89 + 64);
      v161 = *(*v89 + 72);
      v240 = v160;
      v162 = *v89 + 40 * v141;
      v163 = *(v162 - 32);
      v164 = *(v162 - 40);
      v268 = *(v162 - 24);
      v165 = *(v162 - 8);
      *(v158 + 40) = v164;
      *(v158 + 48) = v163;
      *(v158 + 56) = v268;
      *(v158 + 72) = v165;
      v167 = v89[1];
      v166 = v89[2];
      v269 = v165;
      v89[2] = v166 - 1;
      v168 = v167 >> 1;
      v169 = 1;
      v170 = 2;
      v171 = 3;
      while (1)
      {
        v172 = v171;
        v173 = *v89;
        v174 = *v89 + 40 * v170;
        v175 = *v174;
        v176 = *(v174 + 8);
        *buf = *(v174 + 16);
        *&buf[16] = *(v174 + 32);
        v177 = (v173 + 40 * v172);
        v178 = v177->n128_u64[0];
        v179 = v177->n128_u64[1];
        v180 = v177[1];
        *v270 = v180;
        *&v270[16] = v177[2].n128_u64[0];
        if (v172 >= v166)
        {
          memset(v270, 0, 24);
          if (v170 >= v166)
          {
            goto LABEL_189;
          }

          v183 = 0;
          v182 = -1;
          if (v176 < v163)
          {
LABEL_174:
            _CF = v182 >= v176;
            if (v182 >= v176)
            {
              v185 = buf;
            }

            else
            {
              v175 = v183;
              v176 = v182;
              v185 = v270;
            }

            if (_CF)
            {
              v172 = v170;
            }

            v186 = v185;
            goto LABEL_181;
          }
        }

        else
        {
          v181 = v178;
          v182 = v179;
          v183 = v181;
          if (v176 < v163)
          {
            goto LABEL_174;
          }
        }

        if (v182 >= v163)
        {
          _X8 = v173 + 80 * v169;
          __asm { PRFM            #1, [X8] }

LABEL_189:
          v195 = 3;
          if (*v159)
          {
            v195 = 4;
          }

          v196 = *(*(v159 + 16) + (v160 << v195));
          if ((v196 & 0x3FFFFFFFFFFFFFFFuLL) >= v127)
          {
            v204 = v161;
            goto LABEL_209;
          }

          v241 = v160;
          ptr = storage_reader_get_ptr(*v245, v245[1], 8 * *(*(v159 + 16) + (v160 << v195)), 8, v180, v140);
          if (ptr == -1)
          {
            v235 = __si_assert_copy_extra_3233(0, -1);
            v230 = v235;
            v236 = "";
            if (v235)
            {
              v236 = v235;
            }

            __message_assert("%s:%u: failed assertion '%s' %s failed to read offset for term %d", "TermIdStore.h", 89, "(intptr_t)ptr!=-1", v236, v196);
            goto LABEL_229;
          }

          v199 = *ptr;
          if (*ptr)
          {
            if (v126 && (*(a4 + (v239 << 6) + 16) & 0x3080) != 0)
            {
              Next = termIdStoreReaderGetNext(*v126, *(v126 + 1), v196, v198, v140);
              oqpush_3290(a6[v239], Next, v201);
            }

            v202 = v196 & 0x4000000000000000;
            if (*v159 == 1)
            {
              v203 = oq_meta_at_index(v159, v240);
              oq_set_offset_with_meta_at_index(v159, v161, v199 | v202, v203);
            }

            else
            {
              oq_set_offset_at_index(v159, v161, v199 | v202);
            }

            v205 = 3;
            if (*v159)
            {
              v205 = 4;
            }

            if (*(*(v159 + 16) + (v161 << v205)))
            {
              v204 = v161 + 1;
            }

            else
            {
              v204 = v161;
            }

            v142 = a9;
          }

          else
          {
            v204 = v161;
            v142 = a9;
          }

          v160 = v241;
LABEL_209:
          v206 = v160 + 1;
          if (v160 + 1 >= *(v159 + 32))
          {
            *(v159 + 32) = v204;
          }

          else
          {
            v207 = 3;
            if (*v159)
            {
              v207 = 4;
            }

            v208 = *(*(v159 + 16) + (v206 << v207));
            v209 = v89[1];
            v210 = v89[2];
            v211 = v210;
            v212 = *v89;
            if (v210 + 2 >= v209)
            {
              v214 = 2 * v209;
              v107 = v209 < 4;
              v215 = 4;
              if (!v107)
              {
                v215 = v214;
              }

              v89[1] = v215;
              v237 = v208;
              realloc = query_realloc(v212, 40 * v215 + 80);
              v208 = v237;
              v211 = v210;
              v142 = a9;
              *v89 = realloc;
              *realloc = 0u;
              realloc[1] = 0u;
              *(realloc + 4) = 0;
              v213 = v89[2];
              v212 = *v89;
            }

            else
            {
              v213 = v89[2];
            }

            v89[2] = v213 + 1;
            v217 = &v212[40 * v210];
            *v217 = v159;
            v217[1] = v208;
            v217[2] = v206;
            v217[3] = v239;
            v217[4] = v204;
            if (v210 >= 2)
            {
              v218 = v211;
              do
              {
                v219 = v218;
                v220 = *v89;
                if (*(*v89 + 40 * v219 + 8) > *(*v89 + 40 * (v219 >> 1) + 8))
                {
                  break;
                }

                v221 = v220 + 40 * v219;
                v222 = *(v221 + 32);
                v140 = *v221;
                v223 = *(v221 + 16);
                v224 = 40 * (v219 >> 1);
                v225 = v220 + v224;
                v226 = *(v225 + 32);
                v227 = *(v225 + 16);
                *v221 = *v225;
                *(v221 + 16) = v227;
                *(v221 + 32) = v226;
                v228 = *v89 + v224;
                *v228 = v140;
                *(v228 + 16) = v223;
                *(v228 + 32) = v222;
                v218 = v219 >> 1;
              }

              while (v219 > 3);
            }
          }

          v141 = v89[2];
          v62 = v251;
          if (v141 == 1)
          {
            goto LABEL_141;
          }

          goto LABEL_170;
        }

        v186 = v270;
        v175 = v183;
        v176 = v182;
LABEL_181:
        _X1 = v173 + 80 * v172;
        __asm { PRFM            #1, [X1] }

        if (v172 != v169)
        {
          v191 = v173 + 40 * v172;
          *v191 = v164;
          *(v191 + 8) = v163;
          *(v191 + 16) = v268;
          *(v191 + 32) = v269;
          v192 = *v89 + 40 * v169;
          *v192 = v175;
          *(v192 + 8) = v176;
          v180 = *v186;
          *(v192 + 16) = *v186;
          *(v192 + 32) = *(v186 + 2);
          v171 = (2 * v172) | 1;
          v170 = 2 * v172;
          v169 = v172;
          if (v172 < v168)
          {
            continue;
          }
        }

        goto LABEL_189;
      }
    }

    if (v63)
    {
      v94 = v249;
      v95 = a3;
      do
      {
        v96 = *v94;
        if (!CFSetContainsValue(Mutable, *v94))
        {
          CFSetAddValue(Mutable, v96);
          v97 = (v96 + 8);
          if (*v96 == 1)
          {
            oqsort_offset_with_meta_t(v97);
          }

          else
          {
            oqsort_offset_t(v97);
          }
        }

        ++v94;
        --v95;
      }

      while (v95);
      goto LABEL_115;
    }

    v98 = 0;
    while (1)
    {
      v99 = v249[v98];
      if (!CFSetContainsValue(Mutable, v99))
      {
        CFSetAddValue(Mutable, v99);
        v100 = (v99 + 8);
        if (*v99)
        {
          oqsort_offset_with_meta_t(v100);
          if (*(v99 + 4))
          {
            goto LABEL_100;
          }
        }

        else
        {
          oqsort_offset_t(v100);
          if (*(v99 + 4))
          {
LABEL_100:
            v101 = **(v99 + 2);
            v102 = v89[1];
            v103 = v89[2];
            v104 = v103;
            v105 = v103;
            if (v103 + 2 >= v102)
            {
              v238 = **(v99 + 2);
              v106 = 2 * v102;
              v107 = v102 < 4;
              v108 = 4;
              if (!v107)
              {
                v108 = v106;
              }

              v89[1] = v108;
              v109 = 40 * v108 + 80;
              if (*v89)
              {
                v110 = malloc_type_zone_realloc(queryZone, *v89, v109, 0xA1A7ADA0uLL);
                if (!v110)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                v110 = malloc_type_zone_malloc(queryZone, v109, 0x566E289CuLL);
                if (!v110)
                {
LABEL_107:
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
                  }
                }
              }

              *v89 = v110;
              v110[4] = 0;
              *v110 = 0u;
              *(v110 + 1) = 0u;
              v105 = v89[2];
              v101 = v238;
              v104 = v103;
            }

            v89[2] = v105 + 1;
            v111 = (*v89 + 40 * v103);
            *v111 = v99;
            v111[1] = v101;
            v111[2] = 0;
            v111[3] = v98;
            v111[4] = 0;
            if (v103 >= 2)
            {
              v112 = v104;
              do
              {
                v113 = v112;
                v114 = *v89;
                if (*(*v89 + 40 * v113 + 8) > *(*v89 + 40 * (v113 >> 1) + 8))
                {
                  break;
                }

                v115 = &v114[40 * v113];
                v116 = *(v115 + 4);
                v118 = *v115;
                v117 = *(v115 + 1);
                v119 = 40 * (v113 >> 1);
                v120 = &v114[v119];
                v121 = *(v120 + 4);
                v122 = *(v120 + 1);
                *v115 = *v120;
                *(v115 + 1) = v122;
                *(v115 + 4) = v121;
                v123 = *v89 + v119;
                *v123 = v118;
                *(v123 + 16) = v117;
                *(v123 + 32) = v116;
                v112 = v113 >> 1;
              }

              while (v113 > 3);
            }
          }
        }
      }

      if (++v98 == a3)
      {
        goto LABEL_115;
      }
    }
  }

LABEL_43:
  v54 = v260;
  v55 = v255;
  if (v253 != -1)
  {
LABEL_44:
    CIOnThreadCleanUpPop(v55);
  }

LABEL_45:
  CICleanUpReset(v55, v256);
  v56 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  *(v56 + 312) = v259;
  v57 = *(v56 + 232);
  if (v57)
  {
    v57(*(v56 + 288));
  }

  return dropThreadId(v18, 0, v54 + 1);
}

uint64_t SISearchCtx_METADATA::vinitContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFArray *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, char a14)
{
  SISearchCtx::initContext(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
  v20 = *(a2 + 152);
  if ((v20 - 1) < 3)
  {
    goto LABEL_4;
  }

  if (v20 != 4)
  {
    goto LABEL_6;
  }

  if (*(a1 + 176))
  {
LABEL_4:
    v21 = currentCategoryCount(a3);
    *(a1 + 656) = v21;
    v22 = malloc_type_malloc(32 * v21 + 40, 0x10000400A747E1EuLL);
    *(a1 + 928) = v22;
    v23 = *(a1 + 656);
    *v22 = 0u;
    v22[1] = 0u;
    *(v22 + 4) = 0;
    *(v22 + 1) = v23;
    if (v23)
    {
      L1ComboQueueInit();
    }
  }

  else if (*(a1 + 650) == 1 && (*(a1 + 641) & 1) == 0)
  {
    v39 = *(a1 + 56);
    if (v39)
    {
      if (CFArrayGetCount(v39) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), 0);
        if (CFEqual(ValueAtIndex, @"_kMDItemBundleID"))
        {
          *(a1 + 1256) = SIUINT32SetCreate(kCIQueryZoneAllocator);
        }
      }
    }
  }

LABEL_6:
  if (!*(a3 + 1192))
  {
    v41 = __si_assert_copy_extra_332();
    v42 = v41;
    v43 = "";
    if (v41)
    {
      v43 = v41;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 5356, "db->store", v43);
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

  *(a1 + 644) = 1;
  *(a1 + 832) = 1;
  if (*MEMORY[0x1E69E9AC8] <= 0x2FuLL)
  {
    ++sTotal;
  }

  v24 = malloc_type_zone_calloc(queryZone, 1uLL, 0x30uLL, 0x5BAF1CEAuLL);
  if (!v24)
  {
    _log_fault_for_malloc_failure();
  }

  *(a1 + 840) = v24;
  if (a5)
  {
    v25 = compileToSDBTree(a5, factorRewrite);
    setupCannedFields(v25);
    *(*(a1 + 840) + 16) = v25;
    v26 = 21;
    if (*(a1 + 650))
    {
      v26 = 255;
    }

    *(a1 + 192) = v26;
    if ((*(a1 + 304) & 0x80000000) == 0)
    {
      *(a1 + 304) = 0;
    }
  }

  else
  {
    v27 = 21;
    if (*(a1 + 650))
    {
      v27 = 255;
    }

    *(a1 + 192) = v27;
    if ((*(a1 + 304) & 0x80000000) == 0)
    {
      *(a1 + 304) = 1;
    }
  }

  **(a1 + 840) = compileToIndexQuery(a4, *(a2 + 360));
  if (a6 && (*(a3 + 6624) || (*(a3 + 6584) & 0x10) != 0))
  {
    scope_node = si_query_get_scope_node(a3, a2, a6);
    if (scope_node)
    {
      v29 = scope_node;
      v45 = MEMORY[0x1E69E9820];
      v46 = 0x40000000;
      v47 = __db_query_tree_apply_block_block_invoke;
      v48 = &unk_1E8198ED0;
      v49 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(scope_node, &v45, &__block_literal_global_25_15416);
      v31 = v30;
      if (*(a2 + 224) != v29)
      {
        db_free_query_node(v29);
      }

      _rewriteQuery(v31, *(a2 + 360));
      **(a1 + 840) = makeAndNode(**(a1 + 840), v31, 1, 1);
      CFRelease(*(a1 + 32));
      *(a1 + 32) = 0;
    }
  }

  if (!*(*(a1 + 840) + 16))
  {
    v32 = *(a2 + 280);
    if (v32)
    {
      v45 = MEMORY[0x1E69E9820];
      v46 = 0x40000000;
      v47 = __db_query_tree_apply_block_block_invoke;
      v48 = &unk_1E8198ED0;
      v49 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v32, &v45, &__block_literal_global_25_15416);
      *(*(a1 + 840) + 16) = v33;
    }
  }

  v34 = *(a3 + 1384);
  *(a1 + 584) = v34;
  if (v34)
  {
    v35 = *(v34 + 8);
    *(a1 + 560) = v35;
    *(a1 + 552) = *(a3 + 1400);
    if (v35)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(a1 + 560) = 0;
    *(a1 + 552) = *(a3 + 1400);
  }

  v36 = *(a3 + 1392);
  *(a1 + 576) = v36;
  if (v36)
  {
    v36 = *(v36 + 8);
  }

  *(a1 + 568) = v36;
LABEL_37:
  if ((*(a1 + 42) & 2) != 0)
  {
    *(a1 + 649) = 1;
    v37 = *(a2 + 8);
    if (v37)
    {
      if (CFStringCompare(v37, @"*=*", 0) == kCFCompareEqualTo)
      {
        *(a1 + 648) = 1;
      }
    }
  }

  *(a1 + 652) = *(*(a1 + 8) + 673);
  *(a1 + 1248) = a14;
  *(a1 + 688) = xmmword_1C2BFA420;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 4292677391;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 4292677391;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 4292677391;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 4292677391;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  return 1;
}

uint64_t compileToIndexQuery(uint64_t a1, double a2)
{
  v4 = compileToSDBTree(a1, indexFactorRewrite);
  setupCannedFields(v4);
  _rewriteQuery(v4, a2);
  v5 = *(v4 + 48);
  if ((v5 & 8) != 0)
  {
    v6 = *v4;
    if (*v4)
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        v8 = *(v6 + 48);
        if (v8 == 4)
        {
          v9 = *(v6 + 16);
          if (v9)
          {
            LODWORD(v9) = (*(v9 + 24) < 0xFu) & (0x5060u >> *(v9 + 24));
          }
        }

        else
        {
          LODWORD(v9) = 0;
        }

        if (v9 != ((v8 >> 3) & 1))
        {
          goto LABEL_14;
        }

        v10 = *(v7 + 48);
        if (v10 == 4)
        {
          v11 = *(v7 + 16);
          if (v11)
          {
            LODWORD(v11) = (*(v11 + 24) < 0xFu) & (0x5060u >> *(v11 + 24));
          }
        }

        else
        {
          LODWORD(v11) = 0;
        }

        if (v11 != ((v10 >> 3) & 1))
        {
LABEL_14:
          if ((v5 & 2) != 0)
          {
            v12 = 1;
          }

          else
          {
            if ((v5 & 1) == 0)
            {
LABEL_19:
              negateQuery(v6);
              negateQuery(*(v4 + 8));
              goto LABEL_20;
            }

            v12 = 2;
          }

          *(v4 + 48) = v12;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_20:
  if (*(a1 + 16) == 1)
  {
    *(v4 + 56) |= 1u;
  }

  return v4;
}

uint64_t compileToSDBTree(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = 0;
  v5 = *a1;
  if (*a1 > 1)
  {
    if (v5 == 2)
    {
      v4 = compileToSDBTree(*(a1 + 24), a2);
      v36 = MEMORY[0x1E69E9820];
      v37 = 0x40000000;
      v38 = __db_query_tree_apply_block_block_invoke;
      v39 = &unk_1E8198ED0;
      v40 = &__block_literal_global_15374;
      db_query_tree_apply_block_with_meta(v4, &v36, 0);
      return v4;
    }

    if (v5 != 3)
    {
      return v4;
    }

    v7 = *(a1 + 24);
    v8 = v7[2];
    if (a2)
    {
      if (v8)
      {
        v9 = *(v8 + 24);
      }

      else
      {
        v9 = 0;
      }

      if ((*(a1 + 4) & 4) != 0)
      {
        if (v9 == 2)
        {
          v29 = 1;
          goto LABEL_68;
        }

        if (v9 == 6)
        {
          v29 = 5;
LABEL_68:
          *(v8 + 24) = v29;
          v30 = (a2)(*(a1 + 24));
LABEL_72:
          v4 = v30;
LABEL_73:
          *(*(*(a1 + 24) + 16) + 24) = v9;
          return v4;
        }
      }

      v4 = a2();
      if (!v9)
      {
        return v4;
      }

      goto LABEL_73;
    }

    v9 = *(v8 + 24);
    if ((*(a1 + 4) & 4) != 0)
    {
      if (v9 == 2)
      {
        v28 = 1;
        goto LABEL_70;
      }

      if (v9 == 6)
      {
        v28 = 5;
LABEL_70:
        *(v8 + 24) = v28;
        v7 = *(a1 + 24);
      }
    }

    v36 = MEMORY[0x1E69E9820];
    v37 = 0x40000000;
    v38 = __db_query_tree_apply_block_block_invoke;
    v39 = &unk_1E8198ED0;
    v40 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v7, &v36, &__block_literal_global_25_15416);
    goto LABEL_72;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      return v4;
    }

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v10 = *(a1 + 24) / 2;
  v11 = MEMORY[0x1E69E9AC8];
  if (((v10 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * v10 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal_4940;
  }

  v13 = malloc_type_zone_calloc(queryZone, v10, 8uLL, 0x5BAF1CEAuLL);
  if (!v13)
  {
    _log_fault_for_malloc_failure();
  }

  v14 = *(a1 + 24);
  v34 = v14 - 1;
  if (v14 == 1)
  {
    goto LABEL_27;
  }

  v15 = *(a1 + 24);
  v16 = 0;
  do
  {
    if (*v11 <= 0x4FuLL)
    {
      ++sTotal_4940;
    }

    v17 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v17)
    {
      _log_fault_for_malloc_failure();
    }

    *v17 = compileToSDBTree(*(*(a1 + 32) + 8 * v16), a2);
    v17[1] = compileToSDBTree(*(*(a1 + 32) + 8 * v16 + 8), a2);
    *(v17 + 24) = v6;
    *(v17 + 28) = v17[7] & 0xFDFF | (*(a1 + 17) << 9);
    v13[v16 / 2] = v17;
    v16 += 2;
  }

  while (v16 < v34);
  v14 = v15;
  if (v15)
  {
LABEL_27:
    if (*v11 <= 0x4FuLL)
    {
      ++sTotal_4940;
    }

    v18 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v18)
    {
      _log_fault_for_malloc_failure();
    }

    *v18 = compileToSDBTree(*(*(a1 + 32) + 8 * v34), a2);
    v19 = 2;
    if (v14 >> 1 > 2)
    {
      v19 = v14 >> 1;
    }

    v20 = &v13[v19];
    v18[1] = *(v20 - 2);
    *(v18 + 24) = v6;
    *(v18 + 28) = v18[7] & 0xFDFF | (*(a1 + 17) << 9);
    *(v20 - 2) = v18;
  }

  if (v14 >= 4)
  {
    v32 = v13 - 2;
    do
    {
      v33 = v14 >> 1;
      v35 = v14;
      v21 = (v14 >> 1) - 1;
      if (v14 >> 1 != 1)
      {
        v22 = 0;
        v23 = v13;
        do
        {
          if (*v11 <= 0x4FuLL)
          {
            ++sTotal_4940;
          }

          v24 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v24)
          {
            _log_fault_for_malloc_failure();
          }

          v25 = &v13[v22];
          *v24 = *v25;
          v24[1] = v25[1];
          *(v24 + 24) = v6;
          *(v24 + 28) = v24[7] & 0xFDFF | (*(a1 + 17) << 9);
          *v23++ = v24;
          v22 += 2;
        }

        while (v22 < v21);
      }

      if ((v35 & 2) != 0)
      {
        if (*v11 <= 0x4FuLL)
        {
          ++sTotal_4940;
        }

        v26 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        if (!v26)
        {
          _log_fault_for_malloc_failure();
        }

        v27 = v35 >> 2;
        *v26 = v13[v21];
        if (v35 >> 2 <= 2)
        {
          v27 = 2;
        }

        v26[1] = v32[v27];
        *(v26 + 24) = v6;
        *(v26 + 28) = v26[7] & 0xFDFF | (*(a1 + 17) << 9);
        v32[v27] = v26;
      }

      v14 = v33;
    }

    while (v35 > 7);
  }

  v4 = *v13;
  if (*(a1 + 17) == 1)
  {
    *(v4 + 48) |= 8u;
  }

  free(v13);
  return v4;
}

void SISearchCtx::initContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFArray *a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12)
{
  v48 = a3;
  v51 = *MEMORY[0x1E69E9840];
  atomic_fetch_add((a2 + 584), 1u);
  *(a1 + 8) = a2;
  if (a2)
  {
    v19 = *(a2 + 576);
    if (v19)
    {
      CFRetain(*(a2 + 576));
      v20 = *(a1 + 8);
      *(a1 + 88) = v19;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 88) = 0;
      v20 = a2;
    }

    v21 = *(v20 + 48);
    if (v21)
    {
      Length = CFStringGetLength(v21);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v47 = a8;
      v24 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      CFStringGetCString(*(v20 + 48), v24, MaximumSizeForEncoding + 1, 0x8000100u);
      v20 = *(a1 + 8);
      *(a1 + 264) = v24;
      a8 = v47;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 264) = 0;
    }

    v25 = *(v20 + 40);
    if (v25)
    {
      v25 = CFRetain(v25);
    }

    *(a1 + 72) = v25;
  }

LABEL_13:
  v26 = *(a9 + 88);
  if (v26)
  {
    CFRetain(*(a9 + 88));
  }

  *(a1 + 16) = v26;
  atomic_fetch_add(a9, 1u);
  *(a1 + 104) = a9;
  *(a1 + 24) = v48;
  *(a1 + 152) = a8;
  if (a4)
  {
    Node = cloneQueryNode(a4, 0);
  }

  else
  {
    Node = 0;
  }

  *(a1 + 112) = Node;
  if (a5)
  {
    v28 = cloneQueryNode(a5, 0);
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 120) = v28;
  if (a10)
  {
    CFRetain(a10);
  }

  *(a1 + 56) = a10;
  *(a1 + 64) = 0;
  *(a1 + 40) = a7;
  *(a1 + 48) = a7;
  v29 = *(a2 + 152);
  *(a1 + 160) = v29;
  v30 = (a7 & 0xF) - 2;
  if ((a7 & 0xC) != 0)
  {
    v30 = 1;
  }

  *(a1 + 304) = v30;
  if (v29 == 4 && (*(a2 + 357) & 1) == 0)
  {
    *(a1 + 208) = CFDictionaryCreateMutable(kCIQueryZoneAllocator, 0, 0, MEMORY[0x1E695E9E8]);
  }

  v32 = a11;
  v31 = a12;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 248) = *(a2 + 56);
  v33 = *(a2 + 160);
  *(a1 + 176) = v33;
  *(a1 + 184) = v33;
  if (a6)
  {
    Count = CFArrayGetCount(a6);
    if (Count >= 1)
    {
      v36 = Count;
      v47 = a11;
      v48 = a12;
      v46[1] = v46;
      MEMORY[0x1EEE9AC00](v35);
      v38 = (v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v38, v37);
      for (i = 0; i != v36; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a6, i);
        v41 = CFGetTypeID(ValueAtIndex);
        if (v41 == CFStringGetTypeID() && !CFStringHasSuffix(ValueAtIndex, @"/"))
        {
          ValueAtIndex = CFStringCreateWithFormat(kCIQueryZoneAllocator, 0, @"%@/", ValueAtIndex);
        }

        else if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        v38[i] = ValueAtIndex;
      }

      *(a1 + 32) = CFArrayCreate(kCIQueryZoneAllocator, v38, v36, MEMORY[0x1E695E9C0]);
      do
      {
        v42 = *v38++;
        CFRelease(v42);
        --v36;
      }

      while (v36);
      v32 = v47;
      v31 = v48;
      if (dword_1EBF46AD0 > 4)
      {
        v43 = *__error();
        v44 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 32);
          *buf = 138412290;
          v50 = v45;
          _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "Scopes: %@", buf, 0xCu);
        }

        *__error() = v43;
      }
    }
  }

  *(a1 + 224) = v32;
  *(a1 + 232) = v31;
}

void indexFactorRewrite(void *a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = __db_query_tree_apply_block_block_invoke;
  v1[3] = &unk_1E8198ED0;
  v1[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, v1, &__block_literal_global_25_15416);
}

uint64_t setupCannedFields(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    setupCannedFields(v2);
  }

  result = *(a1 + 8);
  if (result)
  {
    result = setupCannedFields(result);
  }

  if (*(a1 + 48) == 4)
  {
    v4 = *(a1 + 16);
    if (!*(v4 + 8))
    {
      v5 = strlen(*v4);
      result = CannedFieldTable::in_word_set(*v4, v5);
      if (result)
      {
        *(v4 + 32) |= 0x80uLL;
        *(v4 + 8) = _qpCannedFieldQuery;
      }
    }
  }

  return result;
}

const char **CannedFieldTable::in_word_set(CannedFieldTable *this, const char *a2)
{
  if ((a2 - 11) > 0x1B)
  {
    return 0;
  }

  if ((a2 - 12) >= 6)
  {
    if (a2 == 11)
    {
      goto LABEL_4;
    }

    LODWORD(a2) = CannedFieldTable::hash(char const*,unsigned int)::asso_values[*(this + 17)] + a2;
  }

  LODWORD(a2) = a2 + CannedFieldTable::hash(char const*,unsigned int)::asso_values[*(this + 11)];
LABEL_4:
  v2 = a2 + CannedFieldTable::hash(char const*,unsigned int)::asso_values[*(this + 10)];
  if (v2 > 0x74)
  {
    return 0;
  }

  v3 = (&CannedFieldTable::in_word_set(char const*,unsigned int)::wordlist + 40 * v2);
  v4 = *v3;
  if (!*v3 || *this != *v4 || strcmp(this + 1, v4 + 1))
  {
    return 0;
  }

  return v3;
}

uint64_t ___rewriteQuery_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != a3)
  {
    v31 = __si_assert_copy_extra_332();
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 1153, "node->lchild==lchild", v33);
    free(v32);
    if (__valid_fs(-1))
    {
      v34 = 2989;
    }

    else
    {
      v34 = 3072;
    }

    *v34 = -559038737;
    abort();
  }

  if (*(a2 + 8) != a4)
  {
    v35 = __si_assert_copy_extra_332();
    v27 = v35;
    v36 = "";
    if (v35)
    {
      v36 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 1154, "node->rchild==rchild", v36);
LABEL_50:
    free(v27);
    if (__valid_fs(-1))
    {
      v37 = 2989;
    }

    else
    {
      v37 = 3072;
    }

    *v37 = -559038737;
    abort();
  }

  v5 = *(a2 + 48);
  v6 = v5 & 0xFFFFFFF7;
  if ((v5 & 0xFFFFFFF7) - 1 > 1)
  {
LABEL_36:
    v26 = __si_assert_copy_extra_332();
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 985, "0", v28);
    goto LABEL_50;
  }

  while (1)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(*a2 + 56);
    v10 = *(v8 + 56);
    v11 = *(a2 + 56) | 0x100;
    *(a2 + 56) = v11;
    if (v6 == 1)
    {
      break;
    }

    if ((v9 & 0x200) != 0 && (v10 & 0x200) != 0)
    {
      goto LABEL_41;
    }

    if ((v9 & 0x200) != 0)
    {
      v12 = *(v8 + 16);
      if (v12)
      {
        if ((*(v12 + 33) & 8) != 0)
        {
          goto LABEL_41;
        }
      }
    }

    if ((v10 & 0x200) != 0)
    {
      v13 = *(v7 + 16);
      if (v13)
      {
        if ((*(v13 + 33) & 8) != 0)
        {
          goto LABEL_41;
        }
      }
    }

    if ((v9 & 0x200) != 0)
    {
      v14 = *(v7 + 48);
      if (v14 == 4)
      {
        v15 = *(v7 + 16);
        if (v15)
        {
          LODWORD(v15) = (*(v15 + 24) < 0xFu) & (0x5060u >> *(v15 + 24));
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

      if (v15 != ((v14 >> 3) & 1))
      {
        v16 = *(v8 + 16);
        if (!v16 || (*(v16 + 33) & 8) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    if ((v10 & 0x200) != 0)
    {
      v17 = *(v8 + 48);
      if (v17 == 4)
      {
        v18 = *(v8 + 16);
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
        v19 = *(v7 + 16);
        if (!v19 || (*(v19 + 33) & 8) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    if ((v9 & 0x200) != 0 && (*(v7 + 48) & 0xFFF7) == 1)
    {
      *(a2 + 48) = v5 ^ 0xB;
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v7, &v38, &__block_literal_global_25_15416);
      v20 = *(a2 + 8);
      *(a2 + 8) = v21;
      *(v21 + 48) = 2;
      *v21 = v20;
      *(*a2 + 48) = 2;
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v20, &v38, &__block_literal_global_25_15416);
      *(*a2 + 8) = v22;
    }

    else
    {
      if ((v10 & 0x200) == 0 || (*(v8 + 48) & 0xFFF7) != 1)
      {
        goto LABEL_40;
      }

      *(a2 + 48) = v5 ^ 0xB;
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v8, &v38, &__block_literal_global_25_15416);
      v23 = *a2;
      *a2 = v24;
      *(v24 + 48) = 2;
      *(v24 + 8) = v23;
      *(*(a2 + 8) + 48) = 2;
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v23, &v38, &__block_literal_global_25_15416);
      **(a2 + 8) = v25;
    }

    v5 = *(a2 + 48);
    v6 = v5 & 0xFFFFFFF7;
    if ((v5 & 0xFFFFFFF7) - 1 >= 2)
    {
      goto LABEL_36;
    }
  }

  if (((v9 | v10) & 0x200) == 0)
  {
LABEL_40:
    v29 = v11 & 0xFDFF;
    goto LABEL_42;
  }

LABEL_41:
  *(a2 + 48) = v5 ^ 0xB;
  negateQuery(v7);
  negateQuery(*(a2 + 8));
  v29 = *(a2 + 56) | 0x200;
LABEL_42:
  *(a2 + 56) = v29;
  return a2;
}

uint64_t si_enqueue_routine(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, unsigned int a5)
{
  pthread_mutex_lock((a2 + 48));
  if (*(a2 + 36))
  {
    pthread_mutex_unlock((a2 + 48));

    return a3(a4, 1);
  }

  else
  {
    si_enqueue_work_for_job(*(a1 + 8 * a5 + 1008), a3, a4, a2);

    return pthread_mutex_unlock((a2 + 48));
  }
}

uint64_t db2_string_table_unlock(uint64_t a1)
{
  v2 = *(a1 + 912);
  if ((*(a1 + 804) & 0x14) != 0)
  {
    _data_map_unlock(v2);
    _data_map_unlock(*(a1 + 904));
    _data_map_unlock(*(a1 + 896));
    _data_map_unlock(*(a1 + 888));
    _data_map_unlock(*(a1 + 880));
  }

  else
  {
    pthread_rwlock_unlock(*(v2 + 16));
    pthread_rwlock_unlock(*(*(a1 + 904) + 16));
    pthread_rwlock_unlock(*(*(a1 + 896) + 16));
    pthread_rwlock_unlock(*(*(a1 + 888) + 16));
    pthread_rwlock_unlock(*(*(a1 + 880) + 16));
  }

  v3 = *(a1 + 920);

  return _data_map_unlock(v3);
}

unsigned int *si_scheduler_suspend_async(uint64_t a1)
{
  if (!a1 || *(a1 + 104))
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B618E767uLL);
  atomic_store(1u, v2);
  *(v2 + 1) = a1;
  pthread_mutex_lock(*(a1 + 8));
  v3 = *(a1 + 116);
  if (v3)
  {
    *(a1 + 116) = v3 + 1;
    *(v2 + 4) = 1;
  }

  else
  {
    *(v2 + 2) = *(a1 + 144);
    *(a1 + 144) = v2;
    atomic_fetch_add(v2, 1u);
    if (!*(v2 + 2) && !*(a1 + 120))
    {
      _scheduler_suspension_locked(a1);
    }
  }

  pthread_mutex_unlock(*(a1 + 8));
  return v2;
}

uint64_t SISearchCtx_METADATA::enqueue(uint64_t a1, uint64_t (*a2)(), void *a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v12[0]) = 67109120;
      HIDWORD(v12[0]) = qos_class_self();
      _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "enqueue at qos 0x%x", v12, 8u);
    }

    *__error() = v10;
  }

  v12[0] = 0;
  v8 = si_backtrace_routine_resolve(*(a1 + 24), *(*(a1 + 8) + 656), a2, a3, v12);
  return si_sdb_enqueue(*(a1 + 24), a4, v8, v12[0], *(a1 + 304));
}

uint64_t termUpdateSetResolveQueryInfo(uint64_t a1, unsigned int a2, _BYTE **a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v292 = *MEMORY[0x1E69E9840];
  db_read_lock(a1 + 304);
  if (a6 && *(v12 + 584) != a6)
  {
    _TermUpdateSetReadUnlock(v12);
    return 1;
  }

  memset(&v266[56], 0, 32);
  *&v266[40] = 0u;
  *&v266[24] = 0u;
  *&v266[8] = 0u;
  v13 = CICleanUpThreadLoc();
  CIOnThreadCleanUpPush(v13, _TermUpdateSetReadUnlock, v12);
  v14 = LODWORD(threadData[9 * v13 + 4]);
  *v266 = *(v12 + 88);
  *&v266[8] = a2;
  *&v266[16] = a3;
  *&v266[24] = a4;
  *&v266[64] = a7;
  *&v266[56] = a5;
  v15 = *(v12 + 256);
  *&v266[40] = *(v12 + 240);
  *&v266[48] = v15;
  count = a2;
  if (a2 <= 0xFFF && 32 * a2 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal_14063;
  }

  v16 = malloc_type_zone_calloc(queryZone, a2, 0x20uLL, 0x5BAF1CEAuLL);
  if (v16)
  {
    v17 = MEMORY[0x1E69E9B38];
    v18 = v13;
    v19 = v16;
  }

  else
  {
    _log_fault_for_malloc_failure();
    v17 = MEMORY[0x1E69E9B38];
    v18 = v13;
    v19 = 0;
  }

  CICleanUpPush(v18, v17, v19);
  *&v266[32] = v16;
  v266[80] = (*(v12 + 616) & 0x40) != 0;
  v222 = a4;
  v223 = v12;
  v221 = v13;
  if (a2)
  {
    v21 = a2;
    v22 = a3;
    do
    {
      if (**v22 == 42)
      {
        __p[0] = resolveQueryInfoCallback;
        __p[1] = v266;
        v31 = *(v12 + 24);
        *&v267 = 0;
        *(&v267 + 1) = &v267;
        LODWORD(v269) = 0;
        v268 = 0x2000000000;
        buf[0] = MEMORY[0x1E69E9820];
        buf[1] = 0x40000000;
        buf[2] = ___hashTableIterate_block_invoke_2;
        buf[3] = &unk_1E81939C8;
        buf[6] = __p;
        buf[5] = termUpdateSetApplier;
        buf[4] = &v267;
        _TermTrieWalkFatWithOptions((v31 + 32), 0, 0, 0, buf, 0, 0);
        _Block_object_dispose(&v267, 8);
        if (a4)
        {
          goto LABEL_310;
        }

        goto LABEL_384;
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  Mutable = CFSetCreateMutable(0, 0, 0);
  __p[0] = 128;
  v24 = malloc_type_zone_malloc(queryZone, 0xC00uLL, 0xA4971684uLL);
  if (!v24)
  {
    _log_fault_for_malloc_failure();
  }

  __p[1] = v24;
  *v289 = 128;
  v25 = malloc_type_zone_malloc(queryZone, 0xC00uLL, 0xA4971684uLL);
  if (!v25)
  {
    _log_fault_for_malloc_failure();
  }

  *&v289[8] = v25;
  v26 = malloc_type_zone_malloc(queryZone, 0x10uLL, 0xA4971684uLL);
  v27 = v26;
  v220 = a6;
  if (v26)
  {
    *&v266[72] = v26;
    v28 = MEMORY[0x1E69E9B38];
    v29 = v13;
    v30 = v27;
  }

  else
  {
    _log_fault_for_malloc_failure();
    *&v266[72] = 0;
    v28 = MEMORY[0x1E69E9B38];
    v29 = v13;
    v30 = 0;
  }

  CICleanUpPush(v29, v28, v30);
  *v27 = 0;
  v27[1] = 0;
  if (!a2)
  {
    goto LABEL_307;
  }

  v32 = 0;
  do
  {
    HIDWORD(__p[0]) = 0;
    *&v289[4] = 0;
    v226 = v32;
    v33 = &a3[8 * v32];
    v34 = *(v33 + 4);
    if ((v34 & 0x10) != 0)
    {
      goto LABEL_303;
    }

    v35 = *v33;
    v36 = strlen(*v33);
    v37 = (*(v223 + 24) + 32) | 1;
    if ((v34 & 4) != 0)
    {
      v41 = v33[1];
      v42 = strcmp(v35, v41);
      v43 = *v35;
      if (v43 != *v41 || (v43 - 2) > 2)
      {
        goto LABEL_303;
      }

      v45 = *(v35 + 1);
      if (v35[1] < 0)
      {
        v48 = *(v35 + 2);
        if (v35[2] < 0)
        {
          v64 = *(v35 + 3);
          if (v35[3] < 0)
          {
            v66 = *(v35 + 4);
            if (v35[4] < 0)
            {
              v70 = v35[5];
              if (v70 < 0)
              {
                goto LABEL_390;
              }

              v46 = 6;
              v45 = ((v66 & 0x7F) << 21) | (v70 << 28) | ((v64 & 0x7F) << 14) | ((v48 & 0x7F) << 7) | v45 & 0x7F;
              if (!v42)
              {
                goto LABEL_281;
              }
            }

            else
            {
              v46 = 5;
              v45 = ((v64 & 0x7F) << 14) | (v66 << 21) | ((v48 & 0x7F) << 7) | v45 & 0x7F;
              if (!v42)
              {
                goto LABEL_281;
              }
            }
          }

          else
          {
            v46 = 4;
            v45 = ((v48 & 0x7F) << 7) | (v64 << 14) | v45 & 0x7F;
            if (!v42)
            {
              goto LABEL_281;
            }
          }
        }

        else
        {
          v45 = v45 & 0x7F | (v48 << 7);
          v46 = 3;
          if (!v42)
          {
            goto LABEL_281;
          }
        }
      }

      else
      {
        v46 = 2;
        if (!v42)
        {
LABEL_281:
          v163 = 0;
          while (1)
          {
            v164 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            v165 = v37 & 3;
            if (v165 <= 1)
            {
              if (v165 != 1)
              {
                goto LABEL_303;
              }

              v37 = v164[*(&tcm + v35[v163]) + 1];
              if (!v37)
              {
                goto LABEL_303;
              }

              goto LABEL_296;
            }

            if (v165 != 2)
            {
              v37 |= 3uLL;
              v46 = v163;
LABEL_299:
              if ((~v37 & 3) != 0)
              {
                bzero(buf, 0x400uLL);
                TermTrieMatchRangeChars(v37, &v35[v46], &v41[v46], Mutable, buf, 0);
                goto LABEL_303;
              }

              v63 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
              goto LABEL_301;
            }

            v166 = *(&tcm + v35[v163]);
            v167 = v164 + 1;
            if (((*(v164[1].i32 + ((v166 >> 3) & 0x1C)) >> v166) & 1) == 0)
            {
              goto LABEL_303;
            }

            v168 = 0;
            v169 = v166 >> 6;
            if ((v166 >> 6) > 1)
            {
              break;
            }

            v170 = v166 >> 6;
            if (v169)
            {
              goto LABEL_294;
            }

LABEL_295:
            v174 = vcnt_s8((*&v167[v169] & ~(-1 << v166)));
            v174.i16[0] = vaddlv_u8(v174);
            v37 = v164[v174.u32[0] + 6 + v170];
            if (!v37)
            {
              goto LABEL_303;
            }

LABEL_296:
            if (v46 == ++v163)
            {
              goto LABEL_299;
            }
          }

          if (v169 != 2)
          {
            v171 = vcnt_s8(v164[3]);
            v171.i16[0] = vaddlv_u8(v171);
            v168 = v171.u32[0];
          }

          v172 = vcnt_s8(v164[2]);
          v172.i16[0] = vaddlv_u8(v172);
          v168 += v172.u32[0];
LABEL_294:
          v173 = vcnt_s8(*v167);
          v173.i16[0] = vaddlv_u8(v173);
          v170 = v173.u32[0] + v168;
          goto LABEL_295;
        }
      }

      v71 = *(v41 + 1);
      if (v41[1] < 0)
      {
        v72 = *(v41 + 2);
        if (v41[2] < 0)
        {
          v73 = *(v41 + 3);
          if (v41[3] < 0)
          {
            v74 = *(v41 + 4);
            if (v41[4] < 0)
            {
              v161 = v41[5];
              if (v161 < 0)
              {
                goto LABEL_391;
              }

              v71 = ((v74 & 0x7F) << 21) | (v161 << 28) | ((v73 & 0x7F) << 14) | ((v72 & 0x7F) << 7) | v71 & 0x7F;
            }

            else
            {
              v71 = ((v73 & 0x7F) << 14) | (v74 << 21) | ((v72 & 0x7F) << 7) | v71 & 0x7F;
            }
          }

          else
          {
            v71 = ((v72 & 0x7F) << 7) | (v73 << 14) | v71 & 0x7F;
          }
        }

        else
        {
          v71 = v71 & 0x7F | (v72 << 7);
        }
      }

      if (v45)
      {
        v162 = v45 == v71;
      }

      else
      {
        v162 = 0;
      }

      if (!v162)
      {
        goto LABEL_303;
      }

      goto LABEL_281;
    }

    if (v33[4])
    {
      v38 = v33;
      if (*(v33 + 5) < 7)
      {
        goto LABEL_126;
      }

      if (*v35 != 1)
      {
        goto LABEL_135;
      }

      v39 = *(v35 + 1);
      if ((v35[1] & 0x80000000) == 0)
      {
        v40 = 2;
        goto LABEL_98;
      }

      v65 = *(v35 + 2);
      if ((v35[2] & 0x80000000) == 0)
      {
        v39 = v39 & 0x7F | (v65 << 7);
        v40 = 3;
        goto LABEL_98;
      }

      v67 = *(v35 + 3);
      if ((v35[3] & 0x80000000) == 0)
      {
        v68 = ((v65 & 0x7F) << 7) | (v67 << 14) | v39 & 0x7F;
        v40 = 4;
LABEL_97:
        v39 = v68;
        goto LABEL_98;
      }

      v75 = *(v35 + 4);
      if ((v35[4] & 0x80000000) == 0)
      {
        v68 = ((v67 & 0x7F) << 14) | (v75 << 21) | ((v65 & 0x7F) << 7) | v39 & 0x7F;
        v40 = 5;
        goto LABEL_97;
      }

      v175 = v35[5];
      if ((v175 & 0x80000000) == 0)
      {
        v176 = ((v75 & 0x7F) << 21) | (v175 << 28) | ((v67 & 0x7F) << 14) | ((v65 & 0x7F) << 7) | v39 & 0x7F;
        v40 = 6;
        v39 = v176;
LABEL_98:
        if (v39 != 2)
        {
          goto LABEL_103;
        }

        v76 = v40 + 1;
        if ((v35[v40] & 0x80000000) == 0)
        {
          goto LABEL_100;
        }

        v77 = v40 + 2;
        if ((v35[v76] & 0x80000000) == 0)
        {
          goto LABEL_102;
        }

        v76 = v40 + 3;
        if ((v35[v77] & 0x80000000) == 0)
        {
LABEL_100:
          v40 = v76;
          goto LABEL_103;
        }

        v77 = v40 + 4;
        if ((v35[v76] & 0x80000000) == 0)
        {
LABEL_102:
          v40 = v77;
          goto LABEL_103;
        }

        if ((v35[v77] & 0x80000000) == 0)
        {
          v40 += 5;
LABEL_103:
          if (v40 > v36)
          {
            goto LABEL_135;
          }

          v78 = 0;
          while (1)
          {
            v79 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            v80 = v37 & 3;
            if (v80 <= 1)
            {
              if (v80 != 1)
              {
                goto LABEL_135;
              }

              v37 = v79[*(&tcm + v35[v78]) + 1];
              if (!v37)
              {
                goto LABEL_135;
              }

              goto LABEL_119;
            }

            if (v80 != 2)
            {
              break;
            }

            v81 = *(&tcm + v35[v78]);
            v82 = v79 + 1;
            if (((*(v79[1].i32 + ((v81 >> 3) & 0x1C)) >> v81) & 1) == 0)
            {
              goto LABEL_135;
            }

            v83 = 0;
            v84 = v81 >> 6;
            if ((v81 >> 6) > 1)
            {
              if (v84 != 2)
              {
                v86 = vcnt_s8(v79[3]);
                v86.i16[0] = vaddlv_u8(v86);
                v83 = v86.u32[0];
              }

              v87 = vcnt_s8(v79[2]);
              v87.i16[0] = vaddlv_u8(v87);
              v83 += v87.u32[0];
LABEL_117:
              v88 = vcnt_s8(*v82);
              v88.i16[0] = vaddlv_u8(v88);
              v85 = v88.u32[0] + v83;
              goto LABEL_118;
            }

            v85 = v81 >> 6;
            if (v84)
            {
              goto LABEL_117;
            }

LABEL_118:
            v89 = vcnt_s8((*&v82[v84] & ~(-1 << v81)));
            v89.i16[0] = vaddlv_u8(v89);
            v37 = v79[v89.u32[0] + 6 + v85];
            if (!v37)
            {
              goto LABEL_135;
            }

LABEL_119:
            if (v40 == ++v78)
            {
              LODWORD(v78) = v40;
              goto LABEL_123;
            }
          }

          if (v78)
          {
            v37 |= 3uLL;
LABEL_123:
            if ((~v37 & 3) == 0)
            {
              CFSetAddValue(Mutable, (v37 & 0xFFFFFFFFFFFFFFFCLL));
              goto LABEL_135;
            }

            if (v40 != v78)
            {
              goto LABEL_135;
            }

LABEL_126:
            v90 = __p[0];
            if (SLODWORD(__p[0]) < 1)
            {
              LODWORD(__p[0]) *= 2;
              v93 = 48 * v90;
              if (__p[1])
              {
                v94 = malloc_type_zone_realloc(queryZone, __p[1], v93, 0xA1A7ADA0uLL);
              }

              else
              {
                v94 = malloc_type_zone_malloc(queryZone, v93, 0x566E289CuLL);
              }

              v92 = v94;
              if (!v94)
              {
                _log_fault_for_malloc_failure();
              }

              __p[1] = v92;
              v91 = HIDWORD(__p[0]);
            }

            else
            {
              v91 = 0;
              v92 = __p[1];
            }

            v95 = &v92[24 * v91];
            *v95 = v37;
            *(v95 + 8) = xmmword_1C2BFA340;
            ++HIDWORD(__p[0]);
          }

LABEL_135:
          v275 = 0;
          v264 = 0;
          __s = 0;
          v230 = v33;
          if (icu_search_context_is_fuzzy())
          {
            v96 = *&v266[72];
            if (!**&v266[72])
            {
              **&v266[72] = Mutable;
            }

            if (!*(v96 + 8))
            {
              la_init(v33[4], (v33[2] & 0x800) != 0);
            }

            while (HIDWORD(__p[0]))
            {
              if (SHIDWORD(__p[0]) >= 1)
              {
                v97 = 0;
                v98 = 0;
                do
                {
                  v99 = *(__p[1] + v97 + 8);
                  v100 = *(__p[1] + v97 + 16);
                  v101 = *(*&v266[72] + 8);
                  if (*(v101 + 48))
                  {
                    v102 = v99 == 0;
                  }

                  else
                  {
                    v102 = 1;
                  }

                  if (v102)
                  {
                    goto LABEL_155;
                  }

                  v103 = *(v101 + 16) - *(v101 + 32);
                  v104 = 5 * (v100 - v103);
                  v105 = v103 >= v100;
                  v106 = 5 * (v103 - v100);
                  if (v105)
                  {
                    v104 = 0;
                  }

                  if (!v105)
                  {
                    v106 = 0;
                  }

                  if ((((v99 << v104) >> v106) & 0x1F79C61) == 0)
                  {
LABEL_155:
                    v108 = 2 * *(v101 + 32);
                    if (v108 < *(v101 + 16) - v100)
                    {
                      v109 = v108 + 1;
                    }

                    else
                    {
                      v109 = *(v101 + 16) - v100;
                    }

                    LOBYTE(v267) = 0;
                    buf[0] = 0;
                    tt_transition_for_state(**v101, v99, v109 << 8, buf, &v267);
                    v110 = buf[0];
                    v111 = *(v101 + 40) + 24 * v100;
                    *(v111 + 8) = buf[0];
                    *(v111 + 16) = v267 + v100;
                    v112 = *v111;
                    v113 = *(v111 + 16);
                    if (dword_1EBF46AD0 >= 5)
                    {
                      v224 = *__error();
                      log = _SILogForLogForCategory(1);
                      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                      {
                        buf[0].i32[0] = 134218752;
                        *(buf + 4) = v99;
                        buf[1].i16[2] = 1024;
                        *(&buf[1].i32[1] + 2) = v100;
                        buf[2].i16[1] = 2048;
                        *(&buf[2] + 4) = v110;
                        buf[3].i16[2] = 1024;
                        *(&buf[3].i32[1] + 2) = v113.i32[0];
                        _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "la_transition_context_for_state, current_state: %llu %d: transition_ctx.default_state: %llu %d", buf, 0x22u);
                      }

                      *__error() = v224;
                    }

                    v114 = *(__p[1] + v97);
                    *v291 = *(__p[1] + v97 + 8);
                    *&v267 = MEMORY[0x1E69E9820];
                    *(&v267 + 1) = 0x40000000;
                    v268 = __term_trie_resolve_fuzzy_transition_block_invoke;
                    v269 = &__block_descriptor_tmp_55_14115;
                    v270 = *&v266[72];
                    buf[0] = MEMORY[0x1E69E9820];
                    buf[1] = 0x40000000;
                    buf[2] = __term_trie_resolve_fuzzy_transition_block_invoke_2;
                    buf[3] = &__block_descriptor_tmp_57_14116;
                    buf[4] = v110;
                    buf[5] = v113;
                    *buf[7].i8 = *v291;
                    buf[6] = v114;
                    buf[9] = *&v266[72];
                    *&v278 = v289;
                    _term_trie_resolve_sub_trie(v114, v112, *&v110 != 0, &v267, buf);
                  }

                  else
                  {
                    v107 = *(__p[1] + v97);
                    if ((v107 & 3) == 2)
                    {
                      v250[0] = MEMORY[0x1E69E9820];
                      v250[1] = 0x40000000;
                      v250[2] = __termUpdateSetResolveQueryInfo_block_invoke_3;
                      v250[3] = &__block_descriptor_tmp_34_14113;
                      v253 = *&v266[32];
                      v254 = *&v266[48];
                      v255 = *&v266[64];
                      v256 = *&v266[80];
                      v251 = *v266;
                      v252 = *&v266[16];
                      _TermTrieWalkCompactWithOptions((v107 & 0xFFFFFFFFFFFFFFFCLL), 0, 0, 1u, v250, 0, 0);
                    }

                    else if ((v107 & 3) == 1)
                    {
                      v257[0] = MEMORY[0x1E69E9820];
                      v257[1] = 0x40000000;
                      v257[2] = __termUpdateSetResolveQueryInfo_block_invoke_2;
                      v257[3] = &__block_descriptor_tmp_33_14112;
                      v260 = *&v266[32];
                      v261 = *&v266[48];
                      v262 = *&v266[64];
                      v263 = *&v266[80];
                      v258 = *v266;
                      v259 = *&v266[16];
                      _TermTrieWalkFatWithOptions((v107 & 0xFFFFFFFFFFFFFFFCLL), 0, 0, 1, v257, 0, 0);
                    }
                  }

                  ++v98;
                  v97 += 24;
                }

                while (v98 < SHIDWORD(__p[0]));
              }

              if ((v230[2] & 2) != 0 && *&v289[4] >= 1)
              {
                v115 = 0;
                v116 = 0;
                do
                {
                  v117 = **&v266[72];
                  *buf[0].i8 = *(*&v289[8] + v115);
                  buf[2] = *(*&v289[8] + v115 + 16);
                  term_trie_resolve_combining(buf, v117, v289);
                  ++v116;
                  v115 += 24;
                }

                while (v116 < *&v289[4]);
              }

              v118 = *v289;
              *v289 = *__p;
              *&v289[4] = 0;
              *__p = v118;
            }

            v38 = v230;
            if (!icu_search_context_is_fuzzy())
            {
              goto LABEL_303;
            }

LABEL_223:
            if (*(*(*&v266[72] + 8) + 48))
            {
              goto LABEL_303;
            }

            goto LABEL_224;
          }

          item_count = icu_search_context_item_get_item_count();
          if (item_count < 1 || HIDWORD(__p[0]) == 0)
          {
            if (icu_search_context_is_fuzzy())
            {
              goto LABEL_223;
            }

            goto LABEL_303;
          }

          v120 = 0;
LABEL_181:
          info = icu_search_context_item_get_info();
          if (info)
          {
            v122 = info;
            v123 = HIDWORD(__p[0]);
            if (SHIDWORD(__p[0]) < 1)
            {
              goto LABEL_218;
            }

            v124 = 0;
            v125 = info & 0xFFFFFFFE;
            while (1)
            {
              if (v122 <= 2)
              {
                if (v122 == 1)
                {
                  v131 = *(__p[1] + 3 * v124);
                  if ((v131 & 3) == 2)
                  {
                    v248[0] = MEMORY[0x1E69E9820];
                    v248[1] = 0x40000000;
                    v248[2] = __termUpdateSetResolveQueryInfo_block_invoke_2_38;
                    v248[3] = &__block_descriptor_tmp_39_14118;
                    v248[4] = Mutable;
                    _TermTrieWalkCompactWithOptions((v131 & 0xFFFFFFFFFFFFFFFCLL), 0, 0, 1u, v248, 0, 0);
                  }

                  else if ((v131 & 3) == 1)
                  {
                    v249[0] = MEMORY[0x1E69E9820];
                    v249[1] = 0x40000000;
                    v249[2] = __termUpdateSetResolveQueryInfo_block_invoke_36;
                    v249[3] = &__block_descriptor_tmp_37;
                    v249[4] = Mutable;
                    _TermTrieWalkFatWithOptions((v131 & 0xFFFFFFFFFFFFFFFCLL), 0, 0, 1, v249, 0, 0);
                  }
                }

                else
                {
                  if (v122 != 2)
                  {
LABEL_204:
                    if (v125 != 6)
                    {
                      break;
                    }

                    goto LABEL_215;
                  }

                  v127 = __p[1] + 24 * v124;
                  *buf[0].i8 = *v127;
                  buf[2] = *(v127 + 16);
                  term_trie_resolve_combining(buf, Mutable, __p);
                }
              }

              else
              {
                switch(v122)
                {
                  case 3:
                    v128 = __p[1] + 24 * v124;
                    v129 = __s;
LABEL_214:
                    v138 = strlen(v129);
                    term_trie_resolve_sub_string(*v128, v129, v138, v289, Mutable, *(v128 + 8));
                    goto LABEL_215;
                  case 4:
                    if ((v230[2] & 2) != 0)
                    {
                      if (v264 >= 1)
                      {
                        for (i = 0; i < v264; ++i)
                        {
                          v133 = *(v275 + 8 * i);
                          v134 = *v133;
                          v136 = v133[1];
                          v135 = v133 + 1;
                          v137 = __p[1] + 24 * v124;
                          if (utf8_byte_length_noerror(unsigned char)::utf8_len_table[v136 >> 4] == v134)
                          {
                            term_trie_resolve_sub_string(*v137, v135, v134, v289, Mutable, *(v137 + 8));
                          }

                          else
                          {
                            v267 = *v137;
                            v268 = *(v137 + 2);
                            v287 = 0u;
                            v288 = 0u;
                            v285 = 0u;
                            v286 = 0u;
                            v283 = 0u;
                            v284 = 0u;
                            v281 = 0u;
                            v282 = 0u;
                            v279 = 0u;
                            v280 = 0u;
                            v278 = 0u;
                            memset(buf, 0, sizeof(buf));
                            _term_trie_resolve_sub_string_ignore_diacritics(&v267, v135, v134, v289, Mutable, buf, 0);
                          }
                        }
                      }
                    }

                    else if (v264 >= 1)
                    {
                      for (j = 0; j < v264; ++j)
                      {
                        term_trie_resolve_sub_string(*(__p[1] + 3 * v124), *(v275 + 8 * j) + 1, **(v275 + 8 * j), v289, Mutable, *(__p[1] + 24 * v124 + 8));
                      }
                    }

                    break;
                  case 5:
                    if (v264 >= 1)
                    {
                      for (k = 0; k < v264; ++k)
                      {
                        term_trie_resolve_sub_string(*(__p[1] + 3 * v124), *(v275 + 8 * k) + 1, **(v275 + 8 * k), v289, Mutable, *(__p[1] + 24 * v124 + 8));
                      }
                    }

                    break;
                  default:
                    goto LABEL_204;
                }

                v129 = __s;
                if (__s)
                {
                  v128 = __p[1] + 24 * v124;
                  goto LABEL_214;
                }
              }

LABEL_215:
              ++v124;
              v123 = HIDWORD(__p[0]);
              if (v124 >= SHIDWORD(__p[0]))
              {
                v38 = v230;
LABEL_218:
                if (v122 != 2)
                {
                  v139 = *v289;
                  *v289 = *__p;
                  *&v289[4] = 0;
                  *__p = v139;
                  v123 = DWORD1(v139);
                }

                if (++v120 >= item_count || !v123)
                {
                  if (icu_search_context_is_fuzzy())
                  {
                    goto LABEL_223;
                  }

                  if (v120 != item_count || !HIDWORD(__p[0]) || icu_search_context_item_get_info() == 1)
                  {
                    goto LABEL_303;
                  }

LABEL_224:
                  v141 = *(v38 + 4);
                  v140 = *(v38 + 5);
                  if ((v141 & 0x800) != 0)
                  {
                    if (v140)
                    {
                      if (v140 == 1)
                      {
                        if (SHIDWORD(__p[0]) >= 1)
                        {
                          v150 = 0;
                          v151 = 0;
                          do
                          {
                            term_trie_resolve_sub_string(*(__p[1] + v150), "\x01\x04", 2, v289, Mutable, *(__p[1] + v150 + 8));
                            term_trie_resolve_sub_string(*(__p[1] + v150), "\x01\x04\x03", 2, v289, Mutable, *(__p[1] + v150 + 8));
                            ++v151;
                            v150 += 24;
                          }

                          while (v151 < SHIDWORD(__p[0]));
                        }
                      }

                      else if (v140 == 5 && SHIDWORD(__p[0]) >= 1)
                      {
                        v144 = 0;
                        v145 = 0;
                        do
                        {
                          term_trie_resolve_sub_string(*(__p[1] + v144), "\x01\x05", 2, v289, Mutable, *(__p[1] + v144 + 8));
                          term_trie_resolve_sub_string(*(__p[1] + v144), "\x01\x05\x03", 2, v289, Mutable, *(__p[1] + v144 + 8));
                          ++v145;
                          v144 += 24;
                        }

                        while (v145 < SHIDWORD(__p[0]));
                      }
                    }

                    else if (SHIDWORD(__p[0]) >= 1)
                    {
                      v152 = 0;
                      v153 = 0;
                      do
                      {
                        term_trie_resolve_sub_string(*(__p[1] + v152), "\x01", 1, v289, Mutable, *(__p[1] + v152 + 8));
                        ++v153;
                        v152 += 24;
                      }

                      while (v153 < SHIDWORD(__p[0]));
                    }

                    v154 = *v289;
                    *v289 = *__p;
                    *&v289[4] = 0;
                    *__p = v154;
                  }

                  else if (v140)
                  {
                    if (v140 == 1)
                    {
                      if (SHIDWORD(__p[0]) >= 1)
                      {
                        v142 = 0;
                        v143 = 0;
                        do
                        {
                          term_trie_resolve_sub_string(*(__p[1] + v142), "\x01\x01", 2, v289, Mutable, *(__p[1] + v142 + 8));
                          term_trie_resolve_sub_string(*(__p[1] + v142), "\x01\x01\x03", 3, v289, Mutable, *(__p[1] + v142 + 8));
                          ++v143;
                          v142 += 24;
                        }

                        while (v143 < SHIDWORD(__p[0]));
                      }
                    }

                    else if (v140 >= 7 && SHIDWORD(__p[0]) >= 1)
                    {
                      v148 = 0;
                      v149 = 0;
                      do
                      {
                        term_trie_resolve_sub_string(*(__p[1] + v148), "\x01\x03", 2, v289, Mutable, *(__p[1] + v148 + 8));
                        ++v149;
                        v148 += 24;
                      }

                      while (v149 < SHIDWORD(__p[0]));
                    }
                  }

                  else if ((v141 & 0x3080) == 0 && SHIDWORD(__p[0]) >= 1)
                  {
                    v146 = 0;
                    v147 = 0;
                    do
                    {
                      term_trie_resolve_sub_string(*(__p[1] + v146), "\x01\x02", 2, v289, Mutable, *(__p[1] + v146 + 8));
                      ++v147;
                      v146 += 24;
                    }

                    while (v147 < SHIDWORD(__p[0]));
                  }

                  while (1)
                  {
                    v156 = HIDWORD(__p[0]);
                    if (SHIDWORD(__p[0]) >= 1)
                    {
                      v157 = 0;
                      v158 = 0;
                      do
                      {
                        v159 = *(__p[1] + v157) & 3;
                        if (v159 == 1 || v159 == 2)
                        {
                          v160 = *(*(__p[1] + v157) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v160)
                          {
                            CFSetAddValue(Mutable, v160);
                            v156 = HIDWORD(__p[0]);
                          }
                        }

                        ++v158;
                        v157 += 24;
                      }

                      while (v158 < v156);
                    }

                    if (!*&v289[4])
                    {
                      break;
                    }

                    v155 = *v289;
                    *v289 = *__p;
                    *&v289[4] = 0;
                    *__p = v155;
                  }

                  goto LABEL_303;
                }

                goto LABEL_181;
              }
            }
          }

          v213 = __si_assert_copy_extra_332();
          __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_386:
          free(v213);
          if (__valid_fs(-1))
          {
            v214 = 2989;
          }

          else
          {
            v214 = 3072;
          }

          *v214 = -559038737;
          abort();
        }

LABEL_390:
        v213 = __si_assert_copy_extra_332();
        __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
        goto LABEL_386;
      }

LABEL_391:
      v215 = __si_assert_copy_extra_332();
      v216 = v215;
      v217 = "";
      if (v215)
      {
        v217 = v215;
      }

      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v217);
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

    v47 = v36 >= 2 && v35[v36 - 1] == 42;
    v49 = v36 - v47;
    if (v36 - v47 < 1)
    {
LABEL_62:
      LODWORD(v50) = v36 - v47;
      goto LABEL_63;
    }

    v50 = 0;
    while (1)
    {
      v51 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      v52 = v37 & 3;
      if (v52 <= 1)
      {
        if (v52 != 1)
        {
          goto LABEL_303;
        }

        v37 = v51[*(&tcm + v35[v50]) + 1];
        if (!v37)
        {
          goto LABEL_303;
        }

        goto LABEL_61;
      }

      if (v52 != 2)
      {
        break;
      }

      v53 = *(&tcm + v35[v50]);
      v54 = v51 + 1;
      if (((*(v51[1].i32 + ((v53 >> 3) & 0x1C)) >> v53) & 1) == 0)
      {
        goto LABEL_303;
      }

      v55 = 0;
      v56 = v53 >> 6;
      if ((v53 >> 6) > 1)
      {
        if (v56 != 2)
        {
          v58 = vcnt_s8(v51[3]);
          v58.i16[0] = vaddlv_u8(v58);
          v55 = v58.u32[0];
        }

        v59 = vcnt_s8(v51[2]);
        v59.i16[0] = vaddlv_u8(v59);
        v55 += v59.u32[0];
LABEL_59:
        v60 = vcnt_s8(*v54);
        v60.i16[0] = vaddlv_u8(v60);
        v57 = v60.u32[0] + v55;
        goto LABEL_60;
      }

      v57 = v53 >> 6;
      if (v56)
      {
        goto LABEL_59;
      }

LABEL_60:
      v61 = vcnt_s8((*&v54[v56] & ~(-1 << v53)));
      v61.i16[0] = vaddlv_u8(v61);
      v37 = v51[v61.u32[0] + 6 + v57];
      if (!v37)
      {
        goto LABEL_303;
      }

LABEL_61:
      if ((v49 & 0x7FFFFFFF) == ++v50)
      {
        goto LABEL_62;
      }
    }

    v37 |= 3uLL;
LABEL_63:
    v265[0] = MEMORY[0x1E69E9820];
    v265[1] = 0x40000000;
    v265[2] = __termUpdateSetResolveQueryInfo_block_invoke;
    v265[3] = &__block_descriptor_tmp_31_14111;
    v265[4] = Mutable;
    v62 = v37 & 3;
    if (v62 == 3)
    {
      v63 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v37 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_303;
      }

      goto LABEL_301;
    }

    if (v50 != v49)
    {
      goto LABEL_303;
    }

    if (v62 != 1)
    {
      if (v62 == 2 && v47)
      {
        _TermTrieWalkCompactWithOptions((v37 & 0xFFFFFFFFFFFFFFFCLL), 0, 0, 1u, 0, v265, 0);
      }

      goto LABEL_303;
    }

    v69 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      _TermTrieWalkFatWithOptions(v69, 0, 0, 1, 0, v265, 0);
      goto LABEL_303;
    }

    v63 = *v69;
    if (*v69)
    {
LABEL_301:
      CFSetAddValue(Mutable, v63);
    }

LABEL_303:
    v32 = v226 + 1;
  }

  while (v226 + 1 != a2);
LABEL_307:
  v245 = 0;
  context = resolveQueryInfoCallback;
  v246 = v266;
  v247 = Mutable;
  v177 = flat_levels_cf_set_applier1;
  v12 = v223;
  if (v220)
  {
    LODWORD(v245) = v220 - *(v223 + 8);
    v177 = flat_levels_cf_set_applier2;
  }

  CFSetApplyFunction(Mutable, v177, &context);
  CFRelease(Mutable);
  free(__p[1]);
  free(*&v289[8]);
  a4 = v222;
  if (v222)
  {
LABEL_310:
    if (a2)
    {
      v178 = 0;
      do
      {
        v179 = *(a4 + 8 * v178);
        v180 = &a3[8 * v178];
        v181 = *(v180 + 4);
        if ((v181 & 0x600) != 0)
        {
          v182 = *(v180 + 5);
          v183 = *v180;
          v234[0] = MEMORY[0x1E69E9820];
          v234[1] = 0x40000000;
          v240 = *&v266[32];
          v241 = *&v266[48];
          v242 = *&v266[64];
          v238 = *v266;
          v235 = __termUpdateSetResolveQueryInfo_block_invoke_3_49;
          v236 = &__block_descriptor_tmp_51_14129;
          v237 = v179;
          v243 = *&v266[80];
          v239 = *&v266[16];
          if (v182)
          {
            v184 = *(v183 + 8 * v182 - 8);
            v186 = v184 == 2 || v184 == *(v12 + 48);
            v187 = ~v186 + v182;
          }

          else
          {
            v187 = -1;
          }

          Directory_355 = getDirectory_355((v12 + 48), v187, v183, 0);
          if (Directory_355)
          {
            if ((v181 & 0x400) != 0)
            {
              if (*(Directory_355 + 6))
              {
                v235(v234, (Directory_355 + 2));
              }
            }

            else
            {
              getAllPostings(Directory_355, v234);
            }
          }
        }

        else if ((v181 & 0x10) != 0)
        {
          *&v267 = 0;
          *(&v267 + 1) = &v267;
          v268 = 0x2000000000;
          v269 = 0;
          v188 = 0;
          if (_os_feature_enabled_impl())
          {
            v188 = *(v12 + 80);
          }

          v189 = *(v180 + 5);
          v190 = *(v180 + 15);
          v191 = v190 >> 25;
          if (!v191)
          {
            if (current_vector_version::onceToken != -1)
            {
              dispatch_once(&current_vector_version::onceToken, &__block_literal_global_7971);
            }

            v191 = current_vector_version::vecVersion;
            v190 = *(v180 + 15);
          }

          v192 = __THREAD_SLOT_KEY[0];
          if (!__THREAD_SLOT_KEY[0])
          {
            makeThreadId();
            v192 = __THREAD_SLOT_KEY[0];
          }

          v193 = pthread_getspecific(v192);
          if (!v193 || v193 >= 0x801)
          {
            makeThreadId();
            v193 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          }

          v194 = 0;
          if (v193 && v193 <= 0x800)
          {
            v195 = &threadData[9 * v193];
            v194 = *(v195 - 11);
            *(v195 - 11) = 1;
          }

          v229 = v194;
          v276 = 0;
          v275 = 0;
          IVFVectorIndexUpdateSet::getVectorIndex(&v275, v188, v189, v191, v190 & 3, (v190 >> 2) & 3, 0);
          v196 = v275;
          if (v275)
          {
            v233 = *__error();
            v197 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
            {
              v290 = 3;
              strcpy(v289, "<U>");
              (*(*v196 + 312))(__p, v196, v289);
              v198 = __p;
              if (v274 < 0)
              {
                v198 = __p[0];
              }

              *v291 = 134218242;
              *&v291[4] = v188;
              *&v291[12] = 2080;
              *&v291[14] = v198;
              _os_log_impl(&dword_1C278D000, v197, OS_LOG_TYPE_DEFAULT, "aNN search on <UpdateSet> %p %s", v291, 0x16u);
              if (v274 < 0)
              {
                operator delete(__p[0]);
              }

              if (v290 < 0)
              {
                operator delete(*v289);
              }
            }

            *__error() = v233;
            operator new();
          }

          v272 = 0;
          __s = 0;
          IVFVectorIndexUpdateSet::getVectorIndex(&__s, v188, v189, v191, v190 & 3, (v190 >> 2) & 3, 1u);
          if (__s)
          {
            v231 = __s;
            v232 = v188;
            v200 = *__error();
            v201 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
            {
              v290 = 3;
              strcpy(v289, "<U>");
              (*(*v231 + 312))(__p);
              v202 = __p;
              if (v274 < 0)
              {
                v202 = __p[0];
              }

              *v291 = 134218242;
              *&v291[4] = v232;
              *&v291[12] = 2080;
              *&v291[14] = v202;
              _os_log_impl(&dword_1C278D000, v201, OS_LOG_TYPE_DEFAULT, "aNN search on <UpdateSet> %p %s", v291, 0x16u);
              if (v274 < 0)
              {
                operator delete(__p[0]);
              }

              if (v290 < 0)
              {
                operator delete(*v289);
              }
            }

            *__error() = v200;
            operator new();
          }

          v203 = v188;
          v204 = *__error();
          v205 = _SILogForLogForCategory(16);
          v206 = dword_1EBF46B0C < 3;
          if (os_log_type_enabled(v205, (dword_1EBF46B0C < 3)))
          {
            IVFIndexName(__p, v189, v191, v190 & 3, (v190 >> 2) & 3, 0);
            v207 = __p;
            if (v274 < 0)
            {
              v207 = __p[0];
            }

            *v289 = 134218242;
            *&v289[4] = v203;
            *&v289[12] = 2080;
            *&v289[14] = v207;
            _os_log_impl(&dword_1C278D000, v205, v206, "*warn* aNN search on <UpdateSet> %p %s not found", v289, 0x16u);
            if (v274 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v204;
          v208 = v272;
          a4 = v222;
          v12 = v223;
          if (v272 && !atomic_fetch_add(&v272->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
          }

          v209 = v276;
          if (v276 && !atomic_fetch_add(&v276->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v209->__on_zero_shared)(v209);
            std::__shared_weak_count::__release_weak(v209);
          }

          v210 = __THREAD_SLOT_KEY[0];
          if (!__THREAD_SLOT_KEY[0])
          {
            makeThreadId();
            v210 = __THREAD_SLOT_KEY[0];
          }

          v211 = pthread_getspecific(v210);
          if (v211 && v211 < 0x801 || (makeThreadId(), (v211 = pthread_getspecific(__THREAD_SLOT_KEY[0])) != 0))
          {
            if (v211 <= 0x800)
            {
              *(&threadData[9 * v211 - 5] - 1) = v229;
            }
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v212 = *(*(&v267 + 1) + 24);
            buf[0].i32[0] = 134217984;
            *(buf + 4) = v212;
            _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "update set ANN found %zu", buf, 0xCu);
          }

          _Block_object_dispose(&v267, 8);
        }

        ++v178;
      }

      while (v178 != count);
    }
  }

LABEL_384:
  CIOnThreadCleanUpPop(v221);
  CICleanUpReset(v221, v14);
  return 0;
}

void _scheduler_suspension_locked(uint64_t a1)
{
  atomic_fetch_add((a1 + 96), 1u);
  v1 = *(a1 + 160);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___scheduler_suspension_locked_block_invoke;
  block[3] = &__block_descriptor_tmp_72;
  block[4] = a1;
  dispatch_barrier_async(v1, block);
}

void _rewriteQuery(void *a1, double a2)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___rewriteQuery_block_invoke;
  v3[3] = &unk_1E8193B38;
  v3[4] = &v4;
  *&v3[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __db_query_tree_apply_block_block_invoke;
  v8[3] = &unk_1E8198ED0;
  v8[4] = v3;
  db_query_tree_apply_block_with_meta(a1, v8, &__block_literal_global_18);
  v2 = v5[3];
  if (v2)
  {
    OSAtomicEnqueue(&s_si_calendar_head, v2, 0);
  }

  _Block_object_dispose(&v4, 8);
}

uint64_t ___rewriteQuery_block_invoke(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48) & 0xFFF7;
  if ((v3 - 1) >= 2)
  {
    if (v3 != 4)
    {
      v16 = *(a2 + 56) & 0xFCFF;
LABEL_38:
      *(a2 + 56) = v16;
      return a2;
    }

    *(a2 + 56) |= 0x100u;
    v4 = *(a2 + 16);
    if (v4)
    {
      v6 = *(v4 + 32);
      if ((v6 & 0x400) != 0 || (v7 = *v4) != 0 && (!strcmp(*v4, "kMDItemTextContent") || !strncmp(v7, "_kMDItemOCRContent", 0x12uLL)))
      {
        v6 |= 0x400uLL;
        *(v4 + 32) = v6;
      }

      v8 = *(v4 + 72);
      if (v8 && *v8 == 36)
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
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
        v9 = *(*(*(a1 + 32) + 8) + 24);
        if (!v9)
        {
          *(*(*(a1 + 32) + 8) + 24) = si_calendar_retain();
          v8 = *(*(a2 + 16) + 72);
          v9 = *(*(*(a1 + 32) + 8) + 24);
        }

        v10 = _expandFunctions((v8 + 1), &v26, 0x200uLL, v9, &__block_literal_global_4_5387, *(a1 + 40));
        v11 = *(a2 + 16);
        *(v11 + 32) |= v10;
        v12 = *(v11 + 72);
        v13 = strlen(v12);
        v14 = strlen(&v26);
        if (v14 <= v13)
        {
          memcpy(v12, &v26, v14 + 1);
          v4 = *(a2 + 16);
        }

        else
        {
          free(v12);
          v15 = strdup(&v26);
          v4 = *(a2 + 16);
          *(v4 + 72) = v15;
        }

        v6 = *(v4 + 32);
      }

      if ((v6 & 0x80) != 0 && *(v4 + 168))
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
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
        if (*(v4 + 40) >= 1)
        {
          v17 = 0;
          do
          {
            v18 = *(*(v4 + 168) + 8 * v17);
            if (v18 && *v18 == 36)
            {
              v19 = *(*(*(a1 + 32) + 8) + 24);
              if (!v19)
              {
                *(*(*(a1 + 32) + 8) + 24) = si_calendar_retain();
                v18 = *(*(*(a2 + 16) + 168) + 8 * v17);
                v19 = *(*(*(a1 + 32) + 8) + 24);
              }

              v20 = _expandFunctions((v18 + 1), &v26, 0x200uLL, v19, &__block_literal_global_4_5387, *(a1 + 40));
              v21 = *(a2 + 16);
              *(v21 + 32) |= v20;
              free(*(*(v21 + 168) + 8 * v17));
              *(*(*(a2 + 16) + 168) + 8 * v17) = strdup(&v26);
              v4 = *(a2 + 16);
            }

            ++v17;
          }

          while (v17 < *(v4 + 40));
        }

        v6 = *(v4 + 32);
      }

      if ((v6 & 0x800) != 0)
      {
        v16 = *(a2 + 56) & 0xFDFF;
      }

      else
      {
        v22 = *(v4 + 24);
        if (v22 == 14 || v22 == 5)
        {
          v24 = 512;
        }

        else
        {
          v24 = 0;
        }

        v16 = v24 | *(a2 + 56) & 0xFDFF;
      }

      goto LABEL_38;
    }
  }

  return a2;
}

void SISearchCtx::executeSearchContext(SISearchCtx *this, SISearchCtx *a2)
{
  v2 = a2;
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "QOS executeSearchCtx: %d", v9, 8u);
    }

    *__error() = v7;
  }

  if (*MEMORY[0x1E69E9AC8] <= 0x2FuLL)
  {
    ++sTotal;
  }

  v4 = malloc_type_zone_calloc(queryZone, 1uLL, 0x30uLL, 0x5BAF1CEAuLL);
  if (!v4)
  {
    _log_fault_for_malloc_failure();
  }

  *v4 = this;
  v4[3] = *(this + 1);
  *(v4 + 32) = v2;
  v4[5] = _Block_copy(&__block_literal_global_16224);
  if (v2)
  {
    suspendOthers(this);
    *(v4 + 1) = CFAbsoluteTimeGetCurrent();
    executeSearchCtx_Start(v4, 0);
  }

  else
  {
    v5 = si_querypipe_copy_jobid(*(this + 13));
    if (v5)
    {
      v6 = v5;
      atomic_fetch_add_explicit((*(this + 13) + 64), 1u, memory_order_relaxed);
      *(v4 + 1) = CFAbsoluteTimeGetCurrent();
      v4[2] = "executeSearchContextCracked";
      suspendOthers(this);
      (*(*this + 24))(this, executeSearchCtx_Start, v4, v6);
      si_release_qid(v6);
    }

    else
    {
      search_ctx_destroy(v4, 1);
    }
  }
}

uint64_t suspendOthers(SISearchCtx *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 16))(a1);
  if ((result & 1) == 0)
  {
    if (*(a1 + 76) >= -1)
    {
      v3 = 0;
      v4 = a1 + 312;
      v5 = -2;
      while (1)
      {
        if (*(*(a1 + 3) + 8 * (v5 + 2) + 1008))
        {
          v6 = *__error();
          v7 = _SILogForLogForCategory(1);
          v8 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v7, v8))
          {
            *buf = 67109120;
            v43 = v5 + 2;
            _os_log_impl(&dword_1C278D000, v7, v8, "Suspending root query scheduler(%d)", buf, 8u);
          }

          result = __error();
          *result = v6;
          v9 = **(*(a1 + 3) + 8 * (v5 + 2) + 1008);
          do
          {
            if (!v9)
            {
              goto LABEL_12;
            }

            result = v9;
            v9 = *v9;
          }

          while (v9);
          if (*&v4[8 * v3])
          {
            v13 = __si_assert_copy_extra_332();
            v21 = v13;
            v22 = "";
            if (v13)
            {
              v22 = v13;
            }

            __message_assert_336(v13, v14, v15, v16, v17, v18, v19, v20, "SISearchCtx.cpp", 228, "self->_stoken[i]==0", v22);
LABEL_26:
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

          result = si_scheduler_suspend_async(result);
          *&v4[8 * v3] = result;
        }

LABEL_12:
        ++v5;
        ++v3;
        if (v5 >= *(a1 + 76))
        {
          goto LABEL_15;
        }
      }
    }

    LODWORD(v3) = 0;
LABEL_15:
    v10 = *(*(a1 + 3) + 1080);
    if (v10)
    {
      v11 = *v10;
      do
      {
        if (!v11)
        {
          return result;
        }

        result = v11;
        v11 = *v11;
      }

      while (v11);
      v12 = a1 + 312;
      if (*&v12[8 * v3])
      {
        v24 = __si_assert_copy_extra_332();
        v21 = v24;
        v32 = "";
        if (v24)
        {
          v32 = v24;
        }

        __message_assert_336(v24, v25, v26, v27, v28, v29, v30, v31, "SISearchCtx.cpp", 241, "self->_stoken[i]==0", v32);
        goto LABEL_26;
      }

      if (v3 >= 5)
      {
        v33 = __si_assert_copy_extra_332();
        v21 = v33;
        v41 = "";
        if (v33)
        {
          v41 = v33;
        }

        __message_assert_336(v33, v34, v35, v36, v37, v38, v39, v40, "SISearchCtx.cpp", 242, "i<5", v41);
        goto LABEL_26;
      }

      result = si_scheduler_suspend_async(result);
      *&v12[8 * v3] = result;
    }
  }

  return result;
}

uint64_t si_sdb_enqueue(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v20 = qos_class_self();
      v21 = 1024;
      v22 = a5;
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "QOS si_sdb_enqueue: %d priority: %d", buf, 0xEu);
    }

    *__error() = v13;
  }

  if (a5 <= -2)
  {
    v10 = -2;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (!*(a1 + 8 * (v11 + 2) + 1008))
  {
    v15 = __si_assert_copy_extra_661(*(a1 + 32));
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s No query work queue for priority %d", "SIJob.c", 120, "ref->workqueues.queues[SI_QUERY_QUEUE_IDX+priority]!=0", v17, v11);
    free(v16);
    if (__valid_fs(*(a1 + 32)))
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

  return si_enqueue_routine(a1, a2, a3, a4, v11 + 2);
}

uint64_t SIResultQueueDequeue(void *a1, float a2)
{
  pthread_mutex_lock((*a1 + 8));
  *(a1 + 8) = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 12) == 1)
  {
    v4 = *a1;
LABEL_4:
    pthread_mutex_unlock((*&v4 + 8));
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v4 = *a1;
  if (*(a1 + 21))
  {
    goto LABEL_4;
  }

  v9 = *(*&v4 + 136);
  v10 = *(*&v4 + 124);
  v5 = *(v9 + 8 * v10);
  if (v5)
  {
    *(v9 + 8 * v10) = 0;
    *(*&v4 + 124) = (*(*&v4 + 120) - 1) & (v10 + 1);
    if (si_simplequeue_count_locked(*a1) >= *(a1 + 4))
    {
      v11 = 0;
      v14 = 0u;
    }

    else
    {
      v14 = *(a1 + 3);
      v11 = *(a1 + 10);
      a1[4] = 0;
      a1[5] = 0;
      a1[3] = 0;
    }

LABEL_18:
    a1[9] -= countForBatch(v5);
    goto LABEL_19;
  }

  if (a2 == 0.0)
  {
    goto LABEL_4;
  }

  if (si_simplequeue_count_locked(*&v4) >= *(a1 + 4))
  {
    v11 = 0;
    v14 = 0u;
  }

  else
  {
    v14 = *(a1 + 3);
    v11 = *(a1 + 10);
    a1[4] = 0;
    a1[5] = 0;
    a1[3] = 0;
  }

  v5 = si_dequeue_wait_locked(*a1, a2);
  if (si_simplequeue_count_locked(*a1) < *(a1 + 4) && !v14)
  {
    v14 = *(a1 + 3);
    v11 = *(a1 + 10);
    a1[4] = 0;
    a1[5] = 0;
    a1[3] = 0;
  }

  if (v5)
  {
    goto LABEL_18;
  }

LABEL_19:
  pthread_mutex_unlock((*a1 + 8));
  v7 = *(&v14 + 1);
  v6 = v14;
  if (v11)
  {
    v12 = 0;
    v13 = 8 * v11;
    do
    {
      (*(v14 + v12))(*(*(&v14 + 1) + v12), 0);
      v12 += 8;
    }

    while (v13 != v12);
  }

LABEL_5:
  free(v7);
  free(v6);
  return v5;
}