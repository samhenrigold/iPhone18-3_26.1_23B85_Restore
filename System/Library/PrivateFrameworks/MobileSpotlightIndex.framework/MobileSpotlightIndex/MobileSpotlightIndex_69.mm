void _CIDocSetIteratorProcessPositionsUpdates(uint64_t *a1, int a2, int a3, int a4, int a5, char a6)
{
  LODWORD(v10) = a2;
  v29 = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (v10)
  {
    v10 = v10;
    do
    {
      v13 = *a1++;
      ContentIndexDocSetIteratorFlatten(v13, Mutable, 0, 0);
      --v10;
    }

    while (v10);
  }

  Count = CFSetGetCount(Mutable);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &block[-1] - ((v16 + 15) & 0xFFFFFFFF0);
  bzero(v17, v16);
  CFSetGetValues(Mutable, v17);
  v28 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___CIDocSetIteratorProcessPositionsUpdates_block_invoke;
  block[3] = &__block_descriptor_tmp_10_14168;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  block[4] = v17;
  block[5] = &v28;
  dispatch_apply(Count, 0, block);
  CFRelease(Mutable);
  if (v28)
  {
    v18 = __si_assert_copy_extra_332();
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 2994, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v20);
    free(v19);
    if (__valid_fs(-1))
    {
      v21 = 2989;
    }

    else
    {
      v21 = 3072;
    }

    *v21 = -559038737;
    abort();
  }
}

void _CIDocSetIteratorProcessPositionsUpdatesForNode(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v337 = *MEMORY[0x1E69E9840];
  makeThreadId();
  v10 = CICleanUpThreadLoc();
  v11 = atomic_load((*(a1 + 56) + 36));
  v12 = *(a1 + 48);
  if (v12 < 9)
  {
    goto LABEL_2;
  }

  if (v12 != 9)
  {
    v270 = __si_assert_copy_extra_332();
    v271 = v270;
    v272 = "";
    if (v270)
    {
      v272 = v270;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected valid doc set type. Got %d", "CIQuery.c", 2941, "0", v272, *(a1 + 48));
    v264 = v271;
    goto LABEL_318;
  }

  v13 = *(a1 + 56);
  if (*(v13 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_2;
  }

  v14 = v10;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v332 = 0;
  v331 = 0;
  v16 = *(v13 + 64);
  v320 = add_explicit;
  v17 = setThreadIdAndInfo(v16, sIndexExceptionCallbacks, v13, 0x20000000, add_explicit + 1);
  v332 = __PAIR64__(v17, HIDWORD(v17));
  v331 = __PAIR64__(v18, v19);
  v20 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
  *(v20 + 216) = 0;
  v319 = *(v20 + 312);
  v21 = *(v20 + 224);
  v22 = v20;
  if (v21)
  {
    v21(*(v20 + 288));
  }

  v330 = v332;
  v329 = v331;
  if (_setjmp(v22))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v22 + 312) = v319;
    if ((~*(v22 + 212) & 0xA0000000) == 0)
    {
      v23 = *(v22 + 288);
      if (v23)
      {
        _CIMakeInvalid(v23);
      }
    }

    CIOnThreadCleanUpReset(v329);
    dropThreadId(HIDWORD(v330), 1, v320 + 1);
    CICleanUpReset(HIDWORD(v330), HIDWORD(v329));
    goto LABEL_2;
  }

  v24 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v25 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v24 + 1);
  v328 = __PAIR64__(v25, HIDWORD(v25));
  v327 = __PAIR64__(v26, v27);
  v28 = threadData[9 * v25 + 1] + 320 * HIDWORD(v25);
  v317 = *(v28 + 312);
  v29 = *(v28 + 224);
  if (v29)
  {
    v29(*(v28 + 288));
  }

  v326 = v328;
  v325 = v327;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v28 + 312) = v317;
    CIOnThreadCleanUpReset(v325);
    dropThreadId(HIDWORD(v326), 1, v24 + 1);
    CICleanUpReset(HIDWORD(v326), HIDWORD(v325));
    goto LABEL_23;
  }

  v34 = **(a1 + 72);
  v35 = *(v34 + 80);
  if (v35)
  {
    a2 = *(v35 + 16);
  }

  v36 = *(v34 + 88);
  v37 = a2;
  if (v36)
  {
    v37 = *(v36 + 16);
  }

  v316 = v37;
  if (!*(a1 + 80))
  {
    *(a1 + 80) = CIIndexSetCreateWithRange(0, a4, 1);
  }

  v318 = v24;
  v38 = *(a1 + 128);
  if (v38 < 0)
  {
    if ((v38 & 0x7FFFFFFF) != 0)
    {
      v41 = 0;
      do
      {
        v42 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 120) + 8 * v41));
        if (v42)
        {
          CIIndexSetRemoveRange(*(a1 + 104), v42, a2, a3);
        }

        ++v41;
      }

      while (v41 < (*(a1 + 128) & 0x7FFFFFFFu));
    }
  }

  else if (v38)
  {
    v39 = 0;
    do
    {
      v40 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 120) + 8 * v39));
      if (v40)
      {
        CIIndexSetIntersectRanges(*(a1 + 104), v40, a2, a3);
      }

      ++v39;
    }

    while (v39 < (*(a1 + 128) & 0x7FFFFFFFu));
  }

  v315 = a5;
  v314 = v14;
  v313 = v11 & 0xC;
  v312 = *(a1 + 104);
  v311 = &threadData[9 * v14];
  v43 = 1;
  *&v30 = 67109120;
  *&v31 = 67109120;
  v310 = v31;
  v309 = v31;
  v308 = v31;
  v307 = v31;
  v306 = v31;
  v305 = v31;
  v304 = v30;
  v303 = 0x8000;
  v302 = 3;
  v301 = 4;
  v44 = 0;
  v45 = 0;
  v321 = a1;
  do
  {
    v46 = v44;
    v47 = v43;
    v48 = a3;
    a3 = a2;
    v49 = *(**(a1 + 72) + 8 * v44 + 80);
    if (v49)
    {
      v294 = v46;
      v300 = v43;
      v293 = *(v49 + 256);
      v298 = *(v311 + 8);
      v299 = a2;
      v295 = v48;
      locked = lockedCountItemsInRange(v312, a2, v48, *&v30);
      v51 = (*(a1 + 96) * locked);
      malloc = query_malloc(8 * v51);
      v52 = v314;
      v292 = malloc;
      CICleanUpPush(v314, MEMORY[0x1E69E9B38], malloc);
      v53 = *(a1 + 96);
      v297 = locked;
      if (!v53)
      {
        goto LABEL_248;
      }

      v291 = v51;
      v54 = locked;
      v290 = locked;
      v55 = 0;
      v56 = locked;
      v57 = 0;
      do
      {
        v58 = v53;
        if (v56 >= 1)
        {
          v59 = &v292[v55];
          v60 = v54;
          do
          {
            v61 = v60;
            v62 = v59;
            v63 = CIIndexSetCreateWithRange(0, 0x400u, 1);
            *v62 = v63;
            CICleanUpPush(v52, MEMORY[0x1E695D7C0], v63);
            v59 = v62 + 8;
            v60 = v61 - 1;
          }

          while (v61 != 1);
          v58 = *(a1 + 96);
        }

        ++v57;
        v56 = v297;
        v55 += v297;
        v53 = v58;
      }

      while (v57 < v58);
      if (!v58)
      {
        locked = v297;
        goto LABEL_248;
      }

      v64 = 0;
      v65 = v45;
      locked = v297;
      v66 = v294;
      do
      {
        v67 = v64;
        v68 = *(*(a1 + 72) + 8 * v64);
        v69 = *(*(v68 + 64) + 8 * v66 + 224);
        v288 = v68;
        if (!v69)
        {
          goto LABEL_244;
        }

        v70 = v69;
        if (*v69 < 1)
        {
          goto LABEL_244;
        }

        v286 = v67 * v290;
        v285 = locked * v67;
        v71 = &v292[(locked * v67)];
        v72 = 0;
        v73 = v65;
        v289 = v67;
        v287 = v70;
        while (1)
        {
          v282 = v73;
          v74 = v72;
          *buf = 0u;
          v324 = 0u;
          v75 = v70[2];
          v284 = v74;
          v76 = 5 * v74;
          initializeEnumberatorForRangeLocked(buf, *(v75 + 40 * v74 + 32), v299, v295);
          v78 = v70[2] + 8 * v76;
          v79 = *(v78 + 4);
          if (!*v78)
          {
LABEL_72:
            v89 = v79;
            goto LABEL_83;
          }

          v80 = _CIIndexSetEnumeratorNext(buf);
          if (!CIIndexSetHasIndex(v312, v80))
          {
            if (gSILogLevels[0] >= 5)
            {
              v203 = *__error();
              v204 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
              {
                *v333 = v305;
                *&v333[4] = v80;
                _os_log_impl(&dword_1C278D000, v204, OS_LOG_TYPE_DEFAULT, "LL: Skip %u", v333, 8u);
              }

              *__error() = v203;
              a1 = v321;
              v52 = v314;
              v67 = v289;
            }

            v90 = *(v78 + 8);
            v89 = v79;
            locked = v297;
            if (v90)
            {
              v91 = 1;
              v92 = v78;
              do
              {
                v89 = *(v92 + 4);
                if (v91 >= v90)
                {
                  break;
                }

                v92 = v293 + 8 * v89;
                ++v91;
              }

              while (v89 && v293 != 0);
            }

            goto LABEL_83;
          }

          if (gSILogLevels[0] >= 5)
          {
            v200 = *__error();
            v201 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
            {
              *v333 = v306;
              *&v333[4] = v80;
              _os_log_impl(&dword_1C278D000, v201, OS_LOG_TYPE_DEFAULT, "LL: Read %u", v333, 8u);
            }

            *__error() = v200;
            a1 = v321;
            v52 = v314;
            v67 = v289;
          }

          v81 = lockedCountItemsInRange(v312, v80, v295, v77.n128_u64[0]) - 1;
          if (v286 + v81 >= v291)
          {
            break;
          }

          locked = v297;
          if (!*(v78 + 8))
          {
            goto LABEL_72;
          }

          v82 = v81 + v285;
          if ((&malloc[v81])[v285] || (v206 = CIIndexSetCreateWithRange(0, *v78, 1), malloc[v82] = v206, v89 = v79, *(v78 + 8)))
          {
            v83 = -1;
            v84 = v78;
            v85 = 0;
            do
            {
              v86 = v83;
              CIIndexSetAddIndexExpandingRange(malloc[v82], *v84, v77.n128_u64[0]);
              if (v86 <= *v84)
              {
                v266 = __si_assert_copy_extra_332();
                v260 = v266;
                v267 = "";
                if (v266)
                {
                  v267 = v266;
                }

                v273 = "lastpos>info->position";
                v274 = v267;
                v262 = "CIQuery.c";
                v263 = 2643;
                goto LABEL_317;
              }

              v87 = *v84;
              v88 = v84[1];
              v89 = v88;
              if (v88)
              {
                v84 = (v293 + 8 * v88);
              }

              else
              {
                v84 = 0;
              }

              ++v85;
              v83 = v87;
              locked = v297;
            }

            while (v85 < *(v78 + 8));
          }

LABEL_83:
          if (v315)
          {
            v65 = v282;
          }

          else
          {
            if (v89)
            {
              while (1)
              {
                v94 = v89;
                v95 = _CIIndexSetEnumeratorNext(buf);
                v96 = v312;
                HasIndex = CIIndexSetHasIndex(v312, v95);
                v98 = (v293 + 8 * v94);
                if (HasIndex)
                {
                  break;
                }

                if (gSILogLevels[0] >= 5)
                {
                  v125 = *__error();
                  v126 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                  {
                    *v333 = v307;
                    *&v333[4] = v95;
                    _os_log_impl(&dword_1C278D000, v126, OS_LOG_TYPE_DEFAULT, "MA: Skip %u", v333, 8u);
                  }

                  *__error() = v125;
                }

                v103 = v98 + *v98 + 4;
LABEL_127:
                v89 = *v103;
                if (!v89)
                {
                  goto LABEL_135;
                }
              }

              v99 = lockedCountItemsInRange(v96, v95, v295, v77.n128_u64[0]);
              if (gSILogLevels[0] >= 5)
              {
                v123 = *__error();
                v124 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                {
                  *v333 = v308;
                  *&v333[4] = v95;
                  _os_log_impl(&dword_1C278D000, v124, OS_LOG_TYPE_DEFAULT, "MA: Read %u", v333, 8u);
                }

                *__error() = v123;
              }

              v101 = (v98 + 1);
              v100 = *v98;
              if (v313 == 8)
              {
                if (*v101 < 0)
                {
                  v109 = *v101;
                  if (v109 >= 0xC0)
                  {
                    v110 = v301;
                    if (v109 >= 0xF0)
                    {
                      v110 = v301 + 1;
                    }

                    v111 = v109 >= 0xE0;
                    v102 = v302;
                    if (v111)
                    {
                      v102 = v110;
                    }
                  }

                  else
                  {
                    v102 = 2;
                  }
                }

                else
                {
                  v102 = 1;
                }
              }

              else
              {
                v102 = 0;
              }

              v104 = v102 + 1;
              v105 = &v101[v102];
              v106 = v101[v102];
              if (v101[v102] < 0)
              {
                if (v106 > 0xBF)
                {
                  if (v106 > 0xDF)
                  {
                    if (v106 > 0xEF)
                    {
                      v107 = *&v101[v104];
                      v108 = v102 + 5;
                    }

                    else
                    {
                      v107 = ((v106 & 0xF) << 24) | (v101[v104] << 16) | (v105[2] << 8) | v105[3];
                      v108 = v102 + 4;
                    }
                  }

                  else
                  {
                    v107 = ((v106 & 0x1F) << 16) | (v101[v104] << 8) | v105[2];
                    v108 = v102 + 3;
                  }
                }

                else
                {
                  v107 = v101[v104] | ((v106 & 0x3F) << 8);
                  v108 = v102 + 2;
                }
              }

              else
              {
                v107 = v101[v102];
                v108 = v102 + 1;
              }

              v112 = (v99 - 1);
              if (v286 + v112 < v291)
              {
                v113 = *&v71[8 * v112];
                if (!v113)
                {
                  v113 = CIIndexSetCreateWithRange(0, v107, 1);
                  *&v71[8 * v112] = v113;
                }

                CIIndexSetAddIndexExpandingRange(v113, v107, v77.n128_u64[0]);
                v114 = v108;
                for (i = v107; ; i = v122)
                {
                  v116 = v114 + 1;
                  v117 = &v101[v114];
                  v118 = v101[v114];
                  if (v101[v114] < 0)
                  {
                    if (v118 > 0xBF)
                    {
                      if (v118 > 0xDF)
                      {
                        if (v118 > 0xEF)
                        {
                          v120 = *&v101[v116];
                          v116 = v114 + 5;
                        }

                        else
                        {
                          v120 = ((v118 & 0xF) << 24) | (v101[v116] << 16) | (v117[2] << 8) | v117[3];
                          v116 = v114 + 4;
                        }
                      }

                      else
                      {
                        v120 = ((v118 & 0x1F) << 16) | (v101[v116] << 8) | v117[2];
                        v116 = v114 + 3;
                      }
                    }

                    else
                    {
                      v120 = v101[v116] | ((v118 & 0x3F) << 8);
                      v116 = v114 + 2;
                    }

                    v119 = v120;
                    if (!v120)
                    {
LABEL_126:
                      v103 = &v101[v100];
                      goto LABEL_127;
                    }
                  }

                  else
                  {
                    v119 = v101[v114];
                    if (!v118)
                    {
                      goto LABEL_126;
                    }
                  }

                  v121 = v116;
                  v122 = i - v119;
                  CIIndexSetAddIndexExpandingRange(*&v71[8 * v112], (i - v119), v77.n128_u64[0]);
                  v114 = v121;
                }
              }
            }

LABEL_135:
            v127 = *(v78 + 16);
            v283 = v275;
            MEMORY[0x1EEE9AC00](v77);
            v128 = &v275[-32768];
            bzero(&v275[-32768], v129);
            v65 = v282;
            v52 = v314;
            if (v127)
            {
              v130 = *(**(*(a1 + 112) + 408) + 4488);
              v131 = v127 & 0x3FFFFFFFFFFFF000;
              v65 = fd_pread(v130, &v275[-32768], 0x8000uLL, v127 & 0x3FFFFFFFFFFFF000);
              if (v65 == -1)
              {
                goto LABEL_243;
              }

              v132 = v127;
              v133 = 0;
              v134 = v131;
              do
              {
                v135 = v132 - 32749 < 0xFFFFFFFFFFFF7FFFLL || v134 > v132;
                v136 = v134;
                if (v135)
                {
                  v136 = v132 & 0x3FFFFFFFFFFFF000;
                  v65 = fd_pread(v130, &v275[-32768], 0x8000uLL, v132 & 0x3FFFFFFFFFFFF000);
                  if (v65 == -1)
                  {
                    break;
                  }
                }

                *v333 = v132 - v136;
                VInt64 = v2_readVInt64(&v275[-32768], v333);
                if (VInt64)
                {
                  v140 = VInt64 >> 1;
                  v138 = v2_readVInt64(&v275[-32768], v333);
                  v139 = v140;
                }

                else
                {
                  v138 = VInt64;
                  v139 = 0;
                }

                if (v138)
                {
                  v268 = __si_assert_copy_extra_332();
                  v260 = v268;
                  v269 = "";
                  if (v268)
                  {
                    v269 = v268;
                  }

                  v273 = "(value & 1) == 0";
                  v274 = v269;
                  v262 = "PayloadIterator.h";
                  v263 = 279;
                  goto LABEL_317;
                }

                v141 = v138 >> 1;
                if (!v139)
                {
                  v139 = v133;
                }

                v142 = v138 == 0;
                v143 = v138 ? v139 : 0;
                v280 = v143;
                v144 = v142 ? v139 : v141;
                v281 = v144;
                v145 = *v333;
                v146 = v136;
                while (1)
                {
LABEL_157:
                  if (v145 - 32749 > 0xFFFFFFFFFFFF7FFELL)
                  {
                    a1 = v321;
                    v52 = v314;
                  }

                  else
                  {
                    v147 = v145 + v146;
                    v148 = (v145 + v146) & 0x3FFFFFFFFFFFF000;
                    v65 = fd_pread(v130, &v275[-32768], 0x8000uLL, v148);
                    a1 = v321;
                    v52 = v314;
                    if (v65 == -1)
                    {
                      goto LABEL_231;
                    }

                    v145 = v147 & 0xC000000000000FFFLL;
                    v146 = v148;
                  }

                  v148 = v146;
                  if (v313 == 8)
                  {
                    v149 = v145 + 1;
                    v150 = &v128[v145];
                    v151 = v128[v145];
                    if (v128[v145] < 0)
                    {
                      if (v151 > 0xBF)
                      {
                        if (v151 > 0xDF)
                        {
                          if (v151 > 0xEF)
                          {
                            v153 = *&v128[v149];
                            v149 = v145 + 5;
                          }

                          else
                          {
                            v153 = ((v151 & 0xF) << 24) | (v128[v149] << 16) | (v150[2] << 8) | v150[3];
                            v149 = v145 + 4;
                          }
                        }

                        else
                        {
                          v153 = ((v151 & 0x1F) << 16) | (v128[v149] << 8) | v150[2];
                          v149 = v145 + 3;
                        }
                      }

                      else
                      {
                        v153 = v128[v149] | ((v151 & 0x3F) << 8);
                        v149 = v145 + 2;
                      }

                      v152 = v153;
                    }

                    else
                    {
                      v152 = v128[v145];
                    }

                    v154 = v152;
                    v145 = v149;
                    if (!v154)
                    {
                      break;
                    }
                  }

                  v155 = v145 + 1;
                  v156 = &v128[v145];
                  v157 = v128[v145];
                  if (v128[v145] < 0)
                  {
                    if (v157 > 0xBF)
                    {
                      if (v157 > 0xDF)
                      {
                        if (v157 > 0xEF)
                        {
                          v158 = *&v128[v155];
                          v159 = v145 + 5;
                        }

                        else
                        {
                          v158 = ((v157 & 0xF) << 24) | (v128[v155] << 16) | (v156[2] << 8) | v156[3];
                          v159 = v145 + 4;
                        }
                      }

                      else
                      {
                        v158 = ((v157 & 0x1F) << 16) | (v128[v155] << 8) | v156[2];
                        v159 = v145 + 3;
                      }
                    }

                    else
                    {
                      v158 = v128[v155] | ((v157 & 0x3F) << 8);
                      v159 = v145 + 2;
                    }
                  }

                  else
                  {
                    v158 = v128[v145];
                    v159 = v145 + 1;
                  }

                  if (!v158)
                  {
                    break;
                  }

                  v160 = _CIIndexSetEnumeratorNext(buf);
                  if (!v160)
                  {
                    break;
                  }

                  v161 = v160;
                  v162 = v312;
                  if (CIIndexSetHasIndex(v312, v160))
                  {
                    v279 = v148;
                    if (gSILogLevels[0] >= 5)
                    {
                      v276 = *__error();
                      v196 = _SILogForLogForCategory(0);
                      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                      {
                        *v335 = v310;
                        v336 = v161;
                        _os_log_impl(&dword_1C278D000, v196, OS_LOG_TYPE_DEFAULT, "DU: Read %u", v335, 8u);
                      }

                      *__error() = v276;
                    }

                    v164 = lockedCountItemsInRange(v162, v161, v295, v163) - 1;
                    v166 = v286 + v164;
                    v167 = v159;
                    v168 = v279;
                    LODWORD(v169) = v158;
                    v170 = 0;
                    while (1)
                    {
                      v171 = __OFSUB__(v169, v170);
                      v169 = (v169 - v170);
                      if ((v169 < 0) ^ v171 | (v169 == 0))
                      {
                        break;
                      }

                      if (v166 >= v291)
                      {
                        v145 = v159;
                        v146 = v279;
                        goto LABEL_157;
                      }

                      v172 = v168;
                      v173 = *&v71[8 * v164];
                      if (!v173)
                      {
                        v173 = CIIndexSetCreateWithRange(0, v169, 1);
                        *&v71[8 * v164] = v173;
                      }

                      CIIndexSetAddIndexExpandingRange(v173, v169, v165);
                      if (v167 - 32764 > 0xFFFFFFFFFFFF7FFELL || (v174 = v167 + v172, v172 = v174 & 0x3FFFFFFFFFFFF000, v175 = fd_pread(v130, &v275[-32768], 0x8000uLL, v174 & 0x3FFFFFFFFFFFF000), v145 = v174 & 0xC000000000000FFFLL, v167 = v174 & 0xC000000000000FFFLL, v146 = v172, v175 != -1))
                      {
                        v168 = v172;
                        v176 = v167 + 1;
                        v177 = &v128[v167];
                        v178 = v128[v167];
                        if (v128[v167] < 0)
                        {
                          if (v178 > 0xBF)
                          {
                            if (v178 > 0xDF)
                            {
                              if (v178 > 0xEF)
                              {
                                v180 = *&v128[v176];
                                v176 = v167 + 5;
                              }

                              else
                              {
                                v180 = ((v178 & 0xF) << 24) | (v128[v176] << 16) | (v177[2] << 8) | v177[3];
                                v176 = v167 + 4;
                              }
                            }

                            else
                            {
                              v180 = ((v178 & 0x1F) << 16) | (v128[v176] << 8) | v177[2];
                              v176 = v167 + 3;
                            }
                          }

                          else
                          {
                            v180 = v128[v176] | ((v178 & 0x3F) << 8);
                            v176 = v167 + 2;
                          }

                          v179 = v180;
                        }

                        else
                        {
                          v179 = v128[v167];
                        }

                        v181 = v179;
                        v145 = v176;
                        v167 = v176;
                        v146 = v172;
                        v170 = v181;
                        if (v181)
                        {
                          continue;
                        }
                      }

                      goto LABEL_157;
                    }

                    v259 = __si_assert_copy_extra_332();
                    v260 = v259;
                    v261 = "";
                    if (v259)
                    {
                      v261 = v259;
                    }

                    v273 = "last > nextPos";
                    v274 = v261;
                    v262 = "CIQuery.c";
                    v263 = 2785;
LABEL_317:
                    __message_assert("%s:%u: failed assertion '%s' %s ", v262, v263, v273, v274);
                    v264 = v260;
LABEL_318:
                    free(v264);
                    if (__valid_fs(-1))
                    {
                      v265 = 2989;
                    }

                    else
                    {
                      v265 = 3072;
                    }

                    *v265 = -559038737;
                    abort();
                  }

                  if (gSILogLevels[0] >= 5)
                  {
                    v197 = v148;
                    v198 = *__error();
                    v199 = _SILogForLogForCategory(0);
                    if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
                    {
                      *v335 = v309;
                      v336 = v161;
                      _os_log_impl(&dword_1C278D000, v199, OS_LOG_TYPE_DEFAULT, "DU: Skip %u", v335, 8u);
                    }

                    *__error() = v198;
                    v148 = v197;
                  }

                  v182 = v148;
                  do
                  {
                    if (v159 - 32764 > 0xFFFFFFFFFFFF7FFELL)
                    {
                      v186 = v159;
                      v187 = v182;
                    }

                    else
                    {
                      v183 = v159 + v182;
                      v184 = (v159 + v182) & 0x3FFFFFFFFFFFF000;
                      v185 = fd_pread(v130, &v275[-32768], 0x8000uLL, v184);
                      v145 = v183 & 0xC000000000000FFFLL;
                      v186 = v183 & 0xC000000000000FFFLL;
                      v146 = v184;
                      v187 = v184;
                      if (v185 == -1)
                      {
                        goto LABEL_157;
                      }
                    }

                    v182 = v187;
                    v188 = v186;
                    v189 = v186 + 1;
                    v190 = &v128[v186];
                    v191 = v128[v186];
                    v192 = v128[v186];
                    if (v191 < 0)
                    {
                      if (v192 > 0xBF)
                      {
                        if (v192 > 0xDF)
                        {
                          if (v192 > 0xEF)
                          {
                            v194 = *&v128[v189];
                            v189 = v188 + 5;
                          }

                          else
                          {
                            v194 = ((v192 & 0xF) << 24) | (v128[v189] << 16) | (v190[2] << 8) | v190[3];
                            v189 = v188 + 4;
                          }
                        }

                        else
                        {
                          v194 = ((v192 & 0x1F) << 16) | (v128[v189] << 8) | v190[2];
                          v189 = v188 + 3;
                        }
                      }

                      else
                      {
                        v194 = v128[v189] | ((v192 & 0x3F) << 8);
                        v189 = v188 + 2;
                      }

                      v193 = v194;
                    }

                    else
                    {
                      v193 = v192;
                    }

                    v195 = v193;
                    v145 = v189;
                    v159 = v189;
                    v146 = v182;
                  }

                  while (v195);
                }

                v65 = 0;
LABEL_231:
                v134 = v148;
                v132 = v281;
                v133 = v280;
              }

              while (v281);
            }

            locked = v297;
            v67 = v289;
          }

          v73 = v65;
          v72 = v284 + 1;
          v70 = v287;
          if (*v287 <= v284 + 1)
          {
            goto LABEL_244;
          }
        }

        v65 = v282;
LABEL_243:
        locked = v297;
        v67 = v289;
LABEL_244:
        v207 = v65;
        v66 = v294;
        v208 = v288 + 8 * v294;
        (*(v288 + 96))(*(v208 + 80));
        *(v208 + 80) = 0;
        v64 = v67 + 1;
        v45 = v207;
        v65 = v207;
      }

      while (v67 + 1 < *(a1 + 96));
LABEL_248:
      if (v45 != -1)
      {
        v209 = locked;
        *buf = 0u;
        v324 = 0u;
        initializeEnumberatorForRangeLocked(buf, *(a1 + 104), v299, v295);
        v210 = 0;
        v278 = locked;
        v211 = v45;
        while (1)
        {
          v212 = _CIIndexSetEnumeratorNext(buf);
          if ((v212 - 1) >= 0xFFFFFFFE)
          {
            v52 = v314;
            goto LABEL_297;
          }

          v213 = v212;
          v214 = v212;
          v334 = 0u;
          *v333 = 0u;
          initializeEnumberatorForRangeLocked(v333, malloc[v210], 0, 0x7FFFFFFFu);
          v215 = *(a1 + 36);
          if (*(a1 + 48) != 9)
          {
            if (v215 == 3)
            {
LABEL_257:
              if (*(a1 + 132))
              {
                v218 = v297;
LABEL_259:
                v219 = _CIIndexSetEnumeratorNext(v333);
                if (v219 - 1 > 0xFFFFFFFD)
                {
                  goto LABEL_272;
                }

                v221 = 0;
                v222 = v209;
                v223 = v219;
                while (v221 + 1 < *(a1 + 96))
                {
                  if (malloc[v222])
                  {
                    v224 = *(*(a1 + 136) + 4 * v221) + v223;
                    v225 = CIIndexSetHasIndex(malloc[v222], v224);
                    v222 += v218;
                    ++v221;
                    v223 = v224;
                    if (v225)
                    {
                      continue;
                    }
                  }

                  goto LABEL_259;
                }

                goto LABEL_271;
              }
            }

LABEL_265:
            v226 = _CIIndexSetEnumeratorNext(v333);
            if ((v226 - 1) > 0xFFFFFFFD)
            {
              goto LABEL_272;
            }

            v227 = v226 + 1;
            v228 = 1;
            v229 = v209;
            while (v228 < *(a1 + 96))
            {
              if (malloc[v229])
              {
                v230 = CIIndexSetHasIndex(malloc[v229], v227);
                ++v228;
                ++v227;
                v229 += v297;
                if (v230)
                {
                  continue;
                }
              }

              goto LABEL_265;
            }

LABEL_271:
            v231 = *(a1 + 80);
            *v335 = -1;
            _CIIndexSetAddIndex(v231, v214, 0, v335, v220);
            goto LABEL_272;
          }

          if (!v215)
          {
            goto LABEL_265;
          }

          if (v215 == 3)
          {
            goto LABEL_257;
          }

          v216 = *(a1 + 132);
          v217 = v216 ? *(*(a1 + 136) + 4 * (v216 - 1)) : 5;
          v277 = v213;
          v232 = 0xFFFFFFFFLL;
          v233 = 0;
          v234 = v211;
          while (1)
          {
            v235 = v233;
            v236 = _CIIndexSetEnumeratorNext(v333);
            if (v236 - 1 > 0xFFFFFFFD)
            {
              v211 = v234;
              goto LABEL_272;
            }

            v237 = 0;
            v322 = v232;
            if (*(a1 + 144))
            {
              v237 = &v322;
            }

            if (checkNearness_14185(1u, v217, a1, v236, malloc, v278, v210, v236, v236, v237, *(a1 + 36)))
            {
              break;
            }

LABEL_289:
            v233 = v235;
          }

          v239 = *(a1 + 144);
          if (v239)
          {
            v240 = v232;
            if (v322 < v232)
            {
              v241 = v322;
              changesSetMinCount(v239, v277, v322 + 1);
              v240 = v241;
            }
          }

          else
          {
            v240 = v232;
          }

          v232 = v240;
          if ((v235 & 1) == 0)
          {
            if (dword_1EBF46AF4 >= 5)
            {
              v243 = *__error();
              v244 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v244, OS_LOG_TYPE_DEFAULT))
              {
                *v335 = v304;
                v336 = v214;
                _os_log_impl(&dword_1C278D000, v244, OS_LOG_TYPE_DEFAULT, "Yes: %d", v335, 8u);
              }

              *__error() = v243;
            }

            v242 = *(a1 + 80);
            *v335 = -1;
            _CIIndexSetAddIndex(v242, v214, 0, v335, v238);
          }

          if (*(a1 + 144) && v232 + 1 != *(a1 + 96))
          {
            break;
          }

          v211 = 1;
LABEL_272:
          ++v210;
          ++v209;
        }

        v234 = 1;
        v235 = 1;
        goto LABEL_289;
      }

      v211 = -1;
