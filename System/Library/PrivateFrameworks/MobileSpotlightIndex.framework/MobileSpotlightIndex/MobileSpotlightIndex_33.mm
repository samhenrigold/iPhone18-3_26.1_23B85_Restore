uint64_t handleDirStoreOverlay(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = fd_create_protected(*(a1 + 32), "dirStore.overlay", 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0;
  v4 = _fd_acquire_fd(v2, &v71);
  memset(&v70, 0, sizeof(v70));
  v5 = fstat(v4, &v70);
  if (v5 == -1 || !v70.st_size)
  {
    if (v5 == -1)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = 0;
    }

    _fd_release_fd(v3, v4, 0, v71);
    goto LABEL_90;
  }

  _fd_release_fd(v3, v4, 0, v71);
  if (!store_stream_init(&v72, v3, 0))
  {
    v11 = 0xFFFFFFFFLL;
LABEL_90:
    fd_release(v3);
    return v11;
  }

  for (i = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0); ; CFSetAddValue(i, *(*(*v8 + 8 * (vint32_706 - 1)) + 56)))
  {
    vint32_706 = store_stream_read_vint32_706(&v72);
    if (!vint32_706)
    {
      break;
    }

    v8 = *(a1 + 1392);
    if (vint32_706 > *(v8 + 8))
    {
LABEL_92:
      v11 = 0xFFFFFFFFLL;
      goto LABEL_93;
    }
  }

  while (1)
  {
    v10 = store_stream_read_vint32_706(&v72);
    if (!v10)
    {
      break;
    }

    v9 = *(a1 + 1384);
    if (v10 > *(v9 + 8))
    {
      goto LABEL_92;
    }

    CFSetAddValue(i, *(*(*v9 + 8 * (v10 - 1)) + 56));
  }

  v11 = v73;
  if (!v73)
  {
    v64 = v3;
    while (1)
    {
      v12 = store_stream_read_vint32_706(&v72);
      v14 = v12 < 513;
      v15 = v12 < 513 && v12 != 0;
      if (v15 != 1)
      {
        break;
      }

      v16 = v12;
      MEMORY[0x1EEE9AC00](v13);
      v18 = &v58[-v17];
      bzero(&v58[-v17], v19);
      v69 = v58;
      if (v16 >= 1)
      {
        v20 = 0;
        v21 = *(&v74 + 1);
        do
        {
          if (v74 - v21 < 0xB)
          {
            v25 = 0;
            v23 = 0;
            __dst = 0;
            v66 = v75;
            while (1)
            {
              v26 = v74;
              v67 = v25;
              if (v21 + 1 > v74)
              {
                v68 = 0;
                LODWORD(v60) = v72;
                p_dst = &__dst;
                v65 = *(&v73 + 1);
                v62 = 1;
                while (1)
                {
                  v61 = v26 - v21;
                  if (v26 != v21)
                  {
                    memcpy(p_dst, &v66[v21], v61);
                  }

                  v29 = prot_pread(v60, v66, v26, v65);
                  if (v29 == -1)
                  {
                    v21 = v26;
                    *&v74 = v26;
                    *(&v74 + 1) = v26;
                    *(&v73 + 1) = v65;
                    v28 = 0;
                    LODWORD(v73) = *__error();
                    goto LABEL_32;
                  }

                  v65 += v29;
                  v21 = 0;
                  if (!v29)
                  {
                    break;
                  }

                  p_dst += v61;
                  v68 += v61;
                  v26 = v29;
                  v62 -= v61;
                  if (v62 <= v29)
                  {
                    v21 = 0;
                    *(&v73 + 1) = v65;
                    *&v74 = v29;
                    v27 = p_dst;
                    v28 = v62;
                    goto LABEL_31;
                  }
                }

                v74 = 0uLL;
                *(&v73 + 1) = v65;
                v28 = v61;
              }

              else
              {
                v68 = 0;
                v27 = &__dst;
                v28 = 1;
LABEL_31:
                memcpy(v27, &v66[v21], v28);
                v21 += v28;
                *(&v74 + 1) = v21;
              }

LABEL_32:
              if (v28 + v68 != 1)
              {
                break;
              }

              v23 |= (__dst & 0x7F) << v67;
              v25 = (v67 + 7);
              if ((__dst & 0x80) == 0)
              {
                goto LABEL_26;
              }
            }

            v23 = 0;
          }

          else
          {
            v22 = 0;
            v23 = 0;
            do
            {
              v24 = *(v75 + v21++);
              v23 |= (v24 & 0x7F) << v22;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v53 = v22 == 63;
              v22 += 7;
            }

            while (!v53);
            *(&v74 + 1) = v21;
          }

LABEL_26:
          v18[v20++] = v23;
        }

        while (v20 != v16);
      }

      v30 = store_stream_read_vint32_706(&v72);
      if (v30 >= 513)
      {
        v14 = 1;
        break;
      }

      v32 = v30;
      MEMORY[0x1EEE9AC00](v31);
      v34 = &v58[-v33];
      bzero(&v58[-v33], v35);
      if (v32 >= 1)
      {
        v36 = 0;
        v37 = *(&v74 + 1);
        do
        {
          if (v74 - v37 < 0xB)
          {
            v41 = 0;
            v39 = 0;
            __dst = 0;
            v65 = v75;
            while (1)
            {
              v66 = v41;
              if (v37 + 1 > v74)
              {
                v61 = v74;
                v67 = 0;
                v59 = v72;
                v62 = &__dst;
                p_dst = *(&v73 + 1);
                v68 = 1;
                while (1)
                {
                  v60 = v61 - v37;
                  if (v61 != v37)
                  {
                    memcpy(v62, &v65[v37], v60);
                  }

                  v45 = prot_pread(v59, v65, v61, p_dst);
                  if (v45 == -1)
                  {
                    v37 = v61;
                    *&v74 = v61;
                    *(&v74 + 1) = v61;
                    *(&v73 + 1) = p_dst;
                    v46 = __error();
                    v44 = 0;
                    LODWORD(v73) = *v46;
                    goto LABEL_60;
                  }

                  p_dst += v45;
                  v37 = 0;
                  if (!v45)
                  {
                    break;
                  }

                  v62 += v60;
                  v67 += v60;
                  v61 = v45;
                  v68 -= v60;
                  if (v68 <= v45)
                  {
                    v37 = 0;
                    *(&v73 + 1) = p_dst;
                    *&v74 = v45;
                    v42 = v62;
                    v43 = v68;
                    goto LABEL_59;
                  }
                }

                v74 = 0uLL;
                *(&v73 + 1) = p_dst;
                v44 = v60;
              }

              else
              {
                v67 = 0;
                v42 = &__dst;
                v43 = 1;
LABEL_59:
                v68 = v43;
                memcpy(v42, &v65[v37], v43);
                v44 = v68;
                v37 += v68;
                *(&v74 + 1) = v37;
              }

LABEL_60:
              if (v44 + v67 != 1)
              {
                break;
              }

              v39 |= (__dst & 0x7F) << v66;
              v41 = (v66 + 7);
              if ((__dst & 0x80) == 0)
              {
                goto LABEL_54;
              }
            }

            v39 = 0;
          }

          else
          {
            v38 = 0;
            v39 = 0;
            do
            {
              v40 = *(v75 + v37++);
              v39 |= (v40 & 0x7F) << v38;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v53 = v38 == 63;
              v38 += 7;
            }

            while (!v53);
            *(&v74 + 1) = v37;
          }

LABEL_54:
          *&v34[8 * v36++] = v39;
        }

        while (v36 != v32);
      }

      v47 = *(a1 + 1392);
      if (*(v47 + 8))
      {
        v48 = 0;
        do
        {
          if (CFSetContainsValue(i, *(*(*v47 + 8 * v48) + 56)))
          {
            _CIMoveDirectory(*(**(a1 + 1392) + 8 * v48), v16, v18, v32, v34);
          }

          ++v48;
          v47 = *(a1 + 1392);
        }

        while (v48 < *(v47 + 8));
      }

      v49 = *(a1 + 1384);
      if (*(v49 + 8))
      {
        v50 = 0;
        do
        {
          if (CFSetContainsValue(i, *(*(*v49 + 8 * v50) + 56)))
          {
            _CIMoveDirectory(*(**(a1 + 1384) + 8 * v50), v16, v18, v32, v34);
          }

          ++v50;
          v49 = *(a1 + 1384);
        }

        while (v50 < *(v49 + 8));
      }
    }

    v52 = v73;
    store_stream_destroy(&v72);
    v53 = v15 != v14 && v52 == 0;
    if (v53)
    {
      v11 = 0;
      v3 = v64;
    }

    else
    {
      v54 = *(a1 + 1392);
      if (*(v54 + 8))
      {
        v55 = 0;
        do
        {
          if (CFSetContainsValue(i, *(*(*v54 + 8 * v55) + 56)))
          {
            _CIMakeInvalid(*(**(a1 + 1392) + 8 * v55));
          }

          ++v55;
          v54 = *(a1 + 1392);
        }

        while (v55 < *(v54 + 8));
      }

      v56 = *(a1 + 1384);
      v3 = v64;
      if (*(v56 + 8))
      {
        v57 = 0;
        do
        {
          if (CFSetContainsValue(i, *(*(*v56 + 8 * v57) + 56)))
          {
            _CIMakeInvalid(*(**(a1 + 1384) + 8 * v57));
          }

          ++v57;
          v56 = *(a1 + 1384);
        }

        while (v57 < *(v56 + 8));
      }

      if (v52)
      {
        v11 = v52;
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_93:
  fd_release(v3);
  if (i)
  {
    CFRelease(i);
  }

  return v11;
}

uint64_t handleIndexRepair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 2408);
  if (!(v6 | a3))
  {
    return 0;
  }

  v58 = 0;
  v59 = v3;
  v57[0] = v6;
  v57[1] = a3;
  v60 = *(a2 + 144);
  v61 = 0;
  v7 = v6;
  v8 = 0;
  if (*(a1 + 2072) == 1)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 1192);
    v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040EBC759B4uLL);
    if (fcntl(v9, 63) == 1)
    {
      v12 = v9;
      v13 = 2;
    }

    else
    {
      v13 = 0;
      v12 = v9;
    }

    *v11 = fd_create_protected(v12, "journalRepair.1", 536872450, v13);
    v11[1] = v10;
    *(v11 + 4) = db_get_id_for_field(v10, "_kMDItemGroupId");
    *(v11 + 5) = db_get_id_for_field(v10, "_kMDItemBundleID");
    *(v11 + 6) = db_get_id_for_field(v10, "_kMDItemExternalID");
    v7 = *(a1 + 2408);
    v8 = v11;
  }

  v15 = *(a1 + 1192);
  v62 = v8;
  v63 = v15;
  if (v7)
  {
    if (a3)
    {
      v16 = db_clear_docids_setup(v15);
      v56 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v18 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
      LODWORD(v51) = HIDWORD(v18);
      *buf = v18;
      v55 = __PAIR64__(v19, v20);
      v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
      v22 = *(v21 + 312);
      v23 = *(v21 + 224);
      if (v23)
      {
        v23(*(v21 + 288));
      }

      v54 = *buf;
      v53 = v51;
      v52 = v55;
      if (_setjmp(v21))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(valuePtr[0]) = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", valuePtr, 2u);
        }

        *(v21 + 312) = v22;
        CIOnThreadCleanUpReset(v52);
        dropThreadId(v54, 1, add_explicit + 1);
        CICleanUpReset(v54, HIDWORD(v52));
        v24 = 0;
      }

      else
      {
        db_set_host(*(a1 + 1192), a1);
        v28 = *(a1 + 1192);
        if (*v28 != 1685287992)
        {
          v45 = *__error();
          v46 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = *v28;
            LODWORD(valuePtr[0]) = 136315650;
            *(valuePtr + 4) = "db_clear_docids";
            WORD2(valuePtr[1]) = 1024;
            *(&valuePtr[1] + 6) = 414;
            WORD1(valuePtr[2]) = 1024;
            HIDWORD(valuePtr[2]) = v47;
            _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", valuePtr, 0x18u);
          }

          *__error() = v45;
          v48 = __si_assert_copy_extra_332();
          v49 = v48;
          if (v48)
          {
            v50 = v48;
          }

          else
          {
            v50 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 414, v50);
          free(v49);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v29 = db2_clear_docids(*(a1 + 1192), v16, *(a1 + 6592), 1, clear_docid_match_new, v57);
        v56 = 1;
        v30 = threadData[9 * v54 + 1] + 320 * v53;
        *(v30 + 312) = v22;
        v31 = *(v30 + 232);
        if (v31)
        {
          v31(*(v30 + 288));
        }

        dropThreadId(v54, 0, add_explicit + 1);
        v24 = v29;
      }

      if (v56)
      {
        v27 = v24;
      }

      else
      {
        v27 = 0xFFFFFFFFLL;
      }

      db_clear_docids_cleanup(*(a1 + 1192), v16);
    }

    else
    {
      v27 = 0;
    }

    v32 = SICopyProperty(a1, @"database.recoverscantime");
    if (v32)
    {
      v33 = v32;
      valuePtr[0] = 0;
      if (CFNumberGetValue(v32, kCFNumberSInt64Type, valuePtr) && valuePtr[0] > *(a1 + 2408))
      {
        *(a1 + 2408) = valuePtr[0];
      }

      CFRelease(v33);
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    memset(valuePtr, 0, sizeof(valuePtr));
    v51 = *(a1 + 2408);
    v34 = localtime(&v51);
    strftime(valuePtr, 0x100uLL, "%F %T", v34);
    v35 = *__error();
    v36 = _SILogForLogForCategory(11);
    v37 = 2 * (dword_1EBF46AF8 < 4);
    if (os_log_type_enabled(v36, v37))
    {
      *buf = 134219010;
      v65 = a1;
      v66 = 2080;
      v67 = valuePtr;
      v68 = 2048;
      v69 = a3;
      v70 = 1024;
      v71 = HIDWORD(v61);
      v72 = 2048;
      v73 = v58;
      _os_log_impl(&dword_1C278D000, v36, v37, "%p repair - catchup scan time stamp: %s, base: %ld, repair count: %d, remair max: %ld", buf, 0x30u);
    }

    *__error() = v35;
    v26 = v62;
    v25 = v27;
    if (!v62)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v25 = -*(a1 + 2072);
  v26 = v8;
  if (v8)
  {
LABEL_36:
    *(a1 + 6952) = *v26;
    if (*(v26 + 5))
    {
      _MDPlistContainerEndArray();
      _MDPlistContainerEndArray();
      _MDPlistContainerEndContainer();
      mobile_journal_plist(*v26, 0, 0, *(v26 + 5), 0, 0);
      CFRelease(*(v26 + 5));
    }

    v38 = *(v26 + 4);
    if (v38)
    {
      CFRelease(v38);
    }

    free(v26);
  }

LABEL_41:
  if (!v25)
  {
    v39 = *(a1 + 1384);
    if (v39)
    {
      v40 = HIDWORD(v61);
      v41 = *(v39 + 8);
      if (!v41 || (v42 = *(*v39 + 8 * (v41 - 1)), v43 = atomic_load((v42 + 36)), (v43 & 3) != 0) || *(v42 + 15203) == 1)
      {
        new_live_index(a1, 0, v58 + 1);
        v39 = *(a1 + 1384);
      }

      if (v40 && v39)
      {
        v44 = *(v39 + 8);
        if (v44)
        {
          ContentIndexSetEmergency(*(*v39 + 8 * (v44 - 1)), 1);
        }
      }
    }
  }

  return v25;
}

void si_handle_tmp_files(uint64_t a1, int a2, int a3, __CFArray **a4, __CFArray **a5, __CFArray **a6)
{
  v114 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v102 = _os_feature_enabled_impl();
  }

  else
  {
    v102 = 1;
  }

  v104 = 0;
  if (!fd_setDir(a1, &v104))
  {
    v52 = 0;
    v53 = 0;
    v12 = 0;
    v103 = 0;
    LODWORD(v16) = 0;
    LODWORD(v15) = 0;
    goto LABEL_72;
  }

  v12 = opendir(".");
  if (!v12)
  {
    v52 = 0;
    v53 = 0;
    v103 = 0;
    LODWORD(v16) = 0;
    LODWORD(v15) = 0;
    goto LABEL_70;
  }

  v92 = a2;
  v98 = a6;
  v100 = 0;
  v95 = 0;
  v97 = 0;
  v103 = 0;
  v13 = 0;
  v14 = 0;
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    v15 = v14;
    v16 = v13;
    v17 = readdir(v12);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    d_name = v17->d_name;
    v13 = v16;
    v14 = v15;
    if (v17->d_name[0] != 46)
    {
      d_type = v17->d_type;
      v21 = d_type == 4 || d_type == 10;
      v13 = v16;
      v14 = v15;
      if (!v21)
      {
        if (!strncmp(v17->d_name, "tmp.", 4uLL))
        {
          v28 = strncmp(d_name, "tmp.SnowLeopard", 0xFuLL);
          v13 = v16;
          v14 = v15;
          if (v28)
          {
            v29 = strncmp(d_name, "tmp.Lion", 8uLL);
            v13 = v16;
            v14 = v15;
            if (v29)
            {
              v30 = strncmp(d_name, "tmp.Cab", 7uLL);
              v13 = v16;
              v14 = v15;
              if (v30)
              {
                v31 = strncmp(d_name, "tmp.Star", 8uLL);
                v13 = v16;
                v14 = v15;
                if (v31)
                {
                  v32 = strncmp(d_name, "tmp.Glow", 8uLL);
                  v13 = v16;
                  v14 = v15;
                  if (v32)
                  {
                    v33 = strncmp(d_name, "tmp.SequoiaPhotosFixed", 0x16uLL);
                    v13 = v16;
                    v14 = v15;
                    if (v33)
                    {
                      if (!_os_feature_enabled_impl() || (v34 = strncmp(d_name, "tmp.macOS16", 0xBuLL), v13 = v16, v14 = v15, v34))
                      {
                        v35 = strncmp(d_name, "tmp.spotlight", 0xDuLL);
                        v13 = v16;
                        v14 = v15;
                        if (v35)
                        {
                          v36 = strncmp(d_name, "tmp.store.recovery", 0x12uLL);
                          v13 = v16;
                          v14 = v15;
                          if (v36)
                          {
                            if (v92 && !strncmp(d_name, "tmp.journals.", 0xDuLL))
                            {
                              for (i = &v18->d_name[13]; *i; ++i)
                              {
                                if (*i == 46)
                                {
                                  if (!i[1])
                                  {
                                    break;
                                  }

                                  bzero(buf, 0x400uLL);
                                  __strcpy_chk();
                                  v43 = i - d_name - 4;
                                  if (*(&buf[0].st_dev + v43) != 46)
                                  {
                                    v86 = __si_assert_copy_extra_661(-1);
                                    v87 = v86;
                                    v88 = "";
                                    if (v86)
                                    {
                                      v88 = v86;
                                    }

                                    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11023, "new_path[ptr-direntry->d_name-4]=='.'", v88);
                                    free(v87);
                                    if (__valid_fs(-1))
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

                                  *(&buf[0].st_dev + v43) = 47;
                                  v91 = *__error();
                                  v44 = _SILogForLogForCategory(0);
                                  v45 = 2 * (gSILogLevels[0] < 4);
                                  v46 = v44;
                                  if (os_log_type_enabled(v44, v45))
                                  {
                                    *v105 = 136315394;
                                    v106 = d_name;
                                    v107 = 2080;
                                    *v108 = buf;
                                    _os_log_impl(&dword_1C278D000, v46, v45, "renaming: %s to %s", v105, 0x16u);
                                  }

                                  *__error() = v91;
                                  rename(d_name, buf, v47);
                                  if (v48)
                                  {
                                    v49 = *__error();
                                    v50 = _SILogForLogForCategory(0);
                                    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                    {
                                      v51 = *__error();
                                      *v105 = 136316162;
                                      v106 = "si_handle_tmp_files";
                                      v107 = 1024;
                                      *v108 = 11029;
                                      *&v108[4] = 1024;
                                      *&v108[6] = v51;
                                      v109 = 2080;
                                      v110 = d_name;
                                      v111 = 2080;
                                      v112 = buf;
                                      _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: move error:%d, %s to %s", v105, 0x2Cu);
                                    }

                                    *__error() = v49;
                                  }

                                  goto LABEL_57;
                                }
                              }
                            }

LABEL_23:
                            v90 = a3;
                            v25 = *__error();
                            v26 = _SILogForLogForCategory(10);
                            v27 = 2 * (dword_1EBF46AF4 < 4);
                            if (os_log_type_enabled(v26, v27))
                            {
                              buf[0].st_dev = 136315138;
                              *&buf[0].st_mode = d_name;
                              _os_log_impl(&dword_1C278D000, v26, v27, "unlink (%s)", buf, 0xCu);
                            }

                            *__error() = v25;
                            unlink(d_name);
                            v13 = v16;
                            v14 = v15;
                            a3 = v90;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          if (a4 && !strncmp(d_name, "journalAttr.", 0xCuLL))
          {
            *&buf[0].st_dev = 0;
            v38 = strtoll(&v18->d_name[12], buf, 0);
            if (v38 < 2)
            {
              goto LABEL_57;
            }

            v39 = v38;
            Mutable = *a4;
            if (!*a4)
            {
              Mutable = CFArrayCreateMutable(allocator, 0, 0);
              *a4 = Mutable;
            }

LABEL_56:
            CFArrayAppendValue(Mutable, v39);
            goto LABEL_57;
          }

          if (a5 && !strncmp(d_name, "menuItemsJournalAttr.", 0x15uLL))
          {
            *&buf[0].st_dev = 0;
            v41 = strtoll(&v18->d_name[21], buf, 0);
            if (v41 < 2)
            {
              goto LABEL_57;
            }

            v39 = v41;
            Mutable = *a5;
            if (!*a5)
            {
              Mutable = CFArrayCreateMutable(allocator, 0, 0);
              *a5 = Mutable;
            }

            goto LABEL_56;
          }

          if (v98 && !strncmp(d_name, "deferAttr.", 0xAuLL))
          {
            *&buf[0].st_dev = 0;
            v42 = strtoll(&v18->d_name[10], buf, 0);
            if (v42 < 2)
            {
              goto LABEL_57;
            }

            v39 = v42;
            Mutable = *v98;
            if (!*v98)
            {
              Mutable = CFArrayCreateMutable(allocator, 0, 0);
              *v98 = Mutable;
            }

            goto LABEL_56;
          }

          v22 = strncmp(d_name, "skg_", 4uLL);
          d_namlen = v18->d_namlen;
          if (v22)
          {
            v13 = v16;
            v14 = v15;
            if (d_namlen >= 0xD)
            {
              v24 = strncmp(d_name + d_namlen - 13, "topK.mdplistc", 0xDuLL);
              v13 = v16;
              v14 = v15;
              if (!v24)
              {
                goto LABEL_23;
              }
            }
          }

          else
          {
            v13 = 1;
            v14 = 1;
            if (d_namlen != 4)
            {
              memset(buf, 0, 144);
              if (!stat(d_name, buf))
              {
                if (!strncmp(d_name, "skg_deleteAttr.", 0xFuLL))
                {
                  v97 += buf[0].st_size;
                  v100 = (v100 + 1);
                }

                else if (!strncmp(d_name, "skg_knowledgeEntry.", 0x13uLL))
                {
                  v95 += buf[0].st_size;
                  ++v103;
                }
              }

LABEL_57:
              v13 = v16;
              v14 = v15;
            }
          }
        }
      }
    }
  }

  closedir(v12);
  v53 = v95;
  v52 = v97;
  v12 = v100;
LABEL_70:
  v54 = v104;
  MEMORY[0x1C6921200](v104);
  if ((v54 & 0x80000000) == 0)
  {
    close(v54);
  }

LABEL_72:
  v55 = v53 > 0x1DCD6500;
  v56 = _os_feature_enabled_impl() ^ 1 | (v52 > 0x3B9ACA00) | a3 | v15;
  if (v56)
  {
    *v105 = 0;
    v57 = 0;
    if (fd_setDir(a1, v105))
    {
      v99 = a1;
      v58 = v53;
      v59 = opendir(".");
      if (v59)
      {
        v60 = v59;
        v61 = a3;
        v57 = 0;
        while (1)
        {
          v62 = readdir(v60);
          if (!v62)
          {
            break;
          }

          v63 = v62->d_name;
          if (v62->d_name[0] != 46)
          {
            v64 = v62->d_type;
            v65 = v64 == 4 || v64 == 10;
            if (!v65 && !strncmp(v62->d_name, "skg_", 4uLL) && (!strncmp(v63, "skg_deleteAttr.", 0xFuLL) || !strncmp(v63, "skg_knowledgeEntry.", 0x13uLL)))
            {
              v96 = *__error();
              v66 = _SILogForLogForCategory(10);
              v67 = 2 * (dword_1EBF46AF4 < 4);
              allocatora = v66;
              if (os_log_type_enabled(v66, v67))
              {
                buf[0].st_dev = 136315138;
                *&buf[0].st_mode = v63;
                _os_log_impl(&dword_1C278D000, allocatora, v67, "unlink (%s)", buf, 0xCu);
              }

              *__error() = v96;
              unlink(v63);
              v57 = 1;
            }
          }
        }

        closedir(v60);
        a3 = v61;
      }

      else
      {
        v57 = 0;
      }

      v68 = *v105;
      MEMORY[0x1C6921200](*v105);
      v53 = v58;
      if ((v68 & 0x80000000) == 0)
      {
        close(v68);
      }

      LODWORD(a1) = v99;
    }

    bzero(buf, 0x400uLL);
    if ((fcntl(a1, 50, buf) & 0x80000000) == 0 && LOBYTE(buf[0].st_dev))
    {
      v69 = strlen(buf);
      snprintf(buf + v69, 1024 - v69, "/%s", "skg_");
      v70 = open(buf, 1793, 384);
      if ((v70 & 0x80000000) == 0)
      {
        close(v70);
        if (v57)
        {
          v71 = v53;
          bzero(buf, 0x400uLL);
          if ((fcntl(a1, 50, buf) & 0x80000000) == 0)
          {
            if (LOBYTE(buf[0].st_dev))
            {
              v72 = strlen(buf);
              v73 = *MEMORY[0x1E695E480];
              v74 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], buf, v72, 0x8000100u, 0);
              if (v74)
              {
                v75 = v74;
                v101 = v12;
                PathComponent = CFURLCreateCopyDeletingLastPathComponent(v73, v74);
                if (PathComponent)
                {
                  v77 = PathComponent;
                  v78 = CFURLCopyLastPathComponent(PathComponent);
                  if (v78)
                  {
                    v79 = v78;
                    if ((v56 | v102 | v55 | a3 | v16))
                    {
                      v80 = dictionaryFromPurgeEvent(v78, v103, v71);
                      analytics_send_event();
                      xpc_release(v80);
                    }

                    v81 = dictionaryFromPurgeEvent(v79, v101, v52);
                    analytics_send_event();
                    xpc_release(v81);
                    CFRelease(v79);
                  }

                  CFRelease(v77);
                }

                CFRelease(v75);
              }
            }
          }
        }

        return;
      }

      v82 = *__error();
      v83 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *v105 = 136315394;
        v106 = "si_purge_journal_files";
        v107 = 1024;
        *v108 = 10908;
        _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, "%s:%d: write skg marker error", v105, 0x12u);
      }

      *__error() = v82;
    }

    v84 = *__error();
    v85 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      buf[0].st_dev = 136315394;
      *&buf[0].st_mode = "si_handle_tmp_files";
      WORD2(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 6) = 11086;
      _os_log_error_impl(&dword_1C278D000, v85, OS_LOG_TYPE_ERROR, "%s:%d: unable to purge skg files", buf, 0x12u);
    }

    *__error() = v84;
  }
}

int *dump_filesystem_meta(int a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *__str = 0u;
  v52 = 0u;
  v2 = openat(a1, ".", 0);
  if (v2 == -1)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    v17 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v16, (gSILogLevels[0] < 3)))
    {
      v18 = *__error();
      v50.st_dev = 67109376;
      *&v50.st_mode = a1;
      LOWORD(v50.st_ino) = 1024;
      *(&v50.st_ino + 2) = v18;
      _os_log_impl(&dword_1C278D000, v16, v17, "*warn* openat(%d): %d", &v50, 0xEu);
    }

    result = __error();
    *result = v15;
  }

  else
  {
    v3 = v2;
    v4 = fdopendir(v2);
    if (v4)
    {
      v5 = v4;
      v23 = time(0);
      v6 = MEMORY[0x1E69E9C10];
      while (1)
      {
        v7 = readdir(v5);
        if (!v7)
        {
          break;
        }

        if (v7->d_type == 8)
        {
          d_name = v7->d_name;
          memset(&v50, 0, sizeof(v50));
          if (!fstatat(a1, v7->d_name, &v50, 32) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            st_blksize = v50.st_blksize;
            st_flags = v50.st_flags;
            st_mode = v50.st_mode;
            st_size = v50.st_size;
            tv_sec = v50.st_atimespec.tv_sec;
            prettyStr(v23 - v50.st_atimespec.tv_sec, __str);
            v12 = v50.st_mtimespec.tv_sec;
            prettyStr(v23 - v50.st_mtimespec.tv_sec, __str);
            v13 = v50.st_ctimespec.tv_sec;
            prettyStr(v23 - v50.st_ctimespec.tv_sec, __str);
            *buf = 67111938;
            v27 = a1;
            v28 = 2080;
            v29 = d_name;
            v30 = 2048;
            v31 = st_size;
            v32 = 1024;
            v33 = st_blksize;
            v34 = 1024;
            v35 = st_mode;
            v36 = 1024;
            v37 = st_flags;
            v38 = 2048;
            v39 = tv_sec;
            v40 = 2080;
            v41 = __str;
            v42 = 2048;
            v43 = v12;
            v44 = 2080;
            v45 = __str;
            v46 = 2048;
            v47 = v13;
            v48 = 2080;
            v49 = __str;
            _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "[fsmeta %d] %s sz:%llu bs:%d md:%d fl:%d at:%lus(%s ago) mt:%lus(%s ago) ct:%lus(%s ago)", buf, 0x6Au);
          }
        }
      }

      return closedir(v5);
    }

    else
    {
      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      v21 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v20, (gSILogLevels[0] < 3)))
      {
        v22 = *__error();
        v50.st_dev = 67109376;
        *&v50.st_mode = v3;
        LOWORD(v50.st_ino) = 1024;
        *(&v50.st_ino + 2) = v22;
        _os_log_impl(&dword_1C278D000, v20, v21, "*warn* fdopendir(%d): %d", &v50, 0xEu);
      }

      *__error() = v19;
      return close(v3);
    }
  }

  return result;
}

