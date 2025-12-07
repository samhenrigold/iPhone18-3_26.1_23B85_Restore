uint64_t ContentIndexDocSet_Step(uint64_t result, void *a2, _BYTE *a3)
{
  v168 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 53))
  {
    return 0;
  }

  v4 = *(result + 80);
  if (*(result + 56) != 1)
  {
    v153 = 1;
    if (!v4 || !*(v4 + 56) || (*(v4 + 48) | 2) == 2)
    {
      v8 = *(*result + 24);
      if (v8)
      {
        posreadunlock(v8);
        *(*v3 + 24) = 0;
      }

      return 0;
    }

    v10 = a2;
    if (*(result + 72) >= 1)
    {
      v12 = 80;
      v13 = *(result + 72);
      while (!ContentIndexDocSetContainsPhrase(*(v3 + v12)))
      {
        v12 += 8;
        if (!--v13)
        {
          goto LABEL_23;
        }
      }

      return ContentIndexDocSet_PositionRead(v3, v10, *(v4 + 33), a3, v14);
    }

LABEL_23:
    v15 = *MEMORY[0x1E695E480];
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v17 = CFSetCreateMutable(v15, 0, 0);
    v18 = *(v4 + 56);
    if (*(v18 + 8) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

LABEL_35:
      v9 = 35;
      v27 = 0;
      v28 = v10;
      if (!Mutable)
      {
LABEL_37:
        if (v17)
        {
          CFRelease(v17);
          v28 = v10;
        }

        if (v153 != 1)
        {
          *v28 += v27;
          return v9;
        }

        if (*v3)
        {
          v29 = *(*v3 + 8);
          if (v29)
          {
            v30 = *(v29 + 4488);
            if (v30)
            {
              bzero(buf, 0x400uLL);
              v31 = fd_realpath(v30, buf);
              v32 = *__error();
              v33 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *v154 = 136315906;
                v155 = "ContentIndexDocSet_Step";
                v156 = 1024;
                v157 = 3974;
                v158 = 2048;
                v159 = v3;
                v160 = 2080;
                v161 = v31;
                _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: Caught assertion for iterator %p %s", v154, 0x26u);
              }

              *__error() = v32;
            }
          }
        }

        *(v3 + 58) = 1;
        *(v3 + 53) = 1;
        return 0;
      }

LABEL_36:
      CFRelease(Mutable);
      v28 = v10;
      goto LABEL_37;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    *v154 = 0;
    v152 = 0;
    v151 = 0;
    v20 = setThreadIdAndInfo(*(v18 + 64), sIndexExceptionCallbacks, v18, 0x20000000, add_explicit + 1);
    v152 = HIDWORD(v20);
    *v154 = v20;
    v151 = __PAIR64__(v21, v22);
    v23 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
    *(v23 + 216) = 0;
    v131 = *(v23 + 312);
    v24 = *(v23 + 224);
    v25 = v23;
    if (v24)
    {
      v24(*(v23 + 288));
    }

    v150 = *v154;
    v149 = v152;
    v148 = v151;
    if (_setjmp(v25))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v25 + 312) = v131;
      if ((~*(v25 + 212) & 0xA0000000) == 0)
      {
        v26 = *(v25 + 288);
        if (v26)
        {
          _CIMakeInvalid(v26);
        }
      }

      CIOnThreadCleanUpReset(v148);
      dropThreadId(v150, 1, add_explicit + 1);
      CICleanUpReset(v150, HIDWORD(v148));
      goto LABEL_35;
    }

    v147 = 0;
    v146 = 0;
    v145 = 0;
    v130 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v34 = setThreadIdAndInfo(-1, sIteratorExceptionCallbacks, *(v3 + 16), 0, v130 + 1);
    v147 = v34;
    v145 = v36;
    v146 = __PAIR64__(HIDWORD(v34), v35);
    v37 = threadData[9 * v34 + 1] + 320 * HIDWORD(v34);
    v129 = *(v37 + 312);
    v38 = *(v37 + 224);
    if (v38)
    {
      v38(*(v37 + 288));
    }

    v144 = v147;
    v143 = HIDWORD(v146);
    v142 = __PAIR64__(v146, v145);
    if (_setjmp(v37))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught assertion", buf, 2u);
      }

      *(v37 + 312) = v129;
      CIOnThreadCleanUpReset(v142);
      dropThreadId(v144, 1, v130 + 1);
      CICleanUpReset(v144, HIDWORD(v142));
      v9 = 35;
      v27 = 0;
      v39 = v131;
      goto LABEL_112;
    }

    v40 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v41 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v40 + 1);
    v140 = HIDWORD(v41);
    v141 = v41;
    v138 = v43;
    v139 = v42;
    v44 = threadData[9 * v41 + 1] + 320 * HIDWORD(v41);
    v126 = *(v44 + 312);
    v45 = *(v44 + 224);
    if (v45)
    {
      v45(*(v44 + 288));
    }

    v137 = v141;
    v136 = v140;
    v135 = __PAIR64__(v139, v138);
    v127 = _setjmp(v44);
    if (v127)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v44 + 312) = v126;
      CIOnThreadCleanUpReset(v135);
      dropThreadId(v137, 1, v40 + 1);
      CICleanUpReset(v137, HIDWORD(v135));
      locked = 0;
LABEL_106:
      v39 = v131;
      v153 = 0;
      v101 = threadData[9 * v144 + 1] + 320 * v143;
      *(v101 + 312) = v129;
      v102 = *(v101 + 232);
      if (v102)
      {
        v102(*(v101 + 288));
      }

      dropThreadId(v144, 0, v130 + 1);
      if (v127)
      {
        v103 = 35;
      }

      else
      {
        v103 = 0;
      }

      v27 = locked;
      v9 = v103;
LABEL_112:
      v104 = threadData[9 * v150 + 1] + 320 * v149;
      *(v104 + 312) = v39;
      v105 = *(v104 + 232);
      if (v105)
      {
        v105(*(v104 + 288));
      }

      dropThreadId(v150, 0, add_explicit + 1);
      v28 = v10;
      if (!Mutable)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v128 = v40;
    v47 = v3 + 80;
    if (*(v3 + 72))
    {
      v48 = 0;
      do
      {
        v49 = v48;
        ContentIndexDocSetIteratorFlatten(*(v47 + 8 * v48), Mutable, v17, 0);
        v48 = v49 + 1;
      }

      while (v49 + 1 < *(v3 + 72));
    }

    if (*(v3 + 52))
    {
      v50 = *(v3 + 16);
      v51 = *(v50 + 104);
      v52 = *(v50 + 40);
      v53 = *(v50 + 56);
      v54 = *(v50 + 72);
      v55 = *(v50 + 80);
      v56 = *(v50 + 88);
      v57 = *(v50 + 96);
      v58 = *(v50 + 48);
      v133 = 0;
      v134 = 0;
      if (v58)
      {
        *(v50 + 48) = -1;
      }

      *(v50 + 104) = v51;
      *(v50 + 40) = v52;
      *(v50 + 56) = v53;
      *(v50 + 72) = v54;
      *(v50 + 80) = v55;
      *(v50 + 88) = v56;
      *(v50 + 96) = v57;
      BulkPayloadIterator_Step(v50, &v134, &v133);
      *(v3 + 54) = 0;
      v60 = *(v3 + 32);
      v59 = *(v3 + 36);
      v61 = v133;
      if (v59 <= v133)
      {
        v62 = v133;
      }

      else
      {
        v62 = *(v3 + 36);
      }

      *(v3 + 44) = v62;
      if (dword_1EBF46AF4 >= 5)
      {
        v124 = v59;
        v125 = v60;
        v110 = *__error();
        v111 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          v112 = *(v3 + 32);
          v113 = *(v3 + 36);
          *buf = 67109888;
          *v163 = v134;
          *&v163[4] = 1024;
          *&v163[6] = v61;
          v164 = 1024;
          v165 = v112;
          v166 = 1024;
          v167 = v113;
          _os_log_impl(&dword_1C278D000, v111, OS_LOG_TYPE_DEFAULT, "Got (%d to %d) Squashed (%d to %d)", buf, 0x1Au);
        }

        *__error() = v110;
        v59 = v124;
        v60 = v125;
      }

      v118 = *(v3 + 28);
      v119 = *(v3 + 8);
      v63 = v59;
      processLeaves(v17, v118, 0, v60, v59, v119);
      processNodes(Mutable, v118, 0, v60, v63, v119);
      if (dword_1EBF46AF4 < 5)
      {
        goto LABEL_83;
      }

      v65 = *__error();
      v66 = _SILogForLogForCategory(10);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
LABEL_128:
        *__error() = v65;
LABEL_83:
        if (*(v3 + 72) >= 1)
        {
          v85 = 0;
          do
          {
            v86 = *(v47 + 8 * v85);
            v87 = ContentIndexDocSetSquashUpdate(v86, 0, v64);
            v88 = *(v3 + 32);
            if (v87 > v88)
            {
              v88 = ContentIndexDocSetSquashUpdate(v86, 0, v64);
            }

            *(v3 + 32) = v88;
            if (dword_1EBF46AF4 >= 5)
            {
              v122 = *__error();
              v89 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                v90 = *(v3 + 32);
                v91 = *(v3 + 36);
                *buf = 67109376;
                *v163 = v90;
                *&v163[4] = 1024;
                *&v163[6] = v91;
                _os_log_impl(&dword_1C278D000, v89, OS_LOG_TYPE_DEFAULT, "Finished iterator. Squashed (0 to %d) end:  %d", buf, 0xEu);
              }

              *__error() = v122;
            }

            ++v85;
          }

          while (v85 < *(v3 + 72));
        }

        ContentIndexDocSetIteratorProcessIterHits(0, 1, *(v3 + 32), *(v3 + 28), Mutable, v17, *(v3 + 8));
        *(v3 + 44) = 1;
        *(v3 + 53) = 1;
        v92 = ContentIndexDocSetGrabBitVector(*(v3 + 80));
        if (v92)
        {
          locked = lockedCountItemsInRange(v92, *(v3 + 44), (*(v3 + 40) - 1), v93);
        }

        else
        {
          locked = 0;
        }

        if (dword_1EBF46AF4 >= 5)
        {
          v106 = *__error();
          v107 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = *(v3 + 44);
            v109 = *(v3 + 40) - 1;
            *buf = 67109376;
            *v163 = v108;
            *&v163[4] = 1024;
            *&v163[6] = v109;
            _os_log_impl(&dword_1C278D000, v107, OS_LOG_TYPE_DEFAULT, "OID Range %d to %d", buf, 0xEu);
          }

          *__error() = v106;
        }

        if (*(v4 + 33) == 1)
        {
          v94 = (*(v3 + 40) - *(v3 + 44)) - locked;
          locked = v94 & ~(v94 >> 63);
        }

        v95 = *__error();
        v96 = _SILogForLogForCategory(10);
        v97 = 2 * (dword_1EBF46AF4 < 4);
        if (os_log_type_enabled(v96, v97))
        {
          *buf = 134217984;
          *v163 = locked;
          _os_log_impl(&dword_1C278D000, v96, v97, "Found: %ld", buf, 0xCu);
        }

        *__error() = v95;
        v98 = *(v3 + 32);
        if (v98 >= v133)
        {
          v98 = v133;
        }

        *(v3 + 32) = v134;
        *(v3 + 36) = v98;
        v99 = threadData[9 * v137 + 1] + 320 * v136;
        *(v99 + 312) = v126;
        v100 = *(v99 + 232);
        if (v100)
        {
          v100(*(v99 + 288));
        }

        dropThreadId(v137, 0, v128 + 1);
        goto LABEL_106;
      }

      v67 = *(v3 + 32);
      v68 = *(v3 + 36);
      *buf = 67109376;
      *v163 = v67;
      *&v163[4] = 1024;
      *&v163[6] = v68;
      v69 = "Range %d to %d";
    }

    else
    {
      v70 = *(v3 + 28);
      v71 = *(v3 + 24) + 1;
      v72 = v70;
      if (v71 <= v70)
      {
        ContentIndexDocSetIteratorProcessIterHits(1, (*(v3 + 24) + 1), v70, *(v3 + 28), Mutable, v17, *(v3 + 8));
        v72 = v70;
      }

      if (dword_1EBF46AF4 >= 5)
      {
        v132 = v72;
        v114 = v71;
        v123 = *__error();
        v115 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v163 = v114;
          *&v163[4] = 1024;
          *&v163[6] = v132;
          _os_log_impl(&dword_1C278D000, v115, OS_LOG_TYPE_DEFAULT, "Updates from %d to %d", buf, 0xEu);
        }

        *__error() = v123;
        v71 = v114;
        v72 = v132;
      }

      *(v3 + 52) = 1;
      *(v3 + 54) = 1;
      *(v3 + 32) = v71;
      *(v3 + 36) = v72;
      if ((v70 + 1) < *(*v3 + 36))
      {
        v73 = v70 + 1;
      }

      else
      {
        v73 = *(*v3 + 36);
      }

      *(v3 + 40) = v73;
      *(v3 + 44) = v71;
      v74 = *(v3 + 16);
      v75 = *(v74 + 104);
      v76 = *(v74 + 40);
      v77 = *(v74 + 56);
      v78 = *(v74 + 72);
      v79 = *(v74 + 80);
      v80 = *(v74 + 88);
      v81 = *(v74 + 96);
      *(v3 + 32) = v71;
      *(v3 + 36) = v72;
      v82 = *(v74 + 48);
      v133 = v72;
      v134 = v71;
      if (v82)
      {
        *(v74 + 48) = -1;
      }

      *(v74 + 104) = v75;
      *(v74 + 40) = v76;
      *(v74 + 56) = v77;
      *(v74 + 72) = v78;
      *(v74 + 80) = v79;
      *(v74 + 88) = v80;
      *(v74 + 96) = v81;
      BulkPayloadIterator_Step(v74, &v134, &v133);
      v83 = *(v3 + 32);
      v121 = *(v3 + 36);
      v84 = *(v3 + 28);
      v120 = *(v3 + 8);
      processLeaves(v17, v84, 0, v83, v121, v120);
      processNodes(Mutable, v84, 0, v83, v121, v120);
      if (dword_1EBF46AF4 < 5)
      {
        goto LABEL_83;
      }

      v65 = *__error();
      v66 = _SILogForLogForCategory(10);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }

      v116 = *(v3 + 32);
      v117 = *(v3 + 36);
      *buf = 67109376;
      *v163 = v116;
      *&v163[4] = 1024;
      *&v163[6] = v117;
      v69 = "1 Disk from %d to %d";
    }

    _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, v69, buf, 0xEu);
    goto LABEL_128;
  }

  v5 = *(*result + 24);
  if (v5)
  {
    v6 = a2;
    posreadunlock(v5);
    a2 = v6;
    *(*v3 + 24) = 0;
  }

  if (*(v4 + 33))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v3 + 28);
  }

  result = 0;
  *a2 = v7;
  return result;
}

uint64_t ContentIndexDocSetContainsPhrase(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((v1 - 4) >= 4)
  {
    return (v1 - 8) <= 1;
  }

  v3 = *(a1 + 96);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  LOBYTE(result) = 0;
  v6 = 8 * v3;
  do
  {
    if (result)
    {
      result = 1;
    }

    else
    {
      result = ContentIndexDocSetContainsPhrase(*(*(a1 + 72) + v4));
    }

    v4 += 8;
  }

  while (v6 != v4);
  return result;
}

void ContentIndexDocSetIteratorFlatten(uint64_t a1, const __CFSet *a2, const __CFSet *a3, uint64_t a4)
{
  if (!a1 || CFSetContainsValue(a2, a1))
  {
    return;
  }

  v8 = *(a1 + 48);
  if (v8 <= 3)
  {
    if (v8 >= 4)
    {
      goto LABEL_27;
    }

    if (a3)
    {
      if (CFSetContainsValue(a3, a1))
      {
        return;
      }

LABEL_22:

      CFSetAddValue(a3, a1);
      return;
    }
  }

  else
  {
    if ((v8 - 4) < 4)
    {
LABEL_6:
      CFSetAddValue(a2, a1);
      if (*(a1 + 96))
      {
        v9 = 0;
        do
        {
          ContentIndexDocSetIteratorFlatten(*(*(a1 + 72) + 8 * v9++), a2, a3, a4);
        }

        while (v9 < *(a1 + 96));
      }

      if (a4)
      {
        *(a1 + 32) = 0;
      }

      return;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        CFSetAddValue(a2, a1);
        if ((*(a1 + 128) & 0x7FFFFFFF) != 0)
        {
          v10 = 0;
          do
          {
            ContentIndexDocSetIteratorFlatten(*(*(a1 + 120) + 8 * v10++), a2, a3, a4);
          }

          while (v10 < (*(a1 + 128) & 0x7FFFFFFFu));
        }

        goto LABEL_6;
      }

LABEL_27:
      assert_invalid_doc_type(a1);
    }

    if (a3)
    {
      goto LABEL_22;
    }
  }

  if (a4)
  {
    *(a1 + 32) = 1;
  }
}

void ContentIndexDocSetIteratorProcessIterHits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFSet *a5, const __CFSet *a6, uint64_t a7)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  processLeaves(a6, a4, a1, a2, a3, a7);

  processNodes(a5, v9, v12, v11, v10, a7);
}

void processLeaves(const __CFSet *a1, int a2, char a3, int a4, int a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(a1);
  MEMORY[0x1EEE9AC00](v13);
  v15 = block - ((v14 + 15) & 0xFFFFFFFF0);
  bzero(v15, v14);
  CFSetGetValues(a1, v15);
  v24 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __processLeaves_block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[4] = v15;
  block[5] = a6;
  v23 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a2;
  block[6] = &v24;
  dispatch_apply(Count, 0, block);
  if (v24)
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3082, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v18);
    free(v17);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }
}

void processNodes(const __CFSet *a1, int a2, char a3, int a4, int a5, uint64_t a6)
{
  v48 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(a1);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &block[-1] - ((v14 + 15) & 0xFFFFFFFF0);
  bzero(v15, v14);
  CFSetGetValues(a1, v15);
  if (Count)
  {
    if (Count > 1uLL)
    {
      v16 = Count - (Count & 1);
      v17 = (v15 + 8);
      v18 = v16;
      do
      {
        v19 = *v17;
        *(*(v17 - 1) + 32) = 0;
        *(v19 + 32) = 0;
        v17 += 2;
        v18 -= 2;
      }

      while (v18);
      if ((Count & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = Count - v16;
    v21 = &v15[8 * v16];
    do
    {
      v22 = *v21;
      v21 += 8;
      *(v22 + 32) = 0;
      --v20;
    }

    while (v20);
    goto LABEL_9;
  }

  do
  {
LABEL_9:
    if (Count)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = Count;
      do
      {
        v27 = *&v15[8 * v25];
        if (*(v27 + 32))
        {
          v26 = (v26 - 1);
          if (v25 < v26)
          {
            *&v15[8 * v25] = *&v15[8 * v26];
            *&v15[8 * v26] = v27;
          }
        }

        else
        {
          v28 = *(v27 + 48);
          v29 = (v28 - 4) < 4 || v28 == 9;
          if (v29 && (v30 = *(v27 + 96), v30))
          {
            v31 = *(v27 + 72);
            while (*(*v31 + 32) == 1)
            {
              v31 += 8;
              if (!--v30)
              {
                goto LABEL_26;
              }
            }

            v23 = 1;
          }

          else
          {
LABEL_26:
            if (v24 < v25)
            {
              v32 = *&v15[8 * v24];
              *&v15[8 * v24] = v27;
              *&v15[8 * v25] = v32;
            }

            ++v24;
          }

          ++v25;
        }
      }

      while (v25 < v26);
    }

    else
    {
      v26 = 0;
      v24 = 0;
      v23 = 0;
    }

    if (Count < v26)
    {
      v33 = __si_assert_copy_extra_332();
      v34 = v33;
      v35 = "";
      if (v33)
      {
        v35 = v33;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3162, "oldNodeCount >= nodeCount", v35);
LABEL_46:
      free(v34);
      if (__valid_fs(-1))
      {
        v40 = 2989;
      }

      else
      {
        v40 = 3072;
      }

      *v40 = -559038737;
      abort();
    }

    if (v26 && !v24)
    {
      v36 = __si_assert_copy_extra_332();
      v34 = v36;
      v37 = "";
      if (v36)
      {
        v37 = v36;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3163, "processCount || nodeCount == 0", v37);
      goto LABEL_46;
    }

    v47 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __processNodes_block_invoke;
    block[3] = &__block_descriptor_tmp_26_6414;
    block[4] = &v47;
    block[5] = a6;
    v46 = a3;
    v43 = a4;
    v44 = a5;
    v45 = a2;
    block[6] = v15;
    block[7] = &v47 + 1;
    dispatch_apply(v24, 0, block);
    if ((v47 & 0x100) != 0)
    {
      v38 = __si_assert_copy_extra_332();
      v34 = v38;
      v39 = "";
      if (v38)
      {
        v39 = v38;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3197, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v39);
      goto LABEL_46;
    }

    if (v47)
    {
      break;
    }

    Count = v26;
  }

  while (((v26 != 0) & v23) != 0);
}

uint64_t ContentIndexCopyQueryTerms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = CIRetainIndexingTokenizer(a2);
  CITokenizerGetQueryTokensWithOptions(v7);
  CIReleaseIndexingTokenizer(v6);
  *a5 = 0;
  icu_locale_release();
  return 0;
}

void *CIRetainIndexingTokenizer(uint64_t a1)
{
  if (a1 >= 4)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CITokenizer.c", 254, "version>=0 && version<=kCITokenizerVersionCurrent", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      v8 = 2989;
    }

    else
    {
      v8 = 3072;
    }

    *v8 = -559038737;
    abort();
  }

  v1 = a1;
  v2 = OSAtomicDequeue(&gIndexingTokenizerStack + a1, 0);
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    OSAtomicEnqueue(&gIndexingTokenizerHeap, v2, 0);
    return v3;
  }

  else
  {

    return CITokenizerCreate(v1);
  }
}

void CITokenizerGetQueryTokensWithOptions(__n128 a1)
{
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v8 = v7;
  if (v2)
  {
    v9 = v4;
    v10 = v3;
    v11 = v2;
    v12 = v1;
    v14 = v5;
    if (CFStringGetLength(v2))
    {
      v17[0] = v14;
      v17[1] = v8;
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      bzero(&cf, 0x1810uLL);
      CITokenizerSetLocale(v12, v10, 0);
      _CITokenizerGetTokens(v13, v12, *(v12 + 8), v11, &cf, v9 | 0x46u, _CITokenizerGetQueryTokensStart, _CITokenizerGetQueryTokens, 0, 0, _CITokenizerGetQueryTokensEnd, v17);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v16)
      {
        free(v16);
      }
    }

    else
    {

      v14();
    }
  }

  else
  {

    (v5)(0, v6);
  }
}

void _CITokenizerGetTokens(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, _OWORD *, uint64_t *), void (*a11)(void, uint64_t, uint64_t), uint64_t a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v211 = v12;
  v207 = v13;
  v15 = v14;
  v17 = v16;
  v203 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v243 = *MEMORY[0x1E69E9840];
  bzero(v216, 0xC30uLL);
  v218 = -1;
  v25 = *(v24 + 8);
  v212 = v22;
  v213 = v17;
  if (v25 != v22)
  {
    goto LABEL_2;
  }

  if ((v17 & 4) != 0)
  {
    LOBYTE(v26) = 1;
    goto LABEL_7;
  }

  v27 = *(v24 + 72);
  if (v27 <= 0x36)
  {
    v26 = 0x40000000300030uLL >> v27;
  }

  else
  {
LABEL_2:
    LOBYTE(v26) = 0;
  }

