CFStringRef _CSChunkStoreCreate()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v78 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  bzero(__s1, 0x400uLL);
  memset(&v69, 0, sizeof(v69));
  if (!v8 && v4)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCreate_cold_35();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"read only location and no tmp path makes ChunkStore unhappy!");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCreate_cold_36();
    }

    v13 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
      *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v12;
LABEL_43:
      _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", v77, 0xCu);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  alloc = v2;
  v68 = v6;
  if (!gVerbose)
  {
    if (getenv("CK_CHUNKSTORE_VERBOSE"))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    gVerbose = v14;
  }

  getenv("CS_LOG_PATH");
  CKPointerHash();
  v15 = getenv("CHUNK_STORE_UNIT_TESTS");
  v16 = getenv("CS_LOG_VERBOSE");
  if (getenv("CS_LOG_STDOUT"))
  {
    CKPointerHash();
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCreate_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"logging to stdout\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_2();
      }

      v18 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v17;
        _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", v77, 0xCu);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  if (v15 | v16)
  {
    CKPointerHash();
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCreate_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"log debug enabled\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_4();
      }

      v20 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v19;
        _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", v77, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  if (!stat(v10, &v69))
  {
    if (snprintf(__str, 0x400uLL, "%s/%s", v10, ".cs") > 0x3FF)
    {
      return 0;
    }

    if ((v4 & 1) == 0 && mkdir(__str, 0x1C0u) && *__error() != 17)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_7();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v28 = *MEMORY[0x277CBECE8];
      v29 = *__error();
      v30 = __error();
      v31 = strerror(*v30);
      v12 = CFStringCreateWithFormat(v28, 0, @"unable to create directory: %s : %d:%s", __str, v29, v31);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_8();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v12;
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_9();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"path:%s", __str);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_10();
        }

        v25 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
          *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v24;
          _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", v77, 0xCu);
        }

        if (v24)
        {
          CFRelease(v24);
        }
      }
    }

    CFInstanceZeroed = _CreateCFInstanceZeroed(v11, @"struct __CSChunkStore", "struct __CSChunkStore", _CSChunkStoreCSChunkStoreFinalize, 0x218uLL);
    if (!CFInstanceZeroed)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_33();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to create chunk store object for %s", v10);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_34();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v12;
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    v12 = CFInstanceZeroed;
    *(CFInstanceZeroed + 17) = v4;
    *(CFInstanceZeroed + 16) = alloc;
    *(CFInstanceZeroed + 112) = strdup(__str);
    LODWORD(v12[4].isa) = v69.st_dev;
    LODWORD(v12[3].info) = v68;
    LODWORD(v12[17].isa) = 0;
    if (!v8 || !v4)
    {
LABEL_67:
      cs_rwlock_init(&v12[8].data);
      pthread_mutex_init(&v12[4].data, 0);
      pthread_cond_init(&v12[6].data, 0);
      pthread_mutex_init(&v12[1], 0);
      v12[4].info = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
      cs_wrlock(&v12[8].data);
      p_length = &v12->length;
      if (v12->length)
      {
        goto LABEL_68;
      }

      bzero(v72, 0x400uLL);
      if (BYTE1(v12->data) == 1)
      {
        if (CKChunkStoreRelocateDB(v12))
        {
          if (snprintf(v72, 0x400uLL, "%s/%s/%s", v12[3].length, ".cs", "ChunkStoreDatabase") >= 0x400)
          {
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSChunkStoreCreate_cold_17();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              v49 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"safe_snprintf truncated %s", v72);
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSChunkStoreCreate_cold_18();
              }

              v50 = CK_DEFAULT_LOG_INTERNAL_1;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
                *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v49;
                goto LABEL_177;
              }

              goto LABEL_178;
            }

LABEL_180:
            *p_length = 0;
            goto LABEL_181;
          }

          v35 = 0;
          v65 = 0;
LABEL_102:
          alloca = *MEMORY[0x277CBECE8];
          while (2)
          {
            v37 = CSopenDB(v72, &v12->length, LODWORD(v12[3].info) != 0);
            if (v37 == 5)
            {
              if ((BYTE1(v12->data) & 1) == 0)
              {
                *v35 = 0;
                bzero(v77, 0x400uLL);
                bzero(&__to, 0x400uLL);
                if (__strlcpy_chk() <= 0x3FF)
                {
                  v38 = strlen(v77);
                  if (v38)
                  {
                    for (i = (&v76 + v38); v77 <= i; i = (i - 1))
                    {
                      v40 = i->__pn_.__r_.__value_.__s.__data_[0];
                      if (v40 != 47 && v40 != 92)
                      {
                        break;
                      }

                      i->__pn_.__r_.__value_.__s.__data_[0] = 0;
                    }

                    if (v77[0].__pn_.__r_.__value_.__s.__data_[0])
                    {
                      v41 = 1;
                      while (1)
                      {
                        if (snprintf(&__to, 0x400uLL, "%s_old_%u", v77, v41) > 0x3FF)
                        {
                          goto LABEL_163;
                        }

                        if (access(&__to, 0))
                        {
                          break;
                        }

                        if (++v41 == 0x40000)
                        {
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSChunkStoreCreate_cold_25();
                          }

                          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_165;
                          }

                          v51 = CFStringCreateWithFormat(alloca, 0, @"can't rename %s, too many old files (%u)\n", v77, 0x40000);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSChunkStoreCreate_cold_26();
                          }

                          v52 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138543362;
                            v74 = v51;
                            _os_log_impl(&dword_243431000, v52, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                          }

                          if (v51)
                          {
LABEL_162:
                            CFRelease(v51);
                            goto LABEL_163;
                          }

                          goto LABEL_163;
                        }
                      }

                      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                      {
                        _CSChunkStoreCreate_cold_19();
                      }

                      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                      {
                        v43 = CFStringCreateWithFormat(alloca, 0, @"renaming %s to %s\n", v77, &__to);
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSChunkStoreCreate_cold_20();
                        }

                        v44 = CK_DEFAULT_LOG_INTERNAL_1;
                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138543362;
                          v74 = v43;
                          _os_log_impl(&dword_243431000, v44, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                        }

                        if (v43)
                        {
                          CFRelease(v43);
                        }
                      }

                      rename(v77, &__to, v42);
                      if (!v45)
                      {
                        if (!mkdir(v72, 0x1C0u))
                        {
                          *v35 = v65;
                          continue;
                        }

                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSChunkStoreCreate_cold_23();
                        }

                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                        {
                          v62 = __error();
                          v63 = strerror(*v62);
                          v49 = CFStringCreateWithFormat(alloca, 0, @"unable to create directory %s : %s", v72, v63);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSChunkStoreCreate_cold_24();
                          }

                          v64 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
                            *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v49;
                            _os_log_impl(&dword_243431000, v64, OS_LOG_TYPE_ERROR, "%{public}@", v77, 0xCu);
                          }

                          if (v49)
                          {
                            goto LABEL_179;
                          }
                        }

                        goto LABEL_180;
                      }

                      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                      {
                        _CSChunkStoreCreate_cold_21();
                      }

                      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_165;
                      }

                      v58 = *__error();
                      v59 = __error();
                      v60 = strerror(*v59);
                      v51 = CFStringCreateWithFormat(alloca, 0, @"unable to rename %s: %d (%s)\n", v77, v58, v60);
                      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                      {
                        _CSChunkStoreCreate_cold_22();
                      }

                      v61 = CK_DEFAULT_LOG_INTERNAL_1;
                      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v74 = v51;
                        _os_log_impl(&dword_243431000, v61, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                      }

                      if (v51)
                      {
                        goto LABEL_162;
                      }
                    }
                  }
                }

LABEL_163:
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSChunkStoreCreate_cold_27();
                }

LABEL_165:
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  v53 = __error();
                  v54 = strerror(*v53);
                  v49 = CFStringCreateWithFormat(alloca, 0, @"unable to rename old chunk store at %s: %s\n", v72, v54);
                  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                  {
                    _CSChunkStoreCreate_cold_28();
                  }

                  v50 = CK_DEFAULT_LOG_INTERNAL_1;
                  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
                    *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v49;
                    goto LABEL_177;
                  }

LABEL_178:
                  if (v49)
                  {
LABEL_179:
                    CFRelease(v49);
                  }

                  goto LABEL_180;
                }
              }
            }

            else if (!v37)
            {
              v57 = *p_length;
              *p_length = *p_length;
              if (v57)
              {
LABEL_68:
                if (!LODWORD(v12[3].info))
                {
                  v12[8].info = malloc_type_calloc(5uLL, 8uLL, 0x2004093837F09uLL);
                }

                cs_unlock(&v12[8].data);
                CKCheckChunkStoreDB(v12);
                if (LODWORD(v12[3].info) && _CSBeginTransactionSqlRc(v12))
                {
                  goto LABEL_45;
                }

                return v12;
              }

LABEL_181:
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSChunkStoreCreate_cold_29();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                v55 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable open chunk store database for %s", v10);
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSChunkStoreCreate_cold_30();
                }

                v56 = CK_DEFAULT_LOG_INTERNAL_1;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
                  *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v55;
                  _os_log_impl(&dword_243431000, v56, OS_LOG_TYPE_ERROR, "%{public}@", v77, 0xCu);
                }

                if (v55)
                {
                  CFRelease(v55);
                }
              }

              cs_unlock(&v12[8].data);
              goto LABEL_45;
            }

            goto LABEL_180;
          }
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_15();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_180;
        }

        v49 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKChunkStoreRelocateDB failed to copy database to temp location!");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_16();
        }

        v50 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_178;
        }

        LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v49;
      }

      else
      {
        v36 = strlen(v12[3].data);
        if (snprintf(v72, 0x400uLL, "%s/%s", v12[3].data, "ChunkStoreDatabase") < 0x400)
        {
          v35 = &v72[v36 + 1];
          v65 = *v35;
          goto LABEL_102;
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_13();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_180;
        }

        v49 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"safe_snprintf truncated %s", v72);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_14();
        }

        v50 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_178;
        }

        LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v49;
      }

LABEL_177:
      _os_log_impl(&dword_243431000, v50, OS_LOG_TYPE_ERROR, "%{public}@", v77, 0xCu);
      goto LABEL_178;
    }

    if (snprintf(__s1, 0x400uLL, "%s/chunk_store_XXXXXX", v8) >= 0x400)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_11();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v33 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"safe_snprintf truncated %s", __s1);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_12();
      }

      v34 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_138;
      }

      LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
      *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v33;
    }

    else
    {
      if (mkdtemp(__s1))
      {
        v12[3].length = strdup(__s1);
        goto LABEL_67;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_31();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v46 = *MEMORY[0x277CBECE8];
      v47 = __error();
      v48 = strerror(*v47);
      v33 = CFStringCreateWithFormat(v46, 0, @"mkdtemp failed to create %s : %s", __s1, v48);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_32();
      }

      v34 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
LABEL_138:
        if (v33)
        {
          CFRelease(v33);
        }

        goto LABEL_45;
      }

      LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
      *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v33;
    }

    _os_log_impl(&dword_243431000, v34, OS_LOG_TYPE_ERROR, "%{public}@", v77, 0xCu);
    goto LABEL_138;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkStoreCreate_cold_5();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    return 0;
  }

  v21 = *MEMORY[0x277CBECE8];
  v22 = __error();
  v23 = strerror(*v22);
  v12 = CFStringCreateWithFormat(v21, 0, @"stat failed for %s: %s", v10, v23);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkStoreCreate_cold_6();
  }

  v13 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v77[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
    *(v77[0].__pn_.__r_.__value_.__r.__words + 4) = v12;
    goto LABEL_43;
  }

LABEL_44:
  if (v12)
  {
LABEL_45:
    CFRelease(v12);
    return 0;
  }

  return v12;
}

CFStringRef CKChunkStoreCreate(uint64_t a1, const __CFURL *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreCreate_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ERROR: NULL location parameter");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreCreate_cold_4();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buffer = 138543362;
    v13 = v4;
    v6 = buffer;
    goto LABEL_18;
  }

  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
  {
    return _CSChunkStoreCreate();
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    CKChunkStoreCreate_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = __error();
    v9 = strerror(*v8);
    v4 = CFStringCreateWithFormat(v7, 0, @"CFURLGetFileSystemRepresentation(%s) error: %s\n", buffer, v9);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreCreate_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138543362;
    v11 = v4;
    v6 = buf;
LABEL_18:
    _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "%{public}@", v6, 0xCu);
LABEL_19:
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return 0;
}

uint64_t _CreateCFInstanceZeroed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  os_unfair_lock_lock(&registered_classes_lock);
  Mutable = registered_classes;
  if (!registered_classes)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
    registered_classes = Mutable;
  }

  if (!CFDictionaryGetValue(Mutable, a2))
  {
    v10 = malloc_type_calloc(1uLL, 0x68uLL, 0x10D0040D425F453uLL);
    *v10 = 0;
    *(v10 + 1) = a3;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 4) = a4;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 12) = _CFRuntimeRegisterClass();
    CFDictionarySetValue(registered_classes, a2, v10);
  }

  os_unfair_lock_unlock(&registered_classes_lock);
  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), a5);
  }

  return v12;
}

uint64_t cs_rwlock_init(uint64_t a1)
{
  result = pthread_rwlock_init(a1, 0);
  if (!result)
  {
    result = pthread_mutex_init((a1 + 200), 0);
  }

  *(a1 + 264) = 0;
  return result;
}

uint64_t cs_wrlock(uint64_t a1)
{
  v2 = pthread_mutex_lock((a1 + 200));
  if (!v2)
  {
    v2 = pthread_rwlock_wrlock(a1);
    if (v2)
    {
      pthread_mutex_unlock((a1 + 200));
    }

    else
    {
      *(a1 + 264) = pthread_self();
    }
  }

  return v2;
}

uint64_t CSopenDB(const char *a1, sqlite3 **a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  pDb = 0;
  v55 = 0;
  pStmt = 0;
  v6 = CS_corruption_checking_sqlite3_open_v2(a1, a3, &pDb, 65570);
  if (!v6)
  {
LABEL_9:
    sqlite3_busy_timeout(pDb, 5000);
    if (CS_corruption_checking_sqlite3_exec(a1, a3, pDb, "PRAGMA locking_mode = EXCLUSIVE;", &v55))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_2();
      }

      v10 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v57 = v55;
        _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "failed to set locking_mode on db (%s)", buf, 0xCu);
      }

      sqlite3_free(v55);
      v55 = 0;
    }

    if (CS_corruption_checking_sqlite3_exec(a1, a3, pDb, "PRAGMA page_size = 4096;", &v55))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_3();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v57 = v55;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "failed to set page_size pragma on db (%s)", buf, 0xCu);
      }

      sqlite3_free(v55);
      v55 = 0;
    }

    if (CS_corruption_checking_sqlite3_exec(a1, a3, pDb, "PRAGMA journal_mode = WAL;", &v55))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_4();
      }

      v12 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v57 = v55;
        _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "failed to set journal mode (%s)", buf, 0xCu);
      }

      sqlite3_free(v55);
      v55 = 0;
    }

    if (CS_corruption_checking_sqlite3_exec(a1, a3, pDb, "PRAGMA wal_autocheckpoint = 2000;", &v55))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_5();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v57 = v55;
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "failed to set wal_autocheckpoint (%s)", buf, 0xCu);
      }

      sqlite3_free(v55);
      v55 = 0;
    }

    CSsql_corruption_checking_do(a1, a3, pDb, "PRAGMA temp_store = MEMORY");
    v14 = CSsql_corruption_checking_do(a1, a3, pDb, "BEGIN EXCLUSIVE");
    if (v14)
    {
      goto LABEL_35;
    }

    v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE TABLE IF NOT EXISTS CSDatabaseVersion (version INTEGER)");
    if (v14)
    {
      goto LABEL_35;
    }

    v28 = pDb;
    if (CSSQLiteCorruptionTestingEnabled())
    {
      v29 = CS_corruption_causing_sqlite3_prepare_v2(v28, "SELECT version FROM CSDatabaseVersion", -1, &pStmt, 0);
    }

    else
    {
      v29 = sqlite3_prepare_v2(v28, "SELECT version FROM CSDatabaseVersion", -1, &pStmt, 0);
    }

    v30 = v29;
    _CSHandleDatabaseIOError(v29);
    if (v30)
    {
      if (v30 == 26 || v30 == 11)
      {
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSopenDB_cold_12();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_prepare_v2", v30);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CSopenDB_cold_13();
          }

          v32 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *v57 = v31;
            _os_log_impl(&dword_243431000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v31)
          {
            CFRelease(v31);
          }
        }

        _CSBruteForceDatabaseCorruptionRecovery(a1, v28, a3);
      }

      goto LABEL_47;
    }

    v34 = pStmt;
    v33 = pDb;
    if (CSSQLiteCorruptionTestingEnabled())
    {
      v35 = CS_corruption_causing_sqlite3_step(v34);
    }

    else
    {
      v35 = sqlite3_step(v34);
    }

    v36 = v35;
    _CSHandleDatabaseIOError(v35);
    switch(v36)
    {
      case 0xB:
        goto LABEL_77;
      case 0x64:
        v39 = sqlite3_column_int64(pStmt, 0);
LABEL_89:
        sqlite3_reset(pStmt);
        sqlite3_finalize(pStmt);
        pStmt = 0;
        if (a3)
        {
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CSopenDB_cold_9();
          }

          v40 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            if (v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = 10;
            }

            *buf = 134218498;
            *v57 = v41;
            v42 = "Y";
            if (v39)
            {
              v42 = "N";
            }

            *&v57[8] = 2048;
            *&v57[10] = 10;
            *&v57[18] = 2082;
            *&v57[20] = v42;
            _os_log_impl(&dword_243431000, v40, OS_LOG_TYPE_DEFAULT, "ChunkRegistry ver=%llu/%llu isNew=%{public}s", buf, 0x20u);
          }

          v14 = CSsql_corruption_checking_do(a1, 1, pDb, "CREATE TABLE IF NOT EXISTS CSRegisteredFileTable (crt_rowid INTEGER PRIMARY KEY,crt_id\tBLOB,crt_iid BIGINT,crt_filekey BLOB,crt_filesize BIGINT,crt_profileType INTEGER,crt_profileTypeIsDefault INTEGER,crt_profileConfigurationVersion TEXT,crt_profileResolvedFileExtension TEXT)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 1, pDb, "CREATE INDEX IF NOT EXISTS CSRegisteredFileTable_crt_id_inx ON CSRegisteredFileTable(crt_id)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 1, pDb, "CREATE UNIQUE INDEX IF NOT EXISTS CSRegisteredFileTable_crt_iid_inx ON CSRegisteredFileTable(crt_iid)");
          if (v14)
          {
            goto LABEL_35;
          }

          if (v39)
          {
            if (v39 > 6)
            {
              if (v39 != 7)
              {
                goto LABEL_118;
              }
            }

            else
            {
              v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_filekey BLOB");
              if (v14)
              {
                goto LABEL_35;
              }

              v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_filesize BIGINT");
              if (v14)
              {
                goto LABEL_35;
              }
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_profileType INTEGER");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_profileTypeIsDefault INTEGER");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_profileConfigurationVersion TEXT");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_profileResolvedFileExtension TEXT");
            if (v14)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CSopenDB_cold_8();
          }

          v43 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            if (v39)
            {
              v44 = v39;
            }

            else
            {
              v44 = 8;
            }

            *buf = 134218498;
            *v57 = v44;
            v45 = "Y";
            if (v39)
            {
              v45 = "N";
            }

            *&v57[8] = 2048;
            *&v57[10] = 8;
            *&v57[18] = 2082;
            *&v57[20] = v45;
            _os_log_impl(&dword_243431000, v43, OS_LOG_TYPE_DEFAULT, "ChunkStore ver=%llu/%llu isNew=%{public}s", buf, 0x20u);
          }

          if (v39)
          {
            v20 = _CSMigrateChunkStore(a1, pDb, v39);
            if (v20)
            {
              goto LABEL_48;
            }
          }
        }

