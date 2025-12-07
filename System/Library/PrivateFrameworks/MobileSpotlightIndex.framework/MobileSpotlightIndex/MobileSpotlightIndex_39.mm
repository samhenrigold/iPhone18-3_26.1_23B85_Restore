uint64_t oidPathDepthFromBundleIDUniqueID(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  result = 0;
  v56 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    return result;
  }

  v7 = v2;
  if (!v2)
  {
    return result;
  }

  v8 = v3;
  v9 = v1;
  v42 = -1;
  if (CFStringHasSuffix(v2, @"NSFileProviderRootContainerItemIdentifier"))
  {
    v10 = 2;
    v42 = 2;
  }

  else
  {
    si_get_object_for_identifier_createParentDBO(*v5, v9, v7, 0, 0, &v42, 0, 1);
    si_indexDeleteDeferredItemsIfItemIncluded(*v5, v42);
    v10 = v42;
  }

  v11 = *v5;
  v12 = *(*v5 + 6624);
  if (v12)
  {
    v13 = v10 == -1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    return 0;
  }

  bzero(__src, 0x1000uLL);
  *v8 = v10;
  Path = directoryStoreGetPath(v12, v10, __src);
  LODWORD(v15) = Path;
  if (!Path)
  {
    v44 = 0;
    if (db_get_obj(*(v11 + 1192), v42, &v44, 0))
    {
      goto LABEL_18;
    }

    v16 = 0;
    v17 = 0;
    LODWORD(v15) = 0;
    v18 = v44;
    v19 = v44[3];
    while (1)
    {
      v43 = 0;
      if (db_get_obj(*(v11 + 1192), v19, &v43, 0))
      {
        free(v18);
        v18 = 0;
        if (!v16)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v16 = v43[3];
        if (v19 != 2 && v16 <= 0)
        {
          v22 = *__error();
          v23 = _SILogForLogForCategory(4);
          v24 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v23, v24))
          {
            v25 = *__error();
            v26 = *v44;
            *buf = 67110144;
            v47 = v25;
            v48 = 1024;
            v49 = 250;
            v50 = 2048;
            v51 = v26;
            v52 = 2048;
            v53 = v19;
            v54 = 2048;
            v55 = v16;
            _os_log_impl(&dword_1C278D000, v23, v24, "lookupPathByDBO error:%d at:%d in_oid:%lld oid:%lld parent:%lld", buf, 0x2Cu);
          }

          *__error() = v22;
        }

        free(v18);
        v18 = v43;
        if (!v16)
        {
LABEL_33:
          v21 = 0;
          v15 = v17;
          if (v17)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }
      }

      v20 = v17 + 1;
      __src[v17] = v16;
      if (v16 == 2)
      {
        v21 = 1;
        v17 = v17 + 1;
        v15 = v20;
        if (v20)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v27 = directoryStoreWriterGetPath(*(v11 + 6624), v16, &__src[v20]);
        v21 = v27 == 0;
        if (v27)
        {
          v15 = (v27 + v20);
        }

        else
        {
          v15 = v15;
        }

        v17 = v17 + 1;
        if (v15)
        {
LABEL_39:
          v28 = 0;
          do
          {
            v29 = __src[v28];
            if (v29 <= 0)
            {
              v31 = __si_assert_copy_extra_332();
              v39 = v31;
              v40 = "";
              if (v31)
              {
                v40 = v31;
              }

              __message_assert_2932(v31, v32, v33, v34, v35, v36, v37, v38, "SIFileProvidersPSIDSupport.c", 276, "newpath[i] > 0", v40, v28, v29, v15);
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

            ++v28;
          }

          while (v15 != v28);
        }
      }

LABEL_42:
      v30 = v16 != 2 && v21;
      if (v30)
      {
        v19 = v16;
        if (v17 < 512)
        {
          continue;
        }
      }

      if (v18)
      {
        free(v18);
      }

      if (!v30)
      {
        if (!v15)
        {
          return (v15 + 1);
        }

        break;
      }

LABEL_18:
      LODWORD(v15) = 0;
      return (v15 + 1);
    }
  }

  if (v15 >= 1)
  {
    memcpy(v8 + 1, __src, 8 * v15);
  }

  if (v8[v15] != 2)
  {
    v15 = v15 + 1;
    v8[v15] = 2;
  }

  return (v15 + 1);
}

void __message_assert_2932(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v13 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, "%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v8 = xpc_string_create(string[0]);
  values = v8;
  v9 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v9);
  xpc_release(v8);
  free(string[0]);
}

uint64_t pushMove(void *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (a1 + 1);
    v6 = a1[1];
    v7 = a1 + 2;
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[3];
      if (*v6 == -1)
      {
        if (v8 + 8 <= v9)
        {
          v15 = v6[1];
          v6[v15 + 2] = a2;
          v6[1] = v15 + 1;
          v14 = 8;
          goto LABEL_13;
        }
      }

      else if (v8 + 24 <= v9)
      {
        if (&v4[v8] != &v6[v6[1] + 2])
        {
          __assert_rtn("pushMove", "MoveHolder.c", 26, "holder->count==0 || holder->count + holder->data == ((char*)current) + sizeof(PossibleFileMoves_t)+sizeof(oid_t)*current->count");
        }

        goto LABEL_12;
      }

      return 0;
    }

    v11 = a1[3];
  }

  else
  {
    v10 = MEMORY[0x1E69E9AC8];
    v4 = mmap(0, 16 * *MEMORY[0x1E69E9AC8], 3, 4098, 0, 0);
    *a1 = v4;
    v11 = 16 * *v10;
    a1[3] = v11;
    a1[2] = 0;
    v7 = a1 + 2;
    a1[1] = v4;
    v5 = (a1 + 1);
  }

  if (v11 < 0x18)
  {
    return 0;
  }

  v8 = 0;
LABEL_12:
  v13 = &v4[v8];
  *v5 = v13;
  *(v13 + 2) = a2;
  *v13 = xmmword_1C2BFA3D0;
  v14 = 24;
LABEL_13:
  *v7 += v14;
  return 1;
}

uint64_t _CICreateNew(uint64_t a1, const __CFString *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, const void *a10, int a11)
{
  v13 = a6;
  v14 = a5;
  *&v37[1023] = *MEMORY[0x1E69E9840];
  bzero(v37, 0x3FFuLL);
  v35 = 0;
  buffer = 0;
  v19 = copyVolumeInfoStr(a1);
  if (CFStringGetFileSystemRepresentation(a2, &buffer, 1024))
  {
    v20 = createIndex(a1, &buffer, a3, v19, v14, 0, v13, &v35, a7, a8, a9, a10, a11);
    v22 = v20;
    if (v20)
    {
      *(v20 + 40) = a4;
      if (a3 && *(v20 + 80) != a3)
      {
        v24 = __si_assert_copy_extra_332();
        v32 = v24;
        v33 = "";
        if (v24)
        {
          v33 = v24;
        }

        __message_assert_336(v24, v25, v26, v27, v28, v29, v30, v31, "ContentIndex.c", 107, "(!baseId) || newIndex->base==baseId", v33);
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

      if (g_fd_list)
      {
        _fd_close_inactive(*(v20 + 64), (v20 + 15208), 0, 0, v21);
      }
    }
  }

  else
  {
    v22 = 0;
  }

  free(v19);
  return v22;
}

uint64_t indexUpdateHeader(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v21 = *MEMORY[0x1E69E9840];
  bzero(v20, 0x400uLL);
  bzero(&v18, 0x1000uLL);
  snprintf(v20, 0x400uLL, "%sindexHead", v10);
  v13 = fd_create_protected(v12, v20, 536870914, 3u);
  v14 = v13;
  if (!v13 || fd_pread(v13, &v18, 0x1000uLL, 0) != 4096)
  {
LABEL_9:
    v16 = *__error();
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      v15 = 0xFFFFFFFFLL;
    }

    goto LABEL_12;
  }

  if (v18 == v8 || (v15 = 22, v18 >= v6) && v18 <= v4)
  {
    if (v19 == v2 || (v18 = v8, v19 = v2, fd_pwrite(v14, &v18, 0x1000uLL, 0) == 4096))
    {
      v15 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_12:
  fd_release(v14);
  return v15;
}

void _CIIndexSetRemoveAllValues(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      v2 = 0;
      do
      {
        freeIndex(*(*result + 8 * v2));
        *(*result + 8 * v2++) = 0;
      }

      while (v2 < *(result + 8));
    }

    *(result + 8) = 0;
    *(result + 16) = -1;
  }
}

uint64_t _ContentIndexSyncIndexBulk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v97 = *MEMORY[0x1E69E9840];
  v9 = *(a6 + 48);
  *&buf[32] = *(a6 + 32);
  v93 = v9;
  *&v94 = *(a6 + 64);
  v10 = *(a6 + 16);
  *buf = *a6;
  *&buf[16] = v10;
  v11 = _CISyncContextCreate(a1, a2, a3, a4, a5, buf, a7, a8, a9);
  v12 = *(v11 + 42);
  v13 = v12 != 0;
  if (v12)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v47 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1613;
      *&buf[18] = 1024;
      *&buf[20] = v47;
      _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: Sync context init error: %d", buf, 0x18u);
    }

    *__error() = v14;
  }

  _CISyncContextSync(v11, 0);
  if (!v12 && *(v11 + 42))
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v56 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1621;
      *&buf[18] = 1024;
      *&buf[20] = v56;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Sync sync error: %d", buf, 0x18u);
    }

    *__error() = v16;
    v13 = 1;
  }

  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  _CISyncContextCommitData(v11, 0, &v71);
  if (!v13 && *(v11 + 42))
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v57 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1632;
      *&buf[18] = 1024;
      *&buf[20] = v57;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Sync commit error: %d", buf, 0x18u);
    }

    *__error() = v18;
    v13 = 1;
  }

  _CISyncContextCommitHeader(v11);
  v20 = *(v11 + 42);
  if (!v13 && v20)
  {
    v21 = *__error();
    v22 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v58 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1640;
      *&buf[18] = 1024;
      *&buf[20] = v58;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: Sync commit error: %d", buf, 0x18u);
    }

    *__error() = v21;
    v20 = *(v11 + 42);
    v13 = 1;
  }

  if (v20)
  {
LABEL_21:
    if (v20)
    {
      v23 = v13;
    }

    else
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      v24 = *__error();
      v25 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v59 = *(v11 + 42);
        *buf = 136315650;
        *&buf[4] = "_ContentIndexSyncIndexBulk";
        *&buf[12] = 1024;
        *&buf[14] = 1654;
        *&buf[18] = 1024;
        *&buf[20] = v59;
        _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: Sync retire error: %d", buf, 0x18u);
      }

      *__error() = v24;
      v20 = *(v11 + 42);
      v13 = 1;
    }

    if (v20)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  v28 = v11[9];
  if (v28 && CIDocCountsNonEmpty(&v71))
  {
    v29 = v11[10];
    v94 = v75;
    v95 = v76;
    v96 = v77;
    *buf = v71;
    *&buf[16] = v72;
    *&buf[32] = v73;
    v93 = v74;
    v30 = v28(v29, buf);
    if (v30)
    {
      v20 = v30;
      v31 = *__error();
      v32 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "_ContentIndexSyncIndexBulk";
        *&buf[12] = 1024;
        *&buf[14] = 1648;
        *&buf[18] = 1024;
        *&buf[20] = v20;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: Got error %d passing sync counts to journals", buf, 0x18u);
      }

      *__error() = v31;
      *(v11 + 42) = v20;
    }

    else
    {
      v20 = *(v11 + 42);
    }

    goto LABEL_21;
  }

LABEL_40:
  if (*(v11 + 100) != 1)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v33 = *(v11 + 34);
  v34 = v11[6];
  v67 = v11[8];
  v68 = v11[9];
  v35 = v11[19];
  v36 = v11[10];
  v37 = v11[18];
  v69 = *v11;
  v70 = v11[7];
  v38 = v11[16];
  v91 = 0;
  v39 = 0uLL;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  if (v34)
  {
    v40 = v34(v36);
    if (v40)
    {
      v20 = v40;
      if (v40 == 89)
      {
LABEL_44:
        v20 = 89;
        *(v11 + 42) = 89;
        goto LABEL_29;
      }

      v43 = *__error();
      v44 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v65 = *__error();
      *buf = 136315906;
      *&buf[4] = "indexShadowAndCommitBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1290;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      *&buf[24] = 1024;
      *&buf[26] = v65;
      v46 = "%s:%d: preShadow error:%d %d";
LABEL_82:
      v62 = v44;
      v63 = 30;
      goto LABEL_83;
    }
  }

  v66 = v36;
  v20 = _indexShadowBulk(v39);
  if (v20)
  {
    goto LABEL_73;
  }

  if (v70)
  {
    v42 = v70(v36);
    if (v42)
    {
      v20 = v42;
      if (v42 == 89)
      {
        goto LABEL_44;
      }

      v43 = *__error();
      v44 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v45 = *__error();
      *buf = 136315906;
      *&buf[4] = "indexShadowAndCommitBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1307;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      *&buf[24] = 1024;
      *&buf[26] = v45;
      v46 = "%s:%d: postShadow error:%d %d";
      goto LABEL_82;
    }
  }

  v82 = v89;
  v83 = v90;
  v84 = v91;
  v78 = v85;
  v79 = v86;
  v80 = v87;
  v81 = v88;
  if (!v33)
  {
LABEL_64:
    if (v67)
    {
      v67(v66);
    }

    if (v68 && CIDocCountsNonEmpty(&v78))
    {
      v94 = v82;
      v95 = v83;
      v96 = v84;
      *buf = v78;
      *&buf[16] = v79;
      *&buf[32] = v80;
      v93 = v81;
      v68(v66, buf);
    }

    if (v69 && *(v69 + 8) && (*(v69 + 88) & 1) == 0)
    {
      ++*(v69 + 36);
      *(v69 + 48) = v38;
      v20 = _CIMetaInfoSync(v69, gTerminating == 0);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_73;
  }

  v48 = 0;
  v49 = 0;
  v50 = v33 << 12;
  while (1)
  {
    v51 = *v37;
    v52 = atomic_load((*v37 + 32));
    if (v52 != -1073623027)
    {
      break;
    }

LABEL_61:
    v48 += 4096;
    ++v37;
    if (v50 == v48)
    {
      if (v49)
      {
        fd_sync(v49, 1);
      }

      goto LABEL_64;
    }
  }

  v53 = indexCommitShadow(*v37, (v35 + (v48 & 0xFFFFF000)));
  if (!v53)
  {
    v49 = *(v51 + 14472);
    goto LABEL_61;
  }

  v20 = v53;
  v43 = *__error();
  v61 = _SILogForLogForCategory(0);
  if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_54;
  }

  *buf = 136315906;
  *&buf[4] = "_indexCommitShadowBulk";
  *&buf[12] = 1024;
  *&buf[14] = 1251;
  *&buf[18] = 1024;
  *&buf[20] = v20;
  *&buf[24] = 2080;
  *&buf[26] = v51 + 15208;
  v46 = "%s:%d: indexCommitShadow error: %d, %s";
  v62 = v61;
  v63 = 34;
LABEL_83:
  _os_log_error_impl(&dword_1C278D000, v62, OS_LOG_TYPE_ERROR, v46, buf, v63);
LABEL_54:
  *__error() = v43;
LABEL_73:
  *(v11 + 42) = v20;
  if (v20 && v20 != 89)
  {
    v54 = *__error();
    v55 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v64 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_CISyncContextShadow";
      *&buf[12] = 1024;
      *&buf[14] = 1597;
      *&buf[18] = 1024;
      *&buf[20] = v64;
      _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, "%s:%d: indexShadowAndCommitBulk error:%d", buf, 0x18u);
    }

    *__error() = v54;
    v20 = *(v11 + 42);
  }

LABEL_29:
  if (!v13 && v20)
  {
    v26 = *__error();
    v27 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v60 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1664;
      *&buf[18] = 1024;
      *&buf[20] = v60;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Sync shadow error: %d", buf, 0x18u);
    }

    *__error() = v26;
  }

LABEL_46:
  _CISyncContextDestroy(v11);
  return v20;
}

void *_CISyncContextCreate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v14 = *(a2 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (a3)
  {
    v15 = *(a3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10B004080226B0FuLL);
  v17 = malloc_type_calloc((v15 + v14), 8uLL, 0x2004093837F09uLL);
  v16[18] = v17;
  *v16 = a1;
  *(v16 + 2) = a4;
  *(v16 + 100) = a5;
  v18 = *(a6 + 64);
  v20 = *(a6 + 32);
  v19 = *(a6 + 48);
  *(v16 + 2) = *(a6 + 16);
  *(v16 + 3) = v20;
  *(v16 + 4) = v19;
  v16[10] = v18;
  *(v16 + 1) = *a6;
  v16[11] = a7;
  v16[14] = a8;
  v16[15] = a9;
  *(v16 + 32) = v14;
  *(v16 + 33) = v15;
  v21 = GatherAndLockIndexes(a2, a3, v17, v16 + 34);
  *(v16 + 42) = v21;
  if (!v21)
  {
    v16[20] = malloc_type_calloc(*(v16 + 34), 1uLL, 0x100004077774924uLL);
    v16[19] = malloc_type_calloc(*(v16 + 34), 0x1000uLL, 0x31084C0EuLL);
  }

  return v16;
}

uint64_t _CISyncContextSync(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168))
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      *__error() = v3;
      return *(a1 + 168);
    }

    v41 = *(a1 + 168);
    *buf = 136315650;
    *&buf[4] = "_CISyncContextSync";
    *&buf[12] = 1024;
    *&buf[14] = 1420;
    *&buf[18] = 1024;
    *&buf[20] = v41;
    v35 = "%s:%d: pre-error:%d";
    goto LABEL_49;
  }

  v6 = *(a1 + 136);
  v46 = *(a1 + 16);
  v47 = *(a1 + 80);
  v48 = *(a1 + 32);
  v7 = *(a1 + 144);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = v7[i];
      pthread_mutex_lock((v9 + 14504));
      HIDWORD(v11) = qos_class_self() - 9;
      LODWORD(v11) = HIDWORD(v11);
      v10 = v11 >> 2;
      if (v10 > 6)
      {
        v12 = 0;
      }

      else
      {
        v12 = dword_1C2BFF8F0[v10];
      }

      if (*(v9 + 14688))
      {
        goto LABEL_11;
      }

      if (!*(v9 + 14700) && *(v9 + 14716) != 1)
      {
        goto LABEL_25;
      }

      v13 = v12 <= 5 ? 5 : v12;
      v14 = (v9 + 16 * v12 + 14584);
      v15 = v13 - v12 + 1;
      while (--v15)
      {
        v16 = *v14;
        v14 += 2;
        if (v16)
        {
          goto LABEL_11;
        }
      }

      if (*(v9 + 14568 + 16 * v12) && !*(v9 + 14704))
      {
LABEL_11:
        db_rwlock_wait(v9 + 14504, v12, 5);
      }

      else
      {
LABEL_25:
        *(v9 + 14700) = vadd_s32(*(v9 + 14700), 0x100000001);
      }

      pthread_mutex_unlock((v9 + 14504));
    }
  }

  *(a1 + 99) = 1;
  v17 = indexPrepareForSyncBulk(v6, v7, *(a1 + 88), *(a1 + 8), *(a1 + 112), *(a1 + 120));
  *(a1 + 168) = v17;
  if (v17 != 89)
  {
    if (v17)
    {
      v3 = *__error();
      v4 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v38 = *(a1 + 168);
      *buf = 136315650;
      *&buf[4] = "_CISyncContextSync";
      *&buf[12] = 1024;
      *&buf[14] = 1438;
      *&buf[18] = 1024;
      *&buf[20] = v38;
      v35 = "%s:%d: indexPrepareForSyncBulk error:%d";
      goto LABEL_49;
    }

    if (v6)
    {
      v18 = v7;
      v19 = v6;
      do
      {
        v20 = *v18++;
        db_read_lock(v20 + 4696);
        --v19;
      }

      while (v19);
    }

    *(a1 + 98) = 1;
    if (v46)
    {
      v46(v47);
    }

    *(a1 + 97) = 1;
    if (v48)
    {
      v21 = 0;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      if ((*(a1 + 8) & 6) == 0 && v6)
      {
        v21 = 0;
        v28 = v7;
        v29 = v6;
        do
        {
          v30 = *v28++;
          v25 = vaddq_s64(*(v30 + 14984), v25);
          v22 = vaddq_s64(*(v30 + 14936), v22);
          v24 = vaddq_s64(*(v30 + 14968), v24);
          v23 = vaddq_s64(*(v30 + 14952), v23);
          v26 = vaddq_s64(*(v30 + 15000), v26);
          v27 = vaddq_s64(*(v30 + 15016), v27);
          v21 += *(v30 + 15032);
          --v29;
        }

        while (v29);
      }

      *buf = v22;
      *&buf[16] = v23;
      v51 = v24;
      v52 = v25;
      v53 = v26;
      v54 = v27;
      v55 = v21;
      v31 = v48(v47, a1 + 104, buf);
      *(a1 + 168) = v31;
      if (v31)
      {
        if (v31 == 89)
        {
          return *(a1 + 168);
        }

        v3 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_3;
        }

        v33 = *(a1 + 168);
        v34 = *__error();
        *buf = 136315906;
        *&buf[4] = "_CISyncContextSync";
        *&buf[12] = 1024;
        *&buf[14] = 1467;
        *&buf[18] = 1024;
        *&buf[20] = v33;
        *&buf[24] = 1024;
        *&buf[26] = v34;
        v35 = "%s:%d: preSync error:%d %d";
        v36 = v32;
        v37 = 30;
        goto LABEL_50;
      }
    }

    v49 = 0;
    v39 = indexPerformSyncBulk(v6, v7, *(a1 + 88), *(a1 + 8), &v49);
    *(a1 + 168) = v39;
    if (v39)
    {
      if (v39 == 89)
      {
        return *(a1 + 168);
      }

      v3 = *__error();
      v4 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v40 = *(a1 + 168);
      *buf = 136315650;
      *&buf[4] = "_CISyncContextSync";
      *&buf[12] = 1024;
      *&buf[14] = 1478;
      *&buf[18] = 1024;
      *&buf[20] = v40;
      v35 = "%s:%d: indexPerformSyncBulk error:%d";
LABEL_49:
      v36 = v4;
      v37 = 24;
LABEL_50:
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
      goto LABEL_3;
    }

    if (a2)
    {
      *a2 = v49;
    }

    else if (v49)
    {
      fd_sync(v49, 1);
    }

    v42 = *(a1 + 8);
    if ((v42 & 4) == 0)
    {
      if ((v42 & 2) != 0 || !v6)
      {
LABEL_61:
        if ((v42 & 2) == 0)
        {
          if (!gTerminating && !*(a1 + 168))
          {
            *(a1 + 100) = 1;
          }

          return *(a1 + 168);
        }
      }

      else
      {
        v43 = v6;
        v44 = v7;
        while (!*(*v44 + 15196))
        {
          ++v44;
          if (!--v43)
          {
            goto LABEL_61;
          }
        }
      }

      if (v6)
      {
        do
        {
          if (!*(*v7 + 15196))
          {
            *(*v7 + 15196) = 1;
          }

          ++v7;
          --v6;
        }

        while (v6);
      }

      *(a1 + 168) = 0;
    }
  }

  return *(a1 + 168);
}

uint64_t _CISyncContextCommitData(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a1 + 42))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      *__error() = v4;
      return *(a1 + 42);
    }

    v42 = *(a1 + 42);
    *buf = 136315650;
    *&buf[4] = "_CISyncContextCommitData";
    v65 = 1024;
    *v66 = 1527;
    *&v66[4] = 1024;
    *&v66[6] = v42;
    v14 = "%s:%d: pre-error:%d";
LABEL_62:
    v15 = v5;
    v16 = 24;