LABEL_7:
  v204 = a11;
  v28 = *(v24 + 40);
  v228 = 0;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  memset(v223, 0, sizeof(v223));
  v222 = 0u;
  v221 = 0u;
  bzero(v242, 0x1010uLL);
  bzero(v241, 0x808uLL);
  bzero(&v237, 0x1010uLL);
  bzero(v233, 0x808uLL);
  bzero(v231, 0x808uLL);
  bzero(v230, 0x808uLL);
  CITokenizerStateInit(&v221, v20, v26 & 1, (v213 >> 6) & 1);
  v215 = v24;
  if (*(v24 + 16) == v212)
  {
    LOBYTE(v228) = 1;
  }

  v214 = a12;
  v29 = *(&v227 + 1);
  v30 = v211;
  if (!*(&v227 + 1))
  {
    if (v213)
    {
      if (v15)
      {
        v15(0, 0, v214);
      }

      if (v207)
      {
        v207(0, 0, 0, v214);
      }
    }

    goto LABEL_344;
  }

  v210 = a10;
  _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  if (v15)
  {
    v15(v226, v29, v214);
  }

  v206 = v29;
  v209 = 0;
  v31 = *MEMORY[0x1E695E498];
  v208 = &v217;
  v197 = &v239;
  v198 = v31;
  v195 = (v203 + 24);
  v196 = &v234;
  v205 = &v238;
  v201 = &v232;
  v202 = &v236;
  v199 = &v235;
  v200 = &v240;
  while (1)
  {
LABEL_13:
    v32 = *(&v222 + 1);
    for (i = v222; v32 < v222; i = v222)
    {
      v34 = &v237 + 2 * v32;
      v224 = *v34;
      v35 = v233[v32];
      *&v225 = v35;
      if (v32)
      {
        v36 = v32 + 2;
        if (v32 + 2 < i)
        {
          v37 = v32 - 1;
          v38 = v32 - 2;
          if (v32 < 2 || (v233[v38] & 0x20) == 0 || *(&v237 + 2 * v38 + 1) + *(&v237 + 2 * v38) != *(&v237 + 2 * v37))
          {
            v39 = v35 & 0x20;
            if ((v233[v37] & 0x30) == 0 && v39 != 0 && v34[1] == 1)
            {
              v41 = v223[1];
              v42 = v226 + 2 * v223[1];
              if (*(v42 + 2 * *v34) == 46)
              {
                v43 = v32 + 1;
                if ((v233[v32 + 1] & 0x30) == 0 && (v233[v36] & 0x20) != 0)
                {
                  v44 = &v237 + 2 * v36;
                  if (v44[1] == 1 && *(v42 + 2 * *v44) == 46)
                  {
                    memset(v229, 0, 512);
                    v45 = &v237 + 2 * v37;
                    v46 = v45[1];
                    v194 = v45;
                    if (v46 > 255)
                    {
                      v48 = 0;
                    }

                    else
                    {
                      v47 = 2 * v46;
                      __memcpy_chk();
                      v48 = v47;
                    }

                    v49 = &v197[2 * v32];
                    v50 = &v196[v32];
                    while ((*(v50 - 1) & 0x30) == 0)
                    {
                      if ((*v50 & 0x20) == 0)
                      {
                        goto LABEL_41;
                      }

                      if (*v49 != 1)
                      {
                        goto LABEL_41;
                      }

                      if (*(v42 + 2 * *(v49 - 1)) != 46)
                      {
                        goto LABEL_41;
                      }

                      v51 = *(v49 - 2);
                      v52 = v48 + 2 * v51;
                      if (v52 > 511)
                      {
                        goto LABEL_41;
                      }

                      memcpy(v229 + v48, (v42 + 2 * *(v49 - 3)), 2 * v51);
                      v43 += 2;
                      v36 += 2;
                      v49 += 4;
                      v50 += 2;
                      v48 = v52;
                      if (v36 >= i)
                      {
                        v43 = v36 - 1;
                        goto LABEL_42;
                      }
                    }

                    v43 = v36 - 1;
LABEL_41:
                    v52 = v48;
LABEL_42:
                    v53 = *v194 + v41;
                    v54 = *(&v237 + 2 * v43 - 2) - v53 + *(&v237 + 2 * v43 - 1);
                    v55 = v215;
                    v215[11] = v53;
                    v55[12] = v54;
                    v55[13] = *(&v221 + 1) - 1;
                    v30 = v211;
                    if (v211)
                    {
                      (v211)(v229, v52 >> 1, 0, v214);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v56 = v224;
      v57 = v223[0];
      if (*(&v224 + 1) + v224 > v223[0])
      {
        if ((v225 & 0x20) != 0)
        {
          if (v28 < 2 || *(&v224 + 1) != 1 || (v93 = *(v226 + 2 * v223[1] + 2 * v224), (v93 - 8208) >= 2) && (v93 != 45 ? (v94 = v93 == 65293) : (v94 = 1), !v94))
          {
            v223[0] = *(&v224 + 1) + v224;
            v32 = *(&v222 + 1) + 1;
            v57 = *(&v224 + 1) + v224;
            goto LABEL_133;
          }
        }

        v82 = *(&v237 + 2 * *(&v222 + 1));
        v83 = *(&v237 + 2 * v222 - 1) + *(&v237 + 2 * v222 - 2);
        v223[0] = v83;
        if (v222 <= *(&v222 + 1))
        {
          v57 = v83;
          goto LABEL_132;
        }

        v84 = 0;
        v85 = 0;
        v86 = v226 + 2 * v223[1];
        v87 = &v205[2 * *(&v222 + 1)];
        v88 = 1;
        v89 = *(&v222 + 1);
        while (1)
        {
          v57 = *(v87 - 1);
          v90 = *v87;
          if ((v233[v89] & 0x10000020) == 0x20)
          {
            if (v28 < 2 || v90 != 1)
            {
              goto LABEL_127;
            }

            v91 = *(v86 + 2 * v57);
            if ((v91 - 8208) < 2)
            {
              v90 = 1;
            }

            else
            {
              v92 = v91 == 45 || v91 == 65293;
              v90 = 1;
              if (!v92)
              {
LABEL_127:
                v223[0] = *(v87 - 1);
LABEL_128:
                if (v85 >= 9)
                {
                  if (v84 - v82 <= 63 && (v84 - v82) / v85 > 2)
                  {
                    if (v88)
                    {
                      v111 = v89;
                    }

                    else
                    {
                      v111 = v222 - 1;
                    }

                    if ((v233[v111] & 0x20) != 0)
                    {
                      if (v28 < 2 || (v112 = &v237 + 2 * v111, v112[1] != 1) || (v113 = *(v86 + 2 * *v112), (v113 - 8208) >= 2) && (v113 != 45 ? (v114 = v113 == 65293) : (v114 = 1), !v114))
                      {
                        --v111;
                      }
                    }

                    v115 = 0;
                    v116 = &v202[2 * v111];
                    v32 = v111 - 7;
                    v117 = &v201[v111];
                    v118 = &v200[2 * *(&v222 + 1)];
                    v119 = &v199[*(&v222 + 1)];
                    do
                    {
                      v120 = *v119--;
                      *v117-- = v120;
                      *&v116[v115] = *&v118[v115];
                      v115 -= 2;
                    }

                    while (v115 != -10);
                  }

                  else
                  {
                    *&v224 = v82;
                    *(&v224 + 1) = v84 - v82;
                    v32 = v85 + *(&v222 + 1);
                    v56 = v82;
                  }

                  goto LABEL_133;
                }

LABEL_132:
                v32 = *(&v222 + 1) + 1;
LABEL_133:
                *(&v222 + 1) = v32;
                DWORD2(v225) = 0;
                goto LABEL_185;
              }
            }
          }

          v87 += 2;
          ++v85;
          v84 = v90 + v57;
          v88 = ++v89 < v222;
          if (v222 == v89)
          {
            v57 = v83;
            v85 = v222 - *(&v222 + 1);
            v89 = v222;
            goto LABEL_128;
          }
        }
      }

      DWORD2(v225) = 1;
      v58 = *(&v222 + 1);
      v32 = ++*(&v222 + 1);
      if (v58 < 1)
      {
        goto LABEL_185;
      }

      v59 = v223[1];
      if (v28 >= 2 && *(&v224 + 1) == 1)
      {
        v60 = *(v226 + 2 * v223[1] + 2 * v224);
        v61 = (v60 - 8208) < 2 || v60 == 65293;
        if (v61 || v60 == 45)
        {
          continue;
        }
      }

      v81 = v223[2];
      goto LABEL_186;
    }

    v62 = *(&v221 + 1);
    v63 = v221;
    if (*(&v221 + 1) >= v221)
    {
      *(&v221 + 1) = 0;
      if ((v213 & 2) != 0)
      {
        v63 = _NLStringTokenizerTokenize();
      }

      else
      {
        v63 = _NLStringTokenizerTokenizeWithTranscriptions();
      }

      *&v221 = v63;
      if (!v63)
      {
        if (v209 < v206 && v215[1] == v212)
        {
          handle_missing_punctuation(v226, v209, v206, v207, v214, 0);
        }

        goto LABEL_327;
      }

      v209 = *(&v242[v63 - 1] + 1) + *&v242[v63 - 1];
      v62 = *(&v221 + 1);
    }

    v64 = v62 + 1;
    v65 = v241[v62];
    *(&v221 + 1) = v62 + 1;
    v223[3] = v65;
    *&v223[1] = v242[v62];
    if (v223[2] != 1)
    {
      break;
    }

    if (*(v226 + 2 * v223[1]) == 8204)
    {
      continue;
    }

    if (v228)
    {
      goto LABEL_84;
    }

LABEL_67:
    if (v65 & 1) != 0 || v64 < v63 && (v241[v64])
    {
      if ((v65 & 0x40001000) != 0 || (v66 = *(v226 + 2 * v223[1]), v66 >> 8 >= 0x11) && ((v66 & 0xFF00) == 0x1100 || (v66 - 11904) >> 7 < 0x197 || v66 - 65376 <= 0x4F))
      {
        v229[0] = 0;
        unorm2_getNFCInstance();
        v29 = v206;
        if (v229[0] <= 0)
        {
          v184 = v223[1];
          v185 = v206 - v223[1];
          v186 = malloc_type_malloc(2 * (v206 - v223[1]), 0xE21ED15EuLL);
          if (v186)
          {
            v187 = v186;
            v188 = unorm2_normalize();
            if (v229[0] <= 0)
            {
              v189 = v185 >= v188 ? v188 : v29 - v184;
              v190 = CFStringCreateWithCharactersNoCopy(0, v187, v189, v198);
              if (v190)
              {
                v191 = v190;
                v192 = v215;
                if (!v215[2])
                {
                  *(v192 + 16) = NLStringTokenizerCreate();
                }

                _NLStringTokenizerSetLocale();
                _CITokenizerGetTokens(v193, v192, *(v192 + 16), v191, v203, v213 & 0xFFFFFFFE, 0, v207, v211, 0, 0, v214);
                CFRelease(v191);
              }
            }

            free(v187);
          }
        }

        goto LABEL_344;
      }
    }

    if (v223[2] > 256)
    {
      continue;
    }

    if ((~v65 & 0x401) != 0)
    {
      goto LABEL_84;
    }

    v229[0] = 0;
    unorm2_getNFCInstance();
    if (v229[0] > 0)
    {
      goto LABEL_84;
    }

    v68 = v223[2];
    v69 = v223[2];
    MEMORY[0x1EEE9AC00](v67);
    v71 = &v194 - ((v70 + 15) & 0x3FFFFFFF0);
    bzero(v71, v70);
    v72 = unorm2_normalize();
    if (v229[0] > 0 || (v73 = v72, v72 > v68) || v72 == v68 && memcmp(v71, (v226 + 2 * v223[1]), 2 * v69) || (v74 = CFStringCreateWithCharactersNoCopy(0, v71, v73, v198)) == 0)
    {
      v30 = v211;
      goto LABEL_84;
    }

    v176 = v74;
    v177 = v215;
    if (!v215[2])
    {
      v177[2] = NLStringTokenizerCreate();
    }

    _NLStringTokenizerSetLocale();
    v178 = v177[2];
    v179 = v177;
    v30 = v211;
    _CITokenizerGetTokens(v180, v179, v178, v176, v203, v213 & 0xFFFFFFFE, 0, v207, v211, 0, 0, v214);
    CFRelease(v176);
  }

  if ((v228 & 1) == 0)
  {
    goto LABEL_67;
  }

  if (v223[2] > 256)
  {
    goto LABEL_13;
  }

LABEL_84:
  v75 = v213;
  if ((v213 & 2) == 0)
  {
    if (v231[v62])
    {
      v76 = v215;
      *(v215 + 11) = *&v223[1];
      v76[13] = v62;
      if (v30)
      {
        v30(v230[v62]);
      }
    }
  }

  *(&v222 + 1) = 0;
  DWORD2(v225) = 0;
  if ((v223[3] & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    *&v222 = 1;
    v237 = 0;
    v238 = v223[2];
    v233[0] = 0;
LABEL_117:
    SubTokensOfCompound = 1;
    goto LABEL_136;
  }

  if ((v223[3] & 0x400) == 0)
  {
    goto LABEL_90;
  }

  v169 = *v203;
  if (*v203)
  {
    v244.length = CFStringGetLength(*v203);
    v244.location = 0;
    CFStringDelete(v169, v244);
    v30 = v211;
  }

  else
  {
    v170 = *(v203 + 8);
    v30 = v211;
    if (!v170)
    {
      v170 = malloc_type_malloc(0x400uLL, 0x1000040BDFB0063uLL);
      *(v203 + 8) = v170;
      if (!v170)
      {
        goto LABEL_327;
      }
    }

    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v170, 0, 512, v198);
    *v203 = MutableWithExternalCharactersNoCopy;
    if (!MutableWithExternalCharactersNoCopy)
    {
      goto LABEL_327;
    }
  }

  *&v222 = 0;
  DerivedTokens = _NLStringTokenizerGetDerivedTokens();
  *&v222 = DerivedTokens;
  if (DerivedTokens == 1)
  {
    v77 = v223[2];
    v75 = v213;
    if (v223[2] == v238)
    {
      *&v222 = 0;
      goto LABEL_91;
    }

    DerivedTokens = 1;
LABEL_310:
    v173 = 0;
    v174 = v195;
    do
    {
      if (*v174)
      {
        v175 = v215;
        *(v215 + 11) = *&v223[1];
        v175[13] = v62;
        if (v211)
        {
          (v211)(*(v203 + 8) + 2 * *(v174 - 1), *v174, 2, v214, &v237, 1, 4294959088);
          DerivedTokens = v222;
        }
      }

      ++v173;
      v174 += 2;
    }

    while (v173 < DerivedTokens);
  }

  else
  {
    v75 = v213;
    if (DerivedTokens >= 1)
    {
      goto LABEL_310;
    }
  }

LABEL_90:
  v77 = v223[2];
  v30 = v211;
LABEL_91:
  if (v77 < 2 || (v75 & 0x20) != 0 && (v223[3] & 0x200) == 0)
  {
LABEL_135:
    *&v222 = 1;
    v237 = 0;
    v238 = v77;
    SubTokensOfCompound = 1;
    v233[0] = 0;
    goto LABEL_136;
  }

  SubTokensOfCompound = _NLStringTokenizerGetSubTokensOfCompound();
  *&v222 = SubTokensOfCompound;
  if (!SubTokensOfCompound)
  {
    v77 = v223[2];
    goto LABEL_135;
  }

  if (SubTokensOfCompound < 2)
  {
    v110 = SubTokensOfCompound;
LABEL_160:
    SubTokensOfCompound = v110;
    if (!v110)
    {
      goto LABEL_13;
    }
  }

  else if ((v223[3] & 0x20) != 0)
  {
    if ((v75 & 8) != 0 && (v223[3] & 0x40001000) == 0)
    {
      v79 = v223[2];
      v80 = &v237 + 2 * *(&v222 + 1);
      *v80 = 0;
      v80[1] = v79;
      *&v222 = 1;
      goto LABEL_117;
    }

    LOBYTE(v159) = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = v226 + 2 * v223[1];
    v164 = v205;
    v110 = SubTokensOfCompound;
    while (2)
    {
      v165 = v233[v161];
      if ((v165 & 0x20) != 0)
      {
        if (*v164 != 1)
        {
          goto LABEL_288;
        }

        v166 = *(v163 + 2 * *(v164 - 1));
        if (v166 != 8217 && v166 != 39)
        {
          goto LABEL_288;
        }

        if (!v161)
        {
          goto LABEL_160;
        }

        if (!v159)
        {
LABEL_288:
          LOBYTE(v159) = 0;
          goto LABEL_290;
        }

        --v162;
        ++*(&v237 + 2 * v162 + 1);
        v167 = v233[v162];
        if ((v167 & 0x20) == 0)
        {
          v233[v162] = v167 | 0x10000020;
        }

        LOBYTE(v159) = 0;
        *&v222 = --v110;
        v160 = 1;
      }

      else
      {
        v159 = (v165 & 0xFFFFFFFFFFFFFFD1) == 0;
        if ((v160 & v159) == 1)
        {
          if (*v164 <= 2)
          {
            v160 = 0;
            LOBYTE(v159) = 0;
            *(&v237 + 2 * v162 + 1) += *v164;
            v233[v162++] |= v165;
            *&v222 = --v110;
            goto LABEL_291;
          }

          LOBYTE(v159) = 1;
        }

LABEL_290:
        v168 = v162 + (v160 & 1);
        *(&v237 + v168) = *(v164 - 1);
        v162 = v168 + 1;
        v233[v168] = v165;
        v160 = 0;
      }

LABEL_291:
      ++v161;
      v164 += 2;
      if (SubTokensOfCompound == v161)
      {
        goto LABEL_160;
      }

      continue;
    }
  }

LABEL_136:
  v95 = &v237 + 2 * *(&v222 + 1);
  v224 = *v95;
  v96 = v233[*(&v222 + 1)];
  *&v225 = v96;
  if ((v96 & 0x20) != 0)
  {
    v57 = *(&v224 + 1) + v224;
    v223[0] = *(&v224 + 1) + v224;
LABEL_183:
    v32 = *(&v222 + 1) + 1;
    goto LABEL_184;
  }

  v97 = *v95;
  v98 = *(&v237 + 2 * SubTokensOfCompound - 1) + *(&v237 + 2 * SubTokensOfCompound - 2);
  v223[0] = v98;
  if (*(&v222 + 1) >= SubTokensOfCompound)
  {
    v105 = v96;
    v57 = v98;
LABEL_182:
    *&v225 = v105 | v96;
    goto LABEL_183;
  }

  v99 = 0;
  v100 = 0;
  v101 = v226 + 2 * v223[1];
  v102 = &v205[2 * *(&v222 + 1)];
  v103 = 1;
  v104 = *(&v222 + 1);
  v105 = v96;
  while (1)
  {
    if ((v233[v104] & 0x10000020) != 0x20)
    {
      ++v99;
      v57 = *(v102 - 1);
      v106 = *v102;
      goto LABEL_155;
    }

    v57 = *(v102 - 1);
    if (v28 < 2)
    {
      break;
    }

    v106 = *v102;
    if (*v102 != 1)
    {
      v107 = v106 == 2 && BYTE1(v228) & (v223[2] + v223[1] == *(&v227 + 1));
      if (!v107 || *(v101 + 2 + 2 * v57) != 42)
      {
        break;
      }
    }

    v108 = *(v101 + 2 * v57);
    if ((v108 - 8208) >= 2 && v108 != 45 && v108 != 65293)
    {
      break;
    }

    v105 |= 0x10uLL;
LABEL_155:
    v100 = v106 + v57;
    v103 = ++v104 < SubTokensOfCompound;
    v102 += 2;
    if (SubTokensOfCompound == v104)
    {
      v57 = v98;
      v104 = SubTokensOfCompound;
      goto LABEL_178;
    }
  }

  v223[0] = *(v102 - 1);
LABEL_178:
  v30 = v211;
  if (v99 < 9)
  {
    goto LABEL_182;
  }

  if (v100 - v97 <= 63 && (v100 - v97) / v99 > 2)
  {
    if (v103)
    {
      v143 = v104;
    }

    else
    {
      v143 = SubTokensOfCompound - 1;
    }

    if ((v233[v143] & 0x20) != 0)
    {
      if (v28 < 2 || (v150 = &v237 + 2 * v143, v150[1] != 1) || (v151 = *(v226 + 2 * v223[1] + 2 * *v150), (v151 - 8208) >= 2) && (v151 != 45 ? (v152 = v151 == 65293) : (v152 = 1), !v152))
      {
        --v143;
      }
    }

    v153 = 0;
    v154 = &v202[2 * v143];
    v32 = v143 - 7;
    v155 = &v201[v143];
    v156 = &v200[2 * *(&v222 + 1)];
    v157 = &v199[*(&v222 + 1)];
    do
    {
      v158 = *v157--;
      *v155-- = v158;
      *&v154[v153] = *&v156[v153];
      v153 -= 2;
    }

    while (v153 != -10);
  }

  else
  {
    *&v224 = v97;
    *(&v224 + 1) = v100 - v97;
    v32 = v99 + *(&v222 + 1);
  }

LABEL_184:
  *(&v222 + 1) = v32;
  v56 = v224;
LABEL_185:
  v59 = v223[1];
  v81 = v223[2];
  v121 = v223[2];
  v122 = v223[1];
  if (v32)
  {
LABEL_186:
    v122 = v59;
    v121 = v81;
    v59 += v56;
    v81 -= v56;
  }

  v123 = v215;
  v215[11] = v59;
  v123[12] = v81;
  v124 = v226;
  v123[13] = *(&v221 + 1) - 1;
  v125 = (v124 + 2 * v122 + 2 * v56);
  v126 = v57 - v56;
  v127 = *v125;
  if ((v127 - 12441) <= 1)
  {
    if (!v126)
    {
      goto LABEL_13;
    }

    while (*v125 - 12441 <= 1)
    {
      ++v125;
      if (!--v126)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v121 == 1 && (v127 & 0xF800 | 0x400) == 0xDC00)
  {
    goto LABEL_13;
  }

  if (DWORD2(v225))
  {
    if (v30)
    {
      v128 = (v30)(v125, v126, 0, v214);
      if (v128)
      {
        goto LABEL_226;
      }
    }

    else
    {
      v128 = 0;
    }

    goto LABEL_221;
  }

  v129 = v207;
  if ((v213 & 0x10) == 0 || ((v223[3] & 0x40001000) != 0 ? (v130 = v126 < 2) : (v130 = 1), v130))
  {
    if (v207)
    {
      v128 = v207(v125, v126, v225, v214);
    }

    else
    {
      v128 = 0;
    }

    goto LABEL_204;
  }

  v139 = 0;
  v140 = 0;
  while (1)
  {
    v141 = &v125[v139];
    if ((*v141 & 0xFC00) == 0xD800)
    {
      break;
    }

    if (v129)
    {
      v142 = 1;
      goto LABEL_237;
    }

LABEL_238:
    v140 = 0;
LABEL_239:
    if (++v139 >= v126 || (v140 & 1) != 0)
    {
      goto LABEL_241;
    }
  }

  if (++v139 < v126 && (v125[v139] & 0xFC00) == 0xDC00)
  {
    if (v129)
    {
      v142 = 2;
LABEL_237:
      v140 = v129(v141, v142, v225, v214);
      goto LABEL_239;
    }

    goto LABEL_238;
  }

LABEL_241:
  if (v140)
  {
    v128 = v140;
  }

  else
  {
    v128 = 0;
  }

  if (v140)
  {
LABEL_204:
    v30 = v211;
    goto LABEL_205;
  }

  v30 = v211;
  if (v211)
  {
    v128 = (v211)(v125, v126, 3, v214);
  }

LABEL_205:
  if (!v210)
  {
LABEL_220:
    if (v128)
    {
      goto LABEL_226;
    }

    goto LABEL_221;
  }

  if (v220 < 128)
  {
    v131 = (v125 - v226) >> 1;
    if (v220)
    {
      v132 = *(&v216[v220 - 1] + 1) + *&v216[v220 - 1];
      if (v132 < v131)
      {
        handle_missing_punctuation(v226, v132, (v125 - v226) >> 1, sentenceTokenizerMissingPunctuation, v216, 1);
      }
    }
  }

  else
  {
    v210(v226, v216, v208);
    v220 = 0;
    v131 = (v125 - v226) >> 1;
  }

  if (v126)
  {
    v218 = v131;
    v219 = v126;
    v133 = &v216[v220];
    *v133 = v131;
    v133[1] = v126;
    v208[v220++] = v225;
  }

  v134 = &v125[v126];
  if (v134 >= v226 + 2 * v206)
  {
    goto LABEL_218;
  }

  v135 = *v134;
  switch(v135)
  {
    case 9:
      goto LABEL_218;
    case 8200:
      goto LABEL_218;
    case 12288:
      goto LABEL_218;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  if (CFCharacterSetIsCharacterMember(Predefined, v135))
  {
    goto LABEL_218;
  }

  if (*(&v222 + 1) != v222)
  {
LABEL_219:
    v30 = v211;
    goto LABEL_220;
  }

  if (*(&v221 + 1) < v221)
  {
    v144 = v226 + 2 * *&v242[*(&v221 + 1)];
    if (v134 < v144)
    {
      v145 = *(&v242[*(&v221 + 1) - 1] + 1) + *&v242[*(&v221 + 1) - 1];
      v146 = 2 * v145 + 2;
      while (1)
      {
        v147 = *v134;
        if (v147 == 9 || v147 == 8200)
        {
          break;
        }

        if (v147 == 12288)
        {
          break;
        }

        v149 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
        if (CFCharacterSetIsCharacterMember(v149, v147))
        {
          break;
        }

        ++v145;
        v134 = (v226 + v146);
        v146 += 2;
        if (v226 + 2 * v145 >= v144)
        {
          goto LABEL_219;
        }
      }

LABEL_218:
      (v210)(v226, v216, v208, v220, v214);
      v220 = 0;
      goto LABEL_219;
    }
  }

  v30 = v211;
  if ((v128 & 1) == 0)
  {
LABEL_221:
    if (v215[1] == v212 && v222 == *(&v222 + 1) && *(&v221 + 1) < v221)
    {
      v137 = &v242[*(&v221 + 1)];
      v138 = *(v137 - 1) + *(v137 - 2);
      if (v138 < *v137)
      {
        v128 = handle_missing_punctuation(v226, v138, *v137, v207, v214, 0);
      }
    }
  }

LABEL_226:
  if ((v128 & 1) == 0)
  {
    if ((v128 & 2) != 0 && !DWORD2(v225))
    {
      v223[3] &= ~0x400uLL;
    }

    goto LABEL_13;
  }

LABEL_327:
  v29 = v206;
  if (v210)
  {
    v181 = v220;
    if (v220)
    {
      if (v220 <= 127)
      {
        v182 = *(&v216[v220 - 1] + 1) + *&v216[v220 - 1];
        v183 = v226;
        if (v182 < v206)
        {
          handle_missing_punctuation(v226, v182, v206, sentenceTokenizerMissingPunctuation, v216, 1);
          v183 = v226;
          v181 = v220;
        }

        (v210)(v183, v216, v208, v181, v214);
        v220 = 0;
      }
    }
  }

LABEL_344:
  if (v204)
  {
    v204(v226, v29, v214);
  }

  if (v227)
  {
    CFRelease(v227);
  }

  if (*(&v226 + 1))
  {
    free(*(&v226 + 1));
  }
}

void CITokenizerStateInit(uint64_t a1, CFStringRef theString, int a3, int a4)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  CharactersPtr = CFStringGetCharactersPtr(theString);
  *(a1 + 96) = CharactersPtr;
  if (!CharactersPtr)
  {
    v10 = malloc_type_malloc(2 * Length + 32, 0x1000040BDFB0063uLL);
    *(a1 + 104) = v10;
    if (!v10)
    {
      v18 = __si_assert_copy_extra_332();
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = "";
      }

      v21 = __error();
      __message_assert("%s:%u: failed assertion '%s' %s alloc err:%d (%x)", "CITokenizer.c", 78, "state->uniChars", v20, *v21, Length);
      free(v19);
      if (__valid_fs(-1))
      {
        v22 = 2989;
      }

      else
      {
        v22 = 3072;
      }

      *v22 = -559038737;
      abort();
    }

    v23.location = 0;
    v23.length = Length;
    CFStringGetCharacters(theString, v23, v10);
    *(a1 + 96) = *(a1 + 104);
  }

  *(a1 + 120) = Length;
  if (!a3 || Length < 1)
  {
    goto LABEL_10;
  }

  unorm2_getNFCInstance();
  if (unorm2_quickCheck() == 1)
  {
    *(a1 + 128) = 1;
    if (!a4)
    {
      return;
    }

    goto LABEL_11;
  }

  v13 = malloc_type_malloc(2 * (Length & 0x7FFFFFFF), 0x1000040BDFB0063uLL);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = unorm2_normalize();
  v16 = v15;
  *(a1 + 128) = 1;
  if (v15 == Length && !memcmp(*(a1 + 96), v14, Length & 0x7FFFFFFF))
  {
    free(v14);
LABEL_10:
    if (!a4)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v16 < Length)
  {
    LODWORD(Length) = v16;
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    free(v17);
  }

  *(a1 + 96) = v14;
  *(a1 + 104) = v14;
  *(a1 + 112) = CFStringCreateWithCharactersNoCopy(0, v14, Length, *MEMORY[0x1E695E498]);
  *(a1 + 120) = Length;
  if (a4)
  {
LABEL_11:
    v11 = *(a1 + 120);
    if (v11 >= 2)
    {
      v12 = *(a1 + 96) + 2 * v11;
      if (*(v12 - 2) == 42 && (*(v12 - 4) != 92 || v11 != 2 && *(v12 - 6) != 92))
      {
        *(a1 + 129) = 1;
      }
    }
  }
}

uint64_t _CITokenizerGetQueryTokensStart(uint64_t result, uint64_t a2, void *a3)
{
  a3[5] = result;
  a3[2] = result;
  a3[3] = result + 2 * a2;
  return result;
}

uint64_t ContentIndexDocSetGrabBitVector(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 3)
  {
    if (v1 < 3)
    {
      return 0;
    }

    if (v1 != 3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((v1 - 4) < 4)
    {
      return *(a1 + 80);
    }

    if (v1 != 8)
    {
      if (v1 == 9)
      {
        return *(a1 + 80);
      }

LABEL_12:
      assert_invalid_doc_type(a1);
    }
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 0;
  }

  return *(v3 + 88);
}

_DWORD *CIIndexSetCreateWithRangeWithCache(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    a1 = 1;
  }

  else
  {
    a1 = a1;
  }

  if (a1 > a2)
  {
    v10 = __si_assert_copy_extra_332();
    v18 = v10;
    v19 = "";
    if (v10)
    {
      v19 = v10;
    }

    __message_assert_336(v10, v11, v12, v13, v14, v15, v16, v17, "CIIndexSet.c", 1101, "start <= end", v19);
LABEL_23:
    free(v18);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v3 = *a3;
  if (!*a3)
  {
    goto LABEL_14;
  }

  if (*v3 != 2882339105)
  {
    v20 = __si_assert_copy_extra_332();
    v18 = v20;
    v28 = "";
    if (v20)
    {
      v28 = v20;
    }

    __message_assert_336(v20, v21, v22, v23, v24, v25, v26, v27, "CIIndexSet.c", 1103, "indexSetCache->sharedCache->signature == CI_SHAREDCACHE_SIGNATURE", v28);
    goto LABEL_23;
  }

  v4 = *(a3 + 8);
  if (v4 || (v5 = a1, v6 = a2, v7 = a3, v8 = cicachelistdequeue((v3 + 1), 20), a3 = v7, a2 = v6, v4 = v8, a1 = v5, v4))
  {
    *(a3 + 8) = *(v4 + 40);
    *(v4 + 16) = -2;
    *(v4 + 20) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    if (CIIndexSetGetTypeID_onceToken != -1)
    {
      dispatch_once(&CIIndexSetGetTypeID_onceToken, &__block_literal_global_5901);
    }

    _CFRuntimeSetInstanceTypeID();
    if (*(v4 + 20) > *(v4 + 24))
    {
      v29 = __si_assert_copy_extra_332();
      v37 = v29;
      v38 = "";
      if (v29)
      {
        v38 = v29;
      }

      __message_assert_336(v29, v30, v31, v32, v33, v34, v35, v36, "CIIndexSet.c", 1131, "set->_start <= set->_end", v38);
      free(v37);
      if (__valid_fs(-1))
      {
        v39 = 2989;
      }

      else
      {
        v39 = 3072;
      }

      *v39 = -559038737;
      abort();
    }

    return v4;
  }

LABEL_14:

  return CIIndexSetCreateWithRange(a1, a2, 1);
}

uint64_t _CITokenizerGetQueryTokens(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a1;
    if (*(a4 + 16) <= a1)
    {
      v6 = a2;
      v7 = *(a4 + 24);
      if (v7 > a1 && a1 + 2 * a2 <= v7)
      {
        v9 = (a1 - 2);
        v10 = *(a4 + 40);
        if (a1 - 2 >= v10)
        {
          while (1)
          {
            v11 = v9 - 1;
            if (*v9 != 42)
            {
              break;
            }

            --v9;
            if (v11 > v10 && *v11 == 92)
            {
              goto LABEL_14;
            }

            v5 -= 2;
            ++v6;
            if (v11 < v10)
            {
              v5 = (v11 + 1);
              goto LABEL_14;
            }
          }

          v5 = (v9 + 1);
        }

LABEL_14:
        v12 = *(a4 + 48);
        if (v12)
        {
          v13 = *(a4 + 32);
          for (i = (v13 + 2 * v12); i < v5 && *i == 42; ++i)
          {
            *(a4 + 48) = ++v12;
          }

          v15 = v13 + 2 * v12;
          if (v15 == v5)
          {
            if (*(v15 - 2) == 42 && (v12 < 2 || *(v15 - 4) != 92))
            {
              *(a4 + 48) = v12 + v6;
              return 0;
            }
          }

          else
          {
            (*a4)();
            v12 = 0;
            v16 = *(a4 + 32) + 2 * *(a4 + 48);
            *(a4 + 32) = 0;
            *(a4 + 40) = v16;
            *(a4 + 48) = 0;
          }
        }

        v17 = (v5 + 2 * v6);
        if (*(v17 - 1) == 42 && (v6 < 2 || *(v17 - 2) != 92) || v17 < *(a4 + 24) && *v17 == 42)
        {
          v18 = *(a4 + 32);
          if (!v18)
          {
            *(a4 + 32) = v5;
            v18 = v5;
          }

          *(a4 + 40) = v18 + 2 * (v12 + v6);
          *(a4 + 48) = v12 + v6;
        }

        else
        {
          if (v12)
          {
            (*a4)(*(a4 + 32), v12, *(a4 + 8));
            v19 = *(a4 + 32) + 2 * *(a4 + 48);
            *(a4 + 32) = 0;
            *(a4 + 40) = v19;
            *(a4 + 48) = 0;
          }

          (*a4)(v5, v6, *(a4 + 8));
          *(a4 + 40) = v17;
        }
      }
    }
  }

  return 0;
}

uint64_t _CITokenizerGetQueryTokensEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  if (v3)
  {
    return (*a3)(*(a3 + 32), v3, *(a3 + 8));
  }

  return result;
}

void CIIndexSetRemoveRange(uint64_t cf, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = *(cf + 20);
  v4 = *(cf + 24);
  v7 = *(a2 + 20);
  v6 = *(a2 + 24);
  if (v4 >= v6)
  {
    v8 = *(a2 + 24);
  }

  else
  {
    v8 = *(cf + 24);
  }

  v9 = v6 >= a4 && v4 >= a4;
  if (v9)
  {
    v10 = a4;
  }

  else
  {
    v10 = v8;
  }

  if (v5 <= v7)
  {
    v11 = *(a2 + 20);
  }

  else
  {
    v11 = *(cf + 20);
  }

  v12 = v7 > a3 || v5 > a3;
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = a3;
  }

  if (v13 > v10)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v128 = *__error();
      v129 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        v130[0] = 67109376;
        v130[1] = v13;
        v131 = 1024;
        v132 = v10;
        _os_log_impl(&dword_1C278D000, v129, OS_LOG_TYPE_DEFAULT, "%d start, end:%d", v130, 0xEu);
      }

      *__error() = v128;
    }

    return;
  }

  v16 = *(a2 + 16);
  if (v16 <= -10)
  {
    if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
    {
      _CIIndexSetForceBitmap(cf, 0, 0);
    }

    v16 = *(a2 + 16);
  }

  v17 = *(cf + 16);
  if (v17 > -10)
  {
    if (v16 > -10)
    {
      if ((v16 & 0x80000000) == 0)
      {
        if (v13)
        {
          v46 = v13 - 1;
        }

        else
        {
          v46 = 0;
        }

        v33 = binarySearchMap(a2, v46);
        LODWORD(v34) = binarySearchMap(a2, v10);
        v47 = *(a2 + 36);
        v48 = v33 > v47 && v34 > v47;
        v49 = v33 > v47 || v34 >= v47;
        v50 = CFGetTypeID(a2);
        if (!v48 && v49)
        {
          if (v50 == __kCIIndexSetInvertedTypeID)
          {
            v51 = *(a2 + 16);
            v53 = *(a2 + 32);
            v52 = *(a2 + 36);
            v54 = v53 - v51 + v52;
            if (v33 <= v54)
            {
              v110 = 0;
            }

            else
            {
              if (v33 <= v54)
              {
                v55 = *(a2 + 40);
              }

              else
              {
                v55 = *(a2 + 40);
                v56 = v33 - 1;
                do
                {
                  v57 = *(v55 + 4 * v56);
                  if (v57 > v13)
                  {
                    _CIIndexSetClearRange(cf, v13, v57 - 1);
                    v55 = *(a2 + 40);
                    v51 = *(a2 + 16);
                    v53 = *(a2 + 32);
                    v52 = *(a2 + 36);
                    v57 = *(v55 + 4 * v56);
                  }

                  v13 = v57 + 1;
                  v54 = v53 - v51 + v52;
                  v12 = v56-- <= v54;
                }

                while (!v12);
              }

              v110 = *(v55 + 4 * v54) == v10;
            }

            if (v52 > v34)
            {
              v125 = v52;
              v34 = v34;
              v122 = *(a2 + 40);
              v126 = v125 - 1;
              do
              {
                v127 = *(v122 + 4 * v126);
                if (v127 > v13)
                {
                  _CIIndexSetClearRange(cf, v13, v127 - 1);
                  v122 = *(a2 + 40);
                  v127 = *(v122 + 4 * v126);
                }

                v13 = v127 + 1;
                v12 = v126-- <= v34;
              }

              while (!v12);
              goto LABEL_273;
            }

LABEL_275:
            if (v110)
            {
              return;
            }

            goto LABEL_276;
          }

          goto LABEL_139;
        }

        if (v50 == __kCIIndexSetInvertedTypeID)
        {
          if (v33 > v34)
          {
            v72 = *(a2 + 40);
            v73 = v33 - 1;
            do
            {
              v74 = *(v72 + 4 * v73);
              if (v74 > v13)
              {
                _CIIndexSetClearRange(cf, v13, v74 - 1);
                v72 = *(a2 + 40);
                v74 = *(v72 + 4 * v73);
              }

              v13 = v74 + 1;
              v12 = v73-- <= v34;
            }

            while (!v12);
            if (*(v72 + 4 * v34) == v10)
            {
              return;
            }
          }

LABEL_276:
          if (v10 >= v13)
          {

            _CIIndexSetClearRange(cf, v13, v10);
          }

          return;
        }

LABEL_135:
        v75 = (*(a2 + 40) + 4 * v34);
        v76 = (v33 - v34);
LABEL_200:

        CIIndexSetRemoveSortedIndexes(cf, v75, v76);
        return;
      }

      v66 = -2 - v16;
      v67 = (a2 + 32);
      if (v16 > 0xFFFFFFFD || *v67 <= v10)
      {
        v68 = 0;
      }

      else
      {
        if (v16 == -3)
        {
          goto LABEL_122;
        }

        if (*(a2 + 36) <= v10)
        {
          v68 = 1;
        }

        else
        {
          if (v16 == -4)
          {
            goto LABEL_122;
          }

          if (*(a2 + 40) <= v10)
          {
            v68 = 2;
          }

          else
          {
            if (v16 == -5)
            {
              goto LABEL_122;
            }

            if (*(a2 + 44) <= v10)
            {
              v68 = 3;
            }

            else
            {
              if (v16 == -6)
              {
                goto LABEL_122;
              }

              if (*(a2 + 48) <= v10)
              {
                v68 = 4;
              }

              else
              {
                if (v16 == -7)
                {
                  goto LABEL_122;
                }

                if (*(a2 + 52) <= v10)
                {
                  v68 = 5;
                }

                else
                {
                  if (v16 == -8 || *(a2 + 56) > v10)
                  {
                    goto LABEL_122;
                  }

                  v68 = 6;
                }
              }
            }
          }
        }
      }

      if (v13)
      {
        v94 = v13 - 1;
      }

      else
      {
        v94 = 0;
      }

      if (v68 < v66)
      {
        v92 = v68;
        v93 = v68;
        while (v67[v93] > v94)
        {
          if (v66 == ++v93)
          {
LABEL_195:
            LODWORD(v93) = v66;
            goto LABEL_197;
          }
        }

        goto LABEL_197;
      }

      v68 = v66;
      goto LABEL_196;
    }

    if ((v17 & 0x80000000) == 0)
    {
      v26 = *(cf + 36);
      if (v26 != v17)
      {
        memmove((*(cf + 40) + 4 * v26), (*(cf + 40) + 4 * (v26 - v17 + *(cf + 32))), 4 * (v17 - v26));
        *(cf + 36) = *(cf + 16);
      }

      v27 = binarySearchMap(cf, v10);
      v28 = *(cf + 16);
      if (v27 < v28 && *(*(cf + 40) + 4 * v27) > v10)
      {
        ++v27;
      }

      if (v27 >= v28)
      {
        v77 = v27;
      }

      else
      {
        v29 = v27;
        do
        {
          v30 = *(cf + 40);
          v31 = *(v30 + 4 * v29);
          if (v31 > v10)
          {
            break;
          }

          if (v31 < v13 || ((*(*(a2 + 40) + 4 * ((*(a2 + 24) - v31) >> 5)) >> (*(a2 + 24) - v31)) & 1) == 0)
          {
            *(v30 + 4 * v27) = v31;
            v28 = *(cf + 16);
            ++v27;
          }

          ++v29;
        }

        while (v29 < v28);
        v77 = v27;
        v27 = v29;
      }

      v78 = v77 - v27 + v28;
      *(cf + 16) = v78;
      *(cf + 36) = v78;
      return;
    }

    v64 = (cf + 32);
    if (v17 > 0xFFFFFFFD || *v64 <= v10)
    {
      v65 = 0;
    }

    else
    {
      if (v17 == -3)
      {
        return;
      }

      if (*(cf + 36) <= v10)
      {
        v65 = 1;
      }

      else
      {
        if (v17 == -4)
        {
          return;
        }

        if (*(cf + 40) <= v10)
        {
          v65 = 2;
        }

        else
        {
          if (v17 == -5)
          {
            return;
          }

          if (*(cf + 44) <= v10)
          {
            v65 = 3;
          }

          else
          {
            if (v17 == -6)
            {
              return;
            }

            if (*(cf + 48) <= v10)
            {
              v65 = 4;
            }

            else
            {
              if (v17 == -7)
              {
                return;
              }

              if (*(cf + 52) <= v10)
              {
                v65 = 5;
              }

              else
              {
                if (v17 == -8 || *(cf + 56) > v10)
                {
                  return;
                }

                v65 = 6;
              }
            }
          }
        }
      }
    }

    v80 = (-2 - v17);
    if (v65 >= v80)
    {
      return;
    }

    v81 = v80 - v65;
    for (i = (cf + 4 * v65 + 32); ; ++i)
    {
      v83 = *i;
      if (*i < v13)
      {
        return;
      }

      if (a2)
      {
        if (*(a2 + 20) <= v83)
        {
          v84 = *(a2 + 24);
          v85 = v84 - v83;
          if (v84 >= v83)
          {
            v86 = *(a2 + 16);
            if (v86 > -10)
            {
              if (v86 < 0)
              {
                if (v86 < 0xFFFFFFFE && (*(a2 + 32) == v83 || v86 != -3 && (*(a2 + 36) == v83 || v86 != -4 && (*(a2 + 40) == v83 || v86 != -5 && (*(a2 + 44) == v83 || v86 != -6 && (*(a2 + 48) == v83 || v86 != -7 && (*(a2 + 52) == v83 || v86 != -8 && *(a2 + 56) == v83)))))))
                {
                  goto LABEL_162;
                }
              }

              else
              {
                v87 = binarySearchMap(a2, *i);
                v88 = *(a2 + 36);
                if (v87 < v88 || (v89 = 0, v90 = *(a2 + 32), v87 < v90) && v87 >= v90 + v88 - *(a2 + 16))
                {
                  v89 = *(*(a2 + 40) + 4 * v87) == v83;
                }

                if ((v89 ^ (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID)))
                {
LABEL_162:
                  ++*(cf + 16);
                  goto LABEL_148;
                }

                v83 = *i;
              }
            }

            else if ((*(*(a2 + 40) + 4 * (v85 >> 5)) >> v85))
            {
              goto LABEL_162;
            }
          }
        }
      }

      v64[v65++] = v83;
LABEL_148:
      if (!--v81)
      {
        return;
      }
    }
  }

  if (v16 > -10)
  {
    if ((v16 & 0x80000000) == 0)
    {
      if (v13)
      {
        v32 = v13 - 1;
      }

      else
      {
        v32 = 0;
      }

      v33 = binarySearchMap(a2, v32);
      LODWORD(v34) = binarySearchMap(a2, v10);
      v35 = *(a2 + 36);
      v36 = v33 > v35 && v34 > v35;
      v37 = v33 > v35 || v34 >= v35;
      v38 = CFGetTypeID(a2);
      if (!v36 && v37)
      {
        if (v38 == __kCIIndexSetInvertedTypeID)
        {
          v39 = *(a2 + 16);
          v41 = *(a2 + 32);
          v40 = *(a2 + 36);
          v42 = v41 - v39 + v40;
          if (v33 <= v42)
          {
            v110 = 0;
          }

          else
          {
            if (v33 <= v42)
            {
              v43 = *(a2 + 40);
            }

            else
            {
              v43 = *(a2 + 40);
              v44 = v33 - 1;
              do
              {
                v45 = *(v43 + 4 * v44);
                if (v45 > v13)
                {
                  _CIIndexSetClearRange(cf, v13, v45 - 1);
                  v43 = *(a2 + 40);
                  v39 = *(a2 + 16);
                  v41 = *(a2 + 32);
                  v40 = *(a2 + 36);
                  v45 = *(v43 + 4 * v44);
                }

                v13 = v45 + 1;
                v42 = v41 - v39 + v40;
                v12 = v44-- <= v42;
              }

              while (!v12);
            }

            v110 = *(v43 + 4 * v42) == v10;
          }

          if (v40 > v34)
          {
            v121 = v40;
            v34 = v34;
            v122 = *(a2 + 40);
            v123 = v121 - 1;
            do
            {
              v124 = *(v122 + 4 * v123);
              if (v124 > v13)
              {
                _CIIndexSetClearRange(cf, v13, v124 - 1);
                v122 = *(a2 + 40);
                v124 = *(v122 + 4 * v123);
              }

              v13 = v124 + 1;
              v12 = v123-- <= v34;
            }

            while (!v12);
LABEL_273:
            if (*(v122 + 4 * v34) == v10)
            {
              v110 = 1;
            }

            goto LABEL_275;
          }

          goto LABEL_275;
        }

LABEL_139:
        v79 = *(a2 + 32) - *(a2 + 16) + *(a2 + 36);
        CIIndexSetRemoveSortedIndexes(cf, (*(a2 + 40) + 4 * v79), v33 - v79);
        v75 = (*(a2 + 40) + 4 * v34);
        v76 = (*(a2 + 36) - v34);
        goto LABEL_200;
      }

      if (v38 == __kCIIndexSetInvertedTypeID)
      {
        if (v33 <= v34)
        {
          v109 = 0;
        }

        else
        {
          v69 = *(a2 + 40);
          v70 = v33 - 1;
          do
          {
            v71 = *(v69 + 4 * v70);
            if (v71 > v13)
            {
              _CIIndexSetClearRange(cf, v13, v71 - 1);
              v69 = *(a2 + 40);
              v71 = *(v69 + 4 * v70);
            }

            v13 = v71 + 1;
            v12 = v70-- <= v34;
          }

          while (!v12);
          v109 = *(v69 + 4 * v34) == v10;
        }

        if (v109)
        {
          return;
        }

        goto LABEL_276;
      }

      goto LABEL_135;
    }

    v66 = -2 - v16;
    v67 = (a2 + 32);
    if (v16 > 0xFFFFFFFD || *v67 <= v10)
    {
      v68 = 0;
      goto LABEL_177;
    }

    if (v16 != -3)
    {
      if (*(a2 + 36) <= v10)
      {
        v68 = 1;
        goto LABEL_177;
      }

      if (v16 != -4)
      {
        if (*(a2 + 40) <= v10)
        {
          v68 = 2;
          goto LABEL_177;
        }

        if (v16 != -5)
        {
          if (*(a2 + 44) <= v10)
          {
            v68 = 3;
            goto LABEL_177;
          }

          if (v16 != -6)
          {
            if (*(a2 + 48) <= v10)
            {
              v68 = 4;
              goto LABEL_177;
            }

            if (v16 != -7)
            {
              if (*(a2 + 52) <= v10)
              {
                v68 = 5;
                goto LABEL_177;
              }

              if (v16 != -8 && *(a2 + 56) <= v10)
              {
                v68 = 6;
LABEL_177:
                if (v13)
                {
                  v91 = v13 - 1;
                }

                else
                {
                  v91 = 0;
                }

                if (v68 < v66)
                {
                  v92 = v68;
                  v93 = v68;
                  while (v67[v93] > v91)
                  {
                    if (v66 == ++v93)
                    {
                      goto LABEL_195;
                    }
                  }

                  goto LABEL_197;
                }

                v68 = v66;
LABEL_196:
                v92 = v68;
                LODWORD(v93) = v68;
LABEL_197:
                if (v93 < v66)
                {
                  v66 = v93;
                }

                v75 = &v67[v92];
                v76 = (v66 - v68);
                goto LABEL_200;
              }
            }
          }
        }
      }
    }

LABEL_122:
    v68 = v66;
    goto LABEL_196;
  }

  v18 = *(cf + 24);
  v19 = (v18 - v10) >> 5;
  v20 = (v18 - v10) & 0x1F;
  v21 = (v18 - v13) >> 5;
  v22 = (v18 - v13) & 0x1F;
  v23 = *(a2 + 24);
  if (v18 == v23)
  {
    v24 = *(*(a2 + 40) + 4 * v19);
    if (v21 == v19)
    {
      v25 = masks[v20];
      if (v20 != v22 + 1)
      {
        v25 = masks[v22 + 1] & ~v25;
      }

      *(*(cf + 40) + 4 * v19) &= ~(v25 & v24);
    }

    else
    {
      *(*(cf + 40) + 4 * v19) &= masks[v20] | ~v24;
      v95 = (v19 + 1);
      if (v95 < v21)
      {
        do
        {
          *(*(cf + 40) + 4 * v95) &= ~*(*(a2 + 40) + 4 * v95);
          ++v95;
        }

        while (v21 != v95);
      }

      *(*(cf + 40) + 4 * v21) &= ~(masks[v22 + 1] & *(*(a2 + 40) + 4 * v21));
    }

    return;
  }

  v58 = (v23 - v10) >> 5;
  v59 = (v18 - v23) & 0x1F;
  if (((v18 - v23) & 0x1F) != 0)
  {
    v60 = 32 - v59;
    if (v21 == v19)
    {
      v61 = *(a2 + 40);
      v62 = *(v61 + 4 * v58) << v59;
      if (v58 + 1 < *(a2 + 32))
      {
        v62 |= *(v61 + 4 * (v58 + 1)) >> v60;
      }

      v63 = ~v62;
      goto LABEL_208;
    }

    if (v21 >= v19)
    {
      v102 = v22 + 1;
      v103 = (v23 - v18 + v59 + ((v18 - v10) & 0xFFFFFFE0)) >> 5;
      v104 = *(a2 + 32);
      v105 = v103 >= v104 ? 0 : (*(*(a2 + 40) + 4 * v103) << ((v18 - v23) & 0x1F)) & ~masks[(v18 - v23) & 0x1F];
      v111 = v103 - 1 >= v104 ? 0 : (*(*(a2 + 40) + 4 * (v103 - 1)) >> v60) & masks[v59];
      v112 = masks[v20];
      *(*(cf + 40) + 4 * v19) &= v112 | ~(v111 | v105);
      if (v19 + 1 != v21 + 1)
      {
        v113 = 0;
        v114 = v21 - v19;
        v115 = 4 * v19 + 4;
        do
        {
          v117 = *(a2 + 32);
          if (v103 + v113 + 1 >= v117)
          {
            v118 = 0;
          }

          else
          {
            v118 = (*(*(a2 + 40) + 4 * v103 + 4 + 4 * v113) << v59) & ~masks[v59];
          }

          if (v117 <= v103 + v113)
          {
            v119 = 0;
          }

          else
          {
            v119 = (*(*(a2 + 40) + 4 * (v103 + v113)) >> v60) & masks[v59];
          }

          if (v113 == -1)
          {
            v120 = ~v112;
          }

          else
          {
            v120 = -1;
          }

          if (v114 - 1 == v113)
          {
            v116 = masks[v102];
          }

          else
          {
            v116 = -1;
          }

          *(*(cf + 40) + v115 + 4 * v113++) &= ~(v120 & (v119 | v118) & v116);
        }

        while (v114 != v113);
      }
    }
  }

  else
  {
    v96 = *(*(a2 + 40) + 4 * v58);
    v97 = v21 - v19;
    if (v21 == v19)
    {
      v63 = ~v96;
LABEL_208:
      v98 = v22 + 1;
      v99 = masks[v20];
      v100 = v99;
      v101 = v99;
      if (v20 != v98)
      {
        v100 = masks[v98];
        v101 = v100 & ~v99;
      }

      *(*(cf + 40) + 4 * v19) &= v101 & v63 | ~v100 | v99;
      return;
    }

    *(*(cf + 40) + 4 * v19) &= masks[v20] | ~v96;
    if (v97 >= 2)
    {
      v106 = 1 - v97;
      v107 = v19 + 1;
      v108 = v58 + 1;
      do
      {
        *(*(cf + 40) + 4 * v107++) &= ~*(*(a2 + 40) + 4 * v108++);
        v9 = __CFADD__(v106++, 1);
      }

      while (!v9);
    }

    *(*(cf + 40) + 4 * v21) &= ~(masks[v22 + 1] & *(*(a2 + 40) + 4 * ((v23 - v13) >> 5)));
  }
}

void *copyQueryTokensCallback(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x414uLL);
  result = utf8_encodestr(a1, 2 * a2, __s, v12, 1043);
  if (!result)
  {
    v7 = strlen(__s);
    v8 = malloc_type_zone_malloc(queryZone, v7 + 1, 0xA4971684uLL);
    if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v12, 2u);
    }

    memcpy(v8, __s, v7);
    *(v8 + v7) = 0;
    v10 = *(a3 + 8);
    v9 = *(a3 + 12);
    result = *a3;
    if (v9 >= v10)
    {
      v11 = 2 * v10;
      if (!v10)
      {
        v11 = 16;
      }

      *(a3 + 8) = v11;
      result = malloc_type_realloc(result, 8 * v11, 0x80040B8603338uLL);
      *a3 = result;
      v9 = *(a3 + 12);
    }

    *(a3 + 12) = v9 + 1;
    *(result + v9) = v8;
  }

  return result;
}