LABEL_118:
        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE TABLE IF NOT EXISTS CSChunkTable (ct_rowid INTEGER PRIMARY KEY,cid BLOB,ct_iid BIGINT,ft_rowid BIGINT,offset BIGINT,dataLen INTEGER,refCount INTEGER,timeStamp BIGINT,location INTEGER,key BLOB,subchunksBlob BLOB)");
        if (v14)
        {
          goto LABEL_35;
        }

        v46 = v39 - 1;
        if (a3)
        {
          if (v46 <= 5)
          {
            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "DROP TABLE IF EXISTS CSStorageFileTable");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "DROP TABLE IF EXISTS CSStorageChunkListTable");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "DROP TABLE IF EXISTS CSStoragePendingChunksTable");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "DROP TABLE IF EXISTS CSStoragePendingFileChunklistTable");
            if (v14)
            {
              goto LABEL_35;
            }
          }
        }

        if (a3)
        {
          if (v46 <= 8)
          {
            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSChunkTable ADD COLUMN subchunksBlob BLOB");
            if (v14)
            {
              goto LABEL_35;
            }
          }
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE INDEX IF NOT EXISTS CSChunkTable_cid_inx ON CSChunkTable(cid)");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE INDEX IF NOT EXISTS CSChunkTable_iid_inx ON CSChunkTable(ct_iid)");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE INDEX IF NOT EXISTS CSChunkTable_ftrowid_inx ON CSChunkTable(ft_rowid)");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_refCount_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_loc_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_iidloc_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_rowidloc_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_rowidrefcnt_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_cidloc_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        if (a3)
        {
          if (v39)
          {
            if (v39 >= 0xB)
            {
              if (CK_DEFAULT_LOG_BLOCK != -1)
              {
                CSopenDB_cold_11();
              }

              v47 = CK_DEFAULT_LOG_INTERNAL;
              if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *buf = 134217984;
              *v57 = v39;
              v23 = "odd database version %llu";
              v24 = v47;
              v25 = 12;
              goto LABEL_46;
            }

            if (v39 == 10)
            {
              goto LABEL_178;
            }

            v48 = 10;
LABEL_173:
            v50 = CSsql_corruption_checking_do(a1, a3, pDb, "UPDATE CSDatabaseVersion SET version = %lld", v48);
            if (v50)
            {
              v7 = v50;
              if (CK_DEFAULT_LOG_BLOCK != -1)
              {
                CSopenDB_cold_10();
              }

              v51 = CK_DEFAULT_LOG_INTERNAL;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
              {
                v52 = sqlite3_errmsg(pDb);
                *buf = 136315138;
                *v57 = v52;
                v17 = "UPDATE CSDatabaseVersion SET version failed: %s";
                v18 = v51;
                v19 = 12;
                goto LABEL_40;
              }

              goto LABEL_41;
            }

LABEL_178:
            v14 = CSsql_corruption_checking_do(a1, a3, pDb, "COMMIT");
            if (!v14)
            {
              v20 = 0;
              *a2 = pDb;
              return v20;
            }

            goto LABEL_35;
          }

          v49 = 10;
        }

        else
        {
          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE TABLE IF NOT EXISTS CSStorageFileTable (ft_rowid INTEGER PRIMARY KEY,ft_inode BIGINT,ft_space INTEGER,ft_pspace INTEGER,vt_rowid BIGINT,ft_status INTEGER)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_rowid_inx ON CSStorageFileTable(ft_rowid)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_inode_inx ON CSStorageFileTable(ft_inode)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_space_inx ON CSStorageFileTable(ft_space)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_pspace_inx ON CSStorageFileTable(ft_pspace)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_vt_rowid_inx ON CSStorageFileTable(vt_rowid)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_status_inx ON CSStorageFileTable(ft_status)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE TABLE IF NOT EXISTS CSStorageChunkListTable (clt_rowid INTEGER PRIMARY KEY AUTOINCREMENT,clt_inode BIGINT,clt_count BIGINT,clt_chunkRowIDs BLOB)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageChunkListTable_clt_rowid_inx ON CSStorageChunkListTable(clt_rowid)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageChunkListTable_clt_inode_inx ON CSStorageChunkListTable(clt_inode)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE TABLE IF NOT EXISTS CSStoragePendingChunksTable (pct_rowid INTEGER PRIMARY KEY,pct_inode BIGINT,pct_count BIGINT,pct_chunkRowIDs BLOB)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStoragePendingChunksTable_pct_inode_inx ON CSStoragePendingChunksTable(pct_inode)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE TABLE IF NOT EXISTS CSStoragePendingFileChunklistTable (pft_rowid INTEGER PRIMARY KEY,pft_token BIGINT,pft_inode BIGINT)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStoragePendingFileChunklistTable_pft_token_inx ON CSStoragePendingFileChunklistTable(pft_token)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStoragePendingFileChunklistTable_pft_inode_inx ON CSStoragePendingFileChunklistTable(pft_inode)");
          if (v14)
          {
            goto LABEL_35;
          }

          if (v39)
          {
            if (v39 == 8)
            {
              goto LABEL_178;
            }

            v48 = 8;
            goto LABEL_173;
          }

          v49 = 8;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "INSERT INTO CSDatabaseVersion (version) VALUES (%llu)", v49);
        if (!v14)
        {
          goto LABEL_178;
        }

LABEL_35:
        v7 = v14;
        goto LABEL_41;
      case 0x1A:
LABEL_77:
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSopenDB_cold_6();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_step", v36);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CSopenDB_cold_7();
          }

          v38 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *v57 = v37;
            _os_log_impl(&dword_243431000, v38, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v37)
          {
            CFRelease(v37);
          }
        }

        _CSBruteForceDatabaseCorruptionRecovery(a1, v33, a3);
        break;
    }

    v39 = 0;
    goto LABEL_89;
  }

  v7 = v6;
  if (v6 == 14)
  {
    sqlite3_close(pDb);
    pDb = 0;
    if (CS_corruption_checking_sqlite3_open_v2(a1, a3, &pDb, 65574))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_1();
      }

      v8 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg(pDb);
        *buf = 136315394;
        *v57 = a1;
        *&v57[8] = 2080;
        *&v57[10] = v9;
        _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "sqlite3_open_v2 failed, dbname:%s: %s", buf, 0x16u);
      }

      sqlite3_close(pDb);
      pDb = 0;
      v7 = 14;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CSopenDB_cold_14();
  }

  v15 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v16 = sqlite3_errmsg(pDb);
    *buf = 136315650;
    *v57 = a1;
    *&v57[8] = 1024;
    *&v57[10] = v7;
    *&v57[14] = 2080;
    *&v57[16] = v16;
    v17 = "sqlite3_open_v2 failed, dbname:%s: %d %s";
    v18 = v15;
    v19 = 28;
LABEL_40:
    _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

LABEL_41:
  v20 = 0xFFFFFFFFLL;
  if (v7 != 101)
  {
LABEL_42:
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSopenDB_cold_15();
    }

    v21 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    v22 = sqlite3_errmsg(pDb);
    *buf = 67109378;
    *v57 = v7;
    *&v57[4] = 2080;
    *&v57[6] = v22;
    v23 = "sqlite3 error: %d %s";
    v24 = v21;
    v25 = 18;
LABEL_46:
    _os_log_impl(&dword_243431000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
LABEL_47:
    v20 = 0xFFFFFFFFLL;
  }

LABEL_48:
  if (pStmt)
  {
    sqlite3_finalize(pStmt);
  }

  CScloseDB(pDb);
  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CSopenDB_cold_16();
  }

  v26 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *v57 = v20;
    _os_log_impl(&dword_243431000, v26, OS_LOG_TYPE_ERROR, "rc:%d", buf, 8u);
  }

  return v20;
}

uint64_t CS_corruption_checking_sqlite3_open_v2(const char *a1, uint64_t a2, sqlite3 **a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v8 = CS_corruption_causing_sqlite3_open_v2(a1, a3, v4, 0);
  }

  else
  {
    v8 = sqlite3_open_v2(a1, a3, v4, 0);
  }

  v9 = v8;
  _CSHandleDatabaseIOError(v8);
  if (v9 == 26 || v9 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CS_corruption_checking_sqlite3_open_v2_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_open_v2", v9);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CS_corruption_checking_sqlite3_open_v2_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    _CSBruteForceDatabaseCorruptionRecovery(a1, 0, v6);
  }

  return v9;
}

uint64_t _CSHandleDatabaseIOError(uint64_t result)
{
  v5 = *MEMORY[0x277D85DE8];
  if (result == 10)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _CSHandleDatabaseIOError_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v1 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk store database I/O error. Forcing process exit.");
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _CSHandleDatabaseIOError_cold_2();
      }

      v2 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v3 = 138543362;
        v4 = v1;
        _os_log_impl(&dword_243431000, v2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
      }

      if (v1)
      {
        CFRelease(v1);
      }
    }

    exit(1);
  }

  return result;
}

uint64_t _CSHandleDatabaseIOError_0(uint64_t result)
{
  v5 = *MEMORY[0x277D85DE8];
  if (result == 10)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSHandleDatabaseIOError_cold_1_0();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v1 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk store database I/O error. Forcing process exit.");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSHandleDatabaseIOError_cold_2_0();
      }

      v2 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v3 = 138543362;
        v4 = v1;
        _os_log_impl(&dword_243431000, v2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
      }

      if (v1)
      {
        CFRelease(v1);
      }
    }

    exit(1);
  }

  return result;
}

uint64_t CS_corruption_checking_sqlite3_exec(const char *a1, uint64_t a2, sqlite3 *a3, const char *a4, char **a5)
{
  v8 = a2;
  v17 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v10 = CS_corruption_causing_sqlite3_exec(a3, a4, 0, 0, a5);
  }

  else
  {
    v10 = sqlite3_exec(a3, a4, 0, 0, a5);
  }

  v11 = v10;
  _CSHandleDatabaseIOError(v10);
  if (v11 == 26 || v11 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CS_corruption_checking_sqlite3_exec_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_exec", v11);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CS_corruption_checking_sqlite3_exec_cold_2();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    _CSBruteForceDatabaseCorruptionRecovery(a1, a3, v8);
  }

  return v11;
}

uint64_t CS_corruption_checking_sqlite3_exec_0(uint64_t a1, sqlite3 *a2, const char *a3, char **a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v8 = CS_corruption_causing_sqlite3_exec(a2, a3, 0, 0, a4);
  }

  else
  {
    v8 = sqlite3_exec(a2, a3, 0, 0, a4);
  }

  v9 = v8;
  _CSHandleDatabaseIOError_0(v8);
  if (v9 == 26 || v9 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CS_corruption_checking_sqlite3_exec_cold_1_0();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_exec", v9);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CS_corruption_checking_sqlite3_exec_cold_2_0();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    _CSHandleCorruptDatabase(a1);
  }

  return v9;
}

uint64_t CSsql_corruption_checking_do(const char *a1, uint64_t a2, sqlite3 *a3, char *a4, ...)
{
  va_start(va, a4);
  v5 = a2;
  v14 = *MEMORY[0x277D85DE8];
  v7 = CSsql_doV(a3, a4, va);
  _CSHandleDatabaseIOError(v7);
  if (v7 == 26 || v7 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSsql_corruption_checking_do_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in CSsql_do", v7, va);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_corruption_checking_do_cold_2();
      }

      v10 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    _CSBruteForceDatabaseCorruptionRecovery(a1, a3, v5);
  }

  return v7;
}

uint64_t CSsql_corruption_checking_do_0(uint64_t a1, sqlite3 *a2, char *a3, ...)
{
  va_start(va, a3);
  v11 = *MEMORY[0x277D85DE8];
  v4 = CSsql_doV(a2, a3, va);
  _CSHandleDatabaseIOError_0(v4);
  if (v4 == 26 || v4 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CSsql_corruption_checking_do_cold_1_0();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in CSsql_do", v4, va);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CSsql_corruption_checking_do_cold_2_0();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    _CSHandleCorruptDatabase(a1);
  }

  return v4;
}

uint64_t CSsql_doV(sqlite3 *a1, char *a2, va_list a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sqlite3_vmprintf(a2, a3);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  if (!a1)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSsql_doV_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SQL DB not open: '%s'\n", v5);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_doV_cold_4();
      }

      v8 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    sqlite3_free(v5);
    return 1;
  }

  sqlite3_busy_timeout(a1, 5000);
  errmsg = 0;
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v6 = CS_corruption_causing_sqlite3_exec(a1, v5, 0, 0, &errmsg);
  }

  else
  {
    v6 = sqlite3_exec(a1, v5, 0, 0, &errmsg);
  }

  v9 = v6;
  if (v6)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSsql_doV_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SQL error: '%s', (%d) %s\n", v5, v9, errmsg);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_doV_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  sqlite3_free(v5);
  sqlite3_free(errmsg);
  return v9;
}

uint64_t cs_unlock(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = pthread_self();
  if (pthread_equal(v2, v3))
  {
    *(a1 + 264) = 0;
    result = pthread_rwlock_unlock(a1);
    if (!result)
    {

      return pthread_mutex_unlock((a1 + 200));
    }
  }

  else
  {

    return pthread_rwlock_unlock(a1);
  }

  return result;
}

uint64_t _CSBeginTransactionSqlRc(uint64_t a1)
{
  v2 = 0;
  v12 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong_explicit((a1 + 260), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSBeginTransactionSqlRc_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NESTED TRANSACTION!\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSBeginTransactionSqlRc_cold_2();
      }

      v4 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v3;
        _os_log_impl(&dword_243431000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  v9 = 0;
  v5 = CS_corruption_checking_sqlite3_exec_0(a1, *(a1 + 24), "BEGIN TRANSACTION", &v9);
  if (v5)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSBeginTransactionSqlRc_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to begin transaction: %d (%s)\n", v5, v9);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSBeginTransactionSqlRc_cold_4();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    sqlite3_free(v9);
  }

  return v5;
}

uint64_t CKCheckChunkStoreDB(uint64_t result)
{
  if (!*(result + 104))
  {
    v1 = result;
    result = CKLockChunkStore(result);
    if (!result)
    {
      _CSCheckChunkStoreDB(v1, 0);

      return cs_unlock((v1 + 34));
    }
  }

  return result;
}

uint64_t _CSCommitDatabaseTransactions(uint64_t result, char a2)
{
  if (*(result + 104))
  {
    v2 = result;
    if (a2)
    {
      _CSEndTransactionSqlRc(result);

      return _CSBeginTransactionSqlRc(v2);
    }

    else
    {
      result = CKLockChunkStore(result);
      if (!result)
      {
        _CSEndTransactionSqlRc(v2);
        _CSBeginTransactionSqlRc(v2);

        return cs_unlock(v2 + 272);
      }
    }
  }

  return result;
}

uint64_t CKLockChunkStore(uint64_t a1)
{
  v2 = (a1 + 256);
  atomic_fetch_add_explicit((a1 + 256), 1u, memory_order_relaxed);
  result = cs_wrlock(a1 + 272);
  atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed);
  if (!result)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      cs_unlock(a1 + 272);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t _CSEndTransactionSqlRc(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = CS_corruption_checking_sqlite3_exec_0(a1, *(a1 + 24), "END TRANSACTION", &v9);
  if (v2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSEndTransactionSqlRc_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to commit transaction: %d (%s)\n", v2, v9);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSEndTransactionSqlRc_cold_2();
      }

      v4 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v3;
        _os_log_impl(&dword_243431000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    sqlite3_free(v9);
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 260), &v5, 0, memory_order_relaxed, memory_order_relaxed);
  if (v5 != 1)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSEndTransactionSqlRc_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"TRANSACTION COUNT ALREADY ZERO!\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSEndTransactionSqlRc_cold_4();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  return v2;
}

uint64_t CKChunkStoreInvalidate(uint64_t a1)
{
  result = CKLockChunkStore(a1);
  if (!result)
  {
    _CSChunkStoreClose(a1);

    return cs_unlock(a1 + 272);
  }

  return result;
}

void _CSChunkStoreClose(uint64_t result)
{
  if (*(result + 264))
  {
    for (i = 0; i != 40; i += 8)
    {
      _CSCloseStorageFile(result, *(*(result + 264) + i), 0);
    }
  }

  if (*(result + 24))
  {
    pthread_mutex_lock((result + 32));
    v3 = *(result + 96);
    if (v3)
    {
      CFDictionaryApplyFunction(v3, _CSFinalizeDBStmts, result);
      CFRelease(*(result + 96));
      *(result + 96) = 0;
    }

    if (*(result + 104))
    {
      _CSEndTransactionSqlRc(result);
    }

    pthread_mutex_unlock((result + 32));
    if ((*(result + 16) & 1) == 0)
    {
      CScloseDB(*(result + 24));
    }

    *(result + 24) = 0;
  }
}

void CScloseDB(sqlite3 *pDb)
{
  v6 = *MEMORY[0x277D85DE8];
  if (pDb)
  {
    while (1)
    {
      stmt = sqlite3_next_stmt(pDb, 0);
      if (!stmt)
      {
        break;
      }

      sqlite3_finalize(stmt);
    }

    if (sqlite3_close(pDb))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CScloseDB_cold_1();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315138;
        v5 = sqlite3_errmsg(pDb);
        _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_ERROR, "sqlite3_close failed: %s", &v4, 0xCu);
      }
    }
  }
}

void _CSChunkStoreCSChunkStoreFinalize(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkStoreCSChunkStoreFinalize_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"path:%s\n", *(a1 + 112));
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCSChunkStoreFinalize_cold_2();
    }

    v3 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v9 = v2;
      _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  cs_wrlock(a1 + 272);
  v4 = *(a1 + 120);
  if (v4)
  {
    removefile(v4, 0, 1u);
    free(*(a1 + 120));
    *(a1 + 120) = 0;
  }

  _CSChunkStoreClose(a1);
  v5 = *(a1 + 264);
  if (v5)
  {
    free(v5);
    *(a1 + 264) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    free(v6);
    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 136) = 0;
  }

  pthread_mutex_destroy((a1 + 32));
  pthread_mutex_destroy((a1 + 144));
  pthread_cond_destroy((a1 + 208));
  cs_unlock(a1 + 272);
  cs_rwlock_destroy(a1 + 272);
  CKPointerHash();
  *buf = -559038737;
  memset_pattern4((a1 + 16), buf, 0x218uLL);
}

uint64_t cs_rwlock_destroy(uint64_t a1)
{
  result = pthread_rwlock_destroy(a1);
  if (!result)
  {
    result = pthread_mutex_destroy((a1 + 200));
  }

  *(a1 + 264) = 0;
  return result;
}

uint64_t get_path_for_fd(int a1, char *a2)
{
  memset(&v8, 0, sizeof(v8));
  v4 = -5;
  v7 = 0;
  while (1)
  {
    if (fstat(a1, &v8) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7.val[1] = 0;
    v7.val[0] = v8.st_dev;
    if ((fsgetpath(a2, 0x400uLL, &v7, v8.st_ino) & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 35 || v4++ == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t mkdir_recursive(uint64_t a1, mode_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(path, 0x400uLL);
  if (__strlcpy_chk() <= 0x3FF)
  {
    result = mkpath_np(path, a2);
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = 63;
  }

  *__error() = v3;
  return 0xFFFFFFFFLL;
}

const void **CKChunkCryptorV2Finalize(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    return CSContext_Destroy(result, 0);
  }

  return result;
}

uint64_t CKChunkCryptorV2Init(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v20 = 0;
  v8 = CKChunkDigestResultsChunkKey(a3);
  v9 = *MEMORY[0x277CBECE8];
  v10 = CKEncryptionKeySize(v8);
  v11 = CFDataCreate(v9, (v8 + 1), v10);
  v12 = CKChunkDigestResultsChunkSignature(a3);
  v13 = CKChunkSignatureSize(v12);
  v14 = CFDataCreate(v9, (v12 + 1), v13);
  v15 = CKChunkDigestResultsChunkLength(a3);
  v16 = v15;
  if (v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = v15;
  }

  if (v4 < v15)
  {
    CKChunkCryptorV2Init_cold_1();
  }

  if (!CSContext_Initialize(*(a1 + 40), &v20))
  {
    goto LABEL_11;
  }

  v17 = **(a1 + 40);
  if (a2)
  {
    if (CSChunkCryptor_InitializeEncryptor(v17, v11, v14, v16, v4, &v20))
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = 0;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!CSChunkCryptor_InitializeDecryptor(v17, v11, v14, v16, v4, &v20))
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = 1;
  if (v11)
  {
LABEL_12:
    CFRelease(v11);
  }

LABEL_13:
  if (v14)
  {
    CFRelease(v14);
  }

  return v18;
}

uint64_t CKChunkCryptorV2Update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v3 = CSChunkCryptor_Update(**(a1 + 40), a2, a3, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t CKChunkCryptorV2Finish(uint64_t a1, CFErrorRef *a2)
{
  v4 = CKChunkDigestResultsChunkSignature(*(a1 + 24));
  v5 = **(a1 + 40);
  v6 = CKChunkSignatureSize(v4);

  return CSChunkCryptor_Finalize(v5, (v4 + 1), v6, a2);
}

uint64_t CKChunkSignatureGeneratorAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKChunkSignatureGeneratorGetTypeID_typeID, &kCKChunkSignatureGeneratorContextClass);
  result = CKTypeCreateInstance_(0, v6, a3 + 56);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 48) = result + 56;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t CKChunkSignatureGeneratorCreate(void *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  *a1 = 0;
  Class = CKChunkDigestArgumentsGetClass(a2);
  if (Class != 1)
  {
    if (Class == 2)
    {
      cf = 0;
      v5 = 8;
      goto LABEL_7;
    }

    return 0;
  }

  cf = 0;
  v5 = 104;
LABEL_7:
  v11 = 0;
  *a1 = 0;
  v7 = CKChunkSignatureGeneratorAllocate(&v11, Class, v5);
  v6 = 0;
  v8 = v11;
  if (v7 && v11)
  {
    cf = 0;
    CKBaseRetain(a2);
    *(v8 + 3) = a2;
    v9 = _requestCallbacks[4 * v8[4]];
    if (v9 && v9(v8, a2, &cf))
    {
      CFRetain(v8);
      *a1 = v8;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t CKChunkSignatureGeneratorUpdate(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks[4 * v1 + 1])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkSignatureGeneratorFinish(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks[4 * v1 + 2])();
  }

  else
  {
    return 0;
  }
}

void _CKChunkSignatureGeneratorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks[4 * v2 + 3])(a1);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CKBaseRelease(v3);
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    CKBaseRelease(v4);
  }

  *(a1 + 32) = 0;
}

uint64_t CSCopier_Destroy(uint64_t a1, CFErrorRef *a2)
{
  if (a1 && (v4 = *(a1 + 64)) != 0)
  {
    if (*v4)
    {
      CFRelease(*v4);
      *v4 = 0;
    }

    v5 = *(v4 + 8);
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 8) = 0;
    }

    v6 = *(v4 + 16);
    if (v6)
    {
      CFRelease(v6);
      *(v4 + 16) = 0;
    }

    v7 = *(v4 + 24);
    if (v7)
    {
      CFRelease(v7);
      *(v4 + 24) = 0;
    }

    v8 = *(v4 + 32);
    if (v8)
    {
      CFRelease(v8);
      *(v4 + 32) = 0;
    }

    v9 = *(v4 + 40);
    if (v9)
    {
      CFRelease(v9);
    }

    free(v4);
    *(a1 + 64) = 0;
    return 1;
  }

  else
  {
    v11 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a2 = v11;
  }

  return result;
}

uint64_t CSCopier_Initialize(uint64_t a1, const __CFData *a2, const __CFData *a3, const UInt8 *a4, CFErrorRef *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v16 = *MEMORY[0x277CBECE8];
    v17 = *MEMORY[0x277CBEE48];
    v18 = 6;
LABEL_8:
    v19 = CFErrorCreate(v16, v17, v18, 0);
    result = 0;
    *a5 = v19;
    return result;
  }

  v10 = malloc_type_malloc(0x30uLL, 0x60040620FCCB7uLL);
  if (!v10)
  {
    v16 = *MEMORY[0x277CBECE8];
    v17 = *MEMORY[0x277CBEE48];
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v10;
  v22 = a5;
  v12 = ccsha256_di();
  *bytes = 0u;
  v24 = 0u;
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  v13 = cchkdf();
  v14 = *MEMORY[0x277CBECE8];
  if (v13)
  {
    goto LABEL_10;
  }

  v15 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 32);
  *v11 = v15;
  *bytes = 0u;
  v24 = 0u;
  if (a4)
  {
    CFDataGetLength(a4);
    CFDataGetBytePtr(a4);
    v15 = *v11;
  }

  CFDataGetLength(v15);
  CFDataGetBytePtr(*v11);
  if (cchkdf())
  {
LABEL_10:
    v21 = CFErrorCreate(v14, *MEMORY[0x277CBEE48], 2, 0);
    result = 0;
    *v22 = v21;
  }

  else
  {
    v11[1] = CFDataCreate(v14, bytes, 32);
    cc_clear();
    *(a1 + 64) = v11;
    return _CSCopier_DeriveKeysFromCopyKey(a1, v12, v22);
  }

  return result;
}

