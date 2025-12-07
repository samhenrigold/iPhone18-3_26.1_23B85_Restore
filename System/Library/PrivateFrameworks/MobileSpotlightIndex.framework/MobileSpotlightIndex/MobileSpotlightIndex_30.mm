void si_initialIndexingEnded(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = *a1;
    if (**(*a1 + 1392))
    {
      si_sync_ctx_create_with_defer_fd(*a1, 0);
      *(v5 + 64) = *(a1 + 64);
      *(v5 + 56) = 9719;
      *(a1 + 64) = 0;
      syncIndex(v5, 0);
      v6 = db_shrink_cache(*(v4 + 1192));
      if (v6)
      {
        si_makeUnavailable(v4, v6, 0, 4, "Failure in db_shrink_cache at si_initialIndexingEnded");
      }

      else
      {
        v7 = *(a1 + 80);
        if (gSISystemOnBattery == 1 && (v8 = *(v4 + 2360)) != 0 && (v9 = *(v8 + 80)) != 0)
        {
          v10 = *(v8 + 144);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 0x40000000;
          v11[2] = __si_initialIndexingEnded_block_invoke;
          v11[3] = &__block_descriptor_tmp_893;
          v12 = v7;
          v9(v10, 0, @"InitialIndexingEnded", v11);
        }

        else
        {
          setupAndIssueMerge(v4, v7, 0, 0, 0);
        }
      }
    }
  }

  si_sync_ctx_free(a1, a2 != 0, 9741, "void si_initialIndexingEnded(si_sync_ctx *, Boolean)");
}

void __si_initialIndexingEnded_block_invoke(uint64_t result, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    setupAndIssueMerge(a2, *(result + 32), a3, a4, a5);
  }
}

void setupAndIssueMerge(void *result, int a2, void *a3, uint64_t a4, NSObject *a5)
{
  v9 = result[174];
  v10 = result[173];
  v11 = *(v9 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v9;
    do
    {
      while (*(*(v15 + 8 * v12) + 40) != a2)
      {
        if (v14)
        {
          goto LABEL_11;
        }

        if (++v12 >= v11)
        {
          goto LABEL_13;
        }
      }

      if (!v14)
      {
        v14 = *(v15 + 8 * v12);
      }

      ++v13;
      ++v12;
    }

    while (v12 < v11);
    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_25;
  }

  v13 = 0;
LABEL_13:
  v17 = *(v10 + 2);
  if (v17)
  {
    v16 = 0;
    v14 = 0;
    v18 = *v10;
    do
    {
      if (*(*v18 + 40) == a2)
      {
        if (!v14)
        {
          v14 = *v18;
        }

        ++v13;
        v16 = 1;
      }

      else if (v14)
      {
        break;
      }

      ++v18;
      --v17;
    }

    while (v17);
    if (v11 >= 2 && (v16 & 1) != 0)
    {
      setupAndIssueMerge(result, 1, a3, a4, a5);
    }

    if (v14)
    {
LABEL_25:
      v19 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
      *v19 = result;
      if ((v16 & 1) != 0 && v13 == 1)
      {
        v20 = result[173];
        v21 = *(v14 + 56);
        if (!v21)
        {
          goto LABEL_35;
        }

        v22 = *(v20 + 8);
        if (!v22)
        {
          goto LABEL_35;
        }

        v23 = 0;
        while (*(*(*v20 + 8 * v23) + 56) != v21)
        {
          if (v22 == ++v23)
          {
            goto LABEL_35;
          }
        }

        if ((v23 + 1) >= 2)
        {
          v13 = count_IndexSet(result[173], v23 - 1, *(v14 + 52));
          v24 = v23 - v13;
        }

        else
        {
LABEL_35:
          v24 = 0;
          v13 = 1;
        }

        v14 = *(*v20 + 8 * v24);
      }

      if (v16)
      {
        v25 = v13;
      }

      else
      {
        v25 = -1;
      }

      *(v19 + 2) = *(v14 + 56);
      *(v19 + 3) = v25;
      v19[16] = v16;
      *(v19 + 1041) = 0;
      *(v19 + 131) = "void setupAndIssueMerge(SIRef, uint32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)";
      *(v19 + 274) = 5;
      v19[1100] = 0;
      if (v16)
      {
        __strlcpy_chk((v19 + 17), "live.%d.", 1024, 1024);
      }

      else
      {
        __strlcpy_chk((v19 + 17), "%d.", 1024, 1024);
      }

      v26 = v19 + 1064;
      si_power_info_init((v19 + 1064), a3, a4, a5);
      if (!*(v19 + 136) && !*v26)
      {
        v28 = result[295];
        if (v28)
        {
          v29 = *(v28 + 64);
          if (v29)
          {
            *v26 = v29(*(v28 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9688, "void setupAndIssueMerge(SIRef, uint32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)");
          }
        }
      }

      v27 = result[133];

      si_enqueue_work(v27, si_mergeIndex, v19);
    }
  }
}

void si_mergeIndex(const char **a1, int a2)
{
  v159 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (PLShouldLogRegisteredEvent())
    {
      v4 = CFDictionaryCreate(0, 0, 0, 0, 0, 0);
      Mutable = CFStringCreateMutable(0, 200);
      CFStringAppend(Mutable, @"com.apple.searchd.merge");
      if (*a1)
      {
        v6 = *(*a1 + 15);
        if (v6)
        {
          if (v6 == 1)
          {
            v7 = "cs_priority";
          }

          else if (v6 == 3)
          {
            v7 = "cs_mail";
          }

          else
          {
            v8 = (v6 & 1) != 0 ? 2 : (v6 >> 1) - 1;
            v7 = v8 >= 7 ? "cs_default" : off_1E8196C28[v8];
          }

          v9 = CFStringCreateWithCString(0, v7, 0x8000100u);
          if (v9)
          {
            v10 = v9;
            CFStringAppend(Mutable, @".");
            CFStringAppend(Mutable, v10);
            CFRelease(v10);
          }
        }
      }

      v11 = a1[131];
      if (v11)
      {
        v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
        if (v12)
        {
          v13 = v12;
          CFStringAppend(Mutable, @".");
          CFStringAppend(Mutable, v13);
          CFRelease(v13);
        }
      }

      *keys = @"processName";
      *&keys[8] = Mutable;
      *values = @"searchd";
      *&values[8] = v4;
      v14 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      PLLogRegisteredEvent();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      CFRelease(v14);
    }

    v15 = *a1;
    v16 = *a1;
    if (!a1[138])
    {
      a1[138] = time(0);
    }

    disableProcMon();
    v140 = 0;
    if (!fd_setDir(*(v16 + 32), &v140))
    {
      goto LABEL_168;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v18 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(v16 + 1192), 0x40000000, add_explicit + 1);
    v138 = HIDWORD(v18);
    v139 = v18;
    v136 = v20;
    v137 = v19;
    v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
    *(v21 + 216) = 0;
    v22 = *(v21 + 312);
    v23 = *(v21 + 224);
    v24 = v21;
    if (v23)
    {
      v23(*(v21 + 288));
    }

    if (_setjmp(v24))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *keys = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", keys, 2u);
      }

      v24[78] = v22;
      CIOnThreadCleanUpReset(v136);
      dropThreadId(v139, 1, add_explicit + 1);
      CICleanUpReset(v139, v137);
LABEL_165:
      v121 = a1;
      v122 = v140;
      MEMORY[0x1C6921200](v140);
      if ((v122 & 0x80000000) == 0)
      {
        close(v122);
      }

      a1 = v121;
LABEL_168:
      enableProcMon();
      goto LABEL_169;
    }

    v25 = a1 + 133;
    if (!a1[136] && !*v25)
    {
      v55 = *(v16 + 2360);
      if (v55)
      {
        v56 = *(v55 + 64);
        if (v56)
        {
          *v25 = v56(*(v55 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9414, "void si_mergeIndex(void *, Boolean)");
        }
      }
    }

    if (!*(a1 + 2) && ((*(a1 + 1042) & 1) != 0 || (a1[2] & 1) == 0))
    {
      v26 = *(v16 + 1392);
      if (*(v26 + 16) != -1)
      {
        for (i = (v15 + 1392); ; v26 = *i)
        {
          v28 = ContentIndexListClone(v26);
          *(v28 + 4) = -1;
          if (si_swapIndexSet(v16, v26, v28, i, v29, v30, v31, v32))
          {
            break;
          }

          ContentIndexListFree(v28);
        }

        _CIDisableUpdates(v33);
      }
    }

    v34 = *__error();
    v35 = _SILogForLogForCategory(0);
    v36 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v35, v36))
    {
      if (*(a1 + 1042))
      {
        v37 = "Full";
      }

      else
      {
        v37 = "Partial";
      }

      v38 = "Normal";
      v39 = si_merge_reason_names[*(a1 + 274)];
      v40 = *(a1 + 1043);
      if (*(a1 + 1041))
      {
        v38 = "Vacuum";
      }

      *keys = 136315906;
      *&keys[4] = v37;
      v41 = "Forced";
      *&keys[12] = 2080;
      *&keys[14] = v38;
      v149 = 2080;
      v150 = v39;
      if (!v40)
      {
        v41 = "Voluntary";
      }

      v151 = 2080;
      v152 = v41;
      _os_log_impl(&dword_1C278D000, v35, v36, "Attempt to merge (%s/%s/%s/%s)", keys, 0x2Au);
    }

    *__error() = v34;
    if (*(a1 + 1042) == 1)
    {
      *(a1 + 3) = -1;
      if ((transfer_live_indexes(v16) & 1) == 0)
      {
        v52 = *__error();
        v53 = _SILogForLogForCategory(0);
        v54 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v53, v54))
        {
          *keys = 0;
          _os_log_impl(&dword_1C278D000, v53, v54, "Failed to transfer live indexes", keys, 2u);
        }

        *__error() = v52;
        goto LABEL_159;
      }
    }

    v42 = *a1;
    if (*(a1 + 16))
    {
      v43 = 1384;
    }

    else
    {
      v43 = 1392;
    }

    v44 = *(v42 + v43);
    v45 = v44;
    *keys = v16;
    __checkIndexSetDocIdOrder(v16, v44);
    v46 = *(a1 + 3);
    if (v46 == -1)
    {
      v50 = 0;
      v51 = *(v45 + 2);
      *(a1 + 3) = v51;
      v46 = v51;
    }

    else
    {
      v47 = *(a1 + 2);
      if (v47 && (v48 = *(v45 + 2), v48))
      {
        v49 = 0;
        while (*(*(*v45 + 8 * v49) + 56) != v47)
        {
          if (v48 == ++v49)
          {
            goto LABEL_64;
          }
        }

        v50 = v49;
      }

      else
      {
LABEL_64:
        v50 = 0;
      }
    }

    if (!v46 || v50 + v46 > *(v45 + 2))
    {
      v57 = v45;
      v58 = *__error();
      v59 = _SILogForLogForCategory(0);
      v60 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v59, v60))
      {
        v61 = si_merge_reason_names[*(a1 + 274)];
        v62 = *(a1 + 1043);
        if (*(a1 + 1042))
        {
          v63 = "Full";
        }

        else
        {
          v63 = "Partial";
        }

        v64 = *(a1 + 3);
        v65 = *(a1 + 1041) == 0;
        v66 = *(v57 + 2);
        *keys = 136316674;
        *&keys[4] = v63;
        if (v65)
        {
          v67 = "Normal";
        }

        else
        {
          v67 = "Vacuum";
        }

        *&keys[12] = 2080;
        *&keys[14] = v67;
        v68 = "Forced";
        v149 = 2080;
        v150 = v61;
        if (!v62)
        {
          v68 = "Voluntary";
        }

        v151 = 2080;
        v152 = v68;
        v153 = 1024;
        v154 = v64;
        v155 = 1024;
        v156 = v64 + v50 <= v66;
        v157 = 2080;
        v158 = "";
        _os_log_impl(&dword_1C278D000, v59, v60, "Skipped merge (%s/%s/%s/%s/%d/%d)%s", keys, 0x40u);
      }

      *__error() = v58;
      goto LABEL_159;
    }

    v133 = v42;
    v134 = v43;
    v135 = v45;
    v69 = ContentIndexListClone(v45);
    bzero(keys, 0x400uLL);
    v70 = fcntl(*(v16 + 32), 50, keys);
    v71 = 0;
    if (keys[0])
    {
      v72 = v70 < 0;
    }

    else
    {
      v72 = 1;
    }

    if (!v72)
    {
      v71 = keys;
    }

    v132 = v71;
    v73 = *__error();
    v74 = _SILogForLogForCategory(0);
    v75 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v74, v75))
    {
      if (*(a1 + 1042))
      {
        v76 = "Full";
      }

      else
      {
        v76 = "Partial";
      }

      v65 = *(a1 + 1041) == 0;
      v77 = si_merge_reason_names[*(a1 + 274)];
      v78 = *(a1 + 1043);
      v79 = *(a1 + 3);
      *values = 136316162;
      *&values[4] = v76;
      if (v65)
      {
        v80 = "Normal";
      }

      else
      {
        v80 = "Vacuum";
      }

      *&values[12] = 2080;
      *&values[14] = v80;
      v81 = "Forced";
      v142 = 2080;
      if (!v78)
      {
        v81 = "Voluntary";
      }

      v143 = v77;
      v144 = 2080;
      v145 = v81;
      v146 = 1024;
      v147 = v79;
      _os_log_impl(&dword_1C278D000, v74, v75, "Merging (%s/%s/%s/%s/%d)", values, 0x30u);
    }

    *__error() = v73;
    v82 = v69;
    v83 = *(a1 + 3);
    if (*(v69 + 2) == v83 && (a1[2] & 1) == 0)
    {
      *(v69 + 4) = -1;
    }

    v84 = *(v69 + 4);
    v85 = v133;
    if (v50 <= v84 && v84 < (v83 + v50))
    {
      if (v50 >= v84)
      {
        *(a1 + 3) = v83 - 1;
        ++v50;
      }

      else
      {
        *(a1 + 3) = v84 + ~v50;
      }
    }

    v86 = v50;
    if (CompactIndexes(v16, a1, v50, v82) && (*(a1 + 1041) != 1 || *(v16 + 1152) || (v89 = *(a1 + 3), (v89 + v50) <= *(v82 + 8)) && (SetupDeferQueue(v16, v82, v50, v89) || (v107 = *(v82 + 8) + ~v50, *(a1 + 3) = v107, SetupDeferQueue(v16, v82, v50, v107)))))
    {
      v88 = CompactIndexes(v16, a1, v50, v82);
    }

    else
    {
      v88 = 0;
    }

    if ((*(a1 + 1041) & 1) == 0 && *(v16 + 1152))
    {
      handleDeferQueue(v16);
    }

    if (!v88)
    {
      goto LABEL_156;
    }

    v90 = *(a1 + 3);
    if (v90 < 2)
    {
      goto LABEL_156;
    }

    v91 = *(a1 + 3);
    v92 = *(v82 + 16);
    if (v92 == -1)
    {
      LODWORD(v96) = *(a1 + 16);
      v97 = *(a1 + 3);
      if (v96 != 1)
      {
        goto LABEL_148;
      }

      v98 = *(v82 + 8);
      if (v86 >= v98)
      {
        *(a1 + 3) = 0;
        goto LABEL_156;
      }

      if (v90 + v86 >= v98)
      {
        v99 = v98 + ~v86;
        *(a1 + 3) = v99;
        if (v99 < 1)
        {
LABEL_156:
          free(*v82);
          free(v82);
          if (*(v16 + 1152))
          {
            handleDeferQueue(v16);
            if (*(v16 + 1152))
            {
              v128 = __si_assert_copy_extra_661(-1);
              v129 = v128;
              v130 = "";
              if (v128)
              {
                v130 = v128;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 9568, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v130);
              free(v129);
              if (__valid_fs(-1))
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
          }

          goto LABEL_158;
        }
      }

      v100 = 0;
      v101 = v82;
      do
      {
        v102 = v100;
        _CIDisableUpdates(v87);
        v100 = v102 + 1;
        v96 = *(a1 + 3);
      }

      while (v102 + 1 < v96);
      v82 = v101;
      v85 = v133;
    }

    else
    {
      if (v86 == v92)
      {
        *(a1 + 3) = 0;
        v91 = 0;
      }

      v93 = v91;
      if (v86 < v92)
      {
        v94 = v91 + v86;
        v95 = v92;
        if (v94 > v92)
        {
LABEL_126:
          LODWORD(v96) = v95 - v86;
          *(a1 + 3) = v95 - v86;
          goto LABEL_146;
        }
      }

      if (v86 <= v92)
      {
        LODWORD(v96) = v93;
      }

      else
      {
        LODWORD(v96) = v93;
        if (v86 < v93)
        {
          v103 = v86;
          while (1)
          {
            v104 = v103;
            v105 = *(*v82 + 8 * v103);
            v106 = atomic_load((v105 + 36));
            if ((v106 & 3) == 0 && (*(v105 + 15203) & 1) == 0)
            {
              break;
            }

            v103 = v104 + 1;
            if (v104 + 1 >= *(a1 + 3))
            {
              LODWORD(v96) = *(a1 + 3);
              goto LABEL_146;
            }
          }

          v95 = v104;
          goto LABEL_126;
        }
      }
    }

LABEL_146:
    if (v96 >= 2)
    {
      v108 = v96;
      LOBYTE(v96) = *(a1 + 16);
      v97 = v108;
LABEL_148:
      v109 = MergeIndexes(v16, *(a1 + 2), v86, v97, (v85 + v134), v135, v82, v132, a1 + 17, *(a1 + 1041), v96 & 1, (a1 + 133));
      if (v109)
      {
        v110 = *(v85 + v134);
        if (*(a1 + 2) && (v111 = *(v109 + 56)) != 0 && (v112 = *(v110 + 8), v112))
        {
          v113 = v109;
          v114 = 0;
          while (*(*(*v110 + 8 * v114) + 56) != v111)
          {
            if (v112 == ++v114)
            {
              goto LABEL_155;
            }
          }

          *values = v16;
          __checkIndexSetDocIdOrder(v16, v110);
          if (v114)
          {
            v127 = count_IndexSet(v110, v114, *(v113 + 52));
            if (v127 >= 5 && v127 < *(a1 + 3))
            {
              *(a1 + 2) = *(*(*v110 + 8 * (v114 - v127 + 1)) + 56);
              *(a1 + 3) = v127;
              *(a1 + 1041) = 0;
              a1[131] = "void si_mergeIndex(void *, Boolean)";
              si_enqueue_work(*(v16 + 1064), si_mergeIndex, a1);
              a1 = 0;
LABEL_159:
              if (*(v16 + 1152) && *(a1 + 1041) == 1)
              {
                handleDeferQueue(v16);
              }

              v119 = threadData[9 * v139 + 1] + 320 * v138;
              *(v119 + 312) = v22;
              v120 = *(v119 + 232);
              if (v120)
              {
                v120(*(v119 + 288));
              }

              dropThreadId(v139, 0, add_explicit + 1);
              goto LABEL_165;
            }
          }
        }

        else
        {
LABEL_155:
          *values = v16;
          __checkIndexSetDocIdOrder(v16, v110);
        }
      }

      else
      {
        if (*(a1 + 1041) == 1)
        {
          handleDeferQueue(v16);
        }

        if (*(v16 + 1152))
        {
          v123 = __si_assert_copy_extra_661(-1);
          v124 = v123;
          v125 = "";
          if (v123)
          {
            v125 = v123;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 9561, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v125);
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

LABEL_158:
      v115 = *(a1 + 1100);
      v116 = gSISystemInDarkWake;
      v117 = si_merge_reason_names[*(a1 + 274)];
      v118 = time(0);
      si_message_trace_darkwake(v115, v16, "DarkMerge", v116, v117, "Index merge in dark wake", v118 - a1[138]);
      goto LABEL_159;
    }

    goto LABEL_156;
  }

LABEL_169:
  si_merge_ctx_free(a1, a2 != 0);
}

uint64_t disableProcMon()
{
  getpid();
  pthread_mutex_lock(&sProcMonLock);
  if (!sDisableProcMon && proc_get_cpumon_params())
  {
    v0 = *__error();
    v1 = _SILogForLogForCategory(0);
    v2 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v1, v2))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v1, v2, "Failed to get cpumon_params", buf, 2u);
    }

    *__error() = v0;
  }

  if (proc_set_cpumon_params())
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    v5 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v4, (gSILogLevels[0] < 3)))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C278D000, v4, v5, "*warn* Failed to set cpumon_params", v7, 2u);
    }

    *__error() = v3;
  }

  ++sDisableProcMon;
  return pthread_mutex_unlock(&sProcMonLock);
}

uint64_t transfer_live_indexes(uint64_t a1)
{
  v108[11] = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "transfer_live_indexes begin\n", &buf, 2u);
  }

  v4 = 0;
  *__error() = v2;
  memset(v108, 0, 80);
  do
  {
    v108[v4] = _si_scheduler_suspend(*(a1 + v4 * 8 + 864), "SpotlightIndex.c", 7614);
    ++v4;
  }

  while (v4 != 10);
  v5 = *(a1 + 1392);
  v6 = *(a1 + 1384);
  v7 = ContentIndexListClone(v6);
  v8 = ContentIndexListClone(v5);
  v9 = v8;
  v10 = *(v8 + 2);
  v11 = *(*v7 + 8 * (*(v7 + 2) - 1));
  v85 = v5;
  if (*(v7 + 2) == 1)
  {
LABEL_11:
    v15 = 1;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = *(*v7 + 8 * v12);
      if (!v13)
      {
        break;
      }

      v14 = atomic_load((v13 + 36));
      if ((v14 & 3) == 0 && (*(v13 + 15203) & 1) == 0)
      {
        break;
      }

      if (++v12 >= (*(v7 + 2) - 1))
      {
        goto LABEL_11;
      }
    }

    v15 = 0;
  }

  v16 = *(v8 + 4);
  if (*(a1 + 2072))
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 & 0xFFFFFFBF | ((*(a1 + 828) & 1) << 6);
  if (*(a1 + 2073))
  {
    v19 = 1024;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 6584);
  v21 = (v18 | v19 | (v20 >> 13) & 0x800) ^ 0x50;
  v22 = v21 | 0x1000;
  if (!*(a1 + 6944))
  {
    v22 = v21;
  }

  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 0x40000000;
  v89[2] = __transfer_live_indexes_block_invoke;
  v89[3] = &__block_descriptor_tmp_855;
  v89[4] = a1;
  if (v15 && v16 == -1)
  {
    v84 = v6;
    v23 = ~(v20 >> 7) & 0x8000;
    v24 = *(a1 + 32);
    LODWORD(v25) = *(v11 + 68);
    v25 = v25 >= 2 ? v25 : 0;
    v26 = *(v11 + 80);
    v27 = v26 + v25;
    v28 = *(v11 + 40);
    v29 = *(a1 + 1284);
    v30 = *(a1 + 1192);
    if (v30)
    {
      v31 = v22;
      v82 = v26 + v25;
      v83 = v11;
      v32 = *(v11 + 40);
      v33 = *(a1 + 1284);
      vector_store = db_get_vector_store(v30);
      v29 = v33;
      v28 = v32;
      v27 = v82;
      v11 = v83;
      v22 = v31;
      v35 = vector_store;
    }

    else
    {
      v35 = 0;
    }

    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 0x40000000;
    v88[2] = __transfer_live_indexes_block_invoke_2;
    v88[3] = &__block_descriptor_tmp_859;
    v88[4] = a1;
    New = ContentIndexCreateNew(v24, @"tmp.", v27 + 1025, v28, v22 | v23, 1, v29, v35, v88, v89, *(a1 + 60));
    if (New)
    {
      v38 = New;
      v39 = atomic_load((v11 + 36));
      if ((v39 & 3) == 0 && (*(v11 + 15203) & 1) == 0)
      {
        _CIDisableUpdates(v37);
      }

      v87 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __transfer_live_indexes_block_invoke_3;
      aBlock[3] = &__block_descriptor_tmp_860;
      aBlock[4] = a1;
      aBlock[5] = v38;
      ContentIndexSetDirtyCallback(v38, aBlock);
      *(v38 + 15201) = 4;
      *&v95 = 0;
      v93 = 0u;
      v94 = 0u;
      buf = 0u;
      v92 = 0u;
      ContentIndexSyncIndex(v38, &buf, &v87);
      *(v84 + 16) = -1;
      if (*(v9 + 16) != -1)
      {
        v74 = __si_assert_copy_extra_661(-1);
        v71 = v74;
        v75 = "";
        if (v74)
        {
          v75 = v74;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7666, "indexSet2->currentIndex==~0", v75);
        goto LABEL_66;
      }

      v40 = *(v7 + 2);
      v41 = *(v9 + 8);
      v42 = *(v9 + 12);
      if (v42 >= v41 + v40)
      {
        v43 = *v9;
      }

      else
      {
        do
        {
          v42 *= 2;
        }

        while (v42 < v41 + v40);
        *(v9 + 12) = v42;
        v43 = malloc_type_realloc(*v9, 8 * v42, 0x2004093837F09uLL);
        *v9 = v43;
        v41 = *(v9 + 8);
        v40 = *(v7 + 2);
      }

      memcpy(&v43[8 * v41], *v7, 8 * v40);
      v106 = 0u;
      memset(v107, 0, sizeof(v107));
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      *&buf = 0x6D6F76650A00;
      DWORD2(buf) = 1;
      HIDWORD(buf) = *(v7 + 2) - v10 + *(v9 + 8);
      DWORD1(v92) = v10;
      __strlcpy_chk(&v107[12], (v38 + 15208), 255, 255);
      v46 = *(v9 + 8) + *(v7 + 2);
      *(v9 + 8) = v46;
      if (v10 < v46)
      {
        v47 = v10;
        do
        {
          v48 = *(*v9 + 8 * v47);
          v49 = atomic_load((v48 + 36));
          if ((v49 & 3) == 0 && (*(v48 + 15203) & 1) == 0)
          {
            _CIDisableUpdates(v45);
          }

          ++v47;
        }

        while (v47 < *(v9 + 8));
      }

      *(v9 + 16) = -1;
      *(v7 + 2) = 1;
      **v7 = v38;
      *(v7 + 4) = 0;
      si_clone_index_metadata_to_inflight(v45);
      v50 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
      pwrite(v50, &buf, 0x210uLL, 0);
      fcntl(v50, 85);
      if (v10 < *(v9 + 8))
      {
        v51 = 0;
        while (1)
        {
          DWORD2(v92) = v51;
          pwrite(v50, &buf, 0x210uLL, 0);
          fcntl(v50, 85);
          memset(__str, 0, 255);
          snprintf(__str, 0xFFuLL, "%u.", v10);
          ContentIndexChangePrefix(v52);
          v53 = *(*v9 + 8 * v10);
          v54 = atomic_load((v53 + 36));
          if ((v54 & 3) == 0 && (*(v53 + 15203) & 1) == 0)
          {
            break;
          }

          ++v10;
          ++v51;
          if (v10 >= *(v9 + 8))
          {
            goto LABEL_50;
          }
        }

        v70 = __si_assert_copy_extra_661(-1);
        v71 = v70;
        v72 = "";
        if (v70)
        {
          v72 = v70;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7713, "!ContentIndexWritable(indexSet2->index[i])", v72);
LABEL_66:
        free(v71);
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

LABEL_50:
      HIDWORD(v92) = 1;
      pwrite(v50, &buf, 0x210uLL, 0);
      fcntl(v50, 85);
      ContentIndexChangePrefix(v55);
      v56 = v85;
      v57 = v85;
      atomic_compare_exchange_strong((a1 + 1392), &v57, v9);
      if (v57 == v56)
      {
        si_cleanup(a1, v85);
        atomic_fetch_add_explicit((a1 + 1400), 1u, memory_order_relaxed);
        _si_log_indexes(a1);
        if (si_swapIndexSet(a1, v84, v7, (a1 + 1384), v58, v59, v60, v61))
        {
          v62 = *(*(a1 + 1392) + 8);
          *(a1 + 1240) = v62;
          *(a1 + 1248) = v62;
          v63 = *(*(a1 + 1384) + 8);
          *(a1 + 1244) = v63;
          *(a1 + 1252) = v63;
          _CIMetaInfoSync(a1 + 1200, gTerminating == 0);
          unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
          close(v50);
          v44 = 1;
          *(a1 + 2437) = 1;
          _CreateDeferQueue(a1, *(a1 + 1392), 0, *(*(a1 + 1392) + 8));
          goto LABEL_53;
        }

        v76 = __si_assert_copy_extra_661(-1);
        v77 = v76;
        v78 = "";
        if (v76)
        {
          v78 = v76;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7726, "si_swapIndexSet(ref,oldIndexSet1,indexSet1,&ref->liveSet,1, 1)", v78);
      }

      else
      {
        v80 = __si_assert_copy_extra_661(-1);
        v77 = v80;
        v81 = "";
        if (v80)
        {
          v81 = v80;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7722, "si_swapIndexSet(ref,oldIndexSet2,indexSet2,&ref->syncSet,0, 0)", v81);
      }

      free(v77);
      if (__valid_fs(-1))
      {
        v79 = 2989;
      }

      else
      {
        v79 = 3072;
      }

      *v79 = -559038737;
      abort();
    }
  }

  free(*v7);
  free(v7);
  free(*v9);
  free(v9);
  v44 = 0;
LABEL_53:
  for (i = 117; i != 108; --i)
  {
    si_scheduler_resume(*(a1 + i * 8), v88[i], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7744);
  }

  if (v44)
  {
    si_sync_ctx_create_with_defer_fd(a1, 0);
    v66 = v65;
    *(v65 + 96) = 1;
    if ((*(*v65 + 2437) & 1) == 0 && (*(*v65 + 2072) & 1) == 0)
    {
      attachJournal(v65);
    }

    syncIndex(v66, 0);
  }

  si_scheduler_resume(*(a1 + 864), v108[0], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7758);
  v67 = *__error();
  v68 = _SILogForLogForCategory(6);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "transfer_live_indexes end\n", &buf, 2u);
  }

  *__error() = v67;
  return v44;
}