uint64_t si_validate_db(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v20 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v18 = v5;
  v19 = HIDWORD(v3);
  v17 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v17);
    v9 = 1;
    dropThreadId(v20, 1, add_explicit + 1);
    CICleanUpReset(v20, v18);
  }

  else
  {
    field_name_for_id = db_get_field_name_for_id(*(a1 + 1192), 1);
    v11 = field_name_for_id;
    if (field_name_for_id && !strncmp(field_name_for_id, "_kMDXXXX___DUMMY", 0x10uLL))
    {
      v9 = 1;
    }

    else
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "si_validate_db";
        v23 = 1024;
        v24 = 1039;
        v25 = 2080;
        v26 = v11;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Entry 1 in the name table is %s (should be dummy field name)", buf, 0x1Cu);
      }

      v9 = 0;
      *__error() = v12;
    }

    v14 = threadData[9 * v20 + 1] + 320 * v19;
    *(v14 + 312) = v7;
    v15 = *(v14 + 232);
    if (v15)
    {
      v15(*(v14 + 288));
    }

    dropThreadId(v20, 0, add_explicit + 1);
  }

  return v9;
}

int *disableWritingForAllButLastOfRunsOfTransaction(int *result, __n128 a2)
{
  v2 = result;
  v16 = *MEMORY[0x1E69E9840];
  v3 = result[2];
  if (v3 >= 2)
  {
    v4 = 0;
    a2.n128_u64[0] = 67109120;
    do
    {
      v5 = (*v2 + 8 * v4);
      result = *v5;
      if (*(*v5 + 40) == *(v5[1] + 40))
      {
        _CIDisableUpdates(a2);
        v6 = *__error();
        v7 = _SILogForLogForCategory(0);
        v8 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v7, v8))
        {
          v9 = *(*(*v2 + 8 * v4) + 40);
          *buf = 67109120;
          v15 = v9;
          _os_log_impl(&dword_1C278D000, v7, v8, "Disable updates for index in transaction %d", buf, 8u);
        }

        result = __error();
        *result = v6;
        v3 = v2[2];
      }

      v10 = v4 + 2;
      ++v4;
    }

    while (v10 < v3);
  }

  v2[4] = -1;
  if (v3)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(*v2 + 8 * v11);
      v13 = atomic_load((v12 + 36));
      if ((v13 & 3) == 0 && (*(v12 + 15203) & 1) == 0)
      {
        break;
      }

      if (++v11 >= v2[2])
      {
        return result;
      }
    }

    v2[4] = v11;
  }

  return result;
}

uint64_t indexSetGetNotCompactCount(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = v1 - 1;
  do
  {
    v4 = atomic_load((*(*a1 + 8 * v3) + 36));
    if ((v4 & 4) != 0)
    {
      break;
    }

    v5 = *(*a1 + 8 * v3);
    v6 = atomic_load((v5 + 36));
    v7 = (v6 & 3) != 0 ? 1 : *(v5 + 15203);
    v2 = (v2 + v7);
    v8 = v3-- + 1;
  }

  while (v8 > 1);
  return v2;
}

uint64_t indexSetGetNotMergedCount(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *a1;
  for (i = 8 * v1 - 8; ; i -= 8)
  {
    v6 = *(v4 + i);
    v7 = atomic_load((v6 + 36));
    if ((v7 & 3) == 0 && *(v6 + 15203) != 1)
    {
      break;
    }

    v4 = *a1;
    if (*(*(*a1 + i) + 52) > 2)
    {
      break;
    }

    result = (result + 1);
    if (v1 == result)
    {
      return v1;
    }
  }

  return result;
}

uint64_t indexSetGetLiveCount(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *(*(a1 + 8 * v2) + 40);
  for (i = a1 + 8 * a2 - 16; v5 == *(*i + 40); i -= 8)
  {
    result = (result + 1);
    if (v2 == result)
    {
      return a2 - 1;
    }
  }

  return result;
}

void holdAndIssueMerge(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
  v8[1042] = 0;
  *(v8 + 132) = copyHoldQueue(a1);
  *v8 = a1;
  v9 = *(*a3 + 8 * (*(a3 + 8) - a2));
  v8[16] = a4;
  *(v8 + 2) = *(v9 + 56);
  *(v8 + 3) = a2;
  v8[1041] = 0;
  *(v8 + 131) = "void holdAndIssueMerge(SIRef, int32_t, SIIndexSetRef, _Bool, _Bool)";
  *(v8 + 274) = 7;
  v8[1100] = 0;
  if (!*(v8 + 136) && !*(v8 + 266))
  {
    v11 = *(a1 + 2360);
    if (v11)
    {
      v12 = *(v11 + 64);
      if (v12)
      {
        *(v8 + 266) = v12(*(v11 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 10834, "void holdAndIssueMerge(SIRef, int32_t, SIIndexSetRef, _Bool, _Bool)");
      }
    }
  }

  if (a4)
  {
    __strlcpy_chk((v8 + 17), "live.%d.", 1024, 1024);
  }

  else
  {
    __strlcpy_chk((v8 + 17), "%d.", 1024, 1024);
  }

  v10 = *(a1 + 1064);

  si_enqueue_work(v10, si_mergeIndex, v8);
}

void compactReadOnlyIndexes(uint64_t a1, char a2)
{
  v4 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
  v4[16] = a2;
  *v4 = a1;
  v5 = *(a1 + 1048);

  si_enqueue_barrier_with_qos(v5, 9, si_compactReadOnlyIndexes1, v4);
}

uint64_t indexSetGetWritableCount(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = v1 - 1;
  do
  {
    v4 = *(*a1 + 8 * v3);
    v5 = atomic_load((v4 + 36));
    if ((v5 & 3) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v4 + 15203) ^ 1;
    }

    v2 = (v2 + v6);
    v7 = v3-- + 1;
  }

  while (v7 > 1);
  return v2;
}

void _SIPreHeatIndex(uint64_t result, const void *a2, char a3)
{
  if (*(result + 1192) && *(result + 1096))
  {
    v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040A95220FAuLL);
    v6[16] = a3;
    *v6 = result;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v6 + 1) = a2;
    v7 = *(result + 1096);

    si_enqueue_work(v7, si_preheat, v6);
  }
}

void si_preheat(uint64_t *a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    kdebug_trace();
    v14 = 0;
    if (fd_setDir(*(v3 + 32), &v14))
    {
      v4 = *(v3 + 1384);
      v5 = *(v4 + 8);
      if (v5)
      {
        _CIPreHeatIndex(*(*v4 + 8 * (v5 - 1)), *(a1 + 16));
      }

      v6 = *(v3 + 1392);
      if (*(v6 + 8))
      {
        v7 = 0;
        do
        {
          _CIPreHeatIndex(*(*v6 + 8 * v7++), *(a1 + 16));
        }

        while (v7 < *(v6 + 8));
      }

      v8 = *(v3 + 1384);
      if (*(v8 + 8))
      {
        v9 = 0;
        do
        {
          _CIPreHeatIndex(*(*v8 + 8 * v9++), *(a1 + 16));
        }

        while (v9 < *(v8 + 8));
      }

      v10 = a1[1];
      if (v10)
      {
        v11 = *(v10 + 112);
        if (v11)
        {
          if (CFArrayGetCount(*(v10 + 112)))
          {
            CFArrayGetValueAtIndex(v11, 0);
            icu_locale_create();
            icu_locale_get_rules();
            icu_locale_retain();
          }
        }
      }

      v12 = v14;
      MEMORY[0x1C6921200](v14);
      if ((v12 & 0x80000000) == 0)
      {
        close(v12);
      }
    }

    kdebug_trace();
  }

  v13 = a1[1];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

void si_compactReadOnlyIndexes1(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_work_with_qos(*(*a1 + 1040), 9, si_compactReadOnlyIndexes2, a1);
    v3 = 0;
  }

  si_merge_ctx_free(v3, a2 != 0);
}

void si_compactReadOnlyIndexes2(uint64_t *a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    v4 = *a1;
    si_sync_ctx_create_with_defer_fd(*a1, 0);
    v6 = v5;
    *(v5 + 96) = 1;
    if ((*(*v5 + 2437) & 1) == 0 && (*(*v3 + 2072) & 1) == 0)
    {
      attachJournal(v5);
    }

    syncIndex(v6, 0);
    si_enqueue_work(*(v4 + 1064), si_compactReadOnlyIndexes3, v3);
    v3 = 0;
  }

  si_merge_ctx_free(v3, a2 != 0);
}

void si_compactReadOnlyIndexes3(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = *a1;
    v8 = 0;
    if (fd_setDir(*(v4 + 32), &v8))
    {
      v5 = 1392;
      if (*(a1 + 16))
      {
        v5 = 1384;
      }

      v6 = *(v4 + v5);
      v9 = v4;
      __checkIndexSetDocIdOrder(v4, v6);
      if (*(v6 + 8))
      {
        CompactIndexes(v4, 0, 0, v6);
      }

      v7 = v8;
      MEMORY[0x1C6921200](v8);
      if ((v7 & 0x80000000) == 0)
      {
        close(v7);
      }
    }
  }

  si_merge_ctx_free(a1, a2 != 0);
}

char *prettyStr(uint64_t a1, char *__str)
{
  if (a1 < 86400)
  {
    if (a1 % 86400 < 3600)
    {
      if (a1 % 86400 % 3600 < 60)
      {
        snprintf(__str, 0x80uLL, "%lds");
      }

      else
      {
        snprintf(__str, 0x80uLL, "%ld:%ld");
      }
    }

    else
    {
      snprintf(__str, 0x80uLL, "%ld:%ld:%ld");
    }
  }

  else
  {
    snprintf(__str, 0x80uLL, "%ldd%ld:%ld:%ld");
  }

  return __str;
}

int *__totalDiskSpaceSize_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(&v6, 0x878uLL);
  result = statfs("/", &v6);
  if (result)
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(0);
    v3 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v2, (gSILogLevels[0] < 3)))
    {
      v4 = *__error();
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* Failed to get total disk space size. err=%d", v5, 8u);
    }

    result = __error();
    *result = v1;
  }

  else
  {
    gTotalDiskSpaceSize = v6.f_blocks * v6.f_bsize;
  }

  return result;
}

xpc_object_t dictionaryFromPurgeEvent(const __CFString *a1, int64_t a2, int64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  empty = xpc_dictionary_create_empty();
  if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    xpc_dictionary_set_string(empty, "indexId", buffer);
  }

  xpc_dictionary_set_int64(empty, "itemcount", a2);
  xpc_dictionary_set_int64(empty, "indexingtime", 0);
  xpc_dictionary_set_int64(empty, "aggregatedatasize", a3);
  return empty;
}

uint64_t clear_docid_match_new(uint64_t a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 > *(a2 + 16))
  {
    *(a2 + 16) = v3;
    v3 = *(a1 + 32);
  }

  if (v3 < *(a2 + 8))
  {
    return 0;
  }

  ++*(a2 + 44);
  v5 = *(a2 + 48);
  if (v5)
  {
    v18[0] = *(v5 + 20);
    *v17 = 0;
    if (!db_get_field_by_id(*(v5 + 8), a1, v18, v17, 0))
    {
      v7 = *MEMORY[0x1E695E480];
      v8 = _decodeSDBField(*(v5 + 8), *v17, (*v17 + 13), 0, 0, 0, 0, *MEMORY[0x1E695E480], v6);
      if (v8)
      {
        v9 = v8;
        v10 = *(v5 + 32);
        if (!v10 || *(v5 + 48) > 0x40u || CFStringCompare(v10, v9, 0))
        {
          if (*(v5 + 40))
          {
            _MDPlistContainerEndArray();
            _MDPlistContainerEndArray();
            _MDPlistContainerEndContainer();
            mobile_journal_plist(*v5, 0, *(v5 + 48), *(v5 + 40), 0, 0);
            CFRelease(*(v5 + 40));
            *(v5 + 40) = 0;
          }

          v11 = *(v5 + 32);
          if (v11)
          {
            CFRelease(v11);
          }

          *(v5 + 32) = CFRetain(v9);
          *(v5 + 48) = 0;
          *(v5 + 40) = _MDPlistContainerCreateMutable();
          _MDPlistContainerBeginContainer();
          _MDPlistContainerBeginArray();
          _MDPlistContainerAddObject();
          _MDPlistContainerBeginArray();
        }

        LODWORD(v18[0]) = *(v5 + 24);
        if (!db_get_field_by_id(*(v5 + 8), a1, v18, v17, 0))
        {
          v14 = _decodeSDBField(*(v5 + 8), *v17, (*v17 + 13), 0, 0, 0, 0, v7, v12);
          if (v14)
          {
            v15 = v14;
            if (objectHasContent(*(v5 + 8), a1))
            {
              _MDPlistContainerBeginDictionary();
              _MDPlistContainerAddCString();
              _MDPlistContainerAddObject();
              _MDPlistContainerAddCString();
              _MDPlistContainerAddObject();
              _MDPlistContainerAddCString();
              _MDPlistContainerAddBooleanValue();
              _MDPlistContainerEndDictionary();
              ++*(v5 + 48);
              CFRelease(v15);
              goto LABEL_18;
            }

            CFRelease(v15);
          }
        }

        _MDPlistContainerBeginDictionary();
        v13 = *(v5 + 8);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = __RepairJournalWrite_block_invoke;
        v16[3] = &__block_descriptor_tmp_995;
        v16[4] = v5;
        v16[5] = a1;
        _enumerate_dbo(v13, a1, 0, v16);
        _MDPlistContainerEndDictionary();
        ++*(v5 + 48);
LABEL_18:
        CFRelease(v9);
      }
    }
  }

  return 1;
}

void __RepairJournalWrite_block_invoke(uint64_t a1, char *__s1, uint64_t a3)
{
  if (strcmp(__s1, "_kMDItemGroupId"))
  {
    if (strcmp(__s1, "_kMDItemTextContentIndexExists"))
    {
      v7 = _decodeSDBField(*(*(a1 + 32) + 8), a3, (a3 + 13), 0, 0, 0, 0, *MEMORY[0x1E695E480], v6);
      if (v7)
      {
        v8 = v7;
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();

        CFRelease(v8);
      }
    }
  }
}

int *updateMetaInfoForState(int *result, int a2, int a3)
{
  v5 = result;
  v26 = *MEMORY[0x1E69E9840];
  if (result[10] != a2)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(11);
    v8 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v7, (dword_1EBF46AF8 < 3)))
    {
      v9 = v5[10];
      v22 = 67109376;
      v23 = a2;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_1C278D000, v7, v8, "*warn* clean scan count mis-match expected:%d got %d", &v22, 0xEu);
    }

    result = __error();
    *result = v6;
    v5[10] = a2;
  }

  if (v5[12] != a2)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(11);
    v12 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v11, (dword_1EBF46AF8 < 3)))
    {
      v13 = v5[12];
      v22 = 67109376;
      v23 = a2;
      v24 = 1024;
      v25 = v13;
      _os_log_impl(&dword_1C278D000, v11, v12, "*warn* shadow scan count mis-match expected:%d got %d", &v22, 0xEu);
    }

    result = __error();
    *result = v10;
    v5[12] = a2;
  }

  if (v5[11] != a3)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(11);
    v16 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v15, (dword_1EBF46AF8 < 3)))
    {
      v17 = v5[11];
      v22 = 67109376;
      v23 = a3;
      v24 = 1024;
      v25 = v17;
      _os_log_impl(&dword_1C278D000, v15, v16, "*warn* clean live count mis-match expected:%d got %d", &v22, 0xEu);
    }

    result = __error();
    *result = v14;
    v5[11] = a3;
  }

  if (v5[13] != a3)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(11);
    v20 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v19, (dword_1EBF46AF8 < 3)))
    {
      v21 = v5[13];
      v22 = 67109376;
      v23 = a3;
      v24 = 1024;
      v25 = v21;
      _os_log_impl(&dword_1C278D000, v19, v20, "*warn* shadow live count mis-match expected:%d got %d", &v22, 0xEu);
    }

    result = __error();
    *result = v18;
    v5[13] = a3;
  }

  return result;
}

uint64_t SIOpenJWLIndex(int a1, void *a2, uint64_t a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x2788uLL, 0x10F00403822957CuLL);
  *v6 = 0xC0DE10DE10DEC0DELL;
  v7 = guarded_dup(a1);
  v6[4] = v7;
  v6[5] = v8;
  if (v7 == -1 || MEMORY[0x1C6921200]())
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v43 = *(v6 + 8);
      v44 = __error();
      v45 = strerror(*v44);
      v46 = *__error();
      *buf = 136316418;
      *&buf[4] = "SIOpenJWLIndex";
      *&buf[12] = 1024;
      *&buf[14] = 13997;
      *&buf[18] = 1024;
      *&buf[20] = v43;
      *&buf[24] = 1024;
      *&buf[26] = a1;
      *&buf[30] = 2080;
      *&buf[32] = v45;
      *&buf[40] = 1024;
      *&buf[42] = v46;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Unable to set jwl index fd: %d (dirfd: %d), err: %s(%d)", buf, 0x2Eu);
    }

    *__error() = v9;
    free(v6);
    return 0xFFFFFFFFLL;
  }

  pthread_rwlock_init((v6 + 10), 0);
  pthread_mutex_init((v6 + 204), 0);
  *(v6 + 15) = 2 * a3;
  *(v6 + 145) = 0u;
  *(v6 + 1741) = 1;
  *(v6 + 2072) = 1;
  *(v6 + 1743) = 1;
  clientstates_file = si_read_clientstates_file(v6);
  v6[9] = clientstates_file;
  if (!clientstates_file)
  {
    v35 = *__error();
    v36 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v48 = __error();
      v49 = strerror(*v48);
      v50 = *__error();
      *buf = 136315906;
      *&buf[4] = "SIOpenJWLIndex";
      *&buf[12] = 1024;
      *&buf[14] = 14014;
      *&buf[18] = 2080;
      *&buf[20] = v49;
      *&buf[28] = 1024;
      *&buf[30] = v50;
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: Unable to read client state file, err: %s(%d)", buf, 0x22u);
    }

    *__error() = v35;
    pthread_mutex_destroy((v6 + 204));
    pthread_rwlock_destroy((v6 + 10));
    free(v6);
    return 4294967294;
  }

  Value = CFDictionaryGetValue(clientstates_file, @"version");
  if (!Value)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315394;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13896;
    v39 = "%s:%d: si_validate_and_read_clientstate: version not found";
