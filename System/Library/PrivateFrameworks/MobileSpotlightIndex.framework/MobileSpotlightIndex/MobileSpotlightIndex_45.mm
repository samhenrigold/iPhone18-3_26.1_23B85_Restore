__n128 pqpush_rankAndFetchInfo_t(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
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

    *(a1 + 8) = v9;
    v10 = 160 * v9 + 320;
    if (*a1)
    {
      v11 = malloc_type_zone_realloc(queryZone, *a1, v10, 0xA1A7ADA0uLL);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, v10, 0x566E289CuLL);
    }

    v12 = v11;
    if (!v11)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v12;
    v12[4] = xmmword_1C2BFF360;
    v12[5] = unk_1C2BFF370;
    v12[2] = xmmword_1C2BFF340;
    v12[3] = unk_1C2BFF350;
    v12[8] = xmmword_1C2BFF3A0;
    v12[9] = unk_1C2BFF3B0;
    v12[6] = xmmword_1C2BFF380;
    v12[7] = unk_1C2BFF390;
    *v12 = ZERO_FETCHINFO;
    v12[1] = *algn_1C2BFF330;
    v6 = *(a1 + 16);
  }

  *(a1 + 16) = v6 + 1;
  v13 = *a1 + 160 * v5;
  result = *(a2 + 16);
  *v13 = *a2;
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  v17 = *(a2 + 80);
  *(v13 + 64) = *(a2 + 64);
  *(v13 + 80) = v17;
  *(v13 + 32) = v15;
  *(v13 + 48) = v16;
  v18 = *(a2 + 96);
  v19 = *(a2 + 112);
  v20 = *(a2 + 144);
  *(v13 + 128) = *(a2 + 128);
  *(v13 + 144) = v20;
  *(v13 + 96) = v18;
  *(v13 + 112) = v19;
  *(v13 + 16) = result;
  if (v5 >= 2)
  {
    do
    {
      v21 = *a1 + 160 * v5;
      result.n128_u32[0] = *(v21 + 52);
      v22 = *a1 + 160 * (v5 >> 1);
      v23 = *(v22 + 52);
      if (*(v21 + 69))
      {
        v24 = *(v21 + 60);
        v25 = *(v22 + 60);
        if (v24 < v25)
        {
          goto LABEL_27;
        }

        if (v24 != v25)
        {
          return result;
        }
      }

      else
      {
        if (*v21 < *v22)
        {
          goto LABEL_27;
        }

        if (*(v21 + 8) != *(v22 + 8) || *v21 != *v22)
        {
          return result;
        }
      }

      if (result.n128_f32[0] >= v23 && (result.n128_f32[0] != v23 || *(v21 + 48) < *(v22 + 48)))
      {
        return result;
      }

LABEL_27:
      v42 = *(v21 + 96);
      v43 = *(v21 + 112);
      v44 = *(v21 + 128);
      v45 = *(v21 + 144);
      v38 = *(v21 + 32);
      v39 = *(v21 + 48);
      v40 = *(v21 + 64);
      v41 = *(v21 + 80);
      v36 = *v21;
      v37 = *(v21 + 16);
      v28 = *(v22 + 16);
      *v21 = *v22;
      *(v21 + 16) = v28;
      v29 = *(v22 + 32);
      v30 = *(v22 + 48);
      v31 = *(v22 + 80);
      *(v21 + 64) = *(v22 + 64);
      *(v21 + 80) = v31;
      *(v21 + 32) = v29;
      *(v21 + 48) = v30;
      v32 = *(v22 + 96);
      v33 = *(v22 + 112);
      v34 = *(v22 + 144);
      *(v21 + 128) = *(v22 + 128);
      *(v21 + 144) = v34;
      *(v21 + 96) = v32;
      *(v21 + 112) = v33;
      v35 = (*a1 + 160 * (v5 >> 1));
      v35[6] = v42;
      v35[7] = v43;
      v35[8] = v44;
      v35[9] = v45;
      v35[2] = v38;
      v35[3] = v39;
      v35[4] = v40;
      v35[5] = v41;
      result = v36;
      *v35 = v36;
      v35[1] = v37;
      v8 = v5 > 3;
      v5 >>= 1;
    }

    while (v8);
  }

  return result;
}

__n128 ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_3(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = *(*(a1[4] + 8) + 24);
  v5 = *(*(a1[5] + 8) + 24);
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[11];
  *(a1[10] + 8 * v5) = *(a2 + 136);
  *(v6 + 2 * v5) = v4;
  v9 = v8 + 80 * v5;
  *v9 = *a2;
  v11 = *(a2 + 48);
  v10 = *(a2 + 64);
  v12 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
  *(v9 + 64) = v10;
  v13 = *(a2 + 88);
  *v9 = *(a2 + 80);
  *(v9 + 8) = v13;
  v14 = v2 + 5 * v5;
  LODWORD(v9) = *(a2 + 96);
  *(v14 + 4) = *(a2 + 100);
  *v14 = v9;
  v15 = v3 + 28 * v5;
  result = *(a2 + 104);
  *(v15 + 12) = *(a2 + 116);
  *v15 = result;
  *(v7 + v5) = *(a2 + 144);
  ++*(*(a1[5] + 8) + 24);
  return result;
}

__n128 ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_4(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = *(*(a1[4] + 8) + 24);
  v5 = *(*(a1[5] + 8) + 24);
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[11];
  *(a1[10] + 8 * v5) = *(a2 + 136);
  *(v6 + 2 * v5) = v4;
  v9 = v8 + 80 * v5;
  *v9 = *a2;
  v11 = *(a2 + 48);
  v10 = *(a2 + 64);
  v12 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
  *(v9 + 64) = v10;
  v13 = *(a2 + 88);
  *v9 = *(a2 + 80);
  *(v9 + 8) = v13;
  v14 = v2 + 5 * v5;
  LODWORD(v9) = *(a2 + 96);
  *(v14 + 4) = *(a2 + 100);
  *v14 = v9;
  v15 = v3 + 28 * v5;
  result = *(a2 + 104);
  *(v15 + 12) = *(a2 + 116);
  *v15 = result;
  *(v7 + v5) = *(a2 + 144);
  ++*(*(a1[5] + 8) + 24);
  return result;
}

uint64_t PartialQueryResults::completionAttributeIdVector(PartialQueryResults *this, datastore_info *a2)
{
  v3 = *(this + 45);
  if (v3 && !*(this + 49))
  {
    v5 = *(this + 47);
    if (!v5)
    {
      v6 = *(this + 46);
      if (v6)
      {
        SIFlattenArrayToCStringVector(v6, this + 47, this + 44, this + 45);
        v5 = *(this + 47);
        if (!v5)
        {
          v18 = __si_assert_copy_extra_332();
          v19 = v18;
          v20 = "";
          if (v18)
          {
            v20 = v18;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx.h", 1014, "fCompletionAttributeVector", v20);
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

        v3 = *(this + 45);
      }

      else
      {
        v5 = 0;
      }
    }

    v7 = 8 * v3;
    if (v3 >> 14)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 > *MEMORY[0x1E69E9AC8];
    }

    if (v8)
    {
      ++sTotal;
    }

    v9 = malloc_type_zone_calloc(queryZone, 1uLL, v7, 0x5BAF1CEAuLL);
    if (!v9)
    {
      _log_fault_for_malloc_failure();
    }

    *(this + 49) = v9;
    v10 = *(this + 45);
    if (v10 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        if (a2)
        {
          v12 = db_copy_field_ids_with_buffer(a2, *(v5 + 8 * i), 0, 0);
          v10 = *(this + 45);
        }

        else
        {
          v12 = 0;
        }

        *(*(this + 49) + 8 * i) = v12;
      }
    }

    if (!*(this + 34))
    {
      if (a2)
      {
        v13 = db_copy_field_ids_with_buffer(a2, "kMDItemLastUsedDate", 0, 0);
      }

      else
      {
        v13 = 0;
      }

      *(this + 34) = v13;
    }

    if (!*(this + 35))
    {
      if (a2)
      {
        v14 = db_copy_field_ids_with_buffer(a2, "kMDItemContentCreationDate", 0, 0);
      }

      else
      {
        v14 = 0;
      }

      *(this + 35) = v14;
    }

    if (!*(this + 36))
    {
      if (a2)
      {
        v15 = db_copy_field_ids_with_buffer(a2, "kMDItemEmailConversationID", 0, 0);
      }

      else
      {
        v15 = 0;
      }

      *(this + 36) = v15;
    }

    if (!*(this + 37))
    {
      if (a2)
      {
        v16 = db_copy_field_ids_with_buffer(a2, "_kMDItemLaunchString", 0, 0);
      }

      else
      {
        v16 = 0;
      }

      *(this + 37) = v16;
    }
  }

  return *(this + 49);
}

void ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_120(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v201 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = (*(v4 + 16))(v4, 0, 0, 0, 0, *(*(v3 + 72) + 24));
  }

  else
  {
    v5 = 0;
  }

  v154 = v5;
  v6 = *(*(v3 + 80) + 8 * a2);
  v147 = *(*(v3 + 88) + 8 * a2);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = qos_class_self();
  v9 = dispatch_queue_attr_make_with_qos_class(v7, v8, 0);
  if (*(v3 + 228))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v13 = v9;
    v10 = dispatch_queue_create("Query result pack queue", v9);
    if (*(v3 + 228))
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v12 = dispatch_queue_create("Query result check queue", v13);
      if (*(v3 + 228))
      {
        v11 = 0;
      }

      else
      {
        v11 = dispatch_semaphore_create(16);
      }
    }
  }

  v14 = v11;
  v15 = OSAtomicDequeue(*(v3 + 96), 0);
  v150 = v10;
  dsema = v14;
  queue = v12;
  if (v15 || (v15 = malloc_type_zone_malloc(queryZone, 0x50000uLL, 0xA4971684uLL)) != 0)
  {
    v16 = v15;
  }

  else
  {
    _log_fault_for_malloc_failure();
    v16 = 0;
  }

  v17 = *(v3 + 64);
  v153 = (v3 + 72);
  v144 = *(*(*(v3 + 72) + 840) + 16);
  v196 = 0;
  v197 = 0;
  v18 = malloc_type_malloc(0x10uLL, 0xE0040CF218873uLL);
  keyCallBacks = *byte_1F427C9F8;
  *v18 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, 0);
  v156 = a2;
  v148 = v18;
  if (v17)
  {
    keyCallBacks = *byte_1F427CA48;
    v18[1] = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
  }

  else
  {
    v18[1] = 0;
  }

  keyCallBacks.version = 0;
  keyCallBacks.retain = &keyCallBacks;
  keyCallBacks.release = 0x2000000000;
  LOBYTE(keyCallBacks.copyDescription) = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v19 = setThreadIdAndInfo(*(*&(*v153)[6]._os_unfair_lock_opaque + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v21 = v20;
  v22 = v19;
  v23 = HIDWORD(v19);
  v25 = v24;
  v26 = threadData[9 * v19 + 1] + 320 * HIDWORD(v19);
  *(v26 + 216) = 0;
  v145 = *(v26 + 312);
  v27 = *(v26 + 224);
  if (v27)
  {
    v27(*(v26 + 288));
  }

  v152 = v6;
  v194 = v23;
  v195 = v22;
  v192 = v21;
  v193 = v25;
  if (_setjmp(v26))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v26 + 312) = v145;
    CIOnThreadCleanUpReset(v192);
    dropThreadId(v195, 1, add_explicit + 1);
    CICleanUpReset(v195, v193);
    v28 = 0;
    v29 = 0;
    v30 = v16;
    v32 = v150;
    v31 = dsema;
    v33 = queue;
    goto LABEL_91;
  }

  v34 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v35 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*&(*v153)[6]._os_unfair_lock_opaque + 1192), 0x40000000, v34 + 1);
  v37 = v36;
  v38 = v35;
  v39 = HIDWORD(v35);
  v41 = v40;
  v42 = threadData[9 * v35 + 1] + 320 * HIDWORD(v35);
  *(v42 + 216) = 0;
  v142 = *(v42 + 312);
  v43 = *(v42 + 224);
  if (v43)
  {
    v43(*(v42 + 288));
  }

  v190 = v39;
  v191 = v38;
  v188 = v37;
  v189 = v41;
  v44 = _setjmp(v42);
  if (v44)
  {
    v47 = v145;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v42 + 312) = v142;
    CIOnThreadCleanUpReset(v188);
    dropThreadId(v191, 1, v34 + 1);
    CICleanUpReset(v191, v189);
    v48 = 0;
    v49 = 0;
    v30 = v16;
    v33 = queue;
    v32 = v150;
    v50 = add_explicit;
    goto LABEL_88;
  }

  v143 = v34;
  v51 = 0;
  v141 = v6 + 3;
  v45.n128_u64[0] = 134217984;
  v52 = 134217984;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v155 = v3;
  while (1)
  {
    v140 = v55;
    v57 = v53;
    v58 = v44;
    v59 = v51;
    v60 = v16;
    v61 = v56;
    while (1)
    {
      v62 = v60;
      v63 = v59;
      if (*(*&(*v153)[26]._os_unfair_lock_opaque + 96))
      {
        v111 = v59;
        v113 = v60;
        v115 = v61;
        v3 = v155;
        goto LABEL_85;
      }

      v64 = v58;
      v65 = *&(*v153)[26]._os_unfair_lock_opaque;
      do
      {
        v66 = v65;
        v65 = *(v65 + 80);
      }

      while (v65);
      v3 = v155;
      if (*(*(v66 + 8) + 12))
      {
        v111 = v63;
        v113 = v62;
LABEL_84:
        v115 = v61;
        goto LABEL_85;
      }

      if (v57)
      {
        v67 = _db_obj_iter_next(v152, &v197, 1, v45, *&v52, v46);
        if (!v67)
        {
          if (!v54)
          {
            v110 = v64;
            v76 = 0;
            v75 = v63;
            goto LABEL_74;
          }

          if (v196)
          {
            v136 = __si_assert_copy_extra_332();
            v137 = v136;
            v138 = "";
            if (v136)
            {
              v138 = v136;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 3819, "!page", v138);
            free(v137);
            if (__valid_fs(-1))
            {
              v139 = 2989;
            }

            else
            {
              v139 = 3072;
            }

            *v139 = -559038737;
            abort();
          }

          if (*(v152 + 12))
          {
            v196 = *(v152 + 12);
            *(v152 + 12) = 0;
            v77 = v141;
          }

          else
          {
            v77 = &v196;
          }

          v74 = 0;
          v76 = 0;
          *v77 = 0;
          v73 = 1;
          LODWORD(v64) = -1;
          v75 = v63;
          goto LABEL_56;
        }

        v68 = v67;
        v69 = v61;
        goto LABEL_41;
      }

      v70 = v61 + 1;
      v71 = db_obj_subiter_next(v152, &v197, v45, *&v52, v46);
      if (!v71)
      {
        break;
      }

      v68 = v71;
      v69 = v61 + 1;
LABEL_41:
      if (v54 != 2048)
      {
        v72 = v197;
        if (*(v155 + 104) > v197 || !v54)
        {
          v81 = v64;
          v82 = v54;
          v83 = v62;
          v84 = 1;
          v85 = v63 + 1;
          v86 = v68;
          v87 = v69;
          goto LABEL_65;
        }
      }

      v73 = 0;
      v61 = v69;
      v74 = v68;
      v75 = v63 + 1;
      v76 = 1;
LABEL_56:
      v88 = v73;
      if (*(v155 + 228))
      {
        v3 = v155;
        processItems(*(v155 + 112), *(v155 + 120), v54, v148, *(v155 + 128), *(*(*(v155 + 72) + 8) + 216) != 0, *(v155 + 64), v154, *(v155 + 32), *(v155 + 40), *(v155 + 48), *(v155 + 56), v156, *(v155 + 144), 1, *(v155 + 216), *(v155 + 152), v144 != 0, v150, v196, v64, v147, *(v155 + 220), *(v155 + 160), *(v155 + 168), *(v155 + 176), *(v155 + 184), v153, *(v155 + 224), keyCallBacks.retain + 24, v62, *(v155 + 96), *(v155 + 192), 0);
      }

      else
      {
        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_125;
        block[3] = &unk_1E8194320;
        v89 = *(v155 + 120);
        v163 = *(v155 + 112);
        v164 = v89;
        v165 = v54;
        v166 = v148;
        v91 = *(v155 + 64);
        v90 = *(v155 + 72);
        v92 = *(v155 + 136);
        v167 = *(v155 + 128);
        v168 = v90;
        v158 = *(v155 + 32);
        v93 = *(v155 + 56);
        v159 = *(v155 + 48);
        v160 = v93;
        v169 = v154;
        v170 = v92;
        v94 = *(v155 + 144);
        v95 = *(v155 + 152);
        v171 = v156;
        v172 = v94;
        v186 = *(v155 + 228);
        v183 = *(v155 + 216);
        v187 = v144 != 0;
        v173 = v95;
        v174 = v150;
        v184 = v64;
        v175 = v196;
        v176 = v147;
        v96 = *(v155 + 176);
        v177 = *(v155 + 160);
        v178 = v96;
        v185 = *(v155 + 220);
        v161 = v91;
        p_keyCallBacks = &keyCallBacks;
        v97 = *(v155 + 96);
        v179 = v62;
        v180 = v97;
        v181 = *(v155 + 192);
        v182 = dsema;
        dispatch_async(queue, block);
      }

      v196 = 0;
      v98 = v197;
      if (*(v3 + 104) <= v197)
      {
        v111 = v75;
        v113 = 0;
        goto LABEL_84;
      }

      v99 = OSAtomicDequeue(*(v3 + 96), 0);
      if (v99 || (v99 = malloc_type_zone_malloc(queryZone, 0x50000uLL, 0xA4971684uLL)) != 0)
      {
        v83 = v99;
      }

      else
      {
        _log_fault_for_malloc_failure();
        v83 = 0;
      }

      v81 = 0xFFFFFFFFLL;
      if (v88)
      {
        v110 = 0xFFFFFFFFLL;
        v62 = v83;
        goto LABEL_74;
      }

      v72 = v98;
      v82 = 0;
      v84 = v76;
      v85 = v75;
      v86 = v74;
      v87 = v61;
LABEL_65:
      v100 = v83;
      v101 = v81;
      v102 = *v86;
      if (*v86 != v140)
      {
        v108 = &v100[160 * v82];
        *v108 = v86;
        *(v108 + 1) = v72;
        v3 = v155;
        if (*(v155 + 229) == 1)
        {
          v109 = *(*(v155 + 136) + 2 * v72);
        }

        else
        {
          v109 = 0;
        }

        v117 = v102;
        *(v108 + 8) = v109;
        v112 = v72;
        v113 = v100;
        v114 = v84;
        v111 = v85;
        v115 = v87;
        v116 = v82 + 1;
        goto LABEL_77;
      }

      v58 = v81;
      v57 = v84;
      v59 = v85;
      v60 = v100;
      v54 = v82;
      v61 = v87;
      if (_ZZZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbbEUb_E7_COUNT_ >= 1)
      {
        --_ZZZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbbEUb_E7_COUNT_;
        v103 = *__error();
        v104 = _SILogForLogForCategory(1);
        v105 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v104, v105))
        {
          v106 = *v86;
          *buf = 134217984;
          v200 = v106;
          _os_log_impl(&dword_1C278D000, v104, v105, "duplicate oid 0x%llx", buf, 0xCu);
        }

        v107 = __error();
        v58 = v101;
        *v107 = v103;
        v57 = v84;
        v59 = v85;
        v60 = v100;
        v54 = v82;
        v61 = v87;
      }
    }

    v78 = *__error();
    v79 = _SILogForLogForCategory(1);
    v80 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v79, v80))
    {
      *buf = 134217984;
      v200 = v63;
      _os_log_impl(&dword_1C278D000, v79, v80, "Iterator out of results after %ld items", buf, 0xCu);
    }

    *__error() = v78;
    if (v54)
    {
      v73 = 1;
      v61 = v70;
      v74 = 0;
      v75 = v63;
      v76 = 0;
      goto LABEL_56;
    }

    v110 = v64;
    v76 = 0;
    v75 = v63;
    v61 = v70;
LABEL_74:
    v111 = v75;
    v112 = v197;
    v101 = v110;
    v113 = v62;
    v114 = v76;
    v115 = v61;
    v116 = 0;
    v117 = v140;
LABEL_77:
    v118 = v112;
    v44 = v101;
    v53 = v114;
    v51 = v111;
    v16 = v113;
    v54 = v116;
    v55 = v117;
    v56 = v115;
    if (*(v3 + 104) <= v118)
    {
      v44 = v101;
      v53 = v114;
      v51 = v111;
      v16 = v113;
      v54 = v116;
      v55 = v117;
      v56 = v115;
      if (!v116)
      {
        break;
      }
    }
  }

LABEL_85:
  v48 = v115;
  v30 = v113;
  v49 = v111;
  v119 = threadData[9 * v191 + 1] + 320 * v190;
  *(v119 + 312) = v142;
  v120 = *(v119 + 232);
  if (v120)
  {
    v120(*(v119 + 288));
  }

  dropThreadId(v191, 0, v143 + 1);
  v33 = queue;
  v32 = v150;
  v50 = add_explicit;
  v47 = v145;
LABEL_88:
  v121 = threadData[9 * v195 + 1] + 320 * v194;
  *(v121 + 312) = v47;
  v122 = *(v121 + 232);
  if (v122)
  {
    v122(*(v121 + 288));
  }

  dropThreadId(v195, 0, v50 + 1);
  v29 = v49;
  v28 = v48;
  v31 = dsema;
LABEL_91:
  if (v33)
  {
    dispatch_sync(v33, &__block_literal_global_130);
    dispatch_release(v33);
  }

  if (v32)
  {
    dispatch_sync(v32, &__block_literal_global_134);
    dispatch_release(v32);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  v123 = v148[1];
  if (v123)
  {
    CFRelease(v123);
  }

  if (*v148)
  {
    CFRelease(*v148);
  }

  free(v148);
  if (v196)
  {
    db_obj_iter_return_page(*&(*v153)[228]._os_unfair_lock_opaque, v196);
  }

  if (v30)
  {
    OSAtomicEnqueue(*(v3 + 96), v30, 0);
  }

  if (*(v3 + 230) == 1)
  {
    v125 = *(v3 + 184);
    if (*(v125 + 1488 + 8 * v156))
    {
      _MDPlistBytesEndArray();
      _MDPlistBytesEndPlist();
    }

    if (*(v125 + 464 + 8 * v156))
    {
      _MDStoreOIDArrayEndBulkAdd();
      _MDStoreOIDArrayEndSequence();
      *(v125 + 8 * v156 + 3544) = 0;
    }
  }

  v126 = *(v3 + 64);
  if (v126)
  {
    (*(v126 + 16))(v126, 1, v154, 0, 0, 0);
  }

  v127 = *&(*v153)[26]._os_unfair_lock_opaque;
  if ((*(v127 + 96) & 1) == 0)
  {
    v128 = *&(*v153)[26]._os_unfair_lock_opaque;
    do
    {
      v129 = v128;
      v128 = *(v128 + 80);
    }

    while (v128);
    if (*(*(v129 + 8) + 12) != 1)
    {
      goto LABEL_119;
    }
  }

  v130 = *__error();
  v131 = _SILogForLogForCategory(1);
  v132 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v131, v132))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v131, v132, "Query was canceled", buf, 2u);
  }

  *__error() = v130;
  v127 = *&(*v153)[26]._os_unfair_lock_opaque;
  if (*(v127 + 96))
  {
    v135 = 1;
  }

  else
  {
LABEL_119:
    v133 = v127;
    do
    {
      v134 = v133;
      v133 = *(v133 + 80);
    }

    while (v133);
    v135 = *(*(v134 + 8) + 12);
  }

  db_obj_subiter_release(v152, v135 & 1, v124);
  *(*(v3 + 200) + 8 * v156) = v28;
  *(*(v3 + 208) + 8 * v156) = v29;
  _Block_object_dispose(&keyCallBacks, 8);
}

intptr_t ___ZL12processItemsP14datastore_infommP24si_localized_value_cachePmbU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmS4_ES4_ooPtmPhbjmbP16dispatch_queue_sS4_jP14__MDPlistBytes14ranking_mode_sP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tP19PartialQueryResultsRP20SISearchCtx_METADATAiRbP10ReadData_sPV3__0P22ci_combobits_wrapped_sP20dispatch_semaphore_s_block_invoke_155(uint64_t a1)
{
  v2 = a1 + 160;
  v3 = *(a1 + 160);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(v3 + 848);
  if (v8)
  {
    v9 = *(*(v3 + 840) + 48 * v8);
  }

  else
  {
    v9 = 0;
  }

  packItems(v6, v4, v5, v7, *(v2 - 56), *(v2 - 128), *(v2 - 120), *(v2 + 16), *(v2 - 112), *(v2 - 104), *(v2 - 48), *(v2 - 32), *(v2 - 24), *(v2 - 16), *(v2 - 8), v2, **(v2 + 8), *(v2 + 16), *(v2 + 24), v9, *(a1 + 212));
  v10 = *(a1 + 200);

  return dispatch_semaphore_signal(v10);
}