LABEL_297:
      CICleanUpReset(v52, v298);
      v45 = v211;
      v47 = v300;
      a3 = v299;
    }

    v43 = 0;
    v44 = 1;
    a2 = v316;
  }

  while ((v47 & 1) != 0);
  v245 = *(a1 + 96);
  v246 = 0;
  v247 = 1;
  do
  {
    v248 = v247;
    if (v245)
    {
      v249 = 0;
      do
      {
        v250 = *(*(*(a1 + 72) + 8 * v249) + 64) + 8 * v246;
        v251 = *(v250 + 224);
        *(v250 + 224) = 0;
        if (v251)
        {
          if (*v251 >= 1)
          {
            v252 = 32;
            v253 = 0;
            do
            {
              v254 = v253;
              v255 = v252;
              CFRelease(*(*(v251 + 2) + v252));
              v253 = v254 + 1;
              v252 = v255 + 40;
            }

            while (*v251 > v254 + 1);
          }

          free(*(v251 + 2));
          free(v251);
        }

        ++v249;
      }

      while (v249 < *(a1 + 96));
      v256 = *(a1 + 96);
    }

    else
    {
      v256 = 0;
    }

    v245 = v256;
    v246 = 1;
    v247 = 0;
  }

  while ((v248 & 1) != 0);
  v257 = threadData[9 * HIDWORD(v326) + 1] + 320 * v326;
  *(v257 + 312) = v317;
  v258 = *(v257 + 232);
  if (v258)
  {
    v258(*(v257 + 288));
  }

  dropThreadId(HIDWORD(v326), 0, v318 + 1);
LABEL_23:
  v32 = threadData[9 * HIDWORD(v330) + 1] + 320 * v330;
  *(v32 + 312) = v319;
  v33 = *(v32 + 232);
  if (v33)
  {
    v33(*(v32 + 288));
  }

  dropThreadId(HIDWORD(v330), 0, v320 + 1);
LABEL_2:
  *(a1 + 32) = 1;
}

uint64_t checkNearness_14185(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int *a10, unsigned int a11)
{
  v12 = *(a5 + 8 * a1 * a6 + 8 * a7);
  if (v12)
  {
    memset(v33, 0, sizeof(v33));
    v19 = a2;
    if (*(a3 + 132) >= a1)
    {
      v19 = *(*(a3 + 136) + 4 * (a1 - 1));
    }

    v20 = ~v19 + a4;
    if (v19 + 1 >= a4)
    {
      v20 = 1;
    }

    if (a11 <= 1)
    {
      v21 = v20;
    }

    else
    {
      v21 = a4;
    }

    initializeEnumberatorForRangeLocked(v33, v12, v21, v19 + a4);
    if (a10)
    {
      v22 = *a10;
    }

    else
    {
      v22 = -1;
    }

    v23 = 0;
    v24 = a1 + 1;
LABEL_14:
    while (2)
    {
      v31 = v23;
      do
      {
        while (1)
        {
          v25 = _CIIndexSetEnumeratorNext(v33);
          if (v25 - 1 > 0xFFFFFFFD)
          {
            v23 = v31;
            return v23 & 1;
          }

          if (v25 != a4)
          {
            v26 = v25 >= a8 ? a8 : v25;
            v27 = v25 <= a9 ? a9 : v25;
            v28 = v27 - v26;
            if (v27 - v26 <= v22)
            {
              break;
            }
          }
        }

        if (v24 >= *(a3 + 96))
        {
          v23 = 1;
          if (!a10)
          {
            goto LABEL_14;
          }

          LODWORD(v29) = *a10;
          if (*a10 >= v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = v29;
          }

          *a10 = v29;
          goto LABEL_33;
        }
      }

      while (!checkNearness_14185(v24, a2, a3, v25, a5, a6, a7, v26, v27, a10, a11));
      if (!a10)
      {
        v23 = 1;
        return v23 & 1;
      }

      v29 = *a10;
      v23 = 1;
LABEL_33:
      if (v29 != a6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t CICompactPayloads(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, int a7, char a8, _DWORD *a9)
{
  v393 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  bzero(v379, 0x400uLL);
  v349 = *(a5 + 4456);
  Current = CFAbsoluteTimeGetCurrent();
  v13 = *__error();
  v14 = _SILogForLogForCategory(10);
  v15 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = "position";
    if (a2 == 1)
    {
      v16 = "posting";
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&dword_1C278D000, v14, v15, "Compacting %s payloads ", buf, 0xCu);
  }

  *__error() = v13;
  v377 = 0u;
  v378 = 0u;
  v375 = 0u;
  v376 = 0u;
  v373 = 0u;
  v374 = 0u;
  *v371 = 0u;
  v372 = 0u;
  *v369 = 0u;
  v370 = 0u;
  *ptr = 0u;
  v368 = 0u;
  *buf = 0u;
  v366 = 0u;
  v17 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v17 = __THREAD_SLOT_KEY[0];
  }

  v331 = a6;
  v18 = pthread_getspecific(v17);
  if (!v18 || v18 >= 0x801)
  {
    makeThreadId();
    v18 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  }

  v339 = LODWORD(threadData[9 * v18 - 5]);
  v340 = v18 - 1;
  CICleanUpPush(v18 - 1, CICompactPayloadsCtxFree, buf);
  allocator = *MEMORY[0x1E695E480];
  v343 = a5;
  v342 = a2;
  while (2)
  {
    v377 = 0u;
    v378 = 0u;
    v375 = 0u;
    v376 = 0u;
    v373 = 0u;
    v374 = 0u;
    *v371 = 0u;
    v372 = 0u;
    *v369 = 0u;
    v370 = 0u;
    *ptr = 0u;
    v368 = 0u;
    *buf = 0u;
    v366 = 0u;
    HIDWORD(ptr[0]) = 64;
    ptr[1] = malloc_type_malloc(0x800uLL, 0x1000040F6D918ACuLL);
    v368 = xmmword_1C2BFA6B0;
    v369[0] = malloc_type_malloc(0x10000uLL, 0x2F8734D0uLL);
    v19 = *(a5 + 24);
    *&v366 = *(a5 + 4488);
    *(&v366 + 1) = v19;
    v390 = 0;
    *__src = *a5;
    *&__src[16] = v366;
    *&__src[24] = 0;
    v385 = v19;
    v386 = 4096;
    v20 = malloc_type_malloc(0x1000uLL, 0xA69262FDuLL);
    v387 = v20;
    v388 = v20;
    v389 = v20;
    LODWORD(v390) = 0;
    memset(v352, 0, 20);
    v21 = v20;
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            while (1)
            {
              do
              {
                while (1)
                {
                  do
                  {
                    while (v21 < v20)
                    {
                      v388 = v21 + 1;
                      v352[0] = *v21++;
                      if (v352[0] == 255)
                      {
                        goto LABEL_14;
                      }
                    }

                    if (!_PayloadScannerReadNextChar(__src, v352))
                    {
                      goto LABEL_93;
                    }

                    v21 = v388;
                    v20 = v389;
                  }

                  while (v352[0] != 255);
LABEL_14:
                  if (v21 >= v20)
                  {
                    break;
                  }

                  v388 = v21 + 1;
                  v352[1] = *v21++;
                  if (v352[1] == 255)
                  {
                    goto LABEL_16;
                  }
                }

                if (!_PayloadScannerReadNextChar(__src, &v352[1]))
                {
                  goto LABEL_93;
                }

                v21 = v388;
                v20 = v389;
              }

              while (v352[1] != 255);
LABEL_16:
              if (v21 >= v20)
              {
                break;
              }

              v388 = v21 + 1;
              v352[2] = *v21++;
              if (v352[2] == 255)
              {
                goto LABEL_18;
              }
            }

            if (!_PayloadScannerReadNextChar(__src, &v352[2]))
            {
              goto LABEL_93;
            }

            v21 = v388;
            v20 = v389;
          }

          while (v352[2] != 255);
LABEL_18:
          if (v21 >= v20)
          {
            break;
          }

          v388 = v21 + 1;
          v352[3] = *v21++;
          if (v352[3] == 255)
          {
            goto LABEL_20;
          }
        }

        if (!_PayloadScannerReadNextChar(__src, &v352[3]))
        {
          goto LABEL_93;
        }

        v21 = v388;
        v20 = v389;
      }

      while (v352[3] != 255);
LABEL_20:
      if (((v20 - v21) & 0xFFFFFFF0) == 0)
      {
        break;
      }

      v22 = *v21;
      v21 += 16;
      *&v352[4] = v22;
      v388 = v21;
LABEL_22:
      if (*&v352[16] == -1)
      {
        v23 = *&__src[24];
        v24 = v387;
        v25 = *&v352[4];
        v26 = *&v352[12];
        v27 = ptr[0];
        if (LODWORD(ptr[0]) == HIDWORD(ptr[0]))
        {
          HIDWORD(ptr[0]) = 2 * LODWORD(ptr[0]);
          v28 = malloc_type_realloc(ptr[1], 32 * (2 * LODWORD(ptr[0])), 0x1000040F6D918ACuLL);
          ptr[1] = v28;
          v27 = ptr[0];
        }

        else
        {
          v28 = ptr[1];
        }

        v29 = &v21[v23] - v24;
        LODWORD(ptr[0]) = v27 + 1;
        v30 = &v28[32 * v27];
        *v30 = v29;
        *(v30 + 1) = v25;
        *(v30 + 3) = 0;
        *(v30 + 4) = v26;
        *(v30 + 5) = 0;
        v31 = v29 + v25;
        v32 = *&__src[24];
        v21 = v387;
        if (v31 >= *&__src[24] && (v20 = v389, &v389[*&__src[24] - v387] >= v31))
        {
          v33 = v387;
          v21 = v387 + v31 - *&__src[24];
          v388 = v21;
        }

        else
        {
          v389 = v387;
          v33 = v387;
          v32 = v31;
          v20 = v387;
          v388 = v387;
          *&__src[24] = v31;
        }

        if (v21 - v33 + v32 != v31)
        {
LABEL_849:
          v307 = __si_assert_copy_extra_2708(0);
          v308 = v307;
          v309 = "";
          if (v307)
          {
            v309 = v307;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 100, "PayloadScannerPosition(scanner) == position", v309);
          goto LABEL_852;
        }
      }

      else
      {
        v20 = v389;
      }
    }

    if (v21 < v20)
    {
      v34 = v21 + 1;
      v388 = v21 + 1;
      v352[4] = *v21;
      if (v21 + 1 < v20)
      {
        goto LABEL_46;
      }

LABEL_63:
      if (!_PayloadScannerReadNextChar(__src, &v352[5]))
      {
        goto LABEL_93;
      }

      v35 = v388;
      v20 = v389;
      if (v388 >= v389)
      {
        goto LABEL_65;
      }

LABEL_47:
      v36 = v35 + 1;
      v388 = v35 + 1;
      v352[6] = *v35;
      if (v35 + 1 < v20)
      {
        goto LABEL_48;
      }

LABEL_67:
      if (!_PayloadScannerReadNextChar(__src, &v352[7]))
      {
        goto LABEL_93;
      }

      v37 = v388;
      v20 = v389;
      if (v388 >= v389)
      {
        goto LABEL_69;
      }

LABEL_49:
      v38 = v37 + 1;
      v388 = v37 + 1;
      v352[8] = *v37;
      if (v37 + 1 < v20)
      {
        goto LABEL_50;
      }

LABEL_71:
      if (!_PayloadScannerReadNextChar(__src, &v352[9]))
      {
        goto LABEL_93;
      }

      v39 = v388;
      v20 = v389;
      if (v388 >= v389)
      {
        goto LABEL_73;
      }

LABEL_51:
      v40 = v39 + 1;
      v388 = v39 + 1;
      v352[10] = *v39;
      if (v39 + 1 < v20)
      {
        goto LABEL_52;
      }

LABEL_75:
      if (!_PayloadScannerReadNextChar(__src, &v352[11]))
      {
        goto LABEL_93;
      }

      v41 = v388;
      v20 = v389;
      if (v388 >= v389)
      {
        goto LABEL_77;
      }

LABEL_53:
      v42 = v41 + 1;
      v388 = v41 + 1;
      v352[12] = *v41;
      if (v41 + 1 < v20)
      {
        goto LABEL_54;
      }

LABEL_79:
      if (!_PayloadScannerReadNextChar(__src, &v352[13]))
      {
        goto LABEL_93;
      }

      v43 = v388;
      v20 = v389;
      if (v388 >= v389)
      {
        goto LABEL_81;
      }

LABEL_55:
      v44 = v43 + 1;
      v388 = v43 + 1;
      v352[14] = *v43;
      if (v43 + 1 < v20)
      {
        goto LABEL_56;
      }

LABEL_83:
      if (!_PayloadScannerReadNextChar(__src, &v352[15]))
      {
        goto LABEL_93;
      }

      v45 = v388;
      v20 = v389;
      if (v388 >= v389)
      {
        goto LABEL_85;
      }

LABEL_57:
      v46 = v45 + 1;
      v388 = v45 + 1;
      v352[16] = *v45;
      if (v45 + 1 < v20)
      {
        goto LABEL_58;
      }

LABEL_87:
      if (!_PayloadScannerReadNextChar(__src, &v352[17]))
      {
        goto LABEL_93;
      }

      v47 = v388;
      v20 = v389;
      if (v388 >= v389)
      {
        goto LABEL_89;
      }

LABEL_59:
      v48 = v47 + 1;
      v388 = v47 + 1;
      v352[18] = *v47;
      if (v47 + 1 >= v20)
      {
        goto LABEL_91;
      }

      goto LABEL_60;
    }

    if (!_PayloadScannerReadNextChar(__src, &v352[4]))
    {
      goto LABEL_93;
    }

    v34 = v388;
    v20 = v389;
    if (v388 >= v389)
    {
      goto LABEL_63;
    }

LABEL_46:
    v35 = v34 + 1;
    v388 = v34 + 1;
    v352[5] = *v34;
    if (v34 + 1 < v20)
    {
      goto LABEL_47;
    }

LABEL_65:
    if (!_PayloadScannerReadNextChar(__src, &v352[6]))
    {
      goto LABEL_93;
    }

    v36 = v388;
    v20 = v389;
    if (v388 >= v389)
    {
      goto LABEL_67;
    }

LABEL_48:
    v37 = v36 + 1;
    v388 = v36 + 1;
    v352[7] = *v36;
    if (v36 + 1 < v20)
    {
      goto LABEL_49;
    }

LABEL_69:
    if (!_PayloadScannerReadNextChar(__src, &v352[8]))
    {
      goto LABEL_93;
    }

    v38 = v388;
    v20 = v389;
    if (v388 >= v389)
    {
      goto LABEL_71;
    }

LABEL_50:
    v39 = v38 + 1;
    v388 = v38 + 1;
    v352[9] = *v38;
    if (v38 + 1 < v20)
    {
      goto LABEL_51;
    }

LABEL_73:
    if (!_PayloadScannerReadNextChar(__src, &v352[10]))
    {
      goto LABEL_93;
    }

    v40 = v388;
    v20 = v389;
    if (v388 >= v389)
    {
      goto LABEL_75;
    }

LABEL_52:
    v41 = v40 + 1;
    v388 = v40 + 1;
    v352[11] = *v40;
    if (v40 + 1 < v20)
    {
      goto LABEL_53;
    }

LABEL_77:
    if (!_PayloadScannerReadNextChar(__src, &v352[12]))
    {
      goto LABEL_93;
    }

    v42 = v388;
    v20 = v389;
    if (v388 >= v389)
    {
      goto LABEL_79;
    }

LABEL_54:
    v43 = v42 + 1;
    v388 = v42 + 1;
    v352[13] = *v42;
    if (v42 + 1 < v20)
    {
      goto LABEL_55;
    }

LABEL_81:
    if (!_PayloadScannerReadNextChar(__src, &v352[14]))
    {
      goto LABEL_93;
    }

    v44 = v388;
    v20 = v389;
    if (v388 >= v389)
    {
      goto LABEL_83;
    }

LABEL_56:
    v45 = v44 + 1;
    v388 = v44 + 1;
    v352[15] = *v44;
    if (v44 + 1 < v20)
    {
      goto LABEL_57;
    }

LABEL_85:
    if (!_PayloadScannerReadNextChar(__src, &v352[16]))
    {
      goto LABEL_93;
    }

    v46 = v388;
    v20 = v389;
    if (v388 >= v389)
    {
      goto LABEL_87;
    }

LABEL_58:
    v47 = v46 + 1;
    v388 = v46 + 1;
    v352[17] = *v46;
    if (v46 + 1 < v20)
    {
      goto LABEL_59;
    }

LABEL_89:
    if (!_PayloadScannerReadNextChar(__src, &v352[18]))
    {
      goto LABEL_93;
    }

    v48 = v388;
    if (v388 < v389)
    {
LABEL_60:
      v21 = v48 + 1;
      v388 = v48 + 1;
      v352[19] = *v48;
      goto LABEL_22;
    }

LABEL_91:
    if (_PayloadScannerReadNextChar(__src, &v352[19]))
    {
      v21 = v388;
      goto LABEL_22;
    }

LABEL_93:
    if (v390)
    {
      if (!HIDWORD(v369[1]))
      {
        HIDWORD(v369[1]) = v390;
      }
    }

    else
    {
      qsort_r(ptr[1], LODWORD(ptr[0]), 0x20uLL, (a5 + 32), postingsOffsetCompare);
    }

    if (v387)
    {
      free(v387);
    }

    v49 = HIDWORD(v369[1]);
    if (HIDWORD(v369[1]))
    {
      goto LABEL_100;
    }

    v50 = 0;
    if (*a9)
    {
      v49 = 0;
      goto LABEL_101;
    }

    v49 = 0;
    if (!LODWORD(ptr[0]))
    {
      goto LABEL_101;
    }

    v60 = a7;
    if (a7 == -1)
    {
      v61 = *(a5 + 4488);
      if (v61)
      {
        v60 = *(v61 + 44);
      }

      else
      {
        v60 = -1;
      }
    }

    v62 = getpid();
    snprintf(__str, 0x400uLL, "%s.mds.%d.%d.compactPayloads1.idx", v331, v62, atomic_fetch_add_explicit(&CICompactPayloads_sUnique, 1u, memory_order_relaxed) + 1);
    *buf = fd_create_protected(v60, __str, 536873474, 0);
    if (!*buf || (v63 = getpid(), snprintf(v379, 0x400uLL, "%s.mds.%d.%d.compactPayloads2.idx", v331, v63, atomic_fetch_add_explicit(&CICompactPayloads_sUnique, 1u, memory_order_relaxed) + 1), (*&buf[8] = fd_create_protected(v60, v379, 536873474, 0)) == 0))
    {
LABEL_764:
      v50 = 0;
      v49 = 0;
      goto LABEL_101;
    }

    v64 = *buf;
    LOBYTE(v369[1]) = a8;
    v65 = CFAbsoluteTimeGetCurrent();
    *&v370 = 0;
    HIDWORD(v373) = 0;
    v371[0] = 0x4000000000;
    v371[1] = malloc_type_malloc(0x800uLL, 0x1000040F6D918ACuLL);
    v372 = xmmword_1C2BFA6B0;
    *&v373 = malloc_type_malloc(0x10000uLL, 0x2F8734D0uLL);
    v370 = v64;
    *__src = -1;
    *&__src[4] = 0;
    v66 = __src;
    v67 = 20;
    *&__src[12] = 0xFFFFFFFF00000000;
    do
    {
      while (1)
      {
        v69 = *(&v372 + 1) - v372 >= v67 ? v67 : *(&v372 + 1) - v372;
        if (*(&v372 + 1) == v372)
        {
          break;
        }

        memcpy((v373 + v372), v66, v69);
        *&v372 = v372 + v69;
        v66 += v69;
        if (v372 == *(&v372 + 1))
        {
          break;
        }

        v67 -= v69;
        if (!v67)
        {
          goto LABEL_137;
        }
      }

      PayloadPulsesWrite(&v370);
      v67 -= v69;
      if (HIDWORD(v373))
      {
        v68 = 1;
      }

      else
      {
        v68 = v67 == 0;
      }
    }

    while (!v68);