void CIIndexSetRemoveSortedIndexes(int *result, unsigned int *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return;
  }

  if (CFGetTypeID(result) == __kCIIndexSetInvertedTypeID)
  {
    v6 = result[4];
    if (v6 > -10 || ((v7 = result[6] - result[5], v8 = a3 - v6 - 10, v7 + 1 < v8) ? (v9 = v7 + 1) : (v9 = v8), v6 = -10 - v9, result[4] = -10 - v9, (v9 & 0x80000000) != 0))
    {
      if (v6 >= -1)
      {
        v10 = result[8];
      }

      else
      {
        v10 = 4;
      }

      if (v6 < -1)
      {
        v6 = -2 - v6;
      }

      if (v10 < v6 + a3)
      {
        _CIIndexSetMakeSpace(result, a3, 0, 0, 0);
      }
    }
  }

  v11 = result[4];
  if (v11 <= -10)
  {
    v12 = a3;
    while (1)
    {
      v14 = *a2++;
      v13 = v14;
      if (v14 >= result[5])
      {
        v15 = result[6];
        v16 = v15 >= v13;
        v17 = v15 - v13;
        if (!v16)
        {
          return;
        }

        *(*(result + 5) + 4 * (v17 >> 5)) &= ~(1 << v17);
      }

      if (!--v12)
      {
        return;
      }
    }
  }

  if (v11 < 0)
  {
    v21 = -2 - v11;
    if (v11 > 0xFFFFFFFD)
    {
      v24 = 0;
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = result + 8;
      do
      {
        v26 = a2[v23];
        v27 = v25[v22];
        if (v27 == v26)
        {
          ++v22;
          ++v23;
          ++result[4];
        }

        else if (v27 > v26)
        {
          ++v22;
          v25[v24++] = v27;
        }

        else
        {
          ++v23;
        }
      }

      while (v22 < v21 && v23 < a3);
    }

    if (v22 < v21)
    {
      v41 = v22;
      v42 = v24;
      v43 = v22 + v11;
      v44 = (-3 - v43);
      if (v44 > 6 && ((v24 - v41) & 0x3FFFFFFFFFFFFFF8) != 0)
      {
        v45 = v44 + 1;
        v46 = (v44 + 1) & 0x1FFFFFFF8;
        v47 = &result[v24 + 12];
        v48 = &result[v41 + 12];
        v49 = v46;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 8;
          v48 += 8;
          v49 -= 8;
        }

        while (v49);
        if (v45 == v46)
        {
          return;
        }

        v41 += v46;
        v42 = v46 + v24;
      }

      v51 = &result[v42 + 8];
      v52 = v24 - v43 - v42 - 2;
      v53 = &result[v41 + 8];
      do
      {
        v54 = *v53++;
        *v51++ = v54;
        --v52;
      }

      while (v52);
    }
  }

  else
  {
    if (CFGetTypeID(result) == __kCIIndexSetInvertedTypeID)
    {
      if (a3 == 1)
      {
        v96 = -1;
        v18 = *a2;
        v19 = result[4];
        if (v19)
        {
          v20 = searchMapWithHint(result, v18, &v96, 1);
        }

        else
        {
          v20 = 0;
        }

        v74 = result[8];
        v75 = result[9];
        if (v75 == v20)
        {
          if (v74 <= v19)
          {
            return;
          }

          v76 = *(result + 5);
        }

        else
        {
          if (v20 == v74)
          {
            if (v19 >= v20)
            {
              return;
            }

            v76 = *(result + 5);
          }

          else
          {
            v76 = *(result + 5);
            if (*(v76 + 4 * v20) == v18 || v74 <= v19)
            {
              return;
            }
          }

          if (v75 >= v20)
          {
            memmove((v76 + 4 * (v20 - v19 + v74)), (v76 + 4 * v20), 4 * (v75 - v20));
          }

          else
          {
            memmove((v76 + 4 * v75), (v76 + 4 * (v74 - v19 + v75)), 4 * (v20 - (v74 - v19 + v75)));
            v20 = v20 + v19 - v74;
          }
        }

        if (v20)
        {
          if (*(v76 + 4 * v20 - 4) <= v18)
          {
            v87 = __si_assert_copy_extra_332();
            v71 = v87;
            v95 = "";
            if (v87)
            {
              v95 = v87;
            }

            __message_assert_336(v87, v88, v89, v90, v91, v92, v93, v94, "CIIndexSet.c", 1859, "set->_blob[set->_hole-1] > at", v95);
            goto LABEL_119;
          }

          v77 = v20;
        }

        else
        {
          v77 = 0;
        }

        *(v76 + 4 * v77) = v18;
        result[9] = v20 + 1;
        result[4] = v19 + 1;
      }

      else
      {

        CIIndexSetAddSortedIndexes_ArrayBackwards(result, a2, a3);
      }

      return;
    }

    v28 = result[9];
    v29 = result[4];
    if (v28 > v29)
    {
      v78 = __si_assert_copy_extra_332();
      v71 = v78;
      v86 = "";
      if (v78)
      {
        v86 = v78;
      }

      __message_assert_336(v78, v79, v80, v81, v82, v83, v84, v85, "CIIndexSet.c", 1393, "(int32_t)set->_hole <= (int32_t)set->_count", v86);
LABEL_119:
      free(v71);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    LODWORD(v30) = result[8] - v29;
    memmove((*(result + 5) + 4 * v30), *(result + 5), 4 * v28);
    v31 = result[4];
    result[9] = v31;
    if (v31 >= 1 && v31 + a3 > (__clz(v31) ^ 0x1F) * a3)
    {
      v32 = 0;
      v33 = 0;
      while (1)
      {
        v55 = a2[v32];
        if (v55 >= result[5])
        {
          if (v55 > result[6])
          {
LABEL_95:
            v73 = result[4];
            if (v33 <= v73)
            {
              result[9] = v33;
            }

            else
            {
              result[9] = v73;
            }

            return;
          }

          v56 = *(result + 5);
          v57 = result[8];
          v58 = v57 - 1;
          LODWORD(v59) = v30;
          if ((v57 - 33) < v30)
          {
LABEL_79:
            v59 = v59;
            v60 = v58 + 1 > v59 ? v58 + 1 : v59;
            while (v59 <= v58)
            {
              v62 = *(v56 + 4 * v59++);
              if (v62 <= v55)
              {
                v60 = v59 - 1;
                break;
              }
            }
          }

          else
          {
            while (1)
            {
              v60 = v59 + (v58 - v59) / 2;
              v61 = *(v56 + 4 * v60);
              if (v61 == v55)
              {
                break;
              }

              if (v61 > v55)
              {
                LODWORD(v59) = v60 + 1;
              }

              else
              {
                v58 = v60 - 1;
              }

              if (v59 > v58 - 32)
              {
                goto LABEL_79;
              }
            }
          }

          if (v60 < v57)
          {
            if (v60 == v30)
            {
              if (*(v56 + 4 * v30) != v55)
              {
                goto LABEL_70;
              }

              goto LABEL_69;
            }

            memmove((v56 + 4 * v33), (v56 + 4 * v30), 4 * (v60 - v30));
            v33 += v60 - v30;
            if (*(*(result + 5) + 4 * v60) == v55)
            {
              LODWORD(v30) = v60;
LABEL_69:
              --result[4];
              LODWORD(v30) = v30 + 1;
              goto LABEL_70;
            }

            LODWORD(v30) = v60;
            if (v33 >= result[8])
            {
              v63 = __si_assert_copy_extra_332();
              v71 = v63;
              v72 = "";
              if (v63)
              {
                v72 = v63;
              }

              __message_assert_336(v63, v64, v65, v66, v67, v68, v69, v70, "CIIndexSet.c", 1424, "(int32_t)hole < (int32_t)set->_size", v72);
              goto LABEL_119;
            }
          }
        }

LABEL_70:
        if (++v32 == a3)
        {
          goto LABEL_95;
        }
      }
    }

    v34 = 0;
    LODWORD(v35) = 0;
    do
    {
      v36 = a2[v34];
      if (v36 > result[6] || v36 < result[5])
      {
        break;
      }

      if (v30 < result[8])
      {
        v35 = v35;
        v30 = v30;
        while (1)
        {
          v37 = *(result + 5);
          v38 = *(v37 + 4 * v30);
          if (v38 <= v36)
          {
            break;
          }

          ++v30;
          v39 = v35 + 1;
          *(v37 + 4 * v35++) = v38;
          if (v30 >= result[8])
          {
            LODWORD(v35) = v39;
            goto LABEL_42;
          }
        }

        if (v38 == v36)
        {
          --result[4];
          LODWORD(v30) = v30 + 1;
        }
      }

LABEL_42:
      ++v34;
    }

    while (v34 != a3);
    v40 = result[4];
    if (v35 <= v40)
    {
      result[9] = v35;
    }

    else
    {
      result[9] = v40;
    }
  }
}