LABEL_63:
    _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_3;
  }

  v58 = *(a1 + 34);
  v9 = a1[5];
  v61 = a1[18];
  if (v9)
  {
    v10 = v9(a1[10], (a1[1] & 6) != 0);
    *(a1 + 42) = v10;
    if (v10)
    {
      if (v10 == 89)
      {
        return *(a1 + 42);
      }

      v4 = *__error();
      v11 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v12 = *(a1 + 42);
      v13 = *__error();
      *buf = 136315906;
      *&buf[4] = "_CISyncContextCommitData";
      v65 = 1024;
      *v66 = 1540;
      *&v66[4] = 1024;
      *&v66[6] = v12;
      *&v66[10] = 1024;
      *&v66[12] = v13;
      v14 = "%s:%d: postSync error:%d %d";
      v15 = v11;
      v16 = 30;
      goto LABEL_63;
    }
  }

  v17 = *a1;
  v18 = a1[16];
  v62 = *(a1 + 2);
  if (*(a1 + 26))
  {
    v19 = 1;
  }

  else
  {
    v19 = (a1[1] & 6) == 0;
  }

  if (!v58)
  {
    v21 = 0;
    if (v17)
    {
      goto LABEL_65;
    }

    goto LABEL_69;
  }

  v57 = v19;
  v55 = a2;
  v20 = 0;
  v21 = 0;
  v59 = a1[19];
  v60 = a1[20];
  v22 = v58;
  do
  {
    v23 = *(v61 + 8 * v20);
    if ((v62 & 1) == 0)
    {
      v24 = atomic_load((v23 + 32));
      if (v24 == -1073623027)
      {
        if (!CIDocCountsNonEmpty((v23 + 14936)))
        {
          v25 = atomic_load((v23 + 36));
          if ((v25 & 1) == 0 || (v26 = atomic_load((v23 + 36)), (v26 & 2) != 0))
          {
            if (*(v60 + v20))
            {
              v43 = __si_assert_copy_extra_332();
              v51 = v43;
              v52 = "";
              if (v43)
              {
                v52 = v43;
              }

              __message_assert_336(v43, v44, v45, v46, v47, v48, v49, v50, "ContentIndex.c", 1151, "io_state[i]==0", v52);
              free(v51);
              if (__valid_fs(-1))
              {
                v53 = 2989;
              }

              else
              {
                v53 = 3072;
              }

              *v53 = -559038737;
              abort();
            }

            goto LABEL_46;
          }
        }
      }

      else
      {
        v27 = atomic_load((v23 + 32));
        if ((v62 & 6) != 0 && v27 == 2)
        {
          goto LABEL_46;
        }
      }
    }

    if (v17)
    {
      *(v23 + 48) = *(v17 + 32) + 1;
      v57 = 1;
    }

    if ((*(v23 + 15203) & 1) != 0 || *(v23 + 8) != 1 || (v28 = *(v23 + 15196), v28 == -1))
    {
      v37 = *__error();
      v38 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "indexCommitSync";
        v65 = 1024;
        *v66 = 3062;
        *&v66[4] = 2080;
        *&v66[6] = v23 + 15208;
        _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: can't commit %s", buf, 0x1Cu);
      }

      *__error() = v37;
LABEL_54:
      v35 = -1;
LABEL_55:
      v39 = *__error();
      v40 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "indexCommitSyncBulk";
        v65 = 1024;
        *v66 = 1169;
        *&v66[4] = 1024;
        *&v66[6] = v35;
        *&v66[10] = 2080;
        *&v66[12] = v23 + 15208;
        _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: indexCommitSync error %d %s", buf, 0x22u);
      }

      *__error() = v39;
      *(a1 + 42) = -1;
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 42);
        *buf = 136315650;
        *&buf[4] = "_CISyncContextCommitData";
        v65 = 1024;
        *v66 = 1551;
        *&v66[4] = 1024;
        *&v66[6] = v41;
        v14 = "%s:%d: indexCommitSyncBulk error:%d";
        goto LABEL_62;
      }

      goto LABEL_3;
    }

    v63 = v59 + ((v20 & 0xFFFFF) << 12);
    if (dword_1EBF46AF4 >= 5)
    {
      v56 = *__error();
      log = _SILogForLogForCategory(10);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(v23 + 136);
        *buf = 134218242;
        *&buf[4] = v36;
        v65 = 2080;
        *v66 = v23 + 15208;
        _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "bases.size: %ld (%s)", buf, 0x16u);
      }

      *__error() = v56;
      v28 = *(v23 + 15196);
    }

    if ((v62 & 4) != 0 || v28 == 1)
    {
      atomic_store(2u, (v23 + 32));
    }

    else
    {
      atomic_store(0xD00D0DD0, (v23 + 32));
      if (a3)
      {
        v29 = *(a3 + 40);
        *(a3 + 48) += *(v23 + 14984);
        *(a3 + 24) = vaddq_s64(*(a3 + 24), *(v23 + 14960));
        *(a3 + 56) += *(v23 + 14992);
        *a3 = vaddq_s64(*a3, *(v23 + 14936));
        *(a3 + 40) = v29 + *(v23 + 14976);
        *(a3 + 16) += *(v23 + 14952);
        v30 = *(a3 + 80);
        *(a3 + 64) = vaddq_s64(*(a3 + 64), *(v23 + 15000));
        *(a3 + 80) = vaddq_s64(v30, *(v23 + 15016));
        *(a3 + 96) += *(v23 + 15032);
        *(v23 + 15032) = 0;
        *(v23 + 15000) = 0u;
        *(v23 + 15016) = 0u;
        *(v23 + 14968) = 0u;
        *(v23 + 14984) = 0u;
        *(v23 + 14936) = 0u;
        *(v23 + 14952) = 0u;
      }
    }

    indexStoreToBuffer(v23, &v63);
    v31 = *(v23 + 14480);
    if (v31)
    {
      v32 = fd_pwrite(*(v23 + 14480), v59 + ((v20 & 0xFFFFF) << 12), 0x1000uLL, 0);
      if (v32 == -1)
      {
        v35 = *__error();
        if (v35)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v32 != 4096)
        {
          goto LABEL_54;
        }

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
          v22 = v58;
        }

        *buf = 0;
        v33 = _fd_acquire_fd(v31, buf);
        if (v33 != -1)
        {
          v34 = v33;
          prot_fsync(v33, 0);
          _fd_release_fd(v31, v34, 0, *buf);
        }
      }
    }

    *(v60 + v20) |= 4u;
    v21 = *(v23 + 14472);
LABEL_46:
    ++v20;
  }

  while (v20 != v22);
  v19 = v57 != 0;
  a2 = v55;
  if (!v17)
  {
    goto LABEL_69;
  }

LABEL_65:
  if (v19 && *(v17 + 8) && (*(v17 + 88) & 1) == 0)
  {
    ++*(v17 + 32);
    *(v17 + 40) = v18;
    *(a1 + 101) = 1;
  }

LABEL_69:
  *(a1 + 42) = 0;
  if (a2)
  {
    *a2 = v21;
  }

  else if (v21)
  {
    fd_sync(v21, 1);
  }

  return *(a1 + 42);
}

uint64_t _CISyncContextCommitHeader(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 168);
      v6 = 136315650;
      v7 = "_CISyncContextCommitHeader";
      v8 = 1024;
      v9 = 1568;
      v10 = 1024;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: pre-error %d", &v6, 0x18u);
    }

    *__error() = v2;
    return *(a1 + 168);
  }

  else if (*(a1 + 101) == 1)
  {
    result = _CIMetaInfoSync(*a1, gTerminating == 0);
    *(a1 + 168) = result;
    *(a1 + 101) = 0;
  }

  else
  {
    return 0;
  }

  return result;
}

void _CISyncContextDestroy(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 136);
    v3 = *(a1 + 144);
    if (*(a1 + 97) == 1)
    {
      v4 = *(a1 + 24);
      if (v4)
      {
        v4(*(a1 + 80));
      }
    }

    v5 = (v2 - 1);
    if (v2 - 1 >= 0)
    {
      v6 = v5 + 1;
      v7 = (v3 + 8 * v5);
      do
      {
        if (!*(a1 + 168) && (*(*v7 + 8) & 1) == 0)
        {
          v8 = *__error();
          v9 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v21 = "_CISyncContextDestroy";
            v22 = 1024;
            v23 = 1371;
            _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: index invalid", buf, 0x12u);
          }

          *__error() = v8;
          *(a1 + 168) = -1;
        }

        if (*(a1 + 98) == 1)
        {
          v10 = *v7;
          pthread_mutex_lock((*v7 + 4696));
          v11 = *(v10 + 4892) - 1;
          *(v10 + 4892) = v11;
          if (!v11)
          {
            db_rwlock_wakeup(v10 + 4696, 0, 0);
          }

          pthread_mutex_unlock((v10 + 4696));
        }

        --v7;
        v12 = v6-- <= 1;
      }

      while (!v12);
      if (*(a1 + 99) == 1)
      {
        v13 = 8 * v5;
        do
        {
          v14 = *(v3 + v13);
          pthread_mutex_lock((v14 + 14504));
          v15 = vadd_s32(*(v14 + 14700), -1);
          *(v14 + 14700) = v15;
          if (!v15.i32[0])
          {
            db_rwlock_wakeup(v14 + 14504, 0, 0);
          }

          pthread_mutex_unlock((v14 + 14504));
          v13 -= 8;
        }

        while (v13 != -8);
      }

      v16 = *(a1 + 168);
      v17 = v5 + 1;
      v18 = (v3 + 8 * v5);
      do
      {
        if (v16)
        {
          if (v16 != 89)
          {
            *(*v18 + 8) = 0;
          }
        }

        v19 = *v18--;
        pthread_mutex_unlock((v19 + 15120));
        v12 = v17-- <= 1;
      }

      while (!v12);
    }

    free(*(a1 + 144));
    free(*(a1 + 152));
    free(*(a1 + 160));
    free(a1);
  }
}

uint64_t _indexShadowBulk(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v49 = v7;
  v72 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    return 0;
  }

  v8 = v6;
  v9 = v5;
  v10 = 0;
  v50 = v4;
  v11 = v4;
  v48 = v1 << 12;
  v12 = v2;
  v13 = v3;
  v14 = 0;
  while (1)
  {
    v15 = *v12;
    if (*v49 == 1)
    {
      return 89;
    }

    v16 = v14;
    if ((v11 & 1) == 0)
    {
      v17 = atomic_load((v15 + 32));
      if (v17 == -1073623027 && !*v13 && !CIDocCountsNonEmpty((v15 + 14936)))
      {
        v39 = v16;
        goto LABEL_24;
      }
    }

    if (*(v15 + 8) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

      goto LABEL_38;
    }

    v18 = v15;
    v46 = v13;
    v47 = v12;
    v51 = v16;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v20 = setThreadIdAndInfo(*(v15 + 64), sIndexExceptionCallbacks, v15, 0x20000000, add_explicit + 1);
    v54 = HIDWORD(v20);
    v55 = v20;
    v52 = v22;
    v53 = v21;
    v23 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
    *(v23 + 216) = 0;
    v45 = *(v23 + 312);
    v24 = *(v23 + 224);
    if (v24)
    {
      v24(*(v23 + 288));
    }

    if (_setjmp(v23))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v23 + 312) = v45;
      if ((~*(v23 + 212) & 0xA0000000) == 0)
      {
        v41 = *(v23 + 288);
        if (v41)
        {
          _CIMakeInvalid(v41);
        }
      }

      CIOnThreadCleanUpReset(v52);
      dropThreadId(v55, 1, add_explicit + 1);
      CICleanUpReset(v55, v53);
LABEL_38:
      v40 = 0xFFFFFFFFLL;
      goto LABEL_39;
    }

    v25 = (v9 + (v10 & 0xFFFFF000));
    if (v8)
    {
      v26 = *(v8 + 40);
      *(v8 + 48) += *(v15 + 14984);
      *(v8 + 24) = vaddq_s64(*(v8 + 24), *(v15 + 14960));
      *(v8 + 56) += *(v15 + 14992);
      *v8 = vaddq_s64(*v8, *(v15 + 14936));
      *(v8 + 40) = v26 + *(v15 + 14976);
      *(v8 + 16) += *(v15 + 14952);
      v27 = *(v8 + 80);
      *(v8 + 64) = vaddq_s64(*(v8 + 64), *(v15 + 15000));
      *(v8 + 80) = vaddq_s64(v27, *(v15 + 15016));
      *(v8 + 96) += *(v15 + 15032);
      *(v15 + 15032) = 0;
      *(v15 + 15000) = 0u;
      *(v15 + 15016) = 0u;
      *(v15 + 14968) = 0u;
      *(v15 + 14984) = 0u;
      *(v15 + 14936) = 0u;
      *(v15 + 14952) = 0u;
      v28 = v9;
      v29 = *(v15 + 45);
      v30 = v15;
      if (*(v15 + 45))
      {
        v31 = 111;
      }

      else
      {
        v31 = 95;
      }

      if (v29)
      {
        v32 = 114;
      }

      else
      {
        v32 = 102;
      }

      bzero(buf, 0x3D68uLL);
      v56 = v25;
      v33 = v31;
      v15 = v30;
      v34 = v29;
      v9 = v28;
      v11 = v50;
      indexRestoreFromBuffer(buf, &v56, *(v18 + 4), v33, v32, 0, v34);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0;
      v56 = v25;
      indexStoreToBuffer(buf, &v56);
    }

    v35 = indexShadowFiles(v18, v11, v25, v49);
    v36 = threadData[9 * v55 + 1] + 320 * v54;
    *(v36 + 312) = v45;
    v37 = *(v36 + 232);
    if (v37)
    {
      v37(*(v36 + 288));
    }

    v38 = v35;
    dropThreadId(v55, 0, add_explicit + 1);
    if (v35)
    {
      break;
    }

    v39 = *(v18 + 14472);
    v13 = v46;
    v12 = v47;
LABEL_24:
    v10 += 4096;
    ++v13;
    ++v12;
    v14 = v39;
    if (v48 == v10)
    {
      v38 = 0;
      goto LABEL_42;
    }
  }

  if (v35 == 89)
  {
    return v38;
  }

  v40 = v35;
  v16 = v51;
LABEL_39:
  v42 = *__error();
  v43 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v58 = "_indexShadowBulk";
    v60 = 1226;
    v59 = 1024;
    v61 = 1024;
    v62 = v40;
    v63 = 2080;
    v64 = v15 + 15208;
    _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: indexShadowFiles error: %d, %s", buf, 0x22u);
  }

  *__error() = v42;
  v39 = v16;
  v38 = v40;
  if (v40)
  {
    return v38;
  }

LABEL_42:
  if (!v39)
  {
    return v38;
  }

  fd_sync(v39, 1);
  return 0;
}

uint64_t indexPrepareForSyncBulk(uint64_t result, uint64_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v44 = a4 & 6;
  v6 = result;
  while (1)
  {
    v8 = *a2;
    v9 = atomic_load((*a2 + 36));
    if ((v9 & 2) != 0)
    {
      goto LABEL_22;
    }

    v10 = atomic_load((v8 + 32));
    if (v10 == -1073623027)
    {
      v11 = *(v8 + 14392);
      if (v11 && !(v11[21] + v11[18] + v11[15] + v11[19] + v11[22] + v11[16] + v11[20] + v11[23] + v11[17] + v11[24] + v11[25] + v11[26] + v11[27]))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v12 = atomic_load((v8 + 32));
      if (v12 == 2)
      {
        if (v44)
        {
          goto LABEL_22;
        }
      }

      else if (*a3 == 1)
      {
        return 89;
      }
    }

    if (*(v8 + 8) != 1)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v14 = setThreadIdAndInfo(*(v8 + 64), sIndexExceptionCallbacks, v8, 0x20000000, add_explicit + 1);
    v51 = HIDWORD(v14);
    v52 = v14;
    v49 = v16;
    v50 = v15;
    v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
    *(v17 + 216) = 0;
    v18 = *(v17 + 312);
    v19 = *(v17 + 224);
    if (v19)
    {
      v19(*(v17 + 288));
    }

    if (_setjmp(v17))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v17 + 312) = v18;
      if ((~*(v17 + 212) & 0xA0000000) == 0)
      {
        v36 = *(v17 + 288);
        if (v36)
        {
          _CIMakeInvalid(v36);
        }
      }

      CIOnThreadCleanUpReset(v49);
      dropThreadId(v52, 1, add_explicit + 1);
      CICleanUpReset(v52, v50);
      goto LABEL_53;
    }

    if (!*(v8 + 14392) || (*(v8 + 15203) & 1) != 0)
    {
LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    if (*(v8 + 8) != 1)
    {
      v20 = 4294967294;
      goto LABEL_19;
    }

    v24 = *(v8 + 15196);
    v20 = 4294967294;
    if (v24 == -1 || v24 == 1)
    {
      goto LABEL_19;
    }

    if (!a4)
    {
      atomic_load((v8 + 32));
LABEL_33:
      ++*(v8 + 15576);
      v20 = index_FlushCache(v8, 1, a5, a6, &__block_literal_global_3482);
      if (v20 >= 2)
      {
        v41 = *__error();
        log = _SILogForLogForCategory(0);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v54 = "indexPrepareForSync";
          v55 = 1024;
          v56 = 2929;
          v57 = 2080;
          *v58 = v8 + 15208;
          *&v58[8] = 1024;
          *&v58[10] = 2929;
          _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
        }

        *__error() = v41;
        v25 = v20;
        if (*(v8 + 8))
        {
          goto LABEL_44;
        }
      }

      goto LABEL_19;
    }

    if ((a4 & 2) != 0)
    {
      *(v8 + 15196) = 1;
    }

    else if ((a4 & 4) == 0)
    {
      goto LABEL_33;
    }

    v26 = atomic_load((v8 + 36));
    if ((v26 & 2) != 0)
    {
      goto LABEL_18;
    }

    v27 = *(v8 + 14392);
    v28 = *(v27 + 120);
    v29 = *(v27 + 136);
    v30 = *(v27 + 152);
    v31 = *(v27 + 184);
    v32 = *(v27 + 200);
    v33 = *(v27 + 216);
    *(v8 + 14984) = vaddq_s64(*(v8 + 14984), *(v27 + 168));
    *(v8 + 14936) = vaddq_s64(*(v8 + 14936), v28);
    *(v8 + 14968) = vaddq_s64(*(v8 + 14968), v30);
    *(v8 + 14952) = vaddq_s64(*(v8 + 14952), v29);
    *(v8 + 15000) = vaddq_s64(*(v8 + 15000), v31);
    *(v8 + 15016) = vaddq_s64(*(v8 + 15016), v32);
    *(v8 + 15032) += v33;
    *(v27 + 216) = 0;
    *(v27 + 200) = 0u;
    *(v27 + 184) = 0u;
    *(v27 + 168) = 0u;
    *(v27 + 152) = 0u;
    *(v27 + 136) = 0u;
    *(v27 + 120) = 0u;
    v34 = indexFastFlush(v8, *(v8 + 14392));
    v20 = v34;
    if (v34)
    {
      v43 = v34;
      v42 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v54 = "indexPrepareForSync";
        v55 = 1024;
        v56 = 2958;
        v57 = 2080;
        *v58 = v8 + 15208;
        *&v58[8] = 1024;
        *&v58[10] = 2958;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
      }

      v20 = v43;
      *__error() = v42;
      v25 = v43;
      if (*(v8 + 8) == 1)
      {
LABEL_44:
        v20 = v25;
        *(v8 + 8) = 0;
        *(v8 + 12) = v25;
      }
    }

LABEL_19:
    v21 = threadData[9 * v52 + 1] + 320 * v51;
    *(v21 + 312) = v18;
    v22 = *(v21 + 232);
    if (v22)
    {
      v22(*(v21 + 288));
    }

    dropThreadId(v52, 0, add_explicit + 1);
    v23 = v20;
    if (v20)
    {
      goto LABEL_54;
    }

LABEL_22:
    ++a2;
    if (!--v6)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_53:
  v23 = 0xFFFFFFFFLL;
LABEL_54:
  v37 = v23;
  v38 = *__error();
  v39 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v54 = "indexPrepareForSyncBulk";
    v55 = 1024;
    v56 = 1079;
    v57 = 1024;
    *v58 = v37;
    *&v58[4] = 2080;
    *&v58[6] = v8 + 15208;
    _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: indexPrepareForSync error: %d, %s", buf, 0x22u);
  }

  *__error() = v38;
  return v37;
}

uint64_t indexPerformSyncBulk(unsigned int a1, uint64_t *a2, _DWORD *a3, char a4, uint64_t *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = a4 & 6;
  v7 = a1;
  v9 = 0;
  while (1)
  {
    v10 = *a2;
    if (*a3 == 1)
    {
      return 89;
    }

    v11 = atomic_load((v10 + 32));
    if (v11 != -1073623027)
    {
      v12 = atomic_load((v10 + 32));
      if (!v6 || v12 != 2)
      {
        break;
      }
    }

    v13 = v9;
LABEL_18:
    ++a2;
    v9 = v13;
    if (!--v7)
    {
      v27 = 0;
      v28 = a5;
      goto LABEL_36;
    }
  }

  if (*(v10 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    v29 = 4294967293;
    goto LABEL_26;
  }

  v14 = *a2;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  *buf = 0;
  v40 = 0;
  v39 = 0;
  v16 = setThreadIdAndInfo(*(v10 + 64), sIndexExceptionCallbacks, v10, 0x20000000, add_explicit + 1);
  *buf = v16;
  v39 = v18;
  v40 = __PAIR64__(HIDWORD(v16), v17);
  v19 = threadData[9 * v16 + 1] + 320 * HIDWORD(v16);
  *(v19 + 216) = 0;
  v20 = *(v19 + 312);
  v21 = *(v19 + 224);
  v22 = v19;
  if (v21)
  {
    v21(*(v19 + 288));
  }

  v38 = *buf;
  v37 = HIDWORD(v40);
  v36 = __PAIR64__(v40, v39);
  if (!_setjmp(v22))
  {
    v24 = indexPerformSync(v23);
    v25 = threadData[9 * v38 + 1] + 320 * v37;
    *(v25 + 312) = v20;
    v26 = *(v25 + 232);
    if (v26)
    {
      v26(*(v25 + 288));
    }

    v27 = v24;
    dropThreadId(v38, 0, add_explicit + 1);
    if (!v24)
    {
      if (*(v10 + 14472))
      {
        v13 = *(v14 + 14472);
      }

      else
      {
        v13 = v9;
      }

      goto LABEL_18;
    }

    if (v24 == 89)
    {
      return v27;
    }

    v29 = v24;
LABEL_26:
    v28 = a5;
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v35 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v35, 2u);
  }

  *(v22 + 312) = v20;
  v28 = a5;
  if ((~*(v22 + 212) & 0xA0000000) == 0)
  {
    v30 = *(v22 + 288);
    if (v30)
    {
      _CIMakeInvalid(v30);
    }
  }

  CIOnThreadCleanUpReset(v36);
  dropThreadId(v38, 1, add_explicit + 1);
  CICleanUpReset(v38, HIDWORD(v36));
  v29 = 4294967293;
LABEL_33:
  v31 = *__error();
  v32 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v42 = "indexPerformSyncBulk";
    v44 = 1117;
    v43 = 1024;
    v45 = 1024;
    v46 = v29;
    v47 = 2080;
    v48 = v10 + 15208;
    _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: indexPerformSync error: %d, %s", buf, 0x22u);
  }

  *__error() = v31;
  v13 = v9;
  v27 = v29;
  if (v29)
  {
    return v27;
  }

LABEL_36:
  if (!v13)
  {
    return v27;
  }

  if (v28)
  {
    *v28 = v13;
  }

  else
  {
    fd_sync(v13, 1);
  }

  return 0;
}

uint64_t GatherAndLockIndexes(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v14 = a3;
  v15 = 0;
  *a4 = 0;
  if (!a1)
  {
    if (!a2)
    {
      v9 = 0;
      goto LABEL_19;
    }

LABEL_9:
    if (*(a2 + 8))
    {
      v8 = 0;
      do
      {
        if ((gatherAndLockIndexCallback(*(*a2 + 8 * v8), &v14) & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < *(a2 + 8));
    }

    goto LABEL_13;
  }

  if (!*(a1 + 8))
  {
LABEL_6:
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v7 = 0;
  while ((gatherAndLockIndexCallback(*(*a1 + 8 * v7), &v14) & 1) != 0)
  {
    if (++v7 >= *(a1 + 8))
    {
      goto LABEL_6;
    }
  }

LABEL_13:
  v9 = v15;
  v10 = HIDWORD(v15);
  if (!HIDWORD(v15))
  {
LABEL_19:
    v10 = 0;
    *a4 = v9;
    return v10;
  }

  if (v15 - 1 >= 0)
  {
    v11 = v14;
    v12 = 8 * (v15 - 1);
    do
    {
      pthread_mutex_unlock((*(v11 + v12) + 15120));
      v12 -= 8;
    }

    while (v12 != -8);
  }

  return v10;
}

uint64_t gatherAndLockIndexCallback(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 8) & 1) == 0)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "gatherAndLockIndexCallback";
      v12 = 1024;
      v13 = 1007;
      v14 = 2080;
      v15 = a1 + 15208;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: index invalid %s", &v10, 0x1Cu);
    }

    v8 = __error();
    result = 0;
    *v8 = v6;
    v5 = -1;
    goto LABEL_7;
  }

  if (*(a1 + 15196) == 1)
  {
    result = 0;
    v5 = 22;
LABEL_7:
    *(a2 + 12) = v5;
    return result;
  }

  if ((*(a1 + 15203) & 1) == 0)
  {
    pthread_mutex_lock((a1 + 15120));
    v9 = *(a2 + 8);
    *(*a2 + 8 * v9) = a1;
    *(a2 + 8) = v9 + 1;
  }

  return 1;
}

