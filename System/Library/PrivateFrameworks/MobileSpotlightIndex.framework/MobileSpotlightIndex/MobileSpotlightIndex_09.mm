CFTypeID initializeEnumberatorForRangeLocked(CFTypeID result, _DWORD *cf, unsigned int a3, unsigned int a4)
{
  v5 = result;
  if (cf[6] >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = cf[6];
  }

  v7 = cf[4];
  if (cf[5] <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = cf[5];
  }

  if (v7 <= -10)
  {
    *(result + 24) = 2;
    *result = v6;
    *(result + 4) = v8;
    *(result + 16) = cf;
LABEL_9:
    *(v5 + 8) = 0;
    return result;
  }

  if (v7 > -2)
  {
    result = CFGetTypeID(cf);
    if (result == __kCIIndexSetInvertedTypeID)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    *(v5 + 24) = v9;
  }

  else
  {
    *(result + 24) = 0;
  }

  v10 = cf[4];
  *v5 = v6;
  *(v5 + 4) = v8;
  *(v5 + 16) = cf;
  if (v10 < 1)
  {
    if ((v10 & 0x80000000) == 0 || v10 <= 0xFFFFFFF6)
    {
      goto LABEL_9;
    }

    if (v10 <= 0xFFFFFFFD)
    {
      if (v6 >= cf[8])
      {
        v11 = 0;
        goto LABEL_19;
      }

      if (v10 != -3)
      {
        if (v6 >= cf[9])
        {
          v11 = 1;
          goto LABEL_19;
        }

        if (v10 != -4)
        {
          if (v6 >= cf[10])
          {
            v11 = 2;
            goto LABEL_19;
          }

          if (v10 != -5)
          {
            if (v6 >= cf[11])
            {
              v11 = 3;
              goto LABEL_19;
            }

            if (v10 != -6)
            {
              if (v6 >= cf[12])
              {
                v11 = 4;
                goto LABEL_19;
              }

              if (v10 != -7)
              {
                if (v6 >= cf[13])
                {
                  v11 = 5;
                  goto LABEL_19;
                }

                if (v10 != -8 && v6 >= cf[14])
                {
                  v11 = 6;
                  goto LABEL_19;
                }
              }
            }
          }
        }
      }
    }

    v11 = -2 - v10;
  }

  else
  {
    result = binarySearchMap(cf, v6);
    *(v5 + 8) = result;
    if (result != cf[9])
    {
      return result;
    }

    v11 = cf[8] + result - cf[4];
  }

LABEL_19:
  *(v5 + 8) = v11;
  return result;
}

void si_querypipe_send_matchinfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a1;
    do
    {
      v5 = v4;
      v4 = *(v4 + 80);
    }

    while (v4);
    v6 = *(v5 + 8);
    v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
    v7[1] = *(a1 + 48);
    *(v7 + 1) = si_querypipe_copy_jobid(a1);
    *(v7 + 4) = a2;
    *v7 = 10;
    if (!si_resultqueue_enqueue(v6, v7))
    {

      SIResultBatchFree(v7);
    }
  }
}

void PartialQueryResults::~PartialQueryResults(PartialQueryResults *this)
{
  md_deadline_once_cancel();
  SICompletionModelRelease(*(this + 41));
  SIPommesSuggestionsModelRelease(*(this + 53));
  if (*(this + 49) && *(this + 45) >= 1)
  {
    v2 = 0;
    do
    {
      free(*(*(this + 49) + 8 * v2++));
    }

    while (*(this + 45) > v2);
  }

  free(*(this + 50));
  *(this + 46) = 0;
  free(*(this + 47));
  free(*(this + 48));
  free(*(this + 49));
  *(this + 45) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = 0;
  if (*(this + 17) && *(this + 29) >= 1)
  {
    v3 = 0;
    do
    {
      free(*(*(this + 17) + 8 * v3++));
    }

    while (*(this + 29) > v3);
  }

  free(*(this + 12));
  free(*(this + 34));
  free(*(this + 35));
  free(*(this + 36));
  free(*(this + 17));
  free(*(this + 13));
  free(*(this + 24));
  free(*(this + 26));
  free(*(this + 25));
  free(*(this + 27));
  free(*(this + 28));
  free(*(this + 18));
  free(*(this + 20));
  free(*(this + 22));
  free(*(this + 23));
  free(*(this + 37));
  if (*(this + 88) == 1)
  {
    *(this + 88) = 0;
    free(*(this + 4));
    free(*(this + 5));
    free(*(this + 6));
    free(*(this + 7));
    free(*(this + 8));
    free(*(this + 9));
    free(*(this + 10));
  }

  *(this + 29) = 0;
  *(this + 17) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  if (*(this + 884))
  {
    v4 = 186;
    v5 = this;
    do
    {
      v7 = *(v5 + 186);
      if (v7)
      {
        CFRelease(v7);
      }

      *(v5 + 186) = 0;
      v8 = *(v5 + 58);
      if (v8)
      {
        CFRelease(v8);
      }

      *(v5 + 58) = 0;
      v6 = v4 - 185;
      ++v4;
      v5 = (v5 + 8);
    }

    while (v6 < *(this + 884));
  }

  v9 = *(this + 57);
  if (v9)
  {
    CFRelease(v9);
  }

  *(this + 57) = 0;
  v10 = *(this + 14);
  if (v10)
  {
    CFRelease(v10);
  }

  *(this + 14) = 0;
  v11 = *(this + 31);
  if (v11)
  {
    CFRelease(v11);
  }

  *(this + 31) = 0;
  v12 = *(this + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  *(this + 56) = 0;
  v13 = *(this + 55);
  if (v13)
  {
    CFRelease(v13);
  }

  *(this + 55) = 0;
  md_deadline_once_release();
}

BOOL PayloadIterate(unsigned __int8 *a1, uint64_t a2)
{
  v167 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = *(a1 + 4);
    v6 = *(a1 + 5);
  }

  else
  {
    v5 = 0.0;
    v6 = 0;
  }

  v149 = v6;
  v7 = *a2;
  v8 = *(a2 + 48);
  v164 = 1;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sIteratorExceptionCallbacks, a1, 0, add_explicit + 1);
  LODWORD(v152) = HIDWORD(v10);
  LODWORD(v165) = v10;
  LODWORD(v151) = v11;
  v163 = v12;
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v162 = v165;
  v161 = v152;
  v160 = v151;
  v159 = v163;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *&buf[4] = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf[4], 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v159);
    dropThreadId(v162, 1, add_explicit + 1);
    CICleanUpReset(v162, v160);
    goto LABEL_31;
  }

  v150 = v4;
  v17 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v18 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v17 + 1);
  *buf = HIDWORD(v18);
  *&buf[4] = v18;
  v157 = __PAIR64__(v19, v20);
  v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  v22 = *(v21 + 312);
  v23 = *(v21 + 224);
  if (v23)
  {
    v23(*(v21 + 288));
  }

  v156 = *&buf[4];
  v155 = *buf;
  v154 = v157;
  if (!_setjmp(v21))
  {
    if ((a1[81] & 1) == 0)
    {
      if (*(v8 + 24) >> 1 >= *(*(a2 + 48) + 32))
      {
        v24 = *(v8 + 24) >> 1;
      }

      else
      {
        v24 = 0;
      }

      *(a1 + 3) = v24;
      a1[81] = 1;
      if (!v24)
      {
        if (a1[80])
        {
          *(a1 + 28) = 0;
          ++*(a1 + 54);
          v25 = *(a1 + 24);
          *(a1 + 25) = 0;
          *(a1 + 26) = v25;
          *(a1 + 24) = 0;
          goto LABEL_25;
        }

        v24 = 0;
      }

      oqsplit((a1 + 160), v24);
    }

LABEL_25:
    v164 = 0;
    v26 = threadData[9 * v156 + 1] + 320 * v155;
    *(v26 + 312) = v22;
    v27 = *(v26 + 232);
    if (v27)
    {
      v27(*(v26 + 288));
    }

    dropThreadId(v156, 0, v17 + 1);
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v153 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v153, 2u);
  }

  *(v21 + 312) = v22;
  CIOnThreadCleanUpReset(v154);
  dropThreadId(v156, 1, v17 + 1);
  CICleanUpReset(v156, HIDWORD(v154));
LABEL_28:
  v28 = threadData[9 * v162 + 1] + 320 * v161;
  *(v28 + 312) = v14;
  v29 = *(v28 + 232);
  v4 = v150;
  if (v29)
  {
    v29(*(v28 + 288));
  }

  dropThreadId(v162, 0, add_explicit + 1);