LABEL_56:
    v41 = v38;
    v42 = 18;
    goto LABEL_57;
  }

  valuePtr[0] = 0;
  CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
  if (valuePtr[0] != 1)
  {
    v37 = *__error();
    v40 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "si_validate_and_read_clientstate";
      *&buf[12] = 1024;
      *&buf[14] = 13892;
      *&buf[18] = 1024;
      *&buf[20] = valuePtr[0];
      *&buf[24] = 1024;
      *&buf[26] = 1;
      v39 = "%s:%d: si_validate_and_read_clientstate: version mismatch %d != %d";
      v41 = v40;
      v42 = 30;
LABEL_57:
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v39, buf, v42);
      goto LABEL_58;
    }

    goto LABEL_58;
  }

  v14 = CFDictionaryGetValue(v6[9], @"journalSerialNumber");
  if (!v14)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315394;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13910;
    v39 = "%s:%d: si_validate_and_read_clientstate: journal sno not found";
    goto LABEL_56;
  }

  *valuePtr = 0;
  CFNumberGetValue(v14, kCFNumberSInt64Type, valuePtr);
  if (*valuePtr <= 0)
  {
    v37 = *__error();
    v47 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "si_validate_and_read_clientstate";
      *&buf[12] = 1024;
      *&buf[14] = 13905;
      *&buf[18] = 2048;
      *&buf[20] = *valuePtr;
      v39 = "%s:%d: si_validate_and_read_clientstate: invalid journal sno %lld";
LABEL_44:
      v41 = v47;
      v42 = 28;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6[266] = *valuePtr;
  v15 = CFDictionaryGetValue(v6[9], @"syncCount");
  if (!v15)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315394;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13924;
    v39 = "%s:%d: si_validate_and_read_clientstate: synccount not found";
    goto LABEL_56;
  }

  valuePtr[0] = 0;
  CFNumberGetValue(v15, kCFNumberIntType, valuePtr);
  if (valuePtr[0] <= 0)
  {
    v37 = *__error();
    v51 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315650;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13919;
    *&buf[18] = 1024;
    *&buf[20] = valuePtr[0];
    v39 = "%s:%d: si_validate_and_read_clientstate: invalid synccount %d";
LABEL_53:
    v41 = v51;
    v42 = 24;
    goto LABEL_57;
  }

  *(v6 + 586) = valuePtr[0];
  v16 = CFDictionaryGetValue(v6[9], @"deferSyncCount");
  if (!v16)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315394;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13954;
    v39 = "%s:%d: si_validate_and_read_clientstate: defersynccount not found";
    goto LABEL_56;
  }

  valuePtr[0] = 0;
  CFNumberGetValue(v16, kCFNumberIntType, valuePtr);
  if (valuePtr[0] <= 0)
  {
    v37 = *__error();
    v51 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315650;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13949;
    *&buf[18] = 1024;
    *&buf[20] = valuePtr[0];
    v39 = "%s:%d: si_validate_and_read_clientstate: invalid defersynccount %d";
    goto LABEL_53;
  }

  *(v6 + 587) = valuePtr[0];
  v17 = CFDictionaryGetValue(v6[9], @"cookie");
  if (!v17)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "si_validate_and_read_clientstate";
      *&buf[12] = 1024;
      *&buf[14] = 13967;
      v39 = "%s:%d: si_validate_and_read_clientstate: cookie not found";
      goto LABEL_56;
    }

LABEL_58:
    *__error() = v37;
    v52 = *__error();
    v53 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SIOpenJWLIndex";
      *&buf[12] = 1024;
      *&buf[14] = 14023;
      _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, "%s:%d: Invalid client state file, can't open jwlindex", buf, 0x12u);
    }

    *__error() = v52;
    pthread_mutex_destroy((v6 + 204));
    pthread_rwlock_destroy((v6 + 10));
    free(v6);
    return 4294967293;
  }

  v18 = v17;
  v19 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v17);
  v6[180] = v19;
  if (!v19)
  {
    v37 = *__error();
    v47 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315650;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13962;
    *&buf[18] = 2112;
    *&buf[20] = v18;
    v39 = "%s:%d: si_validate_and_read_clientstate: invalid cookie %@";
    goto LABEL_44;
  }

  *(v6 + 89) = CFUUIDGetUUIDBytes(v19);
  pthread_mutex_init((v6 + 165), 0);
  v20 = *(v6 + 15);
  if (v20 == 3)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2 * a3;
  }

  if (v20 == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  *(v6 + 15) = v22;
  _SIChangeProtectionClassForFilesInDirectory(*(v6 + 8), a3);
  v23 = *(v6 + 15);
  if (v23)
  {
    v24 = 6;
  }

  else
  {
    v24 = v23 & 0xFFFFFFFE;
  }

  *(v6 + 15) = v24;
  v25 = CFDictionaryGetValue(v6[9], @"journalName");
  v26 = v25;
  if (v25)
  {
    v27 = *(v6 + 8);
    CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
    v29 = openat(v27, CStringPtr, 536870922);
    if (v29 == -1)
    {
      v54 = *__error();
      v55 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v71 = CFStringGetCStringPtr(v26, 0x8000100u);
        v72 = __error();
        v73 = strerror(*v72);
        *buf = 136315906;
        *&buf[4] = "SIOpenJWLIndex";
        *&buf[12] = 1024;
        *&buf[14] = 14045;
        *&buf[18] = 2080;
        *&buf[20] = v71;
        *&buf[28] = 2080;
        *&buf[30] = v73;
        _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, "%s:%d: Unable to open journal %s err: %s", buf, 0x26u);
      }

      *__error() = v54;
    }

    else
    {
      v30 = v29;
      v31 = *(v6 + 8);
      v32 = CFStringGetCStringPtr(v26, 0x8000100u);
      v33 = fd_create_protected(v31, v32, 536870922, 2u);
      close(v30);
      if (v33)
      {
        v6[290] = v33;
        _fd_acquire_fd(v33, buf);
        if (*(v6 + 2072) == 1 && (*(v6 + 829) & 0x10) == 0 && _os_feature_enabled_impl())
        {
          _os_feature_enabled_impl();
        }

        v6[263] = si_mobile_journal_create(v34);
      }
    }
  }

  if (!v6[263])
  {
    memset(v93, 0, sizeof(v93));
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v69 = *(v6 + 587) - 1;
    memset(buf, 0, sizeof(buf));
    __sprintf_chk(buf, 0, 0xFFuLL, "%s%d", "deferAttr.", v69);
    if (v26)
    {
      v70 = CFStringGetCStringPtr(v26, 0x8000100u);
      if (!strcmp(v70, buf))
      {
        *(v6 + 1742) = 1;
      }
    }
  }

  v56 = &off_1F427B590;
  v57 = v6 + 126;
  v58 = 6;
  do
  {
    bzero(buf, 0x450uLL);
    v59 = *(v56 + 2);
    v60 = *(v56 + 3);
    if (v59 == 11)
    {
      bzero(valuePtr, 0x400uLL);
      v61 = fcntl(*(v6 + 8), 50, valuePtr);
      if (LOBYTE(valuePtr[0]))
      {
        v62 = v61 < 0;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v63 = 0;
      }

      else
      {
        v63 = valuePtr;
      }

      snprintf(buf, 0x450uLL, "%s scheduler for jwl index at %s", *v56, v63);
      if (v6[119])
      {
        v74 = __si_assert_copy_extra_661(-1);
        v75 = v74;
        v76 = "";
        if (v74)
        {
          v76 = v74;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 14090, "newIndex->workqueues.schedulers[schedId]==0", v76);
LABEL_95:
        free(v75);
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

      if (v57[v60])
      {
        v77 = __si_assert_copy_extra_661(-1);
        v75 = v77;
        v78 = "";
        if (v77)
        {
          v78 = v77;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 14091, "newIndex->workqueues.queues[queueId]==0", v78);
        goto LABEL_95;
      }

      v6[119] = si_create_root_scheduler(v64);
      v57[v60] = si_create_child_queue(v65);
    }

    else
    {
      v6[v59 + 108] = 0;
      v57[v60] = 0;
    }

    v56 += 7;
    --v58;
  }

  while (v58);
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    v66 = fd_create_protected(*(v6 + 8), "activityJournal.1", 536871433, 3u);
    si_activity_journal_init((v6 + 274), v66);
    fd_mark_purgable(v6[274]);
  }

  v67 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_BACKGROUND, 0);
  v68 = dispatch_queue_create("com.apple.spotlight.index.journal.toc", v67);
  result = 0;
  v6[148] = v68;
  *a2 = v6;
  return result;
}

uint64_t _SIChangeProtectionClassForFilesInDirectory(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v59 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  if (fcntl(v3, 50, __s) < 0 || !__s[0])
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    *buf = 136316162;
    v51 = "_SIChangeProtectionClassForFilesInDirectory";
    v52 = 1024;
    v53 = 35378;
    v54 = 1024;
    v55 = v3;
    v56 = 1024;
    LODWORD(v57[0]) = v10;
    WORD2(v57[0]) = 2080;
    *(v57 + 6) = v12;
    v13 = "%s:%d: Error getting realpath, dirFd: %d, err: %d(%s)";
    goto LABEL_103;
  }

  v4 = strlen(__s);
  v5 = opendir(__s);
  if (!v5)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v43 = *__error();
    v44 = __error();
    v45 = strerror(*v44);
    *buf = 136316162;
    v51 = "_SIChangeProtectionClassForFilesInDirectory";
    v52 = 1024;
    v53 = 35374;
    v54 = 1024;
    v55 = v3;
    v56 = 1024;
    LODWORD(v57[0]) = v43;
    WORD2(v57[0]) = 2080;
    *(v57 + 6) = v45;
    v13 = "%s:%d: Error opendir, dirFd: %d, err: %d(%s)";
LABEL_103:
    _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v13, buf, 0x28u);
