void si_getCacheFd(void *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    (*(a1[1] + 16))();
  }

  else if (dword_1EBF46B00 >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "si_getCacheFd at qos 0x%x", v6, 8u);
    }

    *__error() = v4;
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

uint64_t optimizeLiftingQuery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  if (a2)
  {
    v3 = *(a2 + 56) & 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 16;
  if (!*(a1 + 2073))
  {
    v4 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __optimizeLiftingQuery_block_invoke;
  v7[3] = &__block_descriptor_tmp_198;
  v7[4] = a1;
  v7[5] = a3;
  v7[6] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __db_query_tree_apply_block_block_invoke;
  v9[3] = &unk_1E8198ED0;
  v9[4] = v7;
  db_query_tree_apply_block_with_meta(a2, v9, 0);
  db_optimize_query_tree(&v8);
  result = v8;
  if (v3)
  {
    if (v8)
    {
      v6 = *(v8 + 48);
      if (v6 != 16 && v6 != 32)
      {
        *(v8 + 56) |= 1u;
      }
    }
  }

  return result;
}

uint64_t __queryIsUnpalatable_block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      if ((*(v3 + 33) & 4) != 0)
      {
        v4 = *(v3 + 72);
        if (v4)
        {
          v6 = CFStringCreateWithCString(kCIQueryZoneAllocator, v4, 0x8000100u);
          v7 = v6;
          v23 = 0;
          if (*(*(a1 + 40) + 2073))
          {
            v8 = 16;
          }

          else
          {
            v8 = 0;
          }

          v9 = ContentIndexCopyQueryTerms(v6, *(a1 + 48), 0, v8, &v23);
          v10 = v9;
          v11 = v23;
          if (v23 < 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = 0;
            v13 = v9;
            v14 = v23;
            do
            {
              v15 = *v13;
              if ((v12 & 1) == 0 && v11 != 1)
              {
                if (*v15)
                {
                  v12 = isShortTerm(*v13);
                }

                else
                {
                  v12 = 0;
                }
              }

              free(v15);
              ++v13;
              --v14;
            }

            while (v14);
          }

          free(v10);
          v16 = *(*(a1 + 40) + 6584);
          if ((v16 & 0x1000000) == 0 || v11 > 1)
          {
            if ((v16 & 0x1000000) != 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = v11 > 1;
            }

            *(*(*(a1 + 32) + 8) + 24) |= v17;
          }

          if (*(*(*(a1 + 32) + 8) + 24) == 1 && dword_1EBF46AD0 >= 5)
          {
            v20 = *__error();
            v21 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v25 = v7;
              _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "Unpalatable ranking query: %@", buf, 0xCu);
            }

            *__error() = v20;
          }

          CFRelease(v7);
        }
      }
    }
  }

  return a2;
}

uint64_t isShortTerm(char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1[1];
  if (v2 == 42)
  {
    if (a1[2])
    {
      return 0;
    }
  }

  else if (v1 == 42)
  {
    if (a1[1] && a1[2])
    {
      return 0;
    }
  }

  else
  {
    v3 = v2 - 48;
    if ((v1 - 48) > 9 || v3 > 9)
    {
      return 0;
    }

    v6 = a1[2];
    if (v6 != 42 && ((v6 - 48) > 9 || a1[3] != 42))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __optimizeLiftingQuery_block_invoke(void *a1, uint64_t a2)
{
  if ((*(a2 + 48) & 0xFFF7) != 4)
  {
    return a2;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return a2;
  }

  query_trim_superfluous_wildcards(v4);
  v5 = *(a2 + 16);
  v6 = *(v5 + 72);
  if (v6 && *v6)
  {
    if (v6[1] == 42)
    {
LABEL_8:
      if (v6[2])
      {
        goto LABEL_9;
      }

LABEL_16:
      if ((*(v5 + 33) & 4) == 0)
      {
        return a2;
      }

      goto LABEL_17;
    }

    if (*v6 == 42)
    {
      if (!v6[1])
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v7 = a1[4];
  if ((*(v7 + 2072) & 1) != 0 || strcmp(*v5, "_kMDItemBundleID"))
  {
    if ((*(v5 + 33) & 4) != 0 || (v8 = *v5) != 0 && (!strcmp(v8, "kMDItemTextContent") || !strncmp(v8, "_kMDItemOCRContent", 0x12uLL)))
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __optimizeLiftingQuery_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_197;
      v9 = a1[6];
      v13 = a1[5];
      v14 = v7;
      query_eliminate_denied_terms(a2, v13, v12, v9);
    }

    return a2;
  }

LABEL_17:
  if (*(v5 + 24) == 5)
  {
    v10 = 32;
  }

  else
  {
    v10 = 16;
  }

  free_qp(v5);
  *(a2 + 16) = 0;
  *(a2 + 48) = v10;
  return a2;
}

uint64_t __optimizeLiftingQuery_block_invoke_2(uint64_t a1, char *a2, size_t a3, _BYTE *a4)
{
  v6 = a2;
  v18 = *MEMORY[0x1E69E9840];
  v8 = isShortTerm(a2);
  if ((v8 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v9);
    v11 = &buf[-((a3 + 16) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v11, a3 + 1);
    if (!a3)
    {
      goto LABEL_14;
    }

    if (v6[a3 - 1] == 42)
    {
      strlcpy(&buf[-((a3 + 16) & 0xFFFFFFFFFFFFFFF0)], v6, a3);
      --a3;
      v6 = v11;
    }

    if (a3 == 1 && ((v12 = *v6, (v12 - 36) < 0x1D) || (v12 - 94) <= 0x20 && ((1 << (v12 - 94)) & 0x1E0000007) != 0 || (v12 - 33) < 2))
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v13 = *__error();
        v14 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v17 = v6;
          v15 = "stop character found: %s";
LABEL_18:
          _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
        }

LABEL_19:
        *__error() = v13;
      }
    }

    else
    {
LABEL_14:
      if (!isStopWord(v6))
      {
        if (CFSetContainsValue(**(a1 + 32), v6))
        {
          goto LABEL_21;
        }

        if (!CFSetContainsValue(*(*(a1 + 32) + 8), v6))
        {
          if (isTopKTermAtLevel(*(*(a1 + 40) + 664)))
          {
            if (dword_1EBF46AD0 < 5)
            {
              goto LABEL_21;
            }

            v13 = *__error();
            v14 = _SILogForLogForCategory(1);
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 136315138;
            v17 = v6;
            v15 = "high freq word found: %s";
            goto LABEL_18;
          }

          CFSetAddValue(*(*(a1 + 32) + 8), v6);
        }

        result = 0;
        goto LABEL_22;
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v13 = *__error();
        v14 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v17 = v6;
          v15 = "stop word found: %s";
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

LABEL_21:
    result = 1;
    goto LABEL_22;
  }

  result = 0;
LABEL_22:
  *a4 = v8;
  return result;
}

void query_eliminate_denied_terms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v6 = *(v4 + 72);
  if (!v6 || (*(v4 + 33) & 4) == 0)
  {
    return;
  }

  v82 = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
  v12 = ContentIndexCopyQueryTerms(v11, 3, *(a2 + 32), a4, &v82);
  v13 = v82;
  if (v82 < 2)
  {
    goto LABEL_60;
  }

  v77 = a1;
  if (dword_1EBF46AD0 >= 5)
  {
    v59 = *__error();
    v60 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = *(*(v77 + 16) + 72);
      *buf = 136315138;
      v84 = v61;
      _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "stop word check %s", buf, 0xCu);
    }

    *__error() = v59;
  }

  Mutable = CFBitVectorCreateMutable(v10, v13);
  CFBitVectorSetCount(Mutable, v13);
  v15 = 0;
  *&v16 = 136315138;
  v73 = v16;
  v17 = 0x1EBF46000uLL;
  do
  {
    v18 = v12[v15];
    v19 = strlen(v18);
    v81 = 0;
    v20 = (*(a3 + 16))(a3, v18, v19, &v81);
    if ((v81 & 1) != 0 || (v21 = 0, v20))
    {
      v22 = *(v17 + 2768);
      if (v81)
      {
        if (v22 < 5)
        {
          goto LABEL_15;
        }

        v23 = *__error();
        v24 = _SILogForLogForCategory(1);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v25 = v12[v15];
        *buf = v73;
        v84 = v25;
        v26 = v24;
        v27 = "short word found: %s";
      }

      else
      {
        if (v22 < 5)
        {
LABEL_15:
          v21 = 1;
          goto LABEL_16;
        }

        v23 = *__error();
        v28 = _SILogForLogForCategory(1);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v30 = v12[v15];
        *buf = v73;
        v84 = v30;
        v26 = v28;
        v27 = "stop word found: %s";
      }

      _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
LABEL_21:
      *__error() = v23;
      v21 = 1;
      v17 = 0x1EBF46000;
    }

LABEL_16:
    CFBitVectorSetBitAtIndex(Mutable, v15++, v21);
  }

  while (v13 != v15);
  v31.location = 0;
  v31.length = v13;
  if (CFBitVectorGetCountOfBit(Mutable, v31, 1u))
  {
    v75 = v11;
    v78 = (2 * strlen(*(*(v77 + 16) + 72))) | 1;
    v79 = malloc_type_calloc(1uLL, v78, 0x7C126ABBuLL);
    v74 = &v73;
    MEMORY[0x1EEE9AC00](v32);
    v76 = &v73 - ((v33 + 15) & 0x7FFFFFFF0);
    bzero(v76, v33);
    v34 = 0;
    v35 = 0;
    v80 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    if (v13 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v13;
    }

    do
    {
      if (CFBitVectorGetBitAtIndex(Mutable, v34))
      {
        ++v35;
        v37 |= v36 != 0;
      }

      else
      {
        if (v36)
        {
          v41 = *(v77 + 16);
          v42 = *(v41 + 88);
          v43 = v79;
          if (v42)
          {
            v44 = v80;
            if (v34 > v39)
            {
              v45 = *(v41 + 96);
              v46 = *&v76[4 * v80];
              do
              {
                if (v39 >= v45)
                {
                  v47 = 5;
                }

                else
                {
                  v47 = *(v42 + 4 * v39);
                }

                v46 += v47;
                ++v39;
              }

              while (v34 != v39);
              *&v76[4 * v80] = v46;
            }
          }

          else
          {
            v44 = v80;
            *&v76[4 * v80] = v35 + 1;
          }

          v38 |= v37;
          v80 = (v44 + 1);
          v43[v36] = 32;
          v48 = v36 + 1;
        }

        else
        {
          v48 = 0;
          v38 |= v37;
          v43 = v79;
        }

        v35 = 0;
        v36 = strlcat(&v43[v48], v12[v34], v78 - v48) + v48;
        v39 = v34;
      }

      ++v34;
    }

    while (v34 != v40);
    if (v37 & v38)
    {
      v49 = v77;
      v50 = *(v77 + 16);
      v51 = *(v50 + 32);
      goto LABEL_46;
    }

    v49 = v77;
    if ((v37 & 1) != 0 && (v50 = *(v77 + 16), v51 = *(v50 + 32), (v51 & 0x6000000000) != 0))
    {
LABEL_46:
      v11 = v75;
      if ((v51 & 0x6000000000) == 0)
      {
        *(v50 + 32) = v51 | 0x6000000000;
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v62 = *__error();
        v63 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(*(v77 + 16) + 72);
          *buf = 136315394;
          v84 = v64;
          v85 = 2080;
          v86 = v79;
          _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "1) Replace %s with %s", buf, 0x16u);
        }

        *__error() = v62;
        v49 = v77;
        v50 = *(v77 + 16);
        v11 = v75;
      }

      free(*(v50 + 72));
      v52 = *(v49 + 16);
      v53 = v80;
      *(v52 + 72) = v79;
      *(v52 + 96) = v53;
      free(*(v52 + 88));
      v54 = malloc_type_malloc(4 * v53, 0x100004052888210uLL);
      *(*(v49 + 16) + 88) = v54;
      memcpy(v54, v76, 4 * v53);
    }

    else if (v36)
    {
      v11 = v75;
      if (dword_1EBF46AD0 >= 5)
      {
        v65 = *__error();
        v66 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *(*(v77 + 16) + 72);
          *buf = 136315394;
          v84 = v68;
          v85 = 2080;
          v86 = v79;
          _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "2) Replace %s with %s", buf, 0x16u);
        }

        *__error() = v65;
        v11 = v75;
        v49 = v77;
      }

      free(*(*(v49 + 16) + 72));
      *(*(v49 + 16) + 72) = v79;
    }

    else
    {
      v11 = v75;
      if (dword_1EBF46AD0 >= 5)
      {
        v69 = *__error();
        v70 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v72 = *(*(v77 + 16) + 72);
          *buf = v73;
          v84 = v72;
          _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "Replace %s with false", buf, 0xCu);
        }

        *__error() = v69;
        v11 = v75;
        v49 = v77;
      }

      *(v49 + 48) = 16;
      v55 = *(v49 + 16);
      v56 = *(v55 + 56);
      *(v49 + 72) = v56;
      if (v56 != 0.0)
      {
        *(v49 + 48) = 32;
      }

      free_qp(v55);
      *(v49 + 16) = 0;
      free(v79);
    }
  }

  CFRelease(Mutable);
LABEL_60:
  if (v13)
  {
    v57 = v12;
    do
    {
      v58 = *v57++;
      free(v58);
      --v13;
    }

    while (v13);
  }

  free(v12);
  CFRelease(v11);
}

BOOL isTopKTermAtLevel(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  if (a1)
  {
    v22[0] = _MDPlistContainerGetBytes();
    v22[1] = _MDPlistContainerGetLength();
    v22[2] = 0;
    v21[0] = 1;
    v21[1] = v22;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v2 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v21, 0, add_explicit + 1);
    v19 = HIDWORD(v2);
    v20 = v2;
    v18 = __PAIR64__(v3, v4);
    v5 = threadData[9 * v2 + 1] + 320 * HIDWORD(v2);
    *(v5 + 216) = 0;
    v6 = *(v5 + 312);
    v7 = *(v5 + 224);
    v8 = v5;
    if (v7)
    {
      v7(*(v5 + 288));
    }

    v17 = v20;
    v16 = v19;
    v15 = v18;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      v8[78] = v6;
      CIOnThreadCleanUpReset(v15);
      dropThreadId(v17, 1, add_explicit + 1);
      CICleanUpReset(v17, HIDWORD(v15));
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v14 = 0;
      _MDPlistGetRootPlistObjectFromPlist();
      if (_MDPlistGetPlistObjectType() == 241)
      {
        _MDPlistDictionaryIterate();
      }

      v10 = threadData[9 * v17 + 1] + 320 * v16;
      *(v10 + 312) = v6;
      v11 = *(v10 + 232);
      if (v11)
      {
        v11(*(v10 + 288));
      }

      dropThreadId(v17, 0, add_explicit + 1);
    }

    v9 = *(v24 + 6) > 0x3E8u;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v9;
}

uint64_t __isTopKTermAtLevel_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  result = _MDPlistGetPlistObjectType();
  if (result == 241)
  {
    result = _MDPlistDictionaryGetPlistObjectForKey();
    if (result)
    {
      result = _MDPlistNumberGetIntValue();
      *(*(*(a1 + 32) + 8) + 24) += result;
    }
  }

  return result;
}

unsigned __int8 *remove_escaped_chars(unsigned __int8 *result)
{
  while (1)
  {
    v1 = *result;
    if (v1 == 92 || v1 == 0)
    {
      break;
    }

    ++result;
  }

  v3 = result;
  while (v1 != 92)
  {
    if (!v1)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v3++ = v1;
    v5 = *++result;
    v1 = v5;
  }

  v4 = *++result;
  LOBYTE(v1) = v4;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
  *v3 = 0;
  return result;
}

void *addNodeForCPath(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = v6;
  v20[512] = *MEMORY[0x1E69E9840];
  if (!*(v1 + 240))
  {
    v9 = v1;
    v10 = *(v1 + 64);
    if (v10)
    {
      v11 = v5;
      v12 = v4;
      v13 = v3;
      v14 = v2;
      bzero(v20, 0x1000uLL);
      v15 = v12 ? 17 : 1;
      v16 = v10(v9, v14, 0, v20, 1, 0, v15);
      if (v16 && v20[0] != 0)
      {
        v18 = v16;
        if (v20[v16 - 1] != 2)
        {
          v20[v16] = 2;
          v18 = v16 + 1;
        }

        OidScopeNode = makeOidScopeNode(v20, v18, v13, v11);
        *(*(OidScopeNode + 16) + 72) = strdup(v14);
        if (v7)
        {
          return makeORNode(v7, OidScopeNode, 1);
        }

        else
        {
          return OidScopeNode;
        }
      }
    }
  }

  return v7;
}

uint64_t makeOidScopeNode(const void *a1, uint64_t a2, int a3, int a4)
{
  v5 = a3;
  v8 = makeOidScopeNode_prototypeNode[0];
  if (!makeOidScopeNode_prototypeNode[0])
  {
    while (1)
    {
      query_node_with_ann = db_make_query_node_with_ann("_kMDItemQueryPath = stuff", 0);
      v10 = 0;
      *(query_node_with_ann[2] + 32) |= 0x40000uLL;
      atomic_compare_exchange_strong(makeOidScopeNode_prototypeNode, &v10, query_node_with_ann);
      if (!v10)
      {
        break;
      }

      v18 = MEMORY[0x1E69E9820];
      v19 = 0x40000000;
      v20 = __db_query_tree_apply_block_block_invoke;
      v21 = &unk_1E8198ED0;
      v22 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(query_node_with_ann, &v18, 0);
      v8 = makeOidScopeNode_prototypeNode[0];
      if (makeOidScopeNode_prototypeNode[0])
      {
        goto LABEL_6;
      }
    }

    v8 = makeOidScopeNode_prototypeNode[0];
LABEL_6:
    v5 = a3;
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 0x40000000;
  v20 = __db_query_tree_apply_block_block_invoke;
  v21 = &unk_1E8198ED0;
  v22 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v8, &v18, &__block_literal_global_25_15416);
  v12 = v11;
  v13 = *(v11 + 16);
  *(v13 + 24) = a4;
  free(*(v13 + 72));
  *(*(v12 + 16) + 288) = malloc_type_realloc(*(*(v12 + 16) + 288), 8 * a2, 0x100004000313F17uLL);
  memcpy(*(*(v12 + 16) + 288), a1, 8 * a2);
  v14 = *(v12 + 16);
  *(v14 + 160) |= 0x8000u;
  *(v14 + 40) = a2;
  *(v14 + 8) = _qpPathMatch;
  v15 = 128;
  if (v5)
  {
    v15 = 524416;
  }

  *(v14 + 32) |= v15;
  return v12;
}

void *makeORNode(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(a1 + 48);
  if (v6 == 16)
  {
    goto LABEL_2;
  }

  v8 = *(a2 + 48);
  if (v8 == 16 || v6 == 32)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = __db_query_tree_apply_block_block_invoke;
    v15 = &unk_1E8198ED0;
    v16 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, &v12, 0);
    if (v3)
    {
      return v5;
    }

    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = __db_query_tree_apply_block_block_invoke;
    v15 = &unk_1E8198ED0;
    v16 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v5, &v12, &__block_literal_global_25_15416);
    return v9;
  }

  if (v8 == 32)
  {
LABEL_2:
    if (a3)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __db_query_tree_apply_block_block_invoke;
      v15 = &unk_1E8198ED0;
      v16 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a1, &v12, 0);
    }

    return a2;
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
    if ((v3 & 1) == 0)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __db_query_tree_apply_block_block_invoke;
      v15 = &unk_1E8198ED0;
      v16 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v5, &v12, &__block_literal_global_25_15416);
      v5 = v10;
    }

    *v7 = v5;
    v7[1] = a2;
    *(v7 + 24) = 1;
  }

  return v7;
}

void si_query_set_weighted_rank_node(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 0x40000000;
  v6 = __db_query_tree_apply_block_block_invoke;
  v7 = &unk_1E8198ED0;
  v8 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a2, &v4, &__block_literal_global_25_15416);
  *(a1 + 272) = v3;
  v4 = MEMORY[0x1E69E9820];
  v5 = 0x40000000;
  v6 = __db_query_tree_apply_block_block_invoke;
  v7 = &unk_1E8198ED0;
  v8 = &__block_literal_global_9564;
  db_query_tree_apply_block_with_meta(v3, &v4, 0);
}

int32x2_t __si_query_set_weighted_rank_node_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 4)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3 <= 0xE && ((0x5060u >> v3) & 1) != 0)
      {
        if (v3)
        {
          LODWORD(v3) = dword_1C2C005C0[v3];
        }

        *(v2 + 24) = v3;
        result = vrev64_s32(*(v2 + 52));
        *(v2 + 52) = result;
      }
    }
  }

  return result;
}

void destroy_lifting_rule(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = __db_query_tree_apply_block_block_invoke;
        v5[3] = &unk_1E8198ED0;
        v5[4] = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v4, v5, 0);
        v2 = *(a1 + 8);
      }
    }
  }

  free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
}

void clear_lifting_rules(uint64_t a1)
{
  v1 = *(a1 + 264);
  v2 = *(a1 + 288);
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  if (v1)
  {
    if (v2 >= 1)
    {
      v3 = v1;
      do
      {
        v4 = *v3;
        v5 = v3[2];
        destroy_lifting_rule(&v4);
        v3 += 3;
        --v2;
      }

      while (v2);
    }

    free(v1);
  }
}

BOOL SIQueryAddResultGenerator(void *a1, const char *a2, __n128 a3)
{
  v19 = *MEMORY[0x1E69E9840];
  a3.n128_u64[0] = a1[45];
  queryFromCFString(a3);
  ORNode = v5;
  if (dword_1EBF46AD0 >= 5)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[1];
      buf = 138412546;
      buf_4 = a2;
      v17 = 2112;
      *v18 = v14;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Adding generator %@ to query %@", &buf, 0x16u);
    }

    *__error() = v12;
  }

  v7 = ORNode != 0;
  if (ORNode)
  {
    v8 = a1[11];
    if (v8)
    {
      ORNode = makeORNode(v8, ORNode, 1);
    }

    a1[11] = ORNode;
  }

  else
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      buf_4 = "SIQueryAddResultGenerator";
      v17 = 1024;
      *v18 = 1054;
      *&v18[4] = 2112;
      *&v18[6] = a2;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding generator: %@", &buf, 0x1Cu);
    }

    *__error() = v9;
  }

  return v7;
}

uint64_t __initQuery_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = a2;
  v3 = *(a2 + 48);
  if ((v3 - 1) >= 2)
  {
    if (v3 != 4)
    {
      return 0;
    }

    v4 = *(a2 + 16);
    if (!v4)
    {
      return 0;
    }

    if (*(v4 + 24) != 1)
    {
      return 0;
    }

    v5 = *(v4 + 72);
    if (strchr(v5, 42))
    {
      return 0;
    }

    v6 = *v4;
    if (!strcmp(v6, "kMDItemContentTypeTree"))
    {
      if (CFSetContainsValue(initQuery_treeTypeSet, v5))
      {
        return 1;
      }
    }

    else if (!strcmp(v6, "kMDItemContentType") || !strcmp(v6, "_kMDItemGroupId"))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

CFSetRef __initQuery_block_invoke()
{
  __dst[138] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E8196798, 0x450uLL);
  *&v1.version = kCStringSetCallBacks;
  v1.copyDescription = unk_1EEADFE90;
  *&v1.equal = xmmword_1EEADFE98;
  v1.release = 0;
  result = CFSetCreate(*MEMORY[0x1E695E480], __dst, 138, &v1);
  initQuery_treeTypeSet = result;
  return result;
}

CFSetRef __query_needsWhatFieldsMatched_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1E8196768;
  v1[1] = *&off_1E8196778;
  v1[2] = xmmword_1E8196788;
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 6, MEMORY[0x1E695E9F8]);
  query_needsWhatFieldsMatched_dict = result;
  return result;
}

unsigned int *SIQueryCreateWithItemsAndCompletionString(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int128 a11, __int128 a12, uint64_t a13)
{
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14[0] = 1;
  v14[1] = a1;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  *(&v21 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v22 = a10;
  v23 = a11;
  v24 = a12;
  *&v25[0] = a13;
  memset(v25 + 8, 0, 48);
  v26 = 0u;
  v27 = 0u;
  LOWORD(v28) = 0;
  *(&v28 + 1) = 0;
  *&v29 = 0;
  BYTE8(v29) = 0;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, 19);
  return SIQueryCreateWithParameters(v14);
}

unsigned int *SIQueryCreateWithItemsAndCompletionStringWithWeights(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, unsigned int a10, __int128 a11, __int128 a12, uint64_t a13)
{
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14[0] = 1;
  v14[1] = a1;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  *(&v21 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v22 = a10;
  v23 = a11;
  v24 = a12;
  *&v25[0] = a13;
  memset(v25 + 8, 0, 48);
  v26 = 0u;
  v27 = 0u;
  LOWORD(v28) = 0;
  *(&v28 + 1) = 0;
  *&v29 = 0;
  BYTE8(v29) = 0;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, 19);
  return SIQueryCreateWithParameters(v14);
}

unsigned int *SIQueryCreateWithItemsAndCompletionStringWithCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, unsigned int a11, __int128 a12, __int128 a13, uint64_t a14)
{
  memset(v36, 0, sizeof(v36));
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
  v15[0] = 1;
  v15[1] = a1;
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  *(&v22 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v23 = a11;
  v24 = a12;
  v25 = a13;
  *&v26 = a14;
  *(&v26 + 1) = a9;
  v27 = 0u;
  v28 = 0u;
  *&v29 = 0;
  v30 = 0u;
  v31 = 0u;
  LOWORD(v32) = 0;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  BYTE8(v33) = 0;
  v35 = 0u;
  memset(v36, 0, 19);
  v34 = 0u;
  return SIQueryCreateWithParameters(v15);
}

unsigned int *SIQueryCreateWithItemsAndCompletionStringWithWeightsForCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __int128 a10, unsigned int a11, __int128 a12, __int128 a13, uint64_t a14)
{
  memset(v36, 0, sizeof(v36));
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
  v15[0] = 1;
  v15[1] = a1;
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  *(&v22 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v23 = a11;
  v24 = a12;
  v25 = a13;
  *&v26 = a14;
  *(&v26 + 1) = a9;
  v27 = 0u;
  v28 = 0u;
  *&v29 = 0;
  v30 = 0u;
  v31 = 0u;
  LOWORD(v32) = 0;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  BYTE8(v33) = 0;
  v35 = 0u;
  memset(v36, 0, 19);
  v34 = 0u;
  return SIQueryCreateWithParameters(v15);
}

unsigned int *SIQueryCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v33 = 0uLL;
  v34 = 0u;
  v30 = 0u;
  v20 = 0;
  v14 = 0;
  v11[0] = 1;
  v11[1] = a1;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v15 = 0uLL;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  add = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  Current = CFAbsoluteTimeGetCurrent();
  v28 = 0u;
  v29 = 0u;
  *&v30 = 0;
  v31 = 0u;
  v32 = 0u;
  *&v34 = 0;
  BYTE8(v34) = 0;
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  return SIQueryCreateWithParameters(v11);
}

uint64_t SIQuerySetBatchingParameters(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, float a5, float a6, float a7)
{
  v13 = result;
  v14 = (result + 324);
  v15 = *(result + 324);
  v16 = *(result + 340);
  v17 = *(result + 16);
  if (v17)
  {
    v21 = *(result + 340);
    v22 = *(result + 324);
    v23.length = CFArrayGetCount(*(result + 16));
    v23.location = 0;
    result = CFArrayContainsValue(v17, v23, @"_kMDItemSDBInfo");
    v16 = v21;
    v15 = v22;
    if (a3 >= 0x64)
    {
      v18 = 100;
    }

    else
    {
      v18 = a3;
    }

    if (a4 >= 0x64)
    {
      v19 = 100;
    }

    else
    {
      v19 = a4;
    }

    if (a2 >= 0x64)
    {
      v20 = 100;
    }

    else
    {
      v20 = a2;
    }

    if (result)
    {
      a3 = v18;
      a4 = v19;
      a2 = v20;
    }
  }

  *(v13 + 356) = 1;
  *(v13 + 300) = a5;
  *(v13 + 304) = a2;
  *(v13 + 308) = a6;
  *(v13 + 312) = a3;
  *(v13 + 316) = a7;
  *(v13 + 320) = a4;
  *v14 = v15;
  v14[1] = v16;
  return result;
}

uint64_t SIQuerySetDominantRankingQueryCount(uint64_t result, int a2, int a3)
{
  *(result + 328) = a2;
  *(result + 332) = a3;
  return result;
}

void *SIQuerySetFuzzyQueryInfo(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[79] = a3;
  result[78] = a2;
  result[81] = a5;
  result[80] = a4;
  return result;
}

__CFArray *si_attrs_remapping_copy(const __CFArray *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2 ? si_cab_attr_rewriteDict() : si_attr_rewriteDict();
  v4 = v3;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  v13.location = 0;
  v13.length = 0;
  CFArrayAppendArray(Mutable, a1, v13);
  for (i = 0; i != v6; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    Value = CFDictionaryGetValue(v4, ValueAtIndex);
    if (Value)
    {
      v11 = Value;
    }

    else
    {
      v11 = ValueAtIndex;
    }

    CFArrayAppendValue(Mutable, v11);
  }

  return Mutable;
}