LABEL_137:
    PayloadPulsesWrite(&v370);
    v49 = PayloadPulsesReorder(v70);
    free(ptr[1]);
    ptr[1] = 0;
    free(v369[0]);
    v366 = v370;
    *ptr = *v371;
    v368 = v372;
    *v369 = v373;
    v370 = 0u;
    *v371 = 0u;
    if (v64 == *buf)
    {
      v71 = *&buf[8];
    }

    else
    {
      v71 = *buf;
    }

    v372 = 0uLL;
    v373 = 0uLL;
    v72 = *__error();
    v73 = _SILogForLogForCategory(10);
    v74 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v73, v74))
    {
      v75 = CFAbsoluteTimeGetCurrent() - v65;
      *__src = 134217984;
      *&__src[4] = v75;
      _os_log_impl(&dword_1C278D000, v73, v74, "Reorder time (%f)", __src, 0xCu);
    }

    *__error() = v72;
    if (v49)
    {
LABEL_100:
      v50 = 0;
      goto LABEL_101;
    }

    v76 = ptr[0];
    if (!LODWORD(ptr[0]))
    {
      goto LABEL_764;
    }

    if (*a9 || LODWORD(ptr[0]) == 1)
    {
      goto LABEL_763;
    }

    v326 = 1;
    while (2)
    {
      LOBYTE(v369[1]) = 0;
      *&v370 = 0;
      HIDWORD(v373) = 0;
      v371[0] = 0x4000000000;
      v371[1] = malloc_type_malloc(0x800uLL, 0x1000040F6D918ACuLL);
      v372 = xmmword_1C2BFA6B0;
      *&v373 = malloc_type_malloc(0x10000uLL, 0x2F8734D0uLL);
      v324 = v71;
      v370 = v71;
      v77 = CFAbsoluteTimeGetCurrent();
      *__src = -1;
      *&__src[4] = 0;
      v78 = __src;
      v79 = 20;
      *&__src[12] = 0xFFFFFFFF00000000;
      do
      {
        while (1)
        {
          v81 = *(&v372 + 1) - v372 >= v79 ? v79 : *(&v372 + 1) - v372;
          if (*(&v372 + 1) == v372)
          {
            break;
          }

          memcpy((v373 + v372), v78, v81);
          *&v372 = v372 + v81;
          v78 += v81;
          if (v372 == *(&v372 + 1))
          {
            break;
          }

          v79 -= v81;
          if (!v79)
          {
            goto LABEL_158;
          }
        }

        PayloadPulsesWrite(&v370);
        v79 -= v81;
        if (HIDWORD(v373))
        {
          v80 = 1;
        }

        else
        {
          v80 = v79 == 0;
        }
      }

      while (!v80);
LABEL_158:
      PayloadPulsesWrite(&v370);
      v390 = 0;
      v359 = 0;
      *&__src[8] = 0;
      *__src = 0;
      *&__src[16] = v366;
      *&__src[24] = 0;
      v385 = *(&v366 + 1);
      v386 = 0x1000000;
      v387 = malloc_type_malloc(0x1000000uLL, 0xDD6FD5F7uLL);
      v388 = v387;
      v389 = v387;
      LODWORD(v390) = 0;
      *v352 = 0;
      *&v352[8] = 0;
      *&v352[16] = v366;
      v353 = 0;
      v354 = *(&v366 + 1);
      v355 = 0x1000000;
      v356 = malloc_type_malloc(0x1000000uLL, 0xDD6FD5F7uLL);
      v357 = v356;
      v358 = v356;
      LODWORD(v359) = 0;
      v325 = malloc_type_malloc(0x8000uLL, 0x82ECAA0EuLL);
      v346 = 0;
      while (2)
      {
        if (*a9)
        {
          v86 = 1;
        }

        else
        {
          v86 = v346 >= LODWORD(ptr[0]);
        }

        if (v86)
        {
          goto LABEL_736;
        }

        v87 = *(&v370 + 1);
        v88 = v371[0];
        if (LODWORD(v371[0]) == HIDWORD(v371[0]))
        {
          HIDWORD(v371[0]) = 2 * LODWORD(v371[0]);
          v89 = malloc_type_realloc(v371[1], 32 * (2 * LODWORD(v371[0])), 0x1000040F6D918ACuLL);
          v371[1] = v89;
          v88 = v371[0];
        }

        else
        {
          v89 = v371[1];
        }

        LODWORD(v371[0]) = v88 + 1;
        v90 = &v89[32 * v88];
        *(v90 + 1) = 0;
        *(v90 + 2) = 0;
        *v90 = v87;
        *(v90 + 3) = 1;
        v91 = CFAbsoluteTimeGetCurrent();
        v92 = ptr[1] + 32 * v346;
        v93 = *v92;
        v94 = *(v92 + 4);
        v345 = *(v92 + 6);
        v336 = *(v92 + 1);
        v95 = v336 + *v92;
        v385 = v95;
        v96 = *&__src[24];
        v97 = v387;
        v341 = v93;
        if (v93 >= *&__src[24] && (v98 = v389, &v389[*&__src[24]] - v387 >= v93))
        {
          v99 = v387;
          v97 = v387 + v93 - *&__src[24];
          v388 = v97;
          v100 = v93;
        }

        else
        {
          v389 = v387;
          v99 = v387;
          v98 = v387;
          v100 = v93;
          v96 = v93;
          v388 = v387;
          *&__src[24] = v93;
        }

        if (&v97[v96] - v99 != v100)
        {
          goto LABEL_849;
        }

        if (v100 >= v95)
        {
          v104 = 0;
        }

        else
        {
          v381[4] = 0;
          *v381 = 0;
          if (v97 < v98)
          {
            v388 = (v97 + 1);
            v381[0] = *v97;
            v101 = v381[0];
            if ((v381[0] & 0x80) == 0)
            {
              goto LABEL_187;
            }

LABEL_191:
            if (v101 >= 0xC0)
            {
              if (v101 >= 0xE0)
              {
                if (v101 < 0xF0)
                {
                  v102 = 3;
                }

                else
                {
                  v102 = 4;
                }
              }

              else
              {
                v102 = 2;
              }
            }

            else
            {
              v102 = 1;
            }

            v103 = v388;
            if ((v389 - v388) >= v102)
            {
              goto LABEL_199;
            }

            if (_PayloadScannerReadBytes(__src, &v381[1], v102))
            {
              v101 = v381[0];
              if ((v381[0] & 0x80) != 0)
              {
                goto LABEL_200;
              }

              goto LABEL_207;
            }

LABEL_252:
            v101 = 0;
            goto LABEL_207;
          }

          if (!_PayloadScannerReadNextChar(__src, v381))
          {
            goto LABEL_252;
          }

          v101 = v381[0];
          if ((v381[0] & 0x80) != 0)
          {
            goto LABEL_191;
          }

LABEL_187:
          v102 = 0;
          v103 = v388;
LABEL_199:
          __memcpy_chk();
          v388 = &v103[v102];
          if ((v101 & 0x80) != 0)
          {
LABEL_200:
            if (v101 > 0xBF)
            {
              if (v101 > 0xDF)
              {
                if (v101 > 0xEF)
                {
                  v101 = *&v381[1];
                }

                else
                {
                  v101 = ((v101 & 0xF) << 24) | (v381[1] << 16) | (v381[2] << 8) | v381[3];
                }
              }

              else
              {
                v101 = ((v101 & 0x1F) << 16) | (v381[1] << 8) | v381[2];
              }
            }

            else
            {
              v101 = v381[1] | ((v101 & 0x3F) << 8);
            }
          }

LABEL_207:
          v104 = v101 + v94;
        }

        if (v104 >= v349)
        {
LABEL_861:
          v312 = __si_assert_copy_extra_2708(0);
          v308 = v312;
          v313 = "";
          if (v312)
          {
            v313 = v312;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1300, "termId < maxTermId", v313);
          goto LABEL_852;
        }

        if (v346 + 1 >= LODWORD(ptr[0]))
        {
          if (v104)
          {
            v114 = v371[1] + 32 * (LODWORD(v371[0]) - 1);
            if (*(v114 + 4))
            {
              v115 = v104 - *(v114 + 5);
            }

            else
            {
              *(v114 + 4) = v104;
              v115 = v104;
            }

            memset(v381, 0, sizeof(v381));
            if (v115 > 0x7F)
            {
              if (v115 >> 14)
              {
                if (v115 >> 21)
                {
                  if (v115 >> 28)
                  {
                    v381[0] = -16;
                    *&v381[1] = v115;
                    v120 = 5;
                  }

                  else
                  {
                    v381[0] = HIBYTE(v115) | 0xE0;
                    v381[1] = BYTE2(v115);
                    v381[2] = BYTE1(v115);
                    v381[3] = v115;
                    v120 = 4;
                  }
                }

                else
                {
                  v381[0] = BYTE2(v115) | 0xC0;
                  v381[1] = BYTE1(v115);
                  v381[2] = v115;
                  v120 = 3;
                }
              }

              else
              {
                v381[0] = BYTE1(v115) | 0x80;
                v381[1] = v115;
                v120 = 2;
              }
            }

            else
            {
              v381[0] = v115;
              v120 = 1;
            }

            v121 = v381;
            do
            {
              while (1)
              {
                v123 = *(&v372 + 1) - v372 >= v120 ? v120 : *(&v372 + 1) - v372;
                if (*(&v372 + 1) == v372)
                {
                  break;
                }

                memcpy((v373 + v372), v121, v123);
                *&v372 = v372 + v123;
                v121 += v123;
                if (v372 == *(&v372 + 1))
                {
                  break;
                }

                v120 -= v123;
                if (!v120)
                {
                  goto LABEL_245;
                }
              }

              PayloadPulsesWrite(&v370);
              v120 -= v123;
              if (HIDWORD(v373))
              {
                v122 = 1;
              }

              else
              {
                v122 = v120 == 0;
              }
            }

            while (!v122);
LABEL_245:
            *(v114 + 5) = v104;
            PayloadPulsesWriteBytesFromScanner(&v370, __src, v388 - v387 + *&__src[24], v385 - (v388 - v387 + *&__src[24]));
            a2 = v342;
          }

          v124 = *__error();
          v125 = _SILogForLogForCategory(10);
          v126 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v125, v126))
          {
            *v381 = 134218240;
            *&v381[4] = v341;
            *&v381[12] = 2048;
            *&v381[14] = v336;
            _os_log_impl(&dword_1C278D000, v125, v126, "Merge (offset: %llx, length: %llx)", v381, 0x16u);
          }

          ++v346;
          goto LABEL_730;
        }

        v105 = ptr[1] + 32 * v346 + 32;
        if (v345 != *(v105 + 6))
        {
          v316 = __si_assert_copy_extra_2708(0);
          v308 = v316;
          v317 = "";
          if (v316)
          {
            v317 = v316;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1332, "p1.hasLength==p2.hasLength", v317);
LABEL_852:
          free(v308);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v107 = *v105;
        v106 = *(v105 + 1);
        v108 = *(v105 + 4);
        v109 = v106 + *v105;
        v354 = v109;
        v110 = v353;
        v111 = v356;
        v330 = v106;
        if (v107 >= v353 && (v112 = v358, &v358[v353] - v356 >= v107))
        {
          v113 = v356;
          v111 = v356 + v107 - v353;
          v357 = v111;
        }

        else
        {
          v357 = v356;
          v358 = v356;
          v113 = v356;
          v112 = v356;
          v110 = v107;
          v353 = v107;
        }

        if (&v111[v110] - v113 != v107)
        {
          goto LABEL_856;
        }

        v347 = v107;
        if (v107 >= v109)
        {
          v119 = 0;
        }

        else
        {
          v381[4] = 0;
          *v381 = 0;
          if (v111 < v112)
          {
            v357 = (v111 + 1);
            v381[0] = *v111;
            v116 = v381[0];
            if ((v381[0] & 0x80) == 0)
            {
              goto LABEL_222;
            }

LABEL_255:
            if (v116 >= 0xC0)
            {
              if (v116 >= 0xE0)
              {
                if (v116 < 0xF0)
                {
                  v117 = 3;
                }

                else
                {
                  v117 = 4;
                }
              }

              else
              {
                v117 = 2;
              }
            }

            else
            {
              v117 = 1;
            }

            v118 = v357;
            if ((v358 - v357) >= v117)
            {
              goto LABEL_263;
            }

            if (_PayloadScannerReadBytes(v352, &v381[1], v117))
            {
              v116 = v381[0];
              if ((v381[0] & 0x80) != 0)
              {
                goto LABEL_264;
              }

              goto LABEL_271;
            }

LABEL_735:
            v116 = 0;
            goto LABEL_271;
          }

          if (!_PayloadScannerReadNextChar(v352, v381))
          {
            goto LABEL_735;
          }

          v116 = v381[0];
          if ((v381[0] & 0x80) != 0)
          {
            goto LABEL_255;
          }

LABEL_222:
          v117 = 0;
          v118 = v357;
LABEL_263:
          __memcpy_chk();
          v357 = &v118[v117];
          if ((v116 & 0x80) != 0)
          {
LABEL_264:
            if (v116 > 0xBF)
            {
              if (v116 > 0xDF)
              {
                if (v116 > 0xEF)
                {
                  v116 = *&v381[1];
                }

                else
                {
                  v116 = ((v116 & 0xF) << 24) | (v381[1] << 16) | (v381[2] << 8) | v381[3];
                }
              }

              else
              {
                v116 = ((v116 & 0x1F) << 16) | (v381[1] << 8) | v381[2];
              }
            }

            else
            {
              v116 = v381[1] | ((v116 & 0x3F) << 8);
            }
          }

LABEL_271:
          v119 = v116 + v108;
          v107 = v347;
        }

        if (v119 >= v349)
        {
          goto LABEL_856;
        }

        if (!v104 || !v119)
        {
LABEL_678:
          if (v104)
          {
            v241 = v371[1] + 32 * (LODWORD(v371[0]) - 1);
            if (*(v241 + 4))
            {
              v242 = v104 - *(v241 + 5);
            }

            else
            {
              *(v241 + 4) = v104;
              v242 = v104;
            }

            memset(v381, 0, sizeof(v381));
            v243 = a2;
            if (v242 > 0x7F)
            {
              if (v242 >> 14)
              {
                if (v242 >> 21)
                {
                  if (v242 >> 28)
                  {
                    v381[0] = -16;
                    *&v381[1] = v242;
                    v244 = 5;
                  }

                  else
                  {
                    v381[0] = HIBYTE(v242) | 0xE0;
                    v381[1] = BYTE2(v242);
                    v381[2] = BYTE1(v242);
                    v381[3] = v242;
                    v244 = 4;
                  }
                }

                else
                {
                  v381[0] = BYTE2(v242) | 0xC0;
                  v381[1] = BYTE1(v242);
                  v381[2] = v242;
                  v244 = 3;
                }
              }

              else
              {
                v381[0] = BYTE1(v242) | 0x80;
                v381[1] = v242;
                v244 = 2;
              }
            }

            else
            {
              v381[0] = v242;
              v244 = 1;
            }

            v245 = v119;
            v246 = v381;
            do
            {
              while (1)
              {
                v248 = *(&v372 + 1) - v372 >= v244 ? v244 : *(&v372 + 1) - v372;
                if (*(&v372 + 1) == v372)
                {
                  break;
                }

                memcpy((v373 + v372), v246, v248);
                *&v372 = v372 + v248;
                v246 += v248;
                if (v372 == *(&v372 + 1))
                {
                  break;
                }

                v244 -= v248;
                if (!v244)
                {
                  goto LABEL_702;
                }
              }

              PayloadPulsesWrite(&v370);
              v244 -= v248;
              if (HIDWORD(v373))
              {
                v247 = 1;
              }

              else
              {
                v247 = v244 == 0;
              }
            }

            while (!v247);
LABEL_702:
            *(v241 + 5) = v104;
            PayloadPulsesWriteBytesFromScanner(&v370, __src, v388 - v387 + *&__src[24], v385 - (v388 - v387 + *&__src[24]));
            v107 = v347;
            v119 = v245;
            a2 = v243;
            a5 = v343;
          }

          if (v119)
          {
            v249 = v371[1] + 32 * (LODWORD(v371[0]) - 1);
            if (*(v249 + 4))
            {
              v250 = v119 - *(v249 + 5);
            }

            else
            {
              *(v249 + 4) = v119;
              v250 = v119;
            }

            memset(v381, 0, sizeof(v381));
            v251 = a2;
            v252 = v119;
            if (v250 > 0x7F)
            {
              if (v250 >> 14)
              {
                if (v250 >> 21)
                {
                  if (v250 >> 28)
                  {
                    v381[0] = -16;
                    *&v381[1] = v250;
                    v253 = 5;
                  }

                  else
                  {
                    v381[0] = HIBYTE(v250) | 0xE0;
                    v381[1] = BYTE2(v250);
                    v381[2] = BYTE1(v250);
                    v381[3] = v250;
                    v253 = 4;
                  }
                }

                else
                {
                  v381[0] = BYTE2(v250) | 0xC0;
                  v381[1] = BYTE1(v250);
                  v381[2] = v250;
                  v253 = 3;
                }
              }

              else
              {
                v381[0] = BYTE1(v250) | 0x80;
                v381[1] = v250;
                v253 = 2;
              }
            }

            else
            {
              v381[0] = v250;
              v253 = 1;
            }

            v254 = v381;
            do
            {
              while (1)
              {
                v256 = *(&v372 + 1) - v372 >= v253 ? v253 : *(&v372 + 1) - v372;
                if (*(&v372 + 1) == v372)
                {
                  break;
                }

                memcpy((v373 + v372), v254, v256);
                *&v372 = v372 + v256;
                v254 += v256;
                if (v372 == *(&v372 + 1))
                {
                  break;
                }

                v253 -= v256;
                if (!v253)
                {
                  goto LABEL_727;
                }
              }

              PayloadPulsesWrite(&v370);
              v253 -= v256;
              if (HIDWORD(v373))
              {
                v255 = 1;
              }

              else
              {
                v255 = v253 == 0;
              }
            }

            while (!v255);
LABEL_727:
            *(v249 + 5) = v252;
            PayloadPulsesWriteBytesFromScanner(&v370, v352, v357 - v356 + v353, v354 - (v357 - v356 + v353));
            a2 = v251;
            a5 = v343;
          }

          v346 += 2;
          v124 = *__error();
          v257 = _SILogForLogForCategory(10);
          v258 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v257, v258))
          {
            *v381 = 134218752;
            *&v381[4] = v341;
            *&v381[12] = 2048;
            *&v381[14] = v336;
            *&v381[22] = 2048;
            *&v381[24] = v107;
            v382 = 2048;
            v383 = v330;
            _os_log_impl(&dword_1C278D000, v257, v258, "Merge (offset: %llx, length: %llx) (offset: %llx, length: %llx)", v381, 0x2Au);
          }