uint64_t SISearchCtx_METADATA::photosDerivedAttributes(SISearchCtx_METADATA *this, datastore_info *a2)
{
  result = *(this + 155);
  if (!result)
  {
    os_unfair_lock_lock(&SISearchCtx_METADATA::photosDerivedAttributes(datastore_info *)::initLock);
    if (!*(this + 155))
    {
      v5 = *(this + 90);
      v6 = 8 * v5;
      if (((v5 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v6 > *MEMORY[0x1E69E9AC8])
      {
        ++sTotal;
      }

      v8 = malloc_type_zone_calloc(queryZone, 1uLL, v6, 0x5BAF1CEAuLL);
      if (!v8)
      {
        _log_fault_for_malloc_failure();
      }

      v9 = *(this + 90);
      if (v9 >= 1)
      {
        for (i = 0; i < v9; v8[i++] = v11)
        {
          if (a2)
          {
            v11 = db_copy_field_ids_with_buffer(a2, off_1E81943C8[i], 0, 0);
            v9 = *(this + 90);
          }

          else
          {
            v11 = 0;
          }
        }
      }

      __dmb(0xBu);
      *(this + 155) = v8;
    }

    os_unfair_lock_unlock(&SISearchCtx_METADATA::photosDerivedAttributes(datastore_info *)::initLock);
    return *(this + 155);
  }

  return result;
}

uint64_t PartialQueryResults::prepare(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = this + 2512;
  if (*(this + 2512 + 8 * a4) >= 0xFFFDuLL)
  {
    v6 = this;
    if (*(this + 1488 + 8 * a4))
    {
      if (*(this + 464 + 8 * a4))
      {
        _MDPlistBytesEndArray();
        _MDPlistBytesEndPlist();
        _MDStoreOIDArrayEndBulkAdd();
        _MDStoreOIDArrayEndSequence();
        *(v6 + 8 * a4 + 3544) = 0;
        _MDPlistBytesBeginPlist();
        _MDPlistBytesBeginArray();
        _MDPlistBytesAddNull();
        _MDStoreOIDArrayBeginSequence();
        this = _MDStoreOIDArrayBeginBulkAdd();
        *(v4 + 8 * a4) = 0;
        return this;
      }

      v10 = __si_assert_copy_extra_332();
      v8 = v10;
      v11 = "";
      if (v10)
      {
        v11 = v10;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx.h", 955, "fOids[slot]", v11);
    }

    else
    {
      v7 = __si_assert_copy_extra_332();
      v8 = v7;
      v9 = "";
      if (v7)
      {
        v9 = v7;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx.h", 954, "fPlistBytes[slot]", v9);
    }

    free(v8);
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

  return this;
}

void extractSynonymUnalignedMatchingField(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, uint64_t a11, query_node **a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x1EEE9AC00](a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v135[256] = *MEMORY[0x1E69E9840];
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  if (db_get_field_by_id(v24, v22, v28, &v130, &v129))
  {
    return;
  }

  if ((~*(v130 + 2) & 0x30) == 0)
  {
    return;
  }

  if (!v129)
  {
    return;
  }

  v29 = *(v130 + 8);
  if (db_get_field_by_id(v25, v23, v15, &v128, &v127))
  {
    return;
  }

  v99 = v17;
  v31 = &v93;
  v32 = v29 >> 3;
  MEMORY[0x1EEE9AC00](v30);
  v104 = &v93 - v33;
  bzero(&v93 - v33, v34);
  os_unfair_lock_lock((v27 + 1216));
  if (!*(v27 + 1208))
  {
    v35 = malloc_type_malloc(0x48uLL, 0x2004093837F09uLL);
    v36 = 0;
    *(v27 + 1208) = v35;
    do
    {
      *(*(v27 + 1208) + v36) = 0;
      v36 += 8;
    }

    while (v36 != 72);
  }

  if (v29 < 8)
  {
    os_unfair_lock_unlock((v27 + 1216));
    return;
  }

  v98 = v21;
  v96 = v19;
  v37 = 0;
  v106 = 0;
  v97 = a13;
  v100 = a12;
  v103 = a14;
  v102 = a11;
  v105 = v32;
  do
  {
    v38 = *(v128 + 8 * v37 + 13);
    if (v38 <= 8)
    {
      v39 = *(v129 + 8 * v37);
      v40 = *(*(v27 + 1208) + 8 * v38);
      if (!v40)
      {
        v40 = SIUINT64SetCreate(kCIQueryZoneAllocator);
        *(*(v27 + 1208) + 8 * v38) = v40;
      }

      if (SIValueSet<unsigned long long>::SIValueSetInsert((v40 + 16), v39))
      {
        v41 = v106;
        *&v104[4 * v106] = v37;
        v106 = v41 + 1;
      }

      v32 = v105;
    }

    ++v37;
  }

  while (v32 != v37);
  os_unfair_lock_unlock((v27 + 1216));
  if (!v106)
  {
    return;
  }

  v42 = v97;
  if (v97 < 1)
  {
    v47 = 0;
    v46 = v96;
    goto LABEL_26;
  }

  v43 = 0;
  v44 = v100;
  do
  {
    v45 = *v44++;
    v43 |= isQueryNodePhotosSceneTypedIdentifier(v45);
    --v42;
  }

  while (v42);
  v46 = v96;
  if ((v43 & 1) == 0 || (v110 = 0, v126 = 0, bzero(v135, 0x800uLL), LODWORD(v118) = 2048, db_get_field_by_id(v25, v23, a10, &v110, &v126)) || (v62 = copyDataForUniquedValue(v25, *(v110 + 13), v135, &v118), (v126 = v62) == 0))
  {
    v47 = 0;
LABEL_26:
    v48 = v98;
    goto LABEL_27;
  }

  v48 = v98;
  if (v118 >= 4)
  {
    v63 = 0;
    LODWORD(v64) = 0;
    v94 = 0;
    v65 = v118 >> 2;
    v101 = v123;
    v66 = v106;
    v67 = v104;
    v95 = &v93;
    v93 = v65;
    do
    {
      v68 = v64;
      do
      {
        v64 = v68;
        v69 = *&v67[4 * v68++];
      }

      while (v63 > v69 && v64 < v66);
      if (v63 == v69)
      {
        v125 = 1;
        v131 = 0;
        v132 = &v131;
        v133 = 0x2000000000;
        v71 = v100;
        v72 = v97;
        v134 = 0;
        do
        {
          v73 = *v71;
          if (isQueryNodePhotosSceneTypedIdentifier(*v71))
          {
            v74 = *(v27 + 152);
            v122[0] = MEMORY[0x1E69E9820];
            v122[1] = 0x40000000;
            v123[0] = ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke;
            v123[1] = &unk_1E8194488;
            v123[2] = &v131;
            v124 = v63;
            v123[3] = v102;
            v123[4] = v129;
            v123[5] = v103;
            v123[6] = v128;
            db_query_enumerate_matched_qps_for_dbf(v25, v73, v110, v126 + 4 * v63, &v125, v74, v122);
          }

          ++v71;
          --v72;
        }

        while (v72);
        if ((v132[3] & 1) == 0)
        {
          v75 = v94;
          *&v104[4 * v94] = v63;
          v94 = v75 + 1;
        }

        v31 = v95;
        v48 = v98;
        _Block_object_dispose(&v131, 8);
        v67 = v104;
        v65 = v93;
      }

      ++v63;
    }

    while (v63 < v65 && v106 > v64);
    v62 = v126;
    v32 = v105;
    v46 = v96;
    v47 = v94;
  }

  else
  {
    v47 = 0;
  }

  if (v62 != v135)
  {
    free(v62);
  }

LABEL_27:
  v125 = 0;
  v126 = 0;
  bzero(v135, 0x800uLL);
  if (!db_get_field_by_id(v25, v23, v48, &v126, &v125))
  {
    if ((~*(v126 + 2) & 0x30) != 0 || *v126 != 11)
    {
      v47 = 0;
    }

    else
    {
      v95 = v31;
      v49 = *(v126 + 13);
      LODWORD(v118) = 2048;
      v125 = copyDataForUniquedValue(v25, v49, v135, &v118);
      v50 = v118;
      if (v118)
      {
        v51 = 0;
        LODWORD(v52) = 0;
        v53 = 0;
        v101 = v120;
        v54 = v106;
        v55 = v104;
        do
        {
          v56 = v52;
          do
          {
            v52 = v56;
            v57 = *&v55[4 * v56++];
          }

          while (v51 > v57 && v52 < v54);
          if (v51 == v57 && v51 < v105)
          {
            v110 = 1;
            v131 = 0;
            v132 = &v131;
            v133 = 0x2000000000;
            v134 = 0;
            v60 = *(v27 + 152);
            v61 = *v100;
            v119[0] = MEMORY[0x1E69E9820];
            v119[1] = 0x40000000;
            v120[0] = ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_2;
            v120[1] = &unk_1E81944B0;
            v120[2] = &v131;
            v120[3] = v102;
            v121 = v51;
            v120[4] = v129;
            v120[5] = v103;
            v120[6] = v128;
            db_query_enumerate_matched_qps_for_dbf(v25, v61, v126, v125 + 4 * v51, &v110, v60, v119);
            if ((v132[3] & 1) == 0)
            {
              *&v104[4 * v53++] = v51;
            }

            _Block_object_dispose(&v131, 8);
            v55 = v104;
          }

          ++v51;
        }

        while (v51 < v50 && v106 > v52);
      }

      else
      {
        v53 = 0;
      }

      v31 = v95;
      v46 = v96;
      v32 = v105;
      v47 = v53;
    }

    if (v125 != v135)
    {
      free(v125);
    }
  }

  if (v47)
  {
    bzero(&v131, 0x800uLL);
    v117 = 0;
    v118 = 0;
    if (!db_get_field_by_id(v25, v23, v99, &v118, &v117) && (~*(v118 + 2) & 0x30) != 0)
    {
      v115 = 0;
      v116 = 0;
      if (!db_get_field_by_id(v25, v23, v46, &v116, &v115) && (~*(v116 + 2) & 0x30) == 0 && *v116 == 11)
      {
        v76 = v47;
        v77 = *(v116 + 13);
        v114 = 2048;
        v78 = copyDataForUniquedValue(v25, v77, &v131, &v114);
        v115 = v78;
        if (v114 >= 4)
        {
          v95 = v31;
          v79 = 0;
          LODWORD(v80) = 0;
          v81 = 0;
          v82 = v114 >> 2;
          v83 = v76;
          v84 = v104;
          v106 = v114 >> 2;
          v101 = v76;
          while (1)
          {
            v85 = *&v84[4 * v79];
            if (v85 <= v80 || v80 >= v32)
            {
              if (v80 < v32)
              {
                v87 = v117;
LABEL_94:
                v110 = 0;
                v111 = &v110;
                v112 = 0x2000000000;
                v113 = 0;
                v88 = *(v87 + 8 * v80);
                v89 = v81 + v88;
                if (v81 < v81 + v88)
                {
                  v90 = 4 * v81;
                  do
                  {
                    if (v111[3])
                    {
                      break;
                    }

                    v109 = 1;
                    v91 = *(v27 + 152);
                    v92 = *v100;
                    v107[0] = MEMORY[0x1E69E9820];
                    v107[1] = 0x40000000;
                    v107[2] = ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_3;
                    v107[3] = &unk_1E81944D8;
                    v107[4] = &v110;
                    v107[5] = v102;
                    v108 = v80;
                    v107[6] = v129;
                    v107[7] = v103;
                    v107[8] = v128;
                    db_query_enumerate_matched_qps_for_dbf(v25, v92, v116, v115 + v90, &v109, v91, v107);
                    v90 += 4;
                    LODWORD(v88) = v88 - 1;
                  }

                  while (v88);
                }

                _Block_object_dispose(&v110, 8);
                v81 = v89;
                v32 = v105;
                v82 = v106;
                v83 = v101;
              }
            }

            else
            {
              v87 = v117;
              v80 = v80;
              do
              {
                v81 += *(v117 + 8 * v80++);
              }

              while (v80 < v85 && v80 < v32);
              if (v80 < v32)
              {
                goto LABEL_94;
              }
            }

            v84 = v104;
            if (v81 < v82)
            {
              ++v79;
              LODWORD(v80) = v80 + 1;
              if (v79 < v83)
              {
                continue;
              }
            }

            v78 = v115;
            break;
          }
        }

        if (v78 != &v131)
        {
          free(v78);
        }
      }
    }
  }
}

void extractPersonUnalignedMatchingField(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, query_node **a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v124 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v157[256] = *MEMORY[0x1E69E9840];
  v148 = 0;
  v147 = 0;
  bzero(v157, 0x800uLL);
  if (!db_get_field_by_id(v24, v22, v14, &v148, &v147))
  {
    if ((~*(v148 + 2) & 0x30) != 0)
    {
      v29 = *(v148 + 8);
      if (!v147)
      {
        return;
      }
    }

    else
    {
      v28 = *(v148 + 13);
      LODWORD(v153) = 2048;
      v147 = copyDataForUniquedValue(v24, v28, v157, &v153);
      v29 = v153;
      if (!v147)
      {
        return;
      }
    }

    v119 = v20;
    v116 = v16;
    v30 = v29 >> 2;
    MEMORY[0x1EEE9AC00](v27);
    v32 = &v111 - v31;
    bzero(&v111 - v31, v33);
    os_unfair_lock_lock((v26 + 1232));
    if (!*(v26 + 1224))
    {
      *(v26 + 1224) = SIUINT32SetCreate(kCIQueryZoneAllocator);
    }

    if (v29 < 4)
    {
      os_unfair_lock_unlock((v26 + 1232));
      return;
    }

    v115 = v22;
    v123 = v24;
    v34 = 0;
    v35 = 0;
    v120 = a11;
    v118 = a10;
    v122 = a12;
    do
    {
      if ((SIUINT32SetContainsValue(*(v26 + 1224), v147[v34]) & 1) == 0)
      {
        *&v32[4 * v35++] = v34;
      }

      ++v34;
    }

    while (v30 != v34);
    os_unfair_lock_unlock((v26 + 1232));
    if (v35)
    {
      v112 = v18;
      v113 = &v111;
      v121 = v26;
      v117 = v30;
      if (v120 >= 1)
      {
        v36 = 0;
        v37 = v118;
        v38 = v120;
        do
        {
          v39 = *v37++;
          v36 |= isQueryNodePhotosPersonIdentifier(v39);
          --v38;
        }

        while (v38);
        if ((v36 & 1) != 0 && (~*(v148 + 2) & 0x30) == 0)
        {
          v40 = 0;
          LODWORD(v41) = 0;
          v114 = 0;
          do
          {
            v42 = v41;
            do
            {
              v41 = v42;
              v43 = *&v32[4 * v42++];
            }

            while (v40 > v43 && v41 < v35);
            if (v40 == v43)
            {
              v149 = 1;
              v153 = 0;
              v154 = &v153;
              v155 = 0x2000000000;
              v45 = v118;
              v46 = v120;
              v156 = 0;
              do
              {
                v47 = *v45;
                if (isQueryNodePhotosPersonIdentifier(*v45))
                {
                  v48 = *(v121 + 152);
                  v145[0] = MEMORY[0x1E69E9820];
                  v145[1] = 0x40000000;
                  v145[2] = ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke;
                  v145[3] = &unk_1E8194500;
                  v145[4] = &v153;
                  v145[5] = v147;
                  v146 = v40;
                  v145[6] = v124;
                  v145[7] = v122;
                  v145[8] = v123;
                  db_query_enumerate_matched_qps_for_dbf(v123, v47, v148, &v147[v40], &v149, v48, v145);
                }

                ++v45;
                --v46;
              }

              while (v46);
              if ((v154[3] & 1) == 0)
              {
                v49 = v114;
                *&v32[4 * v114] = v40;
                v114 = v49 + 1;
              }

              v30 = v117;
              _Block_object_dispose(&v153, 8);
            }

            ++v40;
          }

          while (v40 < v30 && v35 > v41);
        }
      }

      v143 = 0;
      v144 = 0;
      bzero(&v153, 0x800uLL);
      v50 = v123;
      if (!db_get_field_by_id(v123, v115, v119, &v144, &v143))
      {
        if ((~*(v144 + 2) & 0x30) != 0 || *v144 != 11)
        {
          v55 = 0;
        }

        else
        {
          v51 = *(v144 + 13);
          LODWORD(v139) = 2048;
          v143 = copyDataForUniquedValue(v50, v51, &v153, &v139);
          v52 = v139;
          if (v139)
          {
            v53 = 0;
            LODWORD(v54) = 0;
            v55 = 0;
            v119 = v141;
            do
            {
              v56 = v54;
              do
              {
                v54 = v56;
                v57 = *&v32[4 * v56++];
              }

              while (v53 > v57 && v54 < v35);
              if (v53 == v57 && v53 < v117)
              {
                v131 = 1;
                v149 = 0;
                v150 = &v149;
                v151 = 0x2000000000;
                v60 = v118;
                v61 = v120;
                v152 = 0;
                if (v120 < 1)
                {
                  goto LABEL_63;
                }

                do
                {
                  v62 = *v60;
                  if (*v60)
                  {
                    if (v62->var6 == 4)
                    {
                      var2 = v62->var2;
                      if (var2)
                      {
                        v64 = *var2;
                        if (v64)
                        {
                          if (*v64 == 42 && !v64[1])
                          {
                            v65 = *(v121 + 152);
                            v140[0] = MEMORY[0x1E69E9820];
                            v140[1] = 0x40000000;
                            v141[0] = ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_2;
                            v141[1] = &unk_1E8194528;
                            v141[2] = &v149;
                            v141[3] = v147;
                            v142 = v53;
                            v141[4] = v121;
                            v141[5] = v124;
                            v141[6] = v122;
                            v141[7] = v123;
                            db_query_enumerate_matched_qps_for_dbf(v123, v62, v144, v143 + 4 * v53, &v131, v65, v140);
                          }
                        }
                      }
                    }
                  }

                  ++v60;
                  --v61;
                }

                while (v61);
                if ((v150[3] & 1) == 0)
                {
LABEL_63:
                  *&v32[4 * v55++] = v53;
                }

                _Block_object_dispose(&v149, 8);
              }

              ++v53;
            }

            while (v53 < v52 && v35 > v54);
          }

          else
          {
            v55 = 0;
          }

          v50 = v123;
          v30 = v117;
        }

        if (v143 != &v153)
        {
          free(v143);
        }

        if (v55)
        {
          bzero(&v149, 0x800uLL);
          v138 = 0;
          v139 = 0;
          v66 = v115;
          if (!db_get_field_by_id(v50, v115, v116, &v139, &v138) && (~*(v139 + 2) & 0x30) != 0)
          {
            v136 = 0;
            v137 = 0;
            if (!db_get_field_by_id(v50, v66, v112, &v137, &v136))
            {
              v67 = v137;
              if ((~*(v137 + 2) & 0x30) != 0 || *v137 != 11)
              {
                v88 = (v137 + 8);
                v89 = *(v137 + 8);
                if (v89)
                {
                  v90 = 0;
                  LODWORD(v91) = 0;
                  v92 = 0;
                  v119 = v126;
                  v115 = v55;
                  do
                  {
                    v93 = *&v32[4 * v90];
                    if (v93 <= v91)
                    {
                      goto LABEL_128;
                    }

                    v91 = v91;
                    do
                    {
                      v94 = *(v138 + 8 * v91);
                      if (v94)
                      {
                        for (i = 0; i != v94; ++i)
                        {
                          if (v92 < v89)
                          {
                            v92 = v92;
                            while (*(v136 + v92))
                            {
                              if (v89 == ++v92)
                              {
                                LODWORD(v92) = v89;
                                break;
                              }
                            }
                          }

                          v92 = (v92 + 1);
                        }
                      }

                      ++v91;
                    }

                    while (v91 < v93 && v91 < v30);
                    if (v91 < v30)
                    {
LABEL_128:
                      v131 = 0;
                      v132 = &v131;
                      v133 = 0x2000000000;
                      v134 = 0;
                      v96 = v92;
                      v97 = *(v138 + 8 * v91);
                      if (v97)
                      {
                        v98 = 0;
                        v99 = *v88;
                        LODWORD(v96) = v92;
                        do
                        {
                          if (v96 < v99)
                          {
                            v96 = v96;
                            while (*(v136 + v96))
                            {
                              if (v99 == ++v96)
                              {
                                LODWORD(v96) = v99;
                                break;
                              }
                            }
                          }

                          v96 = (v96 + 1);
                          ++v98;
                        }

                        while (v98 != v97);
                      }

                      v116 = v90;
                      if (v92 < v96)
                      {
                        v100 = &v131;
                        LODWORD(v101) = v92;
                        do
                        {
                          if (v100[3])
                          {
                            break;
                          }

                          v130 = 1;
                          if (v120 < 1)
                          {
                            goto LABEL_152;
                          }

                          v102 = v118;
                          v103 = 1;
                          do
                          {
                            v104 = *v102;
                            if (*v102 && *(v104 + 48) == 4 && (v105 = *(v104 + 16)) != 0 && (v106 = *v105) != 0 && *v106 == 42 && !v106[1] || isQueryNodeMatchingPersonNamesAlternatives(*v102))
                            {
                              v107 = *(v121 + 152);
                              v125[0] = MEMORY[0x1E69E9820];
                              v125[1] = 0x40000000;
                              v126[0] = ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_4;
                              v126[1] = &unk_1E8194578;
                              v126[2] = &v131;
                              v126[3] = v147;
                              v127 = v91;
                              v126[4] = v123;
                              v126[5] = v124;
                              v126[6] = v122;
                              db_query_enumerate_matched_qps_for_dbf(v123, v104, v137, v136 + v101, &v130, v107, v125);
                              v100 = v132;
                            }

                            if (v100[3])
                            {
                              break;
                            }

                            ++v102;
                            v87 = v103++ < v120;
                          }

                          while (v87);
                          if ((v100[3] & 1) == 0)
                          {
LABEL_152:
                            v108 = *(v137 + 8);
                            if (v101 < v108)
                            {
                              v101 = v101;
                              while (*(v136 + v101))
                              {
                                if (v108 == ++v101)
                                {
                                  LODWORD(v101) = *(v137 + 8);
                                  break;
                                }
                              }
                            }

                            LODWORD(v101) = v101 + 1;
                          }
                        }

                        while (v101 < v96);
                      }

                      _Block_object_dispose(&v131, 8);
                      v67 = v137;
                      v92 = v96;
                      v90 = v116;
                      v30 = v117;
                    }

                    v90 = (v90 + 1);
                    LODWORD(v91) = v91 + 1;
                    v88 = (v67 + 8);
                    v89 = *(v67 + 8);
                  }

                  while (v92 < v89 && v91 < v30 && v90 < v115);
                }
              }

              else
              {
                v68 = *(v137 + 13);
                v135 = 2048;
                v69 = copyDataForUniquedValue(v50, v68, &v149, &v135);
                v136 = v69;
                if (v135 >= 4)
                {
                  v70 = 0;
                  LODWORD(v71) = 0;
                  v72 = 0;
                  v73 = v135 >> 2;
                  v74 = v55;
                  LODWORD(v116) = v135 >> 2;
                  v115 = v55;
                  while (1)
                  {
                    v75 = *&v32[4 * v70];
                    if (v75 <= v71 || v71 >= v30)
                    {
                      if (v71 < v30)
                      {
                        v77 = v138;
LABEL_91:
                        v119 = v70;
                        v131 = 0;
                        v132 = &v131;
                        v133 = 0x2000000000;
                        v134 = 0;
                        v78 = v72 + *(v77 + 8 * v71);
                        if (v72 < v78)
                        {
                          v79 = v72;
                          v80 = &v131;
                          do
                          {
                            if (v80[3])
                            {
                              break;
                            }

                            v130 = 1;
                            if (v120 >= 1)
                            {
                              v81 = v118;
                              v82 = 1;
                              do
                              {
                                v83 = *v81;
                                if (*v81 && *(v83 + 48) == 4 && (v84 = *(v83 + 16)) != 0 && (v85 = *v84) != 0 && *v85 == 42 && !v85[1] || isQueryNodeMatchingPersonNamesAlternatives(*v81))
                                {
                                  v86 = *(v121 + 152);
                                  v128[0] = MEMORY[0x1E69E9820];
                                  v128[1] = 0x40000000;
                                  v128[2] = ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_3;
                                  v128[3] = &unk_1E8194550;
                                  v128[4] = &v131;
                                  v128[5] = v147;
                                  v129 = v71;
                                  v128[6] = v121;
                                  v128[7] = v124;
                                  v128[8] = v122;
                                  v128[9] = v123;
                                  db_query_enumerate_matched_qps_for_dbf(v123, v83, v137, v136 + 4 * v79, &v130, v86, v128);
                                  v80 = v132;
                                }

                                if (v80[3])
                                {
                                  break;
                                }

                                ++v81;
                                v87 = v82++ < v120;
                              }

                              while (v87);
                            }

                            ++v79;
                          }

                          while (v79 != v78);
                        }

                        _Block_object_dispose(&v131, 8);
                        v72 = v78;
                        v30 = v117;
                        v70 = v119;
                        v73 = v116;
                        v74 = v115;
                      }
                    }

                    else
                    {
                      v77 = v138;
                      v71 = v71;
                      do
                      {
                        v72 += *(v138 + 8 * v71++);
                      }

                      while (v71 < v75 && v71 < v30);
                      if (v71 < v30)
                      {
                        goto LABEL_91;
                      }
                    }

                    if (v72 < v73)
                    {
                      v70 = (v70 + 1);
                      LODWORD(v71) = v71 + 1;
                      if (v70 < v74)
                      {
                        continue;
                      }
                    }

                    v69 = v136;
                    break;
                  }
                }

                if (v69 != &v149)
                {
                  free(v69);
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 pqpush_oid_and_rankinfo_t(void **a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
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

    a1[1] = v9;
    v10 = 112 * v9 + 224;
    if (*a1)
    {
      v11 = malloc_type_zone_realloc(queryZone, *a1, v10, 0xA1A7ADA0uLL);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, v10, 0x566E289CuLL);
    }

    v12 = v11;
    if (!v11)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v12;
    *v12 = ZERO_OIDINFO;
    v12[1] = *algn_1C2C006B0;
    v12[6] = xmmword_1C2C00700;
    v12[4] = xmmword_1C2C006E0;
    v12[5] = unk_1C2C006F0;
    v12[2] = xmmword_1C2C006C0;
    v12[3] = unk_1C2C006D0;
    v6 = a1[2];
  }

  a1[2] = v6 + 1;
  v13 = *a1 + 112 * v5;
  v14 = a2[2];
  v15 = *a2;
  *(v13 + 1) = a2[1];
  *(v13 + 2) = v14;
  result = a2[3];
  v17 = a2[4];
  v18 = a2[6];
  *(v13 + 5) = a2[5];
  *(v13 + 6) = v18;
  *(v13 + 3) = result;
  *(v13 + 4) = v17;
  *v13 = v15;
  if (v5 >= 2)
  {
    do
    {
      v19 = *a1;
      v20 = *a1 + 112 * v5;
      v21 = *(v20 + 16);
      result.n128_u32[0] = *(v20 + 17);
      v22 = v5 >> 1;
      v23 = *a1 + 112 * (v5 >> 1);
      v24 = *(v23 + 16);
      v25 = *(v23 + 17);
      if (v20[85])
      {
        v26 = *(v20 + 19);
        v27 = *(v23 + 19);
        if (v26 < v27)
        {
          goto LABEL_27;
        }

        if (v26 != v27)
        {
          return result;
        }
      }

      else
      {
        v30 = v20 + 16;
        v28 = *(v20 + 2);
        v29 = *(v30 + 1);
        v33 = v23 + 16;
        v31 = *(v23 + 2);
        v32 = *(v33 + 1);
        if (__PAIR128__(v29, v28) < __PAIR128__(v32, v31))
        {
          goto LABEL_27;
        }

        if (v29 != v32 || v28 != v31)
        {
          return result;
        }
      }

      if (result.n128_f32[0] >= v25 && (result.n128_f32[0] != v25 || v21 < v24))
      {
        return result;
      }

LABEL_27:
      v36 = &v19[112 * v5];
      v48 = v36[4];
      v49 = v36[5];
      v50 = v36[6];
      v44 = *v36;
      v45 = v36[1];
      v46 = v36[2];
      v47 = v36[3];
      v37 = &v19[112 * v22];
      v39 = v37[1];
      v38 = v37[2];
      *v36 = *v37;
      v36[1] = v39;
      v36[2] = v38;
      v40 = v37[6];
      v42 = v37[3];
      v41 = v37[4];
      v36[5] = v37[5];
      v36[6] = v40;
      v36[3] = v42;
      v36[4] = v41;
      v43 = (*a1 + 112 * v22);
      *v43 = v44;
      v43[1] = v45;
      v43[5] = v49;
      v43[6] = v50;
      v43[3] = v47;
      v43[4] = v48;
      result = v46;
      v43[2] = v46;
      v8 = v5 > 3;
      v5 >>= 1;
    }

    while (v8);
  }

  return result;
}

uint64_t eventParseDBO(uint64_t a1, uint64_t a2, uint64_t a3, PartialQueryResults *a4, char **a5, _DWORD *a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, uint64_t a12, int a13, char a14, uint64_t a15, CFMutableDictionaryRef *a16, uint64_t a17, void *a18)
{
  v210 = a8;
  v217 = a7;
  v242[1] = *MEMORY[0x1E69E9840];
  v240 = a13;
  v241 = a14;
  v216 = a1;
  v23 = *(a1 + 1192);
  v24 = (*(*a6 + 32))(a6);
  if (!v24)
  {
    v178 = __si_assert_copy_extra_332();
    v43 = v178;
    v179 = "";
    if (v178)
    {
      v179 = v178;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6457, "oid", v179);
    goto LABEL_161;
  }

  v224 = v23;
  v25 = a6[2];
  v27 = a2 + 16;
  v26 = *(a2 + 16);
  v219 = v24;
  v211 = a3;
  v228 = v26(a2, 2);
  v29 = *(a4 + 29);
  v218 = (a4 + 232);
  if ((v25 & 8) != 0 || (v30 = *(a4 + 31)) == 0)
  {
    v230 = 0;
    CountOfBit = v29;
  }

  else
  {
    v230 = *(a4 + 31);
    v243.location = 0;
    v243.length = v29;
    CountOfBit = CFBitVectorGetCountOfBit(v30, v243, 1u);
  }

  v226 = 0;
  v222 = a5;
  if (v224 && v29)
  {
    v226 = (*(*a6 + 16))(a6);
  }

  v31 = *v218;
  v227 = v29;
  if (v31 && !*(a4 + 28))
  {
    if (*a4 == 1)
    {
      v32 = *(a4 + 13);
      if (v32)
      {
LABEL_22:
        PartialQueryResults::setupFixedFunctionVector(a4, v32, a4 + 28);
        v29 = v227;
        goto LABEL_23;
      }

      v33 = *(a4 + 16);
      if (v33)
      {
        v236[0].n128_u64[0] = 0;
        SIFlattenArrayToCStringVector(v33, a4 + 13, v236[0].n128_u64, v239);
        v32 = *(a4 + 13);
        goto LABEL_22;
      }

LABEL_21:
      v32 = 0;
      goto LABEL_22;
    }

    v32 = *(a4 + 12);
    if (v32)
    {
      goto LABEL_22;
    }

    v34 = *(a4 + 15);
    if (!v34)
    {
      goto LABEL_21;
    }

    SIFlattenArrayToCStringVector(v34, a4 + 12, a4 + 30, v218);
    v32 = *(a4 + 12);
    if (v32)
    {
      goto LABEL_22;
    }

    v35 = __si_assert_copy_extra_332();
    v43 = v35;
    v44 = "";
    if (v35)
    {
      v44 = v35;
    }

    __message_assert_336(v35, v36, v37, v38, v39, v40, v41, v42, "SISearchCtx.h", 998, "fAttributeVector", v44);
LABEL_161:
    free(v43);
    if (__valid_fs(-1))
    {
      v171 = 2989;
    }

    else
    {
      v171 = 3072;
    }

    *v171 = -559038737;
    abort();
  }

LABEL_23:
  v223 = *(a4 + 28);
  MEMORY[0x1EEE9AC00](v28);
  v229 = &v194 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v229, v45);
  v221 = a4;
  v46 = v226;
  if (!v226)
  {
    goto LABEL_37;
  }

  if (*v218)
  {
    v47 = a4;
    v49 = *(a4 + 18);
    v48 = (a4 + 144);
    if (v49)
    {
      v50 = 144;
      if ((v25 & 8) == 0)
      {
        v50 = 160;
      }

      v51 = *(v47 + v50);
      a4 = v47;
      goto LABEL_29;
    }

    v162 = PartialQueryResults::attributeIdVector(v47, v224);
    PartialQueryResults::setupFieldIdVector(v47, v162, v47 + 19, v48, 0);
    PartialQueryResults::setupFieldIdVector(v47, v162, v47 + 21, v47 + 20, 1);
    v163 = 144;
    if ((v25 & 8) == 0)
    {
      v163 = 160;
    }

    v51 = *(v47 + v163);
    if (!*(v47 + 29))
    {
      a4 = v221;
LABEL_29:
      v29 = v227;
      goto LABEL_33;
    }

    v29 = v227;
    if (*v48)
    {
      a4 = v221;
    }

    else
    {
      v164 = v221;
      v165 = PartialQueryResults::attributeIdVector(v221, v224);
      v166 = (v164 + 152);
      v167 = v164;
      v168 = v48;
      a4 = v164;
      v29 = v227;
      PartialQueryResults::setupFieldIdVector(v167, v165, v166, v168, 0);
      PartialQueryResults::setupFieldIdVector(a4, v165, a4 + 21, a4 + 20, 1);
    }
  }

  else
  {
    v52 = 144;
    if ((v25 & 8) == 0)
    {
      v52 = 160;
    }

    v51 = *(a4 + v52);
  }

LABEL_33:
  v53 = 152;
  if ((v25 & 8) == 0)
  {
    v53 = 168;
  }

  v54 = v51;
  v46 = v226;
  db_get_offsets_for_fields(v224, v226, v54, *(a4 + v53), v229);
  if (*v46 && *v46 != v219)
  {
    v189 = __si_assert_copy_extra_332();
    v173 = v189;
    v190 = "";
    if (v189)
    {
      v190 = v189;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6490, "!dbo || !dbo->oid || dbo->oid == oid", v190);
LABEL_171:
    free(v173);
    if (__valid_fs(-1))
    {
LABEL_172:
      v177 = 2989;
    }

    else
    {
      v177 = 3072;
    }

    *v177 = -559038737;
    abort();
  }

LABEL_37:
  v215 = a6;
  v239[1] = 0;
  v239[2] = 0;
  v239[0] = v46;
  if (v29)
  {
    v55 = 0;
    v56 = 0;
    v205 = a17;
    v198 = v233;
    v197 = v235;
    v204 = a11;
    v201 = a11;
    v220 = a16;
    v206 = a15;
    v207 = a12;
    v208 = a9;
    v203 = v25 & 1;
    if (a17)
    {
      v57 = a18 == 0;
    }

    else
    {
      v57 = 1;
    }

    v58 = v57;
    v202 = v58;
    v199 = v238;
    v200 = a18;
    v59 = &unk_1E81941A0;
    v60 = &unk_1E81941F0;
    do
    {
      if (v230)
      {
        if (!CFBitVectorGetBitAtIndex(v230, v56))
        {
          v61 = v55;
          goto LABEL_147;
        }
      }

      else
      {
        if (v55 != v56)
        {
          v172 = __si_assert_copy_extra_332();
          v173 = v172;
          v174 = "";
          if (v172)
          {
            v174 = v172;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6498, "dbfIndex == j", v174);
          goto LABEL_171;
        }

        if (CountOfBit != v29)
        {
          v175 = __si_assert_copy_extra_332();
          v173 = v175;
          v176 = "";
          if (v175)
          {
            v176 = v175;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6499, "packCount == attributeCount", v176);
          goto LABEL_171;
        }
      }

      if (v55 >= CountOfBit)
      {
        v169 = __si_assert_copy_extra_332();
        v43 = v169;
        v170 = "";
        if (v169)
        {
          v170 = v169;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6505, "dbfIndex < packCount", v170);
        goto LABEL_161;
      }

      v61 = v55 + 1;
      v62 = *&v229[8 * v55];
      if (v62)
      {
        v63 = *v62;
        if ((v63 - 1) <= 0xF)
        {
          v64 = *(a2 + 16);
          v225 = v61;
          v65 = v60;
          v66 = v59;
          v67 = v228;
          v68 = v64(a2, 4, 0, 0, v56, v228);
          eventParseField(v62, v63, a2, v68, v224, v222, v220, v56);
          v69 = v68;
          a4 = v221;
          v70 = v67;
          v59 = v66;
          v60 = v65;
          v61 = v225;
          (*(a2 + 16))(a2, 5, v69, 0, v56, v70);
        }
      }

      else
      {
        v71 = v226;
        if (v226 && *(v223 + 4 * v56))
        {
          v72 = (*(a2 + 16))(a2, 4, 0, 0, v56, v228);
          v74 = v72;
          switch(*(v223 + 4 * v56))
          {
            case 1:
              v119 = v71;
              v98 = v74;
              v120 = dateScaled(v119, v224, a4);
              v101 = v120 * v120;
              goto LABEL_91;
            case 2:
            case 5:
              v75 = *v207;
              v76 = *(v207 + 8);
              v77 = *(a2 + 16);
              v78 = a2;
              v79 = 24;
              goto LABEL_105;
            case 3:
              if (v204)
              {
                v77 = *(a2 + 16);
                v78 = a2;
                v79 = 20;
                v75 = v201;
LABEL_104:
                v76 = 0;
LABEL_105:
                v124 = v56;
                v125 = v74;
                v98 = v74;
LABEL_116:
                v77(v78, v79, v75, v76, v124, v125);
              }

              else
              {
                v196 = v72;
                if (!v208)
                {
LABEL_130:
                  v77 = *(a2 + 16);
                  v78 = a2;
                  v79 = 20;
                  v75 = 0;
                  v76 = 0;
                  v124 = v56;
                  v98 = v196;
                  goto LABEL_115;
                }

                v153 = 0;
                while (!grouping_db_eval_obj_with_options(v73))
                {
                  if (v208 == ++v153)
                  {
                    goto LABEL_130;
                  }
                }

                v160 = (v153 + 1);
                v98 = v196;
                (*(a2 + 16))(a2, 20, v160, 0, v56, v196);
              }

LABEL_117:
              (*(a2 + 16))(a2, 5, v98, 0, v56, v228);
              break;
            case 4:
              v209 = v56;
              v92 = a2;
              v93 = v61;
              v94 = v60;
              v95 = v27;
              v96 = v59;
              v97 = v71;
              v98 = v72;
              PartialQueryResults::messageAttrIds(v236, a4, v224);
              v99 = si_fancyMailRelevance(v97, v236);
              v100 = v97;
              v59 = v96;
              v27 = v95;
              v60 = v94;
              v61 = v93;
              a2 = v92;
              v56 = v209;
              v101 = v99 + dateScaled(v100, v224, a4) * 0.05 * 0.000244140625;
LABEL_91:
              v77 = *(a2 + 16);
              v75 = *&v101;
              v78 = a2;
              v79 = 27;
              goto LABEL_114;
            case 6:
              v87 = &v240;
              v88 = a2;
              v89 = v74;
              v90 = v56;
              v91 = 2;
              v98 = v74;
              v121 = 5;
              goto LABEL_102;
            case 7:
              v77 = *(a2 + 16);
              v78 = a2;
              v79 = 15;
              v75 = v203;
              goto LABEL_104;
            case 8:
              v75 = *(v207 + 64);
              v77 = *(a2 + 16);
              v78 = a2;
              v79 = 26;
              goto LABEL_104;
            case 9:
              if (v202)
              {
                goto LABEL_113;
              }

              v140 = v72;
              matched = TokenMatchNew(kCIQueryZoneAllocator);
              v237[0] = MEMORY[0x1E69E9820];
              v237[1] = 0x40000000;
              v238[0] = __eventParseDBO_block_invoke;
              v238[1] = &__block_descriptor_tmp_57_5776;
              v238[2] = matched;
              enumerate_matching_query_pieces(v205, v224, v226, v222, 0, v200, v237);
              TokenMatchConvertToSnippetHints(matched);
              v142 = *(a2 + 16);
              v196 = v140;
              v143 = v140;
              v144 = matched;
              v145 = v142(a2, 6, 0, 0, v56, v143);
              v146 = matched[2];
              if (matched[3] != v146)
              {
                v147 = 0;
                v148 = 0;
                v209 = v56;
                v225 = v61;
                do
                {
                  (*(a2 + 16))(a2, 29, *(v146 + 56 * v148 + 8), *(v146 + 56 * v148 + 16), v147++, v145);
                  v146 = v144[2];
                  v149 = *(v146 + 56 * v148 + 24);
                  if (*(v146 + 56 * v148 + 32) != v149)
                  {
                    v150 = 0;
                    v151 = 0;
                    do
                    {
                      (*(a2 + 16))(a2, 29, *(v149 + v150), *(v149 + v150 + 8), v147, v145);
                      ++v151;
                      ++v147;
                      v146 = v144[2];
                      v149 = *(v146 + 56 * v148 + 24);
                      v150 += 24;
                    }

                    while (v151 < 0xAAAAAAAAAAAAAAABLL * ((*(v146 + 56 * v148 + 32) - v149) >> 3));
                    v56 = v209;
                    v61 = v225;
                  }

                  ++v148;
                }

                while (v148 < 0x6DB6DB6DB6DB6DB7 * ((v144[3] - v146) >> 3));
              }

              v152 = v144;
              v98 = v196;
              (*(a2 + 16))(a2, 7, v145, 0, v56, v196);
              TokenMatchFree(v152);
              a4 = v221;
              v29 = v227;
              v59 = &unk_1E81941A0;
              v60 = &unk_1E81941F0;
              goto LABEL_117;
            case 0xA:
              v104 = v205;
              if (!v205)
              {
                goto LABEL_113;
              }

              v225 = v61;
              v236[0].n128_u64[0] = 0;
              v105 = v72;
              v214 = (*(*v205 + 72))(v205, v236);
              v106 = *(a2 + 16);
              v195 = v27;
              v196 = v105;
              v107 = v106(a2, 6, 0, 0, v56, v105);
              v108 = v222;
              v109 = v224;
              v110 = v226;
              v111 = v59;
              if (v236[0].n128_i64[0] >= 1)
              {
                v112 = v104;
                v113 = 0;
                v213 = MEMORY[0x1E69E9820];
                v212 = __eventParseDBO_block_invoke_2;
                do
                {
                  v114 = *(v214 + 8 * v113);
                  v234[0] = v213;
                  v234[1] = 0x40000000;
                  v235[0] = v212;
                  v235[1] = v111;
                  v235[2] = a2;
                  v235[3] = v56;
                  v235[4] = v107;
                  v115 = v109;
                  v116 = v111;
                  v117 = v107;
                  enumerate_matching_query_pieces(v112, v109, v110, v108, 0, v114, v234);
                  v109 = v115;
                  v107 = v117;
                  v111 = v116;
                  ++v113;
                }

                while (v113 < v236[0].n128_i64[0]);
              }

              v118 = v195;
              v98 = v196;
              (*(a2 + 16))(a2, 7, v107, 0, v56, v196);
              a4 = v221;
              v29 = v227;
              v59 = v111;
              v27 = v118;
              v60 = &unk_1E81941F0;
              goto LABEL_111;
            case 0xB:
              v126 = v205;
              if (v205)
              {
                v225 = v61;
                v236[0].n128_u64[0] = 0;
                v127 = v72;
                v214 = (*(*v205 + 80))(v205, v236);
                v128 = *(a2 + 16);
                v195 = v27;
                v196 = v127;
                v129 = v128(a2, 6, 0, 0, v56, v127);
                v130 = v222;
                v131 = v224;
                v132 = v226;
                v133 = v60;
                if (v236[0].n128_i64[0] >= 1)
                {
                  v134 = v126;
                  v135 = 0;
                  v213 = MEMORY[0x1E69E9820];
                  v212 = __eventParseDBO_block_invoke_3;
                  do
                  {
                    v136 = *(v214 + 8 * v135);
                    v232[0] = v213;
                    v232[1] = 0x40000000;
                    v233[0] = v212;
                    v233[1] = v133;
                    v233[2] = a2;
                    v233[3] = v56;
                    v233[4] = v129;
                    v137 = v133;
                    v138 = v129;
                    enumerate_matching_query_pieces(v134, v131, v132, v130, 1, v136, v232);
                    v129 = v138;
                    v133 = v137;
                    ++v135;
                  }

                  while (v135 < v236[0].n128_i64[0]);
                }

                v139 = v195;
                v98 = v196;
                (*(a2 + 16))(a2, 7, v129, 0, v56, v196);
                a4 = v221;
                v29 = v227;
                v59 = &unk_1E81941A0;
                v60 = v133;
                v27 = v139;
LABEL_111:
                v61 = v225;
                goto LABEL_117;
              }

LABEL_113:
              v98 = v72;
              v75 = (*(a2 + 16))(a2, 6, 0, 0, v56, v72);
              v77 = *(a2 + 16);
              v78 = a2;
              v79 = 7;
LABEL_114:
              v76 = 0;
              v124 = v56;
LABEL_115:
              v125 = v98;
              goto LABEL_116;
            case 0xC:
              v85 = 0;
              v86 = v206;
              do
              {
                if ((*(v86 + v85) & 1) == 0)
                {
                  *(v86 + 4 * v85 + 4) = 2139095039;
                }

                ++v85;
              }

              while (v85 != 3);
              v87 = (v86 + 4);
              v88 = a2;
              v89 = v74;
              v90 = v56;
              v91 = 9;
              goto LABEL_101;
            case 0xD:
              v102 = 0;
              v103 = 0;
              do
              {
                if (*(v206 + v102))
                {
                  v103 |= 2u;
                }

                if (v102 > 1)
                {
                  break;
                }

                ++v102;
              }

              while ((v103 & 2) == 0);
              if (!v103 || *(v207 + 64) > 0.0)
              {
                v103 |= 1u;
              }

              v98 = v72;
              (*(a2 + 16))(a2, 20, v103, 0, v56, v72);
              goto LABEL_117;
            case 0xE:
              v122 = 0;
              v123 = v206;
              do
              {
                if ((*(v123 + v122) & 1) == 0)
                {
                  *(v123 + 4 * v122 + 16) = 0;
                }

                ++v122;
              }

              while (v122 != 3);
              v87 = (v123 + 16);
              v88 = a2;
              v89 = v74;
              v90 = v56;
              v91 = 6;
LABEL_101:
              v98 = v74;
              v121 = 3;
LABEL_102:
              addScalarArray(v88, v89, v90, v91, 0, v87, v121);
              goto LABEL_117;
            default:
              v191 = __si_assert_copy_extra_332();
              v192 = v191;
              if (v191)
              {
                v193 = v191;
              }

              else
              {
                v193 = "";
              }

              __message_assert("%s:%u: Unexpected code path %s ", "SISearchCtx_METADATA.cpp", 6523, v193);
              free(v192);
              goto LABEL_172;
          }

          goto LABEL_147;
        }

        v80 = *(a4 + 29);
        if (*a4 == 1)
        {
          if (v80 && !*(a4 + 25))
          {
            v81 = *(a4 + 13);
            if (!v81)
            {
              v82 = *(a4 + 16);
              if (v82)
              {
                v236[0].n128_u64[0] = 0;
                SIFlattenArrayToCStringVector(v82, a4 + 13, v236[0].n128_u64, v242);
                v81 = *(a4 + 13);
              }

              else
              {
                v81 = 0;
              }
            }

            PartialQueryResults::setupCannedAttributeVector(a4, v81, a4 + 25, v236);
          }

          v154 = 200;
        }

        else
        {
          if (v80 && !*(a4 + 24))
          {
            v83 = *(a4 + 12);
            if (!v83)
            {
              v84 = *(a4 + 15);
              if (v84)
              {
                SIFlattenArrayToCStringVector(v84, a4 + 12, a4 + 30, v218);
                v83 = *(a4 + 12);
                if (!v83)
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v83 = 0;
              }
            }

            PartialQueryResults::setupCannedAttributeVector(a4, v83, a4 + 24, a4 + 1);
          }

          v154 = 192;
        }

        v155 = *(*(a4 + v154) + 8 * v56);
        if (v155)
        {
          v156 = (*(a2 + 16))(a2, 4, 0, 0, v56, v228);
          v157 = *(a4 + 29);
          if (*a4 == 1)
          {
            v158 = *(a4 + 13);
            if (v157 && !v158)
            {
              v159 = *(a4 + 16);
              v236[0].n128_u64[0] = 0;
              SIFlattenArrayToCStringVector(v159, a4 + 13, v236[0].n128_u64, v242);
              v158 = *(a4 + 13);
            }
          }

          else
          {
            v158 = *(a4 + 12);
            if (v157)
            {
              if (!v158)
              {
                SIFlattenArrayToCStringVector(*(a4 + 15), a4 + 12, a4 + 30, v218);
                v158 = *(a4 + 12);
                if (!v158)
                {
LABEL_178:
                  v180 = __si_assert_copy_extra_332();
                  v173 = v180;
                  v188 = "";
                  if (v180)
                  {
                    v188 = v180;
                  }

                  __message_assert_336(v180, v181, v182, v183, v184, v185, v186, v187, "SISearchCtx.h", 998, "fAttributeVector", v188);
                  goto LABEL_171;
                }
              }
            }
          }

          v155(v216, *(v158 + 8 * v56), v217, v219, v226, v56, 0, v215, a2, v156);
          (*(a2 + 16))(a2, 5, v156, 0, v56, v228);
        }
      }

      v29 = v227;
LABEL_147:
      ++v56;
      v55 = v61;
    }

    while (v56 != v29);
  }

  return (*(a2 + 16))(a2, 3, v228, 0, 0, v211);
}

void enumerate_matching_query_pieces(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v14 = (*(*a1 + 56))(a1);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZL31enumerate_matching_query_piecesP11SISearchCtxP14datastore_infoP6db_objPPKcbP10query_nodeU13block_pointerFvP11query_piecePK15db_obj_eval_ctxE_block_invoke;
  v23[3] = &__block_descriptor_tmp_188;
  v23[4] = a1;
  v23[5] = a3;
  v24 = a5;
  v41 = 0;
  memset(&v40[8], 0, 96);
  *v40 = 0x400000004;
  memset(&v39[1], 0, 104);
  v39[0] = 0x400000004;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = __db_query_enumerate_matched_qps_for_dbo_block_invoke;
  v25[3] = &unk_1E8199180;
  v25[4] = v23;
  v25[5] = a7;
  v27 = *&v40[16];
  v26 = *v40;
  v31 = *&v40[80];
  v32 = 0uLL;
  v29 = *&v40[48];
  v30 = *&v40[64];
  v28 = *&v40[32];
  v33 = a3;
  v34 = a2;
  v35 = a4;
  v36 = v14;
  v37 = v40;
  v38 = v39;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 0x40000000;
  v42[2] = __db_query_tree_apply_block_block_invoke;
  v42[3] = &unk_1E8198ED0;
  v42[4] = v25;
  db_query_tree_apply_block_with_meta(a6, v42, 0);
  v15 = *&v40[4];
  if (*&v40[4] >= 5u)
  {
    v16 = *&v40[16];
  }

  else
  {
    v16 = &v40[16];
  }

  if (v40[0])
  {
    v17 = *&v40[8];
    if (*&v40[8])
    {
      v18 = v16 + 2;
      do
      {
        if (*(v18 - 2) >= 0x41u)
        {
          free(*v18);
          *(v18 - 1) = 0;
          *v18 = 0;
        }

        v18 += 3;
        --v17;
      }

      while (v17);
      v15 = *&v40[4];
    }
  }

  if (v15 >= 5)
  {
    free(v16);
  }

  v19 = HIDWORD(v39[0]);
  if (HIDWORD(v39[0]) >= 5)
  {
    v20 = v39[2];
  }

  else
  {
    v20 = &v39[2];
  }

  if (v39[0])
  {
    v21 = LODWORD(v39[1]);
    if (LODWORD(v39[1]))
    {
      v22 = v20 + 2;
      do
      {
        if (*(v22 - 2) >= 0x41u)
        {
          free(*v22);
          *(v22 - 1) = 0;
          *v22 = 0;
        }

        v22 += 3;
        --v21;
      }

      while (v21);
      v19 = HIDWORD(v39[0]);
    }
  }

  if (v19 >= 5)
  {
    free(v20);
  }
}

double dateScaled(uint64_t *a1, int *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  if (db_get_field_by_id(a2, a1, *(a3 + 272), &v18, &v17))
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(1);
    v7 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *a1;
      *buf = 134217984;
      v20 = v8;
LABEL_13:
      _os_log_impl(&dword_1C278D000, v6, v7, "No last opened date for %llx", buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (*v17 <= 0.0 || (v9 = *(a3 + 304), v9 <= 0.0))
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(1);
    v7 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v6, v7))
    {
      v16 = *a1;
      *buf = 134217984;
      v20 = v16;
      goto LABEL_13;
    }

LABEL_14:
    *__error() = v5;
    return 0.0;
  }

  v10 = *v17 / v9;
  if (v10 > 1.0)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(1);
    v13 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *a1;
      *buf = 134217984;
      v20 = v14;
      _os_log_impl(&dword_1C278D000, v12, v13, "Clipping at 1.0 for %llx", buf, 0xCu);
    }

    *__error() = v11;
    v10 = 1.0;
  }

  return v10 * v10;
}

__n128 PartialQueryResults::messageAttrIds(__n128 *this, __n128 *a2, int *a3)
{
  if ((a2[5].n128_u8[8] & 1) == 0)
  {
    a2[2].n128_u64[0] = db_copy_field_ids_with_buffer(a3, "kMDItemAuthorEmailAddresses", 0, 0);
    a2[2].n128_u64[1] = db_copy_field_ids_with_buffer(a3, "kMDItemAuthors", 0, 0);
    a2[3].n128_u64[0] = db_copy_field_ids_with_buffer(a3, "kMDItemRecipientEmailAddresses", 0, 0);
    a2[3].n128_u64[1] = db_copy_field_ids_with_buffer(a3, "kMDItemRecipients", 0, 0);
    a2[4].n128_u64[0] = db_copy_field_ids_with_buffer(a3, "kMDItemSubject", 0, 0);
    a2[4].n128_u64[1] = db_copy_field_ids_with_buffer(a3, "kMDItemContentCreationDate", 0, 0);
    a2[5].n128_u64[0] = db_copy_field_ids_with_buffer(a3, "kMDItemContentModificationDate", 0, 0);
    a2[5].n128_u8[8] = 1;
  }

  v6 = a2[3];
  *this = a2[2];
  this[1] = v6;
  result = a2[4];
  v8 = a2[5];
  this[2] = result;
  this[3] = v8;
  return result;
}

double si_fancyMailRelevance(uint64_t a1, int **a2)
{
  v2 = *(a1 + 12);
  if (v2 < 0x31)
  {
    v3 = 0;
    v38 = 0.0;
    return dbl_1C2BFF5A0[(*(a1 + 40) >> 15) & 1 | v3] + v38;
  }

  v3 = 0;
  v4 = a1 + v2;
  v5 = a1 + 48;
  v6 = 0.0;
  do
  {
    v7 = *(v5 + 12);
    if (*(v5 + 12) && (*(v5 + 2) & 0x100) == 0)
    {
      v8 = *(v5 + 4);
      v9 = *a2;
      if (*a2)
      {
        v10 = *v9;
        if (*v9)
        {
          v11 = v9 + 1;
          while (v10 != v8)
          {
            v12 = *v11++;
            v10 = v12;
            if (!v12)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_41;
        }
      }

LABEL_10:
      v13 = a2[1];
      if (v13)
      {
        v14 = *v13;
        if (*v13)
        {
          v15 = v13 + 1;
          while (v14 != v8)
          {
            v16 = *v15++;
            v14 = v16;
            if (!v16)
            {
              goto LABEL_15;
            }
          }

LABEL_41:
          v3 |= 8u;
          v6 = v6 + (((v7 + -1.0) * 0.0625) * 0.05);
          goto LABEL_48;
        }
      }

LABEL_15:
      v17 = a2[2];
      if (v17)
      {
        v18 = *v17;
        if (*v17)
        {
          v19 = v17 + 1;
          while (v18 != v8)
          {
            v20 = *v19++;
            v18 = v20;
            if (!v20)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_42;
        }
      }

LABEL_20:
      v21 = a2[3];
      if (v21)
      {
        v22 = *v21;
        if (*v21)
        {
          v23 = v21 + 1;
          while (v22 != v8)
          {
            v24 = *v23++;
            v22 = v24;
            if (!v24)
            {
              goto LABEL_25;
            }
          }

LABEL_42:
          v3 |= 4u;
          v6 = v6 + (((v7 + -1.0) * 0.0625) * 0.003125);
          goto LABEL_48;
        }
      }

LABEL_25:
      v25 = a2[4];
      if (v25 && (v26 = *v25) != 0)
      {
        v27 = v25 + 1;
        while (v26 != v8)
        {
          v28 = *v27++;
          v26 = v28;
          if (!v28)
          {
            goto LABEL_30;
          }
        }

        if (v7 == 1)
        {
          v37 = 2;
        }

        else
        {
          v37 = 6;
        }

        v3 |= v37;
        v6 = v6 + (((v7 + -1.0) * 0.0625) * 0.00019531);
      }

      else
      {
LABEL_30:
        v29 = a2[5];
        if (v29)
        {
          v30 = *v29;
          if (*v29)
          {
            v31 = v29 + 1;
            while (v30 != v8)
            {
              v32 = *v31++;
              v30 = v32;
              if (!v32)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_43;
          }
        }

LABEL_35:
        v33 = a2[6];
        if (v33)
        {
          v34 = *v33;
          if (*v33)
          {
            v35 = v33 + 1;
            while (v34 != v8)
            {
              v36 = *v35++;
              v34 = v36;
              if (!v36)
              {
                goto LABEL_48;
              }
            }

LABEL_43:
            v3 |= 1u;
          }
        }
      }
    }

LABEL_48:
    v5 += *(v5 + 8) + 13;
  }

  while (v5 < v4);
  v38 = v6;
  return dbl_1C2BFF5A0[(*(a1 + 40) >> 15) & 1 | v3] + v38;
}

uint64_t __writeDBOToPlistBytes_block_invoke_67(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    if (*a2)
    {
      return _MDPlistBytesAddInternedCString();
    }
  }

  return v2;
}

uint64_t __writeDBOToPlistBytes_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a2 + 80) == *(result + 32))
    {
      v5[5] = v3;
      v5[6] = v4;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = __writeDBOToPlistBytes_block_invoke_3;
      v5[3] = &__block_descriptor_tmp_69;
      v5[4] = *(result + 40);
      return qp_array_match_indexes(a3, a2, v5);
    }
  }

  return result;
}

uint64_t ___ZL31enumerate_matching_query_piecesP11SISearchCtxP14datastore_infoP6db_objPPKcbP10query_nodeU13block_pointerFvP11query_piecePK15db_obj_eval_ctxE_block_invoke(uint64_t a1, const void *a2)
{
  v3 = *(*(a1 + 32) + 216);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, a2);
  }

  else
  {
    Value = 0;
  }

  result = ContentIndexDocSetContainsDocId(Value, *(*(a1 + 40) + 32));
  if (result)
  {
    if ((*(a1 + 48) & 1) != 0 || ContentIndexDocSetNeedsPostcheckForDocId(Value, *(*(a1 + 40) + 32)))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void eventParseField(char *key, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, char **a6, CFMutableDictionaryRef *a7, int a8)
{
  v67 = *MEMORY[0x1E69E9840];
  v13 = *(key + 2);
  v14 = *(key + 1);
  if (a2 == 14)
  {
    if ((~v14 & 0x5020) != 0 || !_os_feature_enabled_impl())
    {
      v22 = *(a3 + 16);

      v22(a3, 33, key + 13, v13, a8, a4);
    }

    else
    {
      v15 = *(key + 1);
      if ((v15 & 8) != 0)
      {
        LODWORD(v63[0]) = 0;
        LODWORD(v61) = 0;
        if ((v15 & 0x10) != 0)
        {
          if (v13 == 4)
          {
            v40 = *(key + 13);
          }

          else
          {
            if (v13 != 8)
            {
              return;
            }

            v40 = *(key + 13);
          }

          vector_for_id_locked = db_get_vector_for_id_locked(a5, v40, v63, &v61);
        }

        else
        {
          vector_for_id_locked = key + 15;
          LOWORD(v61) = *(key + 13);
          LODWORD(v63[0]) = *(key + 2) - 2;
        }

        if (vector_for_id_locked)
        {
          if (LODWORD(v63[0]) >= 3)
          {
            v46 = v61;
            if (v61 <= 2uLL)
            {
              v47 = BYTE1(v61);
              if (BYTE1(v61) <= 2u)
              {
                v48 = (vector_dimension_vec_sizes_15424[BYTE1(v61)] * vector_size_elem_sizes_15423[v61]);
                if (v48 <= v13)
                {
                  v49 = WORD1(v61);
                  if ((*(key + 1) & 0x20) != 0)
                  {
                    v50 = &vector_for_id_locked[v13];
                    v58 = a8;
                    v51 = (*(a3 + 16))(a3, 6, 0, 0);
                    v52 = 0;
                    do
                    {
                      v53 = v52 + 1;
                      emitVector(a3, v51, v47, v46, v49, vector_for_id_locked, v48, v52);
                      vector_for_id_locked += v48;
                      v52 = v53;
                    }

                    while (&vector_for_id_locked[v48] <= v50);
                    (*(a3 + 16))(a3, 7, v51, 0, v58, a4);
                  }

                  else
                  {
                    emitVector(a3, a4, BYTE1(v61), v61, WORD1(v61), vector_for_id_locked, (vector_dimension_vec_sizes_15424[BYTE1(v61)] * vector_size_elem_sizes_15423[v61]), a8);
                  }
                }
              }
            }
          }
        }
      }

      else if ((v15 & 0x10) != 0)
      {
        v16 = (*(a3 + 16))(a3, 6, 0, 0, a8, a4);
        if (v13 >= 8)
        {
          v17 = (key + 13);
          v18 = v13 >> 3;
          do
          {
            v19 = *v17++;
            LODWORD(v63[0]) = 0;
            LODWORD(v61) = 0;
            v20 = db_get_vector_for_id_locked(a5, v19, v63, &v61);
            if (v20)
            {
              emitVector(a3, a4, BYTE1(v61), v61, WORD1(v61), v20, LODWORD(v63[0]), a8);
            }

            --v18;
          }

          while (v18);
        }

        v21 = *(a3 + 16);

        v21(a3, 7, v16, 0, a8, a4);
      }
    }
  }

  else if ((v14 & 0x80) != 0)
  {
    v63[0] = key + 13;
    v61 = 0;
    if (a7 && (v14 & 0x10) != 0 && (v26 = CFDictionaryGetValue(*a7, key)) != 0)
    {
      v27 = v26;
      value[0] = 0;
      if (CFDictionaryGetValueIfPresent(a7[1], key, value))
      {
        (*(a3 + 16))(a3, 29, v27, value[0], a8, a4);
      }

      else
      {
        (*(a3 + 16))(a3, 28, v27, 0, a8, a4);
      }
    }

    else if (db_get_localized_string(a5, key, a6, v63, &v61, 1))
    {
      (*(a3 + 16))(a3, 28, "", 0, a8, a4);
    }

    else if ((*(key + 1) & 0x10) != 0)
    {
      v38 = (v61 - v63[0]);
      if (v61)
      {
        v39 = 29;
      }

      else
      {
        v39 = 28;
      }

      (*(a3 + 16))(a3, v39);
      if (a7)
      {
        v45 = malloc_type_zone_malloc(queryZone, *(key + 2) + 13, 0xA4971684uLL);
        if (!v45)
        {
          _log_fault_for_malloc_failure();
        }

        memcpy(v45, key, *(key + 2) + 13);
        CFDictionarySetValue(*a7, v45, v63[0]);
        if (v61)
        {
          CFDictionarySetValue(a7[1], v45, v38);
        }
      }
    }

    else if (v61)
    {
      (*(a3 + 16))(a3, 29, v63[0], v61 - v63[0], a8, a4);
    }

    else
    {
      (*(a3 + 16))(a3, 28, v63[0], 0, a8, a4);
    }
  }

  else if ((v14 & 0x20) != 0)
  {
    if (a2 == 11)
    {
      if ((v14 & 0x8000) != 0 && v13 != 4)
      {
        v54 = __si_assert_copy_extra_332();
        v55 = v54;
        v56 = "";
        if (v54)
        {
          v56 = v54;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6416, "field->data_len==sizeof(uint32_t)", v56);
        free(v55);
        if (__valid_fs(-1))
        {
          v57 = 2989;
        }

        else
        {
          v57 = 3072;
        }

        *v57 = -559038737;
        abort();
      }

      v29 = key + 13;
      v61 = (key + 13);
      if ((~v14 & 0x8010) != 0)
      {
        v41 = (*(a3 + 16))(a3, 6, 0, 0, a8, a4, a7);
        if (v13)
        {
          v42 = 0;
          v43 = &v29[v13];
          do
          {
            v44 = v42 + 1;
            addString(a3, v41, v42, a5, v14, &v61);
            v42 = v44;
          }

          while (v61 < v43);
        }

        (*(a3 + 16))(a3, 7, v41, 0, a8, a4);
      }

      else
      {
        v30 = *v29;
        if (!(*(a3 + 16))(a3, 32, 0, v30, a8, a4, a7))
        {
          v65 = 0u;
          v66 = 0u;
          *v63 = 0u;
          v64 = 0u;
          v60 = 64;
          v31 = copyDataForUniquedValue(a5, v30, v63, &v60);
          v61 = v31;
          if (v31)
          {
            v59 = v31;
            v32 = (*(a3 + 16))(a3, 8, 0, 0, a8, a4);
            if (v60)
            {
              v33 = 0;
              v34 = v59 + v60;
              do
              {
                v35 = v33 + 1;
                addString(a3, v32, v33, a5, v14, &v61);
                v33 = v35;
              }

              while (v61 < v34);
            }

            (*(a3 + 16))(a3, 9, v32, v30, a8, a4);
            if (v59 != v63)
            {
              free(v59);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            LODWORD(value[0]) = 67109120;
            HIDWORD(value[0]) = v30;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "No data for uniqued array %u", value, 8u);
          }
        }
      }
    }

    else
    {
      v37 = v13 / kSDBTypeSizes[a2];

      addScalarArray(a3, a4, a8, a2, v14, key + 13, v37);
    }
  }

  else
  {

    addValue(a3, a4, a8, a5, a2, v14, key + 13);
  }
}

uint64_t addScalarArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, int a7)
{
  v9 = a5;
  v10 = a4;
  v14 = (*(a1 + 16))(a1, 6, 0, 0, a3, a2);
  if (a7)
  {
    v15 = 0;
    v16 = kSDBTypeSizes[v10];
    do
    {
      addValue(a1, v14, v15, 0, v10, v9, a6);
      a6 += v16;
      ++v15;
    }

    while (a7 != v15);
  }

  v17 = *(a1 + 16);

  return v17(a1, 7, v14, 0, a3, a2);
}

void *__eventParseDBO_block_invoke_2(void *result, void *a2)
{
  if (a2)
  {
    if (*a2)
    {
      return (*(result[4] + 16))(result[4], 28, *a2, 0, result[5], result[6]);
    }
  }

  return result;
}

void *__eventParseDBO_block_invoke_3(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result[5];
    if (*(a2 + 80) == v5)
    {
      v6[7] = v3;
      v6[8] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __eventParseDBO_block_invoke_4;
      v6[3] = &unk_1E81941C8;
      v6[4] = result[4];
      v6[5] = v5;
      v6[6] = result[6];
      return qp_array_match_indexes(a3, a2, v6);
    }
  }

  return result;
}

void addValue(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, __int16 a6, const char *a7)
{
  v11 = a7;
  if (a5 <= 6)
  {
    if (a5 <= 3 && a5 != 1 && a5 != 2 && a5 != 3)
    {
      goto LABEL_29;
    }

LABEL_22:
    if ((a6 & 0x400) == 0)
    {
      v7 = *(a1 + 16);
      goto LABEL_25;
    }

LABEL_24:
    v7 = *(a1 + 16);
    goto LABEL_25;
  }

  if (a5 <= 9)
  {
    if ((a5 - 7) < 2)
    {
      goto LABEL_22;
    }

    if (a5 == 9)
    {
      goto LABEL_19;
    }

LABEL_29:
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SISearchCtx_METADATA.cpp", 6123, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (a5 != 10)
  {
    if (a5 == 11)
    {
      addString(a1, a2, a3, a4, a6, &v11);
      return;
    }

    if (a5 == 12)
    {
      v7 = *(a1 + 16);
      goto LABEL_25;
    }

    goto LABEL_29;
  }

LABEL_19:
  if ((a6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

  v7 = *(a1 + 16);
LABEL_25:

  v7();
}

void addString(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, char a5, const char **a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v11 = *(a1 + 16);
  if ((a5 & 0x10) != 0)
  {
    v15 = *v10;
    if (!v11(a1, 30, 0, v15, a3, a2))
    {
      if (v15 == -2)
      {
        string_for_id_locked = "";
      }

      else
      {
        string_for_id_locked = db_get_string_for_id_locked(a4, v15);
        if (!string_for_id_locked)
        {
          if (v15 == -1)
          {
            v17 = *__error();
            v18 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = 136315650;
              v20 = "addString";
              v21 = 1024;
              v22 = 6026;
              v23 = 1024;
              v24 = -1;
              _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: Bad string id for %d", &v19, 0x18u);
            }

            *__error() = v17;
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v19 = 67109120;
            LODWORD(v20) = v15;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "No data for uniqued string %u", &v19, 8u);
          }

          goto LABEL_8;
        }
      }

      (*(a1 + 16))(a1, 31, string_for_id_locked, v15, a3, a2);
    }

LABEL_8:
    v13 = v10 + 4;
    goto LABEL_9;
  }

  v12 = strlen(*a6);
  v11(a1, 29, v10, v12, a3, a2);
  v13 = &v10[v12 + 1];
LABEL_9:
  *a6 = v13;
}

uint64_t emitVector(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = a8;
  v16 = (*(a1 + 16))(a1, 10, 0, 0, a8, a2);
  if (a4)
  {
    (*(a1 + 16))(a1, 14, "vec_format", 0, 0, v16);
    (*(a1 + 16))(a1, 16, a3, 0, 0, v16);
    (*(a1 + 16))(a1, 14, "vec_dim", 0, 1, v16);
    (*(a1 + 16))(a1, 16, a4, 0, 1, v16);
    v17 = 2;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (a5)
  {
LABEL_3:
    v18 = v17;
    (*(a1 + 16))(a1, 14, "vec_version", 0, v17, v16);
    v17 |= 1u;
    (*(a1 + 16))(a1, 21, a5, 0, v18, v16);
  }

LABEL_4:
  (*(a1 + 16))(a1, 14, "vec_data", 0, v17, v16);
  (*(a1 + 16))(a1, 33, a6, a7, v17, v16);
  v19 = *(a1 + 16);

  return v19(a1, 11, v16, 0, v15, a2);
}

uint64_t isQueryNodePhotosPersonIdentifier(uint64_t result)
{
  if (result)
  {
    if (*(result + 48) == 4 && (v1 = *(result + 16)) != 0)
    {
      result = *v1;
      if (*v1)
      {
        return strcmp(result, "kMDItemPhotosPeoplePersonIdentifiers") == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 4 * *(a1 + 72));
    os_unfair_lock_lock((*(a1 + 48) + 4568));
    v3 = v2 & 0x7FFFFFFF;
    if ((v2 & 0x7FFFFFFFu) <= 0x7FFFFFFD)
    {
      v4 = *(a1 + 64);
      v5 = *(v4 + 888);
      if ((*(v4 + 804) & 0x14) != 0)
      {
        v21 = 0;
        data_locked = data_map_get_data_locked(v5, v2 & 0x7FFFFFFF, &v21);
        if (data_locked)
        {
          v7 = &data_locked[v21 - 1];
          if (v7 > data_locked)
          {
            v8 = v21 - 1;
            do
            {
              if (*v7 == 22 && v7[1] == 2)
              {
                v21 = v8;
              }

              --v7;
              --v8;
            }

            while (v7 > data_locked);
          }
        }

        else
        {
          v9 = data_map_count(v5);
          if (v9 < v3)
          {
            v19 = v9;
            v20 = v4;
            v11 = *__error();
            v12 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v15 = *(v20 + 4);
              v16 = data_map_valid(v5);
              *buf = 136316930;
              v23 = "_get_string_and_length_for_id";
              v24 = 1024;
              v25 = 574;
              v17 = "y";
              if (!v16)
              {
                v17 = "n";
              }

              v26 = 2048;
              v27 = v2 & 0x7FFFFFFF;
              v28 = 2048;
              v29 = v19;
              v30 = 1024;
              v31 = 1;
              v32 = 2080;
              v33 = v20 + 324;
              v34 = 1024;
              v35 = v15;
              v36 = 2080;
              v37 = v17;
              _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
            }

            *__error() = v11;
            if ((*(v20 + 4) & 0x20) != 0)
            {
              v13 = *__error();
              v14 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v18 = *(v20 + 4);
                *buf = 136315906;
                v23 = "_get_string_and_length_for_id";
                v24 = 1024;
                v25 = 576;
                v26 = 2080;
                v27 = v20 + 324;
                v28 = 1024;
                LODWORD(v29) = v18;
                _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
              }

              *__error() = v13;
              *(v20 + 4) |= 0x40u;
            }
          }
        }
      }

      else if (*(v5 + 56) <= v3 || !*(*(v5 + 32) + 8 * v3))
      {
        v10 = *(v4 + 4);
        if ((v10 & 0x20) != 0)
        {
          *(v4 + 4) = v10 | 0x40;
        }

        else if (SIIsAppleInternal_onceToken != -1)
        {
          dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
        }
      }
    }

    _MDPlistBytesAddCString();
    os_unfair_lock_unlock((*(a1 + 48) + 4568));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 4 * *(a1 + 80));
    os_unfair_lock_lock((*(a1 + 48) + 1232));
    v3 = SIValueSet<unsigned int>::SIValueSetInsert((*(*(a1 + 48) + 1224) + 16), v2);
    os_unfair_lock_unlock((*(a1 + 48) + 1232));
    if (v3)
    {
      os_unfair_lock_lock((*(a1 + 56) + 4568));
      v4 = v2 & 0x7FFFFFFF;
      if (v4 <= 0x7FFFFFFD)
      {
        v5 = *(a1 + 72);
        v6 = *(v5 + 888);
        if ((*(v5 + 804) & 0x14) != 0)
        {
          v21 = 0;
          data_locked = data_map_get_data_locked(v6, v4, &v21);
          if (data_locked)
          {
            v8 = &data_locked[v21 - 1];
            if (v8 > data_locked)
            {
              v9 = v21 - 1;
              do
              {
                if (*v8 == 22 && v8[1] == 2)
                {
                  v21 = v9;
                }

                --v8;
                --v9;
              }

              while (v8 > data_locked);
            }
          }

          else
          {
            v10 = data_map_count(v6);
            if (v10 < v4)
            {
              v12 = v10;
              v13 = *__error();
              v14 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v20 = *(v5 + 4);
                v17 = data_map_valid(v6);
                *buf = 136316930;
                v18 = "n";
                v23 = "_get_string_and_length_for_id";
                v24 = 1024;
                v25 = 574;
                if (v17)
                {
                  v18 = "y";
                }

                v26 = 2048;
                v27 = v4;
                v28 = 2048;
                v29 = v12;
                v30 = 1024;
                v31 = 1;
                v32 = 2080;
                v33 = v5 + 324;
                v34 = 1024;
                v35 = v20;
                v36 = 2080;
                v37 = v18;
                _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
              }

              *__error() = v13;
              if ((*(v5 + 4) & 0x20) != 0)
              {
                v15 = *__error();
                v16 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v19 = *(v5 + 4);
                  *buf = 136315906;
                  v23 = "_get_string_and_length_for_id";
                  v24 = 1024;
                  v25 = 576;
                  v26 = 2080;
                  v27 = v5 + 324;
                  v28 = 1024;
                  LODWORD(v29) = v19;
                  _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
                }

                *__error() = v15;
                *(v5 + 4) |= 0x40u;
              }
            }
          }
        }

        else if (*(v6 + 56) <= v4 || !*(*(v6 + 32) + 8 * v4))
        {
          v11 = *(v5 + 4);
          if ((v11 & 0x20) != 0)
          {
            *(v5 + 4) = v11 | 0x40;
          }

          else if (SIIsAppleInternal_onceToken != -1)
          {
            dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
          }
        }
      }

      _MDPlistBytesAddCString();
      os_unfair_lock_unlock((*(a1 + 56) + 4568));
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t isQueryNodeMatchingPersonNamesAlternatives(uint64_t result)
{
  if (result)
  {
    if (*(result + 48) == 4 && (v1 = *(result + 16)) != 0)
    {
      result = *v1;
      if (*v1)
      {
        return strcmp(result, "kMDItemPhotosPeopleNamesAlternatives") == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_3(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 4 * *(a1 + 80));
    os_unfair_lock_lock((*(a1 + 48) + 1232));
    v3 = SIValueSet<unsigned int>::SIValueSetInsert((*(*(a1 + 48) + 1224) + 16), v2);
    os_unfair_lock_unlock((*(a1 + 48) + 1232));
    if (v3)
    {
      os_unfair_lock_lock((*(a1 + 56) + 4568));
      v4 = v2 & 0x7FFFFFFF;
      if (v4 <= 0x7FFFFFFD)
      {
        v5 = *(a1 + 72);
        v6 = *(v5 + 888);
        if ((*(v5 + 804) & 0x14) != 0)
        {
          v21 = 0;
          data_locked = data_map_get_data_locked(v6, v4, &v21);
          if (data_locked)
          {
            v8 = &data_locked[v21 - 1];
            if (v8 > data_locked)
            {
              v9 = v21 - 1;
              do
              {
                if (*v8 == 22 && v8[1] == 2)
                {
                  v21 = v9;
                }

                --v8;
                --v9;
              }

              while (v8 > data_locked);
            }
          }

          else
          {
            v10 = data_map_count(v6);
            if (v10 < v4)
            {
              v12 = v10;
              v13 = *__error();
              v14 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v20 = *(v5 + 4);
                v17 = data_map_valid(v6);
                *buf = 136316930;
                v18 = "n";
                v23 = "_get_string_and_length_for_id";
                v24 = 1024;
                v25 = 574;
                if (v17)
                {
                  v18 = "y";
                }

                v26 = 2048;
                v27 = v4;
                v28 = 2048;
                v29 = v12;
                v30 = 1024;
                v31 = 1;
                v32 = 2080;
                v33 = v5 + 324;
                v34 = 1024;
                v35 = v20;
                v36 = 2080;
                v37 = v18;
                _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
              }

              *__error() = v13;
              if ((*(v5 + 4) & 0x20) != 0)
              {
                v15 = *__error();
                v16 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v19 = *(v5 + 4);
                  *buf = 136315906;
                  v23 = "_get_string_and_length_for_id";
                  v24 = 1024;
                  v25 = 576;
                  v26 = 2080;
                  v27 = v5 + 324;
                  v28 = 1024;
                  LODWORD(v29) = v19;
                  _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
                }

                *__error() = v15;
                *(v5 + 4) |= 0x40u;
              }
            }
          }
        }

        else if (*(v6 + 56) <= v4 || !*(*(v6 + 32) + 8 * v4))
        {
          v11 = *(v5 + 4);
          if ((v11 & 0x20) != 0)
          {
            *(v5 + 4) = v11 | 0x40;
          }

          else if (SIIsAppleInternal_onceToken != -1)
          {
            dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
          }
        }
      }

      _MDPlistBytesAddCString();
      os_unfair_lock_unlock((*(a1 + 56) + 4568));
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_4(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 4 * *(a1 + 72)) & 0x7FFFFFFF;
    if (v2 > 0x7FFFFFFD)
    {
LABEL_15:
      *(*(*(a1 + 32) + 8) + 24) = 1;
      return;
    }

    v3 = *(a1 + 48);
    v4 = *(v3 + 888);
    if ((*(v3 + 804) & 0x14) != 0)
    {
      v19 = 0;
      data_locked = data_map_get_data_locked(v4, v2, &v19);
      if (data_locked)
      {
        v6 = &data_locked[v19 - 1];
        if (v6 > data_locked)
        {
          v7 = v19 - 1;
          do
          {
            if (*v6 == 22 && v6[1] == 2)
            {
              v19 = v7;
            }

            --v6;
            --v7;
          }

          while (v6 > data_locked);
        }

        goto LABEL_14;
      }

      v8 = data_map_count(v4);
      if (v8 >= v2)
      {
        goto LABEL_15;
      }

      v18 = v8;
      v9 = *__error();
      v10 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = *(v3 + 4);
        v15 = data_map_valid(v4);
        *buf = 136316930;
        v21 = "_get_string_and_length_for_id";
        v22 = 1024;
        v23 = 574;
        v16 = "y";
        if (!v15)
        {
          v16 = "n";
        }

        v24 = 2048;
        v25 = v2;
        v26 = 2048;
        v27 = v18;
        v28 = 1024;
        v29 = 1;
        v30 = 2080;
        v31 = v3 + 324;
        v32 = 1024;
        v33 = v14;
        v34 = 2080;
        v35 = v16;
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
      }

      *__error() = v9;
      if ((*(v3 + 4) & 0x20) == 0)
      {
        goto LABEL_15;
      }

      v11 = *__error();
      v12 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v3 + 4);
        *buf = 136315906;
        v21 = "_get_string_and_length_for_id";
        v22 = 1024;
        v23 = 576;
        v24 = 2080;
        v25 = v3 + 324;
        v26 = 1024;
        LODWORD(v27) = v17;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
      }

      *__error() = v11;
      v13 = *(v3 + 4);
    }

    else
    {
      if (*(v4 + 56) > v2 && *(*(v4 + 32) + 8 * v2))
      {
LABEL_14:
        os_unfair_lock_lock((*(a1 + 56) + 4568));
        _MDPlistBytesAddCString();
        os_unfair_lock_unlock((*(a1 + 56) + 4568));
        goto LABEL_15;
      }

      v13 = *(v3 + 4);
      if ((v13 & 0x20) == 0)
      {
        if (SIIsAppleInternal_onceToken != -1)
        {
          dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
        }

        goto LABEL_15;
      }
    }

    *(v3 + 4) = v13 | 0x40;
    goto LABEL_15;
  }
}

uint64_t isQueryNodePhotosSceneTypedIdentifier(uint64_t result)
{
  if (result)
  {
    if (*(result + 48) == 4 && (v1 = *(result + 16)) != 0)
    {
      result = *v1;
      if (*v1)
      {
        return strcmp(result, "kMDItemPhotosSceneClassificationTypedIdentifiers") == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 4568));
    _MDPlistBytesBeginArray();
    _MDPlistBytesAddInteger();
    _MDPlistBytesAddInteger();
    _MDPlistBytesEndArray();
    os_unfair_lock_unlock((*(a1 + 40) + 4568));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 4568));
    _MDPlistBytesBeginArray();
    _MDPlistBytesAddInteger();
    _MDPlistBytesAddInteger();
    _MDPlistBytesEndArray();
    os_unfair_lock_unlock((*(a1 + 40) + 4568));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_3(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 4568));
    _MDPlistBytesBeginArray();
    _MDPlistBytesAddInteger();
    _MDPlistBytesAddInteger();
    _MDPlistBytesEndArray();
    os_unfair_lock_unlock((*(a1 + 40) + 4568));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t PartialQueryResults::totalcount(PartialQueryResults *this)
{
  v1 = *(this + 884);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = this + 464;
  do
  {
    if (*&v5[8 * v3])
    {
      VectorCount = _MDStoreOIDArrayGetVectorCount();
      v1 = *(this + 884);
    }

    else
    {
      VectorCount = 0;
    }

    v4 += VectorCount;
    ++v3;
  }

  while (v3 < v1);
  return v4;
}

void collectCompletionsFromDBO(void *a1, uint64_t a2, uint64_t *a3, __n128 *a4, unsigned __int8 a5, PartialQueryResults *this, const char **a7, unsigned __int8 **a8)
{
  v143 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (!this)
  {
    return;
  }

  v10 = *(a2 + 1192);
  if (!v10)
  {
    return;
  }

  v17 = PartialQueryResults::completionAttributeIdVector(this, *(a2 + 1192));
  v18 = *(this + 47);
  if (!*(this + 45) || v18)
  {
    goto LABEL_8;
  }

  v19 = *(this + 46);
  if (v19)
  {
    SIFlattenArrayToCStringVector(v19, this + 47, this + 44, this + 45);
    v18 = *(this + 47);
    if (!v18)
    {
      v99 = __si_assert_copy_extra_332();
      v100 = v99;
      v101 = "";
      if (v99)
      {
        v101 = v99;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx.h", 1014, "fCompletionAttributeVector", v101);
      free(v100);
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

LABEL_8:
    if (!v17)
    {
      return;
    }

    goto LABEL_9;
  }

  v18 = 0;
  if (!v17)
  {
    return;
  }

LABEL_9:
  v113 = v18;
  v124 = CIRetainIndexingTokenizer(3);
  v20 = *(this + 36);
  v142[0] = *(a2 + 2064);
  v142[1] = 0;
  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x2000000000;
  v136[3] = 0;
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x2000000000;
  v135 = 0;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x2000000000;
  v133 = 0;
  v130[0] = 0;
  v130[1] = v130;
  v130[2] = 0x2000000000;
  v131 = 0;
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 0x40000000;
  v129[2] = __collectCompletionsFromDBO_block_invoke;
  v129[3] = &unk_1E81942B8;
  v129[4] = v130;
  v129[5] = v136;
  v129[8] = a3;
  v129[9] = v10;
  v129[10] = this;
  v129[11] = v20;
  v129[6] = v134;
  v129[7] = v132;
  if (a7)
  {
    v118 = *a7;
  }

  else
  {
    v118 = 0;
  }

  __s = 0;
  v128 = 0;
  v116 = a7;
  v112 = a5;
  if (db_get_field_by_id(v10, a3, v142, &v128, &__s) || *v128 != 11)
  {
    v22 = U_ZERO_ERROR;
    v21 = "";
  }

  else
  {
    v21 = "";
    if ((*(v128 + 2) & 0x10) != 0)
    {
      v22 = *(v128 + 13);
      string_for_id_locked = db_get_string_for_id_locked(v10, v22);
      if (string_for_id_locked)
      {
        v21 = string_for_id_locked;
      }
    }

    else
    {
      v22 = U_ZERO_ERROR;
    }
  }

  v122 = v22;
  v123 = *(this + 90);
  v115 = a4;
  if (*(this + 321))
  {
    v72 = a3;
    v119 = *(a2 + 1296);
    if (dword_1EBF46AD0 >= 5)
    {
      v103 = v21;
      v104 = *__error();
      v105 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 0;
        _os_log_impl(&dword_1C278D000, v105, OS_LOG_TYPE_DEFAULT, "Generating pommmes completions", __dst, 2u);
      }

      *__error() = v104;
      v21 = v103;
    }

    explicit = atomic_load_explicit(a1 + 35, memory_order_acquire);
    if (explicit || (md_deadline_once_wait(), (explicit = atomic_load_explicit(a1 + 35, memory_order_acquire)) != 0))
    {
      __s1 = v21;
      v74 = _os_feature_enabled_impl();
      v75 = *(this + 39);
      v76 = *(this + 48);
      if (v75 && !v76)
      {
        v117 = v74;
        if (*MEMORY[0x1E69E9AC8] <= 0x1FuLL)
        {
          ++sTotal;
        }

        v76 = malloc_type_zone_calloc(queryZone, 1uLL, 0x20uLL, 0x5BAF1CEAuLL);
        if (!v76)
        {
          _log_fault_for_malloc_failure();
        }

        *(this + 48) = v76;
        v77 = *v75;
        *v76 = 0u;
        v76[1] = 0u;
        v78 = *v77;
        if (*v77)
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          do
          {
            if ((v78 & 0x80) == 0)
            {
              goto LABEL_91;
            }

            v83 = v78 >> 4;
            if ((~v83 & 0xC) != 0)
            {
              goto LABEL_91;
            }

            v84 = utf8_byte_length(unsigned char)::utf8_len_table[v83];
            v85 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v84] & v78;
            v84 = v84 <= 2 ? 2 : v84;
            v86 = v84 - 1;
            v87 = v77 + 1;
            do
            {
              v88 = v85;
              v89 = *v87++;
              v85 = v89 & 0x3F | (v85 << 6);
              --v86;
            }

            while (v86);
            if ((v88 << 6) >> 8 >= 0x11 && ((v88 & 0x3FFFFFC) == 0x44 || ((v88 << 6) - 11904) >> 7 < 0x197 || (v85 - 65376) <= 0x4F))
            {
              if ((v85 - 12448) > 0x5F)
              {
                if ((v85 - 12352) > 0x5F)
                {
                  *(v76 + 2) = ++v82;
                }

                else
                {
                  *(v76 + 1) = ++v81;
                }
              }

              else
              {
                *v76 = ++v80;
              }
            }

            else
            {
LABEL_91:
              *(v76 + 3) = ++v79;
            }

            v77 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v77 >> 4];
            v78 = *v77;
          }

          while (*v77);
        }

        v74 = v117;
      }

      v90 = a4[3];
      v139 = a4[2];
      v140 = v90;
      v141 = a4[4];
      v91 = a4[1];
      *__dst = *a4;
      v138 = v91;
      if (v74)
      {
        v92 = a1[1];
        v110 = *(v92 + 761);
        v109 = *(v92 + 704);
      }

      else
      {
        v110 = 0;
        v109 = 0;
      }

      v93 = explicit;
      v24 = v124;
      SIPommesSuggestionsProcessDBO(v119, v10, v72, v17, v123, v113, v93, v124, v75, v76, __dst, v122, __s1, a8, v109, v110, v129);
    }

    else
    {
      v97 = *__error();
      v98 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 0;
        _os_log_impl(&dword_1C278D000, v98, OS_LOG_TYPE_DEFAULT, "Not generating pommmes completions; suggestions model did not populate in time.", __dst, 2u);
      }

      *__error() = v97;
      v24 = v124;
    }
  }

  else
  {
    v23 = atomic_load_explicit(this + 41, memory_order_acquire);
    if (v23 || (md_deadline_once_wait(), (v23 = atomic_load_explicit(this + 41, memory_order_acquire)) != 0))
    {
      v114 = v23;
      v120 = v21;
      v24 = v124;
      if (dword_1EBF46AD0 >= 5)
      {
        v106 = a3;
        v107 = *__error();
        v108 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          _os_log_impl(&dword_1C278D000, v108, OS_LOG_TYPE_DEFAULT, "Generating spotlight completions", __dst, 2u);
        }

        *__error() = v107;
        v24 = v124;
        a3 = v106;
      }

      v25 = v123;
      if (v123 >= 1)
      {
        v26 = 0;
        v27 = *(v114 + 4);
        do
        {
          if ((v27 & 0x80) != 0 && v26 == 8)
          {
            v28 = *(v17 + 64);
            if (v28)
            {
              if (*(v17 + 72))
              {
                v29 = v27;
                v30 = v17;
                *&v125[0] = 0;
                v126 = 0;
                v31 = v10;
                v32 = v10;
                v33 = a3;
                if (!db_get_field_by_id(v32, a3, v28, &v128, &__s) && !db_get_field_by_id(v31, a3, *(v30 + 72), v125, &v126) && *v128 == 11 && (*(v128 + 2) & 0x20) != 0 && **&v125[0] == 10 && (*(*&v125[0] + 2) & 0x20) != 0)
                {
                  v34 = *(v128 + 8);
                  if (v34)
                  {
                    v36 = v126;
                    v35 = __s;
                    v37 = &__s[v34];
                    do
                    {
                      v38 = strlen(v35);
                      v39 = *v36++;
                      v40.n128_u64[0] = v39;
                      v41 = *(this + 39);
                      v42 = v115[3];
                      v139 = v115[2];
                      v140 = v42;
                      v141 = v115[4];
                      v43 = v115[1];
                      *__dst = *v115;
                      v138 = v43;
                      SICompletionModelProcessUTF8String(v114, v124, v41, v35, v38, __dst, *v33, v122, v40, v120, 8, v118, v112, v129);
                      v24 = v124;
                      v35 += v38 + 1;
                    }

                    while (v35 < v37);
                  }
                }

                v26 = 9;
                a3 = v33;
                v25 = v123;
                v10 = v31;
                v17 = v30;
                v27 = v29;
                a4 = v115;
                goto LABEL_67;
              }
            }
          }

          v44 = *(v17 + 8 * v26);
          if (v44)
          {
            if (!db_get_field_by_id(v10, a3, v44, &v128, &__s))
            {
              v45 = *(v128 + 2);
              if (v116 || (v45 & 0x80) == 0)
              {
                if ((v45 & 0x80) != 0)
                {
                  v126 = 0;
                  if (!db_get_localized_string(v10, v128, v116, &__s, &v126, 1))
                  {
                    bzero(__dst, 0x400uLL);
                    v51 = __s;
                    if (v126)
                    {
                      v52 = a3;
                      v53 = v126 - __s;
                      v54 = (v126 - __s) << 32;
                      if (v126 - __s >= 1023)
                      {
                        v55 = strndup(__s, v53 & 0x7FFFFFFF);
                        v56 = *(this + 39);
                      }

                      else
                      {
                        v55 = __dst;
                        strlcpy(__dst, __s, ((v53 << 32) + 0x100000000) >> 32);
                        v56 = *(this + 39);
                        if (!v126)
                        {
                          v55 = __dst;
                          v51 = __s;
                          a3 = v52;
                          goto LABEL_55;
                        }
                      }

                      v63 = v54 >> 32;
                      a3 = v52;
                    }

                    else
                    {
                      v56 = *(this + 39);
                      v55 = __s;
LABEL_55:
                      v63 = strlen(v51);
                    }

                    v70 = a4[3];
                    v125[2] = a4[2];
                    v125[3] = v70;
                    v125[4] = a4[4];
                    v71 = a4[1];
                    v125[0] = *a4;
                    v125[1] = v71;
                    v71.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
                    SICompletionModelProcessUTF8String(v114, v124, v56, v55, v63, v125, *a3, v122, v71, v120, v26, v118, v112, v129);
                    if (v55 != __dst)
                    {
                      free(v55);
                    }

                    v24 = v124;
LABEL_66:
                    v25 = v123;
                  }
                }

                else if (*v128 == 11)
                {
                  v46 = __s;
                  if ((v45 & 0x20) != 0)
                  {
                    v111 = a3;
                    v57 = *(v128 + 8);
                    v58 = &__s[v57];
                    if ((v45 & 0x10) == 0)
                    {
                      if (v57)
                      {
                        do
                        {
                          v59 = strlen(v46);
                          v60 = *(this + 39);
                          v61 = a4[3];
                          v139 = a4[2];
                          v140 = v61;
                          v141 = a4[4];
                          v62 = a4[1];
                          *__dst = *a4;
                          v138 = v62;
                          v62.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
                          SICompletionModelProcessUTF8String(v114, v124, v60, v46, v59, __dst, *v111, v122, v62, v120, v26, v118, v112, v129);
                          v46 += v59 + 1;
                        }

                        while (v46 < v58);
                      }

                      a3 = v111;
                      v25 = v123;
                      v24 = v124;
                      goto LABEL_67;
                    }

                    if (v57)
                    {
                      do
                      {
                        v64 = db_get_string_for_id_locked(v10, *v46);
                        if (v64)
                        {
                          v65 = v64;
                          v66 = *(this + 39);
                          v67 = strlen(v64);
                          v68 = a4[3];
                          v139 = a4[2];
                          v140 = v68;
                          v141 = a4[4];
                          v69 = a4[1];
                          *__dst = *a4;
                          v138 = v69;
                          v69.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
                          SICompletionModelProcessUTF8String(v114, v124, v66, v65, v67, __dst, *v111, v122, v69, v120, v26, v118, v112, v129);
                        }

                        v46 += 4;
                      }

                      while (v46 < v58);
                    }

                    v24 = v124;
                    a3 = v111;
                    goto LABEL_66;
                  }

                  v47 = strlen(__s);
                  v48 = *(this + 39);
                  v49 = a4[3];
                  v139 = a4[2];
                  v140 = v49;
                  v141 = a4[4];
                  v50 = a4[1];
                  *__dst = *a4;
                  v138 = v50;
                  v50.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
                  SICompletionModelProcessUTF8String(v114, v24, v48, __s, v47, __dst, *a3, v122, v50, v120, v26, v118, v112, v129);
                }
              }
            }
          }

LABEL_67:
          ++v26;
        }

        while (v26 < v25);
      }
    }

    else
    {
      v95 = *__error();
      v96 = _SILogForLogForCategory(1);
      v24 = v124;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 0;
        _os_log_impl(&dword_1C278D000, v96, OS_LOG_TYPE_DEFAULT, "Not generating spotlight completions; completion model did not populate in time.", __dst, 2u);
      }

      *__error() = v95;
    }
  }

  CIReleaseIndexingTokenizer(v24);
  _Block_object_dispose(v130, 8);
  _Block_object_dispose(v132, 8);
  _Block_object_dispose(v134, 8);
  _Block_object_dispose(v136, 8);
}