uint64_t _CIFlushCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  pthread_mutex_lock((a1 + 15120));
  v30 = 0;
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v11;
  v12 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v28 = HIDWORD(v11);
  v27 = __PAIR64__(v13, v14);
  *(v12 + 216) = 0;
  v15 = *(v12 + 312);
  v16 = *(v12 + 224);
  if (v16)
  {
    v16(*(v12 + 288));
  }

  v26 = *buf;
  v25 = v28;
  v24 = v27;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v23, 2u);
    }

    *(v12 + 312) = v15;
    if ((~*(v12 + 212) & 0xA0000000) == 0)
    {
      v17 = *(v12 + 288);
      if (v17)
      {
        _CIMakeInvalid(v17);
      }
    }

    CIOnThreadCleanUpReset(v24);
    dropThreadId(v26, 1, add_explicit + 1);
    CICleanUpReset(v26, HIDWORD(v24));
LABEL_13:
    v18 = 0;
    goto LABEL_20;
  }

  if (atomic_load((a1 + 15192)))
  {
    (*(a5 + 16))(a5);
    v18 = 0;
  }

  else
  {
    v18 = index_FlushCache(a1, v8, a3, a4, a5);
  }

  v30 = 1;
  v20 = threadData[9 * v26 + 1] + 320 * v25;
  *(v20 + 312) = v15;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v26, 0, add_explicit + 1);
LABEL_20:
  if ((v30 & 1) == 0)
  {
    (*(a5 + 16))(a5);
  }

  pthread_mutex_unlock((a1 + 15120));
  return v18;
}

_DWORD *_CIEnsureOpenFiles(void *a1)
{
  fd_warmup(a1[584]);
  fd_warmup(a1[26]);
  result = fd_warmup(a1[59]);
  v3 = a1[616];
  if (v3)
  {
    v4 = *(v3 + 224);

    return fd_warmup(v4);
  }

  return result;
}

uint64_t _CIListsClean(uint64_t a1, uint64_t a2, __n128 a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  MEMORY[0x1EEE9AC00](a3);
  v6 = v22 - v5;
  bzero(v22 - v5, v7);
  v8 = GatherAndLockIndexes(a1, a2, v6, &v24);
  v9 = v24;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v24 == 0;
  }

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = *&v6[8 * v12];
      v14 = CIDocCountsNonEmpty((v13 + 14936));
      if (v14)
      {
LABEL_12:
        v11 = !v14;
        goto LABEL_13;
      }

      v15 = atomic_load((v13 + 36));
      if ((v15 & 2) == 0)
      {
        v16 = *(v13 + 14392);
        if (v16)
        {
          v17 = *(v16 + 168);
          v18 = *(v16 + 200);
          v22[4] = *(v16 + 184);
          v22[5] = v18;
          v23 = *(v16 + 216);
          v19 = *(v16 + 136);
          v22[0] = *(v16 + 120);
          v22[1] = v19;
          v22[2] = *(v16 + 152);
          v22[3] = v17;
          if (CIDocCountsNonEmpty(v22))
          {
            break;
          }
        }
      }

      ++v12;
      v9 = v24;
      if (v12 >= v24)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
    v9 = v24;
  }

LABEL_13:
  if ((v9 - 1) >= 0)
  {
    v20 = 8 * (v9 - 1);
    do
    {
      pthread_mutex_unlock((*&v6[v20] + 15120));
      v20 -= 8;
    }

    while (v20 != -8);
  }

  return v11;
}

uint64_t _CICompact(uint64_t a1, _OWORD *a2, char a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  bzero(v28, 0x400uLL);
  if ((a3 & 1) == 0 || (*(a1 + 45) & 1) != 0 || confstr(65537, v28, 0x400uLL) - 1 > 0x3FF)
  {
    v7 = -1;
  }

  else
  {
    v7 = open(v28, 4);
  }

  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_20;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v9 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  v24 = HIDWORD(v9);
  v25 = v9;
  v22 = v11;
  v23 = v10;
  v12 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
  *(v12 + 216) = 1;
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  v15 = v12;
  if (v14)
  {
    v14(*(v12 + 288));
  }

  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v15 + 312) = v13;
    if ((~*(v15 + 212) & 0xA0000000) == 0)
    {
      v16 = *(v15 + 288);
      if (v16)
      {
        _CIMakeInvalid(v16);
      }
    }

    CIOnThreadCleanUpReset(v22);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, v23);
LABEL_20:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v19 = a2[1];
  *buf = *a2;
  v27 = v19;
  v17 = index_compact(*buf);
  v20 = threadData[9 * v25 + 1] + 320 * v24;
  *(v20 + 312) = v13;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v25, 0, add_explicit + 1);
LABEL_21:
  if (v7 != -1)
  {
    close(v7);
  }

  return v17;
}

uint64_t _CIMakeInvalid(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  _db_write_lock(a1 + 14720);
  v2 = *__error();
  v3 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v7.st_dev = 136315906;
    *&v7.st_mode = "indexMakeInvalid";
    WORD2(v7.st_ino) = 1024;
    *(&v7.st_ino + 6) = 2723;
    HIWORD(v7.st_uid) = 2080;
    *&v7.st_gid = a1 + 15208;
    *(&v7.st_rdev + 2) = 1024;
    *(&v7.st_rdev + 6) = 2723;
    _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", &v7, 0x22u);
  }

  *__error() = v2;
  *(a1 + 8) = 0;
  v4 = *(a1 + 64);
  memset(&v7, 0, sizeof(v7));
  if (!fstat(v4, &v7))
  {
    v5 = open(".", 4);
    if (!MEMORY[0x1C6921200](v4))
    {
      bzero(&v7, 0x400uLL);
      snprintf(&v7, 0x400uLL, "%s%s", (a1 + 15208), "indexHead");
      unlink(&v7);
      snprintf(&v7, 0x400uLL, "%s%s", (a1 + 15208), "shadowIndexHead");
      unlink(&v7);
      MEMORY[0x1C6921200](v5);
    }

    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
    }
  }

  return db_write_unlock(a1 + 14720);
}

uint64_t ContentIndexVerifyIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v4;
  v5 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v21 = HIDWORD(v4);
  v20 = __PAIR64__(v6, v7);
  *(v5 + 216) = 0;
  v8 = *(v5 + 312);
  v9 = *(v5 + 224);
  if (v9)
  {
    v9(*(v5 + 288));
  }

  v19 = *buf;
  v18 = v21;
  v17 = v20;
  if (_setjmp(v5))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v16, 2u);
    }

    *(v5 + 312) = v8;
    if ((~*(v5 + 212) & 0xA0000000) == 0)
    {
      v11 = *(v5 + 288);
      if (v11)
      {
        _CIMakeInvalid(v11);
      }
    }

    CIOnThreadCleanUpReset(v17);
    dropThreadId(v19, 1, add_explicit + 1);
    CICleanUpReset(v19, HIDWORD(v17));
    return 0xFFFFFFFFLL;
  }

  v13 = index_verify(v10);
  v14 = threadData[9 * v19 + 1] + 320 * v18;
  *(v14 + 312) = v8;
  v15 = *(v14 + 232);
  if (v15)
  {
    v15(*(v14 + 288));
  }

  dropThreadId(v19, 0, add_explicit + 1);
  return v13;
}

uint64_t iterateTermsCallback(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 4))
  {
    storageResolvePtr(*(a5 + 8), 8 * a3, 8, 1);
    storageResolvePtr(*(a5 + 16), 8 * a3, 8, 1);
  }

  return (*(*(a5 + 24) + 16))();
}

void _CIDisableUpdates(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v56 = *MEMORY[0x1E69E9840];
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
    v4 = v1;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v6 = setThreadIdAndInfo(*(v1 + 64), sIndexExceptionCallbacks, v1, 0x20000000, add_explicit + 1);
    v45 = v6;
    v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
    v43 = v8;
    v44 = HIDWORD(v6);
    v42 = v9;
    *(v7 + 216) = 0;
    v10 = *(v7 + 312);
    v11 = *(v7 + 224);
    if (v11)
    {
      v11(*(v7 + 288));
    }

    if (_setjmp(v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v7 + 312) = v10;
      if ((~*(v7 + 212) & 0xA0000000) == 0)
      {
        v12 = *(v7 + 288);
        if (v12)
        {
          _CIMakeInvalid(v12);
        }
      }

      CIOnThreadCleanUpReset(v42);
      dropThreadId(v45, 1, add_explicit + 1);
      CICleanUpReset(v45, v43);
      return;
    }

    HIDWORD(v14) = qos_class_self() - 9;
    LODWORD(v14) = HIDWORD(v14);
    v13 = v14 >> 2;
    if (v13 > 6)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_1C2BFF8F0[v13];
    }

    pthread_mutex_lock((v4 + 14720));
    if (!*(v4 + 14904) && !*(v4 + 14916) && (*(v4 + 14932) & 1) == 0)
    {
      if (v15 > 5)
      {
LABEL_49:
        *(v4 + 14904) = pthread_self();
        goto LABEL_20;
      }

      v35 = v15 - 6;
      v36 = (v4 + 16 * v15 + 14784);
      while (!*v36)
      {
        v36 += 2;
        if (__CFADD__(v35++, 1))
        {
          goto LABEL_49;
        }
      }
    }

    db_rwlock_wait(v4 + 14720, v15, 2);
LABEL_20:
    pthread_mutex_unlock((v4 + 14720));
    v16 = atomic_load((v4 + 36));
    if (v16)
    {
      if (dword_1EBF46AF4 >= 5)
      {
        v24 = *__error();
        v25 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(v4 + 56);
          v27 = atomic_load((v4 + 36));
          v28 = *(v4 + 15668);
          *buf = 134219008;
          v48 = v4;
          *v49 = 1024;
          *&v49[2] = v26;
          v50 = 1024;
          v51 = v3;
          v52 = 1024;
          v53 = v27;
          v54 = 1024;
          v55 = v28;
          _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "skip index updates disable for %p (%d) from %d; flags 0x%x, disabled at %d", buf, 0x24u);
        }

        *__error() = v24;
      }
    }

    else
    {
      if (dword_1EBF46AF4 >= 5)
      {
        v38 = *__error();
        v39 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(v4 + 56);
          *buf = 134218496;
          v48 = v4;
          *v49 = 1024;
          *&v49[2] = v41;
          v50 = 1024;
          v51 = v3;
          _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "index updates disabled for %p (%d) from %d", buf, 0x18u);
        }

        *__error() = v38;
      }

      atomic_fetch_or((v4 + 36), 1u);
      v17 = atomic_load((v4 + 32));
      bzero(buf, 0x1000uLL);
      atomic_store(v17, (v4 + 32));
      v18 = *(v4 + 4);
      v19 = atomic_load((v4 + 32));
      *buf = v18;
      LODWORD(v48) = v19;
      v20 = atomic_load((v4 + 36));
      v21 = *(v4 + 48);
      HIDWORD(v48) = v20;
      *v49 = v21;
      pthread_mutex_lock((v4 + 14720));
      *(v4 + 14932) = 1;
      db_rwlock_wakeup(v4 + 14720, 1, 1);
      pthread_mutex_unlock((v4 + 14720));
      v22 = *(v4 + 14480);
      if (v22)
      {
        v23 = fd_pwrite(*(v4 + 14480), buf, 0x10uLL, 0);
        if (v23 == 16)
        {
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

          v46 = 0;
          v29 = _fd_acquire_fd(v22, &v46);
          if (v29 != -1)
          {
            v30 = v29;
            prot_fsync(v29, (*(v22 + 56) & 8) == 0);
            _fd_release_fd(v22, v30, 0, v46);
          }
        }

        else if (v23 == -1)
        {
          __error();
        }
      }

      *(v4 + 15668) = v3;
    }

    pthread_mutex_lock((v4 + 14720));
    *(v4 + 14924) = 0;
    v31 = *(v4 + 14896);
    *(v4 + 14896) = 0u;
    v32 = *(v4 + 14916) != 0;
    *(v4 + 14932) = 0;
    db_rwlock_wakeup(v4 + 14720, v32, 0);
    pthread_mutex_unlock((v4 + 14720));
    if (v31)
    {
      pthread_override_qos_class_end_np(v31);
    }

    v33 = threadData[9 * v45 + 1] + 320 * v44;
    *(v33 + 312) = v10;
    v34 = *(v33 + 232);
    if (v34)
    {
      v34(*(v33 + 288));
    }

    dropThreadId(v45, 0, add_explicit + 1);
    return;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

uint64_t _ContentIndexMergeIndexes(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t *a4, __int128 *a5, __n128 a6)
{
  v28 = a3;
  v29 = a1;
  v38[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = 8 * a2;
  MEMORY[0x1EEE9AC00](a6);
  v12 = &v28 - v11;
  v13 = CICleanUpThreadLoc();
  v14 = LODWORD(threadData[9 * v13 + 4]);
  if (*a5)
  {
    v15 = (*a5)(*(a5 + 4));
  }

  else
  {
    v15 = 0;
  }

  bzero(v12, v10);
  if (a2)
  {
    v16 = v29;
    v17 = v12;
    v18 = v9;
    do
    {
      v19 = *v16++;
      *v17++ = v19;
      v20 = IndexFdInfoCreate(v19, 0);
      CICleanUpPush(v13, IndexFdInfoDispose, v20);
      --v18;
    }

    while (v18);
  }

  v37 = 0;
  v21 = *(a5 + 1);
  if (v21)
  {
    v21(*(a5 + 4), v15);
  }

  v22 = a5[3];
  v34 = a5[2];
  v35 = v22;
  v36 = a5[4];
  v23 = a5[1];
  v32 = *a5;
  v33 = v23;
  v24 = mergeIndexData(v23);
  CICleanUpReset(v13, v14);
  if (v24)
  {
    if (g_fd_list)
    {
      _fd_close_inactive(*(v24 + 64), (v24 + 15208), 0, 0, v25);
    }

    if (a4)
    {
      *a4 = CIRemappingCreateWithContext(*MEMORY[0x1E695E480], *(v24 + 80), v37);
    }

    v31 = 0;
    memset(v30, 0, sizeof(v30));
    atomic_fetch_or((v24 + 36), 0x64u);
    _CIDisableUpdates(0);
    v26 = *v29;
    v38[0] = v24;
    v33.n128_u64[0] = 0;
    *&v32 = v38;
    *(&v32 + 1) = 0x100000001;
    _ContentIndexSyncIndexBulk(0, &v32, 0, 1, 0, v30, v26 + 15192, 0, 0);
    *(v24 + 15680) = *(v24 + 68);
  }

  return v24;
}

BOOL _CIMergeDeletes(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 68);
  if (v6 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v37 = 0;
  v36 = 0;
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v12 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v12;
    v13 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
    v34 = HIDWORD(v12);
    v33 = __PAIR64__(v14, v15);
    *(v13 + 216) = 0;
    v16 = *(v13 + 312);
    v17 = *(v13 + 224);
    if (v17)
    {
      v17(*(v13 + 288));
    }

    v32 = *buf;
    v31 = v34;
    v30 = v33;
    if (_setjmp(v13))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v29, 2u);
      }

      *(v13 + 312) = v16;
      if ((~*(v13 + 212) & 0xA0000000) == 0)
      {
        v18 = *(v13 + 288);
        if (v18)
        {
          _CIMakeInvalid(v18);
        }
      }

      CIOnThreadCleanUpReset(v30);
      dropThreadId(v32, 1, add_explicit + 1);
      CICleanUpReset(v32, HIDWORD(v30));
      goto LABEL_16;
    }

    if (a4 < 1)
    {
      v19 = 0;
    }

    else
    {
      v28 = add_explicit;
      v20 = a3;
      v21 = 1;
      do
      {
        v22 = *v20++;
        v23 = _MergeDeletes(a1, v22, a2, v5, v5 + v7, &v36);
        if (v21 >= a4)
        {
          break;
        }

        ++v21;
      }

      while ((v23 & 1) != 0);
      v19 = v23 ^ 1;
      add_explicit = v28;
    }

    v37 = 1;
    v24 = threadData[9 * v32 + 1] + 320 * v31;
    *(v24 + 312) = v16;
    v25 = *(v24 + 232);
    if (v25)
    {
      v25(*(v24 + 288));
    }

    dropThreadId(v32, 0, add_explicit + 1);
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
LABEL_16:
      v19 = 0;
      goto LABEL_26;
    }

    v19 = 0;
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_26:
  v26 = v37 ^ 1 | v19;
  if ((v26 & 1) == 0 && v36 == 1)
  {
    _indexShadowGroups(a1, 1);
  }

  return (v26 & 1) == 0;
}

uint64_t _MergeDeletes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, _BYTE *a6)
{
  v90 = 0;
  if (*(a2 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return v90;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  *buf = 0;
  v88 = 0;
  v87 = 0;
  v13 = setThreadIdAndInfo(*(a2 + 64), sIndexExceptionCallbacks, a2, 0x20000000, add_explicit + 1);
  *buf = v13;
  v87 = v15;
  v88 = __PAIR64__(HIDWORD(v13), v14);
  v16 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
  *(v16 + 216) = 0;
  v17 = *(v16 + 312);
  v18 = *(v16 + 224);
  v19 = v16;
  if (v18)
  {
    v18(*(v16 + 288));
  }

  v86 = *buf;
  v85 = HIDWORD(v88);
  v84 = __PAIR64__(v88, v87);
  if (_setjmp(v19))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v83 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v83, 2u);
    }

    *(v19 + 312) = v17;
    if ((~*(v19 + 212) & 0xA0000000) == 0)
    {
      v20 = *(v19 + 288);
      if (v20)
      {
        _CIMakeInvalid(v20);
      }
    }

    CIOnThreadCleanUpReset(v84);
    dropThreadId(v86, 1, add_explicit + 1);
    CICleanUpReset(v86, HIDWORD(v84));
    return v90;
  }

  v21 = *(a2 + 68);
  if (v21 < 2)
  {
    goto LABEL_51;
  }

  v22 = *(a2 + 80);
  v23 = MEMORY[0x1E69E9AC8];
  v24 = 1;
  v25 = 0;
  do
  {
    v26 = v25;
    if (*(a2 + 45) == 1)
    {
      v27 = *(*(a2 + 14432) + v24);
    }

    else
    {
      v27 = (*(*(a2 + 14432) + 4 * (v24 / 5uLL)) >> (6 * (v24 % 5))) & 0x3F;
    }

    if ((v27 & 0xFFFFFFDF) != 0)
    {
      goto LABEL_19;
    }

    v28 = v22 + v24;
    v29 = v22 + v24;
    if (!a3 || (v30 = *(a3 + 16), *v30 < 1))
    {
LABEL_27:
      if (!v29)
      {
        goto LABEL_19;
      }

LABEL_28:
      v33 = v29 - a4;
      if (v29 <= a4 || v29 > a5)
      {
        v51 = __si_assert_copy_extra_332();
        v59 = v51;
        v60 = "";
        if (v51)
        {
          v60 = v51;
        }

        __message_assert_336(v51, v52, v53, v54, v55, v56, v57, v58, "ContentIndex.c", 2309, "newDocId > newBase && newDocId <= newMax", v60);
LABEL_72:
        free(v59);
        if (__valid_fs(-1))
        {
          v82 = 2989;
        }

        else
        {
          v82 = 3072;
        }

        *v82 = -559038737;
        abort();
      }

      if (*(a1 + 45) == 1)
      {
        v34 = *(a1 + 14432);
        if ((*(v34 + v33) & 0xDF) != 0)
        {
          *(v34 + v33) = 0;
          v35 = *(a1 + 14440);
          if (v35)
          {
            *(v35 + v33 / (32 * *v23)) |= 1 << ((v33 / (4 * *v23)) & 7);
          }

          v26 = 1;
        }

        goto LABEL_19;
      }

      v36 = v33 / 5uLL;
      v37 = 6 * (v33 % 5);
      v38 = *(a1 + 14432);
      v39 = *(v38 + 4 * v36);
      if (((v39 >> (6 * (v33 % 5))) & 0x1F) == 0)
      {
        goto LABEL_19;
      }

      v40 = v39 & ~(63 << v37);
      if (*(a1 + 14440))
      {
        v41 = v36 / (8 * *v23);
        v42 = (v36 / *v23) & 7;
        *(*(a1 + 14440) + v41) |= 1 << v42;
        if (!*(*(a1 + 14440) + v41))
        {
          v72 = __si_assert_copy_extra_332();
          v59 = v72;
          v80 = "";
          if (v72)
          {
            v80 = v72;
          }

          v81 = "(newIndex)->groupMap[gslot]";
          goto LABEL_71;
        }

        v43 = v42 | (8 * v41);
        if (*v23 * v43 > v36)
        {
          v72 = __si_assert_copy_extra_332();
          v59 = v72;
          v80 = "";
          if (v72)
          {
            v80 = v72;
          }

          v81 = "vm_page_size*(gslot*8+bslot) <=slot";
          goto LABEL_71;
        }

        if (*v23 * (v43 + 1) <= v36)
        {
          v72 = __si_assert_copy_extra_332();
          v59 = v72;
          v80 = "";
          if (v72)
          {
            v80 = v72;
          }

          v81 = "vm_page_size*(gslot*8+bslot+1) >slot";
LABEL_71:
          __message_assert_336(v72, v73, v74, v75, v76, v77, v78, v79, "ContentIndex.c", 2313, v81, v80);
          goto LABEL_72;
        }

        v44 = *(a1 + 14432);
        v45 = *(a1 + 45);
        *(v44 + 4 * (v33 / 5uLL)) = v40;
        if (v45)
        {
          v46 = *(v44 + v33);
LABEL_47:
          if (v46)
          {
            v61 = __si_assert_copy_extra_332();
            v69 = v61;
            v70 = "";
            if (v61)
            {
              v70 = v61;
            }

            __message_assert_336(v61, v62, v63, v64, v65, v66, v67, v68, "ContentIndex.c", 2313, "((newIndex)->coreSpotlight?({ ((uint8_t *)(newIndex)->groups)[(docID)]; }):({ uint32_t __where=(uint32_t)(docID); uint32_t __slot = __where/5; uint32_t __shift= (__where-(__slot*5))*6; uint32_t __word = ((uint32_t)((newIndex)->groups[__slot])); (__word >> __shift) & 0x3F ; }))==(inval&0x3F)", v70);
            free(v69);
            if (__valid_fs(-1))
            {
              v71 = 2989;
            }

            else
            {
              v71 = 3072;
            }

            *v71 = -559038737;
            abort();
          }

          v26 = 1;
          goto LABEL_19;
        }
      }

      else
      {
        *(v38 + 4 * v36) = v40;
      }

      v46 = (v40 >> v37) & 0x3F;
      goto LABEL_47;
    }

    v31 = v30[1];
    v32 = *v30;
    while (v28 <= *v31 || *v31 + *(v31 + 8) <= v28)
    {
      v31 += 32;
      if (!--v32)
      {
        goto LABEL_27;
      }
    }

    v47 = *(*(v31 + 16) + 4 * (v28 - *v31));
    if (v47)
    {
      v29 = *(a3 + 32) + v47;
      if (v29)
      {
        goto LABEL_28;
      }
    }

LABEL_19:
    ++v24;
    v25 = v26;
  }

  while (v24 != v21);
  if (((a6 != 0) & v26) != 0)
  {
    *a6 = 1;
  }

LABEL_51:
  v90 = 1;
  v48 = threadData[9 * v86 + 1] + 320 * v85;
  *(v48 + 312) = v17;
  v49 = *(v48 + 232);
  if (v49)
  {
    v49(*(v48 + 288));
  }

  dropThreadId(v86, 0, add_explicit + 1);
  return v90;
}

void _CIReassign(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v9 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    v53 = v9;
    v10 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    v51 = v11;
    v52 = HIDWORD(v9);
    v50 = v12;
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
      if ((~*(v10 + 212) & 0xA0000000) == 0)
      {
        v15 = *(v10 + 288);
        if (v15)
        {
          _CIMakeInvalid(v15);
        }
      }

      CIOnThreadCleanUpReset(v50);
      dropThreadId(v53, 1, add_explicit + 1);
      CICleanUpReset(v53, v51);
      return;
    }

    if (dword_1EBF46AF4 >= 5)
    {
      v48 = *__error();
      v49 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v63) = a2;
        _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "reassign docId: %d", buf, 8u);
      }

      *__error() = v48;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      bzero(buf, 0x400uLL);
      if ((reassignDocument__COUNT_ & 1) == 0)
      {
        reassignDocument__COUNT_ = 1;
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v44 = fcntl(*(a1 + 64), 50, buf);
          if (buf[0])
          {
            v45 = v44 < 0;
          }

          else
          {
            v45 = 1;
          }

          *v54 = 136315906;
          v55 = "reassignDocument";
          v46 = "";
          if (!v45)
          {
            v46 = buf;
          }

          v56 = 1024;
          v57 = 4973;
          v58 = 2080;
          v59 = v46;
          v60 = 2080;
          v61 = a1 + 15208;
          v21 = "%s:%d: trying to delete from invalid index %s/%s";
          goto LABEL_72;
        }