LABEL_730:
          *__error() = v124;
          PayloadPulsesWrite(&v370);
          v259 = v371[1] + 32 * (LODWORD(v371[0]) - 1);
          v259[1] = *(&v370 + 1) - *v259;
          v259[2] = 0;
          v260 = *__error();
          v261 = _SILogForLogForCategory(10);
          v262 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v261, v262))
          {
            v263 = CFAbsoluteTimeGetCurrent() - v91;
            *v381 = 134217984;
            *&v381[4] = v263;
            _os_log_impl(&dword_1C278D000, v261, v262, "Merge time (%f)", v381, 0xCu);
          }

          *__error() = v260;
          v82 = v390;
          if (v359)
          {
            v83 = v390 == 0;
          }

          else
          {
            v83 = 0;
          }

          if (v83)
          {
            v82 = v359;
          }

          if (v82)
          {
            v84 = 1;
          }

          else
          {
            v84 = HIDWORD(v373) == 0;
          }

          if (v84)
          {
            v85 = v82;
          }

          else
          {
            v85 = HIDWORD(v373);
          }

          if (v85)
          {
            goto LABEL_737;
          }

          continue;
        }

        break;
      }

      while (2)
      {
        if (!*a9)
        {
          v350 = v119;
          if (v104 == v119)
          {
            v127 = v371[1] + 32 * (LODWORD(v371[0]) - 1);
            if (*(v127 + 4))
            {
              v128 = v119 - *(v127 + 5);
            }

            else
            {
              *(v127 + 4) = v119;
              v128 = v119;
            }

            memset(v381, 0, sizeof(v381));
            if (v128 > 0x7F)
            {
              if (v128 >> 14)
              {
                if (v128 >> 21)
                {
                  if (v128 >> 28)
                  {
                    v381[0] = -16;
                    *&v381[1] = v128;
                    v133 = 5;
                  }

                  else
                  {
                    v381[0] = HIBYTE(v128) | 0xE0;
                    v381[1] = BYTE2(v128);
                    v381[2] = BYTE1(v128);
                    v381[3] = v128;
                    v133 = 4;
                  }
                }

                else
                {
                  v381[0] = BYTE2(v128) | 0xC0;
                  v381[1] = BYTE1(v128);
                  v381[2] = v128;
                  v133 = 3;
                }
              }

              else
              {
                v381[0] = BYTE1(v128) | 0x80;
                v381[1] = v128;
                v133 = 2;
              }
            }

            else
            {
              v381[0] = v128;
              v133 = 1;
            }

            v136 = v381;
            do
            {
              while (1)
              {
                v138 = *(&v372 + 1) - v372 >= v133 ? v133 : *(&v372 + 1) - v372;
                if (*(&v372 + 1) == v372)
                {
                  break;
                }

                memcpy((v373 + v372), v136, v138);
                *&v372 = v372 + v138;
                v136 += v138;
                if (v372 == *(&v372 + 1))
                {
                  break;
                }

                v133 -= v138;
                if (!v133)
                {
                  goto LABEL_319;
                }
              }

              PayloadPulsesWrite(&v370);
              v133 -= v138;
              if (HIDWORD(v373))
              {
                v137 = 1;
              }

              else
              {
                v137 = v133 == 0;
              }
            }

            while (!v137);
LABEL_319:
            *(v127 + 5) = v350;
            if (a2 == 1)
            {
              memset(v381, 0, sizeof(v381));
              v364 = 0;
              memset(v363, 0, 12);
              v362 = 0;
              v139 = PayloadScannerFirstPostingIfLink(__src, v363, &v362, &v364);
              memset(v361, 0, sizeof(v361));
              v360 = 0;
              v140 = PayloadScannerFirstPostingIfLink(v352, v361, &v360, &v364);
              v141 = v140;
              v142 = *&v361[4];
              if (*(v363 + 4) && *&v361[4] && *(v363 + 4) <= *&v361[4] && !(v139 | v140))
              {
                goto LABEL_856;
              }

              memset(v392, 0, sizeof(v392));
              v143 = v362;
              if (v362)
              {
                if (*(v363 + 4))
                {
                  goto LABEL_856;
                }

LABEL_326:
                v144 = 0;
              }

              else
              {
                if (!*(v363 + 4))
                {
                  goto LABEL_326;
                }

                v144 = packPostingChunkForSingleDocIDOfType(v392, *(v363 + 4), v139);
              }

              memset(v391, 0, sizeof(v391));
              v161 = v360;
              if (v360)
              {
                if (v142)
                {
                  v314 = __si_assert_copy_extra_2708(0);
                  v308 = v314;
                  v315 = "";
                  if (v314)
                  {
                    v315 = v314;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1231, "pe2.docId == 0", v315);
                  goto LABEL_852;
                }

LABEL_349:
                v162 = 0;
              }

              else
              {
                if (!v142)
                {
                  goto LABEL_349;
                }

                v162 = packPostingChunkForSingleDocIDOfType(v391, v142, v141);
              }

              v338 = v161;
              v163 = v144 + v162 + (v161 + v143);
              v381[0] = 1;
              v164 = v381;
              do
              {
                v166 = *(&v372 + 1);
                v167 = v372;
                if (*(&v372 + 1) != v372)
                {
                  v168 = *v164++;
                  *(v373 + v372) = v168;
                  *&v372 = v372 + 1;
                  if (v372 != *(&v372 + 1))
                  {
                    break;
                  }
                }

                PayloadPulsesWrite(&v370);
              }

              while (!HIDWORD(v373) && v166 == v167);
              if (v163 >> 28)
              {
                v381[0] = v163 | 0x80;
                v381[1] = (v163 >> 7) | 0x80;
                v381[2] = (v163 >> 14) | 0x80;
                v381[3] = (v163 >> 21) | 0x80;
                v381[4] = v163 >> 28;
                v169 = 5;
                v107 = v347;
              }

              else
              {
                v107 = v347;
                if (v163 >= 0x200000)
                {
                  v381[0] = v163 | 0x80;
                  v381[1] = (v163 >> 7) | 0x80;
                  v381[2] = (v163 >> 14) | 0x80;
                  v381[3] = v163 >> 21;
                  v169 = 4;
                }

                else if (v163 >= 0x4000)
                {
                  v381[0] = v163 | 0x80;
                  v381[1] = (v163 >> 7) | 0x80;
                  v381[2] = v163 >> 14;
                  v169 = 3;
                }

                else if (v163 >= 0x80)
                {
                  v381[0] = v163 | 0x80;
                  v381[1] = v163 >> 7;
                  v169 = 2;
                }

                else
                {
                  v381[0] = v163;
                  v169 = 1;
                }
              }

              v192 = v381;
              do
              {
                while (1)
                {
                  v194 = *(&v372 + 1) - v372 >= v169 ? v169 : *(&v372 + 1) - v372;
                  if (*(&v372 + 1) == v372)
                  {
                    break;
                  }

                  memcpy((v373 + v372), v192, v194);
                  *&v372 = v372 + v194;
                  v192 += v194;
                  if (v372 == *(&v372 + 1))
                  {
                    break;
                  }

                  v169 -= v194;
                  if (!v169)
                  {
                    goto LABEL_426;
                  }
                }

                PayloadPulsesWrite(&v370);
                v169 -= v194;
                if (HIDWORD(v373))
                {
                  v193 = 1;
                }

                else
                {
                  v193 = v169 == 0;
                }
              }

              while (!v193);
LABEL_426:
              if (v143)
              {
                PayloadPulsesWriteBytesFromScanner(&v370, __src, &v388[*&__src[24]] - v387, v143);
                a5 = v343;
                a2 = v342;
              }

              else
              {
                a5 = v343;
                a2 = v342;
                if (v144)
                {
                  v197 = v392;
                  do
                  {
                    while (1)
                    {
                      v199 = *(&v372 + 1) - v372 >= v144 ? v144 : *(&v372 + 1) - v372;
                      if (*(&v372 + 1) == v372)
                      {
                        break;
                      }

                      memcpy((v373 + v372), v197, v199);
                      *&v372 = v372 + v199;
                      v197 = (v197 + v199);
                      if (v372 == *(&v372 + 1))
                      {
                        break;
                      }

                      v144 -= v199;
                      if (!v144)
                      {
                        goto LABEL_428;
                      }
                    }

                    PayloadPulsesWrite(&v370);
                    v144 -= v199;
                    if (HIDWORD(v373))
                    {
                      v198 = 1;
                    }

                    else
                    {
                      v198 = v144 == 0;
                    }
                  }

                  while (!v198);
                }
              }

LABEL_428:
              v195 = v338;
              if (v338)
              {
                v196 = &v357[v353] - v356;
                goto LABEL_608;
              }

              if (v162)
              {
                v200 = v391;
                do
                {
                  while (1)
                  {
                    v202 = *(&v372 + 1) - v372 >= v162 ? v162 : *(&v372 + 1) - v372;
                    if (*(&v372 + 1) == v372)
                    {
                      break;
                    }

                    memcpy((v373 + v372), v200, v202);
                    *&v372 = v372 + v202;
                    v200 = (v200 + v202);
                    if (v372 == *(&v372 + 1))
                    {
                      break;
                    }

                    v162 -= v202;
                    if (!v162)
                    {
                      goto LABEL_609;
                    }
                  }

                  PayloadPulsesWrite(&v370);
                  v162 -= v202;
                  if (HIDWORD(v373))
                  {
                    v201 = 1;
                  }

                  else
                  {
                    v201 = v162 == 0;
                  }
                }

                while (!v201);
              }

LABEL_609:
              v229 = v388;
              if (&v388[*&__src[24]] - v387 >= v385)
              {
                v104 = 0;
              }

              else
              {
                v381[4] = 0;
                *v381 = 0;
                if (v388 < v389)
                {
                  ++v388;
                  v381[0] = *v229;
                  v230 = v381[0];
                  if ((v381[0] & 0x80) == 0)
                  {
                    goto LABEL_612;
                  }

LABEL_616:
                  v233 = 3;
                  if (v230 >= 0xF0)
                  {
                    v233 = 4;
                  }

                  if (v230 < 0xE0)
                  {
                    v233 = 2;
                  }

                  if (v230 >= 0xC0)
                  {
                    v231 = v233;
                  }

                  else
                  {
                    v231 = 1;
                  }

                  v232 = v388;
                  if ((v389 - v388) >= v231)
                  {
                    goto LABEL_624;
                  }

                  if (_PayloadScannerReadBytes(__src, &v381[1], v231))
                  {
                    v230 = v381[0];
                    v234 = v350;
                    if ((v381[0] & 0x80) != 0)
                    {
                      goto LABEL_625;
                    }

                    goto LABEL_632;
                  }

LABEL_642:
                  v230 = 0;
                  v234 = v350;
                  goto LABEL_632;
                }

                if (!_PayloadScannerReadNextChar(__src, v381))
                {
                  goto LABEL_642;
                }

                v230 = v381[0];
                if ((v381[0] & 0x80) != 0)
                {
                  goto LABEL_616;
                }

LABEL_612:
                v231 = 0;
                v232 = v388;
LABEL_624:
                __memcpy_chk();
                v388 = &v232[v231];
                v234 = v350;
                if ((v230 & 0x80) != 0)
                {
LABEL_625:
                  if (v230 > 0xBF)
                  {
                    if (v230 > 0xDF)
                    {
                      if (v230 > 0xEF)
                      {
                        v230 = *&v381[1];
                      }

                      else
                      {
                        v230 = ((v230 & 0xF) << 24) | (v381[1] << 16) | (v381[2] << 8) | v381[3];
                      }
                    }

                    else
                    {
                      v230 = ((v230 & 0x1F) << 16) | (v381[1] << 8) | v381[2];
                    }
                  }

                  else
                  {
                    v230 = v381[1] | ((v230 & 0x3F) << 8);
                  }
                }

LABEL_632:
                v104 = v230 + v234;
              }

              if (v104 >= v349)
              {
                goto LABEL_856;
              }

              v235 = v357;
              if (&v357[v353] - v356 >= v354)
              {
                v119 = 0;
              }

              else
              {
                v381[4] = 0;
                *v381 = 0;
                if (v357 < v358)
                {
                  ++v357;
                  v381[0] = *v235;
                  v236 = v381[0];
                  if ((v381[0] & 0x80) == 0)
                  {
                    goto LABEL_637;
                  }

LABEL_645:
                  v239 = 3;
                  if (v236 >= 0xF0)
                  {
                    v239 = 4;
                  }

                  if (v236 < 0xE0)
                  {
                    v239 = 2;
                  }

                  if (v236 >= 0xC0)
                  {
                    v237 = v239;
                  }

                  else
                  {
                    v237 = 1;
                  }

                  v238 = v357;
                  if ((v358 - v357) >= v237)
                  {
                    goto LABEL_653;
                  }

                  if (_PayloadScannerReadBytes(v352, &v381[1], v237))
                  {
                    v236 = v381[0];
                    v240 = v350;
                    if ((v381[0] & 0x80) != 0)
                    {
                      goto LABEL_654;
                    }

                    goto LABEL_661;
                  }

LABEL_670:
                  v236 = 0;
                  v240 = v350;
                  goto LABEL_661;
                }

                if (!_PayloadScannerReadNextChar(v352, v381))
                {
                  goto LABEL_670;
                }

                v236 = v381[0];
                if ((v381[0] & 0x80) != 0)
                {
                  goto LABEL_645;
                }

LABEL_637:
                v237 = 0;
                v238 = v357;
LABEL_653:
                __memcpy_chk();
                v357 = &v238[v237];
                v240 = v350;
                if ((v236 & 0x80) != 0)
                {
LABEL_654:
                  if (v236 > 0xBF)
                  {
                    if (v236 > 0xDF)
                    {
                      if (v236 > 0xEF)
                      {
                        v236 = *&v381[1];
                      }

                      else
                      {
                        v236 = ((v236 & 0xF) << 24) | (v381[1] << 16) | (v381[2] << 8) | v381[3];
                      }
                    }

                    else
                    {
                      v236 = ((v236 & 0x1F) << 16) | (v381[1] << 8) | v381[2];
                    }
                  }

                  else
                  {
                    v236 = v381[1] | ((v236 & 0x3F) << 8);
                  }
                }

LABEL_661:
                v119 = v236 + v240;
              }

              if (v119 >= v349)
              {
                goto LABEL_856;
              }

LABEL_663:
              if (!v104 || !v119 || HIDWORD(v373))
              {
                break;
              }

              continue;
            }

            if (v345)
            {
              VInt64 = PayloadScannerReadVInt64(__src);
              v335 = v388;
              v337 = *&__src[24];
              v146 = v387;
              v147 = PayloadScannerReadVInt64(v352);
              v333 = v357;
              v334 = v353;
              v332 = v356;
              memset(v381, 0, sizeof(v381));
              v148 = writeVInt64(v381, 0, v147 + VInt64 - 1);
              v149 = v148;
              if (v148)
              {
                v150 = v381;
                do
                {
                  while (1)
                  {
                    v152 = *(&v372 + 1) - v372 >= v149 ? v149 : *(&v372 + 1) - v372;
                    if (*(&v372 + 1) == v372)
                    {
                      break;
                    }

                    memcpy((v373 + v372), v150, v152);
                    *&v372 = v372 + v152;
                    v150 += v152;
                    if (v372 == *(&v372 + 1))
                    {
                      break;
                    }

                    v149 -= v152;
                    if (!v149)
                    {
                      goto LABEL_340;
                    }
                  }

                  PayloadPulsesWrite(&v370);
                  v149 -= v152;
                  if (HIDWORD(v373))
                  {
                    v151 = 1;
                  }

                  else
                  {
                    v151 = v149 == 0;
                  }
                }

                while (!v151);
              }

LABEL_340:
              v153 = v335 - v146 + v337;
              PayloadPulsesWriteBytesFromScanner(&v370, __src, v153, VInt64 - 1);
              v154 = v153 + VInt64;
              v155 = *&__src[24];
              v156 = v387;
              if (v153 + VInt64 < *&__src[24])
              {
                a5 = v343;
                goto LABEL_367;
              }

              a5 = v343;
              if (&v389[*&__src[24] - v387] >= v154)
              {
                v170 = v387;
                v156 = v387 + v153 + VInt64 - *&__src[24];
                v388 = v156;
              }

              else
              {
LABEL_367:
                v389 = v387;
                v170 = v387;
                v155 = v153 + VInt64;
                v388 = v387;
                *&__src[24] = v153 + VInt64;
              }

              a2 = v342;
              v107 = v347;
              if (v156 - v170 + v155 != v154)
              {
                goto LABEL_849;
              }

              v171 = v333 - v332 + v334;
              PayloadPulsesWriteBytesFromScanner(&v370, v352, v171, v147);
              v172 = v171 + v147;
              v173 = v353;
              v174 = v356;
              if (v171 + v147 >= v353 && &v358[v353 - v356] >= v172)
              {
                v175 = v356;
                v174 = v356 + v171 + v147 - v353;
                v357 = v174;
              }

              else
              {
                v357 = v356;
                v358 = v356;
                v175 = v356;
                v173 = v171 + v147;
                v353 = v171 + v147;
              }

              if (v174 - v175 + v173 != v172)
              {
                goto LABEL_849;
              }

              goto LABEL_609;
            }

            *&v381[8] = 0;
            *v381 = 0;
            v157 = v388;
            if (v388 >= v389)
            {
              if (!_PayloadScannerReadNextChar(__src, v381))
              {
                goto LABEL_550;
              }

              v158 = v381[0];
              if ((v381[0] & 0x80) != 0)
              {
                goto LABEL_508;
              }

LABEL_344:
              v159 = 0;
              v160 = v388;
LABEL_524:
              __memcpy_chk();
              v388 = &v160[v159];
            }

            else
            {
              ++v388;
              v158 = *v157;
              v381[0] = v158;
              if ((v158 & 0x80) == 0)
              {
                goto LABEL_344;
              }

LABEL_508:
              if (v158 >= 0xC0)
              {
                if (v158 >= 0xE0)
                {
                  if (v158 >= 0xF0)
                  {
                    if (v158 >= 0xF8)
                    {
                      if (v158 >= 0xFC)
                      {
                        if (v158 >= 0xFE)
                        {
                          if (v158 == 255)
                          {
                            v159 = 8;
                          }

                          else
                          {
                            v159 = 7;
                          }
                        }

                        else
                        {
                          v159 = 6;
                        }
                      }

                      else
                      {
                        v159 = 5;
                      }
                    }

                    else
                    {
                      v159 = 4;
                    }
                  }

                  else
                  {
                    v159 = 3;
                  }
                }

                else
                {
                  v159 = 2;
                }
              }

              else
              {
                v159 = 1;
              }

              v160 = v388;
              if ((v389 - v388) >= v159)
              {
                goto LABEL_524;
              }

              if ((_PayloadScannerReadBytes(__src, &v381[1], v159) & 1) == 0)
              {
LABEL_550:
                v210 = v388 - v387 + *&__src[24];
                PayloadScannerSkipPositionsData(__src);
                v211 = v388 - v387 + *&__src[24];
                LOBYTE(v391[0]) = 0;
                v212 = v391;
                do
                {
                  v214 = *(&v372 + 1);
                  v215 = v372;
                  if (*(&v372 + 1) != v372)
                  {
                    v216 = *v212++;
                    *(v373 + v372) = v216;
                    *&v372 = v372 + 1;
                    if (v372 != *(&v372 + 1))
                    {
                      break;
                    }
                  }

                  PayloadPulsesWrite(&v370);
                }

                while (!HIDWORD(v373) && v214 == v215);
                PayloadPulsesWriteBytesFromScanner(&v370, __src, v210, v211 + ~v210);
                v217 = *&__src[24];
                v218 = v387;
                if (v211 >= *&__src[24] && &v389[*&__src[24] - v387] >= v211)
                {
                  v219 = v387;
                  v218 = v387 + v211 - *&__src[24];
                  v388 = v218;
                }

                else
                {
                  v389 = v387;
                  v219 = v387;
                  v217 = v211;
                  v388 = v387;
                  *&__src[24] = v211;
                }

                v107 = v347;
                if (v218 - v219 + v217 != v211)
                {
                  goto LABEL_856;
                }

                *&v381[8] = 0;
                *v381 = 0;
                v220 = v357;
                if (v357 >= v358)
                {
                  if (!_PayloadScannerReadNextChar(v352, v381))
                  {
                    goto LABEL_607;
                  }

                  v221 = v381[0];
                  if ((v381[0] & 0x80) != 0)
                  {
                    goto LABEL_568;
                  }

LABEL_565:
                  v222 = 0;
                  v223 = v357;
LABEL_584:
                  __memcpy_chk();
                  v357 = &v223[v222];
                }

                else
                {
                  ++v357;
                  v221 = *v220;
                  v381[0] = v221;
                  if ((v221 & 0x80) == 0)
                  {
                    goto LABEL_565;
                  }

LABEL_568:
                  if (v221 >= 0xC0)
                  {
                    if (v221 >= 0xE0)
                    {
                      if (v221 >= 0xF0)
                      {
                        if (v221 >= 0xF8)
                        {
                          if (v221 >= 0xFC)
                          {
                            if (v221 >= 0xFE)
                            {
                              if (v221 == 255)
                              {
                                v222 = 8;
                              }

                              else
                              {
                                v222 = 7;
                              }
                            }

                            else
                            {
                              v222 = 6;
                            }
                          }

                          else
                          {
                            v222 = 5;
                          }
                        }

                        else
                        {
                          v222 = 4;
                        }
                      }

                      else
                      {
                        v222 = 3;
                      }
                    }

                    else
                    {
                      v222 = 2;
                    }
                  }

                  else
                  {
                    v222 = 1;
                  }

                  v223 = v357;
                  if ((v358 - v357) >= v222)
                  {
                    goto LABEL_584;
                  }

                  if ((_PayloadScannerReadBytes(v352, &v381[1], v222) & 1) == 0)
                  {
LABEL_607:
                    v228 = v357 - v356 + v353;
                    PayloadScannerSkipPositionsData(v352);
                    v195 = &v357[v353] - v356 - v228;
                    v196 = v228;
LABEL_608:
                    PayloadPulsesWriteBytesFromScanner(&v370, v352, v196, v195);
                    goto LABEL_609;
                  }
                }

                *&v392[0] = 0;
                if ((v2_readVInt64_2873(v381, v392) & 1) == 0)
                {
                  goto LABEL_607;
                }

                *&v381[8] = 0;
                *v381 = 0;
                v224 = v357;
                if (v357 >= v358)
                {
                  v224 = v381;
                  if (!_PayloadScannerReadNextChar(v352, v381))
                  {
                    goto LABEL_607;
                  }
                }

                else
                {
                  ++v357;
                }

                if (*v224 < 0)
                {
                  v227 = *v224;
                  if (v227 >= 0xC0)
                  {
                    if (v227 >= 0xE0)
                    {
                      if (v227 >= 0xF0)
                      {
                        if (v227 >= 0xF8)
                        {
                          if (v227 >= 0xFC)
                          {
                            if (v227 >= 0xFE)
                            {
                              if (v227 == 255)
                              {
                                v225 = 8;
                              }

                              else
                              {
                                v225 = 7;
                              }
                            }

                            else
                            {
                              v225 = 6;
                            }
                          }

                          else
                          {
                            v225 = 5;
                          }
                        }

                        else
                        {
                          v225 = 4;
                        }
                      }

                      else
                      {
                        v225 = 3;
                      }
                    }

                    else
                    {
                      v225 = 2;
                    }
                  }

                  else
                  {
                    v225 = 1;
                  }

                  v226 = v357;
                  if ((v358 - v357) < v225)
                  {
                    _PayloadScannerReadBytes(v352, &v381[1], v225);
                    goto LABEL_607;
                  }
                }

                else
                {
                  v225 = 0;
                  v226 = v357;
                }

                __memcpy_chk();
                v357 = &v226[v225];
                goto LABEL_607;
              }
            }

            *&v392[0] = 0;
            if ((v2_readVInt64_2873(v381, v392) & 1) == 0)
            {
              goto LABEL_550;
            }

            *&v381[8] = 0;
            *v381 = 0;
            v206 = v388;
            if (v388 >= v389)
            {
              if (!_PayloadScannerReadNextChar(__src, v381))
              {
                goto LABEL_550;
              }

              v207 = v381[0];
              if ((v381[0] & 0x80) != 0)
              {
                goto LABEL_533;
              }

LABEL_528:
              v208 = 0;
              v209 = v388;
            }

            else
            {
              ++v388;
              v207 = *v206;
              v381[0] = v207;
              if ((v207 & 0x80) == 0)
              {
                goto LABEL_528;
              }

LABEL_533:
              if (v207 >= 0xC0)
              {
                if (v207 >= 0xE0)
                {
                  if (v207 >= 0xF0)
                  {
                    if (v207 >= 0xF8)
                    {
                      if (v207 >= 0xFC)
                      {
                        if (v207 >= 0xFE)
                        {
                          if (v207 == 255)
                          {
                            v208 = 8;
                          }

                          else
                          {
                            v208 = 7;
                          }
                        }

                        else
                        {
                          v208 = 6;
                        }
                      }

                      else
                      {
                        v208 = 5;
                      }
                    }

                    else
                    {
                      v208 = 4;
                    }
                  }

                  else
                  {
                    v208 = 3;
                  }
                }

                else
                {
                  v208 = 2;
                }
              }

              else
              {
                v208 = 1;
              }

              v209 = v388;
              if ((v389 - v388) < v208)
              {
                _PayloadScannerReadBytes(__src, &v381[1], v208);
                goto LABEL_550;
              }
            }

            __memcpy_chk();
            v388 = &v209[v208];
            goto LABEL_550;
          }

          v129 = v371[1] + 32 * (LODWORD(v371[0]) - 1);
          v130 = *(v129 + 4);
          if (v104 < v119)
          {
            if (v130)
            {
              v131 = v104 - *(v129 + 5);
            }

            else
            {
              *(v129 + 4) = v104;
              v131 = v104;
            }

            memset(v381, 0, sizeof(v381));
            if (v131 > 0x7F)
            {
              if (v131 >> 14)
              {
                if (v131 >> 21)
                {
                  if (v131 >> 28)
                  {
                    v381[0] = -16;
                    *&v381[1] = v131;
                    v134 = 5;
                  }

                  else
                  {
                    v381[0] = HIBYTE(v131) | 0xE0;
                    v381[1] = BYTE2(v131);
                    v381[2] = BYTE1(v131);
                    v381[3] = v131;
                    v134 = 4;
                  }
                }

                else
                {
                  v381[0] = BYTE2(v131) | 0xC0;
                  v381[1] = BYTE1(v131);
                  v381[2] = v131;
                  v134 = 3;
                }
              }

              else
              {
                v381[0] = BYTE1(v131) | 0x80;
                v381[1] = v131;
                v134 = 2;
              }
            }

            else
            {
              v381[0] = v131;
              v134 = 1;
            }

            v176 = v381;
            do
            {
              while (1)
              {
                v178 = *(&v372 + 1) - v372 >= v134 ? v134 : *(&v372 + 1) - v372;
                if (*(&v372 + 1) == v372)
                {
                  break;
                }

                memcpy((v373 + v372), v176, v178);
                *&v372 = v372 + v178;
                v176 += v178;
                if (v372 == *(&v372 + 1))
                {
                  break;
                }

                v134 -= v178;
                if (!v134)
                {
                  goto LABEL_394;
                }
              }

              PayloadPulsesWrite(&v370);
              v134 -= v178;
              if (HIDWORD(v373))
              {
                v177 = 1;
              }

              else
              {
                v177 = v134 == 0;
              }
            }

            while (!v177);
LABEL_394:
            *(v129 + 5) = v104;
            PayloadPulsesAppend(__src, &v370, a2, 0, v345 != 0);
            v179 = 0;
            v180 = v388;
            v107 = v347;
            v119 = v350;
            if (&v388[*&__src[24]] - v387 < v385)
            {
              v381[4] = 0;
              *v381 = 0;
              if (v388 < v389)
              {
                ++v388;
                v381[0] = *v180;
                v181 = v381[0];
                if ((v381[0] & 0x80) == 0)
                {
                  goto LABEL_397;
                }

LABEL_458:
                v203 = 3;
                if (v181 >= 0xF0)
                {
                  v203 = 4;
                }

                if (v181 < 0xE0)
                {
                  v203 = 2;
                }

                if (v181 >= 0xC0)
                {
                  v182 = v203;
                }

                else
                {
                  v182 = 1;
                }

                v183 = v388;
                if ((v389 - v388) >= v182)
                {
                  goto LABEL_466;
                }

                if (_PayloadScannerReadBytes(__src, &v381[1], v182))
                {
                  v181 = v381[0];
                  v119 = v350;
                  if ((v381[0] & 0x80) != 0)
                  {
                    goto LABEL_467;
                  }

                  goto LABEL_474;
                }

LABEL_501:
                v181 = 0;
                v119 = v350;
                goto LABEL_474;
              }

              if (!_PayloadScannerReadNextChar(__src, v381))
              {
                goto LABEL_501;
              }

              v181 = v381[0];
              if ((v381[0] & 0x80) != 0)
              {
                goto LABEL_458;
              }

LABEL_397:
              v182 = 0;
              v183 = v388;
LABEL_466:
              __memcpy_chk();
              v388 = &v183[v182];
              v119 = v350;
              if ((v181 & 0x80) != 0)
              {
LABEL_467:
                if (v181 > 0xBF)
                {
                  if (v181 > 0xDF)
                  {
                    if (v181 > 0xEF)
                    {
                      v181 = *&v381[1];
                    }

                    else
                    {
                      v181 = ((v181 & 0xF) << 24) | (v381[1] << 16) | (v381[2] << 8) | v381[3];
                    }
                  }

                  else
                  {
                    v181 = ((v181 & 0x1F) << 16) | (v381[1] << 8) | v381[2];
                  }
                }

                else
                {
                  v181 = v381[1] | ((v181 & 0x3F) << 8);
                }
              }

LABEL_474:
              v179 = v181 + v104;
            }

            v104 = v179;
            if (v179 >= v349)
            {
              goto LABEL_861;
            }

            goto LABEL_663;
          }

          if (v130)
          {
            v132 = v119 - *(v129 + 5);
          }

          else
          {
            *(v129 + 4) = v119;
            v132 = v119;
          }

          memset(v381, 0, sizeof(v381));
          if (v132 > 0x7F)
          {
            if (v132 >> 14)
            {
              if (v132 >> 21)
              {
                if (v132 >> 28)
                {
                  v381[0] = -16;
                  *&v381[1] = v132;
                  v135 = 5;
                }

                else
                {
                  v381[0] = HIBYTE(v132) | 0xE0;
                  v381[1] = BYTE2(v132);
                  v381[2] = BYTE1(v132);
                  v381[3] = v132;
                  v135 = 4;
                }
              }

              else
              {
                v381[0] = BYTE2(v132) | 0xC0;
                v381[1] = BYTE1(v132);
                v381[2] = v132;
                v135 = 3;
              }
            }

            else
            {
              v381[0] = BYTE1(v132) | 0x80;
              v381[1] = v132;
              v135 = 2;
            }
          }

          else
          {
            v381[0] = v132;
            v135 = 1;
          }

          v184 = v381;
          do
          {
            while (1)
            {
              v186 = *(&v372 + 1) - v372 >= v135 ? v135 : *(&v372 + 1) - v372;
              if (*(&v372 + 1) == v372)
              {
                break;
              }

              memcpy((v373 + v372), v184, v186);
              *&v372 = v372 + v186;
              v184 += v186;
              if (v372 == *(&v372 + 1))
              {
                break;
              }

              v135 -= v186;
              if (!v135)
              {
                goto LABEL_410;
              }
            }

            PayloadPulsesWrite(&v370);
            v135 -= v186;
            if (HIDWORD(v373))
            {
              v185 = 1;
            }

            else
            {
              v185 = v135 == 0;
            }
          }

          while (!v185);
LABEL_410:
          *(v129 + 5) = v350;
          PayloadPulsesAppend(v352, &v370, a2, 0, v345 != 0);
          v187 = 0;
          v188 = v357;
          v107 = v347;
          if (&v357[v353] - v356 < v354)
          {
            v381[4] = 0;
            *v381 = 0;
            if (v357 < v358)
            {
              ++v357;
              v381[0] = *v188;
              v189 = v381[0];
              if ((v381[0] & 0x80) == 0)
              {
                goto LABEL_413;
              }

LABEL_479:
              v204 = 3;
              if (v189 >= 0xF0)
              {
                v204 = 4;
              }

              if (v189 < 0xE0)
              {
                v204 = 2;
              }

              if (v189 >= 0xC0)
              {
                v190 = v204;
              }

              else
              {
                v190 = 1;
              }

              v191 = v357;
              if ((v358 - v357) >= v190)
              {
                goto LABEL_487;
              }

              if (_PayloadScannerReadBytes(v352, &v381[1], v190))
              {
                v189 = v381[0];
                v205 = v350;
                if ((v381[0] & 0x80) != 0)
                {
                  goto LABEL_488;
                }

                goto LABEL_495;
              }

LABEL_505:
              v189 = 0;
              v205 = v350;
              goto LABEL_495;
            }

            if (!_PayloadScannerReadNextChar(v352, v381))
            {
              goto LABEL_505;
            }

            v189 = v381[0];
            if ((v381[0] & 0x80) != 0)
            {
              goto LABEL_479;
            }

LABEL_413:
            v190 = 0;
            v191 = v357;
LABEL_487:
            __memcpy_chk();
            v357 = &v191[v190];
            v205 = v350;
            if ((v189 & 0x80) != 0)
            {
LABEL_488:
              if (v189 > 0xBF)
              {
                if (v189 > 0xDF)
                {
                  if (v189 > 0xEF)
                  {
                    v189 = *&v381[1];
                  }

                  else
                  {
                    v189 = ((v189 & 0xF) << 24) | (v381[1] << 16) | (v381[2] << 8) | v381[3];
                  }
                }

                else
                {
                  v189 = ((v189 & 0x1F) << 16) | (v381[1] << 8) | v381[2];
                }
              }

              else
              {
                v189 = v381[1] | ((v189 & 0x3F) << 8);
              }
            }

LABEL_495:
            v187 = v189 + v205;
          }

          v119 = v187;
          if (v187 >= v349)
          {
            goto LABEL_856;
          }

          goto LABEL_663;
        }

        break;
      }

      if (!(*a9 | HIDWORD(v373)))
      {
        goto LABEL_678;
      }

LABEL_736:
      v85 = 0;