LABEL_9:
    *__error() = v8;
    v14 = *__error();
    if (v14)
    {
      return v14;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  v6 = v5;
  if (fcntl(v3, 63) == a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = set_protection_class(v3, a2);
    if (v7)
    {
      v15 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v46 = *__error();
        v47 = __error();
        v48 = strerror(*v47);
        *buf = 136315906;
        v51 = "_SIChangeProtectionClassForFilesInDirectory";
        v52 = 1024;
        v53 = 35274;
        v54 = 1024;
        v55 = v46;
        v56 = 2080;
        v57[0] = v48;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Error set_protectionclass err: %d(%s)", buf, 0x22u);
      }

      *__error() = v15;
    }
  }

  if (_SIChangeProtectionClassForFilesInDirectory_sleptBefore)
  {
    goto LABEL_22;
  }

  if (isAppleInternalInstall_onceToken != -1)
  {
    dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
  }

  if (isAppleInternalInstall_isInternalInstall == 1 && strstr(__s, "MobileMailIndex"))
  {
    v17 = 1;
    _SIChangeProtectionClassForFilesInDirectory_sleptBefore = 1;
    sleepDuringMailClassCMigration();
  }

  else
  {
LABEL_22:
    v17 = 0;
  }

  v18 = v4 - 1023;
  if ((a2 - 1) < 2 || a2 == 7)
  {
    v20 = 3;
  }

  else
  {
    v20 = a2;
  }

  while (1)
  {
    v21 = readdir(v6);
    if (!v21)
    {
      break;
    }

    v22 = v21;
    d_type = v21->d_type;
    v24 = d_type == 8 || d_type == 4;
    if (v24 && (v21->d_name[0] != 46 || v21->d_name[1] && (v21->d_name[1] != 46 || v21->d_name[2])) && v18 + v21->d_namlen >= 0xFFFFFFFFFFFFFC00)
    {
      if (v17)
      {
        sleepDuringMailClassCMigration();
      }

      v25 = v20;
      if (a2 <= 7)
      {
        v25 = v20;
        if (((1 << a2) & 0x86) != 0)
        {
          v25 = v20;
          if (strcmp("tmp.spotlight.state", v22->d_name))
          {
            v25 = v20;
            if (strncmp("clientstatesmetafile", v22->d_name, 0x15uLL))
            {
              v25 = v20;
              if (strncmp("activityJournal.", v22->d_name, 0x10uLL))
              {
                v25 = v20;
                if (strncmp("tmp.store.recovery.", v22->d_name, 0x13uLL))
                {
                  v25 = v20;
                  if (strncmp("store.updates", v22->d_name, 0xDuLL))
                  {
                    v25 = v20;
                    if (!strstr(v22->d_name, "indexHead"))
                    {
                      v25 = v20;
                      if (!strstr(v22->d_name, "indexState"))
                      {
                        v25 = v20;
                        if (!strstr(v22->d_name, "indexBigDates"))
                        {
                          v25 = v20;
                          if (!strstr(v22->d_name, "indexScores"))
                          {
                            v25 = v20;
                            if (!strstr(v22->d_name, "indexGroups"))
                            {
                              v25 = v20;
                              if (!strstr(v22->d_name, "indexIds"))
                              {
                                v25 = v20;
                                if (!strstr(v22->d_name, "indexPositionTable"))
                                {
                                  v25 = v20;
                                  if (!strstr(v22->d_name, "indexPositions"))
                                  {
                                    v25 = v20;
                                    if (!strstr(v22->d_name, "indexPostings"))
                                    {
                                      v25 = v20;
                                      if (!strstr(v22->d_name, "indexTermIds"))
                                      {
                                        v25 = v20;
                                        if (!strstr(v22->d_name, "directoryStoreFile"))
                                        {
                                          v25 = v20;
                                          if (!strstr(v22->d_name, "shadowIndexGroups"))
                                          {
                                            v25 = v20;
                                            if (!strstr(v22->d_name, "shadowIndexHead"))
                                            {
                                              v25 = v20;
                                              if (!strstr(v22->d_name, "shadowIndexPositionTable"))
                                              {
                                                v25 = v20;
                                                if (!strstr(v22->d_name, "shadowIndexTermIds"))
                                                {
                                                  v25 = v20;
                                                  if (!strstr(v22->d_name, "bgassertions"))
                                                  {
                                                    v25 = v20;
                                                    if (strncmp("remapping", v22->d_name, 9uLL))
                                                    {
                                                      if (strncmp("dbStr", v22->d_name, 5uLL) || (v25 = v20, strstr(v22->d_name, ".data")))
                                                      {
                                                        d_namlen = v22->d_namlen;
                                                        if (d_namlen < 4 || (v40 = &v22->d_name[d_namlen], *(v40 - 3) != 116) || *(v40 - 2) != 111 || (v25 = v20, *(v40 - 1) != 99))
                                                        {
                                                          v25 = v20;
                                                          if (!strstr(v22->d_name, "errorFile"))
                                                          {
                                                            v41 = strstr(v22->d_name, "vectorIndexDrops.plist");
                                                            v25 = v41 ? v20 : 7;
                                                            if (a2 != 7 && !v41)
                                                            {
                                                              if (strstr(v22->d_name, "journalAttr.") || strstr(v22->d_name, "assertedJournalAttr.1") || strstr(v22->d_name, "deferattr."))
                                                              {
                                                                v25 = 2;
                                                              }

                                                              else if (strstr(v22->d_name, "journalRepair."))
                                                              {
                                                                v25 = 2;
                                                              }

                                                              else
                                                              {
                                                                v25 = a2;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v26 = openat(v6->__dd_fd, v22->d_name, 0x8000);
      if (v26 == -1)
      {
        v31 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v34 = *__error();
          v35 = __error();
          v36 = strerror(*v35);
          *buf = 136315906;
          v51 = "_SIChangeProtectionClassForFilesInDirectory";
          v52 = 1024;
          v53 = 35368;
          v54 = 1024;
          v55 = v34;
          v56 = 2080;
          v57[0] = v36;
          _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: Error openfd err: %d(%s)", buf, 0x22u);
        }

        *__error() = v31;
        v33 = *__error();
        if (v33)
        {
          v7 = v33;
        }

        else
        {
          v7 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v27 = v26;
        if (fcntl(v26, 63) != v25)
        {
          v28 = set_protection_class(v27, v25);
          v7 = v7 ? v7 : v28;
          if (v28)
          {
            v29 = *__error();
            v30 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v49 = *__error();
              v37 = __error();
              v38 = strerror(*v37);
              *buf = 136315906;
              v51 = "_SIChangeProtectionClassForFilesInDirectory";
              v52 = 1024;
              v53 = 35363;
              v54 = 1024;
              v55 = v49;
              v56 = 2080;
              v57[0] = v38;
              _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: Error set_protectionclass err: %d(%s)", buf, 0x22u);
            }

            *__error() = v29;
          }
        }

        close(v27);
      }
    }
  }

  closedir(v6);
  return v7;
}

uint64_t set_protection_class(int a1, uint64_t a2)
{
  v2 = a2;
  v8 = *MEMORY[0x1E69E9840];
  if (fcntl(a1, 64, a2) != -1)
  {
    return 0;
  }

  bzero(v7, 0x400uLL);
  v5 = fcntl(a1, 50, v7);
  result = 0xFFFFFFFFLL;
  if ((v5 & 0x80000000) == 0 && v7[0])
  {
    v6 = v2;
    if (setattrlist(v7, &setattr_protection_class_req, &v6, 4uLL, 1u) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sleepDuringMailClassCMigration()
{
  v6 = *MEMORY[0x1E69E9840];
  if (isAppleInternalInstall_onceToken != -1)
  {
    dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
  }

  if (isAppleInternalInstall_isInternalInstall == 1)
  {
    if (sleepDuringMailClassCMigration_onceToken != -1)
    {
      dispatch_once(&sleepDuringMailClassCMigration_onceToken, &__block_literal_global_2143);
    }

    if (sleepDuringMailClassCMigration_shouldSleep == 1)
    {
      v0 = *__error();
      v1 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        v2 = 136315394;
        v3 = "sleepDuringMailClassCMigration";
        v4 = 1024;
        v5 = 35253;
        _os_log_error_impl(&dword_1C278D000, v1, OS_LOG_TYPE_ERROR, "%s:%d: Sleeping 2 seconds during mail migration", &v2, 0x12u);
      }

      *__error() = v0;
      sleep(2u);
    }
  }
}

FILE *__sleepDuringMailClassCMigration_block_invoke()
{
  result = fopen("/private/var/mobile/spotlightMailMigrationSleepEnabled", "r");
  if (result)
  {
    result = fclose(result);
    sleepDuringMailClassCMigration_shouldSleep = 1;
  }

  return result;
}

uint64_t _SISetProtectionClass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = 2 * a2;
  if (v2 == 3)
  {
    v3 = 3;
  }

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 60) = v4;
  return _SIChangeProtectionClassForFilesInDirectory(*(a1 + 32), a2);
}

uint64_t _SISetPriority(uint64_t result, int a2, int a3)
{
  if (a2 && a3)
  {
    v5 = __si_assert_copy_extra_661(-1);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "si_utils.h", 118, "!(priority && mailIndex)", v7);
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

  v3 = *(result + 60);
  if (v3)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFE;
  }

  if (a3)
  {
    v4 = 3;
  }

  if (a2)
  {
    v4 = 1;
  }

  *(result + 60) = v4;
  return result;
}

void SICloseJWLIndex(uint64_t a1)
{
  if (a1)
  {
    si_scheduler_boost_and_forget(*(a1 + 952));
    Current = CFAbsoluteTimeGetCurrent();
    _SIShutdownIndexSchedulers(a1, 0, 0, Current);
    v3 = *(a1 + 952);
    if (v3 && atomic_fetch_add((v3 + 96), 0xFFFFFFFF) == 1)
    {
      _si_scheduler_destroy(v3);
    }

    v4 = *(a1 + 2104);
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v4, 1);
    }

    v5 = *(a1 + 2112);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v5, 1);
    }

    v6 = *(a1 + 2320);
    if (v6)
    {
      fd_release(v6);
    }

    v7 = *(a1 + 2328);
    if (v7)
    {
      fd_release(v7);
    }

    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      SIActivityJournalClose((a1 + 2192));
      v8 = *(a1 + 2192);
      *(a1 + 2192) = 0;
      if (v8)
      {
        fd_release(v8);
      }
    }

    dispatch_release(*(a1 + 1184));
    v9 = *(a1 + 72);
    if (v9)
    {
      CFRelease(v9);
    }

    *(a1 + 72) = 0;
    v10 = *(a1 + 1440);
    if (v10)
    {
      CFRelease(v10);
    }

    *(a1 + 1440) = 0;
    pthread_mutex_destroy((a1 + 1632));
    pthread_rwlock_destroy((a1 + 80));
    pthread_mutex_destroy((a1 + 1320));
    *v11 = *(a1 + 32);
    *(a1 + 32) = -1;
    if (v11[0] != -1)
    {
      if (*&v11[2])
      {
        guarded_close_np();
      }

      else
      {
        close(v11[0]);
      }
    }

    free(a1);
  }
}

uint64_t SIOpenIndex(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, __n128 *a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  v80 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (freeQueueOnce != -1)
  {
    dispatch_once(&freeQueueOnce, &__block_literal_global_710);
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v19 = setThreadIdAndInfo(a2, sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v67 = HIDWORD(v19);
  v68 = v19;
  v65 = v21;
  v66 = v20;
  v22 = threadData[9 * v19 + 1] + 320 * HIDWORD(v19);
  *(v22 + 216) = 0;
  v62 = *(v22 + 312);
  v23 = *(v22 + 224);
  v24 = v22;
  if (v23)
  {
    v23(*(v22 + 288));
  }

  if (_setjmp(v24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v70 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v70, 2u);
    }

    v24[78] = v62;
    CIOnThreadCleanUpReset(v65);
    dropThreadId(v68, 1, add_explicit + 1);
    CICleanUpReset(v68, v66);
    v25 = 0xFFFFFFFFLL;
    goto LABEL_69;
  }

  v63 = *a7;
  v64 = a7[1].n128_u64[0];
  Current = CFAbsoluteTimeGetCurrent();
  if (a8)
  {
    v27 = *(a8 + 24);
    *(a8 + 24) = 0;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  v77 = 0;
  if (a6)
  {
    v61 = v27;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    *v70 = 0u;
    v71 = 0u;
    *buf = v63;
    *&buf[16] = v64;
    v29 = _SIOpenIndex(v63, a1, a2, a3, a4, a5, v70, buf, a8, a9, &v77, a10);
    if ((v29 & 0x80000000) != 0)
    {
      if (v77 == 1)
      {
        v37 = *__error();
        if (v37)
        {
          v38 = v37;
        }

        else
        {
          v38 = -1;
        }

LABEL_22:
        v39 = v38;
        v69 = -1;
        v40 = a2 == -1 || (fd_setDir(a2, &v69) & 1) == 0;
        v41 = *__error();
        v42 = _SILogForLogForCategory(11);
        v43 = 2 * (dword_1EBF46AF8 < 4);
        if (os_log_type_enabled(v42, v43))
        {
          if (__si_error_str_key)
          {
            v44 = pthread_getspecific(__si_error_str_key);
          }

          else
          {
            v44 = 0;
          }

          *buf = 134218498;
          *&buf[4] = a1;
          *&buf[12] = 1024;
          *&buf[14] = v29;
          *&buf[18] = 2080;
          *&buf[20] = v44;
          _os_log_impl(&dword_1C278D000, v42, v43, "%p _SIOpenIndex: %d %s", buf, 0x1Cu);
        }

        *__error() = v41;
        if (!v40)
        {
          v45 = v69;
          MEMORY[0x1C6921200](v69);
          if ((v45 & 0x80000000) == 0)
          {
            close(v45);
          }
        }

        v36 = v39;
        v35 = v29;
        v28 = v61;
        if (a8)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v30 = *(&v73 + 1);
      a6[8] = v73;
      v31 = *&v70[8];
      v32 = v71;
      a6[6] = *v70;
      a6[7] = *(&v32 + 1);
      v33 = *(&v72 + 1);
      a6[4] = v72;
      a6[5] = v30;
      v34 = v76;
      a6[2] = v74;
      a6[3] = v31;
      *a6 = v32;
      a6[1] = v33;
      a6[11] = v34;
    }

    v38 = -1;
    goto LABEL_22;
  }

  v35 = 4294967294;
  v36 = -1;
  if (a8)
  {
LABEL_35:
    *(a8 + 24) = v28;
  }

LABEL_36:
  if ((v35 & 0x80000000) == 0)
  {
    if ((a5 & 0xC) == 0)
    {
      v46 = *a1;
      if (*a1)
      {
        v47 = SICopyProperty(*a1, @"kSIRepairSizes");
        if (!v47)
        {
          if ((*(v46 + 6584) & 0x6000000) != 0x4000000)
          {
            v48 = SICopyProperty(v46, @"kSIConsistencyCheck");
            if (!v48)
            {
              goto LABEL_50;
            }

            CFRelease(v48);
          }

          si_repair_sizes(v46);
          goto LABEL_50;
        }

        CFRelease(v47);
      }
    }

LABEL_50:
    bumpWorkTime(*a1, Current);
    if (v35 != 1 && *(*a1 + 2072) == 1)
    {
      v50 = *(*a1 + 1384);
      v51 = *(v50 + 8);
      if (v51 >= 2)
      {
        v52 = count_IndexSet(v50, v51 - 2, 1);
        analytics_send_event_lazy();
        if (v52 <= 3 && (v52 != 3 || gSISystemOnBattery))
        {
          if (v52 == 3)
          {
            v60 = *(*a1 + 2360);
            if (v60)
            {
              if (*(v60 + 80))
              {
                *v70 = MEMORY[0x1E69E9820];
                *&v70[8] = 0x40000000;
                *&v71 = __OpenIndex_block_invoke_3;
                *(&v71 + 1) = &__block_descriptor_tmp_1080;
                *&v72 = 3;
                analytics_send_event_lazy();
                (*(*(*a1 + 2360) + 80))(*(*(*a1 + 2360) + 144), 0, @"IndexOpenCompact", &__block_literal_global_1086);
              }
            }
          }
        }

        else
        {
          *v70 = MEMORY[0x1E69E9820];
          *&v70[8] = 0x40000000;
          *&v71 = __OpenIndex_block_invoke_2;
          *(&v71 + 1) = &__block_descriptor_tmp_1078;
          *&v72 = v52;
          analytics_send_event_lazy();
          setupAndIssueMergeCleanup(*a1, *(**(*a1 + 1384) + 8 * (*(*(*a1 + 1384) + 8) - 2)), 0);
        }

        v53 = count_UncompactedIndexSet(*(*a1 + 1384), *(*(*a1 + 1384) + 8) - 2);
        if (v53)
        {
          if (gSISystemOnBattery == 1 && (v54 = *(*a1 + 2360)) != 0 && *(v54 + 80))
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __OpenIndex_block_invoke_5;
            *&buf[24] = &__block_descriptor_tmp_1088;
            v79 = v53;
            analytics_send_event_lazy();
            (*(*(*a1 + 2360) + 80))(*(*(*a1 + 2360) + 144), 0, @"IndexOpenCompact", &__block_literal_global_1091);
          }

          else
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __OpenIndex_block_invoke_8;
            *&buf[24] = &__block_descriptor_tmp_1095;
            v79 = v53;
            analytics_send_event_lazy();
            setupAndIssueMergeCleanup(*a1, *(**(*a1 + 1384) + 8 * (*(*(*a1 + 1384) + 8) - 2)), 0);
          }
        }
      }

      v55 = CleanupWritableIndexes(*(*a1 + 1384), v49);
      if ((CleanupWritableIndexes(*(*a1 + 1392), v56) & 1) != 0 || v55)
      {
        SISyncIndex(*a1);
      }
    }

    goto LABEL_66;
  }

  if (v35 == -1 && v28)
  {
    v28(a8);
LABEL_45:
    *__error() = v36;
    goto LABEL_66;
  }

  if (v35 == -1)
  {
    goto LABEL_45;
  }

LABEL_66:
  v57 = threadData[9 * v68 + 1] + 320 * v67;
  *(v57 + 312) = v62;
  v58 = *(v57 + 232);
  if (v58)
  {
    v58(*(v57 + 288));
  }

  dropThreadId(v68, 0, add_explicit + 1);
  v25 = v35;
LABEL_69:
  _si_log_indexes(*a1);
  return v25;
}

uint64_t si_repair_sizes(uint64_t result)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(result + 1192))
  {
    v1 = result;
    if ((*(result + 1288) & 1) == 0)
    {
      v2 = *(result + 2360);
      if (v2)
      {
        if (*(v2 + 40))
        {
          v51 = 0;
          result = fd_setDir(*(result + 32), &v51);
          if (result)
          {
            add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            v4 = setThreadIdAndInfo(*(v1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
            v50 = v4;
            v5 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
            v48 = v6;
            v49 = HIDWORD(v4);
            v47 = v7;
            *(v5 + 216) = 0;
            v8 = *(v5 + 312);
            v9 = *(v5 + 224);
            if (v9)
            {
              v9(*(v5 + 288));
            }

            v46 = v50;
            v45 = v49;
            v44 = v48;
            v43 = v47;
            if (_setjmp(v5))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
              }

              *(v5 + 312) = v8;
              CIOnThreadCleanUpReset(v43);
              dropThreadId(v46, 1, add_explicit + 1);
              CICleanUpReset(v46, v44);
            }

            else
            {
              v30 = v8;
              v10 = *__error();
              v11 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "Gathering size data for repair", buf, 2u);
              }

              *__error() = v10;
              v12 = *MEMORY[0x1E695E480];
              alloc = *MEMORY[0x1E695E480];
              Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
              v14 = RLEOIDArrayCreateMutable(v12);
              *buf = 0;
              v40 = buf;
              v41 = 0x2000000000;
              v42 = 0;
              v38[0] = 0;
              v38[1] = v38;
              v38[2] = 0x2000000000;
              v38[3] = 0;
              v15 = *(v1 + 1392);
              v16 = *(v1 + 1384);
              v31[0] = MEMORY[0x1E69E9820];
              v17.n128_u64[0] = 0x40000000;
              v31[1] = 0x40000000;
              v36 = Mutable;
              v37 = v14;
              v32 = __si_repair_sizes_block_invoke;
              v33 = &unk_1E8191C38;
              v34 = v38;
              v35 = buf;
              if (v15 && *(v15 + 8))
              {
                v18 = 0;
                while ((v32)(v31, *(*v15 + 8 * v18), 0))
                {
                  if (++v18 >= *(v15 + 8))
                  {
                    goto LABEL_19;
                  }
                }
              }

              else
              {
LABEL_19:
                if (v16 && *(v16 + 8))
                {
                  v19 = 0;
                  do
                  {
                    if (!(v32)(v31, *(*v16 + 8 * v19), 1))
                    {
                      break;
                    }

                    ++v19;
                  }

                  while (v19 < *(v16 + 8));
                }
              }

              v20 = si_repair_size_for_oids(v17);
              CFRelease(v14);
              v22 = si_repair_size_for_oids(v21);
              CFRelease(Mutable);
              v23 = CFStringCreateWithCString(alloc, sysVersionCStr, 0x8000100u);
              si_set_property(v1, @"kSIRepairSizes", v23, 1, 0);
              CFRelease(v23);
              v24 = *__error();
              v25 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v52 = 134218240;
                v53 = v20;
                v54 = 2048;
                v55 = v22;
                _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Gathering size data for repair (%lld, %lld)", v52, 0x16u);
              }

              *__error() = v24;
              v26 = threadData[9 * v46 + 1] + 320 * v45;
              *(v26 + 312) = v30;
              v27 = *(v26 + 232);
              if (v27)
              {
                v27(*(v26 + 288));
              }

              dropThreadId(v46, 0, add_explicit + 1);
              _Block_object_dispose(v38, 8);
              _Block_object_dispose(buf, 8);
            }

            v28 = v51;
            result = MEMORY[0x1C6921200](v51);
            if ((v28 & 0x80000000) == 0)
            {
              return close(v28);
            }
          }
        }
      }
    }
  }

  return result;
}

void setupAndIssueMergeCleanup(uint64_t a1, int a2, NSObject *a3)
{
  v38 = a2;
  v39 = 0;
  v6 = si_needsVaccuum(*(a1 + 1384), &v38, &v39);
  v7 = *(a1 + 1384);
  v8 = *(v7 + 2);
  if (!v8)
  {
    return;
  }

  v9 = v6;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = (v8 - 1);
  while (1)
  {
    v16 = *(*v7 + 8 * v15);
    if (*(v16 + 56) != a2)
    {
      v16 = v11;
      goto LABEL_8;
    }

    v17 = atomic_load((v16 + 36));
    if ((v17 & 3) == 0 && *(v16 + 15203) != 1)
    {
      break;
    }

    v13 = *(v16 + 40);
    v10 = 1;
    v14 = v15;
    v12 = v15;
    v11 = *(*v7 + 8 * v15);
LABEL_8:
    --v15;
    if (!--v8)
    {
      if (!v10)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v14 = v15;
  v12 = v15;
  if (!v10)
  {
    return;
  }

LABEL_10:
  v18 = *(v7 + 2);
  v19 = *v7;
  if (v18)
  {
    v20 = v18 - 1;
    while (*(*(v19 + 8 * v20) + 40) != v13)
    {
      if (!v20--)
      {
        goto LABEL_26;
      }
    }

    v22 = 0;
    v14 = v20 + 1;
    v23 = 1;
    while (v20 + v22 != -1)
    {
      v24 = *(*v7 + 8 * (v20 + v22));
      if (*(v24 + 40) == v13 || *(v24 + 52) == *(v16 + 52) || (v25 = atomic_load((v24 + 36)), (v25 & 4) == 0))
      {
        ++v23;
        v14 = v20 + v22;
      }

      v26 = atomic_load((v24 + 36));
      if ((v26 & 3) == 0 && *(v24 + 15203) != 1)
      {
        break;
      }

      --v22;
    }

    if (v23)
    {
      v19 = *v7;
      goto LABEL_26;
    }
  }

  else
  {
LABEL_26:
    v27 = v12 + 1;
    v28 = *(v19 + 8 * v14);
    if (v28)
    {
      v29 = v27 == v14;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v30 = *(v28 + 56);
      v31 = v27 - v14;
      v32 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
      *v32 = a1;
      v32[16] = 1;
      v32[1041] = v9;
      *(v32 + 2) = v30;
      *(v32 + 3) = v31;
      v32[1042] = 0;
      *(v32 + 131) = "void setupAndIssueMergeCleanup(SIRef, int32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)";
      *(v32 + 274) = 9;
      v32[1100] = 1;
      __strlcpy_chk((v32 + 17), "live.%d.", v37);
      v33 = v32 + 1064;
      si_power_info_init((v32 + 1064), 0, 0, a3);
      if (!*(v32 + 136) && !*v33)
      {
        v35 = *(a1 + 2360);
        if (v35)
        {
          v36 = *(v35 + 64);
          if (v36)
          {
            *v33 = v36(*(v35 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9873, "void setupAndIssueMergeCleanup(SIRef, int32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)");
          }
        }
      }

      v34 = *(a1 + 1064);

      si_enqueue_work(v34, si_mergeIndex, v32);
    }
  }
}

uint64_t count_UncompactedIndexSet(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 <= a2)
  {
    return 0;
  }

  v3 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = 1;
    v5 = a2;
    do
    {
      v6 = *(*a1 + 8 * v5);
      v7 = atomic_load((v6 + 36));
      if ((v7 & 3) == 0 && *(v6 + 15203) != 1)
      {
        break;
      }

      v8 = atomic_load((*(*a1 + 8 * v5) + 36));
      if ((v8 & 4) == 0)
      {
        v3 = v4;
      }

      ++v4;
    }

    while (v5-- > 0);
    v2 = *(a1 + 8);
  }

  if (v2 >= v3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t CleanupWritableIndexes(uint64_t a1, __n128 a2)
{
  if (*(a1 + 8) < 2u)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*a1 + 8 * v3);
      v6 = atomic_load((v5 + 36));
      if ((v6 & 3) == 0 && (*(v5 + 15203) & 1) == 0)
      {
        _CIDisableUpdates(a2);
        v4 = 1;
      }

      v7 = v3 + 2;
      ++v3;
    }

    while (v7 < *(a1 + 8));
  }

  return v4 & 1;
}

void __OpenIndex_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  if (a2)
  {
    v5 = *(a2 + 1104);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __OpenIndex_block_invoke_7;
    v6[3] = &__block_descriptor_tmp_1093;
    v6[4] = a2;
    v6[5] = a5;
    si_enqueue_block(v5, v6);
  }
}

void __OpenIndex_block_invoke_7(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1384);
  if (count_UncompactedIndexSet(v2, *(v2 + 8) - 2))
  {
    v3 = *(*v2 + 8 * (*(v2 + 8) - 2));
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    setupAndIssueMergeCleanup(v4, v3, v5);
  }
}

void __OpenIndex_block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 1384);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4 >= 3 && count_IndexSet(v3, v4 - 2, 1) >= 3)
      {
        v5 = *(*v3 + 8 * (*(v3 + 8) - 2));

        setupAndIssueMergeCleanup(a2, v5, 0);
      }
    }
  }
}

uint64_t __si_repair_sizes_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(*(a2 + 64), sIndexExceptionCallbacks, a2, 0x20000000, add_explicit + 1);
    *buf = v5;
    v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v32 = HIDWORD(v5);
    v31 = __PAIR64__(v7, v8);
    *(v6 + 216) = 0;
    v9 = *(v6 + 312);
    v10 = *(v6 + 224);
    if (v10)
    {
      v10(*(v6 + 288));
    }

    v30 = *buf;
    v29 = v32;
    v28 = v31;
    if (_setjmp(v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v27, 2u);
      }

      *(v6 + 312) = v9;
      if ((~*(v6 + 212) & 0xA0000000) == 0)
      {
        v11 = *(v6 + 288);
        if (v11)
        {
          _CIMakeInvalid(v11);
        }
      }

      CIOnThreadCleanUpReset(v28);
      dropThreadId(v30, 1, add_explicit + 1);
      CICleanUpReset(v30, HIDWORD(v28));
    }

    else
    {
      v12 = *(a2 + 14432);
      if (v12)
      {
        v26 = *(a2 + 14408);
        if (v26)
        {
          v13 = *(a2 + 68);
          if (v13 >= 2)
          {
            v14 = 6;
            v15 = *(a2 + 45);
            for (i = 1; i != v13; ++i)
            {
              if (v15)
              {
                v17 = *(v12 + i);
              }

              else
              {
                v17 = (*(v12 + (((3435973837u * i) >> 32) & 0xFFFFFFFC)) >> (v14 - 30 * (i / 5))) & 0x3F;
              }

              v18 = v17 & 0xFFFFFFDF;
              if (v18)
              {
                v19 = v18 == 17;
                v20 = 56;
                if (v19)
                {
                  v20 = 48;
                }

                v21 = *(a1 + v20);
                if (v19)
                {
                  v22 = 32;
                }

                else
                {
                  v22 = 40;
                }

                SIValueSet<unsigned long long>::SIValueSetInsert((v21 + 216), *(v26 + 8 * i));
                ++*(*(*(a1 + v22) + 8) + 24);
              }

              v14 += 6;
            }
          }
        }
      }

      v23 = threadData[9 * v30 + 1] + 320 * v29;
      *(v23 + 312) = v9;
      v24 = *(v23 + 232);
      if (v24)
      {
        v24(*(v23 + 288));
      }

      dropThreadId(v30, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  return 1;
}

unint64_t si_repair_size_for_oids(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v1)
  {
    RLEOIDIteratorCreate(v1);
  }

  return 0;
}

void SICalculateSize(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v4 = *(a1 + 1016);
  if (v4)
  {
    v6 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
    v6[2] = a3;
    *v6 = a1;
    v6[1] = a2;

    si_enqueue_work(v4, si_get_size, v6);
  }

  else
  {

    a2(a3, 0);
  }
}

void si_get_size(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  v4 = *a1;
  v5 = *(*a1 + 1392);
  v6 = *(*a1 + 1384);
  if (v5 && *(v5 + 8) >= 1)
  {
    v7 = 0;
    v3 = 0;
    do
    {
      v3 += ContentIndexCalculateSize(*(*v5 + 8 * v7++), 6);
    }

    while (v7 < *(v5 + 8));
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (*(v6 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      v3 += ContentIndexCalculateSize(*(*v6 + 8 * v8++), 6);
    }

    while (v8 < *(v6 + 8));
  }

LABEL_13:
  v9 = *(v4 + 1192);
  if (v9)
  {
    if (*v9 != 1685287992)
    {
      v17 = *__error();
      v18 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *v9;
        v23.st_dev = 136315650;
        *&v23.st_mode = "db_get_size";
        WORD2(v23.st_ino) = 1024;
        *(&v23.st_ino + 6) = 258;
        HIWORD(v23.st_uid) = 1024;
        v23.st_gid = v19;
        _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", &v23, 0x18u);
      }

      *__error() = v17;
      v20 = __si_assert_copy_extra_332();
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 258, v22);
      free(v21);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    memset(&v23, 0, sizeof(v23));
    v10 = *(v9 + 848);
    if (!v10)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v11 = fstatat(*(v10 + 44), *(v10 + 72), &v23, 2048);
      v12 = g_prot_error_callback;
      if (v11 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v14 = *(v10 + 40);
      v15 = __error();
      if (((*(v12 + 16))(v12, v14, *v15, 8) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (!v11)
    {
      v16 = 2 * v23.st_size;
    }

    else
    {
LABEL_23:
      v16 = 0;
    }

    v3 += v16;
  }

LABEL_25:
  (a1[1])(a1[2], v3);

  free(a1);
}

uint64_t doFastFlushIndex(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = getiopolicy_np(0, 1);
  setiopolicy_np(0, 1, 1);
  v51 = 1;
  v3 = *(a1 + 2360);
  v47 = vextq_s8(*v3, *v3, 8uLL);
  v4 = *(a1 + 1192);
  v48 = v3[9].i64[0];
  v49 = v4;
  v5 = *(a1 + 1392);
  v50 = a1;
  v52 = v5;
  v6 = *(a1 + 1384);
  v53 = v6;
  valuePtr = *(a1 + 2136);
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v7)
  {
    v8 = v7;
    si_set_property(a1, @"ConsumedJournalSerialNumber", v7, 1, 0);
    CFRelease(v8);
  }

  pthread_mutex_lock((a1 + 1568));
  v45 = 0;
  if (fd_setDir(*(a1 + 32), &v45))
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v10 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v44 = v10;
    v11 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
    v42 = v12;
    v43 = HIDWORD(v10);
    v41 = v13;
    *(v11 + 216) = 0;
    v14 = *(v11 + 312);
    v15 = *(v11 + 224);
    if (v15)
    {
      v15(*(v11 + 288));
    }

    if (_setjmp(v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v11 + 312) = v14;
      CIOnThreadCleanUpReset(v41);
      dropThreadId(v44, 1, add_explicit + 1);
      CICleanUpReset(v44, v42);
    }

    else
    {
      v16 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v17 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, v16 + 1);
      v40 = v17;
      v38 = v18;
      v39 = HIDWORD(v17);
      v37 = v19;
      v20 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
      *(v20 + 216) = 0;
      v36 = *(v20 + 312);
      v21 = *(v20 + 224);
      if (v21)
      {
        v21(*(v20 + 288));
      }

      if (_setjmp(v20))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v20 + 312) = v36;
        CIOnThreadCleanUpReset(v37);
        dropThreadId(v40, 1, v16 + 1);
        CICleanUpReset(v40, v38);
      }

      else
      {
        _si_store_property_cache(a1, 0, 1);
        si_storesizes(a1, 0);
        v22 = *(a1 + 2360);
        if (v22)
        {
          v23 = *(v22 + 48);
          if (v23)
          {
            v23(*(v22 + 144));
          }
        }

        v24 = *(a1 + 6592);
        *buf = xmmword_1F427BAA0;
        *&buf[16] = *&off_1F427BAB0;
        v55 = xmmword_1F427BAC0;
        v56 = *off_1F427BAD0;
        v57 = &v47;
        v25 = _ContentIndexSyncIndexBulk(a1 + 1200, v5, v6, 4, 0, buf, v24, 0, 0);
        v26 = *(a1 + 2360);
        if (v26)
        {
          v27 = *(v26 + 56);
          if (v27)
          {
            v27(*(v26 + 144));
          }
        }

        if (v25)
        {
          v28 = *__error();
          v29 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "doFastFlushIndex";
            *&buf[12] = 1024;
            *&buf[14] = 2105;
            *&buf[18] = 1024;
            *&buf[20] = v25;
            _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: ContentIndexSyncIndexBulk err:%d", buf, 0x18u);
          }

          *__error() = v28;
        }

        v30 = threadData[9 * v40 + 1] + 320 * v39;
        *(v30 + 312) = v36;
        v31 = *(v30 + 232);
        if (v31)
        {
          v31(*(v30 + 288));
        }

        dropThreadId(v40, 0, v16 + 1);
      }

      v32 = threadData[9 * v44 + 1] + 320 * v43;
      *(v32 + 312) = v14;
      v33 = *(v32 + 232);
      if (v33)
      {
        v33(*(v32 + 288));
      }

      dropThreadId(v44, 0, add_explicit + 1);
    }

    v34 = v45;
    MEMORY[0x1C6921200](v45);
    if ((v34 & 0x80000000) == 0)
    {
      close(v34);
    }
  }

  pthread_mutex_unlock((a1 + 1568));
  return setiopolicy_np(0, 1, v2);
}

uint64_t __SIIndexInactive_block_invoke(__n128 a1)
{
  if (g_fd_list)
  {
    return _fd_close_inactive(-1, 0, 0, 1, a1);
  }

  return result;
}

void SIFetchClientsMetaInfo(uint64_t a1, uint64_t a2)
{
  v4 = bundleIdHash("com.apple.searchd", 0x12u) << 32;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5 = *(a1 + 1192);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SIFetchClientsMetaInfo_block_invoke;
  v6[3] = &unk_1E8191170;
  v6[4] = &v15;
  v6[5] = &v11;
  v6[6] = &v7;
  v6[7] = a1;
  db_iterate_objects_in_range(v5, v4, v4 + 0x100000000, 0, v6);
  (*(a2 + 16))(a2, *(v16 + 6), *(v12 + 6), *(v8 + 6));
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

uint64_t __SIFetchClientsMetaInfo_block_invoke(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v4 = a1[7];
  v13[0] = *(v4 + 2064);
  v13[1] = 0;
  if (!db_get_field_by_id(*(v4 + 1192), a2, v13, &v12, &v11))
  {
    string_for_id = v11;
    if ((v12[1] & 0x10) != 0)
    {
      string_for_id = db_get_string_for_id(*(a1[7] + 1192), *v11);
    }

    if (string_for_id && !strcmp(string_for_id, "com.apple.searchd"))
    {
      v7 = 0;
      ++*(*(a1[4] + 8) + 24);
      v10 = 0;
      __s2 = 0;
      while (db_next_field(*(a1[7] + 1192), a2, 0, &v10, &__s2, &v12) == 35)
      {
        if (!strncmp("_kMDItemStateInfo_", __s2, 0x11uLL))
        {
          v7 = 1;
          v8 = 1;
          if (*v12 == 14)
          {
            goto LABEL_13;
          }
        }
      }

      v8 = 0;
LABEL_13:
      *(*(a1[5] + 8) + 24) += v8;
      *(*(a1[6] + 8) + 24) += v7;
    }
  }

  return 1;
}

void si_setstorecookie(uint64_t a1, CFTypeRef cf)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1440);
  if (!v4 || !CFEqual(v4, cf))
  {
    v5 = CFRetain(cf);
    *(a1 + 1440) = v5;
    *(a1 + 1424) = CFUUIDGetUUIDBytes(v5);
    if (*(a1 + 1192))
    {
      if ((*(a1 + 1288) & 1) == 0)
      {
        indexmetadata = si_create_indexmetadata(a1, 1);
        v31 = indexmetadata;
        if (indexmetadata)
        {
          v7 = indexmetadata;
          v29 = 0;
          v30 = 0;
          add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
          v9 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
          v28 = v9;
          v10 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
          v26 = v11;
          v27 = HIDWORD(v9);
          v25 = v12;
          *(v10 + 216) = 0;
          v13 = *(v10 + 312);
          v14 = *(v10 + 224);
          if (v14)
          {
            v14(*(v10 + 288));
          }

          if (_setjmp(v10))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
            }

            *(v10 + 312) = v13;
            CIOnThreadCleanUpReset(v25);
            dropThreadId(v28, 1, add_explicit + 1);
            CICleanUpReset(v28, v26);
            v15 = v7;
          }

          else
          {
            if (db_get_field(*(a1 + 1192), v7, "kMDStoreUUID", &v29, &v30) || *(v29 + 8) != 16 || (*(a1 + 1424) == *v30 ? (v17 = *(a1 + 1432) == v30[1]) : (v17 = 0), !v17))
            {
              updated = db_add_field(*(a1 + 1192), &v31, 1u, "kMDStoreUUID", 0, 0x108u, 14, (a1 + 1424), v16, 16);
              if (updated || (updated = db_update_obj(*(a1 + 1192), v31, 12)) != 0)
              {
                v19 = updated;
                v20 = *__error();
                v21 = _SILogForLogForCategory(7);
                v22 = dword_1EBF46AE8 < 3;
                if (os_log_type_enabled(v21, (dword_1EBF46AE8 < 3)))
                {
                  *buf = 67109120;
                  v33 = v19;
                  _os_log_impl(&dword_1C278D000, v21, v22, "*warn* Failed setting store cookie (%d)", buf, 8u);
                }

                *__error() = v20;
              }

              else
              {
                db_dirty_datastore(*(a1 + 1192));
              }
            }

            v23 = threadData[9 * v28 + 1] + 320 * v27;
            *(v23 + 312) = v13;
            v24 = *(v23 + 232);
            if (v24)
            {
              v24(*(v23 + 288));
            }

            dropThreadId(v28, 0, add_explicit + 1);
            v15 = v31;
          }

          free(v15);
        }
      }
    }
  }
}

uint64_t SIProcessTerminating()
{
  v0 = 0;
  v12[1] = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong_explicit(&gTerminating, &v0, 1u, memory_order_relaxed, memory_order_relaxed);
  gProcessTerminating = 1;
  pthread_mutex_lock(&schlock);
  if (!gShutdownGroup)
  {
    gShutdownGroup = dispatch_group_create();
    if (global_schedulers[0])
    {
      Count = CFDictionaryGetCount(global_schedulers[0]);
      if (Count)
      {
        v4 = Count;
        v5 = 8 * Count;
        MEMORY[0x1EEE9AC00](v3);
        v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v6, v5);
        MEMORY[0x1EEE9AC00](v7);
        v8 = v6;
        bzero(v6, v5);
        CFDictionaryGetKeysAndValues(global_schedulers[0], v6, v6);
        if (v4 >= 1)
        {
          do
          {
            dispatch_group_enter(gShutdownGroup);
            ++v8;
            child_queue = si_create_child_queue(v9);
            v11 = *v6++;
            si_enqueue_work_with_qos(child_queue, 25, si_spindle_shutdown, v11);
            --v4;
          }

          while (v4);
        }
      }
    }
  }

  return pthread_mutex_unlock(&schlock);
}

void si_spindle_shutdown(uint64_t a1, int a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  pthread_mutex_lock(&schlock);
  if (!gAllIndexes)
  {
    pthread_mutex_unlock(&schlock);
    goto LABEL_2;
  }

  Count = CFSetGetCount(gAllIndexes);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v6, v5);
  CFSetGetValues(gAllIndexes, v6);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *&v6[8 * v7];
      if (*(v9 + 1404) == a1)
      {
        *&v6[8 * v8] = v9;
        CFSetRemoveValue(gAllIndexes, *&v6[8 * v7]);
        ++v8;
      }

      ++v7;
    }

    while (Count != v7);
    if (v8)
    {
      v10 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
      memcpy(v10, v6, 8 * v8);
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:
  pthread_mutex_unlock(&schlock);
  if (v10)
  {
    _SIShutdownIndexBulk(v10, v8, v11);
    free(v10);
  }

LABEL_2:
  if (gShutdownGroup)
  {
    dispatch_group_leave(gShutdownGroup);
  }
}

int *_SIShutdownIndexBulk(int *result, uint64_t a2, __n128 a3)
{
  v164 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v146 = v132;
    v143 = result;
    v3 = *result;
    v4 = *(*result + 1404);
    v145 = v4;
    v5 = *(v3 + 6584);
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](a3);
    v8 = &v132[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v10 = 8 * v9;
    v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
    v12 = &v132[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v144 = v13;
    v14 = 104 * v13;
    MEMORY[0x1EEE9AC00](v11);
    v16 = &v132[-v15];
    bzero(v8, v17);
    bzero(v12, v10);
    bzero(v16, v14);
    Current = CFAbsoluteTimeGetCurrent();
    v19 = *__error();
    v20 = _SILogForLogForCategory(11);
    v21 = 2 * (dword_1EBF46AF8 < 4);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 67109376;
      *&buf[4] = v145;
      *&buf[8] = 1024;
      *&buf[10] = v144;
      _os_log_impl(&dword_1C278D000, v20, v21, "shut down starting for spindle:%d count:%d", buf, 0xEu);
    }

    v22 = v8;
    v140 = v16;
    *__error() = v19;
    if ((v5 & 0x1000000) != 0)
    {
      v46 = v145;
      v48 = v143;
      v47 = v144;
      if (!exc_pthread_key)
      {
        pthread_key_create(&exc_pthread_key, 0);
      }

      v156[0] = MEMORY[0x1E69E9820];
      v156[1] = 0x40000000;
      v156[2] = ___SIShutdownIndexBulk_block_invoke;
      v156[3] = &__block_descriptor_tmp_1200;
      v157 = v46;
      v156[4] = v48;
      v156[5] = v12;
      v156[6] = v140;
      v156[7] = v47;
      v156[8] = v22;
      dispatch_apply(v47, 0, v156);
      v49 = *__error();
      v50 = _SILogForLogForCategory(11);
      v51 = 2 * (dword_1EBF46AF8 < 4);
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_100;
      }

      v52 = CFAbsoluteTimeGetCurrent();
      *buf = 67109376;
      *&buf[4] = v46;
      *&buf[8] = 2048;
      *&buf[10] = v52 - Current;
    }

    else
    {
      v24 = v143;
      v23 = v144;
      if (v144 >= 1)
      {
        v25 = 0;
        do
        {
          if (v4 != *(*v24 + 1404))
          {
            v128 = __si_assert_copy_extra_661(-1);
            v129 = v128;
            v130 = "";
            if (v128)
            {
              v130 = v128;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 16501, "indexSpindleId==si_indices[0]->indexSpindleId", v130);
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

          v26 = *&v24[2 * v25];
          if ((*(v26 + 1288) & 1) == 0)
          {
            *&v12[8 * v25] = _SIShutdownSetup(v26);
          }

          ++v25;
        }

        while (v23 != v25);
      }

      v139 = v16;
      v141 = v12;
      v27 = *__error();
      v28 = _SILogForLogForCategory(11);
      v29 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v30 - Current;
        _os_log_impl(&dword_1C278D000, v28, v29, "shutdown setup complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v27;
      v31 = v144;
      v142 = v22;
      if (v144 < 1)
      {
        v45 = 0;
      }

      else
      {
        v136 = 72;
        v134 = 320;
        v32 = v141;
        v33 = v143;
        v34 = 0;
        do
        {
          v35 = *v32;
          if (*v32)
          {
            *buf = 0;
            add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            v155 = 0;
            v154 = 0;
            v152 = 0;
            v153 = 0;
            v37 = setThreadIdAndInfo(*(*v33 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
            v154 = HIDWORD(v37);
            v155 = v37;
            v152 = v39;
            v153 = v38;
            v40 = *(&threadData[1] + v37 * v136) + HIDWORD(v37) * v134;
            *(v40 + 216) = 0;
            v41 = *(v40 + 312);
            v42 = *(v40 + 224);
            if (v42)
            {
              v42(*(v40 + 288));
            }

            v151 = v155;
            v150 = v154;
            v149 = v153;
            v148 = v152;
            if (_setjmp(v40))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v147[0] = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v147, 2u);
              }

              *(v40 + 312) = v41;
              CIOnThreadCleanUpReset(v148);
              dropThreadId(v151, 1, add_explicit + 1);
              CICleanUpReset(v151, v149);
            }

            else
            {
              _CISyncContextSync(v35, buf);
              v43 = threadData[9 * v151 + 1] + 320 * v150;
              *(v43 + 312) = v41;
              v44 = *(v43 + 232);
              if (v44)
              {
                v44(*(v43 + 288));
              }

              dropThreadId(v151, 0, add_explicit + 1);
            }

            if (!v34)
            {
              v34 = *buf;
            }
          }

          v45 = v34;
          v33 += 2;
          ++v32;
          --v31;
        }

        while (v31);
      }

      v53 = v45;
      v54 = *__error();
      v55 = _SILogForLogForCategory(11);
      v56 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v57 - Current;
        _os_log_impl(&dword_1C278D000, v55, v56, "shutdown sync complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v54;
      v58 = v144;
      v59 = v141;
      v60 = v139;
      if (v53)
      {
        fd_sync(v53, 1);
        v61 = *__error();
        v62 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = CFAbsoluteTimeGetCurrent();
          *buf = 67109376;
          *&buf[4] = v145;
          *&buf[8] = 2048;
          *&buf[10] = v63 - Current;
          _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "shutdown sync-fsync for spindle:%d after %f seconds.", buf, 0x12u);
        }

        *__error() = v61;
      }

      if (v58 < 1)
      {
        v75 = 0;
      }

      else
      {
        v64 = &v60[104 * v58];
        v65 = 0;
        v138 = v64;
        v137 = 72;
        v135 = 320;
        v66 = v143;
        do
        {
          v67 = *v59;
          if (*v59)
          {
            *buf = 0;
            v68 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            v155 = 0;
            v154 = 0;
            v152 = 0;
            v153 = 0;
            v69 = setThreadIdAndInfo(*(*v66 + 32), sFdExceptionCallbacks, 0, 1, v68 + 1);
            v154 = HIDWORD(v69);
            v155 = v69;
            v152 = v71;
            v153 = v70;
            v72 = *(&threadData[1] + v69 * v137) + HIDWORD(v69) * v135;
            *(v72 + 216) = 0;
            v73 = *(v72 + 312);
            v74 = *(v72 + 224);
            if (v74)
            {
              v74(*(v72 + 288));
            }

            v151 = v155;
            v150 = v154;
            v149 = v153;
            v148 = v152;
            if (_setjmp(v72))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v147[0] = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v147, 2u);
              }

              *(v72 + 312) = v73;
              CIOnThreadCleanUpReset(v148);
              dropThreadId(v151, 1, v68 + 1);
              CICleanUpReset(v151, v149);
            }

            else
            {
              _CISyncContextCommitData(v67, buf, v138);
              v76 = threadData[9 * v151 + 1] + 320 * v150;
              *(v76 + 312) = v73;
              v77 = *(v76 + 232);
              if (v77)
              {
                v77(*(v76 + 288));
              }

              dropThreadId(v151, 0, v68 + 1);
            }

            if (v65)
            {
              v75 = v65;
            }

            else
            {
              v75 = *buf;
            }
          }

          else
          {
            v75 = v65;
          }

          v66 += 2;
          ++v59;
          v65 = v75;
          --v58;
        }

        while (v58);
      }

      v78 = *__error();
      v79 = _SILogForLogForCategory(11);
      v80 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v79, v80))
      {
        v81 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v81 - Current;
        _os_log_impl(&dword_1C278D000, v79, v80, "shutdown commit data complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v78;
      v82 = v144;
      if (v75)
      {
        fd_sync(v75, 1);
        v83 = *__error();
        v84 = _SILogForLogForCategory(11);
        v85 = 2 * (dword_1EBF46AF8 < 4);
        if (os_log_type_enabled(v84, v85))
        {
          v86 = CFAbsoluteTimeGetCurrent();
          *buf = 67109376;
          *&buf[4] = v145;
          *&buf[8] = 2048;
          *&buf[10] = v86 - Current;
          _os_log_impl(&dword_1C278D000, v84, v85, "shutdown commit-fsync for spindle:%d after %f seconds.", buf, 0x12u);
        }

        *__error() = v83;
      }

      if (v82 >= 1)
      {
        v133 = 72;
        v87 = v141;
        v89 = v143;
        v88 = v144;
        do
        {
          v90 = *v87;
          if (*v87)
          {
            v91 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            *buf = 0;
            v155 = 0;
            v154 = 0;
            v153 = 0;
            v92 = setThreadIdAndInfo(*(*v89 + 32), sFdExceptionCallbacks, 0, 1, v91 + 1);
            v155 = HIDWORD(v92);
            *buf = v92;
            v154 = v93;
            v153 = v94;
            v95 = *(&threadData[1] + v92 * v133) + 320 * HIDWORD(v92);
            *(v95 + 216) = 0;
            v96 = *(v95 + 312);
            v97 = *(v95 + 224);
            if (v97)
            {
              v97(*(v95 + 288));
            }

            v152 = *buf;
            v151 = v155;
            v150 = v154;
            v149 = v153;
            if (_setjmp(v95))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                LOWORD(v148) = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v148, 2u);
              }

              *(v95 + 312) = v96;
              CIOnThreadCleanUpReset(v149);
              dropThreadId(v152, 1, v91 + 1);
              CICleanUpReset(v152, v150);
            }

            else
            {
              _CISyncContextCommitHeader(v90);
              v98 = threadData[9 * v152 + 1] + 320 * v151;
              *(v98 + 312) = v96;
              v99 = *(v98 + 232);
              if (v99)
              {
                v99(*(v98 + 288));
              }

              dropThreadId(v152, 0, v91 + 1);
            }
          }

          v89 += 2;
          ++v87;
          --v88;
        }

        while (v88);
      }

      v100 = *__error();
      v101 = _SILogForLogForCategory(11);
      v102 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v101, v102))
      {
        v103 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v103 - Current;
        _os_log_impl(&dword_1C278D000, v101, v102, "shutdown commit header complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v100;
      v104 = v144;
      v105 = v142;
      if (v144 >= 1)
      {
        v107 = v140;
        v106 = v141;
        v108 = v144;
        do
        {
          v109 = *v106;
          if (*v106)
          {
            if (!*(v109 + 168))
            {
              v110 = *(v109 + 72);
              if (v110)
              {
                if (CIDocCountsNonEmpty(v107))
                {
                  v111 = *(v109 + 80);
                  v112 = *(v107 + 5);
                  v161 = *(v107 + 4);
                  v162 = v112;
                  v163 = *(v107 + 12);
                  v113 = *(v107 + 1);
                  *buf = *v107;
                  *&buf[16] = v113;
                  v114 = *(v107 + 3);
                  v159 = *(v107 + 2);
                  v160 = v114;
                  v110(v111, buf);
                }
              }
            }
          }

          v107 += 104;
          ++v106;
          --v108;
        }

        while (v108);
        v115 = v141;
        v105 = v142;
        v104 = v144;
        v116 = v144;
        do
        {
          if (*v115)
          {
            _CISyncContextDestroy(*v115);
          }

          ++v115;
          --v116;
        }

        while (v116);
      }

      v117 = *__error();
      v118 = _SILogForLogForCategory(11);
      v119 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v118, v119))
      {
        v120 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v120 - Current;
        _os_log_impl(&dword_1C278D000, v118, v119, "shut down complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v117;
      if (v104 >= 1)
      {
        v121 = v143;
        v122 = v105;
        v123 = v104;
        do
        {
          v124 = v123;
          v125 = v122;
          v126 = v121 + 1;
          _SIShutdownComplete(*v121);
          *v125 = 0;
          v121 = v126;
          v122 = v125 + 1;
          v123 = v124 - 1;
        }

        while (v124 != 1);
      }

      v49 = *__error();
      v50 = _SILogForLogForCategory(11);
      v51 = 2 * (dword_1EBF46AF8 < 4);
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_100;
      }

      v127 = CFAbsoluteTimeGetCurrent();
      *buf = 67109376;
      *&buf[4] = v145;
      *&buf[8] = 2048;
      *&buf[10] = v127 - Current;
    }

    _os_log_impl(&dword_1C278D000, v50, v51, "shut down complete for spindle:%d after %f seconds.", buf, 0x12u);