uint64_t __collectCompletionsFromDBO_block_invoke(uint64_t result, _DWORD *a2, BOOL *a3)
{
  v4 = result;
  v40 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 32) + 8) + 24))
  {
    goto LABEL_36;
  }

  v34 = 0;
  v35 = 0;
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 80);
  v36 = 0;
  v37 = 0;
  if (!v6 || (v9 = *(v8 + 280), result = db_get_field_by_id(v7, v6, *(v8 + 272), &v37, &v36), *a3 = result == 0, result) && (result = db_get_field_by_id(v7, v6, v9, &v37, &v36), result))
  {
    v10 = 0.0;
    if (dword_1EBF46AD0 >= 5)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v6;
        *buf = 134217984;
        v39 = v13;
LABEL_39:
        _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "No useful date for %llx", buf, 0xCu);
        goto LABEL_40;
      }

      goto LABEL_40;
    }
  }

  else if (*v36 <= 0.0 || (v14 = *(v8 + 304), v14 <= 0.0))
  {
    v10 = 0.0;
    if (dword_1EBF46AD0 >= 5)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *v6;
        *buf = 134217984;
        v39 = v33;
        goto LABEL_39;
      }

LABEL_40:
      result = __error();
      *result = v11;
    }
  }

  else
  {
    v10 = v14 - *v36;
  }

  *(*(*(v4 + 40) + 8) + 24) = v10;
  v15 = *(v4 + 64);
  if (!v15)
  {
    goto LABEL_31;
  }

  result = db_get_field_by_id(*(v4 + 72), v15, *(v4 + 88), &v35, &v34);
  if (result)
  {
    goto LABEL_31;
  }

  v16 = -1759636613;
  v17 = *(v35 + 8);
  if (v17 >= 0)
  {
    v18 = *(v35 + 8);
  }

  else
  {
    v18 = v17 + 3;
  }

  v19 = &v34[v18 & 0xFFFFFFFC];
  if ((v17 + 3) >= 7)
  {
    v22 = -(v18 >> 2);
    v23 = -1789642873;
    v24 = 718793509;
    do
    {
      v23 = 5 * v23 + 2071795100;
      v24 = 5 * v24 + 1808688022;
      HIDWORD(v25) = v23 * *&v19[4 * v22];
      LODWORD(v25) = HIDWORD(v25);
      v26 = (v25 >> 21) * v24;
      HIDWORD(v25) = v16;
      LODWORD(v25) = v16;
      v16 = v26 ^ (5 * (v25 >> 19) + 1390208809);
    }

    while (!__CFADD__(v22++, 1));
    v21 = 5 * v23 + 2071795100;
    v20 = 5 * v24 + 1808688022;
  }

  else
  {
    v20 = 1107688271;
    v21 = 1713515327;
  }

  v28 = 0;
  if ((*(v35 + 8) & 3u) > 1)
  {
    if ((*(v35 + 8) & 3) != 2)
    {
      v28 = v19[2] << 16;
    }

    v28 |= v19[1] << 8;
  }

  else if ((v17 & 3) == 0)
  {
    goto LABEL_30;
  }

  HIDWORD(v29) = (v28 ^ *v19) * v21;
  LODWORD(v29) = HIDWORD(v29);
  v30 = (v29 >> 21) * v20;
  HIDWORD(v29) = v16;
  LODWORD(v29) = v16;
  v16 = v30 ^ (5 * (v29 >> 19) + 1390208809);