LABEL_31:
  if (v164 == 1)
  {
    result = 0;
    a1[64] = 1;
    return result;
  }

  v31 = *(a1 + 1);
  if (!v31)
  {
    v43 = 0;
    v44 = 0xBFFFFFFFFFFFFFFFLL;
    goto LABEL_137;
  }

  v32 = v7;
  v33 = v31 & 0x3FFFFFFFFFFFFFFFLL;
  v34 = *(a2 + 16);
  if ((v31 & 0x3FFFFFFFFFFFFFFFuLL) >= v34)
  {
    v35 = *(a2 + 56) + v34;
    if (v35 > v33 && v33 + 30 <= v35)
    {
      ++*(a2 + 64);
      v36 = v32;
      goto LABEL_58;
    }
  }

  if (*(a2 + 8) == 1)
  {
    v37 = MEMORY[0x1E69E9AC8];
    v38 = v33 & -*MEMORY[0x1E69E9AC8];
    v39 = *(v8 + 24);
    v40 = *(a2 + 56);
    v41 = v40;
    if (v39 <= v40)
    {
      if (v40 >= v38)
      {
        ++*(a2 + 64);
        v36 = *a2;
        goto LABEL_58;
      }

      if (v40)
      {
        munmap(*a2, v40);
      }

      *(a2 + 56) = 0x10000;
      v32 = malloc_type_malloc(0x10000uLL, 0xD6CB982DuLL);
      *a2 = v32;
      *(a2 + 8) = 0;
      *(a2 + 16) = -1;
      goto LABEL_57;
    }

    v42 = MEMORY[0x1E69E9AB8];
    if ((((*MEMORY[0x1E69E9AB8] + v39) & ~*MEMORY[0x1E69E9AB8]) + *MEMORY[0x1E69E9AC8]) >= v38)
    {
      *(a2 + 16) = 0;
      munmap(*a2, v40);
      v45 = ((*v42 + *(v8 + 24)) & ~*v42) + *v37;
      *(a2 + 56) = v45;
      v46 = mmap(0, v45, 1, 1, *(v8 + 4496), 0);
      *a2 = v46;
      if (v46 == -1)
      {
        goto LABEL_56;
      }

      if (mmap(&v46[*(a2 + 56) - *v37], *v37, 1, 4114, -83886080, 0) != -1)
      {
        v36 = *a2;
        v32 = *a2;
        if (*(a2 + 8))
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v47 = *__error();
      v48 = _SILogForLogForCategory(10);
      v49 = dword_1EBF46AF4 < 3;
      if (os_log_type_enabled(v48, (dword_1EBF46AF4 < 3)))
      {
        v50 = *__error();
        LODWORD(v165) = 67109120;
        DWORD1(v165) = v50;
        _os_log_impl(&dword_1C278D000, v48, v49, "*warn* Failed to allocated guard page error %d", &v165, 8u);
      }

      *__error() = v47;
      v41 = *(a2 + 56);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    else if (!v40)
    {
LABEL_56:
      *(a2 + 56) = 0x10000;
      v32 = malloc_type_malloc(0x10000uLL, 0xD6CB982DuLL);
      *a2 = v32;
      *(a2 + 8) = 0;
      goto LABEL_57;
    }

    munmap(*a2, v41);
    goto LABEL_56;
  }

LABEL_57:
  v36 = v32;
  *(a2 + 16) = v31 & 0x3FFFFFFFFFFFF000;
  v51 = fd_pread(*(v8 + 4488), v32, *(a2 + 56), v31 & 0x3FFFFFFFFFFFF000);
  *(a2 + 64) = 0;
  if (v51 == -1)
  {
    return 0;
  }

LABEL_58:
  v52 = v36;
  v53 = v31 & 0x4000000000000000;
  v54 = v31 & 0x4000000000000000;
  v152 = v33 - *(a2 + 16);
  v55 = 0;
  v56 = 0;
  v57 = v152;
  do
  {
    v58 = v57;
    v59 = v56;
    v60 = v57 + 1;
    v61 = ((v36[v57] & 0x7F) << v56) | v55;
    if ((v36[v57] & 0x80) == 0)
    {
      break;
    }

    v56 += 7;
    ++v57;
    v55 = v61;
  }

  while (v59 != 63);
  v152 = v60;
  v146 = v33;
  v147 = v53;
  if ((v61 & 1) == 0)
  {
    DWORD2(v165) = 0;
    *&v165 = 0;
    v62 = unpackPosting(v36, &v152, &v165);
    if (v62)
    {
      if (*(&v165 + 4))
      {
        handleUpdate(a1, *(&v165 + 4), v62, v4 | (LODWORD(v5) << 32), v149);
      }

LABEL_90:
      v82 = *(a1 + 1);
      if ((v82 & 0x3FFFFFFFFFFFFFFFLL) != v33)
      {
        v83 = __si_assert_copy_extra(0);
        v84 = v83;
        v85 = "";
        if (v83)
        {
          v85 = v83;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 760, "((((iter->ptr.has_meta?iter->ptr.with_meta.offset:iter->ptr.just_offset) & 0x3FFFFFFFFFFFFFFF)))==next", v85);
        goto LABEL_179;
      }

      goto LABEL_108;
    }

    if (*(a1 + 17))
    {
      v64 = *(&v165 + 4);
      v65 = *(a1 + 14);
      if ((v65 + *(&v165 + 4)) <= **(a1 + 16))
      {
        v66 = checkAgainstChangeHolder((a1 + 128), v65 + DWORD1(v165));
        if (!v64)
        {
          goto LABEL_90;
        }

        v67 = v64;
        if (v66)
        {
          goto LABEL_90;
        }

LABEL_76:
        if (v54)
        {
          v79 = *(a1 + 11);
          LODWORD(v151) = -1;
          if (!_CIIndexSetAddIndex(v79, v67, 0, &v151, v63))
          {
LABEL_88:
            if (v4)
            {
              distanceHolderSetMinDistance(*(a1 + 9), *(a1 + 14) + v67, v149, v5);
            }

            goto LABEL_90;
          }

          v81 = *(a1 + 12);
          LODWORD(v151) = -1;
          if (_CIIndexSetAddIndex(v81, v67, 0, &v151, v80))
          {
            ++*(a1 + 26);
          }
        }

        else
        {
          if (_CIIndexSetRemoveIndex(*(a1 + 12), v67))
          {
            --*(a1 + 26);
          }

          v78 = *(a1 + 11);
          LODWORD(v151) = -1;
          if (!_CIIndexSetAddIndex(v78, v67, 0, &v151, v77))
          {
            goto LABEL_88;
          }
        }

        if (*(a2 + 40) >= v67)
        {
          if (*(a2 + 44) > v67)
          {
            *(a2 + 44) = v67;
          }
        }

        else
        {
          *(a2 + 40) = v67;
        }

        goto LABEL_88;
      }
    }

    else
    {
      v64 = *(&v165 + 4);
    }

    v67 = v64;
    if (!v64)
    {
      goto LABEL_90;
    }

    goto LABEL_76;
  }

  v68 = v58 + 2;
  v69 = v36[v60];
  v70 = v36[v60];
  if (v69 < 0)
  {
    v74 = v58 + 3;
    v75 = v36[v68];
    v76 = v36[v68];
    if (v75 < 0)
    {
      v86 = v58 + 4;
      v87 = v36[v74];
      v88 = v36[v74];
      if (v87 < 0)
      {
        v89 = v36[v86];
        v90 = v36[v86];
        if (v89 < 0)
        {
          v91 = v36[v58 + 5];
          if (v91 < 0)
          {
            v139 = __si_assert_copy_extra(0);
            v140 = v139;
            v141 = "";
            if (v139)
            {
              v141 = v139;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v141);
            free(v140);
            if (__valid_fs(-1))
            {
LABEL_205:
              v138 = 2989;
              goto LABEL_210;
            }

LABEL_209:
            v138 = 3072;
LABEL_210:
            *v138 = -559038737;
            abort();
          }

          v71 = v58 + 6;
          v72 = ((v90 & 0x7F) << 21) | (v91 << 28) | ((v88 & 0x7F) << 14) | ((v76 & 0x7F) << 7) | v70 & 0x7F;
        }

        else
        {
          v72 = ((v88 & 0x7F) << 14) | (v90 << 21) | ((v76 & 0x7F) << 7) | v70 & 0x7F;
          v71 = v58 + 5;
        }
      }

      else
      {
        v72 = ((v76 & 0x7F) << 7) | (v88 << 14) | v70 & 0x7F;
        v71 = v58 + 4;
      }
    }

    else
    {
      v72 = v70 & 0x7F | (v76 << 7);
      v71 = v58 + 3;
    }
  }

  else
  {
    v71 = v58 + 2;
    v72 = v70;
  }

  v151 = 0;
  v152 = v71;
  v92 = v72;
  v148 = v33;
  v144 = *(a2 + 56);
  v145 = v71 + v72;
  if (v145 > v144)
  {
    v93 = malloc_type_malloc(v72 + 4, 0xE599E9A2uLL);
    if (v92 >> 28)
    {
      v123 = 5;
    }

    else if (v92 >> 21)
    {
      v123 = 4;
    }

    else
    {
      v123 = 3;
      v124 = 1;
      if (v92 >= 0x80)
      {
        v124 = 2;
      }

      if (!(v92 >> 14))
      {
        v123 = v124;
      }
    }

    v132 = 1;
    if (v61 >= 0x80)
    {
      v132 = 2;
    }

    if (v61 >> 14)
    {
      v132 = 3;
    }

    if (v61 >> 21)
    {
      v132 = 4;
    }

    if (v61 >> 28)
    {
      v132 = 5;
    }

    if (fd_pread(*(v8 + 4488), v93, v92, v123 + v33 + v132) == -1)
    {
      free(v93);
      return 0;
    }

    v133 = CICleanUpThreadLoc();
    v94 = CICleanUpPush(v133, MEMORY[0x1E69E9B38], v93);
    v95 = v133;
    v53 = v147;
  }

  else
  {
    v93 = &v52[v71];
    v94 = 0;
    v95 = 0;
  }

  v142 = v94;
  v143 = v95;
  *(&v165 + 1) = a2;
  v166 = 0xFFFFFFFF00000000;
  *&v165 = a1;
  LOBYTE(v166) = v53 >> 62;
  v96 = v149;
  do
  {
    if (v151 >= v92)
    {
      break;
    }

    v97 = v96 & 0xFFFFFFFF00000000;
    v98 = v97 | v149;
    v99 = unpackPostingChunk(v93, &v151, v92, *(a2 + 68), v4 | (LODWORD(v5) << 32), v97 | v149, PayloadProcessDocIDRangeBitsReversed, &v165);
    v96 = v98;
  }

  while ((v99 & 1) != 0);
  if (v145 > v144)
  {
    free(v93);
    CICleanUpClearItem(v143, v142);
    CICleanUpPop(v143);
  }

  v82 = *(a1 + 1);
  v33 = v148;
  if ((v82 & 0x3FFFFFFFFFFFFFFFLL) != v148)
  {
    v125 = __si_assert_copy_extra(0);
    v84 = v125;
    v126 = "";
    if (v125)
    {
      v126 = v125;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 811, "(((iter->ptr.has_meta?iter->ptr.with_meta.offset:iter->ptr.just_offset) & 0x3FFFFFFFFFFFFFFF))==next", v126);
LABEL_179:
    free(v84);
    if (__valid_fs(-1))
    {
      v127 = 2989;
    }

    else
    {
      v127 = 3072;
    }

    *v127 = -559038737;
    abort();
  }

LABEL_108:
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v44 = v82;
  if (v61 < 2)
  {
    goto LABEL_135;
  }

  v100 = v61 >> 1;
  if (a1[80])
  {
    v128 = __si_assert_copy_extra(*(*(a2 + 48) + 4488));
    v129 = v128;
    v130 = "";
    if (v128)
    {
      v130 = v128;
    }

    __message_assert("%s:%u: failed assertion '%s' %s nxtLink: %lld. compact", "PayloadIterator.c", 819, "iter->compact == false", v130, v61 >> 1);
    free(v129);
    if (__valid_fsp(*(*(a2 + 48) + 4488)))
    {
      v131 = 2989;
    }

    else
    {
      v131 = 3072;
    }

    *v131 = -559038737;
    abort();
  }

  v101 = (v61 >> 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v101 == v33)
  {
    goto LABEL_135;
  }

  if (v101 <= v33)
  {
    v102 = (v61 >> 1) & 0x3FFFFFFFFFFFFFFFLL;
    v103 = *(a1 + 3);
    v104 = *(a2 + 48);
    v105 = *(v104 + 32);
    if (v103 >= v105)
    {
      v105 = 2 * v103;
    }

    v107 = v101 > v105 || v33 <= v105;
    if (v101 < v103 || !v107)
    {
      if (v4)
      {
        oqpush_with_meta((a1 + 160), v100 | v147, LODWORD(v5) | (v149 << 32));
      }

      else
      {
        oqpush_13659(a1 + 160, v100 | v147, v16);
      }

      if (*(a2 + 32) > v101)
      {
        v109 = *(a1 + 3);
        if (v101 < v109 && v101 > v109 >> 1)
        {
          *(a2 + 32) = v101;
        }
      }

      goto LABEL_135;
    }

    v134 = v105;
    v135 = __si_assert_copy_extra(*(v104 + 4488));
    v136 = v135;
    v137 = "";
    if (v135)
    {
      v137 = v135;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Unexpected value for nextLink: %lld. next=%lld barrier=%lld split=%lld", "PayloadIterator.c", 843, "(OFFSET_GET_VALUE(nxtLink) <= barrier && next>barrier)|| (OFFSET_GET_VALUE(nxtLink)<iter->split)", v137, v102, v146, v134, *(a1 + 3));
    free(v136);
    if (__valid_fsp(*(*(a2 + 48) + 4488)))
    {
      goto LABEL_205;
    }

    goto LABEL_209;
  }

  if (v4)
  {
    pq_force_meta((a1 + 232));
    pqpush_with_meta((a1 + 232), v100 | v147, LODWORD(v5) | (v149 << 32));
  }

  else
  {
    pqpush(a1 + 29, v100 | v147);
  }

  v108 = *(a2 + 24);
  if (v108 >= v101)
  {
    v108 = (v61 >> 1) & 0x3FFFFFFFFFFFFFFFLL;
  }

  *(a2 + 24) = v108;
LABEL_135:
  if ((*(a1 + 1) & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v43 = *(a1 + 1);
  do
  {
LABEL_137:
    v110 = *(a1 + 25);
    v111 = *(a1 + 26);
    if (*(a1 + 32) == 1)
    {
      v112 = v43;
      if (v111 == v110)
      {
        break;
      }

      goto LABEL_155;
    }

    if (v111 == v110)
    {
      goto LABEL_154;
    }

    v113 = *(a1 + 30);
    if (v113)
    {
      if (a1[232])
      {
        v114 = 16;
      }

      else
      {
        v114 = 8;
      }

      v113 = *(v113 + v114);
    }

    if (a1[160] == 1)
    {
      if (v110 < v111)
      {
        v115 = (*(a1 + 22) + 16 * v110);
LABEL_151:
        v116 = *v115;
        goto LABEL_153;
      }
    }

    else if (v110 < v111)
    {
      v115 = (*(a1 + 22) + 8 * v110);
      goto LABEL_151;
    }

    v116 = 0;
LABEL_153:
    if (v113 < v116)
    {
LABEL_154:
      v43 = pqpop(a1 + 29, a1);
      goto LABEL_156;
    }

LABEL_155:
    v43 = oqpop(a1 + 20, a1);
LABEL_156:
    *(a1 + 1) = v43;
    *(a1 + 2) = v117;
    v112 = v43;
  }

  while (((v43 ^ v44) & 0x3FFFFFFFFFFFFFFFLL) == 0);
  if ((v112 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  if (*(a1 + 24))
  {
    v118 = *(a1 + 3);
    while (1)
    {
      v119 = v118 >> 1;
      v120 = v119 >= *(*(a2 + 48) + 32) ? v119 : 0;
      *(a1 + 3) = v120;
      oqsplit((a1 + 160), v120);
      v121 = oqpop(a1 + 20, a1);
      *(a1 + 1) = v121;
      *(a1 + 2) = v122;
      v73 = (v121 & 0x3FFFFFFFFFFFFFFFLL) != 0;
      if ((v121 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        break;
      }

      v118 = *(a1 + 3);
      if (!v118)
      {
        return 0;
      }
    }

    return v73;
  }

  return 0;
}

uint64_t unpackPostingChunk(uint64_t VInt32, unint64_t *a2, unint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int (*a7)(void, void), uint64_t a8)
{
  v10 = *a2;
  if (*a2 >= a3)
  {
    v15 = 0;
LABEL_109:
    if (!__valid_fs(-1))
    {
      goto LABEL_142;
    }

    v72 = __si_assert_copy_extra_332();
    v80 = v72;
    v81 = "";
    if (v72)
    {
      v81 = v72;
    }

    si_analytics_log_6257(v72, v73, v74, v75, v76, v77, v78, v79, "PostingChunk.c", 90, "offset < bufferLength", v81, *a2, v10, a3, v15, 923);
    goto LABEL_113;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = v10 + 1;
    v15 |= (*(VInt32 + v10) & 0x7F) << v14;
    if ((*(VInt32 + v10) & 0x80) == 0 || v14 == 63)
    {
      break;
    }

    v14 += 7;
    ++v10;
    if (a3 == v16)
    {
      v10 = a3;
      goto LABEL_109;
    }
  }

  *a2 = v16;
  if (!v15)
  {
    return 0;
  }

  if (v16 >= a3)
  {
    v18 = 0;
LABEL_115:
    if (__valid_fs(-1))
    {
      v82 = __si_assert_copy_extra_332();
      v90 = v82;
      v91 = "";
      if (v82)
      {
        v91 = v82;
      }

      si_analytics_log_6257(v82, v83, v84, v85, v86, v87, v88, v89, "PostingChunk.c", 90, "offset < bufferLength", v91, *a2, v16, a3, v18, 929);
      free(v90);
      MEMORY[0xB00] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v18 |= (*(VInt32 + v10 + 1) & 0x7F) << v17;
    if ((*(VInt32 + v10 + 1) & 0x80) == 0 || v17 == 63)
    {
      break;
    }

    v17 += 7;
    if (a3 - 1 == ++v10)
    {
      v16 = a3;
      goto LABEL_115;
    }
  }

  v19 = v10 + 2;
  *a2 = v10 + 2;
  v20 = a3 - v10 - 2;
  if (v15 > v18)
  {
    v21 = a6;
    v22 = 1;
    (a7)(a8, v15, 1, 0, 0, a5, a6);
    if (v18)
    {
      v23 = v15;
      while (v23 > v18)
      {
        if (v23 - v18 >= a4)
        {
          goto LABEL_122;
        }

        v22 = (a7)(a8, v23 - v18, 1, 0, 0, a5, v21);
        if (!v22)
        {
          return v22;
        }

        v23 -= v18;
        v24 = *a2;
        if (*a2 + 5 > a3)
        {
          LODWORD(v18) = _protectedReadVInt32(VInt32, a2, a3);
          if (!v18)
          {
            return v22;
          }
        }

        else
        {
          v25 = v24 + 1;
          LODWORD(v18) = *(VInt32 + v24);
          if (*(VInt32 + v24) < 0)
          {
            v26 = v24 + 2;
            v27 = *(VInt32 + v25);
            v28 = *(VInt32 + v25);
            if (v27 < 0)
            {
              v29 = *(VInt32 + v26);
              v30 = v29;
              if (v29 < 0)
              {
                v26 = v24 + 4;
                v31 = *(VInt32 + v24 + 3);
                v32 = *(VInt32 + v24 + 3);
                if (v31 < 0)
                {
                  v33 = *(VInt32 + v26);
                  if (v33 < 0)
                  {
                    goto LABEL_138;
                  }

                  v34 = ((v32 & 0x7F) << 21) | (v33 << 28) | ((v30 & 0x7F) << 14) | ((v28 & 0x7F) << 7) | v18 & 0x7F;
                  v26 = *a2 + 5;
                  LODWORD(v18) = v34;
                }

                else
                {
                  LODWORD(v18) = ((v30 & 0x7F) << 14) | (v32 << 21) | ((v28 & 0x7F) << 7) | v18 & 0x7F;
                }
              }

              else
              {
                v26 = v24 + 3;
                LODWORD(v18) = ((v28 & 0x7F) << 7) | (v30 << 14) | v18 & 0x7F;
              }
            }

            else
            {
              LODWORD(v18) = v18 & 0x7F | (v28 << 7);
            }
          }

          else
          {
            v26 = v24 + 1;
          }

          *a2 = v26;
          if (!v18)
          {
            return v22;
          }
        }
      }

      v92 = __si_assert_copy_extra_332();
      v64 = v92;
      v93 = "";
      if (v92)
      {
        v93 = v92;
      }

      __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 815, "docID > delta", v93, v23, v18);
      goto LABEL_105;
    }

    return v22;
  }

  if (v15 >= v18)
  {
    if (v19 < a3)
    {
      v37 = 0;
      v38 = 0;
      v39 = v10 + 3;
      v40 = (VInt32 + v10 + 2);
      v41 = a6;
      while (1)
      {
        v42 = *v40++;
        v38 |= (v42 & 0x7F) << v37;
        if ((v42 & 0x80) == 0 || v37 == 63)
        {
          break;
        }

        v37 += 7;
        ++v39;
        if (!--v20)
        {
          v19 = a3;
          goto LABEL_128;
        }
      }

      *a2 = v39;
      if (v38 <= 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = v38;
      }

      if (v38)
      {
        while ((a7)(a8, v15, 1, 0, v43, a5, v41))
        {
          v44 = *a2;
          if (*a2 >= a3)
          {
            v46 = 0;
LABEL_133:
            if (__valid_fs(-1))
            {
              v103 = __si_assert_copy_extra_332();
              v111 = v103;
              v112 = "";
              if (v103)
              {
                v112 = v103;
              }

              si_analytics_log_6257(v103, v104, v105, v106, v107, v108, v109, v110, "PostingChunk.c", 90, "offset < bufferLength", v112, *a2, v44, a3, v46, 912);
              free(v111);
              MEMORY[0xB00] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v45 = 0;
          v46 = 0;
          while (1)
          {
            v47 = *(VInt32 + v44++);
            v46 |= (v47 & 0x7F) << v45;
            if ((v47 & 0x80) == 0 || v45 == 63)
            {
              break;
            }

            v45 += 7;
            if (a3 == v44)
            {
              v44 = a3;
              goto LABEL_133;
            }
          }

          *a2 = v44;
          v15 -= v46;
          if (!v46)
          {
            return 1;
          }
        }
      }

      else if ((a7)(a8, v15, 1, 0, v43, a5, a6))
      {
        return 1;
      }

      return 0;
    }

    v38 = 0;
LABEL_128:
    if (!__valid_fs(-1))
    {
LABEL_142:
      v71 = 3072;
LABEL_143:
      *v71 = -559038737;
      abort();
    }

    v94 = __si_assert_copy_extra_332();
    v80 = v94;
    v102 = "";
    if (v94)
    {
      v102 = v94;
    }

    si_analytics_log_6257(v94, v95, v96, v97, v98, v99, v100, v101, "PostingChunk.c", 90, "offset < bufferLength", v102, *a2, v19, a3, v38, 899);
LABEL_113:
    free(v80);
    v71 = 2816;
    goto LABEL_143;
  }

  v35 = a6;
  if (*(VInt32 + v19))
  {
    if (v15 < a4)
    {
      if (v18 <= a4)
      {
        v36 = v19 + ((v18 - v15 + 7) >> 3);
        if (v36 > a3)
        {
          v118 = __si_assert_copy_extra_332();
          v119 = v118;
          v120 = "";
          if (v118)
          {
            v120 = v118;
          }

          __message_assert("%s:%u: failed assertion '%s' %s %ld, %ld", "PostingChunk.c", 843, "newOffset <= bufferLength", v120, v36, a3);
          v70 = v119;
LABEL_106:
          free(v70);
          if (__valid_fs(-1))
          {
            v71 = 2986;
            goto LABEL_143;
          }

          goto LABEL_142;
        }

        if (a7(a8, v15))
        {
          *a2 = v36;
          return 1;
        }

        return 0;
      }

      goto LABEL_122;
    }

    v116 = __si_assert_copy_extra_332();
    v64 = v116;
    v117 = "";
    if (v116)
    {
      v117 = v116;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 838, "firstDocID < maxValidId", v117, v15, a4);
LABEL_105:
    v70 = v64;
    goto LABEL_106;
  }

  if (v10 + 7 > a3)
  {
    if (!_protectedReadVInt32(VInt32, a2, a3))
    {
      goto LABEL_66;
    }

    v48 = __si_assert_copy_extra_332();
    __message_assert("%s:%u: failed assertion '%s' %s %d");
LABEL_123:
    free(v48);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAA] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  *a2 = v10 + 3;
  do
  {
    while (1)
    {
LABEL_66:
      v49 = *a2;
      v50 = *a2 + 5;
      if (v50 > a3)
      {
        v51 = _protectedReadVInt32(VInt32, a2, a3);
        v52 = v18 - v51;
        if (v18 < v51)
        {
          goto LABEL_96;
        }

        goto LABEL_78;
      }

      v53 = v49 + 1;
      v51 = *(VInt32 + v49);
      if ((*(VInt32 + v49) & 0x80000000) == 0)
      {
        *a2 = v53;
        v52 = v18 - v51;
        if (v18 < v51)
        {
          goto LABEL_96;
        }

        goto LABEL_78;
      }

      v54 = v49 + 2;
      v55 = *(VInt32 + v53);
      v56 = *(VInt32 + v53);
      if ((v55 & 0x80000000) == 0)
      {
        v51 = v51 & 0x7F | (v56 << 7);
        goto LABEL_74;
      }

      v57 = v49 + 3;
      v58 = *(VInt32 + v54);
      v59 = v58;
      if (v58 < 0)
      {
        v54 = v49 + 4;
        v60 = *(VInt32 + v57);
        if ((v60 & 0x80000000) == 0)
        {
          v51 = ((v59 & 0x7F) << 14) | (v60 << 21) | ((v56 & 0x7F) << 7) | v51 & 0x7F;
LABEL_74:
          *a2 = v54;
          v52 = v18 - v51;
          if (v18 < v51)
          {
            goto LABEL_96;
          }

          goto LABEL_78;
        }

        v61 = *(VInt32 + v54);
        if (v61 < 0)
        {
LABEL_138:
          v113 = __si_assert_copy_extra_332();
          v114 = v113;
          v115 = "";
          if (v113)
          {
            v115 = v113;
          }

          __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v115);
          free(v114);
          if (__valid_fs(-1))
          {
            v71 = 2989;
            goto LABEL_143;
          }

          goto LABEL_142;
        }

        v51 = ((v60 & 0x7F) << 21) | (v61 << 28) | ((v59 & 0x7F) << 14) | ((v56 & 0x7F) << 7) | v51 & 0x7F;
        *a2 = v50;
        v52 = v18 - v51;
        if (v18 < v51)
        {
LABEL_96:
          v63 = __si_assert_copy_extra_332();
          v64 = v63;
          v65 = "";
          if (v63)
          {
            v65 = v63;
          }

          __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 868, "delta <= docID", v65, v51, v18);
          goto LABEL_105;
        }
      }

      else
      {
        v51 = ((v56 & 0x7F) << 7) | (v58 << 14) | v51 & 0x7F;
        *a2 = v57;
        v52 = v18 - v51;
        if (v18 < v51)
        {
          goto LABEL_96;
        }
      }

LABEL_78:
      if (v52 < v15)
      {
        v66 = __si_assert_copy_extra_332();
        v64 = v66;
        v67 = "";
        if (v66)
        {
          v67 = v66;
        }

        __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 871, "docID >= firstDocID", v67, v52, v15);
        goto LABEL_105;
      }

      if (v51 < 2)
      {
        break;
      }

      if (v52 + 1 >= a4)
      {
        v68 = __si_assert_copy_extra_332();
        v64 = v68;
        v69 = "";
        if (v68)
        {
          v69 = v68;
        }

        __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 875, "docID+1 < maxValidId", v69, v52, a4);
        goto LABEL_105;
      }

      LODWORD(v18) = v52;
      if (((a7)(a8) & 1) == 0)
      {
        return 0;
      }
    }

    LODWORD(v18) = v52;
  }

  while (v51);
  if (v15 >= a4)
  {
    v121 = __si_assert_copy_extra_332();
    v64 = v121;
    v122 = "";
    if (v121)
    {
      v122 = v121;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 882, "firstDocID < maxValidId", v122, v15, a4);
    goto LABEL_105;
  }

  if (v52 > a4)
  {
LABEL_122:
    v48 = __si_assert_copy_extra_332();
    __message_assert("%s:%u: failed assertion '%s' %s %d, %d");
    goto LABEL_123;
  }

  return (a7)(a8, v15, v52 - v15, 0, 0, a5, v35);
}

BOOL ContentIndexQueryNodeEquals(float *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 2) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *a1;
  if (v2 != *a2 || a1[3] != *(a2 + 12) || a1[4] != *(a2 + 16) || *(a1 + 1) != *(a2 + 4))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 6;
    v6 = a2 + 24;
    do
    {
      v7 = &v5[4 * v3];
      v8 = *v7;
      v9 = v6 + 16 * v3;
      if (v8 != *v9)
      {
        break;
      }

      if (v8 >= 1)
      {
        v10 = *(v7 + 1);
        v11 = *(v9 + 8);
        while (*(v10 + 24) == *(v11 + 24))
        {
          v12 = *(v10 + 20);
          if (v12 != *(v11 + 20))
          {
            break;
          }

          v13 = *(v10 + 16);
          if (v13 != *(v11 + 16))
          {
            break;
          }

          v14 = *(v10 + 60);
          if (v14 != *(v11 + 60))
          {
            break;
          }

          if ((v13 & 0x10) != 0)
          {
            v15 = *(v10 + 60) & 3;
            v16 = -1;
            if (v15 != 3)
            {
              v17 = (v14 >> 2) & 3;
              if (v17 != 3)
              {
                v16 = (vector_dimension_vec_sizes_15424[v15] * vector_size_elem_sizes_15423[v17]);
              }
            }

            if (memcmp(*v10, *v11, v16))
            {
              break;
            }
          }

          if ((v13 & 0x600) != 0 && memcmp(*v10, *v11, 8 * v12))
          {
            break;
          }

          if ((v13 & 0x610) == 0 && strcmp(*v10, *v11))
          {
            break;
          }

          v18 = *(v10 + 8);
          v19 = *(v11 + 8);
          if (v18 != v19 && (!v18 || !v19 || strcmp(v18, v19)))
          {
            break;
          }

          v10 += 64;
          v11 += 64;
          if (!--v8)
          {
            goto LABEL_30;
          }
        }

        return v4;
      }

LABEL_30:
      v4 = ++v3 >= v2;
    }

    while (v3 != v2);
  }

  return v4;
}

void findMatchTerm(uint64_t result, char a2)
{
  v155 = *MEMORY[0x1E69E9840];
  if (**result)
  {
    return;
  }

  v3 = *(result + 52);
  v4 = *(result + 56);
  if (v4 == 1)
  {
    v7 = *(result + 72);
    v8 = *(result + 8);
    if (v7 > v3)
    {
      v9 = a2;
      v6 = mgetBase(v8, v3);
      a2 = v9;
      if (v9)
      {
        goto LABEL_45;
      }

      goto LABEL_9;
    }

    v146 = __si_assert_copy_extra_2708(*(v8 + 112));
    v147 = v146;
    v148 = "";
    if (v146)
    {
      v148 = v146;
    }

    __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4710, "ptr.next < ctx->trie_max", v148, v3, *(result + 64));
    free(v147);
    v145 = *(*(result + 8) + 112);
LABEL_278:
    if (__valid_fsp(v145))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v4 != 3)
  {
    return;
  }

  v5 = *(result + 8);
  if (*(result + 64) <= v3)
  {
    v142 = __si_assert_copy_extra_2708(*(v5 + 4576));
    v143 = v142;
    v144 = "";
    if (v142)
    {
      v144 = v142;
    }

    __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4707, "ptr.next < ctx->trie_fat_max", v144, v3, *(result + 64));
    free(v143);
    v145 = *(*(result + 8) + 4576);
    goto LABEL_278;
  }

  v6 = (*(v5 + 8) + 1028 * v3);
  if (a2)
  {
    goto LABEL_45;
  }

LABEL_9:
  v10 = *v6;
  if (*(result + 48) == 1)
  {
    v11 = v10 >> 3;
    v12 = (v10 & 7) << 32;
    if ((*v6 & 3) == 1)
    {
      v12 = 0x100000000;
      v11 = v10 >> 2;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10 >> 1;
    }

    if (v14)
    {
      v15 = (result + 88);
      v16 = *(result + 1240);
      v17 = *v16;
      v18 = *(v16 + 6);
      v19 = **v16;
      if (v19 > 4)
      {
        if (v19 == 42)
        {
          v33 = a2;
          v34 = termPropertyID((result + 88), *(result + 1140));
          a2 = v33;
          if (v34 == 2)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        if (v19 != *v15)
        {
          goto LABEL_45;
        }

        v20 = v17 + 1;
        v21 = v17[1];
        if (v21 != *(result + 89))
        {
          goto LABEL_45;
        }

        if (v21 == 2)
        {
          v23 = v17[2];
          v22 = v17 + 2;
          LOBYTE(v21) = v23;
          if (v23 != *(result + 90))
          {
            goto LABEL_45;
          }

          v15 = (result + 91);
          v20 = v22;
        }

        else
        {
          v15 = (result + 90);
        }

        v17 = v20 + 1;
        if ((v21 & 0x80) != 0)
        {
          v137 = *v17;
          if (v137 != *v15)
          {
            goto LABEL_45;
          }

          v17 = v20 + 2;
          if (v137 < 0)
          {
            v141 = *v17;
            if (v141 != v15[1])
            {
              goto LABEL_45;
            }

            if (v141 < 0)
            {
              v150 = v20[3];
              if (v150 < 0 || v15[2] != v150)
              {
                goto LABEL_45;
              }

              v15 += 3;
              v17 = v20 + 4;
            }

            else
            {
              v15 += 2;
              v17 = v20 + 3;
            }
          }

          else
          {
            ++v15;
          }
        }
      }

      v40 = v17;
      v41 = a2;
      v42 = matche(v40, v15, v18, 0, 0);
      a2 = v41;
      if (v42)
      {
        findAddFlatBucket(result, v13 | v14, 0, 0, 0, 0);
        a2 = v41;
      }
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_45;
    }

    v24 = *(result + 1240);
    v25 = *v24;
    v26 = *(v24 + 6);
    v27 = **v24;
    if (v27 > 4)
    {
      if (v27 == 42)
      {
        v35 = a2;
        v36 = termPropertyID((result + 88), *(result + 1140));
        a2 = v35;
        v32 = (result + 88);
        if (v36 == 2)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v32 = (result + 88);
      }
    }

    else
    {
      if (v27 != *(result + 88))
      {
        goto LABEL_45;
      }

      v28 = v25 + 1;
      v29 = v25[1];
      if (v29 != *(result + 89))
      {
        goto LABEL_45;
      }

      if (v29 == 2)
      {
        v31 = v25[2];
        v30 = v25 + 2;
        LOBYTE(v29) = v31;
        if (v31 != *(result + 90))
        {
          goto LABEL_45;
        }

        v32 = (result + 91);
        v28 = v30;
      }

      else
      {
        v32 = (result + 90);
      }

      v25 = v28 + 1;
      if ((v29 & 0x80) != 0)
      {
        v136 = *v25;
        if (v136 != *v32)
        {
          goto LABEL_45;
        }

        v25 = v28 + 2;
        if (v136 < 0)
        {
          v140 = *v25;
          if (v140 != v32[1])
          {
            goto LABEL_45;
          }

          if (v140 < 0)
          {
            v149 = v28[3];
            if (v149 < 0 || v32[2] != v149)
            {
              goto LABEL_45;
            }

            v32 += 3;
            v25 = v28 + 4;
          }

          else
          {
            v32 += 2;
            v25 = v28 + 3;
          }
        }

        else
        {
          ++v32;
        }
      }
    }

    v37 = v25;
    v38 = a2;
    v39 = matche(v37, v32, v26, 0, 0);
    a2 = v38;
    if (v39)
    {
      findHandleMatch(result, v10, 0, (result + 88), *(result + 1140), 0);
      a2 = v38;
    }
  }

LABEL_45:
  v43 = *(result + 1224);
  v44 = *v43;
  v45 = *v43;
  if (*v43 < 0)
  {
    v47 = (v44 >> 4) & 0xC;
    if (v47 == 8)
    {
      v48 = *(result + 8);
      v49 = *(&tcm + v44);
      if (v4 == 1)
      {
        v62 = mgetBase(v48, v3);
        if (((*(v62 + ((v49 >> 3) & 0x1C) + 4) >> v49) & 1) == 0)
        {
          return;
        }

        v50 = *(v62 + 4 * get_follows_pos(v62, v49) + 38);
      }

      else
      {
        v50 = *(v48[1] + 1028 * v3 + 4 * v49 + 4);
      }

      v63 = v50 >> 1;
      v64 = v50 >> 3;
      v65 = (v50 & 7) << 32;
      if ((v50 & 3) == 1)
      {
        v64 = v50 >> 2;
        v65 = 0x100000000;
      }

      if (v50)
      {
        v63 = v64;
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      if (v63)
      {
        v67 = result + 88;
        v68 = *(result + 1140);
        *(result + 1140) = v68 + 1;
        *(v67 + v68) = v45;
        *(v67 + *(result + 1140)) = 0;
        ++*(result + 1224);
        if (v66)
        {
          *(result + 52) = v63;
          *(result + 56) = HIDWORD(v66);
          findMatchTerm(result, 0);
          *(result + 52) = v3 | (v4 << 32);
        }

        else
        {
          findAddFlatBucket(result, v63, 0, 0, 0, 0);
        }

        --*(result + 1224);
        --*(result + 1140);
      }

      return;
    }

    v53 = utf8_byte_length(unsigned char)::utf8_len_table[v44 >> 4];
    v54 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v53] & v45);
    if (v47 == 12)
    {
      if (v53 <= 2)
      {
        v55 = 2;
      }

      else
      {
        v55 = utf8_byte_length(unsigned char)::utf8_len_table[v44 >> 4];
      }

      v56 = v55 - 1;
      v57 = v43 + 1;
      do
      {
        v58 = *v57++;
        v59 = v58 & 0x3F | (v54 << 6);
        v54 = v59;
        --v56;
      }

      while (v56);
    }

    else
    {
      v59 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v53] & v45);
    }

    if ((*(*(result + 1240) + 16) & 2) != 0)
    {
      if (v59 - 880 > 0xFFFFFF8F)
      {
        *(result + 1224) = &v43[v53];
        findMatchIgnoringDiacritics(result, v3 | (v4 << 32));
        *(result + 1224) -= v53;
      }

      else
      {
        findMatchIgnoringDiacritics(result, v3 | (v4 << 32));
      }
    }

    if (*(*(result + 1240) + 16))
    {
      Predefined = findMatchTerm_sLowerSet;
      if (!findMatchTerm_sLowerSet)
      {
        Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
        findMatchTerm_sLowerSet = Predefined;
      }

      if (CFCharacterSetIsLongCharacterMember(Predefined, v59))
      {
        if (v59 <= 0xFFFE)
        {
          v73 = map_case(v59);
          v152 = v73;
          if (v59 != v73)
          {
            v154 = 0;
            v153 = 0;
            utf8_encodestr(&v152, 2uLL, &v153, v151, 10);
            findMatchTermExpansion(result, v53, &v153);
          }
        }
      }
    }

    v69 = *(result + 8);
    v70 = *(&tcm + v44);
    if (v4 == 1)
    {
      v74 = mgetBase(v69, v3);
      if (((*(v74 + ((v70 >> 3) & 0x1C) + 4) >> v70) & 1) == 0)
      {
        goto LABEL_132;
      }

      v71 = *(v74 + 4 * get_follows_pos(v74, v70) + 38);
    }

    else
    {
      v71 = *(v69[1] + 1028 * v3 + 4 * v70 + 4);
    }

    v75 = v71 >> 1;
    v76 = v71 >> 3;
    v77 = (v71 & 7) << 32;
    if ((v71 & 3) == 1)
    {
      v76 = v71 >> 2;
      v77 = 0x100000000;
    }

    if (v71)
    {
      v75 = v76;
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    if (v75)
    {
      v79 = result + 88;
      v80 = *(result + 1140);
      *(result + 1140) = v80 + 1;
      *(v79 + v80) = v45;
      *(v79 + *(result + 1140)) = 0;
      ++*(result + 1224);
      if (v78)
      {
        *(result + 52) = v75;
        *(result + 56) = HIDWORD(v78);
        findMatchTerm(result, 0);
        *(result + 52) = v3 | (v4 << 32);
      }

      else
      {
        findAddFlatBucket(result, v75, 0, 0, 0, 0);
      }

      --*(result + 1224);
      --*(result + 1140);
    }

LABEL_132:
    if (v45 > 196)
    {
      if (v45 != 197)
      {
        if (v45 != 226)
        {
          return;
        }

        if ((*(*(result + 1240) + 16) & 2) == 0)
        {
          return;
        }

        v103 = *(result + 1224);
        if (*(v103 + 1) != 128)
        {
          return;
        }

        v104 = *(v103 + 2);
        if ((v104 - 152) <= 0x1A && ((1 << (v104 + 104)) & 0x400000B) != 0)
        {
          findMatchTermExpansion(result, 3u, utf8_left_single_quote_str);
          findMatchTermExpansion(result, 3u, utf8_right_single_quote_str);
          findMatchTermExpansion(result, 3u, utf8_right_inverted_quote_str);
          findMatchTermExpansion(result, 3u, utf8_right_double_prime_str);
          findMatchTermExpansion(result, 3u, "");
          v104 = *(*(result + 1224) + 2);
        }

        v105 = v104 - 155;
        if (v105 > 0x17 || ((1 << v105) & 0x800007) == 0)
        {
          return;
        }

        findMatchTermExpansion(result, 3u, utf8_left_single_quote_str);
        findMatchTermExpansion(result, 3u, utf8_right_single_quote_str);
        findMatchTermExpansion(result, 3u, utf8_right_inverted_quote_str);
        findMatchTermExpansion(result, 3u, utf8_prime_str);
        v102 = "'";
        v106 = result;
        v107 = 3;
LABEL_249:
        findMatchTermExpansion(v106, v107, v102);
        return;
      }

      v109 = *(*(result + 1224) + 1);
      if (v109 != 146)
      {
        if (v109 != 147)
        {
          return;
        }

        findMatchTermExpansion(result, 2u, "oe");
        findMatchTermExpansion(result, 2u, utf8_o_umlat_lower_str);
        if ((*(*(result + 1240) + 16) & 1) == 0)
        {
          return;
        }
      }

      findMatchTermExpansion(result, 2u, "OE");
      v102 = utf8_o_umlat_upper_str;
LABEL_248:
      v106 = result;
      v107 = 2;
      goto LABEL_249;
    }

    if (v45 != 195)
    {
      if (v45 != 196)
      {
        return;
      }

      v101 = *(*(result + 1224) + 1);
      if (v101 != 178)
      {
        if (v101 != 179)
        {
          return;
        }

        findMatchTermExpansion(result, 2u, "ij");
        if ((*(*(result + 1240) + 16) & 1) == 0)
        {
          return;
        }
      }

      v102 = "IJ";
      goto LABEL_248;
    }

    v108 = *(*(result + 1224) + 1);
    if (v108 <= 0x9E)
    {
      if (v108 != 134)
      {
        if (v108 != 152)
        {
          return;
        }

LABEL_233:
        findMatchTermExpansion(result, 2u, "OE");
        findMatchTermExpansion(result, 2u, utf8_o_umlat_upper_str);
        v102 = &utf8_oe_ligature_upper_str;
        goto LABEL_248;
      }
    }

    else
    {
      if (v108 == 159)
      {
        v102 = "ss";
        goto LABEL_248;
      }

      if (v108 != 166)
      {
        if (v108 != 184)
        {
          return;
        }

        findMatchTermExpansion(result, 2u, "oe");
        findMatchTermExpansion(result, 2u, utf8_o_umlat_lower_str);
        findMatchTermExpansion(result, 2u, utf8_oe_ligature_lower_str);
        if ((*(*(result + 1240) + 16) & 1) == 0)
        {
          return;
        }

        goto LABEL_233;
      }

      findMatchTermExpansion(result, 2u, "ae");
      findMatchTermExpansion(result, 2u, utf8_a_umlat_lower_str);
      if ((*(*(result + 1240) + 16) & 1) == 0)
      {
        return;
      }
    }

    findMatchTermExpansion(result, 2u, "AE");
    v102 = utf8_a_umlat_upper_str;
    goto LABEL_248;
  }

  if (!*v43)
  {
    v51 = *(*(result + 1240) + 20);
    if (v51 == 2)
    {
      v52 = "\x01\x02";
    }

    else
    {
      if (v51 != 1)
      {
        return;
      }

      v52 = "\x01\x01";
    }

    goto LABEL_72;
  }

  if ((a2 & 1) == 0 && v43 >= *(result + 1232))
  {
    if (v45 == 92)
    {
      v82 = v43[1];
      v81 = (v43 + 1);
      if (v82)
      {
        *(result + 1224) = v81;
        findMatchTerm(result, 1);
        --*(result + 1224);
        return;
      }
    }

    else if (v45 == 42)
    {
      v46 = v43[1] == 0;

      findMatchTermWildcard(result, v3 | (v4 << 32), 0, v46);
      return;
    }
  }

  v83 = v3 | (v4 << 32);
  if ((*(*(result + 1240) + 16) & 2) != 0)
  {
    findMatchIgnoringDiacritics(result, v3 | (v4 << 32));
  }

  v84 = *(result + 8);
  v85 = *(&tcm + v44);
  if (v4 != 1)
  {
    v86 = *(v84[1] + 1028 * v3 + 4 * v85 + 4);
    v87 = v86 >> 1;
    v88 = v86 >> 3;
    v89 = (v86 & 7) << 32;
    if ((v86 & 3) == 1)
    {
      v88 = v86 >> 2;
      v89 = 0x100000000;
    }

    if (v86)
    {
      v87 = v88;
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    goto LABEL_160;
  }

  v91 = mgetBase(v84, v3);
  v92 = (v91 + 4);
  if (((*(v91 + 4 + 4 * (v85 >> 5)) >> v85) & 1) == 0)
  {
    goto LABEL_165;
  }

  v93 = 0;
  v94 = v85 >> 6;
  if (v85 >> 6 > 1)
  {
    if (v94 != 2)
    {
      v96 = vcnt_s8(*(v91 + 20));
      v96.i16[0] = vaddlv_u8(v96);
      v93 = v96.u32[0];
    }

    v97 = vcnt_s8(*(v91 + 12));
    v97.i16[0] = vaddlv_u8(v97);
    v93 += v97.u32[0];
    goto LABEL_123;
  }

  v95 = v85 >> 6;
  if (v94)
  {
LABEL_123:
    v98 = vcnt_s8(*v92);
    v98.i16[0] = vaddlv_u8(v98);
    v95 = v98.u32[0] + v93;
  }

  v99 = vcnt_s8((*&v92[v94] & ~(-1 << v85)));
  v99.i16[0] = vaddlv_u8(v99);
  v100 = *(v91 + 38 + 4 * (v99.u32[0] + v95));
  if (v100)
  {
    if ((*(v91 + 38 + 4 * (v99.u32[0] + v95)) & 3) == 1)
    {
      v87 = v100 >> 2;
      v90 = 0x100000000;
    }

    else
    {
      v90 = (v100 & 7) << 32;
      v87 = v100 >> 3;
    }
  }

  else
  {
    v90 = 0;
    v87 = v100 >> 1;
  }

LABEL_160:
  if (v87)
  {
    v110 = result + 88;
    v111 = *(result + 1140);
    *(result + 1140) = v111 + 1;
    *(v110 + v111) = v45;
    *(v110 + *(result + 1140)) = 0;
    ++*(result + 1224);
    if (v90)
    {
      *(result + 52) = v87;
      *(result + 56) = HIDWORD(v90);
      findMatchTerm(result, 0);
      *(result + 52) = v83;
    }

    else
    {
      findAddFlatBucket(result, v87, 0, 0, 0, 0);
    }

    --*(result + 1224);
    --*(result + 1140);
  }

LABEL_165:
  if ((*(*(result + 1240) + 16) & 1) != 0 && v44 - 123 >= 0xFFFFFFFFFFFFFFE6)
  {
    v112 = sUpperTable[v44];
    v113 = *(result + 8);
    v114 = *(&tcm + v112);
    if (v4 != 1)
    {
      v115 = *(v113[1] + 1028 * v3 + 4 * v114 + 4);
LABEL_171:
      v117 = v115 >> 1;
      v118 = v115 >> 3;
      v119 = (v115 & 7) << 32;
      if ((v115 & 3) == 1)
      {
        v118 = v115 >> 2;
        v119 = 0x100000000;
      }

      if (v115)
      {
        v117 = v118;
        v120 = v119;
      }

      else
      {
        v120 = 0;
      }

      if (v117)
      {
        v121 = result + 88;
        v122 = *(result + 1140);
        *(result + 1140) = v122 + 1;
        *(v121 + v122) = v112;
        *(v121 + *(result + 1140)) = 0;
        ++*(result + 1224);
        if (v120)
        {
          *(result + 52) = v117;
          *(result + 56) = HIDWORD(v120);
          findMatchTerm(result, 0);
          *(result + 52) = v83;
        }

        else
        {
          findAddFlatBucket(result, v117, 0, 0, 0, 0);
        }

        --*(result + 1224);
        --*(result + 1140);
      }

      goto LABEL_181;
    }

    v116 = mgetBase(v113, v3);
    if ((*(v116 + ((v114 >> 3) & 0x1C) + 4) >> v114))
    {
      v115 = *(v116 + 4 * get_follows_pos(v116, v114) + 38);
      goto LABEL_171;
    }
  }

LABEL_181:
  if (!expansions_check[v44])
  {
    return;
  }

  if (v45 <= 95)
  {
    if (v45 > 64)
    {
      if (v45 != 65)
      {
        if (v45 != 73)
        {
          if (v45 != 79)
          {
            return;
          }

          v123 = *(result + 1224);
          v124 = *(v123 + 1);
          if (v124 == 204)
          {
            if (*(v123 + 2) != 136)
            {
              return;
            }

            v135 = "OE";
            goto LABEL_244;
          }

          if (v124 != 69)
          {
            return;
          }

LABEL_230:
          findMatchTermExpansion(result, 2u, utf8_o_slash_upper_str);
          v135 = utf8_o_umlat_upper_str;
LABEL_244:
          findMatchTermExpansion(result, 2u, v135);
          v52 = &utf8_oe_ligature_upper_str;
          goto LABEL_72;
        }

        if (*(*(result + 1224) + 1) != 74)
        {
          return;
        }

LABEL_226:
        v52 = &utf8_ij_ligature_upper_str;
        goto LABEL_72;
      }

      v130 = *(result + 1224);
      v131 = *(v130 + 1);
      if (v131 != 204)
      {
        if (v131 != 69)
        {
          if (v131 != 65)
          {
            return;
          }

LABEL_217:
          v52 = &utf8_a_ring_upper_str;
LABEL_72:
          v60 = result;
          v61 = 2;
LABEL_73:

          findMatchTermExpansion(v60, v61, v52);
          return;
        }

        goto LABEL_255;
      }

      v139 = *(v130 + 2);
      if (v139 != 138)
      {
        if (v139 != 136)
        {
          return;
        }

LABEL_262:
        findMatchTermExpansion(result, 3u, "AE");
        v52 = &utf8_ae_ligature_upper_str;
LABEL_265:
        v60 = result;
        v61 = 3;
        goto LABEL_73;
      }

      goto LABEL_264;
    }

    if (v45 == 34)
    {
      if ((*(*(result + 1240) + 16) & 2) == 0)
      {
        return;
      }

      findMatchTermExpansion(result, 1u, utf8_left_double_quote_str);
      findMatchTermExpansion(result, 1u, utf8_right_double_quote_str);
      findMatchTermExpansion(result, 1u, utf8_right_inverted_double_quote_str);
      v52 = utf8_right_double_prime_str;
      v60 = result;
      v61 = 1;
      goto LABEL_73;
    }

    if (v45 != 39 || (*(*(result + 1240) + 16) & 2) == 0)
    {
      return;
    }

    findMatchTermExpansion(result, 1u, utf8_left_single_quote_str);
    findMatchTermExpansion(result, 1u, utf8_right_single_quote_str);
    findMatchTermExpansion(result, 1u, utf8_right_inverted_quote_str);
    findMatchTermExpansion(result, 1u, utf8_prime_str);
    v125 = result;
    v126 = v3 | (v4 << 32);
    v127 = 96;
LABEL_211:

    findMatchTermChar(v125, v126, v127);
    return;
  }

  if (v45 <= 104)
  {
    if (v45 != 96)
    {
      if (v45 != 97)
      {
        return;
      }

      v128 = *(result + 1224);
      v129 = *(v128 + 1);
      if (v129 != 204)
      {
        if (v129 != 101)
        {
          if (v129 != 97)
          {
            return;
          }

          findMatchTermExpansion(result, 2u, utf8_a_ring_lower_str);
          if ((*(*(result + 1240) + 16) & 1) == 0)
          {
            return;
          }

          goto LABEL_217;
        }

        findMatchTermExpansion(result, 2u, utf8_a_umlat_lower_str);
        findMatchTermExpansion(result, 2u, utf8_ae_ligature_lower_str);
        if ((*(*(result + 1240) + 16) & 1) == 0)
        {
          return;
        }

LABEL_255:
        findMatchTermExpansion(result, 2u, utf8_a_umlat_upper_str);
        v52 = &utf8_ae_ligature_upper_str;
        goto LABEL_72;
      }

      v138 = *(v128 + 2);
      if (v138 != 138)
      {
        if (v138 != 136)
        {
          return;
        }

        findMatchTermExpansion(result, 3u, "ae");
        findMatchTermExpansion(result, 3u, utf8_ae_ligature_lower_str);
        if ((*(*(result + 1240) + 16) & 1) == 0)
        {
          return;
        }

        goto LABEL_262;
      }

      findMatchTermExpansion(result, 3u, "aa");
      if ((*(*(result + 1240) + 16) & 1) == 0)
      {
        return;
      }

LABEL_264:
      v52 = "AA";
      goto LABEL_265;
    }

    if ((*(*(result + 1240) + 16) & 2) == 0)
    {
      return;
    }

    findMatchTermExpansion(result, 1u, utf8_left_single_quote_str);
    findMatchTermExpansion(result, 1u, utf8_right_single_quote_str);
    findMatchTermExpansion(result, 1u, utf8_right_inverted_quote_str);
    findMatchTermExpansion(result, 1u, utf8_prime_str);
    v125 = result;
    v126 = v3 | (v4 << 32);
    v127 = 39;
    goto LABEL_211;
  }

  if (v45 != 105)
  {
    if (v45 != 111)
    {
      if (v45 != 115 || *(*(result + 1224) + 1) != 115)
      {
        return;
      }

      v52 = &utf8_szed_str;
      goto LABEL_72;
    }

    v133 = *(result + 1224);
    v134 = *(v133 + 1);
    if (v134 == 204)
    {
      if (*(v133 + 2) != 136)
      {
        return;
      }

      findMatchTermExpansion(result, 2u, "oe");
      findMatchTermExpansion(result, 2u, utf8_o_slash_lower_str);
      findMatchTermExpansion(result, 2u, utf8_oe_ligature_lower_str);
      if ((*(*(result + 1240) + 16) & 1) == 0)
      {
        return;
      }

      findMatchTermExpansion(result, 2u, "OE");
      v135 = utf8_o_slash_upper_str;
      goto LABEL_244;
    }

    if (v134 != 101)
    {
      return;
    }

    findMatchTermExpansion(result, 2u, utf8_o_slash_lower_str);
    findMatchTermExpansion(result, 2u, utf8_o_umlat_lower_str);
    findMatchTermExpansion(result, 2u, utf8_oe_ligature_lower_str);
    if ((*(*(result + 1240) + 16) & 1) == 0)
    {
      return;
    }

    goto LABEL_230;
  }

  v132 = *(*(result + 1240) + 16);
  if (v132)
  {
    if ((v132 & 2) == 0)
    {
      findMatchTermExpansion(result, 1u, utf8_upper_dotted_i_str);
    }

    findMatchTermExpansion(result, 1u, utf8_lower_dotless_i);
  }

  if (*(*(result + 1224) + 1) == 106)
  {
    findMatchTermExpansion(result, 2u, utf8_ij_ligature_lower_str);
    if (*(*(result + 1240) + 16))
    {
      goto LABEL_226;
    }
  }
}

unint64_t mgetBase(void *a1, unint64_t a2)
{
  if (a2 >> 30)
  {
    v4 = __si_assert_copy_extra_2708(0);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie-Internal.h", 82, "offset<=0x3FFFFFFF", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = 4 * a2;
  if (4 * a2 >= a1[5])
  {
    v8 = __si_assert_copy_extra_2708(a1[14]);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset %ld past bounds %ld %ld", "BurstTrie-Internal.h", 84, "offset<t->bases.size", v10, v2, a1[5], a1[4]);
    free(v9);
    if (__valid_fsp(a1[14]))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return a1[2] + v2;
}

void findAddFlatBucket(uint64_t a1, unint64_t a2, char *a3, size_t a4, char *a5, size_t a6)
{
  v6 = a2;
  v118 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a2) || !a2)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v91 = *__error();
      v92 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = **(a1 + 1240);
        *buf = 134218754;
        v111 = a1;
        v112 = 1024;
        v113 = v6;
        v114 = 2080;
        v115 = a1 + 88;
        v116 = 2080;
        v117 = v93;
        _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "FindTermIDsContext %p empty bucket %x %s %s", buf, 0x26u);
      }

      *__error() = v91;
    }

    return;
  }

  v8 = a6;
  v10 = a4;
  v109 = *(a1 + 1240);
  if ((*(v109 + 16) & 0x3080) == 0)
  {
    goto LABEL_29;
  }

  if (!a3 && !a6)
  {
    v12 = *(a1 + 1140);
    if (v12 >= 1)
    {
      v13 = -2;
      do
      {
        v14 = v13;
        if (*(a1 + 87 + v12) == 1)
        {
          return;
        }

        if (v12 < 2)
        {
          break;
        }

        ++v13;
        --v12;
      }

      while (v14);
    }

    goto LABEL_29;
  }

  if (a6 >= 1)
  {
    v15 = a6 & 0x7FFFFFFF;
    v16 = 3;
    do
    {
      if (a5[v15 - 1] == 1)
      {
        return;
      }

      v17 = v16 - 1;
      if (v15 < 2)
      {
        break;
      }

      --v15;
      --v16;
    }

    while (v16);
    if (!a4)
    {
      goto LABEL_29;
    }

LABEL_20:
    if (a4 >= 1 && v17)
    {
      v18 = a4 & 0x7FFFFFFF;
      v19 = v17 - 1;
      do
      {
        if (a3[v18 - 1] == 1)
        {
          return;
        }

        v38 = v19-- != 0;
        v20 = v38;
        if (v18 < 2)
        {
          break;
        }

        --v18;
      }

      while (v20);
    }

    goto LABEL_29;
  }

  v17 = 3;
  if (a4)
  {
    goto LABEL_20;
  }