void CIReleaseIndexingTokenizer(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 4)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CITokenizer.c", 291, "version>=0 && version<=kCITokenizerVersionCurrent", v6);
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

  if (*(a1 + 8))
  {
    _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  }

  if (*(a1 + 16))
  {
    _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  }

  v3 = OSAtomicDequeue(&gIndexingTokenizerHeap, 0);
  if (!v3)
  {
    v3 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  }

  v3[1] = a1;

  OSAtomicEnqueue(&gIndexingTokenizerStack + v1, v3, 0);
}

void CIIndexSetReleaseToPerThreadCache(uint64_t result, void *a2)
{
  if (*(result + 16) <= 0xFFFFFFF6)
  {
    blob_free(*(result + 40), *(result + 32), a2);
  }

  *(result + 40) = a2[1];
  *(result + 32) = -2;
  a2[1] = result;
}

_BYTE *copyQueryTerm(const char *a1, unsigned int a2)
{
  v4 = strlen(a1);
  v5 = v4;
  v6 = 5;
  v7 = a2 >> 28;
  v8 = 4;
  v9 = a2 >> 21;
  v10 = 3;
  v11 = a2 >> 14;
  v12 = 1;
  if (a2 >= 0x80)
  {
    v12 = 2;
  }

  if (!v11)
  {
    v10 = v12;
  }

  if (!v9)
  {
    v8 = v10;
  }

  if (!v7)
  {
    v6 = v8;
  }

  v13 = malloc_type_zone_malloc(queryZone, v4 + v6 + 3, 0xA4971684uLL);
  if (!v13)
  {
    _log_fault_for_malloc_failure();
  }

  if (a2 >= 2)
  {
    *v13 = 1;
    if (v7)
    {
      v19 = a2 >> 7;
      v13[1] = a2 | 0x80;
      v16 = 28;
      v20 = 21;
      v21 = 14;
      v17 = 6;
      v14 = 5;
      v15 = 4;
      v22 = 3;
      v23 = 2;
    }

    else
    {
      if (!v9)
      {
        if (!v11)
        {
          v14 = 2;
          v15 = 1;
          if (a2 < 0x80)
          {
LABEL_23:
            v13[v15] = a2;
            memcpy(&v13[v14], a1, v5);
            v5 += v14;
            goto LABEL_24;
          }

          v16 = 7;
          v17 = 3;
          LOBYTE(v18) = a2;
LABEL_22:
          v13[v15] = v18 | 0x80;
          a2 >>= v16;
          v15 = v14;
          v14 = v17;
          goto LABEL_23;
        }

        v16 = 14;
        v20 = 7;
        v17 = 4;
        v14 = 3;
        v15 = 2;
        v22 = 1;
        LOBYTE(v24) = a2;
LABEL_21:
        v13[v22] = v24 | 0x80;
        v18 = a2 >> v20;
        goto LABEL_22;
      }

      v16 = 21;
      v20 = 14;
      v21 = 7;
      v17 = 5;
      v14 = 4;
      v15 = 3;
      v22 = 2;
      v23 = 1;
      LOBYTE(v19) = a2;
    }

    v13[v23] = v19 | 0x80;
    v24 = a2 >> v21;
    goto LABEL_21;
  }

  memcpy(v13, a1, v5);
LABEL_24:
  v13[v5] = 0;
  return v13;
}