LABEL_30:
  v31 = -1028477387 * ((-2048144789 * (v16 ^ v17)) ^ ((-2048144789 * (v16 ^ v17)) >> 13));
  *(*(*(v4 + 48) + 8) + 24) = v31 ^ HIWORD(v31);
LABEL_31:
  if (*a3)
  {
    v32 = *(v4 + 64);
    if (v32)
    {
      result = db_get_field_by_id(*(v4 + 72), v32, *(*(v4 + 80) + 296), &v35, &v34);
      if (!result)
      {
        result = matche(**(*(v4 + 80) + 312), v34, 7, 0, 0);
        *(*(*(v4 + 56) + 8) + 24) = result;
      }
    }
  }

  *(*(*(v4 + 32) + 8) + 24) = 1;
LABEL_36:
  *a2 = *(*(*(v4 + 48) + 8) + 24);
  return result;
}

uint64_t __CIIndexSetGetTypeID_block_invoke()
{
  __kCIIndexSetTypeID = _CFRuntimeRegisterClass();
  result = _CFRuntimeRegisterClass();
  __kCIIndexSetInvertedTypeID = result;
  if (__kCIIndexSetTypeID == result)
  {
    v1 = __si_assert_copy_extra_332();
    v9 = v1;
    v10 = "";
    if (v1)
    {
      v10 = v1;
    }

    __message_assert_336(v1, v2, v3, v4, v5, v6, v7, v8, "CIIndexSet.c", 914, "__kCIIndexSetTypeID != __kCIIndexSetInvertedTypeID", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

CFStringRef __CIIndexSetCopyDebugDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -2)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CIIndexSet: %p count: %u>", a1, 0);
  }

  else
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CIIndexSet: %p count: %u isBitMap: %d>", a1, (-2 - v1), v1 < -9);
  }
}