uint64_t _CSCopier_DeriveKeysFromCopyKey(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 64);
  if (v4)
  {
    v17 = 0;
    *bytes = 0u;
    v16 = 0u;
    CFDataGetLength(*(v4 + 8));
    CFDataGetBytePtr(*(v4 + 8));
    v5 = cchkdf();
    v6 = *MEMORY[0x277CBECE8];
    if (!v5)
    {
      *(v4 + 16) = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 8);
      *(v4 + 24) = CFDataCreate(v6, &bytes[8], 32);
      v14 = 0;
      *v12 = 0u;
      v13 = 0u;
      CFDataGetLength(*(v4 + 8));
      CFDataGetBytePtr(*(v4 + 8));
      if (!cchkdf())
      {
        *(v4 + 32) = CFDataCreate(v6, v12, 8);
        *(v4 + 40) = CFDataCreate(v6, &v12[8], 32);
        cc_clear();
        cc_clear();
        return 1;
      }
    }

    v7 = *MEMORY[0x277CBEE48];
    v8 = v6;
    v9 = 2;
  }

  else
  {
    v8 = *MEMORY[0x277CBECE8];
    v7 = *MEMORY[0x277CBEE48];
    v9 = 6;
  }

  v10 = CFErrorCreate(v8, v7, v9, 0);
  result = 0;
  *a3 = v10;
  return result;
}

uint64_t CSCopier_InitializeFromKey(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  v6 = malloc_type_malloc(0x30uLL, 0x60040620FCCB7uLL);
  if (v6)
  {
    v7 = v6;
    *(a1 + 64) = v6;
    v8 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(a2);
    v7[1] = CFDataCreateMutableCopy(v8, Length, a2);
    v10 = ccsha256_di();
    result = _CSCopier_DeriveKeysFromCopyKey(a1, v10, a3);
    if (result)
    {
      *(a1 + 64) = v7;
      return 1;
    }
  }

  else
  {
    v12 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 1, 0);
    result = 0;
    *a3 = v12;
  }

  return result;
}

uint64_t CSCopier_ExportCopyKey(uint64_t a1, CFMutableDataRef *a2, CFErrorRef *a3)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x277CBECE8];
    if (v5)
    {
      Length = CFDataGetLength(v5);
      *a2 = CFDataCreateMutableCopy(v6, Length, *(v4 + 8));
      return 1;
    }

    v11 = *MEMORY[0x277CBEE48];
    v10 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v10 = *MEMORY[0x277CBECE8];
    v11 = *MEMORY[0x277CBEE48];
  }

  v12 = CFErrorCreate(v10, v11, 6, 0);
  result = 0;
  *a3 = v12;
  return result;
}

uint64_t CSCopier_ExportCopyCredentials(uint64_t a1, CFMutableDataRef *a2, CFMutableDataRef *a3, CFErrorRef *a4)
{
  v5 = *(a1 + 64);
  if (v5 && (v6 = *(v5 + 16)) != 0 && *(v5 + 24))
  {
    v9 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(v6);
    *a2 = CFDataCreateMutableCopy(v9, Length, *(v5 + 16));
    v11 = CFDataGetLength(*(v5 + 24));
    *a3 = CFDataCreateMutableCopy(v9, v11, *(v5 + 24));
    return 1;
  }

  else
  {
    v13 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a4 = v13;
  }

  return result;
}

uint64_t CSCopier_CreateChunkSignature(uint64_t a1, uint64_t a2, const __CFData *a3, CFErrorRef *a4)
{
  v5 = *(a1 + 64);
  if (!v5)
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = *MEMORY[0x277CBEE48];
    v11 = 6;
LABEL_8:
    *a4 = CFErrorCreate(v9, v10, v11, 0);
    return 0;
  }

  if (!a2)
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = *MEMORY[0x277CBEE48];
    v11 = 11;
    goto LABEL_8;
  }

  v7 = *(v5 + 40);

  return _CSCopier_PermuteChunkSignature(a1, a2, v7, a3, a4);
}

uint64_t _CSCopier_PermuteChunkSignature(uint64_t a1, uint64_t a2, const __CFData *a3, const __CFData *a4, CFErrorRef *a5)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 64);
  if (v6 && (v7 = *(v6 + 32)) != 0)
  {
    v14[0] = a2;
    v14[1] = 0;
    if (CFDataGetLength(v7) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(v14 + v10);
        *(v14 + v10) = CFDataGetBytePtr(*(v6 + 32))[v10] ^ v11;
        ++v10;
      }

      while (CFDataGetLength(*(v6 + 32)) > v10);
    }

    if (_CSCopier_EncryptBlob(v14, a3, a4, a5))
    {
      return 1;
    }

    else
    {
      cc_clear();
      return 0;
    }
  }

  else
  {
    v13 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a5 = v13;
  }

  return result;
}

uint64_t CSCopier_CreateFORD(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v6 = *(v4 + 24);

    return _CSCopier_PermuteFORD(a1, v6, a2, a3);
  }

  else
  {
    *a3 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    return 0;
  }
}

uint64_t _CSCopier_PermuteFORD(uint64_t a1, const __CFData *a2, const __CFData *a3, CFErrorRef *a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 64);
  if (v5 && (v6 = *(v5 + 16)) != 0)
  {
    v13[0] = 0;
    v13[1] = 0;
    CFDataGetLength(v6);
    __memset_chk();
    if (CFDataGetLength(*(v5 + 16)) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(v13 + v9);
        *(v13 + v9) = CFDataGetBytePtr(*(v5 + 16))[v9] ^ v10;
        ++v9;
      }

      while (CFDataGetLength(*(v5 + 16)) > v9);
    }

    if (_CSCopier_EncryptBlob(v13, a2, a3, a4))
    {
      return 1;
    }

    else
    {
      cc_clear();
      return 0;
    }
  }

  else
  {
    v12 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a4 = v12;
  }

  return result;
}

uint64_t _CSCopier_PermuteFileSignature(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 64);
  if (v4 && (v5 = *(v4 + 32)) != 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    CFDataGetLength(v5);
    __memset_chk();
    if (CFDataGetLength(*(v4 + 32)) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(v11 + v7);
        *(v11 + v7) = CFDataGetBytePtr(*(v4 + 32))[v7] ^ v8;
        ++v7;
      }

      while (CFDataGetLength(*(v4 + 32)) > v7);
    }

    if (_CSCopier_EncryptBlob(v11, *(v4 + 40), a2, a3))
    {
      return 1;
    }

    else
    {
      cc_clear();
      return 0;
    }
  }

  else
  {
    v10 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a3 = v10;
  }

  return result;
}

uint64_t _CSCopier_EncryptBlob(uint64_t a1, const __CFData *a2, const __CFData *a3, CFErrorRef *a4)
{
  ccaes_ctr_crypt_mode();
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  CFDataGetBytePtr(a3);
  if (!ccctr_one_shot())
  {
    return 1;
  }

  v7 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 10, 0);
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t CKStreamKeyDerivation(CFDataRef theData, const __CFData *a2, const __CFData *a3, CFDataRef *a4, CFDataRef *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  *bytes = 0u;
  v22 = 0u;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!theData || CFDataGetLength(theData) != 16)
  {
    v10 = @"Bad assetKey";
    goto LABEL_14;
  }

  if (!a3 || CFDataGetLength(a3) != 16)
  {
    v10 = @"Bad salt";
    goto LABEL_14;
  }

  if (!a2 || CFDataGetLength(a2) <= 15)
  {
    v10 = @"Bad concatenatedChunkKeys";
LABEL_14:
    v11 = CKErrorCreateWithFormat(6, v10);
    goto LABEL_15;
  }

  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  BytePtr = CFDataGetBytePtr(a3);
  v20 = CFDataGetLength(a3);
  v17 = CCKeyDerivationHMac();
  if (v17)
  {
    v11 = CKErrorCreateWithFormat(5, @"CCKeyDerivationHMac %d", v17, 0, 0, BytePtr, v20, bytes, 32);
  }

  else
  {
    if (!a4)
    {
      return 1;
    }

    v18 = SecCFAllocatorZeroize();
    v19 = CFDataCreate(v18, bytes, 32);
    if (v19)
    {
      v12 = v19;
      CFRetain(v19);
      *a4 = v12;
      v13 = 1;
      goto LABEL_19;
    }

    v11 = CKErrorCreateWithFormat(2, @"CKStreamKeyDerivation", Length, 0, 0, BytePtr, v20, bytes, 32);
  }

LABEL_15:
  v12 = v11;
  if (a5 && v11)
  {
    CFRetain(v11);
    v13 = 0;
    *a5 = v12;
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v12)
    {
      return result;
    }
  }

LABEL_19:
  CFRelease(v12);
  return v13;
}

uint64_t CKChunkCryptorAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKChunkCryptorGetTypeID_typeID, &kCKChunkCryptorContextClass);
  result = CKTypeCreateInstance_(0, v6, a3 + 48);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 40) = result + 48;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t CKChunkCryptorCreate(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  *a1 = 0;
  Class = CKChunkDigestResultsGetClass(a3);
  if (Class != 1)
  {
    if (Class == 2)
    {
      cf = 0;
      v9 = 8;
      goto LABEL_7;
    }

    return 0;
  }

  cf = 0;
  v9 = 16;
LABEL_7:
  v15 = 0;
  *a1 = 0;
  v11 = CKChunkCryptorAllocate(&v15, Class, v9);
  v10 = 0;
  v12 = v15;
  if (v11 && v15)
  {
    cf = 0;
    CKBaseRetain(a3);
    *(v12 + 3) = a3;
    v13 = _requestCallbacks_0[4 * v12[4]];
    if (v13 && v13(v12, a2, a3, a4, &cf))
    {
      CFRetain(v12);
      *a1 = v12;
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t CKChunkCryptorUpdate(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_0[4 * v1 + 1])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkCryptorFinish(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_0[4 * v1 + 2])();
  }

  else
  {
    return 0;
  }
}

void _CKChunkCryptorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks_0[4 * v2 + 3])(a1);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CKBaseRelease(v3);
  }

  *(a1 + 24) = 0;
}

uint64_t CKChunkDigestResultsV1Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKChunkDigestResultsAllocate(&v3, 1, 0);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t CKChunkDigestResultsV1Create(void *a1, _BYTE *a2, char *a3, uint64_t a4)
{
  v12 = 0;
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  *a1 = 0;
  cf = 0;
  v8 = 0;
  if (CKChunkDigestResultsAllocate(&cf, 1, 0) && cf)
  {
    if (_CKChunkDigestResultsInit(cf, a2, a3, v4, &v12))
    {
      if (cf)
      {
        CFRetain(cf);
        v9 = cf;
      }

      else
      {
        v9 = 0;
      }

      *a1 = v9;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

BOOL CKChunkDigestResultsV1SignatureAndKeyEqual(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    if (*(a1 + 16) == *(a2 + 16))
    {
      result = CKChunkSignaturesEqual(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        v5 = *(a1 + 32);
        v6 = *(a2 + 32);
        if (!(v5 | v6))
        {
          return 1;
        }

        return CKChunkKeysEqual(v5, v6);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CKChunkDigestArgumentsAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKChunkDigestArgumentsGetTypeID_typeID, &kCKChunkDigestArgumentsContextClass);
  result = CKTypeCreateInstance_(0, v6, a3 + 32);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 24) = result + 32;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t _CKChunkDigestArgumentsInit(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  *(a1 + 20) = a2;
  return 1;
}

uint64_t CKChunkDigestArgumentsChunkScheme(uint64_t a1)
{
  v1 = _requestCallbacks_1[6 * *(a1 + 16)];
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkDigestArgumentsChunkSchemeByte(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 1])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkDigestArgumentsChunkEncryptionKeyScheme(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 2])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkDigestArgumentsChunkEncryptionKeySchemeByte(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOBYTE(result) = (_requestCallbacks_1[6 * v1 + 2])();
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t CKChunkDigestArgumentsBoundaryKey(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    return (_requestCallbacks_1[6 * v1 + 3])();
  }

  else
  {
    return 0;
  }
}

uint64_t _CKChunkDigestArgumentsCFFinalize(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 5])();
  }

  return result;
}

uint64_t _CKChunkDigestArgumentsCFCopyFormatDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 4])();
  }

  else
  {
    return 0;
  }
}

uint64_t _CKChunkDigestArgumentsCFCopyDebugDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 4])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKFileDigestArgumentsV2Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKFileDigestArgumentsAllocate(&v3, 1, 24);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

void CKFileDigestArgumentsV2Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 8);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 24);
  }

  *(v2 + 8) = 0;
  v4 = *(a1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    CFRelease(v5);
    v4 = *(a1 + 24);
  }

  *(v4 + 16) = 0;
}

uint64_t _CKFileDigestArgumentsV2Create(CFTypeRef *a1, int a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  v17 = 0;
  *a1 = 0;
  if ((a3 != 0) == (a4 != 0))
  {
    return 0;
  }

  v10 = CKFileDigestArgumentsAllocate(&cf, 2, 24);
  v11 = 0;
  v12 = cf;
  if (v10 && cf)
  {
    if (_CKChunkDigestArgumentsInit(cf, 1, &v17))
    {
      v13 = cf;
      **(cf + 3) = a2;
      if (a3)
      {
        CFRetain(a3);
        v13 = cf;
        *(*(cf + 3) + 8) = a3;
      }

      if (a4)
      {
        CFRetain(a4);
        v13 = cf;
        *(*(cf + 3) + 16) = a4;
      }

      CFRetain(v13);
      v14 = v17;
      *a1 = cf;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v14 = v17;
      if (a5 && v17)
      {
        CFRetain(v17);
        v11 = 0;
        v14 = v17;
        *a5 = v17;
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v12 = cf;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

CFStringRef CKFileDigestArgumentsV2CopyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = @"boundaryKey";
  }

  else
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = @"fileKey";
  }

  hex_with_data = ck_cfstring_create_hex_with_data(v3);
  if (hex_with_data)
  {
    v6 = hex_with_data;
    if (*(a1 + 20))
    {
      v7 = &unk_243480212;
    }

    else
    {
      v7 = "un";
    }

    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"v2 %sencrypted %@ %@", v7, v4, hex_with_data);
    CFRelease(v6);
    return v8;
  }

LABEL_10:
  if (*(a1 + 20))
  {
    v10 = &unk_243480212;
  }

  else
  {
    v10 = "un";
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"v2 %sencrypted (null keys)", v10);
}

uint64_t CKFileSignatureGeneratorAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKFileSignatureGeneratorGetTypeID_typeID, &kCKFileSignatureGeneratorContextClass);
  result = CKTypeCreateInstance_(0, v6, a3 + 56);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 48) = result + 56;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t CKFileSignatureGeneratorCreate(void *a1, const void *a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  Class = CKFileDigestArgumentsGetClass(a2);
  if (Class == 1)
  {
    cf = 0;
    v5 = 96;
  }

  else
  {
    if (Class != 2)
    {
      return 0;
    }

    cf = 0;
    v5 = 8;
  }

  v11 = 0;
  *a1 = 0;
  v6 = CKFileSignatureGeneratorAllocate(&v11, Class, v5);
  v7 = 0;
  v8 = v11;
  if (v6 && v11)
  {
    cf = 0;
    CKBaseRetain(a2);
    *(v8 + 3) = a2;
    v9 = _requestCallbacks_2[4 * v8[4]];
    if (v9 && v9(v8, a2, &cf))
    {
      CFRetain(v8);
      *a1 = v8;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t CKFileSignatureGeneratorUpdate(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_2[4 * v1 + 1])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKFileSignatureGeneratorFinish(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_2[4 * v1 + 2])();
  }

  else
  {
    return 0;
  }
}

void _CKFileSignatureGeneratorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks_2[4 * v2 + 3])(a1);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CKBaseRelease(v3);
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    CKBaseRelease(v4);
  }

  *(a1 + 32) = 0;
}

const void *CSsql_get64(uint64_t a1, char a2, char *a3, ...)
{
  va_start(va, a3);
  v24 = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  va_copy(&ppStmt[1], va);
  v6 = sqlite3_vmprintf(a3, va);
  if ((a2 & 1) != 0 || !CKReadLockChunkStore(a1))
  {
    DB = CSChunkStoreGetDB(a1);
    if (!DB)
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_5();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s SQL DB not open: '%s'", "CSsql_get64", a3);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_6();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      v23 = v7;
      goto LABEL_20;
    }

    v9 = DB;
    v10 = sqlite3_prepare_v2(DB, v6, -1, ppStmt, 0);
    if (v10)
    {
      v11 = v10;
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v12 = *MEMORY[0x277CBECE8];
      v13 = sqlite3_errmsg(v9);
      v7 = CFStringCreateWithFormat(v12, 0, @"sqlite3_prepare_v2 failed: %d %s", v11, v13);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_2();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        if (!v7)
        {
          goto LABEL_24;
        }

        CFRelease(v7);
LABEL_23:
        v7 = 0;
LABEL_24:
        if (a2)
        {
          goto LABEL_26;
        }

LABEL_25:
        CKUnlockChunkStore(a1);
        goto LABEL_26;
      }

      *buf = 138543362;
      v23 = v7;
LABEL_20:
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      goto LABEL_21;
    }

    v16 = sqlite3_step(ppStmt[0]);
    if (v16 != 101)
    {
      v17 = v16;
      if (v16 == 100)
      {
        v7 = sqlite3_column_int64(ppStmt[0], 0);
        goto LABEL_40;
      }

      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v18 = *MEMORY[0x277CBECE8];
        v19 = sqlite3_errmsg(v9);
        v7 = CFStringCreateWithFormat(v18, 0, @"sqlite3_step failed: %d %s", v17, v19);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSsql_get64_cold_4();
        }

        v20 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v23 = v7;
          _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (!v7)
        {
LABEL_40:
          sqlite3_finalize(ppStmt[0]);
          if (a2)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        CFRelease(v7);
      }
    }

    v7 = 0;
    goto LABEL_40;
  }

  v7 = 0;
LABEL_26:
  sqlite3_free(v6);
  return v7;
}

uint64_t CSsql_get64_safe(uint64_t a1, char a2, sqlite3_int64 *a3, char *a4, ...)
{
  va_start(va, a4);
  v29 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  v26 = 0;
  if (a3)
  {
    va_copy(v26, va);
    v8 = sqlite3_vmprintf(a4, va);
    if ((a2 & 1) == 0 && CKReadLockChunkStore(a1))
    {
      v9 = 0;
LABEL_37:
      sqlite3_free(v8);
      return v9;
    }

    DB = CSChunkStoreGetDB(a1);
    if (!DB)
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_5();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s SQL DB not open: '%s'", "CSsql_get64_safe", a4);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_6();
      }

      v16 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *buf = 138543362;
      v28 = v9;
      goto LABEL_31;
    }

    v11 = DB;
    v12 = sqlite3_prepare_v2(DB, v8, -1, &ppStmt, 0);
    if (v12)
    {
      v13 = v12;
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v14 = *MEMORY[0x277CBECE8];
      v15 = sqlite3_errmsg(v11);
      v9 = CFStringCreateWithFormat(v14, 0, @"sqlite3_prepare_v2 failed: %d %s", v13, v15);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_2();
      }

      v16 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        if (!v9)
        {
          goto LABEL_35;
        }

        CFRelease(v9);
LABEL_34:
        v9 = 0;
LABEL_35:
        if (a2)
        {
          goto LABEL_37;
        }

LABEL_36:
        CKUnlockChunkStore(a1);
        goto LABEL_37;
      }

      *buf = 138543362;
      v28 = v9;
LABEL_31:
      _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      goto LABEL_32;
    }

    v20 = sqlite3_step(ppStmt);
    if (v20 != 101)
    {
      v21 = v20;
      if (v20 == 100)
      {
        *a3 = sqlite3_column_int64(ppStmt, 0);
        v9 = 1;
        goto LABEL_52;
      }

      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v22 = *MEMORY[0x277CBECE8];
        v23 = sqlite3_errmsg(v11);
        v9 = CFStringCreateWithFormat(v22, 0, @"sqlite3_step failed: %d %s", v21, v23);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSsql_get64_safe_cold_4();
        }

        v24 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = v9;
          _os_log_impl(&dword_243431000, v24, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (!v9)
        {
LABEL_52:
          sqlite3_finalize(ppStmt);
          if (a2)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        CFRelease(v9);
      }
    }

    v9 = 0;
    goto LABEL_52;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CSsql_get64_safe_cold_7();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"out64 parameter is NULL!");
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSsql_get64_safe_cold_8();
    }

    v18 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  return 0;
}

os_log_t __CSopenDB_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_85()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_90()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_95()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_100()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_105()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_113()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t _CSMigrateChunkStore(const char *a1, sqlite3 *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 == 8)
  {
    return 0;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    _CSMigrateChunkStore_cold_1();
  }

  v7 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218240;
    *v13 = a3;
    *&v13[8] = 2048;
    *&v13[10] = 8;
    _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEFAULT, "migrating chunk store from version %llu to version %llu", &v12, 0x16u);
  }

  if ((a3 - 5) < 2)
  {
LABEL_13:
    LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "ALTER TABLE CSStorageFileTable ADD COLUMN ft_status INTEGER");
    if (!result)
    {
      LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP INDEX IF EXISTS CSRegisteredFileTable_crt_id_inx");
      if (!result)
      {
        LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP INDEX IF EXISTS CSRegisteredFileTable_crt_iid_inx");
        if (!result)
        {
          LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP TABLE IF EXISTS CSRegisteredFileTable");
          if (!result)
          {
LABEL_17:
            result = CSsql_corruption_checking_do(a1, 0, a2, "ALTER TABLE CSChunkTable ADD COLUMN subchunksBlob BLOB");
            if (!result)
            {
              return result;
            }
          }
        }
      }
    }