uint64_t CompactIndexes(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*(a1 + 6587))
  {
    return 1;
  }

  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2434) = 257;
  pthread_mutex_unlock(&mergeMutex);
  v8 = ContentIndexListClone(a4);
  v9 = (v8 + 1);
  if (a2)
  {
    v9 = (a2 + 12);
  }

  v10 = *v9;
  if (v10 < 1)
  {
    v12 = 0;
    goto LABEL_26;
  }

  v24 = (a2 + 12);
  v11 = 0;
  v12 = 0;
  v13 = *MEMORY[0x1E695E480];
  v14 = 8 * a3;
  while (1)
  {
    v15 = *(*v8 + 8 * v11 + v14);
    v16 = atomic_load((v15 + 36));
    if ((v16 & 4) != 0)
    {
      goto LABEL_18;
    }

    v17 = atomic_load((v15 + 36));
    if ((v17 & 2) != 0)
    {
      if (a2)
      {
        goto LABEL_16;
      }

LABEL_14:
      v18 = atomic_load((v15 + 36));
      if ((v18 & 2) == 0 && (*(v15 + 15203) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (a2)
    {
      break;
    }

    if (*(v15 + 15203))
    {
      goto LABEL_14;
    }

LABEL_18:
    ++v11;
    v12 = 1;
    if (v10 == v11)
    {
      goto LABEL_26;
    }
  }

  if ((*(v15 + 15203) & 1) == 0)
  {
    *(a2 + 1041) = 0;
    *(a2 + 12) = v11;
    goto LABEL_26;
  }

LABEL_16:
  values = *(v15 + 56);
  v19 = CFSetCreate(v13, &values, 1, 0);
  setUpOverlay(a1, v19);
  CFRelease(v19);
  v25 = 0;
  v20 = (*(a1 + 6584) >> 4) & 1;
  *&v27 = si_compact_lock;
  *(&v27 + 1) = si_compact_unlock;
  v28 = si_compact_should_cancel;
  v29 = a1;
  v21 = _CICompact(v15, &v27, v20, &v25);
  si_scheduler_voluntary_gc_inline(*(a1 + 944));
  mergeOverlay(a1, 0);
  if (!a2 || !v21)
  {
    goto LABEL_18;
  }

  if (v25 == 1)
  {
    *v24 = 0;
    si_recycleForBadIndex(a1, v15, "compact err");
  }

  else
  {
    *v24 = v11;
  }

  *(a2 + 1041) = 0;
LABEL_26:
  ContentIndexListFree(v8);
  pthread_mutex_lock(&mergeMutex);
  v22 = v12 & (*(a1 + 2428) == 0);
  *(a1 + 2434) = 0;
  pthread_cond_broadcast(&mergeCond);
  pthread_mutex_unlock(&mergeMutex);
  return v22;
}

BOOL SetupDeferQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a4 && a4 + a3 <= *(a2 + 8))
  {
    v29 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 7330);
    *(a1 + 2437) = 1;
    atomic_fetch_add((a1 + 1452), 1u);
    v28 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
    v8 = _si_scheduler_suspend(*(a1 + 880), "SpotlightIndex.c", 7337);
    v9 = _si_scheduler_suspend(*(a1 + 928), "SpotlightIndex.c", 7338);
    v10 = _si_scheduler_suspend(*(a1 + 936), "SpotlightIndex.c", 7339);
    v11 = *__error();
    v12 = _SILogForLogForCategory(0);
    v13 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(a2 + 8);
      *buf = 67109632;
      *&buf[4] = v14;
      *&buf[8] = 1024;
      *&buf[10] = a3;
      *&buf[14] = 1024;
      *&buf[16] = a4;
      _os_log_impl(&dword_1C278D000, v12, v13, "size:%d start:%d count:%d", buf, 0x14u);
    }

    *__error() = v11;
    _CreateDeferQueue(a1, a2, a3, a4);
    v15 = new_live_index(a1, 1, 0);
    si_scheduler_resume(*(a1 + 936), v10, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7346);
    si_scheduler_resume(*(a1 + 928), v9, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7347);
    si_scheduler_resume(*(a1 + 880), v8, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7348);
    si_scheduler_resume(*(a1 + 872), v28, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7349);
    si_scheduler_resume(*(a1 + 864), v29, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7350);
    if (v15)
    {
      v16 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 7355);
      si_sync_ctx_create_with_defer_fd(a1, 0);
      v18 = v17;
      *(v17 + 96) = 1;
      if ((*(*v17 + 2437) & 1) == 0 && (*(*v17 + 2072) & 1) == 0)
      {
        attachJournal(v17);
      }

      syncIndex(v18, 0);
      si_scheduler_resume(*(a1 + 864), v16, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7366);
      if (*(a1 + 6587))
      {
        return 1;
      }

      v19 = atomic_load((v15 + 36));
      if ((v19 & 4) != 0)
      {
        return 1;
      }

      values = *(v15 + 56);
      v20 = CFSetCreate(*MEMORY[0x1E695E480], &values, 1, 0);
      setUpOverlay(a1, v20);
      CFRelease(v20);
      v30 = 0;
      v21 = (*(a1 + 6584) >> 4) & 1;
      *buf = si_compact_lock;
      *&buf[8] = si_compact_unlock;
      *&buf[16] = si_compact_should_cancel;
      v33 = a1;
      v22 = _CICompact(v15, buf, v21, &v30);
      v23 = v22 == 0;
      if (!v22 || (v30 & 1) == 0)
      {
        mergeOverlay(a1, 0);
        return v23;
      }

      si_recycleForBadIndex(a1, v15, "compact err");
    }

    return 0;
  }

  else
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a2 + 8);
      *buf = 136316162;
      *&buf[4] = "SetupDeferQueue";
      *&buf[12] = 1024;
      *&buf[14] = 7325;
      *&buf[18] = 1024;
      *&buf[20] = v27;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = a3;
      HIWORD(v33) = 1024;
      v34 = a4;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: invalid range - size:%d start:%d count:%d", buf, 0x24u);
    }

    v23 = 0;
    *__error() = v24;
  }

  return v23;
}

uint64_t handleDeferQueue(uint64_t a1)
{
  pthread_mutex_lock((a1 + 1320));
  v2 = *(a1 + 1152);
  v3 = *(a1 + 872);
  if (v3)
  {
    atomic_fetch_add((v3 + 96), 1u);
  }

  *(a1 + 1152) = 0;
  *(a1 + 2437) = 0;
  *(a1 + 1304) = 0u;
  DeferJournalFd = getDeferJournalFd(a1, 1);
  dispatch_resume(*(v2 + 16));
  v5 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
  *v5 = v2;
  v5[1] = v3;
  v5[2] = DeferJournalFd;
  v5[3] = a1;
  v6 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  *v6 = 0;
  v6[1] = v2;
  v7 = *(a1 + 1176);
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v8 = (a1 + 1176);
  }

  *v8 = v6;
  si_enqueue_barrier(v2, si_deferqueue_cleanup, v5);

  return pthread_mutex_unlock((a1 + 1320));
}

uint64_t MergeIndexes(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t **a5, uint64_t *a6, void *a7, unint64_t a8, char *a9, char a10, char a11, uint64_t a12)
{
  LODWORD(v15) = a4;
  LODWORD(v16) = a3;
  v59 = *MEMORY[0x1E69E9840];
  v19 = a4;
  v20 = 1;
LABEL_2:
  v53 = v20;
  v55 = v19;
  v21 = 0;
  v22 = 0;
  v23 = *a5;
  while (a6 != v23)
  {
    ContentIndexListFree(a7);
    a7 = ContentIndexListClone(v23);
    v24 = *a5;
    if (v23 == *a5)
    {
      a6 = v23;
      break;
    }

    v25 = 0;
    a6 = v23;
LABEL_20:
    v23 = v24;
    if (a6 == v24)
    {
      v29 = v25 + v15;
      if (v22 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v22;
      }

      v54 = v30;
      v31 = v29 - v30 + v16;
      v32 = *(*(*a7 + 8 * v31) + 56);
      v33 = a10 ^ 1;
      if (v29 <= v22)
      {
        v33 = 1;
      }

      v34 = *(*(*a7 + 8 * v31) + 56);
      if ((v33 & 1) == 0)
      {
        v51 = *__error();
        log = _SILogForLogForCategory(0);
        type = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(log, type))
        {
          *buf = 67109376;
          *&buf[4] = v29;
          v57 = 1024;
          v58 = v54;
          _os_log_impl(&dword_1C278D000, log, type, "mergeCount:%d != count:%d", buf, 0xEu);
        }

        *__error() = v51;
        v34 = *(*(*a7 + 8 * v31) + 56);
      }

      v35 = a10;
      if (v29 > v22)
      {
        v35 = 0;
      }

      HIBYTE(v48) = a11;
      LOBYTE(v48) = v35;
      v36 = OuterMerge(a1, v34, v54, a5, a6, a7, a8, a9, v48, a12);
      v37 = v36;
      if (!v36)
      {
        return v37;
      }

      if (v32 == a2)
      {
        a2 = *(v36 + 56);
      }

      a6 = *a5;
      v38 = *(*a5 + 2);
      if (a2)
      {
        if (!v38)
        {
          LODWORD(v16) = 0;
          a2 = *(v36 + 56);
LABEL_49:
          v15 = v29 - (v54 - 1);
          if (v16 + v15 > v38)
          {
            v42 = __si_assert_copy_extra_661(-1);
            v43 = v42;
            v44 = "";
            if (v42)
            {
              v44 = v42;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 9011, "start+count <= oldIndexSet->indexCount", v44);
LABEL_65:
            free(v43);
            if (__valid_fs(-1))
            {
              v47 = 2989;
            }

            else
            {
              v47 = 3072;
            }

            *v47 = -559038737;
            abort();
          }

          if (v38 + v54 - 1 < v21)
          {
            v45 = __si_assert_copy_extra_661(-1);
            v43 = v45;
            v46 = "";
            if (v45)
            {
              v46 = v45;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 9012, "oldIndexSet->indexCount+(mergeCount-1) >= preCount", v46);
            goto LABEL_65;
          }

          *buf = a1;
          __checkIndexSetDocIdOrder(a1, a6);
          if (v15 < 2)
          {
            v41 = *a5;
            *buf = a1;
            __checkIndexSetDocIdOrder(a1, v41);
            return v37;
          }

          a7 = ContentIndexListClone(a6);
          v39 = *a5;
          *buf = a1;
          __checkIndexSetDocIdOrder(a1, v39);
          v20 = 0;
          v19 = v15;
          if (v55 <= v15)
          {
            return v37;
          }

          goto LABEL_2;
        }

        v16 = 0;
        while (*(*(*a6 + 8 * v16) + 56) != a2)
        {
          if (v38 == ++v16)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_40:
        LODWORD(v16) = 0;
      }

      if (v16 >= v38)
      {
        LODWORD(v16) = 0;
        a2 = *(v36 + 56);
        if (a2)
        {
          if (v38)
          {
            v16 = 0;
            while (*(*(*a6 + 8 * v16) + 56) != a2)
            {
              if (v38 == ++v16)
              {
                LODWORD(v16) = 0;
                goto LABEL_49;
              }
            }
          }
        }
      }

      goto LABEL_49;
    }
  }

  if (!a2 || *(*(*a7 + 8 * v16) + 56) == a2)
  {
LABEL_15:
    v21 = *(a7 + 2);
    v27 = v16 + v15;
    if (v16 + v15 > v21)
    {
      goto LABEL_54;
    }

    v28 = count_IndexSet(a7, v27 - 1, *(*(*a7 + 8 * (v27 - 1)) + 52));
    v22 = count_IndexSet(a7, v27 - 2, *(*(*a7 + 8 * (v27 - 2)) + 52)) + v28;
    *buf = a1;
    __checkIndexSetDocIdOrder(a1, a7);
    if (v28)
    {
      v25 = 0;
    }

    else
    {
      v25 = -1;
    }

    v24 = *a5;
    goto LABEL_20;
  }

  v26 = *(a7 + 2);
  if (!v26)
  {
LABEL_13:
    LODWORD(v16) = 0;
    goto LABEL_15;
  }

  v16 = 0;
  while (*(*(*a7 + 8 * v16) + 56) != a2)
  {
    if (v26 == ++v16)
    {
      goto LABEL_13;
    }
  }

  if (v26 >= v16)
  {
    goto LABEL_15;
  }

LABEL_54:
  if (v53)
  {
    ContentIndexListFree(a7);
  }

  return 0;
}

int *si_message_trace_darkwake(int *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2)
    {
      v12 = *(a2 + 2360);
      v13 = *(v12 + 88);
      if (v13)
      {
        v14 = *(v12 + 144);

        return v13(v14, "com.apple.spotlight.mds.index-darkwake");
      }
    }
  }

  else if (gSILogLevels[0] >= 5)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316162;
      v18 = a3;
      v19 = 1024;
      v20 = a4;
      v21 = 2080;
      v22 = a5;
      v23 = 2080;
      v24 = a6;
      v25 = 2048;
      v26 = a7;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Not tracing com.apple.spotlight.mds.index-darkwake %s %d %s %s %ld", &v17, 0x30u);
    }

    result = __error();
    *result = v15;
  }

  return result;
}

uint64_t enableProcMon()
{
  getpid();
  pthread_mutex_lock(&sProcMonLock);
  if (sDisableProcMon == 1 && proc_set_cpumon_params() && proc_set_cpumon_defaults())
  {
    v0 = *__error();
    v1 = _SILogForLogForCategory(0);
    v2 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v1, (gSILogLevels[0] < 3)))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C278D000, v1, v2, "*warn* Failed to reset cpumon_params", v4, 2u);
    }

    *__error() = v0;
  }

  --sDisableProcMon;
  return pthread_mutex_unlock(&sProcMonLock);
}

void si_merge_ctx_free(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = *(a1 + 1056);
    if (v4)
    {
      dispatch_resume(v4);
      dispatch_release(*(a1 + 1056));
      *(a1 + 1056) = 0;
    }

    si_power_info_cleanup(a1 + 1064, *a1, a2);
    v5 = *(a1 + 1112);
    if (v5)
    {
      dispatch_group_leave(*(a1 + 1112));
      dispatch_release(v5);
    }

    free(a1);
  }
}

uint64_t OuterMerge(uint64_t a1, int a2, unsigned int a3, uint64_t **a4, uint64_t a5, uint64_t *a6, unint64_t a7, char *a8, __int16 a9, uint64_t a10)
{
  v92 = *MEMORY[0x1E69E9840];
  v13 = *__error();
  v14 = _SILogForLogForCategory(0);
  v15 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = "false";
    if (HIBYTE(a9))
    {
      v16 = "true";
    }

    v17 = "";
    buf.f_bsize = 67109634;
    buf.f_iosize = a3;
    *(&buf.f_blocks + 2) = v16;
    LOWORD(buf.f_blocks) = 2080;
    if (a9)
    {
      v17 = "vacuum";
    }

    WORD1(buf.f_bfree) = 2080;
    *(&buf.f_bfree + 4) = v17;
    _os_log_impl(&dword_1C278D000, v14, v15, "Outer Merge - count:%d live:%s %s", &buf, 0x1Cu);
  }

  *__error() = v13;
  if (!a2)
  {
    v20 = 0;
    v19 = a1;
    if (!a9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v18 = *(a5 + 8);
  v19 = a1;
  if (v18)
  {
    v20 = 0;
    while (*(*(*a5 + 8 * v20) + 56) != a2)
    {
      if (v18 == ++v20)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v20 = 0;
  }

  if (a9)
  {
LABEL_16:
    if (!*(v19 + 1152))
    {
      v75 = __si_assert_copy_extra_661(-1);
      v76 = v75;
      v77 = "";
      if (v75)
      {
        v77 = v75;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8800, "ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v77);
      free(v76);
      if (__valid_fs(-1))
      {
        v78 = 2989;
      }

      else
      {
        v78 = 3072;
      }

      *v78 = -559038737;
      abort();
    }
  }

LABEL_17:
  *&buf.f_bsize = v19;
  __checkIndexSetDocIdOrder(v19, a6);
  if (a3)
  {
    v21 = 0;
    v22 = *(v19 + 6584) & 1 | 2;
    v23 = a5;
    v24 = (*a5 + 8 * v20);
    v25 = a3;
    do
    {
      v26 = *v24++;
      v21 += ContentIndexCalculateSize(v26, v22);
      --v25;
    }

    while (v25);
  }

  else
  {
    v23 = a5;
    v21 = 0;
  }

  bzero(&buf, 0x878uLL);
  v27 = a1;
  if (fstatfs(*(a1 + 32), &buf))
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v74 = *__error();
      *v88 = 136315650;
      *&v88[4] = "OuterMerge";
      *&v88[12] = 1024;
      *v89 = 8820;
      *&v89[4] = 1024;
      *&v89[6] = v74;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: error (%d) getting free space", v88, 0x18u);
    }

    *__error() = v28;
    ContentIndexListFree(a6);
    return 0;
  }

  v31 = 0x6400000 / buf.f_bsize;
  if (2 * (buf.f_blocks / 0x64) < v31)
  {
    v31 = 2 * (buf.f_blocks / 0x64);
  }

  v32 = 5 * (buf.f_blocks / 0x64);
  if (v32 >= 0x20000000 / buf.f_bsize)
  {
    v32 = 0x20000000 / buf.f_bsize;
  }

  if ((*(a1 + 6584) & 1) == 0)
  {
    v32 = v31;
  }

  v33 = v32 * buf.f_bsize;
  v34 = buf.f_bfree * buf.f_bsize;
  if (v34 < v33)
  {
    v35 = *__error();
    v36 = _SILogForLogForCategory(0);
    v37 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v36, (gSILogLevels[0] < 3)))
    {
      *v88 = 134218496;
      *&v88[4] = v21;
      *&v88[12] = 2048;
      *v89 = v34;
      *&v89[8] = 2048;
      v90 = v33;
      _os_log_impl(&dword_1C278D000, v36, v37, "*warn* Merge canceled - low disk space (%lld %lld %lld)", v88, 0x20u);
    }

    v30 = 0;
    *__error() = v35;
    return v30;
  }

  if (a3 > 8 || a3 >= 2 && v34 < v33 + v21)
  {
    v38 = *__error();
    v39 = _SILogForLogForCategory(0);
    v40 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v39, v40))
    {
      *v88 = 134218240;
      *&v88[4] = v21;
      *&v88[12] = 2048;
      *v89 = v34;
      _os_log_impl(&dword_1C278D000, v39, v40, "used:%lld, free:%lld", v88, 0x16u);
    }

    v41 = (a3 + 1) >> 1;
    LODWORD(v42) = 0;
    v43 = 0;
    *__error() = v38;
    LODWORD(v44) = v20;
    v27 = a1;
    v45 = a3;
    while (1)
    {
      v43 += v41;
      v46 = v45 - v43;
      v47 = v46 + v44;
      if ((v46 + v44) >= v44)
      {
        v46 = 0;
      }

      if (v47 <= v44)
      {
        v48 = v44;
      }

      else
      {
        v48 = v47;
      }

      HIBYTE(v82) = HIBYTE(a9);
      LOBYTE(v82) = 0;
      v49 = OuterMerge(v27, *(*(*a6 + 8 * v48) + 56), v46 + v41, a4, v23, a6, a7, a8, v82, a10);
      if (!v49)
      {
        v57 = *__error();
        v58 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *v88 = 136315394;
          *&v88[4] = "OuterMerge";
          *&v88[12] = 1024;
          *v89 = 8886;
          v59 = "%s:%d: Merging failed";
          v60 = v58;
          v61 = 18;
          goto LABEL_103;
        }

        goto LABEL_92;
      }

      v50 = v49;
      if (v44 >= v47 && a2 != 0)
      {
        a2 = *(v49 + 56);
      }

      v23 = *a4;
      v52 = ContentIndexListClone(*a4);
      a6 = v52;
      v53 = *(v52 + 2);
      if (!a2)
      {
        break;
      }

      if (v53)
      {
        v44 = 0;
        while (*(*(*v52 + 8 * v44) + 56) != a2)
        {
          if (v53 == ++v44)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_60;
      }

      v44 = 0;
      if (*(v50 + 56))
      {
        a2 = *(v50 + 56);
      }

      else
      {
        a2 = 0;
      }

LABEL_70:
      if (v44 != v20 && gSILogLevels[0] >= 5)
      {
        v54 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = *(a6 + 2);
          *v88 = 67109632;
          *&v88[4] = v20;
          *&v88[8] = 1024;
          *&v88[10] = v44;
          *v89 = 1024;
          *&v89[2] = v56;
          _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "cindex was added during merge, old start %d new start: %d cindex count:%d", v88, 0x14u);
        }

        *__error() = v54;
      }

      v27 = a1;
      *v88 = a1;
      __checkIndexSetDocIdOrder(a1, a6);
      v42 = (v42 + 1);
      v45 = a3;
      if (a3 <= v43)
      {
        goto LABEL_80;
      }
    }

LABEL_59:
    v44 = 0;
LABEL_60:
    if (v44 >= v53)
    {
      a2 = *(v50 + 56);
      if (a2 && v53)
      {
        v44 = 0;
        while (*(*(*v52 + 8 * v44) + 56) != a2)
        {
          if (v53 == ++v44)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
LABEL_66:
        v44 = 0;
      }
    }

    goto LABEL_70;
  }

  v44 = v20;
  v42 = a3;