LABEL_26:
        *__error() = v16;
      }

LABEL_56:
      v39 = threadData[9 * v53 + 1] + 320 * v52;
      *(v39 + 312) = v13;
      v40 = *(v39 + 232);
      if (v40)
      {
        v40(*(v39 + 288));
      }

      dropThreadId(v53, 0, add_explicit + 1);
      return;
    }

    if (*(a1 + 15203) == 1)
    {
      bzero(buf, 0x400uLL);
      if ((reassignDocument__COUNT__55 & 1) == 0)
      {
        reassignDocument__COUNT__55 = 1;
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = fcntl(*(a1 + 64), 50, buf);
          if (buf[0])
          {
            v19 = v18 < 0;
          }

          else
          {
            v19 = 1;
          }

          *v54 = 136315906;
          v55 = "reassignDocument";
          v20 = "";
          if (!v19)
          {
            v20 = buf;
          }

          v56 = 1024;
          v57 = 4979;
          v58 = 2080;
          v59 = v20;
          v60 = 2080;
          v61 = a1 + 15208;
          v21 = "%s:%d: trying to modify read only index %s/%s";
LABEL_72:
          _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, v21, v54, 0x26u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      goto LABEL_56;
    }

    v22 = __THREAD_SLOT_KEY[0];
    if (!__THREAD_SLOT_KEY[0])
    {
      makeThreadId();
      v22 = __THREAD_SLOT_KEY[0];
    }

    v23 = pthread_getspecific(v22);
    if (!v23 || (v24 = v23, v23 >= 0x801))
    {
      makeThreadId();
      v24 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    }

    v25 = v24 - 1;
    HIDWORD(v27) = qos_class_self() - 9;
    LODWORD(v27) = HIDWORD(v27);
    v26 = v27 >> 2;
    if (v26 > 6)
    {
      v28 = 0;
    }

    else
    {
      v28 = dword_1C2BFF8F0[v26];
    }

    pthread_mutex_lock((a1 + 14504));
    if (!*(a1 + 14688) && !*(a1 + 14700) && (*(a1 + 14716) & 1) == 0)
    {
      if (v28 > 5)
      {
LABEL_65:
        *(a1 + 14688) = pthread_self();
LABEL_38:
        pthread_mutex_unlock((a1 + 14504));
        v29 = v25;
        CIOnThreadCleanUpPush(v25, si_rwlock_wrunlock_3589, a1 + 14504);
        v30 = a2 - *(a1 + 80);
        v31 = v30;
        if (v30 && v30 >= *(a1 + 68))
        {
          v32 = *__error();
          v33 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v47 = *(a1 + 68);
            *buf = 136315906;
            v63 = "reassignDocument";
            v64 = 1024;
            *v65 = 4993;
            *&v65[4] = 2048;
            *&v65[6] = v31;
            *&v65[14] = 1024;
            *&v65[16] = v47;
            _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: reassignDocument error - docId (%lld) >= max (%d) ", buf, 0x22u);
          }

          *__error() = v32;
          v29 = v25;
        }

        if (v31 && *(a1 + 68) > v31)
        {
          v34 = *(*(a1 + 14408) + 8 * v31);
          if (v34 == a3)
          {
            if (indexMarkDirty(a1))
            {
              *(*(a1 + 14408) + 8 * v31) = a4;
            }
          }

          else if (v34 != a4 && v34 != 0)
          {
            v36 = *__error();
            v37 = _SILogForLogForCategory(0);
            v38 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v37, (gSILogLevels[0] < 3)))
            {
              *buf = 134218752;
              v63 = a3;
              v64 = 2048;
              *v65 = a4;
              *&v65[8] = 2048;
              *&v65[10] = v31;
              *&v65[18] = 2048;
              v66 = v34;
              _os_log_impl(&dword_1C278D000, v37, v38, "*warn* reassignDocument error: oid mismatch oldOid: %ld newOid: %ld docId: %ld idxOid: %ld", buf, 0x2Au);
            }

            *__error() = v36;
            v29 = v25;
          }
        }

        CIOnThreadCleanUpPop(v29);
        goto LABEL_56;
      }

      v41 = v28 - 6;
      v42 = (a1 + 16 * v28 + 14568);
      while (!*v42)
      {
        v42 += 2;
        if (__CFADD__(v41++, 1))
        {
          goto LABEL_65;
        }
      }
    }

    db_rwlock_wait(a1 + 14504, v28, 2);
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

void _CIRebaseDocId(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v7 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v7;
    v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
    v34 = HIDWORD(v7);
    v33 = __PAIR64__(v9, v10);
    *(v8 + 216) = 0;
    v11 = *(v8 + 312);
    v12 = *(v8 + 224);
    if (v12)
    {
      v12(*(v8 + 288));
    }

    v32 = *buf;
    v31 = v34;
    v30 = v33;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v29, 2u);
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

      CIOnThreadCleanUpReset(v30);
      dropThreadId(v32, 1, add_explicit + 1);
      CICleanUpReset(v32, HIDWORD(v30));
    }

    else
    {
      if (*(a1 + 68) >= 2u)
      {
        v18 = __si_assert_copy_extra_332();
        v26 = v18;
        v27 = "";
        if (v18)
        {
          v27 = v18;
        }

        __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "ContentIndex.c", 2574, "ref->payloadCount <= 1", v27);
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

      *(a1 + 80) = a2;
      *(a1 + 88) = a3;
      v14 = *(a1 + 14392);
      if (v14)
      {
        *(v14 + 8) = a2;
      }

      v15 = *(a1 + 14400);
      if (v15)
      {
        *(v15 + 8) = a2;
      }

      v16 = threadData[9 * v32 + 1] + 320 * v31;
      *(v16 + 312) = v11;
      v17 = *(v16 + 232);
      if (v17)
      {
        v17(*(v16 + 288));
      }

      dropThreadId(v32, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

uint64_t _CIDocIdForOID(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return 0;
  }

  v6 = a1 + 64;
  v4 = *(a1 + 64);
  v5 = *(v6 + 4);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(v4, sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v8;
  v9 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v27 = HIDWORD(v8);
  v26 = __PAIR64__(v10, v11);
  *(v9 + 216) = 0;
  v12 = *(v9 + 312);
  v13 = *(v9 + 224);
  if (v13)
  {
    v13(*(v9 + 288));
  }

  v25 = *buf;
  v24 = v27;
  v23 = v26;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v22, 2u);
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

    CIOnThreadCleanUpReset(v23);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, HIDWORD(v23));
    return 0;
  }

  db_read_lock(a1 + 14504);
  if (v5 < 1)
  {
LABEL_22:
    v19 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(a1 + 45) ? *(*(a1 + 14432) + v17) : (*(*(a1 + 14432) + (((3435973837u * v17) >> 32) & 0xFFFFFFFC)) >> (v16 - 30 * (v17 / 5))) & 0x3F;
      if ((v18 & 0xFFFFFFDF) != 0 && *(*(a1 + 14408) + 8 * v17) == a2)
      {
        break;
      }

      ++v17;
      v16 += 6;
      if (v5 == v17)
      {
        goto LABEL_22;
      }
    }

    v19 = *(a1 + 80) + v17;
  }

  db_read_unlock(a1 + 14504);
  v20 = threadData[9 * v25 + 1] + 320 * v24;
  *(v20 + 312) = v12;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v25, 0, add_explicit + 1);
  return v19;
}

uint64_t _CIDeleteDuplicates(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return 0;
  }

  v70 = *(a1 + 15203);
  v6 = a1 + 64;
  v4 = *(a1 + 64);
  v5 = *(v6 + 4);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(v4, sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  v80 = v8;
  v9 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v79 = HIDWORD(v8);
  v78 = __PAIR64__(v10, v11);
  *(v9 + 216) = 0;
  v12 = *(v9 + 312);
  v13 = *(v9 + 224);
  if (v13)
  {
    v13(*(v9 + 288));
  }

  v77 = v80;
  v76 = v79;
  v75 = v78;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
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

    CIOnThreadCleanUpReset(v75);
    dropThreadId(v77, 1, add_explicit + 1);
    CICleanUpReset(v77, HIDWORD(v75));
    return 0;
  }

  v74 = 0;
  if (fd_setDir(*(a1 + 64), &v74))
  {
    v72 = v12;
    v73 = add_explicit;
    v16 = v5;
    if (v5 >= 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = v5 - 1;
      v20 = 6 * v5 - 6;
      v21 = v16 - 1;
      v71 = a2;
      while (1)
      {
        if (*(a1 + 45) == 1)
        {
          v22 = *(*(a1 + 14432) + v19);
        }

        else
        {
          v22 = (*(*(a1 + 14432) + (((3435973837u * v19) >> 32) & 0xFFFFFFFC)) >> (v20 - 30 * (v21 / 5))) & 0x3F;
        }

        if ((v22 & 0xFFFFFFDF) == 0)
        {
          goto LABEL_43;
        }

        v69 = v20 - 30 * (v21 / 5);
        v23 = *(*(a1 + 14408) + 8 * v19);
        if (SIUINT64SetContainsValue(a2, v23))
        {
          v24 = *__error();
          v25 = _SILogForLogForCategory(10);
          v26 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v25, v26))
          {
            *buf = 134217984;
            v82 = v23;
            _os_log_impl(&dword_1C278D000, v25, v26, "dup oid (%lld)", buf, 0xCu);
          }

          *__error() = v24;
          if ((v70 & 1) == 0)
          {
            a2 = v71;
            if ((v17 & 1) == 0)
            {
              indexMarkDirty(a1);
            }

            if (*(a1 + 45) == 1)
            {
              *(*(a1 + 14432) + v19) = 0;
              v27 = *(a1 + 14440);
              v17 = 1;
              if (v27)
              {
                *(v27 + v19 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v19 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
              }

LABEL_42:
              ++v18;
              goto LABEL_43;
            }

            v28 = v19 / 5uLL;
            v29 = *(a1 + 14432);
            v30 = v28;
            v31 = *(v29 + 4 * v28) & ~(63 << v69);
            if (*(a1 + 14440))
            {
              v32 = MEMORY[0x1E69E9AC8];
              v33 = v28 / (8 * *MEMORY[0x1E69E9AC8]);
              v34 = (v28 / *MEMORY[0x1E69E9AC8]) & 7;
              *(*(a1 + 14440) + v33) |= 1 << v34;
              if (!*(*(a1 + 14440) + v33))
              {
                v57 = __si_assert_copy_extra_332();
                v65 = v57;
                v66 = "";
                if (v57)
                {
                  v66 = v57;
                }

                __message_assert_336(v57, v58, v59, v60, v61, v62, v63, v64, "ContentIndex.c", 2687, "(ref)->groupMap[gslot]", v66);
                free(v65);
                if (__valid_fs(-1))
                {
                  v67 = 2989;
                }

                else
                {
                  v67 = 3072;
                }

                *v67 = -559038737;
                abort();
              }

              v35 = v34 | (8 * v33);
              if (*v32 * v35 > v28)
              {
                v46 = __si_assert_copy_extra_332();
                v54 = v46;
                v55 = "";
                if (v46)
                {
                  v55 = v46;
                }

                v56 = "vm_page_size*(gslot*8+bslot) <=slot";
LABEL_66:
                __message_assert_336(v46, v47, v48, v49, v50, v51, v52, v53, "ContentIndex.c", 2687, v56, v55);
                free(v54);
                if (__valid_fs(-1))
                {
                  v68 = 2989;
                }

                else
                {
                  v68 = 3072;
                }

                *v68 = -559038737;
                abort();
              }

              if (*v32 * (v35 + 1) <= v28)
              {
                v46 = __si_assert_copy_extra_332();
                v54 = v46;
                v55 = "";
                if (v46)
                {
                  v55 = v46;
                }

                v56 = "vm_page_size*(gslot*8+bslot+1) >slot";
                goto LABEL_66;
              }

              v36 = *(a1 + 14432);
              v37 = *(a1 + 45);
              *(v36 + 4 * v30) = v31;
              if (v37)
              {
                v38 = *(v36 + v19);
LABEL_40:
                if (v38)
                {
                  v46 = __si_assert_copy_extra_332();
                  v54 = v46;
                  v55 = "";
                  if (v46)
                  {
                    v55 = v46;
                  }

                  v56 = "((ref)->coreSpotlight?({ ((uint8_t *)(ref)->groups)[(i)]; }):({ uint32_t __where=(uint32_t)(i); uint32_t __slot = __where/5; uint32_t __shift= (__where-(__slot*5))*6; uint32_t __word = ((uint32_t)((ref)->groups[__slot])); (__word >> __shift) & 0x3F ; }))==(inval&0x3F)";
                  goto LABEL_66;
                }

                v17 = 1;
                goto LABEL_42;
              }
            }

            else
            {
              *(v29 + 4 * v28) = v31;
            }

            v38 = (v31 >> v69) & 0x3F;
            goto LABEL_40;
          }

          ++v18;
          a2 = v71;
        }

        else
        {
          SIValueSet<unsigned long long>::SIValueSetInsert((a2 + 16), v23);
        }

LABEL_43:
        v39 = v18;
        v40 = v19 + 1;
        v20 -= 6;
        --v21;
        --v19;
        if (v40 <= 1)
        {
          goto LABEL_47;
        }
      }
    }

    v39 = 0;
LABEL_47:
    v42 = v39;
    v43 = v74;
    MEMORY[0x1C6921200](v74);
    if ((v43 & 0x80000000) == 0)
    {
      close(v43);
    }

    v41 = v42;
    v12 = v72;
    add_explicit = v73;
  }

  else
  {
    v41 = 0;
  }

  v44 = threadData[9 * v77 + 1] + 320 * v76;
  *(v44 + 312) = v12;
  v45 = *(v44 + 232);
  if (v45)
  {
    v45(*(v44 + 288));
  }

  dropThreadId(v77, 0, add_explicit + 1);
  return v41;
}

void _CIFindTokens(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v53 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v83[5] = *MEMORY[0x1E69E9840];
  db_read_lock(v12 + 14720);
  v14 = *(v13 + 14392);
  v15 = v14;
  v16 = *(v13 + 14400);
  if (v14)
  {
    atomic_fetch_add(v14, 1u);
  }

  if (v16)
  {
    atomic_fetch_add(v16, 1u);
  }

  db_read_unlock(v13 + 14720);
  if (v15)
  {
    _CITermUpdateSetFindTokens(v17);
  }

  if (v16)
  {
    _CITermUpdateSetFindTokens(v17);
  }

  if (*(v13 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    if (v15)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v51 = v11;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v19 = setThreadIdAndInfo(*(v13 + 64), sIndexExceptionCallbacks, v13, 0x20000000, add_explicit + 1);
  v59 = v19;
  v20 = threadData[9 * v19 + 1] + 320 * HIDWORD(v19);
  v57 = v21;
  v58 = HIDWORD(v19);
  v56 = v22;
  *(v20 + 216) = 0;
  v23 = *(v20 + 312);
  v24 = *(v20 + 224);
  if (v24)
  {
    v24(*(v20 + 288));
  }

  if (_setjmp(v20))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v20 + 312) = v23;
    if ((~*(v20 + 212) & 0xA0000000) == 0)
    {
      v25 = *(v20 + 288);
      if (v25)
      {
        _CIMakeInvalid(v25);
      }
    }

    CIOnThreadCleanUpReset(v56);
    dropThreadId(v59, 1, add_explicit + 1);
    CICleanUpReset(v59, v57);
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_23:
    TermUpdateSetRelease(v15);
    goto LABEL_24;
  }

  v26 = TokenDataCreate(*v9, *v7);
  if (v26)
  {
    v54 = add_explicit;
    v55 = v16;
    v73 = 0;
    v74 = &v73;
    v50 = v3;
    v75 = 0x2000000000;
    v76 = v78;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2000000000;
    v27 = 32;
    v72 = 32;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2000000000;
    v28 = v26;
    v68 = 0;
    bzero(v82, 0x7E8uLL);
    bzero(v78, 0x800uLL);
    v29 = v28[4];
    v30 = v28[5];
    v31 = v29 >> 1;
    if (v29)
    {
      v32 = 2056;
    }

    else
    {
      v32 = 8;
    }

    v52 = v28;
    buf[0] = *(v28 + 1);
    buf[1] = buf[0];
    v82[8] = v30;
    v80 = v32 & 0xFBFFFFFF | ((v31 & 1) << 26);
    v81 = v51;
    v33 = buf;
    LODWORD(v34) = 1;
    do
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v49 = *__error();
        log = _SILogForLogForCategory(1);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v83[0]) = 67109120;
          HIDWORD(v83[0]) = v34;
          _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "### trie processing - %d ###", v83, 8u);
        }

        *__error() = v49;
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 0x40000000;
      v64[2] = ___bt_findTokens_block_invoke;
      v64[3] = &unk_1E8193490;
      v64[4] = &v65;
      v64[5] = &v69;
      v64[6] = &v73;
      v64[7] = v52;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 0x40000000;
      v83[2] = ___bt_resolveTokens_block_invoke;
      v83[3] = &unk_1E81934B8;
      v83[4] = v64;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 0x40000000;
      v77[2] = ___bt_resolveTokens_block_invoke_2;
      v77[3] = &unk_1E81934E0;
      v77[4] = v64;
      _bt_findBulk(v13, v13 + 96, 0, 0, 0, v34, v33, 0, 0, v53, v83, v77, v50);
      v35 = v74[3];
      v74[3] = v33;
      v36 = v70;
      v37 = v70[3];
      v70[3] = v27;
      v34 = v66[3];
      v66[3] = 0;
      v33 = v35;
      v27 = v37;
    }

    while (v34);
    if (v37 >= 0x21)
    {
      free(v35);
      v36 = v70;
    }

    if (v36[3] >= 0x21)
    {
      free(v74[3]);
    }

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v73, 8);
    if (v52[6])
    {
      v38 = *v5;
      if (!*v5)
      {
        *v5 = v52;
        goto LABEL_49;
      }

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 0x40000000;
      v61 = __bt_findTokens_block_invoke;
      v62 = &__block_descriptor_tmp_2918;
      v63 = v38;
      v40 = v52[10];
      v39 = v52[11];
      if (v39 < v40)
      {
        v41 = *(v52 + 4);
        v42 = v41 + v40;
        v43 = (v41 + v39);
        do
        {
          v44 = v43 + 1;
          v45 = v39 & 0xFFFFFFFF00000000 | *v43;
          (v61)(v60);
          v39 = v45;
          v43 = v44;
        }

        while (v44 < v42);
      }
    }

    free(*(v52 + 1));
    free(*(v52 + 4));
    free(v52);
LABEL_49:
    v16 = v55;
    add_explicit = v54;
  }

  v46 = threadData[9 * v59 + 1] + 320 * v58;
  *(v46 + 312) = v23;
  v47 = *(v46 + 232);
  if (v47)
  {
    v47(*(v46 + 288));
  }

  dropThreadId(v59, 0, add_explicit + 1);
  if (v15)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v16)
  {
    TermUpdateSetRelease(v16);
  }
}

void _CIPreHeatIndex(uint64_t a1, int a2)
{
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v5;
    v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v27 = HIDWORD(v5);
    v26 = __PAIR64__(v7, v8);
    *(v6 + 216) = 0;
    v9 = *(v6 + 312);
    v10 = *(v6 + 224);
    if (v10)
    {
      v10(*(v6 + 288));
    }

    v25 = *buf;
    v24 = v27;
    v23 = v26;
    if (_setjmp(v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v22, 2u);
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

      CIOnThreadCleanUpReset(v23);
      dropThreadId(v25, 1, add_explicit + 1);
      CICleanUpReset(v25, HIDWORD(v23));
    }

    else
    {
      if (a2)
      {
        nice_read_advise(*(a1 + 4672), 1028 * *(a1 + 240));
        nice_read_advise(*(a1 + 208), *(a1 + 128));
        v12 = atomic_load((a1 + 36));
        if ((v12 & 4) != 0)
        {
          v13 = *(a1 + 472);
          v14 = *(a1 + 488) / 50;
        }

        else
        {
          v13 = *(a1 + 5200);
          v14 = 4 * *(a1 + 9400);
        }

        nice_read_advise(v13, v14);
      }

      else
      {
        nice_madvise(*(a1 + 112), *(a1 + 128));
        nice_madvise(*(a1 + 104), (1028 * *(a1 + 240)));
        v15 = atomic_load((a1 + 36));
        if ((v15 & 4) != 0)
        {
          v16 = *(a1 + 528);
          if (v16)
          {
            v17 = *(v16 + 8);
            if (v17)
            {
              nice_madvise(v17, *(a1 + 488) / 0x32uLL);
            }
          }
        }
      }

      v18 = *(a1 + 4928);
      if (v18)
      {
        nice_read_advise(*(v18 + 224), *(v18 + 240));
      }

      v19 = atomic_load((a1 + 36));
      if ((v19 & 4) != 0)
      {
        nice_read_advise(*(a1 + 9432), *(a1 + 4968) / 50);
      }

      v20 = threadData[9 * v25 + 1] + 320 * v24;
      *(v20 + 312) = v9;
      v21 = *(v20 + 232);
      if (v21)
      {
        v21(*(v20 + 288));
      }

      dropThreadId(v25, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

uint64_t nice_read_advise(_DWORD *a1, int64_t a2)
{
  v4 = nice_read_advise_limit;
  if (!nice_read_advise_limit)
  {
    v17 = 0u;
    v18 = 0u;
    *host_info_out = 0u;
    host_info_outCnt[0] = 12;
    v5 = MEMORY[0x1C6920B70]();
    v6 = host_info(v5, 1, host_info_out, host_info_outCnt);
    v7 = *(&v18 + 1);
    if (*(&v18 + 1) >= 0x80000000uLL)
    {
      v7 = 0x80000000;
    }

    v4 = (3435973837 * v7) >> 36;
    if (v6)
    {
      v4 = 53687091;
    }

    else
    {
      v4 = v4;
    }

    nice_read_advise_limit = v4;
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v4;
  }

  *host_info_outCnt = 0;
  result = _fd_acquire_fd(a1, host_info_outCnt);
  if ((result & 0x80000000) == 0)
  {
    v10 = result;
    memset(host_info_out, 0, sizeof(host_info_out));
    if (v8 >= 1)
    {
      v11 = 0x20000;
      v12 = v8;
      do
      {
        *host_info_out = v11 - 0x20000;
        if (v11 >= v8)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0x20000;
        }

        host_info_out[2] = v13;
        v14 = fcntl(v10, 44, host_info_out);
        if (v11 >= v8)
        {
          break;
        }

        v12 -= 0x20000;
        v11 += 0x20000;
      }

      while (!v14);
    }

    return _fd_release_fd(a1, v10, 0, *host_info_outCnt);
  }

  return result;
}

char *nice_madvise(char *result, unint64_t a2)
{
  v3 = result;
  v4 = nice_madvise_limit;
  if (!nice_madvise_limit)
  {
    v11 = 0u;
    v12 = 0u;
    *host_info_out = 0u;
    host_info_outCnt = 12;
    v5 = MEMORY[0x1C6920B70]();
    result = host_info(v5, 1, host_info_out, &host_info_outCnt);
    v6 = *(&v12 + 1);
    if (*(&v12 + 1) >= 0x80000000uLL)
    {
      v6 = 0x80000000;
    }

    v4 = (3435973837 * v6) >> 36;
    if (result)
    {
      v4 = 53687091;
    }

    else
    {
      v4 = v4;
    }

    nice_madvise_limit = v4;
  }

  if (v4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v4;
  }

  do
  {
    if (!v7)
    {
      break;
    }

    v8 = v7 >= 0x20000 ? 0x20000 : v7;
    result = madvise(v3, v8, 3);
    v3 += v8;
    v7 -= v8;
  }

  while (!result);
  return result;
}

uint64_t _CIGetDocIDInfo(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, unint64_t a5, unint64_t a6, int a7)
{
  v7 = a2 - *(a1 + 80);
  v40 = 0;
  if (v7 >= *(a1 + 68))
  {
    return v40;
  }

  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    *buf = 0;
    v38 = 0;
    v37 = 0;
    v15 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v15;
    v37 = v17;
    v38 = __PAIR64__(HIDWORD(v15), v16);
    v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
    *(v18 + 216) = 0;
    v19 = *(v18 + 312);
    v20 = *(v18 + 224);
    v21 = v18;
    if (v20)
    {
      v20(*(v18 + 288));
    }

    v36 = *buf;
    v35 = HIDWORD(v38);
    v34 = __PAIR64__(v38, v37);
    if (_setjmp(v21))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v33, 2u);
      }

      *(v21 + 312) = v19;
      if ((~*(v21 + 212) & 0xA0000000) == 0)
      {
        v22 = *(v21 + 288);
        if (v22)
        {
          _CIMakeInvalid(v22);
        }
      }

      CIOnThreadCleanUpReset(v34);
      dropThreadId(v36, 1, add_explicit + 1);
      CICleanUpReset(v36, HIDWORD(v34));
      return v40;
    }

    if (a7)
    {
      v32 = CICleanUpThreadLoc();
      db_read_lock(a1 + 14504);
      CIOnThreadCleanUpPush(v32, si_rwlock_rdunlock, a1 + 14504);
      v23 = v32;
    }

    else
    {
      v23 = 0;
    }

    if (a3)
    {
      if (*(a1 + 45) == 1)
      {
        v24 = *(*(a1 + 14432) + v7);
      }

      else
      {
        v24 = (*(*(a1 + 14432) + 4 * (v7 / 5uLL)) >> (6 * (v7 % 5))) & 0x3F;
      }

      *a3 = v24 & 0xFFFFFFDF;
    }

    if (a4)
    {
      v25 = *(a1 + 14416);
      if (v25)
      {
        v26 = *(v25 + 4 * v7);
      }

      else
      {
        v26 = 0;
      }

      *a4 = v26;
    }

    if (!(a5 | a6))
    {
      goto LABEL_38;
    }

    v27 = *(a1 + 14424);
    if (v27)
    {
      if (a5)
      {
        *a5 = *(v27 + 8 * v7);
      }

      if (!a6)
      {
        goto LABEL_38;
      }

      v28 = *(v27 + 8 * v7 + 4);
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      if (!a6)
      {
        goto LABEL_38;
      }

      v28 = 0;
    }

    *a6 = v28;