void CIIndexSetReleaseToCache(uint64_t *a1, uint64_t a2, void *a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = *a1;
      if (*(*a1 + 16) <= 0xFFFFFFF6)
      {
        blob_free(*(v8 + 40), *(v8 + 32), a3);
        *(v8 + 32) = 0;
      }

      *(v8 + 40) = v7;
      ++a1;
      v7 = v8;
      --v5;
    }

    while (v5);
    v9 = *a3 + 8;

    cicachelistenqueue(v9, v8, 20);
  }
}

uint64_t countItemsInRangeByEnumeration(_DWORD *cf, unsigned int a2, unsigned int a3)
{
  v12 = 0u;
  v13 = 0u;
  if (cf[6] >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = cf[6];
  }

  v5 = cf[4];
  if (cf[5] <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = cf[5];
  }

  if (v5 <= -10)
  {
    DWORD2(v13) = 2;
    *&v12 = __PAIR64__(v6, v4);
    *&v13 = cf;
LABEL_9:
    DWORD2(v12) = 0;
    goto LABEL_27;
  }

  if (v5 > -2)
  {
    if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    DWORD2(v13) = v8;
    v5 = cf[4];
    *&v12 = __PAIR64__(v6, v4);
    *&v13 = cf;
    if (v5 >= 1)
    {
      v9 = binarySearchMap(cf, v4);
      DWORD2(v12) = v9;
      if (v9 != cf[9])
      {
        goto LABEL_27;
      }

      v7 = cf[8] + v9 - cf[4];
      goto LABEL_26;
    }

    if ((v5 & 0x80000000) == 0 || v5 <= 0xFFFFFFF6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *&v12 = __PAIR64__(v6, v4);
    *&v13 = cf;
  }

  if (v5 <= 0xFFFFFFFD)
  {
    if (v4 >= cf[8])
    {
      v7 = 0;
      goto LABEL_26;
    }

    if (v5 != -3)
    {
      if (v4 >= cf[9])
      {
        v7 = 1;
        goto LABEL_26;
      }

      if (v5 != -4)
      {
        if (v4 >= cf[10])
        {
          v7 = 2;
          goto LABEL_26;
        }

        if (v5 != -5)
        {
          if (v4 >= cf[11])
          {
            v7 = 3;
            goto LABEL_26;
          }

          if (v5 != -6)
          {
            if (v4 >= cf[12])
            {
              v7 = 4;
              goto LABEL_26;
            }

            if (v5 != -7)
            {
              if (v4 >= cf[13])
              {
                v7 = 5;
                goto LABEL_26;
              }

              if (v5 != -8 && v4 >= cf[14])
              {
                v7 = 6;
                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  v7 = -2 - v5;
LABEL_26:
  DWORD2(v12) = v7;
LABEL_27:
    ;
  }

  return i;
}

void _CIIndexSetSetIndexRangeWithCache(int *cf, unsigned int a2, uint64_t a3, int a4, void *a5)
{
  if (*(cf + 5) == __PAIR64__(a3, a2))
  {
    return;
  }

  if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
  {
    _CIIndexSetForceBitmap(cf, a5, 0);
  }

  v11 = cf[4];
  if (v11 > -10)
  {
    v24 = cf[5];
    if (v24 >= a2)
    {
      v25 = cf[6];
      if (v25 <= a3)
      {
LABEL_29:
        LODWORD(v31) = cf[4];
        goto LABEL_58;
      }

      if (v11 < 0)
      {
LABEL_27:
        if (v25 > a3)
        {
          _CIIndexSetClearRange(cf, a3, v25);
        }

        goto LABEL_29;
      }
    }

    else if (v11 < 0)
    {
      _CIIndexSetClearRange(cf, v24, a2);
      v25 = cf[6];
      goto LABEL_27;
    }

    v29 = cf[9];
    if (v29 != v11)
    {
      memmove((*(cf + 5) + 4 * v29), (*(cf + 5) + 4 * (v29 - v11 + cf[8])), 4 * (v11 - v29));
      v11 = cf[4];
      cf[9] = v11;
    }

    if (v11 < 1)
    {
      LODWORD(v30) = 0;
    }

    else
    {
      v30 = 0;
      while (*(*(cf + 5) + 4 * v30) > a3)
      {
        if (v11 == ++v30)
        {
          goto LABEL_49;
        }
      }
    }

    if (v30 >= v11)
    {
LABEL_49:
      LODWORD(v31) = 0;
    }

    else
    {
      v31 = 0;
      v30 = v30;
      do
      {
        v44 = *(cf + 5);
        v45 = *(v44 + 4 * v30);
        if (v45 < a2)
        {
          break;
        }

        *(v44 + 4 * v31) = v45;
        ++v30;
        ++v31;
      }

      while (cf[4] > v30);
    }

    cf[4] = v31;
    cf[9] = v31;
    goto LABEL_58;
  }

  v12 = a3 - a2;
  if (a3 - a2 > cf[6] - cf[5] && _CIIndexSetConvertIfArrayIsMuchMoreEfficient(cf, a2, a3, a4, a5, v10))
  {
    if (cf[5] > cf[6])
    {
      v13 = __si_assert_copy_extra_332();
      v21 = v13;
      v22 = "";
      if (v13)
      {
        v22 = v13;
      }

      __message_assert_336(v13, v14, v15, v16, v17, v18, v19, v20, "CIIndexSet.c", 4275, "indexSet->_start <= indexSet->_end", v22);
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

    return;
  }

  v26 = (v12 + 32) >> 5;
  v27 = cf[8];
  if (v27 < v26)
  {
    if ((4 * v26) >= *MEMORY[0x1E69E9AC8] >> 1)
    {
      v28 = blob_calloc((v12 + 32) >> 5, 0);
      memcpy(v28, *(cf + 5), 4 * cf[8]);
      blob_free(*(cf + 5), cf[8], a5);
    }

    else
    {
      v28 = blob_realloc(*(cf + 5), v27, (v12 + 32) >> 5, a5);
    }

    *(cf + 5) = v28;
    bzero(v28 + 4 * cf[8], 4 * (v26 - cf[8]));
    cf[8] = v26;
    LODWORD(v27) = (v12 + 32) >> 5;
  }

  v32 = cf[6];
  v33 = v32 - a3;
  if (v32 >= a3)
  {
    if (v32 > a3)
    {
      v40 = (v32 - a3) & 0x1F;
      v41 = v33 >> 5;
      if (v27 != (v33 >> 5) + 1)
      {
        v42 = 0;
        v43 = v33 >> 5;
        do
        {
          *(*(cf + 5) + 4 * v42) = (*(*(cf + 5) + 4 * (v43 + v42 + 1)) >> (v40 ^ 0x1F)) | (*(*(cf + 5) + 4 * (v43 + v42)) << v40);
          ++v42;
          LODWORD(v27) = cf[8];
        }

        while (v42 < v27 + ~v41);
      }

      *(*(cf + 5) + 4 * (v27 - 1 - v41)) = *(*(cf + 5) + 4 * (v27 - 1)) << v40;
    }
  }

  else
  {
    v34 = a3 - v32;
    v35 = (a3 - v32) >> 5;
    v36 = (a3 - v32) & 0x1F;
    if ((v34 & 0x1F) != 0)
    {
      if (v27 + ~v35 > 0)
      {
        v37 = v27 - v35;
        v38 = 4 * (v27 + ~v35);
        v39 = v38 + 4 * v35;
        do
        {
          *(*(cf + 5) + v39) = (*(*(cf + 5) + v38) << v34) | (*(*(cf + 5) + v38 - 4) >> 1 >> ~v34);
          --v37;
          v39 -= 4;
          v38 -= 4;
        }

        while (v37 > 1);
      }

      *(*(cf + 5) + 4 * v35) = **(cf + 5) << v36;
    }

    else
    {
      memmove((*(cf + 5) + 4 * v35), *(cf + 5), 4 * (v27 - v35));
    }

    bzero(*(cf + 5), (4 * v35));
  }

  if (cf[5] > a2)
  {
    v46 = 4 * (v12 >> 5);
    *(*(cf + 5) + v46) &= masks[(v12 & 0x1F) + 1];
    bzero((*(cf + 5) + v46 + 4), 4 * (v26 + ~(v12 >> 5)));
  }

  v47 = a4 - cf[4] - 10;
  if (v47 >= v12 + 1)
  {
    v47 = v12 + 1;
  }

  LODWORD(v31) = -10 - v47;
  cf[4] = v31;
LABEL_58:
  cf[5] = a2;
  cf[6] = a3;
  if (v31 <= -10)
  {

    _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, a5, v10);
  }
}

uint64_t CIIndexSetClearRange_Array(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v5 = a2 - 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = binarySearchMap(a1, v5);
  v7 = v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  if (v9 == v8)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 36);
  if (v10 != v6)
  {
    v17 = *(a1 + 40);
    if (v10 >= v6)
    {
      memmove((v17 + 4 * (v9 - (v8 - v6))), (v17 + 4 * v6), 4 * (v10 - v6));
      v8 = *(a1 + 16);
    }

    else
    {
      memmove((v17 + 4 * v10), (v17 + 4 * (v10 + v9 - v8)), 4 * (v6 - (v10 + v9 - v8)));
      v8 = *(a1 + 16);
      v7 = v7 - *(a1 + 32) + v8;
    }

LABEL_5:
    *(a1 + 36) = v7;
  }

  v11 = v7 - v8;
  if (v11)
  {
    v7 = v11 + *(a1 + 32);
  }

  result = binarySearchMap(a1, a3);
  if (v7 != result)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 36) - result;
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (v16 < 0 != v15)
    {
      v18 = __si_assert_copy_extra_332();
      v26 = v18;
      v27 = "";
      if (v18)
      {
        v27 = v18;
      }

      __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "CIIndexSet.c", 2357, "set->_count >= set->_hole-hole", v27);
      free(v26);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    *(a1 + 16) = v16;
    *(a1 + 36) = result;
  }

  return result;
}

BOOL CIIndexSetAddIndexExpandingRange(int *a1, uint64_t a2, int8x8_t a3)
{
  if (a1[6] < a2)
  {
    v3 = (1 << -__clz(a2));
    do
    {
      v4 = v3;
      v3 = (2 * v3);
    }

    while (v4 < a2);
    v5 = a1[5];
    if (v5 <= 1)
    {
      v5 = 1;
    }

    if (v5 <= v4)
    {
      v6 = a1;
      v7 = a2;
      _CIIndexSetSetIndexRangeWithCache(a1, v5, v4, 1, 0);
      a1 = v6;
      a2 = v7;
    }
  }

  v9 = -1;
  return _CIIndexSetAddIndex(a1, a2, 0, &v9, a3);
}

BOOL CIIndexSetHasIndexWithHint(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 20);
  if (v3 > a2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  if (v8 > -10)
  {
    if ((v8 & 0x80000000) == 0)
    {
      v11 = a2;
      v12 = a1;
      if (CFGetTypeID(a1) != __kCIIndexSetInvertedTypeID)
      {
        v16 = *(v12 + 16);
        v17 = *(v12 + 32);
        v18 = *(v12 + 36);
        v19 = searchMapWithHint(v12, v11, a3, 0);
        if (v19 < *(v12 + 36) || v19 >= v17 - v16 + v18 && v19 < *(v12 + 32))
        {
          return *(*(v12 + 40) + 4 * v19) == v11;
        }

        return 0;
      }

      a1 = v12;
      v3 = *(v12 + 20);
      LODWORD(a2) = v11;
    }

    if (v3 <= a2)
    {
      v13 = *(a1 + 24);
      v6 = v13 >= a2;
      v14 = v13 - a2;
      if (v6)
      {
        v15 = *(a1 + 16);
        if (v15 <= -10)
        {
          return (*(*(a1 + 40) + 4 * (v14 >> 5)) >> v14) & 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          v21 = a1;
          v22 = a2;
          v23 = binarySearchMap(a1, a2);
          v24 = v21;
          v25 = *(v21 + 36);
          if (v23 < v25 || (v26 = 0, v27 = *(v24 + 32), v23 < v27) && v23 >= v27 + v25 - *(v24 + 16))
          {
            v26 = *(*(v24 + 40) + 4 * v23) == v22;
          }

          return v26 ^ (CFGetTypeID(v24) == __kCIIndexSetInvertedTypeID);
        }

        if (v15 <= 0xFFFFFFFD)
        {
          v9 = *(a1 + 32) == a2;
          if (*(a1 + 32) == a2)
          {
            return v9;
          }

          if (v15 == -3)
          {
            return v9;
          }

          v9 = *(a1 + 36) == a2;
          if (*(a1 + 36) == a2)
          {
            return v9;
          }

          if (v15 == -4)
          {
            return v9;
          }

          v9 = *(a1 + 40) == a2;
          if (*(a1 + 40) == a2)
          {
            return v9;
          }

          if (v15 == -5)
          {
            return v9;
          }

          v9 = *(a1 + 44) == a2;
          if (*(a1 + 44) == a2)
          {
            return v9;
          }

          if (v15 == -6)
          {
            return v9;
          }

          v9 = *(a1 + 48) == a2;
          if (*(a1 + 48) == a2)
          {
            return v9;
          }

          if (v15 == -7)
          {
            return v9;
          }

          v9 = *(a1 + 52) == a2;
          if (*(a1 + 52) == a2 || v15 == -8)
          {
            return v9;
          }

          return *(a1 + 56) == a2;
        }
      }
    }

    return 0;
  }

  return (*(*(a1 + 40) + 4 * (v7 >> 5)) >> v7) & 1;
}

void data_map_new_init_with_ctx(uint64_t a1)
{
  if ((*(a1 + 20) & 0x20) == 0)
  {
    operator new();
  }

  operator new();
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_insert_with_id(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v66 = 0;
  v8 = a1[1];
  v9 = dataMap<unsigned int,false,false,true>::dm_hash(*(v8 + 282), &a2[*(v8 + 216)], a3 - *(v8 + 216));
  v10 = *(v8 + 256);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  v57 = a4;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v14 = v13;
  v15 = v12;
  v16 = HIDWORD(v12);
  v18 = v17;
  v19 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v56 = *(v19 + 312);
  v20 = *(v19 + 224);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  v64 = v16;
  v65 = v15;
  v62 = v14;
  v63 = v18;
  if (!_setjmp(v19))
  {
    v22 = 0;
    bucket_entry = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFF);
    *buf = 0;
    v60 = 0;
    v61 = 0;
    if (!bucket_entry)
    {
      goto LABEL_47;
    }

    v24 = *bucket_entry;
    if (*bucket_entry)
    {
      goto LABEL_48;
    }

    v25 = bucket_entry;
    *buf = a3;
    v60 = a2;
    (*(*a1 + 112))(a1);
    if ((*(*a1 + 336))(a1))
    {
LABEL_12:
      v24 = 0;
      goto LABEL_48;
    }

    if (*v25 || *(a1[1] + 256) > v10)
    {
      v26 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFF);
      if (!v26)
      {
        v24 = 0;
        goto LABEL_48;
      }

      v25 = v26;
      v24 = *v26;
      if (*v26)
      {
LABEL_48:
        v41 = v24;
        v42 = threadData[9 * v65 + 1] + 320 * v64;
        *(v42 + 312) = v56;
        v43 = *(v42 + 232);
        if (v43)
        {
          v43(*(v42 + 288));
        }

        dropThreadId(v65, 0, add_explicit + 1);
        v21 = v41;
        goto LABEL_51;
      }
    }

    v27 = v25;
    if (a3 >> 28)
    {
      v29 = 5;
      v28 = v57;
      goto LABEL_28;
    }

    v28 = v57;
    if (a3 >> 21)
    {
      v30 = 4;
    }

    else
    {
      if (!(a3 >> 14))
      {
        if (a3 < 0x80)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

LABEL_28:
        v31 = *(a1[1] + 4511);
        if (!dataMap<unsigned int,false,false,true>::_data_map_grow(a1, (v29 + a3), &v66))
        {
          goto LABEL_12;
        }

        v22 = v28;
        v32 = v31 <= v28 ? v28 : v31;
        if (!dataMap<unsigned int,false,false,true>::_data_map_grow_offsets(a1, &v66, v32))
        {
          goto LABEL_12;
        }

        v33 = a1[1];
        if ((*(v33 + 275) & 1) == 0)
        {
          dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
          v33 = a1[1];
          *(v33 + 275) = 1;
        }

        v34 = *(v33 + 4503);
        *(v34 + 4 * v28) = *(v33 + 323);
        if ((*(v33 + 273) & 1) == 0)
        {
          dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
          v33 = a1[1];
          *(v33 + 273) = 1;
        }

        *(v34 + 4 * v28) = data_entry_store<unsigned int,false,false,true>(v33 + 307, buf);
        v35 = a1[1];
        if ((*(v35 + 274) & 1) == 0)
        {
          dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
          v36 = a1[1];
          *(v36 + 274) = 1;
          v35 = v36;
        }

        v37 = v35;
        if ((v66 & 4) != 0)
        {
          v38 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, v28, a2, a3, 0xFFFFFFFF);
          v37 = a1[1];
          v27 = v38;
        }

        *v27 = v28;
        v39 = *(v37 + 4515);
        if (v39 < v28)
        {
          *(v37 + 4515) = v28;
          v39 = v28;
        }

        v40 = *(v37 + 4519) + 1;
        *(v37 + 4519) = v40;
        if (v39 < v40)
        {
          v45 = __si_assert_copy_extra_332();
          v53 = v45;
          v54 = "";
          if (v45)
          {
            v54 = v45;
          }

          __message_assert_336(v45, v46, v47, v48, v49, v50, v51, v52, "dataMap.ipp", 3672, "data_map->max_id >= data_map->count", v54);
          free(v53);
          if (__valid_fs(-1))
          {
            v55 = 2989;
          }

          else
          {
            v55 = 3072;
          }

          *v55 = -559038737;
          abort();
        }

        if (v39 == v40)
        {
          *(v37 + 4511) = v39 + 1;
        }

        SIActivityJournalDMAdd(*(v37 + 4543), *(v37 + 252), *(v37 + 216), v28, v9, a3);
LABEL_47:
        v24 = v22;
        goto LABEL_48;
      }

      v30 = 3;
    }

    v29 = v30;
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v19 + 312) = v56;
  CIOnThreadCleanUpReset(v62);
  dropThreadId(v65, 1, add_explicit + 1);
  CICleanUpReset(v65, v63);
  v21 = 0;
LABEL_51:
  v44 = v21;
  (*(*a1 + 112))(a1);
  return v44;
}

uint64_t dataMap<unsigned int,false,false,true>::dm_hash(char a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1)
  {
    return LegacyHash(a2, a3);
  }

  else
  {
    return commonHash(a3, a2);
  }
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, size_t a5, unsigned int a6)
{
  v84 = *MEMORY[0x1E69E9840];
  v51 = a6;
  if (a3 < a6)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(*(a1 + 8) + 4487);
    v47 = a6;
    v11 = a2 - (a2 / v10) * v10;
    v12 = v10;
    v48 = v10;
    while (v11 >= v12)
    {
      v32 = 0;
      v33 = v11;
LABEL_37:
      if (v9 & 1 | (v33 != v10))
      {
        return 0;
      }

      result = 0;
      v9 = 1;
      v12 = v11;
      v11 = 0;
      if (v32)
      {
        return result;
      }
    }

    v13 = v11;
    while (1)
    {
      v14 = *(a1 + 8);
      v15 = *(v14 + 4479);
      v16 = *(v15 + 4 * v13);
      if (v16)
      {
        v17 = v16 == a3;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        return v15 + 4 * v13;
      }

      if (!a3)
      {
        break;
      }

LABEL_23:
      ++v13;
      if ((v8 & 1) != 0 || v13 >= v12)
      {
        goto LABEL_36;
      }
    }

    v18 = *(v14 + 4503);
    if (v16 >= a6 || (v18 + 1) <= 1)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v34 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 8);
        v39 = fd_name(*(v38 + 220), &v68, 0x100uLL);
        *buf = 136316418;
        v57 = "_data_map_get_offset_entry_impl";
        v58 = 1024;
        v59 = 362;
        v60 = 2048;
        v61 = v16;
        v62 = 2048;
        v63 = v47;
        v64 = 2048;
        v65 = v38;
        v66 = 2080;
        v67 = v39;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v34;
      a6 = v51;
LABEL_35:
      LODWORD(v13) = v13 + 1;
      v8 = 1;
LABEL_36:
      v33 = v13;
      v32 = v8;
      v10 = v48;
      goto LABEL_37;
    }

    v20 = *(v18 + 4 * v16);
    if (v20 == 1)
    {
      goto LABEL_35;
    }

    v52 = 0;
    __s2 = 0;
    v54 = 0;
    v55 = 0;
    v21 = (v20 + *(v14 + 5575));
    if (*(v14 + 323) <= v21)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v22 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 8);
        v45 = *(v30 + 323);
        v46 = v30;
        v31 = fd_name(*(v30 + 220), &v68, 0x100uLL);
        *buf = 136316418;
        v57 = "_data_map_get_data_entry";
        v58 = 1024;
        v59 = 397;
        v60 = 2048;
        v61 = v21;
        v62 = 2048;
        v63 = v45;
        v64 = 2048;
        v65 = v46;
        v66 = 2080;
        v67 = v31;
        v26 = v28;
        v27 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        goto LABEL_30;
      }
    }

    else
    {
      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v21, &v52, &v55);
      if (v55 != 1)
      {
        if (v52 == a5)
        {
          v29 = memcmp(a4, __s2, a5);
          a6 = v51;
          if (!v29)
          {
            return v15 + 4 * v13;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = fd_name(*(*(a1 + 8) + 220), &v68, 0x100uLL);
        v25 = *(*(a1 + 8) + 323);
        *buf = 136316418;
        v57 = "_data_map_get_data_entry";
        v58 = 1024;
        v59 = 393;
        v60 = 2080;
        v61 = v24;
        v62 = 2048;
        v63 = v21;
        v64 = 2048;
        v65 = v25;
        v66 = 2048;
        v67 = v52;
        v26 = v23;
        v27 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_30:
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x3Au);
      }
    }

    *__error() = v22;
    v8 = 1;