void findMatchTermWildcard(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  LODWORD(v5) = a3;
  v8 = HIDWORD(a2);
  if (!a4)
  {
    goto LABEL_50;
  }

  if (HIDWORD(a2) == 1)
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 8);
    if (a2 >= v11)
    {
      v43 = __si_assert_copy_extra_2708(*(v12 + 112));
      v44 = v43;
      v45 = "";
      if (v43)
      {
        v45 = v43;
      }

      __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4368, "ptr.next < ctx->trie_max", v45, a2, *(a1 + 64));
      free(v44);
      if (__valid_fsp(*(*(a1 + 8) + 112)))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v10 = mgetBase(v12, a2);
  }

  else
  {
    if (HIDWORD(a2) != 3)
    {
      if (*(a1 + 48) != 1)
      {
        goto LABEL_50;
      }

      LODWORD(v13) = 0;
LABEL_15:
      v15 = 0;
      v14 = v13 >> 1;
      if (!(v13 >> 1))
      {
        goto LABEL_50;
      }

      goto LABEL_16;
    }

    v9 = *(a1 + 8);
    if (a2 >= *(a1 + 64))
    {
      v39 = __si_assert_copy_extra_2708(*(v9 + 4576));
      v40 = v39;
      v41 = "";
      if (v39)
      {
        v41 = v39;
      }

      __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4365, "ptr.next < ctx->trie_fat_max", v41, a2, *(a1 + 64));
      free(v40);
      if (__valid_fsp(*(*(a1 + 8) + 4576)))
      {
        v42 = 2989;
      }

      else
      {
        v42 = 3072;
      }

      *v42 = -559038737;
      abort();
    }

    v10 = (*(v9 + 8) + 1028 * a2);
  }

  v13 = *v10;
  if (*(a1 + 48) != 1)
  {
    if (!v13)
    {
      goto LABEL_50;
    }

    v16 = *(a1 + 1240);
    v17 = *(v16 + 4);
    if (v17 & 0x610) != 0 || (**a1)
    {
      goto LABEL_50;
    }

    if ((v17 & 4) != 0)
    {
      v25 = *(a1 + 88);
      if ((v25 - 2) > 2 || v25 != **v16)
      {
        goto LABEL_50;
      }

      v26 = termNumberCompare((a1 + 88), *v16);
      if ((v17 & 0x20) != 0)
      {
        if (v26 < 0)
        {
          goto LABEL_50;
        }
      }

      else if (v26 < 1)
      {
        goto LABEL_50;
      }

      v27 = termNumberCompare((a1 + 88), v16[1]);
      if ((v17 & 0x40) != 0)
      {
        if (v27 > 0)
        {
          goto LABEL_50;
        }
      }

      else if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    else if ((v17 & 0x8000) != 0 || **v16 != 42 || (*v16)[1])
    {
      v18 = v16[4];
      v19 = v16[5];
      if (v18)
      {
        if (!v19)
        {
          if (!localizedFieldTermMatch(v18, *(v16 + 5), (a1 + 88), *(a1 + 1140), *(v16 + 4)))
          {
            goto LABEL_50;
          }

          v20 = *(a1 + 1140);
          v21 = (a1 + 88);
          v22 = a1;
          v23 = v13;
          v24 = 1;
LABEL_49:
          findHandleMatch(v22, v23, 0, v21, v20, v24);
          goto LABEL_50;
        }

LABEL_103:
        v46 = a1 + 88;
        if (*(a1 + 88) != 1)
        {
          v47 = termPropertyID((a1 + 88), *(a1 + 1140));
          v48 = 0;
          goto LABEL_134;
        }

        v47 = *(a1 + 89);
        if (v47 == 2)
        {
          v47 = *(a1 + 90);
          if ((*(a1 + 90) & 0x80000000) == 0)
          {
            v48 = 3;
            goto LABEL_134;
          }

          v49 = *(a1 + 91);
          if ((*(a1 + 91) & 0x80000000) == 0)
          {
            v47 = v47 & 0x7F | (v49 << 7);
            v48 = 4;
            goto LABEL_134;
          }

          v51 = *(a1 + 92);
          if ((*(a1 + 92) & 0x80000000) == 0)
          {
            v52 = ((v49 & 0x7F) << 7) | (v51 << 14);
LABEL_132:
            v54 = v52 & 0xFFFFFF80 | v47 & 0x7F;
            v48 = 5;
            goto LABEL_133;
          }

          v55 = *(a1 + 93);
          if ((*(a1 + 93) & 0x80000000) == 0)
          {
            v54 = ((v51 & 0x7F) << 14) | (v55 << 21) | ((v49 & 0x7F) << 7) | v47 & 0x7F;
            v48 = 6;
            goto LABEL_133;
          }

          v59 = *(a1 + 94);
          if ((v59 & 0x80000000) == 0)
          {
            v60 = ((v55 & 0x7F) << 21) | (v59 << 28) | ((v51 & 0x7F) << 14) | ((v49 & 0x7F) << 7) | v47 & 0x7F;
            v48 = 7;
            v47 = v60;
            goto LABEL_134;
          }
        }

        else
        {
          if ((v47 & 0x80) == 0)
          {
            v48 = 2;
            goto LABEL_134;
          }

          v50 = *(a1 + 90);
          if ((*(a1 + 90) & 0x80000000) == 0)
          {
            v47 = v47 & 0x7F | (v50 << 7);
            v48 = 3;
            goto LABEL_134;
          }

          v53 = *(a1 + 91);
          if ((*(a1 + 91) & 0x80000000) == 0)
          {
            v54 = ((v50 & 0x7F) << 7) | (v53 << 14) | v47 & 0x7F;
            v48 = 4;
LABEL_133:
            v47 = v54;
            goto LABEL_134;
          }

          v56 = *(a1 + 92);
          if ((*(a1 + 92) & 0x80000000) == 0)
          {
            v52 = ((v53 & 0x7F) << 14) | (v56 << 21) | ((v50 & 0x7F) << 7);
            goto LABEL_132;
          }

          v61 = *(a1 + 93);
          if ((v61 & 0x80000000) == 0)
          {
            v62 = ((v56 & 0x7F) << 21) | (v61 << 28) | ((v53 & 0x7F) << 14) | ((v50 & 0x7F) << 7) | v47 & 0x7F;
            v48 = 6;
            v47 = v62;
LABEL_134:
            if (*(v16 + 5) == v47)
            {
              v57 = (*(a1 + 1140) - v48);
              while (v57 >= 1)
              {
                v58 = *(v46 + v48 - 1 + v57);
                if (v58 > 5)
                {
                  if (!__findTermIDsContextMatchPatternsRegExMatch(*(*(a1 + 1240) + 40), v46 + v48, v57))
                  {
                    goto LABEL_50;
                  }

                  v20 = *(a1 + 1140);
                  v22 = a1;
                  v23 = v13;
                  v21 = (a1 + 88);
                  v24 = 1;
                  goto LABEL_49;
                }

                v57 = (v57 - 1);
                if ((v58 & 5) != 1)
                {
                  goto LABEL_50;
                }
              }
            }

            goto LABEL_50;
          }
        }

        v38 = __si_assert_copy_extra_2708(0);
        __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_81:
        free(v38);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (v19)
      {
        goto LABEL_103;
      }

      if (*(v16 + 5) == 1 && termPropertyID((a1 + 88), *(a1 + 1140)) != 1 || !termMatch((a1 + 88), *(a1 + 1140), *v16, *(v16 + 6)))
      {
        goto LABEL_50;
      }
    }

    else if (!termFieldMatch(*(v16 + 5), (a1 + 88), *(a1 + 1140), *(v16 + 4)))
    {
      goto LABEL_50;
    }

    if ((v17 & 0x8000) != 0)
    {
      goto LABEL_50;
    }

    v20 = *(a1 + 1140);
    v21 = (a1 + 88);
    v22 = a1;
    v23 = v13;
    v24 = 0;
    goto LABEL_49;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((*v10 & 3) == 1)
  {
    v14 = v13 >> 2;
    v15 = 0x100000000;
    if (!(v13 >> 2))
    {
      goto LABEL_50;
    }

LABEL_16:
    findAddFlatBucket(a1, v15 | v14, 0, 0, 0, 0);
    goto LABEL_50;
  }

  v14 = v13 >> 3;
  v15 = (v13 & 7) << 32;
  if (v13 >> 3)
  {
    goto LABEL_16;
  }

LABEL_50:
  if (v8 != 1)
  {
    if (v8 == 3)
    {
      v5 = v5;
      v28 = *(*(a1 + 8) + 8) + 1028 * a2 + 4;
      do
      {
        v29 = *(v28 + 4 * v5);
        v30 = v29 >> 1;
        v31 = v29 >> 3;
        v32 = (v29 & 7) << 32;
        if ((v29 & 3) == 1)
        {
          v32 = 0x100000000;
          v31 = v29 >> 2;
        }

        if (v29)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        if (*(v28 + 4 * v5))
        {
          v30 = v31;
        }

        if (v30)
        {
          _findMatchTermWildcard(a1, a2, v33 | v30, tcmr[v5], v4);
        }

        ++v5;
      }

      while (v5 != 256);
    }

    return;
  }

  v34 = mgetBase(*(a1 + 8), a2);
  if (v5)
  {
    v38 = __si_assert_copy_extra_2708(0);
    __message_assert("%s:%u: failed assertion '%s' %s ");
    goto LABEL_81;
  }

  v35 = v34[36];
  v36 = (v34 + 4);
  v78 = v34;
  if (v34[4])
  {
    v37 = 0;
  }

  else if (v34[5])
  {
    v37 = 8u;
  }

  else if (v34[6])
  {
    v37 = 0x10u;
  }

  else if (v34[7])
  {
    v37 = 0x18u;
  }

  else if (v34[8])
  {
    v37 = 0x20u;
  }

  else if (v34[9])
  {
    v37 = 0x28u;
  }

  else if (v34[10])
  {
    v37 = 0x30u;
  }

  else if (v34[11])
  {
    v37 = 0x38u;
  }

  else if (v34[12])
  {
    v37 = 0x40u;
  }

  else if (v34[13])
  {
    v37 = 0x48u;
  }

  else if (v34[14])
  {
    v37 = 0x50u;
  }

  else if (v34[15])
  {
    v37 = 0x58u;
  }

  else if (v34[16])
  {
    v37 = 0x60u;
  }

  else if (v34[17])
  {
    v37 = 0x68u;
  }

  else if (v34[18])
  {
    v37 = 0x70u;
  }

  else if (v34[19])
  {
    v37 = 0x78u;
  }

  else if (v34[20])
  {
    v37 = 0x80u;
  }

  else if (v34[21])
  {
    v37 = 0x88u;
  }

  else if (v34[22])
  {
    v37 = 0x90u;
  }

  else if (v34[23])
  {
    v37 = 0x98u;
  }

  else if (v34[24])
  {
    v37 = 0xA0u;
  }

  else if (v34[25])
  {
    v37 = 0xA8u;
  }

  else if (v34[26])
  {
    v37 = 0xB0u;
  }

  else if (v34[27])
  {
    v37 = 0xB8u;
  }

  else if (v34[28])
  {
    v37 = 0xC0u;
  }

  else if (v34[29])
  {
    v37 = 0xC8u;
  }

  else if (v34[30])
  {
    v37 = 0xD0u;
  }

  else if (v34[31])
  {
    v37 = 0xD8u;
  }

  else if (v34[32])
  {
    v37 = 0xE0u;
  }

  else if (v34[33])
  {
    v37 = 0xE8u;
  }

  else if (v34[34])
  {
    v37 = 0xF0u;
  }

  else
  {
    if (!v34[35])
    {
      return;
    }

    v37 = 0xF8u;
  }

  if (v34[36])
  {
    v63 = v34 + 38;
    while (((*(v36->i32 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v37) & 1) == 0)
    {
LABEL_195:
      if (v35)
      {
        if (v37++ < 0xFF)
        {
          continue;
        }
      }

      return;
    }

    v64 = 0;
    v65 = v37 >> 6;
    if (v37 >> 6 > 1)
    {
      if (v65 != 2)
      {
        v67 = vcnt_s8(*(v78 + 20));
        v67.i16[0] = vaddlv_u8(v67);
        v64 = v67.u32[0];
      }

      v68 = vcnt_s8(*(v78 + 12));
      v68.i16[0] = vaddlv_u8(v68);
      v64 += v68.u32[0];
    }

    else
    {
      v66 = v65;
      if (!v65)
      {
        goto LABEL_187;
      }
    }

    v69 = vcnt_s8(*v36);
    v69.i16[0] = vaddlv_u8(v69);
    v66 = v69.u32[0] + v64;
LABEL_187:
    v70 = vcnt_s8((*&v36[v65] & ~(-1 << v37)));
    v70.i16[0] = vaddlv_u8(v70);
    v71 = *&v63[4 * v70.u32[0] + 4 * v66];
    v72 = v71 >> 1;
    v73 = v71 >> 3;
    v74 = (v71 & 7) << 32;
    if ((v71 & 3) == 1)
    {
      v74 = 0x100000000;
      v73 = v71 >> 2;
    }

    v75 = (v71 & 1) == 0;
    if (v71)
    {
      v76 = v74;
    }

    else
    {
      v76 = 0;
    }

    if (!v75)
    {
      v72 = v73;
    }

    _findMatchTermWildcard(a1, a2, v76 | v72, tcmr[v37], v4);
    LOBYTE(v35) = v35 - 1;
    goto LABEL_195;
  }
}

void cicachelistenqueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != 4292677391)
  {
    v6 = __si_assert_copy_extra_332();
    v14 = v6;
    v15 = "";
    if (v6)
    {
      v15 = v6;
    }

    __message_assert_336(v6, v7, v8, v9, v10, v11, v12, v13, "CIIndexSet.c", 398, "cachelist->signature == CI_CACHELIST_SIGNATURE", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 16));
  *(a2 + a3) = *(a1 + 8);
  *(a1 + 8) = a2;

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t flat_levels_cf_set_applier1(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  do
  {
    for (; v3; v3 = *v3 & 0x7FFFFFFFFFFFFFFFLL)
    {
      result = (*a2)(*(v3 + 32), v3 + 34, v3 + 16, *(v3 + 28), *(a2 + 16));
      if ((*(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        *(v6 + v4++) = *(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    v5 = __OFSUB__(v4--, 1);
    if (v4 < 0 != v5)
    {
      break;
    }

    v3 = *(v6 + v4);
  }

  while (v3);
  return result;
}

void resolveQueryInfoCallback(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a1;
  v90 = *MEMORY[0x1E69E9840];
  if (a1 >= 0x415)
  {
    v73 = __si_assert_copy_extra_332();
    v74 = v73;
    v75 = "";
    if (v73)
    {
      v75 = v73;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d", "CIQuery.c", 1369, "termLen <= CI_UTF8CHARS_BUFFER_SIZE", v75, v5);
    free(v74);
    if (__valid_fs(-1))
    {
      v76 = 2989;
    }

    else
    {
      v76 = 3072;
    }

    *v76 = -559038737;
    abort();
  }

  bzero(&v83, 0x415uLL);
  if (v5)
  {
    v10 = &v83;
    v11 = v5;
    do
    {
      v12 = *a2++;
      *v10++ = tcmr[v12];
      --v11;
    }

    while (v11);
  }

  *(&v83 + v5) = 0;
  if (*(a5 + 8))
  {
    for (i = 0; i < *(a5 + 8); ++i)
    {
      v14 = *(a5 + 16);
      v15 = (v14 + (i << 6));
      v16 = *(v15 + 4);
      if ((v16 & 0x610) == 0)
      {
        if ((v16 & 4) != 0)
        {
          v19 = v83;
          if (v83 - 2 > 2 || v83 != **v15)
          {
            continue;
          }

          v21 = *v15 + 1;
          v22 = &v84;
          if ((v16 & 0x20) != 0)
          {
            do
            {
              v30 = *v22++;
              v29 = v30;
              v32 = *v21++;
              v31 = v32;
              if (v29)
              {
                v33 = v29 == v31;
              }

              else
              {
                v33 = 0;
              }
            }

            while (v33);
            v34 = v31 != 0;
            if (v29)
            {
              v34 = v29 < v31;
            }

            if (v34)
            {
              continue;
            }
          }

          else
          {
            do
            {
              v24 = *v22++;
              v23 = v24;
              v26 = *v21++;
              v25 = v26;
              if (v23)
              {
                v27 = v23 == v25;
              }

              else
              {
                v27 = 0;
              }
            }

            while (v27);
            if (v23)
            {
              v28 = v23 >= v25;
            }

            else
            {
              v28 = 0;
            }

            if (!v28)
            {
              continue;
            }
          }

          v35 = v15[1];
          v36 = *v35;
          v37 = v83 == 0;
          v38 = v83 != v36 || v83 == 0;
          if ((v16 & 0x40) != 0)
          {
            if (!v38)
            {
              v57 = v35 + 1;
              v58 = &v84;
              do
              {
                v59 = *v58++;
                v19 = v59;
                LOBYTE(v37) = v59 == 0;
                v60 = *v57++;
                v36 = v60;
                if (v19)
                {
                  v61 = v19 == v36;
                }

                else
                {
                  v61 = 0;
                }
              }

              while (v61);
            }

            if (v19 >= v36 && !v37)
            {
              continue;
            }
          }

          else
          {
            if (!v38)
            {
              v39 = v35 + 1;
              v40 = &v84;
              do
              {
                v41 = *v40++;
                v19 = v41;
                v37 = v41 == 0;
                v42 = *v39++;
                v36 = v42;
                if (v19)
                {
                  v43 = v19 == v36;
                }

                else
                {
                  v43 = 0;
                }
              }

              while (v43);
            }

            if (v36)
            {
              v44 = -1;
            }

            else
            {
              v44 = 0;
            }

            v45 = (v19 < v36) << 31;
            if (v37)
            {
              v45 = v44;
            }

            if ((v45 & 0x80000000) == 0)
            {
              continue;
            }
          }

LABEL_89:
          v62 = *(v14 + (i << 6) + 20);
          if (v62 != -1)
          {
            v63 = termPropertyID_14135(&v83, v5);
            if (v63 != v62 && (v16 & 0x3080 | v62 || v63 != 2))
            {
              continue;
            }
          }

LABEL_13:
          v18 = *(a5 + 64);
          if (v18)
          {
            (*(v18 + 16))(v18, i, a3, *a5);
          }

          else if ((*(*(a5 + 16) + (i << 6) + 16) & 0x3080) == 0 || a4)
          {
            v9.n128_u64[0] = 0;
            (*(*(*(a5 + 24) + 8 * i) + 56))(v9);
          }

          continue;
        }

        v17 = v15[4];
        if (v17)
        {
          if (localizedFieldTermMatch_14134(v17, *(v15 + 5), &v83, v5, *(v15 + 4)))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v15[5])
          {
            if (v83 != 1)
            {
              v46 = termPropertyID_14135(&v83, v5);
              v47 = 0;
              v14 = *(a5 + 16);
              goto LABEL_112;
            }

            v46 = v84;
            if (v84 == 2)
            {
              v46 = v85;
              if (v85 < 0)
              {
                if ((v86 & 0x80000000) == 0)
                {
                  v46 = v85 & 0x7F | (v86 << 7);
                  v47 = 4;
                  goto LABEL_112;
                }

                if ((v87 & 0x80000000) == 0)
                {
                  v65 = ((v86 & 0x7F) << 7) | (v87 << 14);
                  goto LABEL_110;
                }

                if ((v88 & 0x80000000) == 0)
                {
                  v66 = ((v87 & 0x7F) << 14) | (v88 << 21) | ((v86 & 0x7F) << 7) | v85 & 0x7F;
                  v47 = 6;
                  goto LABEL_111;
                }

                if (v89 < 0)
                {
                  goto LABEL_138;
                }

                v70 = ((v88 & 0x7F) << 21) | (v89 << 28) | ((v87 & 0x7F) << 14) | ((v86 & 0x7F) << 7) | v85 & 0x7F;
                v47 = 7;
LABEL_124:
                v46 = v70;
                goto LABEL_112;
              }
            }

            else
            {
              if ((v84 & 0x80) == 0)
              {
                v47 = 2;
                goto LABEL_112;
              }

              if (v85 < 0)
              {
                if ((v86 & 0x80000000) == 0)
                {
                  v66 = ((v85 & 0x7F) << 7) | (v86 << 14) | v84 & 0x7F;
                  v47 = 4;
                  goto LABEL_111;
                }

                if (v87 < 0)
                {
                  if (v88 < 0)
                  {
LABEL_138:
                    v77 = __si_assert_copy_extra_332();
                    v78 = v77;
                    v79 = "";
                    if (v77)
                    {
                      v79 = v77;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v79);
                    free(v78);
                    if (__valid_fs(-1))
                    {
                      v80 = 2989;
                    }

                    else
                    {
                      v80 = 3072;
                    }

                    *v80 = -559038737;
                    abort();
                  }

                  v70 = ((v87 & 0x7F) << 21) | (v88 << 28) | ((v86 & 0x7F) << 14) | ((v85 & 0x7F) << 7) | v84 & 0x7F;
                  v47 = 6;
                  goto LABEL_124;
                }

                v65 = ((v86 & 0x7F) << 14) | (v87 << 21) | ((v85 & 0x7F) << 7);
LABEL_110:
                v66 = v65 & 0xFFFFFF80 | v46 & 0x7F;
                v47 = 5;
LABEL_111:
                v46 = v66;
LABEL_112:
                if (*(v14 + (i << 6) + 20) == v46)
                {
                  v67 = v5 - v47;
                  v68 = &v82 + v47;
                  while (v67 >= 1)
                  {
                    v69 = v68[v67];
                    if (v69 > 5)
                    {
                      if ((icu_regex_find() & 1) == 0)
                      {
                        goto LABEL_8;
                      }

                      goto LABEL_13;
                    }

                    --v67;
                    if ((v69 & 5) != 1)
                    {
                      goto LABEL_8;
                    }
                  }
                }

                continue;
              }

              v46 = v84 & 0x7F | (v85 << 7);
            }

            v47 = 3;
            goto LABEL_112;
          }

          v48 = *v15;
          v49 = *(v15 + 6);
          v50 = **v15;
          if (v50 > 4)
          {
            v53 = &v83;
            if (v50 == 42 && termPropertyID_14135(&v83, v5) == 2)
            {
              continue;
            }
          }

          else
          {
            if (v50 != v83)
            {
              continue;
            }

            v51 = v48 + 1;
            v52 = v48[1];
            if (v52 != v84)
            {
              continue;
            }

            v53 = &v85;
            if (v52 == 2)
            {
              v55 = v48[2];
              v54 = v48 + 2;
              LOBYTE(v52) = v55;
              if (v55 != v85)
              {
                continue;
              }

              v51 = v54;
              v53 = &v86;
            }

            v48 = v51 + 1;
            if ((v52 & 0x80) != 0)
            {
              v56 = *v48;
              if (v56 != *v53)
              {
                continue;
              }

              v48 = v51 + 2;
              if (v56 < 0)
              {
                v71 = *v48;
                if (v71 != v53[1])
                {
                  continue;
                }

                if (v71 < 0)
                {
                  v72 = v51[3];
                  if (v72 < 0 || v53[2] != v72)
                  {
                    continue;
                  }

                  v53 += 3;
                  v48 = v51 + 4;
                }

                else
                {
                  v53 += 2;
                  v48 = v51 + 3;
                }
              }

              else
              {
                ++v53;
              }
            }
          }

          if (matche(v48, v53, v49, 0, 0))
          {
            v14 = *(a5 + 16);
            v16 = *(v14 + (i << 6) + 16);
            goto LABEL_89;
          }
        }
      }

LABEL_8:
      ;
    }
  }
}

uint64_t PayloadIterate_UpdateSet(uint64_t result, uint64_t a2, uint64_t a3, int8x8_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned __int8 a10, int a11)
{
  if (a2)
  {
    v11 = *a4.i32;
    v14 = a2;
    v15 = result;
    v24 = a4.u32[0] << 32;
    LODWORD(v25) = 0;
    do
    {
      if (*v14)
      {
        if (*(v14 + 4))
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        v25 = v25 & 0xFFFFFF00 | a10;
        v23 = v23 & 0xFFFFFFFF00000000 | a11;
        result = handleUpdate(v15, *(v14 + 8), v22, v24 | v25, v23);
      }

      else if (!*(v15 + 136) || (v16 = *(v14 + 8), **(v15 + 128) < v16) || (result = checkAgainstChangeHolder(v15 + 128, *(v15 + 112) + v16), (result & 1) == 0))
      {
        if ((a9 & 1) == 0 && _CIIndexSetRemoveIndex(*(v15 + 96), *(v14 + 8)))
        {
          --*(v15 + 104);
        }

        v17 = *(v15 + 88);
        v18 = *(v14 + 8);
        v26 = -1;
        result = _CIIndexSetAddIndex(v17, v18, 0, &v26, a4);
        if (result)
        {
          if (a9)
          {
            v19 = *(v15 + 96);
            v20 = *(v14 + 8);
            v27 = -1;
            result = _CIIndexSetAddIndex(v19, v20, 0, &v27, a4);
            if (result)
            {
              ++*(v15 + 104);
            }
          }
        }

        if (a10)
        {
          v21 = *(v15 + 72);
          if (!v21)
          {
            v21 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200406E8F4065uLL);
            atomic_store(1u, v21 + 8);
            *(v15 + 72) = v21;
          }

          result = distanceHolderSetMinDistance(v21, *(v15 + 112) + *(v14 + 8), a11, v11);
        }
      }

      if (*v14 < 2u)
      {
        break;
      }

      v14 = a3 + 12 * (*v14 >> 1);
    }

    while (a3);
  }

  return result;
}

uint64_t lockedCountItemsInRange(_DWORD *a1, unsigned int a2, uint64_t a3, int8x8_t a4)
{
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  if (v4 == a3)
  {
    if (!a1)
    {
      return 0;
    }

    if (a1[5] > a3)
    {
      return 0;
    }

    v5 = a1[6];
    v12 = v5 >= a3;
    v6 = v5 - a3;
    if (!v12)
    {
      return 0;
    }

    v7 = a1[4];
    if (v7 <= -10)
    {
      return (*(*(a1 + 5) + 4 * (v6 >> 5)) >> v6) & 1;
    }

    if ((v7 & 0x80000000) == 0)
    {
      v30 = a1;
      v31 = a3;
      v32 = binarySearchMap(a1, a3);
      v33 = v30;
      v34 = v30[9];
      if (v32 < v34 || (v35 = 0, v36 = v33[8], v32 < v36) && v32 >= v36 + v34 - v33[4])
      {
        v35 = *(*(v33 + 5) + 4 * v32) == v31;
      }

      return v35 ^ (CFGetTypeID(v33) == __kCIIndexSetInvertedTypeID);
    }

    if (v7 <= 0xFFFFFFFD)
    {
      v8 = a1[8] == a3;
      if (a1[8] != a3 && v7 != -3)
      {
        v8 = a1[9] == a3;
        if (a1[9] != a3 && v7 != -4)
        {
          v8 = a1[10] == a3;
          if (a1[10] != a3 && v7 != -5)
          {
            v8 = a1[11] == a3;
            if (a1[11] != a3 && v7 != -6)
            {
              v8 = a1[12] == a3;
              if (a1[12] != a3 && v7 != -7)
              {
                v8 = a1[13] == a3;
                if (a1[13] != a3 && v7 != -8)
                {
                  return a1[14] == a3;
                }
              }
            }
          }
        }
      }

      return v8;
    }

    return 0;
  }

  v10 = a1[5];
  v9 = a1[6];
  if (v4 <= v10)
  {
    v11 = a1[5];
  }

  else
  {
    v11 = v4;
  }

  v12 = v10 <= a3 && v9 >= v11;
  if (!v12)
  {
    return 0;
  }

  v13 = v9 >= a3 ? a3 : a1[6];
  if (v4 > a3)
  {
    return 0;
  }

  v15 = a1[4];
  if (v15 <= -10)
  {
    v16 = v9 - v13;
    v17 = (v9 - v13) >> 5;
    v18 = v9 - v11;
    v19 = v18 >> 5;
    if (v17 > v18 >> 5)
    {
      return 0;
    }

    v20 = v16 & 0x1F;
    v21 = v18 & 0x1F;
    v22 = *(a1 + 5);
    v23 = (v22 + 4 * v17);
    v24 = *v23;
    if (v17 == v19)
    {
      v25 = masks[v20];
      if (v20 != v21 + 1)
      {
        v25 = masks[v21 + 1] & ~v25;
      }

      a4.i32[0] = v25 & v24;
      v26 = vcnt_s8(a4);
      v26.i16[0] = vaddlv_u8(v26);
      v27 = v26.i32[0];
    }

    else
    {
      a4.i32[0] = v24 & ~masks[v20];
      v44 = vcnt_s8(a4);
      v44.i16[0] = vaddlv_u8(v44);
      v45 = v44.i32[0];
      v46 = a1;
      v47 = array_popcount(v23 + 4, v19 + ~v17);
      a1 = v46;
      v48.i32[0] = masks[v21 + 1] & *(v22 + 4 * v19);
      v49 = vcnt_s8(v48);
      v49.i16[0] = vaddlv_u8(v49);
      v27 = v45 + v47 + v49.i32[0];
    }

    goto LABEL_79;
  }

  if (v15 < 0)
  {
    if (v15 > 0xFFFFFFFD)
    {
      return 0;
    }

    if (a1[8] <= v13)
    {
      v37 = 0;
    }

    else
    {
      if (v15 == -3)
      {
        return 0;
      }

      if (a1[9] <= v13)
      {
        v37 = 1;
      }

      else
      {
        if (v15 == -4)
        {
          return 0;
        }

        if (a1[10] <= v13)
        {
          v37 = 2;
        }

        else
        {
          if (v15 == -5)
          {
            return 0;
          }

          if (a1[11] <= v13)
          {
            v37 = 3;
          }

          else
          {
            if (v15 == -6)
            {
              return 0;
            }

            if (a1[12] <= v13)
            {
              v37 = 4;
            }

            else
            {
              if (v15 == -7)
              {
                return 0;
              }

              if (a1[13] <= v13)
              {
                v37 = 5;
              }

              else
              {
                if (v15 == -8 || a1[14] > v13)
                {
                  return 0;
                }

                v37 = 6;
              }
            }
          }
        }
      }
    }

    v63 = (-2 - v15);
    LODWORD(v64) = v37;
    if (v63 > v37)
    {
      v64 = v37;
      while (a1[v64 + 8] >= v11)
      {
        if (++v64 >= v63)
        {
          LODWORD(v64) = -2 - v15;
          return (v64 - v37);
        }
      }
    }

    return (v64 - v37);
  }

  else
  {
    if (v10 < v4 || v9 > a3)
    {
      v38 = a1[9];
      v39 = a1;
      v40 = binarySearchMap(a1, v11 - 1);
      v41 = v39;
      v42 = binarySearchMap(v39, v13);
      v43 = v42;
      if (v38 == v15)
      {
        v27 = v40 - v42;
        if (v40 < v42)
        {
          v65 = __si_assert_copy_extra_332();
          v61 = v65;
          v73 = "";
          if (v65)
          {
            v73 = v65;
          }

          __message_assert_336(v65, v66, v67, v68, v69, v70, v71, v72, "CIIndexSet.c", 4147, "oldData >= hole", v73);
          goto LABEL_87;
        }

        a1 = v41;
      }

      else
      {
        v27 = v40 - v42;
        if (v40 < v42)
        {
          v74 = __si_assert_copy_extra_332();
          v61 = v74;
          v82 = "";
          if (v74)
          {
            v82 = v74;
          }

          __message_assert_336(v74, v75, v76, v77, v78, v79, v80, v81, "CIIndexSet.c", 4136, "oldData >= hole", v82);
          goto LABEL_87;
        }

        a1 = v41;
        v50 = v41[9];
        if (v40 > v50 && v43 <= v50)
        {
          v27 = v40 - (v43 + v41[8]) + v41[4];
        }
      }

LABEL_79:
      v51 = a1;
      if (CFGetTypeID(a1) == __kCIIndexSetInvertedTypeID)
      {
        v8 = v13 - v11 - v27 + 1;
      }

      else
      {
        v8 = v27;
      }

      if ((v8 & 0x80000000) == 0)
      {
        return v8;
      }

      v52 = countItemsInRangeByEnumeration(v51, v11, v13);
      if ((v52 & 0x80000000) == 0)
      {
        return v52;
      }

      v53 = __si_assert_copy_extra_332();
      v61 = v53;
      v62 = "";
      if (v53)
      {
        v62 = v53;
      }

      __message_assert_336(v53, v54, v55, v56, v57, v58, v59, v60, "CIIndexSet.c", 4170, "bitcount>=0", v62);
LABEL_87:
      free(v61);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v28 = a1;
    v29 = CFGetTypeID(a1);
    v8 = v28[4];
    if (v29 == __kCIIndexSetInvertedTypeID)
    {
      return v13 - (v11 + v8) + 1;
    }
  }

  return v8;
}

void BulkPayloadIterator_Step(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *(result + 56) = -1;
  *(result + 64) = -1;
  *(result + 72) = *(result + 76);
  v6 = (result + 160);
  do
  {
    do
    {
      v7 = *(result + 104);
      if (v7)
      {
        if (*(result + 24) == 1)
        {
          while (1)
          {
            v8 = *(result + 152);
            *(result + 152) = 0;
            *(result + 128) = 0;
            v7 >>= 1;
            *(result + 104) = v7;
            *(result + 56) = *(result + 64);
            *(result + 64) = -1;
            if (v7 < *(*(result + 80) + 32))
            {
              v7 = 0;
              *(result + 104) = 0;
            }

            if (v8 >= 1)
            {
              v9 = v6;
              do
              {
                v10 = *v9;
                v11 = *(*v9 + 8) & 0x3FFFFFFFFFFFFFFFLL;
                if (v11 <= *(result + 104))
                {
                  if (v11)
                  {
                    v12 = *(result + 152);
                    *(result + 152) = v12 + 1;
                    v6[v12] = v10;
                  }
                }

                else
                {
                  ipqpush((result + 8), v10);
                }

                ++v9;
                --v8;
              }

              while (v8);
              if (*(result + 24) != 1)
              {
                break;
              }

              v7 = *(result + 104);
            }

            if (!v7)
            {
              goto LABEL_29;
            }
          }
        }
      }

      else
      {
        if (*(result + 152))
        {
          v19 = __si_assert_copy_extra(0);
          v20 = v19;
          v21 = "";
          if (v19)
          {
            v21 = v19;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1817, "iterator->split>0 || iterator->futureCount==0", v21);
LABEL_37:
          free(v20);
          if (__valid_fs(-1))
          {
            v24 = 2989;
          }

          else
          {
            v24 = 3072;
          }

          *v24 = -559038737;
          abort();
        }

        if (*(result + 24) == 1)
        {
          goto LABEL_30;
        }
      }

      v13 = ipqpop((result + 8));
      if ((*(v13 + 40))(v13, result + 32))
      {
        v14 = *(v13 + 8) & 0x3FFFFFFFFFFFFFFFLL;
        if (v14 > *(result + 104))
        {
          ipqpush((result + 8), v13);
          goto LABEL_28;
        }

        if (!v14)
        {
          v22 = __si_assert_copy_extra(0);
          v20 = v22;
          v23 = "";
          if (v22)
          {
            v23 = v22;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1937, "((((iter->ptr.has_meta?iter->ptr.with_meta.offset:iter->ptr.just_offset) & 0x3FFFFFFFFFFFFFFF)))", v23);
          goto LABEL_37;
        }

        v18 = *(result + 152);
        *(result + 152) = v18 + 1;
        v6[v18] = v13;
      }

      else
      {
        v15 = *(v13 + 48);
        if (v15)
        {
          v16 = v15(v13, 0);
          v17 = *(result + 76);
          if (v16 > v17)
          {
            v17 = v16;
          }

          *(result + 76) = v17;
        }
      }

LABEL_28:
      *result |= *(v13 + 64);
    }

    while (*(result + 24) != 1);
LABEL_29:
    ;
  }

  while (*(result + 152));
LABEL_30:
  *a2 = *(result + 76);
  *a3 = *(result + 72);
  *(result + 144) = 1;
}

BOOL _CIIndexSetRemoveIndex(char *cf, uint64_t a2)
{
  if (*(cf + 5) > a2)
  {
    return 0;
  }

  v2 = a2;
  if (*(cf + 6) < a2)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
  {
    v49 = -1;
    v5 = *(cf + 4);
    if (v5 > -10)
    {
      if (v5 >= -1)
      {
        v8 = *(cf + 8);
      }

      else
      {
        v8 = 4;
      }

      if (v5 < -1)
      {
        v5 = -2 - v5;
      }

      if (v8 < v5 + 1)
      {
        _CIIndexSetMakeSpace(cf, 1, 0, &v49, 0);
      }
    }

    else
    {
      v6 = *(cf + 6) - *(cf + 5);
      v7 = -9 - v5;
      if (v6 + 1 < v7)
      {
        v7 = v6 + 1;
      }

      *(cf + 4) = -10 - v7;
    }
  }

  v9 = CFGetTypeID(cf);
  v10 = *(cf + 4);
  if (v9 == __kCIIndexSetInvertedTypeID)
  {
    if (!v10)
    {
      v12 = 0;
      goto LABEL_31;
    }

    v11 = binarySearchMap(cf, v2);
    v10 = v11;
    v12 = *(cf + 4);
    if (!v12 || v11 == *(cf + 9) || v11 == *(cf + 8) || *(*(cf + 5) + 4 * v11) != v2)
    {
LABEL_31:
      v17 = *(cf + 8);
      if (v17 != v12)
      {
        v18 = *(cf + 9);
        if (v18 == v10)
        {
          goto LABEL_34;
        }

        v28 = *(cf + 5);
        if (v18 >= v10)
        {
          memmove((v28 + 4 * (v17 - (v12 - v10))), (v28 + 4 * v10), 4 * (v18 - v10));
        }

        else
        {
          memmove((v28 + 4 * v18), (v28 + 4 * (v18 + v17 - v12)), 4 * (v10 - (v18 + v17 - v12)));
          v10 = v10 - *(cf + 8) + *(cf + 4);
        }
      }

      *(cf + 9) = v10;
LABEL_34:
      v19 = *(cf + 5);
      if (v10)
      {
        if (*(v19 + 4 * v10 - 4) <= v2)
        {
          v36 = __si_assert_copy_extra_332();
          v44 = v36;
          v45 = "";
          if (v36)
          {
            v45 = v36;
          }

          __message_assert_336(v36, v37, v38, v39, v40, v41, v42, v43, "CIIndexSet.c", 4816, "set->_blob[set->_hole-1] > at", v45);
          free(v44);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v20 = v10;
      }

      else
      {
        v20 = 0;
      }

      *(v19 + 4 * v20) = v2;
      ++*(cf + 9);
      v21 = *(cf + 4) + 1;
      goto LABEL_39;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  if (v10 <= -10)
  {
    v13 = *(cf + 6) - v2;
    v14 = v13 >> 5;
    v15 = 1 << v13;
    v16 = *(cf + 5);
    result = (v15 & *(v16 + 4 * v14)) != 0;
    if ((v15 & *(v16 + 4 * v14)) != 0)
    {
      *(cf + 4) = v10 + 1;
      if (v10 == -10)
      {
        *(cf + 4) = -10;
      }
    }

    *(v16 + 4 * v14) &= ~v15;
    return result;
  }

  if (v10 < 0)
  {
    if (v10 > 0xFFFFFFFD)
    {
      return 0;
    }

    v29 = *(cf + 8);
    if (v29 < v2)
    {
      return 0;
    }

    if (v29 == v2)
    {
      v30 = 0;
      v31 = cf + 32;
    }

    else
    {
      if (v10 == -3)
      {
        return 0;
      }

      v31 = cf + 36;
      v34 = *(cf + 9);
      if (v34 < v2)
      {
        return 0;
      }

      if (v34 == v2)
      {
        v30 = 1;
      }

      else
      {
        if (v10 == -4)
        {
          return 0;
        }

        v31 = cf + 40;
        v35 = *(cf + 10);
        if (v35 < v2)
        {
          return 0;
        }

        if (v35 == v2)
        {
          v30 = 2;
        }

        else
        {
          if (v10 == -5)
          {
            return 0;
          }

          v31 = cf + 44;
          v46 = *(cf + 11);
          if (v46 < v2)
          {
            return 0;
          }

          if (v46 == v2)
          {
            v30 = 3;
          }

          else
          {
            if (v10 == -6)
            {
              return 0;
            }

            v31 = cf + 48;
            v47 = *(cf + 12);
            if (v47 < v2)
            {
              return 0;
            }

            if (v47 == v2)
            {
              v30 = 4;
            }

            else
            {
              if (v10 == -7)
              {
                return 0;
              }

              v31 = cf + 52;
              v48 = *(cf + 13);
              if (v48 < v2)
              {
                return 0;
              }

              if (v48 == v2)
              {
                v30 = 5;
              }

              else
              {
                if (v10 == -8)
                {
                  return 0;
                }

                v31 = cf + 56;
                if (*(cf + 14) != v2)
                {
                  return 0;
                }

                v30 = 6;
              }
            }
          }
        }
      }
    }

    if (-3 - v10 > v30)
    {
      memmove(v31, &cf[4 * v30 + 36], 4 * (~v30 - v10) - 8);
    }

    v21 = v10 + 1;
    goto LABEL_39;
  }

  v22 = binarySearchMap(cf, v2);
  v23 = *(cf + 9);
  if (v23 > v22 || (result = 0, v24 = *(cf + 8), v22 < v24) && v22 >= v24 + v23 - *(cf + 4))
  {
    v25 = *(cf + 5);
    if (*(v25 + 4 * v22) != v2)
    {
      return 0;
    }

    v26 = *(cf + 8);
    v27 = *(cf + 4);
    if (v23 <= v22)
    {
      v32 = v26 - v27 + v23;
      v33 = v22 - v32;
      if (v22 <= v32)
      {
LABEL_60:
        v21 = v27 - 1;
LABEL_39:
        *(cf + 4) = v21;
        return 1;
      }

      memmove((v25 + 4 * v23), (v25 + 4 * v32), 4 * (v22 - v32));
      v22 = *(cf + 9) + v33;
    }

    else
    {
      memmove((v25 + 4 * (v26 - (v27 - v22) + 1)), (v25 + 4 * (v22 + 1)), 4 * (v23 - v22 - 1));
    }

    *(cf + 9) = v22;
    v27 = *(cf + 4);
    goto LABEL_60;
  }

  return result;
}

BOOL _CIIndexSetAddIndex(unsigned int *cf, uint64_t a2, void *a3, _DWORD *a4, int8x8_t a5)
{
  if (cf[5] > a2 || cf[6] < a2)
  {
    return 0;
  }

  v8 = cf[4];
  if (v8 < -9)
  {
    goto LABEL_4;
  }

  v14 = 0;
  v18 = cf + 8;
  while (1)
  {
    if (v8 < 0)
    {
      if (v8 > 0xFFFFFFFD)
      {
        v20 = 0;
LABEL_41:
        cf[4] = v8 - 1;
      }

      else
      {
        v19 = 0;
        v20 = (-2 - v8);
        while (1)
        {
          v21 = cf[v19 + 8];
          if (v21 < a2)
          {
            break;
          }

          if (v21 == a2)
          {
            return 0;
          }

          if (v20 == ++v19)
          {
            if (v8 != -6)
            {
              goto LABEL_41;
            }

            goto LABEL_20;
          }
        }

        if (v8 == -6)
        {
LABEL_20:
          _CIIndexSetMakeSpace(cf, 1, 0, a4, 0);
          v8 = cf[4];
          goto LABEL_21;
        }

        cf[4] = v8 - 1;
        v28 = v19;
        memmove(&v18[(v19 + 1)], &v18[v19], 4 * (v20 - v19));
        v20 = v28;
      }

      v18[v20] = a2;
      return 1;
    }

    v22 = CFGetTypeID(cf);
    v23 = cf[4];
    if (v22 == __kCIIndexSetInvertedTypeID)
    {
      if (v23)
      {
        v29 = binarySearchMap(cf, a2);
        v30 = cf[9];
        if (v30 <= v29)
        {
          v14 = 0;
          v31 = cf[8];
          if (v29 >= v31 || v29 < v31 + v30 - cf[4])
          {
            return v14;
          }
        }

        v32 = *(cf + 5);
        if (*(v32 + 4 * v29) == a2)
        {
          v33 = cf[8];
          v34 = cf[4];
          if (v30 <= v29)
          {
            v43 = v33 - v34 + v30;
            v44 = v29 - v43;
            if (v29 <= v43)
            {
LABEL_69:
              cf[4] = v34 - 1;
              return 1;
            }

            memmove((v32 + 4 * v30), (v32 + 4 * v43), 4 * (v29 - v43));
            v36 = cf[9] + v44;
          }

          else
          {
            v35 = v29;
            memmove((v32 + 4 * (v33 - (v34 - v29) + 1)), (v32 + 4 * (v29 + 1)), 4 * (v30 - v29 - 1));
            v36 = v35;
          }

          cf[9] = v36;
          v34 = cf[4];
          goto LABEL_69;
        }
      }

      return 0;
    }

    v24 = v23 ? searchMapWithHint(cf, a2, a4, 1) : 0;
    v25 = cf[9];
    if (v24 == v25)
    {
      v8 = cf[4];
      v26 = cf[8];
      if (v8 < v26)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v26 = *v18;
      if (v24 != *v18 && *(*(cf + 5) + 4 * v24) == a2)
      {
        return v14;
      }

      v8 = cf[4];
      if (v26 > v8)
      {
        v40 = *(cf + 5);
        if (v25 >= v24)
        {
          memmove((v40 + 4 * (v24 - v8 + v26)), (v40 + 4 * v24), 4 * (v25 - v24));
        }

        else
        {
          memmove((v40 + 4 * v25), (v40 + 4 * (v26 - v8 + v25)), 4 * (v24 - (v26 - v8 + v25)));
          v24 = v24 - cf[8] + cf[4];
        }

        cf[9] = v24;
LABEL_61:
        v41 = *(cf + 5);
        if (v24)
        {
          if (*(v41 + 4 * v24 - 4) <= a2)
          {
            v45 = __si_assert_copy_extra_332();
            v53 = v45;
            v54 = "";
            if (v45)
            {
              v54 = v45;
            }

            __message_assert_336(v45, v46, v47, v48, v49, v50, v51, v52, "CIIndexSet.c", 4959, "set->_blob[set->_hole-1] > at", v54);
            free(v53);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v42 = v24;
        }

        else
        {
          v42 = 0;
        }

        *(v41 + 4 * v42) = a2;
        ++cf[9];
        ++cf[4];
        return 1;
      }
    }

    if (v8 <= -10)
    {
      break;
    }

    v27 = -2 - v8;
    if (v8 >= -1)
    {
      v27 = v8;
    }

    else
    {
      v26 = 4;
    }

    if (v26 < v27 + 1)
    {
      _CIIndexSetMakeSpace(cf, 1, a3, a4, 0);
      v8 = cf[4];
    }

    v14 = 1;
LABEL_21:
    if (v8 < -9)
    {
      goto LABEL_4;
    }
  }

  v38 = cf[6] - cf[5];
  v39 = -9 - v8;
  if (v38 + 1 < v39)
  {
    v39 = v38 + 1;
  }

  cf[4] = -10 - v39;
LABEL_4:
  v9 = cf[6] - a2;
  v10 = v9 >> 5;
  v11 = *(cf + 5);
  v12 = *(v11 + 4 * (v9 >> 5));
  v13 = 1 << v9;
  v14 = (v13 & v12) == 0;
  *(v11 + 4 * v10) = v13 | v12;
  if ((v13 & v12) == 0)
  {
    v15 = cf[6] - cf[5];
    if (v15 + 1 < -9 - cf[4])
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = -9 - cf[4];
    }

    cf[4] = -10 - v16;
  }

  _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, a3, a5);
  return v14;
}

void _CIIndexSetMakeSpace(unsigned int *cf, uint64_t a2, void *a3, _DWORD *a4, int a5)
{
  v7 = a2;
  if (a4)
  {
    *a4 = -1;
  }

  v9 = cf[4];
  if ((v9 + 1) >= 0xFFFFFFF8)
  {
    v10 = 4294967294 - v9;
    v11 = (~v9 | (~v9 >> 1) | ((~v9 | (~v9 >> 1)) >> 2)) + 1;
    v12 = blob_calloc(v11, a3);
    memcpy(v12, cf + 8, 4 * v10);
    *(cf + 5) = v12;
    cf[4] = v10;
    LODWORD(v9) = v10;
    cf[8] = v11;
    cf[9] = v10;
  }

  v13 = (v7 + v9 - 1) | ((v7 + v9 - 1) >> 1);
  v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
  v15 = v14 | (v14 >> 8) | ((v14 | (v14 >> 8)) >> 16);
  v16 = v15 + 1;
  CFGetTypeID(cf);
  if (v15 + 1 < (cf[6] - cf[5] + 31) >> 5 || a5 != 0)
  {
    v18 = 4 * (v15 + 1);
    v19 = *MEMORY[0x1E69E9AC8] >> 1;
    if (v18 >= v19)
    {
      v21 = mmap(0, (v18 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 3, 4098, -134217728, 0);
    }

    else
    {
      if (v19 > 4 * cf[8])
      {
        v20 = *(cf + 5);
        if (cf[9] == cf[4])
        {
          *(cf + 5) = blob_realloc(*(cf + 5), cf[8], v15 + 1, a3);
LABEL_33:
          cf[8] = v16;
          return;
        }

        if (a3 && ((HIDWORD(v28) = v15 - 7, LODWORD(v28) = v15 - 7, v27 = v28 >> 3, v15 - 7 <= 0x37) ? (v29 = v27 > 7) : (v29 = 1), !v29 && ((0x8Bu >> v27) & 1) != 0 && ((v31 = qword_1C2BFF6A8[v27], (v21 = a3[v31 + 2]) != 0) || *a3 && (v21 = cicachelistdequeue(*a3 + 24 * v31 + 32, 0), v18 = 4 * (v15 + 1), v21))))
        {
          a3[v31 + 2] = v21[1];
        }

        else
        {
          v21 = malloc_type_zone_malloc(queryZone, v18, 0xA4971684uLL);
          if (!v21)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *v32 = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v32, 2u);
            }

            v21 = 0;
          }
        }

LABEL_31:
        *(cf + 5) = v21;
        if (v20)
        {
          memcpy(v21, v20, 4 * cf[9]);
          memcpy((*(cf + 5) + 4 * (v16 - cf[4] + cf[9])), &v20[4 * (cf[9] - cf[4]) + 4 * cf[8]], 4 * (cf[4] - cf[9]));
          blob_free(v20, cf[8], a3);
        }

        goto LABEL_33;
      }

      if (a3 && ((HIDWORD(v23) = v15 - 7, LODWORD(v23) = v15 - 7, v22 = v23 >> 3, v15 - 7 <= 0x37) ? (v24 = v22 > 7) : (v24 = 1), !v24 && ((0x8Bu >> v22) & 1) != 0 && ((v30 = qword_1C2BFF6A8[v22], (v21 = a3[v30 + 2]) != 0) || *a3 && (v21 = cicachelistdequeue(*a3 + 24 * v30 + 32, 0), v18 = 4 * (v15 + 1), v21))))
      {
        a3[v30 + 2] = v21[1];
      }

      else
      {
        v21 = malloc_type_zone_malloc(queryZone, v18, 0xA4971684uLL);
        if (!v21)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          v21 = 0;
        }
      }
    }

    v20 = *(cf + 5);
    if (cf[9] == cf[4])
    {
      v25 = cf[8];
      if (v16 < v25)
      {
        v25 = v15 + 1;
      }

      v26 = v21;
      memcpy(v21, *(cf + 5), 4 * v25);
      blob_free(*(cf + 5), cf[8], a3);
      v21 = v26;
      v20 = 0;
    }

    goto LABEL_31;
  }

  _CIIndexSetForceBitmap(cf, a3, v7);
}

void *blob_calloc(unsigned int a1, void *a2)
{
  v3 = 4 * a1;
  v4 = MEMORY[0x1E69E9AC8];
  v5 = *MEMORY[0x1E69E9AC8];
  if (v3 >= *MEMORY[0x1E69E9AC8] >> 1)
  {

    return mmap(0, (v3 + v5 - 1) & -v5, 3, 4098, -134217728, 0);
  }

  else
  {
    if (a2)
    {
      if (a1 - 8 <= 0x37)
      {
        HIDWORD(v7) = a1 - 8;
        LODWORD(v7) = a1 - 8;
        v6 = v7 >> 3;
        if (v6 <= 7 && ((0x8Bu >> v6) & 1) != 0)
        {
          v8 = qword_1C2BFF6A8[v6];
          v9 = a2 + 2;
          v10 = a2[v8 + 2];
          if (v10)
          {
LABEL_7:
            v9[v8] = v10[1];
            bzero(v10, v3);
            return v10;
          }

          if (*a2)
          {
            v12 = 4 * a1;
            v13 = cicachelistdequeue(*a2 + 24 * v8 + 32, 0);
            v3 = v12;
            v10 = v13;
            if (v13)
            {
              goto LABEL_7;
            }

            v5 = *v4;
          }
        }
      }
    }

    if (!(a1 >> 15) && v5 < v3)
    {
      ++sTotal_5923;
    }

    result = malloc_type_zone_calloc(queryZone, 1uLL, v3, 0x5BAF1CEAuLL);
    if (!result)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v14[0] = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v14, 2u);
      }

      return 0;
    }
  }

  return result;
}

void *blob_realloc(void *__src, uint64_t a2, unsigned int a3, void *a4)
{
  v5 = *MEMORY[0x1E69E9AC8] >> 1;
  v6 = 4 * a3;
  if (v5 <= 4 * a2 || v6 >= v5)
  {
    v22 = __si_assert_copy_extra_332();
    v30 = v22;
    v31 = "";
    if (v22)
    {
      v31 = v22;
    }

    __message_assert_336(v22, v23, v24, v25, v26, v27, v28, v29, "CIIndexSet.c", 694, "!(USE_MMAP(oldsize) || USE_MMAP(newsize))", v31);
    free(v30);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (a4 && a3 - 8 <= 0x37 && (HIDWORD(v10) = a3 - 8, LODWORD(v10) = a3 - 8, v9 = v10 >> 3, v9 <= 7) && ((0x8Bu >> v9) & 1) != 0 && ((v11 = qword_1C2BFF6A8[v9], v12 = a4 + 2, (v13 = a4[v11 + 2]) != 0) || *a4 && (v19 = a2, v20 = a4, v21 = v6, v13 = cicachelistdequeue(*a4 + 24 * v11 + 32, 0), v6 = v21, LODWORD(a2) = v19, a4 = v20, v13)))
  {
    v12[v11] = v13[1];
    if (a3 >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    v15 = v13;
    v16 = a2;
    v17 = a4;
    memcpy(v13, __src, 4 * v14);
    blob_free(__src, v16, v17);
    return v15;
  }

  else
  {
    if (__src)
    {
      result = malloc_type_zone_realloc(queryZone, __src, v6, 0xA1A7ADA0uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = malloc_type_zone_malloc(queryZone, v6, 0x566E289CuLL);
      if (result)
      {
        return result;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    return 0;
  }
}

uint64_t PartialQueryResults::PartialQueryResults(uint64_t a1, CFArrayRef theArray, const void *a3, uint64_t a4, const __CFArray *a5, const void *a6, int a7, uint64_t a8, double a9, int a10, atomic_uint *a11, atomic_uint *a12, uint64_t a13, unsigned int a14)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = theArray;
  *(a1 + 128) = a4;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  *(a1 + 232) = Count;
  *(a1 + 240) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  *(a1 + 248) = a3;
  *(a1 + 256) = a8;
  v21 = 0uLL;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = a9;
  *(a1 + 312) = a13;
  *(a1 + 320) = a10;
  *(a1 + 352) = 0;
  if (a5)
  {
    v22 = CFArrayGetCount(a5);
    v21 = 0uLL;
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 360) = v22;
  *(a1 + 368) = a5;
  *(a1 + 432) = 0;
  *(a1 + 408) = 0;
  *(a1 + 376) = v21;
  *(a1 + 392) = v21;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0;
  *(a1 + 3536) = a14;
  *(a1 + 4568) = 0;
  if (a11)
  {
    atomic_fetch_add(a11, 1u);
    *(a1 + 328) = a11;
  }

  else
  {
    *(a1 + 328) = 0;
  }

  *(a1 + 336) = md_deadline_once_create();
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 344) = dispatch_time(0, ((a9 - Current) * 1000000000.0 + 100000000.0));
  if (a12)
  {
    atomic_fetch_add(a12, 1u);
  }

  *(a1 + 424) = a12;
  if (a7 >= 4)
  {
    if (a6)
    {
      Mutable = CFRetain(a6);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCIQueryZoneAllocator, 0, 0, MEMORY[0x1E695E9E8]);
    }

    *(a1 + 112) = Mutable;
  }

  *(a1 + 88) = 0;
  if (a14)
  {
    if (a14 <= 3)
    {
      for (i = 0; i != a14; ++i)
      {
LABEL_25:
        v29 = (a1 + 8 * i);
        v29[58] = 0;
        v29[443] = 0;
        v29[186] = 0;
        v29[314] = 0;
      }

      return a1;
    }

    i = a14 & 0x7FFFFFFC;
    v26 = a1;
    v27 = i;
    do
    {
      v28 = (v26 + 3544);
      v26[29] = 0uLL;
      v26[30] = 0uLL;
      v26[93] = 0uLL;
      v26[94] = 0uLL;
      v26[157] = 0uLL;
      v26[158] = 0uLL;
      v26 += 2;
      *v28 = 0uLL;
      v28[1] = 0uLL;
      v27 -= 4;
    }

    while (v27);
    if (i != a14)
    {
      goto LABEL_25;
    }
  }

  return a1;
}

uint64_t oqpop(void *a1, _BYTE *a2)
{
  v2 = *a1;
  *a2 = v2;
  v3 = a1[5];
  v4 = a1[6];
  if (v2 == 1)
  {
    if (v3 < v4)
    {
      v5 = a1[2];
      a1[5] = v3 + 1;
      return *(v5 + 16 * v3);
    }
  }

  else if (v3 < v4)
  {
    v7 = a1[2];
    a1[5] = v3 + 1;
    return *(v7 + 8 * v3);
  }

  return 0;
}

uint64_t searchMapWithHint(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v6 = *a3;
  if (v6 == -1 || (v7 = *(a1 + 32), v7 <= v6) || (v8 = *(a1 + 36), v9 = *(a1 + 16), v8 < v6) && v8 + v7 - v9 > v6)
  {
LABEL_5:
    v8 = binarySearchMap(a1, a2);
LABEL_6:
    v10 = v8;
LABEL_7:
    *a3 = v8;
    return v10;
  }

  v12 = v7 - v9 + v8;
  if (v6 >= v8 && v6 < v12)
  {
    goto LABEL_25;
  }

  v14 = *(a1 + 40);
  v15 = *(v14 + 4 * v6);
  if (v15 == a2)
  {
    return v6;
  }

  if (v15 >= a2)
  {
LABEL_25:
    v10 = (v6 + 1);
    if (v10 < v8 || v12 == 0)
    {
      v17 = v7 - v9 + v8;
      if (v10 >= v7)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v12 >= v7)
      {
        goto LABEL_6;
      }

      v17 = 0;
      LODWORD(v6) = v7 - v9 + v8;
      v10 = v6;
    }

    v18 = *(a1 + 40);
    v19 = *(v18 + 4 * v10);
    if (v19 == a2)
    {
      goto LABEL_35;
    }

    if (v19 > a2)
    {
      v6 = (v10 + 1);
      if (v6 >= v8 && v17)
      {
        if (v17 >= v7)
        {
          goto LABEL_6;
        }

        LODWORD(v10) = v17;
        v6 = v17;
        v17 = 0;
      }

      if (v6 >= v7)
      {
        goto LABEL_78;
      }

      v20 = *(v18 + 4 * v6);
      if (v20 == a2)
      {
LABEL_43:
        LODWORD(v8) = v6;
        v10 = v6;
        goto LABEL_7;
      }

      if (v20 <= a2)
      {
        goto LABEL_78;
      }

      v10 = (v6 + 1);
      if (v10 >= v8 && v17)
      {
        if (v17 >= v7)
        {
          goto LABEL_6;
        }

        LODWORD(v6) = v17;
        v10 = v17;
        v17 = 0;
      }

      if (v10 >= v7)
      {
        goto LABEL_77;
      }

      v21 = *(v18 + 4 * v10);
      if (v21 == a2)
      {
        goto LABEL_35;
      }

      if (v21 <= a2)
      {
        goto LABEL_77;
      }

      v6 = (v10 + 1);
      if (v6 >= v8 && v17)
      {
        if (v17 >= v7)
        {
          goto LABEL_6;
        }

        LODWORD(v10) = v17;
        v6 = v17;
        v17 = 0;
      }

      if (v6 >= v7)
      {
        goto LABEL_78;
      }

      v22 = *(v18 + 4 * v6);
      if (v22 == a2)
      {
        goto LABEL_43;
      }

      if (v22 <= a2)
      {
LABEL_78:
        LODWORD(v8) = v10;
        v10 = v6;
        goto LABEL_7;
      }

      v10 = (v6 + 1);
      if (v10 >= v8)
      {
        if (v17)
        {
          LODWORD(v6) = v17;
          v10 = v17;
          if (v17 >= v7)
          {
            goto LABEL_6;
          }
        }
      }

      if (v10 < v7)
      {
        if (*(v18 + 4 * v10) != a2)
        {
          if (v8 == v9)
          {
            v23 = v8 - 1;
            if (v8 - 33 >= v10)
            {
              do
              {
                v8 = (v10 + (v23 - v10) / 2);
                v24 = *(v18 + 4 * v8);
                if (v24 == a2)
                {
                  goto LABEL_6;
                }

                if (v24 > a2)
                {
                  LODWORD(v10) = v8 + 1;
                }

                else
                {
                  v23 = v8 - 1;
                }
              }

              while (v10 <= v23 - 32);
            }

            v25 = v10;
            if (v23 + 1 > v10)
            {
              v10 = v23 + 1;
            }

            else
            {
              v10 = v10;
            }

            while (v25 <= v23)
            {
              v26 = *(v18 + 4 * v25++);
              if (v26 <= a2)
              {
                goto LABEL_110;
              }
            }
          }

          else if (v8 && (v27 = v8 - 1, *(v18 + 4 * v27) <= a2))
          {
            if (v8 > v7)
            {
              v33 = __si_assert_copy_extra_332();
              v41 = v33;
              v42 = "";
              if (v33)
              {
                v42 = v33;
              }

              __message_assert_336(v33, v34, v35, v36, v37, v38, v39, v40, "CIIndexSet.c", 248, "set->_hole-1 < (int32_t)set->_size", v42);
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

            if (v8 < v10)
            {
              LODWORD(v10) = v27;
            }

            if (v8 - 33 >= v10)
            {
              while (1)
              {
                v8 = (v10 + (v27 - v10) / 2);
                v31 = *(v18 + 4 * v8);
                if (v31 == a2)
                {
                  goto LABEL_6;
                }

                if (v31 > a2)
                {
                  LODWORD(v10) = v8 + 1;
                }

                else
                {
                  LODWORD(v27) = v8 - 1;
                }

                if (v10 > v27 - 32)
                {
                  v27 = v27;
                  break;
                }
              }
            }

            v25 = v10;
            if (v27 + 1 > v10)
            {
              v10 = v27 + 1;
            }

            else
            {
              v10 = v10;
            }

            while (v25 <= v27)
            {
              v32 = *(v18 + 4 * v25++);
              if (v32 <= a2)
              {
LABEL_110:
                v10 = v25 - 1;
                break;
              }
            }
          }

          else
          {
            if (v12 > v10)
            {
              LODWORD(v10) = v7 - v9 + v8;
            }

            v28 = v7 - 1;
            if ((v7 - 33) >= v10)
            {
              do
              {
                v8 = (v10 + (v28 - v10) / 2);
                v29 = *(v18 + 4 * v8);
                if (v29 == a2)
                {
                  goto LABEL_6;
                }

                if (v29 > a2)
                {
                  LODWORD(v10) = v8 + 1;
                }

                else
                {
                  v28 = v8 - 1;
                }
              }

              while (v10 <= v28 - 32);
            }

            v25 = v10;
            if (v28 + 1 > v10)
            {
              v10 = v28 + 1;
            }

            else
            {
              v10 = v10;
            }

            while (v25 <= v28)
            {
              v30 = *(v18 + 4 * v25++);
              if (v30 <= a2)
              {
                goto LABEL_110;
              }
            }
          }

          LODWORD(v8) = v10;
          goto LABEL_7;
        }

LABEL_35:
        LODWORD(v8) = v10;
        goto LABEL_7;
      }
    }

LABEL_77:
    LODWORD(v8) = v6;
    goto LABEL_7;
  }

  if (a4 && (!v8 || v6 != v12 || *(v14 + 4 * v8 - 4) <= a2) && (!v6 || v6 >= v8 && v6 <= v12 || *(v14 + 4 * (v6 - 1)) <= a2))
  {
    goto LABEL_5;
  }

  return v6;
}

void ipqpush(void **result, uint64_t a2)
{
  if (!a2)
  {
    v18 = __si_assert_copy_extra(0);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 88, "item!=0", v20);
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

  v4 = result[1];
  v5 = result[2];
  v6 = v5;
  if ((v5 + 2) >= v4)
  {
    v7 = 2 * v4;
    v8 = v4 < 4;
    v9 = 4;
    if (!v8)
    {
      v9 = v7;
    }

    result[1] = v9;
    v10 = 8 * v9;
    if (*result)
    {
      v11 = malloc_type_zone_realloc(queryZone, *result, v10 + 16, 0xA1A7ADA0uLL);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, v10 + 16, 0x566E289CuLL);
    }

    v12 = v11;
    if (!v11)
    {
      _log_fault_for_malloc_failure();
    }

    *result = v12;
    *v12 = 0;
    v6 = result[2];
  }

  result[2] = (v6 + 1);
  *(*result + v5) = a2;
  if (v5 >= 2)
  {
    do
    {
      v13 = *result;
      v14 = *(*result + v5);
      v15 = v14;
      if (v14 + 1 >= 2)
      {
        v15 = *(v14 + 8);
      }

      v16 = v13[v5 >> 1];
      v17 = v16;
      if (v16 + 1 >= 2)
      {
        v17 = *(v16 + 8);
      }

      if (v15 > v17)
      {
        break;
      }

      v13[v5] = v16;
      *(*result + (v5 >> 1)) = v14;
      v8 = v5 > 3;
      v5 >>= 1;
    }

    while (v8);
  }
}

uint64_t binarySearchMap(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    if (v2 > *(a1 + 32))
    {
      v18 = __si_assert_copy_extra_332();
      v26 = v18;
      v27 = "";
      if (v18)
      {
        v27 = v18;
      }

      __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "CIIndexSet.c", 213, "right < (int32_t)set->_size", v27);
      free(v26);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v4 = v2 - 1;
    v5 = *(a1 + 40);
    if (v2 >= 33)
    {
      LODWORD(v6) = 0;
      while (1)
      {
        result = (v6 + (v4 - v6) / 2);
        v14 = *(v5 + 4 * result);
        if (v14 == a2)
        {
          break;
        }

        if (v14 > a2)
        {
          LODWORD(v6) = result + 1;
        }

        else
        {
          v4 = result - 1;
        }

        if (v6 > v4 - 32)
        {
          v6 = v6;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v6 = 0;
LABEL_26:
      if (v4 + 1 > v6)
      {
        result = v4 + 1;
      }

      else
      {
        result = v6;
      }

      while (v6 <= v4)
      {
        v15 = *(v5 + 4 * v6++);
        if (v15 <= a2)
        {
          return v6 - 1;
        }
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v2 && (v8 = v2 - 1, *(v7 + 4 * (v2 - 1)) <= a2))
    {
      if (v2 > *(a1 + 32))
      {
        v28 = __si_assert_copy_extra_332();
        v36 = v28;
        v37 = "";
        if (v28)
        {
          v37 = v28;
        }

        __message_assert_336(v28, v29, v30, v31, v32, v33, v34, v35, "CIIndexSet.c", 219, "set->_hole-1 < (int32_t)set->_size", v37);
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

      if (v2 >= 33)
      {
        LODWORD(v2) = 0;
        while (1)
        {
          result = (v2 + (v8 - v2) / 2);
          v16 = *(v7 + 4 * result);
          if (v16 == a2)
          {
            break;
          }

          if (v16 > a2)
          {
            LODWORD(v2) = result + 1;
          }

          else
          {
            LODWORD(v8) = result - 1;
          }

          if (v2 > v8 - 32)
          {
            v8 = v8;
            v2 = v2;
            goto LABEL_42;
          }
        }
      }

      else
      {
        v2 = 0;
LABEL_42:
        if (v8 + 1 > v2)
        {
          result = v8 + 1;
        }

        else
        {
          result = v2;
        }

        while (v2 <= v8)
        {
          v17 = *(v7 + 4 * v2++);
          if (v17 <= a2)
          {
            return v2 - 1;
          }
        }
      }
    }

    else
    {
      v9 = *(a1 + 32);
      LODWORD(v2) = v9 - v3 + v2;
      v10 = v9 - 1;
      if (v9 - 33 < v2)
      {
LABEL_13:
        v2 = v2;
        if (v10 + 1 > v2)
        {
          result = v10 + 1;
        }

        else
        {
          result = v2;
        }

        while (v2 <= v10)
        {
          v13 = *(v7 + 4 * v2++);
          if (v13 <= a2)
          {
            return v2 - 1;
          }
        }
      }

      else
      {
        while (1)
        {
          result = (v2 + (v10 - v2) / 2);
          v12 = *(v7 + 4 * result);
          if (v12 == a2)
          {
            break;
          }

          if (v12 > a2)
          {
            LODWORD(v2) = result + 1;
          }

          else
          {
            v10 = result - 1;
          }

          if (v2 > v10 - 32)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  return result;
}

void _CIIndexSetForceBitmap(int *result, void *a2, int a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (result[4] < -9)
  {
    return;
  }

  v7 = result + 8;
  v6 = result[8];
  v8 = CFGetTypeID(result);
  v9 = __kCIIndexSetInvertedTypeID;
  if (CIIndexSetGetTypeID_onceToken != -1)
  {
    dispatch_once(&CIIndexSetGetTypeID_onceToken, &__block_literal_global_5901);
  }

  _CFRuntimeSetInstanceTypeID();
  v11 = result[4];
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      v12 = result[9];
      v13 = *(result + 5);
      v14 = (result[6] - result[5] + 32) >> 5;
      result[8] = v14;
      *(result + 5) = blob_calloc(v14, a2);
      result[4] = -10;
      result[9] = -1;
      _CIIndexSetAddSortedIndexes(result, v13, v12, 1, a2, 1);
      _CIIndexSetAddSortedIndexes(result, &v13[v6 - v11 + v12], (v11 - v12), 1, a2, 1);
      result[4] = -10 - v11;
      blob_free(v13, v6, a2);
      if (v8 != v9)
      {
        goto LABEL_23;
      }

LABEL_9:
      v16 = result[5];
      v17 = result[6];
      v18 = (v17 - v16) >> 5;
      if (v17 - v16 >= 0x20)
      {
        v19 = 0;
        if (v18 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18;
        }

        v21 = 4 * v20;
        do
        {
          *(*(result + 5) + v19) = ~*(*(result + 5) + v19);
          v19 += 4;
        }

        while (v21 != v19);
        v16 = result[5];
        v17 = result[6];
      }

      if (v16 <= v17)
      {
        v22 = -v16;
        do
        {
          if (v18 != (v17 + v22) >> 5)
          {
            break;
          }

          *(*(result + 5) + 4 * v18) ^= 1 << (v17 + v22);
          ++v16;
          v17 = result[6];
          --v22;
        }

        while (v16 <= v17);
        v16 = result[5];
      }

      v23 = v16 - (v17 + result[4]) - 21;
      goto LABEL_28;
    }

    MEMORY[0x1EEE9AC00](v10);
    v25 = v40 - v24;
    bzero(v40 - v24, v26);
    memcpy(v25, v7, 4 * (-2 - v11));
    v27 = (result[6] - result[5] + 32) >> 5;
    result[8] = v27;
    *(result + 5) = blob_calloc(v27, a2);
    result[4] = -10;
    result[9] = -1;
    _CIIndexSetAddSortedIndexes(result, v25, (-2 - v11), 0, a2, 1);
    result[4] = v11 - 8;
    if (v8 == v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = (result[6] - result[5] + 32) >> 5;
    result[4] = -10;
    result[8] = v15;
    result[9] = -1;
    blob_free(*(result + 5), v6, a2);
    *(result + 5) = blob_calloc(result[8], a2);
    if (v8 == v9)
    {
      goto LABEL_9;
    }
  }

LABEL_23:
  if (!a3)
  {
    goto LABEL_29;
  }

  v28 = result[6] - result[5];
  if (v28 + 1 < (a3 - result[4] - 10))
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = a3 - result[4] - 10;
  }

  v23 = -10 - v29;
LABEL_28:
  result[4] = v23;
LABEL_29:
  if (!*(result + 5))
  {
    v30 = __si_assert_copy_extra_332();
    v38 = v30;
    v39 = "";
    if (v30)
    {
      v39 = v30;
    }

    __message_assert_336(v30, v31, v32, v33, v34, v35, v36, v37, "CIIndexSet.c", 2127, "set->_blob", v39);
    free(v38);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }
}

uint64_t performSearch_METADATA(SISearchCtx_METADATA *a1, PartialQueryResults *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(13);
  v6 = 2 * (dword_1EBF46B00 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 67109120;
    LODWORD(v45) = qos_class_self();
    _os_log_impl(&dword_1C278D000, v5, v6, "at qos 0x%x", buf, 8u);
  }

  *__error() = v4;
  v7 = *(a1 + 3);
  *buf = 0;
  v8 = fd_setDir(*(v7 + 32), buf);
  v9 = 0;
  if (v8)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(v7 + 1192), 0x40000000, add_explicit + 1);
    v13 = v12;
    v14 = v11;
    v15 = HIDWORD(v11);
    v17 = v16;
    v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    *(v18 + 216) = 0;
    v19 = *(v18 + 312);
    v20 = *(v18 + 224);
    if (v20)
    {
      v20(*(v18 + 288));
    }

    v42 = v15;
    v43 = v14;
    v40 = v13;
    v41 = v17;
    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v39, 2u);
      }

      *(v18 + 312) = v19;
      CIOnThreadCleanUpReset(v40);
      dropThreadId(v43, 1, add_explicit + 1);
      CICleanUpReset(v43, v41);
      v22 = 0;
LABEL_26:
      v33 = *buf;
      MEMORY[0x1C6921200](*buf);
      if ((v33 & 0x80000000) == 0)
      {
        close(v33);
      }

      v9 = v22;
      goto LABEL_29;
    }

    v22 = inner_performSearch(a1, a2, v21);
    if (v22)
    {
LABEL_23:
      v31 = threadData[9 * v43 + 1] + 320 * v42;
      *(v31 + 312) = v19;
      v32 = *(v31 + 232);
      if (v32)
      {
        v32(*(v31 + 288));
      }

      dropThreadId(v43, 0, add_explicit + 1);
      goto LABEL_26;
    }

    v23 = *(a1 + 647);
    if (v23 == 1)
    {
      v24 = *__error();
      v25 = _SILogForLogForCategory(1);
      v26 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v25, v26))
      {
        *v39 = 0;
        v27 = "Query detected merge is required";
LABEL_17:
        _os_log_impl(&dword_1C278D000, v25, v26, v27, v39, 2u);
      }
    }

    else
    {
      if (*(a1 + 646) != 1)
      {
        goto LABEL_19;
      }

      v24 = *__error();
      v25 = _SILogForLogForCategory(1);
      v26 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v25, v26))
      {
        *v39 = 0;
        v27 = "Query detected merge is needed";
        goto LABEL_17;
      }
    }

    *__error() = v24;
    si_merge_for_badness(*(a1 + 3), v23);
LABEL_19:
    if ((*(a1 + 1192) & 1) == 0)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(1);
      v30 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v29, v30))
      {
        *v39 = 0;
        _os_log_impl(&dword_1C278D000, v29, v30, "performSearch_METADATA: complete", v39, 2u);
      }

      *__error() = v28;
      *(a1 + 1192) = 1;
      emitResults(a1, a2, 1);
    }

    goto LABEL_23;
  }