LABEL_38:
    if (a7)
    {
      CIOnThreadCleanUpPop(v23);
    }

    v40 = 1;
    v29 = threadData[9 * v36 + 1] + 320 * v35;
    *(v29 + 312) = v19;
    v30 = *(v29 + 232);
    if (v30)
    {
      v30(*(v29 + 288));
    }

    dropThreadId(v36, 0, add_explicit + 1);
    return v40;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  return v40;
}

BOOL _CIGetGroupForDocId(uint64_t a1, uint64_t a2)
{
  v2 = a2 - *(a1 + 80);
  if (v2 >= *(a1 + 68))
  {
    return 0;
  }

  if (*(a1 + 8) != 1)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    return 0;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v5;
  v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v23 = HIDWORD(v5);
  v22 = __PAIR64__(v7, v8);
  *(v6 + 216) = 0;
  v9 = *(v6 + 312);
  v10 = *(v6 + 224);
  if (v10)
  {
    v10(*(v6 + 288));
  }

  v21 = *buf;
  v20 = v23;
  v19 = v22;
  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v18, 2u);
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

    CIOnThreadCleanUpReset(v19);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, HIDWORD(v19));
    return 0;
  }

  v13 = CICleanUpThreadLoc();
  db_read_lock(a1 + 14504);
  CIOnThreadCleanUpPush(v13, si_rwlock_rdunlock, a1 + 14504);
  if (*(a1 + 45) == 1)
  {
    v14 = *(*(a1 + 14432) + v2);
  }

  else
  {
    v14 = (*(*(a1 + 14432) + 4 * (v2 / 5uLL)) >> (6 * (v2 % 5))) & 0x3F;
  }

  v15 = v14 & 0xFFFFFFDF;
  CIOnThreadCleanUpPop(v13);
  v16 = threadData[9 * v21 + 1] + 320 * v20;
  *(v16 + 312) = v9;
  v17 = *(v16 + 232);
  if (v17)
  {
    v17(*(v16 + 288));
  }

  dropThreadId(v21, 0, add_explicit + 1);
  return v15;
}

void _CIAddOids(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_13;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
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
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v13 = CICleanUpThreadLoc();
  db_read_lock(a1 + 14504);
  CIOnThreadCleanUpPush(v13, si_rwlock_rdunlock, a1 + 14504);
  v14 = *(a1 + 68);
  if (v14)
  {
    v15 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
    if (v14 < 2)
    {
      v23 = 0;
    }

    else
    {
      v16 = *(a1 + 14408);
      v17 = 6;
      v18 = 1;
      v19 = 0;
      do
      {
        v20 = *(v16 + 8 * v18);
        v15[v19] = v20;
        if (v20)
        {
          if (*(a1 + 45) == 1)
          {
            LOBYTE(v21) = *(*(a1 + 14432) + v18);
          }

          else
          {
            v21 = (*(*(a1 + 14432) + (((3435973837u * v18) >> 32) & 0xFFFFFFFC)) >> (v17 - 30 * (v18 / 5))) & 0x3F;
          }

          if ((v21 & 0xDF) != 0)
          {
            v22 = (v19 + 1);
          }

          else
          {
            v22 = v19;
          }
        }

        else
        {
          v22 = v19;
        }

        ++v18;
        v17 += 6;
        v19 = v22;
      }

      while (v14 != v18);
      v23 = v22;
    }

    v24 = v15;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  CIOnThreadCleanUpPop(v13);
  v25 = threadData[9 * v30 + 1] + 320 * v29;
  *(v25 + 312) = v9;
  v26 = *(v25 + 232);
  if (v26)
  {
    v26(*(v25 + 288));
  }

  dropThreadId(v30, 0, add_explicit + 1);
  if (v14)
  {
    qsort_oids(v24, v23);
    RLEOIDArrayAddSortedOids(a2, v24, v23);
  }

  v12 = v24;
LABEL_14:
  free(v12);
}

void _CIDeleteByOidsBulk(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v5;
    v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v59 = HIDWORD(v5);
    v58 = __PAIR64__(v7, v8);
    *(v6 + 216) = 0;
    v9 = *(v6 + 312);
    v10 = *(v6 + 224);
    if (v10)
    {
      v10(*(v6 + 288));
    }

    v57 = *buf;
    v56 = v59;
    v55 = v58;
    if (_setjmp(v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v54 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v54, 2u);
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

      CIOnThreadCleanUpReset(v55);
      dropThreadId(v57, 1, add_explicit + 1);
      CICleanUpReset(v57, HIDWORD(v55));
      return;
    }

    v12 = CICleanUpThreadLoc();
    _db_write_lock(a1 + 14504);
    v53 = v12;
    CIOnThreadCleanUpPush(v12, si_rwlock_wrunlock, a1 + 14504);
    v13 = *(a1 + 68);
    if (v13 >= 2)
    {
      v14 = 6;
      v15 = 1;
      v16 = MEMORY[0x1E69E9AC8];
      do
      {
        if (!RLEOIDArrayContainsOid_locked(a2, *(*(a1 + 14408) + 8 * v15)))
        {
          goto LABEL_28;
        }

        if (*(a1 + 45) == 1)
        {
          *(*(a1 + 14432) + v15) = 0;
          v17 = *(a1 + 14440);
          if (v17)
          {
            *(v17 + v15 / (32 * *v16)) |= 1 << ((v15 / (4 * *v16)) & 7);
          }

          goto LABEL_28;
        }

        v18 = v15 / 5uLL;
        v19 = *(a1 + 14432);
        v20 = v18;
        v21 = *(v19 + 4 * v18) & ~(63 << (v14 - 30 * (v15 / 5)));
        if (*(a1 + 14440))
        {
          v22 = v18 / (8 * *v16);
          v23 = (v18 / *v16) & 7;
          *(*(a1 + 14440) + v22) |= 1 << v23;
          if (!*(*(a1 + 14440) + v22))
          {
            v30 = __si_assert_copy_extra_332();
            v38 = v30;
            v39 = "";
            if (v30)
            {
              v39 = v30;
            }

            v40 = "(cindex)->groupMap[gslot]";
LABEL_42:
            __message_assert_336(v30, v31, v32, v33, v34, v35, v36, v37, "ContentIndex.c", 3282, v40, v39);
            free(v38);
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

          v24 = v23 | (8 * v22);
          if (*v16 * v24 > v18)
          {
            v30 = __si_assert_copy_extra_332();
            v38 = v30;
            v39 = "";
            if (v30)
            {
              v39 = v30;
            }

            v40 = "vm_page_size*(gslot*8+bslot) <=slot";
            goto LABEL_42;
          }

          if (*v16 * (v24 + 1) <= v18)
          {
            v42 = __si_assert_copy_extra_332();
            v50 = v42;
            v51 = "";
            if (v42)
            {
              v51 = v42;
            }

            __message_assert_336(v42, v43, v44, v45, v46, v47, v48, v49, "ContentIndex.c", 3282, "vm_page_size*(gslot*8+bslot+1) >slot", v51);
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

          v25 = *(a1 + 14432);
          v26 = *(a1 + 45);
          *(v25 + 4 * v20) = v21;
          if (v26)
          {
            v27 = *(v25 + v15);
            goto LABEL_27;
          }
        }

        else
        {
          *(v19 + 4 * v18) = v21;
        }

        v27 = (v21 >> (v14 - 30 * (v15 / 5))) & 0x3F;
LABEL_27:
        if (v27)
        {
          v30 = __si_assert_copy_extra_332();
          v38 = v30;
          v39 = "";
          if (v30)
          {
            v39 = v30;
          }

          v40 = "((cindex)->coreSpotlight?({ ((uint8_t *)(cindex)->groups)[(i)]; }):({ uint32_t __where=(uint32_t)(i); uint32_t __slot = __where/5; uint32_t __shift= (__where-(__slot*5))*6; uint32_t __word = ((uint32_t)((cindex)->groups[__slot])); (__word >> __shift) & 0x3F ; }))==(inval&0x3F)";
          goto LABEL_42;
        }

LABEL_28:
        ++v15;
        v14 += 6;
      }

      while (v13 != v15);
    }

    CIOnThreadCleanUpPop(v53);
    v28 = threadData[9 * v57 + 1] + 320 * v56;
    *(v28 + 312) = v9;
    v29 = *(v28 + 232);
    if (v29)
    {
      v29(*(v28 + 288));
    }

    dropThreadId(v57, 0, add_explicit + 1);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

uint64_t _CIMoveDirectory(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = a2;
  v10 = *(a1 + 15203);
  indexMarkDirty(a1);
  _db_write_lock(a1 + 4696);
  if ((v10 & 1) == 0)
  {
    _db_write_lock(a1 + 14720);
    v11 = *(a1 + 14392);
    if (v11)
    {
      _TermUpdateSetLock(v11, 1);
    }

    v12 = *(a1 + 14400);
    if (v12)
    {
      _TermUpdateSetLock(v12, 1);
    }
  }

  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v14 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v14;
    v15 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
    v33 = HIDWORD(v14);
    v32 = __PAIR64__(v16, v17);
    *(v15 + 216) = 0;
    v18 = *(v15 + 312);
    v19 = *(v15 + 224);
    if (v19)
    {
      v19(*(v15 + 288));
    }

    v31 = *buf;
    v30 = v33;
    v29 = v32;
    if (_setjmp(v15))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v28, 2u);
      }

      *(v15 + 312) = v18;
      if ((~*(v15 + 212) & 0xA0000000) == 0)
      {
        v20 = *(v15 + 288);
        if (v20)
        {
          _CIMakeInvalid(v20);
        }
      }

      CIOnThreadCleanUpReset(v29);
      dropThreadId(v31, 1, add_explicit + 1);
      CICleanUpReset(v31, HIDWORD(v29));
    }

    else
    {
      if ((v10 & 1) == 0)
      {
        v21 = *(a1 + 14392);
        if (v21)
        {
          moveDirectory((v21 + 48), v8, a3, v6, a5);
        }

        v22 = *(a1 + 14400);
        if (v22)
        {
          moveDirectory((v22 + 48), v8, a3, v6, a5);
        }
      }

      directoryStoreMoveDirectory(*(a1 + 4928), v8, a3, v6, a5);
      v23 = threadData[9 * v31 + 1] + 320 * v30;
      *(v23 + 312) = v18;
      v24 = *(v23 + 232);
      if (v24)
      {
        v24(*(v23 + 288));
      }

      dropThreadId(v31, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  result = db_write_unlock(a1 + 4696);
  if ((v10 & 1) == 0)
  {
    v26 = *(a1 + 14392);
    if (v26)
    {
      _TermUpdateSetUnlock(v26);
    }

    v27 = *(a1 + 14400);
    if (v27)
    {
      _TermUpdateSetUnlock(v27);
    }

    return db_write_unlock(a1 + 14720);
  }

  return result;
}

BOOL _CICreateFdAndHoldAssertion(uint64_t a1, uint64_t a2, const char *a3, double a4)
{
  v34 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v8 = a1 + 15208;
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), a3);
  v9 = fd_create_protected(*(a1 + 64), __str, 514, 0);
  if (v9)
  {
    v10 = v9;
    v24 = 0;
    v11 = _fd_acquire_fd(v9, &v24);
    if (v11 < 0)
    {
      v15 = *__error();
      v16 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = *__error();
        v22 = __error();
        v23 = strerror(*v22);
        *buf = 136316674;
        v26 = "_CICreateFdAndHoldAssertion";
        v27 = 1024;
        v28 = 3401;
        v29 = 1024;
        *v30 = v11;
        *&v30[4] = 2080;
        *&v30[6] = v8;
        *&v30[14] = 2080;
        *&v30[16] = a3;
        v31 = 1024;
        LODWORD(v32[0]) = v21;
        WORD2(v32[0]) = 2080;
        *(v32 + 6) = v23;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: fd = %d for %s%s file: %d(%s)", buf, 0x3Cu);
      }

      v12 = 0;
      *__error() = v15;
    }

    else
    {
      v12 = fd_hold_assertion(v10, a2, a4) >= 0;
      _fd_release_fd(v10, v11, 0, v24);
    }

    fd_release(v10);
  }

  else
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *__error();
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136316418;
      v26 = "_CICreateFdAndHoldAssertion";
      v27 = 1024;
      v28 = 3388;
      v29 = 2080;
      *v30 = v8;
      *&v30[8] = 2080;
      *&v30[10] = a3;
      *&v30[18] = 1024;
      *&v30[20] = v18;
      v31 = 2080;
      v32[0] = v20;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Unable to get fdptr for %s%s file: %d(%s)", buf, 0x36u);
    }

    v12 = 0;
    *__error() = v13;
  }

  return v12;
}

BOOL _CICreateFdAndDropAssertion(uint64_t a1, const char *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v4 = a1 + 15208;
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), a2);
  v5 = fd_create_protected(*(a1 + 64), __str, 2, 0);
  if (v5)
  {
    v6 = v5;
    v20 = 0;
    v7 = _fd_acquire_fd(v5, &v20);
    if (v7 < 0)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = *__error();
        v18 = __error();
        v19 = strerror(*v18);
        *buf = 136316674;
        v22 = "_CICreateFdAndDropAssertion";
        v23 = 1024;
        v24 = 3429;
        v25 = 1024;
        *v26 = v7;
        *&v26[4] = 2080;
        *&v26[6] = v4;
        *&v26[14] = 2080;
        *&v26[16] = a2;
        v27 = 1024;
        LODWORD(v28[0]) = v17;
        WORD2(v28[0]) = 2080;
        *(v28 + 6) = v19;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: fd = %d for %s%s file: %d(%s)", buf, 0x3Cu);
      }

      v8 = 0;
      *__error() = v11;
    }

    else
    {
      v8 = fd_drop_assertion(v6) >= 0;
      _fd_release_fd(v6, v7, 0, v20);
    }

    fd_release(v6);
  }

  else
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 136316418;
      v22 = "_CICreateFdAndDropAssertion";
      v23 = 1024;
      v24 = 3416;
      v25 = 2080;
      *v26 = v4;
      *&v26[8] = 2080;
      *&v26[10] = a2;
      *&v26[18] = 1024;
      *&v26[20] = v14;
      v27 = 2080;
      v28[0] = v16;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Unable to get fdptr for %s%s file: %d(%s)", buf, 0x36u);
    }

    v8 = 0;
    *__error() = v9;
  }

  return v8;
}

uint64_t expandMap(uint64_t a1, size_t a2, void **a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = fd_mmap(a1, a2, 3, 1025, 0);
  *a3 = v10;
  if (v10 == -1)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *__error();
      v18 = 136315650;
      v19 = "expandMap";
      v20 = 1024;
      v21 = 29;
      v22 = 1024;
      v23 = v17;
      _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: mmap err: %d", &v18, 0x18u);
    }

    *__error() = v14;
  }

  else
  {
    while (1)
    {
      if (fd_truncate(a1, a2) != -1)
      {
        return 0;
      }

      v11 = *__error();
      if (!a4 || v11 != 28)
      {
        break;
      }

      if ((a4(a5) & 1) == 0)
      {
        v11 = 28;
        break;
      }
    }

    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "expandMap";
      v20 = 1024;
      v21 = 38;
      v22 = 1024;
      v23 = v11;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate err: %d", &v18, 0x18u);
    }

    *__error() = v12;
    munmap(*a3, a2);
    *a3 = -1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t expandUnsafeMapNew(void **a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = a3;
  }

  v15 = *a1;
  v16 = a4 * a3;
  fd_system_status_stall_if_busy();
  msync(v15, v16, 16);
  munmap(*a1, v16);
  *a1 = 0;
  v26 = a5;
  *a5 = 0;
  if ((a3 & (a3 - 1)) == 0)
  {
    goto LABEL_8;
  }

  v17 = 2;
  do
  {
    v18 = v17;
    v17 *= 2;
  }

  while (v18 < a3);
  if (!expandMap(a2, v18 * a4, a1, a6, a7))
  {
    v21 = 0;
    *v26 = v18;
  }

  else
  {
LABEL_8:
    v19 = v14 + a3;
    while (1)
    {
      if (v19 > 0xFFFFFFFF / a4)
      {
        *__error() = 7;
        return 0xFFFFFFFFLL;
      }

      v20 = v19 * a4;
      v21 = expandMap(a2, v19 * a4, a1, a6, a7);
      if (!v21)
      {
        *v26 = v20 / a4;
        return v21;
      }

      if (v14 <= 8)
      {
        break;
      }

      v19 = a3 + (v14 >> 1);
      v14 >>= 1;
    }

    v22 = *__error();
    v23 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = *__error();
      *buf = 136315906;
      v28 = "expandUnsafeMapNew";
      v29 = 1024;
      v30 = 82;
      v31 = 1024;
      v32 = v25;
      v33 = 1024;
      v34 = -1;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: expandUnsafeMap errno: %d err: %d", buf, 0x1Eu);
    }

    *__error() = v22;
  }

  return v21;
}

uint64_t flatStoreNewBlockForCompact(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = HIDWORD(a2) ? 0 : a2 << 6;
    if (v2 < *(a1 + 232))
    {
      v3 = a1;
      v4 = storageResolvePtr(a1, v2, 8, 1);
      v5 = storageResolvePtr(v3, v2, 64 << *(v4 + 2), 1);
      a1 = v3;
      *(v3 + 232) = v2 + ((*v5 + 71) & 0x1FFC0);
      if ((*(v3 + 4374) & 1) == 0)
      {
        *(v3 + 184) = 0u;
        *(v3 + 168) = 0u;
        *(v3 + 152) = 0u;
        *(v3 + 136) = 0u;
        *(v3 + 120) = 0u;
        *(v3 + 104) = 0u;
        *(v3 + 88) = 0u;
        *(v3 + 72) = 0u;
        *(v3 + 56) = 0u;
        *(v3 + 40) = 0u;
        *(v3 + 24) = 0u;
        *(v3 + 8) = 0u;
        *(v3 + 4374) = 1;
      }
    }
  }

  v6 = *(a1 + 4);
  if (WORD1(v6) || (v7 = (((0x10000 - v6) ^ (0xFFFF - v6)) <= 0xFFFF - v6) - __clz(0x10000 - v6), v7 <= -29))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 + 28;
  }

  v9 = 8 << v8;
  v10 = (16 << v8);
  v11 = *(a1 + 224);
  v12 = *(a1 + 232);
  if (v6 + v12 + v10 + 8 >= v11)
  {
    v16 = a1;
    if (!_storageExpand(a1, v9))
    {
      return 0;
    }

    a1 = v16;
    v12 = *(v16 + 232);
    v11 = *(a1 + 224);
  }

  v13 = (v9 + v6);
  if (v12 + v13 >= v11)
  {
    v17 = a1;
    if (_storageWindowsExpandBacking((a1 + 216), v13))
    {
      a1 = v17;
      v12 = *(v17 + 232);
      *(a1 + 232) = v12 + v13;
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    *(a1 + 232) = v12 + v13;
    if (v12)
    {
LABEL_15:
      v14 = storageResolvePtr(a1, v12, 0x10000, 1);
      *v14 = 0;
      *(v14 + 2) = 10;
      return (v12 >> 6);
    }
  }

  return 0;
}