LABEL_22:
    a6 = v51;
    goto LABEL_23;
  }

  if (!a3)
  {
    return 0;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v40 = *__error();
  v41 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v43 = *(a1 + 8);
    v44 = fd_name(*(v43 + 220), &v68, 0x100uLL);
    *buf = 136316418;
    v57 = "_data_map_get_bucket_entry";
    v58 = 1024;
    v59 = 514;
    v60 = 2048;
    v61 = a3;
    v62 = 2048;
    v63 = v51;
    v64 = 2048;
    v65 = v43;
    v66 = 2080;
    v67 = v44;
    _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
  }

  v42 = __error();
  result = 0;
  *v42 = v40;
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_grow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = dataMap<unsigned int,false,false,true>::_data_map_grow_offsets(a1, a3, *(*(a1 + 8) + 4511));
  v7 = *(a1 + 8);
  if (!v6 || *(v7 + 278))
  {
    goto LABEL_3;
  }

  v10 = *(v7 + 4511) - *(v7 + 4523);
  if (v10 >= 2 * *(v7 + 4487) / 3u || v10 < 2 * *(v7 + 4527))
  {
    v11 = dataMap<unsigned int,false,false,true>::_data_map_rehash(a1);
    v7 = *(a1 + 8);
    if (!v11)
    {
      goto LABEL_3;
    }

    *a3 |= 4u;
  }

  v12 = a2 + *(v7 + 323) + 8;
  if (v12 <= *(v7 + 315))
  {
    return 1;
  }

  if (_storageWindowsSetFileSize((v7 + 307), (v12 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    *a3 |= 1u;
    return 1;
  }

  v7 = *(a1 + 8);
LABEL_3:
  v8 = (v7 + 278);
  result = 0;
  if (!*v8)
  {
    *v8 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_grow_offsets(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 278))
  {
    goto LABEL_2;
  }

  v6 = (v3 + 4463);
  if (*v6 > a3)
  {
    return 1;
  }

  v9 = (*MEMORY[0x1E69E9AC8] + 4 * (a3 + 1) - 1) & -*MEMORY[0x1E69E9AC8];
  v10 = fd_truncate(*(v6 + 28), v9);
  v3 = *(a1 + 8);
  if (v10 != -1)
  {
    *(v3 + 4459) = v9;
    v11 = *(v3 + 4499);
    if (v9 <= v11)
    {
LABEL_9:
      *(v3 + 4463) = (v9 >> 2);
      *a2 |= 2u;
      return 1;
    }

    v12 = (2 * v11);
    munmap(*(v3 + 4503), v11);
    v13 = *(a1 + 8);
    *(v13 + 4499) = 0;
    v14 = fd_mmap(*(v13 + 4491), v12, 3, 1, 0);
    v3 = *(a1 + 8);
    *(v3 + 4503) = v14;
    if (v14 != -1)
    {
      *(v3 + 4499) = v12;
      goto LABEL_9;
    }
  }

LABEL_2:
  v4 = (v3 + 278);
  result = 0;
  if (!*v4)
  {
    *v4 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_dirty(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 299);
  if (*(v2 + 16))
  {
    v3 = result;
    *(v2 + 16) = 0;
    fd_pwrite(*(v1 + 220), v2, 0x38uLL, 0);
    v4 = *(*(v3 + 8) + 220);

    return fd_sync(v4, 0);
  }

  return result;
}

uint64_t data_entry_store<unsigned int,false,false,true>(uint64_t a1, unsigned int *a2)
{
  if (*a2 < 0x80)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (*a2 >> 14)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (*a2 >> 21)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  if (*a2 >> 28)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 + *a2;
  v9 = *(a1 + 16);
  v10 = v9 + v8;
  if ((v9 + v8) < *(a1 + 8))
  {
    goto LABEL_14;
  }

  if (_storageWindowsExpandBacking(a1, v8))
  {
    v9 = *(a1 + 16);
    v10 = v9 + v8;
LABEL_14:
    *(a1 + 16) = v10;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v11 = _windowsResolvePtr(a1, v9, v8);
  v12 = *a2;
  v13 = *a2 >> 28;
  if (v13)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = (v12 >> 14) | 0x80;
    v11[3] = (v12 >> 21) | 0x80;
    v11[4] = v13;
    v14 = 5;
  }

  else if (v12 >= 0x200000)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = (v12 >> 14) | 0x80;
    v11[3] = v12 >> 21;
    v14 = 4;
  }

  else if (v12 >= 0x4000)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = v12 >> 14;
    v14 = 3;
  }

  else if (v12 >= 0x80)
  {
    *v11 = v12 | 0x80;
    v11[1] = v12 >> 7;
    v14 = 2;
  }

  else
  {
    *v11 = v12;
    v14 = 1;
  }

  memcpy(&v11[v14], *(a2 + 1), *a2);
  return v9;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_rehash(uint64_t a1)
{
  v90 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  *(v2 + 4527) = 0;
  v3 = *(v2 + 4511) - *(v2 + 4523);
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 4511);
    v9 = *(v7 + 4523);
    v10 = *(v7 + 4487);
    *buf = 134219008;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 1024;
    *&buf[26] = v3;
    *&buf[30] = 1024;
    LODWORD(v76) = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "rehash new %p max id: %d deletes: %d count: %d hash_size: %d", buf, 0x24u);
  }

  *__error() = v4;
  v11 = *(a1 + 8);
  v12 = (v11 + 4511);
  v13 = *(v11 + 4543);
  v14 = *(v11 + 252);
  v15 = *(v11 + 299);
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16 < 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  SIActivityJournalEvent(v13, v14, 3u, v17, *v12);
  v18 = *(a1 + 8);
  v19 = *(v18 + 4479);
  v20 = 4 * *(v18 + 4487);
  fd_system_status_stall_if_busy();
  msync(v19, v20, 4);
  if (fd_truncate(*(*(a1 + 8) + 236), 0) == -1)
  {
    goto LABEL_33;
  }

  v21 = 2 * v3;
  if (2 * v3 <= (*MEMORY[0x1E69E9AC8] >> 2))
  {
    v21 = *MEMORY[0x1E69E9AC8] >> 2;
  }

  v22 = *(a1 + 8);
  *(v22 + 4487) = v21;
  v23 = 4 * v21;
  if (fd_truncate(*(v22 + 236), v23) == -1)
  {
    goto LABEL_33;
  }

  v24 = *(a1 + 8);
  if ((*(v24 + 274) & 1) == 0)
  {
    dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
    v24 = *(a1 + 8);
    *(v24 + 274) = 1;
  }

  *(v24 + 4471) = v23;
  v25 = *(v24 + 4475);
  if (v23 > v25)
  {
    v26 = v24 + 4096;
    v27 = v23 & 0xFFFFFFFC;
    v28 = v25;
    do
    {
      v29 = v28;
      v28 *= 2;
    }

    while (v29 < v27);
    munmap(*(v26 + 383), v25);
    v30 = *(a1 + 8);
    *(v30 + 4475) = 0;
    *(v30 + 4479) = -1;
    v31 = fd_mmap(*(v30 + 236), v29, 3, 1, 0);
    v24 = *(a1 + 8);
    *(v24 + 4479) = v31;
    if (v31 == -1)
    {
      goto LABEL_33;
    }

    *(v24 + 4475) = v29;
  }

  ++*(v24 + 256);
  LODWORD(v32) = *(v24 + 4511);
  if (v32 < 2)
  {
    return 1;
  }

  v33 = 1;
  while (1)
  {
    v34 = *(v24 + 4503);
    if ((v34 + 1) <= 1)
    {
      break;
    }

    v35 = *(v34 + 4 * v33);
    if (v35 != 1)
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v36 = (v35 + *(v24 + 5575));
      if (*(v24 + 323) <= v36)
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        memset(buf, 0, sizeof(buf));
        v42 = *__error();
        v48 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        v49 = *(a1 + 8);
        v50 = *(v49 + 323);
        v51 = fd_name(*(v49 + 220), buf, 0x100uLL);
        *v63 = 136316418;
        v64 = "_data_map_get_data_entry";
        v65 = 1024;
        v66 = 397;
        v67 = 2048;
        v68 = v36;
        v69 = 2048;
        v70 = v50;
        v71 = 2048;
        v72 = v49;
        v73 = 2080;
        v74 = v51;
        v52 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_40:
        v55 = v48;
        goto LABEL_42;
      }

      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v35 + *(v24 + 5575), &v59, &v62);
      if (v62 == 1)
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        memset(buf, 0, sizeof(buf));
        v42 = *__error();
        v48 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        v53 = fd_name(*(*(a1 + 8) + 220), buf, 0x100uLL);
        v54 = *(*(a1 + 8) + 323);
        *v63 = 136316418;
        v64 = "_data_map_get_data_entry";
        v65 = 1024;
        v66 = 393;
        v67 = 2080;
        v68 = v53;
        v69 = 2048;
        v70 = v36;
        v71 = 2048;
        v72 = v54;
        v73 = 2048;
        v74 = v59;
        v52 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
        goto LABEL_40;
      }

      v37 = *(a1 + 8);
      v38 = *(v37 + 216);
      if (v59 < v38)
      {
        goto LABEL_33;
      }

      v39 = data_entry_hash<unsigned int,false,false,true>(v59, v60, v38, *(v37 + 282));
      bucket_entry = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v39, v33, 0, 0, *(v37 + 4511));
      if (!bucket_entry || *bucket_entry)
      {
        goto LABEL_33;
      }

      *bucket_entry = v33;
      v24 = *(a1 + 8);
    }

    ++v33;
    v32 = *(v24 + 4511);
    if (v33 >= v32)
    {
      return 1;
    }
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  memset(buf, 0, sizeof(buf));
  v42 = *__error();
  v43 = _SILogForLogForCategory(0);
  if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_32;
  }

  v56 = v32;
  v57 = *(a1 + 8);
  v58 = fd_name(*(v57 + 220), buf, 0x100uLL);
  *v63 = 136316418;
  v64 = "_data_map_get_offset_entry_impl";
  v65 = 1024;
  v66 = 362;
  v67 = 2048;
  v68 = v33;
  v69 = 2048;
  v70 = v56;
  v71 = 2048;
  v72 = v57;
  v73 = 2080;
  v74 = v58;
  v52 = "%s:%d: invalid data id %llu max %llu %p %s";
  v55 = v43;