LABEL_29:
  if (a2 << 6 >= *(a1 + 80))
  {
    v94 = __si_assert_copy_extra(*(*(a1 + 8) + 376));
    v95 = v94;
    v96 = "";
    if (v94)
    {
      v96 = v94;
    }

    __message_assert("%s:%u: failed assertion '%s' %s next: 0x%llx, max: 0x%llx", "FindTermIDs.c", 394, "flatStoreGetOffset(child) < ctx->flat_max", v96, v6 << 6, *(a1 + 80));
    free(v95);
    if (!__valid_fsp(*(*(a1 + 8) + 376)))
    {
      goto LABEL_131;
    }

    goto LABEL_124;
  }

  v21 = *(a1 + 1144);
  v22 = *(a1 + 1192);
  if (!v22)
  {
    UInt32TrieCreate(0x100u, (a1 + 1208));
    v22 = v23;
    *(a1 + 1192) = v23;
  }

  __src = a5;
  v107 = v10;
  v108 = a3;
  if (*(a1 + 1204) == v6)
  {
    v24 = *(a1 + 1200);
    v25 = v109;
    goto LABEL_80;
  }

  v26 = 0;
  *buf = 0;
  v27 = v6;
  do
  {
    buf[v26++] = v27;
    v28 = v27 > 0xFF;
    v27 >>= 8;
  }

  while (v28);
  if ((v26 - 5) < 0xFCu)
  {
LABEL_73:
    v65 = __si_assert_copy_extra(0);
    __message_assert("%s:%u: failed assertion '%s' %s invalid key_len %d");
    goto LABEL_74;
  }

  v103 = v21;
  v104 = v6;
  v105 = v8;
  LODWORD(v8) = 0;
  v29 = 0;
  v30 = &buf[v26 - 1];
  v102 = (*(a1 + 1184) + 1);
  v31 = buf;
  while (1)
  {
    v32 = *v31;
    v33 = (v22 + 4);
    if ((*&v22[((v32 >> 3) & 0x1C) + 4] >> v32))
    {
      v34 = 0;
      v35 = v32 >> 6;
      if ((v32 >> 6) > 1)
      {
        if (v35 != 2)
        {
          v40 = vcnt_s8(*(v22 + 20));
          v40.i16[0] = vaddlv_u8(v40);
          v34 = v40.i32[0];
        }

        v41 = vcnt_s8(*(v22 + 12));
        v41.i16[0] = vaddlv_u8(v41);
        v34 += v41.i32[0];
      }

      else
      {
        v36 = v32 >> 6;
        if (!v35)
        {
LABEL_51:
          v43 = vcnt_s8((*&v33[v35] & ~(-1 << v32)));
          v43.i16[0] = vaddlv_u8(v43);
          v8 = (v36 + v43.i32[0]);
          v44 = *&v22[8 * v8 + 40];
          v29 = v22;
          if (v44)
          {
            goto LABEL_69;
          }

          goto LABEL_52;
        }
      }

      v42 = vcnt_s8(*v33);
      v42.i16[0] = vaddlv_u8(v42);
      LODWORD(v36) = v34 + v42.i32[0];
      goto LABEL_51;
    }

    v37 = v22[37];
    v38 = v37 != 255 && v22[36] + 1 >= v37;
    if (v38)
    {
      UInt32TrieCreate(2 * v37, (a1 + 1208));
      v39 = v45;
      v45[36] = v22[36];
      *v45 = *v22;
      v46 = *v33->i8;
      *(v45 + 20) = *(v22 + 20);
      *(v45 + 4) = v46;
      memcpy(v45 + 40, v22 + 40, 8 * v22[36]);
      free(v22);
      if (v29)
      {
        *&v29[8 * v8 + 40] = v39;
      }
    }

    else
    {
      v39 = v22;
    }

    v47 = 0;
    v48 = *v31;
    v49 = v39[36];
    v50 = (v39 + 4);
    *&v39[((v48 >> 3) & 0x1C) + 4] |= 1 << v48;
    v51 = v48 >> 6;
    if ((v48 >> 6) > 1)
    {
      if (v51 != 2)
      {
        v53 = vcnt_s8(*(v39 + 20));
        v53.i16[0] = vaddlv_u8(v53);
        v47 = v53.i32[0];
      }

      v54 = vcnt_s8(*(v39 + 12));
      v54.i16[0] = vaddlv_u8(v54);
      v47 += v54.i32[0];
LABEL_62:
      v55 = vcnt_s8(*v50);
      v55.i16[0] = vaddlv_u8(v55);
      LODWORD(v52) = v47 + v55.i32[0];
      goto LABEL_63;
    }

    v52 = v48 >> 6;
    if (v51)
    {
      goto LABEL_62;
    }

LABEL_63:
    v56 = vcnt_s8((*&v50[v51] & ~(-1 << v48)));
    v56.i16[0] = vaddlv_u8(v56);
    v8 = (v52 + v56.i32[0]);
    if (v8 < v49)
    {
      v57 = &v39[8 * v49 + 40];
      v58 = v49;
      v59 = v57;
      do
      {
        --v58;
        v60 = *(v59 - 1);
        v59 -= 8;
        *v57 = v60;
        v57 = v59;
      }

      while (v58 > v8);
    }

    v61 = v49 + 1;
    v39[36] = v61;
    if (v39[37] < v61)
    {
      v65 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s size: %d count:%d");
LABEL_74:
      free(v65);
      if (__valid_fs(-1))
      {
        v66 = 2989;
      }

      else
      {
        v66 = 3072;
      }

      *v66 = -559038737;
      abort();
    }

    if (v26 == 1)
    {
      LODWORD(v62) = v102;
      *&v39[8 * v8 + 40] = (2 * v102) | 1;
      goto LABEL_79;
    }

    UInt32TrieCreate(1u, (a1 + 1208));
    *&v39[8 * v8 + 40] = v44;
    v29 = v39;
    if (v44)
    {
LABEL_69:
      v62 = v44 >> 1;
      if (v26 == 1)
      {
        goto LABEL_79;
      }

      UInt32TrieCreate(1u, (a1 + 1208));
      v22 = v63;
      *v63 = v62;
      *&v29[8 * v8 + 40] = v63;
      goto LABEL_71;
    }

LABEL_52:
    v22 = v44;
    if (v26 == 1)
    {
      break;
    }

LABEL_71:
    LOBYTE(v26) = v26 - 1;
    if (v31++ == v30)
    {
      goto LABEL_73;
    }
  }

  LODWORD(v62) = *v44;
  if (!*v44)
  {
    LODWORD(v62) = v102;
    *v44 = v102;
  }

LABEL_79:
  v24 = v62 - 1;
  LODWORD(v6) = v104;
  v8 = v105;
  *(a1 + 1204) = v104;
  *(a1 + 1200) = v62 - 1;
  LODWORD(v10) = v107;
  v25 = v109;
  v21 = v103;
LABEL_80:
  v67 = v25 - v21;
  v68 = (v25 - v21) >> 6;
  if (v24 != *(a1 + 1184))
  {
    v74 = *(*(a1 + 40) + 8 * v24);
    v75 = 12;
    if ((*v74 & 3) == 0)
    {
      v75 = 8;
    }

    v76 = v74 + v74[1] + v75 + (v68 >> 3);
    v76[1] |= 1 << ((v67 >> 6) & 7);
    if (*(a1 + 1288) == 1)
    {
      v77 = *(a1 + 1272);
      v78 = v77 ? automaton_state_score(*v77, v77[1]) : 0.0;
      v89 = *(*(a1 + 40) + 8 * v24);
      if ((*v89 & 3) != 0)
      {
        v90 = *(v89 + 8);
        if (v90 != 0.0 && (v78 == 0.0 || v90 < v78))
        {
          *(v89 + 8) = v78;
        }
      }
    }

    return;
  }

  if (v24 != *(a1 + 1180))
  {
    goto LABEL_82;
  }

  realloc = query_realloc(*(a1 + 40), 16 * v24);
  if (!realloc)
  {
    v99 = __si_assert_copy_extra(0);
    v100 = v99;
    v101 = "";
    if (v99)
    {
      v101 = v99;
    }

    __message_assert("%s:%u: failed assertion '%s' %s grow buckets error, bucket count:%d", "FindTermIDs.c", 445, "buckets", v101, *(a1 + 1184));
    free(v100);
    if (!__valid_fs(-1))
    {
LABEL_131:
      v97 = 3072;
LABEL_132:
      *v97 = -559038737;
      abort();
    }

LABEL_124:
    v97 = 2989;
    goto LABEL_132;
  }

  *(a1 + 40) = realloc;
  *(a1 + 1180) *= 2;