LABEL_18:
    v8 = result;
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _CSMigrateChunkStore_cold_2();
    }

    v9 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v10 = sqlite3_errmsg(a2);
      v12 = 67109378;
      *v13 = v8;
      *&v13[4] = 2080;
      *&v13[6] = v10;
      _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, "sqlite3 error on migration: %d %s", &v12, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  if (a3 == 7)
  {
    goto LABEL_17;
  }

  if (a3 == 4)
  {
    LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP INDEX IF EXISTS CSStorageFileTable_ft_rowid_inx");
    if (result)
    {
      goto LABEL_18;
    }

    LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP INDEX IF EXISTS CSStorageFileTable_ft_inode_inx");
    if (result)
    {
      goto LABEL_18;
    }

    LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP TABLE IF EXISTS CSStorageVolumeTable");
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    _CSMigrateChunkStore_cold_3();
  }

  v11 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v12 = 134218240;
    *v13 = a3;
    *&v13[8] = 2048;
    *&v13[10] = 8;
    _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "attempting to migrate chunk store from version %llu to version %llu, which is not supported", &v12, 0x16u);
  }

  return 5;
}

os_log_t __CSopenDB_block_invoke_119()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_163()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_168()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_173()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_179()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CScloseDB_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

void _CSRetainChunk(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _CSTokenForChunkSignature(a1, a2, 115);
  if ((_CSRetainChunkForRowID(a1, v4) & 1) == 0)
  {
    memset(v7, 0, 57);
    DWORD1(v7[3]) = 101;
    if (!_CSAddChunk(a1, a2, v7))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _CSRetainChunk_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to create entry for chunk:\n");
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _CSRetainChunk_cold_2();
        }

        v6 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v9 = v5;
          _os_log_impl(&dword_243431000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }

      printStoredChunk(v7);
    }
  }
}

uint64_t CSReadChunkData(uint64_t a1, int *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 1);
  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CSReadChunkData_cold_1();
  }

  v5 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109632;
    *v15 = v3;
    *&v15[4] = 2048;
    *&v15[6] = v4;
    v16 = 2048;
    v17 = 0;
    _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "fsopen(%d,%llu,0x%0llx): unimplemented; returning -1\n", buf, 0x1Cu);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSReadChunkData_cold_2();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = __error();
    v10 = strerror(*v9);
    v11 = CFStringCreateWithFormat(v6, 0, @"%s unable to open storage file %lld,%lld:%s\n", "CSReadChunkData", v7, v8, v10);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSReadChunkData_cold_3();
    }

    v12 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v15 = v11;
      _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return 0;
}

os_log_t __CSReadChunkData_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSReadChunkData_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKLockChunks(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = CKLockChunkStore(a1);
  if (!result)
  {
    for (; a3; --a3)
    {
      v7 = *a2++;
      _CSRetainChunk(a1, v7);
    }

    return CKUnlockChunkStore(a1);
  }

  return result;
}

uint64_t CKUnlockChunks(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = CKLockChunkStore(a1);
  if (!result)
  {
    for (; a3; --a3)
    {
      v7 = *a2++;
      _CSReleaseChunkForSignature(a1, v7);
    }

    return CKUnlockChunkStore(a1);
  }

  return result;
}

const char *CKCreateChunkIDsFromFile(const void *a1, const __CFURL *a2, uint64_t a3, uint64_t a4)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCreateChunkIDsFromFile_cold_1();
  }

  result = createPathFromUrl(a2);
  if (result)
  {
    v9 = result;
    v10 = CSChunkFile(a1, result, a3, a4, 0);
    free(v9);
    return v10;
  }

  return result;
}

CFStringRef CSChunkFile(const void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v19 = 0;
  if (CKChunkStoreIsReadOnly(a1))
  {
    return 0;
  }

  v11 = open(a2, 0);
  if (v11 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSChunkFile_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v14 = *MEMORY[0x277CBECE8];
    v15 = __error();
    v16 = strerror(*v15);
    v10 = CFStringCreateWithFormat(v14, 0, @"open failed for %s: %s", a2, v16);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSChunkFile_cold_2();
    }

    v17 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
      return 0;
    }
  }

  else
  {
    v12 = v11;
    v18 = a2;
    LODWORD(v19) = v11;
    v20 = a3;
    v21 = a4;
    if (chunkFdForStorage(a1, &v18, v5, &v22))
    {
      v10 = 0;
    }

    else
    {
      v10 = v22;
    }

    CKCommitDatabaseTransactions(a1);
    close(v12);
  }

  return v10;
}

uint64_t CKCreateChunkIDsFromFD(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCreateChunkIDsFromFD_cold_1();
  }

  return CSChunkFD(a1, a2, a3, a4);
}

uint64_t CSChunkFD(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v17 = 0;
  v8 = 0;
  if (CKChunkStoreIsReadOnly(a1))
  {
    return v8;
  }

  v9 = v23;
  bzero(v23, 0x400uLL);
  if (get_path_for_fd(a2, v23))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSChunkFD_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v10 = *MEMORY[0x277CBECE8];
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v9 = CFStringCreateWithFormat(v10, 0, @"get_path_for_fd failed for fd:%d: %d (%s)\n", a2, v11, v13);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSChunkFD_cold_2();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = v9;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v9)
      {
        goto LABEL_13;
      }

      CFRelease(v9);
    }

    v9 = 0;
  }

LABEL_13:
  v16 = v9;
  LODWORD(v17) = a2;
  v18 = a3;
  v19 = a4;
  if (chunkFdForStorage(a1, &v16, 0, &v20))
  {
    v8 = 0;
  }

  else
  {
    v8 = v20;
  }

  CKCommitDatabaseTransactions(a1);
  return v8;
}

__CFArray *CKChunkListForToken(uint64_t a1, sqlite3_int64 a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKChunkListForToken_cold_1();
  }

  v15 = 0;
  Mutable = 0;
  if (!CKLockChunkStore(a1))
  {
    v5 = _CSChunkRefsForToken(a1, a2, &v15);
    if (v5)
    {
      v6 = v5;
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (v15)
      {
        v7 = 0;
        v8 = v6;
        do
        {
          v14 = 0;
          v9 = *v8;
          v8 += 2;
          if (_CSChunkForToken(a1, &v14, v9))
          {
            v10 = v14;
            v11 = CKSignatureSize(v14 + 56);
            v12 = CFDataCreate(0, v10, v11 + 57);
            CFArrayAppendValue(Mutable, v12);
            CFRelease(v12);
            free(v14);
          }

          ++v7;
        }

        while (v7 < v15);
      }

      free(v6);
    }

    else
    {
      Mutable = 0;
    }

    CKUnlockChunkStore(a1);
  }

  return Mutable;
}

unsigned int *CKChunkRefsForToken(uint64_t a1, sqlite3_int64 a2, size_t *a3)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKChunkRefsForToken_cold_1();
  }

  if (CKLockChunkStore(a1))
  {
    return 0;
  }

  v7 = _CSChunkRefsForToken(a1, a2, a3);
  CKUnlockChunkStore(a1);
  return v7;
}

__CFData *CKCopyDataForChunkID(uint64_t a1, _BYTE *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCopyDataForChunkID_cold_5();
  }

  v13 = 0;
  Mutable = 0;
  if (!CKLockChunkStore(a1))
  {
    v5 = _CSTokenForChunkSignature(a1, a2, 115);
    if (v5 && _CSChunkForToken(a1, &v13, v5))
    {
      v6 = *MEMORY[0x277CBECE8];
      Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], *(v13 + 10));
      CFDataSetLength(Mutable, *(v13 + 10));
      BytePtr = CFDataGetBytePtr(Mutable);
      v8 = *(v13 + 10);
      CSReadChunkData(BytePtr, v13);
      if (v8)
      {
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CKCopyDataForChunkID_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v9 = CFStringCreateWithFormat(v6, 0, @"%s failed short read of StoredChunk for token: %llu\n", "CKCopyDataForChunkID", v5);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CKCopyDataForChunkID_cold_2();
          }

          v10 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v15 = v9;
            _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }
      }

      free(v13);
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CKCopyDataForChunkID_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        Mutable = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s failed to get StoredChunk for token: %llu\n", "CKCopyDataForChunkID", v5);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CKCopyDataForChunkID_cold_4();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v15 = Mutable;
          _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (!Mutable)
        {
          goto LABEL_26;
        }

        CFRelease(Mutable);
      }

      Mutable = 0;
    }

LABEL_26:
    CKUnlockChunkStore(a1);
  }

  return Mutable;
}

os_log_t __CKCopyDataForChunkID_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKCopyDataForChunkID_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKCopyDataForChunkID_block_invoke_234()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKCopyDataForChunkID_block_invoke_2_241()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t _StoreChunk(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v71.tv_sec = 0;
  *&v71.tv_usec = 0;
  v6 = _CSGetStorageFile(a1, a2);
  if (!v6 || (v7 = v6, v8 = v6[2], v8 == -1))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_23();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v16 = *MEMORY[0x277CBECE8];
    v17 = __error();
    v18 = strerror(*v17);
    v13 = CFStringCreateWithFormat(v16, 0, @"unable to open storage file: %s\n", v18);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_24();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v74.st_dev = 138543362;
    *&v74.st_mode = v13;
    v15 = &v74;
    goto LABEL_19;
  }

  memset(&v74, 0, sizeof(v74));
  if (fstat(v8, &v74))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v9 = *MEMORY[0x277CBECE8];
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    v13 = CFStringCreateWithFormat(v9, 0, @"fstat failed: (%d) %s\n", v10, v12);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      if (v13)
      {
        CFRelease(v13);
      }

      return 0;
    }

    *buf = 138543362;
    v73 = v13;
    goto LABEL_11;
  }

  st_size = v74.st_size;
  if (lseek(*(v7 + 8), v74.st_size, 0) == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_21();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v28 = *MEMORY[0x277CBECE8];
    v29 = *__error();
    v30 = __error();
    v31 = strerror(*v30);
    v13 = CFStringCreateWithFormat(v28, 0, @"lseek failed: (%d) %s\n", v29, v31);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_22();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    v73 = v13;
    goto LABEL_11;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    _StoreChunk_cold_3();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
  {
    v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Writing to SF rowID:%llu at o:0x%llx\n", *(v7 + 16), v74.st_size);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_4();
    }

    v23 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v73 = v22;
      _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  v24 = *(a2 + 1);
  v25 = CKSchemeAndSignatureSize(a2 + 84);
  v26 = v25;
  if (v24)
  {
    v27 = v25 + a2[20] + 4;
    __buf = bswap32(v27);
    if ((st_size + v27) >= 20971621)
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _StoreChunk_cold_11();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"orig_sz (%lld) + used_sz (%u) is too big: %u < %llu \n", st_size, v27, 20971620, st_size + v27);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _StoreChunk_cold_12();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v73 = v13;
LABEL_11:
      v15 = buf;
LABEL_19:
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", v15, 0xCu);
      goto LABEL_20;
    }

    if (write(*(v7 + 8), &__buf, 4uLL) == 4)
    {
      if (write(*(v7 + 8), a2 + 21, v26) == v26)
      {
        v36 = write(*(v7 + 8), *(a2 + 1), a2[20]);
        v35 = a2[20];
        if (v36 == v35)
        {
          goto LABEL_57;
        }

        v61 = v36;
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _StoreChunk_cold_9();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
LABEL_107:
          v62 = *(v7 + 8);
          if (v62 != -1 && ftruncate(v62, st_size))
          {
            if (CK_DEFAULT_LOG_BLOCK != -1)
            {
              _StoreChunk_cold_19();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
            {
              v63 = *MEMORY[0x277CBECE8];
              v64 = *(v7 + 16);
              v65 = *__error();
              v66 = __error();
              v67 = strerror(*v66);
              v68 = CFStringCreateWithFormat(v63, 0, @"ftruncate failed for rowId:%lld: %d (%s)\n", v64, v65, v67);
              if (CK_DEFAULT_LOG_BLOCK != -1)
              {
                _StoreChunk_cold_20();
              }

              v69 = CK_DEFAULT_LOG_INTERNAL;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
              {
                v74.st_dev = 138543362;
                *&v74.st_mode = v68;
                _os_log_impl(&dword_243431000, v69, OS_LOG_TYPE_ERROR, "%{public}@", &v74, 0xCu);
              }

              if (v68)
              {
                CFRelease(v68);
              }
            }
          }

          _CSCloseStorageFile(a1, v7, 0);
          return 0;
        }

        v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"write failed: %d != %d\n", v61, a2[20]);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _StoreChunk_cold_10();
        }

        v46 = CK_DEFAULT_LOG_INTERNAL;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
LABEL_105:
          if (v45)
          {
            CFRelease(v45);
          }

          goto LABEL_107;
        }

        *buf = 138543362;
        v73 = v45;
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _StoreChunk_cold_7();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_107;
        }

        v56 = *MEMORY[0x277CBECE8];
        v57 = *(v7 + 16);
        v58 = *__error();
        v59 = __error();
        v60 = strerror(*v59);
        v45 = CFStringCreateWithFormat(v56, 0, @"write failed for rowID:%llu: %d (%s)\n", v57, v58, v60);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _StoreChunk_cold_8();
        }

        v46 = CK_DEFAULT_LOG_INTERNAL;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_105;
        }

        *buf = 138543362;
        v73 = v45;
      }
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _StoreChunk_cold_5();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      v47 = *MEMORY[0x277CBECE8];
      v48 = *(v7 + 16);
      v49 = *__error();
      v50 = __error();
      v51 = strerror(*v50);
      v45 = CFStringCreateWithFormat(v47, 0, @"write failed for rowID:%llu: %d (%s)\n", v48, v49, v51);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _StoreChunk_cold_6();
      }

      v46 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      *buf = 138543362;
      v73 = v45;
    }

LABEL_104:
    _os_log_impl(&dword_243431000, v46, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    goto LABEL_105;
  }

  __buf = bswap32(a2[1]);
  if (write(*(v7 + 8), &__buf, 4uLL) != 4)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_13();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v41 = *MEMORY[0x277CBECE8];
    v42 = *(v7 + 8);
    v43 = __error();
    v44 = strerror(*v43);
    v45 = CFStringCreateWithFormat(v41, 0, @"write of %ld bytes on fd %d failed : %s", 4, v42, v44);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_14();
    }

    v46 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_105;
    }

    *buf = 138543362;
    v73 = v45;
    goto LABEL_104;
  }

  if (v26 != write(*(v7 + 8), a2 + 21, v26))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_15();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v52 = *MEMORY[0x277CBECE8];
    v53 = *(v7 + 8);
    v54 = __error();
    v55 = strerror(*v54);
    v45 = CFStringCreateWithFormat(v52, 0, @"write of %ld bytes on fd %d failed : %s", v26, v53, v55);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_16();
    }

    v46 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_105;
    }

    *buf = 138543362;
    v73 = v45;
    goto LABEL_104;
  }

  v32 = a2[20];
  v33 = CSCopyData(*a2, *(v7 + 8), v32, 0x8000);
  v34 = v33;
  if (v32 != v33)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_17();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CSCopyData failed, copied %d bytes\n", v34);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_18();
    }

    v46 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_105;
    }

    *buf = 138543362;
    v73 = v45;
    goto LABEL_104;
  }

  v27 = (v26 + v33 + 4);
  LODWORD(v35) = a2[20];
LABEL_57:
  v38 = *(v7 + 16);
  v37 = *(v7 + 24);
  v39 = v37 >= v27;
  v40 = v37 - v27;
  if (!v39)
  {
    v40 = 0;
  }

  *(v7 + 24) = v40;
  *(a3 + 12) = v38;
  *(a3 + 4) = v74.st_ino;
  *a3 = v74.st_dev;
  *(a3 + 24) = v74.st_size;
  *(a3 + 40) = v35;
  *(a3 + 52) = 115;
  gettimeofday(&v71, 0);
  *(a3 + 44) = v71.tv_sec;
  if (*(v7 + 24) >> 10 > 0xCuLL)
  {
    _CSUpdateStorageFileInfo(a1, v7);
    return 1;
  }

  else
  {
    v19 = 1;
    _CSCloseStorageFile(a1, v7, 1);
  }

  return v19;
}

uint64_t addSourceChunk(uint64_t a1, unsigned int a2, const void **a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v7 == v6)
  {
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(a1 + 8);
    }

    v9 = 2 * v8;
    if (v7 >> 4 >= 0x271)
    {
      v6 = v7 + 100;
    }

    else
    {
      v6 = v9;
    }

    if (v6 >= v7 && ((a2 * v6) & 0xFFFFFFFF00000000) == 0)
    {
      v10 = malloc_type_realloc(*a1, v6 * a2, 0x100004077774924uLL);
      if (v10)
      {
        *a1 = v10;
        *(a1 + 12) = v6;
        v11 = *(a1 + 8);
        goto LABEL_14;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 8);
LABEL_14:
  if (v11 >= v6)
  {
    addSourceChunk_cold_1();
  }

  if (!*a1)
  {
    addSourceChunk_cold_3();
  }

  v12 = *a1 + v7 * a2;
  memcpy(v12, a3, a2);
  *(v12 + 8) = 0;
  v13 = malloc_type_malloc(*(v12 + 80), 0x42246CBCuLL);
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  memcpy(v13, a3[1], *(v12 + 80));
  *(v12 + 8) = v14;
  v15 = *(a1 + 8) + 1;
  *(a1 + 8) = v15;
  if (v7 >= v15)
  {
    addSourceChunk_cold_2();
  }

  return 0;
}

uint64_t CSChunkStorageCallback(void *a1)
{
  v2 = a1[17];
  if (!v2)
  {
    if (!CKLockChunkStore(*a1))
    {
      v8 = _CSFlushChunkBatch(a1);
      CKUnlockChunkStore(*a1);
      return v8;
    }

    return 0xFFFFFFFFLL;
  }

  if (addSourceChunk((a1 + 33), *(a1 + 77), v2))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[39] + *(v2 + 80);
  a1[39] = v3;
  v4 = a1[53];
  v5 = a1[10];
  if (v4 != v5 && v3 > 0x500000)
  {
    if (!CKLockChunkStore(*a1))
    {
      v6 = _CSFlushChunkBatch(a1);
      CKUnlockChunkStore(*a1);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v4 == v5)
  {
    if (!CKLockChunkStore(*a1))
    {
      v10 = _CSFlushChunkBatch(a1);
      v11 = *a1;
      if (v10)
      {
        CKUnlockChunkStore(v11);
      }

      else
      {
        v12 = _CSRegisterStorageChunkList(v11, a1[37], a1[36], a1[7]);
        CKUnlockChunkStore(*a1);
        if (v12)
        {
          a1[35] = v12;
          v13 = a1[43];
          if (v13)
          {
            v15 = 0;
            memset(v14, 0, sizeof(v14));
            v13(v2, a1[44]);
            (a1[43])(v14, a1[44]);
          }

          return 0;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:
  v9 = a1[43];
  if (v9)
  {
    v9(v2, a1[44]);
  }

  return 0;
}

uint64_t _CSFlushChunkBatch(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 272);
  v2 = *(a1 + 304);
  v3 = v1 - v2;
  if (v1 < v2)
  {
    _CSFlushChunkBatch_cold_4();
  }

  if (v1 == v2)
  {
    return 0;
  }

  v6 = *(a1 + 308);
  if (!v6)
  {
    _CSFlushChunkBatch_cold_3();
  }

  v7 = *(a1 + 264);
  v8 = malloc_type_realloc(*(a1 + 296), 8 * (*(a1 + 288) + v3), 0x100004000313F17uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v7 + v6 * v2;
  *(a1 + 296) = v8;
  if ((_CSStoreChunks(*a1, v9, v3, v6, &v8[*(a1 + 288)], a1) & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _CSFlushChunkBatch_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"_CSStoreChunks failed, batchIndex:%u, batchCount:%u\n", v2, v3);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _CSFlushChunkBatch_cold_2();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v13;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  *(a1 + 288) += v3;
  do
  {
    v11 = v9 + v10;
    v12 = *(v11 + 8);
    if (v12)
    {
      free(v12);
      *(v11 + 8) = 0;
    }

    if (*(v11 + 24) == 1 && *(a1 + 181) == 1)
    {
      *(a1 + 432) += *(v11 + 80);
      ++*(a1 + 456);
    }

    v10 += v6;
    --v3;
  }

  while (v3);
  result = 0;
  *(a1 + 304) = *(a1 + 272);
  *(a1 + 312) = 0;
  return result;
}

uint64_t CKRemoveStoredFile(uint64_t a1, sqlite3_int64 a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKRemoveStoredFile_cold_1();
  }

  result = CKChunkStoreIsReadOnly(a1);
  if ((result & 1) == 0)
  {
    result = CKLockChunkStore(a1);
    if (!result)
    {
      _CSRemoveStoredFile(a1, a2);

      return CKUnlockChunkStore(a1);
    }
  }

  return result;
}

unint64_t CKCompactStorage(uint64_t a1, unint64_t a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCompactStorage_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStoreNoFlag(a1))
  {
    return 0;
  }

  v5 = _CSCompactStorage(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

CFStringRef CKCreateStoredFileWithFlags(const void *a1, const char *a2, uint64_t a3)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCreateStoredFileWithFlags_cold_1();
  }

  if (CKChunkStoreIsReadOnly(a1))
  {
    return 0;
  }

  return CSChunkFile(a1, a2, 0, 0, a3);
}

CFStringRef CKCreateStoredFile(const void *a1, const char *a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCreateStoredFile_cold_1();
  }

  return CKCreateStoredFileWithFlags(a1, a2, 0);
}

uint64_t CKCommitChunkedFile(uint64_t *a1, sqlite3_int64 a2, int a3)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCommitChunkedFile_cold_1();
  }

  result = CKChunkStoreIsReadOnly(a1);
  if ((result & 1) == 0)
  {
    if (a3)
    {

      return _CSCommitChunkedFile(a1, a2);
    }

    else
    {
      result = CKLockChunkStore(a1);
      if (!result)
      {
        _CSCommitChunkedFile(a1, a2);

        return CKUnlockChunkStore(a1);
      }
    }
  }

  return result;
}

unsigned int *CKCopyChunkListForStoredFileToken(uint64_t a1, sqlite3_int64 a2, size_t *a3, int a4)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCopyChunkListForStoredFileToken_cold_1();
  }

  if (a4)
  {

    return _CSChunkRefsForToken(a1, a2, a3);
  }

  else if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  else
  {
    v9 = _CSChunkRefsForToken(a1, a2, a3);
    CKUnlockChunkStore(a1);
    return v9;
  }
}