uint64_t si_cab_attr_rewriteDict()
{
  keys[26] = *MEMORY[0x1E69E9840];
  result = si_cab_attr_rewriteDict_sDict;
  if (!si_cab_attr_rewriteDict_sDict)
  {
    keys[0] = @"kMDItemFSSize";
    keys[1] = @"kMDItemFSCreationDate";
    keys[2] = @"kMDItemFSContentChangeDate";
    keys[3] = @"kMDItemFSOwnerGroupID";
    keys[4] = @"kMDItemFSOwnerUserID";
    keys[5] = @"kMDItemFSName";
    keys[6] = @"kMDItemFSLabel";
    keys[7] = @"kMDItemFSHasCustomIcon";
    keys[8] = @"kMDItemFSIsExtensionHidden";
    keys[9] = @"kMDItemFSNodeCount";
    keys[10] = @"kMDItemFSIsStationery";
    keys[11] = @"kMDItemFSTypeCode";
    keys[12] = @"kMDItemFSCreatorCode";
    keys[13] = @"kMDItemFSFinderFlags";
    keys[14] = @"kMDItemFSFileId";
    keys[15] = @"_kMDItemFSContentType";
    keys[16] = @"_kMDItemFSContentTypeTree";
    keys[17] = @"_kMDItemFSDisplayName";
    keys[18] = @"_kMDItemFSDisplayKind";
    keys[19] = @"_kMDItemSharedProjectID";
    keys[20] = @"_kMDItemExternalID";
    keys[21] = @"FPParentFileItemID";
    keys[22] = @"FPFilename";
    keys[23] = @"_kMDItemBundleID";
    keys[24] = @"kMDItemFileProviderID";
    keys[25] = @"kMDItemIsTrashed";
    values[0] = @"kMDItemLogicalSize";
    values[1] = @"_kMDItemCreationDate";
    values[2] = @"_kMDItemContentChangeDate";
    values[3] = @"_kMDItemOwnerGroupID";
    values[4] = @"_kMDItemOwnerUserID";
    values[5] = @"_kMDItemFileName";
    values[6] = @"_kMDItemFinderLabel";
    values[7] = @"_kMDItemHasCustomIcon";
    values[8] = @"_kMDItemIsExtensionHidden";
    values[9] = @"_kMDItemNodeCount";
    values[10] = @"_kMDItemIsStationery";
    values[11] = @"_kMDItemTypeCode";
    values[12] = @"_kMDItemCreatorCode";
    values[13] = @"_kMDItemFinderFlags";
    values[14] = @"_kMDItemFileId";
    values[15] = @"kMDItemContentType";
    values[16] = @"kMDItemContentTypeTree";
    values[17] = @"kMDItemDisplayName";
    values[18] = @"kMDItemKind";
    values[19] = &stru_1F4284FD0;
    values[20] = @"_FPItemIdentifier";
    values[21] = @"_FPParentFileItemID";
    values[22] = @"_kMDItemFileName";
    values[23] = @"_FPUserFSUSBFileProviderID";
    values[24] = @"_FPUserFSUSBFileProviderID";
    values[25] = @"_FPIsTrashed";
    v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 26, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = 0;
    atomic_compare_exchange_strong(&si_cab_attr_rewriteDict_sDict, &v2, v1);
    if (v2)
    {
      CFRelease(v1);
    }

    return si_cab_attr_rewriteDict_sDict;
  }

  return result;
}

uint64_t si_attr_rewriteDict()
{
  keys[1] = *MEMORY[0x1E69E9840];
  result = si_attr_rewriteDict_sDict;
  if (!si_attr_rewriteDict_sDict)
  {
    values = @"kMDItemLogicalSize";
    keys[0] = @"kMDItemFSSize";
    v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = 0;
    atomic_compare_exchange_strong(&si_attr_rewriteDict_sDict, &v2, v1);
    if (v2)
    {
      CFRelease(v1);
    }

    return si_attr_rewriteDict_sDict;
  }

  return result;
}

void *__queryRemapFieldsForStore_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) != 4)
  {
    return v2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = *v3;
  if (!*v3)
  {
    return v2;
  }

  if (!strcmp(*v3, "kMDItemDisplayName"))
  {
    v10 = **(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 168);
      valuePtr = 0;
      if (v11)
      {
        Value = CFDictionaryGetValue(v11, @"_showAllExtensions");
        if (Value)
        {
          v13 = Value;
          v14 = CFGetTypeID(Value);
          if (v14 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
            if (valuePtr)
            {
              __endptr[0] = 0;
              asprintf(__endptr, "_kMDItemDisplayNameWithExtensions == X || (_kMDItemDisplayNameWithExtensions != * && kMDItemDisplayName == X)");
              if (__endptr[0])
              {
                query_node_with_ann = db_make_query_node_with_ann(__endptr[0], 0);
                if (query_node_with_ann && (v16 = query_node_with_ann, *query_node_with_ann) && query_node_with_ann[1])
                {
                  v17 = (*query_node_with_ann)[24];
                  if (v17 == 4)
                  {
                    v18 = query_node_with_ann[1];
                  }

                  else
                  {
                    v18 = *query_node_with_ann;
                  }

                  if (v17 == 4)
                  {
                    v19 = query_node_with_ann;
                  }

                  else
                  {
                    v19 = query_node_with_ann + 1;
                  }

                  if (v18[24] != 2)
                  {
                    v57 = __si_assert_copy_extra_661(*(*(a1 + 40) + 32));
                    v58 = v57;
                    v59 = "";
                    if (v57)
                    {
                      v59 = v57;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s Bad generated query mid-node; unexpected type %d", "SIQueryC.c", 3556, "midNode->type == AND_NODE", v59, v18[24]);
                    free(v58);
                    if (__valid_fs(*(*(a1 + 40) + 32)))
                    {
                      v60 = 2989;
                    }

                    else
                    {
                      v60 = 3072;
                    }

                    *v60 = -559038737;
                    abort();
                  }

                  v20 = 4 * (*(*(*v18 + 16) + 24) != 1);
                  v21 = *(v2 + 16);
                  v22 = *(v21 + 24);
                  v23 = v22 - 5;
                  if ((v22 - 5) <= 1)
                  {
                    if (v22 == 5)
                    {
                      v24 = 1;
                    }

                    else
                    {
                      v24 = 2;
                    }

                    *(v21 + 24) = v24;
                  }

                  db_clone_query_node(v2);
                  v26 = *(v25 + 16);
                  v27 = *v26;
                  *v26 = **(*v19 + 2);
                  **(*v19 + 2) = v27;
                  v28 = *v19;
                  *v19 = v25;
                  db_free_query_node(v28);
                  v29 = *&v18[v20];
                  *&v18[v20] = v2;
                  db_free_query_node(v29);
                  if (v23 <= 1)
                  {
                    apply_demorgans_law(v16);
                  }
                }

                else
                {
                  v16 = v2;
                }

                free(__endptr[0]);
                return v16;
              }
            }
          }
        }
      }
    }

    return v2;
  }

  if (!strncmp(v4, "kMDItemFS", 9uLL) && strcmp(v4, "kMDItemFSLabel"))
  {
    v30 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v4, 0x8000100u, *MEMORY[0x1E695E498]);
    v31 = CFDictionaryGetValue(*(a1 + 48), v30);
    CFRelease(v30);
    if (v31)
    {
      v32 = *(v2 + 16);
      *(v32 + 8) = 0;
      *(v2 + 32) = 0;
      *(v32 + 48) = 100;
      *(v32 + 32) &= 0xFFFFFFFFFFFFF77FLL;
      free(*v32);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      *__endptr = 0u;
      CFStringGetCString(v31, __endptr, 80, 0x8000100u);
      **(v2 + 16) = strdup(__endptr);
    }

    return v2;
  }

  v6 = *(v3 + 72);
  if (!v6)
  {
    return v2;
  }

  v7 = *(v3 + 24);
  if ((v7 | 4) != 5)
  {
    return v2;
  }

  if (!strcmp(v4, "kMDItemFSLabel"))
  {
    v33 = atoi(v6);
    if (v33 > 3)
    {
      if (v33 > 5)
      {
        if (v33 == 6)
        {
          v34 = str_label_red;
        }

        else
        {
          if (v33 != 7)
          {
            return v2;
          }

          v34 = &str_label_orange;
        }
      }

      else if (v33 == 4)
      {
        v34 = str_label_blue;
      }

      else
      {
        v34 = str_label_yellow;
      }
    }

    else if (v33 > 1)
    {
      if (v33 == 2)
      {
        v34 = str_label_green;
      }

      else
      {
        v34 = str_label_purple;
      }
    }

    else
    {
      if (!v33)
      {
        v46 = *v6;
        if (v46 == 42)
        {
          if (v6[1])
          {
            return v2;
          }

          if (v7 == 1)
          {
            goto LABEL_112;
          }

          if (v7 != 5)
          {
            return v2;
          }

          goto LABEL_113;
        }

        if (v46 == 48)
        {
          v53 = -*(v6 + 1);
        }

        else
        {
          v53 = 48 - v46;
        }

        if (v53)
        {
          return v2;
        }

LABEL_110:
        if (v7 != 1)
        {
          if (v7 != 5)
          {
            return v2;
          }

LABEL_112:
          __endptr[0] = 0;
          asprintf(__endptr, "%s=*||%s=*||%s=*||%s=*||%s=*||%s=*||%s=*", "kMDLabel_yekauorssrbpta3hdteqgbglma");
          goto LABEL_114;
        }

LABEL_113:
        __endptr[0] = 0;
        asprintf(__endptr, "!(%s=*||%s=*||%s=*||%s=*||%s=*||%s=*||%s=*)", "kMDLabel_yekauorssrbpta3hdteqgbglma");
LABEL_114:
        if (__endptr[0])
        {
          v54 = db_make_query_node_with_ann(__endptr[0], 0);
          if (v54)
          {
            v55 = v54;
            db_free_query_node(v2);
            v2 = v55;
          }

          free(__endptr[0]);
        }

        return v2;
      }

      if (v33 != 1)
      {
        return v2;
      }

      v34 = str_label_gray;
    }

    v47 = *v34;
    if (*v34)
    {
      *(v3 + 8) = 0;
      *(v2 + 32) = 0;
      *(v3 + 48) = 100;
      *(v3 + 32) &= 0xFFFFFFFFFFFFF77FLL;
      free(v4);
      v48 = strdup(v47);
      v49 = *(v2 + 16);
      *v49 = v48;
      **(v49 + 72) = 42;
      *(*(*(v2 + 16) + 72) + 1) = 0;
    }

    return v2;
  }

  if (!strcmp(v4, "kMDLabel_zya2exypzrhulknkk5enqbj33y"))
  {
    v8 = *v6;
    if (!(v8 == 42 ? -*(v6 + 1) : 42 - v8))
    {
      goto LABEL_110;
    }
  }

  if (v7 == 1)
  {
    if (!strncmp(v4, "_kMDItemQueryPath", 0x11uLL))
    {
      v35 = v4 + 17;
      if (v4[17])
      {
        if (v4[17] == 79 && v4[18] == 73 && v4[19] == 68)
        {
          v35 = v4 + 20;
        }

        strncmp(v35, "Flat", 4uLL);
      }

      __endptr[0] = 0;
      strtoll(v6, __endptr, 0);
      if (__endptr[0] != v6 && !*__endptr[0])
      {
        PathNodeForOid = createPathNodeForOid(v43);
        if (!PathNodeForOid)
        {
          return v2;
        }

LABEL_100:
        v51 = PathNodeForOid;
        db_free_query_node(v2);
        return v51;
      }

LABEL_97:
      PathNodeForOid = createPathNodeForPath(v43);
      if (!PathNodeForOid)
      {
        return v2;
      }

      goto LABEL_100;
    }
  }

  else if (v7 != 5)
  {
    return v2;
  }

  v36 = strlen(v4);
  if (v36 > 20)
  {
    if (v36 == 21)
    {
      v40 = "kMDItemFileProviderID";
      v41 = v4;
      v42 = 21;
    }

    else
    {
      if (v36 != 26)
      {
        return v2;
      }

      v40 = "_FPUserFSUSBFileProviderID";
      v41 = v4;
      v42 = 26;
    }

    if (strncmp(v41, v40, v42))
    {
      return v2;
    }
  }

  else
  {
    if (v36 == 12)
    {
      v37 = "_FPIsTrashed";
      v38 = v4;
      v39 = 12;
      goto LABEL_72;
    }

    if (v36 != 16)
    {
      return v2;
    }

    if (strncmp(v4, "_kMDItemBundleID", 0x10uLL))
    {
      v37 = "kMDItemIsTrashed";
      v38 = v4;
      v39 = 16;
LABEL_72:
      if (strncmp(v38, v37, v39) || (v7 | 4) != 5)
      {
        return v2;
      }

      if (atoi(v6))
      {
        if (v7 == 1)
        {
          goto LABEL_97;
        }
      }

      else if (v7 == 5)
      {
        goto LABEL_97;
      }

      free_qp(v3);
      *(v2 + 16) = 0;
      *(v2 + 48) = 32;
      return v2;
    }
  }

  if ((v7 | 4) == 5 && (*v6 == 42 && !v6[1] || !strcmp(v6, "com.apple.filesystems.UserFS.FileProvider")))
  {
    v44 = 32;
    v45 = 16;
  }

  else
  {
    v44 = 16;
    v45 = 32;
  }

  if (v7 == 5)
  {
    v52 = v45;
  }

  else
  {
    v52 = v44;
  }

  free_qp(v3);
  *(v2 + 16) = 0;
  *(v2 + 48) = v52;
  return v2;
}

_WORD *query_node_from_token_data(uint64_t a1, void *a2)
{
  v2 = a2;
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 0x40000000;
    v23 = __db_query_tree_apply_block_block_invoke;
    v24 = &unk_1E8198ED0;
    v25 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(a2, &v21, &__block_literal_global_25_15416);
    v5 = v4;
    free(*(v4[2] + 72));
    v6 = v5[2];
    *(v6 + 72) = 0;
    *(v6 + 32) = *(v6 + 32) & 0xFFFFFFFFFEFF7FCFLL | 0x8000;
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    v8 = CFSetCreateMutable(0, 0, 0);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __query_node_from_token_data_block_invoke;
    v20[3] = &__block_descriptor_tmp_453;
    v20[4] = v8;
    v20[5] = Mutable;
    TokenDataGetTokens(a1, v20, v9);
    MEMORY[0x1EEE9AC00](v10);
    v12 = context - v11;
    bzero(context - v11, v13);
    bzero(v12, 8 * *(a1 + 20));
    v18 = v12;
    v19 = 0;
    context[0] = Mutable;
    context[1] = v5;
    context[2] = a1;
    if (v8)
    {
      CFSetApplyFunction(v8, child_node_applier, context);
      v14 = *&v18[8 * v19];
      *&v18[8 * v19] = 0;
    }

    else
    {
      v14 = 0;
    }

    v21 = MEMORY[0x1E69E9820];
    v22 = 0x40000000;
    v23 = __db_query_tree_apply_block_block_invoke;
    v24 = &unk_1E8198ED0;
    v25 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v5, &v21, 0);
    CFRelease(Mutable);
    CFRelease(v8);
    if (v14)
    {
      v15 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
      v15[24] = 1;
      *v15 = v2;
      *(v15 + 1) = v14;
      return v15;
    }
  }

  return v2;
}

void __query_node_from_token_data_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v7 = a5;
    v8 = (a4 + 4);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = v10 | (v9 << 16);
      v12 = v11;
      if (!*(v8 - 2))
      {
        CFSetAddValue(*(a1 + 32), v11);
      }

      if (v10 + v9 < a3)
      {
        Value = CFDictionaryGetValue(*(a1 + 40), v12);
        if (!Value)
        {
          Value = CFSetCreateMutable(0, 0, 0);
          CFDictionarySetValue(*(a1 + 40), v12, Value);
          CFRelease(Value);
        }

        CFSetAddValue(Value, (v8[1] | (*v8 << 16)));
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

_WORD *child_node_applier(unint64_t key, uint64_t a2)
{
  v3 = key;
  v4 = key >> 16;
  ++*(a2 + 32);
  Value = CFDictionaryGetValue(*a2, key);
  if (Value)
  {
    CFSetApplyFunction(Value, child_node_applier, a2);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(v6 + 8 * v7);
    *(v6 + 8 * v7) = 0;
  }

  else
  {
    v8 = 0;
    LODWORD(v7) = *(a2 + 32);
  }

  *(a2 + 32) = v7 - 1;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(v10 + 8);
  v12 = *(v10 + 20);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __db_query_tree_apply_block_block_invoke;
  v19[3] = &unk_1E8198ED0;
  v19[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v9, v19, &__block_literal_global_25_15416);
  v14 = v13;
  if ((*(*(a2 + 16) + 16) & 1) != 0 && (v3 >> 16) + v3 == v12)
  {
    v15 = malloc_type_malloc(v3 + 2, 0x3962C0FFuLL);
    *(*(v14 + 2) + 72) = v15;
    result = memcpy(v15, (v11 + v4), v3);
    *(*(*(v14 + 2) + 72) + v3) = 42;
    *(*(*(v14 + 2) + 72) + v3 + 1) = 0;
  }

  else
  {
    result = strndup((v11 + v4), v3);
    *(*(v14 + 2) + 72) = result;
  }

  if (v8)
  {
    result = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
    result[24] = 2;
    *result = v8;
    *(result + 1) = v14;
    v14 = result;
  }

  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  if (*(v17 + 8 * v18))
  {
    result = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
    result[24] = 1;
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    *result = *(v17 + 8 * v18);
    *(result + 1) = v14;
    v14 = result;
  }

  *(v17 + 8 * v18) = v14;
  return result;
}

void enqueueQuery(uint64_t *a1, int a2)
{
  v3 = a1[1];
  if (a2)
  {
    if ((*(v3 + 202) & 4) != 0)
    {
LABEL_5:
      v6 = a1[4];
      if (v6)
      {
        CFRelease(v6);
      }

      a1[4] = 0;
      v7 = a1[1];
      if (atomic_fetch_add((v7 + 584), 0xFFFFFFFF) == 1)
      {
        si_query_free(v7);
      }

      si_querypipe_release(a1[2]);

      free(a1);
      return;
    }

    v4 = a1[2];
    v5 = v3;
LABEL_4:
    si_querypipe_remove_process(v4, v5, 0, 1);
    goto LABEL_5;
  }

  priority = query_priority(a1[1]);
  v9 = *a1;
  v10 = *(*a1 + 8 * (priority + 14) + 1008);
  if (!v10)
  {
    v5 = a1[1];
    if ((*(v5 + 202) & 4) != 0)
    {
      goto LABEL_5;
    }

    v4 = a1[2];
    goto LABEL_4;
  }

  v11 = 8 * priority;
  v14 = 0;
  v12 = si_backtrace_routine_resolve(v9, *(a1[1] + 656), queryGo, a1, &v14);
  v13 = v14;

  si_enqueue_work_with_qos(v10, v11 + 9, v12, v13);
}

CFSetRef __tag_is_excepted_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1E8196580;
  v2 = @"com.apple.searchd";
  result = CFSetCreate(*MEMORY[0x1E695E480], &v1, 3, MEMORY[0x1E695E9F8]);
  tag_is_excepted_exceptedIds = result;
  return result;
}

uint64_t *__queryRemapFieldsForStore_block_invoke_6(int a1, uint64_t *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    if (a3)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a3, &v7, 0);
    }

    if (a4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v7, 0);
    }

    free(v5);
    return 0;
  }

  return v5;
}

void *createPathNodeForOid(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v20 = *MEMORY[0x1E69E9840];
  bzero(v19, 0x1000uLL);
  v18 = 0;
  if (v6)
  {
    SIPersistentIDStoreGetOidPathForOid(*(v10 + 1416), v8, v19, 1, &v18);
    v11 = v18;
    v12 = v19[0];
    if (!v18)
    {
      return db_make_query_node_with_ann("false", 0);
    }
  }

  else
  {
    v13 = *(v10 + 6624);
    if (!v13)
    {
      return db_make_query_node_with_ann("false", 0);
    }

    Path = directoryStoreGetPath(v13, v8, &v19[1]);
    v18 = Path;
    if (!Path)
    {
      return db_make_query_node_with_ann("false", 0);
    }

    v19[0] = v8;
    v11 = Path + 1;
    v18 = Path + 1;
    v12 = v8;
    if (Path == -1)
    {
      return db_make_query_node_with_ann("false", 0);
    }
  }

  if (!v12)
  {
    return db_make_query_node_with_ann("false", 0);
  }

  if (v19[v11 - 1] != 2)
  {
    v19[v11++] = 2;
    v18 = v11;
  }

  OidScopeNode = makeOidScopeNode(v19, v11, v4, v2);
  v16 = *(OidScopeNode + 16);
  *(v16 + 32) |= 0x200000uLL;
  asprintf((v16 + 72), "%llx", v8);
  return OidScopeNode;
}

void *createPathNodeForPath(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v21[1] = *MEMORY[0x1E69E9840];
  bzero(v20, 0x1000uLL);
  if (v6)
  {
    v11 = *(v10 + 1416);
    if (*(v11 + 240))
    {
      return db_make_query_node_with_ann("false", 0);
    }

    v12 = *(v11 + 64);
    if (!v12)
    {
      return db_make_query_node_with_ann("false", 0);
    }

    v13 = v20;
    v14 = v12();
  }

  else
  {
    v14 = 0;
    if (v8)
    {
      v15 = v21;
      v16 = v8;
      do
      {
        v17 = strchr(v16, 47);
        if (!v17)
        {
          break;
        }

        v16 = v17 + 1;
        ++v14;
        *v15-- = atoll(v17 + 1);
      }

      while (v14 != 512);
    }

    v13 = &v20[-8 * v14 + 4096];
  }

  if (!v14 || !*v13)
  {
    return db_make_query_node_with_ann("false", 0);
  }

  if (*&v13[8 * v14 - 8] != 2)
  {
    *&v13[8 * v14++] = 2;
  }

  OidScopeNode = makeOidScopeNode(v13, v14, v4, v2);
  *(*(OidScopeNode + 16) + 72) = strdup(v8);
  return OidScopeNode;
}

void *si_query_get_scope_node(uint64_t a1, dispatch_once_t *predicate, const __CFArray *a3)
{
  if (!a3 || predicate[22] == a3)
  {
    v5 = predicate[29];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __si_query_get_scope_node_block_invoke;
    v6[3] = &__block_descriptor_tmp_194;
    v6[4] = predicate;
    v6[5] = a1;
    if (v5 != -1)
    {
      dispatch_once(predicate + 29, v6);
    }

    return predicate[28];
  }

  else
  {

    return createNodeFromScopes(a1, predicate, a3);
  }
}

uint64_t __si_query_evaluate_move_block_invoke(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = v1;
  LODWORD(v6) = 0;
  v7 = *(v4 + 32);
  if ((v7 & 0xC0000) != 0 && (v7 & 0x300000) == 0x100000)
  {
    bzero(__src, 0x1000uLL);
    v8 = *(*(v5 + 48) + 1416);
    if (!*(v8 + 240))
    {
      v6 = *(v8 + 64);
      if (!v6)
      {
        goto LABEL_6;
      }

      v9 = v6();
      v4 = *(v3 + 16);
      if (v9)
      {
        v10 = v9;
        *(v4 + 160) |= 0x8000u;
        *(*(v3 + 16) + 288) = malloc_type_realloc(*(v4 + 288), 8 * v9, 0x100004000313F17uLL);
        memcpy(*(*(v3 + 16) + 72), __src, 8 * v10);
        v4 = *(v3 + 16);
        *(v4 + 40) = v10;
        *(v4 + 32) &= ~0x100000uLL;
        LODWORD(v6) = 1;
        goto LABEL_6;
      }
    }

    LODWORD(v6) = 0;
LABEL_6:
    v7 = *(v4 + 32);
  }

  if ((v7 & 0x300000) == 0x200000 && **(v4 + 288) == **(v5 + 56))
  {
    if (v6)
    {
      *(*(*(v5 + 32) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(v5 + 40) + 8) + 24) = 1;
      bzero(__src, 0x1000uLL);
      v11 = *(*(v5 + 48) + 1416);
      if (!*(v11 + 240) && (v13 = *(v11 + 64)) != 0 && (v14 = v13(), v4 = *(v3 + 16), v14))
      {
        v15 = v14;
        *(v4 + 160) |= 0x8000u;
        *(*(v3 + 16) + 288) = malloc_type_realloc(*(v4 + 288), 8 * v14, 0x100004000313F17uLL);
        memcpy(*(*(v3 + 16) + 288), __src, 8 * v15);
        v16 = *(v3 + 16);
        *(v16 + 40) = v15;
        *(v16 + 32) &= ~0x100000uLL;
        if (**(v16 + 288) == **(v5 + 56))
        {
          *(*(*(v5 + 32) + 8) + 24) = 1;
          *(*(*(v5 + 40) + 8) + 24) = 0;
        }
      }

      else
      {
        *(v4 + 32) |= 0x100000uLL;
      }
    }
  }

  return v3;
}

void ProcessPathForScope(__CFArray *a1, const __CFString *a2, const __CFString *cf1)
{
  v3 = cf1;
  if (CFEqual(cf1, a2))
  {
    goto LABEL_7;
  }

  if (CFStringHasPrefix(v3, a2))
  {
    Length = CFStringGetLength(a2);
    CharacterAtIndex = CFStringGetCharacterAtIndex(v3, Length);
  }

  else
  {
    if (!CFStringHasPrefix(a2, v3))
    {
      return;
    }

    v8 = CFStringGetLength(v3);
    CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v8);
    v3 = a2;
  }

  if (CharacterAtIndex == 47)
  {
LABEL_7:

    CFArrayAppendValue(a1, v3);
  }
}

void *__si_query_get_scope_node_block_invoke(uint64_t a1)
{
  result = createNodeFromScopes(*(a1 + 40), *(a1 + 32), *(*(a1 + 32) + 176));
  *(*(a1 + 32) + 224) = result;
  return result;
}

void *createNodeFromScopes(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!theArray)
  {
    return 0;
  }

  v6 = *(a2 + 200);
  if ((*(a1 + 6584) & 0x10) != 0)
  {
    if (CFArrayGetCount(theArray))
    {
      v23 = processScopes(a1, theArray, 0, 1, (v6 >> 9) & 1, *(a2 + 592), *(a2 + 600), *(a2 + 360));
      v9 = v23;
      if (v23)
      {
        _rewriteQuery(v23, *(a2 + 360));
      }

      return v9;
    }

    return 0;
  }

  if (!*(a1 + 6624))
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return db_make_query_node_with_ann("false", 0);
  }

  v8 = Count;
  v9 = 0;
  for (i = 0; i != v8; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 == CFStringGetTypeID())
    {
      bzero(buffer, 0x400uLL);
      if ((CFStringGetCharacterAtIndex(ValueAtIndex, 0) == 47 || !CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u)) && GetCPathForUser(a1, ValueAtIndex, buffer))
      {
        if (v9)
        {
          continue;
        }

        query_node_with_ann = db_make_query_node_with_ann("false", 0);
      }

      else
      {
        query_node_with_ann = addNodeForCPath(v13);
      }

      v9 = query_node_with_ann;
    }

    else
    {
      v15 = CFArrayGetCount(ValueAtIndex);
      bzero(buffer, 0x400uLL);
      v16 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      if (GetCPathForUser(a1, v16, buffer))
      {
        ORNode = db_make_query_node_with_ann("false", 0);
      }

      else
      {
        ORNode = addNodeForCPath(v17);
        if (v15 >= 2)
        {
          v19 = 0;
          for (j = 1; j != v15; ++j)
          {
            v21 = CFArrayGetValueAtIndex(ValueAtIndex, j);
            if (!GetCPathForUser(a1, v21, buffer))
            {
              v19 = addNodeForCPath(v22);
            }
          }

          if (v19)
          {
            *(v19 + 24) ^= 8u;
            ORNode = makeAndNode(ORNode, v19, 1, 1);
          }
        }
      }

      if (v9)
      {
        ORNode = makeORNode(v9, ORNode, 1);
      }

      v9 = ORNode;
    }
  }

  if (!v9)
  {
    return db_make_query_node_with_ann("false", 0);
  }

  return v9;
}