LABEL_80:
  if (a9 && !*(v27 + 1152))
  {
    v79 = __si_assert_copy_extra_661(-1);
    v72 = v79;
    v80 = "";
    if (v79)
    {
      v80 = v79;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8895, "ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v80);
    goto LABEL_113;
  }

  v62 = *(*a6 + 8 * v44);
  v63 = atomic_load((v62 + 36));
  if (((v63 & 3) != 0 || *(v62 + 15203) == 1) && v44 != *(a6 + 4))
  {
    v30 = InnerMerge(v27, v44, v42, a4, v23, a6, a7, a8, a9, HIBYTE(a9), a10);
    if (!v30)
    {
      return v30;
    }

    if (!*(v27 + 2428))
    {
      v70 = *a4;
      *v88 = v27;
      __checkIndexSetDocIdOrder(v27, v70);
    }

    if (!a9 || !*(v27 + 1152))
    {
      return v30;
    }

    v71 = __si_assert_copy_extra_661(-1);
    v72 = v71;
    v73 = "";
    if (v71)
    {
      v73 = v71;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8909, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v73);
LABEL_113:
    free(v72);
    if (__valid_fs(-1))
    {
      v81 = 2989;
    }

    else
    {
      v81 = 3072;
    }

    *v81 = -559038737;
    abort();
  }

  v64 = *(*a6 + 8 * v44);
  v65 = atomic_load((v64 + 36));
  if ((v65 & 3) == 0 && (*(v64 + 15203) & 1) == 0)
  {
    v66 = *__error();
    v67 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *v88 = 136315650;
      *&v88[4] = "OuterMerge";
      *&v88[12] = 1024;
      *v89 = 8912;
      *&v89[4] = 1024;
      *&v89[6] = v44;
      _os_log_error_impl(&dword_1C278D000, v67, OS_LOG_TYPE_ERROR, "%s:%d: Failed to merge; index at %d is writable", v88, 0x18u);
    }

    *__error() = v66;
  }

  if (v44 != *(a6 + 4))
  {
    return 0;
  }

  v57 = *__error();
  v68 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    *v88 = 136315650;
    *&v88[4] = "OuterMerge";
    *&v88[12] = 1024;
    *v89 = 8914;
    *&v89[4] = 1024;
    *&v89[6] = v44;
    v59 = "%s:%d: Failed to merge; index at %d is current";
    v60 = v68;
    v61 = 24;
LABEL_103:
    _os_log_error_impl(&dword_1C278D000, v60, OS_LOG_TYPE_ERROR, v59, v88, v61);
  }

LABEL_92:
  v30 = 0;
  *__error() = v57;
  return v30;
}

uint64_t InnerMerge(uint64_t a1, uint64_t a2, uint64_t a3, atomic_ullong *a4, void *a5, uint64_t *a6, unint64_t a7, char *a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11)
{
  v112 = a7;
  v113 = a8;
  v117 = a5;
  v114 = a4;
  v12 = a3;
  v116 = a10;
  v139 = *MEMORY[0x1E69E9840];
  v120 = 0;
  v121 = 0;
  ++*(a1 + 2392);
  asprintf(&v120, "tmp.merge.%ld.", v103);
  *&v138.f_bsize = a1;
  __checkIndexSetDocIdOrder(a1, a6);
  v15 = *__error();
  v16 = _SILogForLogForCategory(0);
  v17 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = "false";
    if (v116)
    {
      v18 = "true";
    }

    v19 = "";
    v138.f_bsize = 67109634;
    v138.f_iosize = v12;
    *(&v138.f_blocks + 2) = v18;
    LOWORD(v138.f_blocks) = 2080;
    if (a9)
    {
      v19 = "vacuum";
    }

    WORD1(v138.f_bfree) = 2080;
    *(&v138.f_bfree + 4) = v19;
    _os_log_impl(&dword_1C278D000, v16, v17, "Inner Merge - count:%d live:%s %s", &v138, 0x1Cu);
  }

  v115 = a9;
  *__error() = v15;
  v20 = 0;
  if (v12)
  {
    v21 = *(a1 + 6584) & 1 | 2;
    v22 = (*v117 + 8 * a2);
    v23 = v12;
    do
    {
      v24 = *v22++;
      v20 += ContentIndexCalculateSize(v24, v21);
      --v23;
    }

    while (v23);
  }

  bzero(&v138, 0x878uLL);
  if (fstatfs(*(a1 + 32), &v138))
  {
    v25 = *__error();
    v26 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v41 = *__error();
      v131[0].n128_u32[0] = 136315650;
      *(v131[0].n128_u64 + 4) = "InnerMerge";
      v131[0].n128_u16[6] = 1024;
      *(&v131[0].n128_u32[3] + 2) = 8635;
      v131[1].n128_u16[1] = 1024;
      v131[1].n128_u32[1] = v41;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: error (%d) getting free space", v131, 0x18u);
    }

    *__error() = v25;
    ContentIndexListFree(a6);
    return 0;
  }

  v28 = v138.f_blocks / 0x64;
  v29 = 0x6400000 / v138.f_bsize;
  if (2 * (v138.f_blocks / 0x64) < v29)
  {
    v29 = 2 * v28;
  }

  v30 = 5 * v28;
  if (v30 >= 0x20000000 / v138.f_bsize)
  {
    v30 = 0x20000000 / v138.f_bsize;
  }

  if ((*(a1 + 6584) & 1) == 0)
  {
    v30 = v29;
  }

  v31 = v30 * v138.f_bsize;
  v32 = v138.f_bfree * v138.f_bsize;
  if (v32 < v31 || v20 > v32 && v20 - v32 < v31 || v32 > v20 && v32 - v20 < v31)
  {
    v33 = *__error();
    v34 = _SILogForLogForCategory(0);
    v35 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v34, (gSILogLevels[0] < 3)))
    {
      v131[0].n128_u32[0] = 134218496;
      *(v131[0].n128_u64 + 4) = v20;
      v131[0].n128_u16[6] = 2048;
      *(&v131[0].n128_u64[1] + 6) = v32;
      v131[1].n128_u16[3] = 2048;
      v131[1].n128_u64[1] = v31;
      _os_log_impl(&dword_1C278D000, v34, v35, "*warn* Merge canceled - low disk space (%lld %lld %lld)", v131, 0x20u);
    }

    v27 = 0;
    *__error() = v33;
    return v27;
  }

  v37 = a2;
  if (*(*(a1 + 2360) + 96))
  {
    v38 = "merge";
    v131[0].n128_u64[0] = 0;
    v39 = v115;
    if (v115)
    {
      v38 = "vacuum";
    }

    if (v116)
    {
      v40 = "live";
    }

    else
    {
      v40 = "sync";
    }

    asprintf(v131, "com.apple.spotlightindex.%s.%s.%d", v38, v40, 64 - __clz(v20));
    v111 = (*(*(a1 + 2360) + 96))(*(*(a1 + 2360) + 144), v131[0].n128_u64[0]);
    free(v131[0].n128_u64[0]);
  }

  else
  {
    v111 = 0;
    v39 = v115;
  }

  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2434) = 257;
  pthread_mutex_unlock(&mergeMutex);
  v42 = *a6 + 8 * a2;
  v43 = *(v42 + 8 * v12 - 8);
  LODWORD(v44) = *(v43 + 68);
  v45 = *(v43 + 80);
  if (v44 >= 2)
  {
    v44 = v44;
  }

  else
  {
    v44 = 0;
  }

  v46 = v45 + v44 - *(*v42 + 80);
  if (v12)
  {
    v47 = 0;
    v48 = 0;
    v49 = *a6 + 8 * a2;
    do
    {
      if (v47)
      {
        v51 = *(v49 - 8);
        v50 = *v49;
        LODWORD(v52) = *(v51 + 68);
        v53 = *(v51 + 80);
        if (v52 >= 2)
        {
          v52 = v52;
        }

        else
        {
          v52 = 0;
        }

        v48 = *(*v49 + 80) + v48 - v53 - v52;
      }

      else
      {
        v50 = *v42;
      }

      v54 = atomic_load((v50 + 16));
      v48 += v54;
      --v47;
      v49 += 8;
    }

    while (-v12 != v47);
  }

  else
  {
    v48 = 0;
  }

  if (v46 <= 0xE38E38E || (v27 = 0, v39) && v46 - v48 <= 0xCCCCCCB)
  {
    v109 = v12;
    v110 = a2;
    v55 = malloc_type_malloc(0x38uLL, 0x102004034DBE25AuLL);
    field_id_limit = db_get_field_id_limit(*(a1 + 1192));
    *(v55 + 8) = 0u;
    v57 = v55 + 8;
    *(v55 + 24) = 0u;
    *(v55 + 40) = 0u;
    *v55 = a1;
    v58 = (field_id_limit + 1);
    bit_vector_init(v55 + 1, v58);
    v108 = v55;
    v59 = v55 + 32;
    bit_vector_init(v59, v58);
    v60 = *(a1 + 1192);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 0x40000000;
    v127 = __si_merge_term_filter_ctx_init_block_invoke;
    v128 = &__block_descriptor_tmp_802;
    v129 = v57;
    v130 = v59;
    memset(v131, 0, sizeof(v131));
    v61 = db_copy_field_ids_with_buffer(v60, "_kMDItemExternalID", v131, 8uLL);
    if (v61)
    {
      v62 = v61;
      if (v61->n128_u32[0])
      {
        v63 = &v61->n128_u32[1];
        do
        {
          (v127)(v126);
        }

        while (*v63++);
      }

      v39 = v115;
      if (v62 != v131)
      {
        free(v62);
      }
    }

    bit_vector_set(v57, *(a1 + 2040));
    bit_vector_set(v57, *(a1 + 2044));
    bit_vector_set(v57, *(a1 + 2048));
    if (gDefaultSchema)
    {
      v124 = 0uLL;
      v125 = 0;
      v131[0] = xmmword_1E8190DD8;
      v131[1].n128_u64[0] = 0;
      _MDPlistContainerGetPlistObjectAtKeyArray();
      v131[0].n128_u64[0] = MEMORY[0x1E69E9820];
      v131[0].n128_u64[1] = 0x40000000;
      v131[1].n128_u64[0] = __si_merge_term_filter_ctx_init_block_invoke_2;
      v131[1].n128_u64[1] = &__block_descriptor_tmp_808;
      v132 = a1;
      v133 = v57;
      v134 = v59;
      v122 = v124;
      v123 = v125;
      _MDPlistDictionaryIterate();
    }

    v107 = v57;
    id_for_field = db_get_id_for_field(*(a1 + 1192), "_kMDItemPhotoEmbedding");
    v106 = v104;
    v65 = *(a1 + 32);
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 0x40000000;
    v119[2] = __InnerMerge_block_invoke;
    v119[3] = &__block_descriptor_tmp_796;
    v119[4] = a1;
    v66 = v109;
    MEMORY[0x1EEE9AC00](v67);
    v69 = &v104[-((v68 + 15) & 0xFFFFFFFF0)];
    bzero(v69, v68);
    v70 = v66;
    v37 = v110;
    if (v12)
    {
      v71 = *a6;
      v72 = a2;
      v73 = v69;
      v74 = v70;
      do
      {
        *v73++ = *(*(v71 + 8 * v72++) + 56);
        --v74;
      }

      while (v74);
    }

    v75 = CFSetCreate(*MEMORY[0x1E695E480], v69, v70, 0);
    setUpOverlay(a1, v75);
    CFRelease(v75);
    v76 = (*a6 + 8 * v37);
    if (v39)
    {
      v77 = &v121;
    }

    else
    {
      v77 = 0;
    }

    v131[0].n128_u64[0] = si_merge_lock;
    v131[0].n128_u64[1] = si_merge_unlock;
    v131[1].n128_u64[0] = si_compact_should_cancel;
    v131[1].n128_u64[1] = si_message_trace_lifecycle;
    v132 = a1;
    v133 = v65;
    v78 = v108;
    v134 = si_merge_term_filter;
    v135 = v108;
    v136 = v119;
    v137 = id_for_field;
    v27 = ContentIndexMergeIndexes(v76, v12, v120, v77, v131);
    si_scheduler_voluntary_gc_inline(*(a1 + 944));
    v79 = v78[3];
    if (v79)
    {
      CFRelease(v79);
      v78[3] = 0;
    }

    v80 = v107;
    *v107 = 0;
    v80[1] = 0;
    v81 = v78[6];
    if (v81)
    {
      CFRelease(v81);
    }

    free(v78);
    if (v27)
    {
      SIActivityJournalMergeIndices((a1 + 2192), a2, v12, v116);
    }
  }

  v82 = *(*(*a6 + 8 * v37) + 56);
  free(v120);
  if (!v27)
  {
    v92 = *__error();
    v93 = _SILogForLogForCategory(10);
    v94 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v93, v94))
    {
      v131[0].n128_u32[0] = 136315138;
      *(v131[0].n128_u64 + 4) = v112;
      _os_log_impl(&dword_1C278D000, v93, v94, "CIMergeIndex failure at %s", v131, 0xCu);
    }

    *__error() = v92;
    free(*a6);
    free(a6);
    goto LABEL_95;
  }

  if (v121)
  {
    SetupRemapping(a1, v121);
  }

  if (v39 && !*(a1 + 1152))
  {
    v97 = __si_assert_copy_extra_661(-1);
    v98 = v97;
    v99 = "";
    if (v97)
    {
      v99 = v97;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8720, "ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v99);
LABEL_106:
    free(v98);
    if (__valid_fs(-1))
    {
      v102 = 2989;
    }

    else
    {
      v102 = 3072;
    }

    *v102 = -559038737;
    abort();
  }

  v83 = v114;
  inserted = InsertMergedIndex(a1, v82, a2, v12, v27, v114, v117, a6, v113, v121, v39, v116);
  v85 = *__error();
  v86 = _SILogForLogForCategory(10);
  v87 = v86;
  if ((inserted & 1) == 0)
  {
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v131[0].n128_u32[0] = 136315650;
      *(v131[0].n128_u64 + 4) = "InnerMerge";
      v131[0].n128_u16[6] = 1024;
      *(&v131[0].n128_u32[3] + 2) = 8724;
      v131[1].n128_u16[1] = 2080;
      *(v131[1].n128_u64 + 4) = v112;
      _os_log_error_impl(&dword_1C278D000, v87, OS_LOG_TYPE_ERROR, "%s:%d: InsertMergedIndex failed at %s", v131, 0x1Cu);
    }

    *__error() = v85;
    free(*a6);
    free(a6);
    ContentIndexDeleteIndex(v27, 1);
LABEL_95:
    pthread_mutex_lock(&mergeMutex);
    *(a1 + 2434) = 0;
    if (*(a1 + 2428))
    {
      pthread_cond_broadcast(&mergeCond);
    }

    pthread_mutex_unlock(&mergeMutex);
    mergeOverlay(a1, 0);
    v27 = 0;
    v91 = 0;
    goto LABEL_98;
  }

  v88 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v86, v88))
  {
    v131[0].n128_u32[0] = 136315138;
    *(v131[0].n128_u64 + 4) = v112;
    _os_log_impl(&dword_1C278D000, v87, v88, "InsertMergedIndex success at %s", v131, 0xCu);
  }

  *__error() = v85;
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 0x40000000;
  v118[2] = __InnerMerge_block_invoke_797;
  v118[3] = &__block_descriptor_tmp_799;
  v118[4] = a1;
  v118[5] = v27;
  dispatch_apply(2uLL, 0, v118);
  v89 = *v83;
  v131[0].n128_u64[0] = a1;
  __checkIndexSetDocIdOrder(a1, v89);
  if (v115 && *(a1 + 1152))
  {
    v100 = __si_assert_copy_extra_661(-1);
    v98 = v100;
    v101 = "";
    if (v100)
    {
      v101 = v100;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8748, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v101);
    goto LABEL_106;
  }

  if (v121)
  {
    v90 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
    *v90 = a1;
    v90[1] = v27;
    v90[2] = v121;
    v90[3] = a11;
    si_remapForIndex(v90, 0);
  }

  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2434) = 0;
  if (*(a1 + 2428))
  {
    pthread_cond_broadcast(&mergeCond);
  }

  pthread_mutex_unlock(&mergeMutex);
  v91 = 1;
LABEL_98:
  v95 = *(a1 + 2360);
  v96 = *(v95 + 104);
  if (v96)
  {
    v96(*(v95 + 144), v111, v91);
  }

  return v27;
}

void bit_vector_init(void *a1, CFIndex capacity)
{
  if (!a1)
  {
    v9 = __si_assert_copy_extra_661(-1);
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 41, "bv", v11);
    free(v10);
    if (__valid_fs(-1))
    {
      v12 = 2989;
    }

    else
    {
      v12 = 3072;
    }

    *v12 = -559038737;
    abort();
  }

  *a1 = 0;
  a1[1] = capacity;
  if (capacity)
  {
    Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], capacity);
    a1[2] = Mutable;
    CFBitVectorSetCount(Mutable, capacity);
    if (!a1[2])
    {
      v5 = __si_assert_copy_extra_661(-1);
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v7);
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
  }

  else
  {
    a1[2] = 0;
  }
}

void __si_merge_term_filter_ctx_init_block_invoke(uint64_t a1, CFIndex idx)
{
  v3 = idx;
  bit_vector_set(*(a1 + 32), idx);
  v4 = *(a1 + 40);

  bit_vector_set(v4, v3);
}

void bit_vector_set(void *a1, CFIndex idx)
{
  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = 32;
    }

    while (1)
    {
      v6 *= 2;
      if (v6 > idx)
      {
        break;
      }

      if (v6 <= v4)
      {
        v7 = __si_assert_copy_extra_661(-1);
        v8 = v7;
        v9 = "";
        if (v7)
        {
          v9 = v7;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v9);
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
    }

    v11 = a1[2];
    v12 = *MEMORY[0x1E695E480];
    if (v11)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v12, v6, v11);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v12, v6);
    }

    v14 = MutableCopy;
    if (!MutableCopy)
    {
      v16 = __si_assert_copy_extra_661(-1);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v18);
      free(v17);
      if (__valid_fs(-1))
      {
        v19 = 2989;
      }

      else
      {
        v19 = 3072;
      }

      *v19 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v6);
    v15 = a1[2];
    if (v15)
    {
      CFRelease(v15);
    }

    a1[1] = v6;
    a1[2] = v14;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

{
  if (idx < 0)
  {
    v6 = __si_assert_copy_extra_332();
    v14 = v6;
    v15 = "";
    if (v6)
    {
      v15 = v6;
    }

    __message_assert_336(v6, v7, v8, v9, v10, v11, v12, v13, "bit_vector.h", 142, "bitIndex >= 0", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      v16 = 2989;
    }

    else
    {
      v16 = 3072;
    }

    *v16 = -559038737;
    abort();
  }

  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v17 = a1[1];
    }

    else
    {
      v17 = 32;
    }

    while (1)
    {
      v17 *= 2;
      if (v17 > idx)
      {
        break;
      }

      if (v17 <= v4)
      {
        v18 = __si_assert_copy_extra_332();
        v26 = v18;
        v27 = "";
        if (v18)
        {
          v27 = v18;
        }

        __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "bit_vector.h", 124, "newCapacity > bv->capacity", v27);
        goto LABEL_20;
      }
    }

    v29 = a1[2];
    v30 = *MEMORY[0x1E695E480];
    if (v29)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v30, v17, v29);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v30, v17);
    }

    v32 = MutableCopy;
    if (!MutableCopy)
    {
      v34 = __si_assert_copy_extra_332();
      v26 = v34;
      v42 = "";
      if (v34)
      {
        v42 = v34;
      }

      __message_assert_336(v34, v35, v36, v37, v38, v39, v40, v41, "bit_vector.h", 128, "newBV", v42);
LABEL_20:
      free(v26);
      if (__valid_fs(-1))
      {
        v28 = 2989;
      }

      else
      {
        v28 = 3072;
      }

      *v28 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v17);
    v33 = a1[2];
    if (v33)
    {
      CFRelease(v33);
    }

    a1[1] = v17;
    a1[2] = v32;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

void __si_merge_term_filter_ctx_init_block_invoke_2(uint64_t a1, char *a2, uint64_t a3, __int128 *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0uLL;
  v25 = 0;
  v26 = *a4;
  *&v27 = *(a4 + 2);
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v26 = v24;
    *&v27 = v25;
    if (_MDPlistGetPlistObjectType() == 225)
    {
      v26 = v24;
      *&v27 = v25;
      if (_MDPlistBooleanGetValue())
      {
        v7 = *(*(a1 + 32) + 1192);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 0x40000000;
        v21 = __si_merge_term_filter_ctx_init_block_invoke_3;
        v22 = &__block_descriptor_tmp_805;
        v23 = *(a1 + 40);
        v26 = 0u;
        v27 = 0u;
        v8 = db_copy_field_ids_with_buffer(v7, a2, &v26, 8uLL);
        if (v8)
        {
          v9 = v8;
          if (*v8)
          {
            v10 = v8 + 1;
            do
            {
              (v21)(v20);
            }

            while (*v10++);
          }

LABEL_16:
          if (v9 != &v26)
          {
            free(v9);
          }
        }
      }
    }
  }

  else
  {
    v26 = *a4;
    *&v27 = *(a4 + 2);
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      v26 = v24;
      *&v27 = v25;
      if (_MDPlistGetPlistObjectType() == 225)
      {
        v26 = v24;
        *&v27 = v25;
        if (_MDPlistBooleanGetValue())
        {
          v12 = *(*(a1 + 32) + 1192);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 0x40000000;
          v17 = __si_merge_term_filter_ctx_init_block_invoke_4;
          v18 = &__block_descriptor_tmp_806;
          v19 = *(a1 + 40);
          v26 = 0u;
          v27 = 0u;
          v13 = db_copy_field_ids_with_buffer(v12, a2, &v26, 8uLL);
          if (v13)
          {
            v9 = v13;
            if (*v13)
            {
              v14 = v13 + 1;
              do
              {
                (v17)(v16);
              }

              while (*v14++);
            }

            goto LABEL_16;
          }
        }
      }
    }
  }
}

uint64_t setUpOverlay(uint64_t result, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 6624))
  {
    v3 = result;
    v4 = (result + 1452);
    atomic_fetch_add((result + 1452), 1u);
    v5 = _si_scheduler_suspend(*(result + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add(v4, 0xFFFFFFFF);
    v6 = _si_scheduler_suspend(*(v3 + 864), "SpotlightIndex.c", 9129);
    v7 = malloc_type_calloc(1uLL, 0x1D8uLL, 0x103004099AB8BE7uLL);
    atomic_store(1u, v7);
    *(v7 + 26) = 2;
    memset(&v9, 0, sizeof(v9));
    pthread_rwlockattr_init(&v9);
    pthread_rwlock_init((v7 + 240), &v9);
    pthread_rwlock_init((v7 + 8), &v9);
    pthread_rwlockattr_destroy(&v9);
    *(v3 + 6632) = v7;
    *(v3 + 6640) = CFRetain(a2);
    si_scheduler_resume(*(v3 + 872), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9132);
    v8 = *(v3 + 864);

    return si_scheduler_resume(v8, v6, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9133);
  }

  return result;
}

uint64_t SetupRemapping(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0;
  result = fd_setDir(*(a1 + 32), &v25);
  if (result)
  {
    bzero(__str, 0x400uLL);
    v5 = 51;
    while (1)
    {
      v6 = *(a1 + 2384);
      *(a2 + 40) = v6;
      *(a1 + 2384) = v6 + 1;
      snprintf(__str, 0x400uLL, "remapping%ld", v6);
      v7 = fd_create_protected(*(a1 + 32), __str, 536873474, 3u);
      v24 = 0;
      v8 = _fd_acquire_fd(v7, &v24);
      if (v8 != -1)
      {
        break;
      }

      fd_release(v7);
      if (!--v5)
      {
        v9 = *__error();
        v10 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v30 = 136315650;
          *&v30[4] = "SetupRemapping";
          *&v30[12] = 1024;
          *&v30[14] = 7424;
          *&v30[18] = 2080;
          *&v30[20] = __str;
          _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: open remp failed: %s", v30, 0x1Cu);
        }

        *__error() = v9;
        goto LABEL_16;
      }
    }

    v11 = v8;
    v12 = **(a2 + 16);
    v26 = 268435454;
    v27 = v12;
    prot_pwrite_guarded(v8, &v24, &v26, 4uLL, 0);
    prot_pwrite_guarded(v11, &v24, a2 + 32, 8uLL, 4);
    prot_pwrite_guarded(v11, &v24, &v27, 4uLL, 12);
    if (v27)
    {
      v13 = 0;
      v14 = 0;
      v15 = 16;
      do
      {
        v16 = (*(*(a2 + 16) + 8) + v13);
        v17 = v16[1];
        *v30 = *v16;
        *&v30[16] = v17;
        prot_pwrite_guarded(v11, &v24, v30, 8uLL, v15);
        prot_pwrite_guarded(v11, &v24, &v30[8], 4uLL, v15 + 8);
        v18 = v15 + 12;
        v19 = prot_pwrite_guarded(v11, &v24, *&v30[16], 4 * *&v30[8], v18);
        if (v19 != 4 * *&v30[8])
        {
          v20 = *__error();
          v21 = _SILogForLogForCategory(0);
          v22 = gSILogLevels[0] < 3;
          if (os_log_type_enabled(v21, (gSILogLevels[0] < 3)))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v21, v22, "*warn* Failed writing remapping data. Will cause index corruption if remapping fails.", buf, 2u);
          }

          *__error() = v20;
          v19 = 4 * *&v30[8];
        }

        v15 = v19 + v18;
        ++v14;
        v13 += 32;
      }

      while (v14 < v27);
    }

    _fd_release_fd(v7, v11, 0, v24);
    fd_release(v7);
LABEL_16:
    v23 = v25;
    result = MEMORY[0x1C6921200](v25);
    if ((v23 & 0x80000000) == 0)
    {
      return close(v23);
    }
  }

  return result;
}