LABEL_737:
      free(v325);
      if (v356)
      {
        free(v356);
        v356 = 0;
      }

      if (v387)
      {
        free(v387);
      }

      v264 = HIDWORD(v369[1]);
      if (HIDWORD(v369[1]))
      {
        v265 = v85 == 0;
      }

      else
      {
        v265 = 0;
      }

      if (!v265)
      {
        v264 = v85;
      }

      if (v264)
      {
        v266 = 1;
      }

      else
      {
        v266 = HIDWORD(v373) == 0;
      }

      if (v266)
      {
        v49 = v264;
      }

      else
      {
        v49 = HIDWORD(v373);
      }

      v267 = *__error();
      v268 = _SILogForLogForCategory(10);
      v269 = 2 * (dword_1EBF46AF4 < 4);
      v270 = os_log_type_enabled(v268, v269);
      if (v49)
      {
        if (v270)
        {
          v304 = ptr[0];
          v305 = v371[0];
          v306 = CFAbsoluteTimeGetCurrent();
          *__src = 67110144;
          *&v306 = v306 - v77;
          *&__src[4] = v326;
          *&__src[8] = 1024;
          *&__src[10] = v304;
          *&__src[14] = 1024;
          *&__src[16] = v305;
          a2 = v342;
          *&__src[20] = 2048;
          *&__src[22] = *&v306;
          *&__src[30] = 1024;
          LODWORD(v385) = v49;
          _os_log_impl(&dword_1C278D000, v268, v269, "Compact iteration:%d, src cnt:%d, new cnt:%d, time (%f) ERROR: %d", __src, 0x24u);
        }

        v50 = 0;
        *__error() = v267;
        goto LABEL_101;
      }

      if (v270)
      {
        v271 = ptr[0];
        v272 = v371[0];
        v273 = CFAbsoluteTimeGetCurrent();
        *__src = 67109888;
        *&v273 = v273 - v77;
        *&__src[4] = v326;
        *&__src[8] = 1024;
        *&__src[10] = v271;
        *&__src[14] = 1024;
        *&__src[16] = v272;
        *&__src[20] = 2048;
        *&__src[22] = *&v273;
        _os_log_impl(&dword_1C278D000, v268, v269, "Compact iteration:%d, src cnt:%d, new cnt:%d, time (%f)", __src, 0x1Eu);
      }

      *__error() = v267;
      if (!*a9 && LODWORD(ptr[0]) <= LODWORD(v371[0]))
      {
        goto LABEL_856;
      }

      PayloadPulsesWrite(&v370);
      v49 = HIDWORD(v373);
      free(ptr[1]);
      ptr[1] = 0;
      free(v369[0]);
      v366 = v370;
      *ptr = *v371;
      v368 = v372;
      *v369 = v373;
      v370 = 0u;
      *v371 = 0u;
      v372 = 0u;
      v373 = 0u;
      if (v49)
      {
        goto LABEL_100;
      }

      if (v324 == *buf)
      {
        v71 = *&buf[8];
      }

      else
      {
        v71 = *buf;
      }

      v76 = ptr[0];
      if (!*a9)
      {
        ++v326;
        if (LODWORD(ptr[0]) >= 2)
        {
          continue;
        }
      }

      break;
    }

LABEL_763:
    if (*a9)
    {
      goto LABEL_764;
    }

    if (v76 != 1)
    {
      v320 = __si_assert_copy_extra_2708(0);
      v308 = v320;
      v321 = "";
      if (v320)
      {
        v321 = v320;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1753, "PayloadPulsesCount(&ctx.src) == 1", v321);
      goto LABEL_852;
    }

    v274 = v366;
    if (*buf && *buf != v366)
    {
      _fd_unlink_with_origin(*buf, 0);
      fd_release(*buf);
      *buf = 0;
      v274 = v366;
    }

    if (*&buf[8] && *&buf[8] != v274)
    {
      _fd_unlink_with_origin(*&buf[8], 0);
      fd_release(*&buf[8]);
      *&buf[8] = 0;
    }

    v351 = *(ptr[1] + 6);
    *&v370 = 0;
    HIDWORD(v373) = 0;
    v371[0] = 0x4000000000;
    v371[1] = malloc_type_malloc(0x800uLL, 0x1000040F6D918ACuLL);
    v372 = xmmword_1C2BFA6B0;
    *&v373 = malloc_type_malloc(0x10000uLL, 0x2F8734D0uLL);
    v275 = *a1;
    *&v370 = a1[561];
    *(&v370 + 1) = v275;
    v276 = v371[0];
    if (LODWORD(v371[0]) == HIDWORD(v371[0]))
    {
      HIDWORD(v371[0]) = 2 * LODWORD(v371[0]);
      v277 = malloc_type_realloc(v371[1], 32 * (2 * LODWORD(v371[0])), 0x1000040F6D918ACuLL);
      v371[1] = v277;
      v276 = v371[0];
    }

    else
    {
      v277 = v371[1];
    }

    LODWORD(v371[0]) = v276 + 1;
    v278 = &v277[32 * v276];
    *v278 = v275;
    *(v278 + 1) = 0;
    *(v278 + 2) = 0;
    *(v278 + 3) = 0;
    v374 = 0uLL;
    v375 = v366;
    *&v376 = *(&v366 + 1);
    *(&v376 + 1) = 0x100000;
    v279 = malloc_type_malloc(0x100000uLL, 0xDD6FD5F7uLL);
    *&v377 = v279;
    *&v378 = v279;
    DWORD2(v378) = 0;
    v280 = *ptr[1];
    v281 = *(ptr[1] + 1) + *ptr[1];
    *&v376 = v281;
    if (*(&v375 + 1) != v280)
    {
      *(&v375 + 1) = v280;
    }

    *(&v377 + 1) = v279;
    if (v280 >= v281)
    {
      VInt32_v2 = 0;
    }

    else
    {
      VInt32_v2 = PayloadScannerReadVInt32_v2(&v374);
    }

    if (VInt32_v2 >= v349)
    {
LABEL_856:
      v310 = __si_assert_copy_extra_2708(0);
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_857;
    }

    if (v342 == 2 || VInt32_v2 <= 1)
    {
      while (1)
      {
        if (!VInt32_v2 || *a9)
        {
LABEL_839:
          PayloadPulsesWrite(&v370);
          a1[1] = *a1;
          v302 = *(&v370 + 1);
          a1[3] = *(&v370 + 1);
          a1[4] = v302;
          if (HIDWORD(v373))
          {
            v303 = DWORD2(v378) == 0;
          }

          else
          {
            v303 = 0;
          }

          if (v303)
          {
            v49 = HIDWORD(v373);
          }

          else
          {
            v49 = DWORD2(v378);
          }

          goto LABEL_845;
        }

        v285 = *(&v377 + 1) - v377 + *(&v375 + 1);
        if (v285 <= v280 || v285 >= v281)
        {
          v318 = __si_assert_copy_extra_2708(0);
          v308 = v318;
          v319 = "";
          if (v318)
          {
            v319 = v318;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1804, "PayloadScannerPosition(&ctx.scanner) > p.offset && PayloadScannerPosition(&ctx.scanner) < p.offset+p.length", v319);
          goto LABEL_852;
        }

        v287 = v372 + *(&v370 + 1);
        if ((v372 + *(&v370 + 1)) >> 62)
        {
          v310 = __si_assert_copy_extra_2708(0);
          __message_assert("%s:%u: failed assertion '%s' %s write invalid offset %llu");
LABEL_857:
          free(v310);
          if (__valid_fs(-1))
          {
            v311 = 2989;
          }

          else
          {
            v311 = 3072;
          }

          *v311 = -559038737;
          abort();
        }

        v288 = 8 * VInt32_v2;
        v289 = v288 / *MEMORY[0x1E69E9AC8];
        v290 = a1;
        v291 = a1[559];
        if (v291 <= v289)
        {
          if (v291)
          {
            v297 = a1[559];
          }

          else
          {
            v297 = 32;
          }

          while (1)
          {
            v297 *= 2;
            if (v297 > v289)
            {
              break;
            }

            if (v297 <= v291)
            {
              goto LABEL_856;
            }
          }

          v348 = v288 / *MEMORY[0x1E69E9AC8];
          v298 = a1[560];
          if (v298)
          {
            MutableCopy = CFBitVectorCreateMutableCopy(allocator, v297, v298);
          }

          else
          {
            MutableCopy = CFBitVectorCreateMutable(allocator, v297);
          }

          v300 = MutableCopy;
          if (!MutableCopy)
          {
            v322 = __si_assert_copy_extra_2708(0);
            v308 = v322;
            v323 = "";
            if (v322)
            {
              v323 = v322;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v323);
            goto LABEL_852;
          }

          CFBitVectorSetCount(MutableCopy, v297);
          v301 = a1[560];
          if (v301)
          {
            CFRelease(v301);
          }

          v290 = a1;
          a1[560] = v300;
          a1[559] = v297;
          v289 = v348;
        }

        if (v290[558] <= v289)
        {
          v290[558] = v289 + 1;
        }

        v292 = v290;
        CFBitVectorSetBitAtIndex(v290[560], v289, 1u);
        *storageResolvePtr((v292 + 5), 8 * VInt32_v2, 8, 1) = v287;
        PayloadPulsesAppend(&v374, &v370, v342, 1, v351 != 0);
        if (HIDWORD(v373))
        {
          goto LABEL_839;
        }

        v293 = *(&v377 + 1);
        if (*(&v375 + 1) + *(&v377 + 1) - v377 < v376)
        {
          break;
        }

        VInt32_v2 = 0;
LABEL_787:
        if (VInt32_v2 >= v349)
        {
          goto LABEL_856;
        }
      }

      __src[4] = 0;
      *__src = 0;
      if (*(&v377 + 1) >= v378)
      {
        if (!_PayloadScannerReadNextChar(&v374, __src))
        {
          goto LABEL_833;
        }

        v294 = __src[0];
        if ((__src[0] & 0x80) == 0)
        {
          goto LABEL_802;
        }
      }

      else
      {
        ++*(&v377 + 1);
        __src[0] = *v293;
        v294 = __src[0];
        if ((__src[0] & 0x80) == 0)
        {
LABEL_802:
          v295 = 0;
          v296 = *(&v377 + 1);
          goto LABEL_821;
        }
      }

      if (v294 >= 0xC0)
      {
        if (v294 >= 0xE0)
        {
          if (v294 < 0xF0)
          {
            v295 = 3;
          }

          else
          {
            v295 = 4;
          }
        }

        else
        {
          v295 = 2;
        }
      }

      else
      {
        v295 = 1;
      }

      v296 = *(&v377 + 1);
      if ((v378 - DWORD2(v377)) >= v295)
      {
LABEL_821:
        __memcpy_chk();
        *(&v377 + 1) = v296 + v295;
        if ((v294 & 0x80) != 0)
        {
          goto LABEL_822;
        }

        goto LABEL_829;
      }

      if (_PayloadScannerReadBytes(&v374, &__src[1], v295))
      {
        v294 = __src[0];
        if ((__src[0] & 0x80) != 0)
        {
LABEL_822:
          if (v294 > 0xBF)
          {
            if (v294 > 0xDF)
            {
              if (v294 > 0xEF)
              {
                v294 = *&__src[1];
              }

              else
              {
                v294 = ((v294 & 0xF) << 24) | (__src[1] << 16) | (__src[2] << 8) | __src[3];
              }
            }

            else
            {
              v294 = ((v294 & 0x1F) << 16) | (__src[1] << 8) | __src[2];
            }
          }

          else
          {
            v294 = __src[1] | ((v294 & 0x3F) << 8);
          }
        }

LABEL_829:
        VInt32_v2 += v294;
        goto LABEL_787;
      }

LABEL_833:
      v294 = 0;
      goto LABEL_829;
    }

    v283 = *__error();
    v284 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
    {
      *__src = 136315650;
      *&__src[4] = "CICompactPayloads";
      *&__src[12] = 1024;
      *&__src[14] = 1797;
      *&__src[18] = 1024;
      *&__src[20] = VInt32_v2;
      _os_log_error_impl(&dword_1C278D000, v284, OS_LOG_TYPE_ERROR, "%s:%d: expected term id 1%d", __src, 0x18u);
    }

    *__error() = v283;
    v49 = -1;
LABEL_845:
    v50 = 1;
    a5 = v343;
    a2 = v342;
LABEL_101:
    CICleanUpReset(v340, v339);
    v51 = *__error();
    v52 = _SILogForLogForCategory(10);
    v53 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = CFAbsoluteTimeGetCurrent() - Current;
      *__src = 134217984;
      *&__src[4] = v54;
      _os_log_impl(&dword_1C278D000, v52, v53, "Compacted payloads (%f)", __src, 0xCu);
    }

    *__error() = v51;
    if (v49)
    {
      v55 = 1;
    }

    else
    {
      v55 = *a9 == 0;
    }

    if (v55)
    {
      result = v49;
    }

    else
    {
      result = 89;
    }

    if (a7 == -1)
    {
      v57 = 1;
    }

    else
    {
      v57 = v50;
    }

    if (result == 28 && (v57 & 1) == 0)
    {
      v58 = *__error();
      v59 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *__src = 136315650;
        *&__src[4] = "CICompactPayloads";
        *&__src[12] = 1024;
        *&__src[14] = 1852;
        *&__src[18] = 1024;
        *&__src[20] = 28;
        _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, "%s:%d: Error %d compacting, retrying", __src, 0x18u);
      }

      *__error() = v58;
      a7 = -1;
      continue;
    }

    return result;
  }
}

uint64_t _PayloadScannerReadNextChar(uint64_t a1, _BYTE *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = &v2[*(a1 + 24) - *(a1 + 48)];
  if (v4 >= v3)
  {
    return 0;
  }

  if (v2 < *(a1 + 64))
  {
LABEL_32:
    *(a1 + 56) = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  v5 = *(a1 + 40);
  v6 = *a1;
  if (*a1 || *(a1 + 8))
  {
    if (v6 <= v4 && (v7 = *(a1 + 8), v4 <= v7))
    {
      v8 = a2;
      *(a1 + 24) = v7;
      v4 = v7;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      v8 = a2;
      if (v5 + v4 > v6 && v6 > v4)
      {
        v5 = v6 - v4;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v30 = 0;
  v10 = a1;
  v11 = _fd_acquire_fd(*(a1 + 16), &v30);
  if (v11 != -1)
  {
    v12 = v11;
    if (v3 - v4 >= v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = v3 - v4;
    }

    v14 = *(v10 + 48);
    while (1)
    {
      v15 = pread(v12, v14, v13, v4);
      if (v15 != -1)
      {
        break;
      }

      v16 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v17 = __error();
      if (((*(v16 + 16))(v16, v12, *v17, 4) & 1) == 0)
      {
        v15 = -1;
        break;
      }
    }

    if (v13 != -1)
    {
      v18 = v10;
      if (v15 != -1)
      {
        goto LABEL_31;
      }

      *(v10 + 32) = 0;
      *(v10 + 72) = *__error();
      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v29 = *(v10 + 72);
        *buf = 136315650;
        v32 = "_PayloadScannerReadNextChar";
        v33 = 1024;
        v34 = 198;
        v35 = 1024;
        v36 = v29;
        _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: pread err: %d", buf, 0x18u);
      }

      v21 = __error();
      v15 = 0;
      *v21 = v19;
    }

    v18 = v10;
LABEL_31:
    v22 = v15;
    _fd_release_fd(*(v18 + 16), v12, 0, v30);
    a1 = v10;
    *(v10 + 24) = v4;
    v2 = *(v10 + 48);
    *(v10 + 56) = v2;
    *(v10 + 64) = &v2[v22];
    a2 = v8;
    if (v22)
    {
      goto LABEL_32;
    }

    return 0;
  }

  *(v10 + 72) = *__error();
  v24 = *__error();
  v25 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v28 = *(v10 + 72);
    *buf = 136315650;
    v32 = "_PayloadScannerReadNextChar";
    v33 = 1024;
    v34 = 191;
    v35 = 1024;
    v36 = v28;
    _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d", buf, 0x18u);
  }

  v26 = __error();
  result = 0;
  *v26 = v24;
  *(v10 + 24) = v4;
  v27 = *(v10 + 48);
  *(v10 + 56) = v27;
  *(v10 + 64) = v27;
  return result;
}

int *PayloadPulsesWrite(int *result)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!result[15])
  {
    v1 = result;
    if (*(result + 4))
    {
      v18 = 0;
      v2 = _fd_acquire_fd(*result, &v18);
      if (v2 == -1)
      {
        v1[15] = *__error();
        v12 = *__error();
        v13 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v16 = v1[15];
          *buf = 136315650;
          v20 = "PayloadPulsesWrite";
          v21 = 1024;
          v22 = 448;
          v23 = 1024;
          v24 = v16;
          _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: open err:%d", buf, 0x18u);
        }

        result = __error();
        v4 = 0;
        *result = v12;
      }

      else
      {
        v3 = v2;
        v4 = 0;
        v5 = *(v1 + 6);
        v6 = *(v1 + 4);
        v7 = *(v1 + 1);
        do
        {
          while (1)
          {
            v8 = guarded_pwrite_np();
            if ((v8 & 0x8000000000000000) != 0)
            {
              break;
            }

            v4 += v8;
            v11 = v6 > v8;
            v6 -= v8;
            if (!v11)
            {
              goto LABEL_13;
            }

            v5 += v8;
            v7 += v8;
          }

          v9 = g_prot_error_callback;
          if (!g_prot_error_callback)
          {
            break;
          }

          v10 = __error();
        }

        while (((*(v9 + 16))(v9, v3, *v10, 5) & 1) != 0);
        v4 = -1;
LABEL_13:
        result = _fd_release_fd(*v1, v3, 0, v18);
        if (v4 != *(v1 + 4))
        {
          if (v4 == -1)
          {
            v1[15] = *__error();
            v14 = *__error();
            v15 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v17 = v1[15];
              *buf = 136315650;
              v20 = "PayloadPulsesWrite";
              v21 = 1024;
              v22 = 455;
              v23 = 1024;
              v24 = v17;
              _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err:%d", buf, 0x18u);
            }

            result = __error();
            *result = v14;
            v4 = -1;
          }

          else
          {
            v1[15] = -1;
          }
        }
      }

      *(v1 + 1) += v4;
      *(v1 + 4) = 0;
    }
  }

  return result;
}

uint64_t PayloadPulsesReorder(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v463 = v5;
  v461 = v6;
  v459 = v7;
  v458 = v8;
  v509[129] = *MEMORY[0x1E69E9840];
  v460 = v3;
  if (v3 + 1 < 0x80000)
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = 0x80000;
  }

  v10 = *v1;
  if (!*v1)
  {
    return 22;
  }

  v11 = v2;
  v462 = v4;
  v12 = v1;
  bzero(v481, 0x1140uLL);
  atomic_fetch_add_explicit((v10 + 32), 1u, memory_order_relaxed);
  v465 = v12;
  v13 = v12[1];
  v486 = 1;
  v482 = v10;
  v483 = v13;
  v485 = 1;
  v488 = 0;
  v489 = 26;
  bzero(&v490, 0x1000uLL);
  v14 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
  v491 = v14;
  *&v14->__sig = 0u;
  *&v14->__opaque[8] = 0u;
  *&v14->__opaque[24] = 0u;
  *&v14->__opaque[40] = 0u;
  *&v14->__opaque[56] = 0u;
  *&v14->__opaque[72] = 0u;
  *&v14->__opaque[88] = 0u;
  *&v14->__opaque[104] = 0u;
  *&v14->__opaque[120] = 0u;
  *&v14->__opaque[136] = 0u;
  *&v14->__opaque[152] = 0u;
  *&v14->__opaque[168] = 0u;
  *&v14->__opaque[184] = 0;
  pthread_rwlock_init(v491, 0);
  v491[1].__sig = 0;
  v484 = v13;
  v487 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v15 = setThreadIdAndInfo(-1, sStorageExceptionCallbacks, v481, 0, add_explicit + 1);
  v479 = HIDWORD(v15);
  v480 = v15;
  v478 = v16;
  v477 = v17;
  v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
  v457 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v476 = v480;
  v475 = v479;
  v474 = __PAIR64__(v478, v477);
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v509[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v509, 2u);
    }

    *(v18 + 312) = v457;
    if (__THREAD_SLOT_KEY[0])
    {
      v20 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v20)
      {
        goto LABEL_794;
      }
    }

    else
    {
      makeThreadId();
      v20 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v20)
      {
        goto LABEL_794;
      }
    }

    v21 = v20;
    if (v20 < 0x801)
    {
LABEL_13:
      v22 = &threadData[9 * v21];
      v24 = *(v22 - 4);
      v23 = v22 - 2;
      if (v24 > v474)
      {
        v25 = v21 - 1;
        do
        {
          CIOnThreadCleanUpPop(v25);
        }

        while (*v23 > v474);
      }

      dropThreadId(v476, 1, add_explicit + 1);
      CICleanUpReset(v476, HIDWORD(v474));
      v26 = -1;
      goto LABEL_733;
    }

LABEL_794:
    makeThreadId();
    v21 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_13;
  }

  if (__THREAD_SLOT_KEY[0])
  {
    v28 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v28)
    {
      goto LABEL_20;
    }
  }

  else
  {
    makeThreadId();
    v28 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v28)
    {
LABEL_20:
      v29 = v28;
      if (v28 < 0x801)
      {
        goto LABEL_21;
      }
    }
  }

  makeThreadId();
  v29 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