uint64_t CKGetLocationOfChunkInStorage(uint64_t a1, sqlite3_int64 a2, _DWORD *a3, void *a4, void *a5, int a6)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKGetLocationOfChunkInStorage_cold_1();
  }

  if (a6 || !CKReadLockChunkStore(a1))
  {
    v16 = 0;
    v12 = _CSChunkForToken(a1, &v16, a2);
    v13 = v12 & (_CSChunkIsInvalid(a1, a2) ^ 1);
    if (a6)
    {
      if (v13)
      {
LABEL_5:
        v14 = v16;
        if (a3)
        {
          *a3 = *v16;
        }

        if (a4)
        {
          *a4 = *(v14 + 4);
        }

        if (a5)
        {
          *a5 = v14[3];
        }

        goto LABEL_15;
      }
    }

    else
    {
      CKUnlockChunkStore(a1);
      if (v13)
      {
        goto LABEL_5;
      }
    }

    v14 = v16;
LABEL_15:
    free(v14);
    return v13;
  }

  return 0;
}

sqlite3_int64 CKTokenForStoredChunk(uint64_t a1, _BYTE *a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKTokenForStoredChunk_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSTokenForChunkSignature(a1, a2, 115);
  CKUnlockChunkStore(a1);
  return v5;
}

BOOL CKRegisteredItemCount(uint64_t a1, sqlite3_int64 *a2, uint64_t a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisteredItemCount_cold_1();
  }

  v5 = CKLockChunkStore(a1);
  if (!v5)
  {
    _CSRegisteredItemCount(a1, a2);
    CKUnlockChunkStore(a1);
  }

  return v5 == 0;
}

BOOL CKGetRegisteredItems(uint64_t a1, sqlite3_int64 a2, uint64_t a3, sqlite3_int64 *a4, uint64_t a5)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredItems_cold_1();
  }

  v9 = CKLockChunkStore(a1);
  if (!v9)
  {
    _CSGetRegisteredItems(a1, a2, a3, a4);
    CKUnlockChunkStore(a1);
  }

  return v9 == 0;
}

char *CKCreateRegisteredChunkWithSubchunkBlob(_BYTE *a1, char *a2, uint64_t a3, unsigned __int8 *a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = CKChunkSchemeAndSignatureSize(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (a2)
  {
    v10 = CKChunkSchemeAndEncryptionKeySize(a2);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = 0;
  if (a3 && a4)
  {
    v13 = CKSubchunkBlobSize(a4, a3);
  }

  v14 = malloc_type_calloc(1uLL, v9 + v10 + v13 + 35, 0x10000408AA14F5FuLL);
  v11 = v14;
  if (v14)
  {
    v15 = v14 + 35;
    memcpy(v14 + 35, a1, v9);
    if (a2)
    {
      memcpy(&v15[v9], a2, v10);
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v11[30] = v16;
    v11[29] = v13 != 0;
    if (v13)
    {
      memcpy(&v15[v10 + v9], a4, v13);
    }
  }

  return v11;
}

const char *CKChunkTypeDescription(unsigned int a1)
{
  if (a1 > 9)
  {
    return "unknown cs_chunk_type_t";
  }

  else
  {
    return off_278DB5538[a1];
  }
}

uint64_t CKRegisterChunksForFileWithHint(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterChunksForFileWithHint_cold_1();
  }

  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(&v35, 0, sizeof(v35));
  if (fstat(a2, &v35) == -1)
  {
    goto LABEL_19;
  }

  if ((v35.st_flags & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v10 = fgetxattr(a2, "com.apple.decmpfs", 0, 0, 0, 32);
  if (v10 < 0x10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = malloc_type_malloc(v10, 0x1000040451B5BE8uLL);
  if (fgetxattr(a2, "com.apple.decmpfs", v12, v11, 0, 32) != v11)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*v12 != 1668116582)
  {
LABEL_18:
    free(v12);
    goto LABEL_19;
  }

  v13 = v12[1];
  free(v12);
  if (v13 == -2147483647)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRegisterChunksForFileWithHint_cold_2();
    }

    result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NOT registering chunks for dataless file fd:%d, itemID:%lld\n", a2, a3);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRegisterChunksForFileWithHint_cold_3();
    }

    v16 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v35.st_dev = 138543362;
      *&v35.st_mode = v15;
      _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, "%{public}@", &v35, 0xCu);
    }

    v17 = 0;
    result = 0;
    if (!v15)
    {
      return result;
    }

LABEL_35:
    CFRelease(v15);
    return v17;
  }

LABEL_19:
  v18 = v34;
  bzero(v34, 0x400uLL);
  if (!get_path_for_fd(a2, v34))
  {
    goto LABEL_30;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CKRegisterChunksForFileWithHint_cold_4();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_29;
  }

  v19 = *MEMORY[0x277CBECE8];
  v20 = *__error();
  v21 = __error();
  v22 = strerror(*v21);
  v18 = CFStringCreateWithFormat(v19, 0, @"get_path_for_fd failed for fd:%d: %d (%s)\n", a2, v20, v22);
  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CKRegisterChunksForFileWithHint_cold_5();
  }

  v23 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
  {
    v35.st_dev = 138543362;
    *&v35.st_mode = v18;
    _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@", &v35, 0xCu);
  }

  if (v18)
  {
    CFRelease(v18);
LABEL_29:
    v18 = 0;
  }

LABEL_30:
  LODWORD(v30) = 1;
  *(&v30 + 1) = a3;
  LODWORD(v31) = 0;
  *(&v31 + 1) = a4;
  *(&v32 + 1) = a5;
  *&v33[0] = v18;
  DWORD2(v33[0]) = a2;
  LODWORD(v24) = 2;
  *(&v24 + 1) = v33;
  if (v18)
  {
    result = CFStringCreateWithCString(0, v18, 0x8000100u);
    v15 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v15 = 0;
  }

  *(&v25 + 1) = v15;
  *&v27 = openFd;
  *(&v27 + 1) = closeFd;
  *&v28 = statFd;
  *(&v28 + 1) = readFd;
  *&v29 = getCacheBlobFd;
  *(&v29 + 1) = setCacheBlobFd;
  result = CKRegisterChunksForItem(a1, &v24, &v30, 0, 0, 0, 0, 0);
  v17 = result;
  if (v15)
  {
    goto LABEL_35;
  }

  return result;
}

os_log_t __CKRegisterChunksForFileWithHint_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRegisterChunksForFileWithHint_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRegisterChunksForFileWithHint_block_invoke_414()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRegisterChunksForFileWithHint_block_invoke_2_421()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKRegisterChunksForItem(const void *a1, void *a2, uint64_t a3, void *a4, unint64_t *a5, CFTypeRef *a6, CFTypeRef *a7, void *a8)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterChunksForItem_cold_1();
  }

  return registerChunksForItem(a1, a2, a3, 0, a4, a5, a6, a7, a8);
}

uint64_t registerChunksForItem(const void *a1, void *a2, uint64_t a3, char a4, void *a5, unint64_t *a6, CFTypeRef *a7, CFTypeRef *a8, void *a9)
{
  v112 = *MEMORY[0x277D85DE8];
  if (!CKChunkStoreIsRegistry(a1))
  {
    registerChunksForItem_cold_1();
  }

  v94 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v86 = a5;
  v17 = a9;
  v84 = a7 != 0;
  if (a7)
  {
    *a7 = 0;
    v18 = 1;
    if (!a8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = 0;
  if (a8)
  {
LABEL_8:
    *a8 = 0;
  }

LABEL_9:
  v85 = a6;
  if (a9)
  {
    *a9 = 0;
  }

  v92 = 0;
  cf = 0;
  valuePtr = 0;
  v91 = 0;
  memset(v111, 0, sizeof(v111));
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  *buffer = 0u;
  bzero(__s, 0x400uLL);
  v89 = 0;
  Only = CKChunkStoreIsReadOnly(a1);
  v20 = 0;
  v21 = 0;
  if (!a3 || !a2)
  {
    v22 = 0;
    if (a9)
    {
      goto LABEL_98;
    }

    goto LABEL_94;
  }

  v83 = a8;
  v22 = 0;
  if (Only)
  {
LABEL_97:
    if (!v17)
    {
      goto LABEL_94;
    }

    goto LABEL_98;
  }

  if (*a3 != 1)
  {
LABEL_96:
    v21 = 0;
    v20 = 0;
    v22 = 0;
    goto LABEL_97;
  }

  if (!a2[6])
  {
    registerChunksForItem_cold_24();
  }

  if (!a2[7])
  {
    registerChunksForItem_cold_23();
  }

  if (!a2[9])
  {
    registerChunksForItem_cold_22();
  }

  if (!a2[8])
  {
    registerChunksForItem_cold_21();
  }

  valuePtr = *(a3 + 8);
  buffer[0] = 0;
  __s[0] = 0;
  v23 = a2[2];
  if (v23 && !CFStringGetCString(v23, buffer, 255, 0x8000100u))
  {
    buffer[0] = 0;
  }

  v24 = a2[3];
  if (v24 && !CFStringGetCString(v24, __s, 1024, 0x8000100u))
  {
    __s[0] = 0;
  }

  v25 = CKFileDigestArgumentsFileScheme(*(a3 + 24));
  v82 = CKFileDigestArgumentsFileSchemeByte(*(a3 + 24));
  v26 = CKFileDigestArgumentsFileEncrypted(*(a3 + 24));
  if (gVerbose == 2)
  {
    v27 = v26;
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      registerChunksForItem_cold_2();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s, hint:%s, itemID:%lld, encrypt:%u, scheme:0x%x, fixedChunkSize:0x%x, %u", __s, buffer, valuePtr, v27, v25, *(a3 + 16), v18);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        registerChunksForItem_cold_3();
      }

      v29 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_243431000, v29, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }
  }

  v30 = strcmp(buffer, "com.apple.ChunkingLibrary.CustomFixedChunk");
  v31 = v30;
  if (v30)
  {
    v32 = a2[2] == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  if (!v30 && !*(a3 + 16))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      registerChunksForItem_cold_4();
    }

    v17 = a9;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid custom fixed chunk size:0x%x for itemID:%lld\n", *(a3 + 16), valuePtr);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        registerChunksForItem_cold_5();
      }

      v41 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 138543362;
      *&buf[4] = v40;
      goto LABEL_89;
    }

    goto LABEL_96;
  }

  if (v25 <= 8 && ((1 << v25) & 0x116) != 0)
  {
    v34 = *MEMORY[0x277CBECE8];
    v35 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    if (v35)
    {
        ;
      }

      if (CKLockChunkStore(a1))
      {
        v22 = 0;
        v20 = 0;
        v37 = 0;
        v81 = 0;
LABEL_51:
        v38 = 0;
        v39 = 0;
LABEL_52:
        v17 = a9;
        goto LABEL_53;
      }

      alloc = v34;
      if (v86 | a7)
      {
        v42 = _CSCopyChunkListForItemID(a1, valuePtr, &v91);
        v20 = v42;
      }

      else
      {
        v42 = CSsql_get64(a1, 1, "SELECT ct_rowid FROM CSChunkTable WHERE ct_iid = %lld", valuePtr);
        v20 = 0;
      }

      v48 = v42 != 0;
      CKUnlockChunkStore(a1);
      v81 = v48;
      if (v48 && (a4 & 1) == 0)
      {
        if (!a7)
        {
          goto LABEL_255;
        }

        v17 = a9;
        if (CKReadLockChunkStore(a1))
        {
LABEL_124:
          v22 = 0;
LABEL_162:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          goto LABEL_53;
        }

        v55 = _CSGetSignatureForItemID(a1, valuePtr, v82, &v89, &v94);
        CKUnlockChunkStore(a1);
        if (v55)
        {
LABEL_255:
          if (CKFileDigestResultsHasFileLength(v89))
          {
            v22 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 1;
            goto LABEL_52;
          }

          if (v91)
          {
            v56 = 0;
            v57 = 0;
            while (1)
            {
              v58 = CKRegisteredChunkAtIndex(v20, v57);
              if (!v58)
              {
                break;
              }

              if (v56 <= *(v58 + 16) + *(v58 + 24))
              {
                v56 = *(v58 + 16) + *(v58 + 24);
              }

              if (++v57 >= v91)
              {
                goto LABEL_202;
              }
            }
          }

          else
          {
            v56 = 0;
LABEL_202:
            *buf = 0;
            v64 = CKFileDigestResultsFileSignature(v89);
            v65 = CKFileDigestResultsFileVerificationKey(v89);
            if (CKFileDigestResultsCreate(buf, v64, v56, v65))
            {
              v17 = a9;
              if (v89)
              {
                CFRelease(v89);
              }

              v22 = 0;
              v37 = 0;
              v38 = 0;
              v89 = *buf;
              v39 = 1;
LABEL_53:
              CSUnregisterOperation(a1, i);
              CFRelease(i);
              if (v38)
              {
                freeOpCtx(v37);
                if ((v39 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              else if (!v39)
              {
LABEL_55:
                v21 = v81;
                if (!v17)
                {
                  goto LABEL_94;
                }

LABEL_98:
                v43 = v21;
                v44 = v17;
                v17 = 0;
                *v44 = cf;
                cf = 0;
                goto LABEL_99;
              }

              if (v85)
              {
                *v85 = v91;
              }

              if (v86)
              {
                *v86 = v20;
                v20 = 0;
              }

              if (a7 && v89)
              {
                CKBaseRetain(v89);
                *a7 = v89;
              }

              if (v83)
              {
                CKBaseRetain(v94);
                *v83 = v94;
              }

              v17 = 1;
              v21 = v81;
              goto LABEL_94;
            }
          }

          v22 = 0;
          v37 = 0;
          v38 = 0;
          v17 = a9;
LABEL_213:
          v39 = v84;
          goto LABEL_53;
        }

        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          registerChunksForItem_cold_6();
        }

        v17 = a9;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_124;
        }

        v60 = CFStringCreateWithFormat(alloc, 0, @"failed to get file sig for itemID:%lld\n", valuePtr);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          registerChunksForItem_cold_7();
        }

        v61 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v60;
          _os_log_impl(&dword_243431000, v61, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v60)
        {
          CFRelease(v60);
        }

        v22 = 0;
LABEL_160:
        v37 = 0;
        goto LABEL_51;
      }

      if (a4)
      {
        if (v20)
        {
          free(v20);
        }
      }

      else
      {
        if (v20)
        {
          v49 = 1;
        }

        else
        {
          v49 = v48;
        }

        if (v49)
        {
          registerChunksForItem_cold_8();
        }
      }

      v91 = 0;
      if (CKUnregisterChunksForItem(a1, valuePtr))
      {
        if ((a2[6])(a2[1], &v92, &cf))
        {
          v50 = a2[6];
          v51 = v50 == openFd || v50 == openFdUncached;
          v38 = !v51;
          if (v51)
          {
            OpCtx = v92;
          }

          else
          {
            OpCtx = createOpCtx();
          }

          if (!OpCtx)
          {
            goto LABEL_181;
          }

          *(OpCtx + 1) = v92;
          *(OpCtx + 2) = a2;
          v88 = 0;
          memset(v87, 0, sizeof(v87));
          if (((a2[8])() & 1) == 0)
          {
            if (CK_DEFAULT_LOG_BLOCK != -1)
            {
              registerChunksForItem_cold_13();
            }

            v37 = OpCtx;
            v17 = a9;
            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
            {
              v84 = 0;
              v20 = 0;
              v22 = 0;
              goto LABEL_212;
            }

            v62 = CFStringCreateWithFormat(alloc, 0, @"stat failed on itemID:%lld, path:%s, ino:%llu, error:%@", valuePtr, __s, *(OpCtx + 5), cf);
            if (CK_DEFAULT_LOG_BLOCK != -1)
            {
              registerChunksForItem_cold_14();
            }

            v63 = CK_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v62;
              _os_log_impl(&dword_243431000, v63, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v62)
            {
              CFRelease(v62);
            }

            goto LABEL_210;
          }

          setOpCtxStatInfo(OpCtx, v87);
          setOpCtxFileDigestArguments(OpCtx, *(a3 + 24));
          if (a7)
          {
            if (!CKFileSignatureGeneratorCreate(OpCtx + 24, *(a3 + 24)))
            {
              goto LABEL_210;
            }

            v59 = *(a3 + 32);
            if (v59)
            {
              CKBaseRetain(v59);
              *(OpCtx + 25) = *(a3 + 32);
            }
          }

          if (setOpCtxPath(OpCtx, __s))
          {
LABEL_181:
            v84 = 0;
            v20 = 0;
            v22 = 0;
            v17 = a9;
            v37 = OpCtx;
LABEL_212:
            (a2[7])(a2[1], v92, 0);
            goto LABEL_213;
          }

          if (!setOpCtxChunkScheme(OpCtx, 1, *(a3 + 40)))
          {
            if (a1)
            {
              v66 = CFRetain(a1);
            }

            else
            {
              v66 = 0;
            }

            *OpCtx = v66;
            *(OpCtx + 16) = CSRegisterChunksForFileCallback;
            *(OpCtx + 7) = valuePtr;
            v67 = buffer;
            if (!v33)
            {
              v67 = 0;
            }

            *(OpCtx + 12) = v67;
            v22 = *&v87[0];
            *(OpCtx + 10) = *&v87[0];
            if (v31)
            {
              v68 = 0;
            }

            else
            {
              v68 = *(a3 + 16);
            }

            OpCtx[160] = 5;
            *(OpCtx + 41) = 10000;
            *(OpCtx + 54) = v68;
            *(OpCtx + 55) = 0;
            v69 = *(OpCtx + 2);
            if (*v69 >= 3)
            {
              v70 = *(v69 + 96);
              if (v70)
              {
                v71 = v70(*(OpCtx + 1), @"kCKItemChunkLength");
                if (v71)
                {
                  v72 = v71;
                  *(OpCtx + 55) = ck_get_int32_from_cftype_using_description(@"kCKItemChunkLength", v71, *(OpCtx + 55));
                  CFRelease(v72);
                }

                v73 = (*(*(OpCtx + 2) + 96))(*(OpCtx + 1), @"kCKItemSubchunkLength");
                if (v73)
                {
                  v74 = v73;
                  *(OpCtx + 57) = ck_get_int32_from_cftype_using_description(@"kCKItemSubchunkLength", v73, *(OpCtx + 57));
                  CFRelease(v74);
                  v75 = *(OpCtx + 57);
                  if ((v75 & 0x3FF) != 0)
                  {
                    *(OpCtx + 57) = (v75 & 0xFFFFFC00) + 1024;
                  }
                }
              }
            }

            v37 = OpCtx;
            if (chunkItem(OpCtx, &cf))
            {
              v84 = 0;
              v20 = 0;
            }

            else
            {
              v76 = *(OpCtx + 26);
              if (!v76)
              {
                registerChunksForItem_cold_16();
              }

              if (v89)
              {
                CFRelease(v89);
                v76 = *(OpCtx + 26);
              }

              v89 = v76;
              *(OpCtx + 26) = 0;
              v77 = *(OpCtx + 30);
              if (v77)
              {
                if (v94)
                {
                  CFRelease(v94);
                  v77 = *(OpCtx + 30);
                  v76 = v89;
                }

                v94 = v77;
                *(OpCtx + 30) = 0;
              }

              if (v76)
              {
                v78 = *(OpCtx + 25);
                if (v78)
                {
                  if (!CKFileDigestResultsEqual(v76, v78))
                  {
                    registerChunksForItem_cold_15();
                  }
                }
              }

              if (CKLockChunkStore(a1) || (v79 = _CSRegisterChunkList(a1, OpCtx), CKUnlockChunkStore(a1), !v79))
              {
                v84 = 0;
                v20 = 0;
                goto LABEL_211;
              }

              v37 = OpCtx;
              v91 = *(OpCtx + 68);
              v20 = *(OpCtx + 33);
              *(OpCtx + 33) = 0;
              clearChunksArray((OpCtx + 264));
              v84 = 1;
            }

            v17 = a9;
            goto LABEL_212;
          }

LABEL_210:
          v84 = 0;
          v20 = 0;
          v22 = 0;
LABEL_211:
          v37 = OpCtx;
          v17 = a9;
          goto LABEL_212;
        }

        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          registerChunksForItem_cold_11();
        }

        v17 = a9;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v53 = CFStringCreateWithFormat(alloc, 0, @"open failed on itemID:%lld, path:%s, error:%@", valuePtr, __s, cf);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            registerChunksForItem_cold_12();
          }

          v54 = CK_DEFAULT_LOG_INTERNAL;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_157;
          }

          *buf = 138543362;
          *&buf[4] = v53;
LABEL_156:
          _os_log_impl(&dword_243431000, v54, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_157:
          if (v53)
          {
            CFRelease(v53);
          }

          v22 = 0;
          v20 = 0;
          goto LABEL_160;
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          registerChunksForItem_cold_9();
        }

        v17 = a9;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v53 = CFStringCreateWithFormat(alloc, 0, @"Failed to unregister chunks for itemID:%llu", valuePtr);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            registerChunksForItem_cold_10();
          }

          v54 = CK_DEFAULT_LOG_INTERNAL;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_157;
          }

          *buf = 138543362;
          *&buf[4] = v53;
          goto LABEL_156;
        }
      }

      v22 = 0;
      v20 = 0;
      goto LABEL_162;
    }

    v21 = 0;
    v20 = 0;
    v22 = 0;
LABEL_93:
    v17 = a9;
    if (!a9)
    {
      goto LABEL_94;
    }

    goto LABEL_98;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    registerChunksForItem_cold_17();
  }

  v17 = a9;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature scheme:0x%x for itemID:%lld\n", v25, valuePtr);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      registerChunksForItem_cold_18();
    }

    v41 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 138543362;
    *&buf[4] = v40;
LABEL_89:
    _os_log_impl(&dword_243431000, v41, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_90:
    if (v40)
    {
      CFRelease(v40);
    }

    v21 = 0;
    v20 = 0;
    v22 = 0;
    goto LABEL_93;
  }

  v21 = 0;
  v20 = 0;
  v22 = 0;
  if (a9)
  {
    goto LABEL_98;
  }