uint64_t InsertMergedIndex(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, atomic_ullong *a6, atomic_ullong a7, void *a8, char *a9, const void *a10, char a11, char a12)
{
  v105 = *MEMORY[0x1E69E9840];
  bzero(v98, 0x208uLL);
  __buf = 0x6D6F76650A00;
  v98[4] = a12;
  v99 = a3;
  v100 = a4;
  v19 = *(a8 + 2) - a3;
  v101 = a4 + a3;
  v102 = v19;
  strncpy(v104, (a5 + 15208), 0xFFuLL);
  if (!v104[0])
  {
    return 0;
  }

  v86 = a6;
  v90 = a5;
  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2435) = 0;
  if (*(a1 + 2428))
  {
    pthread_cond_broadcast(&mergeCond);
  }

  pthread_mutex_unlock(&mergeMutex);
  atomic_fetch_add((a1 + 1452), 1u);
  v89 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
  atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2435) = 1;
  pthread_mutex_unlock(&mergeMutex);
  v20 = *__error();
  v21 = _SILogForLogForCategory(0);
  v22 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(a1 + 1384);
    v24 = *(v23 + 8);
    LODWORD(v23) = *(v23 + 16);
    *buf = 134218496;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v24;
    *&buf[18] = 1024;
    *&buf[20] = v23;
    _os_log_impl(&dword_1C278D000, v21, v22, "InsertMergedIndex %p live count %d current %d", buf, 0x18u);
  }

  *__error() = v20;
  v25 = a4;
  v26 = v90;
  if (!_CIMergeDeletes(v90, a10, (*a8 + 8 * a3), a4))
  {
    mergeOverlay(a1, 0);
    v35 = *(a1 + 872);
    v36 = v89;
    v37 = 8085;
LABEL_30:
    si_scheduler_resume(v35, v36, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", v37);
    return 0;
  }

  v85 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 8090);
  if (_os_feature_enabled_impl())
  {
    v27 = *(a1 + 1392);
    v28 = *(a1 + 1384);
    if (v27)
    {
      if (*(v27 + 8))
      {
        v29 = 0;
        do
        {
          __InsertMergedIndex_block_invoke(*(*v27 + 8 * v29++));
        }

        while (v29 < *(v27 + 8));
      }

      v26 = v90;
    }

    if (v28 && *(v28 + 8))
    {
      v30 = 0;
      do
      {
        __InsertMergedIndex_block_invoke(*(*v28 + 8 * v30++));
      }

      while (v30 < *(v28 + 8));
    }
  }

  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  memset(buf, 0, sizeof(buf));
  v92 = 0;
  ContentIndexSyncIndex(v26, buf, &v92);
  if ((*(v26 + 8) & 1) == 0)
  {
    mergeOverlay(a1, 0);
    si_scheduler_resume(*(a1 + 872), v89, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8110);
    v35 = *(a1 + 864);
    v36 = v85;
    v37 = 8111;
    goto LABEL_30;
  }

  v31 = 0;
  v94 = 0u;
  v95 = 0u;
  memset(buf, 0, sizeof(buf));
  do
  {
    *&buf[v31] = _si_scheduler_suspend(*(a1 + v31 + 880), "SpotlightIndex.c", 8118);
    v31 += 8;
  }

  while (v31 != 64);
  v32 = *v86;
  if (*v86 == a7)
  {
    v32 = a7;
    v34 = a3;
  }

  else
  {
    free(*a8);
    free(a8);
    a8 = ContentIndexListClone(v32);
    if (a2 && (v33 = *(v32 + 8), v33))
    {
      a3 = 0;
      while (*(*(*v32 + 8 * a3) + 56) != a2)
      {
        if (v33 == ++a3)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      a3 = 0;
    }

    v34 = a3;
  }

  if (*(*(*v32 + 8 * v34) + 56) != a2)
  {
    si_scheduler_resume(*(a1 + 872), v89, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8137);
    si_scheduler_resume(*(a1 + 864), v85, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8138);
    v48 = 0;
    v49 = a1 + 880;
    do
    {
      si_scheduler_resume(*(v49 + v48), *&buf[v48], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8141);
      v48 += 8;
    }

    while (v48 != 64);
    return 0;
  }

  v39 = ContentIndexListClone(0);
  if (a10)
  {
    Mutable = *(a1 + 2368);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *(a1 + 2368) = Mutable;
    }

    CFArrayAppendValue(Mutable, a10);
  }

  v88 = v32;
  if (a4)
  {
    v42 = a3;
    do
    {
      ContentIndexListAppend(v39, *(*a8 + 8 * v42));
      *(*a8 + 8 * v42++) = 0;
      --v25;
    }

    while (v25);
  }

  *(*a8 + 8 * v34) = v90;
  v43 = *(a8 + 2);
  if (a3 + a4 < v43)
  {
    v44 = a3 + 1;
    v45 = a3 + a4;
    do
    {
      *(*a8 + 8 * v44++) = *(*a8 + 8 * v45++);
    }

    while (v43 != v45);
  }

  if (a12)
  {
    v46 = (a8 + 2);
    v47 = *(a8 + 4);
LABEL_54:
    if (v47 != -1 && v47 > a3)
    {
      *v46 = v47 - a4 + 1;
    }

    *(a8 + 2) = v43 - a4 + 1;
    goto LABEL_61;
  }

  v47 = *(*(a1 + 1392) + 16);
  v46 = (a8 + 2);
  if (v47 == -1)
  {
    *v46 = -1;
  }

  else
  {
    v47 = *v46;
  }

  if (v47 != a3 + a4 - 1)
  {
    goto LABEL_54;
  }

  *(a8 + 4) = -1;
  *(a8 + 2) = v43 - a4 + 1;
LABEL_61:
  si_clone_index_metadata_to_inflight(v40);
  create_scan_touch_file(*(a1 + 32), 0);
  v51 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
  pwrite(v51, &__buf, 0x210uLL, 0);
  v52 = v51;
  fcntl(v51, 85);
  v53 = 0;
  while (1)
  {
    v54 = v53;
    v55 = *(v39 + 2);
    if (v53 >= v55)
    {
      break;
    }

    v56 = perform_victim_rename(v53, v39);
    v53 = v54 + 1;
    if ((v56 & 1) == 0)
    {
      if (*(v39 + 2))
      {
        v57 = 0;
        do
        {
          ContentIndexDeleteIndex(*(*v39 + 8 * v57++), 0);
        }

        while (v57 < *(v39 + 2));
      }

      break;
    }
  }

  v58 = a4 >= 2;
  v59 = v52;
  if (v58)
  {
    v103 = 1;
    pwrite(v52, &__buf, 0x210uLL, 0);
    fcntl(v52, 85);
    v60 = (a3 + 1);
    v61 = *(a8 + 2);
    if (v60 < v61)
    {
      LOBYTE(v62) = 1;
      do
      {
        while ((v62 & 1) == 0)
        {
          LOBYTE(v62) = 0;
          v60 = (v60 + 1);
          if (v60 >= v61)
          {
            goto LABEL_103;
          }
        }

        v62 = perform_renumber_rename(v60, a8, &__buf, v59, a9);
        v61 = *(a8 + 2);
        v60 = (v60 + 1);
      }

      while (v60 < v61);
      if (!v62)
      {
        goto LABEL_103;
      }
    }
  }

  v103 = 2;
  pwrite(v59, &__buf, 0x210uLL, 0);
  fcntl(v59, 85);
  if (!rename_new_index(v90, a9, a3))
  {
LABEL_103:
    if ((v59 & 0x80000000) == 0)
    {
      close(v59);
    }

    si_makeUnavailable(a1, 22, 0, 25, "Failure renaming index");
    return 0;
  }

  v103 = 3;
  pwrite(v59, &__buf, 0x210uLL, 0);
  fcntl(v59, 85);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __InsertMergedIndex_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_829;
  aBlock[4] = a1;
  aBlock[5] = v90;
  ContentIndexSetDirtyCallback(v90, aBlock);
  *(v90 + 15201) = 4;
  if (!si_swapIndexSet(a1, v88, a8, v86, v63, v64, v65, v66))
  {
    v81 = __si_assert_copy_extra_661(-1);
    v82 = v81;
    v83 = "";
    if (v81)
    {
      v83 = v81;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8261, "si_swapIndexSet(ref, oldIndexSet, indexSet, indexSetPtr,1, live)", v83);
    free(v82);
    if (__valid_fs(-1))
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

  ++*(a1 + 1400);
  v67 = *(*(a1 + 1392) + 8);
  if (*(a1 + 1240) > v67)
  {
    *(a1 + 1240) = v67;
  }

  if (*(a1 + 1248) > v67)
  {
    *(a1 + 1248) = v67;
  }

  v68 = *(*(a1 + 1384) + 8);
  if (*(a1 + 1244) > v68)
  {
    *(a1 + 1244) = v68;
  }

  if (*(a1 + 1252) > v68)
  {
    *(a1 + 1252) = v68;
  }

  _CIMetaInfoSync(a1 + 1200, gTerminating == 0);
  si_set_obj_state(a1, v90);
  LODWORD(v69) = *(v39 + 2);
  if (v54 < v55)
  {
    goto LABEL_90;
  }

  if (v69)
  {
    v70 = 0;
    do
    {
      ContentIndexDeleteIndex(*(*v39 + 8 * v70++), 0);
      v69 = *(v39 + 2);
    }

    while (v70 < v69);
LABEL_90:
    if (v69)
    {
      v71 = 0;
      do
      {
        v72 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
        v72[1] = a1;
        *v72 = *(*v39 + 8 * v71);
        v73 = *(a1 + 1104);
        v74 = qos_class_self();
        si_enqueue_work_with_qos(v73, v74, si_freeIndex0, v72);
        ++v71;
      }

      while (v71 < *(v39 + 2));
    }
  }

  free(*v39);
  free(v39);
  if (a11)
  {
    handleDeferQueue(a1);
  }

  if (a10)
  {
    si_sync_ctx_create_with_defer_fd(a1, 0);
    v76 = v75;
    *(v75 + 96) = 1;
    if ((*(*v75 + 2437) & 1) == 0 && (*(*v75 + 2072) & 1) == 0)
    {
      attachJournal(v75);
    }

    syncIndex(v76, 0);
  }

  v77 = &v95 + 1;
  v78 = 117;
  do
  {
    v79 = *v77--;
    si_scheduler_resume(*(a1 + 8 * v78), v79, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8321);
    v80 = v78 - 108;
    --v78;
  }

  while (v80 > 2);
  si_scheduler_resume(*(a1 + 864), v85, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8324);
  mergeOverlay(a1, v90);
  scan_lost_ids(a1, 0);
  si_scheduler_resume(*(a1 + 872), v89, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8330);
  unlinkat(*(a1 + 32), "tmp.spotlight.state.transition", 2048);
  unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
  close(v59);
  return 1;
}

void mergeOverlay(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 6632);
  if (v2)
  {
    v5 = (a1 + 6632);
    v6 = *(a1 + 6640);
    v7 = *(a1 + 1384);
    v8 = *(a1 + 1392);
    v9 = (a1 + 1452);
    atomic_fetch_add((a1 + 1452), 1u);
    v10 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add(v9, 0xFFFFFFFF);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __mergeOverlay_block_invoke;
    v17[3] = &__block_descriptor_tmp_303;
    v17[4] = a2;
    v17[5] = v8;
    v17[6] = v6;
    v17[7] = v7;
    directoryOverlayProcessPaths(v2, v17);
    v11 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 9171);
    *v5 = 0;
    v5[1] = 0;
    si_scheduler_resume(*(a1 + 872), v10, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9175);
    si_scheduler_resume(*(a1 + 864), v11, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9176);
    v12 = *(*(a1 + 864) + 160);
    v13 = *(*(a1 + 928) + 160);
    v14 = *(*(a1 + 936) + 160);
    v15 = *(*(a1 + 880) + 160);
    dispatch_retain(v13);
    dispatch_retain(v12);
    dispatch_retain(v15);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __mergeOverlay_block_invoke_2;
    v16[3] = &__block_descriptor_tmp_308;
    v16[4] = v13;
    v16[5] = v15;
    v16[6] = v12;
    v16[7] = v2;
    v16[8] = v6;
    dispatch_barrier_async(v14, v16);
  }
}

void __InnerMerge_block_invoke_797(uint64_t a1, uint64_t a2)
{
  makeThreadId();
  if (a2 == 1)
  {
    v5 = *(a1 + 40);

    index_optimize_disk_space(v5);
  }

  else if (!a2)
  {
    v4 = *(a1 + 32);

    recalculateTopK(v4);
  }
}

void si_remapForIndex(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    v4 = os_transaction_create();
    v33 = 0;
    if (fd_setDir(*(v3 + 32), &v33))
    {
      v32 = 0;
      while (1)
      {
        v5 = ContentIndexRemappingNextDocId(*(a1 + 16), &v32);
        if (!v5)
        {
          break;
        }

        v6 = v5;
        si_scheduler_voluntary_gc_inline(*(v3 + 944));
        si_suspend_if_bad_time(v3, *(a1 + 24));
        v7 = v32;
        if (v6 == v32)
        {
          *(*(a1 + 16) + 24) = v6 + 1;
        }

        else
        {
          v8 = _CIGetOIDForDocId(*(a1 + 8), v6, 0);
          v31 = 0;
          if (**(v3 + 6592))
          {
            v17 = *__error();
            v18 = _SILogForLogForCategory(0);
            v19 = 2 * (gSILogLevels[0] < 4);
            if (os_log_type_enabled(v18, v19))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v18, v19, "remapping canceled", buf, 2u);
            }

            *__error() = v17;
            goto LABEL_31;
          }

          if (db_get_obj(*(v3 + 1192), v8, &v31, 0))
          {
            *(*(a1 + 16) + 24) = v7 + 1;
          }

          else
          {
            v9 = v31;
            if (*(v31 + 4) == v7)
            {
              v10 = *(a1 + 16);
              v30[0] = v7 + 1;
              v30[1] = v10;
              *(v31 + 4) = v6;
              v11 = *(v3 + 1192);
              if (*v11 != 1685287992)
              {
                v24 = *__error();
                v25 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v26 = *v11;
                  *buf = 136315650;
                  v35 = "db_update_obj_callback";
                  v36 = 1024;
                  v37 = 323;
                  v38 = 1024;
                  v39 = v26;
                  _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
                }

                *__error() = v24;
                v27 = __si_assert_copy_extra_332();
                v28 = v27;
                if (v27)
                {
                  v29 = v27;
                }

                else
                {
                  v29 = "";
                }

                __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 323, v29);
                free(v28);
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              updated = db2_update_obj_callback(*(v3 + 1192), v9, 0, remap_update_callback, v30);
              if (updated && dword_1EBF46AE8 >= 5)
              {
                v13 = updated;
                v14 = *__error();
                v15 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  LODWORD(v35) = v13;
                  _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Updating item for remap failed with error %d", buf, 8u);
                }

                *__error() = v14;
              }

              v9 = v31;
            }

            else
            {
              *(*(a1 + 16) + 24) = v7 + 1;
            }

            free(v9);
          }
        }
      }

      if (!**(v3 + 6592))
      {
        db_perform_callback(*(v3 + 1192), si_removeRemapping, a1);
        v16 = db_shrink_cache(*(v3 + 1192));
        if (v16)
        {
          si_makeUnavailable(v3, v16, 0, 3, "Failure in db_shrink_cache at si_remapForIndex");
        }

        else
        {
          si_sync_ctx_create_with_defer_fd(v3, 0);
          v21 = v20;
          *(v20 + 96) = 1;
          if ((*(*a1 + 2072) & 1) == 0)
          {
            attachJournal(v20);
          }

          *(v21 + 40) = si_os_release_routine;
          os_retain(v4);
          *(v21 + 48) = v4;
          v22 = *a1;
          if (*(*a1 + 2072) == 1)
          {
            flushGraphCache(v22);
            v22 = *a1;
          }

          si_enqueue_work(*(v22 + 1040), syncIndex, v21);
        }
      }

LABEL_31:
      v23 = v33;
      MEMORY[0x1C6921200](v33);
      if ((v23 & 0x80000000) == 0)
      {
        close(v23);
      }
    }

    os_release(v4);
  }

  CFRelease(*(a1 + 16));
  free(a1);
}

void _si_mobile_journal_finalize(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    if (!a2 || (*(a1 + 109) & 1) != 0 || !*(a1 + 56) || !*(a1 + 64) || !*(a1 + 72) || *(a1 + 40) < 1)
    {
LABEL_16:
      fd_release(*(a1 + 80));
      goto LABEL_17;
    }

    message = _si_mobile_journal_create_message(a1, 2u);
    memset(&v23, 0, sizeof(v23));
    fd_stat(*(a1 + 80), &v23);
    xpc_dictionary_set_uint64(message, "toc_s", v23.st_size);
    v4 = si_xpc_send_client_msg(message, &__block_literal_global_1070);
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      LOWORD(v15) = 0;
      v8 = "### skg journal_complete message sent";
    }

    else
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      LOWORD(v15) = 0;
      v8 = "### skg journal_complete NOT sent";
    }

    _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, v8, &v15, 2u);
LABEL_14:
    *__error() = v5;
    if (message)
    {
      CFRelease(message);
    }

    goto LABEL_16;
  }

LABEL_17:
  if (*(a1 + 24))
  {
    v28 = 0u;
    memset(v29, 0, sizeof(v29));
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(&v23, 0, sizeof(v23));
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v13 = fd_name(*(a1 + 8), &v23, 0xFFuLL);
      v15 = 134218754;
      v16 = a1;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = v11;
      v21 = 2080;
      v22 = v13;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Finalizing journal %p %p %lx %s", &v15, 0x2Au);
    }

    *__error() = v9;
    fd_guarded_munmap(*(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  fd_release(*(a1 + 8));
  free(*(a1 + 48));
  v14 = *(a1 + 112);
  if (v14)
  {
    free(v14);
  }

  free(a1);
}

int *___si_mobile_journal_notify_complete_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "### skg journal_complete result %lld", &v7, 0xCu);
  }

  result = __error();
  *result = v4;
  return result;
}

void playBackMobileJournal(uint64_t *a1, int a2)
{
  v201 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (a2)
  {
    goto LABEL_232;
  }

  v4 = *a1;
  v5 = *a1;
  v6 = fd_lseek(*(v3 + 8), 0, 2);
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    v9 = *(v3 + 24);
    if (v9)
    {
      v10 = *(v3 + 16);
      if (v10 != -1)
      {
        if (v9 == v7 && *(v3 + 32) == 0)
        {
          v12 = 1;
          goto LABEL_14;
        }

        munmap(v10, v9);
      }

      *(v3 + 24) = v8;
      *(v3 + 32) = 0;
      v12 = 1;
      *(v3 + 16) = fd_mmap(*(v3 + 8), v8, 1, 1025, 0);
    }

    else
    {
      v12 = 0;
      *(v3 + 24) = v6;
      *(v3 + 32) = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_14:
  v177 = *(v5 + 2136);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v14 = v12;
  v15 = setThreadIdAndInfo(-1, sJournalExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
  v191 = __PAIR64__(v15, HIDWORD(v15));
  v190 = __PAIR64__(v16, v17);
  v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
  *(v18 + 216) = 0;
  v19 = *(v18 + 312);
  v20 = *(v18 + 224);
  if (v20)
  {
    v20(*(v18 + 288));
  }

  v189 = v191;
  v188 = v190;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v18 + 312) = v19;
    CIOnThreadCleanUpReset(v188);
    dropThreadId(HIDWORD(v189), 1, add_explicit + 1);
    CICleanUpReset(HIDWORD(v189), HIDWORD(v188));
    goto LABEL_228;
  }

  v183 = v19;
  if (!v8)
  {
    goto LABEL_225;
  }

  if ((v14 & 1) == 0)
  {
    si_mobile_journal_map_activate(v3);
  }

  v176 = *(v3 + 16);
  if (v176 == -1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_219;
  }

  if (v7 < 0xC)
  {
    v21 = 0;
    v22 = -1;
    v23 = 0;
    goto LABEL_218;
  }

  v27 = 0;
  v28 = -1;
  alloc = *MEMORY[0x1E695E480];
  v29 = 0;
  v30 = 0;
  v185 = add_explicit;
  v184 = v5;
  v181 = v8;
  v186 = v4;
  v182 = v14;
  v161 = v7;
  while (1)
  {
    v174 = v30;
    v23 = v29;
    v179 = v27;
    v31 = v28;
    if (*(v5 + 2433) == 1)
    {
      v146 = *__error();
      v147 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_203;
      }

LABEL_204:
      *__error() = v146;
      v21 = v179;
      v22 = v31;
      goto LABEL_218;
    }

    v32 = *(v5 + 872);
    if (v32)
    {
      si_scheduler_voluntary_gc_inline(*(v5 + 872));
      if ((*(v32 + 120) || *(v32 + 144)) && *(v32 + 136) == 1 && (*(v32 + 67) & 1) == 0)
      {
        quick_check_suspension(v32);
      }
    }

    if (*(v5 + 2433) == 1)
    {
      v146 = *__error();
      v147 = _SILogForLogForCategory(4);
      v14 = v182;
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_203:
        _os_log_impl(&dword_1C278D000, v147, OS_LOG_TYPE_DEFAULT, "Interrupting indexing; process quitting", buf, 2u);
      }

      goto LABEL_204;
    }

    if ((~v179 & 0xFFF) != 0)
    {
      v33 = v23;
    }

    else
    {
      v33 = v23;
      if (v23 != v179)
      {
        si_sync_ctx_create_with_defer_fd(v5, 0);
        v35 = v34[11];
        if (v35 <= v31 + 1)
        {
          v35 = v31 + 1;
        }

        v34[11] = v35;
        si_sync_index_delayed2(v34, 0);
        v33 = v179;
      }
    }

    v36 = v33;
    v37 = v176 + v174;
    v38 = v176 + v174;
    v39 = *(v176 + v174);
    v187 = 0;
    HIDWORD(v41) = v39 + 264306963;
    LODWORD(v41) = v39 + 264306963;
    v40 = v41 >> 20;
    v180 = v31;
    v178 = v33;
    if (v40 > 1)
    {
      break;
    }

    if (!v40)
    {
      v57 = v2_readVInt64(v37 + 12, &v187);
      v58 = 1;
LABEL_89:
      v90 = *(v38 + 4);
      if (v90 > 0xFFFFFFF3 || (v91 = v90 + 12, v92 = v174 + v90 + 12, v7 < v92))
      {
        v150 = *__error();
        v151 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_211;
        }

        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5031;
        *&buf[18] = 2048;
        *&buf[20] = 4030594797;
        *&buf[28] = 2048;
        *&buf[30] = v90;
        v193 = 2048;
        v194 = v174;
        v195 = 2048;
        v196 = v181;
        goto LABEL_237;
      }

      v165 = v58;
      v93 = *(v38 + 4);
      if (v90 > v187 && (_MDPlistGetRootPlistObjectFromBytesWithError(), memset(buf, 0, 24), _MDPlistArrayGetCount()) && (memset(buf, 0, 24), _MDPlistArrayGetPlistObjectAtIndex(), (v94 = _MDPlistContainerCopyObject()) != 0))
      {
        v95 = v94;
        v96 = 0;
      }

      else
      {
        v97 = *__error();
        v98 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "playBackMobileJournal";
          *&buf[12] = 1024;
          *&buf[14] = 5055;
          *&buf[18] = 2048;
          *&buf[20] = 4030594797;
          *&buf[28] = 2048;
          *&buf[30] = v93;
          v193 = 2048;
          v194 = v174;
          v195 = 2048;
          v196 = v181;
          _os_log_error_impl(&dword_1C278D000, v98, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
        }

        v95 = 0;
        *__error() = v97;
        v96 = 1;
      }

      v99 = v57 != 0;
      if (v180)
      {
        v100 = v57 != 0;
      }

      else
      {
        v100 = 0;
      }

      if (v57 >= v180)
      {
        v100 = 0;
      }

      if (v57 > v177)
      {
        v99 = 0;
      }

      if (v100 || v99)
      {
        v104 = v179;
        v103 = v180;
      }

      else
      {
        *buf = si_mobile_set_attr_ctx_create(v184, v95);
        *(*buf + 80) |= 0x10u;
        atomic_fetch_add(v3, 1u);
        v101 = *buf;
        *(*buf + 8) = v3;
        *(v101 + 16) = v174;
        *(v101 + 24) = v91;
        *(v101 + 32) = v165;
        *(v101 + 64) = CFAbsoluteTimeGetCurrent();
        v102 = si_backtrace_routine_resolve(*v101, *(v101 + 72), setCSAttributes1, v101, buf);
        (v102)(*buf, 0);
        if (v180 <= v57)
        {
          v103 = v57;
        }

        else
        {
          v103 = v180;
        }

        v104 = v179 + 1;
      }

      add_explicit = v185;
      v4 = v186;
      if ((v96 & 1) == 0)
      {
        CFRelease(v95);
      }

      v105 = v92;
      v21 = v104;
      v106 = v103;
      goto LABEL_158;
    }

    v56 = -263323923;
    if (v40 != 1)
    {
      goto LABEL_57;
    }

LABEL_68:
    v71 = v56;
    v72 = v2_readVInt64(v37 + 36, &v187);
    v73 = 1;
    v39 = v71;