LABEL_42:
  _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, v52, v63, 0x3Au);
LABEL_32:
  *__error() = v42;
LABEL_33:
  v44 = *__error();
  v45 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v47 = *(a1 + 8);
    *buf = 136315650;
    *&buf[4] = "_data_map_rehash";
    *&buf[12] = 1024;
    *&buf[14] = 645;
    *&buf[18] = 2048;
    *&buf[20] = v47;
    _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", buf, 0x1Cu);
  }

  v46 = __error();
  result = 0;
  *v46 = v44;
  return result;
}

unint64_t dataMap<unsigned int,false,false,true>::data_entry_restore<false>(uint64_t a1, unsigned int a2, unsigned int *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = _windowsResolvePtr(*(a1 + 8) + 307, a2, 4);
  v9 = *(a1 + 8);
  v10 = *v8;
  if ((v10 & 0x80) == 0)
  {
    v11 = 1;
    goto LABEL_8;
  }

  v12 = *(v9 + 323);
  if (v12 <= 1)
  {
    goto LABEL_7;
  }

  v13 = v8[1];
  if ((v8[1] & 0x80000000) == 0)
  {
    v10 = v10 & 0x7F | (v13 << 7);
    v11 = 2;
    goto LABEL_8;
  }

  if (v12 == 2)
  {
    goto LABEL_7;
  }

  v15 = v8[2];
  if ((v8[2] & 0x80000000) == 0)
  {
    v11 = 3;
    v10 = ((v13 & 0x7F) << 7) | (v15 << 14) | v10 & 0x7F;
    goto LABEL_8;
  }

  if (v12 <= 3)
  {
    goto LABEL_7;
  }

  v16 = v8[3];
  if (v8[3] < 0)
  {
    if (v12 != 4)
    {
      v18 = v8[4];
      if (v18 < 0)
      {
        if (__valid_fs(-1))
        {
          v19 = __si_assert_copy_extra_332();
          v20 = v19;
          v21 = "";
          if (v19)
          {
            v21 = v19;
          }

          si_analytics_log_2752("%s:%u: failed assertion '%s' %s readVInt32_boundschecked: exceeds max size for uint32_t", "VIntUtils.h", 389, "(b4 & 0x80) == 0", v21);
          free(v20);
          v22 = 2816;
        }

        else
        {
          v22 = 3072;
        }

        *v22 = -559038737;
        abort();
      }

      v17 = ((v16 & 0x7F) << 21) | (v18 << 28) | ((v15 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
      v11 = 5;
      goto LABEL_19;
    }

LABEL_7:
    v11 = 0;
    v10 = 0;
    *a4 = 1;
    goto LABEL_8;
  }

  v17 = ((v15 & 0x7F) << 14) | (v16 << 21) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
  v11 = 4;
LABEL_19:
  v10 = v17;
LABEL_8:
  *a3 = v10;
  result = _windowsResolvePtr(v9 + 307, v7, v11 + v10);
  if (v11 + *a3 <= *(*(a1 + 8) + 323))
  {
    *(a3 + 1) = result + v11;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

uint64_t data_entry_hash<unsigned int,false,false,true>(int a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a4)
  {
    return LegacyHash((a2 + a3), a1 - a3);
  }

  else
  {
    return commonHash(a1 - a3, (a2 + a3));
  }
}

uint64_t LegacyHash(const unsigned __int8 *a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v3 = a2 & 3;
    if (a2 >= 4)
    {
      v4 = (a2 >> 2) + 1;
      do
      {
        v5 = ((a2 + *a1) << 16) ^ (*(a1 + 1) << 11) ^ (a2 + *a1);
        a1 += 4;
        LODWORD(a2) = v5 + (v5 >> 11);
        --v4;
      }

      while (v4 > 1);
    }

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v7 = (a2 + *a1) ^ ((a2 + *a1) << 11);
        LODWORD(a2) = v7 + (v7 >> 17);
      }

      else
      {
        v8 = (a1[2] << 18) ^ ((a2 + *a1) << 16) ^ (a2 + *a1);
        LODWORD(a2) = v8 + (v8 >> 11);
      }
    }

    else if (v3)
    {
      v6 = (a2 + *a1) ^ ((a2 + *a1) << 10);
      LODWORD(a2) = v6 + (v6 >> 1);
    }

    v9 = (a2 ^ (8 * a2)) + ((a2 ^ (8 * a2)) >> 5);
    v10 = (v9 ^ (16 * v9)) + ((v9 ^ (16 * v9)) >> 17);
    return (v10 ^ (v10 << 25)) + ((v10 ^ (v10 << 25)) >> 6);
  }

  return v2;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_data_for_offset_locked(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v5 = *(a1 + 8);
  v6 = (*(v5 + 5575) + a2);
  if (*(v5 + 323) <= v6)
  {
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
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 8);
      v17 = *(v16 + 323);
      v18 = fd_name(*(v16 + 220), &v35, 0x100uLL);
      *buf = 136316418;
      v24 = "_data_map_get_data_entry";
      v25 = 1024;
      v26 = 397;
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = v17;
      v31 = 2048;
      v32 = v16;
      v33 = 2080;
      v34 = v18;
      v12 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      goto LABEL_11;
    }

LABEL_6:
    v13 = __error();
    result = 0;
    *v13 = v8;
    return result;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v6, &v19, &v22);
  if (v22 == 1)
  {
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
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = fd_name(*(*(a1 + 8) + 220), &v35, 0x100uLL);
      v11 = *(*(a1 + 8) + 323);
      *buf = 136316418;
      v24 = "_data_map_get_data_entry";
      v25 = 1024;
      v26 = 393;
      v27 = 2080;
      v28 = v10;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v19;
      v12 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_11:
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v12, buf, 0x3Au);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v15 = *(*(a1 + 8) + 216);
  if (a4)
  {
    *a4 = v19 - v15;
  }

  return v20 + v15;
}

BOOL dataMap<unsigned int,false,false,true>::data_map_is_empty(void *a1)
{
  memset(&v8, 0, sizeof(v8));
  if (fd_stat(*(a1[1] + 236), &v8))
  {
    v2 = 1;
  }

  else
  {
    v2 = v8.st_size == 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (!fd_stat(*(a1[1] + 220), &v8) && v8.st_size != 0)
  {
    return 0;
  }

  if (!fd_stat(*(a1[1] + 4491), &v8) && v8.st_size != 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 272))(a1);
  return fd_stat(v5, &v8) || v8.st_size == 0;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_mprotect_storage(uint64_t a1, int a2)
{
  _windowsResolvePtr(*(a1 + 8) + 307, 4uLL, 4);
  storageWindowsProtect(*(a1 + 8) + 307, a2);
  return 0;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_collect_complete(int a1, int a2, uint64_t a3, const char *a4, const char *a5)
{
  _rename_prefix_suffix(a2, a4 + 268, ".offsets", a4, a5);
  _rename_prefix_suffix(a2, a4 + 268, ".data", v7, v8);

  return _rename_prefix_suffix(a2, a4 + 268, ".header", v9, v10);
}

uint64_t _rename_prefix_suffix(int a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(v10, 0x400uLL);
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s%s", "", a2, a3);
  snprintf(v10, 0x400uLL, "%s%s%s", "tmp.", a2, a3);
  return renameat(a1, v10, a1, __str);
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_defer_block(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 4535);
  if (v3)
  {
    return v3(*(v2 + 244), a2);
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_data_offset_locked(uint64_t a1, unsigned int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 4511);
  v6 = *(v4 + 4503);
  if (v5 > a2 && (v6 + 1) > 1)
  {
    v10 = *(v6 + 4 * a2);
    if (v10 == 1)
    {
      return 0;
    }

    else if (*(v4 + 264))
    {
      os_unfair_lock_lock((v4 + 260));
      v12 = *(a1 + 8);
      v13 = *(v12 + 264);
      if (v13)
      {
        bit_vector_set(v13, a2);
        v12 = *(a1 + 8);
      }

      os_unfair_lock_unlock((v12 + 260));
    }
  }

  else
  {
    memset(v28, 0, sizeof(v28));
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 8);
      v15 = fd_name(*(v14 + 220), v28, 0x100uLL);
      v16 = 136316418;
      v17 = "_data_map_get_offset_entry_impl";
      v18 = 1024;
      v19 = 362;
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = v5;
      v24 = 2048;
      v25 = v14;
      v26 = 2080;
      v27 = v15;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v16, 0x3Au);
    }

    v10 = 0;
    *__error() = v8;
  }

  return v10;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v13 = 0;
  v6 = *(*(a1 + 8) + 277);
  asprintf(&v13, "%s%s", a2, ".buckets");
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(a1 + 8) + 236), v13, 514, v7);
  *a3 = sibling_protected;
  if (sibling_protected)
  {
    fd_copyfile(*(*(a1 + 8) + 236), sibling_protected, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".header");
  v9 = fd_create_sibling_protected(*(*(a1 + 8) + 220), v13, 514, v7);
  *(a3 + 24) = v9;
  if (v9)
  {
    fd_copyfile(*(*(a1 + 8) + 220), v9, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".offsets");
  v10 = fd_create_sibling_protected(*(*(a1 + 8) + 4491), v13, 514, v7);
  *(a3 + 8) = v10;
  if (v10)
  {
    fd_copyfile(*(*(a1 + 8) + 4491), v10, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".data");
  v11 = fd_create_sibling_protected(*(*(a1 + 8) + 307), v13, 514, v7);
  *(a3 + 16) = v11;
  if (v11)
  {
    fd_copyfile(*(*(a1 + 8) + 307), v11, 1);
  }

  free(v13);
  return 0;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_wrlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    return 0;
  }

  v2 = _db_write_lock(v1);
  if (v2)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v2;
      if (v2 == -1)
      {
        v6 = *__error();
      }

      v7 = 136315650;
      v8 = "_data_map_wrlock";
      v9 = 1024;
      v10 = 164;
      v11 = 1024;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_wrlock error %d", &v7, 0x18u);
    }

    *__error() = v4;
  }

  return v2;
}

void *dataMap<unsigned int,false,false,true>::data_map_copy_deleted_ids(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = v1 + 4096;
  if (!*(v2 + 427))
  {
    return 0;
  }

  v4 = *(v2 + 415);
  v5 = bit_vector_create(v4);
  if (v4 >= 2)
  {
    for (i = 1; v4 != i; ++i)
    {
      v7 = *(a1 + 8);
      v8 = *(v7 + 4511);
      v9 = *(v7 + 4503);
      if (i < v8 && (v9 + 1) > 1)
      {
        if (*(v9 + 4 * i) != 1)
        {
          continue;
        }
      }

      else
      {
        memset(v28, 0, sizeof(v28));
        v11 = *__error();
        v12 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 8);
          v14 = fd_name(*(v13 + 220), v28, 0x100uLL);
          *buf = 136316418;
          v17 = "_data_map_get_offset_entry_impl";
          v18 = 1024;
          v19 = 362;
          v20 = 2048;
          v21 = i;
          v22 = 2048;
          v23 = v8;
          v24 = 2048;
          v25 = v13;
          v26 = 2080;
          v27 = v14;
          _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v11;
      }

      bit_vector_set(v5, i);
    }
  }

  return v5;
}

void *bit_vector_create(CFIndex a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  if (!v2)
  {
    v7 = __si_assert_copy_extra_332();
    v15 = v7;
    v16 = "";
    if (v7)
    {
      v16 = v7;
    }

    __message_assert_336(v7, v8, v9, v10, v11, v12, v13, v14, "bit_vector.h", 41, "bv", v16);
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

  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  if (a1 <= 128)
  {
    a1 = 128;
  }

  *v3 = 0;
  v3[1] = a1;
  Mutable = CFBitVectorCreateMutable(v4, a1);
  v3[2] = Mutable;
  CFBitVectorSetCount(Mutable, a1);
  if (!v3[2])
  {
    v18 = __si_assert_copy_extra_332();
    v26 = v18;
    v27 = "";
    if (v18)
    {
      v27 = v18;
    }

    __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "bit_vector.h", 47, "bv->_cfbv", v27);
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

  return v3;
}

{
  v2 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  if (!v2)
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert(v7, "bit_vector.h", 41, "bv", v9);
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

  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  if (a1 <= 128)
  {
    a1 = 128;
  }

  *v3 = 0;
  v3[1] = a1;
  Mutable = CFBitVectorCreateMutable(v4, a1);
  v3[2] = Mutable;
  CFBitVectorSetCount(Mutable, a1);
  if (!v3[2])
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert(v11, "bit_vector.h", 47, "bv->_cfbv", v13);
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

  return v3;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_collect(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  if (!*(a1[1] + 264))
  {
    return 0;
  }

  (*(*a1 + 336))(a1);
  v8 = *(a1[1] + 264);
  if (a2 >= (*(*a1 + 96))(a1))
  {
    goto LABEL_10;
  }

  v9 = (*(*a1 + 96))(a1);
  if (v9 <= a2)
  {
    goto LABEL_10;
  }

  v107.location = a2;
  v107.length = (*(a1[1] + 4511) - a2);
  FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(v8 + 16), v107, 0);
  v11 = FirstIndexOfBit;
  if (FirstIndexOfBit < a2)
  {
    goto LABEL_10;
  }

  if (*(a1[1] + 4511) <= FirstIndexOfBit || FirstIndexOfBit > v9)
  {
    goto LABEL_10;
  }

  v75 = a3;
  while (1)
  {
    if (*v8 <= v11 || !CFBitVectorGetBitAtIndex(*(v8 + 16), v11))
    {
      v15 = a1[1];
      v16 = *(v15 + 4511);
      v17 = *(v15 + 4503);
      if (v11 >= v16 || (v17 + 1) <= 1)
      {
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
        v93 = 0u;
        memset(v92, 0, sizeof(v92));
        v19 = *__error();
        v20 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v30 = a1[1];
          v31 = fd_name(*(v30 + 220), v92, 0x100uLL);
          *buf = 136316418;
          v81 = "_data_map_get_offset_entry_impl";
          v82 = 1024;
          v83 = 362;
          v84 = 2048;
          v85 = v11;
          v86 = 2048;
          v87 = v16;
          v88 = 2048;
          v89 = v30;
          v90 = 2080;
          v91 = v31;
          _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v19;
        goto LABEL_23;
      }

      v21 = *(v17 + 4 * v11);
      if (v21 >= 2)
      {
        break;
      }
    }

LABEL_23:
    if (++v11 > v9)
    {
      goto LABEL_10;
    }
  }

  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v22 = (v21 + *(v15 + 5575));
  if (*(v15 + 323) <= v22)
  {
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
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    v24 = *__error();
    v32 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = a1[1];
      v34 = *(v33 + 323);
      v35 = fd_name(*(v33 + 220), v92, 0x100uLL);
      *buf = 136316418;
      v81 = "_data_map_get_data_entry";
      v82 = 1024;
      v83 = 397;
      v84 = 2048;
      v85 = v22;
      v86 = 2048;
      v87 = v34;
      v88 = 2048;
      v89 = v33;
      v90 = 2080;
      v91 = v35;
      v28 = v32;
      v29 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      goto LABEL_33;
    }

LABEL_31:
    *__error() = v24;
    goto LABEL_23;
  }

  dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v22, &v76, &v79);
  if (v79 == 1)
  {
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
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = fd_name(*(a1[1] + 220), v92, 0x100uLL);
      v27 = *(a1[1] + 323);
      *buf = 136316418;
      v81 = "_data_map_get_data_entry";
      v82 = 1024;
      v83 = 393;
      v84 = 2080;
      v85 = v26;
      v86 = 2048;
      v87 = v22;
      v88 = 2048;
      v89 = v27;
      v90 = 2048;
      v91 = v76;
      v28 = v25;
      v29 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_33:
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x3Au);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v36 = v75;
  if ((v75 & 4) == 0 && a4)
  {
    v13 = dataMap<unsigned int,false,false,true>::_data_map_garbage_compact_collect<false>(v23);
    goto LABEL_11;
  }

  v37 = (*(*a1 + 96))(a1);
  if (v11 > v37)
  {
    v38 = 0;
    goto LABEL_79;
  }

  *&v74[8] = 0;
  *v74 = *(a1[1] + 216);
  while (2)
  {
    if (*v8 <= v11 || !CFBitVectorGetBitAtIndex(*(v8 + 16), v11))
    {
      v39 = a1[1];
      v40 = *(v39 + 4511);
      v41 = *(v39 + 4503);
      if (v11 >= v40 || (v41 + 1) <= 1)
      {
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
        v93 = 0u;
        memset(v92, 0, sizeof(v92));
        v43 = *__error();
        v44 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v53 = a1[1];
          v54 = fd_name(*(v53 + 220), v92, 0x100uLL);
          *buf = 136316418;
          v81 = "_data_map_get_offset_entry_impl";
          v82 = 1024;
          v83 = 362;
          v84 = 2048;
          v85 = v11;
          v86 = 2048;
          v87 = v40;
          v88 = 2048;
          v89 = v53;
          v90 = 2080;
          v91 = v54;
          _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v43;
        goto LABEL_50;
      }

      v45 = *(v41 + 4 * v11);
      if (v45 < 2)
      {
        goto LABEL_50;
      }

      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v46 = (v45 + *(v39 + 5575));
      if (*(v39 + 323) <= v46)
      {
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
        v93 = 0u;
        memset(v92, 0, sizeof(v92));
        v47 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v64 = a1[1];
          v65 = *(v64 + 323);
          v66 = fd_name(*(v64 + 220), v92, 0x100uLL);
          *buf = 136316418;
          v81 = "_data_map_get_data_entry";
          v82 = 1024;
          v83 = 397;
          v84 = 2048;
          v85 = v46;
          v86 = 2048;
          v87 = v65;
          v88 = 2048;
          v89 = v64;
          v90 = 2080;
          v91 = v66;
          v51 = v55;
          v52 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_74:
          _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, v52, buf, 0x3Au);
        }

LABEL_58:
        *__error() = v47;
        v56 = *&v74[4];
      }

      else
      {
        dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v46, &v76, &v79);
        if (v79 == 1)
        {
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
          v93 = 0u;
          memset(v92, 0, sizeof(v92));
          v47 = *__error();
          v48 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = fd_name(*(a1[1] + 220), v92, 0x100uLL);
            v50 = *(a1[1] + 323);
            *buf = 136316418;
            v81 = "_data_map_get_data_entry";
            v82 = 1024;
            v83 = 393;
            v84 = 2080;
            v85 = v49;
            v86 = 2048;
            v87 = v46;
            v88 = 2048;
            v89 = v50;
            v90 = 2048;
            v91 = v76;
            v51 = v48;
            v52 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
            goto LABEL_74;
          }

          goto LABEL_58;
        }

        if ((v75 & 2) != 0)
        {
          if ((v75 & 8) != 0)
          {
            if (gSILogLevels[0] >= 5)
            {
              v57 = *__error();
              v67 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = a1[1];
                v69 = v77 + *(v68 + 216);
                *v92 = 67109890;
                *&v92[4] = v11;
                *&v92[8] = 1024;
                *&v92[10] = v76;
                *&v92[14] = 2080;
                *&v92[16] = v69;
                *&v92[24] = 2048;
                *&v92[26] = v68;
                v60 = v67;
                v61 = "Delete data for id:%d size:%d %s from %p";
                v62 = 34;
LABEL_77:
                _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, v61, v92, v62);
              }

LABEL_78:
              *__error() = v57;
            }
          }

          else if (gSILogLevels[0] >= 5)
          {
            v57 = *__error();
            v58 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = a1[1];
              *v92 = 67109632;
              *&v92[4] = v11;
              *&v92[8] = 1024;
              *&v92[10] = v76;
              *&v92[14] = 2048;
              *&v92[16] = v59;
              v60 = v58;
              v61 = "Delete data for id:%d size:%d from %p";
              v62 = 24;
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }

        v56 = *&v74[4] + 1;
        if ((v75 & 4) == 0)
        {
          if (!*&v74[4])
          {
            v63 = a1[1];
            if ((*(v63 + 273) & 1) == 0)
            {
              dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
              v63 = a1[1];
              *(v63 + 273) = 1;
            }

            if ((*(v63 + 275) & 1) == 0)
            {
              dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
              *(a1[1] + 275) = 1;
            }
          }

          *(v41 + 4 * v11) = 1;
          bzero(v77, (v76 + *v74));
        }
      }

      *&v74[4] = v56;
    }