void *processScopes(uint64_t a1, const __CFArray *a2, CFIndex a3, int a4, uint64_t a5, int a6, uint64_t *a7, double a8)
{
  v92 = a7;
  v89 = a6;
  v83 = a4;
  v86 = a3;
  v88 = a1;
  v104[128] = *MEMORY[0x1E69E9840];
  v87 = a2;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, 0, 0);
  v12 = v86;
  v13 = Count - v86;
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v81 - 64 * (Count - v86);
  bzero(v84, v15);
  v13 *= 8;
  MEMORY[0x1EEE9AC00](v16);
  v17 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v17, v13);
  MEMORY[0x1EEE9AC00](v18);
  bzero(v17, v13);
  MEMORY[0x1EEE9AC00](v19);
  v90 = v17;
  bzero(v17, v13);
  v21 = Count <= v12;
  v82 = Count - v12;
  v85 = Mutable;
  v91 = Count;
  v22 = v88;
  if (v21)
  {
LABEL_21:
    v39 = CFSetGetCount(Mutable);
    v84 = &v81;
    MEMORY[0x1EEE9AC00](v40);
    v42 = (&v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v42, v41);
    if (v39)
    {
      CFSetGetValues(Mutable, v42);
    }

    v43 = v86;
    v44 = *&v17[8 * v86];
    if (*&v44 == 0.0)
    {
      ScopeNode = _makeScopeNode(v44, a5, 0);
    }

    else
    {
      ScopeNode = makeScopeNode(*&v44, v44, a5, 0);
    }

    ORNode = ScopeNode;
    v87 = v42;
    v88 = v39;
    if (v39 >= 1)
    {
      do
      {
        v47 = *&v17[8 * v43];
        v49 = *v42++;
        v48 = v49;
        if (*&v47 == 0.0)
        {
          v50 = _makeScopeNode(v47, a5, v48);
        }

        else
        {
          v50 = makeScopeNode(*&v47, v47, a5, v48);
        }

        ORNode = makeORNode(ORNode, v50, 1);
        --v39;
      }

      while (v39);
    }

    v51 = v89;
    if (v89 >= 1)
    {
      v52 = v92;
      v53 = v89;
      do
      {
        v54 = *&v17[8 * v43];
        v56 = *v52++;
        v55 = v56;
        if (*&v54 == 0.0)
        {
          v57 = _makeScopeNode(v54, a5, v55);
        }

        else
        {
          v57 = makeScopeNode(*&v54, v54, a5, v55);
        }

        ORNode = makeORNode(ORNode, v57, 1);
        --v53;
      }

      while (v53);
    }

    v58 = v90[v43];
    if (v58)
    {
      ORNode = makeAndNode(ORNode, v58, 1, 1);
    }

    v59 = v43 + 1;
    if (v43 + 1 < Count)
    {
      do
      {
        v60 = *&v17[8 * v59];
        if (*&v60 == 0.0)
        {
          v61 = _makeScopeNode(v60, a5, 0);
        }

        else
        {
          v61 = makeScopeNode(*&v60, v60, a5, 0);
        }

        v62 = v61;
        v63 = v87;
        v64 = v88;
        if (v88 >= 1)
        {
          do
          {
            v65 = *&v17[8 * v59];
            v67 = *v63;
            v63 = (v63 + 8);
            v66 = v67;
            if (*&v65 == 0.0)
            {
              v68 = _makeScopeNode(v65, a5, v66);
            }

            else
            {
              v68 = makeScopeNode(*&v65, v65, a5, v66);
            }

            v62 = makeORNode(v62, v68, 1);
            --v64;
          }

          while (v64);
        }

        v69 = v92;
        v70 = v51;
        if (v89 >= 1)
        {
          do
          {
            v71 = *&v17[8 * v59];
            v73 = *v69++;
            v72 = v73;
            if (*&v71 == 0.0)
            {
              v74 = _makeScopeNode(v71, a5, v72);
            }

            else
            {
              v74 = makeScopeNode(*&v71, v71, a5, v72);
            }

            v62 = makeORNode(v62, v74, 1);
            --v70;
          }

          while (v70);
        }

        v75 = v90[v59];
        if (v75)
        {
          v62 = makeAndNode(v62, v75, 1, 1);
        }

        v76 = v91;
        ORNode = makeORNode(ORNode, v62, 1);
        ++v59;
      }

      while (v59 != v76);
    }

    _rewriteQuery(ORNode, a8);
    CFRelease(v85);
  }

  else
  {
    *&v20 = 136316162;
    v81 = v20;
    v23 = v86;
    while (1)
    {
      bzero(v104, 0x400uLL);
      ValueAtIndex = CFArrayGetValueAtIndex(v87, v23);
      v25 = CFGetTypeID(ValueAtIndex);
      if (v25 == CFArrayGetTypeID())
      {
        if ((v83 & 1) == 0)
        {
          goto LABEL_58;
        }

        v26 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        v27 = processScopes(v22, ValueAtIndex, 1, 0, a5, v89, v92, a8);
        v28 = v23 - v86;
        v90[v23 - v86] = v27;
        ValueAtIndex = v26;
      }

      else
      {
        v28 = v23 - v86;
      }

      LOBYTE(v104[0]) = 0;
      CFStringGetFileSystemRepresentation(ValueAtIndex, v104, 1024);
      v29 = &v84[64 * v28];
      *&v17[8 * v28] = v29;
      *v29 = 0;
      v93 = 0;
      v30 = *(v22 + 1416);
      v31 = &v17[8 * v28];
      if (((*(v30 + 144))() & 1) == 0)
      {
        break;
      }

      v32 = *__error();
      v33 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v38 = *v31;
        v94 = v81;
        v95 = "processScopes";
        v96 = 1024;
        v97 = 6631;
        v98 = 2112;
        v99 = ValueAtIndex;
        v100 = 2080;
        v101 = v29;
        v102 = 2048;
        v103 = v38;
        _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: scopePath: %@ / %s %f", &v94, 0x30u);
      }

      *__error() = v32;
      if (v92 && v93)
      {
        v34 = CFArrayGetCount(v93);
        Mutable = v85;
        Count = v91;
        v22 = v88;
        if (v34 >= 1)
        {
          v35 = v34;
          for (i = 0; i != v35; ++i)
          {
            v37 = CFArrayGetValueAtIndex(v93, i);
            CFSetAddValue(Mutable, v37);
          }
        }

        CFRelease(v93);
        if (++v23 >= Count)
        {
          goto LABEL_21;
        }
      }

      else
      {
        ++v23;
        Count = v91;
        Mutable = v85;
        v22 = v88;
        if (v23 >= v91)
        {
          goto LABEL_21;
        }
      }
    }

    Mutable = v85;
LABEL_58:
    v77 = v82;
    v78 = v90;
    if (v82 >= 1)
    {
      do
      {
        v79 = *v78;
        if (*v78)
        {
          v104[0] = MEMORY[0x1E69E9820];
          v104[1] = 0x40000000;
          v104[2] = __db_query_tree_apply_block_block_invoke;
          v104[3] = &unk_1E8198ED0;
          v104[4] = &__block_literal_global_174;
          db_query_tree_apply_block_with_meta(v79, v104, 0);
        }

        ++v78;
        --v77;
      }

      while (v77);
    }

    CFRelease(Mutable);
    return 0;
  }

  return ORNode;
}

uint64_t GetCPathForUser(uint64_t a1, CFStringRef string, char *buffer)
{
  if (!CFStringGetFileSystemRepresentation(string, buffer, 1024))
  {
    return 0xFFFFFFFFLL;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = *(a1 + 1416);
    if (*(v5 + 240))
    {
      return 0xFFFFFFFFLL;
    }

    if ((*(v5 + 56))(v5, buffer, 0, 0, 0))
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
    if (stat(buffer, &v7) == -1)
    {
      return *__error();
    }

    else
    {
      return 0;
    }
  }
}

void **makeScopeNode(double a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = makeScopeNode_prototypeNode;
  if (!makeScopeNode_prototypeNode)
  {
    while (1)
    {
      query_node_with_ann = db_make_query_node_with_ann("_kMDItemTimeMachinePath = stuff && _kTimeMachineOldestSnapshot<=0 && _kTimeMachineNewestSnapshot>=0))", 0);
      v9 = 0;
      *(*(*query_node_with_ann + 16) + 32) |= 0x40200uLL;
      v10 = query_node_with_ann[1];
      *(*(*v10 + 16) + 32) |= 0x10000uLL;
      *(*(v10[1] + 16) + 32) |= 0x10000uLL;
      atomic_compare_exchange_strong(&makeScopeNode_prototypeNode, &v9, query_node_with_ann);
      if (!v9)
      {
        break;
      }

      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(query_node_with_ann, &v16, 0);
      v7 = makeScopeNode_prototypeNode;
      if (makeScopeNode_prototypeNode)
      {
        goto LABEL_6;
      }
    }

    v7 = makeScopeNode_prototypeNode;
  }

LABEL_6:
  v16 = MEMORY[0x1E69E9820];
  v17 = 0x40000000;
  v18 = __db_query_tree_apply_block_block_invoke;
  v19 = &unk_1E8198ED0;
  v20 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v7, &v16, &__block_literal_global_25_15416);
  v12 = v11;
  free(*(*(*v11 + 16) + 72));
  v13 = *(*v12 + 16);
  if (a3)
  {
    asprintf((v13 + 72), "%s");
  }

  else
  {
    asprintf((v13 + 72), "%s*");
  }

  if (a4)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __makeScopeNode_block_invoke;
    v15[3] = &__block_descriptor_tmp_654;
    v15[4] = a4;
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = v15;
    db_query_tree_apply_block_with_meta(v12, &v16, 0);
  }

  free(*(*(**(v12 + 8) + 16) + 72));
  asprintf((*(**(v12 + 8) + 16) + 72), "%f", a1);
  free(*(*(*(*(v12 + 8) + 8) + 16) + 72));
  asprintf((*(*(*(v12 + 8) + 8) + 16) + 72), "%f", a1);
  return v12;
}

uint64_t _makeScopeNode(uint64_t a1, int a2, uint64_t a3)
{
  v5 = _makeScopeNode_prototypeNode[0];
  if (!_makeScopeNode_prototypeNode[0])
  {
    while (1)
    {
      query_node_with_ann = db_make_query_node_with_ann("_kMDItemTimeMachinePath = stuff", 0);
      v7 = 0;
      *(query_node_with_ann[2] + 32) |= 0x40200uLL;
      atomic_compare_exchange_strong(_makeScopeNode_prototypeNode, &v7, query_node_with_ann);
      if (!v7)
      {
        break;
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __db_query_tree_apply_block_block_invoke;
      v15 = &unk_1E8198ED0;
      v16 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(query_node_with_ann, &v12, 0);
      v5 = _makeScopeNode_prototypeNode[0];
      if (_makeScopeNode_prototypeNode[0])
      {
        goto LABEL_6;
      }
    }

    v5 = _makeScopeNode_prototypeNode[0];
  }

LABEL_6:
  v12 = MEMORY[0x1E69E9820];
  v13 = 0x40000000;
  v14 = __db_query_tree_apply_block_block_invoke;
  v15 = &unk_1E8198ED0;
  v16 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v5, &v12, &__block_literal_global_25_15416);
  v9 = v8;
  if (a3)
  {
    free(**(v8 + 16));
    asprintf(*(v9 + 16), "_kMDItemTimeMachinePath%lld", a3);
  }

  free(*(*(v9 + 16) + 72));
  v10 = *(v9 + 16);
  if (a2)
  {
    asprintf((v10 + 72), "%s");
  }

  else
  {
    asprintf((v10 + 72), "%s*");
  }

  return v9;
}

uint64_t __makeScopeNode_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      asprintf(v4, "%s%lld", *v4, *(a1 + 32));
      free(v5);
    }
  }

  return a2;
}

uint64_t __preIterateQueryForIndex_block_invoke_167(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v181 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48) & 0xFFF7;
  if (v4 > 0x20)
  {
    goto LABEL_214;
  }

  if (((1 << (*(a2 + 48) & 0xF7)) & 0x100010006) != 0)
  {
    return v2;
  }

  if (v4 != 4)
  {
LABEL_214:
    v152 = __si_assert_copy_extra_661(*(*(a1 + 80) + 32));
    v153 = v152;
    v154 = "";
    if (v152)
    {
      v154 = v152;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected type %d", "SIQueryC.c", 5888, "0", v154, *(v2 + 48));
    free(v153);
    if (__valid_fs(*(*(v3 + 80) + 32)))
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

  if (dword_1EBF46AD0 >= 5)
  {
    v117 = *__error();
    v118 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v118, OS_LOG_TYPE_DEFAULT, "Factor.", buf, 2u);
    }

    *__error() = v117;
  }

  v6 = *(v2 + 16);
  if (v6)
  {
    query_trim_superfluous_wildcards(v6);
    query_eliminate_denied_terms(v2, *(v3 + 40), &__block_literal_global_172, *(v3 + 48));
  }

  v7 = *(v3 + 64);
  v8 = *v7;
  if (**(v3 + 56) + 1 >= *v7)
  {
    *v7 = 2 * v8;
    *(*(*(v3 + 32) + 8) + 24) = malloc_type_realloc(*(*(*(v3 + 32) + 8) + 24), 16 * v8, 0x2004093837F09uLL);
  }

  v9 = *(v2 + 16);
  if ((*(v9 + 33) & 8) != 0)
  {
    goto LABEL_14;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v121 = *__error();
    v122 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v122, OS_LOG_TYPE_DEFAULT, "Metadata or Content.", buf, 2u);
    }

    *__error() = v121;
    v9 = *(v2 + 16);
  }

  if ((*(v3 + 104) & 1) == 0 && expensiveNodeCheck(v9))
  {
LABEL_14:
    **(v3 + 72) = 1;
    return v2;
  }

  v10 = *(v9 + 32);
  if ((v10 & 0x6000000) != 0)
  {
    **(v3 + 72) = 1;
  }

  v11 = *(v9 + 24);
  if ((v11 - 11) < 2)
  {
    v41 = *v9;
    if (dword_1EBF46AD0 >= 5)
    {
      v136 = *__error();
      v137 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v137, OS_LOG_TYPE_DEFAULT, "Range query.", buf, 2u);
      }

      *__error() = v136;
      v9 = *(v2 + 16);
    }

    if (*(v9 + 40) != 2)
    {
      return v2;
    }

    if (**v9 == 42 && !*(*v9 + 1))
    {
      v43 = 1;
    }

    else
    {
      id_for_field_locked = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), v41);
      v9 = *(v2 + 16);
      if (id_for_field_locked == -2)
      {
        if (*(v9 + 52) == 0.0 && *(v9 + 56) == 0.0)
        {
LABEL_69:
          v46 = *(v9 + 24);
LABEL_104:
          v77 = v46 - 5;
          if (v77 > 9)
          {
            v78 = 16;
          }

          else
          {
            v78 = *&asc_1C2BFFC88[2 * v77];
          }

          *(v2 + 48) = v78;
          return v2;
        }

        v43 = -2;
      }

      else
      {
        v43 = id_for_field_locked;
      }
    }

    if (*(v9 + 34))
    {
      v59 = *(v9 + 272);
      if (!v59)
      {
        *(*(v2 + 16) + 272) = malloc_type_calloc(1uLL, 8 * *(v9 + 40), 0x100004000313F17uLL);
        *buf = 0;
        v60 = strtod(**(*(v2 + 16) + 168), buf);
        v61 = *(v2 + 16);
        **(v61 + 272) = v60;
        v62 = strtod(*(*(v61 + 168) + 8), buf);
        v63 = *(v2 + 16);
        *(*(v63 + 272) + 8) = v62;
        v59 = *(v63 + 272);
      }

      v57 = CFDateCreate(kCIQueryZoneAllocator, *v59);
      v58 = CFDateCreate(kCIQueryZoneAllocator, *(*(*(v2 + 16) + 272) + 8));
    }

    else
    {
      v57 = copyName(**(v9 + 168));
      v58 = copyName(*(*(*(v2 + 16) + 168) + 8));
    }

    v64 = v58;
    if (dword_1EBF46AD0 >= 5)
    {
      v140 = v3;
      v141 = *__error();
      v142 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v57;
        v177 = 2080;
        v178 = v41;
        v179 = 2112;
        v180 = *&v64;
        _os_log_impl(&dword_1C278D000, v142, OS_LOG_TYPE_DEFAULT, "Range query: %@ < %s < %@", buf, 0x20u);
      }

      *__error() = v141;
      v3 = v140;
    }

    *(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56)) = ContentIndexQueryNodeForRange(v57, v64, v43, 1, 1);
    v65 = *(v3 + 56);
    v66 = *v65;
    *(*(*(*(*(v3 + 32) + 8) + 24) + 8 * *v65) + 12) = *(*(v2 + 16) + 52);
    *v65 = v66 + 1;
    CFRelease(v57);
    v67 = v64;
LABEL_193:
    CFRelease(v67);
    return v2;
  }

  if ((v11 - 13) < 2)
  {
    v12 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), *v9);
    v163 = v2;
    v13 = *(v2 + 16);
    v14 = *(v13 + 40);
    v15 = (v14 << 6) | 0x28;
    if (v14 <= 0x7FF && v15 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_14063;
    }

    v165 = v3;
    v16 = *(v13 + 168);
    v17 = &qword_1EDD81000;
    v18 = malloc_type_zone_calloc(queryZone, 1uLL, v15, 0x5BAF1CEAuLL);
    if (!v18)
    {
      _log_fault_for_malloc_failure();
    }

    *(v18 + 4) = 0x400000;
    if (v14)
    {
      v19 = 0;
      v20 = 1;
      *v18 = 1;
      v18[4] = v18 + 5;
      if (v12 >= 0x80)
      {
        v20 = 2;
      }

      v21 = 4;
      if (v12 >> 28)
      {
        v21 = 5;
      }

      if (v12 >= 0x4000)
      {
        v20 = 3;
      }

      if (v12 >> 21)
      {
        v20 = v21;
      }

      v168 = v20;
      v22 = v14 << 6;
      while (1)
      {
        v23 = v18[4];
        v24 = *v16;
        v25 = strlen(*v16);
        v26 = malloc_type_zone_malloc(v17[58], v25 + v168 + 4, 0xA4971684uLL);
        if (!v26)
        {
          _log_fault_for_malloc_failure();
        }

        if (v12 >= 2)
        {
          break;
        }

        memcpy(v26, v24, v25);
        v36 = v12;
LABEL_49:
        v26[v25] = 0;
        v40 = v23 + v19;
        *v40 = v26;
        *(v40 + 8) = 0;
        *(v40 + 16) = 256;
        *(v40 + 20) = v36;
        *(v40 + 24) = 8;
        *(v40 + 32) = 0u;
        *(v40 + 48) = 0u;
        ++*(v18 + 6);
        v19 += 64;
        ++v16;
        if (v22 == v19)
        {
          goto LABEL_70;
        }
      }

      *v26 = 513;
      if (v12 >> 28)
      {
        v27 = 28;
        v28 = (v12 >> 7) | 0x80;
        v26[2] = v12 | 0x80;
        v29 = 21;
        v30 = 14;
        v31 = 3;
        v32 = 4;
        v33 = 5;
        v34 = 6;
        v35 = 7;
      }

      else
      {
        if (!(v12 >> 21))
        {
          if (!(v12 >> 14))
          {
            if (v12 < 0x80)
            {
              v34 = 2;
              LOBYTE(v37) = v12;
              v35 = 3;
LABEL_48:
              v26[v34] = v37;
              memcpy(&v26[v35], v24, v25);
              v25 += v35;
              v36 = -1;
              v17 = &qword_1EDD81000;
              goto LABEL_49;
            }

            LOBYTE(v37) = v12 >> 7;
            LOBYTE(v39) = v12 | 0x80;
            v33 = 2;
            v34 = 3;
            v35 = 4;
LABEL_47:
            v26[v33] = v39;
            goto LABEL_48;
          }

          v27 = 14;
          LOBYTE(v39) = (v12 >> 7) | 0x80;
          LOBYTE(v38) = v12 | 0x80;
          v32 = 2;
          v33 = 3;
          v34 = 4;
          v35 = 5;
LABEL_46:
          v26[v32] = v38;
          v37 = v12 >> v27;
          goto LABEL_47;
        }

        v27 = 21;
        v29 = 14;
        v30 = 7;
        v28 = v12 | 0x80;
        v31 = 2;
        v32 = 3;
        v33 = 4;
        v34 = 5;
        v35 = 6;
      }

      v26[v31] = v28;
      v38 = (v12 >> v30) | 0xFFFFFF80;
      v39 = (v12 >> v29) | 0xFFFFFF80;
      goto LABEL_46;
    }

LABEL_70:
    v2 = v163;
    *(*(*(*(v165 + 32) + 8) + 24) + 8 * **(v165 + 56)) = v18;
    v47 = *(*(*(v165 + 32) + 8) + 24);
    v48 = *(v165 + 56);
LABEL_71:
    v49 = *v48;
    *(*(v47 + 8 * *v48) + 12) = *(*(v2 + 16) + 52);
    *v48 = v49 + 1;
    return v2;
  }

  if (v11 != 15)
  {
    if (everythingQuery(v9))
    {
      v50 = *__error();
      v51 = _SILogForLogForCategory(1);
      v52 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v51, v52))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v51, v52, "Found *=* query", buf, 2u);
      }

      *__error() = v50;
      return v2;
    }

    v53 = *v9;
    if (**v9 == 42 && !v53[1])
    {
      v54 = 1;
    }

    else if ((v10 & 0x400) != 0)
    {
      v54 = 0;
    }

    else
    {
      if ((v10 & 0x40000) != 0)
      {
        NodeForOidPath = ContentIndexQueryNodeForOidPath(*(v9 + 288), *(v9 + 40), (v10 & 0x80000) == 0);
        v69 = *(*(*(v3 + 32) + 8) + 24);
        v70 = *(v3 + 56);
        v71 = (*v70)++;
        *(v69 + 8 * v71) = NodeForOidPath;
        *(*(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56) - 8) + 12) = *(*(v2 + 16) + 52);
        return v2;
      }

      v54 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), v53);
      if (v54 == -2)
      {
        goto LABEL_103;
      }
    }

    String = copyQueryString(v2);
    if (!String)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v147 = *__error();
        v148 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
        {
          v149 = *(v2 + 16);
          v150 = *v149;
          v151 = v149[9];
          *buf = 136315394;
          *&buf[4] = v150;
          v177 = 2080;
          v178 = v151;
          _os_log_impl(&dword_1C278D000, v148, OS_LOG_TYPE_DEFAULT, "No string for %s = %s", buf, 0x16u);
        }

        *__error() = v147;
      }

LABEL_103:
      v46 = *(*(v2 + 16) + 24);
      goto LABEL_104;
    }

    v73 = String;
    Current = CFAbsoluteTimeGetCurrent();
    v75 = *(v2 + 16);
    v76 = *(v75 + 24);
    if (v76 <= 4)
    {
      if (v76 > 2)
      {
        if (v76 != 3)
        {
          v79 = v73;
          v80 = 0;
          v81 = v54;
          v82 = 1;
LABEL_139:
          v93 = 0;
          goto LABEL_140;
        }

        v79 = 0;
        v80 = v73;
        v81 = v54;
        v82 = 0;
LABEL_135:
        v93 = 1;
LABEL_140:
        NodeForRange = ContentIndexQueryNodeForRange(v79, v80, v81, v82, v93);
        v95 = *(*(*(v3 + 32) + 8) + 24);
        v96 = *(v3 + 56);
        v97 = (*v96)++;
        *(v95 + 8 * v97) = NodeForRange;
        *(*(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56) - 8) + 12) = *(*(v2 + 16) + 52);
LABEL_191:
        if (dword_1EBF46AD0 >= 5)
        {
          v143 = *__error();
          v144 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            v145 = **(v2 + 16);
            v146 = CFAbsoluteTimeGetCurrent();
            *buf = 136315650;
            *&buf[4] = v145;
            v177 = 2112;
            v178 = v73;
            v179 = 2048;
            v180 = v146 - Current;
            _os_log_impl(&dword_1C278D000, v144, OS_LOG_TYPE_DEFAULT, "Matched factor %s = %@ in %f seconds", buf, 0x20u);
          }

          *__error() = v143;
        }

        v67 = v73;
        goto LABEL_193;
      }

      if (v76 != 1)
      {
        if (v76 != 2)
        {
LABEL_223:
          v159 = __si_assert_copy_extra_661(*(*(v3 + 80) + 32));
          v160 = v159;
          v161 = "";
          if (v159)
          {
            v161 = v159;
          }

          __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected op %d", "SIQueryC.c", 5868, "0", v161, *(*(v2 + 16) + 24));
          free(v160);
          if (__valid_fs(*(*(v3 + 80) + 32)))
          {
            v162 = 2989;
          }

          else
          {
            v162 = 3072;
          }

          *v162 = -559038737;
          abort();
        }

LABEL_115:
        **(v3 + 72) = 1;
      }
    }

    else
    {
      if (v76 > 6)
      {
        switch(v76)
        {
          case 7:
            v79 = 0;
            v80 = v73;
            break;
          case 8:
            v79 = v73;
            v80 = 0;
            break;
          case 15:
            goto LABEL_191;
          default:
            goto LABEL_223;
        }

        v81 = v54;
        v82 = 0;
        goto LABEL_139;
      }

      if (v76 != 5)
      {
        goto LABEL_115;
      }
    }

    v83 = *(v75 + 32);
    v84 = (v83 >> 4) & 1;
    if ((v83 & 0x800000) != 0)
    {
      v84 = (v83 >> 4) & 1 | ((*(v75 + 28) & 0x7F) << 18) | 0x10000;
    }

    if (v54 <= 1)
    {
      if (CFEqual(v73, @"*"))
      {
        v85 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), "_kMDItemTextContentIndexExists");
        if (v85 != -2)
        {
          v98 = v85;
          *buf = 1;
          v99 = CFNumberCreate(kCIQueryZoneAllocator, kCFNumberSInt32Type, buf);
          if (v99)
          {
            v100 = v99;
            v101 = ContentIndexQueryNodeForRange(v99, v99, v98, 1, 1);
            v102 = *(*(*(v3 + 32) + 8) + 24);
            v103 = *(v3 + 56);
            v104 = (*v103)++;
            *(v102 + 8 * v104) = v101;
            *(*(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56) - 8) + 12) = *(*(v2 + 16) + 52);
            CFRelease(v100);
          }

          goto LABEL_191;
        }
      }
    }

    v86 = *(v3 + 80);
    if (v54 == *(v86 + 2008))
    {
      v79 = v73;
      v80 = v73;
      v81 = v54;
      v82 = 1;
      goto LABEL_135;
    }

    v87 = (v83 >> 1) & 0x20 | (v83 >> 4) & 2 | (((v83 >> 1) & 1) << 15) & 0xFDFFFFFF | (((v83 >> 15) & 1) << 25) | (v83 >> 1) & 0x4000000 | (v83 >> 11) & 8 | v84;
    v88 = *(v2 + 16);
    if (v88 && !v54 && (v89 = *(v88 + 32) & 0x6000000000) != 0)
    {
      if (v89 == 0x4000000000)
      {
        v90 = 4096;
      }

      else
      {
        v90 = 0x2000;
      }

      v172 = 0;
      v173 = &v172;
      if (v89 == 0x6000000000)
      {
        v90 = 12288;
      }

      v87 |= v90;
      v174 = 0x2000000000;
      v175 = 0;
    }

    else
    {
      v172 = 0;
      v173 = &v172;
      v174 = 0x2000000000;
      v175 = 0;
      if (v54 >= 6)
      {
        v91 = *(v86 + 1192);
        v92 = *v88;
        __nel_4[0] = MEMORY[0x1E69E9820];
        __nel_4[1] = 0x40000000;
        __nel_4[2] = __preIterateQueryForIndex_block_invoke_173;
        __nel_4[3] = &unk_1E8196400;
        __nel_4[4] = &v172;
        __nel_4[5] = v86;
        v171 = *(v3 + 105);
        db_apply_for_field_ids_matching_name_locked(v91, v92, __nel_4);
        goto LABEL_145;
      }

      if (v54)
      {
LABEL_145:
        v106 = *(v3 + 96);
        if (v106)
        {
          v107 = *(v106 + 144);
        }

        else
        {
          v107 = 0;
        }

        _CIQueryNodeForString(*(v3 + 88), v73, v54, v87, v107, (*(*(v3 + 80) + 6584) >> 25) & 3, *(v173 + 24), *(*(v2 + 16) + 60));
        *(v108 + 12) = *(*(v2 + 16) + 52);
        v109 = *(*(*(v3 + 32) + 8) + 24);
        v110 = *(v3 + 56);
        v111 = (*v110)++;
        *(v109 + 8 * v111) = v108;
        if (!v54 || !v108 || *(*(v3 + 88) + 4) < 84)
        {
          goto LABEL_190;
        }

        if ((*(*(v2 + 16) + 35) & 6) != 0)
        {
          *(v108 + 8) = 3;
        }

        __nel = 0;
        v166 = v3;
        v167 = v108;
        matched = ContentIndexMatchLocalizedFields(v108, *(*(v3 + 80) + 6648), &__nel);
        v113 = __nel;
        qsort_b(matched, __nel, 4uLL, &__block_literal_global_180);
        if (v113)
        {
          v164 = v2;
          db_clone_query_node(v2);
          v115 = v114;
          v116 = malloc_type_calloc(4uLL, v113, 0x3494CDF9uLL);
          if (!convert_value_to_type(0xBu, v115[2]))
          {
            v123 = 0;
            v124 = 0;
            do
            {
              v125 = *(matched + v123);
              if (v123 >= (v113 - 1) || (v126 = v123 + 1, v125 != *(matched + v123 + 1)))
              {
                bzero(buf, 0x400uLL);
                RawLocalizedUniquedField = getRawLocalizedUniquedField(*(v166[10] + 1192), v125, buf, 1);
                if (RawLocalizedUniquedField)
                {
                  v129 = RawLocalizedUniquedField;
                  if (do_compare(v128))
                  {
                    field_name_for_id_locked = db_get_field_name_for_id_locked(*(v166[10] + 1192), v129[1]);
                    if (field_name_for_id_locked)
                    {
                      v116[v124] = db_get_id_for_field_locked(*(v166[10] + 1192), field_name_for_id_locked) | ((*(v129 + 1) & 0x100) << 23);
                      *(matched + v124++) = *(matched + v123);
                    }
                  }

                  if (v129 != buf)
                  {
                    free(v129);
                  }
                }

                v126 = v123 + 1;
              }

              v123 = v126;
            }

            while (v126 < v113);
            db_free_query_node(v115);
            if (v124)
            {
              NodeForLocalizedFields = ContentIndexQueryNodeForLocalizedFields(v167, v116, matched, v124);
              if (NodeForLocalizedFields)
              {
                v132 = *(v164 + 16);
                if (*(v132 + 24) == 5)
                {
                  *(NodeForLocalizedFields + 2) = 3;
                }

                *(v132 + 32) |= 0x400000uLL;
                v133 = *(*(v166[4] + 8) + 24);
                v134 = v166[7];
                v135 = (*v134)++;
                *(v133 + 8 * v135) = NodeForLocalizedFields;
              }
            }

            v2 = v164;
            goto LABEL_189;
          }
        }

        else
        {
          v115 = 0;
          v116 = 0;
        }

        db_free_query_node(v115);
LABEL_189:
        free(v116);
        free(matched);
LABEL_190:
        _Block_object_dispose(&v172, 8);
        goto LABEL_191;
      }
    }

    v105 = *v88;
    if (!strncmp(*v88, "_kMDItemOCRContent", 0x12uLL))
    {
      if (!strncmp(v105 + 18, "Title", 5uLL))
      {
        v87 |= 0x8000000u;
      }

      else if (!strncmp(v105 + 18, "Level1", 6uLL))
      {
        v87 |= 0x10000000u;
      }

      else if (!strncmp(v105 + 18, "Level2", 6uLL))
      {
        v87 |= 0x20000000u;
      }

      else
      {
        if (strncmp(v105 + 18, "Level3", 6uLL))
        {
          if (dword_1EBF46AD0 >= 5)
          {
            v156 = *__error();
            v157 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
            {
              v158 = **(v2 + 16);
              *buf = 136315138;
              *&buf[4] = v158;
              _os_log_impl(&dword_1C278D000, v157, OS_LOG_TYPE_DEFAULT, "Invalid property name %s", buf, 0xCu);
            }

            *__error() = v156;
            v88 = *(v2 + 16);
          }

          v119 = *(v88 + 24) - 5;
          if (v119 > 9)
          {
            v120 = 16;
          }

          else
          {
            v120 = *&asc_1C2BFFC88[2 * v119];
          }

          *(v2 + 48) = v120;
          goto LABEL_190;
        }

        v87 |= 0x40000000u;
      }
    }

    goto LABEL_145;
  }

  v44 = *v9;
  if (dword_1EBF46AD0 >= 5)
  {
    v138 = *__error();
    v139 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "ANN query.", buf, 2u);
    }

    *__error() = v138;
    v9 = *(v2 + 16);
  }

  if (*(v9 + 40) == 5)
  {
    if (**v9 == 42 && !*(*v9 + 1) || (v45 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), v44), v9 = *(v2 + 16), v45 != -2) || *(v9 + 52) != 0.0 || *(v9 + 56) != 0.0)
    {
      v55 = db_get_id_for_field_locked(*(*(v3 + 80) + 1192), *v9);
      v56 = *(v2 + 16);
      *(*(*(*(v3 + 32) + 8) + 24) + 8 * **(v3 + 56)) = ContentIndexQueryNodeForVector(v55, *(v56 + 296), *(v56 + 60) & 3, (*(v56 + 60) >> 2) & 3, *(v56 + 60) >> 25, (*(v56 + 60) >> 4) & 0xFFFFF, HIBYTE(*(v56 + 60)) & 1, *(v56 + 64));
      v47 = *(*(*(v3 + 32) + 8) + 24);
      v48 = *(v3 + 56);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  return v2;
}