LABEL_69:
    v74 = v39;
    v75 = *(v38 + 4);
    v76 = v75 + 12;
    if ((v75 + 12) < 0x24 || v161 < v174 + v76)
    {
      v148 = *__error();
      v149 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5087;
        *&buf[18] = 2048;
        *&buf[20] = v74;
        *&buf[28] = 2048;
        *&buf[30] = v75;
        v193 = 2048;
        v194 = v174;
        v195 = 2048;
        v196 = v181;
        _os_log_error_impl(&dword_1C278D000, v149, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      *__error() = v148;
      v21 = v179;
      v22 = v180;
      v23 = v178;
      v4 = v186;
      goto LABEL_212;
    }

    v166 = v39;
    v173 = v174 + v76;
    v77 = v75 - 24 - v187;
    if (v75 - 24 <= v187)
    {
      goto LABEL_118;
    }

    v78 = *(v38 + 12) & 0x3FF;
    v79 = v37 + v187;
    v80 = strnlen((v79 + 36), v75 - 24 - v187);
    v81 = v80;
    if (v80 == v77 || v80 + 1 != v78)
    {
      v107 = *__error();
      v108 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316930;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5103;
        *&buf[18] = 2048;
        *&buf[20] = v166;
        *&buf[28] = 2048;
        *&buf[30] = v75;
        v193 = 2048;
        v194 = v174;
        v195 = 2048;
        v196 = v181;
        v197 = 2048;
        v198 = v81;
        v199 = 2048;
        v200 = v78;
        _os_log_error_impl(&dword_1C278D000, v108, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
      }

      *__error() = v107;
LABEL_118:
      v109 = *__error();
      v110 = _SILogForLogForCategory(0);
      v4 = v186;
      v5 = v184;
      v14 = v182;
      v8 = v181;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5110;
        *&buf[18] = 2048;
        *&buf[20] = v166;
        *&buf[28] = 2048;
        *&buf[30] = v75;
        v193 = 2048;
        v194 = v174;
        v195 = 2048;
        v196 = v181;
        _os_log_error_impl(&dword_1C278D000, v110, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      *__error() = v109;
      v105 = v173;
      v21 = v179;
      v106 = v180;
      add_explicit = v185;
      goto LABEL_121;
    }

    v82 = CFStringCreateWithCString(alloc, (v79 + 36), 0x8000100u);
    if (!v82)
    {
      goto LABEL_118;
    }

    v83 = v82;
    v84 = v72 != 0;
    if (v180)
    {
      v85 = v72 != 0;
    }

    else
    {
      v85 = 0;
    }

    if (v72 >= v180)
    {
      v85 = 0;
    }

    if (v72 > v177)
    {
      v84 = 0;
    }

    if (v85 || v84)
    {
      if (gSILogLevels[0] >= 5)
      {
        v144 = *__error();
        v145 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = v72;
          *&buf[12] = 2048;
          *&buf[14] = v180;
          *&buf[22] = 2048;
          *&buf[24] = v177;
          _os_log_impl(&dword_1C278D000, v145, OS_LOG_TYPE_DEFAULT, "Playback skipping sn: %lld mrsn: %lld csn: %lld", buf, 0x20u);
        }

        *__error() = v144;
      }

      v89 = v179;
      v88 = v180;
      v4 = v186;
      add_explicit = v185;
      v5 = v184;
    }

    else
    {
      v5 = v184;
      *buf = si_mobile_set_attr_ctx_create(v184, v82);
      *(*buf + 80) |= 0x10u;
      atomic_fetch_add(v3, 1u);
      v86 = *buf;
      *(*buf + 8) = v3;
      *(v86 + 16) = v174;
      *(v86 + 24) = (v75 + 12);
      *(v86 + 32) = v73;
      *(v86 + 64) = CFAbsoluteTimeGetCurrent();
      v87 = si_backtrace_routine_resolve(*v86, *(v86 + 72), setCSAttributes2, v86, buf);
      (v87)(*buf, 0);
      if (v180 <= v72)
      {
        v88 = v72;
      }

      else
      {
        v88 = v180;
      }

      v89 = v179 + 1;
      v4 = v186;
      add_explicit = v185;
    }

    v117 = v88;
    v118 = v89;
    CFRelease(v83);
    v105 = v173;
    v21 = v118;
    v106 = v117;
    v14 = v182;
    v8 = v181;
LABEL_121:
    v7 = v161;
LABEL_193:
    v28 = v106;
    v27 = v21;
    v30 = v105;
    v143 = v105 + 12;
    v22 = v106;
    v23 = v178;
    v29 = v178;
    if (v143 > v7)
    {
      goto LABEL_218;
    }
  }

  switch(v40)
  {
    case 2:
      v59 = v2_readVInt64(v37 + 18, &v187);
      v60 = 1;
LABEL_60:
      v61 = *(v38 + 4);
      v62 = (v61 + 12);
      if (v62 < 0x12 || v7 < v174 + v62)
      {
        v150 = *__error();
        v151 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_211;
        }

        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5144;
        *&buf[18] = 2048;
        *&buf[20] = 4033806061;
        *&buf[28] = 2048;
        *&buf[30] = v61;
        v193 = 2048;
        v194 = v174;
        v195 = 2048;
        v196 = v181;
LABEL_237:
        _os_log_error_impl(&dword_1C278D000, v151, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
LABEL_211:
        *__error() = v150;
        v21 = v179;
        v22 = v180;
        v23 = v178;
LABEL_212:
        add_explicit = v185;
LABEL_216:
        v5 = v184;
        goto LABEL_217;
      }

      v63 = v174 + v62;
      v64 = *(v38 + 12);
      v65 = v61 - 6 - v187;
      v167 = v60;
      if (v61 - 6 <= v187)
      {
        v70 = 0;
      }

      else
      {
        if (!*(v38 + 12))
        {
          v114 = 0;
          v115 = 1;
          if (v59)
          {
            v116 = v180;
            if (v180 && v59 < v180)
            {
              v105 = v174 + v62;
              v21 = v179;
LABEL_149:
              v106 = v116;
LABEL_157:
              add_explicit = v185;
              goto LABEL_158;
            }
          }

          else
          {
            v116 = v180;
          }

          goto LABEL_151;
        }

        v162 = *(v38 + 12);
        v66 = *(v38 + 12);
        v67 = v37 + v187;
        v68 = strnlen((v37 + v187 + 18), v61 - 6 - v187);
        v69 = v68;
        if (v68 == v65 || v68 + 1 != v66)
        {
          v119 = v66;
          v120 = *__error();
          v121 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316930;
            *&buf[4] = "playBackMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5160;
            *&buf[18] = 2048;
            *&buf[20] = 4033806061;
            *&buf[28] = 2048;
            *&buf[30] = v61;
            v193 = 2048;
            v194 = v174;
            v195 = 2048;
            v196 = v181;
            v197 = 2048;
            v198 = v69;
            v199 = 2048;
            v200 = v119;
            _os_log_error_impl(&dword_1C278D000, v121, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
          }

          *__error() = v120;
          v70 = 0;
        }

        else
        {
          v70 = CFStringCreateWithCString(alloc, (v67 + 18), 0x8000100u);
        }

        v4 = v186;
        v63 = v174 + v62;
        v64 = v162;
      }

      add_explicit = v185;
      v116 = v180;
      if (!v70 && v64)
      {
        v105 = v63;
        v21 = v179;
        v106 = v180;
LABEL_158:
        v5 = v184;
LABEL_192:
        v14 = v182;
        v8 = v181;
        goto LABEL_193;
      }

      if (v59 && v180 && v59 < v180)
      {
        v168 = v63;
        v114 = v70;
        v122 = v180;
        v123 = v179;
        if (!v70)
        {
          v105 = v63;
          v21 = v179;
          goto LABEL_149;
        }

LABEL_156:
        v126 = v123;
        v127 = v122;
        CFRelease(v114);
        v105 = v168;
        v21 = v126;
        v106 = v127;
        goto LABEL_157;
      }

      v114 = v70;
      v115 = v70 == 0;
LABEL_151:
      v168 = v63;
      v124 = v115;
      v125 = si_mobile_delete_attr_ctx_create(v184, v114, 0);
      *(v125 + 10) |= 0x10u;
      atomic_fetch_add(v3, 1u);
      v125[1] = v3;
      v125[2] = v174;
      v125[3] = v62;
      *(v125 + 32) = v167;
      *(v125 + 6) = CFAbsoluteTimeGetCurrent();
      deleteCSAttributes(v125, 0);
      if (v116 <= v59)
      {
        v106 = v59;
      }

      else
      {
        v106 = v116;
      }

      v122 = v106;
      v123 = v179 + 1;
      if (v124)
      {
        v105 = v168;
        v21 = v179 + 1;
        goto LABEL_157;
      }

      goto LABEL_156;
    case 4:
      v56 = -262275347;
      goto LABEL_68;
    case 5:
      v42 = v2_readVInt64(v37 + 24, &v187);
      goto LABEL_47;
  }

LABEL_57:
  if (v39 == -264372499)
  {
    v57 = 0;
    v58 = 0;
    goto LABEL_89;
  }

  if ((v39 & 0xFFEFFFFF) == 0xF04DFEED)
  {
    v72 = 0;
    v73 = 0;
    goto LABEL_69;
  }

  v42 = 0;
  if (v39 == -259064083)
  {
LABEL_47:
    v43 = *(v38 + 4);
    v44 = v43 + 12;
    if ((v43 + 12) < 0x12 || v44 < 0x18 || (v45 = v174 + v44, v7 < v45))
    {
      v152 = *__error();
      v153 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5196;
        *&buf[18] = 2048;
        *&buf[20] = 4035903213;
        *&buf[28] = 2048;
        *&buf[30] = v43;
        v193 = 2048;
        v194 = v174;
        v195 = 2048;
        v196 = v8;
        _os_log_error_impl(&dword_1C278D000, v153, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      *__error() = v152;
      v21 = v179;
      v22 = v31;
      v23 = v178;
      goto LABEL_216;
    }

    v46 = v42;
    v47 = v43 - 12;
    v48 = *(v38 + 16);
    v49 = *(v38 + 16);
    v50 = *(v38 + 18);
    v51 = *(v38 + 18);
    v52 = v187;
    if (v187 >= v43 - 12)
    {
      v111 = 0;
      v112 = 0;
      v113 = v180;
    }

    else
    {
      v169 = v49;
      v170 = v51;
      v171 = v42;
      v172 = v45;
      v163 = v48;
      v164 = v50;
      if (v49)
      {
        v53 = v47 - v187 - v50;
        v54 = strnlen((v37 + v187 + 24), v53);
        if (v54 == v53 || v54 + 1 != v163)
        {
          v160 = v54;
          v128 = *__error();
          v129 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316930;
            *&buf[4] = "playBackMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5214;
            *&buf[18] = 2048;
            *&buf[20] = 4035903213;
            *&buf[28] = 2048;
            *&buf[30] = v43;
            v193 = 2048;
            v194 = v174;
            v195 = 2048;
            v196 = v181;
            v197 = 2048;
            v198 = v160;
            v199 = 2048;
            v200 = v163;
            _os_log_error_impl(&dword_1C278D000, v129, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
          }

          *__error() = v128;
          v55 = 0;
        }

        else
        {
          v55 = CFStringCreateWithCString(alloc, (v37 + v52 + 24), 0x8000100u);
        }

        add_explicit = v185;
        v46 = v171;
        v45 = v172;
        v51 = v170;
      }

      else
      {
        v55 = 0;
      }

      if (v51)
      {
        v130 = v47 - (v52 + v163);
        v131 = v37 + v52 + v163;
        v132 = strnlen((v131 + 24), v130);
        v133 = v132;
        if (v132 == v130 || v132 + 1 != v164)
        {
          v134 = *__error();
          v135 = _SILogForLogForCategory(0);
          v113 = v180;
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316930;
            *&buf[4] = "playBackMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5224;
            *&buf[18] = 2048;
            *&buf[20] = 4035903213;
            *&buf[28] = 2048;
            *&buf[30] = v43;
            v193 = 2048;
            v194 = v174;
            v195 = 2048;
            v196 = v181;
            v197 = 2048;
            v198 = v133;
            v199 = 2048;
            v200 = v164;
            _os_log_error_impl(&dword_1C278D000, v135, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
          }

          v111 = 0;
          *__error() = v134;
          v112 = v55;
          add_explicit = v185;
        }

        else
        {
          v111 = CFStringCreateWithCString(alloc, (v131 + 24), 0x8000100u);
          v112 = v55;
          add_explicit = v185;
          v113 = v180;
        }

        v46 = v171;
        v45 = v172;
        v51 = v170;
      }

      else
      {
        v111 = 0;
        v112 = v55;
        v113 = v180;
      }

      v49 = v169;
    }

    v5 = v184;
    if (v112 || !v49)
    {
      if (!v111 && v51 || v46 && v113 && v46 < v113)
      {
        v138 = v179;
        v139 = v113;
      }

      else
      {
        if (v113 <= v46)
        {
          v139 = v46;
        }

        else
        {
          v139 = v113;
        }

        v138 = v179 + 1;
      }

      if (v112)
      {
        v140 = v45;
        CFRelease(v112);
        v45 = v140;
      }

      v136 = v139;
      v137 = v138;
    }

    else
    {
      v136 = v113;
      v137 = v179;
    }

    v141 = v136;
    v142 = v45;
    if (v111)
    {
      CFRelease(v111);
    }

    v105 = v142;
    v21 = v137;
    v106 = v141;
    goto LABEL_192;
  }

  if (v39 == -261161235)
  {
    v59 = 0;
    v60 = 0;
    goto LABEL_60;
  }

  v21 = v179;
  v22 = v31;
  v23 = v36;
LABEL_217:
  v14 = v182;
LABEL_218:
  v26 = v23;
  v24 = v21;
  v25 = v22 + 1;
LABEL_219:
  if ((v14 & 1) == 0)
  {
    si_mobile_journal_map_deactivate(v3);
  }

  if (v24 != v26)
  {
    si_sync_ctx_create_with_defer_fd(v5, 0);
    v155 = v154[11];
    if (v155 <= v25)
    {
      v155 = v25;
    }

    v154[11] = v155;
    si_sync_index_delayed2(v154, 0);
  }

LABEL_225:
  v156 = threadData[9 * HIDWORD(v189) + 1] + 320 * v189;
  *(v156 + 312) = v183;
  v157 = *(v156 + 232);
  if (v157)
  {
    v157(*(v156 + 288));
  }

  dropThreadId(HIDWORD(v189), 0, add_explicit + 1);
LABEL_228:
  if (atomic_fetch_add((v4 + 6888), 0xFFFFFFFF) == 1)
  {
    v158 = *__error();
    v159 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v159, OS_LOG_TYPE_DEFAULT, "Playback finished.", buf, 2u);
    }

    *__error() = v158;
  }

LABEL_232:
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v3, 1);
  }

  free(a1);
}

int *si_mobile_journal_map_activate(int *result)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(result + 3);
  if (v1)
  {
    v2 = result;
    if (*(result + 2) == -1)
    {
      *(result + 2) = fd_guarded_mmap(*(result + 1), v1, 0);
      memset(v17, 0, 255);
      v3 = *__error();
      v4 = _SILogForLogForCategory(4);
      v5 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v4, v5))
      {
        v7 = v2[2];
        v6 = v2[3];
        v8 = fd_name(v2[1], v17, 0xFFuLL);
        v9 = 134218754;
        v10 = v2;
        v11 = 2048;
        v12 = v7;
        v13 = 2048;
        v14 = v6;
        v15 = 2080;
        v16 = v8;
        _os_log_impl(&dword_1C278D000, v4, v5, "Activated journal %p %p %lx %s", &v9, 0x2Au);
      }

      result = __error();
      *result = v3;
    }
  }

  return result;
}

void si_mobile_journal_map_deactivate(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 255);
  v2 = *__error();
  v3 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[2];
    v4 = a1[3];
    v6 = fd_name(a1[1], v16, 0xFFuLL);
    v8 = 134218754;
    v9 = a1;
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v4;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "Deactivating journal %p %p %lx %s", &v8, 0x2Au);
  }

  *__error() = v2;
  v7 = a1[2];
  if (v7 != -1)
  {
    fd_guarded_munmap(a1[1], v7, a1[3]);
  }

  a1[2] = -1;
  a1[3] = 0;
}

void logDeleteEventInCoreAnalyticsWithBundleId(const __CFString *a1, int64_t a2, int64_t a3, int64_t a4)
{
  v4 = dictionaryFromIndexingEvent(a1, a2, a3, a4);
  analytics_send_event();

  xpc_release(v4);
}

void si_finish_text_store_deletions(uint64_t a1)
{
  os_unfair_lock_lock(&text_store_docs_lock);
  v2 = *(a1 + 6936);
  if (v2)
  {
    *(a1 + 6936) = 0;
    os_unfair_lock_unlock(&text_store_docs_lock);
    si_text_store_bulk_delete(a1, *v2, *(v2 + 8));
    free(*v2);

    free(v2);
  }

  else
  {

    os_unfair_lock_unlock(&text_store_docs_lock);
  }
}

BOOL si_zombifyItem(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v26 = *MEMORY[0x1E69E9840];
  bzero(v23, 0x1000uLL);
  _SIStackAllocatorCreate(v23, 4096, indexingZone);
  if (!v23[3])
  {
    v23[1] = (v23[0] + 55) & 0xFFFFFFFFFFFFFFF0;
  }

  Mutable = _MDPlistContainerCreateMutable();
  _MDPlistContainerBeginContainer();
  _MDPlistContainerBeginArray();
  _MDPlistContainerBeginDictionary();
  v21 = 0;
  v22 = 0;
  db_get_field(*(v10 + 1192), v6, "_kMDItemExternalID", &v22, &v21);
  _MDPlistContainerAddCString();
  _MDPlistContainerAddCString();
  _MDPlistContainerAddCString();
  CFAbsoluteTimeGetCurrent();
  _MDPlistContainerAddDateValue();
  _MDPlistContainerAddCString();
  _MDPlistContainerAddBooleanValue();
  _MDPlistContainerEndDictionary();
  _MDPlistContainerAddNullValue();
  _MDPlistContainerEndArray();
  _MDPlistContainerEndContainer();
  v19 = 0uLL;
  v20 = 0;
  _MDPlistGetRootPlistObjectFromPlist();
  if (gSILogLevels[0] >= 5)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = v8;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Zombifying oid %lld", buf, 0xCu);
    }

    *__error() = v14;
  }

  _MDPlistArrayGetPlistObjectAtIndex();
  v17 = 0;
  v16 = 0u;
  v12 = processOneCS(v10, -1, v4, 0, 0, buf, &v16, 0, 0, 0, v2, 0, 0, &v18);
  CFRelease(Mutable);
  return v12;
}

void si_enqueue_text_store_doc_for_deletion(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&text_store_docs_lock);
  v4 = *(a1 + 6936);
  if (!v4)
  {
    v4 = malloc_type_calloc(0x18uLL, 1uLL, 0xECB51A32uLL);
    *(a1 + 6936) = v4;
  }

  v5 = v4[1];
  v6 = *v4;
  if (v5 != v4[2])
  {
    goto LABEL_9;
  }

  v7 = 2 * v5;
  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  v9 = reallocf(*v4, 8 * v8);
  *v4 = v9;
  if (v9)
  {
    v6 = v9;
    v4[2] = v8;
    v5 = v4[1];
LABEL_9:
    v4[1] = (v5 + 1);
    v6[v5] = a2;
    if (v5 == 0x7FFF)
    {
      si_text_store_bulk_delete(a1, v6, 0x8000);
      free(v4);
      *(a1 + 6936) = 0;
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v10 = 136315138;
    v11 = "si_enqueue_text_store_doc_for_deletion";
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation failure in %s", &v10, 0xCu);
  }

LABEL_13:
  os_unfair_lock_unlock(&text_store_docs_lock);
}