LABEL_29:
  v34 = v9;
  if (dword_1EBF46AD0 >= 5)
  {
    v36 = *__error();
    v37 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = atomic_load(a1 + 68);
      *buf = 134217984;
      v45 = v38;
      _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "Result count: %lld", buf, 0xCu);
    }

    *__error() = v36;
  }

  return v34;
}

void _CIIndexSetAddSortedIndexes(unsigned int *cf, unsigned int *a2, uint64_t a3, int a4, void *a5, int a6, int8x8_t a7)
{
  v135 = *MEMORY[0x1E69E9840];
  v7 = (a3 - 1);
  if (a3 < 1)
  {
    return;
  }

  v9 = a2;
  if (a3 == 1 && (a6 & 1) == 0)
  {
    LODWORD(v134) = -1;
    _CIIndexSetAddIndex(cf, *a2, a5, &v134, a7);
    return;
  }

  if (CFGetTypeID(cf) != __kCIIndexSetInvertedTypeID)
  {
    v15 = cf[4];
    if (v15 > -10)
    {
      if (v15 < -1)
      {
        v15 = -2 - v15;
        v19 = 4;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = cf[6] - cf[5];
      v17 = a3 - v15 - 10;
      if (v16 + 1 < v17)
      {
        v18 = v16 + 1;
      }

      else
      {
        v18 = v17;
      }

      v15 = -10 - v18;
      cf[4] = -10 - v18;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    v19 = cf[8];
LABEL_16:
    if (v19 < v15 + a3)
    {
      _CIIndexSetMakeSpace(cf, a3, a5, 0, a6);
    }
  }

LABEL_18:
  if (cf[4] <= -10)
  {
    v20 = a3;
    do
    {
      v22 = *v9++;
      v21 = v22;
      v23 = cf[6];
      v24 = v23 >= v22;
      v25 = v23 - v22;
      if (v24 && v21 >= cf[5])
      {
        *(*(cf + 5) + 4 * (v25 >> 5)) |= 1 << v25;
      }

      --v20;
    }

    while (v20);
    if ((a6 & 1) == 0)
    {

      _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, a5, v14);
    }

    return;
  }

  if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
  {
    v26 = cf[9];
    v27 = cf[4];
    if (v26 > v27)
    {
      v123 = __si_assert_copy_extra_332();
      v131 = v123;
      v132 = "";
      if (v123)
      {
        v132 = v123;
      }

      __message_assert_336(v123, v124, v125, v126, v127, v128, v129, v130, "CIIndexSet.c", 1484, "(int32_t)set->_hole <= (int32_t)set->_count", v132);
      free(v131);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    LODWORD(v28) = cf[8] - v27;
    memmove((*(cf + 5) + 4 * v28), *(cf + 5), 4 * v26);
    v29 = cf[4];
    cf[9] = v29;
    if (v29 < 1 || v29 + a3 <= (__clz(v29) ^ 0x1F) * a3)
    {
      v34 = 0;
      if (a4)
      {
        LODWORD(v30) = 0;
        do
        {
          v35 = v9[v34];
          if (v35 > cf[6] || v35 < cf[5])
          {
            break;
          }

          if (v28 < cf[8])
          {
            v28 = v28;
            v30 = v30;
            while (1)
            {
              v36 = *(cf + 5);
              v37 = *(v36 + 4 * v28);
              if (v37 <= v35)
              {
                break;
              }

              ++v28;
              v38 = v30 + 1;
              *(v36 + 4 * v30++) = v37;
              if (v28 >= cf[8])
              {
                LODWORD(v30) = v38;
                goto LABEL_41;
              }
            }

            if (v37 == v35)
            {
              --cf[4];
              LODWORD(v28) = v28 + 1;
            }
          }

LABEL_41:
          ++v34;
        }

        while (v34 != a3);
      }

      else
      {
        LODWORD(v69) = 0;
        while (1)
        {
          v70 = v9[a3 + ~v34];
          if (v70 > cf[6] || v70 < cf[5])
          {
            break;
          }

          if (v28 < cf[8])
          {
            v28 = v28;
            v69 = v69;
            while (1)
            {
              v71 = *(cf + 5);
              v72 = *(v71 + 4 * v28);
              if (v72 <= v70)
              {
                break;
              }

              ++v28;
              v73 = v69 + 1;
              *(v71 + 4 * v69++) = v72;
              if (v28 >= cf[8])
              {
                LODWORD(v69) = v73;
                goto LABEL_94;
              }
            }

            if (v72 == v70)
            {
              --cf[4];
              LODWORD(v28) = v28 + 1;
            }
          }

LABEL_94:
          ++v34;
          LODWORD(v30) = v69;
          if (v34 == a3)
          {
            goto LABEL_108;
          }
        }

        LODWORD(v30) = v69;
      }

LABEL_108:
      v78 = cf[4];
      if (v30 < v78)
      {
        v78 = v30;
      }

      cf[9] = v78;
      return;
    }

    LODWORD(v30) = 0;
    v31 = 0;
    v32 = a4;
    while (1)
    {
      v39 = ~v31 + a3;
      if (v32)
      {
        v39 = v31;
      }

      v40 = v9[v39];
      if (v40 >= cf[5])
      {
        if (v40 > cf[6])
        {
          goto LABEL_108;
        }

        v41 = *(cf + 5);
        v42 = cf[8];
        v43 = v42 - 1;
        LODWORD(v44) = v28;
        if ((v42 - 33) < v28)
        {
LABEL_64:
          v44 = v44;
          v45 = v43 + 1 > v44 ? v43 + 1 : v44;
          while (v44 <= v43)
          {
            v47 = *(v41 + 4 * v44++);
            if (v47 <= v40)
            {
              v45 = v44 - 1;
              break;
            }
          }
        }

        else
        {
          while (1)
          {
            v45 = v44 + (v43 - v44) / 2;
            v46 = *(v41 + 4 * v45);
            if (v46 == v40)
            {
              break;
            }

            if (v46 > v40)
            {
              LODWORD(v44) = v45 + 1;
            }

            else
            {
              v43 = v45 - 1;
            }

            if (v44 > v43 - 32)
            {
              goto LABEL_64;
            }
          }
        }

        if (v45 < v42)
        {
          if (v45 == v28)
          {
            if (*(v41 + 4 * v28) != v40)
            {
              goto LABEL_53;
            }
          }

          else
          {
            memmove((v41 + 4 * v30), (v41 + 4 * v28), 4 * (v45 - v28));
            LODWORD(v30) = v45 - v28 + v30;
            if (*(*(cf + 5) + 4 * v45) != v40)
            {
              LODWORD(v28) = v45;
              v32 = a4;
              if (v30 >= cf[8])
              {
                v48 = __si_assert_copy_extra_332();
                v56 = v48;
                v57 = "";
                if (v48)
                {
                  v57 = v48;
                }

                __message_assert_336(v48, v49, v50, v51, v52, v53, v54, v55, "CIIndexSet.c", 1515, "(int32_t)hole < (int32_t)set->_size", v57);
                free(v56);
                if (__valid_fs(-1))
                {
                  v58 = 2989;
                }

                else
                {
                  v58 = 3072;
                }

                *v58 = -559038737;
                abort();
              }

              goto LABEL_53;
            }

            LODWORD(v28) = v45;
            v32 = a4;
          }

          --cf[4];
          LODWORD(v28) = v28 + 1;
        }
      }

LABEL_53:
      if (++v31 == a3)
      {
        goto LABEL_108;
      }
    }
  }

  v33 = cf[4];
  if ((v33 & 0x80000000) != 0)
  {
    v59 = -2;
    v60 = -2 - v33;
    v61 = cf + 8;
    v134 = *(cf + 2);
    cf[4] = -2;
    v62 = a4;
    if (v33 <= 0xFFFFFFFD)
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      while (1)
      {
        v66 = ~v65 + a3;
        if (v62)
        {
          v66 = v65;
        }

        v67 = v9[v66];
        v68 = *(&v134 + v64);
        if (v68 <= v67)
        {
          --v59;
          if (v68 == v67)
          {
            ++v64;
            v61[v63] = v67;
            cf[4] = v59;
            ++v65;
            goto LABEL_90;
          }

          v61[v63] = v67;
          ++v65;
        }

        else
        {
          ++v64;
          v61[v63] = v68;
          --v59;
        }

        cf[4] = v59;
LABEL_90:
        ++v63;
        if (v65 >= a3 || v64 >= v60)
        {
          goto LABEL_112;
        }
      }
    }

    v65 = 0;
    v64 = 0;
    LODWORD(v63) = 0;
LABEL_112:
    if (v65 >= a3)
    {
LABEL_163:
      if (v64 < v60)
      {
        memcpy(&cf[v63 + 8], &v134 + 4 * v64, 4 * (-3 - (v64 + v33)) + 4);
        cf[4] = v64 + v33 + v59 + 2;
      }

      return;
    }

    v63 = v63;
    if ((v62 & 1) == 0)
    {
      v108 = v65;
      v109 = a3 - v65;
      if (v109 <= 0xF)
      {
        goto LABEL_160;
      }

      v113 = ~v65 + a3;
      if (~v65 + a3 < 0)
      {
        goto LABEL_160;
      }

      if (HIDWORD(v113))
      {
        goto LABEL_160;
      }

      v114 = v109 & 0xFFFFFFFFFFFFFFF8;
      v108 = (v109 & 0xFFFFFFFFFFFFFFF8) + v65;
      v115 = &cf[v63 + 12];
      v116 = v109 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v117 = &v9[v113];
        v118 = vrev64q_s32(*(v117 - 3));
        v119 = vrev64q_s32(*(v117 - 7));
        v115[-1] = vextq_s8(v118, v118, 8uLL);
        *v115 = vextq_s8(v119, v119, 8uLL);
        LODWORD(v113) = v113 - 8;
        v115 += 2;
        v116 -= 8;
      }

      while (v116);
      v63 = v114 + v63;
      if (v109 != v114)
      {
LABEL_160:
        v110 = a3 - v108;
        v111 = ~v108 + a3;
        do
        {
          v61[v63++] = v9[v111--];
          --v110;
        }

        while (v110);
      }

      goto LABEL_162;
    }

    v79 = v65;
    memcpy(&cf[v63 + 8], &v9[v65], 4 * (~v65 + a3) + 4);
    v80 = a3 - v65;
    if (v80 >= 4)
    {
      v81 = v80 & 0xFFFFFFFFFFFFFFFCLL;
      v82 = 0uLL;
      v83 = v63;
      v84 = vdupq_n_s64(1uLL);
      v85 = v80 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v83 = vaddq_s64(v83, v84);
        v82 = vaddq_s64(v82, v84);
        v85 -= 4;
      }

      while (v85);
      LODWORD(v63) = vaddvq_s64(vaddq_s64(v82, v83));
      if (v80 == v81)
      {
        goto LABEL_162;
      }

      v79 = v81 + v65;
    }

    LODWORD(v63) = v63 + a3 - v79;
LABEL_162:
    v59 = v65 + v59 - a3;
    cf[4] = v59;
    goto LABEL_163;
  }

  if (a4)
  {

    CIIndexSetAddSortedIndexes_ArrayBackwards(cf, v9, a3);
    return;
  }

  v133 = &v9[a3];
  v74 = binarySearchMap(cf, *(v133 - 1));
  v75 = v74;
  v76 = cf[4];
  v77 = cf[8];
  if (v77 == v76)
  {
    v77 = cf[4];
LABEL_106:
    cf[9] = v75;
    goto LABEL_121;
  }

  v86 = cf[9];
  if (v86 != v74)
  {
    v112 = *(cf + 5);
    if (v86 >= v74)
    {
      memmove((v112 + 4 * (v77 - v76 + v74)), (v112 + 4 * v74), 4 * (v86 - v74));
      v77 = cf[8];
      v76 = cf[4];
    }

    else
    {
      memmove((v112 + 4 * v86), (v112 + 4 * (v86 + v77 - v76)), 4 * (v74 - (v86 + v77 - v76)));
      v77 = cf[8];
      v76 = cf[4];
      v75 = v75 - v77 + v76;
    }

    goto LABEL_106;
  }