BOOL expensiveNodeCheck(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  if (!*v1)
  {
    return 0;
  }

  if (v1[1] == 42)
  {
    goto LABEL_6;
  }

  if (*v1 != 42)
  {
    return 0;
  }

  if (v1[1])
  {
LABEL_6:
    if (v1[2])
    {
      return 0;
    }
  }

  v3 = *a1;
  return **a1 == 42 && !v3[1] || !strcmp(*a1, "kMDItemAuthors") || !strcmp(v3, "kMDItemRecipients") || strcmp(v3, "kMDItemSubject") == 0;
}

char *__preIterateQueryForIndex_block_invoke_173(uint64_t a1, uint64_t a2)
{
  result = db_get_field_name_for_id_locked(*(*(a1 + 40) + 1192), a2);
  if (result)
  {
    if ((*(result - 2) | 4) == 0xF)
    {
      *(*(*(a1 + 32) + 8) + 24) |= *(a1 + 48) & *(result - 1);
    }
  }

  return result;
}

atomic_uint *__evaluateFuzzyQueryForIndex_block_invoke_184(uint64_t a1, uint64_t a2, atomic_uint *a3, atomic_uint *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48) & 0xFFF7;
  if (v7 == 2)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v37 = *__error();
      v38 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "And.", buf, 2u);
      }

      *__error() = v37;
      if (!a3)
      {
        goto LABEL_71;
      }
    }

    else if (!a3)
    {
      goto LABEL_71;
    }

    if (a4)
    {
      v11 = *(a2 + 8);
      v12 = *(v11 + 48);
      if (v12 == 4 && (v13 = *(v11 + 16)) != 0)
      {
        v14 = (*(v13 + 24) < 0xFu) & (0x5060u >> *(v13 + 24));
      }

      else
      {
        v14 = 0;
      }

      v15 = (v12 >> 3) & 1;
      if (v14 != v15)
      {
        v16 = *(*a2 + 48);
        if (v16 == 4)
        {
          v17 = *(*a2 + 16);
          if (v17)
          {
            LODWORD(v17) = (*(v17 + 24) < 0xFu) & (0x5060u >> *(v17 + 24));
          }
        }

        else
        {
          LODWORD(v17) = 0;
        }

        if (v17 != ((v16 >> 3) & 1))
        {
          v34 = ContentIndexDocSetNotLazy(a3, *(a2 + 72));
          v35 = ContentIndexDocSetNotLazy(a4, *(a2 + 72));
          *buf = v34;
          v50 = v35;
          v18 = ContentIndexDocSetIntersectionLazy(2, buf, *(a2 + 72));
          ContentIndexDocSetDispose(a3);
          ContentIndexDocSetDispose(a4);
          ContentIndexDocSetDispose(v34);
          v36 = v35;
          goto LABEL_66;
        }
      }

      if (v12 == 4)
      {
        v26 = *(v11 + 16);
        if (v26)
        {
          LODWORD(v26) = (*(v26 + 24) < 0xFu) & (0x5060u >> *(v26 + 24));
        }
      }

      else
      {
        LODWORD(v26) = 0;
      }

      v27 = *(*a2 + 48);
      if (v27 == 4)
      {
        v28 = *(*a2 + 16);
        if (v28)
        {
          LODWORD(v28) = (*(v28 + 24) < 0xFu) & (0x5060u >> *(v28 + 24));
        }
      }

      else
      {
        LODWORD(v28) = 0;
      }

      v29 = (v27 >> 3) & 1;
      if (v26 == v15)
      {
        if (v28 == v29)
        {
          *buf = a3;
          v50 = a4;
          v30 = ContentIndexDocSetIntersectionLazy(2, buf, *(a2 + 72));
LABEL_65:
          v18 = v30;
          ContentIndexDocSetDispose(a3);
          v36 = a4;
          goto LABEL_66;
        }

        v31 = *(a2 + 72);
        v32 = a4;
        v33 = a3;
      }

      else
      {
        if (v28 != v29)
        {
          v42 = __si_assert_copy_extra_661(-1);
          v43 = v42;
          v44 = "";
          if (v42)
          {
            v44 = v42;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 6217, "!isNegativeQuery(node->lchild)", v44);
          free(v43);
          if (__valid_fs(-1))
          {
            v45 = 2989;
          }

          else
          {
            v45 = 3072;
          }

          *v45 = -559038737;
          abort();
        }

        v31 = *(a2 + 72);
        v32 = a3;
        v33 = a4;
      }

      v30 = ContentIndexDocSetExceptLazy(v32, v33, v31);
      goto LABEL_65;
    }

LABEL_71:
    ContentIndexDocSetDispose(a3);
    ContentIndexDocSetDispose(a4);
    if ((*(a2 + 48) & 8) != 0)
    {
      return ContentIndexDocSetCreateAllWithPrototype(*(a1 + 32), a2);
    }

    else
    {
      return 0;
    }
  }

  if (v7 != 1)
  {
    v46 = __si_assert_copy_extra_661(-1);
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SIQueryC.c", 6242, v48);
    free(v47);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "OR.", buf, 2u);
    }

    *__error() = v39;
    if (!a3)
    {
      goto LABEL_77;
    }
  }

  else if (!a3)
  {
    goto LABEL_77;
  }

  if (!a4)
  {
LABEL_77:
    if (a4)
    {
      return a4;
    }

    else
    {
      return a3;
    }
  }

  v8 = *(*a2 + 48);
  if (v8 == 4)
  {
    v9 = *(*a2 + 16);
    if (v9)
    {
      LODWORD(v9) = (*(v9 + 24) < 0xFu) & (0x5060u >> *(v9 + 24));
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v18 = a3;
  if (v9 != ((v8 >> 3) & 1))
  {
    v18 = ContentIndexDocSetNotLazy(a3, *(a2 + 72));
  }

  v19 = *(a2 + 8);
  v20 = *(v19 + 48);
  if (v20 == 4)
  {
    v21 = *(v19 + 16);
    if (v21)
    {
      LODWORD(v21) = (*(v21 + 24) < 0xFu) & (0x5060u >> *(v21 + 24));
    }
  }

  else
  {
    LODWORD(v21) = 0;
  }

  v22 = a4;
  if (v21 != ((v20 >> 3) & 1))
  {
    v22 = ContentIndexDocSetNotLazy(a4, *(a2 + 72));
  }

  if (v18 != a3)
  {
    ContentIndexDocSetDispose(a3);
  }

  if (v22 != a4)
  {
    ContentIndexDocSetDispose(a4);
  }

  if (v18)
  {
    if (v18[12] == 1 && (*(a2 + 48) & 8) != 0)
    {
      v23 = *(*a2 + 16);
      if (v23)
      {
        if ((*(v23 + 33) & 8) != 0)
        {
          ContentIndexDocSetDispose(v18);
          v18 = 0;
        }
      }
    }
  }

  if (v22)
  {
    if (v22[12] != 1 || (*(a2 + 48) & 8) == 0 || (v24 = *(*(a2 + 8) + 16)) == 0 || (*(v24 + 33) & 8) == 0)
    {
      if (!v18)
      {
        return v22;
      }

      *buf = v18;
      v50 = v22;
      v25 = ContentIndexDocSetUnionLazy(2, buf, *(a2 + 72));
      ContentIndexDocSetDispose(v18);
      ContentIndexDocSetDispose(v22);
      return v25;
    }

    v36 = v22;
LABEL_66:
    ContentIndexDocSetDispose(v36);
  }

  return v18;
}

_DWORD *fsi_create_walk(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v60 = *MEMORY[0x1E69E9840];
  v9 = malloc_type_calloc(1uLL, 0x4620uLL, 0x10F0040DF486990uLL);
  atomic_fetch_add_explicit(gIteratorCount, 1u, memory_order_relaxed);
  bzero(v9, 0x4620uLL);
  __strlcpy_chk((v9 + 1), v8, 1024, 1024);
  bzero(&v59, 0x878uLL);
  if (!statfs(v9 + 4, &v59))
  {
    v55 = 0;
    *v54 = xmmword_1C2BFFCB4;
    v58 = 0;
    v57 = 0u;
    v56 = 0u;
    if (!getattrlist(v59.f_mntonname, v54, &v56, 0x24uLL, 0x200u))
    {
      v10 = DWORD1(v57);
      v11 = DWORD1(v56);
      v12 = BYTE8(v56) & BYTE8(v57);
      *(v9 + 3408) = BYTE8(v56) & BYTE8(v57) & 1;
      *(v9 + 3409) = (v12 & 8) != 0;
      v13 = ((v11 & v10) >> 14) & 1;
      if (!(*v59.f_fstypename ^ 0x73666361 | v59.f_fstypename[4]))
      {
        LOBYTE(v13) = 1;
      }

      *(v9 + 3410) = v13;
    }
  }

  *v9 = 0;
  v52 = xmmword_1C2BFFC9C;
  v53 = 0;
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = &v52;
  }

  if (!v4)
  {
    v4 = fsi_attr_size(v14);
  }

  *(v9 + 1211) = malloc_type_malloc(0x1000uLL, 0x2004093837F09uLL);
  v15 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  v16 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040023F4036uLL);
  *v16 = (((v4 << 8) + 4135) & 0xFFFFF000) - 32;
  *v15 = v16;
  *(v9 + 1210) = v15;
  v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040023F4036uLL);
  *v17 = (((v4 << 8) + 4127) & 0xFFFFF000) - 32;
  *(v9 + 1205) = v17;
  v9[2424] = 0;
  v9[2426] = -1;
  v18 = *v14;
  *(v9 + 131) = *(v14 + 2);
  *(v9 + 258) = v18;
  *(v9 + 132) = v4;
  v49 = 5;
  v50 = xmmword_1C2BFA640;
  v51 = 0;
  fsi_attr_mapping_descriptor(v14, &v49, v9 + 1128);
  bzero(&v59, 0x8A8uLL);
  v46 = 5;
  v47 = xmmword_1C2BFA650;
  v48 = 0;
  fsi_attr_mapping_descriptor(v14, &v46, &v59);
  f_bavail = v59.f_bavail;
  v20 = *&v59.f_mntonname[208];
  *(v9 + 137) = v59.f_bavail;
  *(v9 + 135) = v20;
  v21 = *&v59.f_mntonname[216];
  v22 = *&v59.f_mntonname[224];
  *(v9 + 136) = *&v59.f_mntonname[216];
  *(v9 + 139) = v22;
  v23 = *&v59.f_mntonname[232];
  *(v9 + 140) = *&v59.f_mntonname[232];
  v9[257] = v2 & 0xFFFFFFF9 | 4;
  v9[2427] = 0;
  v9[2428] = (~v2 & 0x18) == 0;
  if ((*(v14 + 1) & 0x80000000) == 0)
  {
    __assert_rtn("initWalk", "fsi.c", 894, "attrList->commonattr & ATTR_CMN_RETURNED_ATTRS");
  }

  if (!v20)
  {
    __assert_rtn("initWalk", "fsi.c", 895, "iterator->offsetAttrName");
  }

  if (!f_bavail)
  {
    __assert_rtn("initWalk", "fsi.c", 896, "iterator->offsetAttrObjType");
  }

  if (!v21)
  {
    __assert_rtn("initWalk", "fsi.c", 897, "iterator->offsetAttrDevId");
  }

  if (!v22)
  {
    __assert_rtn("initWalk", "fsi.c", 898, "iterator->offsetAttrFileId");
  }

  if (!v23)
  {
    __assert_rtn("initWalk", "fsi.c", 899, "iterator->offsetAttrMountStatus");
  }

  v9[2429] = ((v2 >> 5) & 1) == 0;
  v9[2430] = 0;
  *(v9 + 1064) = v2 & 1;
  v24 = v9 + 2154;
  *(v9 + 8616) = 0;
  *(v9 + 420) = v9 + 2154;
  *(v9 + 422) = v9 + 2154;
  bzero(&v56, 0x400uLL);
  v25 = v8;
  if (*v8 == 46)
  {
    v25 = v8;
    do
    {
      if (v25[1] != 47)
      {
        break;
      }

      v26 = *(v25 + 2);
      v25 += 2;
    }

    while (v26 == 46);
  }

  if (__strlcpy_chk((v9 + 2154), v25, 1024, 1024) > 0x3FF)
  {
    v30 = __error();
    v31 = 63;
LABEL_35:
    *v30 = v31;
LABEL_56:
    fsi_close(v9);
    return 0;
  }

  v27 = strrchr(v9 + 8616, 47);
  if (v27 && ((v28 = v27, *v24 != 47) || *(v9 + 8617)))
  {
    __strlcpy_chk(&v56, v27 + 1, 1024, 1024);
    v29 = v28 - v24;
    if (v28 == v24)
    {
      *(v9 + 8617) = 0;
      v29 = 1;
    }

    else
    {
      *v28 = 0;
    }
  }

  else
  {
    __strlcpy_chk(&v56, v9 + 8616, 1024, 1024);
    v29 = 0;
    *v24 = 0;
  }

  *(v9 + 419) = v29;
  *(v9 + 1217) = 0;
  if (!(*(v9 + 137) | *(v9 + 136) | *(v9 + 139)))
  {
    v30 = __error();
    v31 = 22;
    goto LABEL_35;
  }

  v32 = malloc_type_malloc(*(v9 + 132) + 4, 0x100004052888210uLL);
  if (getattrlist(v8, v9 + 258, v32, v4, 0x208u))
  {
LABEL_32:
    v33 = *__error();
LABEL_33:
    *__error() = v33;
LABEL_55:
    free(v32);
    goto LABEL_56;
  }

  v9[2431] = *(v32 + *(v9 + 136));
  v9[2432] = *(v32 + *(v9 + 137));
  v34 = *(v9 + 135);
  if (v34)
  {
    v35 = *v32;
    if (v34 + 8 <= v35)
    {
      v36 = v32 + v34;
      v37 = v32 + v34 + *(v32 + v34);
      if (&v37[*(v32 + v34 + 4)] <= v32 + v35)
      {
        v38 = *v8;
        if ((v38 == 46 || v38 == 47) && !v8[1])
        {
          strncpy(v37, v8, 2uLL);
          *(v36 + 1) = 2;
        }
      }
    }
  }

  if (v9[2427])
  {
    v39 = *(v32 + *(v9 + 139));
  }

  else
  {
    bzero(v54, 0x400uLL);
    __strlcpy_chk(v54, v8, 1024, 1024);
    if ((*v8 != 46 || v8[1]) && __strlcat_chk() > 0x3FF)
    {
      v33 = 63;
      goto LABEL_33;
    }

    atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
    v40 = open(v54, 32772);
    if (v40 > 0x7FF)
    {
      if ((v40 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v40 == -1)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v9[v40 + 2439] = 957;
      ++v9[2438];
    }

    v39 = v40;
  }

  if (pushStackEntry(v9, v39))
  {
    goto LABEL_55;
  }

  v42 = *(v9 + 421);
  v43 = *(v9 + 422);
  if (*(v9 + 1208))
  {
    v44 = *(v9 + 1209);
    if (v44)
    {
      v45 = (*(v44 + 16))(v44, v9);
    }

    else
    {
      v45 = 1;
    }
  }

  else
  {
    v45 = 0;
  }

  addIntoChildList(v9, v32, v42, v43, v45);
  free(v32);
  return v9;
}

void fsi_close(char *a1)
{
  if (!*a1)
  {
    if (!*(a1 + 2427))
    {
      v11 = *(a1 + 2424);
      if (v11)
      {
        v12 = a1 + 9756;
        do
        {
          v13 = *(*(a1 + 1211) + 8 * v11 - 8);
          if (!v13)
          {
            break;
          }

          v14 = *(v13 + 48);
          if (v14 != -1)
          {
            if ((v14 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
              if (v14 <= 2047)
              {
                v15 = *(a1 + 2438);
                *(a1 + 2438) = v15 - 1;
                v16 = *&v12[4 * (v14 & 0x7FFFFFFF)];
                if (v16 < 0 || v15 <= 0)
                {
                  __assert_rtn("internalClose", "fsi.c", 1216, "iterator->fdArray[(int)tos->fileReference] >= 0 && iterator->fdCount >= 0");
                }

                if (v16)
                {
                  *&v12[4 * (v14 & 0x7FFFFFFF)] = -v16;
                }
              }
            }

            close(v14);
            v11 = *(a1 + 2424);
          }

          *(a1 + 2424) = --v11;
        }

        while (v11);
      }
    }

    free(*(a1 + 1211));
    free(*(a1 + 1206));
    *(a1 + 1206) = 0;
    v2 = *(a1 + 2426);
    if ((v2 & 0x80000000) == 0)
    {
      atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
      if (v2 <= 0x7FF)
      {
        v3 = *(a1 + 2438);
        *(a1 + 2438) = v3 - 1;
        v4 = *&a1[4 * v2 + 9756];
        if (v4 < 0 || v3 <= 0)
        {
          __assert_rtn("internalClose", "fsi.c", 1227, "iterator->fdArray[iterator->resumeFd] >= 0 && iterator->fdCount >= 0");
        }

        if (v4)
        {
          *&a1[4 * v2 + 9756] = -v4;
        }
      }

      close(v2);
    }

    v5 = *(a1 + 1210);
    if (v5)
    {
      SQueueDestroy(*v5);
      free(v5);
    }

    v6 = *(a1 + 1205);
    if (v6)
    {
      SQueueDestroy(v6);
    }
  }

  free(*(a1 + 430));
  free(*(a1 + 434));
  free(*(a1 + 435));
  v7 = *(a1 + 1076);
  if (v7)
  {
    fsi_close(v7);
  }

  v8 = *(a1 + 134);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 134) = 0;
  }

  atomic_fetch_add_explicit(gIteratorCount, 0xFFFFFFFF, memory_order_relaxed);
  v9 = *(a1 + 1208);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(a1 + 1209);
  if (v10)
  {
    _Block_release(v10);
  }

  free(a1);
}

unint64_t fsi_attr_size(_DWORD *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = attrTable_table;
  v4 = &attrTable_commonattr;
  v5 = 4;
  do
  {
    ++a1;
    if (v4 == &attrTable_dirattr)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    if (v4 == &attrTable_fileattr)
    {
      v1 = v5;
      v5 = v2;
    }

    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 6;
      do
      {
        if ((*a1 & v7) != 0)
        {
          v5 += *(v8 - 3);
        }

        v9 = *v8;
        v8 += 10;
        v7 = v9;
      }

      while (v9);
    }

    v10 = v3[1];
    ++v3;
    v4 = v10;
    v2 = v6;
  }

  while (v10);
  if (v5 <= v1)
  {
    return v1;
  }

  else
  {
    return v5;
  }
}

uint64_t fsi_attr_mapping_descriptor(_DWORD *a1, _DWORD *a2, char *a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  bzero(a3, 0x8A8uLL);
  v6 = a3 + 56;
  v7 = a3 + 136;
  v8 = a3 + 216;
  v9 = a3 + 296;
  v10 = a3 + 936;
  v11 = a3 + 1576;
  v26[1] = 0;
  v26[2] = 0;
  v26[0] = 0x800000005;
  *(a3 + 3) = fsi_attr_offset(v5, v26);
  v25[1] = 0;
  v25[2] = 0;
  v25[0] = 0x2000000000005;
  result = fsi_attr_offset(v5, v25);
  v13 = 0;
  v14 = 0;
  v15 = 4;
  *(a3 + 4) = result;
  v16 = attrTable_table;
  *(a3 + 40) = vdupq_n_s64(4uLL);
  v17 = &attrTable_commonattr;
  v18 = 4;
  do
  {
    v19 = v17 != &attrTable_dirattr;
    if (v17 == &attrTable_dirattr)
    {
      result = (a3 + 4);
      v14 = v18;
    }

    else
    {
      if (v17 != &attrTable_fileattr)
      {
        v19 = 0;
        goto LABEL_11;
      }

      result = (a3 + 12);
      v18 = v14;
    }

    *result = v13;
LABEL_11:
    ++v4;
    ++v5;
    v20 = *(v17 + 2);
    if (v20)
    {
      v21 = v17 + 3;
      do
      {
        result = *v5 & v20;
        if ((*v4 & v20) != 0)
        {
          v22 = *(v21 - 1) != *v21;
          if (result)
          {
            v23 = v18;
          }

          else
          {
            v23 = 0;
          }

          *v9 = v23;
          v9 += 8;
          *v10 = *(a3 + 5);
          v10 += 8;
          *v11 = *(v21 - 1);
          v11 += 8;
          *v6++ = v22;
          *v7++ = *(v21 + 3);
          *v8++ = *(v21 + 2);
          *(a3 + 5) += *(v21 - 1);
          if (v17 == &attrTable_dirattr)
          {
            ++*(a3 + 2);
          }

          ++v13;
          if (v19)
          {
            ++*(a3 + 4);
          }
        }

        if (result)
        {
          result = *(v21 - 1);
          v18 += result;
        }

        v20 = *(v21 + 6);
        v21 += 5;
      }

      while (v20);
      v15 = *(a3 + 6);
    }

    if (v18 > v15)
    {
      v15 = v18;
    }

    *(a3 + 6) = v15;
    v24 = v16[1];
    ++v16;
    v17 = v24;
  }

  while (v24);
  *a3 = v13;
  return result;
}