void cleanupRelatedItemWithBundle(char *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = strchr(a1, 58);
  if (!v12)
  {
    return;
  }

  *v12 = 0;
  v13 = v12 + 1;
  v14 = v12 - a1;
  v15 = a2 - (v12 - a1);
  v30 = 0;
  if (dword_1EBF46ADC >= 5)
  {
    v29 = *__error();
    v26 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v32 = a1;
      v33 = 2080;
      v34 = a1;
      v35 = 2080;
      v36 = v13;
      _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "Deleting related item for %s (%s , %s)", buf, 0x20u);
    }

    *__error() = v29;
  }

  if (_si_get_object_for_identifier_createParentDBO(a5, v15 - 1, v13, v14 + 1, a1, 0, 0, 0, &v30, 0, 0))
  {
    if (dword_1EBF46ADC >= 5)
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = a1;
        v33 = 2080;
        v34 = a1;
        v35 = 2080;
        v36 = v13;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "Failed to find related item for %s (%s , %s)", buf, 0x20u);
      }

      *__error() = v16;
    }

    return;
  }

  v18 = v15 - 2;
  if (dword_1EBF46ADC >= 5)
  {
    v27 = *__error();
    v28 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v32 = a1;
      v33 = 2080;
      v34 = a1;
      v35 = 2080;
      v36 = v13;
      v37 = 2048;
      v38 = v30;
      _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "Found related item for %s (%s , %s), oid: %lld", buf, 0x2Au);
    }

    *__error() = v27;
  }

  buf[0] = 0;
  _si_delete_attributes_inner(a5, v30, 0, a3, a4, a6, buf);
  si_finish_text_store_deletions(a5);
  if (buf[0] == 1)
  {
    notify_post("com.apple.spotlight.SyndicatedContentDeleted");
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v13, v18, 0x8000100u, 0);
  v21 = CFStringCreateWithBytes(v19, a1, v14, 0x8000100u, 0);
  v22 = v21;
  if (v20)
  {
    v23 = v21 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a5 + 2360);
    v25 = *(v24 + 112);
    if (v25 && *(a5 + 2072) == 1)
    {
      v25(*(v24 + 144), 0, v21, v20, 0);
    }

    goto LABEL_21;
  }

  if (v20)
  {
LABEL_21:
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

BOOL objectCanHaveTextCache(int *a1, uint64_t a2, char a3)
{
  if (db_corespotlight_store(a1))
  {
    result = objectHasContent(a1, a2);
    if (!result)
    {
      return result;
    }

    v17 = 0;
    v18 = 0;
    id_for_string = db_get_id_for_string(a1, "public.image");
    v8 = db_get_id_for_string(a1, "com.adobe.pdf");
    v9 = db_get_id_for_string(a1, "com.apple.localized-pdf-bundle");
    if (db_get_field(a1, a2, "kMDItemContentTypeTree", &v18, &v17) != 2 && (*(v18 + 2) & 0x10) != 0)
    {
      v10 = *(v18 + 8);
      if (v10 >= 4)
      {
        if ((a3 & 1) == 0)
        {
          v11 = v10 >> 2;
          v12 = v17;
          while (1)
          {
            v13 = *v12++;
            v14 = v13 & 0x7FFFFFFF;
            v15 = (v13 & 0x7FFFFFFF) == id_for_string || v14 == v8;
            if (v15 || v14 == v9)
            {
              break;
            }

            if (!--v11)
            {
              return 0;
            }
          }
        }

        return 1;
      }
    }
  }

  else if ((*(a2 + 40) & 0x20) == 0 && objectHasContent(a1, a2) && db_get_field(a1, a2, "_kMDItemTextEncodingHint", 0, 0) == 2)
  {
    return 1;
  }

  return 0;
}

uint64_t getDeleteJournalFd(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  result = *(a1 + 2336);
  if (!result)
  {
    v3 = *(a1 + 32);
    if (v3 == -1)
    {
      v10 = __si_assert_copy_extra_661(-1);
      v11 = v10;
      v12 = "";
      if (v10)
      {
        v12 = v10;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4200, "indexFd != -1", v12);
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

    v4 = *(a1 + 2352);
    if (v4 == 0x7FFFFFFF)
    {
LABEL_7:
      v6 = __si_assert_copy_extra_661(-1);
      v7 = v6;
      v8 = "";
      if (v6)
      {
        v8 = v6;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4205, "syncCount < 2147483647", v8);
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

    while (1)
    {
      v27 = 0u;
      memset(v28, 0, sizeof(v28));
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *__str = 0u;
      snprintf(__str, 0xFFuLL, "%s%d", "skg_deleteAttr.", v4);
      v5 = fd_create_protected(v3, __str, 536873482, 3u);
      if (v5)
      {
        ++*(a1 + 2352);
        *(a1 + 2336) = v5;
        SIActivityJournalNewJournal((a1 + 2192), v5);
        _fd_acquire_fd(*(a1 + 2336), __str);
        return *(a1 + 2336);
      }

      if (*__error() != 17)
      {
        return 0;
      }

      v4 = *(a1 + 2352) + 1;
      *(a1 + 2352) = v4;
      if (v4 == 0x7FFFFFFF)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

void derivedAttributesCheck(const __CFDictionary *a1, CFMutableDictionaryRef *a2, CFMutableDictionaryRef *a3, int a4, _BYTE *a5, int *a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  if (initSIAttributes_once[0] != -1)
  {
    dispatch_once(initSIAttributes_once, &__block_literal_global_1475);
  }

  context = a1;
  v15 = *MEMORY[0x1E695E480];
  v16 = MEMORY[0x1E695E9F8];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v32 = Mutable;
  v18 = CFSetCreateMutable(v15, 0, v16);
  theSet = v18;
  v34 = 0;
  CFDictionaryApplyFunction(a1, gatherAttributesToAdd, &context);
  CFSetApplyFunction(theSet, addAttrIfNotPresent, &context);
  if (a8 && v32 && CFSetGetCount(v32))
  {
    v28 = a4;
    v29 = a8;
    if (v34)
    {
      v19 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a3 = v19;
      v20 = v34;
      if (v34)
      {
        v21 = v19;
        v22 = 0;
        do
        {
          if ((v20 & 2) != 0 && v22 <= 9)
          {
            addFieldValueToDict(v21, off_1E81929E8[v22], a6, a7, off_1E8192998[v22]);
          }

          ++v22;
          v23 = v20 > 1;
          v20 >>= 1;
        }

        while (v23);
      }
    }

    if (CFSetContainsValue(v32, @"kMDItemTextContent"))
    {
      addFieldValueToDict(*a3, @"_kMDItemDerivedIsMeTextContentMatch", a6, a7, "_kMDItemDerivedIsMeTextContentMatch");
      addFieldValueToDict(*a3, @"_kMDItemDerivedIsMeRankingOCRTextContentMatch", a6, a7, "_kMDItemDerivedIsMeRankingOCRTextContentMatch");
      addFieldValueToDict(*a3, @"_kMDItemDerivedIsMeRankingTextContentMatch", a6, a7, "_kMDItemDerivedIsMeRankingTextContentMatch");
      CFSetRemoveValue(v32, @"kMDItemTextContent");
    }

    v24 = *a2;
    a8 = v29;
    a4 = v28;
    if (!*a2)
    {
      v24 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a2 = v24;
    }

    addAttributeValuesToDict(a6, &v35, v32, v24);
  }

  if (a8)
  {
    if (a4)
    {
      v25 = copyValueForField(a6, a7, "kMDItemPhotosMediaTypes");
      if (v25)
      {
        v26 = v25;
        v27 = CFGetTypeID(v25);
        if (v27 == CFArrayGetTypeID() && CFArrayGetCount(v26))
        {
          *a5 = 1;
        }

        CFRelease(v26);
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void si_removeRelatedItem(uint64_t a1, uint64_t *a2, CFStringRef theString, const __CFString *a4, uint64_t a5, const char *a6)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a2 || !*a2)
  {
    v47 = __si_assert_copy_extra_661(-1);
    v48 = v47;
    v49 = "";
    if (v47)
    {
      v49 = v47;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 28376, "dbop && *dbop", v49);
LABEL_48:
    free(v48);
    if (__valid_fs(-1))
    {
      v50 = 2989;
    }

    else
    {
      v50 = 3072;
    }

    *v50 = -559038737;
    abort();
  }

  memset(v69, 0, sizeof(v69));
  v60 = 0;
  v59 = 0;
  if (a5)
  {
    v11 = *MEMORY[0x1E695E480];
    Length = CFStringGetLength(theString);
    v13 = CFStringGetLength(a4);
    MutableCopy = CFStringCreateMutableCopy(v11, Length + v13 + 1, theString);
    CFStringAppend(MutableCopy, @":");
    CFStringAppend(MutableCopy, a4);
    v15 = fasterUTF8String(a4, &v59, v69, 256, &v60);
    CFRelease(MutableCopy);
    v16 = "_kMDItemRelatedObjectsWithBundle";
  }

  else
  {
    v15 = fasterUTF8String(a4, &v59, v69, 256, &v60);
    v16 = "_kMDItemRelatedObjects";
  }

  v17 = v59;
  __s1 = 0;
  v58 = 0;
  field = db_get_field(*(a1 + 1192), *a2, v16, &v58, &__s1);
  if (field)
  {
    v19 = field;
    if (field == 2)
    {
      goto LABEL_12;
    }

    v20 = a6;
    v21 = theString;
    v22 = *__error();
    v23 = _SILogForLogForCategory(4);
    v24 = dword_1EBF46ADC < 3;
    if (!os_log_type_enabled(v23, (dword_1EBF46ADC < 3)))
    {
      goto LABEL_11;
    }

    *buf = 138413058;
    v62 = v20;
    v63 = 2112;
    v64 = v21;
    v65 = 2112;
    v66 = a4;
    v67 = 1024;
    LODWORD(v68) = v19;
    v25 = "*warn* Failed to fetch the dbo for relatedIdentifier:%@, bundleID:%@, identifier:%@, rc:%d";
    v26 = v23;
    v27 = v24;
    v28 = 38;
    goto LABEL_10;
  }

  v29 = *(v58 + 2);
  if ((v29 & 0x90) != 0)
  {
    v51 = __si_assert_copy_extra_661(-1);
    v48 = v51;
    v52 = "";
    if (v51)
    {
      v52 = v51;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 28410, "(fieldFlags & (DB_FIELD_UNIQUED_VALS|DB_FIELD_LOCALIZED_STR)) == 0", v52);
    goto LABEL_48;
  }

  v55 = theString;
  v56 = a1;
  v54 = a6;
  v30 = *(v58 + 8);
  v31 = __s1;
  if ((v29 & 0x20) == 0)
  {
    v32 = strnlen(__s1, *(v58 + 8));
    if (v32 + 1 < v30)
    {
      v33 = v32 + 1;
    }

    else
    {
      v33 = v30;
    }

    if (v17 != v33 || memcmp(v31, v15, v17))
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

  if (!v30)
  {
    goto LABEL_12;
  }

  v34 = &__s1[v30];
  v35 = __s1;
  while (1)
  {
    v36 = v34 - v35;
    v37 = strnlen(v35, v34 - v35);
    if (v37 + 1 < v34 - v35)
    {
      v36 = v37 + 1;
    }

    if (!v36)
    {
      v43 = __si_assert_copy_extra_661(-1);
      v44 = v43;
      v45 = "";
      if (v43)
      {
        v45 = v43;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 28421, "size", v45);
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

    if (v17 == v36 && !memcmp(v35, v15, v17))
    {
      break;
    }

    v35 += v36;
    if (v35 >= v34)
    {
      goto LABEL_12;
    }
  }

  if (v17 >= v30)
  {
LABEL_37:
    v40 = v56;
    db_delete_field(*(v56 + 1192), a2, v16);
    goto LABEL_38;
  }

  if (v30 >= v17)
  {
    v38 = v30 - v17;
  }

  else
  {
    v38 = 0;
  }

  v53 = v38;
  v39 = malloc_type_malloc(v38, 0xE5B23743uLL);
  memcpy(v39, v31, v35 - v31);
  memcpy(&v39[v35 - v31], &v35[v17], v34 - &v35[v17]);
  v40 = v56;
  db_add_field(*(v56 + 1192), a2, 1u, v16, 0, 0x2120u, 11, v39, v41, v53);
  free(v39);
LABEL_38:
  db_update_obj(*(v40 + 1192), *a2, 3);
  if (dword_1EBF46ADC >= 5)
  {
    v22 = *__error();
    v42 = _SILogForLogForCategory(4);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315906;
    v62 = "_kMDItemRelatedObjects";
    v63 = 2112;
    v64 = v54;
    v65 = 2112;
    v66 = v55;
    v67 = 2112;
    v68 = a4;
    v25 = "Updated %s field for relatedIdentifier:%@, bundleID:%@, identifier:%@";
    v26 = v42;
    v27 = OS_LOG_TYPE_DEFAULT;
    v28 = 42;
LABEL_10:
    _os_log_impl(&dword_1C278D000, v26, v27, v25, buf, v28);
LABEL_11:
    *__error() = v22;
  }

LABEL_12:
  if (v60 == 1)
  {
    free(v15);
  }
}

uint64_t SISetProperty(uint64_t result, const void *a2, const void *a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 1192))
    {
      if (CFEqual(@"database.shutdowntime", a2))
      {
        si_scheduler_boost_and_forget(*(v3 + 864));
        si_scheduler_boost_and_forget(*(v3 + 944));
      }

      return si_set_property(v3, a2, a3, 0, 0);
    }
  }

  return result;
}

void _SIConsistencyCheck(uint64_t a1)
{
  if (a1 && *(a1 + 1192))
  {
    v2 = *(a1 + 1064);
    if (v2)
    {
      si_enqueue_work_with_qos(v2, 9, si_consistencyCheck, a1);
    }
  }
}

void __processOneCS_block_invoke_1444(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  if (a3 == 4)
  {
    v5 = 0;
    v6 = *MEMORY[0x1E695E480];
    do
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        *(*(*(a1 + 32) + 8) + 24) |= 1 << *(*(*(a1 + 40) + 8) + 24);
        v8 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 24), v8);
        CFRelease(v8);
      }

      v9 = *(a1 + 40);
      if (*(a1 + 80) == 1 && ((*(a1 + 64) >> *(*(v9 + 8) + 24)) & 1) != 0)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        v9 = *(a1 + 40);
      }

      ++*(*(v9 + 8) + 24);
      ++v5;
    }

    while (v5 != 4);
  }

  else if (*(a1 + 80) == 1)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = 4;
    do
    {
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 24);
      if (((1 << v13) & *(a1 + 64)) != 0)
      {
        *(*(*(a1 + 32) + 8) + 24) |= 1 << v13;
        valuePtr = 0;
        v14 = *(a1 + 72);
        v15 = *(*(a1 + 56) + 8);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 + 1;
        v17 = CFArrayGetValueAtIndex(v14, v16);
        CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr);
        v18 = CFNumberCreate(v10, kCFNumberSInt64Type, &valuePtr);
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 24), v18);
        CFRelease(v18);
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 24);
      }

      *(v12 + 24) = v13 + 1;
      --v11;
    }

    while (v11);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) += 4;
  }
}

CFMutableStringRef safeCFStringCopy(const __CFString *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Length = CFStringGetLength(a1);

  return CFStringCreateMutableCopy(v2, Length, a1);
}

void si_consistencyCheck(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = *(a1 + 2368);
    if (v3 && CFArrayGetCount(v3))
    {
      v4 = *(a1 + 1064);

      si_enqueue_work_with_qos(v4, 9, _si_consistencyCheckAfterCompact, a1);
    }

    else
    {

      _si_consistencyCheck(a1);
    }
  }
}

void _si_consistencyCheck(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  bzero(v33, 0x400uLL);
  v2 = fcntl(*(a1 + 32), 50, v33);
  if (v33[0])
  {
    v3 = v2 < 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v33;
  }

  v21 = 0;
  v22 = 0;
  v19 = a1;
  v20 = 0;
  v18 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 18136);
  v5 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 18137);
  v6 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 18138);
  atomic_fetch_add((a1 + 1452), 1u);
  v7 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
  atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
  v8 = *__error();
  v9 = _SILogForLogForCategory(7);
  v10 = dword_1EBF46AE8 < 3;
  if (os_log_type_enabled(v9, (dword_1EBF46AE8 < 3)))
  {
    *buf = 136315138;
    v24 = v4;
    _os_log_impl(&dword_1C278D000, v9, v10, "*warn* Starting internal consistency check for %s", buf, 0xCu);
  }

  *__error() = v8;
  *buf = 0;
  v11 = 0;
  if (fd_setDir(*(a1 + 32), buf))
  {
    disableProcMon();
    v12 = db_apply(*(a1 + 1192), check_consistency, &v19);
    enableProcMon();
    v13 = *buf;
    MEMORY[0x1C6921200](*buf);
    if ((v13 & 0x80000000) == 0)
    {
      close(v13);
    }

    v11 = v12 == 0;
  }

  v14 = *__error();
  v15 = _SILogForLogForCategory(7);
  v16 = dword_1EBF46AE8 < 3;
  if (os_log_type_enabled(v15, (dword_1EBF46AE8 < 3)))
  {
    *buf = 136316162;
    v24 = v4;
    v25 = 1024;
    v26 = v20;
    v27 = 1024;
    v28 = HIDWORD(v21);
    v29 = 1024;
    v30 = v21 + HIDWORD(v20);
    v31 = 1024;
    v32 = v22;
    _os_log_impl(&dword_1C278D000, v15, v16, "*warn* Finished internal consistency check for %s. Checks: %d Missing:%d Inconsistent:%d Missing deletes:%d", buf, 0x24u);
  }

  *__error() = v14;
  si_scheduler_resume(*(a1 + 864), v6, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18153);
  si_scheduler_resume(*(a1 + 872), v7, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18154);
  si_scheduler_resume(*(a1 + 872), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18155);
  si_scheduler_resume(*(a1 + 864), v18, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18156);
  if (v11)
  {
    SISetProperty(a1, @"kSIRepairedIndex", *MEMORY[0x1E695E4D0]);
    v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], sysVersionCStr, 0x8000100u);
    SISetProperty(a1, @"kSIConsistencyCheck", v17);
    CFRelease(v17);
  }
}

uint64_t check_consistency(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = db_corespotlight_store(a1);
  ++*(a3 + 8);
  if (*(v5 + 2432))
  {
    return 0;
  }

  v8 = a2[4];
  if (v8 + 1 < 2)
  {
    return 1;
  }

  v10 = v6;
  bzero(v54, 0x400uLL);
  v11 = si_indexForDocId(v5, v8);
  if (v11)
  {
    v12 = _CIGetOIDForDocId(v11, v8, 0);
    if (v12 == *a2)
    {
      return 1;
    }

    v13 = v12;
    if (v12)
    {
      if ((v10 & 1) == 0)
      {
        v14 = (*(*(v5 + 1416) + 40))();
        if (v14)
        {
          v15 = v14;
          v16 = *__error();
          v17 = _SILogForLogForCategory(7);
          v18 = 2 * (dword_1EBF46AE8 < 4);
          if (os_log_type_enabled(v17, v18))
          {
            v19 = *a2;
            v20 = a2[4];
            v46 = 134218754;
            v47 = v19;
            v48 = 2048;
            v49 = v13;
            v50 = 2048;
            v51 = v20;
            v52 = 2080;
            v53 = v15;
            _os_log_impl(&dword_1C278D000, v17, v18, "Index/sdb inconsistency for (sdb)oid %lld; index has oid %lld. doc id: %lld. path: %s", &v46, 0x2Au);
          }

          *__error() = v16;
          v21 = *a2;
          v7 = 1;
          (*(*(v5 + 2360) + 16))(*(*(v5 + 2360) + 144), v21, 1, 0);
          ++*(a3 + 12);
          return v7;
        }
      }

      ++*(a3 + 24);
      if (dword_1EBF46AE8 < 5)
      {
LABEL_23:
        _SIDeleteAttributes(v5, *a2);
        return 1;
      }

      v30 = *__error();
      v31 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *a2;
        v46 = 134217984;
        v47 = v42;
        v33 = "delete attributes consistancy 2 oid: %lld";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if ((v10 & 1) != 0 || (v34 = (*(*(v5 + 1416) + 40))()) == 0)
    {
      if (dword_1EBF46AE8 >= 5)
      {
        v43 = *__error();
        v44 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *a2;
          v46 = 134217984;
          v47 = v45;
          _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "delete attributes consistancy oid: %lld", &v46, 0xCu);
        }

        *__error() = v43;
      }

      _SIDeleteAttributes(v5, *a2);
      ++*(a3 + 24);
      return 1;
    }

    v35 = v34;
    v36 = *__error();
    v37 = _SILogForLogForCategory(7);
    v38 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *a2;
      v40 = a2[4];
      v46 = 134218754;
      v47 = v39;
      v48 = 2048;
      v49 = 0;
      v50 = 2048;
      v51 = v40;
      v52 = 2080;
      v53 = v35;
      _os_log_impl(&dword_1C278D000, v37, v38, "Index/sdb inconsistency for (sdb)oid %lld; index has oid %lld. doc id: %lld. path: %s", &v46, 0x2Au);
    }

    *__error() = v36;
    ++*(a3 + 20);
    v41 = *a2;
    v7 = 1;
    (*(*(v5 + 2360) + 16))(*(*(v5 + 2360) + 144), v41, 1, 0);
  }

  else
  {
    if ((v10 & 1) != 0 || (v22 = (*(*(v5 + 1416) + 40))()) == 0)
    {
      ++*(a3 + 24);
      if (dword_1EBF46AE8 < 5)
      {
        goto LABEL_23;
      }

      v30 = *__error();
      v31 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *a2;
        v46 = 134217984;
        v47 = v32;
        v33 = "delete attributes consistancy 3 oid: %lld";
LABEL_33:
        _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, v33, &v46, 0xCu);
      }

LABEL_34:
      *__error() = v30;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = *__error();
    v25 = _SILogForLogForCategory(7);
    v26 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *a2;
      v28 = a2[4];
      v46 = 134218498;
      v47 = v27;
      v48 = 2048;
      v49 = v28;
      v50 = 2080;
      v51 = v23;
      _os_log_impl(&dword_1C278D000, v25, v26, "Index/sdb inconsistency; wrong doc id for oid %lld; has %lld. path:%s", &v46, 0x20u);
    }

    *__error() = v24;
    v29 = *a2;
    v7 = 1;
    (*(*(v5 + 2360) + 16))(*(*(v5 + 2360) + 144), v29, 1, 0);
    ++*(a3 + 16);
  }

  return v7;
}

void _SIDeleteAttributes(uint64_t result, uint64_t a2)
{
  if (a2 && *(result + 1048))
  {
    v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040BFFD03D2uLL);
    v4[3] = a2;
    *v4 = result;
    *(v4 + 12) = 0;
    v5 = *(result + 1048);

    si_enqueue_barrier(v5, si_delete_attributes, v4);
  }
}

void si_delete_attributes(uint64_t *a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    v11 = 0;
    if (fd_setDir(*(v3 + 32), &v11))
    {
      v10 = 0;
      if (*(v3 + 2072))
      {
        v4 = &v10;
      }

      else
      {
        v4 = 0;
      }

      v5 = a1[3];
      if (*(a1 + 12))
      {
        v6 = *(v3 + 288);
        if (!v6)
        {
          os_unfair_lock_lock((v3 + 280));
          if (!*(v3 + 288))
          {
            v7 = *(v3 + 296);
            if (v7)
            {
              *(v3 + 288) = v7;
              *(v3 + 296) = 0;
            }

            else
            {
              Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
              __dmb(0xBu);
              *(v3 + 288) = Mutable;
            }
          }

          os_unfair_lock_unlock((v3 + 280));
          v6 = *(v3 + 288);
        }

        _si_delete_attributes_inner(v3, v5, 0, 0, 0, v6, v4);
        si_finish_text_store_deletions(v3);
        si_indexDeleteDeferredItemsIfReady(v3);
      }

      else
      {
        _si_delete_attributes_inner(v3, a1[3], 0, 0, 0, 0, v4);
        si_finish_text_store_deletions(v3);
      }

      if (v10 == 1)
      {
        notify_post("com.apple.spotlight.SyndicatedContentDeleted");
      }

      v9 = v11;
      MEMORY[0x1C6921200](v11);
      if ((v9 & 0x80000000) == 0)
      {
        close(v9);
      }
    }
  }

  free(a1);
}

void _si_consistencyCheckAfterCompact(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *(a1 + 2368);
    if (v3 && CFArrayGetCount(v3))
    {
      bzero(v13, 0x400uLL);
      v4 = fcntl(*(a1 + 32), 50, v13);
      v5 = v13[0];
      v6 = *__error();
      v7 = _SILogForLogForCategory(7);
      v8 = dword_1EBF46AE8 < 3;
      if (os_log_type_enabled(v7, (dword_1EBF46AE8 < 3)))
      {
        if (v5)
        {
          v9 = v4 < 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = v13;
        }

        *buf = 136315138;
        v12 = v10;
        _os_log_impl(&dword_1C278D000, v7, v8, "*warn* Skipping consistency check for %s", buf, 0xCu);
      }

      *__error() = v6;
    }

    else
    {

      _si_consistencyCheck(a1);
    }
  }
}

CFStringRef CopyUserTag(const __CFString *a1)
{
  v2 = CFStringFind(a1, @"\n", 0);
  if (v2.length)
  {
    v4.length = v2.location;
    v3 = *MEMORY[0x1E695E480];
    v4.location = 0;

    return CFStringCreateWithSubstring(v3, a1, v4);
  }

  else
  {
    if (a1)
    {
      CFRetain(a1);
    }

    return a1;
  }
}

void __postPreprocess_block_invoke_2(uint64_t a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6.length = CFArrayGetCount(a2);
    v6.location = 0;

    CFArrayAppendArray(v5, a2, v6);
  }

  else
  {
    v7 = CFStringGetTypeID();
    if (v7 == CFGetTypeID(a2))
    {
      v8 = *(*(*(a1 + 32) + 8) + 24);

      CFArrayAppendValue(v8, a2);
    }
  }
}

CFArrayRef __postPreprocess_block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v2[0] = @"MDSystemFile";
  result = CFArrayCreate(v0, v2, 1, MEMORY[0x1E695E9C0]);
  postPreprocess_arrSystemFile = result;
  return result;
}

uint64_t mePreprocessAlias(uint64_t result)
{
  if (*(result + 26))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *(result + 16);
  v4 = *result;
  v5 = *(result + 24);
  v6 = *(*result + 288);
  if (v3 != CFStringGetTypeID())
  {
    result = CFArrayGetTypeID();
    if (v3 != result)
    {
      return result;
    }

    result = CFArrayGetCount(v2);
    if (result < 1)
    {
      return result;
    }

    v7 = result;
    v8 = 0;
    while (1)
    {
      result = CFArrayGetValueAtIndex(v2, v8);
      if (result)
      {
        v9 = result;
        v10 = CFGetTypeID(result);
        result = CFStringGetTypeID();
        if (v10 == result)
        {
          result = _icu_search_match_with_ctx(v9, v6);
          if (result)
          {
            break;
          }
        }
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v12 = *MEMORY[0x1E695E4D0];
        v13 = 9;
        goto LABEL_37;
      }

      if (v5 == 2)
      {
        v12 = *MEMORY[0x1E695E4D0];
        v13 = 10;
        goto LABEL_37;
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v12 = *MEMORY[0x1E695E4D0];
          v4[11] = *MEMORY[0x1E695E4D0];
          if (*(v1 + 25))
          {
            v13 = 12;
            goto LABEL_37;
          }

          break;
        case 6:
          v12 = *MEMORY[0x1E695E4D0];
          v13 = 15;
          goto LABEL_37;
        case 7:
          v12 = *MEMORY[0x1E695E4D0];
          v13 = 17;
LABEL_37:
          v4[v13] = v12;
          break;
      }
    }

    *(v1 + 26) = 1;
    return result;
  }

  result = _icu_search_match_with_ctx(v2, v6);
  if (result)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v4[9] = *MEMORY[0x1E695E4D0];
      }

      else if (v5 == 2)
      {
        v4[10] = *MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v11 = *MEMORY[0x1E695E4D0];
          v4[11] = *MEMORY[0x1E695E4D0];
          if (*(v1 + 25) == 1)
          {
            v4[12] = v11;
          }

          break;
        case 6:
          v4[15] = *MEMORY[0x1E695E4D0];
          break;
        case 7:
          v4[17] = *MEMORY[0x1E695E4D0];
          break;
      }
    }
  }

  return result;
}