LABEL_21:
  v30 = v29 - 1;
  v455 = threadData[9 * v29 - 5];
  v473 = 0;
  v31 = malloc_type_malloc((12 * v9), 0x10000403E1C8BA9uLL);
  v456 = v30;
  if (!v31)
  {
LABEL_728:
    v39 = *__error();
    goto LABEL_730;
  }

  v32 = v31;
  v473 = v31;
  CICleanUpPush(v30, PayloadReorderInfoFree, &v473);
  v33 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
  if (!v33)
  {
    v429 = __si_assert_copy_extra_2708(0);
    v395 = v429;
    v430 = "";
    if (v429)
    {
      v430 = v429;
    }

    v439 = "list";
    v441 = v430;
    v397 = 911;
    goto LABEL_768;
  }

  v34 = v33;
  v33[2] = 256;
  v35 = malloc_type_malloc(0x1000uLL, 0x1000040451B5BE8uLL);
  *v34 = v35;
  if (!v35)
  {
    v431 = __si_assert_copy_extra_2708(0);
    v395 = v431;
    v432 = "";
    if (v431)
    {
      v432 = v431;
    }

    v439 = "list->items";
    v441 = v432;
    v397 = 914;
    goto LABEL_768;
  }

  *(v34 + 12) = 0;
  *(v34 + 16) = 0;
  v454 = v34;
  CICleanUpPush(v30, PositionRunInfoListFree, v34);
  v472 = 0;
  CICleanUpPush(v30, PayloadReorderInfoDestroyScanner, &v472);
  v36 = 0;
  v37 = v9;
  while (2)
  {
    if (*v463 || v36 >= *(v465 + 4))
    {
      v39 = 0;
      break;
    }

    v40 = v32;
    v453 = v36;
    v41 = v465[3] + 32 * v36;
    v42 = *(v41 + 8);
    v447 = *v41;
    v43 = *(v41 + 16);
    v470 = 0u;
    v471 = 0u;
    v44 = *v465;
    v466[0] = 0;
    v466[1] = 0;
    v466[2] = v44;
    v467 = 0;
    v468 = v42 + v447;
    v469 = v42;
    v45 = malloc_type_malloc(v42, 0xDD6FD5F7uLL);
    *&v470 = v45;
    *&v471 = v45;
    DWORD2(v471) = 0;
    v472 = v466;
    if (v467 != v447)
    {
      v467 = v447;
    }

    *(&v470 + 1) = v45;
    v46 = *(v11 + 8);
    v47 = *(v11 + 16);
    if (v47 == *(v11 + 20))
    {
      v48 = 2 * v47;
      *(v11 + 20) = v48;
      v49 = malloc_type_realloc(*(v11 + 24), 32 * v48, 0x1000040F6D918ACuLL);
      *(v11 + 24) = v49;
    }

    else
    {
      v49 = *(v11 + 24);
    }

    v50 = *(v11 + 16);
    *(v11 + 16) = v50 + 1;
    v51 = &v49[32 * v50];
    *(v51 + 1) = 0;
    *(v51 + 2) = 0;
    *v51 = v46;
    *(v51 + 3) = 1;
    v52 = *(&v470 + 1);
    if (v467 + *(&v470 + 1) - v470 >= v468)
    {
      v57 = 0;
      goto LABEL_58;
    }

    BYTE4(v509[0]) = 0;
    LODWORD(v509[0]) = 0;
    if (*(&v470 + 1) >= v471)
    {
      if (!_PayloadScannerReadNextChar(v466, v509))
      {
        goto LABEL_727;
      }

      v54 = LOBYTE(v509[0]);
      if ((v509[0] & 0x80) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      ++*(&v470 + 1);
      v53 = *v52;
      LOBYTE(v509[0]) = v53;
      v54 = v53;
      if ((v53 & 0x80) == 0)
      {
LABEL_36:
        v55 = 0;
        v56 = *(&v470 + 1);
        goto LABEL_49;
      }
    }

    if (v54 >= 0xC0)
    {
      if (v54 >= 0xE0)
      {
        if (v54 < 0xF0)
        {
          v58 = 3;
        }

        else
        {
          v58 = 4;
        }
      }

      else
      {
        v58 = 2;
      }
    }

    else
    {
      v58 = 1;
    }

    v56 = *(&v470 + 1);
    if ((v471 - DWORD2(v470)) >= v58)
    {
      v55 = v58;
LABEL_49:
      __memcpy_chk();
      *(&v470 + 1) = v56 + v55;
      v59 = v54;
      if ((v54 & 0x80) != 0)
      {
        goto LABEL_50;
      }

      goto LABEL_57;
    }

    if (!_PayloadScannerReadBytes(v466, v509 + 1, v58))
    {
LABEL_727:
      v59 = 0;
      goto LABEL_57;
    }

    v59 = LOBYTE(v509[0]);
    if ((v509[0] & 0x80) != 0)
    {
LABEL_50:
      if (v59 > 0xBF)
      {
        if (v59 > 0xDF)
        {
          if (v59 > 0xEF)
          {
            v59 = *(v509 + 1);
          }

          else
          {
            v59 = ((v59 & 0xF) << 24) | (BYTE1(v509[0]) << 16) | (BYTE2(v509[0]) << 8) | BYTE3(v509[0]);
          }
        }

        else
        {
          v59 = ((v59 & 0x1F) << 16) | (BYTE1(v509[0]) << 8) | BYTE2(v509[0]);
        }
      }

      else
      {
        v59 = BYTE1(v509[0]) | ((v59 & 0x3F) << 8);
      }
    }

LABEL_57:
    v57 = v59 + v43;
LABEL_58:
    if (v57 >= v460)
    {
LABEL_747:
      v398 = __si_assert_copy_extra_2708(0);
      v395 = v398;
      v399 = "";
      if (v398)
      {
        v399 = v398;
      }

      v439 = "termId < maxTermId";
      v441 = v399;
      v397 = 1300;
      goto LABEL_768;
    }

    if (v458 != 1)
    {
      v92 = 0;
      v93 = v40;
      v94 = v37;
      while (1)
      {
        v96 = v93;
        if (!v57)
        {
          if (DWORD2(v471))
          {
            goto LABEL_710;
          }

          if (!v459)
          {
            v145 = v92;
            v146 = 0;
            goto LABEL_258;
          }

          v121 = malloc_type_malloc(0x28uLL, 0x108004020E64A48uLL);
          v121[4] = -1;
          *v121 = 0;
          *(v121 + 1) = 0;
          *(v121 + 3) = -1;
          v121[8] = 0;
          v122 = v121;
          bzero(v509, 0x400uLL);
          v123 = getpid();
          v124 = atomic_fetch_add_explicit(scratch_file_create_sCount, 1u, memory_order_relaxed) + 1;
          if (v462 == -1)
          {
            snprintf(v509, 0x400uLL, "/mds_scratch.%d.%d", v123, v124);
            bzero(v500, 0x400uLL);
            if (confstr(65537, v500, 0x400uLL) - 1 <= 0x3FF && __strlcat_chk() <= 0x400)
            {
              v147 = open(v500, 2562, 384);
              v122[4] = v147;
              if (v147 == -1)
              {
                snprintf(v500, 0x400uLL, "/tmp/%s", v509);
                v148 = open(v500, 2562, 384);
                v122[4] = v148;
                if (v148 == -1)
                {
                  v122[8] = *__error();
                  v149 = *__error();
                  v385 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
                  {
                    v387 = v122[8];
                    v492 = 136315906;
                    v493 = "scratch_file_create";
                    v494 = 1024;
                    v495 = 1892;
                    v496 = 1024;
                    v497 = v387;
                    v498 = 2080;
                    v499 = v500;
                    _os_log_error_impl(&dword_1C278D000, v385, OS_LOG_TYPE_ERROR, "%s:%d: open err:%d %s", &v492, 0x22u);
                  }

                  goto LABEL_245;
                }
              }

              unlink(v500);
            }
          }

          else
          {
            snprintf(v509, 0x400uLL, "tmp.scratch.%d.%d", v123, v124);
            v125 = openat(v462, v509, 536873474, 384);
            v122[4] = v125;
            if (v125 != -1)
            {
              unlinkat(v462, v509, 0);
              goto LABEL_246;
            }

            v122[8] = *__error();
            v149 = *__error();
            v150 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              v384 = v122[8];
              *v500 = 136316162;
              *&v500[4] = "scratch_file_create";
              v501 = 1024;
              v502 = 1875;
              v503 = 1024;
              v504 = v384;
              v505 = 1024;
              v506 = v462;
              v507 = 2080;
              v508 = v509;
              _os_log_error_impl(&dword_1C278D000, v150, OS_LOG_TYPE_ERROR, "%s:%d: openat err:%d %d %s", v500, 0x28u);
            }

LABEL_245:
            *__error() = v149;
          }

LABEL_246:
          v151 = v122[4];
          if (v151 != -1)
          {
            if (_fd_ftruncate(v151, 0x8000) == -1)
            {
              v122[8] = *__error();
              v153 = *__error();
              v154 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_253;
              }

              v155 = v122[8];
              *v500 = 136315906;
              *&v500[4] = "scratch_file_create";
              v501 = 1024;
              v502 = 1911;
              v503 = 1024;
              v504 = v155;
              v505 = 1024;
              v506 = 0x8000;
              v156 = v154;
              v157 = "%s:%d: ftruncate err:%d size:%d";
            }

            else
            {
              v152 = mmap(0, 0x8000uLL, 3, 1025, v122[4], 0);
              *(v122 + 3) = v152;
              if (v152 != -1)
              {
                v145 = v92;
                *v122 = 0x8000;
LABEL_257:
                v159 = v122[8];
                v146 = v122;
                if (v159)
                {
                  goto LABEL_703;
                }

LABEL_258:
                v451 = v145;
                mergesort(v93, v145, 0xCuLL, PayloadReorderInfoCompare);
                if (!v145)
                {
                  goto LABEL_699;
                }

                v160 = 0;
                v452 = v93;
                while (2)
                {
                  v161 = v160;
                  v162 = &v96[12 * v160];
                  v163 = v447 + v162[1];
                  v164 = v467;
                  if (v163 >= v467 && v467 + v471 - v470 >= v163)
                  {
                    v165 = v470 + v163 - v467;
                    *(&v470 + 1) = v165;
                  }

                  else
                  {
                    v164 = v447 + v162[1];
                    *(&v470 + 1) = v470;
                    *&v471 = v470;
                    v467 = v163;
                    v165 = v470;
                  }

                  if (v164 + v165 - v470 != v163)
                  {
                    goto LABEL_775;
                  }

                  v166 = *v162;
                  v167 = *(v11 + 24) + 32 * (*(v11 + 16) - 1);
                  if (*(v167 + 16))
                  {
                    v168 = *v162 - *(v167 + 20);
                  }

                  else
                  {
                    *(v167 + 16) = v166;
                    v168 = v166;
                  }

                  memset(v509, 0, 32);
                  v450 = v161;
                  if (v168 > 0x7F)
                  {
                    if (v168 >> 14)
                    {
                      if (v168 >> 21)
                      {
                        if (v168 >> 28)
                        {
                          LOBYTE(v509[0]) = -16;
                          *(v509 + 1) = v168;
                          v169 = 5;
                        }

                        else
                        {
                          LOBYTE(v509[0]) = HIBYTE(v168) | 0xE0;
                          BYTE1(v509[0]) = BYTE2(v168);
                          BYTE2(v509[0]) = BYTE1(v168);
                          BYTE3(v509[0]) = v168;
                          v169 = 4;
                        }
                      }

                      else
                      {
                        LOBYTE(v509[0]) = BYTE2(v168) | 0xC0;
                        BYTE1(v509[0]) = BYTE1(v168);
                        BYTE2(v509[0]) = v168;
                        v169 = 3;
                      }
                    }

                    else
                    {
                      LOBYTE(v509[0]) = BYTE1(v168) | 0x80;
                      BYTE1(v509[0]) = v168;
                      v169 = 2;
                    }
                  }

                  else
                  {
                    LOBYTE(v509[0]) = v168;
                    v169 = 1;
                  }

                  v170 = v509;
                  v171 = v169;
                  do
                  {
                    while (1)
                    {
                      v173 = *(v11 + 32);
                      v174 = *(v11 + 40);
                      v175 = v174 - v173 >= v171 ? v171 : v174 - v173;
                      if (v174 == v173)
                      {
                        break;
                      }

                      memcpy((*(v11 + 48) + v173), v170, v175);
                      v176 = *(v11 + 40);
                      v177 = *(v11 + 32) + v175;
                      *(v11 + 32) = v177;
                      v170 = (v170 + v175);
                      if (v177 == v176)
                      {
                        break;
                      }

                      v171 -= v175;
                      if (!v171)
                      {
                        goto LABEL_292;
                      }
                    }

                    PayloadPulsesWrite(v11);
                    if (*(v11 + 60))
                    {
                      v172 = 1;
                    }

                    else
                    {
                      v172 = v171 == v175;
                    }

                    v171 -= v175;
                  }

                  while (!v172);
LABEL_292:
                  *(v167 + 20) = v166;
                  v178 = v162[2];
                  v179 = v467;
                  v180 = v470;
                  LOWORD(v509[1]) = 0;
                  v509[0] = 0;
                  if (*(&v470 + 1) >= v471)
                  {
                    if (!_PayloadScannerReadNextChar(v466, v509))
                    {
                      goto LABEL_374;
                    }

                    v181 = LOBYTE(v509[0]);
                    if ((v509[0] & 0x80) != 0)
                    {
                      goto LABEL_297;
                    }

LABEL_294:
                    v182 = 0;
                    v183 = *(&v470 + 1);
LABEL_314:
                    __memcpy_chk();
                    *(&v470 + 1) = v183 + v182;
                  }

                  else
                  {
                    ++*(&v470 + 1);
                    LOBYTE(v509[0]) = **(&v180 + 1);
                    v181 = LOBYTE(v509[0]);
                    if ((v509[0] & 0x80) == 0)
                    {
                      goto LABEL_294;
                    }

LABEL_297:
                    if (v181 >= 0xC0)
                    {
                      if (v181 >= 0xE0)
                      {
                        if (v181 >= 0xF0)
                        {
                          if (v181 >= 0xF8)
                          {
                            if (v181 >= 0xFC)
                            {
                              if (v181 >= 0xFE)
                              {
                                if (v181 == 255)
                                {
                                  v184 = 8;
                                }

                                else
                                {
                                  v184 = 7;
                                }
                              }

                              else
                              {
                                v184 = 6;
                              }
                            }

                            else
                            {
                              v184 = 5;
                            }
                          }

                          else
                          {
                            v184 = 4;
                          }
                        }

                        else
                        {
                          v184 = 3;
                        }
                      }

                      else
                      {
                        v184 = 2;
                      }
                    }

                    else
                    {
                      v184 = 1;
                    }

                    v183 = *(&v470 + 1);
                    if ((v471 - DWORD2(v470)) >= v184)
                    {
                      v182 = v184;
                      goto LABEL_314;
                    }

                    if ((_PayloadScannerReadBytes(v466, v509 + 1, v184) & 1) == 0)
                    {
LABEL_374:
                      VInt64_2873 = 0;
                      goto LABEL_342;
                    }
                  }

                  *v500 = 0;
                  VInt64_2873 = v2_readVInt64_2873(v509, v500);
                  if (VInt64_2873)
                  {
                    LOWORD(v509[1]) = 0;
                    v509[0] = 0;
                    v186 = *(&v470 + 1);
                    if (*(&v470 + 1) >= v471)
                    {
                      if (!_PayloadScannerReadNextChar(v466, v509))
                      {
                        goto LABEL_374;
                      }

                      v187 = LOBYTE(v509[0]);
                      if ((v509[0] & 0x80) != 0)
                      {
                        goto LABEL_323;
                      }

LABEL_318:
                      v188 = 0;
                      v189 = *(&v470 + 1);
LABEL_340:
                      __memcpy_chk();
                      *(&v470 + 1) = v189 + v188;
                    }

                    else
                    {
                      ++*(&v470 + 1);
                      v187 = *v186;
                      LOBYTE(v509[0]) = v187;
                      if ((v187 & 0x80) == 0)
                      {
                        goto LABEL_318;
                      }

LABEL_323:
                      if (v187 >= 0xC0)
                      {
                        if (v187 >= 0xE0)
                        {
                          if (v187 >= 0xF0)
                          {
                            if (v187 >= 0xF8)
                            {
                              if (v187 >= 0xFC)
                              {
                                if (v187 >= 0xFE)
                                {
                                  if (v187 == 255)
                                  {
                                    v190 = 8;
                                  }

                                  else
                                  {
                                    v190 = 7;
                                  }
                                }

                                else
                                {
                                  v190 = 6;
                                }
                              }

                              else
                              {
                                v190 = 5;
                              }
                            }

                            else
                            {
                              v190 = 4;
                            }
                          }

                          else
                          {
                            v190 = 3;
                          }
                        }

                        else
                        {
                          v190 = 2;
                        }
                      }

                      else
                      {
                        v190 = 1;
                      }

                      v189 = *(&v470 + 1);
                      if ((v471 - DWORD2(v470)) >= v190)
                      {
                        v188 = v190;
                        goto LABEL_340;
                      }

                      if (!_PayloadScannerReadBytes(v466, v509 + 1, v190))
                      {
                        goto LABEL_374;
                      }
                    }

                    *v500 = 0;
                    VInt64_2873 = v2_readVInt64_2873(v509, v500);
                  }

LABEL_342:
                  v191 = *(&v470 + 1);
                  v192 = v467;
                  v193 = v179 + v178 + *(&v180 + 1) - v180;
                  v194 = v193 - v467;
                  if (v193 >= v467 && v467 - v470 + v471 >= v193)
                  {
                    *(&v470 + 1) = v470 + v194;
                    v197 = v467 - v470;
                    v196 = v470 + v194;
                    v198 = v471;
                    v195 = v467;
                  }

                  else
                  {
                    v195 = v179 + v178 + *(&v180 + 1) - v180;
                    v196 = v470;
                    *(&v470 + 1) = v470;
                    *&v471 = v470;
                    v197 = v193 - v470;
                    v467 = v195;
                    v198 = v470;
                  }

                  if (v196 + v197 != v193)
                  {
                    goto LABEL_759;
                  }

                  v199 = v191 - v470 + v192;
                  v200 = v199;
                  v201 = v193 - v199;
                  if (VInt64_2873 <= 1)
                  {
                    if (v201 <= 2)
                    {
                      v427 = __si_assert_copy_extra_2708(0);
                      v403 = v427;
                      v428 = "";
                      if (v427)
                      {
                        v428 = v427;
                      }

                      v440 = "positionLen > 2";
                      v442 = v428;
                      v405 = 962;
                      goto LABEL_790;
                    }

                    if (!v459)
                    {
                      v209 = v193 - v199;
                      memset(v509, 0, 32);
                      v210 = writeVInt64(v509, 0, v193 - v199);
                      v211 = v210;
                      if (v210)
                      {
                        v212 = v509;
                        do
                        {
                          while (1)
                          {
                            v214 = *(v11 + 32);
                            v215 = *(v11 + 40);
                            v216 = v215 - v214 >= v211 ? v211 : v215 - v214;
                            if (v215 == v214)
                            {
                              break;
                            }

                            memcpy((*(v11 + 48) + v214), v212, v216);
                            v217 = *(v11 + 40);
                            v218 = *(v11 + 32) + v216;
                            *(v11 + 32) = v218;
                            v212 = (v212 + v216);
                            if (v218 == v217)
                            {
                              break;
                            }

                            v211 -= v216;
                            if (!v211)
                            {
                              goto LABEL_367;
                            }
                          }

                          PayloadPulsesWrite(v11);
                          if (*(v11 + 60))
                          {
                            v213 = 1;
                          }

                          else
                          {
                            v213 = v211 == v216;
                          }

                          v211 -= v216;
                        }

                        while (!v213);
                      }

LABEL_367:
                      PayloadPulsesWriteBytesFromScanner(v11, v466, v200, v209);
                      goto LABEL_691;
                    }

                    v202 = v199 - v195;
                    if (v199 < v195 || v197 + v198 < v199)
                    {
                      v203 = v470;
                      v197 = v199 - v470;
                      *&v471 = v470;
                      v467 = v199;
                      v204 = v470;
                      v205 = v470;
                    }

                    else
                    {
                      v203 = v470 + v202;
                      v204 = (v470 + v202);
                      v205 = v198;
                    }

                    *(&v470 + 1) = v204;
                    if (v203 + v197 == v199)
                    {
                      BYTE4(v509[0]) = 0;
                      LODWORD(v509[0]) = 0;
                      v449 = v179 + v178 + *(&v180 + 1) - v180;
                      if (v204 >= v205)
                      {
                        if (!_PayloadScannerReadNextChar(v466, v509))
                        {
                          goto LABEL_473;
                        }

                        v219 = LOBYTE(v509[0]);
                        if ((v509[0] & 0x80) != 0)
                        {
                          goto LABEL_377;
                        }

LABEL_372:
                        v220 = 0;
                        v221 = *(&v470 + 1);
LABEL_386:
                        __memcpy_chk();
                        *(&v470 + 1) = v221 + v220;
                        v223 = v219;
                      }

                      else
                      {
                        *(&v470 + 1) = v204 + 1;
                        LOBYTE(v509[0]) = *v204;
                        v219 = LOBYTE(v509[0]);
                        if ((v509[0] & 0x80) == 0)
                        {
                          goto LABEL_372;
                        }

LABEL_377:
                        if (v219 >= 0xC0)
                        {
                          if (v219 >= 0xE0)
                          {
                            if (v219 < 0xF0)
                            {
                              v222 = 3;
                            }

                            else
                            {
                              v222 = 4;
                            }
                          }

                          else
                          {
                            v222 = 2;
                          }
                        }

                        else
                        {
                          v222 = 1;
                        }

                        v221 = *(&v470 + 1);
                        if ((v471 - DWORD2(v470)) >= v222)
                        {
                          v220 = v222;
                          goto LABEL_386;
                        }

                        if (!_PayloadScannerReadBytes(v466, v509 + 1, v222))
                        {
                          goto LABEL_473;
                        }

                        v223 = LOBYTE(v509[0]);
                      }

                      if ((v223 & 0x80) != 0)
                      {
                        if (v223 > 0xBF)
                        {
                          if (v223 > 0xDF)
                          {
                            if (v223 > 0xEF)
                            {
                              v223 = *(v509 + 1);
                            }

                            else
                            {
                              v223 = ((v223 & 0xF) << 24) | (BYTE1(v509[0]) << 16) | (BYTE2(v509[0]) << 8) | BYTE3(v509[0]);
                            }
                          }

                          else
                          {
                            v223 = ((v223 & 0x1F) << 16) | (BYTE1(v509[0]) << 8) | BYTE2(v509[0]);
                          }
                        }

                        else
                        {
                          v223 = BYTE1(v509[0]) | ((v223 & 0x3F) << 8);
                        }
                      }

                      if (!v223)
                      {
                        goto LABEL_473;
                      }

                      v224 = v223;
LABEL_397:
                      v225 = (*(&v470 + 1) - v470 + v467);
                      LOBYTE(v509[0]) = 0;
                      v226 = *(&v470 + 1);
                      while (1)
                      {
                        if (v226 >= v471)
                        {
                          if (!_PayloadScannerReadNextChar(v466, v509) || (v227 = LOBYTE(v509[0]), !LOBYTE(v509[0])))
                          {
LABEL_428:
                            v240 = v470;
                            v241 = v467;
                            if (*v459 > v224 && CFBitVectorGetBitAtIndex(*(v459 + 16), v224))
                            {
                              if (scratch_file_grow(v146, 2))
                              {
                                *(*(v146 + 24) + *(v146 + 8)) = 1;
                                v242 = 2;
                                goto LABEL_440;
                              }

LABEL_473:
                              if (scratch_file_grow(v146, 1))
                              {
                                *(*(v146 + 24) + (*(v146 + 8))++) = 0;
                              }

                              if (v467 + *(&v470 + 1) - v470 != v449 && !*(v146 + 32))
                              {
                                v437 = __si_assert_copy_extra_2708(0);
                                v403 = v437;
                                v438 = "";
                                if (v437)
                                {
                                  v438 = v437;
                                }

                                v440 = "processed==positionLen||scratch->err";
                                v442 = v438;
                                v405 = 988;
                                goto LABEL_790;
                              }

                              memset(v509, 0, 32);
                              v263 = *(v146 + 8);
                              v264 = writeVInt64(v509, 0, v263);
                              v265 = v264;
                              if (v264)
                              {
                                v266 = v509;
                                do
                                {
                                  while (1)
                                  {
                                    v268 = *(v11 + 32);
                                    v269 = *(v11 + 40);
                                    v270 = v269 - v268 >= v265 ? v265 : v269 - v268;
                                    if (v269 == v268)
                                    {
                                      break;
                                    }

                                    memcpy((*(v11 + 48) + v268), v266, v270);
                                    v271 = *(v11 + 40);
                                    v272 = *(v11 + 32) + v270;
                                    *(v11 + 32) = v272;
                                    v266 = (v266 + v270);
                                    if (v272 == v271)
                                    {
                                      break;
                                    }

                                    v265 -= v270;
                                    if (!v265)
                                    {
                                      goto LABEL_489;
                                    }
                                  }

                                  PayloadPulsesWrite(v11);
                                  if (*(v11 + 60))
                                  {
                                    v267 = 1;
                                  }

                                  else
                                  {
                                    v267 = v265 == v270;
                                  }

                                  v265 -= v270;
                                }

                                while (!v267);
LABEL_489:
                                v273 = *(v146 + 8);
                                if (!v273)
                                {
                                  goto LABEL_691;
                                }
                              }

                              else
                              {
                                v273 = v263;
                                if (!v263)
                                {
                                  goto LABEL_691;
                                }
                              }

                              v274 = *(v146 + 24);
                              do
                              {
                                while (1)
                                {
                                  v276 = *(v11 + 32);
                                  v277 = *(v11 + 40);
                                  v278 = v277 - v276 >= v273 ? v273 : v277 - v276;
                                  if (v277 == v276)
                                  {
                                    break;
                                  }

                                  memcpy((*(v11 + 48) + v276), v274, v278);
                                  v279 = *(v11 + 40);
                                  v280 = *(v11 + 32) + v278;
                                  *(v11 + 32) = v280;
                                  v274 += v278;
                                  if (v280 == v279)
                                  {
                                    break;
                                  }

                                  v273 -= v278;
                                  if (!v273)
                                  {
                                    goto LABEL_691;
                                  }
                                }

                                PayloadPulsesWrite(v11);
                                if (*(v11 + 60))
                                {
                                  v275 = 1;
                                }

                                else
                                {
                                  v275 = v273 == v278;
                                }

                                v273 -= v278;
                              }

                              while (!v275);
                              goto LABEL_691;
                            }

                            v243 = v241 + *(&v240 + 1) - &v225[v240];
                            v242 = v243;
                            if (!scratch_file_grow(v146, v243))
                            {
                              goto LABEL_473;
                            }

                            if (v225 >= v467 && v467 - v470 + v471 >= v225)
                            {
                              v244 = &v225[v470 - v467];
                              *(&v470 + 1) = v244;
                              v247 = v244;
                              v245 = v470;
                              v246 = v471;
                              v248 = v467;
                            }

                            else
                            {
                              *(&v470 + 1) = v470;
                              *&v471 = v470;
                              v244 = v470;
                              v245 = v470;
                              v246 = v470;
                              v247 = v470;
                              v248 = v225;
                              v467 = v225;
                            }

                            if (&v244[v248 - v245] != v225)
                            {
                              break;
                            }

                            v249 = v244;
                            v250 = *(v146 + 24);
                            v251 = *(v146 + 8);
                            if ((v246 - v249) < v243)
                            {
                              _PayloadScannerReadBytes(v466, (v250 + v251), v243);
                            }

                            else
                            {
                              memcpy((v250 + v251), v247, v243);
                              *(&v470 + 1) += v243;
                            }

LABEL_440:
                            *(v146 + 8) += v242;
                            BYTE4(v509[0]) = 0;
                            LODWORD(v509[0]) = 0;
                            v252 = *(&v470 + 1);
                            if (*(&v470 + 1) < v471)
                            {
                              ++*(&v470 + 1);
                              v253 = *v252;
                              LOBYTE(v509[0]) = v253;
                              v254 = v253;
                              if ((v253 & 0x80) == 0)
                              {
                                goto LABEL_442;
                              }

LABEL_445:
                              v257 = 2;
                              v258 = 3;
                              if (v254 >= 0xF0)
                              {
                                v258 = 4;
                              }

                              if (v254 >= 0xE0)
                              {
                                v257 = v258;
                              }

                              if (v254 >= 0xC0)
                              {
                                v255 = v257;
                              }

                              else
                              {
                                v255 = 1;
                              }

                              v256 = *(&v470 + 1);
                              if ((v471 - DWORD2(v470)) >= v255)
                              {
                                goto LABEL_453;
                              }

                              if (_PayloadScannerReadBytes(v466, v509 + 1, v255))
                              {
                                v259 = LOBYTE(v509[0]);
                                if ((v509[0] & 0x80) != 0)
                                {
                                  goto LABEL_457;
                                }

                                goto LABEL_464;
                              }

LABEL_469:
                              v259 = 0;
                              goto LABEL_464;
                            }

                            if (!_PayloadScannerReadNextChar(v466, v509))
                            {
                              goto LABEL_469;
                            }

                            v254 = LOBYTE(v509[0]);
                            if ((v509[0] & 0x80) != 0)
                            {
                              goto LABEL_445;
                            }

LABEL_442:
                            v255 = 0;
                            v256 = *(&v470 + 1);
LABEL_453:
                            __memcpy_chk();
                            *(&v470 + 1) = v256 + v255;
                            v259 = v254;
                            if ((v254 & 0x80) != 0)
                            {
LABEL_457:
                              if (v259 > 0xBF)
                              {
                                if (v259 > 0xDF)
                                {
                                  if (v259 > 0xEF)
                                  {
                                    v259 = *(v509 + 1);
                                  }

                                  else
                                  {
                                    v259 = ((v259 & 0xF) << 24) | (BYTE1(v509[0]) << 16) | (BYTE2(v509[0]) << 8) | BYTE3(v509[0]);
                                  }
                                }

                                else
                                {
                                  v259 = ((v259 & 0x1F) << 16) | (BYTE1(v509[0]) << 8) | BYTE2(v509[0]);
                                }
                              }

                              else
                              {
                                v259 = BYTE1(v509[0]) | ((v259 & 0x3F) << 8);
                              }
                            }

LABEL_464:
                            v260 = v259;
                            v261 = v224 >= v259;
                            v262 = v224 - v259;
                            if (v262 == 0 || !v261)
                            {
                              v425 = __si_assert_copy_extra_2708(0);
                              v403 = v425;
                              v426 = "";
                              if (v425)
                              {
                                v426 = v425;
                              }

                              v440 = "!delta||delta<docId";
                              v442 = v426;
                              v405 = 981;
                              goto LABEL_790;
                            }

                            if (!v260)
                            {
                              goto LABEL_473;
                            }

                            v224 = v262;
                            if (!v262)
                            {
                              goto LABEL_473;
                            }

                            goto LABEL_397;
                          }
                        }

                        else
                        {
                          *(&v470 + 1) = v226 + 1;
                          LOBYTE(v509[0]) = *v226;
                          v227 = LOBYTE(v509[0]);
                          if (!LOBYTE(v509[0]))
                          {
                            goto LABEL_428;
                          }
                        }

                        if ((v227 & 0x80) != 0)
                        {
                          v228 = 2;
                          v229 = 3;
                          v230 = 4;
                          v231 = 5;
                          v232 = 6;
                          v233 = 7;
                          if (v227 == 255)
                          {
                            v233 = 8;
                          }

                          if (v227 >= 0xFE)
                          {
                            v232 = v233;
                          }

                          if (v227 >= 0xFC)
                          {
                            v231 = v232;
                          }

                          if (v227 >= 0xF8)
                          {
                            v230 = v231;
                          }

                          if (v227 >= 0xF0)
                          {
                            v229 = v230;
                          }

                          if (v227 >= 0xE0)
                          {
                            v228 = v229;
                          }

                          if (v227 >= 0xC0)
                          {
                            v234 = v228;
                          }

                          else
                          {
                            v234 = 1;
                          }

                          v226 = (*(&v470 + 1) + v234);
                          if (v471 < *(&v470 + 1) + v234)
                          {
                            v235 = v467;
                            v236 = v234 + *(&v470 + 1) + v467 - v470;
                            v237 = v236 - v467;
                            if (v236 >= v467 && v467 + v471 - v470 >= v236)
                            {
                              v239 = v470 + v237;
                              *(&v470 + 1) = v470 + v237;
                              v238 = (v470 + v237);
                            }

                            else
                            {
                              v235 = v236;
                              *(&v470 + 1) = v470;
                              *&v471 = v470;
                              v238 = v470;
                              v467 = v236;
                              v239 = v470;
                            }

                            v226 = v238;
                            if (v239 - v470 + v235 != v236)
                            {
                              break;
                            }
                          }

                          else
                          {
                            *(&v470 + 1) += v234;
                          }
                        }

                        else
                        {
                          v226 = *(&v470 + 1);
                        }
                      }
                    }

LABEL_759:
                    v408 = __si_assert_copy_extra_2708(0);
                    v395 = v408;
                    v409 = "";
                    if (v408)
                    {
                      v409 = v408;
                    }

                    v439 = "PayloadScannerPosition(scanner) == position";
                    v441 = v409;
                    v397 = 100;
                    goto LABEL_768;
                  }

                  v448 = v179 + v178 + *(&v180 + 1) - v180;
                  *(v454 + 12) = 0;
                  *(v454 + 16) = 0;
                  if (v201 < 3)
                  {
                    goto LABEL_505;
                  }

                  v206 = v201 - 1;
                  v207 = v454;
                  v208 = v199;
LABEL_504:
                  PositionRunInfoListAdd(v207, v208, v206);
LABEL_505:
                  v281 = VInt64_2873 >> 1;
                  v509[0] = v481;
                  v509[1] = VInt64_2873 >> 1;
                  v282 = storageResolvePtr(v481, VInt64_2873 >> 1, 20, 0);
                  v509[4] = 0;
                  v509[2] = v282;
                  v509[3] = 0;
                  VInt64_2873 = v2_readVInt64_2873(v282, &v509[3]);
                  if (VInt64_2873)
                  {
                    v412 = __si_assert_copy_extra_2708(0);
                    v395 = v412;
                    v413 = "";
                    if (v412)
                    {
                      v413 = v412;
                    }

                    v439 = "!(next & 0x01)";
                    v441 = v413;
                    v397 = 862;
                    goto LABEL_768;
                  }

                  v283 = v509[3];
                  v284 = v509[3] + 1;
                  v285 = v509[2] + v509[3];
                  v286 = *(v509[2] + v509[3]);
                  if ((*(v509[2] + v509[3]) & 0x80000000) == 0)
                  {
                    if (*(v509[2] + v509[3]))
                    {
                      goto LABEL_508;
                    }

                    goto LABEL_513;
                  }

                  if (v286 <= 0xBF)
                  {
                    v286 = *(v509[2] + v284) | ((v286 & 0x3F) << 8);
                    v284 = v509[3] + 2;
                    if (v286)
                    {
                      goto LABEL_508;
                    }

                    goto LABEL_513;
                  }

                  if (v286 <= 0xDF)
                  {
                    v286 = ((v286 & 0x1F) << 16) | (*(v509[2] + v284) << 8) | *(v285 + 2);
                    v284 = v509[3] + 3;
                    if (v286)
                    {
                      goto LABEL_508;
                    }

                    goto LABEL_513;
                  }

                  if (v286 <= 0xEF)
                  {
                    v286 = ((v286 & 0xF) << 24) | (*(v509[2] + v284) << 16) | (*(v285 + 2) << 8) | *(v285 + 3);
                    v284 = v509[3] + 4;
                    if (v286)
                    {
                      goto LABEL_508;
                    }

LABEL_513:
                    v291 = v284 + 1;
                    v292 = v509[2] + v284;
                    v293 = *(v509[2] + v284);
                    if (*(v509[2] + v284) < 0)
                    {
                      if (v293 > 0xBF)
                      {
                        if (v293 > 0xDF)
                        {
                          if (v293 > 0xEF)
                          {
                            v294 = *(v509[2] + v291);
                            v291 = v284 + 5;
                          }

                          else
                          {
                            v294 = ((v293 & 0xF) << 24) | (*(v509[2] + v291) << 16) | (*(v292 + 2) << 8) | *(v292 + 3);
                            v291 = v284 + 4;
                          }
                        }

                        else
                        {
                          v294 = ((v293 & 0x1F) << 16) | (*(v509[2] + v291) << 8) | *(v292 + 2);
                          v291 = v284 + 3;
                        }
                      }

                      else
                      {
                        v294 = *(v509[2] + v291) | ((v293 & 0x3F) << 8);
                        v291 = v284 + 2;
                      }
                    }

                    else
                    {
                      v294 = *(v509[2] + v284);
                    }

                    v313 = v294;
                    v303 = v291;
                    if (v313)
                    {
                      v421 = __si_assert_copy_extra_2708(0);
                      v403 = v421;
                      v422 = "";
                      if (v421)
                      {
                        v422 = v421;
                      }

                      v440 = "position == 0";
                      v442 = v422;
                      v405 = 873;
                      goto LABEL_790;
                    }

LABEL_578:
                    v314 = v303 - v283;
                    v206 = v314 - 1;
                    if (v314 <= 1)
                    {
                      v415 = __si_assert_copy_extra_2708(0);
                      v403 = v415;
                      v416 = "";
                      if (v415)
                      {
                        v416 = v415;
                      }

                      v440 = "data_len >= 2";
                      v442 = v416;
                      v405 = 1015;
                      goto LABEL_790;
                    }

                    if (!VInt64_2873)
                    {
                      if (v314 == 2)
                      {
                        v433 = __si_assert_copy_extra_2708(0);
                        v403 = v433;
                        v434 = "";
                        if (v433)
                        {
                          v434 = v433;
                        }

                        v440 = "data_len > 2";
                        v442 = v434;
                        v405 = 1017;
                        goto LABEL_790;
                      }

                      v315 = v454;
                      PositionRunInfoListAdd(v454, v283 + v281, v314);
                      if (!v459)
                      {
                        memset(v509, 0, 32);
                        v350 = writeVInt64(v509, 0, *(v454 + 16));
                        v351 = v350;
                        if (v350)
                        {
                          v352 = v509;
                          do
                          {
                            while (1)
                            {
                              v354 = *(v11 + 32);
                              v355 = *(v11 + 40);
                              v356 = v355 - v354 >= v351 ? v351 : v355 - v354;
                              if (v355 == v354)
                              {
                                break;
                              }

                              memcpy((*(v11 + 48) + v354), v352, v356);
                              v357 = *(v11 + 40);
                              v358 = *(v11 + 32) + v356;
                              *(v11 + 32) = v358;
                              v352 = (v352 + v356);
                              if (v358 == v357)
                              {
                                break;
                              }

                              v351 -= v356;
                              if (!v351)
                              {
                                goto LABEL_663;
                              }
                            }

                            PayloadPulsesWrite(v11);
                            if (*(v11 + 60))
                            {
                              v353 = 1;
                            }

                            else
                            {
                              v353 = v351 == v356;
                            }

                            v351 -= v356;
                          }

                          while (!v353);
                        }

LABEL_663:
                        v359 = v454;
                        if (!*(v454 + 12))
                        {
                          goto LABEL_691;
                        }

                        v360 = 0;
                        while (1)
                        {
                          v361 = storageResolvePtr(v481, *(*v359 + 16 * v360), *(*v359 + 16 * v360 + 8), 1);
                          if (*(*v359 + 16 * v360 + 8))
                          {
                            v362 = v361;
                            v363 = *(*v359 + 16 * v360 + 8);
                            do
                            {
                              while (1)
                              {
                                v365 = *(v11 + 32);
                                v366 = *(v11 + 40);
                                v367 = v366 - v365 >= v363 ? v363 : v366 - v365;
                                if (v366 == v365)
                                {
                                  break;
                                }

                                memcpy((*(v11 + 48) + v365), v362, v367);
                                v368 = *(v11 + 40);
                                v369 = *(v11 + 32) + v367;
                                *(v11 + 32) = v369;
                                v362 += v367;
                                if (v369 == v368)
                                {
                                  break;
                                }

                                v363 -= v367;
                                if (!v363)
                                {
                                  goto LABEL_665;
                                }
                              }

                              PayloadPulsesWrite(v11);
                              if (*(v11 + 60))
                              {
                                v364 = 1;
                              }

                              else
                              {
                                v364 = v363 == v367;
                              }

                              v363 -= v367;
                            }

                            while (!v364);
                          }

LABEL_665:
                          ++v360;
                          v359 = v454;
                          if (v360 >= *(v454 + 12))
                          {
                            goto LABEL_691;
                          }
                        }
                      }

                      if (*(v454 + 12))
                      {
                        v316 = 0;
                        do
                        {
                          v317 = v316;
                          v318 = (*v315 + 16 * v316);
                          v319 = v318[1];
                          v320 = storageResolvePtr(v481, *v318, v319, 1);
                          v321 = v320;
                          v322 = v320;
                          v323 = *v320;
                          v444 = v317;
                          if ((v323 & 0x80) != 0)
                          {
                            if (v323 > 0xBF)
                            {
                              if (v323 > 0xDF)
                              {
                                if (v323 > 0xEF)
                                {
                                  v323 = *(v320 + 1);
                                  v324 = 5;
                                  if (v323)
                                  {
LABEL_600:
                                    v325 = v323;
                                    v326 = v324;
                                    while (1)
                                    {
                                      v327 = v326;
                                      if (v326 < v319)
                                      {
                                        v328 = v326;
                                        while (1)
                                        {
                                          v330 = v322[v328];
                                          if (!v322[v328])
                                          {
                                            break;
                                          }

                                          if ((v330 & 0x80) != 0)
                                          {
                                            v331 = 3;
                                            v332 = 4;
                                            if (v330 >= 0xF0)
                                            {
                                              v332 = 5;
                                            }

                                            if (v330 >= 0xE0)
                                            {
                                              v331 = v332;
                                            }

                                            if (v330 >= 0xC0)
                                            {
                                              v329 = v331;
                                            }

                                            else
                                            {
                                              v329 = 2;
                                            }
                                          }

                                          else
                                          {
                                            v329 = 1;
                                          }

                                          v328 += v329;
                                          v327 = v328;
                                          if (v328 >= v319)
                                          {
                                            goto LABEL_615;
                                          }
                                        }

                                        v327 = v328 + 1;
                                      }

LABEL_615:
                                      if (*v459 > v325 && CFBitVectorGetBitAtIndex(*(v459 + 16), v325))
                                      {
                                        if (!scratch_file_grow(v146, 2))
                                        {
                                          goto LABEL_586;
                                        }

                                        *(*(v146 + 24) + *(v146 + 8)) = 1;
                                        v333 = 2;
                                      }

                                      else
                                      {
                                        v333 = v327 - v326;
                                        if (!scratch_file_grow(v146, v327 - v326))
                                        {
                                          goto LABEL_586;
                                        }

                                        memcpy((*(v146 + 24) + *(v146 + 8)), &v321[v326], v327 - v326);
                                      }

                                      *(v146 + 8) += v333;
                                      v334 = v327 + 1;
                                      v335 = &v321[v327];
                                      v336 = v321[v327];
                                      if (v321[v327] < 0)
                                      {
                                        if (v336 > 0xBF)
                                        {
                                          if (v336 > 0xDF)
                                          {
                                            if (v336 > 0xEF)
                                            {
                                              v336 = *&v322[v334];
                                              v334 = v327 + 5;
                                            }

                                            else
                                            {
                                              v336 = ((v336 & 0xF) << 24) | (v322[v334] << 16) | (v335[2] << 8) | v335[3];
                                              v334 = v327 + 4;
                                            }
                                          }

                                          else
                                          {
                                            v336 = ((v336 & 0x1F) << 16) | (v322[v334] << 8) | v335[2];
                                            v334 = v327 + 3;
                                          }
                                        }

                                        else
                                        {
                                          v336 = v322[v334] | ((v336 & 0x3F) << 8);
                                          v334 = v327 + 2;
                                        }
                                      }

                                      v337 = v336;
                                      v261 = v325 >= v336;
                                      v338 = v325 - v336;
                                      if (v338 == 0 || !v261)
                                      {
                                        break;
                                      }

                                      if (v337)
                                      {
                                        v325 = v338;
                                        v326 = v334;
                                        if (v338)
                                        {
                                          continue;
                                        }
                                      }

                                      goto LABEL_586;
                                    }

                                    v400 = __si_assert_copy_extra_2708(0);
                                    v395 = v400;
                                    v401 = "";
                                    if (v400)
                                    {
                                      v401 = v400;
                                    }

                                    v439 = "!delta||delta<docId";
                                    v441 = v401;
                                    v397 = 1061;
LABEL_768:
                                    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", v397, v439, v441);
                                    free(v395);
                                    if (__valid_fs(-1))
                                    {
                                      v414 = 2989;
                                    }

                                    else
                                    {
                                      v414 = 3072;
                                    }

                                    *v414 = -559038737;
                                    abort();
                                  }
                                }

                                else
                                {
                                  v323 = ((v323 & 0xF) << 24) | (v320[1] << 16) | (v320[2] << 8) | v320[3];
                                  v324 = 4;
                                  if (v323)
                                  {
                                    goto LABEL_600;
                                  }
                                }
                              }

                              else
                              {
                                v323 = ((v323 & 0x1F) << 16) | (v320[1] << 8) | v320[2];
                                v324 = 3;
                                if (v323)
                                {
                                  goto LABEL_600;
                                }
                              }
                            }

                            else
                            {
                              v324 = 2;
                              v323 = v322[1] | ((v323 & 0x3F) << 8);
                              if (v323)
                              {
                                goto LABEL_600;
                              }
                            }
                          }

                          else
                          {
                            v324 = 1;
                            if (v323)
                            {
                              goto LABEL_600;
                            }
                          }

LABEL_586:
                          v316 = v444 + 1;
                          v315 = v454;
                        }

                        while (v444 + 1 < *(v454 + 12));
                      }

                      if (scratch_file_grow(v146, 1))
                      {
                        *(*(v146 + 24) + (*(v146 + 8))++) = 0;
                      }

                      if (v467 + *(&v470 + 1) - v470 != v448)
                      {
                        v435 = __si_assert_copy_extra_2708(0);
                        v395 = v435;
                        v436 = "";
                        if (v435)
                        {
                          v436 = v435;
                        }

                        v439 = "processed==positionLen";
                        v441 = v436;
                        v397 = 1069;
                        goto LABEL_768;
                      }

                      memset(v509, 0, 32);
                      v339 = *(v146 + 8);
                      v340 = writeVInt64(v509, 0, v339);
                      v341 = v340;
                      if (v340)
                      {
                        v342 = v509;
                        do
                        {
                          while (1)
                          {
                            v344 = *(v11 + 32);
                            v345 = *(v11 + 40);
                            v346 = v345 - v344 >= v341 ? v341 : v345 - v344;
                            if (v345 == v344)
                            {
                              break;
                            }

                            memcpy((*(v11 + 48) + v344), v342, v346);
                            v347 = *(v11 + 40);
                            v348 = *(v11 + 32) + v346;
                            *(v11 + 32) = v348;
                            v342 = (v342 + v346);
                            if (v348 == v347)
                            {
                              break;
                            }

                            v341 -= v346;
                            if (!v341)
                            {
                              goto LABEL_649;
                            }
                          }

                          PayloadPulsesWrite(v11);
                          if (*(v11 + 60))
                          {
                            v343 = 1;
                          }

                          else
                          {
                            v343 = v341 == v346;
                          }

                          v341 -= v346;
                        }

                        while (!v343);
LABEL_649:
                        v349 = *(v146 + 8);
                        if (!v349)
                        {
                          goto LABEL_691;
                        }
                      }

                      else
                      {
                        v349 = v339;
                        if (!v339)
                        {
                          goto LABEL_691;
                        }
                      }

                      v370 = *(v146 + 24);
                      do
                      {
                        while (1)
                        {
                          v372 = *(v11 + 32);
                          v373 = *(v11 + 40);
                          v374 = v373 - v372 >= v349 ? v349 : v373 - v372;
                          if (v373 == v372)
                          {
                            break;
                          }

                          memcpy((*(v11 + 48) + v372), v370, v374);
                          v375 = *(v11 + 40);
                          v376 = *(v11 + 32) + v374;
                          *(v11 + 32) = v376;
                          v370 += v374;
                          if (v376 == v375)
                          {
                            break;
                          }

                          v349 -= v374;
                          if (!v349)
                          {
                            goto LABEL_691;
                          }
                        }

                        PayloadPulsesWrite(v11);
                        if (*(v11 + 60))
                        {
                          v371 = 1;
                        }

                        else
                        {
                          v371 = v349 == v374;
                        }

                        v349 -= v374;
                      }

                      while (!v371);
LABEL_691:
                      v96 = v452;
                      if (*(v11 + 60))
                      {
                        goto LABEL_699;
                      }

                      if (!v459)
                      {
                        goto LABEL_263;
                      }

                      v159 = *(v146 + 32);
                      if (!v159)
                      {
                        v377 = *(v146 + 8);
                        if (v377 > 0x100000)
                        {
                          v378 = *(v146 + 24);
                          if (_gSystemStatusBool == 1)
                          {
                            pthread_mutex_lock(&_gSystemStatusLock);
                            if (_gSystemStatusBool == 1)
                            {
                              do
                              {
                                pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
                              }

                              while ((_gSystemStatusBool & 1) != 0);
                            }

                            pthread_mutex_unlock(&_gSystemStatusLock);
                          }

                          msync(v378, v377, 2);
                          v96 = v452;
                        }

                        *(v146 + 8) = 0;
LABEL_263:
                        v160 = v450 + 1;
                        if (v450 + 1 != v451)
                        {
                          continue;
                        }

LABEL_699:
                        if (v459)
                        {
                          v159 = *(v146 + 32);
                          v122 = v146;
                          v379 = v146;
                          if (!v159)
                          {
                            goto LABEL_705;
                          }

                          goto LABEL_703;
                        }

LABEL_710:
                        v32 = v96;
                        v37 = v94;
                        goto LABEL_711;
                      }

                      v122 = v146;
LABEL_703:
                      v379 = v122;
                      if (!*(v11 + 60))
                      {
                        *(v11 + 60) = v159;
                      }

LABEL_705:
                      v380 = *(v379 + 24);
                      if (v380 != -1)
                      {
                        munmap(v380, *v379);
                      }

                      v381 = *(v379 + 16);
                      if (v381 != -1)
                      {
                        close(v381);
                      }

                      free(v379);
                      goto LABEL_710;
                    }

                    if (v314 != 2)
                    {
                      v208 = v283 + v281;
                      v207 = v454;
                      goto LABEL_504;
                    }

                    goto LABEL_505;
                  }

                  break;
                }

                v286 = *(v509[2] + v284);
                v284 = v509[3] + 5;
                if (!v286)
                {
                  goto LABEL_513;
                }

LABEL_508:
                if (v459)
                {
                  v287 = v284 + 1;
                  v288 = v509[2] + v284;
                  v289 = *(v509[2] + v284);
                  if (*(v509[2] + v284) < 0)
                  {
                    if (v289 > 0xBF)
                    {
                      if (v289 > 0xDF)
                      {
                        if (v289 > 0xEF)
                        {
                          v290 = *(v509[2] + v287);
                          v287 = v284 + 5;
                        }

                        else
                        {
                          v290 = ((v289 & 0xF) << 24) | (*(v509[2] + v287) << 16) | (*(v288 + 2) << 8) | *(v288 + 3);
                          v287 = v284 + 4;
                        }
                      }

                      else
                      {
                        v290 = ((v289 & 0x1F) << 16) | (*(v509[2] + v287) << 8) | *(v288 + 2);
                        v287 = v284 + 3;
                      }
                    }

                    else
                    {
                      v290 = *(v509[2] + v287) | ((v289 & 0x3F) << 8);
                      v287 = v284 + 2;
                    }
                  }

                  else
                  {
                    v290 = *(v509[2] + v284);
                  }

                  v284 = v287;
                  v286 = v290;
                  if (!v290)
                  {
                    v419 = __si_assert_copy_extra_2708(0);
                    v403 = v419;
                    v420 = "";
                    if (v419)
                    {
                      v420 = v419;
                    }

                    v440 = "position != 0";
                    v442 = v420;
                    v405 = 877;
                    goto LABEL_790;
                  }
                }

                v295 = v509[0];
                v296 = v509[1];
                v297 = v284;
                v298 = v286;
                while (2)
                {
                  v304 = storageResolvePtr(v295, v296, v297 + 10, 0);
                  v300 = v297 + 1;
                  v305 = v304 + v297;
                  v299 = *(v304 + v297);
                  if ((v299 & 0x80) == 0)
                  {
                    if (!*(v304 + v297))
                    {
                      goto LABEL_543;
                    }

LABEL_539:
                    v301 = v298 - v299;
                    if (v298 < v299)
                    {
                      v394 = __si_assert_copy_extra_2708(0);
                      v395 = v394;
                      v396 = "";
                      if (v394)
                      {
                        v396 = v394;
                      }

                      v439 = "delta <= position";
                      v441 = v396;
                      v397 = 883;
                      goto LABEL_768;
                    }

LABEL_540:
                    v302 = v301;
                    v297 = v300;
                    v303 = v300;
                    v298 = v302;
                    if (!v302)
                    {
                      goto LABEL_578;
                    }

                    continue;
                  }

                  break;
                }

                if (v299 <= 0xBF)
                {
                  v299 = *(v304 + v300) | ((v299 & 0x3F) << 8);
                  v300 = v297 + 2;
                  if (!v299)
                  {
                    goto LABEL_543;
                  }

                  goto LABEL_539;
                }

                if (v299 > 0xDF)
                {
                  if (v299 > 0xEF)
                  {
                    v299 = *(v304 + v300);
                    v300 = v297 + 5;
                    if (v299)
                    {
                      goto LABEL_539;
                    }
                  }

                  else
                  {
                    v299 = ((v299 & 0xF) << 24) | (*(v304 + v300) << 16) | (*(v305 + 2) << 8) | *(v305 + 3);
                    v300 = v297 + 4;
                    if (v299)
                    {
                      goto LABEL_539;
                    }
                  }
                }

                else
                {
                  v299 = ((v299 & 0x1F) << 16) | (*(v304 + v300) << 8) | *(v305 + 2);
                  v300 = v297 + 3;
                  if (v299)
                  {
                    goto LABEL_539;
                  }
                }

LABEL_543:
                v306 = v300 + 1;
                v307 = v304 + v300;
                v308 = *(v304 + v300);
                if (*(v304 + v300) < 0)
                {
                  if (v308 <= 0xBF)
                  {
                    v309 = *(v304 + v306) | ((v308 & 0x3F) << 8);
                    v300 += 2;
                    if (!v459)
                    {
                      goto LABEL_568;
                    }

                    goto LABEL_565;
                  }

                  if (v308 <= 0xDF)
                  {
                    v309 = ((v308 & 0x1F) << 16) | (*(v304 + v306) << 8) | *(v307 + 2);
                    v300 += 3;
                    if (!v459)
                    {
                      goto LABEL_568;
                    }

                    goto LABEL_565;
                  }

                  if (v308 <= 0xEF)
                  {
                    v309 = ((v308 & 0xF) << 24) | (*(v304 + v306) << 16) | (*(v307 + 2) << 8) | *(v307 + 3);
                    v300 += 4;
                    if (!v459)
                    {
                      goto LABEL_568;
                    }

                    goto LABEL_565;
                  }

                  v309 = *(v304 + v306);
                  v300 += 5;
                  if (v459)
                  {
                    goto LABEL_565;
                  }
                }

                else
                {
                  ++v300;
                  v309 = v308;
                  if (!v459)
                  {
                    goto LABEL_568;
                  }

LABEL_565:
                  if (v309)
                  {
                    v310 = v300 + 1;
                    v311 = v304 + v300;
                    v312 = *(v304 + v300);
                    if (*(v304 + v300) < 0)
                    {
                      if (v312 > 0xBF)
                      {
                        if (v312 > 0xDF)
                        {
                          if (v312 > 0xEF)
                          {
                            v301 = *(v304 + v310);
                            v300 += 5;
                          }

                          else
                          {
                            v301 = ((v312 & 0xF) << 24) | (*(v304 + v310) << 16) | (*(v311 + 2) << 8) | *(v311 + 3);
                            v300 += 4;
                          }
                        }

                        else
                        {
                          v301 = ((v312 & 0x1F) << 16) | (*(v304 + v310) << 8) | *(v311 + 2);
                          v300 += 3;
                        }
                      }

                      else
                      {
                        v301 = *(v304 + v310) | ((v312 & 0x3F) << 8);
                        v300 += 2;
                      }
                    }

                    else
                    {
                      ++v300;
                      v301 = v312;
                    }

                    goto LABEL_540;
                  }
                }

LABEL_568:
                v301 = v309;
                goto LABEL_540;
              }

              v122[8] = *__error();
              v153 = *__error();
              v158 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
              {
LABEL_253:
                *__error() = v153;
                goto LABEL_254;
              }

              v386 = v122[8];
              *v500 = 136315906;
              *&v500[4] = "scratch_file_create";
              v501 = 1024;
              v502 = 1916;
              v503 = 1024;
              v504 = v386;
              v505 = 1024;
              v506 = 0x8000;
              v156 = v158;
              v157 = "%s:%d: mmap err:%d size:%d";
            }

            _os_log_error_impl(&dword_1C278D000, v156, OS_LOG_TYPE_ERROR, v157, v500, 0x1Eu);
            goto LABEL_253;
          }

LABEL_254:
          v145 = v92;
          if (!*v122)
          {
            close(v122[4]);
            v122[4] = -1;
            if (!v122[8])
            {
              v122[8] = -1;
            }
          }

          goto LABEL_257;
        }

        v97 = *(&v470 + 1);
        v445 = v470;
        v446 = v467;
        LOWORD(v509[1]) = 0;
        v509[0] = 0;
        if (*(&v470 + 1) >= v471)
        {
          if (!_PayloadScannerReadNextChar(v466, v509))
          {
            goto LABEL_164;
          }

          v98 = LOBYTE(v509[0]);
          if ((v509[0] & 0x80) == 0)
          {
LABEL_117:
            v99 = 0;
            v100 = *(&v470 + 1);
            goto LABEL_137;
          }
        }

        else
        {
          ++*(&v470 + 1);
          LOBYTE(v509[0]) = *v97;
          v98 = LOBYTE(v509[0]);
          if ((v509[0] & 0x80) == 0)
          {
            goto LABEL_117;
          }
        }

        if (v98 >= 0xC0)
        {
          if (v98 >= 0xE0)
          {
            if (v98 >= 0xF0)
            {
              if (v98 >= 0xF8)
              {
                if (v98 >= 0xFC)
                {
                  if (v98 >= 0xFE)
                  {
                    if (v98 == 255)
                    {
                      v101 = 8;
                    }

                    else
                    {
                      v101 = 7;
                    }
                  }

                  else
                  {
                    v101 = 6;
                  }
                }

                else
                {
                  v101 = 5;
                }
              }

              else
              {
                v101 = 4;
              }
            }

            else
            {
              v101 = 3;
            }
          }

          else
          {
            v101 = 2;
          }
        }

        else
        {
          v101 = 1;
        }

        v100 = *(&v470 + 1);
        if ((v471 - DWORD2(v470)) < v101)
        {
          if ((_PayloadScannerReadBytes(v466, v509 + 1, v101) & 1) == 0)
          {
            goto LABEL_164;
          }

          goto LABEL_138;
        }

        v99 = v101;
LABEL_137:
        __memcpy_chk();
        *(&v470 + 1) = v100 + v99;
LABEL_138:
        *v500 = 0;
        if ((v2_readVInt64_2873(v509, v500) & 1) == 0)
        {
          goto LABEL_164;
        }

        LOWORD(v509[1]) = 0;
        v509[0] = 0;
        v102 = *(&v470 + 1);
        if (*(&v470 + 1) >= v471)
        {
          if (!_PayloadScannerReadNextChar(v466, v509))
          {
            goto LABEL_164;
          }

          v103 = LOBYTE(v509[0]);
          if ((v509[0] & 0x80) == 0)
          {
LABEL_141:
            v104 = 0;
            v105 = *(&v470 + 1);
LABEL_163:
            __memcpy_chk();
            *(&v470 + 1) = v105 + v104;
            goto LABEL_164;
          }
        }

        else
        {
          ++*(&v470 + 1);
          v103 = *v102;
          LOBYTE(v509[0]) = v103;
          if ((v103 & 0x80) == 0)
          {
            goto LABEL_141;
          }
        }

        if (v103 >= 0xC0)
        {
          if (v103 >= 0xE0)
          {
            if (v103 >= 0xF0)
            {
              if (v103 >= 0xF8)
              {
                if (v103 >= 0xFC)
                {
                  if (v103 >= 0xFE)
                  {
                    if (v103 == 255)
                    {
                      v106 = 8;
                    }

                    else
                    {
                      v106 = 7;
                    }
                  }

                  else
                  {
                    v106 = 6;
                  }
                }

                else
                {
                  v106 = 5;
                }
              }

              else
              {
                v106 = 4;
              }
            }

            else
            {
              v106 = 3;
            }
          }

          else
          {
            v106 = 2;
          }
        }

        else
        {
          v106 = 1;
        }

        v105 = *(&v470 + 1);
        if ((v471 - DWORD2(v470)) >= v106)
        {
          v104 = v106;
          goto LABEL_163;
        }

        _PayloadScannerReadBytes(v466, v509 + 1, v106);
LABEL_164:
        PayloadScannerSkipPositionsData(v466);
        v94 = v94;
        if (v92 >= v94)
        {
          v473 = 0;
          v117 = reallocf(v93, 12 * (2 * v94));
          if (!v117)
          {
            goto LABEL_728;
          }

          v93 = v117;
          v473 = v117;
          v94 = (2 * v94);
        }

        v107 = uint32_map_get(v461, v57);
        *&v93[12 * v92] = v107;
        if (!v107)
        {
          v402 = __si_assert_copy_extra_2708(0);
          v403 = v402;
          v404 = "";
          if (v402)
          {
            v404 = v402;
          }

          v440 = "reorderInfo[reorderCount].newTermId";
          v442 = v404;
          v405 = 1550;
          goto LABEL_790;
        }

        v108 = v97 - v445 + v446;
        v109 = &v93[12 * v92];
        v110 = *(&v470 + 1);
        v111 = v467 + *(&v470 + 1) - v470;
        v112 = v467 + DWORD2(v470) - v470 - v108;
        *(v109 + 1) = v108 - v447;
        *(v109 + 2) = v112;
        if (v111 < v468)
        {
          BYTE4(v509[0]) = 0;
          LODWORD(v509[0]) = 0;
          if (v110 >= v471)
          {
            if (_PayloadScannerReadNextChar(v466, v509))
            {
              v114 = LOBYTE(v509[0]);
              if ((v509[0] & 0x80) != 0)
              {
                goto LABEL_174;
              }

LABEL_169:
              v115 = 0;
              v116 = *(&v470 + 1);
LABEL_182:
              __memcpy_chk();
              *(&v470 + 1) = v116 + v115;
              v120 = v114;
              if ((v114 & 0x80) != 0)
              {
LABEL_183:
                if (v120 > 0xBF)
                {
                  if (v120 > 0xDF)
                  {
                    if (v120 > 0xEF)
                    {
                      v120 = *(v509 + 1);
                    }

                    else
                    {
                      v120 = ((v120 & 0xF) << 24) | (BYTE1(v509[0]) << 16) | (BYTE2(v509[0]) << 8) | BYTE3(v509[0]);
                    }
                  }

                  else
                  {
                    v120 = ((v120 & 0x1F) << 16) | (BYTE1(v509[0]) << 8) | BYTE2(v509[0]);
                  }
                }

                else
                {
                  v120 = BYTE1(v509[0]) | ((v120 & 0x3F) << 8);
                }
              }

LABEL_190:
              v95 = v120 + v57;
              goto LABEL_113;
            }
          }

          else
          {
            *(&v470 + 1) = v110 + 1;
            v113 = *v110;
            LOBYTE(v509[0]) = v113;
            v114 = v113;
            if ((v113 & 0x80) == 0)
            {
              goto LABEL_169;
            }

LABEL_174:
            v118 = 2;
            v119 = 3;
            if (v114 >= 0xF0)
            {
              v119 = 4;
            }

            if (v114 >= 0xE0)
            {
              v118 = v119;
            }

            if (v114 >= 0xC0)
            {
              v115 = v118;
            }

            else
            {
              v115 = 1;
            }

            v116 = *(&v470 + 1);
            if ((v471 - DWORD2(v470)) >= v115)
            {
              goto LABEL_182;
            }

            if (_PayloadScannerReadBytes(v466, v509 + 1, v115))
            {
              v120 = LOBYTE(v509[0]);
              if ((v509[0] & 0x80) != 0)
              {
                goto LABEL_183;
              }

              goto LABEL_190;
            }
          }

          v120 = 0;
          goto LABEL_190;
        }

        v95 = 0;
LABEL_113:
        ++v92;
        v57 = v95;
        if (v95 >= v460)
        {
          goto LABEL_747;
        }
      }
    }

    v60 = 0;
    while (1)
    {
      v62 = v60;
      if (!v57)
      {
        break;
      }

      v64 = v470;
      v63 = DWORD2(v470);
      v65 = v467;
      if (PayloadScannerReadVInt64(v466))
      {
        VInt32 = PayloadScannerReadVInt32(v466);
        v67 = v467 + VInt32 + *(&v470 + 1) - v470;
        if (v67 > v468)
        {
          v410 = __si_assert_copy_extra_2708(0);
          v395 = v410;
          v411 = "";
          if (v410)
          {
            v411 = v410;
          }

          v439 = "PayloadScannerPosition(s) + runLength <= s->end";
          v441 = v411;
          v397 = 732;
          goto LABEL_768;
        }

        v68 = VInt32 + *(&v470 + 1) - v470;
        if (v67 >= v467 && v467 - v470 + v471 >= v67)
        {
          *(&v470 + 1) += VInt32;
          v69 = v470 + v68;
          v70 = v467 - v470;
        }

        else
        {
          *(&v470 + 1) = v470;
          *&v471 = v470;
          v69 = v470;
          v467 = v67;
          v70 = v67 - v470;
        }

        if (v69 + v70 != v67)
        {
          goto LABEL_759;
        }
      }

      else if ((PayloadScannerReadVInt64(v466) & 1) == 0 && !PayloadScannerReadVInt32(v466) && PayloadScannerReadVInt32(v466) >= 3)
      {
        v423 = __si_assert_copy_extra_2708(0);
        v403 = v423;
        v424 = "";
        if (v423)
        {
          v424 = v423;
        }

        v440 = "type >= 0 && type <= 2";
        v442 = v424;
        v405 = 741;
        goto LABEL_790;
      }

      if (v62 >= v37)
      {
        v37 = (2 * v37);
        v473 = 0;
        v88 = reallocf(v40, 12 * v37);
        if (!v88)
        {
          goto LABEL_728;
        }

        v473 = v88;
        v71 = v88;
      }

      else
      {
        v71 = v40;
      }

      v72 = uint32_map_get(v461, v57);
      v73 = &v71[12 * v62];
      *v73 = v72;
      if (v72)
      {
        v74 = v63 - v64 + v65;
        v75 = v470;
        v76 = v467 + *(&v470 + 1);
        v77 = *(&v470 + 1);
        v78 = v467 + DWORD2(v470) - v470 - v74;
        v60 = (v62 + 1);
        *(v73 + 1) = v74 - v447;
        *(v73 + 2) = v78;
        v79 = v76;
        v80 = v75;
        v81 = v77;
      }

      else
      {
        v82 = *__error();
        v83 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v509[0]) = 136315650;
          *(v509 + 4) = "PayloadPulsesReorder";
          WORD2(v509[1]) = 1024;
          *(&v509[1] + 6) = 1515;
          WORD1(v509[2]) = 1024;
          HIDWORD(v509[2]) = v57;
          _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, "%s:%d: compact missing termID %u", v509, 0x18u);
        }

        *__error() = v82;
        v81 = *(&v470 + 1);
        v80 = v470;
        v79 = v467 + *(&v470 + 1);
        v60 = v62;
      }

      if (v79 - v80 < v468)
      {
        BYTE4(v509[0]) = 0;
        LODWORD(v509[0]) = 0;
        if (v81 >= v471)
        {
          if (_PayloadScannerReadNextChar(v466, v509))
          {
            v85 = LOBYTE(v509[0]);
            if ((v509[0] & 0x80) != 0)
            {
              goto LABEL_90;
            }

LABEL_85:
            v86 = 0;
            v87 = *(&v470 + 1);
LABEL_98:
            __memcpy_chk();
            *(&v470 + 1) = v87 + v86;
            v91 = v85;
            if ((v85 & 0x80) != 0)
            {
LABEL_99:
              if (v91 > 0xBF)
              {
                if (v91 > 0xDF)
                {
                  if (v91 > 0xEF)
                  {
                    v91 = *(v509 + 1);
                  }

                  else
                  {
                    v91 = ((v91 & 0xF) << 24) | (BYTE1(v509[0]) << 16) | (BYTE2(v509[0]) << 8) | BYTE3(v509[0]);
                  }
                }

                else
                {
                  v91 = ((v91 & 0x1F) << 16) | (BYTE1(v509[0]) << 8) | BYTE2(v509[0]);
                }
              }

              else
              {
                v91 = BYTE1(v509[0]) | ((v91 & 0x3F) << 8);
              }
            }

LABEL_106:
            v61 = v91 + v57;
            goto LABEL_62;
          }
        }

        else
        {
          *(&v470 + 1) = v81 + 1;
          v84 = *v81;
          LOBYTE(v509[0]) = v84;
          v85 = v84;
          if ((v84 & 0x80) == 0)
          {
            goto LABEL_85;
          }

LABEL_90:
          v89 = 2;
          v90 = 3;
          if (v85 >= 0xF0)
          {
            v90 = 4;
          }

          if (v85 >= 0xE0)
          {
            v89 = v90;
          }

          if (v85 >= 0xC0)
          {
            v86 = v89;
          }

          else
          {
            v86 = 1;
          }

          v87 = *(&v470 + 1);
          if ((v471 - DWORD2(v470)) >= v86)
          {
            goto LABEL_98;
          }

          if (_PayloadScannerReadBytes(v466, v509 + 1, v86))
          {
            v91 = LOBYTE(v509[0]);
            if ((v509[0] & 0x80) != 0)
            {
              goto LABEL_99;
            }

            goto LABEL_106;
          }
        }

        v91 = 0;
        goto LABEL_106;
      }

      v61 = 0;