LABEL_94:
  v43 = v21;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_99:
  if (v20)
  {
    free(v20);
  }

  if (v89)
  {
    CKBaseRelease(v89);
  }

  v89 = 0;
  if (v94)
  {
    CKBaseRelease(v94);
  }

  v94 = 0;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      registerChunksForItem_cold_19();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"rc:%u, itemID:%lld, size:%llu, chunkCount:%llu, ac:%u", v17, valuePtr, v22, v91, v43);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        registerChunksForItem_cold_20();
      }

      v46 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v45;
        _os_log_impl(&dword_243431000, v46, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v45)
      {
        CFRelease(v45);
      }
    }
  }

  return v17;
}

uint64_t CKRegisterItemAndChunks(const void *a1, void *a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, void *a7, void *a8)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterItemAndChunks_cold_1();
  }

  v23 = 0;
  cf = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || !registerChunksForItem(a1, a2, a3, 1, a4, a5, &cf, &v23, a8))
  {
    goto LABEL_18;
  }

  if (!cf)
  {
    CKRegisterItemAndChunks_cold_2();
  }

  valuePtr = *(a3 + 8);
    ;
  }

  if (!CKLockChunkStore(a1))
  {
    v17 = registerItem(a1, cf, valuePtr, v23, 0);
    CKUnlockChunkStore(a1);
    if (i)
    {
      CSUnregisterOperation(a1, i);
      CFRelease(i);
    }

    if (v17)
    {
      goto LABEL_15;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_27;
  }

  if (i)
  {
    CSUnregisterOperation(a1, i);
    CFRelease(i);
  }

LABEL_15:
  if (a6)
  {
    if (cf)
    {
      CFRetain(cf);
      v18 = cf;
    }

    else
    {
      v18 = 0;
    }

    *a6 = v18;
  }

  if (a7)
  {
    if (v23)
    {
      CFRetain(v23);
      v20 = v23;
    }

    else
    {
      v20 = 0;
    }

    *a7 = v20;
  }

  v19 = 1;
LABEL_27:
  if (cf)
  {
    CKBaseRelease(cf);
  }

  cf = 0;
  if (v23)
  {
    CKBaseRelease(v23);
  }

  return v19;
}

uint64_t CKUnregisterFile(uint64_t a1, sqlite3_int64 a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterFile_cold_1();
  }

  result = CKChunkStoreIsReadOnly(a1);
  if ((result & 1) == 0)
  {
    result = CKLockChunkStore(a1);
    if (!result)
    {
      unregisterItem(a1, a2);
      _CSUnregisterAllChunksForItem(a1, a2);

      return CKUnlockChunkStore(a1);
    }
  }

  return result;
}

BOOL CKGetRegisteredChunksForItemID(uint64_t a1, sqlite3_int64 a2, CFStringRef *a3, void *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredChunksForItemID_cold_1();
  }

  result = 0;
  if (a3 && a4)
  {
    if (CKReadLockChunkStore(a1))
    {
      return 0;
    }

    else
    {
      *a3 = _CSCopyChunkListForItemID(a1, a2, a4);
      CKUnlockChunkStore(a1);
      return *a3 != 0;
    }
  }

  return result;
}

BOOL CKGetRegisteredChunksForFileSignature(uint64_t a1, _BYTE *a2, CFStringRef *a3, void *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredChunksForFileSignature_cold_1();
  }

  result = 0;
  if (a3 && a4)
  {
    if (CKReadLockChunkStore(a1))
    {
      return 0;
    }

    else
    {
      *a3 = _CSCopyChunkListForFileSignature(a1, a2, a4);
      CKUnlockChunkStore(a1);
      return *a3 != 0;
    }
  }

  return result;
}

BOOL CKRegisterChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v4 = _CSRegisterChunk(a1, a2, *(a2 + 28)) != 0;
  CKUnlockChunkStore(a1);
  return v4;
}

uint64_t CKGetRegisteredChunk(uint64_t a1, _BYTE *a2, char **a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredChunk_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v7 = _CSGetRegisteredChunk(a1, a2, a3);
  CKUnlockChunkStore(a1);
  return v7;
}

uint64_t CKGetRegisteredChunks(uint64_t a1, _BYTE *a2, void *a3, int *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredChunks_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v9 = _CSGetRegisteredChunks(a1, a2, a3, a4);
  CKUnlockChunkStore(a1);
  return v9;
}

BOOL CKRegisterFile(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  valuePtr = a3;
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterFile_cold_1();
  }

  if (CKChunkStoreIsReadOnly(a1))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRegisterFile_cold_2();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"can't register file %lld because the chunkstore is readonly", a3, valuePtr);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CKRegisterFile_cold_3();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    return 0;
  }

  else
  {
      ;
    }

    if (CKLockChunkStore(a1))
    {
      v8 = 0;
    }

    else
    {
      _CSUnregisterTemporaryChunks(a1, valuePtr);
      v8 = registerItem(a1, a2, valuePtr, 0, 1) != 0;
      CKUnlockChunkStore(a1);
    }

    CSUnregisterOperation(a1, i);
    CFRelease(i);
  }

  return v8;
}

os_log_t __CKRegisterFile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRegisterFile_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKGetRegisteredFileSignature(uint64_t a1, CFTypeRef *a2, sqlite3_int64 a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredFileSignature_cold_1();
  }

  return CKGetRegisteredFileMetadata(a1, a3, a2, 0);
}

uint64_t CKGetRegisteredFileMetadata(uint64_t a1, sqlite3_int64 a2, CFTypeRef *a3, void *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredFileMetadata_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v12 = 0;
  cf = 0;
  v8 = _CSGetSignatureForItemID(a1, a2, 0, &cf, &v12);
  CKUnlockChunkStore(a1);
  v9 = cf;
  if (v8)
  {
    if (a3 && cf)
    {
      CFRetain(cf);
      v9 = cf;
      *a3 = cf;
    }

    if (a4)
    {
      v10 = v12;
      if (v12)
      {
        CFRetain(v12);
        v10 = v12;
        v9 = cf;
      }

      *a4 = v10;
    }
  }

  if (v9)
  {
    CKBaseRelease(v9);
  }

  cf = 0;
  if (v12)
  {
    CKBaseRelease(v12);
  }

  return v8;
}

uint64_t CKGetRegisteredFileItemID(uint64_t a1, _BYTE *a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredFileItemID_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSGetItemIdForFileSignature(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

uint64_t CKUnregisterAllTemporaryChunks(uint64_t a1)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterAllTemporaryChunks_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v3 = _CSUnregisterAllTemporaryChunks(a1);
  CKUnlockChunkStore(a1);
  return v3;
}

uint64_t CKUnregisterTemporaryChunks(uint64_t a1, sqlite3_int64 a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterTemporaryChunks_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterTemporaryChunks(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

unint64_t CKRegisterTemporaryChunk(uint64_t a1, void *a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterTemporaryChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  *a2 = 0;
  v5 = _CSRelocateRegisteredChunk(a1, a2, 110, 116);
  CKUnlockChunkStore(a1);
  return v5;
}

BOOL CKRegisterTemporaryChunks(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterTemporaryChunks_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v8 = CKRegisteredChunkSize(a2);
  if (a3)
  {
    v9 = v8;
    if (_CSRegisterTemporaryChunk(a1, a2))
    {
      v10 = a2 + v9;
      v11 = 1;
      do
      {
        v12 = v11;
        if (a3 == v11)
        {
          break;
        }

        v13 = _CSRegisterTemporaryChunk(a1, v10);
        v10 += v9;
        v11 = v12 + 1;
      }

      while (v13);
      v6 = v12 >= a3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  CKUnlockChunkStore(a1);
  return v6;
}

uint64_t CKUnregisterTemporaryChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterTemporaryChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterChunk(a1, a2, 110);
  CKUnlockChunkStore(a1);
  return v5;
}

uint64_t CKUnregisterTemporaryNChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterTemporaryNChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterChunk(a1, a2, 110);
  CKUnlockChunkStore(a1);
  return v5;
}

uint64_t CKUnregisterTemporaryTChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterTemporaryTChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterChunk(a1, a2, 116);
  CKUnlockChunkStore(a1);
  return v5;
}

unint64_t CKRelocateTemporaryChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRelocateTemporaryChunk_cold_1();
  }

  if (CKChunkStoreIsReadOnly(a1))
  {
    return 0;
  }

  if (!*a2)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRelocateTemporaryChunk_cold_4();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk rowID, itemID:%lld, o:0x%llx, sz:0x%x\n", *(a2 + 8), *(a2 + 16), *(a2 + 24));
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRelocateTemporaryChunk_cold_5();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v13 = v10;
LABEL_25:
    _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_26:
    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  if (a3 != 116 && a3 != 110 || a4 != 110 && a4 != 116)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRelocateTemporaryChunk_cold_2();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk relocation ('%c'/'%c') for itemID:%lld, o:0x%llx, sz:0x%x, rowID:%llu\n", a3, a4, *(a2 + 8), *(a2 + 16), *(a2 + 24), *a2);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRelocateTemporaryChunk_cold_3();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v13 = v10;
    goto LABEL_25;
  }

  if (CKLockChunkStore(a1))
  {
    return 0;
  }

  v9 = _CSRelocateRegisteredChunk(a1, a2, a3, a4);
  CKUnlockChunkStore(a1);
  return v9;
}

os_log_t __CKRelocateTemporaryChunk_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRelocateTemporaryChunk_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRelocateTemporaryChunk_block_invoke_475()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRelocateTemporaryChunk_block_invoke_2_482()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKConvertTemporaryChunks(uint64_t a1, sqlite3_int64 a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKConvertTemporaryChunks_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSConvertTemporaryChunks(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

uint64_t CKKeyForRegisteredChunk(uint64_t a1, _BYTE *a2, void *a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKKeyForRegisteredChunk_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v7 = _CSKeyForRegisteredChunk(a1, a2, a3);
  CKUnlockChunkStore(a1);
  return v7;
}

BOOL CKRegisterNeededChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterNeededChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v4 = _CSRegisterChunk(a1, a2, 110) != 0;
  CKUnlockChunkStore(a1);
  return v4;
}

uint64_t CKUnregisterChunksForItem(uint64_t a1, sqlite3_int64 a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterChunksForItem_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterAllChunksForItem(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

sqlite3_int64 CKTokenForRegisteredChunk(uint64_t a1, _BYTE *a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKTokenForRegisteredChunk_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSTokenForChunkSignature(a1, a2, 114);
  CKUnlockChunkStore(a1);
  return v5;
}

os_log_t __CSChunkFile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSChunkFile_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t chunkFdForStorage(const void *a1, char **a2, char a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (CKChunkStoreIsRegistry(a1))
  {
    chunkFdForStorage_cold_6();
  }

  if (!a2)
  {
    chunkFdForStorage_cold_5();
  }

  v37 = 0;
  valuePtr = 0;
  v35 = 0;
  v36 = 0;
  *a4 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 2;
  v26 = a2;
  v8 = *a2;
  if (*a2)
  {
    v9 = strrchr(*a2, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v8;
    }

    v11 = strrchr(v10, 46);
    if (v11)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v29 = openFd;
  v30 = closeFd;
  v31 = statFd;
  v32 = readFd;
  v33 = getCacheBlobFd;
  v34 = setCacheBlobFd;
  v13 = openFd(a2, &v36, &v37);
  v26 = 0;
  if ((v13 & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      chunkFdForStorage_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed on path:%s, error:%@\n", v8, v37);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        chunkFdForStorage_cold_2();
      }

      v17 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = v15;
        _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v15)
      {
        goto LABEL_31;
      }

      CFRelease(v15);
    }

    goto LABEL_30;
  }

  v14 = v36;
  *(v36 + 8) = v36;
  *(v14 + 16) = &v25;
  if (!CKChunkDigestArgumentsV1Create(&v35, 0, 0) || setOpCtxPath(v14, v8) || setOpCtxChunkScheme(v14, 0, v35))
  {
LABEL_30:
    v15 = 0;
    goto LABEL_31;
  }

  valuePtr = *(v14 + 40);
  v15 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (!v15)
  {
LABEL_31:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  while (!CSRegisterOperation(a1, v15))
  {
    CSWaitForOperation(a1, v15);
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  if ((v31(v36, v23, 0) & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      chunkFdForStorage_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed on itemID:%lld, path:%s, ino:%llu, error:%@\n", valuePtr, v8, *(v14 + 40), v37);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        chunkFdForStorage_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    goto LABEL_31;
  }

  setOpCtxStatInfo(v14, v23);
  if (a1)
  {
    v16 = CFRetain(a1);
  }

  else
  {
    v16 = 0;
  }

  *v14 = v16;
  *(v14 + 16) = &v25;
  *(v14 + 128) = CSChunkStorageCallback;
  *(v14 + 56) = valuePtr;
  *(v14 + 96) = v12;
  *(v14 + 176) = a3 & 1;
  *(v14 + 160) = 3;
  *(v14 + 220) = 0;
  *(v14 + 164) = 20000;
  v18 = chunkItem(v14, 0);
  v22 = 0;
  if (!v18)
  {
    v22 = *(v14 + 280);
  }

  *a4 = v22;
LABEL_32:
  if (v35)
  {
    CKBaseRelease(v35);
  }

  v35 = 0;
  if (v15)
  {
    CSUnregisterOperation(a1, v15);
    CFRelease(v15);
  }

  if (v13)
  {
    v30(v26, v36, 0);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v18;
}

os_log_t __CSChunkFD_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSChunkFD_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __fsopen_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_569()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_576()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_580()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_587()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_592()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_599()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_604()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_611()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_615()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_622()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_626()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_633()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CSRegisterChunksForFileCallback(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 136);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 84) < 0)
  {
    v3 = v1 + CKChunkSchemeAndSignatureSize(v1 + 84) + 84;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 256);
  if (v5)
  {
    LODWORD(v5) = *(v5 + 56 * *(a1 + 252) + 32);
  }

  result = addRegisteredChunk(a1 + 264, 0, *v1, v1[9], *(v1 + 20), 114, v1[7], v1 + 84, v3, v5);
  if (result)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSRegisterChunksForFileCallback_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"addRegisteredChunk failed, itemID:%lld, offset:0x%llx, size:0x%x\n", *v1, v1[9], *(v1 + 20));
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSRegisterChunksForFileCallback_cold_2();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v9 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

os_log_t __registerChunksForItem_block_invoke_639()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_3_650()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSRegisterChunksForFileCallback_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSRegisterChunksForFileCallback_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __chunkFdForStorage_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __chunkFdForStorage_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __chunkFdForStorage_block_invoke_675()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __chunkFdForStorage_block_invoke_2_682()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKFileDigestResultsAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKFileDigestResultsGetTypeID_typeID, &kCKFileDigestResultsContextClass);
  result = CKTypeCreateInstance_(0, v6, a3 + 48);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 40) = result + 48;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t _CKFileDigestResultsInit(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = CKFileSignatureCopy(a2);
  return 1;
}

uint64_t CKFileDigestResultsCreate(void *a1, _BYTE *a2, uint64_t a3, const void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2 & 0x7F;
  if (v4 == 8 || v4 == 4)
  {
    return CKFileDigestResultsV2Create(a1, a2, a3, a4);
  }

  else
  {
    return CKFileDigestResultsV1Create(a1, a2, a3);
  }
}

uint64_t CKFileDigestResultsEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      v3 = *(a1 + 16);
      if (v3)
      {
        if (v3 == *(a2 + 16))
        {
          return _requestCallbacks_3[4 * v3 + 2]();
        }
      }
    }
  }

  return v2;
}

uint64_t CKFileDigestResultsFileVerificationKey(uint64_t a1)
{
  v1 = _requestCallbacks_3[4 * *(a1 + 16)];
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void _CKFileDigestResultsCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks_3[4 * v2 + 3])(a1);
  }

  v3 = *(a1 + 32);

  free(v3);
}

uint64_t _CKFileDigestResultsCFCopyFormatDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks_3[4 * v1 + 1]();
  }

  else
  {
    return 0;
  }
}

uint64_t _CKFileDigestResultsCFCopyDebugDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks_3[4 * v1 + 1]();
  }

  else
  {
    return 0;
  }
}

uint64_t doEncrypt(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  if (!CKChunkCryptorCreate(&v6, 1, a3, a4))
  {
    return 0;
  }

  if (CKChunkCryptorUpdate(v6))
  {
    v4 = CKChunkCryptorFinish(v6);
  }

  else
  {
    v4 = 0;
  }

  if (v6)
  {
    CKBaseRelease(v6);
  }

  v6 = 0;
  if (v7)
  {
    CKBaseRelease(v7);
  }

  return v4;
}

uint64_t doDecrypt(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  if (!CKChunkCryptorCreate(&v6, 0, a3, a4))
  {
    return 0;
  }

  if (CKChunkCryptorUpdate(v6))
  {
    v4 = CKChunkCryptorFinish(v6);
  }

  else
  {
    v4 = 0;
  }

  if (v6)
  {
    CKBaseRelease(v6);
  }

  v6 = 0;
  if (v7)
  {
    CKBaseRelease(v7);
  }

  return v4;
}

uint64_t getChunkListCacheBlob(uint64_t a1, CFMutableDataRef *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  theData = 0;
  v4 = *(a1 + 104);
  CacheBlob = getCacheBlob(a1, "com.apple.cscache", &theData);
  if (!CacheBlob)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    Length = CFDataGetLength(theData);
    if ((Length & 0xFFFFFFFE) >= 0x3AuLL && ((v8 = MutableBytePtr[20], v8 != 3) ? (v9 = v8 == 5) : (v9 = 1), v9))
    {
      if (*(a1 + 160) == v8)
      {
        CacheBlob = 0;
        *a2 = theData;
        return CacheBlob;
      }

      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        getChunkListCacheBlob_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Different type chunk list cache found for %s, size:%u, type:%u expected %u\n", v4, Length, MutableBytePtr[20], *(a1 + 160));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        getChunkListCacheBlob_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      *buf = 138543362;
      v15 = v10;
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        getChunkListCacheBlob_cold_3();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk list cache for %s, size:%u, type:%u\n", v4, Length, MutableBytePtr[20]);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        getChunkListCacheBlob_cold_4();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
LABEL_18:
        if (v10)
        {
          CFRelease(v10);
        }

LABEL_27:
        CacheBlob = 22;
        goto LABEL_28;
      }

      *buf = 138543362;
      v15 = v10;
    }

    _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    goto LABEL_18;
  }

LABEL_28:
  if (theData)
  {
    CFRelease(theData);
  }

  return CacheBlob;
}

os_log_t __getChunkListCacheBlob_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCacheBlob_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCacheBlob_block_invoke_8()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCacheBlob_block_invoke_2_15()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t setChunkListCacheBlob(uint64_t a1, CFMutableDataRef theData)
{
  v2 = a1;
  if (theData)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    if ((CFDataGetLength(theData) & 0xFFFFFFFEuLL) <= 0x39)
    {
      setChunkListCacheBlob_cold_2();
    }

    v5 = *(v2 + 160);
    if (v5 != 3 && v5 != 5)
    {
      setChunkListCacheBlob_cold_1();
    }

    MutableBytePtr[20] = v5;
    a1 = v2;
    v7 = theData;
  }

  else
  {
    v7 = 0;
  }

  return setCacheBlob(a1, "com.apple.cscache", v7);
}

uint64_t chunkItem(uint64_t a1, void *a2)
{
  v315 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  cf = 0;
  if (*v3 < 2)
  {
    v5 = 0;
    v6 = 0xFFFFFFFFLL;
    if (!a2)
    {
      goto LABEL_389;
    }

LABEL_388:
    *a2 = cf;
    goto LABEL_391;
  }

  v298 = a2;
  v7 = *(a1 + 104);
  v8 = *(a1 + 56);
  v9 = CKChunkDigestArgumentsChunkScheme(*(a1 + 152));
  if (gVerbose == 2)
  {
    v10 = v9;
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s, hint:%s, scheme:0x%x, size:%llu, fileID:0x%016llx(%llu), itemID:%lld", v7, *(a1 + 96), v10, *(a1 + 80), *(a1 + 40), *(a1 + 40), v8);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_2();
      }

      v12 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  v289 = v8;
  v292 = v7;
  v13 = *(v3 + 32);
  if (v13)
  {
    v13(v4);
  }

  *v314 = 0;
  v14 = *(a1 + 104);
  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  v305 = a1;
  v19 = a1 + 80;
  v18 = *(a1 + 80);
  v17 = *(v19 + 8);
  if (getenv("CS_DISABLE_CL_CACHE"))
  {
    v20 = 0;
LABEL_21:
    v21 = v305;
    goto LABEL_22;
  }

  v20 = malloc_type_calloc(1uLL, 0x20uLL, 0x10700401F352568uLL);
  if (!v20 || getChunkListCacheBlob(v305, v314))
  {
    goto LABEL_21;
  }

  v273 = v3;
  v276 = v4;
  v87 = *v314;
  MutableBytePtr = CFDataGetMutableBytePtr(*v314);
  v89 = CFDataGetLength(v87);
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    chunkItem_cold_3();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    v90 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"generation:%u, mtime:%llu, ino:%llu, sz:%llu, fileSignatureSize:%u, chunkInfoSize:%u, chunkInfoCount:%u\n", *(MutableBytePtr + 21), *(MutableBytePtr + 25), *(MutableBytePtr + 33), *(MutableBytePtr + 41), *(MutableBytePtr + 49), *(MutableBytePtr + 51), *(MutableBytePtr + 53));
    v91 = v20;
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_4();
    }

    v92 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v90;
      _os_log_impl(&dword_243431000, v92, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v20 = v91;
    if (v90)
    {
      CFRelease(v90);
    }
  }

  if (v15 != *(MutableBytePtr + 21) || v17 != *(MutableBytePtr + 25) || v16 != *(MutableBytePtr + 33) || v18 != *(MutableBytePtr + 41))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_5();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v3 = v273;
      v4 = v276;
      goto LABEL_21;
    }

    v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu, chunkInfoCount:%u\n", v14, MutableBytePtr[20], *(MutableBytePtr + 25), v17, *(MutableBytePtr + 33), v16, *(MutableBytePtr + 21), v15, *(MutableBytePtr + 41), v18, *(MutableBytePtr + 53));
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_6();
    }

    v101 = CK_DEFAULT_LOG_INTERNAL_0;
    v4 = v276;
    v21 = v305;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_237;
    }

    *buf = 138543362;
    *&buf[4] = v97;
    v102 = v101;
    v103 = OS_LOG_TYPE_DEBUG;