uint64_t mePreprocessNamePrefix(uint64_t result)
{
  if (*(result + 26))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *(result + 16);
  v4 = *result;
  v5 = *(result + 24);
  v6 = *(*result + 280);
  if (v3 != CFStringGetTypeID())
  {
    result = CFArrayGetTypeID();
    if (v3 != result)
    {
      return result;
    }

    result = CFArrayGetCount(v2);
    if (result < 1)
    {
      return result;
    }

    v7 = result;
    v8 = 0;
    while (1)
    {
      result = CFArrayGetValueAtIndex(v2, v8);
      if (result)
      {
        v9 = result;
        v10 = CFGetTypeID(result);
        result = CFStringGetTypeID();
        if (v10 == result)
        {
          result = _icu_search_match_with_ctx(v9, v6);
          if (result)
          {
            break;
          }
        }
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    if (v5 == 1)
    {
      v11 = 72;
    }

    else
    {
      if (v5 != 2)
      {
LABEL_22:
        *(v1 + 26) = 1;
        return result;
      }

      v11 = 80;
    }

    *(v4 + v11) = *MEMORY[0x1E695E4D0];
    goto LABEL_22;
  }

  result = _icu_search_match_with_ctx(v2, v6);
  if (result)
  {
    if (v5 == 2)
    {
      *(v4 + 80) = *MEMORY[0x1E695E4D0];
    }

    else if (v5 == 1)
    {
      *(v4 + 72) = *MEMORY[0x1E695E4D0];
    }
  }

  return result;
}

const __CFDictionary *mePreprocessNameTokenAnd(const __CFDictionary *key, uint64_t a2)
{
  if ((*(a2 + 26) & 1) == 0)
  {
    v3 = key;
    if (key)
    {
      v4 = *a2;
      key = *(*a2 + 264);
      if (key)
      {
        v5 = *(a2 + 8);
        v6 = *(a2 + 16);
        v7 = *(a2 + 24);
        key = CFDictionaryGetValue(key, v3);
        if (key)
        {
          if (v5)
          {
            v8 = *key;
            key = CFStringGetTypeID();
            if (v6 == key)
            {
              key = _icu_search_match_with_ctx(v5, v8);
              if (key)
              {
                if (v7 > 4)
                {
                  switch(v7)
                  {
                    case 5:
                      v4[14] = *MEMORY[0x1E695E4D0];
                      break;
                    case 6:
                      v4[15] = *MEMORY[0x1E695E4D0];
                      break;
                    case 7:
                      v4[17] = *MEMORY[0x1E695E4D0];
                      break;
                  }
                }

                else
                {
                  switch(v7)
                  {
                    case 1:
                      v4[9] = *MEMORY[0x1E695E4D0];
                      break;
                    case 2:
                      v4[10] = *MEMORY[0x1E695E4D0];
                      break;
                    case 3:
                      v9 = *MEMORY[0x1E695E4D0];
                      v4[11] = *MEMORY[0x1E695E4D0];
                      if (*(a2 + 25) == 1)
                      {
                        v4[12] = v9;
                      }

                      break;
                  }
                }
              }

              else
              {
                if ((v7 - 5) <= 2)
                {
                  *(v4 + qword_1C2BFB210[(v7 - 5)]) = *MEMORY[0x1E695E4C0];
                }

                *(a2 + 26) = 1;
              }
            }
          }
        }
      }
    }
  }

  return key;
}

uint64_t mePreprocessNameToken(uint64_t key, uint64_t a2)
{
  if (*(a2 + 26))
  {
    return key;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *a2;
  v6 = *(a2 + 24);
  key = CFDictionaryGetValue(*(*a2 + 264), key);
  if (!v3)
  {
    return key;
  }

  v7 = *key;
  if (v4 != CFStringGetTypeID())
  {
    key = CFArrayGetTypeID();
    if (v4 != key)
    {
      return key;
    }

    key = CFArrayGetCount(v3);
    if (key < 1)
    {
      return key;
    }

    v9 = key;
    v10 = 0;
    while (1)
    {
      key = CFArrayGetValueAtIndex(v3, v10);
      if (key)
      {
        v11 = key;
        v12 = CFGetTypeID(key);
        key = CFStringGetTypeID();
        if (v12 == key)
        {
          break;
        }
      }

LABEL_27:
      if (++v10 >= v9)
      {
        return key;
      }
    }

    key = _icu_search_match_with_ctx(v11, v7);
    if (key)
    {
      if (v6 <= 7)
      {
        switch(v6)
        {
          case 1:
            goto LABEL_35;
          case 2:
            goto LABEL_36;
          case 3:
            goto LABEL_9;
        }

        goto LABEL_26;
      }

      v13 = v5 + 21;
      if (v6 != 9)
      {
        if (v6 != 10)
        {
          if (v6 == 8)
          {
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v13 = v5 + 20;
      }

      v14 = *(a2 + 40);
      *(a2 + 40) = v14 + 1;
      *v13 |= 1 << v14;
    }

LABEL_26:
    if (*(a2 + 26))
    {
      return key;
    }

    goto LABEL_27;
  }

  key = _icu_search_match_with_ctx(v3, v7);
  if (!key)
  {
    return key;
  }

  if (v6 <= 7)
  {
    switch(v6)
    {
      case 1:
LABEL_35:
        v5[9] = *MEMORY[0x1E695E4D0];
        break;
      case 2:
LABEL_36:
        v5[10] = *MEMORY[0x1E695E4D0];
        break;
      case 3:
LABEL_9:
        v8 = *MEMORY[0x1E695E4D0];
        v5[11] = *MEMORY[0x1E695E4D0];
        if (*(a2 + 25) == 1)
        {
          v5[12] = v8;
        }

        break;
      default:
        return key;
    }

    goto LABEL_39;
  }

  switch(v6)
  {
    case 8:
LABEL_37:
      v16 = *MEMORY[0x1E695E4D0];
      v5[18] = *MEMORY[0x1E695E4D0];
      if (*(a2 + 25) == 1)
      {
        v5[19] = v16;
      }

LABEL_39:
      *(a2 + 26) = 1;
      return key;
    case 9:
      v17 = *(a2 + 40);
      *(a2 + 40) = v17 + 1;
      v5[21] |= 1 << v17;
      break;
    case 10:
      v15 = *(a2 + 40);
      *(a2 + 40) = v15 + 1;
      v5[20] |= 1 << v15;
      break;
  }

  return key;
}

CFSetRef __preProcess_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1E8192360;
  v1[1] = *off_1E8192370;
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 4, MEMORY[0x1E695E9F8]);
  preProcess_localizeFieldNames = result;
  return result;
}

uint64_t __isAppleInternalInstall_block_invoke()
{
  result = MGCopyAnswer();
  if (result && (v1 = result, v2 = CFGetTypeID(result), result = CFStringGetTypeID(), v2 == result))
  {
    result = CFEqual(v1, @"Internal");
    v3 = result != 0;
  }

  else
  {
    v3 = 0;
  }

  isAppleInternalInstall_isInternalInstall = v3;
  return result;
}

void addFieldValueToDict(__CFDictionary *a1, const void *a2, int *a3, uint64_t a4, char *a5)
{
  v7 = copyValueForField(a3, a4, a5);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(a1, a2, v7);

    CFRelease(v8);
  }
}

void addAttributeValuesToDict(int *a1, uint64_t *a2, CFSetRef theSet, __CFDictionary *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(theSet);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  bzero(v11, v10);
  CFSetGetValues(theSet, v11);
  if (Count >= 1)
  {
    do
    {
      v12 = *v11;
      v11 += 8;
      bzero(v14, 0x400uLL);
      CFStringGetLength(v12);
      CFStringGetCString(v12, v14, 1024, 0x8000100u);
      addFieldValueToDict(a4, v12, a1, *a2, v14);
      --Count;
    }

    while (Count);
  }
}

CFDictionaryRef copyValueForField(int *a1, uint64_t a2, char *a3)
{
  *v6 = 0;
  v7 = 0;
  if (db_get_field(a1, a2, a3, v6, &v7))
  {
    return 0;
  }

  if (!*v6)
  {
    return 0;
  }

  result = _decodeSDBField(a1, *v6, (*v6 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480], v4);
  if (!result)
  {
    return 0;
  }

  return result;
}

void addAttrIfNotPresent(void *value, const __CFDictionary **a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (!CFSetContainsValue(v3, value) && !CFDictionaryContainsKey(v4, value))
  {

    CFSetAddValue(v3, value);
  }
}

CFSetRef __initSIAttributes_block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  v22[0] = xmmword_1E8192148;
  v22[1] = *&off_1E8192158;
  v22[2] = xmmword_1E8192168;
  v22[3] = *&off_1E8192178;
  v20[4] = xmmword_1E81921C8;
  v20[5] = *&off_1E81921D8;
  v21 = @"kMDItemAlternateNames";
  v20[0] = xmmword_1E8192188;
  v20[1] = *&off_1E8192198;
  v20[2] = xmmword_1E81921A8;
  v20[3] = *&off_1E81921B8;
  v18[0] = xmmword_1E81921F0;
  v18[1] = *&off_1E8192200;
  v18[2] = xmmword_1E8192210;
  v19 = @"kMDItemUserSharedReceivedSenderHandle";
  v17[2] = xmmword_1E8192248;
  v17[3] = *&off_1E8192258;
  v17[4] = xmmword_1E8192268;
  v17[0] = xmmword_1E8192228;
  v17[1] = *&off_1E8192238;
  v15[0] = xmmword_1E8192278;
  v15[1] = *&off_1E8192288;
  v15[2] = xmmword_1E8192298;
  v16 = @"kMDItemAppEntityTitle";
  v13 = xmmword_1E81922B0;
  v14 = xmmword_1E81922B0;
  v11 = @"kMDItemCardUnderName";
  v12 = @"kMDItemTextContent";
  v10[4] = xmmword_1E8192300;
  v10[5] = *&off_1E8192310;
  v10[6] = xmmword_1E8192320;
  v10[7] = *off_1E8192330;
  v10[0] = xmmword_1E81922C0;
  v10[1] = *&off_1E81922D0;
  v10[2] = xmmword_1E81922E0;
  v10[3] = *&off_1E81922F0;
  v0 = v9;
  v9[0] = 1;
  v9[3] = 10;
  v9[6] = 2;
  v9[9] = 9;
  v9[12] = 3;
  v9[15] = 4;
  v9[18] = 5;
  v9[21] = 6;
  v7 = v22;
  v8 = 8;
  v9[1] = v20;
  v9[2] = 13;
  v9[4] = v18;
  v9[5] = 7;
  v9[7] = v17;
  v9[8] = 10;
  v9[10] = v15;
  v9[11] = 7;
  v9[13] = &v14;
  v9[14] = 2;
  v9[16] = &v13;
  v9[17] = 2;
  v9[19] = &v12;
  v9[20] = 1;
  v9[22] = &v11;
  v9[23] = 1;
  v9[24] = 7;
  v9[25] = v10;
  v9[26] = 16;
  v9[27] = 8;
  sSIAttributesToIncludeAndRolesCount = 1;
  v1 = 0;
  sIncludeAttributesAndRoles = malloc_type_calloc(0xAuLL, 0x10uLL, 0x1060040E5A1EACFuLL);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9F8];
  do
  {
    result = CFSetCreate(v2, *(v0 - 2), *(v0 - 1), v3);
    v5 = sIncludeAttributesAndRoles + v1;
    *v5 = result;
    v6 = *v0;
    v0 += 3;
    *(v5 + 8) = v6;
    v1 += 16;
  }

  while (v1 != 160);
  return result;
}

void __setCSAttributes2_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 32), 0x40000000, add_explicit + 1);
  v55 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v53 = v5;
  v54 = HIDWORD(v3);
  v52 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v51 = v55;
  v50 = v54;
  v49 = v53;
  v48 = v52;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v48);
    dropThreadId(v51, 1, add_explicit + 1);
    CICleanUpReset(v51, v49);
  }

  else
  {
    v10 = *(a1 + 84);
    v33 = v7;
    if (v10)
    {
      v11 = 1;
    }

    else if (gCPUCount > 0xF)
    {
      v11 = 16;
    }

    else if (gCPUCount <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = gCPUCount;
    }

    v12 = v11;
    *buf = 0;
    v45 = buf;
    v9.n128_u64[0] = 0x2000000000;
    v13 = *(a1 + 80);
    if (v12 >= v13)
    {
      v14 = *(a1 + 80);
    }

    else
    {
      v14 = v12;
    }

    v46 = 0x2000000000;
    v47 = 0;
    v34 = add_explicit;
    if (v14 == 1)
    {
      MEMORY[0x1EEE9AC00](v9);
      bzero(v30, 0x1000uLL);
      _SIStackAllocatorCreate(v30, 4096, indexingZone);
      if (*(a1 + 80))
      {
        v16 = 0;
        v17 = 0x1EBF46000uLL;
        *&v15 = 138412546;
        v32 = v15;
        do
        {
          if (!v30[3])
          {
            v30[1] = (v30[0] + 55) & 0xFFFFFFFFFFFFFFF0;
          }

          v42 = 0uLL;
          v43 = 0;
          *v56 = *(a1 + 40);
          *&v56[16] = *(a1 + 56);
          _MDPlistArrayGetPlistObjectAtIndex();
          *v56 = v42;
          *&v56[16] = v43;
          v18 = _MDPlistContainerCopyObject();
          if (v18)
          {
            v19 = v18;
            if (*(v17 + 2780) >= 5)
            {
              v31 = *__error();
              v22 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = *(a1 + 64);
                *v56 = v32;
                *&v56[4] = v23;
                *&v56[12] = 2112;
                *&v56[14] = v19;
                _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "Index delete bundleID:%@, identifier:%@", v56, 0x16u);
              }

              *__error() = v31;
              v17 = 0x1EBF46000;
            }

            *v56 = 0;
            if (!si_get_object_for_identifier_createParentDBO(*(a1 + 72), *(a1 + 64), v19, 0, 0, v56, 0, 0))
            {
              v20 = *(a1 + 72);
              _si_delete_attributes_inner(v20, *v56, *(a1 + 85), 0, 0, 0, v45 + 24);
              v21 = v20;
              v17 = 0x1EBF46000;
              si_finish_text_store_deletions(v21);
            }

            CFRelease(v19);
          }

          ++v16;
        }

        while (v16 < *(a1 + 80));
      }
    }

    else
    {
      v24 = v13;
      *&v42 = 0;
      v25 = *(a1 + 32);
      if (v24)
      {
        v26 = *(*v25 + 32);
      }

      else
      {
        v26 = -1;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __setCSAttributes2_block_invoke_1908;
      block[3] = &unk_1E8192460;
      block[6] = &v42;
      v39 = v26;
      v40 = v24;
      v36 = *(a1 + 40);
      v37 = *(a1 + 56);
      v38 = *(a1 + 64);
      v41 = *(a1 + 85);
      block[5] = v25;
      block[4] = buf;
      dispatch_apply(v14, 0, block);
    }

    if (v45[24] == 1 && CFEqual(*(a1 + 64), @"com.apple.MobileSMS"))
    {
      notify_post("com.apple.spotlight.SyndicatedContentDeleted");
    }

    v27 = threadData[9 * v51 + 1] + 320 * v50;
    *(v27 + 312) = v33;
    v28 = *(v27 + 232);
    v29 = v34;
    if (v28)
    {
      v28(*(v27 + 288));
    }

    dropThreadId(v51, 0, v29 + 1);
    _Block_object_dispose(buf, 8);
  }
}

void __setCSAttributes2_block_invoke_1911(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 136);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __setCSAttributes2_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_1917;
  v17 = *(a1 + 140);
  v16 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v7 = vextq_s8(v3, v3, 8uLL);
  v8 = v4;
  v9 = *(a1 + 72);
  v18 = *(a1 + 142);
  v10 = *(a1 + 80);
  v5 = *(a1 + 104);
  v11 = *(a1 + 96);
  v12 = v1;
  v13 = v5;
  v14 = *(a1 + 112);
  v15 = *(a1 + 128);
  v19 = *(a1 + 143);
  v20 = *(a1 + 159);
  si_indexingWatchdogPerform(v1, v3.i64[0], v2, 6u, v6);
}

BOOL getCSInfoAtIndex(__int128 *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  _MDPlistArrayGetPlistObjectAtIndex();
  if (_MDPlistGetPlistObjectType() == 246)
  {
    _MDPlistDataGetBytePtr();
    _MDPlistGetRootPlistObjectFromBytes();
  }

  if (_MDPlistGetPlistObjectType() != 240)
  {
    return 0;
  }

  if (_MDPlistArrayGetCount() - 5 < 0xFFFFFFFE)
  {
    return 0;
  }

  _MDPlistArrayGetPlistObjectAtIndex();
  IntValue = _MDPlistNumberGetIntValue();
  if ((IntValue & 2) != 0)
  {
    return 0;
  }

  _MDPlistArrayGetPlistObjectAtIndex();
  v9 = _MDPlistGetPlistObjectType() == 241;
  result = v9;
  if (v9)
  {
    *a3 = 0uLL;
    *(a3 + 16) = 0;
    *a4 = IntValue;
    *(a5 + 16) = 0;
    *a5 = 0uLL;
  }

  return result;
}

BOOL forceProcessCSSerialForNotes(unsigned int a1, uint64_t a2)
{
  if (a1)
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v10 = 0uLL;
      v11 = 0;
      v7 = *a2;
      v8 = *(a2 + 16);
      if (getCSInfoAtIndex(&v7, v4, v12, &v9, &v10))
      {
        v7 = v10;
        v8 = v11;
        if (attrsKeyValueEnabled(&v7, "_MDItemDeletedWithRelatedUniqueIdentifier", 41))
        {
          break;
        }
      }

      v4 = (v4 + 1);
      v5 = v4 < a1;
      if (a1 == v4)
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t __setCSAttributes2_block_invoke_3()
{
  qos_class_self();
  result = pthread_qos_max_parallelism();
  gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool = result;
  return result;
}

uint64_t __setCSAttributes2_block_invoke_1908(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(a1 + 96), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v53 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v51 = v5;
  v52 = HIDWORD(v3);
  v50 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v49 = v53;
  v48 = v52;
  v47 = v51;
  v46 = v50;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v46);
    dropThreadId(v49, 1, add_explicit + 1);
    return CICleanUpReset(v49, v47);
  }

  else
  {
    v10 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 40), 0x40000000, v10 + 1);
    v45 = v11;
    v43 = v12;
    v44 = HIDWORD(v11);
    v42 = v13;
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    *(v14 + 216) = 0;
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v41 = v45;
    v40 = v44;
    v39 = v43;
    v38 = v42;
    if (_setjmp(v14))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v38);
      dropThreadId(v41, 1, v10 + 1);
      CICleanUpReset(v41, v39);
    }

    else
    {
      v33 = v15;
      v34 = v10;
      v35 = v7;
      MEMORY[0x1EEE9AC00](v17);
      bzero(v30, 0x1000uLL);
      _SIStackAllocatorCreate(v30, 4096, indexingZone);
      if (atomic_fetch_add_explicit(*(a1 + 48), 1uLL, memory_order_relaxed) < *(a1 + 100))
      {
        v19 = 0x1EBF46000uLL;
        *&v18 = 138412546;
        v32 = v18;
        do
        {
          memset(buf, 0, sizeof(buf));
          v37 = 0;
          *v54 = *(a1 + 56);
          *&v54[16] = *(a1 + 72);
          _MDPlistArrayGetPlistObjectAtIndex();
          if (!v30[3])
          {
            v30[1] = (v30[0] + 55) & 0xFFFFFFFFFFFFFFF0;
          }

          *v54 = *buf;
          *&v54[16] = v37;
          v20 = _MDPlistContainerCopyObject();
          if (v20)
          {
            v21 = v20;
            if (*(v19 + 2780) >= 5)
            {
              v31 = *__error();
              v24 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *(a1 + 80);
                *v54 = v32;
                *&v54[4] = v25;
                *&v54[12] = 2112;
                *&v54[14] = v21;
                _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "Index delete bundleID:%@, identifier:%@", v54, 0x16u);
              }

              *__error() = v31;
              v19 = 0x1EBF46000;
            }

            *v54 = 0;
            if (!si_get_object_for_identifier_createParentDBO(*(a1 + 88), *(a1 + 80), v21, 0, 0, v54, 0, 0))
            {
              v22 = *(a1 + 88);
              _si_delete_attributes_inner(v22, *v54, *(a1 + 104), 0, 1u, 0, (*(*(a1 + 32) + 8) + 24));
              v23 = v22;
              v19 = 0x1EBF46000;
              si_finish_text_store_deletions(v23);
            }

            CFRelease(v21);
          }
        }

        while (atomic_fetch_add_explicit(*(a1 + 48), 1uLL, memory_order_relaxed) < *(a1 + 100));
      }

      v26 = threadData[9 * v41 + 1] + 320 * v40;
      *(v26 + 312) = v33;
      v27 = *(v26 + 232);
      if (v27)
      {
        v27(*(v26 + 288));
      }

      dropThreadId(v41, 0, v34 + 1);
      v7 = v35;
    }

    v28 = threadData[9 * v49 + 1] + 320 * v48;
    *(v28 + 312) = v7;
    v29 = *(v28 + 232);
    if (v29)
    {
      v29(*(v28 + 288));
    }

    return dropThreadId(v49, 0, add_explicit + 1);
  }
}

uint64_t getDeferJournalFd(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2328);
  if (v4 || (a2 & 1) != 0)
  {
LABEL_16:
    if (a2)
    {
      if (*(a1 + 2072) == 1)
      {
        v13 = *(a1 + 2112);
        if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
        {
          _si_mobile_journal_finalize(v13, 1);
        }

        *(a1 + 2112) = 0;
      }

      *(a1 + 2328) = 0;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5 == -1)
    {
      v15 = __si_assert_copy_extra_661(-1);
      v16 = v15;
      v17 = "";
      if (v15)
      {
        v17 = v15;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4040, "indexFd != -1", v17);
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

    v6 = *(a1 + 2348);
    if (v6 == 0x7FFFFFFF)
    {
LABEL_11:
      v9 = __si_assert_copy_extra_661(-1);
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4045, "syncCount < 2147483647", v11);
      free(v10);
      if (__valid_fs(-1))
      {
        v12 = 2989;
      }

      else
      {
        v12 = 3072;
      }

      *v12 = -559038737;
      abort();
    }

    while (1)
    {
      v32 = 0u;
      memset(v33, 0, sizeof(v33));
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
      *__str = 0u;
      snprintf(__str, 0xFFuLL, "%s%d", "deferAttr.", v6);
      if (*(a1 + 60) == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      v8 = fd_create_protected(v5, __str, 536873482, v7);
      if (v8)
      {
        ++*(a1 + 2348);
        *(a1 + 2328) = v8;
        SIActivityJournalNewJournal((a1 + 2192), v8);
        _fd_acquire_fd(*(a1 + 2328), __str);
        v4 = *(a1 + 2328);
        goto LABEL_16;
      }

      if (*__error() != 17)
      {
        return 0;
      }

      v6 = *(a1 + 2348) + 1;
      *(a1 + 2348) = v6;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_11;
      }
    }
  }

  return v4;
}

void flushGraphCacheApply(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v85 = MEMORY[0x1C691E5E0](*a3, a1);
  }

  else
  {
    v85 = 0;
  }

  v5 = a3[1];
  if (v5)
  {
    v84 = MEMORY[0x1C691E5E0](v5, a1);
  }

  else
  {
    v84 = 0;
  }

  v6 = a3[2];
  if (v6)
  {
    v82 = MEMORY[0x1C691E5E0](v6, a1);
  }

  else
  {
    v82 = 0;
  }

  v7 = a3[3];
  if (v7)
  {
    v81 = MEMORY[0x1C691E5E0](v7, a1);
  }

  else
  {
    v81 = 0;
  }

  v8 = a3[4];
  if (v8)
  {
    v80 = MEMORY[0x1C691E5E0](v8, a1);
  }

  else
  {
    v80 = 0;
  }

  v9 = a3[5];
  if (v9)
  {
    v79 = MEMORY[0x1C691E5E0](v9, a1);
  }

  else
  {
    v79 = 0;
  }

  v10 = a3[6];
  if (v10)
  {
    v78 = MEMORY[0x1C691E5E0](v10, a1);
  }

  else
  {
    v78 = 0;
  }

  v11 = a3[7];
  if (v11)
  {
    v77 = MEMORY[0x1C691E5E0](v11, a1);
  }

  else
  {
    v77 = 0;
  }

  v12 = a3[8];
  if (v12)
  {
    v76 = MEMORY[0x1C691E5E0](v12, a1);
  }

  else
  {
    v76 = 0;
  }

  v13 = a3[9];
  if (v13)
  {
    v75 = MEMORY[0x1C691E5E0](v13, a1);
  }

  else
  {
    v75 = 0;
  }

  v14 = a3[10];
  if (v14)
  {
    v74 = MEMORY[0x1C691E5E0](v14, a1);
  }

  else
  {
    v74 = 0;
  }

  v15 = a3[11];
  if (v15)
  {
    v73 = MEMORY[0x1C691E5E0](v15, a1);
  }

  else
  {
    v73 = 0;
  }

  v16 = a3[12];
  if (v16)
  {
    v72 = MEMORY[0x1C691E5E0](v16, a1);
  }

  else
  {
    v72 = 0;
  }

  v17 = a3[13];
  if (v17)
  {
    v71 = MEMORY[0x1C691E5E0](v17, a1);
  }

  else
  {
    v71 = 0;
  }

  v18 = a3[14];
  if (v18)
  {
    v70 = MEMORY[0x1C691E5E0](v18, a1);
  }

  else
  {
    v70 = 0;
  }

  v19 = a3[15];
  if (v19)
  {
    v69 = MEMORY[0x1C691E5E0](v19, a1);
  }

  else
  {
    v69 = 0;
  }

  v20 = a3[16];
  if (v20)
  {
    v68 = MEMORY[0x1C691E5E0](v20, a1);
  }

  else
  {
    v68 = 0;
  }

  v21 = a3[17];
  if (v21)
  {
    v67 = MEMORY[0x1C691E5E0](v21, a1);
  }

  else
  {
    v67 = 0;
  }

  v22 = a3[18];
  if (v22)
  {
    v66 = MEMORY[0x1C691E5E0](v22, a1);
  }

  else
  {
    v66 = 0;
  }

  v23 = a3[19];
  if (v23)
  {
    v65 = MEMORY[0x1C691E5E0](v23, a1);
  }

  else
  {
    v65 = 0;
  }

  v24 = a3[20];
  if (v24)
  {
    v64 = MEMORY[0x1C691E5E0](v24, a1);
  }

  else
  {
    v64 = 0;
  }

  v25 = a3[21];
  if (v25)
  {
    v63 = MEMORY[0x1C691E5E0](v25, a1);
  }

  else
  {
    v63 = 0;
  }

  v26 = a3[22];
  if (v26)
  {
    v62 = MEMORY[0x1C691E5E0](v26, a1);
  }

  else
  {
    v62 = 0;
  }

  v27 = a3[23];
  if (v27)
  {
    v61 = MEMORY[0x1C691E5E0](v27, a1);
  }

  else
  {
    v61 = 0;
  }

  v28 = a3[24];
  if (v28)
  {
    v60 = MEMORY[0x1C691E5E0](v28, a1);
  }

  else
  {
    v60 = 0;
  }

  v29 = a3[25];
  if (v29)
  {
    v59 = MEMORY[0x1C691E5E0](v29, a1);
  }

  else
  {
    v59 = 0;
  }

  v30 = a3[26];
  if (v30)
  {
    v58 = MEMORY[0x1C691E5E0](v30, a1);
  }

  else
  {
    v58 = 0;
  }

  v31 = a3[27];
  if (v31)
  {
    v57 = MEMORY[0x1C691E5E0](v31, a1);
  }

  else
  {
    v57 = 0;
  }

  v32 = a3[28];
  if (v32)
  {
    v56 = MEMORY[0x1C691E5E0](v32, a1);
  }

  else
  {
    v56 = 0;
  }

  v33 = a3[29];
  if (v33)
  {
    v55 = MEMORY[0x1C691E5E0](v33, a1);
  }

  else
  {
    v55 = 0;
  }

  v34 = a3[30];
  if (v34)
  {
    v54 = MEMORY[0x1C691E5E0](v34, a1);
  }

  else
  {
    v54 = 0;
  }

  v35 = a3[31];
  if (v35)
  {
    v36 = MEMORY[0x1C691E5E0](v35, a1);
  }

  else
  {
    v36 = 0;
  }

  v37 = a3[32];
  if (v37)
  {
    v38 = MEMORY[0x1C691E5E0](v37, a1);
  }

  else
  {
    v38 = 0;
  }

  v39 = a3[33];
  if (v39)
  {
    v40 = MEMORY[0x1C691E5E0](v39, a1);
  }

  else
  {
    v40 = 0;
  }

  v41 = a3[34];
  if (v41)
  {
    v42 = MEMORY[0x1C691E5E0](v41, a1);
  }

  else
  {
    v42 = 0;
  }

  v43 = a3[35];
  if (v43)
  {
    v44 = MEMORY[0x1C691E5E0](v43, a1);
  }

  else
  {
    v44 = 0;
  }

  v45 = a3[36];
  if (v45)
  {
    v46 = MEMORY[0x1C691E5E0](v45, a1);
  }

  else
  {
    v46 = 0;
  }

  v47 = a3[37];
  if (v47)
  {
    v48 = MEMORY[0x1C691E5E0](v47, a1);
  }

  else
  {
    v48 = 0;
  }

  v49 = a3[38];
  if (v49)
  {
    v50 = MEMORY[0x1C691E5E0](v49, a1);
  }

  else
  {
    v50 = 0;
  }

  v51 = a3[39];
  if (v51)
  {
    v51 = MEMORY[0x1C691E5E0](v51, a1);
  }

  *(&v53 + 1) = v71;
  *&v53 = v72;
  *(&v52 + 1) = v75;
  *&v52 = v76;
  si_updateContactInfo(a3[40], a1, v85, v84, v82, v81, v80, v79, v78, v77, v52, v74, v73, v53, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v36, v38, v40, v42, v44, v46, v48, v50, v51, a2);
}