LABEL_82:
  v69 = *(a1 + 1152) >> 3;
  v70 = v69 + 9;
  if (*(a1 + 1288) == 1)
  {
    v71 = *(a1 + 1272);
    v72 = v71 != 0;
    v73 = v69 + 13;
    if (v71)
    {
      v70 = v73;
    }
  }

  else
  {
    v72 = 0;
  }

  if (v108 | v8)
  {
    v79 = v8 + v10;
  }

  else
  {
    v79 = *(a1 + 1140);
  }

  v80 = v70 + v79 + 1;
  *(*(a1 + 1208) + 8) = (*(*(a1 + 1208) + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = *(a1 + 1208);
  v82 = *(v81 + 8);
  if (v82 + v80 + 8 >= *(v81 + 16))
  {
    v82 = slab_new((a1 + 1208), v80, 0xF8u);
  }

  else
  {
    *(v81 + 8) = v82 + v80;
  }

  bzero(v82, v80);
  v83 = 8 * v6;
  *v82 = 8 * v6;
  if (v72)
  {
    v83 |= 1u;
    *v82 = v83;
    *(v82 + 2) = automaton_state_score(**(a1 + 1272), *(*(a1 + 1272) + 8));
  }

  v84 = 12;
  if ((v83 & 3) == 0)
  {
    v84 = 8;
  }

  v85 = v82 + v84;
  if (v108 | v8)
  {
    memcpy(v82 + v84, v108, v107);
    memcpy(&v85[v107], __src, v8);
    v86 = v79;
  }

  else
  {
    v86 = *(a1 + 1140);
    memcpy(v82 + v84, (a1 + 88), v86);
    v79 = v86;
  }

  v85[v86] = 0;
  *(v82 + 1) = v79;
  v87 = 12;
  if ((*v82 & 3) == 0)
  {
    v87 = 8;
  }

  *(v82 + v86 + v87 + (v68 >> 3) + 1) |= 1 << ((v67 >> 6) & 7);
  v88 = *(a1 + 1184);
  *(a1 + 1184) = v88 + 1;
  *(*(a1 + 40) + 8 * v88) = v82;
}

uint64_t matche(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, unsigned __int8 **a5)
{
  v5 = a2;
  v6 = a1;
  v216 = 0;
  v215 = 0;
  v7 = *a1;
  v211 = a3;
  if (!*a1)
  {
    LOWORD(v21) = 0;
    LOWORD(v20) = 0;
    v19 = 0;
    v196 = 0;
    v23 = *a2;
    v24 = a3 & 2;
    v25 = 1;
    v22 = a2;
LABEL_465:
    if (v24 && v23 >= 0xC0)
    {
      v131 = a4;
      v132 = v19;
      v133 = v20;
      while (1)
      {
        v134 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v23 >> 4];
        __key[0] = v133;
        if (utf8_decodestr(v22, v134, __key, &v215, 2, &v216, 0))
        {
          break;
        }

        v133 = __key[0];
        v22 += v134;
        if (__key[0] < 0x300u)
        {
          goto LABEL_476;
        }

        v135 = __CFUniCharCombiningBitmap[__key[0] >> 8];
        if (v135 != 255 && (!__CFUniCharCombiningBitmap[__key[0] >> 8] || ((__CFUniCharCombiningBitmap[32 * v135 + 224 + (LOBYTE(__key[0]) >> 3)] >> (__key[0] & 7)) & 1) == 0))
        {
          goto LABEL_476;
        }

        v23 = *v22;
      }

      v134 = 0;
      v196 = 1;
LABEL_476:
      v22 -= v134;
      v23 = *v22;
      v19 = v132;
      a4 = v131;
    }

    goto LABEL_477;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v196 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOWORD(v20) = 0;
  LOWORD(v21) = 0;
  v190 = a3 & 2;
  v192 = v6;
  v22 = v5;
  v194 = a4;
  v195 = v5;
  while (2)
  {
    v27 = *v22;
    if (!*v22)
    {
      goto LABEL_454;
    }

    v209 = v16;
    v28 = v7 - 34;
    v29 = (v7 - 34) > 0x3Eu;
    if (v5[v11])
    {
      ++v11;
    }

    else
    {
      if (v10 > 2 * v11)
      {
        return 0;
      }

      ++v10;
    }

    if (v7 != 92)
    {
      if (v7 == 42)
      {
        while (v7 == 42)
        {
          v30 = *++v6;
          v7 = v30;
        }

        if (!v7)
        {
          if (v27 < 0xC0)
          {
            v121 = v19;
            if (!a4)
            {
              return 1;
            }
          }

          else
          {
            v120 = a4;
            v121 = v19;
            v122 = a3;
            v123 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v27 >> 4];
            __key[0] = v20;
            v124 = utf8_decodestr(v22, v123, __key, &v215, 2, &v216, 0);
            LOWORD(v20) = __key[0];
            if (v124)
            {
              v196 = 1;
              LOBYTE(a3) = v122;
              v19 = v121;
              a4 = v120;
              goto LABEL_454;
            }

            if (__key[0] - 12441 < 2)
            {
              return 0;
            }

            if (v190)
            {
              v126 = 1;
            }

            else
            {
              v126 = __key[0] - 768 >= 0x70;
            }

            v127 = !v126;
            result = v127 ^ 1u;
            if (!v126)
            {
              return result;
            }

            a4 = v120;
            if (!v120)
            {
              return result;
            }
          }

          if (v121)
          {
            *a4 = v121 - v5;
            v125 = (v22 - v121);
            goto LABEL_577;
          }

          *a5 = 0;
          *a4 = 0;
          return 1;
        }

        if (v7 == 92)
        {
          v26 = (v6 + 1);
          if (v6[1] == v27)
          {
            v7 = *v22;
LABEL_25:
            v6 = v18;
            goto LABEL_26;
          }

          v209 = 0;
          v7 = 92;
        }

        else
        {
          v209 = 0;
        }

        v17 = v6;
      }

      v26 = v6;
      goto LABEL_25;
    }

    v26 = (v6 + 1);
    v7 = v6[1];
    ++v15;
    if (!v7)
    {
      v6 = v18;
      goto LABEL_157;
    }

LABEL_26:
    if (v7 >= 0xC0u)
    {
      if ((v7 + 29) < 0xCu)
      {
LABEL_28:
        v13 = 1;
        goto LABEL_44;
      }

      if (v7 == 239)
      {
        if (v26[1] < 0xACu)
        {
          goto LABEL_28;
        }
      }

      else if (v7 == 226 && v26[1] > 0xB9u)
      {
        goto LABEL_28;
      }

      v13 = 0;
LABEL_44:
      v8 = v26;
      if (v27 < 0xC0)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    if ((v7 & 0x80u) == 0)
    {
      v13 = 0;
      v8 = 0;
    }

    if (v27 < 0xC0)
    {
LABEL_45:
      if ((v27 & 0x80u) == 0)
      {
        v12 = 0;
        v9 = 0;
      }

      if (v27 == v7)
      {
LABEL_48:
        LOWORD(v21) = 0;
        LOWORD(v20) = 0;
        v31 = 0;
        v14 = 0;
        goto LABEL_169;
      }

      goto LABEL_52;
    }

LABEL_32:
    if ((v27 + 29) < 0xCu)
    {
LABEL_33:
      v12 = 1;
      goto LABEL_51;
    }

    if (v27 == 239)
    {
      if (v22[1] < 0xACu)
      {
        goto LABEL_33;
      }
    }

    else if (v27 == 226 && v22[1] > 0xB9u)
    {
      goto LABEL_33;
    }

    v12 = 0;
LABEL_51:
    v9 = v22;
    if (v27 == v7)
    {
      goto LABEL_48;
    }

LABEL_52:
    v204 = v15;
    v206 = v19;
    v208 = v17;
    v197 = v10;
    v198 = v11;
    v21 = 0;
    v20 = 0u;
    v32 = 0;
    v14 = 0;
    v33 = ((v13 | v12) == 0) & a3;
    v193 = v26 + 1;
    v34 = (v29 | (0x3FFFFFFFFFFFFFDEuLL >> v28)) & ((v8 | v9) == 0);
    v200 = v12;
    v202 = v13;
    if (v13)
    {
      v34 = 1;
    }

    v75 = v12 == 0;
    v35 = (v8 | v9) == 0;
    if (!v75)
    {
      v34 = 1;
    }

    v213 = v34;
    v212 = v8;
    while (1)
    {
      if (!v33)
      {
        goto LABEL_117;
      }

      if (v35)
      {
        v37 = *v22;
        if ((v37 & 0x8000000000000000) == 0)
        {
          v38 = *v26;
          if ((v38 & 0x8000000000000000) == 0 && tolower_map[v38] == tolower_map[v37])
          {
            goto LABEL_167;
          }
        }

        if (v26 == v208 && v37 >= 2)
        {
          v39 = v22 + 1;
          while (1)
          {
            v40 = *v39;
            if (v40 < 0)
            {
              break;
            }

            if (v40 < 2)
            {
              v13 = 0;
              v12 = 0;
              v9 = 0;
              v8 = 0;
              a4 = v194;
              v5 = v195;
              v19 = v206;
              v17 = v208;
              a3 = v211;
              v10 = v197;
              v11 = v198;
              v15 = v204;
              goto LABEL_157;
            }

            ++v39;
            if (tolower_map[*v26] == tolower_map[v40])
            {
              v31 = v32;
              v22 = v39 - 1;
LABEL_168:
              a4 = v194;
              v5 = v195;
              v19 = v206;
              v17 = v208;
              a3 = v211;
              v10 = v197;
              v11 = v198;
              v15 = v204;
              v12 = v200;
              v13 = v202;
              goto LABEL_169;
            }
          }

          v22 = v39;
        }

        goto LABEL_117;
      }

      if (v21)
      {
        if (!v20)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v8)
        {
          v32 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v8 >> 4];
          __key[0] = 0;
          v44 = utf8_decodestr(v8, v32, __key, &v215, 2, &v216, 0);
          v21 = __key[0];
          if (v44)
          {
LABEL_452:
            v196 = 1;
            goto LABEL_453;
          }

          v8 = v212;
          if (v20)
          {
            goto LABEL_84;
          }

LABEL_73:
          if (v9)
          {
            v41 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v9 >> 4];
            __key[0] = 0;
            v42 = v41;
            v43 = utf8_decodestr(v9, v41, __key, &v215, 2, &v216, 0);
            v20 = __key[0];
            if (v43)
            {
              goto LABEL_452;
            }

            v14 = v42;
            v8 = v212;
          }

          else
          {
            v20 = *v22;
          }

          goto LABEL_84;
        }

        v21 = *v26;
        if (!v20)
        {
          goto LABEL_73;
        }
      }

LABEL_84:
      if (v20 > 0x7Fu)
      {
        if ((v20 + 223) < 0x3Au || v20 < 0x587u || (v46 = v20, (v20 - 7680) <= 0x6E9u))
        {
          *__key = v20;
          v47 = bsearch(__key, &case_mapping_table, 0x57AuLL, 4uLL, case_cmp);
          if (v47)
          {
            v46 = v47[1];
          }

          else
          {
            v46 = v20;
          }

          v8 = v212;
        }
      }

      else
      {
        v45 = v20 & 0x7F;
        if ((v20 - 97) > 0x19u)
        {
          v46 = tolower_map[v45];
        }

        else
        {
          v46 = toupper_map[v45];
        }
      }

      if (v21 == v46)
      {
        goto LABEL_167;
      }

      if (v21 > 0x7Fu)
      {
        if ((v21 + 223) < 0x3Au || v21 < 0x587u || (v49 = v21, (v21 - 7680) <= 0x6E9u))
        {
          *__key = v21;
          v50 = bsearch(__key, &case_mapping_table, 0x57AuLL, 4uLL, case_cmp);
          if (v50)
          {
            v49 = v50[1];
          }

          else
          {
            v49 = v21;
          }

          v8 = v212;
        }
      }

      else
      {
        v48 = v21 & 0x7F;
        v49 = (v21 - 97) > 0x19u ? tolower_map[v48] : toupper_map[v48];
      }

      if (v49 == v46 || v20 == v49)
      {
LABEL_167:
        v31 = v32;
        goto LABEL_168;
      }

      if (v21 == 223)
      {
        if (v20 == 115)
        {
          if (v22[1] == 115)
          {
            v31 = v32;
            ++v22;
            LOWORD(v20) = 115;
            LOWORD(v21) = 223;
            goto LABEL_168;
          }

          v20 = 0x73u;
        }

        v21 = 223;
      }

      else if (v21 == 115 && v20 == 223)
      {
        v20 = 0xDFu;
        v21 = 115;
        if (*v193 == 115)
        {
          v31 = v32;
          ++v26;
          goto LABEL_168;
        }
      }

LABEL_117:
      if (v213)
      {
        v17 = v208;
        if (v208)
        {
          v16 = 0;
          v19 = v206;
          v58 = &v208[v204] - v26;
          if (v26 <= v208)
          {
            v58 = 0;
          }

          v22 += v58;
          v26 = v208;
          v15 = 0;
          a4 = v194;
          v5 = v195;
          a3 = v211;
          v10 = v197;
          v11 = v198;
          v12 = v200;
          v13 = v202;
          goto LABEL_187;
        }

        a4 = v194;
        v5 = v195;
        v15 = v204;
        v19 = v206;
        if (v194)
        {
          v19 = 0;
        }

        a3 = v211;
        v10 = v197;
        v11 = v198;
        v12 = v200;
        v13 = v202;
        if ((v211 & 4) != 0)
        {
          goto LABEL_208;
        }

LABEL_461:
        v129 = *v26;
        v6 = v26;
        goto LABEL_462;
      }

      if (v21)
      {
        v51 = v21;
        if (v20)
        {
          goto LABEL_130;
        }
      }

      else if (v8)
      {
        v32 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v8 >> 4];
        __key[0] = 0;
        v52 = utf8_decodestr(v8, v32, __key, &v215, 2, &v216, 0);
        v51 = __key[0];
        if (v52)
        {
          goto LABEL_439;
        }

        v8 = v212;
        if (v20)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v51 = *v26;
        if (v20)
        {
          goto LABEL_130;
        }
      }

      if (v9)
      {
        v53 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v9 >> 4];
        __key[0] = 0;
        v54 = utf8_decodestr(v9, v53, __key, &v215, 2, &v216, 0);
        v20 = __key[0];
        if (!v54)
        {
          v14 = v53;
          v8 = v212;
          goto LABEL_130;
        }

LABEL_439:
        v196 = 1;
        LOWORD(v21) = v51;
LABEL_453:
        v6 = v26;
        a4 = v194;
        v5 = v195;
        v19 = v206;
        LOBYTE(a3) = v211;
        goto LABEL_454;
      }

      v20 = *v22;
LABEL_130:
      v55 = v51 - 65281;
      v56 = v51 == 12288 ? 32 : v51;
      v21 = v55 >= 0x5E ? v56 : v51 - 65248;
      if (v20 - 65281 > 0x5D)
      {
        break;
      }

      v36 = v20 - 65248;
LABEL_58:
      v20 = v36;
      if (v21 == v36)
      {
        v31 = v32;
        LOWORD(v20) = v21;
        goto LABEL_168;
      }
    }

    if (v20 == 12288)
    {
      v36 = 32;
    }

    else
    {
      v36 = v20;
    }

    if (v51 == 12288 || v55 < 0x5E || v20 == 12288)
    {
      goto LABEL_58;
    }

    v31 = v32;
    if ((v51 | 0x20) == 0xF8)
    {
      a4 = v194;
      v5 = v195;
      v19 = v206;
      v17 = v208;
      a3 = v211;
      v10 = v197;
      v11 = v198;
      v15 = v204;
      v12 = v200;
      v13 = v202;
      if ((v20 & 0xFFFFFFDF) == 0x4F)
      {
        if (v211)
        {
          if (v56 == 216)
          {
            v21 = 248;
          }

          else
          {
            v21 = v56;
          }

          v20 = tolower_map[v20];
        }

        v57 = v22[1];
        if (v57 == 101 || v57 == 204 && v22[2] == 136)
        {
          if (v57 == 101)
          {
            ++v22;
          }

          goto LABEL_169;
        }
      }
    }

    else
    {
      a4 = v194;
      v5 = v195;
      v19 = v206;
      v17 = v208;
      a3 = v211;
      v10 = v197;
      v11 = v198;
      v15 = v204;
      v12 = v200;
      v13 = v202;
    }

    if ((v20 | 0x20) == 0xF8 && (v21 & 0xFFFFFFDF) == 0x4F)
    {
      if (a3)
      {
        if (v20 == 216)
        {
          v20 = 248;
        }

        v21 = tolower_map[v21];
      }

      v8 = v212;
      v88 = *v193;
      if (v88 == 101 || v88 == 204 && v26[2] == 136)
      {
        if (v88 == 101)
        {
          ++v26;
        }

        goto LABEL_169;
      }
    }

    v89 = v22 + 1;
    v90 = v22 + 2;
    v91 = &byte_1C2BFAF04;
    v92 = 6;
LABEL_265:
    v93 = *(v91 - 2);
    if (v21 == v93)
    {
      v94 = *(v91 - 2);
      if (a3)
      {
        if (v20 == v94 || tolower_map[v20] == tolower_map[v94])
        {
          v95 = *v89;
          if (v95 == *(v91 - 1) || tolower_map[*v89] == tolower_map[*(v91 - 1)])
          {
LABEL_304:
            ++v22;
            goto LABEL_343;
          }

          if (v95 == 204 && *v91 && *v90 == 136)
          {
            goto LABEL_342;
          }
        }

        if (v20 == v21)
        {
LABEL_283:
          if (v21 == v94 || tolower_map[v21] == tolower_map[v94])
          {
            v97 = *v193;
            if (v97 == *(v91 - 1) || tolower_map[*v193] == tolower_map[*(v91 - 1)])
            {
LABEL_303:
              ++v26;
              goto LABEL_343;
            }

LABEL_290:
            if (v97 == 204 && *v91 && v26[2] == 136)
            {
              v26 += 2;
              goto LABEL_343;
            }
          }
        }

        goto LABEL_264;
      }

      if (v20 == v94)
      {
        v96 = *v89;
        if (v96 == *(v91 - 1))
        {
          goto LABEL_304;
        }

        if (v96 == 204 && *v91 && *v90 == 136)
        {
LABEL_342:
          v22 += 2;
LABEL_343:
          v8 = v212;
          v19 = v206;
LABEL_169:
          if (a4)
          {
            if (!v19)
            {
              v19 = v22;
              if (*v22 < 0)
              {
                v59 = *v22;
                v60 = v59 >> 4;
                v61 = utf8_byte_length(unsigned char)::utf8_len_table[v59 >> 4];
                v62 = v59 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v61];
                if ((~v60 & 0xC) != 0)
                {
                  goto LABEL_179;
                }

                v61 = v61 <= 2 ? 2 : v61;
                  ;
                }

                if (v62 < 0x10000)
                {
LABEL_179:
                  if ((v62 - 12441) >= 4 && (v62 - 65438) >= 2)
                  {
                    v19 = v22;
                    if (v62 < 0x300u)
                    {
                      goto LABEL_184;
                    }

                    v87 = __CFUniCharCombiningBitmap[BYTE1(v62)];
                    if (v87 != 255)
                    {
                      v19 = v22;
                      if (!__CFUniCharCombiningBitmap[BYTE1(v62)])
                      {
                        goto LABEL_184;
                      }

                      v19 = v22;
                      if (((__CFUniCharCombiningBitmap[32 * v87 + 224 + (v62 >> 3)] >> (v62 & 7)) & 1) == 0)
                      {
                        goto LABEL_184;
                      }
                    }
                  }

LABEL_183:
                  v19 = 0;
                  goto LABEL_184;
                }

                v67 = v62 - 917760;
                v68 = v62 - 127995;
                v69 = v67 >= 0xF0 && v68 > 4;
                v19 = v22;
                if (!v69)
                {
                  goto LABEL_183;
                }
              }
            }
          }

LABEL_184:
          if (v31)
          {
            v16 = &v8[v31] - v26;
          }

          else
          {
            v16 = 1;
          }

LABEL_187:
          v65 = &v9[v14] - v22;
          if (v14)
          {
            v9 = 0;
          }

          else
          {
            v65 = 1;
          }

          if (v16 && v17 && !v26[v16])
          {
            v66 = v22[v65];
            if ((a3 & 4) != 0)
            {
              if ((v66 & 0x80) == 0 && separator_map[v66])
              {
                goto LABEL_5;
              }
            }

            else if (v66 <= 1)
            {
              goto LABEL_5;
            }

            v16 = 0;
            v15 = 0;
            v26 = v17;
          }

LABEL_5:
          v18 = v6;
          v6 = &v26[v16];
          v22 += v65;
          v7 = v26[v16];
          if (!v7)
          {
            goto LABEL_454;
          }

          continue;
        }
      }
    }

    break;
  }

  if (v20 == v93)
  {
    LODWORD(v94) = *(v91 - 2);
    if (a3)
    {
      goto LABEL_283;
    }

    if (v21 == v94)
    {
      v97 = *v193;
      if (v97 == *(v91 - 1))
      {
        goto LABEL_303;
      }

      goto LABEL_290;
    }
  }

LABEL_264:
  v91 += 6;
  if (--v92)
  {
    goto LABEL_265;
  }

  v19 = v206;
  if (!v190)
  {
    v13 = 0;
    v12 = 0;
    v8 = v212;
    goto LABEL_157;
  }

  v8 = v212;
  if (v21 != 778)
  {
    if (v20 == 778)
    {
      v99 = v21 & 0xFFFFFFDF;
      LOWORD(v20) = 778;
      goto LABEL_337;
    }

    if (v21 - 8220 <= 0x17 && ((1 << (v21 - 28)) & 0x80000B) != 0)
    {
      if (v20 == 34)
      {
        LOWORD(v20) = 34;
        goto LABEL_169;
      }

      goto LABEL_372;
    }

    v106 = v21 == 8219 || v21 >> 1 == 4108 || v21 == 8242 || v21 == 96;
    if (v20 == 39 && v106)
    {
      LOWORD(v20) = 39;
      goto LABEL_169;
    }

    if (v20 - 8220 <= 0x17 && ((1 << (v20 - 28)) & 0x80000B) != 0)
    {
      if (v21 == 34)
      {
        LOWORD(v21) = 34;
        goto LABEL_169;
      }

      goto LABEL_372;
    }

    v110 = v20 == 8219 || v20 >> 1 == 4108 || v20 == 8242 || v20 == 96;
    if (v21 == 39 && v110)
    {
      LOWORD(v21) = 39;
LABEL_388:
      a4 = v194;
      v5 = v195;
      v19 = v206;
      v17 = v208;
      a3 = v211;
      v10 = v197;
      v11 = v198;
      v15 = v204;
      v12 = v200;
      v13 = v202;
      v8 = v212;
      goto LABEL_169;
    }

    if (v21 == 776 && v22 > v195)
    {
      v111 = *(v22 - 1);
      v112 = tolower_map[v111];
      if ((v112 - 97) <= 0x14 && ((1 << (v112 - 97)) & 0x104001) != 0)
      {
        v113 = tolower_map[*v22];
        if (v113 == 101)
        {
          if ((v211 & 1) != 0 || *(v26 - 1) == v111)
          {
            LOWORD(v21) = 776;
            goto LABEL_388;
          }
        }

        else if (v112 == 97 && v113 == 97)
        {
          v13 = 0;
          v12 = 0;
          LOWORD(v21) = 776;
          a4 = v194;
          v5 = v195;
          v19 = v206;
          v17 = v208;
          a3 = v211;
          v10 = v197;
          v11 = v198;
          v15 = v204;
          v8 = v212;
          goto LABEL_157;
        }
      }
    }

    else
    {
      if (v26 > v192 && v20 == 776)
      {
        v114 = *(v26 - 1);
        v115 = tolower_map[v114];
        if ((v115 - 97) <= 0x14 && ((1 << (v115 - 97)) & 0x104001) != 0)
        {
          v116 = tolower_map[*v26];
          if (v116 == 101)
          {
            if ((v211 & 1) != 0 || v114 == *(v22 - 1))
            {
              LOWORD(v20) = 776;
              a4 = v194;
              v5 = v195;
              v19 = v206;
              v17 = v208;
              a3 = v211;
              v10 = v197;
              v11 = v198;
              v15 = v204;
              v12 = v200;
              v13 = v202;
              v8 = v212;
              goto LABEL_169;
            }
          }

          else if (v115 == 97 && v116 == 97)
          {
            v13 = 0;
            v12 = 0;
            LOWORD(v20) = 776;
LABEL_430:
            a4 = v194;
            v5 = v195;
            v19 = v206;
            v17 = v208;
            a3 = v211;
            v10 = v197;
            v11 = v198;
            v15 = v204;
            v8 = v212;
            goto LABEL_157;
          }
        }
      }

      if (v21 < 0x80)
      {
        goto LABEL_417;
      }
    }

    if (unicode_combinable(v21))
    {
      if (v208)
      {
        v117 = v31;
      }

      else
      {
        v117 = 0;
      }

      v204 += v117;
      v210 = &v212[v31] - v26;
      v212 = 0;
LABEL_418:
      if (v20 >= 0x80 && unicode_combinable(v20))
      {
        v118 = &v9[v14];
        v9 = 0;
        v65 = v118 - v22;
      }

      else
      {
        v65 = 0;
      }

      if (v210)
      {
        v13 = 0;
        v12 = 0;
        a4 = v194;
        v5 = v195;
        v19 = v206;
        v17 = v208;
        a3 = v211;
        v10 = v197;
        v11 = v198;
        v15 = v204;
        v8 = v212;
        v16 = v210;
        goto LABEL_5;
      }

      if (v65)
      {
        if (v204)
        {
          v16 = 0;
          v13 = 0;
          v12 = 0;
          v119 = v26 - 1 == v6;
          if (v26 - 1 == v6)
          {
            --v26;
          }

          v15 = v204 - v119;
        }

        else
        {
          v16 = 0;
          v15 = 0;
          v13 = 0;
          v12 = 0;
        }

        a4 = v194;
        v5 = v195;
        v19 = v206;
        v17 = v208;
        a3 = v211;
        v10 = v197;
        v11 = v198;
        v8 = v212;
        goto LABEL_5;
      }

      v209 = 0;
      v13 = 0;
      v12 = 0;
      goto LABEL_430;
    }

LABEL_417:
    v210 = 0;
    goto LABEL_418;
  }

  v99 = v20 & 0xFFFFFFDF;
  LOWORD(v21) = 778;