uint64_t pushStackEntry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9696) < 512)
  {
    v5 = *(a1 + 9680);
    v6 = SQueueOpenPushData(*v5, 0x448uLL);
    *v6 = 1092;
    bzero(v6 + 4, 0x444uLL);
    v7 = *v5;
    *(v7 + 6) = *(*v5 + 6) + 1092;
    *(*(v7 + 4) + 24) += 1092;
    *(v7 + 1) += 1092;
    *(v6 + 52) = a2;
    strcpy(v6 + 68, (a1 + 8616));
    *(v6 + 12) = v6 + 4;
    v8 = *(a1 + 9696);
    *(*(a1 + 9688) + 8 * v8) = v6 + 4;
    *(a1 + 9696) = v8 + 1;
    result = 0;
    if (*(a1 + 1080))
    {
      v9 = *(a1 + 3352);
      *(a1 + 9736) = v9;
      *(v6 + 60) = v9;
    }
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *addIntoChildList(uint64_t a1, unsigned int *a2, size_t a3, const void *a4, int a5)
{
  v9 = *(a1 + 9696);
  if (v9)
  {
    v10 = *(*(a1 + 9688) + 8 * v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  result = SStackPushData(*(a1 + 9680), *a2, a2);
  v12 = result;
  if (*(a1 + 9712) && !*(a1 + 1080))
  {
    result = SStackPushData(*(a1 + 9680), a3, a4);
  }

  v10[1] = result;
  if (a5)
  {
    v13 = v10[3];
    v14 = *(a1 + 9656);
    if (v13 >= v14)
    {
      v15 = 2 * v14;
      if (!v14)
      {
        v15 = 8;
      }

      *(a1 + 9656) = v15;
      result = malloc_type_realloc(*(a1 + 9648), 8 * v15, 0x80040B8603338uLL);
      *(a1 + 9648) = result;
      v13 = v10[3];
    }

    else
    {
      result = *(a1 + 9648);
    }

    result[v13] = v12;
    v10[3] = v13 + 1;
  }

  else if (!*v10)
  {
    *v10 = v12;
  }

  return result;
}

uint64_t fsi_attr_offset(_DWORD *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = attrTable_table;
  v4 = &attrTable_commonattr;
  v5 = 4;
  do
  {
    ++a2;
    ++a1;
    if (v4 == &attrTable_dirattr)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    if (v4 == &attrTable_fileattr)
    {
      v5 = v2;
    }

    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 6;
      do
      {
        if ((*a1 & v7) != 0)
        {
          if (v7 == *a2)
          {
            return v5;
          }

          v5 += *(v8 - 4);
        }

        v9 = *v8;
        v8 += 10;
        v7 = v9;
      }

      while (v9);
    }

    v10 = v3[1];
    ++v3;
    v4 = v10;
    v2 = v6;
  }

  while (v10);
  return 0;
}

uint64_t fsi_iterate_f(uint64_t a1, __int128 *a2)
{
  v2 = a1;
  v169 = *MEMORY[0x1E69E9840];
  v163 = 0u;
  v164 = 0u;
  *(a1 + 3404) = 0;
  v3 = *(a1 + 8608);
  if (v3)
  {
    *(v3 + 3404) = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = *v2;
  if (!*v2)
  {
    v7 = callBlock;
    v6 = v2;
    goto LABEL_35;
  }

  if (v5 == 1)
  {
    if (*(v2 + 1064) == 1 && !*(v2 + 1072))
    {
      *(v2 + 1072) = SIUINT64SetCreate(*MEMORY[0x1E695E480]);
    }

    v8 = CFAbsoluteTimeGetCurrent();
    while (1)
    {
      v167.d_ino = 0;
      if (searchfs((v2 + 4), (v2 + 3488), &v167.d_ino, 0x8000103u, *(v2 + 3424), (v2 + 3592)))
      {
        v9 = *__error();
        v10 = v9 == 35;
        if (v9 != 35 && v9 != 0)
        {
          *(v2 + 3424) &= ~1u;
          if (v9 != 35)
          {
            goto LABEL_377;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      if (v167.d_ino)
      {
        break;
      }

LABEL_29:
      *(v2 + 3424) &= ~1u;
      if (!v10)
      {
LABEL_377:
        v23 = 0;
        v22 = *(v2 + 3400);
LABEL_42:
        *(v2 + 3404) = v22;
        *(v2 + 3400) = 0;
        *__error() = v9;
        if (v9)
        {
          v26 = 1;
        }

        else
        {
          v26 = v23;
        }

        goto LABEL_366;
      }

LABEL_30:
      v19 = *(v2 + 3416);
      v20 = CFAbsoluteTimeGetCurrent();
      v21 = v2;
      if (v19 < v20 - v8)
      {
        do
        {
          *(v21 + 3400) = 1;
          v21 = *(v21 + 8608);
        }

        while (v21);
      }

      v22 = *(v2 + 3400);
      if (v22)
      {
        v23 = 0;
        goto LABEL_42;
      }
    }

    v12 = *(v2 + 3440);
    v13 = 1;
    while (1)
    {
      v14 = *(v2 + 1072);
      *(v2 + 1065) = v14 != 0;
      if (v14)
      {
        v15 = *(v12 + *(v2 + 1112));
        if (SIUINT64SetContainsValue(v14, v15))
        {
          goto LABEL_28;
        }

        v16 = *(v2 + 1072) != 0;
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }

      *(v2 + 1065) = v16;
      v17 = (*(a2 + 2))(a2, v2, v2 + 3344, *(v2 + 3384), v12);
      if (*(v2 + 1065) == 1)
      {
        SIValueSet<unsigned long long>::SIValueSetInsert((*(v2 + 1072) + 16), v15);
      }

      if (v17 == 1)
      {
        v22 = 0;
        v23 = -1;
        goto LABEL_42;
      }

LABEL_28:
      v12 = (v12 + *v12);
      if (v167.d_ino <= v13++)
      {
        goto LABEL_29;
      }
    }
  }

  if (v5 != 2)
  {
    v26 = 0xFFFFFFFFLL;
    goto LABEL_366;
  }

  *&v163 = Current;
  *(&v163 + 1) = callBlock;
  *&v164 = a2;
  *(&v164 + 1) = v2;
  v6 = *(v2 + 8608);
  a2 = &v163;
  v7 = hybridSearch;
LABEL_35:
  if (*(v6 + 1064) == 1 && !*(v6 + 1072))
  {
    *(v6 + 1072) = SIUINT64SetCreate(*MEMORY[0x1E695E480]);
  }

  v24 = *(v6 + 9696);
  if (v24)
  {
    v25 = *(*(v6 + 9688) + 8 * v24 - 8);
  }

  else
  {
    v25 = 0;
  }

  LODWORD(v27) = -1;
  if (*(v6 + 9708))
  {
    goto LABEL_47;
  }

  atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
  v135 = open(".", 32772);
  LODWORD(v27) = v135;
  if (v135 > 0x7FF)
  {
    if ((v135 & 0x80000000) != 0)
    {
      atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
      goto LABEL_358;
    }
  }

  else
  {
    *(v6 + 4 * v135 + 9756) = 1607;
    ++*(v6 + 9752);
  }

  if ((*(v6 + 9704) & 0x80000000) == 0 || v25 && (*(v25 + 48) & 0x80000000) == 0)
  {
    if (!MEMORY[0x1C6921200]())
    {
      v152 = *(v6 + 9704);
      if ((v152 & 0x80000000) == 0)
      {
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v152 <= 0x7FF)
        {
          v153 = *(v6 + 9752);
          *(v6 + 9752) = v153 - 1;
          v154 = *(v6 + 9756 + 4 * v152);
          if (v154 < 0 || v153 <= 0)
          {
            __assert_rtn("internalIterateWalk", "fsi.c", 1619, "iterator->fdArray[iterator->resumeFd] >= 0 && iterator->fdCount >= 0");
          }

          if (v154)
          {
            *(v6 + 9756 + 4 * v152) = -v154;
          }
        }
      }

      close(v152);
      *(v6 + 9704) = -1;
      goto LABEL_47;
    }

    v136 = *__error();
    atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
    if (v27 <= 2047)
    {
      v137 = *(v6 + 9752);
      *(v6 + 9752) = v137 - 1;
      v138 = *(v6 + 9756 + 4 * v27);
      if (v138 < 0 || v137 <= 0)
      {
        __assert_rtn("internalIterateWalk", "fsi.c", 1615, "iterator->fdArray[savedFd] >= 0 && iterator->fdCount >= 0");
      }

      if (v138)
      {
        *(v6 + 9756 + 4 * v27) = -v138;
      }
    }

LABEL_357:
    close(v27);
    *__error() = v136;
LABEL_358:
    v26 = 1;
    goto LABEL_366;
  }

LABEL_47:
  v155 = v27;
  v28 = *(v6 + 1056);
  v29 = 10;
  if (*(v6 + 9712))
  {
    v29 = 0;
  }

  v161 = v28 << v29;
  v30 = malloc_type_malloc(v28 << v29, 0x1BB4496BuLL);
  v31 = 0;
  v157 = v6 + 9756;
  v159 = v2;
  v160 = v7;
  v32 = v25;
  do
  {
    if (*(v6 + 9700) == 2)
    {
      goto LABEL_155;
    }

    v31 = 0;
    *(v6 + 9700) = 0;
    if (*(v6 + 3400))
    {
      goto LABEL_52;
    }

    v31 = 0;
    LODWORD(v33) = 0;
    while (2)
    {
      v34 = *(v6 + 9696);
      if (!v34)
      {
        goto LABEL_316;
      }

      while (1)
      {
        v32 = *(*(v6 + 9688) + 8 * v34 - 8);
        if (!v32)
        {
          goto LABEL_153;
        }

        v35 = *v32;
        if (*v32 && v33 == 0)
        {
          break;
        }

        if (!*(v6 + 9708))
        {
          v37 = *(v32 + 48);
          if (v37 != -1)
          {
            if ((v37 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
              if (v37 <= 0x7FF)
              {
                v38 = *(v6 + 9752);
                *(v6 + 9752) = v38 - 1;
                v39 = *(v157 + 4 * (v37 & 0x7FF));
                if (v39 < 0 || v38 <= 0)
                {
                  __assert_rtn("pop", "fsi.c", 708, "iterator->fdArray[(int)previousFileReference] >= 0 && iterator->fdCount >= 0");
                }

                if (v39)
                {
                  *(v157 + 4 * (v37 & 0x7FF)) = -v39;
                }
              }
            }

            close(v37);
            v34 = *(v6 + 9696);
          }
        }

        *(v6 + 9696) = --v34;
        if (!v34)
        {
          goto LABEL_152;
        }

        v40 = *(*(v6 + 9688) + 8 * v34 - 8);
        if (v40)
        {
          if (*(v6 + 1080))
          {
            *(v6 + 9736) = *(v40 + 56);
          }

          if (*(v6 + 9708) || !MEMORY[0x1C6921200](*(v40 + 48)))
          {
            v33 = 0;
          }

          else
          {
            v33 = *__error();
          }

          v41 = *(v6 + 9680);
          Data = SStackNextData(v41, *(v40 + 8));
          if (Data)
          {
            v43 = (Data + ((*(Data - 4) - 1) & 0xFFFFFFFFFFFFFFFCLL));
            v44 = *v41;
            v45 = *(*v41 + 32);
            if (v45)
            {
              do
              {
                if (v45 + 4 <= v43 && v45 + *(v45 + 4) + 32 >= v43)
                {
                  break;
                }

                v46 = *v45;
                v47 = v44[2];
                v44[1] -= v45[3];
                if (v47)
                {
                  free(v45);
                  --gSlabs;
                }

                else
                {
                  v44[2] = v45;
                }

                v45 = v46;
              }

              while (v46);
            }

            v45[1] = 0;
            v44[4] = v45;
            v44[1] -= v45[3];
            v48 = v43 - v45 - 32;
            v45[3] = v48;
            if (v45 == v44[3])
            {
              v48 = &v43[-v44[5]];
              v45[3] = v48;
            }

            v44[1] += v48;
            v44[6] = v43;
            *v43 = 0;
          }

          v34 = *(v6 + 9696);
        }

        else
        {
          v33 = 0;
        }

        v7 = v160;
        if (!v34)
        {
LABEL_152:
          v32 = 0;
LABEL_153:
          if (v31 == 1)
          {
            goto LABEL_272;
          }

          goto LABEL_154;
        }

        v32 = *(*(v6 + 9688) + 8 * v34 - 8);
        if (v32)
        {
          LODWORD(v33) = updateStackEntry(v6, v33, *(v32 + 16));
          *(v6 + 3348) = 2;
          v49 = v160(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
          if (v49 == 2)
          {
            v31 = 0;
          }

          else
          {
            v31 = v49;
          }

          if (v49 == 1)
          {
            goto LABEL_153;
          }

          v34 = *(v6 + 9696);
        }

        if (!v34)
        {
          goto LABEL_152;
        }
      }

      if (*(v6 + 9712) && !*(v6 + 1080))
      {
        v50 = SStackNextData(*(v6 + 9680), *v32);
      }

      else
      {
        v50 = 0;
      }

      *(v32 + 16) = v35;
      LODWORD(v33) = updateStackEntry(v6, 0, v35);
      if (*(v6 + 9664) && ((v51 = *(v6 + 9672)) == 0 || (*(v51 + 16))(v51, v6)))
      {
        v52 = *(v32 + 40);
        if (v52 != *(v32 + 24))
        {
          v53 = *(v32 + 32);
          *(v32 + 40) = v52 + 1;
          v54 = *(v53 + 8 * v52);
          goto LABEL_111;
        }
      }

      else if (v35 != *(v32 + 8))
      {
        v54 = SStackNextData(*(v6 + 9680), v35);
        goto LABEL_111;
      }

      v54 = 0;
LABEL_111:
      *v32 = v54;
      if (*&v35[*(v6 + 1096)] == 1 && *(v6 + 9664))
      {
        v55 = *(v6 + 9672);
        if (!v55)
        {
          goto LABEL_302;
        }

        if ((*(v55 + 16))(v55, v6))
        {
          if (!*(v6 + 9664))
          {
            __assert_rtn("handleRunOfFiles", "fsi.c", 1412, "iterator->comparator");
          }

LABEL_302:
          *(v6 + 3348) = 0;
          v31 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
          if ((v31 & 0xFFFFFFFD) == 0)
          {
            v130 = *v32;
            if (*v32)
            {
              if (*&v130[*(v6 + 1096)] == 1)
              {
                updated = 0;
                do
                {
                  *(v32 + 16) = v130;
                  v132 = *(v32 + 40);
                  if (v132 == *(v32 + 24))
                  {
                    v133 = 0;
                  }

                  else
                  {
                    v134 = *(v32 + 32);
                    *(v32 + 40) = v132 + 1;
                    v133 = *(v134 + 8 * v132);
                  }

                  *v32 = v133;
                  updated = updateStackEntry(v6, updated, v130);
                  *(v6 + 3348) = 0;
                  v31 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
                  if ((v31 & 0xFFFFFFFD) != 0)
                  {
                    break;
                  }

                  v130 = *v32;
                  if (!*v32)
                  {
                    break;
                  }
                }

                while (*&v130[*(v6 + 1096)] == 1);
              }
            }
          }

          if (v31 == 2)
          {
            v31 = 0;
            goto LABEL_154;
          }

          goto LABEL_153;
        }
      }

      if (!*(v6 + 9708))
      {
        v59 = *(v6 + 1080);
        if (v59)
        {
          v60 = *v35;
          if (v59 + 8 <= v60)
          {
            v61 = &v35[v59];
            v62 = *(v61 + 1);
            v63 = &v61[*v61];
            if (&v63[v62] <= &v35[v60])
            {
              v50 = v63;
            }

            else
            {
              v50 = 0;
            }
          }

          else
          {
            v50 = 0;
          }
        }

        atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
        v64 = open(v50, 32772);
        LODWORD(v58) = v64;
        if (v64 > 0x7FF)
        {
          if ((v64 & 0x80000000) != 0)
          {
            v56 = v32;
            atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
            goto LABEL_137;
          }
        }

        else
        {
          *(v157 + 4 * v64) = 749;
          ++*(v6 + 9752);
        }

        v56 = v32;
        if (!MEMORY[0x1C6921200](v64))
        {
          v58 = v58;
          goto LABEL_135;
        }

        v65 = *__error();
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v58 <= 2047)
        {
          v66 = *(v6 + 9752);
          *(v6 + 9752) = v66 - 1;
          v67 = *(v157 + 4 * v58);
          if (v67 < 0 || v66 <= 0)
          {
            __assert_rtn("prepareForPush", "fsi.c", 756, "iterator->fdArray[fd] >= 0 && iterator->fdCount >= 0");
          }

          if (v67)
          {
            *(v157 + 4 * v58) = -v67;
          }
        }

        close(v58);
        *__error() = v65;
LABEL_137:
        __error();
        v68 = 0;
        v58 = -1;
        goto LABEL_138;
      }

      v56 = v32;
      v57 = *(v6 + 1112);
      if (v57 + 8 > *v35)
      {
        goto LABEL_137;
      }

      v58 = *&v35[v57];
LABEL_135:
      v68 = 1;
LABEL_138:
      *(v6 + 3348) = 1;
      if (*(v6 + 9720))
      {
        *(v6 + 3388) = 0;
        v69 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
        *(v6 + 3388) = 0;
      }

      else
      {
        v69 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
      }

      if (v69)
      {
        v70 = 0;
      }

      else
      {
        v70 = v68;
      }

      if (v70 != 1)
      {
        cleanupAfterNoPush(v6, v58);
        v32 = v56;
        if (v69 == 1)
        {
          goto LABEL_272;
        }

        *(v6 + 3348) = 2;
        if (v69 != 3 && (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392)) == 1)
        {
          goto LABEL_272;
        }

LABEL_150:
        v31 = 2;
        if (!*(v6 + 3400))
        {
          continue;
        }

LABEL_52:
        *(v6 + 9700) = 1;
        goto LABEL_154;
      }

      break;
    }

    if (pushStackEntry(v6, v58))
    {
      v32 = v56;
      cleanupAfterNoPush(v6, v58);
      goto LABEL_150;
    }

    v129 = *(v6 + 9696);
    if (v129)
    {
      v31 = 0;
      v32 = *(*(v6 + 9688) + 8 * v129 - 8);
      goto LABEL_154;
    }

    v31 = 0;
LABEL_316:
    v32 = 0;
LABEL_154:
    if (*(v6 + 3400))
    {
      goto LABEL_271;
    }

LABEL_155:
    if (!v32)
    {
      goto LABEL_271;
    }

    if (*(v6 + 3400) && !*(v6 + 9700))
    {
      *(v6 + 9700) = 2;
      goto LABEL_271;
    }

    *(v6 + 9700) = 0;
    bzero(v168, 0x400uLL);
    if (*(v6 + 9708))
    {
      d_name = v168;
      sprintf(v168, "/.vol/%llu/%llu", *(v6 + 9724), *(v32 + 48));
    }

    else
    {
      d_name = ".";
    }

    if (!*(v6 + 9712))
    {
      atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
      v76 = open(d_name, 32772);
      v77 = v76;
      v158 = v76;
      if (v76 > 0x7FF)
      {
        v2 = v159;
        if ((v76 & 0x80000000) != 0)
        {
          atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
          goto LABEL_271;
        }

        v156 = v32;
      }

      else
      {
        v156 = v32;
        *(v157 + 4 * v76) = 1654;
        ++*(v6 + 9752);
        v2 = v159;
      }

      while (1)
      {
        v78 = getattrlistbulk(v77, (v6 + 1032), v30, v161, 0x208uLL);
        if ((v78 & 0x80000000) == 0)
        {
          break;
        }

        LODWORD(v82) = *__error();
LABEL_199:
        v94 = v31 != 1;
        if (v82)
        {
          v2 = v159;
          v77 = v158;
LABEL_205:
          if (*(v6 + 9716) && (!*(v6 + 9664) || (v95 = *(v6 + 9672)) != 0 && ((*(v95 + 16))(v95, v6) & 1) == 0))
          {
            if (v31 == 1)
            {
              v32 = v156;
            }

            else
            {
              v122 = 0;
              v32 = v156;
              do
              {
                v123 = *(v6 + 9640);
                v124 = *(v123 + 24);
                if (!v124)
                {
                  break;
                }

                v125 = *(v124 + 24);
                if (v125 < 4)
                {
                  break;
                }

                v126 = *(v123 + 40);
                v127 = *v126;
                if (v125 < v127)
                {
                  break;
                }

                v122 = updateStackEntry(v6, v122, v126);
                *(v6 + 3348) = 0;
                *(v6 + 1065) = *(v6 + 1072) != 0;
                v128 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
                if (*(v6 + 1065) == 1)
                {
                  SIValueSet<unsigned long long>::SIValueSetInsert((*(v6 + 1072) + 16), *(*(v6 + 3392) + *(v6 + 1112)));
                }

                SQueueDropData(*(v6 + 9640), v127);
                v31 = v128 == 2 ? 0 : v128;
              }

              while (v31 != 1);
            }

            SQueueEmpty(*(v6 + 9640));
          }

          else
          {
            if (v94)
            {
              finishChildList(v6);
            }

            else
            {
              v31 = 1;
            }

            v32 = v156;
          }

          atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
          if (v77 <= 2047)
          {
            v96 = *(v6 + 9752);
            *(v6 + 9752) = v96 - 1;
            v97 = *(v157 + 4 * v77);
            if (v97 < 0 || v96 <= 0)
            {
              __assert_rtn("internalIterateWalk", "fsi.c", 1767, "iterator->fdArray[fd] >= 0 && iterator->fdCount >= 0");
            }

            if (v97)
            {
              *(v157 + 4 * v77) = -v97;
            }
          }

          close(v77);
          goto LABEL_271;
        }

        v2 = v159;
        v77 = v158;
        if (v31 == 1)
        {
          goto LABEL_205;
        }
      }

      v79 = v78;
      if (!v78)
      {
        v94 = v31 != 1;
        goto LABEL_205;
      }

      if (*(v6 + 9664))
      {
        v80 = *(v6 + 9672);
        if (v80)
        {
          v81 = (*(v80 + 16))(v80, v6);
        }

        else
        {
          v81 = 1;
        }
      }

      else
      {
        v81 = 0;
      }

      v82 = 0;
      v31 = 0;
      v83 = 1;
      v84 = v30;
      while (1)
      {
        if (*(v6 + 9724) != *&v84[*(v6 + 1088)])
        {
          goto LABEL_197;
        }

        v85 = *&v84[*(v6 + 1096)];
        if ((v85 - 1) > 1)
        {
          goto LABEL_197;
        }

        v86 = *(v6 + 1072);
        if (v86)
        {
          if (SIUINT64SetContainsValue(v86, *&v84[*(v6 + 1112)]))
          {
            goto LABEL_197;
          }
        }

        if (v85 != 1)
        {
          break;
        }

        if (!*(v6 + 9716))
        {
          v82 = updateStackEntry(v6, v82, v84);
          *(v6 + 3348) = 0;
          *(v6 + 1065) = *(v6 + 1072) != 0;
          v31 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
          if (*(v6 + 1065) == 1)
          {
            SIValueSet<unsigned long long>::SIValueSetInsert((*(v6 + 1072) + 16), *(*(v6 + 3392) + *(v6 + 1112)));
          }

          if (v31 == 2)
          {
            v31 = 0;
          }

          goto LABEL_197;
        }

        if (v81)
        {
          v87 = v6;
          v88 = v84;
          v89 = 1;
LABEL_190:
          addIntoChildList(v87, v88, 0, 0, v89);
          goto LABEL_197;
        }

        v90 = v30;
        v91 = *(v6 + 9640);
        v92 = *v84;
        v93 = SQueueOpenPushData(v91, v92);
        memcpy(v93, v84, v92);
        *(v91 + 48) += v92;
        *(*(v91 + 32) + 24) += v92;
        *(v91 + 8) += v92;
        v30 = v90;
        v7 = v160;
LABEL_197:
        if (v83 < v79)
        {
          v84 += *v84;
          ++v83;
          if (v31 != 1)
          {
            continue;
          }
        }

        goto LABEL_199;
      }

      if ((v84[*(v6 + 1120)] & 3) != 0)
      {
        goto LABEL_197;
      }

      v87 = v6;
      v88 = v84;
      v89 = v81;
      goto LABEL_190;
    }

    v72 = opendir(d_name);
    if (!v72)
    {
      goto LABEL_267;
    }

    v73 = v72;
    bzero(&v167, 0x418uLL);
    v166 = 0;
    if (*(v6 + 9664))
    {
      v74 = *(v6 + 9672);
      if (v74)
      {
        v75 = (*(v74 + 16))(v74, v6);
      }

      else
      {
        v75 = 1;
      }
    }

    else
    {
      v75 = 0;
    }

    while (v31 != 1)
    {
      if (readdir_r(v73, &v167, &v166))
      {
        break;
      }

      v98 = v166;
      if (!v166)
      {
        break;
      }

      if (v166->d_name[0] != 46 || v166->d_name[1] && (v166->d_name[1] != 46 || v166->d_name[2]))
      {
        if (*(v6 + 9708))
        {
          sprintf(v168, "/.vol/%llu/%llu", *(v6 + 9724), v166->d_ino);
          v98 = v166;
        }

        else
        {
          d_name = v166->d_name;
        }

        d_type = v98->d_type;
        if (d_type)
        {
          goto LABEL_242;
        }

        memset(&v165, 0, sizeof(v165));
        if (!fstatat(-2, d_name, &v165, 544))
        {
          v101 = v166;
LABEL_239:
          v101->d_type = v165.st_mode >> 12;
          goto LABEL_241;
        }

        if (*__error() != 22)
        {
          v101 = v166;
          goto LABEL_241;
        }

        v100 = fstatat(-2, d_name, &v165, 32);
        v101 = v166;
        if (!v100)
        {
          goto LABEL_239;
        }

LABEL_241:
        d_type = v101->d_type;
LABEL_242:
        v102 = d_type == 8 || d_type == 4;
        if (v102 && (!getattrlist(d_name, (v6 + 1032), v30, v161, 0x208u) || !*__error()))
        {
          if (v166->d_type == 8)
          {
            if (*(v6 + 9724) == *(v30 + *(v6 + 1088)))
            {
              if (*(v6 + 9716))
              {
                if (v75)
                {
                  v103 = v6;
                  v104 = v30;
                  d_namlen = 0;
                  v106 = 0;
                  v107 = 1;
                  goto LABEL_257;
                }

                v109 = v32;
                v110 = *(v6 + 9640);
                v111 = *v30;
                v112 = SQueueOpenPushData(v110, v111);
                memcpy(v112, v30, v111);
                *(v110 + 48) += v111;
                *(*(v110 + 32) + 24) += v111;
                *(v110 + 8) += v111;
                v32 = v109;
              }

              else
              {
                updateStackEntry(v6, 0, v30);
                *(v6 + 3348) = 0;
                v108 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
                if (v108 == 2)
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v108;
                }
              }
            }
          }

          else if ((*(v30 + *(v6 + 1120)) & 3) == 0 && *(v6 + 9724) == *(v30 + *(v6 + 1088)))
          {
            d_namlen = v166->d_namlen;
            v106 = v166->d_name;
            v103 = v6;
            v104 = v30;
            v107 = v75;
LABEL_257:
            addIntoChildList(v103, v104, d_namlen, v106, v107);
          }
        }
      }
    }

    closedir(v73);
    if (*(v6 + 9716) && (!*(v6 + 9664) || (v113 = *(v6 + 9672)) != 0 && ((*(v113 + 16))(v113, v6) & 1) == 0))
    {
      v2 = v159;
      if (v31 != 1)
      {
        v114 = 0;
        do
        {
          v115 = *(v6 + 9640);
          v116 = *(v115 + 24);
          if (!v116)
          {
            break;
          }

          v117 = *(v116 + 24);
          if (v117 < 4)
          {
            break;
          }

          v118 = *(v115 + 40);
          v119 = *v118;
          if (v117 < v119)
          {
            break;
          }

          v114 = updateStackEntry(v6, v114, v118);
          *(v6 + 3348) = 0;
          v120 = v32;
          v121 = (v7)(v6, v6 + 3344, a2, *(v6 + 3384), *(v6 + 3392));
          SQueueDropData(*(v6 + 9640), v119);
          v31 = v121 == 2 ? 0 : v121;
          v32 = v120;
        }

        while (v31 != 1);
      }

      SQueueEmpty(*(v6 + 9640));
    }

    else
    {
      finishChildList(v6);
LABEL_267:
      v2 = v159;
    }

LABEL_271:
    if (v31 != 1)
    {
      v26 = 0;
      if (!v32)
      {
        break;
      }

      continue;
    }

LABEL_272:
    if (!*(v6 + 9708))
    {
      v139 = *(v6 + 9696);
      v26 = 0xFFFFFFFFLL;
      if (v139)
      {
        do
        {
          v140 = *(*(v6 + 9688) + 8 * v139 - 8);
          if (!v140)
          {
            break;
          }

          v141 = *(v140 + 48);
          if (v141 != -1)
          {
            if ((v141 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
              if (v141 <= 2047)
              {
                v142 = *(v6 + 9752);
                *(v6 + 9752) = v142 - 1;
                v143 = *(v157 + 4 * (v141 & 0x7FFFFFFF));
                if (v143 < 0 || v142 <= 0)
                {
                  __assert_rtn("internalIterateWalk", "fsi.c", 1856, "iterator->fdArray[(int)tos->fileReference] >= 0 && iterator->fdCount >= 0");
                }

                if (v143)
                {
                  *(v157 + 4 * (v141 & 0x7FFFFFFF)) = -v143;
                }
              }
            }

            close(v141);
            v139 = *(v6 + 9696);
          }

          *(v6 + 9696) = --v139;
        }

        while (v139);
        v26 = 0xFFFFFFFFLL;
      }

      break;
    }

    v31 = 1;
    v26 = 0xFFFFFFFFLL;
    if (!v32)
    {
      break;
    }
  }

  while (v31 != 1 && !*(v6 + 3400));
  v144.n128_f64[0] = SQueueEmpty(*(v6 + 9640));
  if (*(v6 + 3400))
  {
    *(v6 + 3404) = 1;
    v27 = v155;
    if (!*(v6 + 9708))
    {
      atomic_fetch_add_explicit(gFDCount, 1u, memory_order_relaxed);
      v145 = open(".", 32772, v144.n128_f64[0]);
      if (v145 <= 0x7FF)
      {
        *(v157 + 4 * v145) = 1868;
        ++*(v6 + 9752);
        goto LABEL_349;
      }

      if ((v145 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        *(v6 + 9704) = v145;
        *(v6 + 3404) = 0;
        v26 = 1;
      }

      else
      {
LABEL_349:
        *(v6 + 9704) = v145;
      }
    }

    *(v6 + 3400) = 0;
    if ((v155 & 0x80000000) == 0)
    {
LABEL_351:
      if (MEMORY[0x1C6921200](v27, v144))
      {
        *(v6 + 3404) = 0;
        v136 = *__error();
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v27 <= 0x7FF)
        {
          v146 = *(v6 + 9752);
          *(v6 + 9752) = v146 - 1;
          v147 = *(v157 + 4 * v27);
          if (v147 < 0 || v146 <= 0)
          {
            __assert_rtn("internalIterateWalk", "fsi.c", 1880, "iterator->fdArray[savedFd] >= 0 && iterator->fdCount >= 0");
          }

          if (v147)
          {
            *(v157 + 4 * v27) = -v147;
          }
        }

        goto LABEL_357;
      }

      atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
      if (v27 <= 0x7FF)
      {
        v148 = *(v6 + 9752);
        *(v6 + 9752) = v148 - 1;
        v149 = *(v157 + 4 * v27);
        if (v149 < 0 || v148 <= 0)
        {
          __assert_rtn("internalIterateWalk", "fsi.c", 1884, "iterator->fdArray[savedFd] >= 0 && iterator->fdCount >= 0");
        }

        if (v149)
        {
          *(v157 + 4 * v27) = -v149;
        }
      }

      close(v27);
    }
  }

  else
  {
    v27 = v155;
    if ((v155 & 0x80000000) == 0)
    {
      goto LABEL_351;
    }
  }

  free(v30);
LABEL_366:
  v150 = *(v2 + 8608);
  if (v150)
  {
    *(v2 + 3404) = *(v150 + 3404);
    *(v2 + 3400) = 0;
  }

  return v26;
}

uint64_t updateStackEntry(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *(a1 + 1080);
  if (v6)
  {
    v7 = *a3;
    if (v6 + 8 > v7 || (v8 = &a3[v6], v9 = *(v8 + 1), v10 = &v8[*v8], &v10[v9] > &a3[v7]))
    {
      a2 = 2;
      v11 = -1;
LABEL_5:
      *(a1 + 3376) = a1 + *(a1 + 3352) - v11 + 8616;
      *(a1 + 3368) = v11;
      goto LABEL_6;
    }

    v11 = v9 - 1;
    v13 = *(a1 + 9736);
    if (v13 == 1)
    {
      if (*(a1 + 8616) == 47)
      {
        strlcpy((a1 + 8617), v10, 0x3FFuLL);
        goto LABEL_12;
      }
    }

    else if (!v13)
    {
      __strlcpy_chk(a1 + 8616, v10, 1024, 1024);
LABEL_12:
      --v9;
LABEL_15:
      *(a1 + 3352) = *(a1 + 9736) + v9;
      goto LABEL_5;
    }

    if ((v13 + v9) > 0x3FF)
    {
      a2 = 63;
      goto LABEL_5;
    }

    *(a1 + 8616 + v13) = 47;
    strlcpy((a1 + 8616 + *(a1 + 9736) + 1), v10, 1023 - *(a1 + 9736));
    goto LABEL_15;
  }

LABEL_6:
  *(a1 + 3384) = a2;
  *(a1 + 3392) = a3;
  *(a1 + 3344) = *(a1 + 9696) - 1;
  return a2;
}

uint64_t cleanupAfterNoPush(uint64_t result, uint64_t a2)
{
  if (a2 != -1)
  {
    v2 = result;
    if (!*(result + 9708))
    {
      v3 = a2;
      v4 = *(result + 9696);
      if (v4)
      {
        v5 = *(*(result + 9688) + 8 * v4 - 8);
        if (v5)
        {
          MEMORY[0x1C6921200](*(v5 + 48));
        }
      }

      if ((v3 & 0x80000000) == 0)
      {
        atomic_fetch_add_explicit(gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v3 <= 0x7FF)
        {
          v6 = *(v2 + 9752);
          *(v2 + 9752) = v6 - 1;
          v7 = *(v2 + 9756 + 4 * (v3 & 0x7FF));
          if (v7 < 0 || v6 <= 0)
          {
            __assert_rtn("cleanupAfterNoPush", "fsi.c", 776, "iterator->fdArray[(int)fileReference] >= 0 && iterator->fdCount >= 0");
          }

          if (v7)
          {
            *(v2 + 9756 + 4 * (v3 & 0x7FF)) = -v7;
          }
        }
      }

      return close(v3);
    }
  }

  return result;
}

_DWORD *finishChildList(_DWORD *result)
{
  if (*(result + 1208))
  {
    v1 = result;
    result = *(result + 1209);
    if (!result || (result = (*(result + 2))(result, v1), result))
    {
      v2 = v1[2424];
      if (v2)
      {
        v3 = *(*(v1 + 1211) + 8 * v2 - 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = v3[5];
      v5 = v3[3];
      if (v4)
      {
        if (v4 < v5)
        {
          if (!*v3)
          {
            __assert_rtn("finishChildList", "fsi.c", 574, "tos->currentItem!=0");
          }

          if (*v3 != *(v3[4] + 8 * v4 - 8))
          {
            __assert_rtn("finishChildList", "fsi.c", 575, "tos->currentItem == tos->children[tos->currentChild-1]");
          }
        }
      }

      else if (v5)
      {
        v6 = *(v1 + 1206);
        __compar[0] = MEMORY[0x1E69E9820];
        __compar[1] = 0x40000000;
        __compar[2] = __finishChildList_block_invoke;
        __compar[3] = &__block_descriptor_tmp_28_10148;
        __compar[4] = v1;
        qsort_b(v6, v5, 8uLL, __compar);
        result = SStackPushData(*(v1 + 1210), 8 * v3[3], *(v1 + 1206));
        v3[4] = result;
        if (*v3)
        {
          __assert_rtn("finishChildList", "fsi.c", 564, "tos->currentItem==0");
        }

        if (v3[5])
        {
          __assert_rtn("finishChildList", "fsi.c", 565, "tos->currentChild==0");
        }

        v3[5] = 1;
        *v3 = *result;
      }

      else if (*v3)
      {
        __assert_rtn("finishChildList", "fsi.c", 568, "tos->currentItem==0");
      }

      v3[1] = v3[4];
    }
  }

  return result;
}

uint64_t hybridSearch(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = *(a3 + 24);
  v7 = *(a2 + 4);
  if (v7 != 2)
  {
    v11 = *a2;
    v12 = v7 != 1 || v11 < 1;
    v83 = a5;
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v14 = *(v6 + 3424);
      if ((v14 & 0x40) == 0)
      {
        v13 = 0;
        goto LABEL_17;
      }

      v15 = *(a2 + 16);
      if (path_bundle_index_predicate != -1)
      {
        dispatch_once(&path_bundle_index_predicate, &__block_literal_global_10155);
      }

      v13 = fcntl(path_bundle_index_sDummyFD_10156, 52, v15) >= 0;
      v11 = *a2;
      a5 = v83;
    }

    v14 = *(v6 + 3424);
    if (v11 < 1)
    {
LABEL_18:
      v16 = 1;
      goto LABEL_26;
    }

LABEL_17:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    if ((*(a5 + *(v6 + 1104) + 8) & 0x40) != 0)
    {
      goto LABEL_22;
    }

    v17 = *(a2 + 32);
    if (v17)
    {
      if (*v17 == 46)
      {
LABEL_22:
        v16 = 0;
        LODWORD(v17) = *(a2 + 4) == 1;
LABEL_25:
        v13 |= v17;
LABEL_26:
        v18 = *(a2 + 4);
        if (v18 == 1)
        {
          if ((v14 & 4) == 0)
          {
            return (2 * v13);
          }
        }

        else if (!v18 && (v14 & 8) == 0)
        {
          return (2 * v13);
        }

        v80 = v16;
        v81 = v13;
        v77 = a2;
        v78 = a4;
        v79 = a3;
        v19 = *(v6 + 4176);
        if (v19 >= 1)
        {
          v20 = 0;
          v21 = (*(v6 + 3480) + 4);
          v22 = (*(v6 + 3472) + 4);
          v23 = v6 + 4472;
          v76 = a5 + 4;
          while (1)
          {
            v24 = *(v6 + 5752 + 8 * v20);
            v25 = *(v23 + 8 * v20);
            if (!v25)
            {
              goto LABEL_63;
            }

            if (!*(v6 + 4312 + v20))
            {
              v28 = 1;
              goto LABEL_65;
            }

            v26 = (a5 + v25);
            v27 = *(v6 + 4392 + v20);
            v28 = 1;
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                v41 = v14;
                v42 = v26 + *v26;
                v43 = v22 + *v22;
                if ((v14 & 2) != 0)
                {
                  v28 = strcasestr(v42, v43) != 0;
                  v19 = *(v6 + 4176);
                }

                else
                {
                  v28 = strcasecmp(v42, v43) == 0;
                }

                v23 = v6 + 4472;
                a5 = v83;
                v14 = v41;
              }

              else if (v27 == 4 && v24 >= 4)
              {
                if ((*v21 & *v26) == *v22)
                {
                  v33 = 0;
                  v34 = v76 + v25;
                  while ((v24 >> 2) - 1 != v33)
                  {
                    v35 = v21[v33 + 1] & *(v34 + 4 * v33);
                    v36 = v22[++v33];
                    if (v35 != v36)
                    {
                      goto LABEL_74;
                    }
                  }

                  v33 = v24 >> 2;
LABEL_74:
                  v28 = v33 >= v24 >> 2;
                }

                else
                {
LABEL_70:
                  v28 = 0;
                }
              }

              goto LABEL_64;
            }

            if (v27 != 1)
            {
              break;
            }

            if (v24 >= 4)
            {
              v37 = v24 >> 2;
              v38 = v21;
              v39 = v22;
              while (1)
              {
                v40 = *v26;
                if (*v26 > *v39 && v40 < *v38)
                {
                  break;
                }

                if (v40 < *v39 || v40 > *v38)
                {
                  goto LABEL_70;
                }

                ++v26;
                ++v39;
                ++v38;
                v28 = 1;
                if (!--v37)
                {
                  goto LABEL_64;
                }
              }

LABEL_63:
              v28 = 1;
            }

LABEL_64:
            v22 = (v22 + v24);
            v21 = (v21 + v24);
LABEL_65:
            if (++v20 >= v19 || !v28)
            {
              goto LABEL_76;
            }
          }

          if (v27 != 2 || v24 < 8)
          {
            goto LABEL_64;
          }

          v29 = v24 >> 3;
          v30 = v21;
          v31 = v22;
          while (1)
          {
            v32 = *v26;
            if (*v26 > *v31 && v32 < *v30)
            {
              goto LABEL_63;
            }

            if (v32 < *v31 || v32 > *v30)
            {
              goto LABEL_70;
            }

            v26 += 2;
            ++v31;
            ++v30;
            v28 = 1;
            if (!--v29)
            {
              goto LABEL_64;
            }
          }
        }

        v28 = 1;
LABEL_76:
        if (v14 < 0)
        {
          v28 = !v28;
        }

        if (!v28)
        {
          return (2 * v81);
        }

        v44 = v81;
        if ((v80 & 1) == 0)
        {
          return (2 * v81);
        }

        if ((*(v6 + 1028) & 0x80) != 0)
        {
LABEL_115:
          v72 = (*(v79 + 8))(v6, v77, *(v79 + 16), v78, a5);
          if (v44)
          {
            v73 = 2;
          }

          else
          {
            v73 = v72;
          }

          if (v72 == 1)
          {
            return 1;
          }

          else
          {
            return v73;
          }
        }

        v45 = *(v6 + 3440);
        v46 = v45 + 1;
        v82 = v45;
        v47 = v45 + *(v6 + 6432);
        v48 = *(v6 + 6416);
        if (v48)
        {
          v49 = (a5 + v48);
LABEL_83:
          v50 = *v49;
          goto LABEL_84;
        }

        v74 = *(v6 + 6424);
        if (v74)
        {
          v75 = (*(a5 + v74) & 0xF000) - 4096;
          if (v75 >> 14 <= 2)
          {
            v49 = (&unk_1C2BFFCCC + 4 * (v75 >> 12));
            goto LABEL_83;
          }

          v50 = 0;
        }

        else
        {
          v50 = -1;
        }

        if (*(v6 + 6396) < 1)
        {
          goto LABEL_106;
        }

LABEL_84:
        v51 = 0;
        v52 = v6 + 6448;
        do
        {
          v53 = v52 + 8 * v51;
          v54 = *(v53 + 1520);
          v55 = *(v53 + 240);
          if (v55)
          {
            v56 = (a5 + v55);
            if (*(v52 + v51))
            {
              v57 = v56[1];
              memcpy(v47, v56 + *v56, v57);
              *v46 = v47 - v46;
              v46[1] = v57;
              v47 += (v56[1] + 3) & 0xFFFFFFFC;
            }

            else
            {
              memcpy(v46, (a5 + v55), v54);
            }
          }

          else
          {
            bzero(v46, v54);
          }

          v46 = (v46 + v54);
          ++v51;
          v58 = *(v6 + 6396);
          a5 = v83;
        }

        while (v51 < v58);
        if (v50 == 2 && v58 >= 1)
        {
          if (*(v6 + 6400) >= 1)
          {
            v59 = (v6 + 8 * v58 + 6688);
            v60 = (v6 + v58 + 6448);
            do
            {
              v61 = v59[160];
              v62 = *v59;
              if (*v59)
              {
                v63 = (a5 + v62);
                if (*v60)
                {
                  v64 = v63[1];
                  memcpy(v47, v63 + *v63, v64);
                  *v46 = v47 - v46;
                  v46[1] = v64;
                  v47 += (v63[1] + 3) & 0xFFFFFFFC;
                }

                else
                {
                  memcpy(v46, (a5 + v62), v59[160]);
                }
              }

              else
              {
                bzero(v46, v59[160]);
              }

              ++v59;
              v46 = (v46 + v61);
              LODWORD(v58) = v58 + 1;
              ++v60;
              a5 = v83;
            }

            while (*(v6 + 6400) + *(v6 + 6396) > v58);
          }
        }

        else
        {
LABEL_106:
          if (v50 == 1 && *(v6 + 6408) >= 1)
          {
            v65 = *(v6 + 6404);
            v66 = v6 + 6448;
            do
            {
              v67 = v66 + 8 * v65;
              v68 = *(v67 + 1520);
              v69 = *(v67 + 240);
              if (v69)
              {
                v70 = (a5 + v69);
                if (*(v66 + v65))
                {
                  v71 = v70[1];
                  memcpy(v47, v70 + *v70, v71);
                  *v46 = v47 - v46;
                  v46[1] = v71;
                  v47 += (v70[1] + 3) & 0xFFFFFFFC;
                }

                else
                {
                  memcpy(v46, (a5 + v69), v68);
                }
              }

              else
              {
                bzero(v46, v68);
              }

              v46 = (v46 + v68);
              ++v65;
              a5 = v83;
            }

            while (v65 < *(v6 + 6408) + *(v6 + 6404));
          }
        }

        *v82 = v47 - v82;
        a5 = *(v6 + 3440);
        v44 = v81;
        goto LABEL_115;
      }

      LODWORD(v17) = 0;
    }

    v16 = 1;
    goto LABEL_25;
  }

  if (*(v6 + 3416) < CFAbsoluteTimeGetCurrent() - *a3)
  {
    do
    {
      *(v6 + 3400) = 1;
      v6 = *(v6 + 8608);
    }

    while (v6);
  }

  return 0;
}

uint64_t __path_bundle_index_block_invoke_10161()
{
  result = open("/System/Library", 4);
  path_bundle_index_sDummyFD_10156 = result;
  return result;
}

void *___ZL46getkQPQueryParserOptionUseLLMParseKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQueryParserOptionUseLLMParseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *QueryParserLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL22QueryParserLibraryCorePPc_block_invoke_10583;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8196CF8;
    v6 = 0;
    QueryParserLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore(char **)::frameworkLibrary;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QueryParserLibrary()"];
    v1 = [v0 handleFailureInFunction:v3 file:@"PRLLMParse.mm" lineNumber:13 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL22QueryParserLibraryCorePPc_block_invoke_12841;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8197788;
    v6 = 0;
    QueryParserLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore(char **)::frameworkLibrary;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QueryParserLibrary()"];
    v1 = [v0 handleFailureInFunction:v3 file:@"PRQUUtils.mm" lineNumber:15 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL22QueryParserLibraryCorePPc_block_invoke_16545;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E81996B8;
    v6 = 0;
    QueryParserLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore(char **)::frameworkLibrary;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QueryParserLibrary()"];
    v1 = [v0 handleFailureInFunction:v3 file:@"PRQueryPhotosProcessor.mm" lineNumber:24 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t ___ZL22QueryParserLibraryCorePPc_block_invoke_10583(uint64_t a1)
{
  result = _sl_dlopen();
  QueryParserLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

const void *getLLMParseFromQueryUnderstanding(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0;
  }

  return CFDictionaryGetValue(a1, @"attributedParse");
}

const __CFDictionary *getRawTextFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputTokenRawTextKey");
        getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenRawTextKey()") description:{@"PRLLMParse.mm", 15, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4DC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL38getkQPQUOutputTokenRawTextKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenRawTextKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenRawTextKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *getTokenFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputTokenKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
        getkQPQUOutputTokenKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenKey()") description:{@"PRLLMParse.mm", 16, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL31getkQPQUOutputTokenKeySymbolLocv_block_invoke_10598(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *getLemmaFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputLemmaKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputLemmaKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputLemmaKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputLemmaKey");
        getkQPQUOutputLemmaKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputLemmaKey()") description:{@"PRLLMParse.mm", 17, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4DF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL31getkQPQUOutputLemmaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputLemmaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputLemmaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *getRawTextTokensFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputRawTextTokenizedKey");
        getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputRawTextTokenizedKey()") description:{@"PRLLMParse.mm", 18, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4E134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL42getkQPQUOutputRawTextTokenizedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputRawTextTokenizedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputRawTextTokenizedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getAttributeIndexFromTokenInfo(const __CFDictionary *a1)
{
  if (a1 && CFDictionaryGetCount(a1))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v2 = getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr;
    v11 = getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr;
    if (!getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v9[3] = dlsym(ParserLibrary, "kQPQUOutputTokenAttributeIndexesKey");
      getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr = v9[3];
      v2 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v7 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenAttributeIndexesKey()") description:{@"PRLLMParse.mm", 26, @"%s", dlerror()}];
      __break(1u);
      return result;
    }

    Value = CFDictionaryGetValue(a1, *v2);
    if (Value)
    {
      v5 = Value;
      if (CFArrayGetCount(Value) == 1)
      {
        return [CFArrayGetValueAtIndex(v5 0)];
      }
    }
  }

  return -1;
}

void sub_1C2B4E314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL47getkQPQUOutputTokenAttributeIndexesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenAttributeIndexesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenAttributeIndexesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPQUOutputECRGroundNamesTokenKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputECRGroundNamesTokenKey");
    getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputECRGroundNamesTokenKey()") description:{@"PRLLMParse.mm", 22, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B4E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL45getkQPQUOutputECRGroundNamesTokenKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputECRGroundNamesTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputECRGroundNamesTokenKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPQUOutputTokenPhraseWeightsKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenPhraseWeightsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPQUOutputTokenIsSelfKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenIsSelfKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *getIsRelativeTimeArgFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputTokenIsRelativeTimeKey");
        getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return [CFDictionaryGetValue(v1 *v2)];
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenIsRelativeTimeKey()") description:{@"PRLLMParse.mm", 25, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4E700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL45getkQPQUOutputTokenIsRelativeTimeKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenIsRelativeTimeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenIsRelativeTimeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const void *getTokenIDsFromTokenInfo(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0;
  }

  v2 = getkQPQUOutputTokenArgIdsKey();

  return CFDictionaryGetValue(a1, v2);
}

void *getkQPQUOutputTokenArgIdsKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
    getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgIdsKey()") description:{@"PRLLMParse.mm", 19, @"%s", dlerror()}];
  __break(1u);
  return result;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
    getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgIdsKey()") description:{@"PRQUUtils.mm", 21, @"%s", dlerror()}];
  __break(1u);
  return result;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
    getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgIdsKey()") description:{@"PRQueryPhotosProcessor.mm", 26, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B4E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL37getkQPQUOutputTokenArgIdsKeySymbolLocv_block_invoke_10624(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getTopTokenIDFromTokenInfo(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!CFDictionaryGetCount(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = getkQPQUOutputTokenArgIdsKey();
  Value = CFDictionaryGetValue(a1, v2);
  if (![Value count])
  {
    return 0xFFFFFFFFLL;
  }

  v4 = [Value objectAtIndexedSubscript:0];

  return [v4 intValue];
}