LABEL_62:
      v57 = v61;
      v40 = v71;
      if (v61 >= v460)
      {
        v406 = __si_assert_copy_extra_2708(0);
        v403 = v406;
        v407 = "";
        if (v406)
        {
          v407 = v406;
        }

        v440 = "termId < maxTermId";
        v442 = v407;
        v405 = 1300;
        goto LABEL_790;
      }
    }

    if (!DWORD2(v471))
    {
      v443 = v60;
      mergesort(v40, v60, 0xCuLL, PayloadReorderInfoCompare);
      if (v60)
      {
        v126 = 0;
        v127 = v447;
        while (1)
        {
          v128 = &v40[12 * v126];
          v129 = v127 + v128[1];
          v130 = v467;
          if (v129 >= v467 && v467 + v471 - v470 >= v129)
          {
            v131 = v470 + v129 - v467;
            *(&v470 + 1) = v131;
          }

          else
          {
            v130 = v127 + v128[1];
            *(&v470 + 1) = v470;
            *&v471 = v470;
            v467 = v129;
            v131 = v470;
          }

          if (v130 + v131 - v470 != v129)
          {
            break;
          }

          v132 = *v128;
          v133 = *(v11 + 24) + 32 * (*(v11 + 16) - 1);
          if (*(v133 + 16))
          {
            v134 = *v128 - *(v133 + 20);
          }

          else
          {
            *(v133 + 16) = v132;
            v134 = v132;
          }

          memset(v509, 0, 32);
          if (v134 > 0x7F)
          {
            if (v134 >> 14)
            {
              if (v134 >> 21)
              {
                if (v134 >> 28)
                {
                  LOBYTE(v509[0]) = -16;
                  *(v509 + 1) = v134;
                  v136 = 5;
                }

                else
                {
                  LOBYTE(v509[0]) = HIBYTE(v134) | 0xE0;
                  BYTE1(v509[0]) = BYTE2(v134);
                  BYTE2(v509[0]) = BYTE1(v134);
                  BYTE3(v509[0]) = v134;
                  v136 = 4;
                }
              }

              else
              {
                LOBYTE(v509[0]) = BYTE2(v134) | 0xC0;
                BYTE1(v509[0]) = BYTE1(v134);
                BYTE2(v509[0]) = v134;
                v136 = 3;
              }
            }

            else
            {
              LOBYTE(v509[0]) = BYTE1(v134) | 0x80;
              BYTE1(v509[0]) = v134;
              v136 = 2;
            }

            v135 = v136;
          }

          else
          {
            LOBYTE(v509[0]) = v134;
            v135 = 1;
          }

          v137 = v509;
          v138 = v135;
          do
          {
            while (1)
            {
              v140 = *(v11 + 32);
              v141 = *(v11 + 40);
              v142 = v141 - v140 >= v138 ? v138 : v141 - v140;
              if (v141 == v140)
              {
                break;
              }

              memcpy((*(v11 + 48) + v140), v137, v142);
              v143 = *(v11 + 40);
              v144 = *(v11 + 32) + v142;
              *(v11 + 32) = v144;
              v137 = (v137 + v142);
              if (v144 == v143)
              {
                break;
              }

              v138 -= v142;
              if (!v138)
              {
                goto LABEL_205;
              }
            }

            PayloadPulsesWrite(v11);
            if (*(v11 + 60))
            {
              v139 = 1;
            }

            else
            {
              v139 = v138 == v142;
            }

            v138 -= v142;
          }

          while (!v139);
LABEL_205:
          *(v133 + 20) = v132;
          v127 = v447;
          PayloadPulsesWriteBytesFromScanner(v11, v466, v447 + v128[1], v128[2]);
          if (++v126 == v443)
          {
            goto LABEL_202;
          }
        }

LABEL_775:
        v417 = __si_assert_copy_extra_2708(0);
        v403 = v417;
        v418 = "";
        if (v417)
        {
          v418 = v417;
        }

        v440 = "PayloadScannerPosition(scanner) == position";
        v442 = v418;
        v405 = 100;
LABEL_790:
        __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", v405, v440, v442);
        free(v403);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

LABEL_202:
    v32 = v40;
LABEL_711:
    if (DWORD2(v471))
    {
      v382 = 1;
    }

    else
    {
      v382 = *(v11 + 60) == 0;
    }

    if (v382)
    {
      v383 = DWORD2(v471);
    }

    else
    {
      v383 = *(v11 + 60);
    }

    v472 = 0;
    if (v470)
    {
      free(v470);
      *&v470 = 0;
    }

    PayloadPulsesWrite(v11);
    v38 = (*(v11 + 24) + 32 * (*(v11 + 16) - 1));
    v38[1] = *(v11 + 8) - *v38;
    v38[2] = 0;
    v36 = v453 + 1;
    v39 = v383;
    if (!v383)
    {
      continue;
    }

    break;
  }

LABEL_730:
  v26 = v39;
  CICleanUpReset(v456, v455);
  v388 = threadData[9 * v476 + 1] + 320 * v475;
  *(v388 + 312) = v457;
  v389 = *(v388 + 232);
  if (v389)
  {
    v389(*(v388 + 288));
  }

  dropThreadId(v476, 0, add_explicit + 1);
LABEL_733:
  storageClose(v481);
  v390 = *(v465 + 15);
  if (v26)
  {
    v391 = 1;
  }

  else
  {
    v391 = v390 == 0;
  }

  if (v391)
  {
    v390 = v26;
  }

  v392 = *(v11 + 60);
  if (v390)
  {
    v393 = 1;
  }

  else
  {
    v393 = v392 == 0;
  }

  if (v393)
  {
    return v390;
  }

  else
  {
    return v392;
  }
}