LABEL_100:
    result = __error();
    *result = v49;
  }

  return result;
}

void *_SIShutdownSetup(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a1 && sContactsIndex == a1)
  {
    sContactsIndex = 0;
  }

  bzero(v62, 0x400uLL);
  v2 = fcntl(*(a1 + 32), 50, v62);
  if (v62[0])
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
    v4 = v62;
  }

  v5 = *__error();
  v6 = _SILogForLogForCategory(0);
  v7 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1 + 32);
    *buf = 67109378;
    *&buf[4] = v8;
    *&buf[8] = 2080;
    *&buf[10] = v4;
    _os_log_impl(&dword_1C278D000, v6, v7, "Index shut down starting for index at %d %s.", buf, 0x12u);
  }

  *__error() = v5;
  Current = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_lock((a1 + 2224));
  v10 = CFAbsoluteTimeGetCurrent();
  activityJournalWriteVInt64(a1 + 2192, 35, v10);
  os_unfair_lock_unlock((a1 + 2224));
  *(a1 + 2428) = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v11 = *(a1 + 1392);
  v12 = *(a1 + 1384);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 0x40000000;
  v55 = ___SIShutdownSetup_block_invoke;
  v56 = &unk_1E8191F90;
  v57 = &v58;
  if (v11 && *(v11 + 8))
  {
    v13 = 0;
    while ((v55)(v54, *(*v11 + 8 * v13), 0))
    {
      if (++v13 >= *(v11 + 8))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (v12 && *(v12 + 8))
    {
      v14 = 0;
      do
      {
        if (!(v55)(v54, *(*v12 + 8 * v14), 1))
        {
          break;
        }

        ++v14;
      }

      while (v14 < *(v12 + 8));
    }
  }

  if (v59[3])
  {
    goto LABEL_23;
  }

  si_scheduler_boost_and_forget(*(a1 + 944));
  si_scheduler_boost_and_forget(*(a1 + 864));
  si_scheduler_boost_and_forget(*(a1 + 872));
  si_scheduler_boost_and_forget(*(a1 + 896));
  si_scheduler_boost_and_forget(*(a1 + 912));
  si_scheduler_boost_and_forget(*(a1 + 888));
  _SIShutdownIndexSchedulers(a1, 1, 1, Current);
  si_cancel_activectx(a1);
  *(a1 + 2420) = 1;
  if (*(a1 + 2481) == 4 && (*(a1 + 2460) & 1) == 0)
  {
    v27 = *__error();
    v28 = _SILogForLogForCategory(11);
    v29 = 2 * (dword_1EBF46AF8 < 4);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(a1 + 32);
      *buf = 67109376;
      *&buf[4] = v30;
      *&buf[8] = 1024;
      *&buf[10] = 4;
      _os_log_impl(&dword_1C278D000, v28, v29, "shutdown %d clean %x", buf, 0xEu);
    }

    v15 = 0;
    *__error() = v27;
  }

  else
  {
    v16 = (a1 + 1384);
    v53 = 0;
    if (!*(a1 + 1192) && !*(a1 + 1392) && !*v16)
    {
LABEL_23:
      v15 = 0;
      goto LABEL_57;
    }

    if (fd_setDir(*(a1 + 32), &v53))
    {
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v18 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
      v52 = v18;
      v19 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
      v50 = v20;
      v51 = HIDWORD(v18);
      v49 = v21;
      *(v19 + 216) = 0;
      v22 = *(v19 + 312);
      v23 = *(v19 + 224);
      if (v23)
      {
        v23(*(v19 + 288));
      }

      if (_setjmp(v19))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v19 + 312) = v22;
        CIOnThreadCleanUpReset(v49);
        dropThreadId(v52, 1, add_explicit + 1);
        CICleanUpReset(v52, v50);
        goto LABEL_23;
      }

      if (*(a1 + 1192))
      {
        _si_store_property_cache(a1, 0, 0);
        si_storesizes(a1, 0);
      }

      v31 = v53;
      MEMORY[0x1C6921200](v53);
      if ((v31 & 0x80000000) == 0)
      {
        close(v31);
      }

      if (*(a1 + 1288))
      {
        v32 = 0;
      }

      else
      {
        v33 = *(a1 + 1192);
        v48 = *v16;
        v34 = malloc_type_malloc(0x40uLL, 0x10A0040BD50C579uLL);
        *v34 = 0;
        *(v34 + 1) = 0;
        *(v34 + 2) = 0;
        *(v34 + 3) = v33;
        *(v34 + 4) = a1;
        *(v34 + 20) = 257;
        *(v34 + 42) = 0;
        *(v34 + 23) = 0;
        *(v34 + 3) = vextq_s8(v48, v48, 8uLL);
        v35 = *(a1 + 1392);
        do
        {
          do
          {
            v36 = v35;
            v37 = *(a1 + 1384);
            __dmb(0xBu);
            v35 = *(a1 + 1392);
          }

          while (v36 != v35);
          v38 = *(a1 + 1392);
          v39 = *v16;
          v35 = v38;
        }

        while (v37 != *v16);
        v40 = *(a1 + 6592);
        *buf = xmmword_1F427BAA0;
        *&buf[16] = *&off_1F427BAB0;
        *&buf[32] = xmmword_1F427BAC0;
        v64 = *off_1F427BAD0;
        v65 = v34;
        v32 = _CISyncContextCreate(a1 + 1200, v38, v39, 2, 0, buf, v40, 0, 0);
      }

      v41 = *__error();
      v42 = _SILogForLogForCategory(0);
      v43 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = CFAbsoluteTimeGetCurrent();
        *buf = 136315394;
        *&buf[4] = v4;
        *&buf[12] = 2048;
        *&buf[14] = v44 - Current;
        _os_log_impl(&dword_1C278D000, v42, v43, "Index closed for %s after %f seconds.", buf, 0x16u);
      }

      *__error() = v41;
      v45 = threadData[9 * v52 + 1] + 320 * v51;
      *(v45 + 312) = v22;
      v46 = *(v45 + 232);
      if (v46)
      {
        v46(*(v45 + 288));
      }

      dropThreadId(v52, 0, add_explicit + 1);
      v15 = v32;
    }

    else
    {
      v24 = *__error();
      v25 = *__error();
      v26 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "_SIShutdownSetup";
        *&buf[12] = 1024;
        *&buf[14] = 16665;
        *&buf[18] = 1024;
        *&buf[20] = v24;
        *&buf[24] = 2080;
        *&buf[26] = v4;
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: setDir 1 error %d (%s)", buf, 0x22u);
      }

      v15 = 0;
      *__error() = v25;
    }
  }

LABEL_57:
  _Block_object_dispose(&v58, 8);
  return v15;
}

uint64_t _SIShutdownComplete(uint64_t a1)
{
  if (a1 && sContactsIndex == a1)
  {
    sContactsIndex = 0;
  }

  si_cancel_activectx(a1);
  pthread_mutex_lock((a1 + 1880));
  if (!*(a1 + 2416))
  {
    *(a1 + 2416) = 1;
    pthread_cond_signal((a1 + 1944));
  }

  return pthread_mutex_unlock((a1 + 1880));
}

_DWORD *SIWaitForAllIndexShutdown()
{
  v13 = *MEMORY[0x1E69E9840];
  result = SIProcessTerminating();
  if (gShutdownGroup)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v2 = *__error();
    v3 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "SIWaitForAllIndexShutdown start", &v11, 2u);
    }

    *__error() = v2;
    v4 = gShutdownGroup;
    v5 = dispatch_time(0, 30000000000);
    v6 = dispatch_group_wait(v4, v5);
    v7 = *__error();
    v8 = _SILogForLogForCategory(11);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "SIWaitForAllIndexShutdown timeout", &v11, 2u);
      }

      *__error() = v7;
      _exit(1);
    }

    if (v9)
    {
      v10 = CFAbsoluteTimeGetCurrent();
      v11 = 134217984;
      v12 = v10 - Current;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "SIWaitForAllIndexShutdown complete after %f", &v11, 0xCu);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void SICloseIndex(char *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(11);
  v4 = 2 * (dword_1EBF46AF8 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 67109120;
    *&buf[4] = gTerminating;
    _os_log_impl(&dword_1C278D000, v3, v4, "SICloseIndex, terminating:%d", buf, 8u);
  }

  *__error() = v2;
  if (gTerminating)
  {
    *(a1 + 605) = 1;
    **(a1 + 824) = -1;
  }

  _SICloseIndex(a1, 1);
  si_cancel_activectx(a1);
  dispatch_sync(freeQueue, &__block_literal_global_1209);
  for (i = 832; i != 864; i += 8)
  {
    dispatch_release(*&a1[i]);
  }

  dispatch_release(*(a1 + 148));
  if ((a1[828] & 8) != 0)
  {
    if (*(a1 + 605))
    {
      return;
    }

LABEL_13:
    v7 = *(a1 + 174);
    v8 = *(a1 + 173);
    if (v7)
    {
      LODWORD(v9) = *(v7 + 8);
      if (v9)
      {
        v10 = 0;
        do
        {
          freeIndex(*(*v7 + 8 * v10++));
          v9 = *(v7 + 8);
        }

        while (v10 < v9);
      }

      if (!v8)
      {
        goto LABEL_25;
      }
    }

    else if (!v8)
    {
      goto LABEL_28;
    }

    LODWORD(v11) = *(v8 + 8);
    if (v11)
    {
      v12 = 0;
      do
      {
        freeIndex(*(*v8 + 8 * v12++));
        v11 = *(v8 + 8);
      }

      while (v12 < v11);
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    LODWORD(v9) = *(v7 + 8);
LABEL_25:
    bzero(*v7, 8 * v9);
    *(v7 + 8) = 0;
    *(v7 + 16) = -1;
    if (v8)
    {
      LODWORD(v11) = *(v8 + 8);
LABEL_27:
      bzero(*v8, 8 * v11);
      *(v8 + 8) = 0;
      *(v8 + 16) = -1;
    }

LABEL_28:
    v13 = *(a1 + 225);
    if (v13)
    {
      CFRelease(v13);
      CFRelease(*(a1 + 226));
      pthread_mutex_destroy((a1 + 1816));
    }

    v14 = *(a1 + 213);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(a1 + 827);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(a1 + 177);
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = *(a1 + 222);
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(a1 + 223);
    if (v18)
    {
      CFRelease(v18);
    }

    if ((a1[2072] & 1) == 0)
    {
      v19 = *(a1 + 826);
      if (v19)
      {
        CFRelease(v19);
      }

      *(a1 + 826) = 0;
    }

    pthread_mutex_destroy((a1 + 1712));
    pthread_mutex_destroy((a1 + 1320));
    ContentIndexListFree(*(a1 + 174));
    ContentIndexListFree(*(a1 + 173));
    v20 = *(a1 + 860);
    if (v20)
    {
      db_release_datastore_no_sync(v20);
    }

    v21 = *(a1 + 149);
    if (v21)
    {
      db_release_datastore_no_sync(v21);
    }

    v22 = *(a1 + 828);
    if (v22)
    {
      freeReverseDirStore(v22);
    }

    v23 = *(a1 + 261);
    if (v23)
    {
      CFRelease(v23);
    }

    *(a1 + 261) = 0;
    v24 = *(a1 + 262);
    if (v24)
    {
      CFRelease(v24);
    }

    *(a1 + 262) = 0;
    v25 = *(a1 + 22);
    *buf = *(a1 + 21);
    v58 = v25;
    v26 = *(a1 + 24);
    v59 = *(a1 + 23);
    v60 = v26;
    releaseCommDates(buf);
    v27 = *(a1 + 26);
    *buf = *(a1 + 25);
    v58 = v27;
    v28 = *(a1 + 28);
    v59 = *(a1 + 27);
    v60 = v28;
    releaseCommDates(buf);
    v29 = *(a1 + 30);
    *buf = *(a1 + 29);
    v58 = v29;
    v30 = *(a1 + 32);
    v59 = *(a1 + 31);
    v60 = v30;
    releaseCommDates(buf);
    v31 = *(a1 + 34);
    *buf = *(a1 + 33);
    v58 = v31;
    v32 = *(a1 + 36);
    v59 = *(a1 + 35);
    v60 = v32;
    releaseCommDates(buf);
    v33 = *(a1 + 38);
    *buf = *(a1 + 37);
    v58 = v33;
    v34 = *(a1 + 40);
    v59 = *(a1 + 39);
    v60 = v34;
    releaseCommDates(buf);
    v35 = *(a1 + 82);
    if (v35)
    {
      CFRelease(v35);
    }

    *(a1 + 82) = 0;
    v36 = *(a1 + 36);
    if (v36)
    {
      CFRelease(v36);
    }

    *(a1 + 36) = 0;
    v37 = *(a1 + 37);
    if (v37)
    {
      CFRelease(v37);
    }

    *(a1 + 37) = 0;
    v38 = *(a1 + 39);
    if (v38)
    {
      CFRelease(v38);
    }

    *(a1 + 39) = 0;
    v39 = *(a1 + 40);
    if (v39)
    {
      CFRelease(v39);
    }

    *(a1 + 40) = 0;
    v40 = *(a1 + 9);
    if (v40)
    {
      CFRelease(v40);
    }

    *(a1 + 9) = 0;
    v41 = *(a1 + 180);
    if (v41)
    {
      CFRelease(v41);
    }

    *(a1 + 180) = 0;
    v42 = *(a1 + 83);
    if (v42)
    {
      CFRelease(v42);
    }

    *(a1 + 83) = 0;
    v43 = *(a1 + 131);
    if (v43 && !*v43)
    {
      si_workqueue_drain(*(a1 + 131));
      si_workqueue_destroy(v43);
    }

    for (j = 864; j != 1008; j += 8)
    {
      v45 = *&a1[j];
      if (v45 && atomic_fetch_add((v45 + 96), 0xFFFFFFFF) == 1)
      {
        _si_scheduler_destroy(v45);
      }
    }

    v46 = *(a1 + 351);
    v47 = *(a1 + 187);
    if (v47)
    {
      CFRelease(v47);
    }

    v48 = *(a1 + 295);
    if (v48)
    {
      v49 = *(v48 + 24);
      if (v49)
      {
        v49();
      }
    }

    v50 = *(a1 + 296);
    if (v50)
    {
      CFRelease(v50);
    }

    *(a1 + 296) = 0;
    si_deleteExhaustedRemappings(a1, *(a1 + 297));
    *(a1 + 297) = 0;
    v51 = *(a1 + 825);
    if (v51)
    {
      CFRelease(v51);
    }

    *(a1 + 825) = 0;
    v52 = *(a1 + 281);
    if (v52)
    {
      free(*v52);
      free(v52[1]);
      free(v52);
    }

    v53 = *(a1 + 831);
    if (v53)
    {
      TermUpdateSetRelease(v53);
    }

    pthread_rwlock_destroy((a1 + 6656));
    pthread_mutex_destroy((a1 + 1880));
    pthread_cond_destroy((a1 + 1944));
    pthread_mutex_destroy((a1 + 1504));
    pthread_mutex_destroy((a1 + 1568));
    pthread_mutex_destroy((a1 + 1632));
    pthread_mutex_destroy(a1 + 109);
    pthread_mutex_destroy((a1 + 2256));
    free(*(a1 + 865));
    doc_store_close(*(a1 + 162));
    *(a1 + 162) = 0;
    si_cancel_activectx(a1);
    *a1 = 0;
    if (gFlushSuspendOnceToken != -1)
    {
      dispatch_once(&gFlushSuspendOnceToken, &__block_literal_global_1212);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&v58 = ___SIFreeIndex_block_invoke_3;
    *(&v58 + 1) = &__block_descriptor_tmp_1214;
    *&v59 = a1;
    dispatch_async(gFlushSuspendQueue, buf);
    global_queue = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SIFreeIndex_block_invoke_4;
    block[3] = &__block_descriptor_tmp_1215;
    block[4] = v46;
    dispatch_async(global_queue, block);
    CIPurgeTokenizers();
    v55 = 240;
    do
    {
      slab_cleanup(v55);
      v55 = (v55 + 1);
    }

    while (v55 != 255);
    return;
  }

  pthread_mutex_lock(&schlock);
  v6 = *(a1 + 605);
  if (gAllIndexes)
  {
    CFSetRemoveValue(gAllIndexes, a1);
  }

  pthread_mutex_unlock(&schlock);
  if (!v6)
  {
    goto LABEL_13;
  }
}

CFDictionaryRef SICopyProperties(uint64_t a1)
{
  if (!*(a1 + 1192))
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 1504));
  v2 = *(a1 + 1496);
  if (!v2)
  {
    if (!si_create_propertydict(a1, 0, 0))
    {
      Copy = 0;
      goto LABEL_6;
    }

    v2 = *(a1 + 1496);
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v2);
LABEL_6:
  pthread_mutex_unlock((a1 + 1504));
  return Copy;
}