uint64_t mergeEntryFlat(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v283 = v3;
  v5 = v4;
  v6 = v2;
  v287 = v7;
  v9 = v8;
  __s2 = v10;
  v12 = v11;
  v13 = v1;
  v308 = *MEMORY[0x1E69E9840];
  v14 = v2 << 6;
  v289 = HIDWORD(v2);
  if (HIDWORD(v2))
  {
    v15 = 0;
  }

  else
  {
    v15 = v2 << 6;
  }

  v16 = storageResolvePtr(v1 + 160, v15, 8, 1);
  v17 = storageResolvePtr(v13 + 160, v15, 64 << *(v16 + 2), 1);
  bzero(v307, 0x1000uLL);
  v18 = *v17;
  v295 = v17;
  v19 = (64 << *(v17 + 2)) - 8;
  v303 = 0;
  v304 = 0uLL;
  v297 = v9;
  v301 = v9;
  v302 = 0;
  if (v19 < v18)
  {
    v20 = (v18 + 7) | ((v18 + 7) >> 1) | (((v18 + 7) | ((v18 + 7) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | (v21 >> 16);
    bzero(__n, 0x4148uLL);
    checkTrieFatData(v13, 0, v15, v22 + 1 + v15, __n);
    v23 = *(v13 + 392);
    if (v23 < v18 + 8)
    {
      v24 = 0;
    }

    else
    {
      v24 = -1;
    }

    if (v15 == v24)
    {
      v229 = __si_assert_copy_extra_2708(*(v13 + 376));
      v230 = v229;
      v231 = "";
      if (v229)
      {
        v231 = v229;
      }

      __message_assert("%s:%u: failed assertion '%s' %s offset: %lld, freeRegion: %lld, kind:%d", "FlatStore.c", 179, "flatStoreGetOffset(ptr)+roundup2(pageEnd+int_sizeof(*page) <= freeRegion)", v231, 0, v23, v289);
      free(v230);
      if (__valid_fsp(*(v13 + 376)))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v25 = __clz(__rbit32((v22 + 9) >> 6));
    if (v22 < 0x37)
    {
      v25 = -1;
    }

    *(v295 + 2) = v25;
    v19 = (64 << v25) - 8;
  }

  if (v19 < v18)
  {
    if (!isExFat(*(v13 + 152)))
    {
LABEL_490:
      v218 = __si_assert_copy_extra_2708(*(v13 + 376));
      __message_assert("%s:%u: failed assertion '%s' %s ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 194, "pageSize >= pageEnd && pageSize && (__builtin_popcount(pageSize+int_sizeof(*page)) == 1)");
LABEL_495:
      v45 = v218;
LABEL_496:
      free(v45);
      v223 = *(v13 + 376);
      goto LABEL_497;
    }

LABEL_485:
    v215 = __si_assert_copy_extra_2708(*(v13 + 376));
    v216 = v215;
    v217 = "";
    if (v215)
    {
      v217 = v215;
    }

    si_analytics_log_3138("%s:%u: failure log '%s' %s ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 188, "pageSize >= pageEnd && pageSize && (__builtin_popcount(pageSize+int_sizeof(*page)) == 1)", v217, v19, v18, v289, v15, *(v13 + 384), *(v13 + 392));
    free(v216);
    goto LABEL_488;
  }

  if (((v19 + 8) ^ (v19 + 7)) <= v19 + 7)
  {
    if (!isExFat(*(v13 + 152)))
    {
      goto LABEL_490;
    }

    goto LABEL_485;
  }

  v26 = v12[275];
  if (v26 > 0x1000)
  {
    v219 = __si_assert_copy_extra_2708(*(v13 + 376));
    v220 = v219;
    v221 = "";
    if (v219)
    {
      v221 = v219;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %ld, ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 198, "ms->currentStringLen <= CMPBUFFER_SIZE", v221, v12[275], v19, v18, v289, v15, *(v13 + 384), *(v13 + 392));
    v222 = v220;
    goto LABEL_502;
  }

  if (!v5)
  {
    v12[7] = v6;
    v12[8] = v289;
    if (!v289)
    {
      goto LABEL_19;
    }

LABEL_44:
    v42 = __si_assert_copy_extra_2708(*(v13 + 376));
    v43 = v42;
    v44 = "";
    if (v42)
    {
      v44 = v42;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 212, "ptr.kind==FLAT", v44);
    v45 = v43;
    goto LABEL_496;
  }

  __memcpy_chk();
  if (v12[7] != v6)
  {
    v225 = __si_assert_copy_extra_2708(*(v13 + 376));
    v226 = v225;
    v227 = "";
    if (v225)
    {
      v227 = v225;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 205, "ms->pageOffset.next==_ptr.next", v227);
    v222 = v226;
LABEL_502:
    free(v222);
    v228 = *(v13 + 376);
    goto LABEL_570;
  }

  if (v289)
  {
    goto LABEL_44;
  }

LABEL_19:
  if (v14 >= *(v13 + 392))
  {
    v218 = __si_assert_copy_extra_2708(*(v13 + 376));
    __message_assert("%s:%u: failed assertion '%s' %s offset: %lld, freeRegion: %lld, kind:%d");
    goto LABEL_495;
  }

  v27 = 0uLL;
  *__n = 0u;
  v306 = 0u;
  v28 = *v12;
  if (*v12)
  {
    if (v18 && v5 == 0)
    {
      v30 = v12 + 271;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 40) = 0;
      goto LABEL_27;
    }
  }

  v286 = v13;
  v293 = v18;
  v282 = v5;
  if (v18 <= v5)
  {
    v40 = __s2;
    if (v5)
    {
      if (v26 >= v9)
      {
        LODWORD(v5) = v9;
      }

      else
      {
        LODWORD(v5) = v26;
      }

      v41 = v295;
      if (v5)
      {
        goto LABEL_52;
      }

LABEL_55:
      v47 = v14;
LABEL_74:
      v48 = v297 - v5;
      v302 = v5;
      v301 = v297 - v5;
      if (v297 == v5)
      {
        v49 = v286;
        v234 = __si_assert_copy_extra_2708(*(v286 + 376));
        v91 = v234;
        v235 = "";
        if (v234)
        {
          v235 = v234;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 440, "newEntry.len", v235);
        goto LABEL_569;
      }

      v28 = *v12;
    }

    else
    {
      v47 = v14;
      v48 = v297;
      v41 = v295;
    }

    v55 = v5;
    v303 = &v40[v5];
    v304 = *(v12 + 2);
    if (v28)
    {
      if (v48 >= 0x80)
      {
        if (v48 >= 0x4000)
        {
          if (v48 >= 0x200000)
          {
            if (v48 >> 28)
            {
              v56 = 5;
            }

            else
            {
              v56 = 4;
            }
          }

          else
          {
            v56 = 3;
          }
        }

        else
        {
          v56 = 2;
        }
      }

      else
      {
        v56 = 1;
      }

      if (v5 >= 0x80)
      {
        if (v5 >= 0x4000)
        {
          if (v5 >= 0x200000)
          {
            if (v5 >> 28)
            {
              v59 = 5;
            }

            else
            {
              v59 = 4;
            }
          }

          else
          {
            v59 = 3;
          }
        }

        else
        {
          v59 = 2;
        }
      }

      else
      {
        v59 = 1;
      }

      v60 = v304;
      v61 = v304 - *(v12 + 271);
      if (v61 >= 0x80)
      {
        if (v61 >= 0x4000)
        {
          if (v61 >= 0x200000)
          {
            if (v61 >> 28)
            {
              if (v61 >> 35)
              {
                if (v61 >> 42)
                {
                  if (v61 >> 49)
                  {
                    if (HIBYTE(v61))
                    {
                      v62 = 9;
                    }

                    else
                    {
                      v62 = 8;
                    }
                  }

                  else
                  {
                    v62 = 7;
                  }
                }

                else
                {
                  v62 = 6;
                }
              }

              else
              {
                v62 = 5;
              }
            }

            else
            {
              v62 = 4;
            }
          }

          else
          {
            v62 = 3;
          }
        }

        else
        {
          v62 = 2;
        }
      }

      else
      {
        v62 = 1;
      }

      v163 = *(v12 + 273);
      if (!*(&v304 + 1))
      {
        v163 = 0;
      }

      v164 = *(&v304 + 1) - v163;
      if (v164 >= 0x80)
      {
        if (v164 >= 0x4000)
        {
          if (v164 >= 0x200000)
          {
            if (v164 >> 28)
            {
              if (v164 >> 35)
              {
                if (v164 >> 42)
                {
                  if (v164 >> 49)
                  {
                    if (HIBYTE(v164))
                    {
                      v165 = 9;
                    }

                    else
                    {
                      v165 = 8;
                    }
                  }

                  else
                  {
                    v165 = 7;
                  }
                }

                else
                {
                  v165 = 6;
                }
              }

              else
              {
                v165 = 5;
              }
            }

            else
            {
              v165 = 4;
            }
          }

          else
          {
            v165 = 3;
          }
        }

        else
        {
          v165 = 2;
        }
      }

      else
      {
        v165 = 1;
      }

      v66 = v56 + v48 + v59 + v62 + v165;
    }

    else
    {
      if (v48 >= 0x80)
      {
        if (v48 >= 0x4000)
        {
          if (v48 >= 0x200000)
          {
            if (v48 >> 28)
            {
              v57 = 5;
            }

            else
            {
              v57 = 4;
            }
          }

          else
          {
            v57 = 3;
          }
        }

        else
        {
          v57 = 2;
        }
      }

      else
      {
        v57 = 1;
      }

      if (v5 >= 0x80)
      {
        if (v5 >= 0x4000)
        {
          if (v5 >= 0x200000)
          {
            if (v5 >> 28)
            {
              v64 = 5;
            }

            else
            {
              v64 = 4;
            }
          }

          else
          {
            v64 = 3;
          }
        }

        else
        {
          v64 = 2;
        }
      }

      else
      {
        v64 = 1;
      }

      v60 = v304;
      if (v304 >= 0x80)
      {
        if (v304 >= 0x4000)
        {
          if (v304 >= 0x200000)
          {
            if (v304 >> 28)
            {
              v65 = 5;
            }

            else
            {
              v65 = 4;
            }
          }

          else
          {
            v65 = 3;
          }
        }

        else
        {
          v65 = 2;
        }
      }

      else
      {
        v65 = 1;
      }

      v66 = v57 + v48 + v64 + v65;
    }

    v166 = v66 + v293;
    if (v66 + v293 <= v19)
    {
LABEL_416:
      if (v166 > v19)
      {
        v232 = __si_assert_copy_extra_2708(0);
        v208 = v232;
        v233 = "";
        if (v232)
        {
          v233 = v232;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 488, "pageEnd + newEntrySize <= pageSize", v233);
        goto LABEL_478;
      }

      if (*v12)
      {
        *v287 = v304;
        v174 = FlatStorePageEntryWrite2_3163(v41, &v301, (v12 + 271), v293);
LABEL_458:
        *v41 = v174;
        v199 = 64 << *(v41 + 2);
        v200 = *(v286 + 408);
        if (v200 >= 1)
        {
          v201 = (v286 + 432);
          v202 = 1;
          while (1)
          {
            v203 = *v201;
            if (*v201 && (v204 = v203[1], v204 + 1 >= 2) && v204 <= v41 && (v206 = v203[2], v204 - v206 + v203[3] > v41))
            {
              v205 = v41 - v204 + v206;
              if (v202 >= v200)
              {
                goto LABEL_470;
              }
            }

            else
            {
              v205 = -1;
              if (v202 >= v200)
              {
                goto LABEL_470;
              }
            }

            ++v202;
            ++v201;
            if (v205 != -1)
            {
              goto LABEL_470;
            }
          }
        }

        v205 = -1;
LABEL_470:
        bit_vector_set_4242((v286 + 4536), (v205 >> 17));
        if ((v205 >> 17) != (v205 + v199) >> 17)
        {
          bit_vector_set_4242((v286 + 4536), (v205 >> 17) + 1);
        }

        v12[6] = v174;
        if (!v282)
        {
          v12[9] = v5 + v48;
        }

        memcpy(v12 + 276, __s2, v297);
        result = 0;
        v12[275] = v297;
        return result;
      }

      v175 = v12[2];
      v12[2] = v175 + 1;
      *v287 = v304;
      if (v175 != v60)
      {
        v76 = v286;
        v236 = __si_assert_copy_extra_2708(*(v286 + 376));
        v78 = v236;
        v237 = "";
        if (v236)
        {
          v237 = v236;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 511, "termID == getNum(newEntry.termInfo.termInfo.termId.ptr)", v237);
        goto LABEL_547;
      }

      v176 = v41 + 8;
      if (v48 > 0x7F)
      {
        if (v48 >> 14)
        {
          if (v48 >> 21)
          {
            if (v48 >> 28)
            {
              v181 = v176 + v293;
              *v181 = -16;
              *(v181 + 1) = v48;
              v177 = v293 + 5;
            }

            else
            {
              v180 = (v176 + v293);
              *v180 = HIBYTE(v48) | 0xE0;
              v180[1] = BYTE2(v48);
              v180[2] = BYTE1(v48);
              v177 = v293 + 4;
              v180[3] = v48;
            }
          }

          else
          {
            v179 = (v176 + v293);
            *v179 = BYTE2(v48) | 0xC0;
            v179[1] = BYTE1(v48);
            v177 = v293 + 3;
            v179[2] = v48;
          }
        }

        else
        {
          v178 = (v176 + v293);
          *v178 = BYTE1(v48) | 0x80;
          v177 = v293 + 2;
          v178[1] = v48;
        }
      }

      else
      {
        v177 = v293 + 1;
        *(v176 + v293) = v48;
      }

      if (v5 > 0x7F)
      {
        if (v5 >> 14)
        {
          if (v5 >> 21)
          {
            if (v5 >> 28)
            {
              v186 = v176 + v177;
              *v186 = -16;
              *(v186 + 1) = v5;
              v182 = v177 + 5;
            }

            else
            {
              v185 = (v176 + v177);
              *v185 = BYTE3(v5) | 0xE0;
              v185[1] = BYTE2(v5);
              v185[2] = BYTE1(v5);
              v182 = v177 + 4;
              v185[3] = v5;
            }
          }

          else
          {
            v184 = (v176 + v177);
            *v184 = BYTE2(v5) | 0xC0;
            v184[1] = BYTE1(v5);
            v182 = v177 + 3;
            v184[2] = v5;
          }
        }

        else
        {
          v183 = (v176 + v177);
          *v183 = BYTE1(v5) | 0x80;
          v182 = v177 + 2;
          v183[1] = v5;
        }
      }

      else
      {
        v182 = v177 + 1;
        *(v176 + v177) = v5;
      }

      if (v48)
      {
        if (v48 >= 0x20 && v182 + v41 - &v40[v55] + 8 >= 0x20)
        {
          v187 = v48 & 0xFFFFFFE0;
          v194 = (v182 + v41 + 24);
          v195 = &v40[v55 + 16];
          v196 = v187;
          do
          {
            v197 = *v195;
            *(v194 - 1) = *(v195 - 1);
            *v194 = v197;
            v194 += 2;
            v195 += 32;
            v196 -= 32;
          }

          while (v196);
          v182 += v187;
          if (v187 == v48)
          {
            goto LABEL_445;
          }
        }

        else
        {
          v187 = 0;
        }

        v188 = v48 - v187;
        v189 = &v40[v187 + v55];
        v190 = v182;
        do
        {
          v191 = *v189++;
          v182 = v190 + 1;
          *(v176 + v190++) = v191;
          --v188;
        }

        while (v188);
      }

LABEL_445:
      if (v60 > 0x7F)
      {
        if (v60 >> 14)
        {
          if (v60 >> 21)
          {
            v198 = v176 + v182;
            if (v60 >> 28)
            {
              *v198 = -16;
              *(v198 + 1) = v60;
              v174 = v182 + 5;
            }

            else
            {
              *v198 = HIBYTE(v60) | 0xE0;
              *(v198 + 1) = BYTE2(v60);
              *(v198 + 2) = BYTE1(v60);
              v174 = v182 + 4;
              *(v198 + 3) = v60;
            }
          }

          else
          {
            v193 = (v176 + v182);
            *v193 = BYTE2(v60) | 0xC0;
            v193[1] = BYTE1(v60);
            v174 = v182 + 3;
            v193[2] = v60;
          }
        }

        else
        {
          v192 = (v176 + v182);
          *v192 = BYTE1(v60) | 0x80;
          v174 = v182 + 2;
          v192[1] = v60;
        }
      }

      else
      {
        v174 = v182 + 1;
        *(v176 + v182) = v60;
      }

      goto LABEL_458;
    }

    if (v283 && v19 <= 0xFFF7)
    {
      v167 = reallocBlock(v286, v6, v66 + v293, v283);
      if (v167)
      {
        if (v12[7])
        {
          *(v12 + 7) = v167;
        }

        if (HIDWORD(v167))
        {
          v168 = 0;
        }

        else
        {
          v168 = v167 << 6;
        }

        v169 = storageResolvePtr(v286 + 160, v168, 8, 1);
        v170 = storageResolvePtr(v286 + 160, v168, 64 << *(v169 + 2), 1);
        v19 = (64 << *(v170 + 2)) - 8;
        v293 = *v170;
        v166 = v66 + v293;
        if (v66 + v293 > v19)
        {
          v76 = v286;
          v171 = __si_assert_copy_extra_2708(*(v286 + 376));
          v78 = v171;
          v172 = "";
          if (v171)
          {
            v172 = v171;
          }

          __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 469, "pageEnd + newEntrySize <= pageSize", v172);
          goto LABEL_547;
        }

LABEL_415:
        v41 = v170;
        v40 = __s2;
        v55 = v5;
        goto LABEL_416;
      }

LABEL_488:
      v12[1] = -1;
      return 1;
    }

    if (v19 <= 0xFFF7 && extendBlock(v286, v6, v66 + v293))
    {
      v173 = storageResolvePtr(v286 + 160, v47, 8, 1);
      v170 = storageResolvePtr(v286 + 160, v47, 64 << *(v173 + 2), 1);
      v19 = (64 << *(v170 + 2)) - 8;
      if (v166 > v19)
      {
        v49 = v286;
        v265 = __si_assert_copy_extra_2708(*(v286 + 376));
        v91 = v265;
        v266 = "";
        if (v265)
        {
          v266 = v265;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 473, "pageEnd + newEntrySize <= pageSize", v266);
        goto LABEL_569;
      }

      goto LABEL_415;
    }

    v30 = v12 + 271;
    *(v12 + 3) = 0;
    *(v12 + 4) = 0;
    *(v12 + 40) = 0;
    v27 = 0uLL;
LABEL_27:
    *v30 = v27;
    return 1;
  }

  v278 = v14;
  v280 = v19;
  v291 = v12;
  v292 = (v12 + 276);
  v32 = v5;
  while (1)
  {
    if (*v12)
    {
      v207 = __si_assert_copy_extra_2708(0);
      v208 = v207;
      v209 = "";
      if (v207)
      {
        v209 = v207;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 232, "ms->type == kTermInfoTypeId", v209);
      goto LABEL_478;
    }

    v33 = FlatStorePageEntryRead(v295, v18, __n, v32, 0);
    v34 = LODWORD(__n[0]);
    v35 = HIDWORD(__n[0]);
    v36 = HIDWORD(__n[0]) + LODWORD(__n[0]);
    if ((HIDWORD(__n[0]) + LODWORD(__n[0])) > 0x1000)
    {
      v210 = isExFat(*(v13 + 152));
      v211 = __si_assert_copy_extra_2708(*(v13 + 376));
      v212 = v211;
      v213 = "";
      if (v211)
      {
        v213 = v211;
      }

      v214 = *(v13 + 392);
      if (!v210)
      {
        __message_assert("%s:%u: failed assertion '%s' %s %ld, ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 248, "oldEntry.pfxLen + oldEntry.len <= CMPBUFFER_SIZE", v213, v35 + v34, v280, v18, v289, v278, *(v13 + 384), v214);
        free(v212);
        if (__valid_fsp(*(v13 + 376)))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      si_analytics_log_3138("%s:%u: failure log '%s' %s %ld, ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 242, "oldEntry.pfxLen + oldEntry.len <= CMPBUFFER_SIZE", v213, v35 + v34, v280, v18, v289, v278, *(v13 + 384), v214);
      free(v212);
      v291[1] = -1;
      return 1;
    }

    v37 = v33;
    v18 = __n[1];
    memcpy(&v307[HIDWORD(__n[0])], __n[1], LODWORD(__n[0]));
    if (v36 >= v297)
    {
      v5 = v297;
    }

    else
    {
      v5 = v36;
    }

    v38 = memcmp(v307, __s2, v5);
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = v36 - v297;
    }

    if (v39 >= 1)
    {
      v301 = v297;
      v302 = 0;
      if (!v282)
      {
        v291[9] = v297;
      }

      v49 = v13;
      v50 = __s2;
      v51 = v295;
      if (*v291)
      {
        v238 = __si_assert_copy_extra_2708(0);
        v208 = v238;
        v239 = "";
        if (v238)
        {
          v239 = v238;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 268, "ms->type == kTermInfoTypeId", v239);
        goto LABEL_478;
      }

      if (!v32)
      {
        LODWORD(v53) = 0;
        v58 = v297;
        goto LABEL_112;
      }

      v52 = v291[275];
      if (v52 >= v297)
      {
        v53 = v297;
      }

      else
      {
        v53 = v52;
      }

      if (v53)
      {
        v54 = 0;
        while (v292[v54] == __s2[v54])
        {
          if (v53 == ++v54)
          {
            goto LABEL_111;
          }
        }

        LODWORD(v53) = v54;
      }

LABEL_111:
      v58 = v297 - v53;
      v302 = v53;
      v301 = v297 - v53;
      if (v297 == v53)
      {
        v250 = __si_assert_copy_extra_2708(*(v13 + 376));
        v91 = v250;
        v251 = "";
        if (v250)
        {
          v251 = v250;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 277, "newEntry.len", v251);
        goto LABEL_569;
      }

LABEL_112:
      v303 = &__s2[v53];
      v304 = *(v291 + 2);
      if (v58 >= 0x80)
      {
        if (v58 >= 0x4000)
        {
          if (v58 >= 0x200000)
          {
            if (v58 >> 28)
            {
              v63 = 5;
            }

            else
            {
              v63 = 4;
            }
          }

          else
          {
            v63 = 3;
          }
        }

        else
        {
          v63 = 2;
        }
      }

      else
      {
        v63 = 1;
      }

      if (v53 >= 0x80)
      {
        if (v53 >= 0x4000)
        {
          if (v53 >= 0x200000)
          {
            if (v53 >> 28)
            {
              v67 = 5;
            }

            else
            {
              v67 = 4;
            }
          }

          else
          {
            v67 = 3;
          }
        }

        else
        {
          v67 = 2;
        }
      }

      else
      {
        v67 = 1;
      }

      v68 = v304;
      if (v304 >= 0x80)
      {
        if (v304 >= 0x4000)
        {
          if (v304 >= 0x200000)
          {
            if (v304 >> 28)
            {
              v69 = 5;
            }

            else
            {
              v69 = 4;
            }
          }

          else
          {
            v69 = 3;
          }
        }

        else
        {
          v69 = 2;
        }
      }

      else
      {
        v69 = 1;
      }

      v277 = v63 + v58 + v67 + v69;
      v70 = v277 + v293;
      v290 = v277 + v293;
      if (v277 + v293 <= v280)
      {
        goto LABEL_180;
      }

      if (!v283 || v280 > 0xFFF7)
      {
        if (v280 > 0xFFF7 || !extendBlock(v286, v6, v277 + v293))
        {
          *(v291 + 3) = 0;
          *(v291 + 4) = 0;
          result = 1;
          *(v291 + 40) = 0;
          return result;
        }

        v80 = storageResolvePtr(v286 + 160, v278, 8, 1);
        v81 = storageResolvePtr(v286 + 160, v278, 64 << *(v80 + 2), 1);
        v280 = (64 << *(v81 + 2)) - 8;
        if (v280 <= v293)
        {
          v76 = v286;
          v270 = __si_assert_copy_extra_2708(*(v286 + 376));
          v78 = v270;
          v271 = "";
          if (v270)
          {
            v271 = v270;
          }

          __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 306, "pageEnd<pageSize", v271);
          goto LABEL_547;
        }

        v51 = v81;
        if (v293 == *v81)
        {
          goto LABEL_180;
        }

        v49 = v286;
        v272 = __si_assert_copy_extra_2708(*(v286 + 376));
        v91 = v272;
        v273 = "";
        if (v272)
        {
          v273 = v272;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 307, "(int)pageEnd==storePageEnd(page)", v273);
        goto LABEL_569;
      }

      if (v293 == *v295)
      {
        v71 = reallocBlock(v286, v6, v277 + v293, v283);
        if (!v71)
        {
          v291[1] = -1;
          return 1;
        }

        v275 = v304;
        v72 = v58;
        *(v291 + 7) = v71;
        v284 = v71;
        if (HIDWORD(v71))
        {
          v73 = 0;
        }

        else
        {
          v73 = v71 << 6;
        }

        v74 = storageResolvePtr(v286 + 160, v73, 8, 1);
        v75 = storageResolvePtr(v286 + 160, v73, 64 << *(v74 + 2), 1);
        v51 = v75;
        if (v293 == *v75)
        {
          v280 = (64 << *(v75 + 2)) - 8;
          v50 = __s2;
          v58 = v72;
          v70 = v277 + v293;
          v68 = v275;
          if (v280 <= v293)
          {
            v76 = v286;
            v77 = __si_assert_copy_extra_2708(*(v286 + 376));
            v78 = v77;
            v79 = "";
            if (v77)
            {
              v79 = v77;
            }

            __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 302, "pageEnd<pageSize", v79);
            goto LABEL_547;
          }

LABEL_180:
          if (v280 <= v293)
          {
            v76 = v286;
            v242 = __si_assert_copy_extra_2708(*(v286 + 376));
            v78 = v242;
            v243 = "";
            if (v242)
            {
              v243 = v242;
            }

            __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 318, "pageEnd < pageSize", v243);
            goto LABEL_547;
          }

          if (v70 <= v280)
          {
            v82 = v291[2];
            if (!*v291)
            {
              v291[2] = v82 + 1;
            }

            *v287 = v304;
            if (v82 == v68)
            {
              v299 = 0u;
              v300 = 0u;
              FlatStorePageEntryRead(v51, v293, &v299, v32, 0);
              v83 = &__s2[v53];
              if (v53 == DWORD1(v299))
              {
                if (v299 >= v58)
                {
                  v84 = v58;
                }

                else
                {
                  v84 = v299;
                }

                if (v84)
                {
                  v85 = 0;
                  while (*(*(&v299 + 1) + v85) == __s2[v53 + v85])
                  {
                    if (v84 == ++v85)
                    {
                      goto LABEL_195;
                    }
                  }

                  LODWORD(v84) = v85;
                  v86 = (v299 - v85);
                  if (v299 <= v85)
                  {
LABEL_205:
                    v49 = v286;
                    v90 = __si_assert_copy_extra_2708(*(v286 + 376));
                    v91 = v90;
                    v92 = "";
                    if (v90)
                    {
                      v92 = v90;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 341, "i < entry.len", v92);
                    goto LABEL_569;
                  }

LABEL_196:
                  if (v84 > v58)
                  {
                    v49 = v286;
                    v248 = __si_assert_copy_extra_2708(*(v286 + 376));
                    v91 = v248;
                    v249 = "";
                    if (v248)
                    {
                      v249 = v248;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 342, "i<=newEntry.len", v249);
                    goto LABEL_569;
                  }

                  if (!v84)
                  {
                    v88 = v32;
                    memmove(v51 + v277 + v32 + 8, v51 + v32 + 8, v293 - v32);
                    v89 = 0;
                    goto LABEL_322;
                  }

                  if (v299 >= 0x80)
                  {
                    if (v299 >= 0x4000)
                    {
                      if (v299 >= 0x200000)
                      {
                        if (v299 >> 28)
                        {
                          v87 = 5;
                        }

                        else
                        {
                          v87 = 4;
                        }
                      }

                      else
                      {
                        v87 = 3;
                      }
                    }

                    else
                    {
                      v87 = 2;
                    }
                  }

                  else
                  {
                    v87 = 1;
                  }

                  v274 = v58;
                  v276 = v68;
                  if (DWORD1(v299) >= 0x80)
                  {
                    if (DWORD1(v299) >= 0x4000)
                    {
                      if (DWORD1(v299) >= 0x200000)
                      {
                        if (DWORD1(v299) >> 28)
                        {
                          v93 = 5;
                        }

                        else
                        {
                          v93 = 4;
                        }
                      }

                      else
                      {
                        v93 = 3;
                      }
                    }

                    else
                    {
                      v93 = 2;
                    }
                  }

                  else
                  {
                    v93 = 1;
                  }

                  v94 = v300;
                  if (v300 >> 28)
                  {
                    v95 = 5;
                  }

                  else
                  {
                    v95 = 4;
                  }

                  if (v300 >= 0x200000)
                  {
                    v96 = v95;
                  }

                  else
                  {
                    v96 = 3;
                  }

                  if (v300 >= 0x4000)
                  {
                    v97 = v96;
                  }

                  else
                  {
                    v97 = 2;
                  }

                  if (v300 >= 0x80)
                  {
                    v98 = v97;
                  }

                  else
                  {
                    v98 = 1;
                  }

                  v99 = v87 + v299 + v93 + v98;
                  v100 = (*(&v299 + 1) + v84);
                  *(&v299 + 1) = v100;
                  v101 = v84 + DWORD1(v299);
                  DWORD1(v299) += v84;
                  LODWORD(v299) = v86;
                  v281 = v86 >> 28;
                  if (v86 >> 28)
                  {
                    v102 = 5;
                  }

                  else
                  {
                    v102 = 4;
                  }

                  if (v86 >= 0x200000)
                  {
                    v103 = v102;
                  }

                  else
                  {
                    v103 = 3;
                  }

                  if (v86 >= 0x4000)
                  {
                    v104 = v103;
                  }

                  else
                  {
                    v104 = 2;
                  }

                  if (v86 >= 0x80)
                  {
                    v105 = v104;
                  }

                  else
                  {
                    v105 = 1;
                  }

                  v285 = v101 >> 28;
                  if (v101 >> 28)
                  {
                    v106 = 5;
                  }

                  else
                  {
                    v106 = 4;
                  }

                  if (v101 >= 0x200000)
                  {
                    v107 = v106;
                  }

                  else
                  {
                    v107 = 3;
                  }

                  if (v101 >= 0x4000)
                  {
                    v108 = v107;
                  }

                  else
                  {
                    v108 = 2;
                  }

                  if (v101 >= 0x80)
                  {
                    v109 = v108;
                  }

                  else
                  {
                    v109 = 1;
                  }

                  v279 = v300 >> 28;
                  if (v300 >> 28)
                  {
                    v110 = 5;
                  }

                  else
                  {
                    v110 = 4;
                  }

                  if (v300 >= 0x200000)
                  {
                    v111 = v110;
                  }

                  else
                  {
                    v111 = 3;
                  }

                  if (v300 >= 0x4000)
                  {
                    v112 = v111;
                  }

                  else
                  {
                    v112 = 2;
                  }

                  if (v300 >= 0x80)
                  {
                    v113 = v112;
                  }

                  else
                  {
                    v113 = 1;
                  }

                  v114 = v51 + 4;
                  v115 = v277 + v32;
                  v288 = v105 + v86 + v109 + v113;
                  v296 = v99;
                  memmove(v51 + v288 + v115 + 8, v51 + v99 + v32 + 8, v293 - (v99 + v32));
                  v116 = v51 + v115 + 8;
                  if (v86 >= 0x80)
                  {
                    v118 = v100;
                    if (v86 >= 0x4000)
                    {
                      v50 = __s2;
                      if (v86 >= 0x200000)
                      {
                        v117 = 4;
                        if (v281)
                        {
                          v117 = 5;
                        }
                      }

                      else
                      {
                        v117 = 3;
                      }
                    }

                    else
                    {
                      v117 = 2;
                      v50 = __s2;
                    }
                  }

                  else
                  {
                    v117 = 1;
                    v118 = v100;
                    v50 = __s2;
                  }

                  v119 = &v116[v117];
                  if (v101 >= 0x80)
                  {
                    if (v101 >= 0x4000)
                    {
                      if (v101 >= 0x200000)
                      {
                        v120 = 4;
                        if (v285)
                        {
                          v120 = 5;
                        }
                      }

                      else
                      {
                        v120 = 3;
                      }
                    }

                    else
                    {
                      v120 = 2;
                    }
                  }

                  else
                  {
                    v120 = 1;
                  }

                  memmove(&v119[v120], v118, v86);
                  if (v86 > 0x7F)
                  {
                    if (v86 >> 14)
                    {
                      if (v86 >> 21)
                      {
                        if (v281)
                        {
                          *v116 = -16;
                          *(v116 + 1) = v86;
                          v121 = v115 + 5;
                        }

                        else
                        {
                          *v116 = BYTE3(v86) | 0xE0;
                          v116[1] = BYTE2(v86);
                          v116[2] = BYTE1(v86);
                          v121 = v115 + 4;
                          v116[3] = v86;
                        }
                      }

                      else
                      {
                        *v116 = BYTE2(v86) | 0xC0;
                        v116[1] = BYTE1(v86);
                        v121 = v115 + 3;
                        v116[2] = v86;
                      }
                    }

                    else
                    {
                      *v116 = BYTE1(v86) | 0x80;
                      v121 = v115 + 2;
                      v116[1] = v86;
                    }
                  }

                  else
                  {
                    v121 = v115 + 1;
                    *v116 = v86;
                  }

                  v68 = v276;
                  if (v101 > 0x7F)
                  {
                    if (v101 >> 14)
                    {
                      if (v101 >> 21)
                      {
                        if (v285)
                        {
                          v126 = v114 + v121;
                          *v126 = -16;
                          *(v126 + 1) = v101;
                          v122 = v121 + 5;
                        }

                        else
                        {
                          v125 = v114 + v121;
                          *v125 = HIBYTE(v101) | 0xE0;
                          v125[1] = BYTE2(v101);
                          v125[2] = BYTE1(v101);
                          v122 = v121 + 4;
                          v125[3] = v101;
                        }
                      }

                      else
                      {
                        v124 = v114 + v121;
                        *v124 = BYTE2(v101) | 0xC0;
                        v124[1] = BYTE1(v101);
                        v122 = v121 + 3;
                        v124[2] = v101;
                      }
                    }

                    else
                    {
                      v123 = v114 + v121;
                      *v123 = BYTE1(v101) | 0x80;
                      v122 = v121 + 2;
                      v123[1] = v101;
                    }
                  }

                  else
                  {
                    v122 = v121 + 1;
                    *(v114 + v121) = v101;
                  }

                  v127 = v122 + v86;
                  if (v94 > 0x7F)
                  {
                    if (v94 >> 14)
                    {
                      if (v94 >> 21)
                      {
                        v130 = v114 + v127;
                        if (v279)
                        {
                          *v130 = -16;
                          *(v130 + 1) = v94;
                        }

                        else
                        {
                          *v130 = HIBYTE(v94) | 0xE0;
                          v130[1] = BYTE2(v94);
                          v130[2] = BYTE1(v94);
                          v130[3] = v94;
                        }
                      }

                      else
                      {
                        v129 = v114 + v127;
                        *v129 = BYTE2(v94) | 0xC0;
                        v129[1] = BYTE1(v94);
                        v129[2] = v94;
                      }
                    }

                    else
                    {
                      v128 = v114 + v127;
                      *v128 = BYTE1(v94) | 0x80;
                      v128[1] = v94;
                    }
                  }

                  else
                  {
                    *(v114 + v127) = v94;
                  }

                  memset(v298, 0, sizeof(v298));
                  FlatStorePageEntryRead(v51, v290, v298, v32, v277);
                  v83 = &__s2[v53];
                  if (v86 != LODWORD(v298[0]))
                  {
                    v49 = v286;
                    v252 = __si_assert_copy_extra_2708(*(v286 + 376));
                    v91 = v252;
                    v253 = "";
                    if (v252)
                    {
                      v253 = v252;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 357, "entry.len==entryCopy.len", v253);
                    goto LABEL_569;
                  }

                  if (v101 == DWORD1(v298[0]))
                  {
                    v89 = v288 - v296;
                    v58 = v274;
                    if (v288 <= v296)
                    {
                      v88 = v32;
LABEL_322:
                      v131 = v51 + 4;
                      if (v58 > 0x7F)
                      {
                        if (v58 >> 14)
                        {
                          if (v58 >> 21)
                          {
                            if (v58 >> 28)
                            {
                              v136 = v131 + v88;
                              *v136 = -16;
                              *(v136 + 1) = v58;
                              v132 = v88 + 5;
                            }

                            else
                            {
                              v135 = v131 + v88;
                              *v135 = HIBYTE(v58) | 0xE0;
                              v135[1] = BYTE2(v58);
                              v135[2] = BYTE1(v58);
                              v132 = v88 + 4;
                              v135[3] = v58;
                            }
                          }

                          else
                          {
                            v134 = v131 + v88;
                            *v134 = BYTE2(v58) | 0xC0;
                            v134[1] = BYTE1(v58);
                            v132 = v88 + 3;
                            v134[2] = v58;
                          }
                        }

                        else
                        {
                          v133 = v131 + v88;
                          *v133 = BYTE1(v58) | 0x80;
                          v132 = v88 + 2;
                          v133[1] = v58;
                        }
                      }

                      else
                      {
                        v132 = v88 + 1;
                        *(v131 + v88) = v58;
                      }

                      if (v53 > 0x7F)
                      {
                        if (v53 >> 14)
                        {
                          if (v53 >> 21)
                          {
                            if (v53 >> 28)
                            {
                              v141 = v131 + v132;
                              *v141 = -16;
                              *(v141 + 1) = v53;
                              v137 = v132 + 5;
                            }

                            else
                            {
                              v140 = v131 + v132;
                              *v140 = BYTE3(v53) | 0xE0;
                              v140[1] = BYTE2(v53);
                              v140[2] = BYTE1(v53);
                              v137 = v132 + 4;
                              v140[3] = v53;
                            }
                          }

                          else
                          {
                            v139 = v131 + v132;
                            *v139 = BYTE2(v53) | 0xC0;
                            v139[1] = BYTE1(v53);
                            v137 = v132 + 3;
                            v139[2] = v53;
                          }
                        }

                        else
                        {
                          v138 = v131 + v132;
                          *v138 = BYTE1(v53) | 0x80;
                          v137 = v132 + 2;
                          v138[1] = v53;
                        }
                      }

                      else
                      {
                        v137 = v132 + 1;
                        *(v131 + v132) = v53;
                      }

                      if (v58)
                      {
                        if (v58 < 0x20 || (v51 + v137 - v83 + 8) < 0x20)
                        {
                          v142 = 0;
                          goto LABEL_344;
                        }

                        v142 = v58 & 0xFFFFFFE0;
                        v150 = (v51 + v137 + 24);
                        v151 = &v50[v53 + 16];
                        v152 = v142;
                        do
                        {
                          v153 = *v151;
                          *(v150 - 1) = *(v151 - 1);
                          *v150 = v153;
                          v150 += 2;
                          v151 += 32;
                          v152 -= 32;
                        }

                        while (v152);
                        v137 += v142;
                        if (v142 != v58)
                        {
LABEL_344:
                          v143 = v58 - v142;
                          v144 = &v50[v142 + v53];
                          v145 = v137;
                          do
                          {
                            v146 = *v144++;
                            v137 = v145 + 1;
                            *(v131 + v145++) = v146;
                            --v143;
                          }

                          while (v143);
                        }
                      }

                      if (v68 > 0x7F)
                      {
                        if (v68 >> 14)
                        {
                          if (v68 >> 21)
                          {
                            v154 = v131 + v137;
                            if (v68 >> 28)
                            {
                              *v154 = -16;
                              *(v154 + 1) = v68;
                              v147 = v137 + 5;
                            }

                            else
                            {
                              *v154 = HIBYTE(v68) | 0xE0;
                              v154[1] = BYTE2(v68);
                              v154[2] = BYTE1(v68);
                              v147 = v137 + 4;
                              v154[3] = v68;
                            }
                          }

                          else
                          {
                            v149 = v131 + v137;
                            *v149 = BYTE2(v68) | 0xC0;
                            v149[1] = BYTE1(v68);
                            v147 = v137 + 3;
                            v149[2] = v68;
                          }
                        }

                        else
                        {
                          v148 = v131 + v137;
                          *v148 = BYTE1(v68) | 0x80;
                          v147 = v137 + 2;
                          v148[1] = v68;
                        }
                      }

                      else
                      {
                        v147 = v137 + 1;
                        *(v131 + v137) = v68;
                      }

                      v155 = 64 << *(v51 + 2);
                      v156 = *(v286 + 408);
                      if (v156 >= 1)
                      {
                        v157 = (v286 + 432);
                        v158 = 1;
                        while (1)
                        {
                          v159 = *v157;
                          if (*v157 && (v160 = v159[1], v160 + 1 >= 2) && v160 <= v51 && (v162 = v159[2], v160 - v162 + v159[3] > v51))
                          {
                            v161 = v51 + v162 - v160;
                            if (v158 >= v156)
                            {
                              goto LABEL_371;
                            }
                          }

                          else
                          {
                            v161 = -1;
                            if (v158 >= v156)
                            {
                              goto LABEL_371;
                            }
                          }

                          ++v158;
                          ++v157;
                          if (v161 != -1)
                          {
                            goto LABEL_371;
                          }
                        }
                      }

                      v161 = -1;
LABEL_371:
                      bit_vector_set_4242((v286 + 4536), (v161 >> 17));
                      if ((v161 >> 17) != (v161 + v155) >> 17)
                      {
                        bit_vector_set_4242((v286 + 4536), (v161 >> 17) + 1);
                      }

                      *v51 = v89 + v290;
                      if (!v53 || v58)
                      {
                        v291[6] = v147;
                        memcpy(v292, __s2, v297);
                        result = 0;
                        v291[275] = v297;
                        return result;
                      }

                      v258 = __si_assert_copy_extra_2708(0);
                      v259 = v258;
                      v260 = "";
                      if (v258)
                      {
                        v260 = v258;
                      }

                      __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 371, "newEntry.len", v260);
                      free(v259);
                      if (!__valid_fs(-1))
                      {
LABEL_551:
                        v224 = 3072;
LABEL_552:
                        *v224 = -559038737;
                        abort();
                      }

LABEL_498:
                      v224 = 2989;
                      goto LABEL_552;
                    }

                    v76 = v286;
                    v256 = __si_assert_copy_extra_2708(*(v286 + 376));
                    v78 = v256;
                    v257 = "";
                    if (v256)
                    {
                      v257 = v256;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 359, "len2 <= len1", v257);
                  }

                  else
                  {
                    v76 = v286;
                    v254 = __si_assert_copy_extra_2708(*(v286 + 376));
                    v78 = v254;
                    v255 = "";
                    if (v254)
                    {
                      v255 = v254;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 358, "entry.pfxLen==entryCopy.pfxLen", v255);
                  }

LABEL_547:
                  free(v78);
                  v223 = *(v76 + 376);
LABEL_497:
                  if (!__valid_fsp(v223))
                  {
                    goto LABEL_551;
                  }

                  goto LABEL_498;
                }
              }

              else
              {
                LODWORD(v84) = 0;
              }

LABEL_195:
              v86 = (v299 - v84);
              if (v299 <= v84)
              {
                goto LABEL_205;
              }

              goto LABEL_196;
            }

            v246 = __si_assert_copy_extra_2708(0);
            v208 = v246;
            v247 = "";
            if (v246)
            {
              v247 = v246;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 325, "termID == getNum(newEntry.termInfo.termInfo.termId.ptr)", v247);
LABEL_478:
            free(v208);
            if (__valid_fs(-1))
            {
LABEL_479:
              MEMORY[0xBAD] = -559038737;
              abort();
            }

LABEL_571:
            MEMORY[0xC00] = -559038737;
            abort();
          }

          v49 = v286;
          v244 = __si_assert_copy_extra_2708(*(v286 + 376));
          v91 = v244;
          v245 = "";
          if (v244)
          {
            v245 = v244;
          }

          __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 319, "pageEnd + newEntrySize <= pageSize", v245);
LABEL_569:
          free(v91);
          v228 = *(v49 + 376);
LABEL_570:
          if (__valid_fsp(v228))
          {
            goto LABEL_479;
          }

          goto LABEL_571;
        }

        v49 = v286;
        v267 = __si_assert_copy_extra_2708(*(v286 + 376));
        v268 = v267;
        v269 = "";
        if (v267)
        {
          v269 = v267;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store %d != %d, ptr %d oldPtr %d page %p oldPage %p", "FlatStore.c", 300, "(int)pageEnd==storePageEnd(page)", v269, v293, *v51, v284, v6, v51, v295);
        v264 = v268;
      }

      else
      {
        v261 = __si_assert_copy_extra_2708(*(v286 + 376));
        v262 = v261;
        v263 = "";
        if (v261)
        {
          v263 = v261;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store %d != %d", "FlatStore.c", 289, "(int)pageEnd==storePageEnd(page)", v263, v293, *v295);
        v264 = v262;
      }

      free(v264);
      v223 = *(v49 + 376);
      goto LABEL_497;
    }

    if (!v39)
    {
      break;
    }

    memcpy(&v292[v35], v18, v34);
    v12 = v291;
    v291[275] = v36;
    v32 = v37;
    LODWORD(v18) = v293;
    if (v37 >= v293)
    {
      v40 = __s2;
      v41 = v295;
      v14 = v278;
      if (!v5)
      {
        goto LABEL_55;
      }

LABEL_52:
      v46 = 0;
      while (*(v12 + v46 + 1104) == v40[v46])
      {
        if (v5 == ++v46)
        {
          goto LABEL_55;
        }
      }

      v47 = v14;
      LODWORD(v5) = v46;
      goto LABEL_74;
    }
  }

  if (*v291)
  {
    v76 = v13;
    v240 = __si_assert_copy_extra_2708(*(v13 + 376));
    v78 = v240;
    v241 = "";
    if (v240)
    {
      v241 = v240;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 392, "ms->type == kTermInfoTypeId", v241);
    goto LABEL_547;
  }

  *v287 = v306;
  v291[6] = v37;
  if (!v282)
  {
    v291[9] = v297;
  }

  memcpy(&v292[v35], v18, v34);
  result = 0;
  v291[275] = v297;
  return result;
}

void si_analytics_log_3138(char *a1, ...)
{
  va_start(va, a1);
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  va_copy(&v1[1], va);
  vasprintf(v1, a1, va);
  SISetCrashCStr(v1[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v3 = v1[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v1[0]);
}

uint64_t FlatStorePageEntryRead(unsigned __int16 *a1, unsigned int a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v6 = (a5 + a4);
  v7 = a1 + 4;
  v8 = v6 + 1;
  v9 = a1 + v6 + 8;
  v10 = *v9;
  if (*v9 < 0)
  {
    if (v10 > 0xBF)
    {
      if (v10 > 0xDF)
      {
        if (v10 > 0xEF)
        {
          v10 = *(v7 + v8);
          LODWORD(v8) = v6 + 5;
        }

        else
        {
          v10 = ((v10 & 0xF) << 24) | (*(v7 + v8) << 16) | (v9[2] << 8) | v9[3];
          LODWORD(v8) = v6 + 4;
        }
      }

      else
      {
        v10 = ((v10 & 0x1F) << 16) | (*(v7 + v8) << 8) | v9[2];
        LODWORD(v8) = v6 + 3;
      }
    }

    else
    {
      v11 = *(v7 + v8) | ((v10 & 0x3F) << 8);
      LODWORD(v8) = v6 + 2;
      v10 = v11;
    }
  }

  *a3 = v10;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8 == 1;
  }

  if (!v12)
  {
    v30 = a5;
    v31 = a4;
    v32 = __si_assert_copy_extra_2708(0);
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = "";
    }

    v35 = *a1;
    v36 = (64 << *(a1 + 2)) - 8;
    v37 = *a3;
    v38 = _checkFlatPage(a1, v31, v30);
    v39 = "false";
    if (v38)
    {
      v39 = "true";
    }

    __message_assert("%s:%u: failed assertion '%s' %s len:%d cursor:%d, pe:%d, ps:%d, valid cursor:%s", "FlatStore.h", 234, "entry->len > 0 || pageCursor == v2_vInt32Size(0)", v34, v37, v8, v35, v36, v39);
    free(v33);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v13 = v8 + 1;
  v14 = v7 + v8;
  v15 = *v14;
  if (*v14 < 0)
  {
    if (v15 > 0xBF)
    {
      if (v15 > 0xDF)
      {
        if (v15 > 0xEF)
        {
          v15 = *(v7 + v13);
          LODWORD(v13) = v8 + 5;
        }

        else
        {
          v15 = ((v15 & 0xF) << 24) | (*(v7 + v13) << 16) | (v14[2] << 8) | v14[3];
          LODWORD(v13) = v8 + 4;
        }
      }

      else
      {
        v15 = ((v15 & 0x1F) << 16) | (*(v7 + v13) << 8) | v14[2];
        LODWORD(v13) = v8 + 3;
      }
    }

    else
    {
      v16 = *(v7 + v13) | ((v15 & 0x3F) << 8);
      LODWORD(v13) = v8 + 2;
      v15 = v16;
    }
  }

  a3[1] = v15;
  *(a3 + 1) = v7 + v13;
  v17 = v10 + v13;
  v18 = v17 + 1;
  v19 = v7 + v17;
  v20 = *(v7 + v17);
  if (*(v7 + v17) < 0)
  {
    if (v20 > 0xBF)
    {
      if (v20 > 0xDF)
      {
        if (v20 > 0xEF)
        {
          v20 = *(v7 + v18);
          v18 = v17 + 5;
        }

        else
        {
          v20 = ((v20 & 0xF) << 24) | (*(v7 + v18) << 16) | (v19[2] << 8) | v19[3];
          v18 = v17 + 4;
        }
      }

      else
      {
        v20 = ((v20 & 0x1F) << 16) | (*(v7 + v18) << 8) | v19[2];
        v18 = v17 + 3;
      }
    }

    else
    {
      v21 = *(v7 + v18) | ((v20 & 0x3F) << 8);
      v18 = v17 + 2;
      v20 = v21;
    }
  }

  a3[4] = v20;
  if (v18 > a2)
  {
    if (__valid_fs(-1))
    {
      v25 = __si_assert_copy_extra_2708(0);
      v26 = v25;
      v27 = "";
      if (v25)
      {
        v27 = v25;
      }

      si_analytics_log_3138("%s:%u: failed assertion '%s' %s cursor %d should have been <= end %d. len:%d pe:%d ps:%d", "FlatStore.h", 252, "pageCursor <= pageEnd", v27, v18, a2, *a3, *a1, (64 << *(a1 + 2)) - 8);
      free(v26);
      MEMORY[0xB00] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v18;
}

unint64_t reallocBlock(uint64_t a1, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  v6 = a2;
  v52 = *MEMORY[0x1E69E9840];
  v8 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 << 6;
  }

  v10 = storageResolvePtr(a1 + 160, v9, 8, 1);
  v11 = storageResolvePtr(a1 + 160, v9, 64 << *(v10 + 2), 1);
  v12 = 64 << *(v11 + 2);
  v13 = a3 + 8;
  LODWORD(v14) = v12;
  do
  {
    v14 = (2 * v14);
  }

  while (v13 > v14);
  if (v12 - 8 < *v11)
  {
    v43 = __si_assert_copy_extra_2708(0);
    v44 = v43;
    v45 = "";
    if (v43)
    {
      v45 = v43;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 672, "storePageEnd(page) <= storePageDataSize(page)", v45);
LABEL_67:
    free(v44);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v15 = *(a1 + 408);
  if (v15 >= 1)
  {
    v16 = (a1 + 432);
    v17 = 1;
    while (1)
    {
      v18 = *v16;
      if (*v16 && (v19 = v18[1], v19 + 1 >= 2) && v19 <= v11 && (v21 = v18[2], v19 - v21 + v18[3] > v11))
      {
        v20 = v11 + v21 - v19;
        if (v17 >= v15)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = -1;
        if (v17 >= v15)
        {
          goto LABEL_19;
        }
      }

      ++v17;
      ++v16;
      if (v20 != -1)
      {
        goto LABEL_19;
      }
    }
  }

  v20 = -1;
LABEL_19:
  bit_vector_set_4242((a1 + 4536), (v20 >> 17));
  if ((v20 >> 17) != (v20 + v12) >> 17)
  {
    bit_vector_set_4242((a1 + 4536), (v20 >> 17) + 1);
  }

  if (storageExtendOffset(a1 + 160, v9, v12, v14))
  {
    v22 = storageResolvePtr(a1 + 160, v9, 8, 1);
    *(storageResolvePtr(a1 + 160, v9, 64 << *(v22 + 2), 1) + 2) = __clz(__rbit32(v14 >> 6));
    if (v9 >= *(a1 + 392))
    {
      v23 = __si_assert_copy_extra_2708(*(a1 + 376));
      v24 = v23;
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 677, "flatStoreGetOffset(info) < storageGetCount(store)", v25);
      goto LABEL_73;
    }

    return v6;
  }

  if (!a4)
  {
    return 0;
  }

  memset(v51, 0, sizeof(v51));
  v50 = 0;
  if (v14 > 0x10000)
  {
    v46 = __si_assert_copy_extra_2708(0);
    v44 = v46;
    v47 = "";
    if (v46)
    {
      v47 = v46;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 684, "reSize<=4096*16", v47);
    goto LABEL_67;
  }

  v6 = storageGrowOffset(a1 + 160, v9, v12, v14, v51, &v50, 0);
  if (v6)
  {
    storageResolvePtr(a1 + 160, v6, v14, 1);
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = (v6 >> 6);
    }
  }

  *a4 = v6;
  v26 = v50;
  if (v50 < 1)
  {
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v27 = v51;
    do
    {
      v29 = *v27++;
      v28 = v29;
      bit_vector_set_4242((a1 + 4536), (v29 >> 17));
      if ((v29 >> 17) != (v29 + 8) >> 17)
      {
        bit_vector_set_4242((a1 + 4536), (v28 >> 17) + 1);
      }

      --v26;
    }

    while (v26);
    v6 = *a4;
    if (!*a4)
    {
      return v6;
    }
  }

  if (HIDWORD(v6))
  {
    v30 = 0;
  }

  else
  {
    v30 = v6 << 6;
  }

  if (v30 >= *(a1 + 392))
  {
    v48 = __si_assert_copy_extra_2708(*(a1 + 376));
    v24 = v48;
    v49 = "";
    if (v48)
    {
      v49 = v48;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 689, "flatStoreGetOffset(*newOffset) < storageGetCount(store)", v49);
LABEL_73:
    free(v24);
    if (__valid_fsp(*(a1 + 376)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v31 = storageResolvePtr(a1 + 160, v30, 8, 1);
  v32 = storageResolvePtr(a1 + 160, v30, 64 << *(v31 + 2), 1);
  v33 = v32;
  v34 = 64 << *(v32 + 2);
  v35 = *(a1 + 408);
  if (v35 >= 1)
  {
    v36 = (a1 + 432);
    v37 = 1;
    while (1)
    {
      v38 = *v36;
      if (*v36 && (v39 = v38[1], v39 + 1 >= 2) && v39 <= v32 && (v41 = v38[2], v39 - v41 + v38[3] > v32))
      {
        v40 = v32 - v39 + v41;
        if (v37 >= v35)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v40 = -1;
        if (v37 >= v35)
        {
          goto LABEL_57;
        }
      }

      ++v37;
      ++v36;
      if (v40 != -1)
      {
        goto LABEL_57;
      }
    }
  }

  v40 = -1;
LABEL_57:
  bit_vector_set_4242((a1 + 4536), (v40 >> 17));
  if ((v40 >> 17) != (v40 + v34) >> 17)
  {
    bit_vector_set_4242((a1 + 4536), (v40 >> 17) + 1);
  }

  *(v33 + 2) = __clz(__rbit32(v14 >> 6));
  return *a4;
}

uint64_t extendBlock(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2 << 6;
  v6 = storageResolvePtr(a1 + 160, a2 << 6, 8, 1);
  v7 = storageResolvePtr(a1 + 160, v5, 64 << *(v6 + 2), 1);
  v8 = 64 << *(v7 + 2);
  if ((v8 - 8) < *v7)
  {
    v15 = __si_assert_copy_extra_2708(*(a1 + 376));
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 648, "storePageEnd(page) <= storePageDataSize(page)", v17);
    free(v16);
    if (__valid_fsp(*(a1 + 376)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v9 = a3 + 8;
  LODWORD(v10) = 64 << *(v7 + 2);
  do
  {
    v10 = (2 * v10);
  }

  while (v9 > v10);
  result = storageExtendOffset(a1 + 160, v5, v8, v10);
  if (result)
  {
    v12 = result;
    v13 = storageResolvePtr(a1 + 160, v5, 8, 1);
    v14 = storageResolvePtr(a1 + 160, v5, 64 << *(v13 + 2), 1);
    result = v12;
    *(v14 + 2) = __clz(__rbit32(v10 >> 6));
  }

  return result;
}

uint64_t FlatStorePageEntryWrite2_3163(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1 + 8;
  v7 = *a2;
  if (*a2 > 0x7F)
  {
    if (v7 >> 14)
    {
      if (v7 >> 21)
      {
        if (v7 >> 28)
        {
          v12 = v6 + a4;
          *v12 = -16;
          *(v12 + 1) = v7;
          v8 = a4 + 5;
        }

        else
        {
          v11 = (v6 + a4);
          *v11 = HIBYTE(v7) | 0xE0;
          v11[1] = BYTE2(v7);
          v11[2] = BYTE1(v7);
          v8 = a4 + 4;
          v11[3] = v7;
        }
      }

      else
      {
        v10 = (v6 + a4);
        *v10 = BYTE2(v7) | 0xC0;
        v10[1] = BYTE1(v7);
        v8 = a4 + 3;
        v10[2] = v7;
      }
    }

    else
    {
      v9 = (v6 + a4);
      *v9 = BYTE1(v7) | 0x80;
      v8 = a4 + 2;
      v9[1] = v7;
    }
  }

  else
  {
    v8 = a4 + 1;
    *(v6 + a4) = v7;
  }

  v13 = a2[1];
  if (v13 <= 0x7F)
  {
    v14 = v8 + 1;
    *(v6 + v8) = v13;
    if (!*a2)
    {
      goto LABEL_26;
    }

LABEL_23:
    v19 = 0;
    do
    {
      *(v14 + a1 + 8 + v19) = *(*(a2 + 1) + v19);
      ++v19;
    }

    while (v19 < *a2);
    v14 += v19;
    goto LABEL_26;
  }

  if (v13 >> 14)
  {
    if (v13 >> 21)
    {
      if (v13 >> 28)
      {
        v18 = v6 + v8;
        *v18 = -16;
        *(v18 + 1) = v13;
        v14 = v8 + 5;
        if (!*a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      v17 = (v6 + v8);
      *v17 = HIBYTE(v13) | 0xE0;
      v17[1] = BYTE2(v13);
      v17[2] = BYTE1(v13);
      v14 = v8 + 4;
      v17[3] = v13;
      if (*a2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = (v6 + v8);
      *v16 = BYTE2(v13) | 0xC0;
      v16[1] = BYTE1(v13);
      v14 = v8 + 3;
      v16[2] = v13;
      if (*a2)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v15 = (v6 + v8);
    *v15 = BYTE1(v13) | 0x80;
    v14 = v8 + 2;
    v15[1] = v13;
    if (*a2)
    {
      goto LABEL_23;
    }
  }

LABEL_26:
  v20 = *(a2 + 2);
  v21 = *a3;
  *a3 = v20;
  v22 = ldb_writeSmallVInt64(a1 + 8, v14, v20 - v21);
  v23 = *(a2 + 3);
  if (v23)
  {
    v24 = a3[1];
    a3[1] = v23;
    v25 = v23 - v24;
  }

  else
  {
    v25 = 0;
  }

  return ldb_writeSmallVInt64(v6, v22, v25);
}

BOOL _checkFlatPage(unsigned __int16 *a1, unsigned int a2, int a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 < a2)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v33 = 136316162;
      v34 = "_checkFlatPage";
      v35 = 1024;
      v36 = 181;
      v37 = 1024;
      v38 = a2;
      v39 = 2048;
      v40 = a1 + 4;
      v41 = 1024;
      v42 = v4;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: invalid offset %d, %p (%d)", &v33, 0x28u);
    }

    v9 = __error();
    result = 0;
    *v9 = v7;
    return result;
  }

  v11 = a1 + 4;
  v12 = a2;
  while (1)
  {
    if (v12 >= v5)
    {
      return v12 == v5;
    }

    v13 = v12;
    v14 = v12;
    v15 = v12 + 1;
    v16 = v11 + v14;
    v17 = *(v11 + v14);
    if (*(v11 + v14) < 0)
    {
      if (v17 > 0xBF)
      {
        if (v17 > 0xDF)
        {
          if (v17 > 0xEF)
          {
            v17 = *(v11 + v15);
            LODWORD(v15) = v14 + 5;
          }

          else
          {
            v17 = ((v17 & 0xF) << 24) | (*(v11 + v15) << 16) | (v16[2] << 8) | v16[3];
            LODWORD(v15) = v14 + 4;
          }
        }

        else
        {
          v17 = ((v17 & 0x1F) << 16) | (*(v11 + v15) << 8) | v16[2];
          LODWORD(v15) = v14 + 3;
        }
      }

      else
      {
        v18 = *(v11 + v15) | ((v17 & 0x3F) << 8);
        LODWORD(v15) = v14 + 2;
        v17 = v18;
      }
    }

    v19 = v15;
    v20 = v15 + 1;
    v21 = v11 + v19;
    v22 = *(v11 + v19);
    if ((*(v11 + v19) & 0x80000000) == 0)
    {
      break;
    }

    if (v22 > 0xBF)
    {
      if (v22 > 0xDF)
      {
        if (v22 <= 0xEF)
        {
          v22 = ((v22 & 0xF) << 24) | (*(v11 + v20) << 16) | (v21[2] << 8) | v21[3];
          LODWORD(v20) = v19 + 4;
          break;
        }

        v22 = *(v11 + v20);
        LODWORD(v20) = v19 + 5;
        if (v13)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = ((v22 & 0x1F) << 16) | (*(v11 + v20) << 8) | v21[2];
        LODWORD(v20) = v19 + 3;
        if (v13)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v23 = *(v11 + v20) | ((v22 & 0x3F) << 8);
      LODWORD(v20) = v19 + 2;
      v22 = v23;
      if (v13)
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    v24 = v17 + v20;
    if (v24 >= v4)
    {
      v30 = *__error();
      v31 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_49:
        v32 = __error();
        result = 0;
        *v32 = v30;
        return result;
      }

      v33 = 136316930;
      v34 = "_checkFlatPage";
      v35 = 1024;
      v36 = 204;
      v37 = 1024;
      v38 = a2;
      v39 = 2048;
      v40 = v11;
      v41 = 1024;
      v42 = v4;
      v43 = 1024;
      v44 = v13;
      v45 = 1024;
      v46 = v17;
      v47 = 1024;
      v48 = v22;
LABEL_51:
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: invalid offset %d, %p (%d) s:%d l1:%d l2:%d", &v33, 0x3Au);
      goto LABEL_49;
    }

    if (*(v11 + v24) < 0)
    {
      v25 = *(v11 + v24);
      if (v25 > 0xBF)
      {
        v26 = v24 + 5;
        if (v25 <= 0xEF)
        {
          v26 = v24 + 4;
        }

        v12 = v24 + 3;
        if (v25 > 0xDF)
        {
          v12 = v26;
        }
      }

      else
      {
        v12 = v24 + 2;
      }
    }

    else
    {
      v12 = v24 + 1;
    }

    if (v12 > v4)
    {
      v30 = *__error();
      v31 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v33 = 136316930;
      v34 = "_checkFlatPage";
      v35 = 1024;
      v36 = 213;
      v37 = 1024;
      v38 = a2;
      v39 = 2048;
      v40 = v11;
      v41 = 1024;
      v42 = v4;
      v43 = 1024;
      v44 = v13;
      v45 = 1024;
      v46 = v17;
      v47 = 1024;
      v48 = v22;
      goto LABEL_51;
    }
  }

  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_30:
  if (v17)
  {
    goto LABEL_31;
  }

  v27 = *__error();
  v28 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v33 = 136316930;
    v34 = "_checkFlatPage";
    v35 = 1024;
    v36 = 198;
    v37 = 1024;
    v38 = a2;
    v39 = 2048;
    v40 = v11;
    v41 = 1024;
    v42 = v4;
    v43 = 1024;
    v44 = v13;
    v45 = 1024;
    v46 = 0;
    v47 = 1024;
    v48 = v22;
    _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: invalid offset %d, %p (%d) s:%d l1:%d l2:%d", &v33, 0x3Au);
  }

  v29 = __error();
  result = 0;
  *v29 = v27;
  return result;
}

uint64_t appendStringFlat(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v108 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a3))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3 << 6;
  }

  v16 = storageResolvePtr(a1 + 160, v15, 8, 1);
  v17 = storageResolvePtr(a1 + 160, v15, 64 << *(v16 + 2), 1);
  if (v15 >= *(a1 + 392))
  {
    v86 = __si_assert_copy_extra_2708(*(a1 + 376));
    v87 = v86;
    v88 = "";
    if (v86)
    {
      v88 = v86;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 561, "flatStoreGetOffset(info) < storageGetCount(store)", v88);
    free(v87);
    if (!__valid_fsp(*(a1 + 376)))
    {
LABEL_198:
      v89 = 3072;
LABEL_199:
      *v89 = -559038737;
      abort();
    }

LABEL_189:
    v89 = 2989;
    goto LABEL_199;
  }

  v18 = v17;
  v98 = a3;
  v19 = *v17;
  v20 = *(v17 + 2);
  __n_4 = a4;
  v102 = 0;
  v104 = a6;
  v105 = a7;
  __n = a4;
  if (v19)
  {
    v21 = *(a2 + 1100);
    if (v21 >= a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      v23 = 0;
      while (*(a2 + 1104 + v23) == a5[v23])
      {
        if (v22 == ++v23)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v22) = v23;
    }

LABEL_16:
    a4 -= v22;
    __n_4 = a4;
    v102 = v22;
    if (!a4)
    {
      v90 = __si_assert_copy_extra_2708(0);
      v91 = v90;
      v92 = "";
      if (v90)
      {
        v92 = v90;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 572, "entry.len", v92);
      free(v91);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  else
  {
    LODWORD(v22) = 0;
    *(a2 + 1084) = 0u;
  }

  v24 = (64 << v20) - 8;
  v25 = v22;
  v103 = &a5[v22];
  if (!*a2)
  {
    if (a4 < 0x80)
    {
      v27 = 1;
      if (v22 < 0x80)
      {
        goto LABEL_22;
      }

LABEL_28:
      if (v22 >= 0x4000)
      {
        if (v22 >= 0x200000)
        {
          if (v22 >> 28)
          {
            v28 = 5;
          }

          else
          {
            v28 = 4;
          }

          if (a6 < 0x80)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v28 = 3;
          if (a6 < 0x80)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v28 = 2;
        if (a6 < 0x80)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_30;
    }

    if (a4 >= 0x4000)
    {
      if (a4 >= 0x200000)
      {
        if (a4 >> 28)
        {
          v27 = 5;
        }

        else
        {
          v27 = 4;
        }

        if (v22 >= 0x80)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = 3;
        if (v22 >= 0x80)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v27 = 2;
      if (v22 >= 0x80)
      {
        goto LABEL_28;
      }
    }

LABEL_22:
    v28 = 1;
    if (a6 < 0x80)
    {
LABEL_23:
      v29 = 1;
LABEL_75:
      v33 = v27 + a4 + v28 + v29;
      goto LABEL_105;
    }

LABEL_30:
    if (a6 >= 0x4000)
    {
      if (a6 >= 0x200000)
      {
        if (a6 >> 28)
        {
          v29 = 5;
        }

        else
        {
          v29 = 4;
        }
      }

      else
      {
        v29 = 3;
      }
    }

    else
    {
      v29 = 2;
    }

    goto LABEL_75;
  }

  if (a4 >= 0x80)
  {
    if (a4 >= 0x4000)
    {
      if (a4 >= 0x200000)
      {
        if (a4 >> 28)
        {
          v26 = 5;
        }

        else
        {
          v26 = 4;
        }
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      v26 = 2;
    }
  }

  else
  {
    v26 = 1;
  }

  if (v22 >= 0x80)
  {
    if (v22 >= 0x4000)
    {
      if (v22 >= 0x200000)
      {
        if (v22 >> 28)
        {
          v30 = 5;
        }

        else
        {
          v30 = 4;
        }
      }

      else
      {
        v30 = 3;
      }
    }

    else
    {
      v30 = 2;
    }
  }

  else
  {
    v30 = 1;
  }

  v31 = a6 - *(a2 + 1084);
  if (v31 >= 0x80)
  {
    if (v31 >= 0x4000)
    {
      if (v31 >= 0x200000)
      {
        if (v31 >> 28)
        {
          if (v31 >> 35)
          {
            if (v31 >> 42)
            {
              if (v31 >> 49)
              {
                if (HIBYTE(v31))
                {
                  v32 = 9;
                }

                else
                {
                  v32 = 8;
                }
              }

              else
              {
                v32 = 7;
              }
            }

            else
            {
              v32 = 6;
            }
          }

          else
          {
            v32 = 5;
          }
        }

        else
        {
          v32 = 4;
        }
      }

      else
      {
        v32 = 3;
      }
    }

    else
    {
      v32 = 2;
    }
  }

  else
  {
    v32 = 1;
  }

  v34 = *(a2 + 1092);
  if (!a7)
  {
    v34 = 0;
  }

  v35 = a7 - v34;
  if (v35 >= 0x80)
  {
    if (v35 >= 0x4000)
    {
      if (v35 >= 0x200000)
      {
        if (v35 >> 28)
        {
          if (v35 >> 35)
          {
            if (v35 >> 42)
            {
              if (v35 >> 49)
              {
                if (HIBYTE(v35))
                {
                  v36 = 9;
                }

                else
                {
                  v36 = 8;
                }
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

  v33 = v26 + a4 + v30 + v32 + v36;
LABEL_105:
  v37 = v33 + v19;
  if (v33 + v19 <= v24)
  {
    goto LABEL_129;
  }

  if (v24 > 0xFFF7)
  {
    return 1;
  }

  v97 = 64 << *(v17 + 2);
  v39 = *(a1 + 408);
  if (v39 >= 1)
  {
    v40 = (a1 + 432);
    v41 = 1;
    while (1)
    {
      v42 = *v40;
      if (*v40 && (v43 = v42[1], v43 + 1 >= 2) && v43 <= v17 && (v45 = v42[2], v43 - v45 + v42[3] > v17))
      {
        v44 = v17 + v45 - v43;
        if (v41 >= v39)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v44 = -1;
        if (v41 >= v39)
        {
          goto LABEL_120;
        }
      }

      ++v41;
      ++v40;
      if (v44 != -1)
      {
        goto LABEL_120;
      }
    }
  }

  v44 = -1;
LABEL_120:
  v96 = a6;
  bit_vector_set_4242((a1 + 4536), (v44 >> 17));
  if ((v44 >> 17) != (v44 + v97) >> 17)
  {
    bit_vector_set_4242((a1 + 4536), (v44 >> 17) + 1);
  }

  if (reallocBlock(a1, v98, v37, a8))
  {
    if (HIDWORD(*a8))
    {
      v46 = 0;
    }

    else
    {
      v46 = *a8 << 6;
    }

    v47 = storageResolvePtr(a1 + 160, v46, 8, 1);
    v18 = storageResolvePtr(a1 + 160, v46, 64 << *(v47 + 2), 1);
    if (v19 == *v18 || (v48 = *(a1 + 4576), v106 = 0, v49 = _fd_acquire_fd(v48, &v106), v49 == -1))
    {
      v25 = v22;
      if (*a2)
      {
        goto LABEL_130;
      }

      goto LABEL_132;
    }

    v50 = v49;
    bzero(&v107, 0x878uLL);
    v51 = fstatfs(v50, &v107);
    _fd_release_fd(v48, v50, 0, v106);
    v25 = v22;
    LODWORD(a6) = v96;
    if (v51)
    {
LABEL_129:
      if (*a2)
      {
LABEL_130:
        v52 = FlatStorePageEntryWrite2_3163(v18, &__n_4, (a2 + 1084), v19);
LABEL_170:
        v78 = 64 << *(v18 + 2);
        v79 = *(a1 + 408);
        if (v79 >= 1)
        {
          v80 = (a1 + 432);
          v81 = 1;
          while (1)
          {
            v82 = *v80;
            if (*v80 && (v83 = v82[1], v83 + 1 >= 2) && v83 <= v18 && (v85 = v82[2], v83 - v85 + v82[3] > v18))
            {
              v84 = v18 + v85 - v83;
              if (v81 >= v79)
              {
                goto LABEL_182;
              }
            }

            else
            {
              v84 = -1;
              if (v81 >= v79)
              {
                goto LABEL_182;
              }
            }

            ++v81;
            ++v80;
            if (v84 != -1)
            {
              goto LABEL_182;
            }
          }
        }

        v84 = -1;
LABEL_182:
        bit_vector_set_4242((a1 + 4536), (v84 >> 17));
        if ((v84 >> 17) != (v84 + v78) >> 17)
        {
          bit_vector_set_4242((a1 + 4536), (v84 >> 17) + 1);
        }

        *v18 = v52;
        v56 = __n;
        memcpy((a2 + 1104), a5, __n);
        result = 0;
        v57 = 1100;
        goto LABEL_185;
      }

LABEL_132:
      v53 = v18 + 4;
      if (a4 > 0x7F)
      {
        if (a4 >> 14)
        {
          if (a4 >> 21)
          {
            if (a4 >> 28)
            {
              v60 = v53 + v19;
              *v60 = -16;
              *(v60 + 1) = a4;
              v54 = v19 + 5;
            }

            else
            {
              v59 = v53 + v19;
              *v59 = HIBYTE(a4) | 0xE0;
              v59[1] = BYTE2(a4);
              v59[2] = BYTE1(a4);
              v54 = v19 + 4;
              v59[3] = a4;
            }
          }

          else
          {
            v58 = v53 + v19;
            *v58 = BYTE2(a4) | 0xC0;
            v58[1] = BYTE1(a4);
            v54 = v19 + 3;
            v58[2] = a4;
          }
        }

        else
        {
          v55 = v53 + v19;
          *v55 = BYTE1(a4) | 0x80;
          v54 = v19 + 2;
          v55[1] = a4;
        }
      }

      else
      {
        v54 = v19 + 1;
        *(v53 + v19) = a4;
      }

      if (v22 > 0x7F)
      {
        if (v22 >> 14)
        {
          if (v22 >> 21)
          {
            if (v22 >> 28)
            {
              v65 = v53 + v54;
              *v65 = -16;
              *(v65 + 1) = v22;
              v61 = v54 + 5;
            }

            else
            {
              v64 = v53 + v54;
              *v64 = BYTE3(v22) | 0xE0;
              v64[1] = BYTE2(v22);
              v64[2] = BYTE1(v22);
              v61 = v54 + 4;
              v64[3] = v22;
            }
          }

          else
          {
            v63 = v53 + v54;
            *v63 = BYTE2(v22) | 0xC0;
            v63[1] = BYTE1(v22);
            v61 = v54 + 3;
            v63[2] = v22;
          }
        }

        else
        {
          v62 = v53 + v54;
          *v62 = BYTE1(v22) | 0x80;
          v61 = v54 + 2;
          v62[1] = v22;
        }
      }

      else
      {
        v61 = v54 + 1;
        *(v53 + v54) = v22;
      }

      if (!a4)
      {
        goto LABEL_157;
      }

      if (a4 >= 0x20 && (v18 + v61 - &a5[v25] + 8) >= 0x20)
      {
        v66 = a4 & 0xFFFFFFE0;
        v73 = (v18 + v61 + 24);
        v74 = &a5[v25 + 16];
        v75 = v66;
        do
        {
          v76 = *v74;
          *(v73 - 1) = *(v74 - 1);
          *v73 = v76;
          v73 += 2;
          v74 += 32;
          v75 -= 32;
        }

        while (v75);
        v61 += v66;
        if (v66 == a4)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v66 = 0;
      }

      v67 = a4 - v66;
      v68 = &a5[v66 + v25];
      v69 = v61;
      do
      {
        v70 = *v68++;
        v61 = v69 + 1;
        *(v53 + v69++) = v70;
        --v67;
      }

      while (v67);
LABEL_157:
      if (a6 > 0x7F)
      {
        if (a6 >> 14)
        {
          if (a6 >> 21)
          {
            v77 = v53 + v61;
            if (a6 >> 28)
            {
              *v77 = -16;
              *(v77 + 1) = a6;
              v52 = v61 + 5;
            }

            else
            {
              *v77 = BYTE3(a6) | 0xE0;
              v77[1] = BYTE2(a6);
              v77[2] = BYTE1(a6);
              v52 = v61 + 4;
              v77[3] = a6;
            }
          }

          else
          {
            v72 = v53 + v61;
            *v72 = BYTE2(a6) | 0xC0;
            v72[1] = BYTE1(a6);
            v52 = v61 + 3;
            v72[2] = a6;
          }
        }

        else
        {
          v71 = v53 + v61;
          *v71 = BYTE1(a6) | 0x80;
          v52 = v61 + 2;
          v71[1] = a6;
        }
      }

      else
      {
        v52 = v61 + 1;
        *(v53 + v61) = a6;
      }

      goto LABEL_170;
    }

    v93 = __si_assert_copy_extra_2708(0);
    v94 = v93;
    v95 = "";
    if (v93)
    {
      v95 = v93;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 601, "(int)pageEnd==storePageEnd(page) || trie_unavailable(t)", v95);
    free(v94);
    if (!__valid_fs(-1))
    {
      goto LABEL_198;
    }

    goto LABEL_189;
  }

  result = 1;
  v56 = -1;
  v57 = 4;
LABEL_185:
  *(a2 + v57) = v56;
  return result;
}