uint64_t PayloadScannerReadVInt32_v2(uint64_t a1)
{
  memset(v9, 0, 5);
  v2 = *(a1 + 56);
  if (v2 >= *(a1 + 64))
  {
    if (!_PayloadScannerReadNextChar(a1, v9))
    {
      return 0;
    }

    v3 = LOBYTE(v9[0]);
    if ((v9[0] & 0x80) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 56) = v2 + 1;
    LOBYTE(v9[0]) = *v2;
    v3 = LOBYTE(v9[0]);
    if ((v9[0] & 0x80) == 0)
    {
LABEL_3:
      v4 = 0;
      v5 = *(a1 + 56);
      goto LABEL_14;
    }
  }

  v6 = 2;
  v7 = 3;
  if (v3 >= 0xF0)
  {
    v7 = 4;
  }

  if (v3 >= 0xE0)
  {
    v6 = v7;
  }

  if (v3 >= 0xC0)
  {
    v4 = v6;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 56);
  if ((*(a1 + 64) - v5) >= v4)
  {
LABEL_14:
    __memcpy_chk();
    *(a1 + 56) = v5 + v4;
    if ((v3 & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_15;
  }

  if (!_PayloadScannerReadBytes(a1, v9 + 1, v4))
  {
    return 0;
  }

  v3 = LOBYTE(v9[0]);
  if ((v9[0] & 0x80) == 0)
  {
    return v3;
  }

LABEL_15:
  if (v3 <= 0xBF)
  {
    return BYTE1(v9[0]) | ((v3 & 0x3F) << 8);
  }

  if (v3 <= 0xDF)
  {
    return ((v3 & 0x1F) << 16) | (BYTE1(v9[0]) << 8) | BYTE2(v9[0]);
  }

  if (v3 > 0xEF)
  {
    return *(v9 + 1);
  }

  return ((v3 & 0xF) << 24) | (BYTE1(v9[0]) << 16) | (BYTE2(v9[0]) << 8) | HIBYTE(v9[0]);
}

uint64_t PayloadPulsesAppend(void *a1, uint64_t a2, int a3, char a4, char a5)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    VInt64 = PayloadScannerReadVInt64(a1);
    v8 = a1[7] - a1[6] + a1[3];
    if (VInt64)
    {
      VInt32 = PayloadScannerReadVInt32(a1);
      if (a1[3] + VInt32 + a1[7] - a1[6] <= a1[4])
      {
        v20 = 5;
        v21 = 4;
        v22 = 3;
        if (VInt32 < 0x80)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (!(VInt32 >> 14))
        {
          v22 = v23;
        }

        if (!(VInt32 >> 21))
        {
          v21 = v22;
        }

        if (!(VInt32 >> 28))
        {
          v20 = v21;
        }

        v9 = v20 + VInt32;
        LOBYTE(v64) = 1;
        v24 = &v64;
        do
        {
          v27 = *(a2 + 32);
          v26 = *(a2 + 40);
          if (v26 != v27)
          {
            v28 = *v24++;
            *(*(a2 + 48) + v27) = v28;
            v29 = *(a2 + 40);
            v30 = *(a2 + 32) + 1;
            *(a2 + 32) = v30;
            if (v30 != v29)
            {
              break;
            }
          }

          PayloadPulsesWrite(a2);
        }

        while (!*(a2 + 60) && v26 == v27);
        goto LABEL_36;
      }

      v43 = __si_assert_copy_extra_2708(0);
      v44 = v43;
      v45 = "";
      if (v43)
      {
        v45 = v43;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 786, "PayloadScannerPosition(s) + docInfoLength <= s->end", v45);
    }

    else
    {
      if ((PayloadScannerReadVInt64(a1) & 1) != 0 || PayloadScannerReadVInt32(a1) || PayloadScannerReadVInt32(a1) < 3)
      {
        v9 = a1[3] + a1[7] - a1[6] - v8;
        LOBYTE(v64) = 0;
        v10 = &v64;
        do
        {
          v13 = *(a2 + 32);
          v12 = *(a2 + 40);
          if (v12 != v13)
          {
            v14 = *v10++;
            *(*(a2 + 48) + v13) = v14;
            v15 = *(a2 + 40);
            v16 = *(a2 + 32) + 1;
            *(a2 + 32) = v16;
            if (v16 != v15)
            {
              break;
            }
          }

          PayloadPulsesWrite(a2);
        }

        while (!*(a2 + 60) && v12 == v13);
LABEL_36:
        v31 = a2;
        v32 = a1;
        v18 = v8;
        v17 = v9;
LABEL_42:

        return PayloadPulsesWriteBytesFromScanner(v31, v32, v18, v17);
      }

      v60 = __si_assert_copy_extra_2708(0);
      v44 = v60;
      v61 = "";
      if (v60)
      {
        v61 = v60;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 801, "_type >= 0 && _type <= 2", v61);
    }

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

  v62 = 0;
  if (a5)
  {
    if (a4)
    {
      v17 = PayloadScannerReadVInt64(a1);
      v18 = a1[3] + a1[7] - a1[6];
    }

    else
    {
      v38 = a1[3];
      v40 = a1[6];
      v39 = a1[7];
      v41 = PayloadScannerReadVInt64(a1);
      v18 = v39 - v40 + v38;
      v17 = v41 + *(a1 + 6) + *(a1 + 14) - *(a1 + 12) - v18;
    }

    v31 = a2;
    v32 = a1;
    goto LABEL_42;
  }

  v65 = 0;
  v64 = 0;
  v33 = a1[7];
  if (v33 >= a1[8])
  {
    v35 = a4;
    if (!_PayloadScannerReadNextChar(a1, &v64))
    {
      goto LABEL_91;
    }

    v34 = v64;
    a4 = v35;
    if ((v64 & 0x80) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    a1[7] = v33 + 1;
    v34 = *v33;
    LOBYTE(v64) = v34;
    if ((v34 & 0x80) == 0)
    {
LABEL_39:
      v35 = a4;
      v36 = 0;
      v37 = a1[7];
LABEL_68:
      __memcpy_chk();
      a1[7] = v37 + v36;
      goto LABEL_69;
    }
  }

  if (v34 >= 0xC0)
  {
    if (v34 >= 0xE0)
    {
      if (v34 >= 0xF0)
      {
        if (v34 >= 0xF8)
        {
          if (v34 >= 0xFC)
          {
            if (v34 >= 0xFE)
            {
              if (v34 == 255)
              {
                v36 = 8;
              }

              else
              {
                v36 = 7;
              }
            }

            else
            {
              v36 = 6;
            }
          }

          else
          {
            v36 = 5;
          }
        }

        else
        {
          v36 = 4;
        }
      }

      else
      {
        v36 = 3;
      }
    }

    else
    {
      v36 = 2;
    }
  }

  else
  {
    v36 = 1;
  }

  v37 = a1[7];
  v35 = a4;
  if ((*(a1 + 16) - v37) >= v36)
  {
    goto LABEL_68;
  }

  if ((_PayloadScannerReadBytes(a1, &v64 + 1, v36) & 1) == 0)
  {
    goto LABEL_91;
  }

LABEL_69:
  v63 = 0;
  if (v2_readVInt64_2873(&v64, &v63))
  {
    v65 = 0;
    v64 = 0;
    v47 = a1[7];
    if (v47 >= a1[8])
    {
      v47 = &v64;
      if (!_PayloadScannerReadNextChar(a1, &v64))
      {
        goto LABEL_91;
      }
    }

    else
    {
      a1[7] = v47 + 1;
    }

    if (*v47 < 0)
    {
      v50 = *v47;
      if (v50 >= 0xC0)
      {
        if (v50 >= 0xE0)
        {
          if (v50 >= 0xF0)
          {
            if (v50 >= 0xF8)
            {
              if (v50 >= 0xFC)
              {
                if (v50 >= 0xFE)
                {
                  if (v50 == 255)
                  {
                    v48 = 8;
                  }

                  else
                  {
                    v48 = 7;
                  }
                }

                else
                {
                  v48 = 6;
                }
              }

              else
              {
                v48 = 5;
              }
            }

            else
            {
              v48 = 4;
            }
          }

          else
          {
            v48 = 3;
          }
        }

        else
        {
          v48 = 2;
        }
      }

      else
      {
        v48 = 1;
      }

      v49 = a1[7];
      if ((*(a1 + 16) - v49) < v48)
      {
        _PayloadScannerReadBytes(a1, &v64 + 1, v48);
        goto LABEL_91;
      }
    }

    else
    {
      v48 = 0;
      v49 = a1[7];
    }

    __memcpy_chk();
    a1[7] = v49 + v48;
  }

LABEL_91:
  v51 = a1[7] - a1[6] + a1[3];
  PayloadScannerSkipPositionsData(a1);
  v52 = a1[3] + a1[7] - a1[6];
  if ((v35 & 1) == 0)
  {
    v53 = &v62;
    do
    {
      v56 = *(a2 + 32);
      v55 = *(a2 + 40);
      if (v55 != v56)
      {
        v57 = *v53++;
        *(*(a2 + 48) + v56) = v57;
        v58 = *(a2 + 40);
        v59 = *(a2 + 32) + 1;
        *(a2 + 32) = v59;
        if (v59 != v58)
        {
          break;
        }
      }

      PayloadPulsesWrite(a2);
    }

    while (!*(a2 + 60) && v55 == v56);
  }

  return PayloadPulsesWriteBytesFromScanner(a2, a1, v51, v52 - v51);
}