LABEL_236:
    _os_log_impl(&dword_243431000, v102, v103, "%{public}@", buf, 0xCu);
    goto LABEL_237;
  }

  v300 = v20;
  v93 = CKFileDigestArgumentsFileScheme(*(v305 + 144));
  LOBYTE(v310) = CKFileDigestArgumentsFileSchemeByte(*(v305 + 144));
  v94 = *(MutableBytePtr + 49);
  if (*(MutableBytePtr + 49))
  {
    if (CKFileSignatureSize(&v310) > v94 || (v95 = v94 + 57, v94 + 57 > v89))
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_9();
      }

      v4 = v276;
      v21 = v305;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v3 = v273;
        v20 = v300;
        goto LABEL_22;
      }

      v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature size for %s, %u/%u\n", v14, v94, v89);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_10();
      }

      v98 = CK_DEFAULT_LOG_INTERNAL_0;
      v20 = v300;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_237;
      }

      *buf = 138543362;
      *&buf[4] = v97;
      goto LABEL_323;
    }

    v96 = MutableBytePtr + 57;
    if (v93 != (MutableBytePtr[57] & 0x7F))
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_7();
      }

      v4 = v276;
      v20 = v300;
      v21 = v305;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }

      v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature scheme for %s: 0x%x\n", v14, *v96);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_8();
      }

      v98 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_237;
      }

      *buf = 138543362;
      *&buf[4] = v97;
LABEL_323:
      v102 = v98;
      v103 = OS_LOG_TYPE_ERROR;
      goto LABEL_236;
    }
  }

  else
  {
    v96 = 0;
    v95 = 57;
  }

  v114 = *(MutableBytePtr + 51);
  v115 = *(MutableBytePtr + 53);
  if (v114 < 5 || !v115 || ((v115 * *(MutableBytePtr + 51)) & 0xFFFFFFFF00000000) != 0 || __CFADD__(v115 * v114, v95) || v115 * v114 + v95 > v89)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_40();
    }

    v4 = v276;
    v20 = v300;
    v21 = v305;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_239;
    }

    v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk info size/count for %s, %u/%u/%u\n", v14, v115, v114, v89);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_41();
    }

    v98 = CK_DEFAULT_LOG_INTERNAL_0;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_237;
    }

    *buf = 138543362;
    *&buf[4] = v97;
    goto LABEL_323;
  }

  v295 = *(MutableBytePtr + 53);
  lengtha = v96;
  __srca = 0;
  v167 = 0;
  v168 = 0;
  __dsta = &MutableBytePtr[v95];
  v169 = (v114 - 4);
  v170 = &MutableBytePtr[v94 + 61];
  v303 = v169;
  v286 = v169 + 4;
  do
  {
    v171 = CKChunkSchemeAndSignatureSize(v170);
    if (v171 - 1 >= v303)
    {
      goto LABEL_582;
    }

    if (*v170 < 0)
    {
      v173 = v171;
      if (v303 == v171)
      {
        goto LABEL_582;
      }

      v174 = v170[v171];
      v175 = v174 == 4 || v174 == 1;
      if (!v175 || v303 - v171 != CKChunkSchemeAndEncryptionKeySize(&v170[v171]))
      {
        goto LABEL_582;
      }

      v172 = *v170;
      if (!v168)
      {
        __srca = v170[v173];
LABEL_474:
        v167 = v172;
        goto LABEL_475;
      }

      if (v167 != v172 || __srca != v170[v173])
      {
        goto LABEL_582;
      }
    }

    else
    {
      v172 = *v170;
      if (!v168)
      {
        goto LABEL_474;
      }

      if (v167 != v172)
      {
        goto LABEL_582;
      }
    }

LABEL_475:
    ++v168;
    v170 += v286;
  }

  while (v295 != v168);
  if ((v167 & 0x7F) == 1 || (v167 & 0x7F) == 4)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_11();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v177 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found chunk list cache %s for %s, blobSize:%u, chunkInfoCount:%u, sz:%llu, ino:%llu, mtime:%llu, generation:%u\n", "com.apple.cscache", v14, v89, v295, v18, v16, *(MutableBytePtr + 25), *(MutableBytePtr + 21));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_12();
      }

      v178 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v177;
        _os_log_impl(&dword_243431000, v178, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v177)
      {
        CFRelease(v177);
      }
    }

    v300[1] = lengtha;
    v300[2] = __dsta;
    *(v300 + 24) = v167;
    *(v300 + 25) = __srca;
    *v300 = *v314;
    freeChunkListCacheInfo(0);
    *v314 = 0;
    v310 = 0;
    if (!*v300)
    {
      chunkItem_cold_37();
    }

    v296 = *(v305 + 104);
    v287 = *(v305 + 36);
    v304 = *(v305 + 179);
    v179 = *(v305 + 136);
    BytePtr = CFDataGetBytePtr(*v300);
    if (*(v179 + 8))
    {
      chunkItem_cold_13();
    }

    if (*(v305 + 440))
    {
      chunkItem_cold_14();
    }

    if (*(v305 + 424))
    {
      chunkItem_cold_15();
    }

    v181 = BytePtr;
    v182 = CKChunkDigestArgumentsChunkSchemeByte(*(v305 + 152));
    v309 = v182;
    v308 = CKChunkDigestArgumentsChunkEncryptionKeyScheme(*(v305 + 152));
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_16();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v183 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Using cache %s for %s, ino:%llu, (0x%x/%u/%u)\n", "com.apple.cscache", v296, *(v305 + 40), v182, v304, *(v305 + 192) != 0);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_17();
      }

      v184 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v183;
        _os_log_impl(&dword_243431000, v184, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v183)
      {
        CFRelease(v183);
      }
    }

    if (((v309 ^ *(v300 + 24)) & 0x7F) != 0 || (v300[3] & 0x80) == 0 && v309 < 0)
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_18();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_516;
      }

      v185 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Signature scheme mismatch: 0x%x/0x%x\n", *(v300 + 24), v309);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_19();
      }

      v186 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_514;
      }

      *buf = 138543362;
      *&buf[4] = v185;
      goto LABEL_513;
    }

    if ((v309 & v300[3] & 0x80) != 0 && *(v300 + 25) != v308)
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_20();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_516;
      }

      v185 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Key scheme mismatch: 0x%x/0x%x\n", *(v300 + 25), v308);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_21();
      }

      v186 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_514;
      }

      *buf = 138543362;
      *&buf[4] = v185;
LABEL_513:
      _os_log_impl(&dword_243431000, v186, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_514:
      if (v185)
      {
        CFRelease(v185);
      }

      goto LABEL_516;
    }

    v212 = *(v305 + 144);
    if (v212)
    {
      v213 = v300[1];
      if (v213)
      {
        v214 = *v213;
        if (v214 != CKFileDigestArgumentsFileSchemeByte(v212))
        {
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_22();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_516;
          }

          v216 = *MEMORY[0x277CBECE8];
          v217 = *v300[1];
          v218 = CKFileDigestArgumentsFileSchemeByte(*(v305 + 144));
          v185 = CFStringCreateWithFormat(v216, 0, @"File signature mismatch: 0x%x/0x%x\n", v217, v218);
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_23();
          }

          v186 = CK_DEFAULT_LOG_INTERNAL_0;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_514;
          }

          *buf = 138543362;
          *&buf[4] = v185;
          goto LABEL_513;
        }
      }
    }

    v215 = v300[1];
    if (v304)
    {
      if (!v215 || *(v305 + 216))
      {
LABEL_516:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_517;
      }
    }

    else if (!v215)
    {
      alloca = *(v305 + 192) != 0;
LABEL_611:
      v219 = *(v181 + 51);
      if (v219 <= 4)
      {
        chunkItem_cold_36();
      }

      __srcc = *(v181 + 53);
      if (__srcc)
      {
        v220 = 0;
        v258 = 0;
        v221 = 0;
        v283 = 0;
        v255 = *MEMORY[0x277CBECE8];
        v257 = v179 + 84;
        v222 = v300[2] + 6;
        __dstc = (v219 - 4) + 4;
        while (1)
        {
          v223 = *(v222 - 6);
          if ((v304 ^ 1 | alloca))
          {
            if (CK_DEFAULT_LOG_BLOCK_0 != -1)
            {
              chunkItem_cold_24();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
            {
              v224 = CFStringCreateWithFormat(v255, 0, @"Reading chunk, o:0x%llx, size:0x%x\n", v221, v223);
              if (CK_DEFAULT_LOG_BLOCK_0 != -1)
              {
                chunkItem_cold_25();
              }

              v225 = CK_DEFAULT_LOG_INTERNAL_0;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v224;
                _os_log_impl(&dword_243431000, v225, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v224)
              {
                CFRelease(v224);
              }
            }

            if (v223 && v258 < v223)
            {
              if (v223 <= 0x8000)
              {
                v226 = 0x8000;
              }

              else
              {
                v226 = v223;
              }

              v258 = v226;
              v227 = malloc_type_realloc(v220, v226, 0x388868F6uLL);
              if (!v227)
              {
                v6 = 0xFFFFFFFFLL;
                v227 = v220;
                goto LABEL_647;
              }
            }

            else
            {
              v227 = v220;
            }

            v307 = 0;
            if (!readOpCtx(v305, v221, v227, v223, &v307))
            {
              goto LABEL_646;
            }

            if (v223 != v307)
            {
              if (CK_DEFAULT_LOG_BLOCK_0 != -1)
              {
                chunkItem_cold_26();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
              {
                v244 = CFStringCreateWithFormat(v255, 0, @"Failed to read chunk bytes: %u != %u\n", v223, v307);
                if (CK_DEFAULT_LOG_BLOCK_0 != -1)
                {
                  chunkItem_cold_27();
                }

                v245 = CK_DEFAULT_LOG_INTERNAL_0;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v244;
                  _os_log_impl(&dword_243431000, v245, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                }

                if (v244)
                {
                  CFRelease(v244);
                }
              }

              goto LABEL_646;
            }

            if (alloca)
            {
              CKFileSignatureGeneratorUpdate(*(v305 + 192));
            }
          }

          else
          {
            v227 = v220;
          }

          if (v304)
          {
            v228 = 0;
            *v179 = *(v305 + 56);
          }

          else
          {
            *(v179 + 25) = 1;
            v228 = v227;
            *v179 = v287;
          }

          v229 = *(v305 + 440);
          *(v305 + 440) = v229 + 1;
          *(v179 + 8) = v228;
          *(v179 + 16) = v229;
          *(v179 + 80) = v223;
          *(v179 + 72) = v221;
          *(v179 + 84) = v309;
          v230 = CKChunkSignatureSize(&v309);
          memcpy((v179 + 85), (v222 - 1), v230);
          if (v309 < 0)
          {
            *(v230 + v257 + 1) = v308;
            v231 = CKChunkEncryptionKeySize(&v308);
            memcpy((v230 + v257 + 2), (v222 + v230), v231);
          }

          *(v305 + 424) += v223;
          v232 = (*(v305 + 128))();
          if (v232)
          {
            v6 = v232;
            if (CK_DEFAULT_LOG_BLOCK_0 != -1)
            {
              chunkItem_cold_28();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
            {
              v233 = CFStringCreateWithFormat(v255, 0, @"callback failed for chunk %u: %d\n", v283, v6);
              if (CK_DEFAULT_LOG_BLOCK_0 != -1)
              {
                chunkItem_cold_29();
              }

              v234 = CK_DEFAULT_LOG_INTERNAL_0;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v233;
                _os_log_impl(&dword_243431000, v234, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v233)
              {
                CFRelease(v233);
              }
            }

            goto LABEL_647;
          }

          v221 += v223;
          v222 += __dstc;
          v220 = v227;
          v283 = (v283 + 1);
          if (__srcc == v283)
          {
            v6 = 0xFFFFFFFFLL;
            goto LABEL_658;
          }
        }
      }

      LODWORD(v283) = 0;
      v221 = 0;
      v227 = 0;
LABEL_646:
      v6 = 0xFFFFFFFFLL;
LABEL_647:
      if (v283 != __srcc)
      {
        goto LABEL_680;
      }

LABEL_658:
      v235 = *(v305 + 192);
      if (alloca)
      {
        v236 = CKFileSignatureGeneratorFinish(v235);
        v237 = *(v305 + 192);
        if (v237)
        {
          CFRelease(v237);
        }

        *(v305 + 192) = 0;
        if (!v236)
        {
          goto LABEL_680;
        }
      }

      else if (v235)
      {
        v238 = v300[1];
        if ((*v238 & 0x7F) != 1)
        {
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_30();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_680;
          }

          v246 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"cache file signature not supported\n");
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_31();
          }

          v247 = CK_DEFAULT_LOG_INTERNAL_0;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v246;
            _os_log_impl(&dword_243431000, v247, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (!v246)
          {
            goto LABEL_680;
          }

          v248 = v246;
LABEL_718:
          CFRelease(v248);
          goto LABEL_680;
        }

        if (!CKFileDigestResultsCreate(&v310, v238, v221, 0))
        {
LABEL_680:
          if (v227)
          {
            free(v227);
          }

          v187 = v310;
          if (v6 || !v310)
          {
            goto LABEL_518;
          }

          setOpCtxFileDigestResults(v305, v310);
          v6 = 0;
LABEL_517:
          v187 = v310;
LABEL_518:
          if (v187)
          {
            CFRelease(v187);
          }

          v310 = 0;
          *(v179 + 8) = 0;
          if (*v314)
          {
            CFRelease(*v314);
          }

          if (!v6)
          {
            v3 = v273;
            v4 = v276;
            goto LABEL_385;
          }

          v3 = v273;
          v4 = v276;
          v21 = v305;
          goto LABEL_25;
        }
      }

      if (!v304 || !v310 || (v239 = *(v305 + 200)) == 0 || CKFileDigestResultsEqual(v310, v239))
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_34();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          v240 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found %u chunks for %s, ino:%llu\n", __srcc, v296, *(v305 + 40));
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_35();
          }

          v241 = CK_DEFAULT_LOG_INTERNAL_0;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v240;
            _os_log_impl(&dword_243431000, v241, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v240)
          {
            CFRelease(v240);
          }
        }

        v242 = *(v305 + 128);
        v243 = *(v305 + 136);
        *(v305 + 136) = 0;
        v6 = v242(v305);
        *(v305 + 136) = v243;
        goto LABEL_680;
      }

      v249 = CFCopyDescription(v310);
      v250 = CFCopyDescription(*(v305 + 200));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_32();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v251 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"file signature mismatch for %lld item has %@ != %@ for the chunk store", *(v305 + 56), v249, v250);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_33();
        }

        v252 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v251;
          _os_log_impl(&dword_243431000, v252, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v251)
        {
          CFRelease(v251);
        }
      }

      *v314 = CKErrorCreateWithFormat(3, @"The file signature changed: from %@ on the item to %@ registered in the chunk store for item %lld. Perhaps the item should be unregistered.", v249, v250, *(v305 + 56));
      if (v249)
      {
        CFRelease(v249);
      }

      if (!v250)
      {
        goto LABEL_680;
      }

      v248 = v250;
      goto LABEL_718;
    }

    alloca = 0;
    goto LABEL_611;
  }

  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    chunkItem_cold_38();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
  {
LABEL_582:
    v3 = v273;
    v4 = v276;
    v20 = v300;
    goto LABEL_21;
  }

  v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk signature/key scheme for %s: 0x%x/0x%x\n", v14, v167, __srca);
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    chunkItem_cold_39();
  }

  v211 = CK_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v97;
    _os_log_impl(&dword_243431000, v211, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v4 = v276;
  v20 = v300;
  v21 = v305;
LABEL_237:
  if (v97)
  {
    CFRelease(v97);
  }

LABEL_239:
  v3 = v273;
LABEL_22:
  if (*v314)
  {
    CFRelease(*v314);
  }

  freeChunkListCacheInfo(v20);
  v300 = 0;
  v6 = 0xFFFFFFFFLL;
LABEL_25:
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_42();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunking %s", v292);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_43();
      }

      v23 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }
  }

  ChunkProfile = createChunkProfile(v21, (v21 + 256), (v21 + 240));
  *(v21 + 248) = ChunkProfile;
  if (!ChunkProfile)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_90();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v99 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Not chunking %s - no chunking profile!\n", v292);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_91();
      }

      v100 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v99;
        _os_log_impl(&dword_243431000, v100, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v99)
      {
        CFRelease(v99);
      }
    }

    goto LABEL_387;
  }

  cf = 0;
  clearChunksArray(v21 + 264);
  clearChunksArray(v21 + 264);
  *(v21 + 440) = 0;
  *(v21 + 472) = 0;
  *(v21 + 64) = 0;
  clearOpCtxError(v21);
  v25 = getenv("CHUNK_BUFFER_LENGTH");
  if (!v25)
  {
    goto LABEL_48;
  }

  v26 = v25;
  v27 = strtoll(v25, 0, 0);
  if (v27 < 0x8000)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_44();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
    {
      v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to use env value %s for CHUNK_BUFFER_LENGTH. Parsed %lld and the minimum is %d. Using default value %lu\n", v26, v27, 0x8000, 0x8000);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_45();
      }

      v29 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_243431000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }

LABEL_48:
    v27 = 0x8000;
  }

  v30 = malloc_type_malloc(v27, 0x100004077774924uLL);
  if (!v30)
  {
    LOBYTE(v33) = 0;
    v32 = 0;
    goto LABEL_337;
  }

  v31 = CSrabin_init();
  v32 = v31;
  if (!v31)
  {
    goto LABEL_303;
  }

  *(v21 + 252) = 0;
  if (!*(v21 + 248))
  {
    LOBYTE(v33) = 0;
    v6 = 0;
    goto LABEL_340;
  }

  v33 = 0;
  v284 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  alloc = *MEMORY[0x277CBECE8];
  v301 = v31;
  __src = v27;
  while (1)
  {
    if ((v36 & 1) != 0 && v37 <= v284)
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_64();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v108 = v33;
        v109 = CFStringCreateWithFormat(alloc, 0, @"not all sections chunked before eof reached\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_65();
        }

        v110 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v109;
          _os_log_impl(&dword_243431000, v110, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v109)
        {
          CFRelease(v109);
        }

        v6 = 0;
        LOBYTE(v33) = v108;
        goto LABEL_339;
      }

LABEL_304:
      v6 = 0;
      goto LABEL_339;
    }

    if (getOpCtxSectionLengthAtIndex(v21, v35))
    {
      break;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_62();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v38 = v33;
      v39 = CFStringCreateWithFormat(alloc, 0, @"Skipping zero length section %u.\n", *(v21 + 252));
      v278 = v34;
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_63();
      }

      v40 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v39;
        _os_log_impl(&dword_243431000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      v33 = v38;
      v27 = __src;
      v34 = v278;
    }

LABEL_69:
    v41 = *(v21 + 248);
    v35 = (*(v21 + 252) + 1);
    *(v21 + 252) = v35;
    if (v35 >= v41)
    {
      goto LABEL_304;
    }
  }

  LODWORD(v33) = *(*(v21 + 256) + 56 * *(v21 + 252) + 52);
  length = *(*(v21 + 256) + 56 * *(v21 + 252) + 52);
  if (v33 == 1)
  {
    if (_SetSourceChunk(v21, v34))
    {
      goto LABEL_259;
    }
  }

  else
  {
    v42 = v37 - v284;
    if (v37 > v284)
    {
      memmove(v30, &v30[v284], v37 - v284);
      v284 = 0;
      v37 = v42;
    }

    LOBYTE(v33) = length;
  }

  v272 = v3;
  while (2)
  {
    v43 = v37;
    while (2)
    {
      v44 = v43;
      if (v27 < v43)
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_58();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_329;
        }

        v104 = CFStringCreateWithFormat(alloc, 0, @"overflow; buffer length: %lu producer location %lu\n", v27, v43);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_59();
        }

        v105 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v104;
          _os_log_impl(&dword_243431000, v105, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v104)
        {
          CFRelease(v104);
        }

LABEL_327:
        LOBYTE(v33) = length;
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_60();
        }

LABEL_329:
        v3 = v272;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_337;
        }

        v106 = CFStringCreateWithFormat(alloc, 0, @"CSchunklist_streamRead failed\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_61();
        }

        v117 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v106;
          _os_log_impl(&dword_243431000, v117, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v106)
        {
          LOBYTE(v33) = length;
          goto LABEL_336;
        }

        v6 = 0xFFFFFFFFLL;
        LOBYTE(v33) = length;
        goto LABEL_338;
      }

      v294 = v27 != v43;
      if (v27 != v43)
      {
        *buf = 0;
        if ((readOpCtx(v21, *(v21 + 64), &v30[v43], v27 - v43, buf) & 1) == 0)
        {
          goto LABEL_327;
        }

        v45 = *buf;
        v43 += *buf;
        *(v21 + 64) += *buf;
        if (!v45)
        {
          goto LABEL_82;
        }

        continue;
      }

      break;
    }

    v43 = v27;