LABEL_337:
  if (v99 == 65)
  {
    goto LABEL_169;
  }

LABEL_372:
  v13 = 0;
  v12 = 0;
LABEL_157:
  if (a4)
  {
    v19 = 0;
  }

  if ((a3 & 4) == 0)
  {
    if (v17)
    {
      v15 = 0;
      v26 = v17;
      v16 = v209;
      goto LABEL_187;
    }

    goto LABEL_461;
  }

LABEL_208:
  if ((a3 & 8) == 0)
  {
    v70 = *v22;
    if (*v192 - 48 <= 9 && v70 - 48 <= 9)
    {
      v71 = v22;
      do
      {
        v73 = *++v71;
        v72 = v73;
      }

      while (v73 - 48 < 0xA);
      v74 = 0;
      goto LABEL_315;
    }

    v205 = v15;
    v201 = v12;
    v203 = v13;
    v214 = v26;
    v207 = v19;
    if ((v70 & 0x80) == 0)
    {
      v74 = 0;
      if (v70 < 2 || separator_map[*v22])
      {
        v71 = v22;
        goto LABEL_314;
      }

      v14 = 1;
      LOWORD(v20) = *v22;
LABEL_218:
      v71 = v22;
      while (1)
      {
        v71 += v14;
        v70 = *v71;
        if (*v71 < 0)
        {
          if (v70 != 239)
          {
            if (v70 != 227)
            {
              goto LABEL_311;
            }

LABEL_299:
            if (v71[1] == 128 && v71[2] == 128)
            {
LABEL_301:
              v74 = 0;
              goto LABEL_314;
            }

            v98 = 0xEu;
LABEL_312:
            v71 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[v98];
LABEL_313:
            v74 = 1;
LABEL_314:
            v72 = *v71;
LABEL_315:
            v16 = 0;
            if (v72 < 2 || (v74 & 1) != 0)
            {
              v65 = 0;
            }

            else
            {
              if (v72 == 227)
              {
                v16 = 0;
                v65 = 0;
                v8 = 0;
                v22 = v71 + 3;
                goto LABEL_319;
              }

              v100 = *v192;
              if (v72 == v100 && v100 != 92)
              {
LABEL_324:
                v101 = v26 - (v15 + v192);
                v16 = 0;
                v102 = &v71[-(v101 & ~(v101 >> 31)) + 1];
                v69 = v101 < 2;
                v65 = 0;
                v8 = 0;
                if (v69)
                {
                  v22 = v71;
                }

                else
                {
                  v22 = v102;
                }

                v9 = 0;
                v26 = v192;
                goto LABEL_5;
              }

              if (v100 == 92)
              {
                if (v72 == v192[1])
                {
                  goto LABEL_324;
                }

                v16 = 0;
                v8 = 0;
                v65 = 1;
                v22 = v71;
LABEL_319:
                v9 = 0;
                v26 = v192;
                goto LABEL_5;
              }

              v16 = 0;
              if (v71 != v22 && v100 < 0)
              {
                goto LABEL_324;
              }

              v65 = 1;
            }

            v8 = 0;
            v22 = v71;
            v9 = 0;
            v26 = v192;
            goto LABEL_5;
          }

          v76 = v71[1];
          if (v76 != 188 && (v76 != 189 || v71[2] > 0x9Fu))
          {
            v70 = 239;
            v19 = v207;
            goto LABEL_311;
          }

          v77 = v5;
          v78 = v17;
          v79 = a4;
          v80 = v11;
          v81 = v10;
          __key[0] = v20;
          v82 = utf8_decodestr(v71, 3uLL, __key, &v215, 2, &v216, 0);
          LOWORD(v20) = __key[0];
          if (v82)
          {
            v74 = 0;
            v196 = 1;
            v14 = 3;
            a3 = v211;
            v10 = v81;
            v11 = v80;
            a4 = v79;
            v17 = v78;
            v5 = v77;
            v15 = v205;
            v19 = v207;
            goto LABEL_346;
          }

          v20 = __key[0] - 65248;
          if (((LOBYTE(__key[0]) + 32) & 0x80) != 0)
          {
            v14 = 3;
            a3 = v211;
            v10 = v81;
            v11 = v80;
            a4 = v79;
            v17 = v78;
            v5 = v77;
            v15 = v205;
            v19 = v207;
          }

          else
          {
            v14 = 3;
            a3 = v211;
            v10 = v81;
            v11 = v80;
            v19 = v207;
            if (separator_map[(LOBYTE(__key[0]) + 32) & 0x7F])
            {
              v74 = 0;
              a4 = v79;
              v17 = v78;
              v5 = v77;
              goto LABEL_345;
            }

            a4 = v79;
            v17 = v78;
            v5 = v77;
            v15 = v205;
          }

          v12 = v201;
          v13 = v203;
          LODWORD(v26) = v214;
        }

        else
        {
          v75 = v70 >= 2 && separator_map[*v71] == 0;
          if (!v75)
          {
            goto LABEL_301;
          }

          v14 = 1;
          v20 = *v71;
        }

        if (v20 - 123 <= 0xFFFFFFE5)
        {
          goto LABEL_313;
        }
      }
    }

    if (v70 == 227)
    {
      v71 = v22;
      goto LABEL_299;
    }

    if (v70 == 239)
    {
      v83 = a4;
      v199 = v11;
      v26 = v10;
      v84 = a3;
      v85 = v22[1];
      if (v85 == 188 || v85 == 189 && v22[2] <= 0x9Fu)
      {
        __key[0] = v20;
        v86 = utf8_decodestr(v22, 3uLL, __key, &v215, 2, &v216, 0);
        LOWORD(v20) = __key[0];
        if (v86)
        {
          v74 = 0;
          v196 = 1;
          v14 = 3;
          v71 = v22;
          a3 = v84;
          v10 = v26;
          v11 = v199;
          v15 = v205;
          v19 = v207;
          v12 = v201;
          v13 = v203;
          LODWORD(v26) = v214;
          a4 = v83;
          goto LABEL_314;
        }

        LOWORD(v20) = __key[0] + 288;
        v19 = v207;
        if (((__key[0] + 288) & 0x80) != 0)
        {
          v14 = 3;
          a3 = v84;
          v10 = v26;
          v11 = v199;
          v15 = v205;
          v12 = v201;
          v13 = v203;
          LODWORD(v26) = v214;
          a4 = v83;
        }

        else
        {
          v14 = 3;
          a3 = v84;
          a4 = v83;
          if (separator_map[v20 & 0x7F])
          {
            v74 = 0;
            v71 = v22;
            v10 = v26;
            v11 = v199;
LABEL_345:
            v15 = v205;
LABEL_346:
            v12 = v201;
            v13 = v203;
            LODWORD(v26) = v214;
            goto LABEL_314;
          }

          v10 = v26;
          v11 = v199;
          v15 = v205;
          v12 = v201;
          v13 = v203;
          LODWORD(v26) = v214;
        }

        goto LABEL_218;
      }

      v70 = 239;
      v71 = v22;
      v12 = v201;
      LODWORD(v26) = v214;
    }

    else
    {
      v71 = v22;
    }

LABEL_311:
    v98 = v70 >> 4;
    goto LABEL_312;
  }

  v6 = v26;
LABEL_454:
  v129 = *v6;
  if (v22 > v5 && (a3 & 4) != 0 && !*v6)
  {
    v130 = *(v22 - 1);
    v25 = 1;
    v24 = v190;
    if ((v130 & 0x8000000000000000) == 0 && *(v22 - 1) - 58 <= 0xFFFFFFF5)
    {
      v25 = separator_map[v130] == 0;
    }

    v23 = *v22;
    goto LABEL_465;
  }

LABEL_462:
  v24 = v190;
  v23 = *v22;
  v25 = 1;
  if (!v129)
  {
    goto LABEL_465;
  }

  if ((v23 & 0x80) != 0)
  {
    goto LABEL_496;
  }

LABEL_477:
  if (v23 >= 2 && ((v23 & 0x80) != 0 || (v211 & 4) == 0 || !separator_map[v23]) || (v211 & 2) == 0 || (v136 = *v6, v136 < 0xC0))
  {
LABEL_496:
    if (!v196)
    {
      goto LABEL_514;
    }

    goto LABEL_497;
  }

  v137 = v19;
  v138 = 0;
  v139 = v21;
  while (1)
  {
    v6 += v138;
    if (!v136)
    {
      break;
    }

    v140 = a4;
    v138 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v136 >> 4];
    __key[0] = v139;
    if (utf8_decodestr(v6, v138, __key, &v215, 2, &v216, 0))
    {
      v19 = v137;
      v142 = v211;
      a4 = v140;
      goto LABEL_498;
    }

    v139 = __key[0];
    a4 = v140;
    if (__key[0] - 12441 < 2)
    {
      v19 = v137;
      goto LABEL_496;
    }

    if (__key[0] < 0x300u)
    {
      break;
    }

    v141 = __CFUniCharCombiningBitmap[__key[0] >> 8];
    if (v141 != 255 && (!__CFUniCharCombiningBitmap[__key[0] >> 8] || ((__CFUniCharCombiningBitmap[32 * v141 + 224 + (LOBYTE(__key[0]) >> 3)] >> (__key[0] & 7)) & 1) == 0))
    {
      break;
    }

    v136 = v6[v138];
  }

  v19 = v137;
  if (v196)
  {
    goto LABEL_497;
  }

LABEL_514:
  v154 = *v22;
  if (v154 >= 2)
  {
    if (v25)
    {
      if ((v154 & 0x80) != 0 || v154 - 58 > 0xFFFFFFF5)
      {
        v142 = v211;
        if (v154 != 227 || v22[1] != 128 || (v211 & 4) == 0)
        {
          goto LABEL_498;
        }

        if (v22[2] == 128)
        {
          goto LABEL_515;
        }
      }

      else
      {
        v142 = v211;
        if ((v211 & 4) == 0)
        {
LABEL_498:
          result = 0;
          if (v22 == v5 || (v142 & 4) == 0 || *v6)
          {
            return result;
          }

          v143 = v19;
          v144 = v22;
          while (v144 > v5)
          {
            do
            {
              v147 = *--v144;
              v146 = v147;
              v148 = v147 >> 4;
              v149 = v148 & 0xC;
            }

            while (v149 == 8);
            v145 = v146;
            if ((v146 & 0x80) != 0)
            {
              v150 = utf8_byte_length(unsigned char)::utf8_len_table[v148];
              v151 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v150] & v146;
              if (v149 == 12)
              {
                if (v150 <= 2)
                {
                  v152 = 2;
                }

                else
                {
                  v152 = v150;
                }

                for (j = 1; j != v152; ++j)
                {
                  v145 = v144[j] & 0x3F | (v151 << 6);
                  v151 = v145;
                }
              }

              else
              {
                v145 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v150] & v146;
              }
            }

            if ((v145 - 880) <= 0xFFFFFF8F)
            {
              goto LABEL_521;
            }
          }

          v146 = *v144;
LABEL_521:
          if ((v146 & 0x80) != 0)
          {
            v155 = v146 >> 4;
            v156 = ~v155;
            v157 = utf8_byte_length(unsigned char)::utf8_len_table[v155];
            v158 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v157] & v146;
            if ((v156 & 0xC) != 0)
            {
              v146 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v157];
            }

            else
            {
              if (v157 <= 2)
              {
                v159 = 2;
              }

              else
              {
                v159 = v157;
              }

              v160 = v159 - 1;
              v161 = (v144 + 1);
              do
              {
                v162 = *v161++;
                v146 = v162 & 0x3F | (v158 << 6);
                v158 = v146;
                --v160;
              }

              while (v160);
            }
          }

          v163 = *v22;
          v164 = *v22;
          if ((v163 & 0x80000000) != 0)
          {
            v165 = v163 >> 4;
            v166 = utf8_byte_length(unsigned char)::utf8_len_table[v165];
            v167 = v164 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v166];
            if ((~v165 & 0xC) != 0)
            {
              v163 = v164 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v166];
            }

            else
            {
              if (v166 <= 2)
              {
                v168 = 2;
              }

              else
              {
                v168 = utf8_byte_length(unsigned char)::utf8_len_table[v165];
              }

              v169 = v168 - 1;
              v170 = (v22 + 1);
              do
              {
                v171 = *v170++;
                v163 = v171 & 0x3F | (v167 << 6);
                v167 = v163;
                --v169;
              }

              while (v169);
            }
          }

          result = 0;
          if (v163 > 0xFFFE)
          {
            return result;
          }

          if (v163 - 880 > 0xFFFFFF8F || v146 > 0xFFFE)
          {
            return result;
          }

          v173 = v163 - 48;
          if (v146 - 48 > 9)
          {
            if (v173 > 9)
            {
              if (v146 - 123 < 0xFFFFFFE6)
              {
                result = 0;
                if (v146 - 91 < 0xFFFFFFE6 || v163 - 91 < 0xFFFFFFE6)
                {
                  return result;
                }

                v174 = a4;
                char_start = utf8_prev_char_start(v5, v144);
                if (utf8_to_code_point(char_start) - 91 < 0xFFFFFFE6)
                {
                  return 0;
                }

                v176 = &v22[utf8_byte_length(unsigned char)::utf8_len_table[v164 >> 4]];
                v177 = utf8_to_code_point(v176);
                if ((v177 - 880) >= 0xFFFFFF90)
                {
                  LOBYTE(v181) = *v176;
                  v179 = v174;
                  do
                  {
                    v182 = utf8_byte_length(unsigned char)::utf8_len_table[v181 >> 4];
                    v178 = &v176[v182];
                    v181 = v176[v182];
                    v177 = v181;
                    if (v181 < 0)
                    {
                      v183 = v181 >> 4;
                      v184 = utf8_byte_length(unsigned char)::utf8_len_table[v183];
                      v185 = ~v183;
                      v186 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v184] & v181);
                      if ((v185 & 0xC) != 0)
                      {
                        v177 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v184] & v181);
                      }

                      else
                      {
                        if (v184 <= 2)
                        {
                          v184 = 2;
                        }

                        else
                        {
                          v184 = v184;
                        }

                        v187 = v184 - 1;
                        v188 = &v176[v182 + 1];
                        do
                        {
                          v189 = *v188++;
                          v177 = v189 & 0x3F | (v186 << 6);
                          v186 = v177;
                          --v187;
                        }

                        while (v187);
                      }
                    }

                    v176 = v178;
                  }

                  while ((v177 - 880) > 0xFFFFFF8F);
                }

                else
                {
                  v178 = v176;
                  v179 = v174;
                }

                if ((v177 - 91) > 0xFFFFFFE5)
                {
                  return 0;
                }

                if (!v179)
                {
                  return 1;
                }

                *v179 = v143 - v5;
                v125 = (v178 - v143);
LABEL_577:
                *a5 = v125;
                return 1;
              }

              if (v163 > 0x7F)
              {
                v180 = a4;
                result = __maskrune(v163, 0x8000uLL);
                a4 = v180;
              }

              else
              {
                result = *(MEMORY[0x1E69E9830] + 4 * v163 + 60) & 0x8000;
              }

              if (!result)
              {
                return result;
              }
            }
          }

          else if (v173 < 0xA)
          {
            return 0;
          }

          if (!a4)
          {
            return 1;
          }

          *a4 = v143 - v5;
          v125 = (v22 - v143);
          goto LABEL_577;
        }

        if (separator_map[*v22])
        {
          goto LABEL_515;
        }
      }
    }

    else if ((v211 & 4) != 0)
    {
      goto LABEL_515;
    }

LABEL_497:
    v142 = v211;
    goto LABEL_498;
  }

LABEL_515:
  if (*v6 && (*v6 != 42 || v6[1]))
  {
    goto LABEL_497;
  }

  if (a4)
  {
    *a4 = v19 - v5;
    v125 = (v22 - v19);
    goto LABEL_577;
  }

  return 1;
}

uint64_t db_hash_qps(void *a1)
{
  v2 = a1[4];
  if ((v2 & 0xC0000) != 0 && (a1[4] & 0x200) == 0)
  {
    v4 = a1[36];
    v5 = 8 * *(a1 + 10);
  }

  else
  {
    v4 = a1[9];
    if (v4)
    {
LABEL_6:
      v5 = strlen(v4);
      goto LABEL_8;
    }

    v15 = *(a1 + 6);
    if ((v15 - 11) > 1)
    {
      if (v15 == 15)
      {
        v4 = a1[37];
        v16 = *(a1 + 15);
        v17 = v16 & 3;
        v18 = (v16 >> 2) & 3;
        if (v17 == 3 || v18 == 3)
        {
          v5 = -1;
        }

        else
        {
          v5 = (vector_dimension_vec_sizes_15424[v17] * vector_size_elem_sizes_15423[v18]);
        }

        goto LABEL_8;
      }
    }

    else if (*(a1 + 10) == 2)
    {
      v4 = *a1[21];
      goto LABEL_6;
    }

    v4 = 0;
    v5 = 0;
  }

LABEL_8:
  v6 = strlen(*a1);
  v7 = hash_bytes(*a1, v6);
  v8 = (v2 >> 5) & 0x1FFF800 ^ (((v2 & 0xFFFE) + 8) << 16) ^ ((v2 & 0xFFFE) + 8);
  v9 = (WORD2(v2) & 0xFFE2) + v8 + (v8 >> 11);
  v10 = (v2 >> 37) & 0x7FFF800 ^ (v9 << 16);
  v11 = (((v10 ^ v9) + ((v10 ^ v9) >> 11)) ^ (8 * ((v10 ^ v9) + ((v10 ^ v9) >> 11)))) + ((((v10 ^ v9) + ((v10 ^ v9) >> 11)) ^ (8 * ((v10 ^ v9) + ((v10 ^ v9) >> 11)))) >> 5);
  v12 = (v11 ^ (16 * v11)) + ((v11 ^ (16 * v11)) >> 17);
  v13 = v7 ^ (*(a1 + 6) << 24) ^ *(a1 + 13) ^ *(a1 + 14) ^ ((v12 ^ (v12 << 25)) + ((v12 ^ (v12 << 25)) >> 6));
  if (v4)
  {
    return hash_bytes(v4, v5) ^ v13;
  }

  return v13;
}

void oqsplit(uint64_t a1, unint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (*a1 != 1)
  {
    if (!a2)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 56);
      v21 = *(a1 + 32);
      *(a1 + 40) = 0;
      *(a1 + 48) = v21;
      *(a1 + 32) = 0;
      v22 = *(a1 + 16);

      parallel_qsort_offset_t(v22, v21);
      return;
    }

    v11 = *(a1 + 32);
    *(a1 + 48) = v11;
    if (v11 >= 100000)
    {
      v51 = v11 - 1;
      v52 = *(a1 + 16);
      v53 = qos_class_self();
      global_queue = dispatch_get_global_queue(v53, 0);
      v56 = thread_count;
      if (!thread_count)
      {
        *v76 = 0x1900000006;
        v75 = 4;
        sysctl(v76, 2u, &thread_count, &v75, 0, 0);
        v56 = thread_count;
      }

      v15 = _big_split_offset_t(v52, v51, a2, global_queue, v56, v55);
      v11 = *(a1 + 48);
LABEL_67:
      *(a1 + 32) = v15;
      *(a1 + 40) = v15;
      if (v15 > v11)
      {
        v59 = __si_assert_copy_extra_332();
        v48 = v59;
        v60 = "";
        if (v59)
        {
          v60 = v59;
        }

        v61 = "queue->top <= queue->end";
LABEL_103:
        __message_assert(v59, "OQueue.c", 14, v61, v60);
        goto LABEL_108;
      }

      if (v15 < v11)
      {
        v57 = v15 + 1;
        do
        {
          if (v11 == v57)
          {
            goto LABEL_75;
          }

          v58 = *(*(a1 + 16) + 8 * v57++) & 0x3FFFFFFFFFFFFFFFLL;
        }

        while (v58 >= a2);
        v59 = __si_assert_copy_extra_332();
        v48 = v59;
        v60 = "";
        if (v59)
        {
          v60 = v59;
        }

        v61 = "current >= offset";
        goto LABEL_103;
      }

LABEL_75:
      if (v15 > 0)
      {
        v62 = 0;
        v63 = *(a1 + 16);
        while ((*(v63 + 8 * v62) & 0x3FFFFFFFFFFFFFFFuLL) <= a2)
        {
          if (v15 == ++v62)
          {
            goto LABEL_82;
          }
        }

        v70 = __si_assert_copy_extra_332();
        v35 = v70;
        v71 = "";
        if (v70)
        {
          v71 = v70;
        }

        v72 = "current <= offset";
        goto LABEL_119;
      }
    }

    else
    {
      if (v11 > 0)
      {
        v12 = 0;
        v13 = *(a1 + 16);
        v14 = v13 - 8;
        v15 = v11;
        while (1)
        {
          v16 = *(v13 + 8 * v12);
          v17 = v16 & 0x3FFFFFFFFFFFFFFFLL;
          if ((v16 & 0x3FFFFFFFFFFFFFFFuLL) >= a2)
          {
            if (v15 > v12)
            {
              while (1)
              {
                v18 = *(v14 + 8 * v15);
                if ((v18 & 0x3FFFFFFFFFFFFFFFuLL) < a2)
                {
                  break;
                }

                if (--v15 <= v12)
                {
                  v15 = v12;
                  goto LABEL_26;
                }
              }

              *(v13 + 8 * v12) = v18;
              *(v14 + 8 * v15) = v16;
              v17 = *(v13 + 8 * v12) & 0x3FFFFFFFFFFFFFFFLL;
            }

LABEL_26:
            if (v17 >= 2 * a2)
            {
              break;
            }
          }

          if (++v12 >= v15)
          {
            goto LABEL_67;
          }
        }

        v70 = __si_assert_copy_extra_332();
        v35 = v70;
        v71 = "";
        if (v70)
        {
          v71 = v70;
        }

        v72 = "!offset || offset_t_GET_VALUE(queue->offsets[i]) < offset * 2";
        goto LABEL_119;
      }

      *(a1 + 40) = v11;
      v15 = v11;
    }

    v63 = *(a1 + 16);
LABEL_82:
    parallel_qsort_offset_t(v63 + 8 * v15, v11 - v15);
    v64 = *(a1 + 48);
    if (v15 < v64)
    {
      v65 = *(a1 + 16);
      v66 = *(a1 + 40);
      v67 = *(v65 + 8 * v66) & 0x3FFFFFFFFFFFFFFFLL;
      if (v67 < a2)
      {
        v59 = __si_assert_copy_extra_332();
        v48 = v59;
        v60 = "";
        if (v59)
        {
          v60 = v59;
        }

        v61 = "last >= offset";
      }

      else
      {
        v68 = v66 + 1;
        while (1)
        {
          if (v68 >= v64)
          {
            goto LABEL_91;
          }

          v69 = *(v65 + 8 * v68) & 0x3FFFFFFFFFFFFFFFLL;
          if (v69 < v67)
          {
            break;
          }

          ++v68;
          v67 = v69;
          if (v69 < a2)
          {
            v70 = __si_assert_copy_extra_332();
            v35 = v70;
            v71 = "";
            if (v70)
            {
              v71 = v70;
            }

            v72 = "last >= offset";
            goto LABEL_119;
          }
        }

        v59 = __si_assert_copy_extra_332();
        v48 = v59;
        v60 = "";
        if (v59)
        {
          v60 = v59;
        }

        v61 = "current >= last";
      }

      goto LABEL_103;
    }

LABEL_91:
    if (!*(a1 + 32) || (**(a1 + 16) & 0x3FFFFFFFFFFFFFFFuLL) < a2)
    {
LABEL_93:
      ++*(a1 + 56);
      *(a1 + 64) = a2;
      return;
    }

    v70 = __si_assert_copy_extra_332();
    v35 = v70;
    v71 = "";
    if (v70)
    {
      v71 = v70;
    }

    v72 = "last < offset";
LABEL_119:
    __message_assert(v70, "OQueue.c", 14, v72, v71);