uint64_t SIGetIndexVersion(uint64_t result)
{
  if (result)
  {
    return *(result + 6932);
  }

  return result;
}

uint64_t SIGetObjectCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 1192)) != 0)
  {
    return db_get_object_count(v1);
  }

  else
  {
    return -1;
  }
}

uint64_t SISyncIndexForLikelyShutdown(uint64_t result)
{
  if (result)
  {
    if (*(result + 1192) && *(result + 1040) && *(result + 1048) && *(result + 1160))
    {
      si_enqueue_barrier_with_qos(*(result + 1104), 9, si_flush_index_for_likely_shutdown_delayed0, result);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void si_flush_index_for_likely_shutdown_delayed0(uint64_t a1, int a2)
{
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(a1 + 1160), 9, si_flush_index_for_likely_shutdown_delayed1, a1);
  }
}

void si_flush_index_for_likely_shutdown_delayed1(uint64_t a1, int a2)
{
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(a1 + 1048), 9, si_flush_index_for_likely_shutdown_delayed, a1);
  }
}

void si_flush_index_for_likely_shutdown_delayed(uint64_t a1, int a2)
{
  if (!a2)
  {
    si_enqueue_work_with_qos(*(a1 + 1040), 9, fastFlushIndex, a1);
  }
}

void fastFlushIndex(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = os_transaction_create();
    doFastFlushIndex(a1);

    os_release(v4);
  }
}

void _SIGetAllOids(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  if (a1 && *(a1 + 1192))
  {
    v5 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
    v5[2] = a3;
    *v5 = a1;
    v5[1] = a2;
    v6 = *(a1 + 1040);

    si_enqueue_work(v6, si_gatherOids, v5);
  }

  else
  {

    a2(a3, 0, 1);
  }
}

void si_gatherOids(uint64_t *a1, int a2)
{
  if (a2)
  {
    (a1[1])(a1[2], 0, 1);
  }

  else
  {
    v3 = *a1;
    v4 = *(*a1 + 1384);
    v5 = *(*a1 + 1392);
    Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
    v10 = 0;
    if (fd_setDir(*(v3 + 32), &v10))
    {
      if (*(v5 + 8))
      {
        v7 = 0;
        do
        {
          _CIAddOids(*(*v5 + 8 * v7++), Mutable);
        }

        while (v7 < *(v5 + 8));
      }

      if (*(v4 + 8))
      {
        v8 = 0;
        do
        {
          _CIAddOids(*(*v4 + 8 * v8++), Mutable);
        }

        while (v8 < *(v4 + 8));
      }

      v9 = v10;
      MEMORY[0x1C6921200](v10);
      if ((v9 & 0x80000000) == 0)
      {
        close(v9);
      }
    }

    (a1[1])(a1[2], Mutable, 0);
  }

  free(a1);
}

void _SICheckIndexForDuplicateOids(uint64_t a1)
{
  if (a1 && *(a1 + 1192))
  {
    v2 = *(a1 + 1064);
    if (v2)
    {
      si_enqueue_work_with_qos(v2, 9, si_checkDuplicateOids, a1);
    }
  }
}

void si_checkDuplicateOids(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = *(a1 + 2368);
    if (v3 && CFArrayGetCount(v3))
    {
      v4 = *(a1 + 1064);

      si_enqueue_work_with_qos(v4, 9, _si_checkDuplicateOidsAfterCompact, a1);
    }

    else
    {

      _si_checkDuplicateOids(a1);
    }
  }
}

void _si_checkDuplicateOids(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  bzero(v37, 0x400uLL);
  v2 = fcntl(*(a1 + 32), 50, v37);
  if (v37[0])
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
    v4 = v37;
  }

  v24 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 18206);
  atomic_fetch_add((a1 + 1452), 1u);
  v5 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
  atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
  v6 = *__error();
  v7 = _SILogForLogForCategory(7);
  v8 = dword_1EBF46AE8 < 3;
  if (os_log_type_enabled(v7, (dword_1EBF46AE8 < 3)))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1C278D000, v7, v8, "*warn* Starting duplicate oid check for %s", &buf, 0xCu);
  }

  *__error() = v6;
  v9 = *MEMORY[0x1E695E480];
  v10 = SIUINT64SetCreate(*MEMORY[0x1E695E480]);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x2000000000;
  v36 = 0;
  v11 = *(a1 + 1392);
  v12 = *(a1 + 1384);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v26 = ___si_checkDuplicateOids_block_invoke;
  v27 = &unk_1E81923D0;
  p_buf = &buf;
  v29 = v10;
  if (v12)
  {
    v13 = *(v12 + 8);
    while (v13 >= 1)
    {
      v14 = v13 - 1;
      v15 = (v26)(v25, *(*v12 + 8 * v13 - 8), 1);
      v13 = v14;
      if (!v15)
      {
        goto LABEL_18;
      }
    }
  }

  if (v11)
  {
    v16 = *(v11 + 8);
    do
    {
      if (v16 < 1)
      {
        break;
      }

      v17 = v16 - 1;
      v18 = (v26)(v25, *(*v11 + 8 * v16 - 8), 0);
      v16 = v17;
    }

    while (v18);
  }

LABEL_18:
  CFRelease(v10);
  v19 = *__error();
  v20 = _SILogForLogForCategory(7);
  v21 = dword_1EBF46AE8 < 3;
  if (os_log_type_enabled(v20, (dword_1EBF46AE8 < 3)))
  {
    v22 = *(*(&buf + 1) + 24);
    *v30 = 136315394;
    v31 = v4;
    v32 = 1024;
    v33 = v22;
    _os_log_impl(&dword_1C278D000, v20, v21, "*warn* Finished duplicate oid check for %s. Missing deletes:%d", v30, 0x12u);
  }

  *__error() = v19;
  si_scheduler_resume(*(a1 + 864), v24, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18223);
  si_scheduler_resume(*(a1 + 872), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18224);
  v23 = CFStringCreateWithCString(v9, sysVersionCStr, 0x8000100u);
  SISetProperty(a1, @"kIndexCheckDupOids", v23);
  CFRelease(v23);
  _Block_object_dispose(&buf, 8);
}

void _si_checkDuplicateOidsAfterCompact(uint64_t a1, int a2)
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
        _os_log_impl(&dword_1C278D000, v7, v8, "*warn* Skipping duplicate oid check for %s", buf, 0xCu);
      }

      *__error() = v6;
    }

    else
    {

      _si_checkDuplicateOids(a1);
    }
  }
}

uint64_t _SIIssueRecovery(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 1192))
    {
      bzero(v7, 0x400uLL);
      result = fcntl(*(v1 + 32), 50, v7);
      if ((result & 0x80000000) == 0)
      {
        if (v7[0])
        {
          v2 = *__error();
          v3 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v6 = v7;
            _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "Recovery issued for %s", buf, 0xCu);
          }

          *__error() = v2;
          *buf = 0;
          result = fd_setDir(*(v1 + 32), buf);
          if (result)
          {
            renameatx_np(*(v1 + 32), "indexState", *(v1 + 32), "indexState.aside", 0x10u);
            si_makeUnavailable(v1, 22, 2, 10, "recovery");
            v4 = *buf;
            result = MEMORY[0x1C6921200](*buf);
            if ((v4 & 0x80000000) == 0)
            {
              return close(v4);
            }
          }
        }
      }
    }
  }

  return result;
}

int *_SISetQueryBehavior(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = gSIQueryBehavior;
  gSIQueryBehavior = a1;
  v2 = *__error();
  v3 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109376;
    v5[1] = v1;
    v6 = 1024;
    v7 = gSIQueryBehavior;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "_SISetQueryBehavior from %d to %d", v5, 0xEu);
  }

  result = __error();
  *result = v2;
  return result;
}

void si_cacheCleanup(void *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    walk = a1[2];
    if (!walk)
    {
      bzero(&v16, 0x400uLL);
      if (fcntl(*(v3 + 32), 50, &v16) < 0 || !v16)
      {
        walk = a1[2];
        if (!walk)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __strlcat_chk();
        v14 = xmmword_1C2BFB198;
        v15 = 0;
        fsi_attr_size(&v14);
        walk = fsi_create_walk(v5);
        a1[2] = walk;
        if (!walk)
        {
          goto LABEL_13;
        }
      }
    }

    if (!**(v3 + 6592))
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2000000000;
      v19 = 0;
      *&v8 = MEMORY[0x1E69E9820];
      *(&v8 + 1) = 0x40000000;
      v9 = __si_cacheCleanup_block_invoke;
      v10 = &unk_1E81923F8;
      v12 = v3;
      v13 = a1;
      v11 = &v16;
      if (fsi_iterate_f(walk, &v8))
      {
        _Block_object_dispose(&v16, 8);
      }

      else
      {
        v6 = *(v17 + 24);
        _Block_object_dispose(&v16, 8);
        if (v6 == 1)
        {
          si_enqueue_work(*(*a1 + 1064), si_cacheCleanup, a1);
          return;
        }
      }
    }
  }

LABEL_13:
  v7 = a1[2];
  if (v7)
  {
    fsi_close(v7);
  }

  free(a1);
}

uint64_t __si_cacheCleanup_block_invoke(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (**(a1[5] + 6592) | a4)
  {
    return 1;
  }

  v7 = a1[6];
  v8 = *(v7 + 8);
  v9 = *(v7 + 24 + 8 * v8);
  *(v7 + 24 + 8 * v8) = v9 + 1;
  v10 = *(a3 + 4);
  if (!v10)
  {
    if (v8 == 4)
    {
      __endptr = 0;
      v18 = strtoll(*(a3 + 32), &__endptr, 0);
      v19 = __endptr;
      if (__endptr != *(a3 + 32))
      {
        v20 = v18;
        if (v18)
        {
          if (!strcmp(__endptr, ".txt") || strcmp(v19, ".tmp"))
          {
            bzero(buf, 0x400uLL);
            v21 = *(a1[5] + 1416);
            if (!*(v21 + 240))
            {
              v22 = (*(v21 + 48))(v21, v20, buf, 0);
              if (v22)
              {
                memset(&v28, 0, sizeof(v28));
                if (stat(v22, &v28) == -1 && *__error() == 2)
                {
                  v23 = *__error();
                  v24 = _SILogForLogForCategory(0);
                  v25 = 2 * (gSILogLevels[0] < 4);
                  if (os_log_type_enabled(v24, v25))
                  {
                    v26 = *(a3 + 16);
                    *v30 = 136315138;
                    v31 = v26;
                    _os_log_impl(&dword_1C278D000, v24, v25, "deleting stale cache file%s", v30, 0xCu);
                  }

                  *__error() = v23;
                  if (!unlink(*(a3 + 16)))
                  {
                    v27 = a1[6] + 8 * *(a1[6] + 8);
                    --*(v27 + 24);
                  }
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v10 == 2)
  {
    if (v8 >= 2 && (*(v7 + 64) & 1) == 0 && !v9)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      v15 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(a3 + 16);
        *buf = 136315138;
        v33 = v16;
        _os_log_impl(&dword_1C278D000, v14, v15, "deleting stale cache folder%s", buf, 0xCu);
      }

      *__error() = v13;
      v17 = rmdir(*(a3 + 16));
      v7 = a1[6];
      if (v17)
      {
        LODWORD(v8) = *(v7 + 8);
      }

      else
      {
        v8 = *(v7 + 8);
        --*(v7 + 8 * v8 + 16);
      }
    }

    *(v7 + 64) = 0;
    *(v7 + 8) = v8 - 1;
    if (v8 == 4)
    {
      do
      {
        *(a2 + 3400) = 1;
        a2 = *(a2 + 8608);
      }

      while (a2);
      result = 0;
      *(*(a1[4] + 8) + 24) = 1;
      return result;
    }

    return 0;
  }

  if (v10 != 1)
  {
    return 0;
  }

  v11 = v8 + 1;
  *(v7 + 8) = v8 + 1;
  if (v8 < 1 || v11 <= 4 && strlen(*(a3 + 32)) == 4)
  {
    result = 0;
  }

  else
  {
    *(v7 + 64) = 1;
    result = 2;
  }

  *(v7 + 24 + 8 * v11) = 0;
  return result;
}

void _SIIssueSizeRepair(uint64_t result)
{
  if (result)
  {
    if (*(result + 1192))
    {
      si_enqueue_barrier(*(result + 1048), si_sizeRepair, result);
    }
  }
}

uint64_t si_sizeRepair(uint64_t result, int a2)
{
  if (!a2 && *(result + 1192) && (*(result + 1288) & 1) == 0)
  {
    return si_set_property(result, @"kSIRepairSizes", *MEMORY[0x1E695E738], 1, 1);
  }

  return result;
}

uint64_t _SIOpenIndexFilesForMerge(uint64_t result)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 1192);
    if (*v2 != 1685287992)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *v2;
        *buf = 136315650;
        *&buf[4] = "db_ensure_open_files";
        v20 = 1024;
        v21 = 276;
        v22 = 1024;
        v23 = v15;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v13;
      v16 = __si_assert_copy_extra_332();
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 276, v18);
      free(v17);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v2 + 584))
    {
      sdb2_die(v2, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15502);
    }

    v3 = *(v2 + 848);
    *buf = 0;
    v4 = _fd_acquire_fd(v3, buf);
    if (v4 != -1)
    {
      v3[17] = 1;
      _fd_release_fd(v3, v4, 0, *buf);
    }

    v5 = *(v2 + 840);
    *buf = 0;
    v6 = _fd_acquire_fd(v5, buf);
    if (v6 != -1)
    {
      v5[17] = 1;
      _fd_release_fd(v5, v6, 0, *buf);
    }

    v7 = pthread_mutex_lock((v2 + 584));
    v8 = *(v2 + 780) - 1;
    *(v2 + 780) = v8;
    if (!v8)
    {
      db_rwlock_wakeup(v2 + 584, 0, 0);
    }

    result = pthread_mutex_unlock((v2 + 584));
    if (v7)
    {
      sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15505);
    }

    v9 = *(v1 + 1392);
    v10 = *(v1 + 1384);
    if (*(v9 + 8))
    {
      v11 = 0;
      do
      {
        result = _CIEnsureOpenFiles(*(*v9 + 8 * v11++));
      }

      while (v11 < *(v9 + 8));
    }

    if (*(v10 + 8))
    {
      v12 = 0;
      do
      {
        result = _CIEnsureOpenFiles(*(*v10 + 8 * v12++));
      }

      while (v12 < *(v10 + 8));
    }
  }

  return result;
}

uint64_t _SICooldownIndexFilesForMerge(uint64_t result)
{
  v33 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 1192);
    if (*v2 != 1685287992)
    {
      v21 = *__error();
      v22 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *v2;
        *buf = 136315650;
        v28 = "db_cooldown_files";
        v29 = 1024;
        v30 = 277;
        v31 = 1024;
        v32 = v23;
        _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v21;
      v24 = __si_assert_copy_extra_332();
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 277, v26);
      free(v25);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v2 + 584))
    {
      sdb2_die(v2, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15510);
    }

    v3 = *(v2 + 848);
    if (v3)
    {
      *(v3 + 68) = 0;
    }

    v4 = *(v2 + 840);
    if (v4)
    {
      *(v4 + 68) = 0;
    }

    v5 = pthread_mutex_lock((v2 + 584));
    v6 = *(v2 + 780) - 1;
    *(v2 + 780) = v6;
    if (!v6)
    {
      db_rwlock_wakeup(v2 + 584, 0, 0);
    }

    result = pthread_mutex_unlock((v2 + 584));
    if (v5)
    {
      sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15513);
    }

    v7 = *(v1 + 1392);
    v8 = *(v1 + 1384);
    v9 = *(v7 + 2);
    if (v9)
    {
      v10 = *v7;
      do
      {
        v11 = *v10;
        v12 = *(*v10 + 4672);
        if (v12)
        {
          *(v12 + 68) = 0;
        }

        v13 = *(v11 + 208);
        if (v13)
        {
          *(v13 + 68) = 0;
        }

        v14 = *(v11 + 472);
        if (v14)
        {
          *(v14 + 68) = 0;
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    v15 = *(v8 + 2);
    if (v15)
    {
      v16 = *v8;
      do
      {
        v17 = *v16;
        v18 = *(*v16 + 4672);
        if (v18)
        {
          *(v18 + 68) = 0;
        }

        v19 = *(v17 + 208);
        if (v19)
        {
          *(v19 + 68) = 0;
        }

        v20 = *(v17 + 472);
        if (v20)
        {
          *(v20 + 68) = 0;
        }

        ++v16;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t _SIFlushAndSyncIndex(uint64_t a1)
{
  v46 = 0;
  v2 = *(a1 + 2360);
  v42 = vextq_s8(*v2, *v2, 8uLL);
  v3 = *(a1 + 1192);
  v43 = v2[9].i64[0];
  v44 = v3;
  v45 = a1;
  v47 = vextq_s8(*(a1 + 1384), *(a1 + 1384), 8uLL);
  makeThreadId();
  if (gSILogLevels[0] >= 5)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "Starting forced sync!", buf, 2u);
    }

    *__error() = v30;
  }

  v41 = 0;
  if (fd_setDir(*(a1 + 32), &v41))
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
    v40 = v5;
    v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v39 = HIDWORD(v5);
    v38 = __PAIR64__(v7, v8);
    *(v6 + 216) = 0;
    v9 = *(v6 + 312);
    v10 = *(v6 + 224);
    if (v10)
    {
      v10(*(v6 + 288));
    }

    v37 = v40;
    v36 = v39;
    v35 = v38;
    if (_setjmp(v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v6 + 312) = v9;
      CIOnThreadCleanUpReset(v35);
      dropThreadId(v37, 1, add_explicit + 1);
      CICleanUpReset(v37, HIDWORD(v35));
    }

    else
    {
      v11 = *(a1 + 1416);
      if (v11)
      {
        v12 = *(v11 + 88);
        if (v12)
        {
          if (!*(v11 + 240))
          {
            v12(v11, *(v11 + 24));
          }
        }
      }

      valuePtr = *(a1 + 2136);
      v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      if (v13)
      {
        v14 = v13;
        si_set_property(a1, @"ConsumedJournalSerialNumber", v13, 1, 0);
        CFRelease(v14);
      }

      v15 = *(a1 + 2360);
      if (v15)
      {
        v16 = *(v15 + 48);
        if (v16)
        {
          v16(*(v15 + 144));
        }
      }

      v17 = *(a1 + 1392);
      v18 = *(a1 + 1384);
      v19 = *(a1 + 6592);
      *buf = xmmword_1F427BAA0;
      v49 = *&off_1F427BAB0;
      v50 = xmmword_1F427BAC0;
      v51 = *off_1F427BAD0;
      v52 = &v42;
      v20 = _ContentIndexSyncIndexBulk(a1 + 1200, v17, v18, 0, 0, buf, v19, lowDiskSpaceCallback, a1);
      v21 = v20;
      v22 = v20;
      v23 = *(a1 + 2360);
      if (v23)
      {
        v24 = *(v23 + 56);
        if (v24)
        {
          v24(*(v23 + 144));
        }
      }

      if (v22 && v21 != 89)
      {
        if (v21 == 28)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        si_makeUnavailable(a1, v22, v25, 12, "flush err");
      }

      v26 = threadData[9 * v37 + 1] + 320 * v36;
      *(v26 + 312) = v9;
      v27 = *(v26 + 232);
      if (v27)
      {
        v27(*(v26 + 288));
      }

      dropThreadId(v37, 0, add_explicit + 1);
    }

    v28 = v41;
    MEMORY[0x1C6921200](v41);
    if ((v28 & 0x80000000) == 0)
    {
      close(v28);
    }
  }

  if (gSILogLevels[0] >= 5)
  {
    v32 = *__error();
    v33 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "Finished forced sync!", buf, 2u);
    }

    *__error() = v32;
  }

  return 1;
}

void SIBulkDeleteAttributes(uint64_t a1, char *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 1816));
  v6 = *MEMORY[0x1E695E480];
  if (a3 >= 1)
  {
    v7 = 1;
    v8 = a2;
    do
    {
      v9 = CFNumberCreate(v6, kCFNumberLongLongType, v8);
      Value = CFBagGetValue(*(a1 + 1800), v9);
      CFRelease(v9);
      if (v7 >= a3)
      {
        break;
      }

      ++v7;
      v8 += 8;
    }

    while (!Value);
  }

  pthread_mutex_unlock((a1 + 1816));
  v11 = RLEOIDArrayCreate(v6, a2, a3);
  Current = CFAbsoluteTimeGetCurrent();
  _SIBulkDeleteAttributes(a1, v11, a3, Current);
  if (*(a1 + 1160))
  {
    v13 = malloc_type_malloc(0x20uLL, 0x10600405FCA77C1uLL);
    *v13 = a1;
    *(v13 + 1) = v11;
    v13[3] = CFAbsoluteTimeGetCurrent();
    v14 = *(a1 + 1160);

    si_enqueue_barrier(v14, _SIBulkDeleteAttributesHeld, v13);
  }

  else if (v11)
  {

    CFRelease(v11);
  }
}

int *_SIBulkDeleteAttributes(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = result;
    if (*(result + 131))
    {
      if (!RLEOIDArrayIsEmpty(a2))
      {
        v9 = malloc_type_calloc(1uLL, 0x80uLL, 0x10300406AF0F2FAuLL);
        *v9 = v4;
        v10 = malloc_type_malloc(0x2000uLL, 0x100004000313F17uLL);
        v9[6] = 1024;
        v9[1] = v10;
        v9[2] = -1;
        RLEOIDIteratorCreate(a2);
      }

      v7 = gSISystemInDarkWake;
      v8 = time(0) - a4;

      return si_message_trace_darkwake(0, v4, "PermissionCache", v7, "Validate", "Permission cache in dark wake", v8);
    }
  }

  return result;
}