LABEL_121:
  v88 = &v9[a3];
  v87 = a3;
  v89 = v77 - v76 + v75;
  if (v76 < 1 || v76 + a3 <= ((__clz(v76) ^ 0x1F) * a3))
  {
    v103 = 0;
    while (1)
    {
      v105 = v133[~v103];
      if (v105 <= cf[6] && v105 >= cf[5])
      {
        if (v89 >= cf[8])
        {
          goto LABEL_147;
        }

        v89 = v89;
        while (1)
        {
          v106 = *(cf + 5);
          v107 = *(v106 + 4 * v89);
          if (v107 <= v105)
          {
            break;
          }

          ++v89;
          v104 = v75 + 1;
          *(v106 + 4 * v75++) = v107;
          if (v89 >= cf[8])
          {
            goto LABEL_148;
          }
        }

        if (v107 == v105)
        {
          LODWORD(v89) = v89 + 1;
          *(v106 + 4 * v75++) = v105;
        }

        else
        {
LABEL_147:
          v104 = v75;
LABEL_148:
          v75 = v104 + 1;
          *(*(cf + 5) + 4 * v104) = v105;
          ++cf[4];
        }
      }

      if (++v103 == a3)
      {
        goto LABEL_175;
      }
    }
  }

  v90 = 0;
  v91 = a3 - 2;
  while (1)
  {
    v93 = v88[~v90];
    if (v93 > cf[6] || v93 < cf[5])
    {
      goto LABEL_126;
    }

    v94 = *(cf + 5);
    v95 = cf[8];
    v96 = v95 - 1;
    LODWORD(v97) = v89;
    if ((v95 - 33) < v89)
    {
LABEL_135:
      v97 = v97;
      v92 = v96 + 1 > v97 ? v96 + 1 : v97;
      while (v97 <= v96)
      {
        v99 = *(v94 + 4 * v97++);
        if (v99 <= v93)
        {
          v92 = v97 - 1;
          break;
        }
      }
    }

    else
    {
      while (1)
      {
        v92 = (v97 + (v96 - v97) / 2);
        v98 = *(v94 + 4 * v92);
        if (v98 == v93)
        {
          break;
        }

        if (v98 > v93)
        {
          LODWORD(v97) = v92 + 1;
        }

        else
        {
          v96 = v92 - 1;
        }

        if (v97 > v96 - 32)
        {
          goto LABEL_135;
        }
      }
    }

    if (v92 < v95 && v93 == *(v94 + 4 * v92))
    {
      goto LABEL_126;
    }

    ++cf[4];
    v100 = v92 - v89;
    if (v92 != v89)
    {
      break;
    }

    v92 = v89;
LABEL_125:
    *(v94 + 4 * v75++) = v93;
    v89 = v92;
LABEL_126:
    ++v90;
    --v7;
    --v91;
    if (v90 == v87)
    {
      goto LABEL_175;
    }
  }

  v101 = (v94 + 4 * v75);
  v102 = (v94 + 4 * v89);
  if (v92 != v95)
  {
    memmove(v101, v102, 4 * (v92 - v89));
    v88 = &v9[a3];
    v87 = a3;
    v75 += v100;
    v94 = *(cf + 5);
    goto LABEL_125;
  }

  v120 = v95 - v89;
  memmove(v101, v102, 4 * (v95 - v89));
  v121 = v120 + v75;
  v75 += v120 + 1;
  *(*(cf + 5) + 4 * v121) = v93;
  if (v90 + 1 < a3)
  {
    do
    {
      v122 = v9[v91];
      if (v122 <= cf[6] && v122 >= cf[5])
      {
        *(*(cf + 5) + 4 * v75++) = v122;
        ++cf[4];
      }

      --v91;
      --v7;
    }

    while (v7);
  }