uint64_t getTokenRangeFromTokenInfo(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  v9 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v7[3] = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
    getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    return [CFDictionaryGetValue(a1 *v2)];
  }

  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenRangeKey()") description:{@"PRLLMParse.mm", 20, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B4EB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL36getkQPQUOutputTokenRangeKeySymbolLocv_block_invoke_10632(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const void *getGroundedNamesTokenFromTokenInfo(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0;
  }

  v2 = getkQPQUOutputECRGroundNamesTokenKey();

  return CFDictionaryGetValue(a1, v2);
}

const __CFDictionary *getGroundedNamesFromTokenInfo(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v2 = getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr;
      v8 = getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr)
      {
        ParserLibrary = QueryParserLibrary();
        v6[3] = dlsym(ParserLibrary, "kQPQUOutputECRGroundNamesKey");
        getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr = v6[3];
        v2 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (v2)
      {
        return CFDictionaryGetValue(v1, *v2);
      }

      else
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputECRGroundNamesKey()") description:{@"PRLLMParse.mm", 21, @"%s", dlerror()}];
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C2B4ED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkQPQUOutputECRGroundNamesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputECRGroundNamesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputECRGroundNamesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getLLMTokenDescription(uint64_t a1, _NSRange a2, NSAttributedString *a3, int a4)
{
  v4 = &v20;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__10642;
  v24 = __Block_byref_object_dispose__10643;
  v25 = 0;
  if (a2.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v5) = a4;
    v6 = a3;
    length = a2.length;
    location = a2.location;
    LODWORD(v9) = a1;
    if (a2.location + a2.length <= [(NSAttributedString *)a3 length])
    {
      {
        goto LABEL_22;
      }

      while (1)
      {
        if (getLLMTokenAttrDescriptionMap(void)::onceToken != -1)
        {
          dispatch_once(&getLLMTokenAttrDescriptionMap(void)::onceToken, &__block_literal_global_10644);
        }

        v10 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::find<int>(v9);
        if (!v10)
        {
          v10 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::find<int>(-1);
          if (!v10)
          {
            abort();
          }
        }

        v9 = v10 + 3;
        if (v10[3] == v10[4])
        {
          break;
        }

        if (v5)
        {
          v31 = 0;
          v32 = &v31;
          v33 = 0x2020000000;
          v5 = &unk_1EBF64000;
          v11 = getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr;
          v34 = getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr;
          if (!getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr)
          {
            v26 = MEMORY[0x1E69E9820];
            v27 = 3221225472;
            v28 = ___ZL50getkQPParseAttributeRankingDescriptionKeySymbolLocv_block_invoke;
            v29 = &unk_1E8199698;
            v30 = &v31;
            ParserLibrary = QueryParserLibrary();
            v13 = dlsym(ParserLibrary, "kQPParseAttributeRankingDescriptionKey");
            *(v30[1] + 24) = v13;
            getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr = *(v30[1] + 24);
            v11 = v32[3];
          }

          _Block_object_dispose(&v31, 8);
          if (v11)
          {
            goto LABEL_17;
          }

          length = [MEMORY[0x1E696AAA8] currentHandler];
          v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef  _Nullable getkQPParseAttributeRankingDescriptionKey()"];
          [length handleFailureInFunction:v6 file:@"PRLLMParse.mm" lineNumber:28 description:{@"%s", dlerror()}];
        }

        else
        {
          v31 = 0;
          v32 = &v31;
          v33 = 0x2020000000;
          v5 = 0x1EDD78000;
          v11 = getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr;
          v34 = getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr;
          if (!getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr)
          {
            v26 = MEMORY[0x1E69E9820];
            v27 = 3221225472;
            v28 = ___ZL43getkQPParseAttributeDescriptionKeySymbolLocv_block_invoke;
            v29 = &unk_1E8199698;
            v30 = &v31;
            v14 = QueryParserLibrary();
            v15 = dlsym(v14, "kQPParseAttributeDescriptionKey");
            *(v30[1] + 24) = v15;
            getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr = *(v30[1] + 24);
            v11 = v32[3];
          }

          _Block_object_dispose(&v31, 8);
          if (v11)
          {
LABEL_17:
            v16 = *v11;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = ___Z22getLLMTokenDescriptioni8_NSRangeP18NSAttributedStringb_block_invoke;
            v19[3] = &unk_1E8196CD8;
            v19[4] = v16;
            v19[5] = &v20;
            v19[6] = v9;
            [(NSAttributedString *)v6 enumerateAttributesInRange:location options:length usingBlock:0, v19];
            break;
          }

          length = [MEMORY[0x1E696AAA8] currentHandler];
          v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef  _Nullable getkQPParseAttributeDescriptionKey()"];
          [length handleFailureInFunction:v6 file:@"PRLLMParse.mm" lineNumber:27 description:{@"%s", dlerror()}];
        }

        __break(1u);
LABEL_22:
        {
          getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap = 0u;
          *&qword_1EBF643E0 = 0u;
          dword_1EBF643F0 = 1065353216;
        }
      }
    }

    v4 = v21;
  }

  v17 = v4[5];
  _Block_object_dispose(&v20, 8);
  return v17;
}

void sub_1C2B4F164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::find<int>(int a1)
{
  if (!*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) <= a1)
    {
      v2 = a1 % *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1);
    }
  }

  else
  {
    v2 = (*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) - 1) & a1;
  }

  i = *(getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1))
          {
            v4 %= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1);
          }
        }

        else
        {
          v4 &= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void *___ZL50getkQPParseAttributeRankingDescriptionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRankingDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRankingDescriptionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeDescriptionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___Z22getLLMTokenDescriptioni8_NSRangeP18NSAttributedStringb_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    result = [a2 objectForKeyedSubscript:*(a1 + 32)];
    if (result)
    {
      v9 = **(a1 + 48);
      if (*(*(a1 + 48) + 8) != v9)
      {
        v10 = 0;
        while (1)
        {
          result = [a2 objectForKeyedSubscript:*(v9 + 8 * v10)];
          if (result)
          {
            break;
          }

          ++v10;
          v9 = **(a1 + 48);
          if (v10 >= (*(*(a1 + 48) + 8) - v9) >> 3)
          {
            return result;
          }
        }

        result = [a2 objectForKeyedSubscript:*(a1 + 32)];
        *(*(*(a1 + 40) + 8) + 40) = result;
        *a5 = 1;
      }
    }
  }

  return result;
}