LABEL_50:
    if (++v11 <= v37)
    {
      continue;
    }

    break;
  }

  v36 = v75;
  v38 = *&v74[4];
LABEL_79:
  if ((v36 & 2) == 0)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v70 = *__error();
  v71 = _SILogForLogForCategory(0);
  v72 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v71, v72))
  {
    v73 = a1[1];
    *v92 = 67109376;
    *&v92[4] = v38;
    *&v92[8] = 2048;
    *&v92[10] = v73;
    _os_log_impl(&dword_1C278D000, v71, v72, "Found %d deleted strings from %p", v92, 0x12u);
  }

  v13 = 0;
  *__error() = v70;
LABEL_11:
  (*(*a1 + 112))(a1);
  return v13;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_garbage_compact_collect<false>(__n128 a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v82 = v4;
  v83 = v5;
  v7 = v6;
  v9 = v8;
  v124 = *MEMORY[0x1E69E9840];
  v10 = (*(*v8 + 96))(v8, v1);
  bzero(v97, 0x400uLL);
  bzero(v96, 0x400uLL);
  v125.location = 0;
  v93 = 0;
  v11 = *(v9 + 8);
  v12 = *(v11 + 277);
  *v3 = 842150450;
  *(v3 + 8) = 0;
  v13 = *(v11 + 4511);
  *(v3 + 16) = v13;
  v125.length = (v13 - 1);
  v81 = v7;
  *(v3 + 24) = CFBitVectorGetCountOfBit(*(v7 + 16), v125, 1u);
  bzero(__src, 0x1058uLL);
  __src[520] = -1;
  v14 = fd_name(*(*(v9 + 8) + 307), v97, 0x400uLL);
  snprintf(v96, 0x400uLL, "tmp.%s", v14);
  if (v12)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(v9 + 8) + 307), v96, 1538, v15);
  if (fd_truncate(sibling_protected, *(*(v9 + 8) + 315)) == -1 || (v17 = *(*(v9 + 8) + 315), aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 0x40000000, aBlock[2] = ___ZN7dataMapIjLb0ELb0ELb1EE33_data_map_garbage_compact_collectILb0EEENSt3__19enable_ifIXntT_EiE4typeEP10bit_vectorj14DMCollectFlagsP32data_map_garbage_compact_context_block_invoke, aBlock[3] = &__block_descriptor_tmp_238, aBlock[4] = v9, __src[0] = sibling_protected, WORD2(__src[4]) = 256, __src[1] = v17, LODWORD(__src[4]) = 1, __src[5] = _Block_copy(aBlock), LOBYTE(__src[6]) = 26, bzero(&__src[7], 0x1000uLL), v18 = fd_name(*(*(v9 + 8) + 4491), v97, 0x400uLL), snprintf(v96, 0x400uLL, "tmp.%s", v18), __src[519] = fd_create_sibling_protected(*(*(v9 + 8) + 4491), v96, 1538, v15), fd_truncate(__src[519], *(*(v9 + 8) + 4459)) == -1))
  {
LABEL_16:
    v31 = *__error();
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0xFFFFFFFFLL;
    }

    goto LABEL_19;
  }

  v19 = *(v9 + 8);
  __src[522] = *(v19 + 4459);
  __src[520] = fd_mmap(__src[519], *(v19 + 4499), 3, 1, 0);
  if (__src[520] == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v110[0]) = 136315394;
      *(v110 + 4) = "_data_map_garbage_compact_collect";
      WORD6(v110[0]) = 1024;
      *(v110 + 14) = 2911;
      _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: offsets fd_mmap error", v110, 0x12u);
    }

    *__error() = v29;
    goto LABEL_16;
  }

  v94[2] = 0;
  __src[521] = *(*(v9 + 8) + 4499);
  v94[0] = 1;
  v94[1] = "";
  data_entry_store<unsigned int,false,false,true>(__src, v94);
  *__src[520] = 0;
  v93 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v20 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(v9 + 8), 0, add_explicit + 1);
  v22 = v21;
  v23 = v20;
  v24 = HIDWORD(v20);
  v26 = v25;
  v27 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
  v79 = *(v27 + 312);
  v28 = *(v27 + 224);
  if (v28)
  {
    v28(*(v27 + 288));
  }

  v89 = v24;
  v90 = v23;
  v87 = v22;
  v88 = v26;
  if (_setjmp(v27))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v110[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v110, 2u);
    }

    *(v27 + 312) = v79;
    CIOnThreadCleanUpReset(v87);
    dropThreadId(v90, 1, add_explicit + 1);
    CICleanUpReset(v90, v88);
    goto LABEL_84;
  }

  if (v10)
  {
    v34 = v10;
    for (i = 1; i <= v34; ++i)
    {
      v36 = *(v9 + 8);
      v37 = *(v36 + 4511);
      v38 = *(v36 + 4503);
      if (i >= v37 || (v38 + 1) <= 1)
      {
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        v120 = 0u;
        v119 = 0u;
        v118 = 0u;
        v117 = 0u;
        v116 = 0u;
        v115 = 0u;
        v114 = 0u;
        v113 = 0u;
        v112 = 0u;
        v111 = 0u;
        memset(v110, 0, sizeof(v110));
        v40 = *__error();
        v41 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v51 = *(v9 + 8);
          v52 = fd_name(*(v51 + 220), v110, 0x100uLL);
          v98 = 136316418;
          v99 = "_data_map_get_offset_entry_impl";
          v100 = 1024;
          v101 = 362;
          v102 = 2048;
          v103 = i;
          v104 = 2048;
          v105 = v37;
          v106 = 2048;
          v107 = v51;
          v108 = 2080;
          v109 = v52;
          _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v98, 0x3Au);
        }

        v42 = i;
        *__error() = v40;
        goto LABEL_35;
      }

      v42 = i;
      v43 = *(v38 + 4 * i);
      if (v43 >= 2)
      {
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v95 = 0;
        v44 = (v43 + *(v36 + 5575));
        if (*(v36 + 323) <= v44)
        {
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          v112 = 0u;
          v111 = 0u;
          memset(v110, 0, sizeof(v110));
          v45 = *__error();
          v53 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          log = v53;
          v66 = *(v9 + 8);
          v67 = *(v66 + 323);
          v68 = fd_name(*(v66 + 220), v110, 0x100uLL);
          v98 = 136316418;
          v99 = "_data_map_get_data_entry";
          v100 = 1024;
          v101 = 397;
          v102 = 2048;
          v103 = v44;
          v104 = 2048;
          v105 = v67;
          v106 = 2048;
          v107 = v66;
          v108 = 2080;
          v109 = v68;
          v49 = log;
          v50 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          goto LABEL_69;
        }

        dataMap<unsigned int,false,false,true>::data_entry_restore<false>(v9, v43 + *(v36 + 5575), &v84, &v95);
        if (v95 == 1)
        {
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          v112 = 0u;
          v111 = 0u;
          memset(v110, 0, sizeof(v110));
          v45 = *__error();
          v46 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          v47 = fd_name(*(*(v9 + 8) + 220), v110, 0x100uLL);
          v48 = *(*(v9 + 8) + 323);
          v98 = 136316418;
          v99 = "_data_map_get_data_entry";
          v100 = 1024;
          v101 = 393;
          v102 = 2080;
          v103 = v47;
          v104 = 2048;
          v105 = v44;
          v106 = 2048;
          v107 = v48;
          v108 = 2048;
          v109 = v84;
          v49 = v46;
          v50 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_69:
          _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, v50, &v98, 0x3Au);
          goto LABEL_44;
        }

        if (i < v82 || *v81 > i && CFBitVectorGetBitAtIndex(*(v81 + 16), i))
        {
          if (v84 < 0x80)
          {
            v54 = 1;
          }

          else
          {
            v54 = 2;
          }

          if (v84 >> 14)
          {
            v55 = 3;
          }

          else
          {
            v55 = v54;
          }

          if (v84 >> 21)
          {
            v56 = 4;
          }

          else
          {
            v56 = v55;
          }

          if (v84 >> 28)
          {
            v57 = 5;
          }

          else
          {
            v57 = v56;
          }

          v58 = (v84 + v57 + 8);
          v59 = (__src[2] + v58);
          if ((__src[2] + v58) >= __src[1])
          {
            if (_storageWindowsExpandBacking(__src, v58))
            {
              v59 = (__src[2] + v58);
              goto LABEL_61;
            }
          }

          else
          {
LABEL_61:
            __src[2] = v59;
          }

          v60 = data_entry_store<unsigned int,false,false,true>(__src, &v84);
          __src[520][i] = v60;
          continue;
        }

        ++*(v3 + 8);
        if ((v83 & 2) != 0)
        {
          if ((v83 & 8) != 0)
          {
            if (gSILogLevels[0] < 5)
            {
              goto LABEL_35;
            }

            v45 = *__error();
            v69 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v70 = *(v9 + 8);
              v71 = v85 + *(v70 + 216);
              LODWORD(v110[0]) = 67109890;
              DWORD1(v110[0]) = i;
              WORD4(v110[0]) = 1024;
              *(v110 + 10) = v84;
              HIWORD(v110[0]) = 2080;
              *&v110[1] = v71;
              WORD4(v110[1]) = 2048;
              *(&v110[1] + 10) = v70;
              v63 = v69;
              v64 = "Deleting id: %d size: %d %s from %p";
              v65 = 34;
LABEL_73:
              _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, v64, v110, v65);
            }
          }

          else
          {
            if (gSILogLevels[0] < 5)
            {
              goto LABEL_35;
            }

            v45 = *__error();
            v61 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = *(v9 + 8);
              LODWORD(v110[0]) = 67109632;
              DWORD1(v110[0]) = i;
              WORD4(v110[0]) = 1024;
              *(v110 + 10) = v84;
              HIWORD(v110[0]) = 2048;
              *&v110[1] = v62;
              v63 = v61;
              v64 = "Deleting id: %d size: %d from %p";
              v65 = 24;
              goto LABEL_73;
            }
          }

LABEL_44:
          *__error() = v45;
        }
      }

LABEL_35:
      __src[520][v42] = 1;
    }
  }

  if (*(v3 + 8))
  {
    if (SLODWORD(__src[4]) >= 1)
    {
      v72 = 0;
      do
      {
        v73 = v72;
        storageWindowSync(__src[v72 + 7], 1);
        v72 = v73 + 1;
      }

      while (v73 + 1 < SLODWORD(__src[4]));
    }

    v74 = __src[520];
    v75 = __src[522];
    fd_system_status_stall_if_busy();
    msync(v74, v75, 16);
    memcpy((v3 + 32), __src, 0x1058uLL);
    *v3 = 842150450;
    v93 = 1;
    v76 = threadData[9 * v90 + 1] + 320 * v89;
    *(v76 + 312) = v79;
    v77 = *(v76 + 232);
    if (v77)
    {
      v77(*(v76 + 288));
    }

    dropThreadId(v90, 0, add_explicit + 1);
LABEL_84:
    v32 = 0;
    result = 0;
    if (v93)
    {
      return result;
    }

    goto LABEL_19;
  }

  v32 = 0;
LABEL_19:
  if (sibling_protected)
  {
    storageWindowsUnmap(__src);
    fd_release(sibling_protected);
    _fd_unlink_with_origin(sibling_protected, 0);
  }

  if (__src[520] + 1 >= 2)
  {
    munmap(__src[520], __src[521]);
  }

  if (__src[519])
  {
    fd_release(__src[519]);
    _fd_unlink_with_origin(__src[519], 0);
  }

  return v32;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_collect_setup(void *a1)
{
  (*(*a1 + 336))(a1);
  v2 = a1[1];
  v3 = *(v2 + 4511);
  os_unfair_lock_lock((v2 + 260));
  v4 = a1[1];
  if (*(v4 + 264))
  {
    os_unfair_lock_unlock((v4 + 260));
    (*(*a1 + 112))(a1);
    return 22;
  }

  else
  {
    v6 = bit_vector_create(v3);
    v7 = a1[1];
    *(v7 + 264) = v6;
    os_unfair_lock_unlock((v7 + 260));
    return 0;
  }
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_compact_collect_commit(void *a1, void *a2, _BYTE *a3, char a4)
{
  (*(*a1 + 336))(a1);
  if ((a4 & 1) == 0 && (*a3 & 1) == 0)
  {
    if (a2[1])
    {
      v8 = a1[1];
      v9 = *(v8 + 4511);
      if (a2[2] != v9 || (v10 = a2[3], v12.length = (v9 - 1), v12.location = 0, v10 != CFBitVectorGetCountOfBit(*(*(v8 + 264) + 16), v12, 1u)))
      {
        *a3 = 1;
      }
    }
  }

  return 0;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_collect_handle_deletes(uint64_t *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2[1])
  {
    bzero(v52, 0x400uLL);
    bzero(v51, 0x400uLL);
    storageWindowsUnmap(a1[1] + 307);
    fd_sync(*(a1[1] + 307), 0);
    fd_sync(a2[523], 1);
    munmap(*(a1[1] + 4503), *(a1[1] + 4499));
    v4 = a1[1];
    *(v4 + 4503) = a2[524];
    *(v4 + 4459) = a2[526];
    a2[524] = -1;
    v49 = 0u;
    memset(v50, 0, sizeof(v50));
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    __buf[0] = 0x6D6F76650A00;
    __buf[1] = 0x3232323200000003;
    strlcpy(&v50[12], (v4 + 4551), 0xFFuLL);
    v5 = (a2 + 1);
    v6 = a1[1];
    v7 = vld1_dup_f32(v5);
    *(v6 + 4523) = vadd_s32(*(v6 + 4523), v7);
    *(v6 + 4531) = 0;
    dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
    (*(*a1 + 224))(a1, 1);
    dataMap<unsigned int,false,false,true>::_data_map_sync_header_to_tmp<false>(a1);
    v8 = *(a1[1] + 307);
    if (v8)
    {
      v9 = *(v8 + 44);
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    v10 = si_openat_protected(v9, "tmp.movePlan", 1538, 3);
    pwrite(v10, __buf, 0x210uLL, 0);
    fcntl(v10, 85);
    v11 = fd_name(*(a1[1] + 307), v52, 0x400uLL);
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    v14 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = a1[1];
      v16 = fd_realpath(a2[4], v51);
      v28 = 134218498;
      v29 = v15;
      v30 = 2080;
      v31 = v16;
      v32 = 2080;
      v33 = v11;
      _os_log_impl(&dword_1C278D000, v13, v14, "rename %p %s to %s", &v28, 0x20u);
    }

    *__error() = v12;
    fd_rename(a2[4], v11);
    memcpy((a1[1] + 307), a2 + 4, 0x1038uLL);
    bzero(a2 + 4, 0x1038uLL);
    v17 = fd_name(*(a1[1] + 4491), v52, 0x400uLL);
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    v20 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = a1[1];
      v22 = fd_realpath(a2[523], v51);
      v28 = 134218498;
      v29 = v21;
      v30 = 2080;
      v31 = v22;
      v32 = 2080;
      v33 = v17;
      _os_log_impl(&dword_1C278D000, v19, v20, "rename %p %s to %s", &v28, 0x20u);
    }

    *__error() = v18;
    fd_rename(a2[523], v17);
    v23 = a1[1];
    v24 = *(v23 + 4491);
    *(v23 + 4491) = a2[523];
    fd_release(v24);
    a2[523] = 0;
    (*(*a1 + 232))(a1, 1);
    (*(*a1 + 48))(a1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 64))(a1);
    (*(*a1 + 72))(a1);
    v25 = *(a1[1] + 307);
    if (v25)
    {
      v26 = *(v25 + 44);
    }

    else
    {
      v26 = -1;
    }

    unlinkat(v26, "tmp.movePlan", 2048);
    close(v10);
    if ((*(a1[1] + 274) & 1) == 0)
    {
      dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
      *(a1[1] + 274) = 1;
    }

    dataMap<unsigned int,false,false,true>::_data_map_rehash(a1);
    (*(*a1 + 224))(a1, 1);
    (*(*a1 + 232))(a1, 1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 64))(a1);
    (*(*a1 + 72))(a1);
  }

  return 0;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_sync_header_to_tmp<false>(uint64_t *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v37 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v5 = v4;
  v6 = v3;
  v7 = HIDWORD(v3);
  v9 = v8;
  v10 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v11 = *(v10 + 312);
  v12 = *(v10 + 224);
  if (v12)
  {
    v12(*(v10 + 288));
  }

  v35 = v7;
  v36 = v6;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v5);
    dropThreadId(v6, 1, add_explicit + 1);
    result = CICleanUpReset(v6, v9);
  }

  else
  {
    if (!*(a1[1] + 278) && *(*(a1[1] + 299) + 16) != 1)
    {
      v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      v15 = *(a1[1] + 299);
      v16 = *(v15 + 6);
      v17 = v15[2];
      v18 = *v15;
      *(v14 + 1) = v15[1];
      *(v14 + 2) = v17;
      *(v14 + 6) = v16;
      *v14 = v18;
      *(v14 + 4) = *(v14 + 20);
      *(v14 + 10) = *(v14 + 7);
      v19 = a1[1];
      *(v14 + 5) = *(v19 + 323);
      *(v14 + 7) = *(v19 + 4511);
      *(v14 + 6) = *(v19 + 4487);
      *(v14 + 4) = 2;
      sibling_with_prefix_protected = fd_create_sibling_with_prefix_protected(*(v19 + 220), "tmp.", 0);
      fd_pwrite(sibling_with_prefix_protected, v14, 0x38uLL, 0);
      fd_sync(sibling_with_prefix_protected, 1);
      fd_release(sibling_with_prefix_protected);
      v21 = a1[1];
      if (v21)
      {
        v22 = (v21 + 4511);
        v23 = *(v21 + 4543);
        v24 = *(v21 + 252);
        v25 = *(v21 + 299);
        if (v25)
        {
          v26 = *(v25 + 16);
          if (v26 < 3)
          {
            v27 = v26 + 1;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }

        SIActivityJournalEvent(v23, v24, 0xBu, v27, *v22);
      }

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
      v47 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      v28 = *__error();
      v29 = _SILogForLogForCategory(7);
      v30 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = fd_name(*(a1[1] + 220), buf, 0x100uLL);
        v32 = (*(*a1 + 96))(a1);
        *v38 = 136315394;
        v39 = v31;
        v40 = 2048;
        v41 = v32;
        _os_log_impl(&dword_1C278D000, v29, v30, "%s complete write tmp header with count: %llu", v38, 0x16u);
      }

      *__error() = v28;
      free(v14);
    }

    v37 = 1;
    v33 = threadData[9 * v36 + 1] + 320 * v35;
    *(v33 + 312) = v11;
    v34 = *(v33 + 232);
    if (v34)
    {
      v34(*(v33 + 288));
    }

    result = dropThreadId(v36, 0, add_explicit + 1);
  }

  if ((v37 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  return result;
}

void dataMap<unsigned int,false,false,true>::_data_map_clear_seen(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 8) + 260));
  v2 = *(a1 + 8);
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(v3);
    v2 = *(a1 + 8);
    *(v2 + 264) = 0;
  }

  os_unfair_lock_unlock((v2 + 260));
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_match_address(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 283);
  if (v4 != -1)
  {
    if (v4)
    {
      if (v4 <= a2)
      {
        v5 = *(v2 + 291);
        if (&v4[v5] > a2)
        {
          v6 = *(v2 + 220);
          v7 = "data ro header";
          v8 = a2;
          v9 = *(v2 + 291);
LABEL_21:
          log_map_access_error(v8, v4, v5, v9, v7, v6);
          return 1;
        }
      }
    }

    return 0;
  }

  if (!storage_windows_contains_address(v2 + 307, a2))
  {
    v4 = *(v2 + 4503);
    v10 = (v4 + 1) < 2 || v4 > a2;
    if (v10 || (v5 = *(v2 + 4499), &v4[v5] <= a2))
    {
      v4 = *(v2 + 4479);
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = *(v2 + 4475);
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v9 = *(v2 + 4471);
      v6 = *(v2 + 236);
      v7 = "data buckets";
    }

    else
    {
      v9 = *(v2 + 4459);
      v6 = *(v2 + 4491);
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_21;
  }

  return 1;
}

int *log_map_access_error(void *a1, char *a2, uint64_t a3, int a4, char *a5, fd_obj *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v11 = *(a6 + 11);
  }

  else
  {
    v11 = -1;
  }

  memset(&v18, 0, sizeof(v18));
  memset(v37, 0, sizeof(v37));
  v12 = fd_name(a6, v37, 0x100uLL);
  if (fstatat(v11, v12, &v18, 32) == -1)
  {
    v13 = *__error();
  }

  else
  {
    v13 = 0;
  }

  v14 = *__error();
  v15 = _SILogForLogForCategory(0);
  v16 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v15, (gSILogLevels[0] < 3)))
  {
    *buf = 136317186;
    v20 = a5;
    v21 = 2080;
    v22 = v12;
    v23 = 2048;
    v24 = a1;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = &a2[a3];
    v29 = 1024;
    v30 = a4;
    v31 = 1024;
    v32 = v13;
    v33 = 1024;
    st_dev = v18.st_dev;
    v35 = 2048;
    st_ino = v18.st_ino;
    _os_log_impl(&dword_1C278D000, v15, v16, "*warn* Got exception on %s %s addr:%p start:%p map end:%p file end:%d sres:%d dev:%d ino:%lld", buf, 0x50u);
  }

  result = __error();
  *result = v14;
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_version_update(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 299);
  if (*(v2 + 8) <= 0xAu)
  {
    v3 = result;
    *(v2 + 8) = 12;
    result = fd_pwrite(*(v1 + 220), v2, 0x38uLL, 0);
    v4 = *(v3 + 8);
    v5 = (v4 + 339);
    if (*(v4 + 339) >= 1)
    {
      v6 = 0;
      v7 = v4 + 363;
      do
      {
        result = storageWindowSync(*(v7 + 8 * v6++), 1);
      }

      while (v6 < *v5);
    }
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_version(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(*(v1 + 299) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_sync_header(uint64_t *a1, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v35 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v33 = v9;
  v34 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v42, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278))
    {
      v16 = *(*(v15 + 299) + 16);
      if (v16 != 1)
      {
        v17 = v15 + 4511;
        if (v16 == 2)
        {
          v18 = 3;
        }

        else
        {
          v18 = 0;
        }

        if (v16)
        {
          v19 = v18;
        }

        else
        {
          v19 = 1;
        }

        SIActivityJournalEvent(*(v17 + 32), *(a1[1] + 252), 0xAu, v19, *v17);
        v20 = a1[1];
        v21 = *(v20 + 299);
        *(v21 + 40) = *(v21 + 28);
        *(v21 + 32) = *(v21 + 20);
        *(v21 + 20) = *(v20 + 323);
        *(v21 + 28) = *(v20 + 4511);
        *(v21 + 24) = *(v20 + 4487);
        *(v21 + 16) = 0;
        fd_pwrite(*(v20 + 220), v21, 0x38uLL, 0);
        if (a2)
        {
          fd_sync(*(a1[1] + 220), 0);
        }

        v22 = a1[1];
        *(*(v22 + 299) + 16) = 2;
        SIActivityJournalEvent(*(v22 + 4543), *(v22 + 252), 0xBu, 3u, *(v22 + 4511));
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
        v47 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *v42 = 0u;
        v23 = *__error();
        v24 = _SILogForLogForCategory(7);
        v25 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v24, v25))
        {
          v26 = fd_name(*(a1[1] + 220), v42, 0x100uLL);
          if (a2)
          {
            v27 = "sync";
          }

          else
          {
            v27 = "update";
          }

          v28 = (*(*a1 + 96))(a1);
          *buf = 136315650;
          v37 = v26;
          v38 = 2080;
          v39 = v27;
          v40 = 2048;
          v41 = v28;
          _os_log_impl(&dword_1C278D000, v24, v25, "%s complete %s header with count: %llu", buf, 0x20u);
        }

        *__error() = v23;
      }
    }

    v35 = 1;
    v29 = threadData[9 * v34 + 1] + 320 * v33;
    *(v29 + 312) = v13;
    v30 = *(v29 + 232);
    if (v30)
    {
      v30(*(v29 + 288));
    }

    dropThreadId(v34, 0, add_explicit + 1);
  }

  v31 = (a1[1] + 278);
  if (v35 == 1)
  {
    return *v31;
  }

  *v31 = 22;
  return 22;
}