LABEL_120:
    free(v35);
    if (__valid_fs(-1))
    {
      v74 = 2989;
    }

    else
    {
      v74 = 3072;
    }

    *v74 = -559038737;
    abort();
  }

  if (a2)
  {
    v4 = *(a1 + 32);
    *(a1 + 48) = v4;
    if (v4 >= 100000)
    {
      v23 = v4 - 1;
      v24 = *(a1 + 16);
      v25 = qos_class_self();
      v26 = dispatch_get_global_queue(v25, 0);
      v28 = thread_count;
      if (!thread_count)
      {
        *v76 = 0x1900000006;
        v75 = 4;
        sysctl(v76, 2u, &thread_count, &v75, 0, 0);
        v28 = thread_count;
      }

      v4 = _big_split_offset_with_meta_t(v24, v23, a2, v26, v28, v27);
    }

    else if (v4 >= 1)
    {
      v5 = 0;
      v6 = *(a1 + 16);
      while (1)
      {
        v7 = (v6 + 16 * v5);
        if ((*v7 & 0x3FFFFFFFFFFFFFFFuLL) >= a2)
        {
          if (v4 > v5)
          {
            v8 = (v6 + 16 * v4 - 16);
            while (1)
            {
              v9 = *v8;
              v8 -= 2;
              if ((v9 & 0x3FFFFFFFFFFFFFFFuLL) < a2)
              {
                break;
              }

              if (--v4 <= v5)
              {
                v4 = v5;
                goto LABEL_13;
              }
            }

            *v76 = 0;
            *&v76[2] = 0;
            *v76 = *v7;
            v10 = 16 * v4 - 16;
            *v7 = *(v6 + v10);
            *(*(a1 + 16) + v10) = *v76;
            v6 = *(a1 + 16);
          }

LABEL_13:
          if ((*(v6 + 16 * v5) & 0x3FFFFFFFFFFFFFFFuLL) >= 2 * a2)
          {
            break;
          }
        }

        if (++v5 >= v4)
        {
          goto LABEL_38;
        }
      }

      v34 = __si_assert_copy_extra_332();
      v35 = v34;
      v36 = "";
      if (v34)
      {
        v36 = v34;
      }

      v37 = "!offset || offset_with_meta_t_GET_VALUE(queue->offsets[i]) < offset * 2";
      goto LABEL_115;
    }

LABEL_38:
    *(a1 + 32) = v4;
    *(a1 + 40) = v4;
    v29 = *(a1 + 48);
    v30 = v29 - v4;
    if (v29 < v4)
    {
      v34 = __si_assert_copy_extra_332();
      v35 = v34;
      v36 = "";
      if (v34)
      {
        v36 = v34;
      }

      v37 = "queue->top <= queue->end";
LABEL_115:
      __message_assert(v34, "OQueue.c", 13, v37, v36);
      goto LABEL_120;
    }

    if (v29 > v4)
    {
      v31 = 16 * v4 + 16;
      v32 = v29 - v4;
      while (--v32)
      {
        v33 = *(*(a1 + 16) + v31);
        v31 += 16;
        if ((v33 & 0x3FFFFFFFFFFFFFFFuLL) < a2)
        {
          v34 = __si_assert_copy_extra_332();
          v35 = v34;
          v36 = "";
          if (v34)
          {
            v36 = v34;
          }

          v37 = "current >= offset";
          goto LABEL_115;
        }
      }
    }

    if (v4 >= 1)
    {
      v38 = *(a1 + 16);
      v39 = v4;
      while (1)
      {
        v40 = *v38;
        v38 += 2;
        if ((v40 & 0x3FFFFFFFFFFFFFFFuLL) > a2)
        {
          break;
        }

        if (!--v39)
        {
          goto LABEL_50;
        }
      }

      v34 = __si_assert_copy_extra_332();
      v35 = v34;
      v36 = "";
      if (v34)
      {
        v36 = v34;
      }

      v37 = "current <= offset";
      goto LABEL_115;
    }

LABEL_50:
    parallel_qsort_offset_with_meta_t(*(a1 + 16) + 16 * v4, v30);
    v41 = *(a1 + 48);
    if (v4 < v41)
    {
      v42 = *(a1 + 16);
      v43 = *(a1 + 40);
      v44 = *(v42 + 16 * v43) & 0x3FFFFFFFFFFFFFFFLL;
      if (v44 < a2)
      {
        v47 = __si_assert_copy_extra_332();
        v48 = v47;
        v49 = "";
        if (v47)
        {
          v49 = v47;
        }

        v50 = "last >= offset";
      }

      else
      {
        v45 = (v42 + 16 * v43 + 16);
        while (1)
        {
          if (++v43 >= v41)
          {
            goto LABEL_59;
          }

          v46 = *v45 & 0x3FFFFFFFFFFFFFFFLL;
          if (v46 < v44)
          {
            break;
          }

          v45 += 2;
          v44 = v46;
          if (v46 < a2)
          {
            v34 = __si_assert_copy_extra_332();
            v35 = v34;
            v36 = "";
            if (v34)
            {
              v36 = v34;
            }

            v37 = "last >= offset";
            goto LABEL_115;
          }
        }

        v47 = __si_assert_copy_extra_332();
        v48 = v47;
        v49 = "";
        if (v47)
        {
          v49 = v47;
        }

        v50 = "current >= last";
      }

      goto LABEL_107;
    }

LABEL_59:
    if (*(a1 + 32) && (**(a1 + 16) & 0x3FFFFFFFFFFFFFFFuLL) >= a2)
    {
      v47 = __si_assert_copy_extra_332();
      v48 = v47;
      v49 = "";
      if (v47)
      {
        v49 = v47;
      }

      v50 = "last < offset";
LABEL_107:
      __message_assert(v47, "OQueue.c", 13, v50, v49);
LABEL_108:
      free(v48);
      if (__valid_fs(-1))
      {
        v73 = 2989;
      }

      else
      {
        v73 = 3072;
      }

      *v73 = -559038737;
      abort();
    }

    goto LABEL_93;
  }

  *(a1 + 64) = 0;
  ++*(a1 + 56);
  v19 = *(a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = v19;
  *(a1 + 32) = 0;
  v20 = *(a1 + 16);

  parallel_qsort_offset_with_meta_t(v20, v19);
}

void parallel_qsort_offset_t(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v4 = OSAtomicDequeue(&qsort_cached_allocations, 0);
    if (!v4)
    {
      v4 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
    }

    v5 = dispatch_group_create();
    v4[3] = v5;
    v4[4] = 0;
    v4[1] = 0;
    v4[2] = a2 - 1;
    *v4 = a1;
    v6 = thread_count;
    if (!thread_count)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v6 = thread_count;
    }

    *(v4 + 14) = v6;
    v4[5] = sqrt(a2) / 2;
    if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v6 = thread_count;
    }

    v7 = a2 / (2 * v6);
    if (v7 <= 0x8000)
    {
      v7 = 0x8000;
    }

    else if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v7 = a2 / (2 * thread_count);
    }

    v4[6] = v7;
    if (v4[5] <= 2047)
    {
      v4[5] = 2048;
    }

    _qsort_big_offset_t(v4);
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }

  else
  {

    _qsort_offset_t(a1, 0, a2 - 1);
  }
}

uint64_t __CIIndexSetAddIntersectionInRange_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t a4)
{
  v4 = *(a2 + 13);
  if (v4 == *(a3 + 13))
  {
    if (v4)
    {
      return 0;
    }

    else
    {
      if ((*(a2 + 12) & 1) == 0)
      {
        *(a2 + 12) = 1;
        v6 = a1;
        v7 = a2;
        v8 = a3;
        locked = lockedCountItemsInRange(*a2, *(a1 + 32), *(a1 + 36), a4);
        a3 = v8;
        a2 = v7;
        v10 = locked;
        a1 = v6;
        *(v7 + 8) = v10;
      }

      if (*(a3 + 12) == 1)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        *(a3 + 12) = 1;
        v12 = a2;
        v13 = a3;
        v11 = lockedCountItemsInRange(*a3, *(a1 + 32), *(a1 + 36), a4);
        a2 = v12;
        *(v13 + 8) = v11;
      }

      return (*(a2 + 8) - v11);
    }
  }

  else if (*(a2 + 13))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void CIIndexSetIntersectRanges(_DWORD *cf, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v153 = *MEMORY[0x1E69E9840];
  if (cf[6] >= a2[6])
  {
    v6 = a2[6];
  }

  else
  {
    v6 = cf[6];
  }

  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  if (cf[5] <= a2[5])
  {
    v8 = a2[5];
  }

  else
  {
    v8 = cf[5];
  }

  if (v8 >= a3)
  {
    if (v8 <= a3)
    {
      if (v6 < a4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v25 = a4;
      _CIIndexSetClearRange(cf, a3, v8 - 1);
      LODWORD(a4) = v25;
      if (v6 < v25)
      {
        goto LABEL_30;
      }
    }

LABEL_12:
    if (v8 <= v7)
    {
      goto LABEL_13;
    }

LABEL_31:
    if (dword_1EBF46AD0 >= 5)
    {
      v26 = *__error();
      v27 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v8;
        *&buf[8] = 1024;
        *&buf[10] = v7;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "%d start, end:%d", buf, 0xEu);
      }

      *__error() = v26;
    }

    return;
  }

  v8 = a3;
  if (v6 >= a4)
  {
    goto LABEL_12;
  }

LABEL_30:
  _CIIndexSetClearRange(cf, v7 + 1, a4);
  if (v8 > v7)
  {
    goto LABEL_31;
  }

LABEL_13:
  v9 = cf[4];
  if (v9)
  {
    if (v9 == -2)
    {
      return;
    }
  }

  else if (CFGetTypeID(cf) != __kCIIndexSetInvertedTypeID || cf[4] == -2)
  {
    return;
  }

  v10 = a2[4];
  if (!v10)
  {
    if (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID && a2[4] != -2)
    {
      goto LABEL_17;
    }

LABEL_40:

    _CIIndexSetClearRange(cf, v8, v7);
    return;
  }

  if (v10 == -2)
  {
    goto LABEL_40;
  }