void _SIBulkDeleteAttributesHeld(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    _SIBulkDeleteAttributes(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  CFRelease(*(a1 + 8));

  free(a1);
}

void si_bulk_delete_attributes(uint64_t *a1, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *a1;
    if (a1[2] == -1)
    {
      a1[2] = SIGetLargestOid(*a1);
    }

    if (!a1[14])
    {
      a1[14] = time(0);
    }

    v29 = 0;
    if (fd_setDir(*(v5 + 32), &v29))
    {
      if (a1[5])
      {
        v6 = 0;
        while (1)
        {
          v7 = *(a1[1] + 8 * v6);
          if (v7 > a1[2])
          {
            break;
          }

          if (dword_1EBF46ADC >= 5)
          {
            v8 = *__error();
            v9 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = *(a1[1] + 8 * v6);
              *buf = 134217984;
              v31 = v10;
              _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Delete (bulk) oid: %lld", buf, 0xCu);
            }

            *__error() = v8;
            v7 = *(a1[1] + 8 * v6);
          }

          buf[0] = 0;
          _si_delete_attributes_inner(v5, v7, 1u, 0, 0, 0, buf);
          si_finish_text_store_deletions(v5);
          if (buf[0] == 1)
          {
            notify_post("com.apple.spotlight.SyndicatedContentDeleted");
          }

          ++a1[7];
          if (++v6 >= a1[5])
          {
            goto LABEL_18;
          }
        }

        if (gSILogLevels[0] >= 5)
        {
          v25 = *__error();
          v26 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = a1[2];
            v28 = *(a1[1] + 8 * v6);
            *buf = 134218240;
            v31 = v28;
            v32 = 2048;
            v33 = v27;
            _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "oid: %lld > max_oid: %lld", buf, 0x16u);
          }

          *__error() = v25;
        }

        fd_resetDir(v29);
        a1[5] = 0;
        goto LABEL_30;
      }

LABEL_18:
      v11 = v29;
      MEMORY[0x1C6921200](v29);
      if ((v11 & 0x80000000) == 0)
      {
        close(v11);
      }
    }

    v12 = RLEOIDIteratorNext(a1[8], a1[1], a1[6]);
    a1[5] = v12;
    if (v12)
    {
      v13 = a1[1];
      if (a1[3] < *v13 && a1[7] < a1[4])
      {
        a1[3] = v13[v12 - 1];
        si_enqueue_barrier(*(v5 + 1048), si_bulk_delete_attributes, a1);
        a1 = 0;
LABEL_34:
        bumpWorkTime(v5, Current);
        goto LABEL_35;
      }
    }

    if (a1[7] >= 0x401)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(0);
      v16 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = a1[5];
        *buf = 67109120;
        LODWORD(v31) = v17;
        _os_log_impl(&dword_1C278D000, v15, v16, "%d missing items, cleaninup up cache.", buf, 8u);
      }

      *__error() = v14;
      if (v5 && *(v5 + 1192))
      {
        v18 = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040A82CC6CDuLL);
        *v18 = v5;
        si_enqueue_work(*(v5 + 1064), si_cacheCleanup, v18);
      }
    }

LABEL_30:
    v19 = *(a1 + 104);
    v20 = *a1;
    v21 = gSISystemInDarkWake;
    if (*(a1 + 120))
    {
      v22 = "Initial";
    }

    else
    {
      v22 = "Validate";
    }

    v23 = time(0);
    si_message_trace_darkwake(v19, v20, "PermissionCache", v21, v22, "Permission cache in dark wake", v23 - a1[14]);
    goto LABEL_34;
  }

LABEL_35:
  if (a1)
  {
    si_power_info_cleanup((a1 + 9), *a1, a2 != 0);
    v24 = a1[8];
    if (v24)
    {
      RLEOIDIteratorDestroy(v24);
    }

    free(a1[1]);
    free(a1);
  }
}

uint64_t SIGetLargestOid(uint64_t a1)
{
  if (!*(a1 + 1192))
  {
    return -1;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v22 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v21 = HIDWORD(v3);
  v20 = __PAIR64__(v5, v6);
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v19 = v22;
  v18 = v21;
  v17 = v20;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v16, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v17);
    dropThreadId(v19, 1, add_explicit + 1);
    CICleanUpReset(v19, HIDWORD(v17));
    return -1;
  }

  else
  {
    v11 = db_datastore_largest_oid(*(a1 + 1192));
    v12 = *(a1 + 6880);
    v9 = v11;
    if (v12)
    {
      v15 = db_datastore_largest_oid(v12);
      if (v11 <= v15)
      {
        v9 = v15;
      }

      else
      {
        v9 = v11;
      }
    }

    v13 = threadData[9 * v19 + 1] + 320 * v18;
    *(v13 + 312) = v7;
    v14 = *(v13 + 232);
    if (v14)
    {
      v14(*(v13 + 288));
    }

    dropThreadId(v19, 0, add_explicit + 1);
  }

  return v9;
}

uint64_t SISerializeCacheData(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v71 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 1192);
  if (!v4)
  {
    return 0;
  }

  if (*v4 != 1685287992)
  {
    v56 = *__error();
    v57 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = *v4;
      *buf = 136315650;
      *&buf[4] = "db_serialize_cache";
      v67 = 1024;
      v68 = 491;
      v69 = 1024;
      v70 = v58;
      _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v56;
    v59 = __si_assert_copy_extra_332();
    v60 = v59;
    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 491, v61);
    free(v60);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v5 = v2;
  v6 = v1;
  v7 = pthread_mutex_lock((v4 + 584));
  HIDWORD(v9) = qos_class_self() - 9;
  LODWORD(v9) = HIDWORD(v9);
  v8 = v9 >> 2;
  if (v8 > 6)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_1C2BFF8F0[v8];
  }

  if (*(v4 + 768))
  {
    goto LABEL_8;
  }

  if (!*(v4 + 780) && *(v4 + 796) != 1)
  {
    goto LABEL_55;
  }

  v25 = v10 <= 5 ? 5 : v10;
  v26 = (v4 + 16 * v10 + 664);
  v27 = v25 - v10 + 1;
  while (--v27)
  {
    v28 = *v26;
    v26 += 2;
    if (v28)
    {
      goto LABEL_8;
    }
  }

  if (*(v4 + 648 + 16 * v10) && !*(v4 + 784))
  {
LABEL_8:
    db_rwlock_wait(v4 + 584, v10, 5);
  }

  else
  {
LABEL_55:
    *(v4 + 780) = vadd_s32(*(v4 + 780), 0x100000001);
  }

  pthread_mutex_unlock((v4 + 584));
  if (v7)
  {
    sdb2_die(v4, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15465);
  }

  v12 = *(v4 + 928);
  bzero(&buf[8], 0xFF9uLL);
  *buf = 3401903581;
  if (!v12)
  {
    v24 = 8;
LABEL_63:
    v48 = 0;
    v49 = v24 + 1;
    buf[v24] = 0;
    do
    {
      v50 = 0;
      v51 = &buf[v48];
      v52 = v49;
      while (1)
      {
        while (1)
        {
          v53 = write(v6, v51, v52);
          if ((v53 & 0x8000000000000000) == 0)
          {
            break;
          }

          v54 = g_prot_error_callback;
          if (g_prot_error_callback)
          {
            v55 = __error();
            if ((*(v54 + 16))(v54, v6, *v55, 6))
            {
              continue;
            }
          }

          goto LABEL_58;
        }

        v50 += v53;
        v43 = v52 > v53;
        v52 -= v53;
        if (!v43)
        {
          break;
        }

        v51 += v53;
      }

      v11 = 0;
      v48 += v50;
      *v5 += v50;
      v49 -= v50;
    }

    while (v49);
    goto LABEL_59;
  }

  v13 = atomic_load((v12 + 248));
  v14 = malloc_type_calloc(0x10uLL, v13 + 1, 0x52BDD175uLL);
  v15 = atomic_load((v12 + 248));
  v16 = malloc_type_malloc(8 * (v15 + 1), 0x80040B8603338uLL);
  v17 = atomic_load((v12 + 248));
  v18 = malloc_type_malloc(2 * (v17 + 1), 0x1000040BDFB0063uLL);
  if (atomic_load((v12 + 248)))
  {
    v20 = 0;
    v21 = v14;
    do
    {
      *v21 = *v12;
      v21[2] = v20;
      v16[v20++] = v21;
      v22 = atomic_load((v12 + 248));
      v21 += 4;
    }

    while (v20 < v22);
  }

  atomic_load((v12 + 248));
  v65 = v14;
  if (cache_get_info_for_keys() || (v29 = atomic_load((v12 + 248))) == 0)
  {
    v23 = 0;
    v24 = 8;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v24 = 8;
    do
    {
      if (v18[2 * v30] == 1)
      {
        v32 = v30 - v31;
        if (v32 >> 28)
        {
          v34 = &buf[v24];
          *v34 = v32 | 0x80;
          v34[1] = (v32 >> 7) | 0x80;
          v34[2] = (v32 >> 14) | 0x80;
          v34[3] = (v32 >> 21) | 0x80;
          v24 += 5;
          v34[4] = v32 >> 28;
        }

        else if (v32 >= 0x200000)
        {
          v35 = &buf[v24];
          *v35 = v32 | 0x80;
          v35[1] = (v32 >> 7) | 0x80;
          v35[2] = (v32 >> 14) | 0x80;
          v24 += 4;
          v35[3] = v32 >> 21;
        }

        else
        {
          v33 = &buf[v24];
          if (v32 >= 0x4000)
          {
            buf[v24] = v32 | 0x80;
            v33[1] = (v32 >> 7) | 0x80;
            v24 += 3;
            v33[2] = v32 >> 14;
          }

          else if (v32 >= 0x80)
          {
            buf[v24] = v32 | 0x80;
            v24 += 2;
            v33[1] = v32 >> 7;
          }

          else
          {
            buf[v24++] = v32;
          }
        }

        if (v24 < 4092)
        {
          v31 = v30;
        }

        else
        {
          v64 = v5;
          v36 = 0;
          while (2)
          {
            v62 = v36;
            v63 = 0;
            v37 = &buf[v36];
            v38 = v24;
            while (1)
            {
              while (1)
              {
                v39 = write(v6, v37, v38);
                if ((v39 & 0x8000000000000000) == 0)
                {
                  break;
                }

                v40 = g_prot_error_callback;
                if (g_prot_error_callback)
                {
                  v41 = __error();
                  if ((*(v40 + 16))(v40, v6, *v41, 6))
                  {
                    continue;
                  }
                }

                v23 = 1;
                v5 = v64;
                goto LABEL_57;
              }

              v42 = v39 + v63;
              v43 = v38 > v39;
              v38 -= v39;
              if (!v43)
              {
                break;
              }

              v63 += v39;
              v37 += v39;
            }

            v36 = v42 + v62;
            *v64 += v42;
            v24 -= v42;
            if (v24)
            {
              continue;
            }

            break;
          }

          v31 = v30;
          v5 = v64;
        }
      }

      v23 = 0;
      ++v30;
      v44 = atomic_load((v12 + 248));
    }

    while (v30 < v44);
  }

LABEL_57:
  free(v65);
  free(v16);
  free(v18);
  if ((v23 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_58:
  v11 = 0xFFFFFFFFLL;
LABEL_59:
  v45 = pthread_mutex_lock((v4 + 584));
  v46 = vadd_s32(*(v4 + 780), -1);
  *(v4 + 780) = v46;
  if (!v46.i32[0])
  {
    db_rwlock_wakeup(v4 + 584, 0, 0);
  }

  pthread_mutex_unlock((v4 + 584));
  if (v45)
  {
    sdb2_die(v4, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15467);
  }

  return v11;
}

uint64_t SIRestoreCacheData(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v64 = *MEMORY[0x1E69E9840];
  v6 = *(v1 + 1192);
  if (v6)
  {
    v52[1] = 0x40000000;
    v52[0] = MEMORY[0x1E69E9820];
    v53 = __SIRestoreCacheData_block_invoke;
    v54 = &__block_descriptor_tmp_561;
    v55 = v1;
    if (*v6 != 1685287992)
    {
      v48 = __si_assert_copy_extra_332();
      v49 = v48;
      if (v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 490, v50);
      free(v49);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 0x40000000;
    v56[2] = __db2_deserialize_cache_block_invoke;
    v56[3] = &__block_descriptor_tmp_123_15309;
    v56[4] = v6;
    bzero(__buf, 0x2000uLL);
    v7 = *v4;
    while (1)
    {
      v8 = pread(v5, __buf, 0x2000uLL, v7);
      v9 = g_prot_error_callback;
      if (v8 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v11 = __error();
      if (((*(v9 + 16))(v9, v5, *v11, 4) & 1) == 0)
      {
        v12 = -1;
        goto LABEL_16;
      }
    }

    v12 = v8;
    if (v8 <= 7)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v4;
        *v61 = 136315906;
        *&v61[4] = "page_cache_deserialize_entries";
        *&v61[12] = 1024;
        *&v61[14] = 1538;
        *&v61[18] = 2048;
        *&v61[20] = v12;
        *&v61[28] = 2048;
        *&v61[30] = v16;
        v17 = "%s:%d: Unexpected EOF in page cache preload; got %ld bytes at offset %lld";
        v18 = v15;
        v19 = 38;
LABEL_58:
        _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, v17, v61, v19);
        goto LABEL_50;
      }

      goto LABEL_50;
    }

LABEL_16:
    v20 = __buf[0];
    if (__buf[0] != 3401903581)
    {
      v14 = *__error();
      v44 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v61 = 136315650;
        *&v61[4] = "page_cache_deserialize_entries";
        *&v61[12] = 1024;
        *&v61[14] = 1544;
        *&v61[18] = 2048;
        *&v61[20] = v20;
        v17 = "%s:%d: Missing signature in page cache preload %llx";
        v18 = v44;
        v19 = 28;
        goto LABEL_58;
      }

LABEL_50:
      v13 = 0xFFFFFFFFLL;
      goto LABEL_54;
    }

    v21 = malloc_type_malloc(0x4000uLL, 0x100004052888210uLL);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 8;
    while (1)
    {
      v26 = v25 + 1;
      v27 = *(__buf + v25);
      if (*(__buf + v25) < 0)
      {
        v29 = v25 + 2;
        v30 = *(__buf + v26);
        v31 = *(__buf + v26);
        if (v30 < 0)
        {
          v32 = v25 + 3;
          v33 = *(__buf + v29);
          v34 = *(__buf + v29);
          if (v33 < 0)
          {
            v35 = v25 + 4;
            v36 = *(__buf + v32);
            v37 = *(__buf + v32);
            if (v36 < 0)
            {
              v25 += 5;
              v38 = *(__buf + v35);
              v28 = v38 >= 0;
              v27 = ((v37 & 0x7F) << 21) | (v38 << 28) | ((v34 & 0x7F) << 14) | ((v31 & 0x7F) << 7) | v27 & 0x7F;
              if (!v27)
              {
                break;
              }
            }

            else
            {
              v28 = 0;
              v25 += 4;
              v27 = ((v34 & 0x7F) << 14) | (v37 << 21) | ((v31 & 0x7F) << 7) | v27 & 0x7F;
              if (!v27)
              {
                break;
              }
            }
          }

          else
          {
            v28 = 0;
            v25 += 3;
            v27 = ((v31 & 0x7F) << 7) | (v34 << 14) | v27 & 0x7F;
            if (!v27)
            {
              break;
            }
          }
        }

        else
        {
          v28 = 0;
          v27 = v27 & 0x7F | (v31 << 7);
          v25 += 2;
          if (!v27)
          {
            break;
          }
        }
      }

      else
      {
        v28 = 0;
        ++v25;
        if (!v27)
        {
          break;
        }
      }

      if (v28)
      {
        break;
      }

      v22 += v27;
      v21[v23] = v22;
      if (v23 == 4095)
      {
        *v61 = MEMORY[0x1E69E9820];
        *&v61[8] = 0x40000000;
        *&v61[16] = __page_cache_deserialize_entries_block_invoke;
        *&v61[24] = &unk_1E8199488;
        *&v61[32] = v56;
        v62 = v21;
        v63 = 4096;
        v53(v52, v61);
        v21 = malloc_type_malloc(0x4000uLL, 0x100004052888210uLL);
        v23 = 0;
      }

      else
      {
        ++v23;
      }

      ++v24;
      if (v25 + 5 >= v12)
      {
        v39 = *v4 + v25;
        v51 = v4;
        *v4 = v39;
        while (1)
        {
          v40 = pread(v5, __buf, 0x2000uLL, v39);
          v41 = g_prot_error_callback;
          if (v40 != -1 || g_prot_error_callback == 0)
          {
            break;
          }

          v43 = __error();
          if (((*(v41 + 16))(v41, v5, *v43, 4) & 1) == 0)
          {
            v12 = -1;
            goto LABEL_44;
          }
        }

        v12 = v40;
LABEL_44:
        v25 = 0;
        v4 = v51;
        if (!v12)
        {
          v28 = 0;
          break;
        }
      }
    }

    v13 = (v28 << 31 >> 31);
    if (!v23 || (v28 & 1) != 0)
    {
      free(v21);
    }

    else
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 0x40000000;
      v57[2] = __page_cache_deserialize_entries_block_invoke_2;
      v57[3] = &unk_1E81994B0;
      v57[4] = v56;
      v57[5] = v21;
      v57[6] = v23;
      v53(v52, v57);
    }

    *v4 += v25;
    v14 = *__error();
    v45 = _SILogForLogForCategory(7);
    v46 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 134217984;
      v60 = v24;
      _os_log_impl(&dword_1C278D000, v45, v46, "Pre-loaded %ld cache pages", buf, 0xCu);
    }

LABEL_54:
    *__error() = v14;
  }

  else
  {
    LOBYTE(__buf[0]) = 0;
    if (prot_pread(v2, __buf, 1uLL, *v3) == 1 && (++*v4, !LOBYTE(__buf[0])))
    {
      return 0;
    }

    else
    {
      return 96;
    }
  }

  return v13;
}

void __SIRestoreCacheData_block_invoke(uint64_t a1, void *aBlock)
{
  v2 = *(*(a1 + 32) + 1096);
  v3 = _Block_copy(aBlock);

  si_enqueue_work(v2, runBlock, v3);
}

void runBlock(void (**a1)(void, void), int a2)
{
  (a1)[2](a1, a2 != 0);

  _Block_release(a1);
}

uint64_t _SIGetRecoverTimeStamp(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2408);
  if (!v1)
  {
    return 0;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v11 = 0u;
  v8 = v1;
  v3 = localtime(&v8);
  strftime(v11, 0x100uLL, "%F %T", v3);
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 136315138;
    v10 = v11;
    _os_log_impl(&dword_1C278D000, v5, v6, "time stamp%s", buf, 0xCu);
  }

  *__error() = v4;
  return *(a1 + 2408);
}

uint64_t SISetAttributes(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040BFFD03D2uLL);
  if (dword_1EBF46ADC >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Do attribute change.", buf, 2u);
    }

    *__error() = v11;
  }

  v8[3] = a2;
  v8[1] = CFRetain(a3);
  if (a4)
  {
    v9 = CFRetain(a4);
  }

  else
  {
    v9 = 0;
  }

  v8[5] = v9;
  *v8 = a1;
  *(v8 + 13) = 7;
  si_enqueue_barrier(*(a1 + 1048), setAttributes, v8);
  if (dword_1EBF46ADC >= 5)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Leave.", v15, 2u);
    }

    *__error() = v13;
  }

  return 1;
}

void SIIndexingFullyCaughtUp(uint64_t result)
{
  if (*(result + 1160))
  {
    v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040BFFD03D2uLL);
    *v2 = result;
    v3 = *(result + 1160);

    si_enqueue_barrier(v3, setIndexingCaughtUp0, v2);
  }
}

void setIndexingCaughtUp0(void *a1, int a2)
{
  if (a2)
  {
    free(a1);
  }

  else
  {
    si_enqueue_barrier(*(*a1 + 1048), setIndexingCaughtUp, a1);
  }
}

void setIndexingCaughtUp(uint64_t *a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    *(v3 + 2459) = 1;
    v4 = db_shrink_cache(*(v3 + 1192));
    if (v4)
    {
      si_makeUnavailable(*a1, v4, 0, 13, "Failure in db_shrink_cache at setIndexingCaughtUp");
    }
  }

  free(a1);
}

uint64_t __mobile_journal_transfer_paths_block_invoke(uint64_t a1, char *__s1)
{
  result = strncmp(__s1, "skg_", 4uLL);
  if (!result)
  {
    result = renameat(*(a1 + 40), __s1, *(a1 + 44), __s1);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 40) = 1;
    }
  }

  return result;
}

uint64_t __get_files_for_directory_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (**(a1 + 40))
  {
    return 1;
  }

  if (a4)
  {
    return 2;
  }

  v5 = *(a3 + 4);
  if (v5 == 1)
  {
    if ((*(a1 + 48) & 1) == 0 && *a3 > 0)
    {
      return 2;
    }
  }

  else if (!v5)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), *(a3 + 32));
  }

  return 0;
}

uint64_t SIGetCacheFileDescriptors(uint64_t a1, const void *a2, const void *a3, const void *a4, int a5, const void *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040BA4910EAuLL);
  *v12 = a1;
  *(v12 + 1) = CFRetain(a2);
  *(v12 + 2) = CFRetain(a3);
  v12[3] = CFAbsoluteTimeGetCurrent();
  if (a4)
  {
    CFRetain(a4);
  }

  *(v12 + 4) = a4;
  *(v12 + 10) = a5;
  *(v12 + 6) = _Block_copy(a6);
  v13 = *(a1 + 1088);
  v14 = qos_class_self();
  si_enqueue_work_with_qos(v13, v14, si_getCacheFileDescriptors, v12);
  return 0;
}

uint64_t SIGetCacheFd(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  *v4 = a1;
  v4[1] = _Block_copy(a2);
  v5 = *(a1 + 1088);
  v6 = qos_class_self();
  si_enqueue_work_with_qos(v5, v6, si_getCacheFd, v4);
  return 0;
}

uint64_t SIGetCacheEntry(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040C8AD4411uLL);
  *v8 = a1;
  v8[1] = CFRetain(a2);
  v8[2] = CFRetain(a3);
  v8[3] = _Block_copy(a4);
  v9 = *(a1 + 1088);
  v10 = qos_class_self();
  si_enqueue_work_with_qos(v9, v10, si_getCacheEntry, v8);
  return 0;
}

uint64_t SISetCacheEntry(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1288) == 1)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a1;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "Can't set cache entry because the index is read-only. ref:%p", &v9, 0xCu);
    }

    v5 = 0;
    *__error() = v3;
  }

  else
  {
    v5 = 1;
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
    *v7 = a1;
    v7[1] = CFRetain(a2);
    si_enqueue_work_with_qos(*(a1 + 1048), 9, si_setCacheEntry, v7);
  }

  return v5;
}

uint64_t SIDeleteCacheEntry(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1288) == 1)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a1;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "Can't delete cache entry because the index is read-only. ref:%p", &v9, 0xCu);
    }

    v5 = __error();
    result = 0;
    *v5 = v3;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x60040149E097CuLL);
    *v8 = a1;
    if (a2)
    {
      v8[2] = CFRetain(a2);
    }

    si_enqueue_work_with_qos(*(a1 + 1048), 9, si_deleteCacheEntry, v8);
    return 1;
  }

  return result;
}

uint64_t SICloseCache(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
  *v2 = a1;
  si_enqueue_work_with_qos(*(a1 + 1048), 9, si_closeCache, v2);
  return 1;
}