void **___ZL29getLLMTokenAttrDescriptionMapv_block_invoke()
{
  v698 = *MEMORY[0x1E69E9840];
  v686 = &EMPTY_ARG;
  v0 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(-1, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v0 + 3, 0, 0, 0);
  __src = getkQPParseAttributeKeywordKey();
  v686 = &QUPP_ARG_SEARCH_TERM;
  v1 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(1, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v1 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKeywordKey();
  v686 = &QUPP_ARG_SEARCH_TERM_OPTIONAL;
  v2 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(73, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v2 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v3 = getkQPParseAttributeLocationKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeLocationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeLocationKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL40getkQPParseAttributeLocationKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    ParserLibrary = QueryParserLibrary();
    v5 = dlsym(ParserLibrary, "kQPParseAttributeLocationKey");
    *(v690[1] + 3) = v5;
    getkQPParseAttributeLocationKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v3 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v3)
  {
    v565 = [MEMORY[0x1E696AAA8] currentHandler];
    [v565 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeLocationKey()") description:{@"PRLLMParse.mm", 30, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v3;
  v686 = &QUPP_ARG_LOCATION;
  v6 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(5, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v6 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeDateKey();
  v686 = &QUPP_ARG_TIME;
  v7 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(8, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v7 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v8 = getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL44getkQPParseAttributeFlightActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v9 = QueryParserLibrary();
    v10 = dlsym(v9, "kQPParseAttributeFlightActionKey");
    *(v690[1] + 3) = v10;
    getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v8 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v8)
  {
    v566 = [MEMORY[0x1E696AAA8] currentHandler];
    [v566 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightActionKey()") description:{@"PRLLMParse.mm", 34, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v8;
  v686 = &QUPP_ARG_EVENT_TYPE_FLIGHT;
  v11 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(15, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v11 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v12 = getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL43getkQPParseAttributeHotelActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v13 = QueryParserLibrary();
    v14 = dlsym(v13, "kQPParseAttributeHotelActionKey");
    *(v690[1] + 3) = v14;
    getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v12 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v12)
  {
    v567 = [MEMORY[0x1E696AAA8] currentHandler];
    [v567 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeHotelActionKey()") description:{@"PRLLMParse.mm", 35, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v12;
  v686 = &QUPP_ARG_EVENT_TYPE_HOTEL;
  v15 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(16, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v15 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v16 = getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL48getkQPParseAttributeRestaurantActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v17 = QueryParserLibrary();
    v18 = dlsym(v17, "kQPParseAttributeRestaurantActionKey");
    *(v690[1] + 3) = v18;
    getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v16 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v16)
  {
    v568 = [MEMORY[0x1E696AAA8] currentHandler];
    [v568 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRestaurantActionKey()") description:{@"PRLLMParse.mm", 36, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v16;
  v686 = &QUPP_ARG_EVENT_TYPE_RESTAURANT;
  v19 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(17, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v19 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v20 = getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeAppointmentActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v21 = QueryParserLibrary();
    v22 = dlsym(v21, "kQPParseAttributeAppointmentActionKey");
    *(v690[1] + 3) = v22;
    getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v20 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v20)
  {
    v569 = [MEMORY[0x1E696AAA8] currentHandler];
    [v569 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAppointmentActionKey()") description:{@"PRLLMParse.mm", 37, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v20;
  v686 = &QUPP_ARG_EVENT_TYPE_APPOINTMENT;
  v23 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(80, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v23 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v24 = getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL43getkQPParseAttributePartyActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v25 = QueryParserLibrary();
    v26 = dlsym(v25, "kQPParseAttributePartyActionKey");
    *(v690[1] + 3) = v26;
    getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v24 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v24)
  {
    v570 = [MEMORY[0x1E696AAA8] currentHandler];
    [v570 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributePartyActionKey()") description:{@"PRLLMParse.mm", 38, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v24;
  v686 = &QUPP_ARG_EVENT_TYPE_PARTY;
  v27 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(81, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v27 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v28 = getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL53getkQPParseAttributeTicketTransportActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v29 = QueryParserLibrary();
    v30 = dlsym(v29, "kQPParseAttributeTicketTransportActionKey");
    *(v690[1] + 3) = v30;
    getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v28 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v28)
  {
    v571 = [MEMORY[0x1E696AAA8] currentHandler];
    [v571 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTicketTransportActionKey()") description:{@"PRLLMParse.mm", 39, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v28;
  v686 = &QUPP_ARG_EVENT_TYPE_TICKET_TRANSPORT;
  v31 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(82, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v31 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v32 = getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeCarRentalActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v33 = QueryParserLibrary();
    v34 = dlsym(v33, "kQPParseAttributeCarRentalActionKey");
    *(v690[1] + 3) = v34;
    getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v32 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v32)
  {
    v572 = [MEMORY[0x1E696AAA8] currentHandler];
    [v572 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeCarRentalActionKey()") description:{@"PRLLMParse.mm", 40, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v32;
  v686 = &QUPP_ARG_EVENT_TYPE_CAR_RENTAL;
  v35 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(83, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v35 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v36 = getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL51getkQPParseAttributeShippingOrderActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v37 = QueryParserLibrary();
    v38 = dlsym(v37, "kQPParseAttributeShippingOrderActionKey");
    *(v690[1] + 3) = v38;
    getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v36 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v36)
  {
    v573 = [MEMORY[0x1E696AAA8] currentHandler];
    [v573 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeShippingOrderActionKey()") description:{@"PRLLMParse.mm", 41, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v36;
  v686 = &QUPP_ARG_EVENT_TYPE_SHIPPING_ORDER;
  v39 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(211, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v39 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeCardActionKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_CARD;
  v40 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(84, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v40 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindMessageKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_MESSAGE;
  v41 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(19, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v41 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindMessageKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_MESSAGE;
  v42 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(106, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v42 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhotoKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_PHOTO;
  v43 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(21, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v43 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhotoKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_PHOTO;
  v44 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(108, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v44 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v45 = getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeFavoritedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v46 = QueryParserLibrary();
    v47 = dlsym(v46, "kQPParseAttributeFavoritedActionKey");
    *(v690[1] + 3) = v47;
    getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v45 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v45)
  {
    v574 = [MEMORY[0x1E696AAA8] currentHandler];
    [v574 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFavoritedActionKey()") description:{@"PRLLMParse.mm", 45, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v45;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_FAVORITED;
  v48 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(41, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v48 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v49 = getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL44getkQPParseAttributeHiddenActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v50 = QueryParserLibrary();
    v51 = dlsym(v50, "kQPParseAttributeHiddenActionKey");
    *(v690[1] + 3) = v51;
    getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v49 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v49)
  {
    v575 = [MEMORY[0x1E696AAA8] currentHandler];
    [v575 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeHiddenActionKey()") description:{@"PRLLMParse.mm", 46, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v49;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_HIDDEN;
  v52 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(42, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v52 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v53 = getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeForwardedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v54 = QueryParserLibrary();
    v55 = dlsym(v54, "kQPParseAttributeForwardedActionKey");
    *(v690[1] + 3) = v55;
    getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v53 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v53)
  {
    v576 = [MEMORY[0x1E696AAA8] currentHandler];
    [v576 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeForwardedActionKey()") description:{@"PRLLMParse.mm", 47, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v53;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_FORWARDED;
  v56 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(44, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v56 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeSharedActionKey();
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_SHARED;
  v57 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(52, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v57 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeSharedActionKey();
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_DELETED;
  v58 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(54, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v58 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v59 = getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL38getkQPParseAttributeUnreadKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v60 = QueryParserLibrary();
    v61 = dlsym(v60, "kQPParseAttributeUnreadKey");
    *(v690[1] + 3) = v61;
    getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v59 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v59)
  {
    v577 = [MEMORY[0x1E696AAA8] currentHandler];
    [v577 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeUnreadKey()") description:{@"PRLLMParse.mm", 50, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v59;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_UNREAD;
  v62 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(55, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v62 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v63 = getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL46getkQPParseAttributeAcceptedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v64 = QueryParserLibrary();
    v65 = dlsym(v64, "kQPParseAttributeAcceptedActionKey");
    *(v690[1] + 3) = v65;
    getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v63 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v63)
  {
    v578 = [MEMORY[0x1E696AAA8] currentHandler];
    [v578 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAcceptedActionKey()") description:{@"PRLLMParse.mm", 51, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v63;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_ACCEPTED;
  v66 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(56, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v66 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v67 = getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL46getkQPParseAttributeDeclinedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v68 = QueryParserLibrary();
    v69 = dlsym(v68, "kQPParseAttributeDeclinedActionKey");
    *(v690[1] + 3) = v69;
    getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v67 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v67)
  {
    v579 = [MEMORY[0x1E696AAA8] currentHandler];
    [v579 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDeclinedActionKey()") description:{@"PRLLMParse.mm", 52, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v67;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_DECLINED;
  v70 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(57, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v70 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v71 = getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL43getkQPParseAttributeMaybeActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v72 = QueryParserLibrary();
    v73 = dlsym(v72, "kQPParseAttributeMaybeActionKey");
    *(v690[1] + 3) = v73;
    getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v71 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v71)
  {
    v580 = [MEMORY[0x1E696AAA8] currentHandler];
    [v580 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeMaybeActionKey()") description:{@"PRLLMParse.mm", 53, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v71;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_MAYBE;
  v74 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(58, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v74 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v75 = getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL41getkQPParseAttributeTimeStartKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v76 = QueryParserLibrary();
    v77 = dlsym(v76, "kQPParseAttributeTimeStartKey");
    *(v690[1] + 3) = v77;
    getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v75 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v75)
  {
    v581 = [MEMORY[0x1E696AAA8] currentHandler];
    [v581 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeStartKey()") description:{@"PRLLMParse.mm", 54, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v75;
  v686 = &QUPP_ARG_TIME_START;
  v78 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(9, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v78 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v79 = getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL39getkQPParseAttributeTimeEndKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v80 = QueryParserLibrary();
    v81 = dlsym(v80, "kQPParseAttributeTimeEndKey");
    *(v690[1] + 3) = v81;
    getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v79 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v79)
  {
    v582 = [MEMORY[0x1E696AAA8] currentHandler];
    [v582 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeEndKey()") description:{@"PRLLMParse.mm", 55, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v79;
  v686 = &QUPP_ARG_TIME_END;
  v82 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(10, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v82 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v83 = getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL43getkQPParseAttributeTimeCreatedKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v84 = QueryParserLibrary();
    v85 = dlsym(v84, "kQPParseAttributeTimeCreatedKey");
    *(v690[1] + 3) = v85;
    getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v83 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v83)
  {
    v583 = [MEMORY[0x1E696AAA8] currentHandler];
    [v583 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeCreatedKey()") description:{@"PRLLMParse.mm", 56, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v83;
  v686 = &QUPP_ARG_TIME_CREATED;
  v86 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(11, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v86 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v87 = getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL44getkQPParseAttributeTimeModifiedKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v88 = QueryParserLibrary();
    v89 = dlsym(v88, "kQPParseAttributeTimeModifiedKey");
    *(v690[1] + 3) = v89;
    getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v87 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v87)
  {
    v584 = [MEMORY[0x1E696AAA8] currentHandler];
    [v584 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeModifiedKey()") description:{@"PRLLMParse.mm", 57, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v87;
  v686 = &QUPP_ARG_TIME_MODIFIED;
  v90 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(12, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v90 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v91 = getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL46getkQPParseAttributeTimeLastOpenedKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v92 = QueryParserLibrary();
    v93 = dlsym(v92, "kQPParseAttributeTimeLastOpenedKey");
    *(v690[1] + 3) = v93;
    getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v91 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v91)
  {
    v585 = [MEMORY[0x1E696AAA8] currentHandler];
    [v585 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTimeLastOpenedKey()") description:{@"PRLLMParse.mm", 58, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v91;
  v686 = &QUPP_ARG_TIME_LAST_OPENED;
  v94 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(13, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v94 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v95 = getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL41getkQPParseAttributeEventKindKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v96 = QueryParserLibrary();
    v97 = dlsym(v96, "kQPParseAttributeEventKindKey");
    *(v690[1] + 3) = v97;
    getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v95 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v95)
  {
    v586 = [MEMORY[0x1E696AAA8] currentHandler];
    [v586 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeEventKindKey()") description:{@"PRLLMParse.mm", 74, @"%s", dlerror()}];
    goto LABEL_486;
  }

  v692 = *v95;
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v98 = getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL48getkQPParseAttributeGenericEventKindKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v99 = QueryParserLibrary();
    v100 = dlsym(v99, "kQPParseAttributeGenericEventKindKey");
    *(v690[1] + 3) = v100;
    getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v98 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v98)
  {
    v587 = [MEMORY[0x1E696AAA8] currentHandler];
    [v587 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeGenericEventKindKey()") description:{@"PRLLMParse.mm", 75, @"%s", dlerror()}];
    goto LABEL_486;
  }

  v693 = *v98;
  v686 = &QUPP_ARG_EVENT_TYPE;
  v101 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(14, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v101 + 3, &v692, &__src, 2uLL);
  __src = getkQPParseAttributeKindDocumentKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_DOCUMENT;
  v102 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(18, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v102 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindDocumentKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_DOCUMENT;
  v103 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(105, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v103 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNotesKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_NOTE;
  v104 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(20, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v104 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNotesKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_NOTE;
  v105 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(107, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v105 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindReminderKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_REMINDER;
  v106 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(22, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v106 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindReminderKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_REMINDER;
  v107 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(109, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v107 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVideoKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_VIDEO;
  v108 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(23, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v108 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVideoKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_VIDEO;
  v109 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(110, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v109 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindWebsiteKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_WEBSITE;
  v110 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(24, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v110 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindWebsiteKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_WEBSITE;
  v111 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(111, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v111 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindKeynoteKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_KEYNOTE;
  v112 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(26, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v112 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindKeynoteKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_KEYNOTE;
  v113 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(113, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v113 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPagesKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_PAGES;
  v114 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(27, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v114 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPagesKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_PAGES;
  v115 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(114, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v115 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNumbersKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_NUMBERS;
  v116 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(28, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v116 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNumbersKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_NUMBERS;
  v117 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(115, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v117 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhotoAlbumKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_PHOTO_ALBUM;
  v118 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(30, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v118 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhotoAlbumKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_PHOTO_ALBUM;
  v119 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(117, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v119 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindMemoryKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_MEMORY;
  v120 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(31, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v120 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindMemoryKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_MEMORY;
  v121 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(118, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v121 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindConversationKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_CONVERSATION;
  v122 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(32, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v122 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindConversationKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_CONVERSATION;
  v123 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(119, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v123 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNotesFolderKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_NOTE_FOLDER;
  v124 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(33, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v124 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindNotesFolderKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_NOTE_FOLDER;
  v125 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(120, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v125 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindReminderListKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_REMINDER_LIST;
  v126 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(34, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v126 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindReminderListKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_REMINDER_LIST;
  v127 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(121, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v127 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v128 = getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL45getkQPParseAttributeArchiveActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v129 = QueryParserLibrary();
    v130 = dlsym(v129, "kQPParseAttributeArchiveActionKey");
    *(v690[1] + 3) = v130;
    getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v128 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v128)
  {
    v588 = [MEMORY[0x1E696AAA8] currentHandler];
    [v588 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeArchiveActionKey()") description:{@"PRLLMParse.mm", 72, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v128;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_ARCHIVED;
  v131 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(36, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v131 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v132 = getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL48getkQPParseAttributeBookmarkedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v133 = QueryParserLibrary();
    v134 = dlsym(v133, "kQPParseAttributeBookmarkedActionKey");
    *(v690[1] + 3) = v134;
    getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v132 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v132)
  {
    v589 = [MEMORY[0x1E696AAA8] currentHandler];
    [v589 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeBookmarkedActionKey()") description:{@"PRLLMParse.mm", 73, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v132;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_BOOKMARKED;
  v135 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(37, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v135 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v136 = getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeUserCreatedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v137 = QueryParserLibrary();
    v138 = dlsym(v137, "kQPParseAttributeUserCreatedActionKey");
    *(v690[1] + 3) = v138;
    getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v136 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v136)
  {
    v590 = [MEMORY[0x1E696AAA8] currentHandler];
    [v590 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeUserCreatedActionKey()") description:{@"PRLLMParse.mm", 76, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v136;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_CREATED;
  v139 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(38, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v139 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v140 = getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL43getkQPParseAttributeDraftActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v141 = QueryParserLibrary();
    v142 = dlsym(v141, "kQPParseAttributeDraftActionKey");
    *(v690[1] + 3) = v142;
    getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v140 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v140)
  {
    v591 = [MEMORY[0x1E696AAA8] currentHandler];
    [v591 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDraftActionKey()") description:{@"PRLLMParse.mm", 77, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v140;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_DRAFT;
  v143 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(39, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v143 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v144 = getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL50getkQPParseAttributeUserModifiedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v145 = QueryParserLibrary();
    v146 = dlsym(v145, "kQPParseAttributeUserModifiedActionKey");
    *(v690[1] + 3) = v146;
    getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v144 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v144)
  {
    v592 = [MEMORY[0x1E696AAA8] currentHandler];
    [v592 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeUserModifiedActionKey()") description:{@"PRLLMParse.mm", 78, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v144;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_EDITED;
  v147 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(40, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v147 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeFlaggedActionKey();
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_FLAGGED;
  v148 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(43, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v148 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v149 = getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL42getkQPParseAttributeJunkActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v150 = QueryParserLibrary();
    v151 = dlsym(v150, "kQPParseAttributeJunkActionKey");
    *(v690[1] + 3) = v151;
    getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v149 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v149)
  {
    v593 = [MEMORY[0x1E696AAA8] currentHandler];
    [v593 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeJunkActionKey()") description:{@"PRLLMParse.mm", 80, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v149;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_JUNK;
  v152 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(45, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v152 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v153 = getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL45getkQPParseAttributePrintedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v154 = QueryParserLibrary();
    v155 = dlsym(v154, "kQPParseAttributePrintedActionKey");
    *(v690[1] + 3) = v155;
    getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v153 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v153)
  {
    v594 = [MEMORY[0x1E696AAA8] currentHandler];
    [v594 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributePrintedActionKey()") description:{@"PRLLMParse.mm", 88, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v153;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_PRINTED;
  v156 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(46, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v156 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v157 = getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL42getkQPParseAttributeReadActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v158 = QueryParserLibrary();
    v159 = dlsym(v158, "kQPParseAttributeReadActionKey");
    *(v690[1] + 3) = v159;
    getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v157 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v157)
  {
    v595 = [MEMORY[0x1E696AAA8] currentHandler];
    [v595 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeReadActionKey()") description:{@"PRLLMParse.mm", 89, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v157;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_READ;
  v160 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(47, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v160 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v161 = getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL46getkQPParseAttributeReceivedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v162 = QueryParserLibrary();
    v163 = dlsym(v162, "kQPParseAttributeReceivedActionKey");
    *(v690[1] + 3) = v163;
    getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v161 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v161)
  {
    v596 = [MEMORY[0x1E696AAA8] currentHandler];
    [v596 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeReceivedActionKey()") description:{@"PRLLMParse.mm", 90, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v161;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_RECEIVED;
  v164 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(48, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v164 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v165 = getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL45getkQPParseAttributeRepliedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v166 = QueryParserLibrary();
    v167 = dlsym(v166, "kQPParseAttributeRepliedActionKey");
    *(v690[1] + 3) = v167;
    getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v165 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v165)
  {
    v597 = [MEMORY[0x1E696AAA8] currentHandler];
    [v597 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRepliedActionKey()") description:{@"PRLLMParse.mm", 91, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v165;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_REPLIED;
  v168 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(49, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v168 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v169 = getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL42getkQPParseAttributeSentActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v170 = QueryParserLibrary();
    v171 = dlsym(v170, "kQPParseAttributeSentActionKey");
    *(v690[1] + 3) = v171;
    getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v169 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v169)
  {
    v598 = [MEMORY[0x1E696AAA8] currentHandler];
    [v598 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSentActionKey()") description:{@"PRLLMParse.mm", 92, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v169;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_SENT;
  v172 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(51, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v172 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeFlaggedActionKey();
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_TAGGED;
  v173 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(53, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v173 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v174 = getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL41getkQPParseAttributeDueActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v175 = QueryParserLibrary();
    v176 = dlsym(v175, "kQPParseAttributeDueActionKey");
    *(v690[1] + 3) = v176;
    getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v174 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v174)
  {
    v599 = [MEMORY[0x1E696AAA8] currentHandler];
    [v599 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDueActionKey()") description:{@"PRLLMParse.mm", 81, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v174;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_DUE;
  v177 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(59, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v177 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v178 = getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeCompletedActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v179 = QueryParserLibrary();
    v180 = dlsym(v179, "kQPParseAttributeCompletedActionKey");
    *(v690[1] + 3) = v180;
    getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v178 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v178)
  {
    v600 = [MEMORY[0x1E696AAA8] currentHandler];
    [v600 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeCompletedActionKey()") description:{@"PRLLMParse.mm", 82, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v178;
  v686 = &QUPP_ARG_APP_ENTITY_STATUS_COMPLETED;
  v181 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(60, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v181 + 3, &__src, &p_src, 1uLL);
  v686 = getkQPParseAttributeGroundedPersonKey();
  v687 = getkQPParseAttributeTaggedPersonKey();
  v688 = getkQPParseAttributeSenderKey();
  v689 = getkQPParseAttributeSenderHandleKey();
  v690 = getkQPParseAttributeRecipientKey();
  v691 = getkQPParseAttributeRecipientHandleKey();
  __src = &QUPP_ARG_PERSON;
  v182 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(64, &__src);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v182 + 3, &v686, &v692, 6uLL);
  v686 = getkQPParseAttributeSenderKey();
  v687 = getkQPParseAttributeSenderHandleKey();
  __src = &QUPP_ARG_PERSON_SENDER;
  v183 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(65, &__src);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v183 + 3, &v686, &v688, 2uLL);
  v686 = getkQPParseAttributeRecipientKey();
  v687 = getkQPParseAttributeRecipientHandleKey();
  __src = &QUPP_ARG_PERSON_RECEIVER;
  v184 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(66, &__src);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v184 + 3, &v686, &v688, 2uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v185 = getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL44getkQPParseAttributeAttachedKindKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v186 = QueryParserLibrary();
    v187 = dlsym(v186, "kQPParseAttributeAttachedKindKey");
    *(v690[1] + 3) = v187;
    getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v185 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v185)
  {
    v601 = [MEMORY[0x1E696AAA8] currentHandler];
    [v601 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAttachedKindKey()") description:{@"PRLLMParse.mm", 94, @"%s", dlerror()}];
    goto LABEL_486;
  }

  v692 = *v185;
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v188 = getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL42getkQPParseAttributeAttachmentKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v189 = QueryParserLibrary();
    v190 = dlsym(v189, "kQPParseAttributeAttachmentKey");
    *(v690[1] + 3) = v190;
    getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v188 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v188)
  {
    v602 = [MEMORY[0x1E696AAA8] currentHandler];
    [v602 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAttachmentKey()") description:{@"PRLLMParse.mm", 95, @"%s", dlerror()}];
    goto LABEL_486;
  }

  v693 = *v188;
  v686 = &QUPP_ARG_ATTACHMENT_TYPE;
  v191 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(67, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v191 + 3, &v692, &__src, 2uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v192 = getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL46getkQPParseAttributeTagColorActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v193 = QueryParserLibrary();
    v194 = dlsym(v193, "kQPParseAttributeTagColorActionKey");
    *(v690[1] + 3) = v194;
    getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v192 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v192)
  {
    v603 = [MEMORY[0x1E696AAA8] currentHandler];
    [v603 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTagColorActionKey()") description:{@"PRLLMParse.mm", 96, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v192;
  v686 = &QUPP_ARG_TAG_NAME;
  v195 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(68, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v195 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v196 = getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeFlagColorActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v197 = QueryParserLibrary();
    v198 = dlsym(v197, "kQPParseAttributeFlagColorActionKey");
    *(v690[1] + 3) = v198;
    getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v196 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v196)
  {
    v604 = [MEMORY[0x1E696AAA8] currentHandler];
    [v604 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlagColorActionKey()") description:{@"PRLLMParse.mm", 97, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v196;
  v686 = &QUPP_ARG_FLAG_COLOR;
  v199 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(69, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v199 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v200 = getkQPParseAttributeMediaKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeMediaKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeMediaKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL37getkQPParseAttributeMediaKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v201 = QueryParserLibrary();
    v202 = dlsym(v201, "kQPParseAttributeMediaKey");
    *(v690[1] + 3) = v202;
    getkQPParseAttributeMediaKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v200 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v200)
  {
    v605 = [MEMORY[0x1E696AAA8] currentHandler];
    [v605 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeMediaKey()") description:{@"PRLLMParse.mm", 105, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v200;
  v686 = &QUPP_ARG_MEDIA_TYPE;
  v203 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(70, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v203 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v204 = getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL55getkQPParseAttributeFlightDepartureLocationKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v205 = QueryParserLibrary();
    v206 = dlsym(v205, "kQPParseAttributeFlightDepartureLocationKey");
    *(v690[1] + 3) = v206;
    getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v204 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v204)
  {
    v606 = [MEMORY[0x1E696AAA8] currentHandler];
    [v606 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightDepartureLocationKey()") description:{@"PRLLMParse.mm", 98, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v204;
  v686 = &QUPP_ARG_LOCATION_DEPARTURE;
  v207 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(6, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v207 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v208 = getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL53getkQPParseAttributeFlightArrivalLocationKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v209 = QueryParserLibrary();
    v210 = dlsym(v209, "kQPParseAttributeFlightArrivalLocationKey");
    *(v690[1] + 3) = v210;
    getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v208 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v208)
  {
    v607 = [MEMORY[0x1E696AAA8] currentHandler];
    [v607 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightArrivalLocationKey()") description:{@"PRLLMParse.mm", 99, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v208;
  v686 = &QUPP_ARG_LOCATION_ARRIVAL;
  v211 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(7, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v211 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindEmailKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_EMAIL;
  v212 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(25, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v212 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindEmailKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_EMAIL;
  v213 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(112, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v213 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindCalendarEventKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_CALENDAR_EVENT;
  v214 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(29, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v214 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindCalendarEventKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_CALENDAR_EVENT;
  v215 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(116, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v215 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindContactKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_CONTACT;
  v216 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(35, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v216 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindContactKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_CONTACT;
  v217 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(122, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v217 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeEarliestActionKey();
  v686 = &QUPP_ARG_SORT_ORDER_NEXT;
  v218 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(61, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v218 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeLatestActionKey();
  v686 = &QUPP_ARG_SORT_ORDER_LAST;
  v219 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(62, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v219 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v220 = getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL40getkQPParseAttributeKindSongKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v221 = QueryParserLibrary();
    v222 = dlsym(v221, "kQPParseAttributeKindSongKey");
    *(v690[1] + 3) = v222;
    getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v220 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v220)
  {
    v608 = [MEMORY[0x1E696AAA8] currentHandler];
    [v608 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindSongKey()") description:{@"PRLLMParse.mm", 118, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v220;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_SONG;
  v223 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(85, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v223 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v224 = getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL41getkQPParseAttributeKindAlbumKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v225 = QueryParserLibrary();
    v226 = dlsym(v225, "kQPParseAttributeKindAlbumKey");
    *(v690[1] + 3) = v226;
    getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v224 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v224)
  {
    v609 = [MEMORY[0x1E696AAA8] currentHandler];
    [v609 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindAlbumKey()") description:{@"PRLLMParse.mm", 106, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v224;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_ALBUM;
  v227 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(86, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v227 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v228 = getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL42getkQPParseAttributeKindArtistKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v229 = QueryParserLibrary();
    v230 = dlsym(v229, "kQPParseAttributeKindArtistKey");
    *(v690[1] + 3) = v230;
    getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v228 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v228)
  {
    v610 = [MEMORY[0x1E696AAA8] currentHandler];
    [v610 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindArtistKey()") description:{@"PRLLMParse.mm", 108, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v228;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_ARTIST;
  v231 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(87, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v231 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v232 = getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL44getkQPParseAttributeKindPlaylistKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v233 = QueryParserLibrary();
    v234 = dlsym(v233, "kQPParseAttributeKindPlaylistKey");
    *(v690[1] + 3) = v234;
    getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v232 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v232)
  {
    v611 = [MEMORY[0x1E696AAA8] currentHandler];
    [v611 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPlaylistKey()") description:{@"PRLLMParse.mm", 113, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v232;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_PLAYLIST;
  v235 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(88, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v235 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v236 = getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL43getkQPParseAttributeKindPodcastKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v237 = QueryParserLibrary();
    v238 = dlsym(v237, "kQPParseAttributeKindPodcastKey");
    *(v690[1] + 3) = v238;
    getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v236 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v236)
  {
    v612 = [MEMORY[0x1E696AAA8] currentHandler];
    [v612 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPodcastKey()") description:{@"PRLLMParse.mm", 114, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v236;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_PODCAST;
  v239 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(89, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v239 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v240 = getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL40getkQPParseAttributeKindShowKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v241 = QueryParserLibrary();
    v242 = dlsym(v241, "kQPParseAttributeKindShowKey");
    *(v690[1] + 3) = v242;
    getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v240 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v240)
  {
    v613 = [MEMORY[0x1E696AAA8] currentHandler];
    [v613 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindShowKey()") description:{@"PRLLMParse.mm", 117, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v240;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_SHOW;
  v243 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(90, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v243 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v244 = getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL41getkQPParseAttributeKindMovieKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v245 = QueryParserLibrary();
    v246 = dlsym(v245, "kQPParseAttributeKindMovieKey");
    *(v690[1] + 3) = v246;
    getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v244 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v244)
  {
    v614 = [MEMORY[0x1E696AAA8] currentHandler];
    [v614 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMovieKey()") description:{@"PRLLMParse.mm", 119, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v244;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_MOVIE;
  v247 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(91, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v247 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v248 = getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL43getkQPParseAttributeKindArticleKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v249 = QueryParserLibrary();
    v250 = dlsym(v249, "kQPParseAttributeKindArticleKey");
    *(v690[1] + 3) = v250;
    getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v248 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v248)
  {
    v615 = [MEMORY[0x1E696AAA8] currentHandler];
    [v615 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindArticleKey()") description:{@"PRLLMParse.mm", 107, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v248;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_ARTICLE;
  v251 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(92, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v251 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v252 = getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL40getkQPParseAttributeKindLinkKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v253 = QueryParserLibrary();
    v254 = dlsym(v253, "kQPParseAttributeKindLinkKey");
    *(v690[1] + 3) = v254;
    getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v252 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v252)
  {
    v616 = [MEMORY[0x1E696AAA8] currentHandler];
    [v616 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindLinkKey()") description:{@"PRLLMParse.mm", 109, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v252;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_LINK;
  v255 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(93, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v255 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v256 = getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL46getkQPParseAttributeKindMusicAlbumKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v257 = QueryParserLibrary();
    v258 = dlsym(v257, "kQPParseAttributeKindMusicAlbumKey");
    *(v690[1] + 3) = v258;
    getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v256 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v256)
  {
    v617 = [MEMORY[0x1E696AAA8] currentHandler];
    [v617 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMusicAlbumKey()") description:{@"PRLLMParse.mm", 111, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v256;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_MUSIC_ALBUM;
  v259 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(100, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v259 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v260 = getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL40getkQPParseAttributeKindNewsKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v261 = QueryParserLibrary();
    v262 = dlsym(v261, "kQPParseAttributeKindNewsKey");
    *(v690[1] + 3) = v262;
    getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v260 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v260)
  {
    v618 = [MEMORY[0x1E696AAA8] currentHandler];
    [v618 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindNewsKey()") description:{@"PRLLMParse.mm", 112, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v260;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_NEWS;
  v263 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(101, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v263 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v264 = getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL39getkQPParseAttributeKindMapKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v265 = QueryParserLibrary();
    v266 = dlsym(v265, "kQPParseAttributeKindMapKey");
    *(v690[1] + 3) = v266;
    getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v264 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v264)
  {
    v619 = [MEMORY[0x1E696AAA8] currentHandler];
    [v619 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMapKey()") description:{@"PRLLMParse.mm", 110, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v264;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_MAP;
  v267 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(102, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v267 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v268 = getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL48getkQPParseAttributeKindRadioStationKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v269 = QueryParserLibrary();
    v270 = dlsym(v269, "kQPParseAttributeKindRadioStationKey");
    *(v690[1] + 3) = v270;
    getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v268 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v268)
  {
    v620 = [MEMORY[0x1E696AAA8] currentHandler];
    [v620 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindRadioStationKey()") description:{@"PRLLMParse.mm", 115, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v268;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_RADIO_STATION;
  v271 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(103, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v271 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v272 = getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL48getkQPParseAttributeTicketShowActionKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v273 = QueryParserLibrary();
    v274 = dlsym(v273, "kQPParseAttributeTicketShowActionKey");
    *(v690[1] + 3) = v274;
    getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v272 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v272)
  {
    v621 = [MEMORY[0x1E696AAA8] currentHandler];
    [v621 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTicketShowActionKey()") description:{@"PRLLMParse.mm", 116, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v272;
  v686 = &QUPP_ARG_EVENT_TYPE_TICKET_SHOW;
  v275 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(79, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v275 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeCardActionKey();
  v686 = &QUPP_ARG_EVENT_TYPE_CARD;
  v276 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(74, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v276 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhoneCallKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_PHONE_CALL;
  v277 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(75, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v277 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindPhoneCallKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_PHONE_CALL;
  v278 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(123, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v278 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVoiceMemoKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_VOICE_MEMOS;
  v279 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(76, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v279 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVoiceMemoKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_VOICE_MEMOS;
  v280 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(124, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v280 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVoiceMailKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_VOICE_MAIL;
  v281 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(77, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v281 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindVoiceMailKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_VOICE_MAIL;
  v282 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(125, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v282 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindWalletPassKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_WALLET_PASS;
  v283 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(98, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v283 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindWalletPassKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_WALLET_PASS;
  v284 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(128, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v284 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindFreeformBoardKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_FREEFORM_BOARD;
  v285 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(99, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v285 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindFreeformBoardKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_FREEFORM_BOARD;
  v286 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(129, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v286 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindJournalKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_JOURNAL;
  v287 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(78, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v287 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindJournalKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_JOURNAL;
  v288 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(126, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v288 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeEarliestActionKey();
  v686 = &QUPP_ARG_TEMPORAL_REFERENCE_FUTURE;
  v289 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(94, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v289 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeLatestActionKey();
  v686 = &QUPP_ARG_TEMPORAL_REFERENCE_PAST;
  v290 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(95, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v290 + 3, &__src, &p_src, 1uLL);
  v686 = getkQPParseAttributeGroundedPersonKey();
  v687 = getkQPParseAttributeTaggedPersonKey();
  v688 = getkQPParseAttributeSenderKey();
  v689 = getkQPParseAttributeSenderHandleKey();
  v690 = getkQPParseAttributeRecipientKey();
  v691 = getkQPParseAttributeRecipientHandleKey();
  __src = &QUPP_ARG_PERSON_SELF;
  v291 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(104, &__src);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v291 + 3, &v686, &v692, 6uLL);
  v686 = &QUPP_ARG_SINGULAR;
  v292 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(96, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v292 + 3, 0, 0, 0);
  v686 = &QUPP_ARG_PLURAL;
  v293 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(97, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v293 + 3, 0, 0, 0);
  v686 = &QUPP_ARG_UNSPECIFIED;
  v294 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(0, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v294 + 3, 0, 0, 0);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v295 = getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL50getkQPParseAttributeSourceTypeDocumentKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v296 = QueryParserLibrary();
    v297 = dlsym(v296, "kQPParseAttributeSourceTypeDocumentKey");
    *(v690[1] + 3) = v297;
    getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v295 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v295)
  {
    v622 = [MEMORY[0x1E696AAA8] currentHandler];
    [v622 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeDocumentKey()") description:{@"PRLLMParse.mm", 135, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v295;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_DOCUMENT;
  v298 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(133, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v298 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v299 = getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeSourceTypeMessageKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v300 = QueryParserLibrary();
    v301 = dlsym(v300, "kQPParseAttributeSourceTypeMessageKey");
    *(v690[1] + 3) = v301;
    getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v299 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v299)
  {
    v623 = [MEMORY[0x1E696AAA8] currentHandler];
    [v623 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeMessageKey()") description:{@"PRLLMParse.mm", 136, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v299;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_MESSAGE;
  v302 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(134, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v302 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v303 = getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL46getkQPParseAttributeSourceTypeNoteKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v304 = QueryParserLibrary();
    v305 = dlsym(v304, "kQPParseAttributeSourceTypeNoteKey");
    *(v690[1] + 3) = v305;
    getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v303 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v303)
  {
    v624 = [MEMORY[0x1E696AAA8] currentHandler];
    [v624 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeNoteKey()") description:{@"PRLLMParse.mm", 137, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v303;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_NOTE;
  v306 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(135, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v306 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v307 = getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeSourceTypePhotoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v308 = QueryParserLibrary();
    v309 = dlsym(v308, "kQPParseAttributeSourceTypePhotoKey");
    *(v690[1] + 3) = v309;
    getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v307 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v307)
  {
    v625 = [MEMORY[0x1E696AAA8] currentHandler];
    [v625 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypePhotoKey()") description:{@"PRLLMParse.mm", 138, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v307;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_PHOTO;
  v310 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(136, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v310 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v311 = getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL50getkQPParseAttributeSourceTypeReminderKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v312 = QueryParserLibrary();
    v313 = dlsym(v312, "kQPParseAttributeSourceTypeReminderKey");
    *(v690[1] + 3) = v313;
    getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v311 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v311)
  {
    v626 = [MEMORY[0x1E696AAA8] currentHandler];
    [v626 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeReminderKey()") description:{@"PRLLMParse.mm", 139, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v311;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_REMINDER;
  v314 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(137, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v314 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v315 = getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeSourceTypeVideoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v316 = QueryParserLibrary();
    v317 = dlsym(v316, "kQPParseAttributeSourceTypeVideoKey");
    *(v690[1] + 3) = v317;
    getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v315 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v315)
  {
    v627 = [MEMORY[0x1E696AAA8] currentHandler];
    [v627 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeVideoKey()") description:{@"PRLLMParse.mm", 140, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v315;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_VIDEO;
  v318 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(138, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v318 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v319 = getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeSourceTypeWebsiteKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v320 = QueryParserLibrary();
    v321 = dlsym(v320, "kQPParseAttributeSourceTypeWebsiteKey");
    *(v690[1] + 3) = v321;
    getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v319 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v319)
  {
    v628 = [MEMORY[0x1E696AAA8] currentHandler];
    [v628 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeWebsiteKey()") description:{@"PRLLMParse.mm", 141, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v319;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_WEBSITE;
  v322 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(139, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v322 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v323 = getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeSourceTypeEmailKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v324 = QueryParserLibrary();
    v325 = dlsym(v324, "kQPParseAttributeSourceTypeEmailKey");
    *(v690[1] + 3) = v325;
    getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v323 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v323)
  {
    v629 = [MEMORY[0x1E696AAA8] currentHandler];
    [v629 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeEmailKey()") description:{@"PRLLMParse.mm", 142, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v323;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_EMAIL;
  v326 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(140, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v326 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v327 = getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeSourceTypeKeynoteKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v328 = QueryParserLibrary();
    v329 = dlsym(v328, "kQPParseAttributeSourceTypeKeynoteKey");
    *(v690[1] + 3) = v329;
    getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v327 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v327)
  {
    v630 = [MEMORY[0x1E696AAA8] currentHandler];
    [v630 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeKeynoteKey()") description:{@"PRLLMParse.mm", 143, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v327;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_KEYNOTE;
  v330 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(141, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v330 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v331 = getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL47getkQPParseAttributeSourceTypePagesKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v332 = QueryParserLibrary();
    v333 = dlsym(v332, "kQPParseAttributeSourceTypePagesKey");
    *(v690[1] + 3) = v333;
    getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v331 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v331)
  {
    v631 = [MEMORY[0x1E696AAA8] currentHandler];
    [v631 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypePagesKey()") description:{@"PRLLMParse.mm", 144, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v331;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_PAGES;
  v334 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(142, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v334 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v335 = getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeSourceTypeNumbersKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v336 = QueryParserLibrary();
    v337 = dlsym(v336, "kQPParseAttributeSourceTypeNumbersKey");
    *(v690[1] + 3) = v337;
    getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v335 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v335)
  {
    v632 = [MEMORY[0x1E696AAA8] currentHandler];
    [v632 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeNumbersKey()") description:{@"PRLLMParse.mm", 145, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v335;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_NUMBERS;
  v338 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(143, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v338 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v339 = getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL55getkQPParseAttributeSourceTypeCalendarEventKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v340 = QueryParserLibrary();
    v341 = dlsym(v340, "kQPParseAttributeSourceTypeCalendarEventKey");
    *(v690[1] + 3) = v341;
    getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v339 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v339)
  {
    v633 = [MEMORY[0x1E696AAA8] currentHandler];
    [v633 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeCalendarEventKey()") description:{@"PRLLMParse.mm", 146, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v339;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_CALENDAR_EVENT;
  v342 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(144, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v342 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v343 = getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v344 = QueryParserLibrary();
    v345 = dlsym(v344, "kQPParseAttributeSourceTypePhotoAlbumKey");
    *(v690[1] + 3) = v345;
    getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v343 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v343)
  {
    v634 = [MEMORY[0x1E696AAA8] currentHandler];
    [v634 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypePhotoAlbumKey()") description:{@"PRLLMParse.mm", 147, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v343;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_PHOTO_ALBUM;
  v346 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(145, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v346 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v347 = getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL48getkQPParseAttributeSourceTypeMemoryKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v348 = QueryParserLibrary();
    v349 = dlsym(v348, "kQPParseAttributeSourceTypeMemoryKey");
    *(v690[1] + 3) = v349;
    getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v347 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v347)
  {
    v635 = [MEMORY[0x1E696AAA8] currentHandler];
    [v635 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeMemoryKey()") description:{@"PRLLMParse.mm", 148, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v347;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_MEMORY;
  v350 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(146, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v350 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v351 = getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL54getkQPParseAttributeSourceTypeConversationKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v352 = QueryParserLibrary();
    v353 = dlsym(v352, "kQPParseAttributeSourceTypeConversationKey");
    *(v690[1] + 3) = v353;
    getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v351 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v351)
  {
    v636 = [MEMORY[0x1E696AAA8] currentHandler];
    [v636 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeConversationKey()") description:{@"PRLLMParse.mm", 149, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v351;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_CONVERSATION;
  v354 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(147, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v354 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v355 = getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeSourceTypeNoteFolderKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v356 = QueryParserLibrary();
    v357 = dlsym(v356, "kQPParseAttributeSourceTypeNoteFolderKey");
    *(v690[1] + 3) = v357;
    getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v355 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v355)
  {
    v637 = [MEMORY[0x1E696AAA8] currentHandler];
    [v637 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeNoteFolderKey()") description:{@"PRLLMParse.mm", 150, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v355;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_NOTE_FOLDER;
  v358 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(148, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v358 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v359 = getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL54getkQPParseAttributeSourceTypeReminderListKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v360 = QueryParserLibrary();
    v361 = dlsym(v360, "kQPParseAttributeSourceTypeReminderListKey");
    *(v690[1] + 3) = v361;
    getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v359 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v359)
  {
    v638 = [MEMORY[0x1E696AAA8] currentHandler];
    [v638 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeReminderListKey()") description:{@"PRLLMParse.mm", 151, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v359;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_REMINDER_LIST;
  v362 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(149, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v362 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v363 = getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeSourceTypeContactKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v364 = QueryParserLibrary();
    v365 = dlsym(v364, "kQPParseAttributeSourceTypeContactKey");
    *(v690[1] + 3) = v365;
    getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v363 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v363)
  {
    v639 = [MEMORY[0x1E696AAA8] currentHandler];
    [v639 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeContactKey()") description:{@"PRLLMParse.mm", 152, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v363;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_CONTACT;
  v366 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(150, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v366 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v367 = getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL51getkQPParseAttributeSourceTypePhoneCallKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v368 = QueryParserLibrary();
    v369 = dlsym(v368, "kQPParseAttributeSourceTypePhoneCallKey");
    *(v690[1] + 3) = v369;
    getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v367 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v367)
  {
    v640 = [MEMORY[0x1E696AAA8] currentHandler];
    [v640 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypePhoneCallKey()") description:{@"PRLLMParse.mm", 153, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v367;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_PHONE_CALL;
  v370 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(151, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v370 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v371 = getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v372 = QueryParserLibrary();
    v373 = dlsym(v372, "kQPParseAttributeSourceTypeVoiceMemosKey");
    *(v690[1] + 3) = v373;
    getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v371 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v371)
  {
    v641 = [MEMORY[0x1E696AAA8] currentHandler];
    [v641 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeVoiceMemosKey()") description:{@"PRLLMParse.mm", 154, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v371;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_VOICE_MEMOS;
  v374 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(152, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v374 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v375 = getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL51getkQPParseAttributeSourceTypeVoiceMailKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v376 = QueryParserLibrary();
    v377 = dlsym(v376, "kQPParseAttributeSourceTypeVoiceMailKey");
    *(v690[1] + 3) = v377;
    getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v375 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v375)
  {
    v642 = [MEMORY[0x1E696AAA8] currentHandler];
    [v642 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeVoiceMailKey()") description:{@"PRLLMParse.mm", 155, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v375;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_VOICE_MAIL;
  v378 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(153, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v378 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v379 = getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeSourceTypeJournalKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v380 = QueryParserLibrary();
    v381 = dlsym(v380, "kQPParseAttributeSourceTypeJournalKey");
    *(v690[1] + 3) = v381;
    getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v379 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v379)
  {
    v643 = [MEMORY[0x1E696AAA8] currentHandler];
    [v643 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeJournalKey()") description:{@"PRLLMParse.mm", 156, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v379;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_JOURNAL;
  v382 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(154, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v382 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v383 = getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeSourceTypeWalletPassKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v384 = QueryParserLibrary();
    v385 = dlsym(v384, "kQPParseAttributeSourceTypeWalletPassKey");
    *(v690[1] + 3) = v385;
    getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v383 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v383)
  {
    v644 = [MEMORY[0x1E696AAA8] currentHandler];
    [v644 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeWalletPassKey()") description:{@"PRLLMParse.mm", 157, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v383;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_WALLET_PASS;
  v386 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(155, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v386 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v387 = getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL55getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v388 = QueryParserLibrary();
    v389 = dlsym(v388, "kQPParseAttributeSourceTypeFreeformBoardKey");
    *(v690[1] + 3) = v389;
    getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v387 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v387)
  {
    v645 = [MEMORY[0x1E696AAA8] currentHandler];
    [v645 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeFreeformBoardKey()") description:{@"PRLLMParse.mm", 158, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v387;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_FREEFORM_BOARD;
  v390 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(156, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v390 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v391 = getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeContainsTypeCalendarKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v392 = QueryParserLibrary();
    v393 = dlsym(v392, "kQPParseAttributeContainsTypeCalendarKey");
    *(v690[1] + 3) = v393;
    getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v391 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v391)
  {
    v646 = [MEMORY[0x1E696AAA8] currentHandler];
    [v646 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeCalendarKey()") description:{@"PRLLMParse.mm", 159, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v391;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_CALENDAR;
  v394 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(158, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v394 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v395 = getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL51getkQPParseAttributeContainsTypeContactKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v396 = QueryParserLibrary();
    v397 = dlsym(v396, "kQPParseAttributeContainsTypeContactKey");
    *(v690[1] + 3) = v397;
    getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v395 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v395)
  {
    v647 = [MEMORY[0x1E696AAA8] currentHandler];
    [v647 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeContactKey()") description:{@"PRLLMParse.mm", 160, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v395;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_CONTACT;
  v398 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(159, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v398 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v399 = getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL56getkQPParseAttributeContainsTypeConversationKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v400 = QueryParserLibrary();
    v401 = dlsym(v400, "kQPParseAttributeContainsTypeConversationKey");
    *(v690[1] + 3) = v401;
    getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v399 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v399)
  {
    v648 = [MEMORY[0x1E696AAA8] currentHandler];
    [v648 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeConversationKey()") description:{@"PRLLMParse.mm", 161, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v399;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_CONVERSATION;
  v402 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(160, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v402 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v403 = getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeContainsTypeDocumentKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v404 = QueryParserLibrary();
    v405 = dlsym(v404, "kQPParseAttributeContainsTypeDocumentKey");
    *(v690[1] + 3) = v405;
    getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v403 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v403)
  {
    v649 = [MEMORY[0x1E696AAA8] currentHandler];
    [v649 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeDocumentKey()") description:{@"PRLLMParse.mm", 162, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v403;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_DOCUMENT;
  v406 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(161, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v406 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v407 = getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeContainsTypeFreeformKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v408 = QueryParserLibrary();
    v409 = dlsym(v408, "kQPParseAttributeContainsTypeFreeformKey");
    *(v690[1] + 3) = v409;
    getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v407 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v407)
  {
    v650 = [MEMORY[0x1E696AAA8] currentHandler];
    [v650 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeFreeformKey()") description:{@"PRLLMParse.mm", 163, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v407;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_FREEFORM;
  v410 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(162, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v410 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v411 = getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL51getkQPParseAttributeContainsTypeJournalKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v412 = QueryParserLibrary();
    v413 = dlsym(v412, "kQPParseAttributeContainsTypeJournalKey");
    *(v690[1] + 3) = v413;
    getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v411 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v411)
  {
    v651 = [MEMORY[0x1E696AAA8] currentHandler];
    [v651 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeJournalKey()") description:{@"PRLLMParse.mm", 164, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v411;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_JOURNAL;
  v414 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(163, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v414 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v415 = getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL51getkQPParseAttributeContainsTypeKeynoteKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v416 = QueryParserLibrary();
    v417 = dlsym(v416, "kQPParseAttributeContainsTypeKeynoteKey");
    *(v690[1] + 3) = v417;
    getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v415 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v415)
  {
    v652 = [MEMORY[0x1E696AAA8] currentHandler];
    [v652 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeKeynoteKey()") description:{@"PRLLMParse.mm", 165, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v415;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_KEYNOTE;
  v418 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(164, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v418 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v419 = getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeContainsTypeMediaKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v420 = QueryParserLibrary();
    v421 = dlsym(v420, "kQPParseAttributeContainsTypeMediaKey");
    *(v690[1] + 3) = v421;
    getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v419 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v419)
  {
    v653 = [MEMORY[0x1E696AAA8] currentHandler];
    [v653 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeMediaKey()") description:{@"PRLLMParse.mm", 166, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v419;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_MEDIA;
  v422 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(165, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v422 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v423 = getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL50getkQPParseAttributeContainsTypeMemoryKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v424 = QueryParserLibrary();
    v425 = dlsym(v424, "kQPParseAttributeContainsTypeMemoryKey");
    *(v690[1] + 3) = v425;
    getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v423 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v423)
  {
    v654 = [MEMORY[0x1E696AAA8] currentHandler];
    [v654 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeMemoryKey()") description:{@"PRLLMParse.mm", 167, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v423;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_MEMORY;
  v426 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(166, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v426 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v427 = getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL48getkQPParseAttributeContainsTypeNoteKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v428 = QueryParserLibrary();
    v429 = dlsym(v428, "kQPParseAttributeContainsTypeNoteKey");
    *(v690[1] + 3) = v429;
    getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v427 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v427)
  {
    v655 = [MEMORY[0x1E696AAA8] currentHandler];
    [v655 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeNoteKey()") description:{@"PRLLMParse.mm", 168, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v427;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_NOTE;
  v430 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(167, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v430 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v431 = getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL54getkQPParseAttributeContainsTypeNoteFolderKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v432 = QueryParserLibrary();
    v433 = dlsym(v432, "kQPParseAttributeContainsTypeNoteFolderKey");
    *(v690[1] + 3) = v433;
    getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v431 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v431)
  {
    v656 = [MEMORY[0x1E696AAA8] currentHandler];
    [v656 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeNoteFolderKey()") description:{@"PRLLMParse.mm", 169, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v431;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_NOTE_FOLDER;
  v434 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(168, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v434 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v435 = getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL51getkQPParseAttributeContainsTypeNumbersKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v436 = QueryParserLibrary();
    v437 = dlsym(v436, "kQPParseAttributeContainsTypeNumbersKey");
    *(v690[1] + 3) = v437;
    getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v435 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v435)
  {
    v657 = [MEMORY[0x1E696AAA8] currentHandler];
    [v657 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeNumbersKey()") description:{@"PRLLMParse.mm", 170, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v435;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_NUMBERS;
  v438 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(169, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v438 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v439 = getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeContainsTypePagesKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v440 = QueryParserLibrary();
    v441 = dlsym(v440, "kQPParseAttributeContainsTypePagesKey");
    *(v690[1] + 3) = v441;
    getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v439 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v439)
  {
    v658 = [MEMORY[0x1E696AAA8] currentHandler];
    [v658 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypePagesKey()") description:{@"PRLLMParse.mm", 171, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v439;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_PAGES;
  v442 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(170, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v442 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v443 = getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeContainsTypePanoramaKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v444 = QueryParserLibrary();
    v445 = dlsym(v444, "kQPParseAttributeContainsTypePanoramaKey");
    *(v690[1] + 3) = v445;
    getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v443 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v443)
  {
    v659 = [MEMORY[0x1E696AAA8] currentHandler];
    [v659 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypePanoramaKey()") description:{@"PRLLMParse.mm", 172, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v443;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_PANORAMA;
  v446 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(171, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v446 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v447 = getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeContainsTypePhotoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v448 = QueryParserLibrary();
    v449 = dlsym(v448, "kQPParseAttributeContainsTypePhotoKey");
    *(v690[1] + 3) = v449;
    getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v447 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v447)
  {
    v660 = [MEMORY[0x1E696AAA8] currentHandler];
    [v660 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypePhotoKey()") description:{@"PRLLMParse.mm", 173, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v447;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_PHOTO;
  v450 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(172, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v450 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v451 = getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL54getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v452 = QueryParserLibrary();
    v453 = dlsym(v452, "kQPParseAttributeContainsTypePhotoAlbumKey");
    *(v690[1] + 3) = v453;
    getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v451 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v451)
  {
    v661 = [MEMORY[0x1E696AAA8] currentHandler];
    [v661 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypePhotoAlbumKey()") description:{@"PRLLMParse.mm", 174, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v451;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_PHOTO_ALBUM;
  v454 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(173, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v454 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v455 = getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL54getkQPParseAttributeContainsTypeScreenshotKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v456 = QueryParserLibrary();
    v457 = dlsym(v456, "kQPParseAttributeContainsTypeScreenshotKey");
    *(v690[1] + 3) = v457;
    getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v455 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v455)
  {
    v662 = [MEMORY[0x1E696AAA8] currentHandler];
    [v662 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeScreenshotKey()") description:{@"PRLLMParse.mm", 175, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v455;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_SCREENSHOT;
  v458 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(174, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v458 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v459 = getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL50getkQPParseAttributeContainsTypeSelfieKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v460 = QueryParserLibrary();
    v461 = dlsym(v460, "kQPParseAttributeContainsTypeSelfieKey");
    *(v690[1] + 3) = v461;
    getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v459 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v459)
  {
    v663 = [MEMORY[0x1E696AAA8] currentHandler];
    [v663 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeSelfieKey()") description:{@"PRLLMParse.mm", 176, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v459;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_SELFIE;
  v462 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(175, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v462 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v463 = getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeContainsTypeSlomoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v464 = QueryParserLibrary();
    v465 = dlsym(v464, "kQPParseAttributeContainsTypeSlomoKey");
    *(v690[1] + 3) = v465;
    getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v463 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v463)
  {
    v664 = [MEMORY[0x1E696AAA8] currentHandler];
    [v664 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeSlomoKey()") description:{@"PRLLMParse.mm", 177, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v463;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_SLOMO;
  v466 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(176, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v466 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v467 = getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL56getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v468 = QueryParserLibrary();
    v469 = dlsym(v468, "kQPParseAttributeContainsTypeSpatialVideoKey");
    *(v690[1] + 3) = v469;
    getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v467 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v467)
  {
    v665 = [MEMORY[0x1E696AAA8] currentHandler];
    [v665 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeSpatialVideoKey()") description:{@"PRLLMParse.mm", 178, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v467;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_SPATIAL_VIDEO;
  v470 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(177, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v470 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v471 = getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL49getkQPParseAttributeContainsTypeVideoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v472 = QueryParserLibrary();
    v473 = dlsym(v472, "kQPParseAttributeContainsTypeVideoKey");
    *(v690[1] + 3) = v473;
    getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v471 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v471)
  {
    v666 = [MEMORY[0x1E696AAA8] currentHandler];
    [v666 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeVideoKey()") description:{@"PRLLMParse.mm", 179, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v471;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_VIDEO;
  v474 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(178, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v474 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v475 = getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL53getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v476 = QueryParserLibrary();
    v477 = dlsym(v476, "kQPParseAttributeContainsTypeVoiceMemoKey");
    *(v690[1] + 3) = v477;
    getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v475 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v475)
  {
    v667 = [MEMORY[0x1E696AAA8] currentHandler];
    [v667 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeVoiceMemoKey()") description:{@"PRLLMParse.mm", 180, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v475;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_VOICE_MEMO;
  v478 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(179, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v478 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v479 = getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL51getkQPParseAttributeContainsTypeWebsiteKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v480 = QueryParserLibrary();
    v481 = dlsym(v480, "kQPParseAttributeContainsTypeWebsiteKey");
    *(v690[1] + 3) = v481;
    getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v479 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v479)
  {
    v668 = [MEMORY[0x1E696AAA8] currentHandler];
    [v668 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeWebsiteKey()") description:{@"PRLLMParse.mm", 181, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v479;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_WEBSITE;
  v482 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(180, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v482 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v483 = getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL52getkQPParseAttributeContainsTypeReminderKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v484 = QueryParserLibrary();
    v485 = dlsym(v484, "kQPParseAttributeContainsTypeReminderKey");
    *(v690[1] + 3) = v485;
    getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v483 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v483)
  {
    v669 = [MEMORY[0x1E696AAA8] currentHandler];
    [v669 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeReminderKey()") description:{@"PRLLMParse.mm", 182, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v483;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_REMINDER;
  v486 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(181, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v486 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v487 = getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL53getkQPParseAttributeContainsTypeVoicemailKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v488 = QueryParserLibrary();
    v489 = dlsym(v488, "kQPParseAttributeContainsTypeVoicemailKey");
    *(v690[1] + 3) = v489;
    getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v487 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v487)
  {
    v670 = [MEMORY[0x1E696AAA8] currentHandler];
    [v670 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeVoicemailKey()") description:{@"PRLLMParse.mm", 183, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v487;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_VOICE_MAIL;
  v490 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(182, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v490 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v491 = getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL50getkQPParseAttributeContainsTypeWalletKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v492 = QueryParserLibrary();
    v493 = dlsym(v492, "kQPParseAttributeContainsTypeWalletKey");
    *(v690[1] + 3) = v493;
    getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v491 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v491)
  {
    v671 = [MEMORY[0x1E696AAA8] currentHandler];
    [v671 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeWalletKey()") description:{@"PRLLMParse.mm", 184, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v491;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_WALLET;
  v494 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(183, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v494 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v495 = getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL44getkQPParseAttributeKindPanoramaKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v496 = QueryParserLibrary();
    v497 = dlsym(v496, "kQPParseAttributeKindPanoramaKey");
    *(v690[1] + 3) = v497;
    getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v495 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v495)
  {
    v672 = [MEMORY[0x1E696AAA8] currentHandler];
    [v672 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPanoramaKey()") description:{@"PRLLMParse.mm", 126, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v495;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_PANORAMA;
  v498 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(184, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v498 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v499 = getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL46getkQPParseAttributeKindScreenshotKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v500 = QueryParserLibrary();
    v501 = dlsym(v500, "kQPParseAttributeKindScreenshotKey");
    *(v690[1] + 3) = v501;
    getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v499 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v499)
  {
    v673 = [MEMORY[0x1E696AAA8] currentHandler];
    [v673 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindScreenshotKey()") description:{@"PRLLMParse.mm", 127, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v499;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_SCREENSHOT;
  v502 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(185, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v502 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v503 = getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL42getkQPParseAttributeKindSelfieKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v504 = QueryParserLibrary();
    v505 = dlsym(v504, "kQPParseAttributeKindSelfieKey");
    *(v690[1] + 3) = v505;
    getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v503 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v503)
  {
    v674 = [MEMORY[0x1E696AAA8] currentHandler];
    [v674 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindSelfieKey()") description:{@"PRLLMParse.mm", 128, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v503;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_SELFIE;
  v506 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(186, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v506 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v507 = getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL41getkQPParseAttributeKindSlomoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v508 = QueryParserLibrary();
    v509 = dlsym(v508, "kQPParseAttributeKindSlomoKey");
    *(v690[1] + 3) = v509;
    getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v507 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v507)
  {
    v675 = [MEMORY[0x1E696AAA8] currentHandler];
    [v675 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindSlomoKey()") description:{@"PRLLMParse.mm", 129, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v507;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_SLOMO;
  v510 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(187, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v510 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v511 = getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL48getkQPParseAttributeKindSpatialVideoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v512 = QueryParserLibrary();
    v513 = dlsym(v512, "kQPParseAttributeKindSpatialVideoKey");
    *(v690[1] + 3) = v513;
    getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v511 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v511)
  {
    v676 = [MEMORY[0x1E696AAA8] currentHandler];
    [v676 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindSpatialVideoKey()") description:{@"PRLLMParse.mm", 130, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v511;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_SPATIAL_VIDEO;
  v514 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(188, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v514 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v515 = getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL45getkQPParseAttributeKindLivePhotoKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v516 = QueryParserLibrary();
    v517 = dlsym(v516, "kQPParseAttributeKindLivePhotoKey");
    *(v690[1] + 3) = v517;
    getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v515 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v515)
  {
    v677 = [MEMORY[0x1E696AAA8] currentHandler];
    [v677 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindLivePhotoKey()") description:{@"PRLLMParse.mm", 131, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v515;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_LIVE_PHOTO;
  v518 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(189, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v518 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v519 = getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL44getkQPParseAttributeKindPortraitKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v520 = QueryParserLibrary();
    v521 = dlsym(v520, "kQPParseAttributeKindPortraitKey");
    *(v690[1] + 3) = v521;
    getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v519 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v519)
  {
    v678 = [MEMORY[0x1E696AAA8] currentHandler];
    [v678 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPortraitKey()") description:{@"PRLLMParse.mm", 132, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v519;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_PORTRAIT;
  v522 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(190, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v522 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v523 = getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL45getkQPParseAttributeKindTimeLapseKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v524 = QueryParserLibrary();
    v525 = dlsym(v524, "kQPParseAttributeKindTimeLapseKey");
    *(v690[1] + 3) = v525;
    getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v523 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v523)
  {
    v679 = [MEMORY[0x1E696AAA8] currentHandler];
    [v679 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindTimeLapseKey()") description:{@"PRLLMParse.mm", 133, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v523;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_TIME_LAPSE;
  v526 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(191, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v526 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v527 = getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL45getkQPParseAttributeKindCinematicKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v528 = QueryParserLibrary();
    v529 = dlsym(v528, "kQPParseAttributeKindCinematicKey");
    *(v690[1] + 3) = v529;
    getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v527 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v527)
  {
    v680 = [MEMORY[0x1E696AAA8] currentHandler];
    [v680 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindCinematicKey()") description:{@"PRLLMParse.mm", 134, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v527;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_CINEMATIC;
  v530 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(192, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v530 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeDateKey();
  v686 = &QUPP_ARG_CONVERSATION_FILTER_TIME;
  v531 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(193, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v531 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindDocumentFolderKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_DOCUMENT_FOLDER;
  v532 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(194, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v532 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindDocumentFolderKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_DOCUMENT_FOLDER;
  v533 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(195, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v533 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v534 = getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL56getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v535 = QueryParserLibrary();
    v536 = dlsym(v535, "kQPParseAttributeSourceTypeDocumentFolderKey");
    *(v690[1] + 3) = v536;
    getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v534 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v534)
  {
    v681 = [MEMORY[0x1E696AAA8] currentHandler];
    [v681 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeDocumentFolderKey()") description:{@"PRLLMParse.mm", 187, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v534;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_DOCUMENT_FOLDER;
  v537 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(196, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v537 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v538 = getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL58getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v539 = QueryParserLibrary();
    v540 = dlsym(v539, "kQPParseAttributeContainsTypeDocumentFolderKey");
    *(v690[1] + 3) = v540;
    getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v538 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v538)
  {
    v682 = [MEMORY[0x1E696AAA8] currentHandler];
    [v682 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeDocumentFolderKey()") description:{@"PRLLMParse.mm", 188, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v538;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_DOCUMENT_FOLDER;
  v541 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(197, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v541 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindGenericFolderKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_GENERIC_FOLDER;
  v542 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(198, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v542 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindGenericFolderKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_GENERIC_FOLDER;
  v543 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(199, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v543 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v544 = getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL55getkQPParseAttributeSourceTypeGenericFolderKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v545 = QueryParserLibrary();
    v546 = dlsym(v545, "kQPParseAttributeSourceTypeGenericFolderKey");
    *(v690[1] + 3) = v546;
    getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v544 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v544)
  {
    v683 = [MEMORY[0x1E696AAA8] currentHandler];
    [v683 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSourceTypeGenericFolderKey()") description:{@"PRLLMParse.mm", 190, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v544;
  v686 = &QUPP_ARG_APP_SOURCE_TYPE_GENERIC_FOLDER;
  v547 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(200, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v547 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v548 = getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL57getkQPParseAttributeContainsTypeGenericFolderKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v549 = QueryParserLibrary();
    v550 = dlsym(v549, "kQPParseAttributeContainsTypeGenericFolderKey");
    *(v690[1] + 3) = v550;
    getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v548 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v548)
  {
    v684 = [MEMORY[0x1E696AAA8] currentHandler];
    [v684 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeContainsTypeGenericFolderKey()") description:{@"PRLLMParse.mm", 191, @"%s", dlerror()}];
    goto LABEL_486;
  }

  __src = *v548;
  v686 = &QUPP_ARG_APP_CONTAINS_TYPE_GENERIC_FOLDER;
  v551 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(201, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v551 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindTabKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_TAB;
  v552 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(202, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v552 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindTabKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_TAB;
  v553 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(203, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v553 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindGroupTabKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_GROUP_TAB;
  v554 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(204, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v554 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindGroupTabKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_GROUP_TAB;
  v555 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(205, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v555 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindAlarmKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_ALARM;
  v556 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(206, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v556 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindAlarmKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_ALARM;
  v557 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(207, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v557 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindTimerKey();
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_TIMER;
  v558 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(208, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v558 + 3, &__src, &p_src, 1uLL);
  __src = getkQPParseAttributeKindTimerKey();
  v686 = &QUPP_ARG_INFERRED_APP_ENTITY_TYPE_TIMER;
  v559 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(209, &v686);
  std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v559 + 3, &__src, &p_src, 1uLL);
  __src = 0;
  p_src = &__src;
  v696 = 0x2020000000;
  v560 = getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr;
  v697 = getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr)
  {
    v686 = MEMORY[0x1E69E9820];
    v687 = 3221225472;
    v688 = ___ZL40getkQPParseAttributeKindBookKeySymbolLocv_block_invoke;
    v689 = &unk_1E8199698;
    v690 = &__src;
    v561 = QueryParserLibrary();
    v562 = dlsym(v561, "kQPParseAttributeKindBookKey");
    *(v690[1] + 3) = v562;
    getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr = *(v690[1] + 3);
    v560 = p_src[3];
  }

  _Block_object_dispose(&__src, 8);
  if (!v560)
  {
    v685 = [MEMORY[0x1E696AAA8] currentHandler];
    [v685 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindBookKey()") description:{@"PRLLMParse.mm", 194, @"%s", dlerror()}];
LABEL_486:
    __break(1u);
  }

  __src = *v560;
  v686 = &QUPP_ARG_APP_ENTITY_TYPE_BOOK;
  v563 = std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(210, &v686);
  return std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(v563 + 3, &__src, &p_src, 1uLL);
}