LABEL_17:
  v11 = &unk_1EBF61000;
  if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
  {
    _CIIndexSetForceBitmap(cf, 0, 0);
  }

  v12 = a2[4];
  v13 = cf[4];
  if (v12 <= -10)
  {
    if (v13 <= -10)
    {
      v14 = cf[6];
      v15 = (v14 - v7) >> 5;
      v16 = (v14 - v7) & 0x1F;
      v17 = (v14 - v8) >> 5;
      v18 = (v14 - v8) & 0x1F;
      v19 = a2[6];
      if (v14 == v19)
      {
        if (v17 != v15)
        {
          *(*(cf + 5) + 4 * v15) &= masks[v16] | *(*(a2 + 5) + 4 * v15);
          v75 = (v15 + 1);
          if (v75 < v17)
          {
            do
            {
              *(*(cf + 5) + 4 * v75) &= *(*(a2 + 5) + 4 * v75);
              ++v75;
            }

            while (v17 != v75);
          }

          *(*(cf + 5) + 4 * v17) &= *(*(a2 + 5) + 4 * v17) | ~masks[v18 + 1];
          return;
        }

        v20 = v18 + 1;
        v21 = masks[v16];
        v22 = v21;
        v23 = v21;
        if (v16 != v20)
        {
          v22 = masks[v20];
          v23 = v22 & ~v21;
        }

        v24 = *(*(a2 + 5) + 4 * v15) & v23;
      }

      else
      {
        v44 = (v19 - v7) >> 5;
        v45 = (v14 - v19) & 0x1F;
        if (((v14 - v19) & 0x1F) != 0)
        {
          v46 = 32 - v45;
          if (v17 != v15)
          {
            if (v17 >= v15)
            {
              v107 = v18 + 1;
              v108 = (v19 - v14 + v45 + ((v14 - v7) & 0xFFFFFFE0)) >> 5;
              v109 = a2[8];
              v110 = v108 >= v109 ? 0 : (*(*(a2 + 5) + 4 * v108) << v45) & ~masks[v45];
              v121 = v108 - 1 >= v109 ? 0 : (*(*(a2 + 5) + 4 * (v108 - 1)) >> v46) & masks[v45];
              v122 = masks[v16];
              *(*(cf + 5) + 4 * v15) &= v121 | v110 | v122;
              if (v15 + 1 != v17 + 1)
              {
                v123 = 0;
                v124 = v17 - v15;
                v125 = 4 * v15 + 4;
                do
                {
                  v126 = a2[8];
                  if (v108 + v123 + 1 >= v126)
                  {
                    v127 = 0;
                  }

                  else
                  {
                    v127 = (*(*(a2 + 5) + 4 * v108 + 4 + 4 * v123) << v45) & ~masks[v45];
                  }

                  if (v126 <= v108 + v123)
                  {
                    v128 = 0;
                  }

                  else
                  {
                    v128 = (*(*(a2 + 5) + 4 * (v108 + v123)) >> v46) & masks[v45];
                  }

                  v129 = 0;
                  if (v123 == -1)
                  {
                    v130 = v122;
                  }

                  else
                  {
                    v130 = 0;
                  }

                  if (v124 - 1 == v123)
                  {
                    v129 = ~masks[v107];
                  }

                  *(*(cf + 5) + v125 + 4 * v123++) &= v128 | v127 | v129 | v130;
                }

                while (v124 != v123);
              }
            }

            return;
          }

          v47 = *(a2 + 5);
          if (v44 + 1 >= a2[8])
          {
            v48 = 0;
          }

          else
          {
            v48 = *(v47 + 4 * (v44 + 1)) >> v46;
          }

          v116 = v48 | (*(v47 + 4 * v44) << v45);
          v117 = v18 + 1;
          v118 = masks[v16];
          v119 = v118;
          v120 = v118;
          if (v16 != v117)
          {
            v119 = masks[v117];
            v120 = v119 & ~v118;
          }

          v96 = v120 & v116 | ~v119 | v118;
LABEL_265:
          *(*(cf + 5) + 4 * v15) &= v96;
          return;
        }

        v92 = *(*(a2 + 5) + 4 * v44);
        v93 = v17 - v15;
        if (v17 != v15)
        {
          *(*(cf + 5) + 4 * v15) &= masks[v16] | v92;
          if (v93 >= 2)
          {
            v111 = 1 - v93;
            v112 = v15 + 1;
            v113 = v44 + 1;
            do
            {
              *(*(cf + 5) + 4 * v112++) &= *(*(a2 + 5) + 4 * v113++);
              v115 = __CFADD__(v111++, 1);
            }

            while (!v115);
          }

          *(*(cf + 5) + 4 * v17) &= *(*(a2 + 5) + 4 * ((v19 - v8) >> 5)) | ~masks[v18 + 1];
          return;
        }

        v94 = v18 + 1;
        v21 = masks[v16];
        v22 = v21;
        v95 = v21;
        if (v16 != v94)
        {
          v22 = masks[v94];
          v95 = v22 & ~v21;
        }

        v24 = v95 & v92;
      }

      v96 = v24 | ~v22 | v21;
      goto LABEL_265;
    }

    if (v13 <= -2)
    {
      v31 = (-2 - v13);
      v32 = cf + 8;
      if (v13 == -2)
      {
        LODWORD(v33) = 0;
      }

      else
      {
        v33 = 0;
        while (v32[v33] > v7)
        {
          if (v31 == ++v33)
          {
            LODWORD(v91) = -2 - v13;
            v34 = -2 - v13;
            goto LABEL_252;
          }
        }
      }

      if (v33 >= v31)
      {
        v34 = -2 - v13;
      }

      else
      {
        v34 = v33;
      }

      if (v33 < v31)
      {
        v91 = v33;
        v35 = -2 - (v13 + v34);
        while (1)
        {
          v36 = v32[v91];
          if (v36 < v8)
          {
            break;
          }

          if ((*(*(a2 + 5) + 4 * ((a2[6] - v36) >> 5)) >> (*(a2 + 24) - v36)))
          {
            v32[v34++] = v36;
          }

          ++v91;
          if (!--v35)
          {
            LODWORD(v91) = v31;
            break;
          }
        }
      }

      else
      {
        LODWORD(v91) = v34;
      }

LABEL_252:
      memmove(&v32[v34], &v32[v91], 4 * (v31 - v91));
      cf[4] += v91 - v34;
      return;
    }

    if ((v13 & 0x80000000) == 0)
    {
      v56 = cf[9];
      if (v56 != v13)
      {
        memmove((*(cf + 5) + 4 * v56), (*(cf + 5) + 4 * (v56 - v13 + cf[8])), 4 * (v13 - v56));
        cf[9] = cf[4];
      }
    }

    v57 = binarySearchMap(cf, v7);
    v58 = v57;
    v59 = cf[4];
    if (v57 >= v59)
    {
      v76 = v57;
    }

    else
    {
      v60 = v57;
      do
      {
        v61 = *(cf + 5);
        v62 = *(v61 + 4 * v60);
        if (v62 < v8)
        {
          break;
        }

        if ((*(*(a2 + 5) + 4 * ((a2[6] - v62) >> 5)) >> (*(a2 + 24) - v62)))
        {
          *(v61 + 4 * v58++) = v62;
          v59 = cf[4];
        }

        ++v60;
      }

      while (v60 < v59);
      v76 = v58;
      v58 = v60;
    }

    memmove((*(cf + 5) + 4 * v76), (*(cf + 5) + 4 * v58), 4 * (v59 - v58));
    v77 = v76 - v58;
LABEL_183:
    v90 = cf[4] + v77;
    cf[4] = v90;
    cf[9] = v90;
    return;
  }

  if (v13 <= -10)
  {
    if (v12 <= -2)
    {
      memset(buf, 0, sizeof(buf));
      if (v12 != -2)
      {
        v28 = 0;
        v29 = (-2 - v12);
        v30 = a2 + 8;
        while (1)
        {
          v97 = *v30;
          if (*v30 < v8 || v97 > v7)
          {
            goto LABEL_196;
          }

          if (cf[5] > v97)
          {
            goto LABEL_196;
          }

          v99 = cf[6];
          v100 = v99 - v97;
          if (v99 < v97)
          {
            goto LABEL_196;
          }

          v101 = cf[4];
          if (v101 > -10)
          {
            if (v101 < 0)
            {
              if (v101 >= 0xFFFFFFFE || cf[8] != v97 && (v101 == -3 || cf[9] != v97 && (v101 == -4 || cf[10] != v97 && (v101 == -5 || cf[11] != v97 && (v101 == -6 || cf[12] != v97 && (v101 == -7 || cf[13] != v97 && (v101 == -8 || cf[14] != v97)))))))
              {
                goto LABEL_196;
              }
            }

            else
            {
              v102 = v11;
              v103 = binarySearchMap(cf, *v30);
              v104 = cf[9];
              if (v103 < v104 || (v105 = 0, v106 = cf[8], v103 < v106) && v103 >= v106 + v104 - cf[4])
              {
                v105 = *(*(cf + 5) + 4 * v103) == v97;
              }

              if (v105 == (CFGetTypeID(cf) == v102[34]))
              {
                v11 = v102;
                goto LABEL_196;
              }

              v97 = *v30;
              v11 = v102;
            }
          }

          else if (((*(*(cf + 5) + 4 * (v100 >> 5)) >> v100) & 1) == 0)
          {
            goto LABEL_196;
          }

          *&buf[4 * v28] = v97;
          v28 = (v28 + 1);
LABEL_196:
          ++v30;
          if (!--v29)
          {
            goto LABEL_148;
          }
        }
      }

LABEL_147:
      v28 = 0;
LABEL_148:
      _CIIndexSetClearRange(cf, v8, v7);
      _CIIndexSetAddSortedIndexes(cf, buf, v28, 1, 0, 0, v80);
      return;
    }

    v49 = cf[6];
    *&buf[8] = 0;
    v152 = 0uLL;
    if (a2[6] >= v7)
    {
      v50 = v7;
    }

    else
    {
      v50 = a2[6];
    }

    if (a2[5] <= v8)
    {
      v51 = v8;
    }

    else
    {
      v51 = a2[5];
    }

    if (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID)
    {
      v52 = 3;
    }

    else
    {
      v52 = 1;
    }

    DWORD2(v152) = v52;
    v53 = a2[4];
    *buf = v50;
    *&buf[4] = v51;
    *&v152 = a2;
    if (v53 < 1)
    {
      if (v53 >= 0xFFFFFFF7)
      {
        v55 = -2 - v53;
        if (v53 > 0xFFFFFFFD)
        {
          goto LABEL_285;
        }

        if (v50 < a2[8])
        {
          if (v53 != -3)
          {
            if (v50 >= a2[9])
            {
              v55 = 1;
            }

            else if (v53 != -4)
            {
              if (v50 >= a2[10])
              {
                v55 = 2;
              }

              else if (v53 != -5)
              {
                if (v50 >= a2[11])
                {
                  v55 = 3;
                }

                else if (v53 != -6)
                {
                  if (v50 >= a2[12])
                  {
                    v55 = 4;
                  }

                  else if (v53 != -7)
                  {
                    if (v50 >= a2[13])
                    {
                      v55 = 5;
                    }

                    else if (v53 != -8 && v50 >= a2[14])
                    {
                      v55 = 6;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_285;
        }
      }

      v55 = 0;
    }

    else
    {
      v54 = binarySearchMap(a2, v50);
      *&buf[8] = v54;
      if (v54 != a2[9])
      {
        goto LABEL_286;
      }

      v55 = a2[8] + v54 - a2[4];
    }

LABEL_285:
    *&buf[8] = v55;
LABEL_286:
    v131 = _CIIndexSetEnumeratorNext(buf);
    if (v131)
    {
      v132 = v49 - v8;
      v133 = (v49 - v7) & 0x1F;
      v134 = (v49 - v7) >> 5;
      v135 = cf[6] - v131;
      v136 = v135 >> 5;
      if (v135 >> 5 == v134)
      {
        v137 = masks[v133];
      }

      else
      {
        v137 = 0;
      }

      v141 = 1 << v135;
      v148 = v132 & 0x1F;
      v150 = (v49 - v8) >> 5;
      if (v134 == v150)
      {
        v137 = masks[v133] | ~masks[(v132 & 0x1F) + 1];
      }

      else if (v131 + 1 <= v7)
      {
        v142 = v131;
        _CIIndexSetClearRange(cf, v131 + 1, v7);
        v131 = v142;
      }

LABEL_295:
      v143 = v131;
      v144 = v141;
      while (1)
      {
        v131 = _CIIndexSetEnumeratorNext(buf);
        if (!v131)
        {
          break;
        }

        v145 = (cf[6] - v131) >> 5;
        v141 = 1 << (*(cf + 24) - v131);
        if (v145 != v136)
        {
          *(*(cf + 5) + 4 * v136) &= v137 | v144;
          v136 = v145;
          v137 = 0;
          if (v143 - 1 >= v131 + 1)
          {
            v146 = v131;
            _CIIndexSetClearRange(cf, v131 + 1, v143 - 1);
            v131 = v146;
            v137 = 0;
            v136 = v145;
          }

          goto LABEL_295;
        }

        v144 |= v141;
        v143 = v131;
      }

      if (v134 == v150 || v136 != v150)
      {
        v147 = v137 | v144;
      }

      else
      {
        v147 = v144 | ~masks[v148 + 1];
        v136 = v150;
      }

      *(*(cf + 5) + 4 * v136) &= v147;
      if (v143 <= v8)
      {
        return;
      }

      v140 = v143 - 1;
      v138 = cf;
      v139 = v8;
    }

    else
    {
      v138 = cf;
      v139 = v8;
      v140 = v7;
    }

    _CIIndexSetClearRange(v138, v139, v140);
    return;
  }

  if ((v13 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v37 = cf[9];
      if (v37 != v13)
      {
        memmove((*(cf + 5) + 4 * v37), (*(cf + 5) + 4 * (v37 - v13 + cf[8])), 4 * (v13 - v37));
        cf[9] = cf[4];
      }

      v38 = binarySearchMap(cf, v7);
      *buf = 0u;
      v152 = 0u;
      initializeEnumberatorForRangeLocked(buf, a2, v8, v7);
      v39 = cf[4];
      if (v38 >= v39)
      {
        LODWORD(v40) = v38;
      }

      else
      {
        v40 = v38;
        v41 = -1;
        do
        {
          v42 = *(cf + 5);
          v43 = *(v42 + 4 * v40);
          if (v43 < v8)
          {
            break;
          }

          if (v43 < v41)
          {
            v41 = _CIIndexSetEnumeratorNext(buf);
            if (!v41)
            {
              goto LABEL_253;
            }
          }

          while (v43 < v41)
          {
            v41 = _CIIndexSetEnumeratorNext(buf);
          }

          if (!v41)
          {
LABEL_253:
            if (v39 > v40)
            {
              while (1)
              {
                v114 = *(v42 + 4 * v40);
                v115 = v7 >= v114 && v114 >= v8;
                if (!v115)
                {
                  break;
                }

                if (++v40 >= v39)
                {
                  LODWORD(v40) = v39;
                  goto LABEL_182;
                }
              }
            }

            break;
          }

          if (v43 == v41)
          {
            *(v42 + 4 * v38) = v43;
            v39 = cf[4];
            ++v38;
          }

          ++v40;
        }

        while (v40 < v39);
      }

LABEL_182:
      memmove((*(cf + 5) + 4 * v38), (*(cf + 5) + 4 * v40), 4 * (v39 - v40));
      v77 = v38 - v40;
      goto LABEL_183;
    }

    memset(buf, 0, sizeof(buf));
    if (v12 > 0xFFFFFFFD)
    {
      goto LABEL_147;
    }

    v28 = 0;
    v78 = (-2 - v12);
    v79 = a2 + 8;
    while (1)
    {
      v81 = *v79;
      if (*v79 < v8 || v81 > v7)
      {
        goto LABEL_151;
      }

      if (cf[5] > v81)
      {
        goto LABEL_151;
      }

      v83 = cf[6];
      v84 = v83 - v81;
      if (v83 < v81)
      {
        goto LABEL_151;
      }

      v85 = cf[4];
      if (v85 > -10)
      {
        break;
      }

      if ((*(*(cf + 5) + 4 * (v84 >> 5)) >> v84))
      {
        goto LABEL_150;
      }

LABEL_151:
      ++v79;
      if (!--v78)
      {
        goto LABEL_148;
      }
    }

    if (v85 < 0)
    {
      if (v85 >= 0xFFFFFFFE || cf[8] != v81 && (v85 == -3 || cf[9] != v81 && (v85 == -4 || cf[10] != v81 && (v85 == -5 || cf[11] != v81 && (v85 == -6 || cf[12] != v81 && (v85 == -7 || cf[13] != v81 && (v85 == -8 || cf[14] != v81)))))))
      {
        goto LABEL_151;
      }
    }

    else
    {
      v86 = binarySearchMap(cf, *v79);
      v87 = cf[9];
      if (v86 < v87 || (v88 = 0, v89 = cf[8], v86 < v89) && v86 >= v89 + v87 - cf[4])
      {
        v88 = *(*(cf + 5) + 4 * v86) == v81;
      }

      if (v88 == (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID))
      {
        goto LABEL_151;
      }

      v81 = *v79;
    }

LABEL_150:
    *&buf[4 * v28] = v81;
    v28 = (v28 + 1);
    goto LABEL_151;
  }

  v63 = (-2 - v13);
  if (v13 > 0xFFFFFFFD)
  {
    v64 = 0;
    goto LABEL_193;
  }

  v64 = 0;
  v65 = cf + 8;
  v149 = -2 - v13;
  do
  {
    v66 = *v65;
    if (*v65 < v8 || v66 > v7)
    {
      goto LABEL_104;
    }

    if (a2[5] <= v66)
    {
      v68 = a2[6];
      v69 = v68 - v66;
      if (v68 >= v66)
      {
        v70 = a2[4];
        if (v70 <= -10)
        {
          if (((*(*(a2 + 5) + 4 * (v69 >> 5)) >> v69) & 1) == 0)
          {
            goto LABEL_105;
          }

          goto LABEL_104;
        }

        if (v70 < 0)
        {
          if (v70 < 0xFFFFFFFE && (a2[8] == v66 || v70 != -3 && (a2[9] == v66 || v70 != -4 && (a2[10] == v66 || v70 != -5 && (a2[11] == v66 || v70 != -6 && (a2[12] == v66 || v70 != -7 && (a2[13] == v66 || v70 != -8 && a2[14] == v66)))))))
          {
            goto LABEL_104;
          }
        }

        else
        {
          v71 = binarySearchMap(a2, *v65);
          v72 = a2[9];
          if (v71 < v72 || (v73 = 0, v74 = a2[8], v71 < v74) && v71 >= v74 + v72 - a2[4])
          {
            v73 = *(*(a2 + 5) + 4 * v71) == v66;
          }

          if (v73 != (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID))
          {
            v66 = *v65;
LABEL_104:
            cf[v64++ + 8] = v66;
          }
        }
      }
    }

LABEL_105:
    ++v65;
    --v63;
  }

  while (v63);
  v13 = cf[4];
  LODWORD(v63) = v149;
LABEL_193:
  cf[4] = v13 + v63 - v64;
}

void CIIndexSetAddRange(unsigned int *cf, _DWORD *a2, unsigned int a3, unsigned int a4, int8x8_t a5)
{
  v133 = *MEMORY[0x1E69E9840];
  v6 = cf[5];
  v5 = cf[6];
  v7 = a2[5];
  v8 = a2[6];
  if (v5 >= v8)
  {
    v9 = a2[6];
  }

  else
  {
    v9 = cf[6];
  }

  v10 = v8 >= a4 && v5 >= a4;
  if (v10)
  {
    v11 = a4;
  }

  else
  {
    v11 = v9;
  }

  if (v6 <= v7)
  {
    v12 = a2[5];
  }

  else
  {
    v12 = cf[5];
  }

  v13 = v7 > a3 || v6 > a3;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = a3;
  }

  if (v14 > v11)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v94 = *__error();
      v95 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v14;
        *&buf[8] = 1024;
        *&buf[10] = v11;
        _os_log_impl(&dword_1C278D000, v95, OS_LOG_TYPE_DEFAULT, "%d start, end:%d", buf, 0xEu);
      }

      *__error() = v94;
    }

    return;
  }

  if (v14 != v11)
  {
    if (cf[4] >= -9)
    {
      if (a2[4] > -10)
      {
        if (CFGetTypeID(cf) != __kCIIndexSetInvertedTypeID)
        {
          locked = lockedCountItemsInRange(a2, v14, v11, a5);
          v25 = cf[4];
          if (v25 > -10 || ((v26 = cf[6] - cf[5], v27 = locked - v25 - 10, v26 + 1 < v27) ? (v28 = v26 + 1) : (v28 = v27), v25 = -10 - v28, cf[4] = -10 - v28, (v28 & 0x80000000) != 0))
          {
            if (v25 >= -1)
            {
              v29 = cf[8];
            }

            else
            {
              v29 = 4;
            }

            if (v25 < -1)
            {
              v25 = -2 - v25;
            }

            if (v29 < v25 + locked)
            {
              _CIIndexSetMakeSpace(cf, locked, 0, 0, 0);
            }
          }
        }
      }

      else
      {
        _CIIndexSetForceBitmap(cf, 0, 0);
      }
    }

    if (a2[4] <= -10)
    {
      v30 = cf[6];
      v31 = (v30 - v11) >> 5;
      v32 = (v30 - v11) & 0x1F;
      v33 = (v30 - v14) >> 5;
      v34 = (v30 - v14) & 0x1F;
      v35 = a2[6];
      v36 = v30 - v35;
      if (v36)
      {
        if ((v36 & 0x1F) != 0)
        {
          *buf = 0u;
          v132 = 0u;
          initializeEnumberatorForRangeLocked(buf, a2, v14, v11);
          while (1)
          {
            v100 = _CIIndexSetEnumeratorNext(buf);
            if (!v100)
            {
              break;
            }

            v130 = -1;
            _CIIndexSetAddIndex(cf, v100, 0, &v130, a5);
          }

LABEL_81:
          v50 = cf[4];
          if (v50 <= -10)
          {
            v51 = cf[6] - cf[5];
            v52 = -20 - (v50 + a2[4]);
            if (v51 + 1 < v52)
            {
              v52 = v51 + 1;
            }

            cf[4] = -10 - v52;
            _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, 0, a5);
          }

          return;
        }

        v101 = (v35 - v11) >> 5;
        v102 = *(*(a2 + 5) + 4 * v101);
        v103 = v33 - v31;
        if (v33 != v31)
        {
          *(*(cf + 5) + 4 * v31) |= v102 & ~masks[v32];
          if (v103 >= 2)
          {
            v106 = 1 - v103;
            v107 = v31 + 1;
            v108 = v101 + 1;
            do
            {
              *(*(cf + 5) + 4 * v107++) |= *(*(a2 + 5) + 4 * v108++);
              v10 = __CFADD__(v106++, 1);
            }

            while (!v10);
          }

          *(*(cf + 5) + 4 * v33) |= masks[v34 + 1] & *(*(a2 + 5) + 4 * ((v35 - v14) >> 5));
          goto LABEL_81;
        }

        v104 = v34 + 1;
        v105 = masks[v32];
        if (v32 != v104)
        {
          v105 = masks[v104] & ~v105;
        }

        v40 = v105 & v102;
      }

      else
      {
        v37 = *(*(a2 + 5) + 4 * v31);
        if (v33 != v31)
        {
          *(*(cf + 5) + 4 * v31) |= v37 & ~masks[v32];
          v49 = v31 + 1;
          if (v49 < v33)
          {
            do
            {
              *(*(cf + 5) + 4 * v49) |= *(*(a2 + 5) + 4 * v49);
              ++v49;
            }

            while (v33 != v49);
          }

          *(*(cf + 5) + 4 * v33) |= masks[v34 + 1] & *(*(a2 + 5) + 4 * v33);
          goto LABEL_81;
        }

        v38 = v34 + 1;
        v39 = masks[v32];
        if (v32 != v38)
        {
          v39 = masks[v38] & ~v39;
        }

        v40 = v39 & v37;
      }

      *(*(cf + 5) + 4 * v31) |= v40;
      goto LABEL_81;
    }

    v41 = CFGetTypeID(a2);
    v43 = a2[4];
    if (v41 == __kCIIndexSetInvertedTypeID)
    {
      if (v43 == a2[6] - a2[5] + 1)
      {
        return;
      }
    }

    else if (v43 == -2 || !v43)
    {
      return;
    }

    v44 = cf[4];
    if (v44 <= -10)
    {
      if ((v43 & 0x80000000) != 0)
      {
        v67 = -2 - v43;
        v68 = a2 + 8;
        if (v43 > 0xFFFFFFFD)
        {
          LODWORD(v69) = 0;
        }

        else
        {
          v69 = 0;
          while (v68[v69] > v11)
          {
            if (v67 == ++v69)
            {
              LODWORD(v69) = -2 - v43;
              break;
            }
          }
        }

        v77 = cf[6] - cf[5];
        v78 = -12 - (v43 + v44);
        if (v77 + 1 < v78)
        {
          v78 = v77 + 1;
        }

        cf[4] = -10 - v78;
        if (v69 >= v67)
        {
          v79 = -2 - v43;
        }

        else
        {
          v79 = v69;
        }

        if (v69 < v67 && v68[v79] > v11)
        {
          ++v79;
        }

        if (v79 < v67)
        {
          v80 = v79 + v43 + 2;
          v81 = &a2[v79 + 8];
          do
          {
            v83 = *v81++;
            v82 = v83;
            if (v83 < v14)
            {
              break;
            }

            *(*(cf + 5) + 4 * ((cf[6] - v82) >> 5)) |= 1 << (*(cf + 24) - v82);
            v10 = __CFADD__(v80++, 1);
          }

          while (!v10);
        }

        goto LABEL_211;
      }

      *&buf[8] = 0;
      v132 = 0uLL;
      if (a2[6] < v11)
      {
        LODWORD(v11) = a2[6];
      }

      if (a2[5] > v14)
      {
        v14 = a2[5];
      }

      if (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID)
      {
        v45 = 3;
      }

      else
      {
        v45 = 1;
      }

      DWORD2(v132) = v45;
      v46 = a2[4];
      *buf = v11;
      *&buf[4] = v14;
      *&v132 = a2;
      if (v46 < 1)
      {
        if (v46 >= 0xFFFFFFF7)
        {
          v48 = -2 - v46;
          if (v46 > 0xFFFFFFFD)
          {
            goto LABEL_202;
          }

          if (v11 < a2[8])
          {
            if (v46 != -3)
            {
              if (v11 >= a2[9])
              {
                v48 = 1;
              }

              else if (v46 != -4)
              {
                if (v11 >= a2[10])
                {
                  v48 = 2;
                }

                else if (v46 != -5)
                {
                  if (v11 >= a2[11])
                  {
                    v48 = 3;
                  }

                  else if (v46 != -6)
                  {
                    if (v11 >= a2[12])
                    {
                      v48 = 4;
                    }

                    else if (v46 != -7)
                    {
                      if (v11 >= a2[13])
                      {
                        v48 = 5;
                      }

                      else if (v46 != -8 && v11 >= a2[14])
                      {
                        v48 = 6;
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_202;
          }
        }

        v48 = 0;
      }

      else
      {
        v47 = binarySearchMap(a2, v11);
        *&buf[8] = v47;
        if (v47 != a2[9])
        {
LABEL_203:
          while (1)
          {
            v96 = _CIIndexSetEnumeratorNext(buf);
            if (!v96)
            {
              break;
            }

            *(*(cf + 5) + 4 * ((cf[6] - v96) >> 5)) |= 1 << (*(cf + 24) - v96);
          }

          if (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID)
          {
            v97 = a2[6] - (a2[5] + a2[4]) + 1;
          }

          else
          {
            v97 = a2[4];
          }

          v98 = cf[6] - cf[5];
          v99 = v97 - cf[4] - 10;
          if (v98 + 1 < v99)
          {
            v99 = v98 + 1;
          }

          cf[4] = -10 - v99;
LABEL_211:

          _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, 0, v42);
          return;
        }

        v48 = a2[8] + v47 - a2[4];
      }

LABEL_202:
      *&buf[8] = v48;
      goto LABEL_203;
    }

    if ((v43 & 0x80000000) != 0)
    {
      v70 = -2 - v43;
      v71 = a2 + 8;
      if (v43 > 0xFFFFFFFD)
      {
        LODWORD(v72) = 0;
      }

      else
      {
        v72 = 0;
        while (v71[v72] > v11)
        {
          if (v70 == ++v72)
          {
            LODWORD(v73) = v70;
            LODWORD(v72) = v70;
            goto LABEL_178;
          }
        }
      }

      if (v14)
      {
        v84 = v14 - 1;
      }

      else
      {
        v84 = 0;
      }

      if (v72 < v70)
      {
        v73 = v72;
        while (v71[v73] > v84)
        {
          if (v70 == ++v73)
          {
            LODWORD(v73) = v70;
            goto LABEL_178;
          }
        }

        if (v72 > v73)
        {
          v119 = __si_assert_copy_extra_332();
          v127 = v119;
          v128 = "";
          if (v119)
          {
            v128 = v119;
          }

          __message_assert_336(v119, v120, v121, v122, v123, v124, v125, v126, "CIIndexSet.c", 3095, "sourceStart >= sourceEnd", v128);
          free(v127);
          if (__valid_fs(-1))
          {
            v129 = 2989;
          }

          else
          {
            v129 = 3072;
          }

          *v129 = -559038737;
          abort();
        }
      }

      else
      {
        LODWORD(v72) = v70;
        LODWORD(v73) = v70;
      }

LABEL_178:
      if (v73 < v70)
      {
        LODWORD(v70) = v73;
      }

      v85 = &v71[v72];
      v87 = (v70 - v72);
    }

    else
    {
      if (v14)
      {
        v53 = v14 - 1;
      }

      else
      {
        v53 = 0;
      }

      v54 = binarySearchMap(a2, v53);
      v55 = binarySearchMap(a2, v11);
      v56 = (v54 - v55);
      if (v54 < v55)
      {
        v109 = __si_assert_copy_extra_332();
        v117 = v109;
        v118 = "";
        if (v109)
        {
          v118 = v109;
        }

        __message_assert_336(v109, v110, v111, v112, v113, v114, v115, v116, "CIIndexSet.c", 3108, "sourceStart >= sourceEnd", v118);
        free(v117);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v57 = v55;
      v58 = a2[9];
      v59 = CFGetTypeID(a2);
      if (v57 >= v58 || v54 <= v58)
      {
        if (v59 == __kCIIndexSetInvertedTypeID)
        {
          *buf = -1;
          if (v54 > v57)
          {
            v74 = *(a2 + 5);
            v75 = v54 - 1;
            do
            {
              v76 = *(v74 + 4 * v75);
              if (v76 > v14)
              {
                *buf = -1;
                _CIIndexSetAddIndexesInRange(cf, v14, *(v74 + 4 * v75) - 1, buf, v42);
                v74 = *(a2 + 5);
                v76 = *(v74 + 4 * v75);
              }

              v14 = v76 + 1;
              v13 = v75-- <= v57;
            }

            while (!v13);
            if (*(v74 + 4 * v57) == v11)
            {
              return;
            }
          }

LABEL_195:
          if (v11 >= v14)
          {
            *buf = -1;
            _CIIndexSetAddIndexesInRange(cf, v14, v11, buf, v42);
          }

          return;
        }

        v85 = (*(a2 + 5) + 4 * v57);
        v86 = cf;
        v87 = v56;
LABEL_182:

        _CIIndexSetAddSortedIndexes(v86, v85, v87, 1, 0, 0, v42);
        return;
      }

      if (v59 == __kCIIndexSetInvertedTypeID)
      {
        *buf = -1;
        v60 = a2[4];
        v62 = a2[8];
        v61 = a2[9];
        v63 = v62 - v60 + v61;
        if (v54 <= v63)
        {
          v89 = 0;
        }

        else
        {
          if (v54 <= v63)
          {
            v64 = *(a2 + 5);
          }

          else
          {
            v64 = *(a2 + 5);
            v65 = v54 - 1;
            do
            {
              v66 = *(v64 + 4 * v65);
              if (v66 > v14)
              {
                *buf = -1;
                _CIIndexSetAddIndexesInRange(cf, v14, *(v64 + 4 * v65) - 1, buf, v42);
                v64 = *(a2 + 5);
                v60 = a2[4];
                v62 = a2[8];
                v61 = a2[9];
                v66 = *(v64 + 4 * v65);
              }

              v14 = v66 + 1;
              v63 = v62 - v60 + v61;
              v13 = v65-- <= v63;
            }

            while (!v13);
          }

          v89 = *(v64 + 4 * v63) == v11;
        }

        if (v61 > v57)
        {
          v90 = v61;
          v91 = *(a2 + 5);
          v92 = v90 - 1;
          do
          {
            v93 = *(v91 + 4 * v92);
            if (v93 > v14)
            {
              *buf = -1;
              _CIIndexSetAddIndexesInRange(cf, v14, *(v91 + 4 * v92) - 1, buf, v42);
              v91 = *(a2 + 5);
              v93 = *(v91 + 4 * v92);
            }

            v14 = v93 + 1;
            v13 = v92-- <= v57;
          }

          while (!v13);
          if (*(v91 + 4 * v57) == v11)
          {
            v89 = 1;
          }
        }

        if (v89)
        {
          return;
        }

        goto LABEL_195;
      }

      v88 = a2[8] - a2[4] + a2[9];
      _CIIndexSetAddSortedIndexes(cf, (*(a2 + 5) + 4 * v88), v54 - v88, 1, 0, 0, v42);
      v85 = (*(a2 + 5) + 4 * v57);
      v87 = (a2[9] - v57);
    }

    v86 = cf;
    goto LABEL_182;
  }

  if (v7 <= v11)
  {
    v17 = a2[4];
    if (v17 <= -10)
    {
      if (((*(*(a2 + 5) + 4 * ((v8 - v11) >> 5)) >> (v8 - v11)) & 1) == 0)
      {
        return;
      }

LABEL_48:
      *buf = -1;
      _CIIndexSetAddIndex(cf, v11, 0, buf, a5);
      return;
    }

    if (v17 < 0)
    {
      if (v17 < 0xFFFFFFFE && (a2[8] == v11 || v17 != -3 && (a2[9] == v11 || v17 != -4 && (a2[10] == v11 || v17 != -5 && (a2[11] == v11 || v17 != -6 && (a2[12] == v11 || v17 != -7 && (a2[13] == v11 || v17 != -8 && a2[14] == v11)))))))
      {
        goto LABEL_48;
      }
    }

    else
    {
      v18 = binarySearchMap(a2, v11);
      v19 = a2[9];
      v23 = (v18 < v19 || ((v20 = a2[8], v21 = v20 + v19 - a2[4], v18 < v20) ? (v22 = v18 >= v21) : (v22 = 0), v22)) && *(*(a2 + 5) + 4 * v18) == v11;
      if (v23 != (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID))
      {
        goto LABEL_48;
      }
    }
  }
}

void __processNodes_block_invoke(uint64_t a1, uint64_t a2)
{
  makeThreadId();
  v58 = 0;
  v57 = 1;
  if (**(a1 + 32))
  {
    return;
  }

  v4 = *(a1 + 48);
  v53 = *(a1 + 40);
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v5 = *(*(v4 + 8 * a2) + 56);
  if (*(v5 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_38;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v7 = setThreadIdAndInfo(*(v5 + 64), sIndexExceptionCallbacks, v5, 0x20000000, add_explicit + 1);
  *buf = v7;
  v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
  v51 = HIDWORD(v7);
  v50 = __PAIR64__(v9, v10);
  *(v8 + 216) = 0;
  v11 = *(v8 + 312);
  v12 = *(v8 + 224);
  if (v12)
  {
    v12(*(v8 + 288));
  }

  v49 = *buf;
  v48 = v51;
  v47 = v50;
  if (!_setjmp(v8))
  {
    v57 = 0;
    v21 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v22 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v21 + 1);
    v45 = HIDWORD(v22);
    *v46 = v22;
    v44 = __PAIR64__(v23, v24);
    v25 = threadData[9 * v22 + 1] + 320 * HIDWORD(v22);
    v26 = *(v25 + 312);
    v27 = *(v25 + 224);
    if (v27)
    {
      v27(*(v25 + 288));
    }

    v43 = *v46;
    v42 = v45;
    v41 = v44;
    if (!_setjmp(v25))
    {
      v58 = 1;
      v35 = *(*(a1 + 48) + 8 * a2);
      _ContentIndexDocSetIteratorProcessIterHits(v35, *(a1 + 76), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(v35 + 34), &v53);
      v58 = 0;
      v36 = threadData[9 * v43 + 1] + 320 * v42;
      *(v36 + 312) = v26;
      v37 = *(v36 + 232);
      if (v37)
      {
        v37(*(v36 + 288));
      }

      dropThreadId(v43, 0, v21 + 1);
      goto LABEL_35;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v40 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v40, 2u);
    }

    *(v25 + 312) = v26;
    v28 = v41;
    if (__THREAD_SLOT_KEY[0])
    {
      v29 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v29)
      {
        goto LABEL_46;
      }
    }

    else
    {
      makeThreadId();
      v29 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v29)
      {
        goto LABEL_46;
      }
    }

    v30 = v29;
    if (v29 < 0x801)
    {
LABEL_28:
      v31 = &threadData[9 * v30];
      v33 = *(v31 - 4);
      v32 = (v31 - 2);
      if (v33 > v28)
      {
        v34 = v30 - 1;
        do
        {
          CIOnThreadCleanUpPop(v34);
        }

        while (*v32 > v28);
      }

      dropThreadId(v43, 1, v21 + 1);
      CICleanUpReset(v43, HIDWORD(v41));
LABEL_35:
      v38 = threadData[9 * v49 + 1] + 320 * v48;
      *(v38 + 312) = v11;
      v39 = *(v38 + 232);
      if (v39)
      {
        v39(*(v38 + 288));
      }

      dropThreadId(v49, 0, add_explicit + 1);
      goto LABEL_38;
    }

LABEL_46:
    makeThreadId();
    v30 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v46 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v46, 2u);
  }

  *(v8 + 312) = v11;
  if ((~*(v8 + 212) & 0xA0000000) == 0)
  {
    v13 = *(v8 + 288);
    if (v13)
    {
      _CIMakeInvalid(v13);
    }
  }

  v14 = v47;
  if (__THREAD_SLOT_KEY[0])
  {
    v15 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v15)
    {
LABEL_44:
      makeThreadId();
      v16 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_14;
    }
  }

  else
  {
    makeThreadId();
    v15 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v15)
    {
      goto LABEL_44;
    }
  }

  v16 = v15;
  if (v15 >= 0x801)
  {
    goto LABEL_44;
  }

LABEL_14:
  v17 = &threadData[9 * v16];
  v19 = *(v17 - 4);
  v18 = (v17 - 2);
  if (v19 > v14)
  {
    v20 = v16 - 1;
    do
    {
      CIOnThreadCleanUpPop(v20);
    }

    while (*v18 > v14);
  }

  dropThreadId(v49, 1, add_explicit + 1);
  CICleanUpReset(v49, HIDWORD(v47));
LABEL_38:
  CIIndexSetDisposePerThreadCache(&v53);
  if (v58 == 1)
  {
    **(a1 + 56) = 1;
  }

  if (v57 == 1)
  {
    **(a1 + 32) = 1;
  }
}

void _ContentIndexDocSetIteratorProcessIterHits(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v178 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    v8 = *(a1 + 24);
    v168 = a7;
    v11 = a5;
    if (v8 != 0.0 && *(a1 + 12) == 0.0 && *(a1 + 16) == 0.0)
    {
      v13 = a2;
      v14 = (*(a1 + 48) & 0xFFFFFFFE) == 4;
    }

    else
    {
      v13 = a2;
      v14 = 0;
    }

    makeThreadId();
    v15 = *(a1 + 56);
    if (*(v15 + 8) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

      goto LABEL_225;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v176 = 0;
    v175 = 0;
    v17 = setThreadIdAndInfo(*(v15 + 64), sIndexExceptionCallbacks, v15, 0x20000000, add_explicit + 1);
    v176 = __PAIR64__(v17, HIDWORD(v17));
    v175 = __PAIR64__(v18, v19);
    v20 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
    *(v20 + 216) = 0;
    v167 = *(v20 + 312);
    v21 = *(v20 + 224);
    v22 = v20;
    if (v21)
    {
      v21(*(v20 + 288));
    }

    v174 = v176;
    v173 = v175;
    if (_setjmp(v22))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v22 + 312) = v167;
      if ((~*(v22 + 212) & 0xA0000000) == 0)
      {
        v23 = *(v22 + 288);
        if (v23)
        {
          _CIMakeInvalid(v23);
        }
      }

      if (__THREAD_SLOT_KEY[0])
      {
        v24 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v24)
        {
          goto LABEL_265;
        }
      }

      else
      {
        makeThreadId();
        v24 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v24)
        {
          goto LABEL_265;
        }
      }

      v25 = v24;
      if (v24 < 0x801)
      {
LABEL_18:
        v26 = &threadData[9 * v25];
        v28 = *(v26 - 4);
        v27 = v26 - 2;
        if (v28 > v173)
        {
          v29 = v25 - 1;
          do
          {
            CIOnThreadCleanUpPop(v29);
          }

          while (*v27 > v173);
        }

        dropThreadId(HIDWORD(v174), 1, add_explicit + 1);
        CICleanUpReset(HIDWORD(v174), HIDWORD(v173));
LABEL_225:
        *(a1 + 32) = 1;
        return;
      }