LABEL_82:
    v46 = *(v21 + 192);
    if (v46)
    {
      v47 = v43 <= v37;
    }

    else
    {
      v47 = 1;
    }

    if (!v47 && !CKFileSignatureGeneratorUpdate(v46))
    {
      v116 = *(v21 + 192);
      if (v116)
      {
        CFRelease(v116);
      }

      *(v21 + 192) = 0;
      goto LABEL_327;
    }

    v275 = v4;
    __dst = v30;
    if (v33)
    {
      v279 = v34;
      v48 = v34;
      if (v43 - v284 < 1 || (v49 = (*(v305 + 256) + 56 * *(v305 + 252)), v50 = *v49, v48 = v34, *v49 <= v34))
      {
LABEL_164:
        if (v48 - v279 >= 0)
        {
          v58 = v48 - v279 + v284;
          v34 = v48;
          v32 = v301;
          v21 = v305;
          v30 = __dst;
          v27 = __src;
          goto LABEL_166;
        }
      }

      else
      {
        v48 = v34;
        v254 = &v30[v284];
        v253 = v49[1];
        v256 = v49[3];
        v51 = v43 - v284;
        v52 = *(v305 + 136);
        while (1)
        {
          v53 = v43 - v284 - v51;
          v54 = v253 - *(v52 + 80);
          if (v50 - v48 < v54)
          {
            break;
          }

          v55 = v51 - v54;
          if (v51 < v54)
          {
            if (v256 && CSfixed_subchunk_stream(v305, v254 + v53, v51, v256, 0))
            {
              goto LABEL_250;
            }

            goto LABEL_162;
          }

          if (v256 && CSfixed_subchunk_stream(v305, v254 + v53, v253 - *(v52 + 80), v256, 1))
          {
            goto LABEL_250;
          }

          if (CS_fixed_chunk_stream_accumulate(v305, v254 + v53, v54))
          {
            goto LABEL_250;
          }

          if (CSchunklist_add_stream(v305))
          {
            goto LABEL_250;
          }

          v48 += v54;
          _ClearSourceChunk(v305);
          if (_SetSourceChunk(v305, v48))
          {
            goto LABEL_250;
          }

          if (v48 < v50)
          {
            v51 -= v54;
            if (v55 > 0)
            {
              continue;
            }
          }

          goto LABEL_164;
        }

        if (v51 < v50 - v48)
        {
LABEL_162:
          if (CS_fixed_chunk_stream_accumulate(v305, v254 + v53, v51))
          {
            goto LABEL_250;
          }

          v48 += v51;
          goto LABEL_164;
        }

        if ((!v256 || !CSfixed_subchunk_stream(v305, v254 + v53, v50 - v48, v256, 1)) && !CS_fixed_chunk_stream_accumulate(v305, v254 + v53, v50 - v48) && !CSchunklist_add_stream(v305))
        {
          _ClearSourceChunk(v305);
          v48 = v50;
          if (!_SetSourceChunk(v305, v50))
          {
            goto LABEL_164;
          }
        }
      }

LABEL_250:
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_54();
      }

      v3 = v272;
      v32 = v301;
      v21 = v305;
      v30 = __dst;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v106 = CFStringCreateWithFormat(alloc, 0, @"CSfixed_chunk_stream failed\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_55();
        }

        v107 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v106;
          _os_log_impl(&dword_243431000, v107, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        LOBYTE(v33) = 1;
        if (!v106)
        {
LABEL_337:
          v6 = 0xFFFFFFFFLL;
          goto LABEL_338;
        }

LABEL_336:
        CFRelease(v106);
        goto LABEL_337;
      }

LABEL_259:
      v6 = 0xFFFFFFFFLL;
      LOBYTE(v33) = 1;
      goto LABEL_338;
    }

    v56 = *(v21 + 256);
    v57 = *(v21 + 252);
    v58 = v284;
    while (2)
    {
      v59 = v43 - v58;
      v60 = *(v56 + 56 * v57 + 16);
      if (v27 == v44 && v59 < v60)
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_46();
        }

        v3 = v272;
        v4 = v275;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_303;
        }

        v106 = CFStringCreateWithFormat(alloc, 0, @"under-read for rabin chunking; only read %lld bytes and not at EOF\n", v59);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_47();
        }

        v111 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_301;
        }

        *buf = 138543362;
        *&buf[4] = v106;
        goto LABEL_300;
      }

      if (v43 == v58)
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_52();
        }

        v3 = v272;
        v4 = v275;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_303;
        }

        v106 = CFStringCreateWithFormat(alloc, 0, @"At EOF and zero bytes left. We should be done by now. Chunk profile inconsistent?\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_53();
        }

        v111 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_301;
        }

        *buf = 138543362;
        *&buf[4] = v106;
LABEL_300:
        _os_log_impl(&dword_243431000, v111, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        goto LABEL_301;
      }

      v61 = v56 + 56 * v57;
      if (*v61 < v34)
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_48();
        }

        v3 = v272;
        v4 = v275;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
LABEL_295:
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
          {
            v106 = CFStringCreateWithFormat(alloc, 0, @"CSrabin_chunk_stream failed\n");
            if (CK_DEFAULT_LOG_BLOCK_0 != -1)
            {
              chunkItem_cold_51();
            }

            v111 = CK_DEFAULT_LOG_INTERNAL_0;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v106;
              goto LABEL_300;
            }

LABEL_301:
            LOBYTE(v33) = 0;
            if (!v106)
            {
              goto LABEL_337;
            }

            goto LABEL_336;
          }

LABEL_303:
          LOBYTE(v33) = 0;
          goto LABEL_337;
        }

        v112 = CFStringCreateWithFormat(alloc, 0, @"File offset is already great than sectionEnd. Shouldn't we be in a different section?\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_49();
        }

        v113 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v112;
          _os_log_impl(&dword_243431000, v113, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v72 = v305;
        if (v112)
        {
          CFRelease(v112);
        }

LABEL_293:
        v3 = v272;
        v21 = v72;
        v30 = __dst;
        v32 = v301;
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_50();
        }

        goto LABEL_295;
      }

      v280 = v34;
      v285 = v58;
      v62 = &v30[v58];
      v63 = *(v61 + 12);
      v64 = (v63 - 48);
      if (*v61 - v34 >= v59)
      {
        v65 = v43 - v58;
      }

      else
      {
        v65 = *v61 - v34;
      }

      if (v65 <= v64)
      {
        CSchunklist_add(v21, *(v21 + 440), v34, v62, v65);
        v4 = v275;
        v72 = v21;
        if (!v73)
        {
          ++*(v21 + 440);
          goto LABEL_146;
        }

        goto LABEL_293;
      }

      if (*(v21 + 183) == 1)
      {
        *(v21 + 464) = mach_absolute_time();
      }

      v66 = 0;
      v67 = (v63 - 47);
      v68 = 1;
      while (1)
      {
        v69 = CSrabin_slide8(v301, *(v62 + v64));
        v70 = v64 + 1;
        if (v64 + 1 >= v63)
        {
          break;
        }

LABEL_118:
        v68 = v70 < v65;
        v67 = (v67 + 1);
        ++v64;
        if (v65 == v70)
        {
          v68 = 0;
          v71 = 0;
          v4 = v275;
          v72 = v305;
          goto LABEL_139;
        }
      }

      if ((~v69 & 0x7FF) == 0)
      {
        v72 = v305;
        if (*(v305 + 183) == 1)
        {
          *(v305 + 472) += mach_absolute_time() - *(v305 + 464);
        }

        CSchunklist_add(v305, *(v305 + 440), v280, v62, v67);
        v4 = v275;
        if (v74)
        {
          goto LABEL_293;
        }

        goto LABEL_136;
      }

      if ((~v69 & 0x3FF) == 0)
      {
        v66 = v64;
      }

      if (v70 < v60)
      {
        goto LABEL_118;
      }

      v4 = v275;
      if (v66 < 1)
      {
        v72 = v305;
        if (*(v305 + 183))
        {
          *(v305 + 472) += mach_absolute_time() - *(v305 + 464);
        }

        if (*(v305 + 181) == 1)
        {
          ++*(v305 + 448);
        }

        CSchunklist_add(v305, *(v305 + 440), v280, v62, v67);
        if (v76)
        {
          goto LABEL_293;
        }

LABEL_136:
        v71 = v64 + 1;
        ++*(v72 + 440);
        goto LABEL_137;
      }

      if (*(v305 + 183))
      {
        *(v305 + 472) += mach_absolute_time() - *(v305 + 464);
      }

      v72 = v305;
      CSchunklist_add(v305, *(v305 + 440), v280, v62, (v66 + 1));
      if (v75)
      {
        goto LABEL_293;
      }

      ++*(v305 + 440);
      v71 = v66 + 1;
LABEL_137:
      if (*(v72 + 183))
      {
        *(v72 + 464) = mach_absolute_time();
      }

LABEL_139:
      if (*(v72 + 183) == 1)
      {
        *(v72 + 472) += mach_absolute_time() - *(v72 + 464);
      }

      if (v68 || v65 + v280 != *(*(v72 + 256) + 56 * *(v72 + 252)))
      {
        v65 = v71;
      }

      else
      {
        CSchunklist_add(v72, *(v72 + 440), v280, v62, v65);
        if (v77)
        {
          goto LABEL_293;
        }

        ++*(v72 + 440);
        v65 += v71;
      }

LABEL_146:
      v72 = v305;
      if (v65 < 0)
      {
        goto LABEL_293;
      }

      v58 = v65 + v285;
      v34 = v65 + v280;
      v56 = *(v305 + 256);
      v57 = *(v305 + 252);
      v78 = v56 + 56 * v57;
      v175 = *v78 == v65 + v280;
      v21 = v305;
      v30 = __dst;
      v32 = v301;
      v27 = __src;
      if (!v175 && (__src != v44 || v43 - v58 >= *(v78 + 16)))
      {
        continue;
      }

      break;
    }

    v79 = v43 - v58;
    if (v43 > v58)
    {
      memmove(__dst, &__dst[v58], v43 - v58);
      v58 = 0;
      v43 = v79;
    }

    v4 = v275;
LABEL_166:
    if (v58 == v43)
    {
      v37 = 0;
    }

    else
    {
      v37 = v43;
    }

    if (v58 == v43)
    {
      v58 = 0;
    }

    v284 = v58;
    if (*(*(v21 + 256) + 56 * *(v21 + 252)) != v34)
    {
      v33 = length;
      if (v27 != v44 && v58 >= v37)
      {
        v36 = 1;
        v3 = v272;
        goto LABEL_189;
      }

      continue;
    }

    break;
  }

  v3 = v272;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_56();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v80 = v34;
      v81 = *(v21 + 256) + 56 * *(v21 + 252);
      v82 = CFStringCreateWithFormat(alloc, 0, @"section %u done (%u, eo:0x%llx, %u)", *(v21 + 252), length, *v81, *(v81 + 48));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_57();
      }

      v83 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v82;
        _os_log_impl(&dword_243431000, v83, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v3 = v272;
      v4 = v275;
      v32 = v301;
      v21 = v305;
      v34 = v80;
      if (v82)
      {
        CFRelease(v82);
      }
    }
  }

  if (*(v21 + 180))
  {
    v33 = length;
    v36 = v294;
    goto LABEL_189;
  }

  v84 = *(v21 + 128);
  v85 = *(v21 + 136);
  *(v21 + 136) = 0;
  v86 = v84(v21);
  *(v21 + 136) = v85;
  v33 = length;
  v36 = v294;
  if (!v86)
  {
LABEL_189:
    if (v33)
    {
      _ClearSourceChunk(v21);
      v33 = 1;
    }

    v27 = __src;
    goto LABEL_69;
  }

  v6 = v86;
LABEL_338:
  cf = *(v21 + 336);
  *(v21 + 336) = 0;
LABEL_339:
  if (v32)
  {
LABEL_340:
    CSrabin_free(v32);
  }

  if (v30)
  {
    free(v30);
  }

  if (v33)
  {
    _ClearSourceChunk(v21);
  }

  if (*(v21 + 181) == 1)
  {
    v118 = v21;
    v119 = v3;
    v120 = v4;
    v121 = *(v118 + 256);
    v123 = *(v121 + 12);
    v122 = *(v121 + 16);
    v124 = *(v118 + 448);
    v125 = *(v118 + 456);
    v127 = *(v118 + 432);
    v126 = *(v118 + 440);
    pthread_mutex_lock((v118 + 360));
    v128 = getenv("CK_CHUNK_COUNT");
    if (v128)
    {
      v129 = strtoll(v128, 0, 0);
    }

    else
    {
      v129 = 0;
    }

    bzero(buf, 0x400uLL);
    __sprintf_chk(buf, 0, 0x400uLL, "%llu", v129 + v126);
    setenv("CK_CHUNK_COUNT", buf, 1);
    v130 = getenv("CK_STORED_CHUNK_COUNT");
    if (v130)
    {
      v130 = strtoll(v130, 0, 0);
    }

    __sprintf_chk(buf, 0, 0x400uLL, "%llu", &v130[v125]);
    setenv("CK_STORED_CHUNK_COUNT", buf, 1);
    v131 = getenv("CK_STORED_SIZE");
    if (v131)
    {
      v131 = strtoll(v131, 0, 0);
    }

    __sprintf_chk(buf, 0, 0x400uLL, "%llu", &v131[v127]);
    setenv("CK_STORED_SIZE", buf, 1);
    v132 = getenv("CK_HARD_BREAK_COUNT");
    if (v132)
    {
      v132 = strtoll(v132, 0, 0);
    }

    v4 = v120;
    __sprintf_chk(buf, 0, 0x400uLL, "%llu", &v132[v124]);
    setenv("CK_HARD_BREAK_COUNT", buf, 1);
    __sprintf_chk(buf, 0, 0x400uLL, "%d", v123);
    setenv("CK_CHUNK_TMIN", buf, 1);
    __sprintf_chk(buf, 0, 0x400uLL, "%d", v122);
    setenv("CK_CHUNK_TMAX", buf, 1);
    pthread_mutex_unlock((v305 + 360));
    v3 = v119;
    v21 = v305;
  }

  if (*(v21 + 544))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_66();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v133 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\nBegin stats for %s\n\n%s\nEnd stats for %s\n", *(v21 + 104), *(v21 + 544), *(v21 + 104));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_67();
      }

      v134 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v133;
        _os_log_impl(&dword_243431000, v134, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v133)
      {
        CFRelease(v133);
      }
    }
  }

  v135 = *(v21 + 192);
  if (v135)
  {
    v136 = CKFileSignatureGeneratorFinish(v135);
    v137 = *(v21 + 192);
    if (v137)
    {
      CFRelease(v137);
    }

    *(v21 + 192) = 0;
    if (!v136)
    {
      v6 = 0xFFFFFFFFLL;
      goto LABEL_387;
    }
  }

  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_68();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v138 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Done chunking %s, rc:%d, chunkCount:%llu, itemID:%lld", v292, v6, *(v21 + 440), v289);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_69();
      }

      v139 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v138;
        _os_log_impl(&dword_243431000, v139, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v138)
      {
        CFRelease(v138);
      }
    }
  }

  if (v6)
  {
LABEL_387:
    a2 = v298;
    v5 = v300;
    if (!v298)
    {
      goto LABEL_389;
    }

    goto LABEL_388;
  }

  v140 = *(v21 + 8);
  v141 = *(v21 + 16);
  v142 = CKChunkDigestArgumentsChunkEncryptionKeyScheme(*(v21 + 152));
  if (*(v21 + 176))
  {
    goto LABEL_384;
  }

  v143 = v142;
  v302 = *(v21 + 104);
  v144 = *(v21 + 24);
  v145 = *(v21 + 40);
  v148 = v21 + 80;
  v147 = *(v21 + 80);
  v146 = *(v148 + 8);
  if (getenv("CS_DISABLE_CL_CACHE"))
  {
    goto LABEL_384;
  }

  v313 = 0;
  *buf = 0u;
  v312 = 0u;
  if (((*(v141 + 64))(v140, buf, 0) & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_70();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_384;
    }

    v151 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed for %s, ino:%llu\n", v302, v145);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_71();
    }

    v155 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *v314 = 138543362;
      *&v314[4] = v151;
LABEL_412:
      v153 = v155;
      v154 = OS_LOG_TYPE_ERROR;
      goto LABEL_413;
    }

LABEL_414:
    if (v151)
    {
      CFRelease(v151);
    }

    goto LABEL_384;
  }

  if (*buf <= 0x10000uLL)
  {
    goto LABEL_396;
  }

  if (BYTE8(v312) != 1)
  {
    goto LABEL_384;
  }

  if (v147 != *buf || v146 != v312 || v144 != HIDWORD(v312))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_72();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v163 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s changed, mtime:%llu/%llu, sz:%llu/%llu, generation:%u/%u\n", v302, v146, v312, v147, *buf, v144, HIDWORD(v312));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_73();
      }

      v164 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *v314 = 138543362;
        *&v314[4] = v163;
        _os_log_impl(&dword_243431000, v164, OS_LOG_TYPE_DEBUG, "%{public}@", v314, 0xCu);
      }

      if (v163)
      {
        CFRelease(v163);
      }
    }

LABEL_396:
    if (setCacheBlob(v305, "com.apple.cscache", 0))
    {
      goto LABEL_384;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_88();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_384;
    }

    v151 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Removed chunk list cache for %s, sz:%llu ino:%llu, mtime:%llu, generation:%u\n", v302, v147, v145, v146, v144);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_89();
    }

    v152 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *v314 = 138543362;
      *&v314[4] = v151;
      v153 = v152;
      v154 = OS_LOG_TYPE_DEBUG;
LABEL_413:
      _os_log_impl(&dword_243431000, v153, v154, "%{public}@", v314, 0xCu);
      goto LABEL_414;
    }

    goto LABEL_414;
  }

  if (!*(v305 + 264) || !*(v305 + 272))
  {
    v165 = *(v305 + 272);
    v166 = *(v305 + 264);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_86();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_384;
    }

    v151 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk array, chunkArray:%p, chunkCount:%llu\n", v166, v165);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_87();
    }

    v155 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *v314 = 138543362;
      *&v314[4] = v151;
      goto LABEL_412;
    }

    goto LABEL_414;
  }

  v299 = *(v305 + 264);
  v293 = *(v305 + 272);
  v281 = *(v305 + 179);
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_74();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v156 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Storing cache %s for %s, scheme:0x%x, ino:%llu, chunkCount:%llu, mtime:%llu, generation:%u, registering:%u\n", "com.apple.cscache", v302, v143, v145, v293, v146, v144, v281);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_75();
      }

      v157 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *v314 = 138543362;
        *&v314[4] = v156;
        _os_log_impl(&dword_243431000, v157, OS_LOG_TYPE_DEBUG, "%{public}@", v314, 0xCu);
      }

      if (v156)
      {
        CFRelease(v156);
      }
    }
  }

  v158 = *(v305 + 208);
  if (v158)
  {
    v159 = CKFileDigestResultsFileSignature(v158);
    v160 = CKFileSignatureCopy(v159);
    if (!v160)
    {
      chunkItem_cold_77();
    }

    v161 = v160;
    v162 = CKFileSchemeAndSignatureSize(v160);
    if (v162 >= 0x10000)
    {
      chunkItem_cold_76();
    }
  }

  else
  {
    v161 = 0;
    v162 = 0;
  }

  __srcb = v161;
  v188 = 35;
  if (!v281)
  {
    v188 = 84;
  }

  v297 = v188;
  v189 = CKChunkSchemeSignatureAndKeySize((v299 + v188));
  v190 = v189;
  v191 = v189 + 4;
  if (v189 + 4 >= 0x10000)
  {
    chunkItem_cold_85();
  }

  v274 = v189 + 4;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_78();
    }

    v192 = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG);
    v191 = v274;
    if (v192)
    {
      v193 = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG);
      v191 = v274;
      if (v193)
      {
        v290 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"fileSignatureSize:%u, chunkInfoSize:%u, chunkInfoCount:%u", v162, v274, v293);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_79();
        }

        v194 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          *v314 = 138543362;
          *&v314[4] = v290;
          _os_log_impl(&dword_243431000, v194, OS_LOG_TYPE_DEBUG, "%{public}@", v314, 0xCu);
        }

        v191 = v274;
        if (v290)
        {
          CFRelease(v290);
          v191 = v274;
        }
      }
    }
  }

  v195 = (v162 + 57);
  if (v191 < 5 || ((v191 * v293) & 0xFFFFFFFF00000000) != 0 || __CFADD__(v191 * v293, v195))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_83();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v196 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid size/count: 0x%x/0x%x/0x%x\n", v195, v274, v293);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_84();
      }

      v197 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *v314 = 138543362;
        *&v314[4] = v196;
        _os_log_impl(&dword_243431000, v197, OS_LOG_TYPE_ERROR, "%{public}@", v314, 0xCu);
      }

      if (v196)
      {
LABEL_571:
        CFRelease(v196);
      }
    }
  }

  else
  {
    lengthb = v191 * v293 + v195;
    Mutable = CFDataCreateMutable(0, lengthb);
    if (Mutable)
    {
      v199 = Mutable;
      v277 = v4;
      CFDataSetLength(Mutable, lengthb);
      __dstb = v199;
      v200 = CFDataGetMutableBytePtr(v199);
      v201 = v200;
      *(v200 + 1) = 0u;
      *(v200 + 2) = 0u;
      *(v200 + 42) = 0u;
      *v200 = 0u;
      *(v200 + 21) = v144;
      *(v200 + 25) = v146;
      *(v200 + 33) = v145;
      *(v200 + 41) = v147;
      v202 = v162;
      *(v200 + 49) = v162;
      *(v200 + 51) = v274;
      *(v200 + 53) = v293;
      if (v162)
      {
        memcpy(v200 + 57, __srcb, v162);
      }

      v203 = 0;
      v291 = *(v305 + 308);
      v288 = v190;
      v204 = 80;
      if (v281)
      {
        v204 = 24;
      }

      v282 = v204;
      v205 = v202 - lengthb + 57;
      v206 = &v201[v202 + 61];
      v207 = v293;
      do
      {
        v208 = v299 + v203;
        *(v206 - 1) = *(v208 + v282);
        memcpy(v206, (v208 + v297), v288);
        v203 += v291;
        v205 += v274;
        v206 += v274;
        --v207;
      }

      while (v207);
      if (v205)
      {
        chunkItem_cold_80();
      }

      if (!setChunkListCacheBlob(v305, __dstb))
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_81();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          v209 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Stored chunk list cache for %s, chunkCount:%llu, blobSize:%u, sz:%llu, ino:%llu, mtime:%llu, generation:%u\n", v302, v293, lengthb, v147, v145, v146, v144);
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_82();
          }

          v210 = CK_DEFAULT_LOG_INTERNAL_0;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            *v314 = 138543362;
            *&v314[4] = v209;
            _os_log_impl(&dword_243431000, v210, OS_LOG_TYPE_DEBUG, "%{public}@", v314, 0xCu);
          }

          if (v209)
          {
            CFRelease(v209);
          }
        }
      }

      v4 = v277;
      v196 = __dstb;
      goto LABEL_571;
    }
  }

  if (__srcb)
  {
    free(__srcb);
  }

LABEL_384:
  v6 = 0;
LABEL_385:
  v5 = v300;
LABEL_389:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_391:
  freeChunkListCacheInfo(v5);
  v149 = *(v3 + 40);
  if (v149)
  {
    v149(v4);
  }

  return v6;
}