LABEL_175:
  cf[9] = v75;
}

uint64_t inner_performSearch(SISearchCtx_METADATA *a1, PartialQueryResults *a2, __n128 a3)
{
  MEMORY[0x1EEE9AC00](a3);
  v191 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 13);
  if (*(v5 + 96))
  {
    goto LABEL_5;
  }

  v6 = v4;
  v7 = v3;
  do
  {
    v8 = v5;
    v5 = *(v5 + 80);
  }

  while (v5);
  if (*(*(v8 + 8) + 12) == 1)
  {
LABEL_5:
    v9 = *__error();
    v10 = _SILogForLogForCategory(1);
    v11 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v10, v11))
    {
      LOWORD(v183[0]) = 0;
      _os_log_impl(&dword_1C278D000, v10, v11, "query invalidated", v183, 2u);
    }

    v12 = 0;
    *__error() = v9;
    return v12;
  }

  v13 = *(v3 + 103);
  if (!v13)
  {
    if (*(v3 + 85) || *(v3 + 76) < *(v3 + 75))
    {
      v15 = *(v3 + 3);
      if (*(v3 + 69) != *(v15 + 1400) || (v16 = *(v3 + 73)) != 0 && v16 != *(v15 + 1384) || (v17 = *(v3 + 72)) != 0 && v17 != *(v15 + 1392))
      {
        v18 = *__error();
        v19 = _SILogForLogForCategory(1);
        v20 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v19, v20))
        {
          LOWORD(v183[0]) = 0;
          _os_log_impl(&dword_1C278D000, v19, v20, "merge completed; restart query", v183, 2u);
        }

        *__error() = v18;
        cleanUp(v7);
        return gatherIndexInfo(v7, 0, 1);
      }

      v71 = _performSearch(v3, v4);
      v72 = *__error();
      v73 = _SILogForLogForCategory(1);
      v74 = 2 * (dword_1EBF46AD0 < 4);
      v75 = os_log_type_enabled(v73, v74);
      if (v71 != -1)
      {
        if (v71 == 1)
        {
          if (v75)
          {
            LOWORD(v183[0]) = 0;
            _os_log_impl(&dword_1C278D000, v73, v74, "inner_performSearch: continue", v183, 2u);
          }

          *__error() = v72;
          return 1;
        }

        else
        {
          if (v75)
          {
            LOWORD(v183[0]) = 0;
            _os_log_impl(&dword_1C278D000, v73, v74, "inner_performSearch: emit", v183, 2u);
          }

          *__error() = v72;
          emitResults(v7, v6, 0);
          MEMORY[0x1EEE9AC00](v106);
          v108 = &v162 - ((v107 + 15) & 0xFFFFFFFF0);
          bzero(v108, v107);
          v109 = *(v7 + 208);
          if (v109)
          {
            v110 = (*(v7 + 105) + 32);
            v111 = v108;
            do
            {
              *v111++ = *v110;
              *v110 = 0;
              v110 += 6;
              --v109;
            }

            while (v109);
          }

          SISearchCtx_METADATA::cleanUp(v7, 0);
          *&v183[0] = v7;
          *(&v183[0] + 1) = v108;
          v112 = CICleanUpThreadLoc();
          v113 = CICleanUpPush(v112, cleanupDocSets, v183);
          v12 = gatherIndexInfo(v7, v108, 1);
          CICleanUpClearItem(v112, v113);
          cleanupDocSets(v183);
        }

        return v12;
      }

      if (v75)
      {
        LOWORD(v183[0]) = 0;
        _os_log_impl(&dword_1C278D000, v73, v74, "_performSearch returned -1", v183, 2u);
      }

      *__error() = v72;
      cleanUp(v7);
    }

    return 0;
  }

  v173[4] = 0;
  v173[5] = 0;
  v14 = *(v3 + 2);
  v173[1] = *(v3 + 3);
  v173[2] = v3;
  v173[3] = v14;
  v173[0] = &unk_1F427CB68;
  *(v13 + 24) = v173;
  if (dword_1EBF46AD0 >= 5)
  {
    v129 = *__error();
    v130 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v183[0]) = 136315138;
      *(v183 + 4) = "_performSearch_degenerate";
      _os_log_impl(&dword_1C278D000, v130, OS_LOG_TYPE_DEFAULT, "%s", v183, 0xCu);
    }

    *__error() = v129;
  }

  if (*(v7 + 40) == 4)
  {
    v170 = 0;
  }

  else
  {
    v21 = *(v7 + 13);
    v22 = v21;
    do
    {
      v23 = v22;
      v22 = *(v22 + 80);
    }

    while (v22);
    v24 = *(*(v23 + 8) + 80);
    v25 = *(v21 + 80);
    if (v25)
    {
      v26 = 0;
      do
      {
        v26 ^= *(v21 + 104) == 0;
        v21 = v25;
        v25 = *(v25 + 80);
      }

      while (v25);
      if (v26)
      {
        v27 = 3553;
      }

      else
      {
        v27 = 2781;
      }
    }

    else
    {
      v27 = 2781;
    }

    v170 = PartialQueryResults::start(v6, v24, v27, 0x400uLL, 0);
  }

  bzero(v183, 0x2000uLL);
  bzero(v182, 0x400uLL);
  v29 = *(v7 + 103);
  if (*v29 != 3506)
  {
    v156 = __si_assert_copy_extra_332();
    v157 = v156;
    if (v156)
    {
      v158 = v156;
    }

    else
    {
      v158 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 571, v158);
    free(v157);
    goto LABEL_197;
  }

  v30 = *(v29 + 16);
  v171 = v7;
  if (!v30)
  {
    *(v29 + 1996) = 0;
    goto LABEL_43;
  }

  if (!*(v29 + 2000))
  {
    goto LABEL_43;
  }

  if (*(v29 + 1996) >= 1)
  {
    v31 = 0;
    do
    {
      free(*(v29 + 32 + 8 * v31++));
    }

    while (v31 < *(v29 + 1996));
  }

  *(v29 + 1996) = 0;
  if (*(v29 + 2008) == -1)
  {
    goto LABEL_43;
  }

  v175 = 0;
  v176 = 0;
  v32 = CICleanUpThreadLocGet(&v175);
  v33 = _db_write_lock(v30 + 584);
  if (v33)
  {
    v159 = v33;
    v160 = *__error();
    v161 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      *v184 = 136315650;
      *&v184[4] = "db2_read_query";
      *&v184[12] = 1024;
      *&v184[14] = 146;
      *&v184[18] = 1024;
      *&v184[20] = v159;
      _os_log_error_impl(&dword_1C278D000, v161, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", v184, 0x18u);
    }

    *__error() = v160;
    sdb2_die(v30, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 146);
  }

  LODWORD(v172) = v32;
  if (v32)
  {
    v34 = CIOnThreadCleanUpPush(v175, db_write_unlock, v30 + 584);
  }

  else
  {
    v34 = -1;
  }

  v46 = *(v29 + 2040);
  v47 = (v46 + *(v29 + 2024));
  v48 = v46[2];
  v49 = v46 + v48;
  if (v47 + 1 < (v46 + v48) && v47 + *v47 <= v49)
  {
    v55 = *v46;
    goto LABEL_137;
  }

  v168 = v34;
  v50 = v46[3];
  while (1)
  {
    if ((v50 & 4) != 0)
    {
      v51 = 4;
    }

    else
    {
      v51 = 1;
    }

    v52 = v46[v51];
    v53 = *(v29 + 2016) + v52;
    *(v29 + 2016) = v53;
    v54 = fd_pread(*(*(v29 + 16) + 848), v46, v52, v53);
    if (!v54)
    {
      if (db_write_unlock(v30 + 584))
      {
        sdb2_die(v30, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 160);
      }

      if (v172)
      {
        v93 = v175;
        CIOnThreadCleanUpClearItem(v175, v168);
        v94 = &threadData[9 * v93];
        v95 = *(v94 + 14);
        v59 = v94 + 7;
        v60 = v95;
        if ((&v168->isa + 1) == v95)
        {
          goto LABEL_134;
        }
      }

      goto LABEL_43;
    }

    if (v54 != v52)
    {
      *(v29 + 2008) = -1;
    }

    if (db2_page_uncompress_swap(v30, *(v29 + 2040), &v176, 0))
    {
      *(v29 + 2008) = -1;
    }

    v46 = *(v29 + 2040);
    if (v176)
    {
      free(*(v29 + 2040));
      v46 = v176;
      *(v29 + 2040) = v176;
    }

    v55 = *v46;
    if (*v46 != 1684172850)
    {
      goto LABEL_136;
    }

    v50 = v46[3];
    if ((v50 & 0xF0) == 0)
    {
      break;
    }

    if (*(v29 + 2008) == -1)
    {
      if (db_write_unlock(v30 + 584))
      {
        sdb2_die(v30, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 192);
      }

      v56 = v172;
LABEL_79:
      if (v56)
      {
        v57 = v175;
        CIOnThreadCleanUpClearItem(v175, v168);
        v58 = &threadData[9 * v57];
        v61 = *(v58 + 14);
        v59 = v58 + 7;
        v60 = v61;
        if ((&v168->isa + 1) == v61)
        {
LABEL_134:
          *v59 = v60 - 1;
        }
      }

LABEL_43:
      v35 = *(v7 + 103);
      v36 = *(v35 + 1996);
      if (!v36)
      {
        v12 = 0;
        goto LABEL_148;
      }

      goto LABEL_44;
    }
  }

  v55 = 1684172850;
LABEL_136:
  *(v29 + 2024) = 20;
  v47 = v46 + 5;
  v48 = v46[2];
  v49 = v46 + v48;
  v34 = v168;
LABEL_137:
  if (v55 != 1684172850 || v48 > v46[1] || (v46[3] & 1) == 0)
  {
    v96 = *__error();
    v97 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v123 = *(v29 + 2016);
      v124 = *(*(v29 + 16) + 44);
      v125 = *(v29 + 2040);
      v126 = *v125;
      v127 = v125[1];
      v128 = v125[2];
      LODWORD(v125) = v125[3];
      *v184 = 136317186;
      *&v184[4] = "db2_read_query";
      *&v184[12] = 1024;
      *&v184[14] = 210;
      *&v184[18] = 2080;
      *&v184[20] = v30 + 324;
      *&v184[28] = 2048;
      *&v184[30] = v123;
      v185 = 1024;
      WORD2(v186[0]) = 1024;
      *(v186 + 6) = v126;
      WORD1(v186[1]) = 1024;
      LODWORD(v186[0]) = v124;
      HIDWORD(v186[1]) = v127;
      LOWORD(v186[2]) = 1024;
      *(&v186[2] + 2) = v128;
      HIWORD(v186[2]) = 1024;
      LODWORD(v187) = v125;
      _os_log_error_impl(&dword_1C278D000, v97, OS_LOG_TYPE_ERROR, "%s:%d: %s : read_query: page at offset 0x%llx not valid (skipping %d)! (0x%x %d %d 0x%x)\n", v184, 0x44u);
    }

    *__error() = v96;
    *(*(v29 + 16) + 4) |= 0x40u;
    *&v177 = MEMORY[0x1E69E9820];
    *(&v177 + 1) = 0x40000000;
    *&v178 = __db2_read_query_block_invoke;
    *(&v178 + 1) = &__block_descriptor_tmp_14555;
    *&v179 = v30;
    *(&v179 + 1) = v29;
    analytics_send_event_lazy();
    v98 = *(*(v29 + 16) + 44);
    v99 = *(v29 + 2040);
    v99[1] = v98;
    v99[2] = v98;
    v99[4] = v98;
    *(v29 + 2024) = *(*(v29 + 16) + 44);
    if (db_write_unlock(v30 + 584))
    {
      sdb2_die(v30, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 241);
    }

    if (v172)
    {
      v100 = v175;
      CIOnThreadCleanUpClearItem(v175, v34);
      v101 = &threadData[9 * v100];
      v104 = *(v101 + 14);
      v102 = v101 + 7;
      v103 = v104;
      if (v34 + 1 == v104)
      {
        goto LABEL_145;
      }
    }

    goto LABEL_146;
  }

  v168 = v34;
  if (v47 + *v47 <= v49 && *(v29 + 1996) <= 244 && v47 < v49)
  {
    do
    {
      v119 = v6;
      v174 = 0;
      _inflateDBO(v30, v47, &v174, 0, 0, 0);
      v121 = v174;
      *v184 = v174;
      *&v184[8] = 0;
      *&v184[16] = 0;
      if ((*(v174 + 40) & 5) != 0)
      {
        free(v174);
      }

      else if (db_eval_obj_with_options(v120))
      {
        v122 = *(v29 + 1996);
        *(v29 + 1996) = v122 + 1;
        *(v29 + 32 + 8 * v122) = v121;
      }

      else
      {
        free(v121);
        ++*(v29 + 1992);
      }

      if (*v47)
      {
        v47 = (v47 + *v47 + 4);
      }

      else
      {
        v47 = v49;
      }

      *(v29 + 2024) = v47 - *(v29 + 2040);
      v6 = v119;
    }

    while ((v47 + 1) < v49 && v47 + *v47 + 4 <= v49 && *(v29 + 1996) < 245);
  }

  v114 = *(v29 + 2008);
  v115 = db_write_unlock(v30 + 584);
  if (v114 == -1)
  {
    v7 = v171;
    v56 = v172;
    if (v115)
    {
      sdb2_die(v30, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 277);
    }

    goto LABEL_79;
  }

  v7 = v171;
  if (v115)
  {
    sdb2_die(v30, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 281);
  }

  if (v172)
  {
    v116 = v175;
    CIOnThreadCleanUpClearItem(v175, v168);
    v117 = &threadData[9 * v116];
    v118 = *(v117 + 14);
    v102 = v117 + 7;
    v103 = v118;
    if ((&v168->isa + 1) == v118)
    {
LABEL_145:
      *v102 = v103 - 1;
    }
  }

LABEL_146:
  v35 = *(v7 + 103);
  v36 = *(v35 + 1996);
  if (!v36)
  {
LABEL_147:
    v12 = 1;
    goto LABEL_148;
  }

LABEL_44:
  for (i = 0; v36 != i; ++i)
  {
    *(v183 + i) = **(v35 + 8 * i + 32);
  }

  if (!i)
  {
    goto LABEL_147;
  }

  if (*(v7 + 40) != 4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v43 = *(v6 + 29);
    v44 = *(v7 + 3);
    v169 = v6;
    if (v43)
    {
      if (*v6 == 1)
      {
        if (!*(v6 + 13))
        {
          v45 = *(v6 + 16);
          if (v45)
          {
            *v184 = 0;
            SIFlattenArrayToCStringVector(v45, v6 + 13, v184, &v177);
          }
        }
      }

      else if (!*(v6 + 12))
      {
        v76 = *(v6 + 15);
        if (v76)
        {
          SIFlattenArrayToCStringVector(v76, v6 + 12, v6 + 30, v6 + 29);
          if (!*(v6 + 12))
          {
            v145 = __si_assert_copy_extra_332();
            v153 = v145;
            v154 = "";
            if (v145)
            {
              v154 = v145;
            }

            __message_assert_336(v145, v146, v147, v148, v149, v150, v151, v152, "SISearchCtx.h", 998, "fAttributeVector", v154);
            free(v153);
            if (__valid_fs(-1))
            {
              v155 = 2989;
            }

            else
            {
              v155 = 3072;
            }

            *v155 = -559038737;
            abort();
          }
        }
      }

      LODWORD(v168) = *(v6 + 29) > 0;
    }

    else
    {
      LODWORD(v168) = 0;
    }

    if (i)
    {
      v77 = (*(v171 + 103) + 32);
      v78 = *(v171 + 19);
      *&v172 = *(v171 + 2);
      v79 = *(v171 + 29);
      v166 = *(v171 + 28);
      v167 = v78;
      v165 = v79;
      i = i;
      v80 = v183;
      v81 = v182;
      *&v41 = 134217984;
      v164 = v41;
      do
      {
        if (*v81++)
        {
          if (dword_1EBF46AD0 >= 5)
          {
            v163 = *__error();
            v83 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              v84 = *v80;
              *v184 = v164;
              *&v184[4] = v84;
              _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "No permission for %llx", v184, 0xCu);
            }

            *__error() = v163;
          }
        }

        else
        {
          if (v168)
          {
            v85 = *v77;
          }

          else
          {
            v85 = 0;
          }

          bzero(&v184[8], 0x470uLL);
          v86 = *v80;
          *&v184[16] = v44;
          *&v184[24] = v172;
          *&v186[1] = 0u;
          v187 = 0u;
          v188 = 0;
          if (v44)
          {
            v87 = *(v44 + 6586) >> 7;
          }

          else
          {
            LOBYTE(v87) = 1;
          }

          v189 = v87;
          v190 = v86;
          *v184 = &unk_1F42826E0;
          v186[0] = v85;
          if (v171)
          {
            v88 = *(v171 + 1);
          }

          else
          {
            v88 = 0;
          }

          *&v184[8] = 8;
          v179 = xmmword_1C2C00670;
          v180 = unk_1C2C00680;
          v181 = xmmword_1C2C00690;
          v29 &= 0xFFFFFF0000000000;
          v177 = ZERO_RANKING_BITS;
          v178 = unk_1C2C00660;
          writeDBOToPlistBytes(v44, v170, v169, v167, v184, v172, v166, v165, 0, &v177, v29, SBYTE4(v29), &ZERO_VECTOR_DISTANCES, 0, 0, v171, v88, 0);
          if (v186[0] == v85)
          {
            v186[0] = 0;
          }

          CatInfoGotten_OID::~CatInfoGotten_OID(v184);
        }

        ++v77;
        ++v80;
        --i;
      }

      while (i);
    }

    v89 = *__error();
    v90 = _SILogForLogForCategory(1);
    v91 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v90, v91))
    {
      v92 = CFAbsoluteTimeGetCurrent();
      *v184 = 134217984;
      *&v184[4] = v92 - Current;
      _os_log_impl(&dword_1C278D000, v90, v91, "Encoded results in %f seconds!", v184, 0xCu);
    }

    *__error() = v89;
    v12 = 1;
    v7 = v171;
    v6 = v169;
    goto LABEL_148;
  }

  v38 = *(v7 + 3);
  v39 = *(v6 + 29);
  if (*v6 != 1)
  {
    if (!v39)
    {
      goto LABEL_86;
    }

    if (*(v6 + 12))
    {
      goto LABEL_86;
    }

    v62 = *(v6 + 15);
    if (!v62)
    {
      goto LABEL_86;
    }

    SIFlattenArrayToCStringVector(v62, v6 + 12, v6 + 30, v6 + 29);
    if (*(v6 + 12))
    {
      goto LABEL_86;
    }

    v134 = __si_assert_copy_extra_332();
    v142 = v134;
    v143 = "";
    if (v134)
    {
      v143 = v134;
    }

    __message_assert_336(v134, v135, v136, v137, v138, v139, v140, v141, "SISearchCtx.h", 998, "fAttributeVector", v143);
    free(v142);
    if (!__valid_fs(-1))
    {
      v144 = 3072;
LABEL_199:
      *v144 = -559038737;
      abort();
    }

LABEL_197:
    v144 = 2989;
    goto LABEL_199;
  }

  if (v39 && !*(v6 + 13))
  {
    v40 = *(v6 + 16);
    if (v40)
    {
      *v184 = 0;
      SIFlattenArrayToCStringVector(v40, v6 + 13, v184, &v177);
    }

LABEL_86:
    v39 = *(v6 + 29);
    v35 = *(v7 + 103);
  }

  v63 = v6;
  v64 = v7;
  v65 = (v35 + 32);
  v66 = *(v64 + 19);
  i = i;
  v67 = v183;
  v68 = v182;
  *&v28 = 134217984;
  v172 = v28;
  do
  {
    if (*v68++)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        LODWORD(v170) = *__error();
        v168 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          v70 = *v67;
          *v184 = v172;
          *&v184[4] = v70;
          _os_log_impl(&dword_1C278D000, v168, OS_LOG_TYPE_DEFAULT, "No permission for %llx", v184, 0xCu);
        }

        *__error() = v170;
      }
    }

    else if (v39 >= 1)
    {
      collectAttributesFromDBO(v38, *v65, v39, v63, v66);
    }

    ++v67;
    ++v65;
    --i;
  }

  while (i);
  v12 = 1;
  v7 = v171;
  v6 = v63;
LABEL_148:
  if (*(v7 + 40) != 4)
  {
    if (*(v6 + 186))
    {
      _MDPlistBytesEndArray();
      _MDPlistBytesEndPlist();
    }

    if (*(v6 + 58))
    {
      _MDStoreOIDArrayEndBulkAdd();
      _MDStoreOIDArrayEndSequence();
      *(v6 + 443) = 0;
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v131 = *__error();
      v132 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        v133 = PartialQueryResults::totalcount(v6);
        *v184 = 134218240;
        *&v184[4] = v7;
        *&v184[12] = 2048;
        *&v184[14] = v133;
        _os_log_impl(&dword_1C278D000, v132, OS_LOG_TYPE_DEFAULT, "%p found %ld results\n", v184, 0x16u);
      }

      *__error() = v131;
    }
  }

  *(*(v7 + 103) + 24) = 0;
  QueryFunctionCallbackContext_METADATA::~QueryFunctionCallbackContext_METADATA(v173);
  return v12;
}