LABEL_265:
      makeThreadId();
      v25 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_18;
    }

    v166 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v30 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v166 + 1);
    v172 = __PAIR64__(v30, HIDWORD(v30));
    v171 = __PAIR64__(v31, v32);
    v33 = threadData[9 * v30 + 1] + 320 * HIDWORD(v30);
    v165 = *(v33 + 312);
    v34 = *(v33 + 224);
    if (v34)
    {
      v34(*(v33 + 288));
    }

    v170 = v172;
    v169 = v171;
    if (_setjmp(v33))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v33 + 312) = v165;
      if (__THREAD_SLOT_KEY[0])
      {
        v36 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v36)
        {
          goto LABEL_267;
        }
      }

      else
      {
        makeThreadId();
        v36 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v36)
        {
          goto LABEL_267;
        }
      }

      v37 = v36;
      if (v36 < 0x801)
      {
LABEL_32:
        v38 = &threadData[9 * v37];
        v40 = *(v38 - 4);
        v39 = v38 - 2;
        if (v40 > v169)
        {
          v41 = v37 - 1;
          do
          {
            CIOnThreadCleanUpPop(v41);
          }

          while (*v39 > v169);
        }

        dropThreadId(HIDWORD(v170), 1, v166 + 1);
        CICleanUpReset(HIDWORD(v170), HIDWORD(v169));
LABEL_222:
        v139 = threadData[9 * HIDWORD(v174) + 1] + 320 * v174;
        *(v139 + 312) = v167;
        v140 = *(v139 + 232);
        if (v140)
        {
          v140(*(v139 + 288));
        }

        dropThreadId(HIDWORD(v174), 0, add_explicit + 1);
        goto LABEL_225;
      }

LABEL_267:
      makeThreadId();
      v37 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_32;
    }

    v42 = a6;
    v164 = a6;
    v43 = *(a1 + 48);
    if ((v43 - 4) >= 4)
    {
      v48 = *(a1 + 48);
      v61 = v43 == 3;
      v44 = a3;
      v45 = a4;
      v46 = v11;
      if (!v61)
      {
        goto LABEL_46;
      }

      v49 = v13;
      v50 = v164;
      if (!v49)
      {
        goto LABEL_173;
      }

      ContentIndexDocSetSquashUpdate(a1, a3, a4);
      v42 = a6;
      v46 = v11;
      v45 = a4;
      v44 = a3;
    }

    else
    {
      v44 = a3;
      v45 = a4;
      v46 = v11;
      if (!v14 && !*(a1 + 80))
      {
        v47 = NormalResolvedDocSet(v11);
        v42 = a6;
        v46 = v11;
        v45 = a4;
        v44 = a3;
        *(a1 + 80) = v47;
      }
    }

    v48 = *(a1 + 48);
LABEL_46:
    if (v48 > 4)
    {
      v50 = v164;
      if (v48 > 7)
      {
        if ((v48 - 8) < 2)
        {
          goto LABEL_173;
        }

        goto LABEL_268;
      }

      if (v48 == 5)
      {
        *(a1 + 52) = 0;
        v51 = *(a1 + 96);
        if (!v51)
        {
          goto LABEL_173;
        }

        v74 = *(a1 + 72);
        v75 = *(a1 + 96);
        v76 = 0;
        do
        {
          v77 = *v74++;
          v57 = v76 | *(v77 + 52);
          *(a1 + 52) = v57;
          v76 = v57;
          --v75;
        }

        while (v75);
      }

      else if (v48 == 6)
      {
        *(a1 + 52) = 0;
        v51 = *(a1 + 96);
        if (!v51)
        {
          goto LABEL_173;
        }

        v67 = *(a1 + 72);
        v68 = *(a1 + 96);
        v69 = 0;
        do
        {
          v70 = *v67++;
          v71 = *(v70 + 52);
          if (v71 == 1)
          {
            v72 = v42;
          }

          else
          {
            v72 = 1;
          }

          if (!v72)
          {
            v69 = 3;
          }

          v73 = v69 | v71;
          *(a1 + 52) = v69 | v71;
          v69 |= v71;
          --v68;
        }

        while (v68);
        v57 = v73;
      }

      else if (v164)
      {
        v51 = *(a1 + 96);
        if (!v51)
        {
          goto LABEL_107;
        }

        v63 = *(a1 + 72);
        v64 = *(a1 + 52);
        v65 = *(a1 + 96);
        do
        {
          v66 = *v63++;
          v57 = v64 | *(v66 + 52);
          *(a1 + 52) = v57;
          v64 = v57;
          --v65;
        }

        while (v65);
      }

      else
      {
        v78 = *(a1 + 72);
        v79 = *(*v78 + 52);
        *(a1 + 52) = v79;
        if (v79 > 2)
        {
          goto LABEL_107;
        }

        v80 = *(a1 + 96);
        if (v80 < 2)
        {
          goto LABEL_107;
        }

        v81 = v80 - 1;
        v82 = v78 + 1;
        do
        {
          v83 = *v82++;
          v84 = *(v83 + 52);
          if (v84 == 3)
          {
            v84 = 1;
          }

          v85 = v79 | v84;
          *(a1 + 52) = v79 | v84;
          v79 |= v84;
          --v81;
        }

        while (v81);
        v57 = v85;
        v51 = v80;
      }
    }

    else
    {
      v50 = v164;
      if (v48 < 4)
      {
        goto LABEL_173;
      }

      if (v48 != 4)
      {
        goto LABEL_268;
      }

      *(a1 + 52) = 0;
      v51 = *(a1 + 96);
      if (!v51)
      {
        goto LABEL_173;
      }

      v52 = *(a1 + 72);
      v53 = 0;
      v54 = v52;
      v55 = *(a1 + 96);
      do
      {
        v56 = *v54++;
        v57 = v53 | *(v56 + 52);
        *(a1 + 52) = v57;
        v53 = v57;
        --v55;
      }

      while (v55);
      v58 = v52;
      v59 = v51;
      while (1)
      {
        v60 = *(*v58 + 52);
        if (v50)
        {
          if (v60 == 1)
          {
            break;
          }
        }

        if (v57)
        {
          v61 = v60 != 3 && v42 == 0;
          if (v61)
          {
            v62 = 1;
            goto LABEL_94;
          }
        }

        ++v58;
        if (!--v59)
        {
          goto LABEL_95;
        }
      }

      v62 = 3;
LABEL_94:
      *(a1 + 52) = v62;
      v57 = v62;
    }

LABEL_95:
    if (v48 <= 4)
    {
      v86 = v57 != 1 || v14;
      if ((v86 & 1) == 0)
      {
        if (!*(a1 + 88))
        {
          v87 = NormalResolvedDocSet(v46);
          v46 = v11;
          v45 = a4;
          v44 = a3;
          *(a1 + 88) = v87;
          v51 = *(a1 + 96);
        }

        if (v51)
        {
          v88 = 0;
          do
          {
            v102 = *(*(a1 + 72) + 8 * v88);
            if (*(v102 + 52) == 3)
            {
              if (*(v102 + 48) == 1)
              {
                v100 = *(a1 + 88);
                *buf = -1;
                _CIIndexSetAddIndexesInRange(v100, v44, v45, buf, v35.n128_u64[0]);
                v45 = a4;
                v44 = a3;
                v46 = v11;
              }

              else
              {
                v103 = ContentIndexDocSetGrabBitVector(v102);
                v45 = a4;
                v44 = a3;
                v46 = v11;
                if (v103)
                {
                  CIIndexSetAddRange(*(a1 + 88), v103, a3, a4, v35.n128_u64[0]);
                  v46 = v11;
                  v45 = a4;
                  v44 = a3;
                }
              }
            }

            ++v88;
            v101 = *(a1 + 96);
          }

          while (v88 < v101);
          if (v101)
          {
            v113 = 0;
            while (1)
            {
              v115 = *(*(a1 + 72) + 8 * v113);
              if (*(v115 + 52) == 1)
              {
                break;
              }

LABEL_153:
              ++v113;
              v114 = *(a1 + 96);
              if (v113 >= v114)
              {
                v50 = v164;
                if (v114)
                {
                  v122 = 0;
                  do
                  {
                    v123 = *(*(a1 + 72) + 8 * v122);
                    if (!*(v123 + 52))
                    {
                      v124 = ContentIndexDocSetGrabBitVector(v123);
                      v46 = v11;
                      v45 = a4;
                      v44 = a3;
                      if (v124)
                      {
                        CIIndexSetRemoveRange(*(a1 + 88), v124, a3, a4);
                        v46 = v11;
                        v45 = a4;
                        v44 = a3;
                      }
                    }

                    ++v122;
                  }

                  while (v122 < *(a1 + 96));
                }

                goto LABEL_173;
              }
            }

            v94 = *(*(a1 + 72) + 8 * v113);
            v116 = *(v115 + 48);
            if (v116 > 9)
            {
              goto LABEL_269;
            }

            v117 = 1 << v116;
            if ((v117 & 0x307) != 0)
            {
LABEL_157:
              v118 = 0;
              v119 = ContentIndexDocSetGrabBitVector(v94);
              if (!v119)
              {
                goto LABEL_159;
              }

              goto LABEL_158;
            }

            if ((v117 & 0xF0) != 0)
            {
              v120 = (v115 + 88);
            }

            else
            {
              v121 = *(v115 + 64);
              if (!v121)
              {
                goto LABEL_157;
              }

              v120 = (v121 + 96);
            }

            v118 = *v120;
            v119 = ContentIndexDocSetGrabBitVector(v94);
            if (!v119)
            {
LABEL_159:
              v44 = a3;
              v45 = a4;
              v46 = v11;
              if (v118)
              {
                CIIndexSetAddRange(*(a1 + 88), v118, a3, a4, v35.n128_u64[0]);
                v46 = v11;
                v45 = a4;
                v44 = a3;
              }

              goto LABEL_153;
            }

LABEL_158:
            CIIndexSetRemoveRange(*(a1 + 88), v119, a3, a4);
            goto LABEL_159;
          }
        }
      }

      goto LABEL_173;
    }

    if ((v48 - 5) >= 2)
    {
      if ((v48 - 8) < 2)
      {
        goto LABEL_173;
      }

      if (v48 != 7)
      {
        goto LABEL_268;
      }

LABEL_107:
      if (!v14 && *(a1 + 52) == 1)
      {
        if (!*(a1 + 88))
        {
          v89 = NormalResolvedDocSet(v46);
          v46 = v11;
          v45 = a4;
          v44 = a3;
          *(a1 + 88) = v89;
        }

        if (*(a1 + 96))
        {
          v90 = 0;
          while (1)
          {
            v93 = *(*(a1 + 72) + 8 * v90);
            v94 = v93;
            v95 = *(v93 + 52);
            if (v95 != 3)
            {
              break;
            }

            v91 = ContentIndexDocSetGrabBitVector(v93);
            v46 = v11;
            v45 = a4;
            v44 = a3;
            v92 = v91;
            if (v91)
            {
              goto LABEL_114;
            }

LABEL_115:
            if (++v90 >= *(a1 + 96))
            {
              goto LABEL_173;
            }
          }

          if (v95 != 1)
          {
            goto LABEL_115;
          }

          v96 = *(v93 + 48);
          if (v96 > 9)
          {
            goto LABEL_269;
          }

          v97 = 1 << v96;
          if ((v97 & 0x307) != 0)
          {
            goto LABEL_115;
          }

          if ((v97 & 0xF0) != 0)
          {
            v98 = (v93 + 88);
          }

          else
          {
            v99 = *(v93 + 64);
            if (!v99)
            {
              goto LABEL_115;
            }

            v98 = (v99 + 96);
          }

          v92 = *v98;
          if (!*v98)
          {
            goto LABEL_115;
          }

LABEL_114:
          CIIndexSetAddRange(*(a1 + 88), v92, a3, a4, v35.n128_u64[0]);
          v46 = v11;
          v45 = a4;
          v44 = a3;
          goto LABEL_115;
        }
      }

LABEL_173:
      v125 = *(a1 + 48);
      v126 = v125;
      if (v44 == 1 && (v125 == 9 || (v125 & 0xFFFFFFFC) == 4))
      {
        CIIndexSetShrink(*(a1 + 88), v35.n128_u64[0]);
        v46 = v11;
        v45 = a4;
        v44 = a3;
        v126 = *(a1 + 48);
      }

      if (v126 <= 4)
      {
        if (v126 < 4)
        {
          goto LABEL_215;
        }

        if (v126 == 4)
        {
          if (!v14)
          {
            v128 = *(a1 + 96);
            if (v128)
            {
              v129 = 0;
              while (1)
              {
                v94 = *(*(a1 + 72) + 8 * v129);
                if (v50 && *(v94 + 52))
                {
                  goto LABEL_196;
                }

                v132 = *(v94 + 48);
                if (v132 <= 3)
                {
                  if (v132 > 1)
                  {
                    if (v132 == 2)
                    {
                      goto LABEL_196;
                    }

LABEL_208:
                    v134 = *(v94 + 64);
                    if (!v134)
                    {
                      goto LABEL_196;
                    }

                    v133 = *(v134 + 88);
                    if (!v133)
                    {
                      goto LABEL_196;
                    }

LABEL_201:
                    CIIndexSetAddRange(*(a1 + 80), v133, a3, a4, v35.n128_u64[0]);
                    v45 = a4;
                    v44 = a3;
                    v128 = *(a1 + 96);
                    goto LABEL_196;
                  }

                  if (v132)
                  {
                    if (v132 == 1)
                    {
                      v135 = *(a1 + 80);
                      *buf = -1;
                      _CIIndexSetAddIndexesInRange(v135, v44, v45, buf, v35.n128_u64[0]);
                      v44 = a3;
                      goto LABEL_215;
                    }

LABEL_269:
                    assert_invalid_doc_type(v94);
                  }
                }

                else
                {
                  if ((v132 - 4) >= 4)
                  {
                    if (v132 == 8)
                    {
                      goto LABEL_208;
                    }

                    if (v132 != 9)
                    {
                      goto LABEL_269;
                    }
                  }

                  v133 = *(*(*(a1 + 72) + 8 * v129) + 80);
                  if (v133)
                  {
                    goto LABEL_201;
                  }
                }

LABEL_196:
                if (++v129 >= v128)
                {
                  goto LABEL_215;
                }
              }
            }
          }

          goto LABEL_215;
        }

LABEL_268:
        v94 = a1;
        goto LABEL_269;
      }

      if (v126 > 7)
      {
        if ((v126 - 8) < 2)
        {
          goto LABEL_215;
        }

        goto LABEL_268;
      }

      if (v126 == 5)
      {
        if (!v14 && (!v50 || *(a1 + 52) != 3))
        {
          v144 = *(a1 + 96);
          if (!*(a1 + 80))
          {
            v145 = NormalResolvedDocSet(v46);
            v44 = a3;
            *(a1 + 80) = v145;
          }

          if (v144)
          {
            v146 = 8 * v144;
            MEMORY[0x1EEE9AC00](v35);
            bzero(&v162 - ((8 * v144 + 15) & 0xFFFFFFFF0), 8 * v144);
            v147 = 0;
            do
            {
              v148 = ContentIndexDocSetGrabBitVector(*(*(a1 + 72) + v147));
              *(&v162 + v147 - ((v146 + 15) & 0xFFFFFFFF0)) = v148;
              if (!v148)
              {
                goto LABEL_245;
              }

              v147 += 8;
            }

            while (v146 != v147);
            CIIndexSetAddIntersectionInRange(*(a1 + 80), (&v162 - ((v146 + 15) & 0xFFFFFFFF0)), v144, a3, a4, v35);
LABEL_245:
            v44 = a3;
            goto LABEL_215;
          }
        }

        goto LABEL_215;
      }

      if (v126 == 6)
      {
        if (!v14 && (!v50 || !*(a1 + 52)))
        {
          _CIIndexSetClearRange(*(a1 + 80), v44, v45);
          v141 = **(a1 + 72);
          if (!*(v141 + 52) || *(v141 + 48) >= 4u)
          {
            v142 = ContentIndexDocSetGrabBitVector(v141);
            if (v142)
            {
              CIIndexSetAddRange(*(a1 + 80), v142, a3, a4, v143);
            }
          }

          CIIndexSetInvertRange(*(a1 + 80), a3, a4);
          v44 = a3;
        }

        goto LABEL_215;
      }

      if (v14 || v50 && *(a1 + 52) || (v130 = ContentIndexDocSetGrabBitVector(**(a1 + 72)), v44 = a3, !v130) || (CIIndexSetAddRange(*(a1 + 80), v130, a3, a4, v35.n128_u64[0]), v44 = a3, *(a1 + 96) < 2u))
      {
LABEL_215:
        if (v44 == 1)
        {
          v136 = *(a1 + 48);
          if (v136 == 9 || (v136 & 0xFFFFFFFC) == 4)
          {
            CIIndexSetShrink(*(a1 + 80), v35.n128_u64[0]);
          }
        }

        v137 = threadData[9 * HIDWORD(v170) + 1] + 320 * v170;
        *(v137 + 312) = v165;
        v138 = *(v137 + 232);
        if (v138)
        {
          v138(*(v137 + 288));
        }

        dropThreadId(HIDWORD(v170), 0, v166 + 1);
        goto LABEL_222;
      }

      v163 = a4 + 32;
      v131 = 1;
      while (1)
      {
        v149 = *(*(a1 + 72) + 8 * v131);
        v150 = *(v149 + 52);
        v151 = ContentIndexDocSetGrabBitVector(v149);
        v152 = v151;
        v44 = a3;
        if (!v150)
        {
          break;
        }

        if (v151)
        {
          v153 = *(*(a1 + 72) + 8 * v131);
          v94 = v153;
          v154 = *(v153 + 48);
          if (v154 > 9)
          {
            goto LABEL_269;
          }

          v155 = 1 << v154;
          if ((v155 & 0x307) == 0)
          {
            if ((v155 & 0xF0) != 0)
            {
              v156 = *(v153 + 88);
              if (!v156)
              {
                goto LABEL_247;
              }
            }

            else
            {
              v161 = *(v153 + 64);
              if (!v161)
              {
                goto LABEL_247;
              }

              v156 = *(v161 + 96);
              if (!v156)
              {
                goto LABEL_247;
              }
            }

            if (*(v94 + 52) != 1)
            {
              goto LABEL_247;
            }

            v162 = v156;
            v157 = *(*(v94 + 56) + 68);
            if (a4 == v157)
            {
              v158 = *(*(v94 + 56) + 68);
            }

            else
            {
              v158 = v163 - ((a4 - v157) & 0x1F);
            }

            v159 = CIIndexSetCreateWithRangeWithCache(a3, v158, v168);
            CIIndexSetAddRange(v159, v152, a3, a4, v160);
            CIIndexSetRemoveRange(v159, v162, a3, a4);
            CIIndexSetRemoveRange(*(a1 + 80), v159, a3, a4);
            CIIndexSetReleaseToPerThreadCache(v159, v168);
            goto LABEL_246;
          }
        }

LABEL_247:
        if (++v131 >= *(a1 + 96))
        {
          goto LABEL_215;
        }
      }

      if (!v151)
      {
        goto LABEL_247;
      }

      CIIndexSetRemoveRange(*(a1 + 80), v151, a3, a4);
LABEL_246:
      v44 = a3;
      goto LABEL_247;
    }

    v104 = v57 != 1 || v14;
    if (v104)
    {
      goto LABEL_173;
    }

    if (!*(a1 + 88))
    {
      v105 = NormalResolvedDocSet(v46);
      v46 = v11;
      v45 = a4;
      v44 = a3;
      *(a1 + 88) = v105;
      v51 = *(a1 + 96);
    }

    if (!v51)
    {
      goto LABEL_173;
    }

    v106 = v51;
    v107 = 0;
    while (1)
    {
      v108 = *(*(a1 + 72) + 8 * v107);
      if (*(v108 + 52) != 1)
      {
        goto LABEL_141;
      }

      v94 = *(*(a1 + 72) + 8 * v107);
      v109 = *(v108 + 48);
      if (v109 > 9)
      {
        goto LABEL_269;
      }

      v110 = 1 << v109;
      if ((v110 & 0x307) != 0)
      {
        goto LABEL_141;
      }

      if ((v110 & 0xF0) != 0)
      {
        v111 = *(v108 + 88);
        if (!v111)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v112 = *(v108 + 64);
        if (!v112)
        {
          goto LABEL_141;
        }

        v111 = *(v112 + 96);
        if (!v111)
        {
          goto LABEL_141;
        }
      }

      CIIndexSetAddRange(*(a1 + 88), v111, a3, a4, v35.n128_u64[0]);
      v46 = v11;
      v45 = a4;
      v44 = a3;
      v106 = *(a1 + 96);
LABEL_141:
      if (++v107 >= v106)
      {
        goto LABEL_173;
      }
    }
  }
}

intptr_t ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_3(uint64_t a1)
{
  ContentIndexDocSetIteratorDispose(*(a1 + 32));
  v1 = freeSemaphore;

  return dispatch_semaphore_signal(v1);
}

uint64_t _CIIndexSetEnumeratorNext(unsigned int *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[6];
  if (!v3)
  {
    v26 = a1[2];
    if (v26 >= -2 - *(v1 + 16))
    {
      return 0;
    }

    a1[2] = v26 + 1;
    v4 = *(v1 + 4 * v26 + 32);
    if (v4 < v2)
    {
      return 0;
    }

    return v4;
  }

  v4 = *a1;
  if (v3 != 3)
  {
    if (v3 == 2)
    {
      v5 = *(v1 + 24);
      v6 = v5 - v4;
      if (v5 < v4 || v4 < v2)
      {
        return 0;
      }

      v8 = *(v1 + 40);
      v9 = v6 >> 5;
      v10 = *(v8 + 4 * v9);
      if (((v10 >> v6) & 1) == 0)
      {
        v11 = v5 - v2;
        v12 = (v5 - v2) >> 5;
        v13 = (v5 - v2) & 0x1F;
        if (v9 == v12)
        {
          v14 = v13 + 1;
          v15 = masks[v6 & 0x1F];
          if ((v6 & 0x1F) != v14)
          {
            v15 = masks[v14] & ~v15;
          }

          v4 = v15 & v10;
          if (v4)
          {
            v16 = v5 - (v6 & 0xFFFFFFE0);
            v17 = __clz(__rbit32(v4));
            v18 = v16 + ~v17;
            v19 = v16 - v17;
LABEL_54:
            *a1 = v18;
            return v19;
          }

          return v4;
        }

        v34 = v10 & ~masks[v6 & 0x1F];
        if (v34)
        {
          v35 = v5 - (v6 & 0xFFFFFFE0);
          v36 = __rbit32(v34);
LABEL_53:
          v42 = __clz(v36);
          v18 = v35 + ~v42;
          v19 = v35 - v42;
          goto LABEL_54;
        }

        while (1)
        {
          v40 = v9 + 1;
          if (v9 + 1 >= v12)
          {
            break;
          }

          v41 = *(v8 + 4 + 4 * v9++);
          if (v41)
          {
            v35 = v5 - 32 * v40;
            v36 = __rbit32(v41);
            goto LABEL_53;
          }
        }

        v43 = masks[v13 + 1] & *(v8 + 4 * v12);
        if (!v43)
        {
          return 0;
        }

        v44 = v5 - (v11 & 0xFFFFFFE0);
        v45 = __clz(__rbit32(v43));
        v4 = v44 - v45;
        *a1 = v4;
        if (v44 == v45)
        {
          return v4;
        }

        v32 = v44 + ~v45;
LABEL_33:
        *a1 = v32;
        return v4;
      }

LABEL_32:
      v32 = v4 - 1;
      goto LABEL_33;
    }

    v27 = *(v1 + 36);
    v28 = a1[2];
    if (v28 < v27)
    {
      v29 = *(v1 + 40);
      v30 = v28 + 1;
      a1[2] = v28 + 1;
      v4 = *(v29 + 4 * v28);
      if (v4 >= v2)
      {
        if (v30 == *(v1 + 36))
        {
          a1[2] = *(v1 + 32) + v30 - *(v1 + 16);
          return v4;
        }

        return v4;
      }

      return 0;
    }

    if (v27 >= *(v1 + 16))
    {
      return 0;
    }

    if (v28 >= *(v1 + 32))
    {
      return 0;
    }

    v33 = *(v1 + 40);
    a1[2] = v28 + 1;
    v4 = *(v33 + 4 * v28);
    if (v4 < v2)
    {
      return 0;
    }

    return v4;
  }

  if (v4 < v2)
  {
    return 0;
  }

  v20 = *(v1 + 16);
  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = *(v1 + 36);
  LODWORD(v22) = a1[2];
  if (v22 < v21)
  {
    v23 = v21;
    v22 = v22;
    v24 = *a1;
    while (1)
    {
      v4 = v24;
      v25 = *(*(v1 + 40) + 4 * v22);
      v24 = (v24 - 1);
      *a1 = v24;
      if (v4 > v25)
      {
        return v4;
      }

      if (v24 < v2)
      {
        return 0;
      }

      a1[2] = v22 + 1;
      v21 = *(v1 + 36);
      if (v22 + 1 == v21)
      {
        LODWORD(v22) = v22 + 1 - v20 + *(v1 + 32);
        a1[2] = v22;
        v21 = *(v1 + 36);
        v4 = v24;
        break;
      }

      if (v23 == ++v22)
      {
        v4 = v24;
        break;
      }
    }
  }

  if (v21 < v20)
  {
    v37 = 4 * v22;
    while (*(v1 + 32) > v22)
    {
      v38 = *(*(v1 + 40) + v37);
      v39 = (v4 - 1);
      *a1 = v39;
      if (v4 > v38)
      {
        return v4;
      }

      if (v39 < v2)
      {
        return 0;
      }

      LODWORD(v22) = v22 + 1;
      a1[2] = v22;
      v37 += 4;
      v4 = (v4 - 1);
      if (*(v1 + 36) >= v20)
      {
        goto LABEL_49;
      }
    }
  }

  v39 = v4;
LABEL_49:
  *a1 = v39 - 1;
  return v39;
}