uint64_t SIHoldAssertion(uint64_t a1, int a2, double a3)
{
  v3 = a1;
  v108 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return v3;
  }

  if (*(a1 + 1288) != 1)
  {
    v94 = 0;
    v95 = &v94;
    v96 = 0x2000000000;
    v97 = 1;
    v8 = 0;
    v9 = CFAbsoluteTimeGetCurrent() + a3;
    if (a2)
    {
      v10 = fd_create_protected(*(v3 + 32), "bgassertions", 536872449, 3u);
      if (!v10)
      {
        v20 = *__error();
        v21 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v43 = __error();
          v44 = strerror(*v43);
          v45 = *__error();
          *buf = 136315906;
          *&buf[4] = "SIHoldAssertion";
          *&buf[12] = 1024;
          *&buf[14] = 21273;
          *&buf[18] = 2080;
          *&buf[20] = v44;
          *&buf[28] = 1024;
          *&buf[30] = v45;
          _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: Unable to create bg assertion touch file: %s(%d)", buf, 0x22u);
        }

        v3 = 0;
        *__error() = v20;
        goto LABEL_88;
      }

      v8 = v10;
      memset(buf, 0, 55);
      __sprintf_chk(buf, 0, 0x37uLL, "%d$F$", v9);
      v11 = strlen(buf);
      v12 = fd_write(v8, buf, v11);
      if (v12 != strlen(buf))
      {
        v22 = *__error();
        v23 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v46 = __error();
          v47 = strerror(*v46);
          v48 = *__error();
          *v106 = 136315906;
          *&v106[4] = "SIHoldAssertion";
          *&v106[12] = 1024;
          *&v106[14] = 21279;
          *&v106[18] = 2080;
          *&v106[20] = v47;
          *&v106[28] = 1024;
          *&v106[30] = v48;
          _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: bg assertion touch file write error: %s(%d)", v106, 0x22u);
        }

        *__error() = v22;
        fd_release(v8);
        goto LABEL_29;
      }
    }

    v13 = *(v3 + 1384);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 0x40000000;
    v89 = __SIHoldAssertion_block_invoke;
    v90 = &unk_1E81911B8;
    v92 = a3;
    v93 = v8;
    v91 = &v94;
    if (v13 && *(v13 + 8))
    {
      v14 = 0;
      do
      {
        if (!(v89)(v88, *(*v13 + 8 * v14), 1))
        {
          break;
        }

        ++v14;
      }

      while (v14 < *(v13 + 8));
    }

    if (!*(v95 + 24))
    {
      goto LABEL_86;
    }

    v15 = *(v3 + 1192);
    if (*v15 != 1685287992)
    {
      v82 = *__error();
      v83 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        v84 = *v15;
        *buf = 136315650;
        *&buf[4] = "db_datastore_hold_assertion";
        *&buf[12] = 1024;
        *&buf[14] = 239;
        *&buf[18] = 1024;
        *&buf[20] = v84;
        _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v82;
      v85 = __si_assert_copy_extra_332();
      v86 = v85;
      if (v85)
      {
        v87 = v85;
      }

      else
      {
        v87 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 239, v87);
      free(v86);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v15 + 584))
    {
      sdb2_die(v15, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15172);
    }

    if ((fd_hold_assertion(*(v15 + 848), v8, a3) & 0x80000000) != 0)
    {
      v24 = pthread_mutex_lock((v15 + 584));
      v25 = *(v15 + 780) - 1;
      *(v15 + 780) = v25;
      if (!v25)
      {
        db_rwlock_wakeup(v15 + 584, 0, 0);
      }

      pthread_mutex_unlock((v15 + 584));
      if (v24)
      {
        sdb2_die(v15, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15175);
      }
    }

    else if ((fd_hold_assertion(*(v15 + 840), v8, a3) & 0x80000000) != 0)
    {
      v26 = pthread_mutex_lock((v15 + 584));
      v27 = *(v15 + 780) - 1;
      *(v15 + 780) = v27;
      if (!v27)
      {
        db_rwlock_wakeup(v15 + 584, 0, 0);
      }

      pthread_mutex_unlock((v15 + 584));
      if (v26)
      {
        sdb2_die(v15, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15180);
      }
    }

    else
    {
      v16 = *(v15 + 880);
      v17 = *(v16 + 216);
      if (v17 == -270471200)
      {
        v19 = 0;
      }

      else
      {
        v62 = v17 == 1684300900;
        v18 = 1304;
        if (v62)
        {
          v18 = 280;
        }

        v19 = *(v16 + v18);
      }

      if ((fd_hold_assertion(v19, v8, a3) & 0x80000000) == 0)
      {
        v28 = *(v15 + 888);
        v29 = *(v28 + 216);
        if (v29 == -270471200)
        {
          v31 = 0;
        }

        else
        {
          v62 = v29 == 1684300900;
          v30 = 1304;
          if (v62)
          {
            v30 = 280;
          }

          v31 = *(v28 + v30);
        }

        if ((fd_hold_assertion(v31, v8, a3) & 0x80000000) == 0)
        {
          v32 = *(v15 + 896);
          v33 = *(v32 + 216);
          if (v33 == -270471200)
          {
            v35 = 0;
          }

          else
          {
            v62 = v33 == 1684300900;
            v34 = 1304;
            if (v62)
            {
              v34 = 280;
            }

            v35 = *(v32 + v34);
          }

          if ((fd_hold_assertion(v35, v8, a3) & 0x80000000) == 0)
          {
            v36 = *(v15 + 904);
            v37 = *(v36 + 216);
            if (v37 == -270471200)
            {
              v39 = 0;
            }

            else
            {
              v62 = v37 == 1684300900;
              v38 = 1304;
              if (v62)
              {
                v38 = 280;
              }

              v39 = *(v36 + v38);
            }

            if ((fd_hold_assertion(v39, v8, a3) & 0x80000000) == 0)
            {
              v40 = *(v15 + 912);
              v41 = *(v40 + 216);
              if (v41 == -270471200)
              {
                v49 = 0;
              }

              else
              {
                v42 = v41 == 1684300900 ? 280 : 1304;
                v49 = *(v40 + v42);
              }

              if ((fd_hold_assertion(v49, v8, a3) & 0x80000000) == 0)
              {
                v50 = *(v15 + 920);
                v51 = *(v50 + 216);
                if (v51 == -270471200)
                {
                  v53 = 0;
                }

                else
                {
                  v52 = v51 == 1684300900 ? 280 : 1304;
                  v53 = *(v50 + v52);
                }

                if ((fd_hold_assertion(v53, v8, a3) & 0x80000000) == 0)
                {
                  *(v15 + 988) = 1;
                  if (db_read_unlock(v15 + 584))
                  {
                    sdb2_die(v15, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15194);
                  }

                  v54 = *(v95 + 24);
                  *(v95 + 24) = v54 & 1;
                  if (v54)
                  {
                    v55 = _SICreateFdAndHoldAssertion(*(v3 + 32), v8, "dirStore.overlay", a3);
                    v56 = v55 & v95[3];
                    *(v95 + 24) = v56;
                    if (v56)
                    {
                      v57 = _SICreateFdAndHoldAssertion(*(v3 + 32), v8, "tmp.spotlight.loc", a3);
                      v58 = v57 & v95[3];
                      *(v95 + 24) = v58;
                      if (v58)
                      {
                        JournalFd = getJournalFd(v3, 0, 0);
                        v60 = fd_hold_assertion(JournalFd, v8, a3);
                        v61 = v95[3] & ~(v60 >> 31);
                        *(v95 + 24) &= ~(v60 >> 31) & 1;
                        if (v61)
                        {
                          *(v3 + 6960) = 0;
                          bzero(buf, 0x400uLL);
                          fd_name(JournalFd, buf, 0x400uLL);
                          v62 = *buf == 0x416C616E72756F6ALL && *&buf[8] == 779252852;
                          if (v62)
                          {
                            *v106 = 0;
                            v63 = strtoll(&buf[12], v106, 0);
                            *(v3 + 6960) = v63;
                          }

                          else
                          {
                            v63 = *(v3 + 6960);
                          }

                          if (v63 <= 0)
                          {
                            goto LABEL_105;
                          }

                          if (v8)
                          {
                            if (fd_lseek(v8, 0, 0))
                            {
                              v67 = *__error();
                              v68 = _SILogForLogForCategory(10);
                              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                              {
                                v69 = __error();
                                v70 = strerror(*v69);
                                v71 = *__error();
                                *v106 = 136315906;
                                *&v106[4] = "SIHoldAssertion";
                                *&v106[12] = 1024;
                                *&v106[14] = 21343;
                                *&v106[18] = 2080;
                                *&v106[20] = v70;
                                *&v106[28] = 1024;
                                *&v106[30] = v71;
                                v72 = "%s:%d: bg assertion touch file lseek error: %s(%d)";
                                v73 = v106;
LABEL_103:
                                _os_log_error_impl(&dword_1C278D000, v68, OS_LOG_TYPE_ERROR, v72, v73, 0x22u);
                              }

LABEL_104:
                              *__error() = v67;
LABEL_105:
                              fd_release(v8);
                              SIDropAssertion(v3);
LABEL_29:
                              v3 = 0;
LABEL_88:
                              _Block_object_dispose(&v94, 8);
                              return v3;
                            }

                            memset(v106, 0, 55);
                            __sprintf_chk(v106, 0, 0x37uLL, "%d$S$", v9);
                            v74 = strlen(v106);
                            v75 = fd_write(v8, v106, v74);
                            if (v75 != strlen(v106))
                            {
                              v67 = *__error();
                              v68 = _SILogForLogForCategory(10);
                              if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_104;
                              }

                              v79 = __error();
                              v80 = strerror(*v79);
                              v81 = *__error();
                              *v98 = 136315906;
                              v99 = "SIHoldAssertion";
                              v100 = 1024;
                              v101 = 21351;
                              v102 = 2080;
                              v103 = v80;
                              v104 = 1024;
                              v105 = v81;
                              v72 = "%s:%d: bg assertion touch file write error: %s(%d)";
                              goto LABEL_102;
                            }

                            if (fd_sync(v8, 1))
                            {
                              v67 = *__error();
                              v68 = _SILogForLogForCategory(10);
                              if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_104;
                              }

                              v76 = __error();
                              v77 = strerror(*v76);
                              v78 = *__error();
                              *v98 = 136315906;
                              v99 = "SIHoldAssertion";
                              v100 = 1024;
                              v101 = 21358;
                              v102 = 2080;
                              v103 = v77;
                              v104 = 1024;
                              v105 = v78;
                              v72 = "%s:%d: bg assertion touch file fsync error: %s(%d)";
LABEL_102:
                              v73 = v98;
                              goto LABEL_103;
                            }

                            fd_release(v8);
                          }

LABEL_87:
                          v3 = *(v95 + 24);
                          goto LABEL_88;
                        }
                      }
                    }
                  }

LABEL_86:
                  fd_release(v8);
                  SIDropAssertion(v3);
                  goto LABEL_87;
                }
              }
            }
          }
        }
      }

      v64 = pthread_mutex_lock((v15 + 584));
      v65 = *(v15 + 780) - 1;
      *(v15 + 780) = v65;
      if (!v65)
      {
        db_rwlock_wakeup(v15 + 584, 0, 0);
      }

      pthread_mutex_unlock((v15 + 584));
      if (v64)
      {
        sdb2_die(v15, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15187);
      }
    }

    *(v95 + 24) = 0;
    goto LABEL_86;
  }

  v4 = *__error();
  v5 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "Can't hold assertions because the index is read-only. ref:%p", buf, 0xCu);
  }

  v3 = 0;
  *__error() = v4;
  return v3;
}

BOOL __SIHoldAssertion_block_invoke(double *a1, void *a2)
{
  if (!a2 || (v4 = a1[5], v5 = *(a1 + 6), (fd_hold_assertion(a2[584], v5, v4) & 0x80000000) != 0) || (fd_hold_assertion(a2[59], v5, v4) & 0x80000000) != 0 || (fd_hold_assertion(a2[26], v5, v4) & 0x80000000) != 0 || !_CICreateFdAndHoldAssertion(a2, v5, "shadowIndexDirectory", v4) || !_CICreateFdAndHoldAssertion(a2, v5, "shadowIndexCompactDirectory", v4))
  {
    v6 = 0;
    v8 = 0;
    v7 = (*(*(a1 + 4) + 8) + 24);
  }

  else
  {
    v6 = _CICreateFdAndHoldAssertion(a2, v5, "shadowIndexArrays", v4);
    v7 = (*(*(a1 + 4) + 8) + 24);
    if (v6)
    {
      v8 = *v7 & 1;
      v6 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  *v7 = v8;
  return v6;
}

uint64_t SIDropAssertion(uint64_t a1)
{
  v1 = a1;
  v66 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x2000000000;
    v59 = SIDeleteBgAssertionFile(a1);
    v2 = *(v1 + 1384);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 0x40000000;
    v53 = __SIDropAssertion_block_invoke;
    v54 = &unk_1E81911E0;
    v55 = &v56;
    if (v2 && *(v2 + 8))
    {
      v3 = 0;
      do
      {
        if (!(v53)(v52, *(*v2 + 8 * v3), 1))
        {
          break;
        }

        ++v3;
      }

      while (v3 < *(v2 + 8));
    }

    v4 = *(v1 + 1192);
    if (*v4 != 1685287992)
    {
      v45 = *__error();
      v46 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = *v4;
        *buf = 136315650;
        v61 = "db_datastore_drop_assertion";
        v62 = 1024;
        v63 = 240;
        v64 = 1024;
        v65 = v47;
        _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v45;
      v48 = __si_assert_copy_extra_332();
      v49 = v48;
      if (v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 240, v50);
      free(v49);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v4 + 584))
    {
      sdb2_die(v4, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15202);
    }

    *(v4 + 988) = 0;
    v5 = fd_drop_assertion(*(v4 + 848));
    v6 = fd_drop_assertion(*(v4 + 840));
    v7 = *(v4 + 880);
    v8 = *(v7 + 216);
    v51 = v6;
    if (v8 == -270471200)
    {
      v11 = 0;
    }

    else
    {
      v9 = v8 == 1684300900;
      v10 = 1304;
      if (v9)
      {
        v10 = 280;
      }

      v11 = *(v7 + v10);
    }

    v12 = fd_drop_assertion(v11);
    v13 = *(v4 + 888);
    v14 = *(v13 + 216);
    if (v14 == -270471200)
    {
      v16 = 0;
    }

    else
    {
      v9 = v14 == 1684300900;
      v15 = 1304;
      if (v9)
      {
        v15 = 280;
      }

      v16 = *(v13 + v15);
    }

    v17 = fd_drop_assertion(v16);
    v18 = *(v4 + 896);
    v19 = *(v18 + 216);
    if (v19 == -270471200)
    {
      v21 = 0;
    }

    else
    {
      v9 = v19 == 1684300900;
      v20 = 1304;
      if (v9)
      {
        v20 = 280;
      }

      v21 = *(v18 + v20);
    }

    v22 = fd_drop_assertion(v21);
    v23 = *(v4 + 904);
    v24 = *(v23 + 216);
    if (v24 == -270471200)
    {
      v26 = 0;
    }

    else
    {
      v9 = v24 == 1684300900;
      v25 = 1304;
      if (v9)
      {
        v25 = 280;
      }

      v26 = *(v23 + v25);
    }

    v27 = fd_drop_assertion(v26);
    v28 = *(v4 + 912);
    v29 = *(v28 + 216);
    if (v29 == -270471200)
    {
      v31 = 0;
    }

    else
    {
      v9 = v29 == 1684300900;
      v30 = 1304;
      if (v9)
      {
        v30 = 280;
      }

      v31 = *(v28 + v30);
    }

    v32 = fd_drop_assertion(v31);
    v33 = *(v4 + 920);
    v34 = *(v33 + 216);
    if (v34 == -270471200)
    {
      v36 = 0;
    }

    else
    {
      v9 = v34 == 1684300900;
      v35 = 1304;
      if (v9)
      {
        v35 = 280;
      }

      v36 = *(v33 + v35);
    }

    v37 = fd_drop_assertion(v36);
    v38 = pthread_mutex_lock((v4 + 584));
    v39 = *(v4 + 780) - 1;
    *(v4 + 780) = v39;
    if (!v39)
    {
      db_rwlock_wakeup(v4 + 584, 0, 0);
    }

    pthread_mutex_unlock((v4 + 584));
    if (v38)
    {
      sdb2_die(v4, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15214);
    }

    *(v57 + 24) &= ~((v51 | v5 | v12 | v17 | v22 | v27 | v32 | v37) < 0) & 1;
    v40 = _SICreateFdAndDropAssertion(*(v1 + 32), "dirStore.overlay");
    *(v57 + 24) &= v40;
    v41 = _SICreateFdAndDropAssertion(*(v1 + 32), "tmp.spotlight.loc");
    *(v57 + 24) &= v41;
    JournalFd = getJournalFd(v1, 0, 0);
    v43 = fd_drop_assertion(JournalFd);
    v1 = v57[3] & ~(v43 >> 31) & 1;
    *(v57 + 24) &= ~(v43 >> 31) & 1;
    _Block_object_dispose(&v56, 8);
  }

  return v1;
}

BOOL _SICreateFdAndHoldAssertion(int a1, uint64_t a2, const char *a3, double a4)
{
  *&v30[5] = *MEMORY[0x1E69E9840];
  v7 = fd_create_protected(a1, a3, 514, 0);
  if (v7)
  {
    v8 = v7;
    v22 = 0;
    v9 = _fd_acquire_fd(v7, &v22);
    if (v9 < 0)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *__error();
        v20 = __error();
        v21 = strerror(*v20);
        *buf = 136316418;
        v24 = "_SICreateFdAndHoldAssertion";
        v25 = 1024;
        v26 = 21219;
        v27 = 1024;
        *v28 = v9;
        *&v28[4] = 2080;
        *&v28[6] = a3;
        v29 = 1024;
        v30[0] = v19;
        LOWORD(v30[1]) = 2080;
        *(&v30[1] + 2) = v21;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: fd = %d for %s file: %d(%s)", buf, 0x32u);
      }

      v10 = 0;
      *__error() = v13;
    }

    else
    {
      v10 = fd_hold_assertion(v8, a2, a4) >= 0;
      _fd_release_fd(v8, v9, 0, v22);
    }

    fd_release(v8);
  }

  else
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 136316162;
      v24 = "_SICreateFdAndHoldAssertion";
      v25 = 1024;
      v26 = 21207;
      v27 = 2080;
      *v28 = a3;
      *&v28[8] = 1024;
      *&v28[10] = v16;
      v29 = 2080;
      *v30 = v18;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Unable to get fdptr for %s file: %d(%s)", buf, 0x2Cu);
    }

    v10 = 0;
    *__error() = v11;
  }

  return v10;
}

uint64_t SIDeleteBgAssertionFile(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v1 = fd_create_protected(*(a1 + 32), "bgassertions", 536870914, 0);
  if (v1)
  {
    v2 = v1;
    if ((_fd_unlink_with_origin(v1, 0) & 0x80000000) != 0)
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(10);
      v12 = dword_1EBF46AF4 < 3;
      if (os_log_type_enabled(v11, (dword_1EBF46AF4 < 3)))
      {
        v13 = __error();
        v14 = strerror(*v13);
        v15 = *__error();
        v17 = 136315394;
        v18 = v14;
        v19 = 1024;
        v20 = v15;
        _os_log_impl(&dword_1C278D000, v11, v12, "*warn* Unable to delete bg assertion touch file: %s(%d)", &v17, 0x12u);
      }

      v3 = 0;
      *__error() = v10;
    }

    else
    {
      v3 = 1;
    }

    fd_release(v2);
  }

  else
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(10);
    v6 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v5, (dword_1EBF46AF4 < 3)))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v9 = *__error();
      v17 = 136315394;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_1C278D000, v5, v6, "*warn* Unable to open bg assertion touch file: %s(%d)", &v17, 0x12u);
    }

    v3 = 0;
    *__error() = v4;
  }

  return v3;
}

uint64_t __SIDropAssertion_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v4 = fd_drop_assertion(a2[584]);
    v5 = fd_drop_assertion(a2[59]) | v4;
    v6 = v5 | fd_drop_assertion(a2[26]);
    v7 = _CICreateFdAndDropAssertion(a2, "shadowIndexDirectory");
    v8 = v6 >= 0 && v7;
    v9 = _CICreateFdAndDropAssertion(a2, "shadowIndexCompactDirectory");
    v10 = _CICreateFdAndDropAssertion(a2, "shadowIndexArrays");
    v11 = (*(*(a1 + 32) + 8) + 24);
    if (v8 && v9 && v10)
    {
      v12 = *v11 & 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = (*(*(a1 + 32) + 8) + 24);
  }

  *v11 = v12;
  return 1;
}

BOOL _SICreateFdAndDropAssertion(int a1, const char *a2)
{
  *&v26[5] = *MEMORY[0x1E69E9840];
  v3 = fd_create_protected(a1, a2, 2, 0);
  if (v3)
  {
    v4 = v3;
    v18 = 0;
    v5 = _fd_acquire_fd(v3, &v18);
    if (v5 < 0)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = *__error();
        v16 = __error();
        v17 = strerror(*v16);
        *buf = 136316418;
        v20 = "_SICreateFdAndDropAssertion";
        v21 = 1024;
        v22 = 21245;
        v23 = 1024;
        *v24 = v5;
        *&v24[4] = 2080;
        *&v24[6] = a2;
        v25 = 1024;
        v26[0] = v15;
        LOWORD(v26[1]) = 2080;
        *(&v26[1] + 2) = v17;
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: fd = %d for %s file: %d(%s)", buf, 0x32u);
      }

      v6 = 0;
      *__error() = v9;
    }

    else
    {
      v6 = fd_drop_assertion(v4) >= 0;
      _fd_release_fd(v4, v5, 0, v18);
    }

    fd_release(v4);
  }

  else
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 136316162;
      v20 = "_SICreateFdAndDropAssertion";
      v21 = 1024;
      v22 = 21232;
      v23 = 2080;
      *v24 = a2;
      *&v24[8] = 1024;
      *&v24[10] = v12;
      v25 = 2080;
      *v26 = v14;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Unable to get fdptr for %s file: %d(%s)", buf, 0x2Cu);
    }

    v6 = 0;
    *__error() = v7;
  }

  return v6;
}

uint64_t SISetBgAssertionFlag(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 6944) = a2;
    result = *(result + 1192);
    if (result)
    {
      return db_datastore_set_bg_assertion_flag(result, a2);
    }
  }

  return result;
}

uint64_t _SISetAssertedJournalNum(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 6960) = a2;
  }

  return result;
}

uint64_t SISetLockedJournalingState(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 6964) = a2;
  }

  return result;
}

void SICreateAssertedJournalFile(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = fd_create_protected(*(a1 + 32), "assertedJournalAttr.1", 536872458, 2u);
    if (v1)
    {
      v2 = v1;
      fd_hold_assertion(v1, 0, 36000.0);

      fd_release(v2);
    }

    else
    {
      v3 = *__error();
      v4 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        v6 = __error();
        v7 = strerror(*v6);
        v8 = 136315906;
        v9 = "SICreateAssertedJournalFile";
        v10 = 1024;
        v11 = 21434;
        v12 = 1024;
        v13 = v5;
        v14 = 2080;
        v15 = v7;
        _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: SICreateAssertedJournalFile: Unable to open asserted journal file %d(%s)", &v8, 0x22u);
      }

      *__error() = v3;
    }
  }
}

uint64_t SIIsLockedIndexingMode(uint64_t result)
{
  if (result)
  {
    return (*(result + 830) >> 2) & 1;
  }

  return result;
}

void _SIValidateActivityJournal(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    bzero(v8, 0x400uLL);
    v7 = 0;
    v4 = _fd_acquire_fd(*(result + 274), &v7);
    if (v4 != -1)
    {
      v5 = v4;
      if (fcntl(v4, 50, v8) < 0 || !v8[0])
      {
        _fd_release_fd(*(result + 274), v5, 0, v7);
      }

      else
      {
        _SIActivityJournalGetOIDs(v6);
      }
    }
  }
}

uint64_t _SIValidateVectors(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v2 = *(result + 1192);
  if (!v2)
  {
    return result;
  }

  if (*v2 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *v2;
      *buf = 136315650;
      v12 = "db_datastore_validate_vectors";
      v13 = 1024;
      v14 = 238;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 238, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  result = data_map_valid(*(v2 + 115));
  if ((result & 1) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      return result;
    }

    dprintf(a2, "datamap is invalid\n");
    v4 = "failed";
    return dprintf(a2, "db_datastore_validate_vectors: %s\n", v4);
  }

  result = data_map_validate(*(v2 + 115), a2);
  v4 = "failed";
  if (result)
  {
    v4 = "success";
  }

  if ((a2 & 0x80000000) == 0)
  {
    return dprintf(a2, "db_datastore_validate_vectors: %s\n", v4);
  }

  return result;
}

uint64_t SIVectorIndexStorageSize(void *a1, char a2)
{
  if (!a1 || !a1[149])
  {
    return 0;
  }

  v2 = a1[174];
  v3 = a1[173];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v9 = __ContentIndexVectorIndexStorageSize_block_invoke;
  v10 = &unk_1E8197690;
  v11 = &v13;
  v12 = a2;
  if (v2 && *(v2 + 8))
  {
    v4 = 0;
    while ((v9)(v8, *(*v2 + 8 * v4), 0))
    {
      if (++v4 >= *(v2 + 8))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v3 && *(v3 + 8))
    {
      v5 = 0;
      do
      {
        if (!(v9)(v8, *(*v3 + 8 * v5), 1))
        {
          break;
        }

        ++v5;
      }

      while (v5 < *(v3 + 8));
    }
  }

  v6 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t SIPurgeVectorIndex(uint64_t a1, int a2)
{
  if (!a1 || !*(a1 + 1192))
  {
    return 0;
  }

  v4 = *(a1 + 1392);
  v5 = *(a1 + 1384);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 0x40000000;
  v14 = __ContentIndexPurgeVectorIndex_block_invoke;
  v15 = &unk_1E81976B8;
  v16 = &v18;
  LOBYTE(v17) = a2;
  if (v4 && *(v4 + 8))
  {
    v6 = 0;
    while ((v14)(&v12, *(*v4 + 8 * v6), 0))
    {
      if (++v6 >= *(v4 + 8))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v5 && *(v5 + 8))
    {
      v7 = 0;
      do
      {
        if (!(v14)(&v12, *(*v5 + 8 * v7), 1))
        {
          break;
        }

        ++v7;
      }

      while (v7 < *(v5 + 8));
    }
  }

  v8 = v19[3];
  _Block_object_dispose(&v18, 8);
  if (v8)
  {
    if (a2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    create_scan_touch_file(*(a1 + 32), v9);
    v10 = *(a1 + 1064);
    if (v10)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __scan_lost_ids_on_queue_block_invoke;
      v15 = &__block_descriptor_tmp_1928;
      v16 = a1;
      v17 = v9;
      si_enqueue_block(v10, &v12);
    }
  }

  return v8;
}