void si_updateContactInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *&v55 = a3;
  *(&v55 + 1) = a4;
  v81 = *MEMORY[0x1E69E9840];
  bzero(v64, 0x800uLL);
  v41 = _SIStackAllocatorCreate(v64, 512, indexingZone);
  if (!v64[3])
  {
    v64[1] = (v64[0] + 55) & 0xFFFFFFFFFFFFFFF0;
  }

  v78 = v55;
  v79 = a5;
  v80 = a6;
  v77[0] = a7;
  v77[1] = a8;
  v77[2] = a9;
  v77[3] = a10;
  if (*(&v55 + 1) | v55 | a5 | a6)
  {
    v42 = &v78;
  }

  else
  {
    v42 = 0;
  }

  v74 = a11;
  v75 = a12;
  v76 = a13;
  v43 = v77;
  if (!(a8 | a7 | a9 | a10))
  {
    v43 = 0;
  }

  v59 = v43;
  v61 = v42;
  v71 = a14;
  v72 = a15;
  v73 = a16;
  if (*(&a11 + 1) | a11 | a12 | a13)
  {
    v44 = &v74;
  }

  else
  {
    v44 = 0;
  }

  v70[0] = a17;
  v70[1] = a18;
  v70[2] = a19;
  v70[3] = a20;
  if (*(&a14 + 1) | a14 | a15 | a16)
  {
    v45 = &v71;
  }

  else
  {
    v45 = 0;
  }

  v69[0] = a21;
  v69[1] = a22;
  v69[2] = a23;
  v69[3] = a24;
  if (a18 | a17 | a19 | a20)
  {
    v46 = v70;
  }

  else
  {
    v46 = 0;
  }

  v68[0] = a25;
  v68[1] = a26;
  v68[2] = a27;
  v68[3] = a28;
  if (a22 | a21 | a23 | a24)
  {
    v47 = v69;
  }

  else
  {
    v47 = 0;
  }

  v67[0] = a29;
  v67[1] = a30;
  v67[2] = a31;
  v67[3] = a32;
  if (a26 | a25 | a27 | a28)
  {
    v48 = v68;
  }

  else
  {
    v48 = 0;
  }

  v66[0] = a33;
  v66[1] = a34;
  v66[2] = a35;
  if (a30 | a29 | a31 | a32)
  {
    v49 = v67;
  }

  else
  {
    v49 = 0;
  }

  v66[3] = a36;
  v65[0] = a37;
  v65[1] = a38;
  if (a34 | a33 | a35 | a36)
  {
    v50 = v66;
  }

  else
  {
    v50 = 0;
  }

  v65[2] = a39;
  v65[3] = a40;
  if (a38 | a37 | a39 | a40)
  {
    v51 = v65;
  }

  else
  {
    v51 = 0;
  }

  v52 = v41;
  Mutable = _MDPlistContainerCreateMutable();
  _MDPlistContainerBeginContainer();
  _MDPlistContainerBeginArray();
  addContactInfoToContainer(Mutable, a2, a41, v61, v59, v44, v45, v46, v47, v48, v49, v50, v51);
  _MDPlistContainerAddNullValue();
  _MDPlistContainerEndArray();
  _MDPlistContainerEndContainer();
  v78 = 0uLL;
  v79 = 0;
  _MDPlistGetRootPlistObjectFromPlist();
  v74 = v78;
  v75 = v79;
  _MDPlistArrayGetPlistObjectAtIndex();
  v71 = v78;
  v72 = v79;
  _MDPlistArrayGetPlistObjectAtIndex();
  processOneCS(a1, -1, @"com.apple.MobileAddressBook", 0, 0x20000, v77, &v74, 0, v54, 0, v52, 0, 0, 0, &v71);
  CFRelease(Mutable);
}

uint64_t si_removeRemapping(const void **a1)
{
  pthread_mutex_lock(&schlock);
  Mutable = *(*a1 + 297);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(*a1 + 297) = Mutable;
  }

  CFArrayAppendValue(Mutable, a1[2]);
  pthread_mutex_unlock(&schlock);
  v3 = *(*a1 + 296);
  v6.length = CFArrayGetCount(v3);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v6, a1[2]);
  if (FirstIndexOfValue == -1)
  {
    return 0xFFFFFFFFLL;
  }

  CFArrayRemoveValueAtIndex(*(*a1 + 296), FirstIndexOfValue);
  return 0;
}

void recalculateTopK(uint64_t a1)
{
  if (*(a1 + 2072) == 1)
  {
    v49 = v1;
    v50 = v2;
    if ((*(a1 + 830) & 4) == 0)
    {
      v4 = fd_create_protected(*(a1 + 32), "tmp.topK.v2.mdplistc", 1538, 0);
      if (v4)
      {
        v5 = v4;
        v45 = 0;
        v46 = &v45;
        v47 = 0x2000000000;
        v6 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 500, 0, MEMORY[0x1E695E9E8]);
        v7 = *(a1 + 1392);
        v8 = *(a1 + 1384);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 0x40000000;
        v42 = __recalculateTopK_block_invoke;
        v43 = &unk_1E8191628;
        v44 = &v45;
        if (v7 && *(v7 + 8))
        {
          v9 = 0;
          while ((v42)(v41, *(*v7 + 8 * v9), 0))
          {
            if (++v9 >= *(v7 + 8))
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          if (v8 && *(v8 + 8))
          {
            v10 = 0;
            do
            {
              if (!(v42)(v41, *(*v8 + 8 * v10), 1))
              {
                break;
              }

              ++v10;
            }

            while (v10 < *(v8 + 8));
          }
        }

        v11 = CFDictionaryCreateMutable(v6, 500, 0, 0);
        CFDictionaryApplyFunction(v46[3], heapifyDicts, v11);
        v12 = _MDPlistContainerCreateMutable();
        _MDPlistContainerBeginContainer();
        _MDPlistContainerBeginDictionary();
        CFDictionaryApplyFunction(v11, emitTerms, v12);
        _MDPlistContainerEndDictionary();
        _MDPlistContainerEndContainer();
        Length = _MDPlistContainerGetLength();
        Bytes = _MDPlistContainerGetBytes();
        fd_pwrite(v5, Bytes, Length, 0);
        fd_sync(v5, 0);
        CFRelease(v12);
        v15 = fd_create_protected(*(a1 + 32), "tmp.topK.v2.mdplistc", 0, 0);
        if (!v15)
        {
          _fd_unlink_with_origin(v5, 0);
LABEL_31:
          fd_release(v5);
          CFRelease(v46[3]);
          CFDictionaryApplyFunction(v11, pqDisposeApplier, 0);
          CFRelease(v11);
          _Block_object_dispose(&v45, 8);
          return;
        }

        v16 = v15;
        v17 = fd_mmap(v15, Length, 1, 1, 0);
        if (v17 != -1)
        {
          v18 = v17;
          v40[0] = v17;
          v40[1] = Length;
          v40[2] = 0;
          v39[0] = 1;
          v39[1] = v40;
          add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
          v20 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v39, 0, add_explicit + 1);
          v37 = HIDWORD(v20);
          v38 = v20;
          v36 = __PAIR64__(v21, v22);
          v23 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
          *(v23 + 216) = 0;
          v24 = *(v23 + 312);
          v25 = *(v23 + 224);
          v26 = v23;
          if (v25)
          {
            v25(*(v23 + 288));
          }

          v35 = v38;
          v34 = v37;
          v33 = v36;
          if (_setjmp(v26))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v32 = 0;
              _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v32, 2u);
            }

            v26[78] = v24;
            CIOnThreadCleanUpReset(v33);
            dropThreadId(v35, 1, add_explicit + 1);
            CICleanUpReset(v35, HIDWORD(v33));
          }

          else
          {
            v27 = _MDPlistContainerCreateWithBytes();
            v28 = threadData[9 * v35 + 1] + 320 * v34;
            *(v28 + 312) = v24;
            v29 = *(v28 + 232);
            if (v29)
            {
              v29(*(v28 + 288));
            }

            dropThreadId(v35, 0, add_explicit + 1);
            if (v27)
            {
              fd_rename(v5, "topK.v2.mdplistc");
              v30 = _si_scheduler_suspend(*(a1 + 912), "SpotlightIndex.c", 8585);
              v31 = *(a1 + 664);
              *(a1 + 664) = v27;
              if (v31)
              {
                CFRelease(v31);
              }

              si_scheduler_resume(*(a1 + 912), v30, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8589);
              goto LABEL_30;
            }
          }

          munmap(v18, Length);
        }

LABEL_30:
        fd_release(v16);
        goto LABEL_31;
      }
    }
  }
}

uint64_t __recalculateTopK_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 14496);
  if (v3)
  {
    v4 = CFRetain(v3);
    if (v4)
    {
      v5 = v4;
      v28[0] = _MDPlistContainerGetBytes();
      v28[1] = _MDPlistContainerGetLength();
      v28[2] = 0;
      v27[0] = 1;
      v27[1] = v28;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v7 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v27, 0, add_explicit + 1);
      v25 = HIDWORD(v7);
      v26 = v7;
      v24 = __PAIR64__(v8, v9);
      v10 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
      *(v10 + 216) = 0;
      v11 = *(v10 + 312);
      v12 = *(v10 + 224);
      v13 = v10;
      if (v12)
      {
        v12(*(v10 + 288));
      }

      v23 = v26;
      v22 = v25;
      v21 = v24;
      if (_setjmp(v13))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v20, 2u);
        }

        v13[78] = v11;
        CIOnThreadCleanUpReset(v21);
        dropThreadId(v23, 1, add_explicit + 1);
        CICleanUpReset(v23, HIDWORD(v21));
      }

      else
      {
        v14 = _MDPlistContainerCopyRootObject();
        v15 = v14;
        if (v14)
        {
          v16 = CFGetTypeID(v14);
          if (v16 == CFDictionaryGetTypeID())
          {
            CFDictionaryApplyFunction(v15, sumDicts, *(*(*(a1 + 32) + 8) + 24));
          }
        }

        v17 = threadData[9 * v23 + 1] + 320 * v22;
        *(v17 + 312) = v11;
        v18 = *(v17 + 232);
        if (v18)
        {
          v18(*(v17 + 288));
        }

        dropThreadId(v23, 0, add_explicit + 1);
        if (v15)
        {
          CFRelease(v15);
        }
      }

      CFRelease(v5);
    }
  }

  return 1;
}

void pqDisposeApplier(uint64_t a1, void **a2)
{
  free(*a2);

  free(a2);
}

void emitTerms(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    v31 = __si_assert_copy_extra_661(-1);
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8465, "k && v", v33);
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

  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a1);
  _MDPlistContainerAddObject();
  _MDPlistContainerBeginDictionary();
  v5 = *(a2 + 4);
  v6 = v5 - 1;
  if (v5 == 1)
  {
    goto LABEL_23;
  }

  v7 = 0;
  do
  {
    v8 = a2[2];
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v9 = *(*a2 + 16);
    v10 = *(*a2 + 16 * v8 - 16);
    *(*a2 + 16) = v10;
    v12 = a2[1];
    v11 = a2[2];
    a2[2] = v11 - 1;
    v13 = v12 >> 1;
    v14 = 1;
    v15 = 2;
    v16 = 3;
    while (1)
    {
      v17 = *a2;
      v18 = *(*a2 + 16 * v15);
      if (v16 >= v11)
      {
        v19 = xmmword_1C2BFA330;
        if (v15 >= v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v19 = *(v17 + 16 * v16);
      }

      if (v18.i32[2] < DWORD2(v10))
      {
        if (v19.i32[2] >= v18.i32[2])
        {
          v16 = v15;
        }

        v20 = vdup_n_s32(v19.i32[2] < v18.i32[2]);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v21, 0x3FuLL)), v19, v18);
        goto LABEL_16;
      }

      if (v19.i32[2] >= DWORD2(v10))
      {
        break;
      }

LABEL_16:
      _X14 = v17 + 32 * v16;
      __asm { PRFM            #1, [X14] }

      if (v16 != v14)
      {
        v15 = 2 * v16;
        *(v17 + 16 * v16) = v10;
        *(*a2 + 16 * v14) = v19;
        v14 = v16;
        v28 = v16 < v13;
        v16 = (2 * v16) | 1;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    _X8 = v17 + 32 * v14;
    __asm { PRFM            #1, [X8] }

LABEL_7:
    _MDPlistContainerAddObject();
    _MDPlistContainerAddInt32Value();
    CFRelease(v9);
    ++v7;
  }

  while (v7 != v6);
LABEL_23:
  _MDPlistContainerEndDictionary();

  CFRelease(v4);
}

void heapifyDicts(unsigned int a1, CFTypeRef cf, const void *a3)
{
  v5 = CFRetain(cf);
  v6 = CFRetain(a3);
  v7 = a1;
  if (!CFDictionaryContainsKey(v6, a1))
  {
    v8 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
    v9 = v8;
    v10 = 10000;
    if (a1 > 716189595)
    {
      if (a1 == 716189596 || a1 == 856881155)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (a1 == 510259174)
      {
LABEL_9:
        v8[1] = v10;
        v8[2] = 1;
        v11 = malloc_type_zone_malloc(queryZone, 16 * v10 + 32, 0xA4971684uLL);
        if (!v11)
        {
          _log_fault_for_malloc_failure();
        }

        *v9 = v11;
        *v11 = 0;
        v11[1] = 0;
        goto LABEL_12;
      }

      if (a1 == 679607404)
      {
        *(v8 + 1) = xmmword_1C2BF7A50;
        *v8 = 0;
LABEL_12:
        CFDictionaryAddValue(v6, v7, v9);
        goto LABEL_13;
      }
    }

    v10 = 50;
    goto LABEL_9;
  }

LABEL_13:
  Value = CFDictionaryGetValue(v6, v7);
  CFDictionaryApplyFunction(v5, heapifyDict, Value);
  CFRelease(v5);

  CFRelease(v6);
}

void heapifyDict(const void *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v5 = CFRetain(a1);
  v6 = a2;
  v7 = *(a3 + 16);
  if (v7 <= 20000)
  {
    v8 = *(a3 + 8);
    v9 = *(a3 + 16);
    if (v7 + 2 >= v8)
    {
      v10 = 2 * v8;
      if (v8 < 4)
      {
        v10 = 4;
      }

      *(a3 + 8) = v10;
      v11 = 16 * v10;
      if (*a3)
      {
        v12 = malloc_type_zone_realloc(queryZone, *a3, v11 + 32, 0xA1A7ADA0uLL);
      }

      else
      {
        v12 = malloc_type_zone_malloc(queryZone, v11 + 32, 0x566E289CuLL);
      }

      v44 = v12;
      if (!v12)
      {
        _log_fault_for_malloc_failure();
      }

      *a3 = v44;
      *v44 = 0;
      v44[1] = 0;
      v9 = *(a3 + 16);
    }

    *(a3 + 16) = v9 + 1;
    v45 = (*a3 + 16 * v7);
    *v45 = v5;
    v45[1] = v6;
    if (v7 >= 2)
    {
      do
      {
        v46 = *a3;
        v47 = v7 >> 1;
        if (*(*a3 + 16 * v7 + 8) > *(*a3 + 16 * (v7 >> 1) + 8))
        {
          break;
        }

        v48 = v46[v7];
        v46[v7] = v46[v47];
        *(*a3 + 16 * v47) = v48;
        v34 = v7 > 3;
        v7 = v7 >> 1;
      }

      while (v34);
    }

    return;
  }

  v13 = *a3;
  if (*a3)
  {
    v14 = v13[1].u32[2];
  }

  else
  {
    v14 = 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_48;
  }

  v15 = v13[1].i64[0];
  v16 = v13[v7 - 1];
  v13[1] = v16;
  v18 = *(a3 + 8);
  v17 = *(a3 + 16);
  *(a3 + 16) = v17 - 1;
  v19 = v18 >> 1;
  v20 = 3;
  v21 = 2;
  v22 = 1;
  while (1)
  {
    v23 = *a3;
    v24 = *(*a3 + 16 * v21);
    if (v20 >= v17)
    {
      v25 = xmmword_1C2BFA330;
      if (v21 >= v17)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v25 = v23[v20];
    }

    if (v24.i32[2] < v16.i32[2])
    {
      if (v25.i32[2] >= v24.i32[2])
      {
        v20 = v21;
      }

      v26 = vdup_n_s32(v25.i32[2] < v24.i32[2]);
      v27.i64[0] = v26.u32[0];
      v27.i64[1] = v26.u32[1];
      v25 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v27, 0x3FuLL)), v25, v24);
      goto LABEL_19;
    }

    if (v25.i32[2] >= v16.i32[2])
    {
      break;
    }

LABEL_19:
    _X13 = &v23[2 * v20];
    __asm { PRFM            #1, [X13] }

    if (v20 == v22)
    {
      goto LABEL_26;
    }

    v21 = 2 * v20;
    v23[v20] = v16;
    *(*a3 + 16 * v22) = v25;
    v22 = v20;
    v34 = v20 < v19;
    v20 = (2 * v20) | 1;
    if (!v34)
    {
      v23 = *a3;
      goto LABEL_26;
    }
  }

  _X8 = &v23[2 * v22];
  __asm { PRFM            #1, [X8] }

LABEL_26:
  v37 = *(a3 + 8);
  v38 = *(a3 + 16);
  if ((v38 + 2) >= v37)
  {
    v40 = 2 * v37;
    v34 = v37 < 4;
    v41 = 4;
    if (!v34)
    {
      v41 = v40;
    }

    *(a3 + 8) = v41;
    v42 = 16 * v41;
    if (v23)
    {
      v43 = malloc_type_zone_realloc(queryZone, v23, v42 + 32, 0xA1A7ADA0uLL);
    }

    else
    {
      v43 = malloc_type_zone_malloc(queryZone, v42 + 32, 0x566E289CuLL);
    }

    v49 = v43;
    if (!v43)
    {
      _log_fault_for_malloc_failure();
    }

    *a3 = v49;
    *v49 = 0;
    v49[1] = 0;
    v39 = *(a3 + 16);
    v23 = *a3;
  }

  else
  {
    v39 = *(a3 + 16);
  }

  *(a3 + 16) = v39 + 1;
  v50 = &v23[v38];
  v50->i64[0] = v5;
  v50->i64[1] = v6;
  if (v38 >= 2)
  {
    do
    {
      v51 = *a3;
      v52 = v38 >> 1;
      if (*(*a3 + 16 * v38 + 8) > *(*a3 + 16 * (v38 >> 1) + 8))
      {
        break;
      }

      v53 = v51[v38];
      v51[v38] = v51[v52];
      *(*a3 + 16 * v52) = v53;
      v34 = v38 > 3;
      v38 >>= 1;
    }

    while (v34);
  }

  v5 = v15;
LABEL_48:

  CFRelease(v5);
}

void sumDicts(const void *a1, const void *a2, CFTypeRef cf)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = CFRetain(cf);
  v6 = CFRetain(a1);
  IntValue = CFStringGetIntValue(v6);
  if (IntValue)
  {
    v8 = IntValue;
    v9 = CFRetain(a2);
    v10 = v9;
    if (v9)
    {
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        v12 = v8;
        if (!CFDictionaryContainsKey(v5, v8))
        {
          v13 = 50;
          if (v8 == 679607404)
          {
            v13 = 0;
          }

          if (v8 == 856881155)
          {
            v14 = 10000;
          }

          else
          {
            v14 = v13;
          }

          if (v8 == 716189596)
          {
            v15 = 10000;
          }

          else
          {
            v15 = v14;
          }

          if (v8 == 510259174)
          {
            v16 = 10000;
          }

          else
          {
            v16 = v15;
          }

          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v16, MEMORY[0x1E695E9D8], 0);
          CFDictionaryAddValue(v5, v12, Mutable);
          CFRelease(Mutable);
        }

        Value = CFDictionaryGetValue(v5, v12);
        CFDictionaryApplyFunction(v10, sumDict, Value);
      }
    }

    CFRelease(v10);
    CFRelease(v5);

    CFRelease(v6);
  }

  else
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    v21 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v20, (gSILogLevels[0] < 3)))
    {
      v22 = 138412290;
      v23 = v6;
      _os_log_impl(&dword_1C278D000, v20, v21, "*warn* Skipped deprecated topK bundleIndex %@", &v22, 0xCu);
    }

    *__error() = v19;
  }
}

void sumDict(const void *a1, const __CFNumber *a2, CFTypeRef cf)
{
  v5 = CFRetain(cf);
  Value = CFDictionaryGetValue(v5, a1);
  valuePtr = 0;
  CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v5, a1, (valuePtr + Value));
  CFRelease(v5);
}

uint64_t __mergeOverlay_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    result = _CIMoveDirectory(result, a2, a3, a4, a5);
  }

  v11 = *(a1 + 40);
  if (*(v11 + 8))
  {
    v12 = 0;
    do
    {
      result = CFSetContainsValue(*(a1 + 48), *(*(*v11 + 8 * v12) + 56));
      if (result)
      {
        result = _CIMoveDirectory(*(**(a1 + 40) + 8 * v12), a2, a3, a4, a5);
      }

      ++v12;
      v11 = *(a1 + 40);
    }

    while (v12 < *(v11 + 8));
  }

  v13 = *(a1 + 56);
  if (*(v13 + 8))
  {
    v14 = 0;
    do
    {
      result = CFSetContainsValue(*(a1 + 48), *(*(*v13 + 8 * v14) + 56));
      if (result)
      {
        result = _CIMoveDirectory(*(**(a1 + 56) + 8 * v14), a2, a3, a4, a5);
      }

      ++v14;
      v13 = *(a1 + 56);
    }

    while (v14 < *(v13 + 8));
  }

  return result;
}

void __mergeOverlay_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __mergeOverlay_block_invoke_3;
  v4[3] = &__block_descriptor_tmp_307;
  v3 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v3;
  dispatch_barrier_async(v2, v4);
  dispatch_release(*(a1 + 32));
}

void __mergeOverlay_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mergeOverlay_block_invoke_4;
  block[3] = &__block_descriptor_tmp_306;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  dispatch_barrier_async(v2, block);
  dispatch_release(*(a1 + 32));
}

void __mergeOverlay_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __mergeOverlay_block_invoke_5;
  v3[3] = &__block_descriptor_tmp_305;
  v4 = *(a1 + 40);
  dispatch_barrier_async(v2, v3);
  dispatch_release(*(a1 + 32));
}

void __mergeOverlay_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    pthread_rwlock_destroy((v2 + 240));
    pthread_rwlock_destroy((v2 + 8));
    free(*(v2 + 448));
    freeOverlayDir(v2 + 208);
    v3 = *(v2 + 456);
    if (v3)
    {
      do
      {
        v4 = *v3;
        free(v3);
        v3 = v4;
      }

      while (v4);
    }

    free(v2);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

uint64_t __InsertMergedIndex_block_invoke(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 36));
    if ((v1 & 3) == 0 && (*(result + 15203) & 1) == 0)
    {
      return _CIFlushCache(result, 1, 0, 0, &__block_literal_global_826);
    }
  }

  return result;
}

ssize_t create_scan_touch_file(uint64_t a1, char a2)
{
  v3 = si_openat_protected(a1, "rescan_needed", 1538, 3);
  __buf = a2;
  result = write(v3, &__buf, 1uLL);
  if ((v3 & 0x80000000) == 0)
  {
    return close(v3);
  }

  return result;
}

uint64_t perform_victim_rename(unsigned int a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "%s.%s", "tmp.victim", (*(*a2 + 8 * a1) + 15208));
  return ContentIndexChangePrefix(v2);
}

uint64_t perform_renumber_rename(uint64_t a1, void *a2, _DWORD *a3, int a4, char *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__str = 0u;
  v8 = fmtcheck(a5, "%i");
  snprintf(__str, 0xFFuLL, v8, a1);
  a3[8] = a1;
  pwrite(a4, a3, 0x210uLL, 0);
  fcntl(a4, 85);
  return ContentIndexChangePrefix(v9);
}

uint64_t rename_new_index(uint64_t a1, char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v5 = fmtcheck(a2, "%i");
  snprintf(__str, 0xFFuLL, v5, a3);
  v7 = ContentIndexChangePrefix(v6);
  v8 = *(a1 + 4912);
  if (v7)
  {
    if (v8 && _os_feature_enabled_impl())
    {
      vectorIndexEndMerge(*(a1 + 4912));
    }
  }

  else if (v8 && _os_feature_enabled_impl())
  {
    vectorIndexCancelMerge(*(a1 + 4912));
  }

  return v7;
}

uint64_t scan_lost_ids(uint64_t a1, int a2)
{
  v3 = *(a1 + 1192);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __scan_lost_ids_block_invoke;
  v8[3] = &__block_descriptor_tmp_835;
  v8[4] = a1;
  if (*v3 != 1685287992)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 248, v7);
    free(v6);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  db2_scan_lost_ids(v3, a2, a1, v8);
  return unlinkat(*(a1 + 32), "rescan_needed", 2048);
}