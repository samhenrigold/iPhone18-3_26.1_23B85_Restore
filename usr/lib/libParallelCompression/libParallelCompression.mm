uint64_t processEntryThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v140 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "[%d] Entry processing thread starting\n", *(v0 + 8));
  }

  memset(&v124, 0, sizeof(v124));
  saveThreadErrorContext(v139);
  v3 = sysconf(71);
  v4 = sysconf(70);
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v5 <= 4096)
  {
    v6 = 4096;
  }

  else
  {
    v6 = v5;
  }

  v8 = *(*v1 + 40);
  v7 = *(*v1 + 48);
  bzero(v138, 0x400uLL);
  bzero(path, 0x800uLL);
  v9 = v1[131];
  __memcpy_chk();
  path[v9] = 47;
  v10 = &path[v9 + 1];
  v11 = MemBufferCreate(0x40000uLL);
  if (!v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 244, 12, 0, "alloc writer buffer");
    ++*(v0 + 32);
  }

  string = malloc(v6);
  if (string)
  {
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_19:
    v112 = 0;
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v14 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 246, 12, *v14, "malloc");
  v6 = 0;
  ++*(v0 + 32);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_13:
  v112 = v8;
  v8 = calloc(v8, 0x408uLL);
  if (v8)
  {
    if (v7)
    {
LABEL_15:
      v12 = malloc(v7);
      if (!v12)
      {
        v13 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 255, 12, *v13, "malloc");
        v12 = 0;
        v7 = 0;
        ++*(v0 + 32);
      }

      v115 = v12;
      bzero(v12, v7);
      goto LABEL_21;
    }
  }

  else
  {
    v94 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 250, 12, *v94, "malloc");
    v112 = 0;
    ++*(v0 + 32);
    if (v7)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  v115 = 0;
LABEL_21:
  v15 = *(v0 + 8);
  if (pthread_mutex_lock((v1 + 143)))
  {
    v16 = 0;
    goto LABEL_23;
  }

  v105 = v6;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v16 = 0;
  v111 = v8;
  while (1)
  {
    __ptr = v16;
    v18 = *(v1 + 282);
    v19 = *(v1 + 283);
    v20 = v18;
    if (v18 < v19)
    {
      *(v1[142] + 4 * v18) = v15;
      v20 = *(v1 + 282);
    }

    *(v1 + 282) = v20 + 1;
    if (!v20 && pthread_cond_broadcast((v1 + 151)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
LABEL_239:
      v8 = v111;
      v16 = __ptr;
LABEL_24:
      v17 = (v0 + 32);
      goto LABEL_230;
    }

    if (pthread_mutex_unlock((v1 + 143)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      goto LABEL_239;
    }

    if (v18 >= v19)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      goto LABEL_239;
    }

    v8 = v111;
    v16 = __ptr;
    if (pthread_mutex_lock((v0 + 48)))
    {
      break;
    }

    while (1)
    {
      v21 = *(v0 + 40);
      if (v21 > 0)
      {
        break;
      }

      if (pthread_cond_wait((v0 + 112), (v0 + 48)))
      {
        goto LABEL_229;
      }
    }

    *(v0 + 40) = v21 - 1;
    if (pthread_mutex_unlock((v0 + 48)))
    {
      break;
    }

    v22 = *(v0 + 24);
    if (v22 < 0)
    {
      goto LABEL_231;
    }

    v23 = v1[134] + 280 * v22;
    v24 = ArchiveTreeNodePath(v1[132], v22, v10, 2047 - v1[131]);
    v109 = v10;
    v110 = v23;
    if ((v24 & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 276, 12, 0, "full entry path is too long", v95);
      goto LABEL_48;
    }

    if (v2 < 3)
    {
      if (v2 == 2)
      {
        v25 = *MEMORY[0x29EDCA610];
        if (v24)
        {
          fprintf(v25, "%s\n");
        }

        else
        {
          fwrite(".\n", 2uLL, 1uLL, v25);
        }
      }
    }

    else
    {
      fprintf(*MEMORY[0x29EDCA610], "[%d] processing entry %s\n");
    }

    *(v23 + 192) = *(v0 + 8);
    if (lstat(path, &v124))
    {
      v26 = *__error();
      v27 = 289;
LABEL_47:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", v27, 12, v26, "%s");
      goto LABEL_48;
    }

    v104 = v2;
    AAEntryType = getAAEntryType(v124.st_mode);
    v29 = AAEntryType;
    v30 = *v1;
    v31 = *(*v1 + 64);
    if (v31)
    {
      *&v125[12] = 0;
      *v125 = v10;
      *&v125[8] = AAEntryType;
      *&v125[16] = v111;
      *&v125[24] = v112;
      *&v125[32] = 0;
      *&v125[40] = v115;
      *&v125[48] = v7;
      *&v125[56] = 0;
      v31(*(v30 + 72), v125);
      v107 = *&v125[56];
      v108 = *&v125[32];
    }

    *v23 = v29;
    if (!v29)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 318, 12, 0, "file type is not supported (st_mode=0%o): %s");
      goto LABEL_57;
    }

    *(v23 + 80) = v124.st_ino;
    *(v23 + 72) = v124.st_nlink;
    if (v29 == 70)
    {
      *(v23 + 96) = v124.st_size;
    }

    else
    {
      if ((v29 & 0xFFFFFFFE) != 0x42)
      {
        v45 = v29 == 76;
        v2 = v104;
        if (v45)
        {
          v46 = readlink(path, v138, 0x3FFuLL);
          if (v46 < 0)
          {
            v26 = *__error();
            v27 = 328;
            goto LABEL_47;
          }

          if (!v46)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 329, 12, 0, "readlink returned an empty string: %s");
            goto LABEL_48;
          }

          v138[v46] = 0;
          if (BlobBufferStore(v0 + 160, v138, v46 + 1, (v23 + 200)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 333, 12, 0, "storing link", v95);
            goto LABEL_48;
          }
        }

        goto LABEL_61;
      }

      *(v23 + 88) = v124.st_rdev;
    }

    v2 = v104;
LABEL_61:
    *(v23 + 60) = *&v124.st_uid;
    *(v23 + 4) = v124.st_mode & 0xFFF;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 0u;
    *(v23 + 68) = v124.st_flags;
    *(v23 + 8) = v124.st_mtimespec;
    *&c.h2 = 0;
    *&c.h4 = 0;
    memset(v125, 0, 64);
    c.h0 = 5;
    c.h1 = 8704;
    if (!getattrlist(path, &c, v125, 0x40uLL, 1u) && *v125 == 36)
    {
      *(v23 + 24) = *&v125[4];
      *(v23 + 40) = *&v125[20];
    }

    FileProtectionClass = getFileProtectionClass(path);
    if ((FileProtectionClass - 1) >= 6)
    {
      v33 = 0;
    }

    else
    {
      v33 = FileProtectionClass + 64;
    }

    *(v23 + 56) = v33;
    v34 = v23;
    *&v35 = -1;
    *(&v35 + 1) = -1;
    *(v23 + 104) = v35;
    v36 = (v23 + 104);
    *(v34 + 120) = v35;
    if (*v34 != 70)
    {
      goto LABEL_102;
    }

    *&v125[8] = 0;
    *v125 = 0;
    if (!fsctl(path, 0x40104A0EuLL, v125, 0) && *v125 == 2)
    {
      *v36 = *&v125[8];
    }

    if (!v11)
    {
      goto LABEL_102;
    }

    if (*v110 != 70)
    {
      goto LABEL_102;
    }

    v37 = *(v1 + 1080);
    if ((v37 & 7) == 0)
    {
      goto LABEL_102;
    }

    v117.pw_name = 0;
    v117.pw_passwd = 0;
    memset(&c, 0, sizeof(c));
    memset(v125, 0, 104);
    if (v37)
    {
      CC_CKSUM_Init(&v117);
      v37 = *(v1 + 1080);
    }

    v16 = __ptr;
    if ((v37 & 2) != 0)
    {
      CC_SHA1_Deprecated_Init(&c);
      v37 = *(v1 + 1080);
    }

    if ((v37 & 4) != 0)
    {
      CC_SHA256_Init(v125);
    }

    v38 = open(path, 0);
    if (v38 < 0)
    {
      v26 = *__error();
      v27 = 413;
      goto LABEL_47;
    }

    v39 = v38;
    MemBufferClear(v11);
    FreePtr = MemBufferGetFreePtr(v11);
    FreeSize = MemBufferGetFreeSize(v11);
    v42 = read(v39, FreePtr, FreeSize);
    if (v42 < 0)
    {
LABEL_100:
      v47 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 421, 12, *v47, "%s", path);
      v2 = v104;
      v10 = v109;
      goto LABEL_101;
    }

    v43 = v42;
    while (1)
    {
      v44 = *(v1 + 1080);
      if (!v43)
      {
        break;
      }

      if (v1[135])
      {
        CC_CKSUM_Update(&v117, FreePtr, v43);
        v44 = *(v1 + 1080);
        if ((v44 & 2) != 0)
        {
LABEL_91:
          CC_SHA1_Deprecated_Update(&c, FreePtr, v43);
          if ((v1[135] & 4) == 0)
          {
            goto LABEL_88;
          }

LABEL_87:
          CC_SHA256_Update(v125, FreePtr, v43);
          goto LABEL_88;
        }
      }

      else if ((v1[135] & 2) != 0)
      {
        goto LABEL_91;
      }

      if ((v44 & 4) != 0)
      {
        goto LABEL_87;
      }

LABEL_88:
      v43 = read(v39, FreePtr, FreeSize);
      if (v43 < 0)
      {
        goto LABEL_100;
      }
    }

    if (v1[135])
    {
      CC_CKSUM_Final((v110 + 136), &v117);
      v44 = *(v1 + 1080);
    }

    v2 = v104;
    v10 = v109;
    if ((v44 & 2) != 0)
    {
      CC_SHA1_Deprecated_Final((v110 + 140), &c);
      v44 = *(v1 + 1080);
    }

    if ((v44 & 4) != 0)
    {
      CC_SHA256_Final((v110 + 160), v125);
    }

LABEL_101:
    close(v39);
LABEL_102:
    if ((*(*v1 + 33) & 4) != 0)
    {
      MemBufferClear(v11);
      v48 = listxattr(path, 0, 0, 1);
      if (v48 < 1)
      {
        v2 = v104;
      }

      else
      {
        v49 = v48;
        v50 = v106;
        if (v48 > v106)
        {
          __ptr = reallocf(__ptr, v48);
          if (__ptr)
          {
            v50 = v49;
            goto LABEL_107;
          }

          v71 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 455, 12, *v71, "malloc");
          v16 = 0;
          v106 = v49;
LABEL_57:
          v2 = v104;
          goto LABEL_48;
        }

LABEL_107:
        v16 = __ptr;
        v106 = v50;
        v51 = listxattr(path, __ptr, v50, 1);
        v2 = v104;
        if (v51 >= 1)
        {
          v52 = 0;
          name = __ptr;
          v98 = v51;
          do
          {
            v53 = &v16[v52];
            if (*v53)
            {
              ++v52;
              v16 = __ptr;
            }

            else
            {
              *v125 = 0;
              DataSize = MemBufferGetDataSize(v11);
              if ((MemBufferFillFromBufferWithCapacityIncrease(v11, 4uLL, v125) & 0x8000000000000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 479, 12, 0, "inserting XAT xsize: %s");
LABEL_220:
                v16 = __ptr;
                goto LABEL_48;
              }

              v100 = v53 - name;
              if ((MemBufferFillFromBufferWithCapacityIncrease(v11, v53 - name + 1, name) & 0x8000000000000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 480, 12, 0, "inserting XAT xname: %s");
                goto LABEL_220;
              }

              v54 = getxattr(path, name, 0, 0, 0, 1);
              v16 = __ptr;
              if (v54 < 0)
              {
                v74 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 488, 12, v74, "%s");
                goto LABEL_57;
              }

              v55 = v54;
              v56 = MemBufferGetDataSize(v11);
              if ((MemBufferIncreaseCapacity(v11, v56 + v55) & 0x8000000000000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 492, 12, 0, "increasing XAT buffer capacity: %s");
                goto LABEL_57;
              }

              value = MemBufferGetFreePtr(v11);
              v57 = MemBufferGetFreeSize(v11);
              if (getxattr(path, name, value, v57, 0, 1) < 0)
              {
                v75 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 500, 12, v75, "getxattr", v95);
                goto LABEL_57;
              }

              if ((MemBufferIncreaseSize(v11, v55) & 0x8000000000000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 501, 12, 0, "invalid size increase", v95);
                goto LABEL_57;
              }

              *v125 = v100 + v55 + 5;
              if (*&v125[4])
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 505, 12, 0, "XAT value is too long to be stored in YAA archive (%zd B): %s");
                goto LABEL_57;
              }

              DataPtr = MemBufferGetDataPtr(v11);
              *(DataPtr + DataSize) = *v125;
              name = &__ptr[++v52];
              v2 = v104;
              v51 = v98;
            }
          }

          while (v52 != v51);
        }
      }

      if (!MemBufferIsEmpty(v11))
      {
        v69 = MemBufferGetDataPtr(v11);
        v70 = MemBufferGetDataSize(v11);
        if (!BlobBufferStore(v0 + 160, v69, v70, (v110 + 216)))
        {
          v2 = v104;
          if (v104 >= 3)
          {
            v72 = *MEMORY[0x29EDCA610];
            v96 = MemBufferGetDataSize(v11);
            v73 = v72;
            v2 = v104;
            fprintf(v73, "XAT blob [%zu] stored for %s\n", v96, path);
          }

          goto LABEL_123;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 517, 12, 0, "storing XAT");
LABEL_219:
        v2 = v104;
        goto LABEL_220;
      }
    }

LABEL_123:
    if ((*(*v1 + 33) & 8) == 0)
    {
      goto LABEL_202;
    }

    v59 = v124.st_mode & 0xF000;
    if (v59 != 0x8000 && v59 != 0x4000)
    {
      goto LABEL_202;
    }

    MemBufferClear(v11);
    file = acl_get_file(path, ACL_TYPE_EXTENDED);
    if (!file)
    {
      goto LABEL_201;
    }

    entry_p = 0;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    memset(v125, 0, sizeof(v125));
    namea = file;
    if (acl_get_entry(file, 0, &entry_p))
    {
      goto LABEL_200;
    }

    v61 = 1;
    while (2)
    {
      tag_type_p = ACL_UNDEFINED_TAG;
      flagset_p = 0;
      mask_p = 0;
      *id_type = 0;
      memset(&c, 0, 72);
      memset(v125, 0, sizeof(v125));
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      if (acl_get_tag_type(entry_p, &tag_type_p))
      {
        v76 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 551, 12, v76, "acl_get_tag_type");
LABEL_198:
        v80 = 0;
        goto LABEL_199;
      }

      if (tag_type_p - 1 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Warning: ACL tag type is not ALLOW/DENY (ignoring entry): %d\n", tag_type_p);
LABEL_158:
        if (acl_get_entry(namea, v61++, &entry_p))
        {
          goto LABEL_200;
        }

        continue;
      }

      break;
    }

    *v125 = tag_type_p;
    if (acl_get_flagset_np(entry_p, &flagset_p))
    {
      v77 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 558, 12, v77, "acl_get_flagset_np");
      goto LABEL_198;
    }

    if (acl_get_flag_np(flagset_p, ACL_FLAG_NO_INHERIT))
    {
      *&v125[16] |= 0x20000uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
    {
      *&v125[16] |= 0x10uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_FILE_INHERIT))
    {
      *&v125[16] |= 0x20uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_DIRECTORY_INHERIT))
    {
      *&v125[16] |= 0x40uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_LIMIT_INHERIT))
    {
      *&v125[16] |= 0x80uLL;
    }

    if (acl_get_flag_np(flagset_p, ACL_ENTRY_ONLY_INHERIT))
    {
      *&v125[16] |= 0x100uLL;
    }

    if (acl_get_permset_mask_np(entry_p, &mask_p))
    {
      v78 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 569, 12, v78, "acl_get_permset_mask_np");
      goto LABEL_198;
    }

    *&v125[8] = mask_p & 0x103FFE;
    qualifier = acl_get_qualifier(entry_p);
    if (!qualifier)
    {
      v79 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 574, 12, v79, "acl_get_qualifier");
      goto LABEL_198;
    }

    v63 = qualifier;
    if (!*&v125[24])
    {
      if (mbr_uuid_to_id(qualifier, &id_type[1], id_type))
      {
        goto LABEL_148;
      }

      if (id_type[0] == 1)
      {
        memset(&v117, 0, 32);
        v116 = 0;
        if (!getgrgid_r(id_type[1], &v117, string, v105, &v116) && v116 && v117.pw_name && strlen(v117.pw_name) <= 0xFF)
        {
          v68 = 2;
LABEL_172:
          *&v125[24] = v68;
          __strlcpy_chk();
        }
      }

      else if (!id_type[0])
      {
        memset(&v117, 0, sizeof(v117));
        v116 = 0;
        if (!getpwuid_r(id_type[1], &v117, string, v105, &v116) && v116 && v117.pw_name && strlen(v117.pw_name) <= 0xFF)
        {
          v68 = 1;
          goto LABEL_172;
        }
      }

LABEL_148:
      if (!*&v125[24])
      {
        if (!mbr_uuid_to_sid(v63, &c) && !mbr_sid_to_string(&c, string) && strlen(string) <= 0xFF)
        {
          *&v125[24] = 3;
          __strlcpy_chk();
        }

        if (!*&v125[24])
        {
          *&v125[24] = 4;
          uuid_unparse_upper(v63, &v125[28]);
          if (!*&v125[24])
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 616, 12, 0, "resolving ACE qualifier: %s");
            goto LABEL_227;
          }
        }
      }
    }

    v64 = MemBufferGetFreePtr(v11);
    v65 = MemBufferGetFreeSize(v11);
    v66 = yaa_encodeACE(v64, v65, v125);
    if ((v66 & 0x8000000000000000) == 0)
    {
      MemBufferIncreaseSize(v11, v66);
      acl_free(v63);
      v2 = v104;
      goto LABEL_158;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 620, 12, 0, "encoding ACE");
LABEL_227:
    v2 = v104;
    v80 = v63;
LABEL_199:
    acl_free(v80);
LABEL_200:
    acl_free(namea);
LABEL_201:
    if (!MemBufferIsEmpty(v11))
    {
      v87 = MemBufferGetDataPtr(v11);
      v88 = MemBufferGetDataSize(v11);
      if (!BlobBufferStore(v0 + 160, v87, v88, (v110 + 232)))
      {
        v2 = v104;
        if (v104 >= 3)
        {
          v91 = *MEMORY[0x29EDCA610];
          v97 = MemBufferGetDataSize(v11);
          v92 = v91;
          v2 = v104;
          fprintf(v92, "ACL blob [%zu] stored for %s\n", v97, path);
        }

        goto LABEL_202;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 637, 12, 0, "storing ACL");
      goto LABEL_219;
    }

LABEL_202:
    if (!v108)
    {
      v108 = 0;
      v16 = __ptr;
      goto LABEL_49;
    }

    MemBufferClear(v11);
    v81 = 0;
    v82 = v111;
    v83 = v108;
    while (2)
    {
      if (*(v82 + 4) == 2)
      {
        v81 += *(v82 + 8);
      }

      v84 = MemBufferGetFreePtr(v11);
      v85 = MemBufferGetFreeSize(v11);
      v86 = yaa_encodeHeaderField(v84, v85, v82);
      if ((v86 & 0x8000000000000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 653, 12, 0, "extra header field is too large for processing thread buffer");
LABEL_216:
        v2 = v104;
        v8 = v111;
        goto LABEL_220;
      }

      MemBufferIncreaseSize(v11, v86);
      v82 += 1032;
      if (--v83)
      {
        continue;
      }

      break;
    }

    if (v107 != v81)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 658, 12, 0, "extra header data size doesn't match expected value");
      goto LABEL_216;
    }

    v2 = v104;
    v8 = v111;
    v16 = __ptr;
    if (!MemBufferIsEmpty(v11))
    {
      v89 = MemBufferGetDataPtr(v11);
      v90 = MemBufferGetDataSize(v11);
      if (BlobBufferStore(v0 + 160, v89, v90, (v110 + 248)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 663, 12, 0, "storing encoded extra fields");
        goto LABEL_48;
      }
    }

    if (v107)
    {
      if (!BlobBufferStore(v0 + 160, v115, v107, (v110 + 264)))
      {
        goto LABEL_49;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 668, 12, 0, "storing extra fields data", v95);
LABEL_48:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "processEntryThreadProc", 680, 12, 0, "processing failed for entry %zd\n", *(v0 + 24));
      ++*(v0 + 32);
      v10 = v109;
      *(v110 + 196) = 1;
    }

    else
    {
      v107 = 0;
    }

LABEL_49:
    v15 = *(v0 + 8);
    if (pthread_mutex_lock((v1 + 143)))
    {
LABEL_23:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
      goto LABEL_24;
    }
  }

LABEL_229:
  v17 = (v0 + 32);
LABEL_230:
  ++*v17;
LABEL_231:
  MemBufferDestroy(v11);
  free(string);
  free(v8);
  free(v115);
  free(v16);
  if (v2 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "[%d] terminating\n", *(v0 + 8));
  }

  restoreThreadErrorContext(v139);
  return 0;
}

uint64_t *resolveSameThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v32 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  bzero(v31, 0x800uLL);
  bzero(v30, 0x800uLL);
  v2 = *(v1 + 1272);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v0 + 5;
    v6 = v0 + 4;
    while (1)
    {
      v7 = (*(v1 + 1288) + 16 * v4);
      v8 = HIDWORD(*v7);
      if (v8 >= v0[2])
      {
        if (v8 >= v0[3])
        {
          return v0;
        }

        v9 = *(v1 + 1072) + 280 * v7[1];
        v10 = v4 + 1;
        if (*(v9 + 128) == -1 && v10 < v2)
        {
          v12 = *(v1 + 1288);
          v13 = (v12 + 16 * v10);
          if (*v13 == *(v12 + 16 * v4))
          {
            break;
          }
        }
      }

LABEL_10:
      ++v4;
      v3 += 16;
      if (v4 >= v2)
      {
        return v0;
      }
    }

    v14 = v3;
    while (1)
    {
      v15 = *(v1 + 1072) + 280 * v13[1];
      if (*(v15 + 112) != -1 || *(v15 + 120) != -1 || *(v15 + 128) != -1)
      {
        goto LABEL_50;
      }

      if ((*(v1 + 1080) & 2) != 0)
      {
        v16 = *(v9 + 140) == *(v15 + 140) && *(v9 + 148) == *(v15 + 148);
        if (!v16 || *(v9 + 156) != *(v15 + 156))
        {
          goto LABEL_50;
        }
      }

      if ((*(v1 + 1080) & 4) != 0)
      {
        v18 = *(v9 + 160) == *(v15 + 160) && *(v9 + 168) == *(v15 + 168);
        v19 = v18 && *(v9 + 176) == *(v15 + 176);
        if (!v19 || *(v9 + 184) != *(v15 + 184))
        {
          goto LABEL_50;
        }
      }

      v28 = v6;
      v29 = v5;
      if ((ArchiveTreeNodePath(*(v1 + 1056), *(v12 + 16 * v4 + 8), v31, 0x800uLL) & 0x8000000000000000) != 0)
      {
        break;
      }

      if ((ArchiveTreeNodePath(*(v1 + 1056), *(*(v1 + 1288) + v14 + 24), v30, 0x800uLL) & 0x8000000000000000) != 0)
      {
        v25 = 726;
        goto LABEL_47;
      }

      v21 = areFilesEqual2();
      if (v21 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "resolveSameThreadProc", 729, 12, 0, "File comparison failed: %s vs %s");
        goto LABEL_48;
      }

      v6 = v28;
      v5 = v29;
      if (!v21)
      {
        goto LABEL_50;
      }

      add = *(v9 + 128);
      if (add == -1)
      {
        add = atomic_fetch_add((v1 + 1328), 1uLL);
        *(v9 + 128) = add;
      }

      *(v15 + 128) = add;
      v23 = *(v15 + 96);
      v24 = v29;
LABEL_49:
      *v24 += v23;
LABEL_50:
      ++v10;
      v2 = *(v1 + 1272);
      if (v10 < v2)
      {
        v12 = *(v1 + 1288);
        v26 = v12 + v14;
        v14 += 16;
        v13 = (v12 + 16 * v10);
        if (*(v26 + 32) == *(v12 + 16 * v4))
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v25 = 725;
LABEL_47:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "resolveSameThreadProc", v25, 12, 0, "entry path too long");
LABEL_48:
    v6 = v28;
    v5 = v29;
    v24 = v28;
    v23 = 1;
    goto LABEL_49;
  }

  return v0;
}

uint64_t ParallelArchiveWriteDirContents()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v257 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  DefaultNThreads = *(v2 + 4);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v5 = *v2;
  v6 = *(v3 + 40);
  bzero(&v228, 0x540uLL);
  v226 = v2;
  v227 = v3;
  v228 = *v3;
  if (!realpath_DARWIN_EXTSN(*(v2 + 16), v229))
  {
    v7 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 825, 12, v7, "invalid inDir");
    goto LABEL_25;
  }

  v230 = strlen(v229);
  if (v230 - 1015 <= 0xFFFFFFFFFFFFFBFELL)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 827, 12, 0, "invalid inDir length");
    goto LABEL_25;
  }

  v8 = ArchiveTreeCreateFromDirectory(v229, *(v2 + 24), *(v2 + 56), *(v2 + 72), DefaultNThreads, v5);
  v231 = v8;
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 831, 12, 0, "building archive tree");
    goto LABEL_25;
  }

  v232 = ArchiveTreeSize(v8);
  v233 = calloc(v232, 0x118uLL);
  if (!v233)
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 836, 12, v14, "malloc");
    goto LABEL_25;
  }

  if (!v232)
  {
    goto LABEL_421;
  }

  v9 = 0;
  for (i = 0; i < v232; ++i)
  {
    v11 = v233 + v9;
    *(v11 + 34) = 0;
    *(v11 + 15) = 0uLL;
    *(v11 + 16) = 0uLL;
    *(v11 + 13) = 0uLL;
    *(v11 + 14) = 0uLL;
    *(v11 + 11) = 0uLL;
    *(v11 + 12) = 0uLL;
    *(v11 + 9) = 0uLL;
    *(v11 + 10) = 0uLL;
    *(v11 + 7) = 0uLL;
    *(v11 + 8) = 0uLL;
    *(v11 + 5) = 0uLL;
    *(v11 + 6) = 0uLL;
    *(v11 + 3) = 0uLL;
    *(v11 + 4) = 0uLL;
    *(v11 + 1) = 0uLL;
    *(v11 + 2) = 0uLL;
    *v11 = 0uLL;
    *(v11 + 48) = -1;
    v9 += 280;
  }

  if (!v232)
  {
LABEL_421:
    v15 = 0;
    goto LABEL_26;
  }

  v12 = v234 & 0xFE | (*(v226 + 32) >> 12) & 1;
  v234 = v234 & 0xFE | ((*(v226 + 32) & 0x1000) != 0);
  v234 = v12 & 0xFD | (2 * ((*(v226 + 32) & 0x2000) != 0));
  v234 = v234 & 0xFB | (*(v226 + 32) >> 12) & 4;
  if (v232 >= DefaultNThreads)
  {
    v13 = DefaultNThreads;
  }

  else
  {
    v13 = v232;
  }

  LODWORD(__count) = v13;
  v239 = 0;
  v240 = v13;
  v241 = calloc(v13, 4uLL);
  if (!v241)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    goto LABEL_24;
  }

  if (pthread_mutex_init(&v242, 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 850, 12, 0, "init available_threads");
    goto LABEL_25;
  }

  if (pthread_cond_init(&v243, 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
    goto LABEL_24;
  }

  v238 = calloc(__count, 0xC8uLL);
  if (!v238)
  {
    v33 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 852, 12, v33, "malloc");
    goto LABEL_25;
  }

  if (__count)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = v238;
      v31 = v238 + v28;
      *v31 = &v226;
      *(v31 + 2) = v29;
      *(v31 + 3) = -1;
      *(v31 + 10) = 0;
      if (pthread_mutex_init((v31 + 48), 0) || pthread_cond_init((v31 + 112), 0))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 860, 12, 0, "init entry_ready");
        goto LABEL_25;
      }

      if (createThread(&v30[v28 + 16], processEntryThreadProc, v31, 0))
      {
        v74 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 863, 12, v74, "createThread");
        goto LABEL_25;
      }

      ++v29;
      v32 = __count;
      v28 += 200;
    }

    while (v29 < __count);
  }

  else
  {
    v32 = 0;
  }

  v34 = v232;
  if (v232 + v32)
  {
    v68 = 0;
    do
    {
      if (pthread_mutex_lock(&v242))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
        goto LABEL_148;
      }

      while (1)
      {
        v69 = v239;
        if (v239)
        {
          break;
        }

        if (pthread_cond_wait(&v243, &v242))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
LABEL_148:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 871, 12, 0, "waiting for an available worker");
          goto LABEL_25;
        }
      }

      --v239;
      v70 = *(v241 + (v69 - 1));
      if (pthread_mutex_unlock(&v242))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
        goto LABEL_148;
      }

      v71 = v238 + 200 * v70;
      if (v68 >= v232)
      {
        v72 = -1;
      }

      else
      {
        v72 = v68;
      }

      *(v71 + 3) = v72;
      if (pthread_mutex_lock((v71 + 48)) || (v73 = *(v71 + 10), *(v71 + 10) = v73 + 1, !v73) && pthread_cond_broadcast((v71 + 112)) || pthread_mutex_unlock((v71 + 48)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 879, 12, 0, "starting task");
        goto LABEL_25;
      }

      ++v68;
      v34 = v232;
      v32 = __count;
    }

    while (v68 < v232 + __count);
  }

  if (v34)
  {
    v35 = 0;
    v36 = v233 + 196;
    do
    {
      if (*v36)
      {
        ++v35;
      }

      v36 += 70;
      --v34;
    }

    while (v34);
    if (v35)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 887, 12, "%zu failed entries reported", v35);
      v32 = __count;
    }
  }

  if (v32)
  {
    v37 = 0;
    for (j = 0; j < v32; ++j)
    {
      v39 = (v238 + v37);
      v40 = *(v238 + v37 + 168);
      if (v40)
      {
        if (BlobBufferStore(v235, v39[22], v40, v39 + 23))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 897, 12, 0, "moving thread data to main state");
          goto LABEL_25;
        }

        BlobBufferFree((v39 + 20));
        v32 = __count;
      }

      v37 += 200;
    }
  }

  v41 = v232;
  if (v232)
  {
    v42 = v238;
    v43 = v233 + 272;
    v44 = v232;
    do
    {
      v45 = *(v43 - 20);
      if (v45 == -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 907, 12, 0, "invalid thread_id stored in entry");
        goto LABEL_25;
      }

      v46 = v42[25 * v45 + 23];
      if (*(v43 - 6))
      {
        *(v43 - 7) += v46;
      }

      if (*(v43 - 4))
      {
        *(v43 - 5) += v46;
      }

      if (*(v43 - 8))
      {
        *(v43 - 9) += v46;
      }

      if (*(v43 - 2))
      {
        *(v43 - 3) += v46;
      }

      if (*v43)
      {
        *(v43 - 1) += v46;
      }

      v43 += 35;
      --v44;
    }

    while (v44);
    v47 = v249;
    v48 = v250;
    v49 = v233 + 104;
    v50 = v41;
    do
    {
      if (*(v49 - 26) == 70)
      {
        if (*(v49 - 16) >= 2u)
        {
          v249 = ++v47;
        }

        if (*v49 != -1)
        {
          v250 = ++v48;
        }
      }

      v49 += 35;
      --v50;
    }

    while (v50);
    if (v228 <= 0)
    {
      goto LABEL_178;
    }

    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = v233 + 196;
    v63 = v41;
    do
    {
      v64 = *(v62 - 49);
      if (v64 <= 69)
      {
        if (v64 == 68)
        {
          v65 = v52 + 1;
        }

        else
        {
          v65 = v52;
        }

        if (v64 == 67)
        {
          v66 = v56 + 1;
        }

        else
        {
          v66 = v56;
        }

        if (v64 == 67)
        {
          v65 = v52;
        }

        if (v64 == 66)
        {
          ++v57;
        }

        else
        {
          v56 = v66;
        }

        if (v64 != 66)
        {
          v52 = v65;
        }
      }

      else if (v64 > 79)
      {
        if (v64 == 83)
        {
          v67 = v55 + 1;
        }

        else
        {
          v67 = v55;
        }

        if (v64 == 80)
        {
          ++v54;
        }

        else
        {
          v55 = v67;
        }
      }

      else if (v64 == 70)
      {
        ++v51;
        v61 += *(v62 - 100);
      }

      else if (v64 == 76)
      {
        ++v53;
      }

      if (*(v62 + 28))
      {
        ++v58;
      }

      if (*(v62 + 44))
      {
        ++v59;
      }

      if (*v62)
      {
        ++v60;
      }

      v62 += 280;
      --v63;
    }

    while (v63);
    goto LABEL_152;
  }

  if (v228 > 0)
  {
    v61 = 0;
    v60 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v53 = 0;
    v52 = 0;
    v51 = 0;
LABEL_152:
    v216 = v51;
    v217 = v53;
    v218 = v55;
    v219 = v57;
    v220 = v54;
    v222 = v61;
    fprintf(*MEMORY[0x29EDCA610], "%12zu entries selected\n", v41);
    fprintf(*MEMORY[0x29EDCA610], "%12zu regular files\n", v216);
    fprintf(*MEMORY[0x29EDCA610], "%12zu directories\n", v52);
    v75 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu symbolic links\n", v217);
    if (v218)
    {
      fprintf(*v75, "%12zu sockets\n", v218);
    }

    if (v56)
    {
      fprintf(*v75, "%12zu character special entries\n", v56);
    }

    if (v219)
    {
      fprintf(*v75, "%12zu block special entries\n", v219);
    }

    if (v220)
    {
      fprintf(*v75, "%12zu FIFO\n", v220);
    }

    if (v58)
    {
      fprintf(*v75, "%12zu entries with XAT blob\n", v58);
    }

    if (v59)
    {
      fprintf(*v75, "%12zu entries with ACL blob\n", v59);
    }

    v76 = 0.0009765625;
    if (v222 >> 20)
    {
      v76 = 0.000000953674316;
      LODWORD(v77) = 77;
    }

    else
    {
      LODWORD(v77) = 75;
    }

    if (v222 >> 30)
    {
      v76 = 9.31322575e-10;
      v77 = 71;
    }

    else
    {
      v77 = v77;
    }

    fprintf(*v75, "%12llu bytes in regular files (%.2f %cB)\n", v222, v76 * v222, v77);
    if (v60)
    {
      fprintf(*v75, "%12zu entries reported an error\n", v60);
      if (v228 >= 2)
      {
        if (v232)
        {
          v78 = 0;
          v79 = 196;
          do
          {
            if (*(v233 + v79) && (ArchiveTreeNodePath(v231, v78, __key, 0x400uLL) & 0x8000000000000000) == 0)
            {
              fprintf(*v75, "- %s\n", __key);
            }

            ++v78;
            v79 += 280;
          }

          while (v78 < v232);
        }
      }
    }
  }

LABEL_178:
  if (v249)
  {
    __nel = 0;
    v80 = v232;
    if (v232)
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      do
      {
        v84 = v233;
        if (*(v233 + v81) == 70 && *(v233 + v81 + 72) >= 2u)
        {
          v85 = __ptr;
          if (v82 >= v247)
          {
            v86 = v247 + (v247 >> 1);
            if (!v247)
            {
              v86 = 64;
            }

            v247 = v86;
            v85 = reallocf(__ptr, 16 * v86);
            __ptr = v85;
            if (!v85)
            {
              v213 = *__error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1007, 12, v213, "malloc");
              goto LABEL_25;
            }

            v82 = __nel;
            v80 = v232;
          }

          v87 = &v85[16 * v82];
          *(v87 + 1) = v83;
          *v87 = *&v84[v81 + 80];
          __nel = ++v82;
        }

        ++v83;
        v81 += 280;
      }

      while (v83 < v80);
    }

    else
    {
      v82 = 0;
    }

    qsort(__ptr, v82, 0x10uLL, cmpINOEntry);
    v88 = __nel;
    if (__nel)
    {
      v89 = 0;
      do
      {
        if (v89 + 1 >= v88)
        {
          v88 = v89 + 1;
          v94 = 1;
        }

        else
        {
          v90 = (__ptr + 16 * v89);
          v93 = *v90;
          v92 = v90 + 2;
          v91 = v93;
          v94 = 1;
          while (1)
          {
            v95 = *v92;
            v92 += 2;
            if (v91 != v95)
            {
              break;
            }

            ++v94;
            if (!(v89 - v88 + v94))
            {
              v94 = v88 - v89;
              goto LABEL_203;
            }
          }

          v88 = v89 + v94;
LABEL_203:
          if (!v94)
          {
            goto LABEL_208;
          }
        }

        v96 = 0;
        v97 = (16 * v89) | 8;
        do
        {
          v98 = v233 + 280 * *(__ptr + v97);
          v99 = atomic_load(&v251);
          *(v98 + 14) = v99;
          if (v96)
          {
            v254 += *(v98 + 12);
          }

          ++v96;
          v97 += 16;
        }

        while (v94 != v96);
LABEL_208:
        v89 = v88;
        atomic_fetch_add(&v251, 1uLL);
        v88 = __nel;
      }

      while (v89 < __nel);
    }
  }

  if (v250)
  {
    __nel = 0;
    v100 = v232;
    if (v232)
    {
      v101 = 0;
      v102 = 0;
      v103 = 0;
      do
      {
        v104 = v233;
        if (*(v233 + v101) == 70)
        {
          v105 = __ptr;
          if (v102 >= v247)
          {
            v106 = v247 + (v247 >> 1);
            if (!v247)
            {
              v106 = 64;
            }

            v247 = v106;
            v105 = reallocf(__ptr, 16 * v106);
            __ptr = v105;
            if (!v105)
            {
              v211 = *__error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1051, 12, v211, "malloc");
              goto LABEL_25;
            }

            v102 = __nel;
            v100 = v232;
          }

          v107 = &v105[16 * v102];
          *(v107 + 1) = v103;
          *v107 = *&v104[v101 + 104];
          __nel = ++v102;
        }

        ++v103;
        v101 += 280;
      }

      while (v103 < v100);
    }

    else
    {
      v102 = 0;
    }

    qsort(__ptr, v102, 0x10uLL, cmpINOEntry);
    v108 = v232;
    if (v232)
    {
      v109 = 0;
      v110 = 0;
      do
      {
        v111 = v233;
        if (*(v233 + v109) == 70 && *(v233 + v109 + 104) != -1)
        {
          __key[1] = 0;
          __key[0] = 0;
          __key[0] = *(v233 + v109 + 104);
          v112 = bsearch(__key, __ptr, __nel, 0x10uLL, cmpINOEntry);
          if (v112)
          {
            v113 = v233 + 280 * v112[1];
            v255 += *(v113 + 12);
            add = *(v113 + 15);
            if (add == -1)
            {
              add = atomic_fetch_add(&v252, 1uLL);
              *(v113 + 15) = add;
            }

            *&v111[v109 + 120] = add;
          }

          v108 = v232;
        }

        ++v110;
        v109 += 280;
      }

      while (v110 < v108);
    }
  }

  if ((v234 & 6) == 0)
  {
    goto LABEL_267;
  }

  __nel = 0;
  v115 = v232;
  if (v232)
  {
    v116 = 0;
    v117 = 0;
    v118 = 0;
    do
    {
      v119 = v233;
      if (*(v233 + v116) == 70)
      {
        v120 = __ptr;
        if (v117 >= v247)
        {
          v121 = 64;
          if (v247)
          {
            v121 = v247 + (v247 >> 1);
          }

          v247 = v121;
          v120 = reallocf(__ptr, 16 * v121);
          __ptr = v120;
          if (!v120)
          {
            v212 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1103, 12, v212, "malloc");
            goto LABEL_25;
          }

          v117 = __nel;
        }

        v122 = &v120[16 * v117];
        *(v122 + 1) = v118;
        if ((v234 & 2) != 0)
        {
          v123 = 140;
        }

        else
        {
          v123 = 160;
        }

        *v122 = *&v119[v123 + v116];
        v117 = ++__nel;
        v115 = v232;
      }

      ++v118;
      v116 += 280;
    }

    while (v118 < v115);
  }

  else
  {
    v117 = 0;
  }

  qsort(__ptr, v117, 0x10uLL, cmpINOEntry);
  v244 = DefaultNThreads;
  if ((0x100000000uLL / DefaultNThreads * DefaultNThreads) >> 32)
  {
    v124 = 0x100000000uLL / DefaultNThreads;
  }

  else
  {
    v124 = 0x100000000uLL / DefaultNThreads + 1;
  }

  v245 = calloc(DefaultNThreads, 0x30uLL);
  if (!v245)
  {
    v141 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1118, 12, v141, "malloc");
    goto LABEL_25;
  }

  if (!v244)
  {
    goto LABEL_267;
  }

  v125 = 0;
  v126 = 0;
  v127 = 1;
  do
  {
    v128 = v245 + v125;
    *v128 = &v226;
    v129 = v124 * v126++;
    *(v128 + 2) = v129;
    *(v128 + 3) = v124 * v126;
    if ((createThread(v128 + 1, resolveSameThreadProc, v128, 0) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1126, 12, 0, "creating resolve thread");
      v127 = 0;
    }

    v130 = v244;
    v125 += 48;
  }

  while (v126 < v244);
  if (v244)
  {
    v131 = 0;
    v132 = 0;
    do
    {
      v133 = v245;
      v134 = v245 + v131;
      v135 = *(v245 + v131 + 8);
      if (v135)
      {
        if ((joinThread(v135) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1133, 12, 0, "joining resolve thread");
          v127 = 0;
        }

        *(v134 + 1) = 0;
        if (*&v133[v131 + 32])
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1135, 12, 0, "Thread reported an error");
          v127 = 0;
        }

        v256 += *&v133[v131 + 40];
        v130 = v244;
      }

      ++v132;
      v131 += 48;
    }

    while (v132 < v130);
  }

  if (v127)
  {
LABEL_267:
    if (v228 >= 1)
    {
      v136 = v232;
      if (v232)
      {
        v137 = 0;
        v138 = 0;
        v139 = 0;
        v140 = v233 + 128;
        do
        {
          if (*(v140 - 2) != -1)
          {
            ++v137;
          }

          if (*(v140 - 1) != -1)
          {
            ++v138;
          }

          if (*v140 != -1)
          {
            ++v139;
          }

          v140 += 35;
          --v136;
        }

        while (v136);
      }

      else
      {
        v139 = 0;
        v138 = 0;
        v137 = 0;
      }

      v142 = atomic_load(&v251);
      v143 = MEMORY[0x29EDCA610];
      if (v142 > 0)
      {
        v144 = *MEMORY[0x29EDCA610];
        v145 = atomic_load(&v251);
        fprintf(v144, "%12llu hard link clusters\n", v145);
        fprintf(*v143, "%12llu hard link entries\n", v137);
        fprintf(*v143, "%12llu redundant bytes in hard links\n", v254);
      }

      v146 = atomic_load(&v252);
      if (v146 >= 1)
      {
        v147 = *v143;
        v148 = atomic_load(&v252);
        fprintf(v147, "%12llu clone clusters\n", v148);
        fprintf(*v143, "%12llu clone entries\n", v138);
        fprintf(*v143, "%12llu redundant bytes in clones\n", v255);
      }

      v149 = atomic_load(&v253);
      if (v149 >= 1)
      {
        v150 = *v143;
        v151 = atomic_load(&v253);
        fprintf(v150, "%12llu same data clusters\n", v151);
        fprintf(*v143, "%12llu same data entries\n", v139);
        fprintf(*v143, "%12llu redundant bytes in same data files\n", v256);
      }
    }

    if (v232)
    {
      v152 = 0;
      v153 = v3 + 64;
      v154 = (v3 + 70);
      v223 = (v3 + 64);
      while (1)
      {
        v155 = v233;
        if ((ArchiveTreeNodePath(v231, v152, __key, 0x800uLL) & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1179, 12, 0, "entry path too long");
          goto LABEL_25;
        }

        v156 = &v155[280 * v152];
        if (*(v156 + 49))
        {
          if ((sendFailureEntry(&v226, v152, 1uLL) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1184, 12, 0, "sending failure info");
            goto LABEL_25;
          }

          goto LABEL_419;
        }

        v157 = *(v3 + 56);
        if (v157 >= 0xFFFF)
        {
          v158 = 0xFFFFLL;
        }

        else
        {
          v158 = *(v3 + 56);
        }

        if (*v156 == 70)
        {
          v221 = (*(v2 + 33) >> 1) & 1;
        }

        else
        {
          v221 = 0;
        }

        if (v157 <= 5)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1197, 12, 0, "encode header field");
          goto LABEL_25;
        }

        *(v153 + 4) = 30840;
        *v153 = 825246017;
        if (*(v3 + 32))
        {
          *v153 = 826360153;
        }

        v159 = v158 - 6;
        v160 = *(v2 + 32);
        if (v160)
        {
          v162 = yaa_encodeKeyValue_uint(v154, v159, "TYP", *v156);
          if (v162 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1205, 12, 0, "encode TYP field");
            goto LABEL_25;
          }

          v161 = &v154[v162];
          v159 -= v162;
          v160 = *(v2 + 32);
        }

        else
        {
          v161 = v154;
        }

        if ((v160 & 2) != 0)
        {
          v163 = yaa_encodeKeyValue_uint(v161, v159, "UID", *(v156 + 15));
          if (v163 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1210, 12, 0, "encode UID field");
            goto LABEL_25;
          }

          v161 += v163;
          v159 -= v163;
          v160 = *(v2 + 32);
        }

        if ((v160 & 4) != 0)
        {
          v164 = yaa_encodeKeyValue_uint(v161, v159, "GID", *(v156 + 16));
          if (v164 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1215, 12, 0, "encode GID field");
            goto LABEL_25;
          }

          v161 += v164;
          v159 -= v164;
          v160 = *(v2 + 32);
        }

        if ((v160 & 8) != 0)
        {
          v165 = yaa_encodeKeyValue_uint(v161, v159, "FLG", *(v156 + 17));
          if (v165 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1220, 12, 0, "encode FLG field");
            goto LABEL_25;
          }

          v161 += v165;
          v159 -= v165;
          v160 = *(v2 + 32);
        }

        if ((v160 & 0x10) != 0)
        {
          v166 = yaa_encodeKeyValue_uint(v161, v159, "MOD", *(v156 + 1));
          if (v166 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1225, 12, 0, "encode MOD field");
            goto LABEL_25;
          }

          v161 += v166;
          v159 -= v166;
          v167 = *(v156 + 14);
          if (v167)
          {
            v168 = yaa_encodeKeyValue_uint(v161, v159, "PRC", v167);
            if (v168 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1229, 12, 0, "encode PRC field");
              goto LABEL_25;
            }

            v161 += v168;
            v159 -= v168;
          }
        }

        if (*(v2 + 33))
        {
          v169 = yaa_encodeKeyValue_timespec(v161, v159, "MTM", v156 + 1);
          if (v169 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1235, 12, 0, "encode MTM field");
            goto LABEL_25;
          }

          v161 += v169;
          v159 -= v169;
          if (*(v156 + 3))
          {
            v170 = yaa_encodeKeyValue_timespec(v161, v159, "CTM", v156 + 3);
            if (v170 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1239, 12, 0, "encode CTM field");
              goto LABEL_25;
            }

            v161 += v170;
            v159 -= v170;
          }

          if (*(v156 + 5))
          {
            v171 = yaa_encodeKeyValue_timespec(v161, v159, "BTM", v156 + 5);
            if (v171 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1244, 12, 0, "encode BTM field");
              goto LABEL_25;
            }

            v161 += v171;
            v159 -= v171;
          }
        }

        v172 = *(v2 + 32);
        if ((v172 & 0x40) != 0)
        {
          v173 = yaa_encodeKeyValue_uint(v161, v159, "INO", *(v156 + 10));
          if (v173 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1250, 12, 0, "encode INO field");
            goto LABEL_25;
          }

          v161 += v173;
          v159 -= v173;
          v172 = *(v2 + 32);
        }

        if ((v172 & 0x80) != 0 && *v156 == 70)
        {
          v174 = yaa_encodeKeyValue_uint(v161, v159, "SIZ", *(v156 + 12));
          if (v174 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1255, 12, 0, "encode SIZ field");
            goto LABEL_25;
          }

          v161 += v174;
          v159 -= v174;
          v172 = *(v2 + 32);
        }

        if ((v172 & 0x20) != 0 && (*v156 & 0xFFFFFFFE) == 0x42)
        {
          v175 = yaa_encodeKeyValue_uint(v161, v159, "DEV", *(v156 + 22));
          if (v175 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1260, 12, 0, "encode DEV field");
            goto LABEL_25;
          }

          v161 += v175;
          v159 -= v175;
          v172 = *(v2 + 32);
        }

        if ((v172 & 0x8000) != 0)
        {
          v176 = yaa_encodeKeyValue_path(v161, v159, "PAT", __key);
          if ((v176 & 0x8000000000000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1265, 12, 0, "encode PAT field");
            goto LABEL_25;
          }

          v161 += v176;
          v159 -= v176;
          v172 = *(v2 + 32);
        }

        if ((v172 & 0x10000) != 0 && *(v156 + 26))
        {
          v177 = yaa_encodeKeyValue_path(v161, v159, "LNK", (v236 + *(v156 + 25)));
          if ((v177 & 0x8000000000000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1270, 12, 0, "encode LNK field");
            goto LABEL_25;
          }

          v161 += v177;
          v159 -= v177;
        }

        if (v221)
        {
          v178 = *(v156 + 12);
          v179 = yaa_encodeKeyValue_blob(v161, v159, "DAT", v178);
          if (v179 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1276, 12, 0, "encode DAT field");
            goto LABEL_25;
          }

          v161 += v179;
          v159 -= v179;
        }

        else
        {
          v178 = 0;
        }

        v180 = *(v2 + 32);
        if ((v180 & 0x400) != 0)
        {
          v181 = *(v156 + 28);
          if (v181)
          {
            v182 = yaa_encodeKeyValue_blob(v161, v159, "XAT", *(v156 + 28));
            if (v182 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1282, 12, 0, "encode XAT field");
              goto LABEL_25;
            }

            v178 += v181;
            v161 += v182;
            v159 -= v182;
            v180 = *(v2 + 32);
          }
        }

        if ((v180 & 0x800) != 0)
        {
          v183 = *(v156 + 30);
          if (v183)
          {
            v184 = yaa_encodeKeyValue_blob(v161, v159, "ACL", *(v156 + 30));
            if (v184 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1288, 12, 0, "encode ACL field");
              goto LABEL_25;
            }

            v178 += v183;
            v161 += v184;
            v159 -= v184;
            v180 = *(v2 + 32);
          }
        }

        v185 = *v156;
        if ((v180 & 0x1000) != 0 && v185 == 70)
        {
          v186 = yaa_encodeKeyValue_cksum(v161, v159, "CKS", v156 + 34);
          if (v186 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1293, 12, 0, "encode CKS field");
            goto LABEL_25;
          }

          v161 += v186;
          v159 -= v186;
          v180 = *(v2 + 32);
          v185 = *v156;
        }

        if ((v180 & 0x2000) != 0 && v185 == 70)
        {
          v187 = yaa_encodeKeyValue_sha1(v161, v159, "SH1", (v156 + 140));
          if (v187 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1298, 12, 0, "encode SH1 field");
            goto LABEL_25;
          }

          v161 += v187;
          v159 -= v187;
          v180 = *(v2 + 32);
          v185 = *v156;
        }

        if ((v180 & 0x4000) == 0)
        {
          goto LABEL_369;
        }

        if (v185 == 70)
        {
          break;
        }

LABEL_379:
        v195 = *(v156 + 32);
        if (v195)
        {
          if (v159 < v195)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1327, 12, 0, "copy header extra fields");
            goto LABEL_25;
          }

          v178 += *(v156 + 34);
          memcpy(v161, (v236 + *(v156 + 31)), *(v156 + 32));
          v161 += v195;
        }

        *(v3 + 68) = v161 - v223;
        if (*(v3 + 32))
        {
          *v223 = 826360153;
        }

        if ((yaa_writeRawEntryHeader(v3, v223, v161 - v223, v178) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1340, 12, 0, "writing raw header");
          goto LABEL_450;
        }

        if (v221)
        {
          if (concatPath(v224, 0x800uLL, v229, __key))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1348, 12, 0, "full path too long");
            goto LABEL_450;
          }

          v196 = *(v156 + 12);
          if (v196)
          {
            v197 = open(v224, 0);
            if (v197 < 0)
            {
              v205 = __error();
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1354, 12, "open failed (%d): %s", *v205, v224);
              v204 = 1;
              *(v156 + 49) = 1;
LABEL_403:
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1391, 12, "truncated data: %s", v224);
              *(v156 + 49) = 1;
              bzero(v223, *(v3 + 56));
              while (1)
              {
                v207 = *(v3 + 56) >= v196 ? v196 : *(v3 + 56);
                if (ParallelArchiveWriteEntryData(v227, v223, v207))
                {
                  break;
                }

                v196 -= v207;
                if (!v196)
                {
                  goto LABEL_409;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1397, 12, 0, "write DAT 0x00, w=%zu: %s");
LABEL_450:
              v15 = 1;
              goto LABEL_26;
            }

            v198 = v197;
            while (1)
            {
              v199 = read(v198, v223, *(v3 + 56));
              if ((v199 & 0x8000000000000000) != 0)
              {
                v206 = __error();
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1377, 12, "read failed (%d): %s", *v206, v224);
                v204 = 1;
                *(v156 + 49) = 1;
                goto LABEL_402;
              }

              v200 = v199;
              if (!v199)
              {
                v204 = 1;
                goto LABEL_402;
              }

              v201 = v199 >= v196 ? v196 : v199;
              if (ParallelArchiveWriteEntryData(v227, v223, v201))
              {
                break;
              }

              v202 = v196 - v201;
              v203 = v196 >= v200;
              v196 = v202;
              if (!v203)
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1384, 12, "extra data: %s", v224);
                v204 = 1;
                *(v156 + 49) = 1;
                v196 = v202;
                goto LABEL_402;
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1381, 12, 0, "write DAT, w=%zu: %s", v201, v224);
            v204 = 0;
LABEL_402:
            close(v198);
            if (v196)
            {
              goto LABEL_403;
            }

LABEL_409:
            if (!v204)
            {
              goto LABEL_450;
            }
          }
        }

        v208 = *(v156 + 28);
        if (v208 && ParallelArchiveWriteEntryData(v227, v236 + *(v156 + 27), v208))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1407, 12, 0, "write entry XAT", v214, v215);
          goto LABEL_450;
        }

        v209 = *(v156 + 30);
        if (v209 && ParallelArchiveWriteEntryData(v227, v236 + *(v156 + 29), v209))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1413, 12, 0, "write entry ACL", v214, v215);
          goto LABEL_450;
        }

        v210 = *(v156 + 34);
        if (v210 && ParallelArchiveWriteEntryData(v227, v236 + *(v156 + 33), v210))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1419, 12, 0, "write extra fields data");
          goto LABEL_450;
        }

        if (*(v156 + 49) && (sendFailureEntry(&v226, v152, 2uLL) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1425, 12, 0, "sending failure info");
          goto LABEL_450;
        }

        v153 = v3 + 64;
        v154 = (v3 + 70);
LABEL_419:
        v15 = 0;
        if (++v152 >= v232)
        {
          goto LABEL_26;
        }
      }

      v188 = yaa_encodeKeyValue_sha256(v161, v159, "SH2", v156 + 10);
      if (v188 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1303, 12, 0, "encode SH2 field");
        goto LABEL_25;
      }

      v161 += v188;
      v159 -= v188;
      v185 = *v156;
LABEL_369:
      if (v185 == 70)
      {
        v189 = *(v156 + 14);
        if (v189 == -1)
        {
          goto LABEL_373;
        }

        v190 = yaa_encodeKeyValue_uint(v161, v159, "HLC", v189);
        if (v190 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1309, 12, 0, "encode HLC field");
          goto LABEL_25;
        }

        v161 += v190;
        v159 -= v190;
        if (*v156 == 70)
        {
LABEL_373:
          v191 = *(v156 + 15);
          if (v191 == -1)
          {
            goto LABEL_376;
          }

          v192 = yaa_encodeKeyValue_uint(v161, v159, "CLC", v191);
          if (v192 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1315, 12, 0, "encode CLC field");
            goto LABEL_25;
          }

          v161 += v192;
          v159 -= v192;
          if (*v156 == 70)
          {
LABEL_376:
            v193 = *(v156 + 16);
            if (v193 != -1)
            {
              v194 = yaa_encodeKeyValue_uint(v161, v159, "SLC", v193);
              if (v194 < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "ParallelArchiveWriteDirContents", 1321, 12, 0, "encode SLC field");
                goto LABEL_25;
              }

              v161 += v194;
              v159 -= v194;
            }
          }
        }
      }

      goto LABEL_379;
    }

    goto LABEL_421;
  }

LABEL_25:
  v15 = 1;
LABEL_26:
  BlobBufferFree(v235);
  ArchiveTreeDestroy(v231);
  free(v233);
  v16 = v238;
  if (v238 && __count)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = v238;
      v20 = v238 + v17;
      v21 = *(v238 + v17 + 16);
      if (v21)
      {
        joinThread(v21);
      }

      BlobBufferFree((v20 + 160));
      if (!pthread_mutex_destroy((v20 + 48)))
      {
        pthread_cond_destroy(&v19[v17 + 112]);
      }

      ++v18;
      v17 += 200;
    }

    while (v18 < __count);
    v16 = v238;
  }

  free(v16);
  if (!pthread_mutex_destroy(&v242) && !pthread_cond_destroy(&v243))
  {
    free(v241);
  }

  v22 = v245;
  if (v245)
  {
    v23 = v244;
    if (v244)
    {
      v24 = 0;
      v25 = 8;
      do
      {
        v26 = *(v245 + v25);
        if (v26)
        {
          joinThread(v26);
          v23 = v244;
        }

        ++v24;
        v25 += 48;
      }

      while (v24 < v23);
      v22 = v245;
    }
  }

  free(v22);
  free(__ptr);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v15)
  {
    return -1;
  }

  return *(v3 + 40) - v6;
}

uint64_t cmpINOEntry(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t sendFailureEntry(void *a1, uint64_t a2, unint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = a1[1];
  if ((ArchiveTreeNodePath(a1[132], a2, __s, 0x800uLL) & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "sendFailureEntry", 766, 12, 0, "entry path too long");
  }

  else
  {
    v7 = *(v6 + 56);
    v8 = 0xFFFFLL;
    if (v7 < 0xFFFF)
    {
      v8 = *(v6 + 56);
    }

    if (v7 > 5)
    {
      v9 = (v6 + 64);
      *(v6 + 68) = 30840;
      *(v6 + 64) = 825246017;
      if (*(v6 + 32))
      {
        *(v6 + 68) = 30840;
        *v9 = 826360153;
      }

      v10 = v8 - 6;
      v11 = yaa_encodeKeyValue_uint((v6 + 70), v8 - 6, "TYP", 0x4DuLL);
      if (v11 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "sendFailureEntry", 783, 12, 0, "encode TYP field");
      }

      else
      {
        v12 = v6 + 70 + v11;
        v13 = v10 - v11;
        v14 = yaa_encodeKeyValue_path(v12, v13, "PAT", __s);
        if ((v14 & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "sendFailureEntry", 787, 12, 0, "encode PAT field");
        }

        else
        {
          v15 = (v12 + v14);
          v16 = v13 - v14;
          v17 = yaa_encodeKeyValue_uint(v15, v16, "ERR", a3);
          if (v17 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "sendFailureEntry", 791, 12, 0, "encode ERR field");
          }

          else
          {
            v18 = &v15[v17];
            v19 = yaa_encodeKeyValue_uint(&v15[v17], v16 - v17, "EYP", *(a1[134] + 280 * a2));
            if (v19 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "sendFailureEntry", 795, 12, 0, "encode EYP field");
            }

            else
            {
              v20 = &v18[v19] - v9;
              *(v6 + 68) = v20;
              if ((yaa_writeRawEntryHeader(v6, v6 + 64, v20, 0) & 0x80000000) == 0)
              {
                return 0;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "sendFailureEntry", 802, 12, 0, "writing raw header");
            }
          }
        }
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/WriteDirContents.c", "sendFailureEntry", 775, 12, 0, "encode header field");
    }
  }

  return 0xFFFFFFFFLL;
}

void *aaInSituStreamOpen(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = calloc(1uLL, 0x68uLL);
  v11 = calloc(1uLL, 0x140uLL);
  v12 = v11;
  if (!v10 || !v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "aaInSituStreamOpen", 336, 140, 0, "aaCalloc");
LABEL_15:
    free(v10);
    InSituStreamClose(v12, v21, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  *v11 = a1;
  v11[78] = a5;
  v13 = (a2 + 0x3FFF) >> 14;
  v11[72] = v13;
  LODWORD(v13) = v13 + ((a3 + 0x3FFF) >> 14) + (v13 >> 2);
  v11[79] = a4;
  v14 = (v13 + 256);
  *(v12 + 292) = v14;
  if (v13 + 256 < 0)
  {
    *__error() = 12;
    *(v12 + 8) = 0;
    goto LABEL_14;
  }

  v15 = calloc(v14, 0xDuLL);
  *(v12 + 8) = v15;
  if (!v15)
  {
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "aaInSituStreamOpen", 347, 140, 0, "aaCalloc");
    goto LABEL_15;
  }

  *&v16 = -1;
  *(&v16 + 1) = -1;
  *(v12 + 240) = v16;
  *(v12 + 256) = v16;
  *(v12 + 208) = v16;
  *(v12 + 224) = v16;
  *(v12 + 176) = v16;
  *(v12 + 192) = v16;
  *(v12 + 144) = v16;
  *(v12 + 160) = v16;
  *(v12 + 112) = v16;
  *(v12 + 128) = v16;
  *(v12 + 80) = v16;
  *(v12 + 96) = v16;
  *(v12 + 48) = v16;
  *(v12 + 64) = v16;
  *(v12 + 16) = v16;
  *(v12 + 32) = v16;
  v17 = *(v12 + 292);
  if (v17 >= 1)
  {
    v18 = 0;
    for (i = 0; i < v17; ++i)
    {
      v20 = *(v12 + 8) + v18;
      *(v20 + 1) = i;
      *(v20 + 5) = 0xFFFFFFFF00000000;
      if (i < *(v12 + 288))
      {
        free_page(v12, i);
        v17 = *(v12 + 292);
      }

      v18 += 13;
    }
  }

  if ((AAByteStreamTruncate(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "aaInSituStreamOpen", 362, 140, 0, "AAByteStreamTruncate");
    goto LABEL_15;
  }

  AACustomByteStreamSetData(v10, v12);
  AACustomByteStreamSetCloseProc(v10, InSituStreamClose);
  AACustomByteStreamSetPReadProc(v10, InSituStreamPRead);
  AACustomByteStreamSetPWriteProc(v10, InSituStreamPWrite);
  AACustomByteStreamSetCancelProc(v10, InSituStreamCancel);
  AACustomByteStreamSetCloseProc(v10, InSituStreamClose);
  v10[8] = InSituTruncate;
  v10[11] = InSituStreamSimulate;
  return v10;
}

uint64_t free_page(uint64_t result, int a2)
{
  v3 = result;
  while (1)
  {
    v4 = (*(result + 8) + 13 * a2);
    v5 = *v4;
    if (v5 != 2)
    {
      break;
    }

    a2 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    *v4 = 0;
    *(v4 + 5) = 0;
  }

  ++*(result + 296);
  if ((*(v4 + 9) & 0x80000000) != 0)
  {
    v6 = *(result + 276);
    *(result + 276) = v6 - 1;
    if (v6 >= 2)
    {
      v7 = *(result + 272);
    }

    else
    {
      *(result + 276) = 32;
      result = rand();
      v7 = result & 0x3F;
      *(v3 + 272) = v7;
    }

    v8 = v3 + 4 * v7;
    *(v4 + 9) = *(v8 + 16);
    *(v8 + 16) = a2;
  }

  return result;
}

uint64_t InSituStreamClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 292);
    if (v9 < 1)
    {
      goto LABEL_7;
    }

    v10 = 0;
    v11 = (*(result + 8) + 5);
    do
    {
      v12 = *v11;
      v11 = (v11 + 13);
      v10 += v12;
      --v9;
    }

    while (v9);
    if (v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 298, 140, 0, "%i dangling reads", v10);
      v13 = 0;
    }

    else
    {
LABEL_7:
      v13 = 1;
    }

    v14 = *(v8 + 288);
    v15 = *(v8 + 308);
    if (*(v8 + 300) + v14 != *(v8 + 296) + v15)
    {
      pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 301, 140, "file + excess != written + free", a6, a7, a8);
      v14 = *(v8 + 288);
      v15 = *(v8 + 308);
    }

    if (v14 < v15)
    {
      pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 302, 140, "file < written", a6, a7, a8);
    }

    if (*(v8 + 316))
    {
      fprintf(*MEMORY[0x29EDCA610], "InSituStream: pages: %i file, %i written, %i remapped, %i free, %i excess (%iK)\n", *(v8 + 288), *(v8 + 308), *(v8 + 304), *(v8 + 296), *(v8 + 300), 16 * *(v8 + 300));
    }

    free(*(v8 + 8));
    if (*(v8 + 312) && AAByteStreamClose(*v8) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 319, 140, 0, "AAByteStreamClose");
      v13 = 0;
    }

    free(v8);
    if (v13)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

unint64_t InSituStreamPRead(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = a1[1] + 13 * ((v7 + a4) >> 14);
    v9 = (v7 + a4) & 0x3FFF;
    v10 = a3 - v7 >= 0x4000 - v9 ? 0x4000 - v9 : a3 - v7;
    if (!*(v8 + 5))
    {
      break;
    }

    v11 = *a1;
    if (!*(*a1 + 32))
    {
      goto LABEL_20;
    }

    if (a3 == v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = v9 | (*(v8 + 1) << 14);
      v14 = a2 + v7;
      v15 = v10;
      while (1)
      {
        v16 = (*(v11 + 32))(*v11, v14, v15, v13);
        if (v16 < 0)
        {
          break;
        }

        if (v16)
        {
          v14 += v16;
          v12 += v16;
          v13 += v16;
          v15 -= v16;
          if (v15)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      v12 = v16;
    }

LABEL_16:
    if (v10 != v12)
    {
LABEL_20:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPRead", 238, 140, 0, "aaByteStreamPReadExpected");
      return -1;
    }

    v7 += v10;
    if (v7 >= a3)
    {
      return v7;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPRead", 235, 140, 0, "data not locked");
  return -1;
}

unint64_t InSituStreamPWrite(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = v7 + a4;
    v9 = (v7 + a4) >> 14;
    v10 = (a1[1] + 13 * v9);
    if (a3 - v7 >= 0x4000 - ((v7 + a4) & 0x3FFF))
    {
      v11 = 0x4000 - ((v7 + a4) & 0x3FFF);
    }

    else
    {
      v11 = a3 - v7;
    }

    if (*v10 == 2)
    {
      goto LABEL_9;
    }

    if ((remap_page(a1, v9) & 0x80000000) != 0)
    {
      break;
    }

    *v10 = 2;
    --*(a1 + 74);
    ++*(a1 + 77);
LABEL_9:
    v12 = *a1;
    if (!*(*a1 + 40))
    {
      goto LABEL_21;
    }

    if (a3 == v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = a2 + v7;
      v15 = v11;
      while (1)
      {
        v16 = (*(v12 + 40))(*v12, v14, v15, v8);
        if (v16 < 1)
        {
          break;
        }

        v14 += v16;
        v13 += v16;
        v8 += v16;
        v15 -= v16;
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      v13 = v16;
    }

LABEL_17:
    if (v11 != v13)
    {
LABEL_21:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPWrite", 268, 140, 0, "aaByteStreamPWriteExpected");
      return -1;
    }

    v7 += v11;
    if (v7 >= a3)
    {
      return v7;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPWrite", 261, 140, 0, "remap_page");
  return -1;
}

uint64_t InSituStreamSimulate(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  if (a2 == 3)
  {
    v8 = *a1;
    if (!*(*a1 + 32))
    {
      return -1;
    }

    if (!a4)
    {
      return 0;
    }

    v10 = 0;
    while (1)
    {
      v11 = (*(v8 + 32))(*v8, a3, v6, v5);
      if (v11 < 0)
      {
        break;
      }

      if (v11)
      {
        a3 += v11;
        v10 += v11;
        v5 += v11;
        v6 -= v11;
        if (v6)
        {
          continue;
        }
      }

      return v10;
    }

    return v11;
  }

  if (a4 < 1)
  {
    return v6;
  }

  if (a2 > 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamSimulate", 197, 140, 0, "not implemented");
    return -1;
  }

  v13 = a5 + a4;
  while (1)
  {
    v14 = a1[1] + 13 * (v5 >> 14);
    v17 = *(v14 + 5);
    v15 = (v14 + 5);
    v16 = v17;
    if (!a2)
    {
      break;
    }

    if (v16 <= 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamSimulate", 209, 140, 0, "data not locked");
      return -1;
    }

    v18 = v16 - 1;
    *v15 = v18;
    if (!v18)
    {
      free_page(a1, v5 >> 14);
    }

LABEL_18:
    v5 = (v5 & 0xFFFFFFFFFFFFC000) + 0x4000;
    if (v5 >= v13)
    {
      return v6;
    }
  }

  *v15 = v16 + 1;
  if (v16)
  {
    goto LABEL_18;
  }

  v19 = *(a1 + 74);
  *(a1 + 74) = v19 - 1;
  if (v19)
  {
    goto LABEL_18;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamSimulate", 204, 140, 0, "no free pages");
  return -1;
}

uint64_t remap_page(_DWORD *a1, int a2)
{
  v2 = *(a1 + 1);
  v3 = v2 + 13 * a2;
  if (*(v3 + 5))
  {
    if (*v3 == 1)
    {
      result = remap_page(a1, *(v3 + 1));
      *(v3 + 5) = 0;
      return result;
    }

    v8 = malloc(0x4000uLL);
    v9 = v8;
    if (v8)
    {
      v10 = a1[74];
      if (v10 <= 0)
      {
        v19 = a1[72];
        v20 = a1[75];
        a1[75] = v20 + 1;
        v14 = v20 + v19;
        if (v20 + v19 >= a1[73])
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "allocate_page", 97, 140, 0, "too many excess pages");
        }

        else if ((v14 & 0x80000000) == 0)
        {
LABEL_20:
          v21 = *a1;
          if (*(*a1 + 32))
          {
            v22 = 0;
            v23 = *(v3 + 1) << 14;
            v24 = 0x4000;
            v25 = v8;
            while (1)
            {
              v26 = (*(v21 + 32))(*v21, v25, v24, v23);
              if (v26 < 0)
              {
                break;
              }

              if (v26)
              {
                v25 += v26;
                v22 += v26;
                v23 += v26;
                v24 -= v26;
                if (v24)
                {
                  continue;
                }
              }

              if (v22 != 0x4000)
              {
                break;
              }

              v27 = *a1;
              if (*(*a1 + 40))
              {
                v28 = 0;
                v29 = v14 << 14;
                v30 = 0x4000;
                v31 = v9;
                while (1)
                {
                  v32 = (*(v27 + 40))(*v27, v31, v30, v29);
                  if (v32 < 1)
                  {
                    break;
                  }

                  v31 += v32;
                  v28 += v32;
                  v29 += v32;
                  v30 -= v32;
                  if (!v30)
                  {
                    if (v28 != 0x4000)
                    {
                      break;
                    }

                    v6 = 0;
                    *(v3 + 1) = v14;
                    v33 = *(a1 + 1) + 13 * v14;
                    *v33 = 1;
                    *(v33 + 1) = a2;
                    *(v33 + 5) = 0x7FFFFFFF;
                    ++a1[76];
                    ++a1[74];
                    goto LABEL_35;
                  }
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", 158, 140, 0, "aaByteStreamPWriteExpected");
              goto LABEL_34;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", 157, 140, 0, "aaByteStreamPReadExpected");
          goto LABEL_34;
        }
      }

      else
      {
        v11 = a1[70];
        a1[74] = v10 - 1;
        v12 = a1[73];
        if (v12)
        {
          v13 = &a1[(v11 & 0x3F) + 4];
          do
          {
            v14 = *v13;
            if ((*v13 & 0x80000000) != 0 || (v15 = a1[71], v16 = __OFSUB__(v15, 1), --v15, a1[71] = v15, (v15 < 0) ^ v16 | (v15 == 0)))
            {
              a1[71] = 32;
              v17 = a1[70] + 1;
              a1[70] = v17;
              v13 = &a1[(v17 & 0x3F) + 4];
            }

            else
            {
              v18 = v2 + 13 * v14;
              *v13 = *(v18 + 9);
              *(v18 + 9) = -1;
              if (!*(v18 + 5) && !*v18)
              {
                goto LABEL_20;
              }
            }

            --v12;
          }

          while (v12);
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", 153, 140, 0, "allocate_page");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", 149, 140, 0, "aaMalloc");
    }

LABEL_34:
    v6 = 0xFFFFFFFFLL;
LABEL_35:
    free(v9);
    return v6;
  }

  return 0;
}

void *AATempStreamOpenWithDirectory(unint64_t a1, const char *a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x88uLL);
  v6 = v5;
  if (v5 && (memset_s(v5, 0x88uLL, 0, 0x88uLL), v4))
  {
    if (a2)
    {
      v7 = strlen(a2);
      v8 = v7 + 1;
      if (v7 + 1 < 0x2000000001)
      {
        v11 = malloc(v7 + 1);
        v9 = v11;
        if (v11)
        {
          memcpy(v11, a2, v8);
        }
      }

      else
      {
        v9 = 0;
        *__error() = 12;
      }
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 13) = v9;
    v12 = a1 >> 20;
    if (a1 == -1)
    {
      v12 = -1;
    }

    *(v6 + 1) = 0x100000;
    *(v6 + 2) = v12;
    if ((pthread_mutex_init((v6 + 40), 0) & 0x80000000) == 0)
    {
      *v4 = v6;
      v4[1] = tempStreamClose;
      v4[7] = tempStreamCancel;
      v4[2] = tempStreamRead;
      v4[4] = tempStreamPRead;
      v4[6] = tempStreamSeek;
      v4[3] = tempStreamWrite;
      v4[5] = tempStreamPWrite;
      v4[8] = tempStreamTruncate;
      return v4;
    }

    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "AATempStreamOpenWithDirectory", 326, 50, v14, "mutex init");
  }

  else
  {
    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "AATempStreamOpenWithDirectory", 320, 50, v10, "malloc");
  }

  free(v6);
  free(v4);
  return 0;
}

uint64_t tempStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 128));
    AAByteStreamClose(*(result + 112));
    v3 = *(v1 + 32);
    if (v3)
    {
      if (*(v1 + 24))
      {
        v4 = 0;
        do
        {
          free(*(*(v1 + 32) + 8 * v4++));
        }

        while (v4 < *(v1 + 24));
        v3 = *(v1 + 32);
      }

      free(v3);
    }

    pthread_mutex_destroy((v1 + 40));
    free(*(v1 + 104));
    free(v1);
    if (v2)
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

ssize_t tempStreamRead(uint64_t a1, void *a2, size_t a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (*(a1 + 112))
  {
    return AAByteStreamRead(*(a1 + 112), a2, a3);
  }

  return tempStreamPRead(a1, a2, a3, atomic_fetch_add((a1 + 120), a3));
}

ssize_t tempStreamPRead(uint64_t a1, char *buf, size_t a3, off_t offset)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  v7 = offset;
  v8 = buf;
  v10 = *(a1 + 112);
  if (!v10)
  {
    if (((offset | a3) & 0x8000000000000000) == 0)
    {
      v11 = offset + a3;
      if (!__OFADD__(offset, a3))
      {
        if (*a1 <= offset)
        {
          return 0;
        }

        if (pthread_mutex_lock((a1 + 40)) < 0)
        {
          v20 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPRead", 120, 50, v20, "mutex lock");
        }

        else
        {
          if (v11 >= *a1)
          {
            v12 = *a1;
          }

          else
          {
            v12 = v11;
          }

          if (v12 <= v7)
          {
            v5 = 0;
          }

          else
          {
            v5 = 0;
            v13 = *(a1 + 8);
            v14 = v7 / v13;
            v15 = v7 / v13 * v13;
            v16 = v15 + v13;
            do
            {
              if (v16 >= v12)
              {
                v17 = v12;
              }

              else
              {
                v17 = v16;
              }

              memcpy(v8, (*(*(a1 + 32) + 8 * v14) + v7 - v15), v17 - v7);
              v8 += v17 - v7;
              v5 += v17 - v7;
              ++v14;
              v18 = *(a1 + 8);
              v15 += v18;
              v7 = v17;
              v19 = v16 >= v12;
              v16 += v18;
            }

            while (!v19);
          }

          if ((pthread_mutex_unlock((a1 + 40)) & 0x80000000) == 0)
          {
            return v5;
          }

          v21 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPRead", 148, 50, v21, "mutex unlock");
        }

        v22 = 0;
        atomic_compare_exchange_strong((a1 + 128), &v22, 1u);
      }
    }

    return -1;
  }

  return AAByteStreamPRead(v10, buf, a3, offset);
}

off_t tempStreamSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (!*(a1 + 112))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 120), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *a1;
    }

    atomic_store(a2, (a1 + 120));
    return a2;
  }

  return AAByteStreamSeek(*(a1 + 112), a2, a3);
}

ssize_t tempStreamWrite(uint64_t a1, void *a2, size_t a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (*(a1 + 112))
  {
    return AAByteStreamWrite(*(a1 + 112), a2, a3);
  }

  return tempStreamPWrite(a1, a2, a3, atomic_fetch_add((a1 + 120), a3));
}

ssize_t tempStreamPWrite(size_t *a1, char *buf, size_t nbyte, off_t offset)
{
  if (atomic_load(a1 + 32))
  {
    return -1;
  }

  v7 = offset;
  v9 = buf;
  v11 = a1[14];
  if (!v11)
  {
    if (((offset | nbyte) & 0x8000000000000000) != 0)
    {
      return -1;
    }

    v12 = offset + nbyte;
    if (__OFADD__(offset, nbyte))
    {
      return -1;
    }

    if (pthread_mutex_lock((a1 + 5)) < 0)
    {
      v17 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", 164, 50, v17, "mutex lock");
LABEL_38:
      v27 = 0;
      atomic_compare_exchange_strong(a1 + 32, &v27, 1u);
      return -1;
    }

    if (v12 <= *a1)
    {
      v13 = *a1;
    }

    else
    {
      v13 = v7 + nbyte;
    }

    if ((resizeStream(a1, v13) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", 170, 50, 0, "resizing stream");
    }

    else
    {
      v14 = a1[14];
      if (!v14)
      {
        if (v12 <= v7)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0;
          v18 = a1[1];
          v19 = v7 / v18;
          v20 = v7 / v18 * v18;
          v21 = v20 + v18;
          do
          {
            if (v21 >= v12)
            {
              v22 = v12;
            }

            else
            {
              v22 = v21;
            }

            memcpy((*(a1[4] + 8 * v19) + v7 - v20), v9, v22 - v7);
            v9 += v22 - v7;
            v5 += v22 - v7;
            ++v19;
            v23 = a1[1];
            v20 += v23;
            v7 = v22;
            v24 = v21 >= v12;
            v21 += v23;
          }

          while (!v24);
        }

        v16 = 0;
        v25 = *a1;
        if (v12 > *a1)
        {
          v25 = v12;
        }

        *a1 = v25;
LABEL_34:
        if (pthread_mutex_unlock((a1 + 5)) < 0)
        {
          v26 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", 209, 50, v26, "mutex unlock");
        }

        else if (!v16)
        {
          return v5;
        }

        goto LABEL_38;
      }

      v15 = AAByteStreamPWrite(v14, v9, nbyte, v7);
      if ((v15 & 0x8000000000000000) == 0)
      {
        v5 = v15;
        v16 = 0;
        goto LABEL_34;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", 176, 50, 0, "temp file write");
    }

    v5 = 0;
    v16 = 1;
    goto LABEL_34;
  }

  return AAByteStreamPWrite(v11, buf, nbyte, offset);
}

uint64_t tempStreamTruncate(uint64_t a1, uint64_t a2)
{
  if (atomic_load((a1 + 128)))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 112);
  if (v6)
  {

    return AAByteStreamTruncate(v6);
  }

  if (a2 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 271, 50, 0, "invalid length");
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 40)) < 0)
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 272, 50, *v8, "mutex lock");
    v9 = 0;
    atomic_compare_exchange_strong((a1 + 128), &v9, 1u);
    return 0xFFFFFFFFLL;
  }

  if ((resizeStream(a1, a2) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 274, 50, 0, "resize stream");
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (pthread_mutex_unlock((a1 + 40)) < 0)
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 276, 50, *v10, "mutex lock");
    v11 = 0;
    v7 = 0;
    atomic_compare_exchange_strong((a1 + 128), &v11, 1u);
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t resizeStream(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112))
  {
    v2 = "invalid state";
    v3 = 64;
LABEL_3:
    v4 = 0;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "resizeStream", v3, 50, v4, v2, v32);
    return 0xFFFFFFFFLL;
  }

  if (*a1 >= a2)
  {
    goto LABEL_51;
  }

  v8 = *(a1 + 8);
  if (__OFADD__(a2, v8))
  {
    v32 = a2;
    v2 = "new size out of range: %zu";
    v3 = 70;
    goto LABEL_3;
  }

  v9 = (a2 + v8 - 1) / v8;
  if (v9 <= *(a1 + 16))
  {
    v24 = *(a1 + 24);
    while (v24 < v9)
    {
      if (v24)
      {
        v24 *= 2;
      }

      else
      {
        v24 = 32;
      }
    }

    if (8 * v24 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_54:
      *(a1 + 32) = 0;
      v4 = *__error();
      v2 = "malloc";
      v3 = 89;
      goto LABEL_4;
    }

    v25 = *(a1 + 32);
    v26 = realloc(v25, 8 * v24);
    if (!v26)
    {
      free(v25);
      goto LABEL_54;
    }

    *(a1 + 32) = v26;
    memset_s(&v26[8 * *(a1 + 24)], 8 * (v24 - *(a1 + 24)), 0, 8 * (v24 - *(a1 + 24)));
    *(a1 + 24) = v24;
    v27 = v9 - 1;
    while (v27 != -1 && !*(*(a1 + 32) + 8 * v27))
    {
      v28 = *(a1 + 8);
      if (v28 < 0x2000000001)
      {
        v30 = malloc(*(a1 + 8));
        v29 = v30;
        if (v30)
        {
          memset_s(v30, v28, 0, v28);
        }
      }

      else
      {
        v29 = 0;
        *__error() = 12;
      }

      *(*(a1 + 32) + 8 * v27) = v29;
      if (!*(*(a1 + 32) + 8 * v27--))
      {
        v4 = *__error();
        v2 = "malloc";
        v3 = 99;
        goto LABEL_4;
      }
    }

LABEL_51:
    result = 0;
    *a1 = a2;
    return result;
  }

  v10 = AATempFileStreamOpenWithDirectory(*(a1 + 104));
  *(a1 + 112) = v10;
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "offloadToFile", 36, 50, 0, "AATempFileStreamOpen");
LABEL_57:
    v2 = "offload to file";
    v3 = 76;
    goto LABEL_3;
  }

  v11 = (a1 + 24);
  if (*(a1 + 24))
  {
    v12 = 0;
    v13 = 0;
    while (*a1 > v13)
    {
      if (*(a1 + 8) >= *a1 - v13)
      {
        v14 = *a1 - v13;
      }

      else
      {
        v14 = *(a1 + 8);
      }

      v15 = *(a1 + 112);
      if (*(v15 + 24))
      {
        v16 = 0;
        if (v14)
        {
          v17 = *(*(a1 + 32) + 8 * v12);
          v18 = v14;
          while (1)
          {
            v19 = (*(v15 + 24))(*v15, v17, v18);
            if (v19 < 1)
            {
              break;
            }

            v17 += v19;
            v16 += v19;
            v18 -= v19;
            if (!v18)
            {
              goto LABEL_26;
            }
          }

          v16 = v19;
        }
      }

      else
      {
        v16 = -1;
      }

LABEL_26:
      if (v16 != v14)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "offloadToFile", 43, 50, 0, "writing data to temp file");
        goto LABEL_57;
      }

      v13 += v14;
      if (++v12 >= *v11)
      {
        if (!*v11)
        {
          goto LABEL_31;
        }

        break;
      }
    }

    v20 = 0;
    do
    {
      free(*(*(a1 + 32) + 8 * v20++));
    }

    while (v20 < *(a1 + 24));
  }

LABEL_31:
  free(*(a1 + 32));
  *v11 = 0;
  *(a1 + 32) = 0;
  if ((AAByteStreamTruncate(*(a1 + 112)) & 0x80000000) != 0)
  {
    v2 = "truncate temp file";
    v3 = 78;
    goto LABEL_3;
  }

  v21 = *(a1 + 112);
  v22 = atomic_load((a1 + 120));
  v23 = AAByteStreamSeek(v21, v22, 0);
  result = 0;
  if (v23 < 0)
  {
    v2 = "seek temp file";
    v3 = 80;
    goto LABEL_3;
  }

  return result;
}

uint64_t yaa_encodeKeyValue_marker(_BYTE *a1, unint64_t a2, char *a3)
{
  if (a2 < 4)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  a1[1] = __toupper(a3[1]);
  a1[2] = __toupper(a3[2]);
  a1[3] = __toupper(42);
  return 4;
}

uint64_t yaa_encodeKeyValue_uint(_BYTE *a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a4 <= 0xFF)
  {
    if (a2 >= 5)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(49);
      a1[4] = a4;
      return 5;
    }

    return -1;
  }

  if (!(a4 >> 16))
  {
    if (a2 >= 6)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(50);
      *(a1 + 2) = a4;
      return 6;
    }

    return -1;
  }

  if (!HIDWORD(a4))
  {
    if (a2 >= 8)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(52);
      *(a1 + 1) = a4;
      return 8;
    }

    return -1;
  }

  if (a2 < 0xC)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  a1[1] = __toupper(a3[1]);
  a1[2] = __toupper(a3[2]);
  a1[3] = __toupper(56);
  *(a1 + 4) = a4;
  return 12;
}

uint64_t yaa_encodeKeyValue_blob(uint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (!(a4 >> 16))
  {
    if (a2 >= 6)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(65);
      *(a1 + 4) = a4;
      return 6;
    }

    return -1;
  }

  if (!HIDWORD(a4))
  {
    if (a2 >= 8)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(66);
      *(a1 + 4) = a4;
      return 8;
    }

    return -1;
  }

  if (a2 < 0xC)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(67);
  *(a1 + 4) = a4;
  return 12;
}

uint64_t yaa_encodeKeyValue_cksum(uint64_t a1, unint64_t a2, char *a3, _DWORD *a4)
{
  if (a2 < 8)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(70);
  *(a1 + 4) = *a4;
  return 8;
}

uint64_t yaa_encodeKeyValue_sha1(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0x18)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(71);
  v8 = *(a4 + 16);
  *(a1 + 4) = *a4;
  *(a1 + 20) = v8;
  return 24;
}

uint64_t yaa_encodeKeyValue_sha256(uint64_t a1, unint64_t a2, char *a3, _OWORD *a4)
{
  if (a2 < 0x24)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(72);
  v8 = a4[1];
  *(a1 + 4) = *a4;
  *(a1 + 20) = v8;
  return 36;
}

size_t yaa_encodeKeyValue_path(uint64_t a1, size_t a2, char *a3, char *__s)
{
  v8 = strlen(__s);
  result = -1;
  if (!(v8 >> 16) && v8 + 6 <= a2)
  {
    *a1 = __toupper(*a3);
    *(a1 + 1) = __toupper(a3[1]);
    *(a1 + 2) = __toupper(a3[2]);
    *(a1 + 3) = __toupper(80);
    *(a1 + 4) = v8;
    memcpy((a1 + 6), __s, v8);
    return v8 + 6;
  }

  return result;
}

uint64_t yaa_encodeKeyValue_timespec(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  if ((v7 - 1000000000) < 0xFFFFFFFFC4653601)
  {
    if (a2 >= 0xC)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(83);
      *(a1 + 4) = v6;
      return 12;
    }

    return -1;
  }

  if (a2 < 0x10)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(84);
  *(a1 + 4) = v6;
  *(a1 + 12) = v7;
  return 16;
}

size_t yaa_encodeHeaderField(_BYTE *a1, size_t a2, uint64_t a3)
{
  v5 = *(a3 + 4);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        return yaa_encodeKeyValue_path(a1, a2, a3, (a3 + 8));
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        return yaa_encodeKeyValue_marker(a1, a2, a3);
      }
    }

    else if (v5 == 5)
    {

      return yaa_encodeKeyValue_sha1(a1, a2, a3, a3 + 8);
    }

    else
    {

      return yaa_encodeKeyValue_sha256(a1, a2, a3, (a3 + 8));
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      return yaa_encodeKeyValue_timespec(a1, a2, a3, (a3 + 8));
    }

    else
    {

      return yaa_encodeKeyValue_cksum(a1, a2, a3, (a3 + 8));
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = *(a3 + 8);

        return yaa_encodeKeyValue_blob(a1, a2, a3, v6);
      }

LABEL_34:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeaderField", 190, 10, 0, "invalid valueType in field", v3, v4);
      return -1;
    }

    v8 = *(a3 + 8);

    return yaa_encodeKeyValue_uint(a1, a2, a3, v8);
  }
}

uint64_t yaa_encodeHeader(uint64_t a1, unint64_t a2, int *a3, uint64_t a4, unint64_t a5)
{
  if (a2 >= 0xFFFF)
  {
    v5 = 0xFFFFLL;
  }

  else
  {
    v5 = a2;
  }

  if ((*a3 & 1) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeader", 204, 10, 0, "invalid header, TYP must be set");
    return -1;
  }

  v7 = a3[1] - 66;
  v8 = v7 > 0x11;
  v9 = (1 << v7) & 0x24C57;
  if (v8 || v9 == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeader", 217, 10, 0, "invalid entryType");
    return -1;
  }

  if (a2 < 6)
  {
    return -1;
  }

  *(a1 + 4) = 30840;
  *a1 = 825246017;
  v15 = v5 - 6;
  v16 = *a3;
  if (*a3)
  {
    if (v15 < 5)
    {
      return -1;
    }

    v18 = a3[1];
    *(a1 + 6) = __toupper(84);
    *(a1 + 7) = __toupper(89);
    *(a1 + 8) = __toupper(80);
    *(a1 + 9) = __toupper(49);
    *(a1 + 10) = v18;
    v17 = a1 + 11;
    v15 = v5 - 11;
    v16 = *a3;
    if ((*a3 & 0x8000) == 0)
    {
LABEL_14:
      if ((v16 & 0x10000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v17 = a1 + 6;
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_14;
    }
  }

  v19 = yaa_encodeKeyValue_path(v17, v15, "PAT", a3 + 144);
  if ((v19 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v17 += v19;
  v15 -= v19;
  v16 = *a3;
  if ((*a3 & 0x10000) == 0)
  {
LABEL_15:
    if ((v16 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_26:
  v20 = yaa_encodeKeyValue_path(v17, v15, "LNK", a3 + 1168);
  if ((v20 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v17 += v20;
  v15 -= v20;
  v16 = *a3;
  if ((*a3 & 2) == 0)
  {
LABEL_16:
    if ((v16 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_28:
  v21 = yaa_encodeKeyValue_uint(v17, v15, "UID", a3[2]);
  if (v21 < 0)
  {
    return -1;
  }

  v17 += v21;
  v15 -= v21;
  v16 = *a3;
  if ((*a3 & 4) == 0)
  {
LABEL_17:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_30:
  v22 = yaa_encodeKeyValue_uint(v17, v15, "GID", a3[3]);
  if (v22 < 0)
  {
    return -1;
  }

  v17 += v22;
  v15 -= v22;
  v16 = *a3;
  if ((*a3 & 0x10) == 0)
  {
LABEL_18:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v23 = v15 >= 6;
  v15 -= 6;
  if (!v23)
  {
    return -1;
  }

  v24 = a3[5];
  *v17 = __toupper(77);
  *(v17 + 1) = __toupper(79);
  *(v17 + 2) = __toupper(68);
  *(v17 + 3) = __toupper(50);
  *(v17 + 4) = v24;
  v17 += 6;
  v16 = *a3;
  if ((*a3 & 0x20) == 0)
  {
LABEL_19:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_35:
  v25 = yaa_encodeKeyValue_uint(v17, v15, "DEV", a3[6]);
  if (v25 < 0)
  {
    return -1;
  }

  v17 += v25;
  v15 -= v25;
  v16 = *a3;
  if ((*a3 & 0x40) == 0)
  {
LABEL_20:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_37:
  v26 = yaa_encodeKeyValue_uint(v17, v15, "INO", *(a3 + 4));
  if (v26 < 0)
  {
    return -1;
  }

  v17 += v26;
  v15 -= v26;
  v16 = *a3;
  if ((*a3 & 0x80) != 0)
  {
LABEL_39:
    v27 = yaa_encodeKeyValue_uint(v17, v15, "SIZ", *(a3 + 5));
    if (v27 < 0)
    {
      return -1;
    }

    v17 += v27;
    v15 -= v27;
    v16 = *a3;
  }

LABEL_41:
  if ((v16 & 8) != 0)
  {
    v28 = yaa_encodeKeyValue_uint(v17, v15, "FLG", a3[4]);
    if (v28 < 0)
    {
      return -1;
    }

    v17 += v28;
    v15 -= v28;
    v16 = *a3;
  }

  if ((v16 & 0x100) != 0)
  {
    v29 = yaa_encodeKeyValue_timespec(v17, v15, "MTM", a3 + 6);
    if (v29 < 0)
    {
      return -1;
    }

    v17 += v29;
    v15 -= v29;
    v16 = *a3;
  }

  if ((v16 & 0x1000) != 0)
  {
    v30 = yaa_encodeKeyValue_cksum(v17, v15, "CKS", a3 + 22);
    if (v30 < 0)
    {
      return -1;
    }

    v17 += v30;
    v15 -= v30;
    v16 = *a3;
  }

  if ((v16 & 0x2000) != 0)
  {
    v31 = yaa_encodeKeyValue_sha1(v17, v15, "SH1", (a3 + 23));
    if (v31 < 0)
    {
      return -1;
    }

    v17 += v31;
    v15 -= v31;
    v16 = *a3;
  }

  if ((v16 & 0x4000) != 0)
  {
    v32 = yaa_encodeKeyValue_sha256(v17, v15, "SH2", a3 + 7);
    if (v32 < 0)
    {
      return -1;
    }

    v17 += v32;
    v15 -= v32;
    v16 = *a3;
  }

  if ((v16 & 0x200) != 0)
  {
    v33 = yaa_encodeKeyValue_blob(v17, v15, "DAT", *(a3 + 8));
    if (v33 < 0)
    {
      return -1;
    }

    v17 += v33;
    v15 -= v33;
    v16 = *a3;
  }

  if ((v16 & 0x400) != 0)
  {
    v34 = yaa_encodeKeyValue_blob(v17, v15, "XAT", *(a3 + 9));
    if (v34 < 0)
    {
      return -1;
    }

    v17 += v34;
    v15 -= v34;
    v16 = *a3;
  }

  if ((v16 & 0x800) != 0)
  {
    v35 = yaa_encodeKeyValue_blob(v17, v15, "ACL", *(a3 + 10));
    if (v35 < 0)
    {
      return -1;
    }

    v17 += v35;
    v15 -= v35;
  }

  if (a4 && a5)
  {
    v36 = 0;
    do
    {
      v37 = yaa_encodeHeaderField(v17, v15, a4);
      if ((v37 & 0x8000000000000000) != 0)
      {
        return -1;
      }

      v17 += v37;
      v15 -= v37;
      ++v36;
      a4 += 1032;
    }

    while (v36 < a5);
  }

  result = v17 - a1;
  *(a1 + 4) = v17 - a1;
  return result;
}

size_t yaa_encodeACE(uint64_t a1, size_t a2, uint64_t a3)
{
  v3 = *a3 - 1;
  if (v3 >= 4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeACE", 281, 10, 0, "invalid ACE type");
    return -1;
  }

  v5 = *(a3 + 24) - 1;
  if (v5 >= 4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeACE", 298, 10, 0, "invalid ACE qualifier type");
    return -1;
  }

  v8 = strlen((a3 + 28));
  v9 = v8 + 22;
  result = -1;
  if (v8 + 22 <= a2 && !HIDWORD(v9))
  {
    *a1 = v9;
    *(a1 + 4) = 0x4C554441u >> (8 * v3);
    *(a1 + 5) = *(a3 + 16);
    *(a1 + 13) = *(a3 + 8);
    *(a1 + 21) = 0x69736775u >> (8 * v5);
    memcpy((a1 + 22), (a3 + 28), v8);
    return v9;
  }

  return result;
}

size_t yaa_decodeHeaderField(uint64_t a1, uint64_t a2, size_t a3)
{
  bzero(a1, 0x408uLL);
  if (a3 < 4)
  {
    return -1;
  }

  for (i = 0; i != 3; ++i)
  {
    *(a1 + i) = __toupper(*(a2 + i));
  }

  v9 = *(a2 + 3);
  if (v9 <= 0x42)
  {
    if (*(a2 + 3) <= 0x33u)
    {
      if (v9 == 42)
      {
        *(a1 + 4) = 8;
        return 4;
      }

      if (v9 == 49)
      {
        if (a3 != 4)
        {
          *(a1 + 4) = 1;
          *(a1 + 8) = *(a2 + 4);
          return 5;
        }

        return -1;
      }

      if (v9 != 50)
      {
        goto LABEL_57;
      }

      if (a3 < 6)
      {
        return -1;
      }

      v12 = 1;
    }

    else
    {
      if (*(a2 + 3) <= 0x40u)
      {
        if (v9 != 52)
        {
          if (v9 == 56)
          {
            if (a3 >= 0xC)
            {
              v10 = 1;
LABEL_50:
              *(a1 + 4) = v10;
              *(a1 + 8) = *(a2 + 4);
              return 12;
            }

            return -1;
          }

LABEL_57:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderField", 404, 10, 0, "invalid fields storage type");
          return -1;
        }

        if (a3 < 8)
        {
          return -1;
        }

        v14 = 1;
LABEL_56:
        *(a1 + 4) = v14;
        *(a1 + 8) = *(a2 + 4);
        return 8;
      }

      if (v9 != 65)
      {
        if (v9 != 66)
        {
          goto LABEL_57;
        }

        if (a3 < 8)
        {
          return -1;
        }

        v14 = 2;
        goto LABEL_56;
      }

      if (a3 < 6)
      {
        return -1;
      }

      v12 = 2;
    }

    *(a1 + 4) = v12;
    *(a1 + 8) = *(a2 + 4);
    return 6;
  }

  if (*(a2 + 3) > 0x47u)
  {
    if (*(a2 + 3) > 0x52u)
    {
      if (v9 == 83)
      {
        if (a3 >= 0xC)
        {
          *(a1 + 4) = 3;
          *(a1 + 8) = *(a2 + 4);
          *(a1 + 16) = 0;
          return 12;
        }

        return -1;
      }

      if (v9 == 84)
      {
        if (a3 >= 0x10)
        {
          *(a1 + 4) = 3;
          *(a1 + 8) = *(a2 + 4);
          *(a1 + 16) = *(a2 + 12);
          return 16;
        }

        return -1;
      }
    }

    else
    {
      if (v9 == 72)
      {
        if (a3 >= 0x24)
        {
          *(a1 + 4) = 6;
          v15 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 20);
          *(a1 + 8) = v15;
          return 36;
        }

        return -1;
      }

      if (v9 == 80)
      {
        if (a3 >= 6)
        {
          v11 = *(a2 + 4);
          if (v11 < 0x3FF)
          {
            v6 = v11 + 6;
            if (v11 + 6 <= a3)
            {
              *(a1 + 4) = 7;
              memcpy((a1 + 8), (a2 + 6), v11);
              return v6;
            }
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderField", 396, 10, 0, "path too long in header");
          }
        }

        return -1;
      }
    }

    goto LABEL_57;
  }

  if (v9 != 67)
  {
    if (v9 != 70)
    {
      if (v9 == 71)
      {
        if (a3 >= 0x18)
        {
          *(a1 + 4) = 5;
          v13 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 20);
          *(a1 + 8) = v13;
          return 24;
        }

        return -1;
      }

      goto LABEL_57;
    }

    if (a3 < 8)
    {
      return -1;
    }

    v14 = 4;
    goto LABEL_56;
  }

  if (a3 >= 0xC)
  {
    v10 = 2;
    goto LABEL_50;
  }

  return -1;
}

uint64_t yaa_decodeHeader(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  bzero(a1, 0x890uLL);
  if (a3 < 6 || *a2 != 826360153 && *a2 != 825246017)
  {
    return -1;
  }

  v12 = *(a2 + 4);
  if (v12 < 6 || v12 > a3)
  {
    return -1;
  }

  v15 = a2 + 6;
  v16 = v12 - 6;
  if (v12 != 6)
  {
    v23 = 0;
    memset(__src, 0, 512);
    while (1)
    {
      v17 = yaa_decodeHeaderField(__src, v15, v16);
      if ((v17 & 0x8000000000000000) != 0)
      {
        return -1;
      }

      v18 = v17;
      v19 = __src[0] & 0xDFDFDF;
      if ((__src[0] & 0xDFDFDF) <= 0x4D544C)
      {
        if ((__src[0] & 0xDFDFDF) > 0x444F4C)
        {
          if ((__src[0] & 0xDFDFDF) > 0x4B4E4B)
          {
            if (v19 == 4935244)
            {
              if (DWORD1(__src[0]) != 7)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 459, 10, 0, "invalid type for default field %s");
                return -1;
              }

              *a1 |= 0x10000u;
              strlcpy(a1 + 1168, __src + 8, 0x400uLL);
            }

            else
            {
              if (v19 != 4997953)
              {
                goto LABEL_73;
              }

              if (DWORD1(__src[0]) != 2)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 473, 10, 0, "invalid type for default field %s");
                return -1;
              }

              *a1 |= 0x800u;
              *(a1 + 10) = *(&__src[0] + 1);
            }
          }

          else if (v19 == 4476749)
          {
            if (DWORD1(__src[0]) != 1)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 463, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x10u;
            a1[5] = DWORD2(__src[0]);
          }

          else
          {
            if (v19 != 4672582)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 1)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 462, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 8u;
            a1[4] = DWORD2(__src[0]);
          }
        }

        else if ((__src[0] & 0xDFDFDF) > 0x444946)
        {
          if (v19 == 4475207)
          {
            if (DWORD1(__src[0]) != 1)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 461, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 4u;
            a1[3] = DWORD2(__src[0]);
          }

          else
          {
            if (v19 != 4475221)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 1)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 460, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 2u;
            a1[2] = DWORD2(__src[0]);
          }
        }

        else if (v19 == 1132627)
        {
          if (DWORD1(__src[0]) != 5)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 469, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x2000u;
          *(a1 + 23) = *(__src + 8);
          a1[27] = DWORD2(__src[1]);
        }

        else
        {
          if (v19 != 1198163)
          {
            goto LABEL_73;
          }

          if (DWORD1(__src[0]) != 6)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 470, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x4000u;
          v20 = *(&__src[1] + 8);
          *(a1 + 7) = *(__src + 8);
          *(a1 + 8) = v20;
        }
      }

      else if ((__src[0] & 0xDFDFDF) <= 0x544143)
      {
        if ((__src[0] & 0xDFDFDF) > 0x505953)
        {
          if (v19 == 5265748)
          {
            if (DWORD1(__src[0]) != 1)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 440, 10, 0, "invalid type for default field %s");
              return -1;
            }

            v21 = DWORD2(__src[0]);
            if ((*(&__src[0] + 1) - 66) > 0x11 || ((1 << (BYTE8(__src[0]) - 66)) & 0x24C57) == 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 455, 10, 0, "invalid entryType");
              return -1;
            }

            *a1 |= 1u;
            a1[1] = v21;
          }

          else
          {
            if (v19 != 5458755)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 4)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 468, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x1000u;
            a1[22] = DWORD2(__src[0]);
          }
        }

        else if (v19 == 5067853)
        {
          if (DWORD1(__src[0]) != 3)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 467, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x100u;
          *(a1 + 3) = *(__src + 8);
        }

        else
        {
          if (v19 != 5197385)
          {
            goto LABEL_73;
          }

          if (DWORD1(__src[0]) != 1)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 465, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x40u;
          *(a1 + 4) = *(&__src[0] + 1);
        }
      }

      else if ((__src[0] & 0xDFDFDF) <= 0x544157)
      {
        if (v19 == 5521732)
        {
          if (DWORD1(__src[0]) != 2)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 471, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x200u;
          *(a1 + 8) = *(&__src[0] + 1);
        }

        else
        {
          if (v19 != 5521744)
          {
LABEL_73:
            v22 = v23;
            if (a4 && v23 < a5)
            {
              memcpy((a4 + 1032 * v23), __src, 0x408uLL);
              v22 = v23;
            }

            v23 = v22 + 1;
            goto LABEL_77;
          }

          if (DWORD1(__src[0]) != 7)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 458, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x8000u;
          __strlcpy_chk();
        }
      }

      else
      {
        switch(v19)
        {
          case 5521752:
            if (DWORD1(__src[0]) != 2)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 472, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x400u;
            *(a1 + 9) = *(&__src[0] + 1);
            break;
          case 5653828:
            if (DWORD1(__src[0]) != 1)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 464, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x20u;
            a1[6] = DWORD2(__src[0]);
            break;
          case 5917011:
            if (DWORD1(__src[0]) != 1)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 466, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x80u;
            *(a1 + 5) = *(&__src[0] + 1);
            break;
          default:
            goto LABEL_73;
        }
      }

LABEL_77:
      v15 += v18;
      v16 -= v18;
      if (!v16)
      {
        goto LABEL_80;
      }
    }
  }

  v23 = 0;
LABEL_80:
  if (a6)
  {
    *a6 = v23;
  }

  return v15 - a2;
}

unint64_t yaa_decodeHeaderInfo(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (a2 < 6 || *a1 != 826360153 && *a1 != 825246017)
  {
    return -1;
  }

  result = *(a1 + 4);
  if (result < 6 || result > a2)
  {
    return -1;
  }

  v22 = v4;
  v23 = v5;
  v9 = result - 6;
  if (result != 6)
  {
    v10 = 0;
    v11 = 0;
    v12 = (a1 + 6);
    while (1)
    {
      if (v9 < 4)
      {
        return -1;
      }

      v13 = *(v12 + 3);
      v21 = *v12;
      HIBYTE(v21) = 0;
      if (v13 > 66)
      {
        if (v13 <= 71)
        {
          if (v13 == 67)
          {
            if (v9 < 0xC)
            {
              return -1;
            }

            v18 = *(v12 + 1);
            v16 = __CFADD__(v10, v18);
            v10 += v18;
            if (v16)
            {
              return -1;
            }

LABEL_48:
            v14 = 12;
            goto LABEL_49;
          }

          if (v13 == 70)
          {
            goto LABEL_36;
          }

          if (v13 != 71)
          {
            goto LABEL_80;
          }

          v14 = 24;
        }

        else if (v13 > 82)
        {
          if (v13 == 83)
          {
            goto LABEL_48;
          }

          if (v13 != 84)
          {
LABEL_80:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderInfo", 558, 10, 0, "invalid storage type in YAA header: 0x%02x, key=%s", v13, &v21);
            return -1;
          }

          v14 = 16;
        }

        else if (v13 == 72)
        {
          v14 = 36;
        }

        else
        {
          if (v13 != 80)
          {
            goto LABEL_80;
          }

          if (v9 < 6)
          {
            return -1;
          }

          v14 = *(v12 + 2) + 6;
        }
      }

      else
      {
        if (v13 > 51)
        {
          if (v13 > 64)
          {
            if (v13 != 65)
            {
              if (v9 < 8)
              {
                return -1;
              }

              v15 = v12[1];
              v16 = __CFADD__(v10, v15);
              v10 += v15;
              if (v16)
              {
                return -1;
              }

LABEL_36:
              v14 = 8;
              goto LABEL_49;
            }

            if (v9 < 6)
            {
              return -1;
            }

            v17 = *(v12 + 2);
            v16 = __CFADD__(v10, v17);
            v10 += v17;
            if (v16)
            {
              return -1;
            }

            goto LABEL_43;
          }

          if (v13 == 52)
          {
            goto LABEL_36;
          }

          if (v13 != 56)
          {
            goto LABEL_80;
          }

          goto LABEL_48;
        }

        switch(v13)
        {
          case '*':
            v14 = 4;
            break;
          case '1':
            v14 = 5;
            break;
          case '2':
LABEL_43:
            v14 = 6;
            break;
          default:
            goto LABEL_80;
        }
      }

LABEL_49:
      if (v9 < v14)
      {
        return -1;
      }

      v19 = v21 & 0xDFDFDF;
      if ((v21 & 0xDFDFDFu) > 0x4F4E48)
      {
        if ((v21 & 0xDFDFDFu) <= 0x544143)
        {
          if (v19 == 5197385 || v19 == 5265748 || v19 == 5458755)
          {
            goto LABEL_76;
          }
        }

        else if ((v19 - 5521732) <= 0x14 && ((1 << (v19 - 68)) & 0x101001) != 0 || v19 == 5653828 || v19 == 5917011)
        {
          goto LABEL_76;
        }

LABEL_74:
        if (v19 != 4997953)
        {
          ++v11;
        }

        goto LABEL_76;
      }

      if ((v21 & 0xDFDFDFu) <= 0x444F4C)
      {
        if ((v21 & 0xDFDFDFu) > 0x444946)
        {
          if (v19 == 4475207)
          {
            goto LABEL_76;
          }

          v20 = 4475221;
        }

        else
        {
          if (v19 == 1132627)
          {
            goto LABEL_76;
          }

          v20 = 1198163;
        }

        goto LABEL_70;
      }

      if ((v21 & 0xDFDFDFu) > 0x4B4E4B)
      {
        if (v19 == 4935244 || v19 == 5067853)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

      if (v19 != 4476749)
      {
        v20 = 4672582;
LABEL_70:
        if (v19 != v20)
        {
          goto LABEL_74;
        }
      }

LABEL_76:
      v12 = (v12 + v14);
      v9 -= v14;
      if (!v9)
      {
        goto LABEL_79;
      }
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_79:
  *a3 = v11;
  *a4 = v10;
  return result;
}

unint64_t yaa_decodeACE(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a2 > 3)
  {
    v3 = *a1;
    if (v3 > a2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 612, 10, 0, "invalid ACL blob");
      return -1;
    }

    v5 = *(a1 + 4);
    *(a3 + 16) = *(a1 + 5);
    *(a3 + 8) = *(a1 + 13);
    if (v3 - 22 >= 0x101)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 622, 10, 0, "unsupported qualifier length");
      return -1;
    }

    v7 = *(a1 + 21);
    memcpy((a3 + 28), a1 + 22, v3 - 22);
    v8 = __toupper(v5);
    if (v8 > 75)
    {
      if (v8 == 76)
      {
        v9 = 4;
      }

      else
      {
        if (v8 != 85)
        {
          goto LABEL_16;
        }

        v9 = 3;
      }
    }

    else
    {
      if (v8 != 65)
      {
        if (v8 == 68)
        {
          v9 = 2;
          goto LABEL_19;
        }

LABEL_16:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 632, 10, 0, "invalid ACE type in ACL blob: %c");
        return -1;
      }

      v9 = 1;
    }

LABEL_19:
    *a3 = v9;
    HIDWORD(v11) = __toupper(v7) - 71;
    LODWORD(v11) = HIDWORD(v11);
    v10 = v11 >> 1;
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        v12 = 3;
        goto LABEL_29;
      }

      if (v10 == 7)
      {
        v12 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      if (!v10)
      {
        v12 = 2;
        goto LABEL_29;
      }

      if (v10 == 1)
      {
        v12 = 4;
LABEL_29:
        *(a3 + 24) = v12;
        return v3;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 642, 10, 0, "invalid ACE qualifier type in ACL blob: %c");
    return -1;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 610, 10, 0, "invalid ACL blob");
  return -1;
}

unint64_t yaa_decodeACL(uint64_t a1, unint64_t *a2, void **a3, unint64_t a4, unsigned int *a5)
{
  v7 = *a2;
  v8 = *a3;
  if (a4)
  {
    v10 = a4;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (v12 >= v7)
      {
        if (v7)
        {
          v7 += v7 >> 1;
        }

        else
        {
          v7 = 8;
        }

        v8 = reallocf(v8, 288 * v7);
        if (!v8)
        {
          break;
        }
      }

      v13 = yaa_decodeACE(a5, v10, v8 + v11);
      if ((v13 & 0x8000000000000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACL", 670, 10, 0, "decoding ACE");
        goto LABEL_14;
      }

      ++v12;
      a5 = (a5 + v13);
      v11 += 288;
      v10 -= v13;
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACL", 665, 10, v14, "malloc");
LABEL_14:
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  *a2 = v7;
  *a3 = v8;
  return v12;
}

uint64_t yaa_setEntryAttributes(char *a1, int *a2, uint64_t a3, int a4)
{
  v50 = *MEMORY[0x29EDCA608];
  v48[1] = 0;
  v48[2] = 0;
  v48[0] = 5;
  memset(v49, 0, sizeof(v49));
  if (a3 && (*a3 & 1) != 0)
  {
    v49[0] = *(a3 + 8);
    v8 = 512;
    HIDWORD(v48[0]) = 512;
    v9 = 16;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    v11 = *(a2 + 3);
    v12 = (v49 + v9);
    *v12 = v11;
    v12[1] = v11;
    v9 |= 0x20u;
    v8 |= 0x1400u;
    HIDWORD(v48[0]) = v8;
  }

  if (a3 && (*a3 & 2) != 0)
  {
    *(v49 + v9) = *(a3 + 24);
    v9 += 16;
    HIDWORD(v48[0]) = v8 | 0x2000;
  }

  if ((v10 & 2) != 0)
  {
    v13 = a2[2];
    if ((v10 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = -1;
    if ((v10 & 4) != 0)
    {
LABEL_12:
      v14 = a2[3];
      goto LABEL_15;
    }
  }

  v14 = -1;
LABEL_15:
  memset(&v47, 0, sizeof(v47));
  if (lstat(a1, &v47) < 0)
  {
    v17 = __error();
    if (a4 && *v17 == 13)
    {
      return 0;
    }

    v25 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 751, 10, v25, "%s");
    return 0xFFFFFFFFLL;
  }

  v15 = v47.st_mode & 0xF000;
  if (v15 == 0x8000 || v15 == 0x4000)
  {
    FileAPFSInternalFlags = getFileAPFSInternalFlags();
  }

  else
  {
    FileAPFSInternalFlags = 0;
  }

  v19 = a2[1] - 68;
  if (v19 > 8 || ((1 << v19) & 0x115) == 0)
  {
    if ((*a2 & 2) != 0 && v13 != v47.st_uid || (v22 = 1, (*a2 & 4) != 0) && v14 != v47.st_gid)
    {
      if (!lchown(a1, v13, v14) || (v26 = __error(), a4) && *v26 == 1)
      {
        v22 = 1;
      }

      else
      {
        v38 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 814, 10, *v38, "%s", a1);
        v22 = 0;
      }
    }

    if ((*a2 & 0x10) != 0)
    {
      v39 = a2[5] & 0xFFF;
      if (v39 != (v47.st_mode & 0xFFF))
      {
        if (lchmod(a1, v39))
        {
          v40 = __error();
          if (!a4 || *v40 != 1)
          {
            v41 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 819, 10, *v41, "%s", a1);
            v22 = 0;
          }
        }
      }
    }

    if (HIDWORD(v48[0]))
    {
      if (setattrlist(a1, v48, v49, v9, 1u))
      {
        v42 = __error();
        if (!a4 || *v42 != 1)
        {
          v43 = __error();
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 835, 10, "setattrlist error %d: %s", *v43, a1);
        }
      }
    }

    if ((*a2 & 8) != 0)
    {
      v44 = a2[4] & 0xFFFFFFDF | (32 * ((v47.st_flags >> 5) & 1));
      if (v47.st_flags != v44)
      {
        if (lchflags(a1, v44))
        {
          v45 = __error();
          if (!a4 || *v45 != 1)
          {
            v46 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 849, 10, *v46, "%s", a1);
            v22 = 0;
          }
        }
      }
    }

    goto LABEL_69;
  }

  v20 = open(a1, 0x200000);
  if ((v20 & 0x80000000) != 0)
  {
    v24 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 770, 10, v24, "%s");
    return 0xFFFFFFFFLL;
  }

  v21 = v20;
  if ((*a2 & 2) != 0 && v13 != v47.st_uid || (v22 = 1, (*a2 & 4) != 0) && v14 != v47.st_gid)
  {
    if (!fchown(v20, v13, v14) || (v23 = __error(), a4) && *v23 == 1)
    {
      v22 = 1;
    }

    else
    {
      v27 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 774, 10, *v27, "%s", a1);
      v22 = 0;
    }
  }

  if ((*a2 & 0x10) != 0)
  {
    v28 = a2[5] & 0xFFF;
    if (v28 != (v47.st_mode & 0xFFF))
    {
      if (fchmod(v21, v28))
      {
        v29 = __error();
        if (!a4 || *v29 != 1)
        {
          v30 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 778, 10, *v30, "%s", a1);
          v22 = 0;
        }
      }
    }
  }

  if (HIDWORD(v48[0]))
  {
    if (fsetattrlist(v21, v48, v49, v9, 1u))
    {
      v31 = __error();
      if (!a4 || *v31 != 1)
      {
        v32 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 783, 10, *v32, "%s", a1);
        v22 = 0;
      }
    }
  }

  if (a3)
  {
    if ((*a3 & 0x100) != 0)
    {
      v33 = *(a3 + 80);
      if (FileAPFSInternalFlags != v33 && (setFileAPFSInternalFlagsFD(v21, v33) & 0x80000000) != 0)
      {
        v34 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 794, 10, *v34, "%s", a1);
        v22 = 0;
      }
    }
  }

  if ((*a2 & 8) != 0)
  {
    v35 = a2[4] & 0xFFFFFFDF | (32 * ((v47.st_flags >> 5) & 1));
    if (v47.st_flags != v35)
    {
      if (fchflags(v21, v35))
      {
        v36 = __error();
        if (!a4 || *v36 != 1)
        {
          v37 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 803, 10, *v37, "%s", a1);
          v22 = 0;
        }
      }
    }
  }

  close(v21);
LABEL_69:
  if (v22)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t yaa_setEntryXAT(char *path, uint64_t a2, int a3, unint64_t a4, unsigned int *a5)
{
  if ((*(a2 + 1) & 4) == 0)
  {
    return 0;
  }

  v6 = a4;
  if (*(a2 + 72) == a4)
  {
    if (a4)
    {
      v10 = 1;
      do
      {
        v11 = *a5;
        if (v6 < v11)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 871, 10, 0, "invalid XAT entry size");
          return 0xFFFFFFFFLL;
        }

        if (v11 < 5)
        {
          goto LABEL_29;
        }

        v12 = a5;
        v13 = 0;
        a5 = (a5 + v11);
        v14 = (v12 + 1);
        while (v14[v13])
        {
          v15 = &v14[++v13];
          if (&v14[v13] >= a5)
          {
            goto LABEL_13;
          }
        }

        v15 = &v14[v13];
LABEL_13:
        if (!v13 || v15 == a5)
        {
LABEL_29:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 878, 10, 0, "invalid XAT entry key %zu");
          return 0xFFFFFFFFLL;
        }

        if (a5 == (v15 + 1))
        {
          v16 = 0;
        }

        else
        {
          v16 = v15 + 1;
        }

        if (setxattr(path, v14, v16, a5 - (v15 + 1), 0, 1) < 0)
        {
          v17 = __error();
          if (!a3 || *v17 != 1)
          {
            v18 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 891, 10, *v18, "setxattr: %s", path);
            v10 = 0;
          }
        }

        v6 -= v11;
      }

      while (v6);
      if (v10)
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
      return 0;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 863, 10, 0, "XAT blob size mismatch");
    return 0xFFFFFFFFLL;
  }
}

uint64_t yaa_setEntryACL(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 1) & 8) == 0)
  {
    return 0;
  }

  memset(&v36, 0, sizeof(v36));
  if (lstat(a1, &v36))
  {
    if (!a4)
    {
      return 0;
    }
  }

  else if ((v36.st_mode & 0xF000) == 0xA000 || a4 == 0)
  {
    return 0;
  }

  v11 = 0;
  v12 = a5;
  v13 = a4;
  do
  {
    if ((*v12 - 1) < 2)
    {
      ++v11;
    }

    v12 += 72;
    --v13;
  }

  while (v13);
  if (!v11)
  {
    return 0;
  }

  acl_p = 0;
  v14 = sysconf(71);
  v15 = sysconf(70);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 4096)
  {
    v17 = 4096;
  }

  else
  {
    v17 = v16;
  }

  v18 = malloc(v17);
  if (!v18)
  {
    v26 = *__error();
    v27 = "malloc";
    v28 = 943;
LABEL_57:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryACL", v28, 10, v26, v27, v29, v30);
    v5 = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  acl_p = acl_init(v11);
  if (!acl_p)
  {
    v26 = *__error();
    v27 = "acl_init";
    v28 = 946;
    goto LABEL_57;
  }

  v19 = (a5 + 28);
  do
  {
    flagset_p = 0;
    entry_p = 0;
    memset(uu, 0, sizeof(uu));
    v20 = *(v19 - 7);
    if (v20 - 1 > 1)
    {
      goto LABEL_52;
    }

    if ((*(v19 - 12) & 0xFFFFFFFFFFFDFE0FLL) != 0)
    {
      v29 = *(v19 - 12);
      v27 = "invalid ACE flags: 0x%016llx";
      v28 = 973;
      goto LABEL_72;
    }

    if ((*(v19 - 20) & 0xFFFFFFFFFFEFC001) != 0)
    {
      v29 = *(v19 - 20);
      v27 = "invalid ACE perms: 0x%016llx";
      v28 = 974;
      goto LABEL_72;
    }

    v21 = *(v19 - 1);
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        memset(&v32, 0, sizeof(v32));
        if (mbr_string_to_sid(v19, &v32))
        {
          v23 = 0;
          goto LABEL_45;
        }

        v24 = mbr_sid_to_uuid(&v32, uu);
        goto LABEL_44;
      }

      if (v21 == 4)
      {
        if (uuid_parse(v19, uu))
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      }

LABEL_71:
      v29 = *(v19 - 1);
      v27 = "invalid qualifier type: %d";
      v28 = 1007;
LABEL_72:
      v26 = 0;
      goto LABEL_57;
    }

    if (v21 == 1)
    {
      memset(&v32, 0, sizeof(v32));
      v31 = 0;
      v25 = getpwnam_r(v19, &v32, v18, v17, &v31);
      v23 = 0;
      if (!v25 && v31)
      {
        v24 = mbr_uid_to_uuid(v32.pw_uid, uu);
        goto LABEL_44;
      }
    }

    else
    {
      if (v21 != 2)
      {
        goto LABEL_71;
      }

      memset(&v32, 0, 32);
      v31 = 0;
      v22 = getgrnam_r(v19, &v32, v18, v17, &v31);
      v23 = 0;
      if (!v22 && v31)
      {
        v24 = mbr_gid_to_uuid(v32.pw_uid, uu);
LABEL_44:
        v23 = v24 == 0;
      }
    }

LABEL_45:
    if (!v23)
    {
LABEL_63:
      v29 = *(v19 - 1);
      v30 = v19;
      v27 = "could not resolve qualifier (type %d): %s";
      v28 = 1010;
      goto LABEL_72;
    }

LABEL_46:
    if (acl_create_entry(&acl_p, &entry_p))
    {
      v26 = *__error();
      v27 = "acl_create_entry";
      v28 = 1013;
      goto LABEL_57;
    }

    if (acl_set_tag_type(entry_p, v20))
    {
      v26 = *__error();
      v27 = "acl_set_tag_type";
      v28 = 1014;
      goto LABEL_57;
    }

    if (acl_set_permset_mask_np(entry_p, *(v19 - 20)))
    {
      v26 = *__error();
      v27 = "acl_set_permset_mask_np";
      v28 = 1015;
      goto LABEL_57;
    }

    if (acl_get_flagset_np(entry_p, &flagset_p))
    {
      v26 = *__error();
      v27 = "acl_get_flagset_np";
      v28 = 1016;
      goto LABEL_57;
    }

    if (acl_add_flag_np(flagset_p, *(v19 - 3)))
    {
      v26 = *__error();
      v27 = "acl_add_flag_np";
      v28 = 1017;
      goto LABEL_57;
    }

    if (acl_set_qualifier(entry_p, uu))
    {
      v26 = *__error();
      v27 = "acl_set_qualifier";
      v28 = 1018;
      goto LABEL_57;
    }

LABEL_52:
    v19 += 288;
    --a4;
  }

  while (a4);
  if (acl_set_file(a1, ACL_TYPE_EXTENDED, acl_p))
  {
    v26 = *__error();
    v29 = a1;
    v27 = "acl_set_file: %s";
    v28 = 1022;
    goto LABEL_57;
  }

  v5 = 0;
LABEL_58:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  free(v18);
  return v5;
}

uint64_t ParallelArchiveGetPayloadSize(int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *a1;
  if ((*a1 & 0x800) != 0)
  {
    v5 = *(a1 + 10);
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x200) != 0)
  {
LABEL_5:
    v5 += *(a1 + 8);
  }

LABEL_6:
  if ((v4 & 0x400) != 0)
  {
    v5 += *(a1 + 9);
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else if (!a3)
  {
    goto LABEL_14;
  }

  v6 = (a2 + 8);
  do
  {
    if (*(v6 - 1) == 2)
    {
      v5 += *v6;
    }

    v6 += 129;
    --a3;
  }

  while (a3);
LABEL_14:
  *a4 = v5;
  return 0;
}

char *fileSessionCreate(const char *a1)
{
  memset(&v9, 0, sizeof(v9));
  v2 = calloc(1uLL, 0x800uLL);
  if (!v2)
  {
    v4 = *__error();
    v5 = "malloc";
    v6 = 140;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionCreate", v6, 40, v4, v5, v8);
    goto LABEL_8;
  }

  if (!realpath_DARWIN_EXTSN(a1, v2))
  {
    v4 = *__error();
    v8 = a1;
    v5 = "%s";
    v6 = 143;
    goto LABEL_7;
  }

  if (lstat(v2, &v9))
  {
    v3 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionCreate", 146, 40, v3, v2);
  }

  else
  {
    if ((v9.st_mode & 0xF000) == 0x4000)
    {
      __strlcpy_chk();
      __strlcat_chk();
      return v2;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionCreate", 147, 40, 0, "Not a directory: %s");
  }

LABEL_8:
  free(v2);
  return 0;
}

char *fileRequestOpenForWriting(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x498uLL);
  v5 = v4;
  if (!v4)
  {
    v9 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForWriting", 173, 40, *v9, "malloc");
LABEL_6:
    free(v5);
    return 0;
  }

  *(v4 + 2) = 1;
  *v4 = a1;
  *(v4 + 264) = -1;
  *(v4 + 2) = 0;
  *(v4 + 3) = a2;
  CC_SHA256_Init((v4 + 1064));
  __strlcpy_chk();
  v6 = mkstemp(v5 + 32);
  *(v5 + 264) = v6;
  if (v6 < 0)
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForWriting", 184, 40, *v7, (a1 + 1024));
    v8 = *(v5 + 264);
    if ((v8 & 0x80000000) == 0)
    {
      close(v8);
    }

    goto LABEL_6;
  }

  return v5;
}

ssize_t fileRequestWrite(uint64_t a1, const void *a2, size_t __nbyte)
{
  if (*(a1 + 1060))
  {
    return -1;
  }

  if (!*(a1 + 8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestWrite", 200, 40, 0, "Invalid request type");
    return -1;
  }

  if (*(a1 + 24) < __nbyte)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestWrite", 203, 40, 0, "Exceeding write limit %llu: nbyte=%llu");
LABEL_15:
    *(a1 + 1060) = 1;
    return -1;
  }

  v8 = write(*(a1 + 1056), a2, __nbyte);
  v3 = v8;
  if (v8 < 0)
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestWrite", 207, 40, *v10, "write");
    return v3;
  }

  if (v8 != __nbyte)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestWrite", 208, 40, 0, "truncated write: %zd/%zu");
    goto LABEL_15;
  }

  CC_SHA256_Update((a1 + 1064), a2, __nbyte);
  v9 = *(a1 + 24);
  if (v9 != -1)
  {
    *(a1 + 24) = v9 - __nbyte;
  }

  return __nbyte;
}

uint64_t fileRequestCloseAndGetKey(char *a1, _OWORD *a2, unint64_t a3, void *a4)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 0;
  }

  v8 = *a1;
  bzero(__s, 0x400uLL);
  *md = 0u;
  v34 = 0u;
  if (*(a1 + 265))
  {
    goto LABEL_40;
  }

  if (!*(a1 + 2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", 229, 40, 0, "Invalid request type");
    goto LABEL_40;
  }

  if (a3 <= 0x1F)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", 230, 40, 0, "Key capacity is too low, %d bytes needed");
    goto LABEL_40;
  }

  if ((*(a1 + 3) + 1) >= 2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", 233, 40, 0, "Missing write limit %llu");
    goto LABEL_40;
  }

  v10 = *(a1 + 264);
  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
    *(a1 + 264) = -1;
  }

  CC_SHA256_Final(md, (a1 + 1064));
  while (1)
  {
    pathFromKey(__s, v8, md);
    v11 = strlen(__s);
    makePath(__s, v11);
    memset(&v32, 0, sizeof(v32));
    if (!stat(__s, &v32))
    {
      goto LABEL_34;
    }

    v12 = open(a1 + 32, 0);
    if (v12 < 0)
    {
      v19 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "renameIfNotExist", 90, 40, *v19, "%s", a1 + 32);
    }

    else
    {
      v13 = open(__s, 2561, 384);
      if (v13 == -17)
      {
        goto LABEL_34;
      }

      v14 = v13;
      if (v13 < 0)
      {
        v20 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "renameIfNotExist", 94, 40, *v20, "%s", __s);
        close(v12);
        v12 = v14;
      }

      else
      {
        v15 = malloc(0x10000uLL);
        if (v15)
        {
          while (1)
          {
            v16 = read(v12, v15, 0x10000uLL);
            v17 = v16;
            if (!v16)
            {
              goto LABEL_29;
            }

            if (v16 < 0)
            {
              break;
            }

            v18 = write(v14, v15, v16);
            if (v18 < 0)
            {
              v22 = *__error();
              v23 = 110;
              goto LABEL_27;
            }

            if (v18 != v17)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "renameIfNotExist", 111, 40, 0, "truncated write", v31);
              goto LABEL_28;
            }
          }

          v22 = *__error();
          v23 = 107;
LABEL_27:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "renameIfNotExist", v23, 40, v22, "%s");
          goto LABEL_28;
        }

        v21 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "renameIfNotExist", 101, 40, v21, "malloc");
LABEL_28:
        LODWORD(v17) = 1;
LABEL_29:
        free(v15);
        close(v14);
        close(v12);
        v24 = v17 ? __s : a1 + 32;
        unlink(v24);
        v12 = (v17 << 31) >> 31;
      }
    }

    if (v12 != -17)
    {
      break;
    }

LABEL_34:
    if (areFilesEqual(a1 + 32, __s) > 0)
    {
      goto LABEL_46;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", 262, 40, "SHA256 hash collision: %s", __s);
    v25 = 31;
    do
    {
      if (v25 == -1)
      {
        break;
      }

      v26 = ++md[v25--];
    }

    while ((v26 & 0x100) != 0);
  }

  if (!v12)
  {
LABEL_46:
    v9 = 0;
    v29 = v34;
    *a2 = *md;
    a2[1] = v29;
    *a4 = 32;
    goto LABEL_41;
  }

  v30 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestCloseAndGetKey", 252, 40, v30, "%s");
LABEL_40:
  v9 = 0xFFFFFFFFLL;
LABEL_41:
  v27 = *(a1 + 264);
  if ((v27 & 0x80000000) == 0)
  {
    close(v27);
  }

  unlink(a1 + 32);
  free(a1);
  return v9;
}

char **fileRequestOpenForReading(const char *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x29EDCA608];
  bzero(v15, 0x400uLL);
  if (a3 != 32)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForReading", 288, 40, 0, "invalid key size: %zu", a3);
    v11 = 0;
    goto LABEL_7;
  }

  pathFromKey(v15, a1, a2);
  v10 = calloc(1uLL, 0x498uLL);
  v11 = v10;
  if (!v10)
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForReading", 295, 40, *v13, "malloc");
    goto LABEL_7;
  }

  *v10 = a1;
  v12 = IFileStreamCreateWithFilename(v15, a4, a5);
  v11[146] = v12;
  if (!v12)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestOpenForReading", 300, 40, 0, "creating file stream: %s", v15);
    IFileStreamDestroy(v11[146]);
LABEL_7:
    free(v11);
    return 0;
  }

  return v11;
}

unint64_t fileRequestRead(uint64_t a1, char *a2, size_t a3)
{
  if (*(a1 + 8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestRead", 315, 40, 0, "Invalid request type");
    return -1;
  }

  else
  {
    v5 = *(a1 + 1168);

    return IFileStreamRead(v5, a2, a3);
  }
}

unint64_t fileRequestPRead(uint64_t a1, char *a2, size_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestPRead", 322, 40, 0, "Invalid request type");
    return -1;
  }

  else
  {
    Pos = IFileStreamGetPos(*(a1 + 1168));
    IFileStreamSetPos(*(a1 + 1168), a4);
    v10 = IFileStreamRead(*(a1 + 1168), a2, a3);
    IFileStreamSetPos(*(a1 + 1168), Pos);
    return v10;
  }
}

uint64_t fileRequestClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 8))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileRequestClose", 334, 40, 0, "Invalid request type");
      return 0xFFFFFFFFLL;
    }

    else
    {
      IFileStreamDestroy(*(result + 1168));
      free(v1);
      return 0;
    }
  }

  return result;
}

uint64_t fileSessionClone(const char *a1, const char *a2, unsigned __int8 *a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  bzero(v11, 0x400uLL);
  if (a4 == 32)
  {
    pathFromKey(v11, a1, a3);
    v8 = clonefile(v11, a2, 0);
    result = 0;
    if ((v8 & 0x80000000) == 0)
    {
      return result;
    }

    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionClone", 354, 40, v10, "cloning %s to %s");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabasePlugins/ArchiveDatabaseFilePlugin.c", "fileSessionClone", 347, 40, 0, "invalid key size: %zu");
  }

  return 0xFFFFFFFFLL;
}

uint64_t pathFromKey(char *a1, const char *a2, unsigned __int8 *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  serializeHexString(v6, 0x20u, a3);
  return snprintf(a1, 0x400uLL, "%s/%c%c%c/%s", a2, SLOBYTE(v6[0]), SBYTE1(v6[0]), SBYTE2(v6[0]), v6);
}

_OWORD *ParallelArchiveWriterCreate(_OWORD *a1)
{
  v2 = calloc(1uLL, 0x100040uLL);
  v3 = v2;
  if (v2)
  {
    v4 = a1[1];
    *v2 = *a1;
    v2[1] = v4;
    *(v2 + 7) = 0x100000;
    *(v2 + 8) = 0;
  }

  else
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriterCreate", 15, 22, *v5, "malloc");
  }

  return v3;
}

_OWORD *ParallelArchiveWriterCreateLegacy(_OWORD *a1)
{
  result = ParallelArchiveWriterCreate(a1);
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

uint64_t ParallelArchiveWriterDestroy(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[5];
  free(a1);
  return v1;
}

uint64_t yaa_writeRawEntryHeader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "yaa_writeRawEntryHeader", 46, 22, 0, "truncated entry payload: %llu B missing");
    return 0xFFFFFFFFLL;
  }

  v7 = (*(a1 + 8))(*(a1 + 24), a2, a3);
  if (v7 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "yaa_writeRawEntryHeader", 50, 22, 0, "writing header");
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  result = 0;
  *(a1 + 40) += v8;
  *(a1 + 48) = a4;
  return result;
}

uint64_t ParallelArchiveWriteEntryHeader(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  enterThreadErrorContext();
  if (*(a1 + 48))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryHeader", 68, 22, 0, "truncated entry payload: %llu B missing");
LABEL_19:
    v14 = -1;
    goto LABEL_20;
  }

  if (a4)
  {
    v8 = a3;
    v9 = a4;
    while (*v8 && v8[1] && v8[2] && !v8[3])
    {
      v8 += 1032;
      if (!--v9)
      {
        goto LABEL_10;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryHeader", 76, 22, 0, "invalid extra field key: %s");
    goto LABEL_19;
  }

LABEL_10:
  v10 = yaa_encodeHeader(a1 + 64, *(a1 + 56), a2, a3, a4);
  if (v10 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryHeader", 81, 22, 0, "generating entry header");
    goto LABEL_19;
  }

  if (*(a1 + 32))
  {
    *(a1 + 64) = 826360153;
  }

  v11 = (*(a1 + 8))(*(a1 + 24), a1 + 64, v10);
  if (v11 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryHeader", 88, 22, 0, "writing header");
    goto LABEL_19;
  }

  *(a1 + 40) += v11;
  v12 = *a2;
  if ((*a2 & 0x200) != 0)
  {
    v13 = *(a2 + 64);
  }

  else
  {
    v13 = 0;
  }

  if ((v12 & 0x400) != 0)
  {
    v13 += *(a2 + 72);
    if ((v12 & 0x800) == 0)
    {
LABEL_26:
      if (!a4)
      {
        goto LABEL_34;
      }

LABEL_30:
      v16 = (a3 + 8);
      do
      {
        if (*(v16 - 1) == 2)
        {
          v13 += *v16;
        }

        v16 += 129;
        --a4;
      }

      while (a4);
      goto LABEL_34;
    }
  }

  else if ((v12 & 0x800) == 0)
  {
    goto LABEL_26;
  }

  v13 += *(a2 + 80);
  if (a4)
  {
    goto LABEL_30;
  }

LABEL_34:
  v14 = 0;
  *(a1 + 48) = v13;
LABEL_20:
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v14;
  }

  else
  {
    return result;
  }
}

uint64_t ParallelArchiveWriteEntryData(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  enterThreadErrorContext();
  if (*(a1 + 48) >= a3)
  {
    v7 = (*(a1 + 8))(*(a1 + 24), a2, a3);
    if ((v7 & 0x8000000000000000) == 0 && v7 == a3)
    {
      v8 = 0;
      v9 = *(a1 + 48) - a3;
      *(a1 + 40) += a3;
      *(a1 + 48) = v9;
      goto LABEL_10;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryData", 133, 22, 0, "writing data");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Write.c", "ParallelArchiveWriteEntryData", 129, 22, 0, "Payload too large: %zu B received / %llu B expected");
  }

  v8 = -1;
LABEL_10:
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v8;
  }

  else
  {
    return result;
  }
}

uint64_t BlobBufferStore(uint64_t a1, const void *a2, size_t a3, void *a4)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 8) + a3;
  if ((BlobBufferIncreaseCapacity(a1, v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferStore", 19, 6, 0, "BlobBufferStore");
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      memcpy((*(a1 + 16) + *(a1 + 8)), a2, a3);
    }

    if (a4)
    {
      *a4 = *(a1 + 8);
      a4[1] = a3;
    }

    result = 0;
    *(a1 + 8) = v8;
  }

  return result;
}

uint64_t BlobBufferIncreaseCapacity(uint64_t a1, size_t a2)
{
  v2 = *a1;
  if (*a1 >= a2)
  {
    return 0;
  }

  do
  {
    v4 = v2 + (v2 >> 1);
    if (__CFADD__(v2, v2 >> 1))
    {
      v4 = -1;
    }

    if (v2)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0x10000;
    }
  }

  while (v2 < a2);
  v5 = reallocf(*(a1 + 16), v2);
  *(a1 + 16) = v5;
  if (v5)
  {
    result = 0;
    *a1 = v2;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferIncreaseCapacity", 58, 6, *v7, "malloc");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void BlobBufferFree(uint64_t a1)
{
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

size_t PCompressLZ4Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZ4Decode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t BXDiffWithCache(unint64_t a1, const char **a2, unsigned __int8 *a3, const char *a4, _DWORD *a5, int a6, uint64_t a7, void *a8, void *a9, atomic_ullong *a10)
{
  v11 = a7;
  v15 = a1;
  v106[98] = *MEMORY[0x29EDCA608];
  v86 = *(a7 + 4);
  v89 = a1 - 1;
  memset(&v90, 0, sizeof(v90));
  bzero(v103, 0x360uLL);
  memset(v102, 0, sizeof(v102));
  v101 = 0u;
  memset(v100, 0, sizeof(v100));
  v98 = 0u;
  *v99 = 0u;
  v96 = 0u;
  *v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  *a8 = 0;
  *a9 = 0;
  if (!v15)
  {
    v80 = v11;
    v81 = a2;
    v79 = a5;
    v85 = a4;
    v82 = a8;
    v78 = 0;
LABEL_12:
    v22 = 0;
    v23 = 0;
    v20 = -1;
    do
    {
      if (v15)
      {
        v24 = v20;
        v25 = 0;
        v26 = a3;
        v27 = 1;
        v28 = v15;
        while (1)
        {
          v29 = v27 - 1 < v23 || v28 == 1;
          if (v29 && !sha1cmp(&a3[20 * v23], v26))
          {
            break;
          }

          v25 = v27 >= v15;
          v26 += 20;
          ++v27;
          if (!--v28)
          {
            v30 = 1;
            v20 = v23;
            goto LABEL_25;
          }
        }

        v30 = 0;
        v20 = v24;
LABEL_25:
        v31 = v25;
      }

      else
      {
        v31 = 1;
        v20 = v23;
        v30 = 1;
      }

      *&v103[96 * v23] = v30;
      v22 += v31;
      ++v23;
    }

    while (v23 != v89);
    v32 = 0;
    a2 = v81;
    a8 = v82;
    v11 = v80;
    goto LABEL_28;
  }

  st_size = 0;
  v17 = v15;
  v18 = a2;
  do
  {
    if (lstat(*v18, &v90) || (v90.st_mode & 0xF000) != 0x8000)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 59, 91, 0, "Invalid file: %s", *v18);
      v19 = 0;
      v20 = -1;
      v21 = 1;
      goto LABEL_58;
    }

    if (v90.st_size > st_size)
    {
      st_size = v90.st_size;
    }

    ++v18;
    --v17;
  }

  while (v17);
  v78 = st_size > 0xA00000;
  v85 = a4;
  v79 = a5;
  if (v89)
  {
    v80 = v11;
    v81 = a2;
    v82 = a8;
    goto LABEL_12;
  }

  v22 = 0;
  v20 = -1;
  v32 = 1;
LABEL_28:
  if (bxdiff5Alloc(v22, v11, &v93))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 79, 91, 0, "bxdiff5Alloc");
LABEL_30:
    v21 = 1;
    goto LABEL_31;
  }

  v38 = a2;
  v91[0] = 0;
  v91[1] = 0;
  v92 = 0;
  if ((v32 & 1) == 0)
  {
    v39 = &v104;
    v41 = a3;
    v40 = v89;
    do
    {
      if (*(v39 - 1))
      {
        patchCacheKeyFromSHA1(v41, v39);
        sha1xor(v91, v41);
      }

      v41 += 20;
      v39 += 24;
      --v40;
    }

    while (v40);
  }

  patchCacheKeyFromSHA1(v91, v100 + 4);
  v42 = &v103[96 * v89];
  patchCacheKeyFromSHA1(&a3[20 * v89], v42 | 4);
  if (v86 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%zu/%zu unique inputs: %s\n", v22, v89, v85);
  }

  if (v79)
  {
    v43 = &v103[96 * v20];
    v44 = 3;
    if (v22 == 1)
    {
      v44 = 0;
    }

    atomic_fetch_add(&a10[v44], 1uLL);
    if (v22 == 1)
    {
      v45 = (v43 | 4);
    }

    else
    {
      v45 = v100 + 4;
    }

    if (v22 != 1)
    {
      v43 = v100;
    }

    v46 = patchCacheLookup(v79, v45, v42 | 4, v43 + 48, a6, 0x11E1A300uLL);
    if (v46 < 0)
    {
      atomic_fetch_add(a10 + 8, 1uLL);
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 118, 91, "cache lookup failed (ignored): %s", v85);
    }

    else if (v46)
    {
      if (v22 == 1)
      {
        atomic_fetch_add(a10 + 1, 1uLL);
        if (v86 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "Loaded 1:1 patch from cache: %s\n", v85);
        }

        v21 = 0;
        goto LABEL_32;
      }

      atomic_fetch_add(a10 + 4, 1uLL);
      if (v86 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Loaded combo patch from cache: %s\n");
      }

      goto LABEL_98;
    }

    if (v86 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "No patch in cache: %s\n", v85);
    }
  }

  if (!*(v42 + 80))
  {
    v58 = v38[v89];
    if ((loadFileContents(v58, (v42 + 80), (v42 + 88), 0) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 150, 91, 0, "loadFileContents: %s");
      goto LABEL_30;
    }

    if (v86 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Loaded output file: %s\n", v58);
    }
  }

  if (bxdiff5SetOut(&v93, *(v42 + 80), *(v42 + 88)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 154, 91, 0, "bxdiff5SetOut", v76);
    goto LABEL_30;
  }

  if (sha1cmp(&v96, &a3[20 * v89]))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 156, 91, 0, "SHA1 inconsistency (patching): %s");
    goto LABEL_30;
  }

  v83 = a8;
  CompressedSize = ParallelCompressionGetCompressedSize(*(v42 + 80), *(v42 + 88), 1);
  v59 = 0;
  if ((v32 & 1) == 0)
  {
    v60 = 0;
    v61 = v106;
    do
    {
      if (*(v61 - 20))
      {
        v62 = v42;
        if (!*v61)
        {
          v63 = v38[v60];
          if ((loadFileContents(v63, v61, v61 + 1, 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 169, 91, 0, "loadFileContents: %s");
            goto LABEL_160;
          }

          if (v86 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "Loaded input file %zu: %s\n", v60, v63);
          }
        }

        if (bxdiff5SetIn(&v93, v59, *v61, v61[1]))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 173, 91, 0, "bxdiff5SetIn", v76);
          goto LABEL_160;
        }

        if (sha1cmp(*(&v94 + 1) + 80 * v59 + 16, a3))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 175, 91, 0, "SHA1 inconsistency (patching): %s");
          goto LABEL_160;
        }

        ++v59;
        v42 = v62;
      }

      ++v60;
      a3 += 20;
      v61 += 12;
    }

    while (v89 != v60);
  }

  if (v59 != v22)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 178, 91, 0, "inconsistent N", v76);
LABEL_160:
    v21 = 1;
    a8 = v83;
    goto LABEL_31;
  }

  a8 = v83;
  if (v86 >= 2)
  {
    bxdiff5Dump(&v93, *MEMORY[0x29EDCA610]);
  }

  if (v22 < 2)
  {
    if (bxdiff5CreateInControls(&v93, 0, v78))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 294, 91, 0, "bxdiff5CreateInControls", v76);
      goto LABEL_30;
    }

    if (bxdiff5CreateInPatch(&v93, 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 295, 91, 0, "bxdiff5CreateInPatch", v76);
      goto LABEL_30;
    }

    v73 = &v103[96 * v20];
    v74 = *(&v94 + 1);
    v75 = *(*(&v94 + 1) + 64);
    *(v73 + 7) = *(*(&v94 + 1) + 72);
    *(v73 + 8) = CompressedSize;
    *(v73 + 9) = v75;
    *(v74 + 64) = 0;
    *(v74 + 72) = 0;
    atomic_fetch_add(a10 + 6, 1uLL);
    if (v86 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Created 1:1 patch: %s\n", v85);
    }

    if (*(v73 + 13))
    {
      atomic_fetch_add(a10 + 2, 1uLL);
      if (v79 && patchCacheUpdate(v79, (v73 + 4), v42 | 4, (v73 + 48)))
      {
        atomic_fetch_add(a10 + 9, 1uLL);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 311, 91, 0, "cache update failed (ignored): %s", v85);
      }

      if (v86 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Updated 1:1 patch to cache: %s\n");
      }
    }

LABEL_98:
    v21 = 0;
    goto LABEL_31;
  }

  v88 = v20;
  v64 = 0;
  if (v32)
  {
    v65 = CompressedSize;
LABEL_153:
    if (v64 != v22)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 262, 91, 0, "inconsistent N");
      goto LABEL_184;
    }

    v20 = v88;
    if (bxdiff5CreateComboControls(&v93))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 265, 91, 0, "bxdiff5CreateComboControls", v76);
      goto LABEL_30;
    }

    if (bxdiff5CreateComboPatch(&v93))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 266, 91, 0, "bxdiff5CreateComboPatch", v76);
      goto LABEL_30;
    }

    atomic_fetch_add(a10 + 7, 1uLL);
    if (v86 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Created combo patch: %s\n", v85);
    }

    *&v102[0] = v65;
    *(&v102[0] + 1) = v99[0];
    *(&v101 + 1) = v99[1];
    v99[0] = 0;
    v99[1] = 0;
    if (DWORD1(v101))
    {
      atomic_fetch_add(a10 + 5, 1uLL);
      if (v79 && patchCacheUpdate(v79, v100 + 4, v42 | 4, &v101))
      {
        atomic_fetch_add(a10 + 9, 1uLL);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 284, 91, 0, "cache update failed (ignored): %s", v85);
      }

      if (v86 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Updated combo patch to cache: %s\n", v85);
      }

      v21 = 0;
      a8 = v83;
      goto LABEL_185;
    }

    goto LABEL_98;
  }

  v66 = 0;
  v67 = &v105;
  v65 = CompressedSize;
  while (1)
  {
    if (!*(v67 - 18))
    {
      goto LABEL_152;
    }

    atomic_fetch_add(a10, 1uLL);
    if (!v79)
    {
      goto LABEL_136;
    }

    v68 = patchCacheLookup(v79, v67 - 68, v42 | 4, (v67 - 3), a6, 0x11E1A300uLL);
    if (v68 < 0)
    {
      atomic_fetch_add(a10 + 8, 1uLL);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 199, 91, 0, "cache lookup failed (ignored): %s", v85);
LABEL_136:
      if (v86 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "No 1:1 patch %zu in cache: %s\n", v66, v85);
      }

      goto LABEL_138;
    }

    if (!v68)
    {
      goto LABEL_136;
    }

    atomic_fetch_add(a10 + 1, 1uLL);
    if (v86 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Loaded 1:1 patch %zu from cache: %s\n", v66, v85);
    }

    if (*v67)
    {
      break;
    }

LABEL_138:
    if (!*(*(&v94 + 1) + 80 * v64 + 40))
    {
      if (bxdiff5CreateInControls(&v93, v64, v78))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 232, 91, 0, "bxdiff5CreateInControls");
        goto LABEL_184;
      }

      if (v86 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Created 1:1 controls %zu: %s\n", v66, v85);
      }
    }

    if (*(v67 - 5))
    {
      if (bxdiff5CreateInPatch(&v93, v64))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 239, 91, 0, "bxdiff5CreateInPatch");
        goto LABEL_184;
      }

      atomic_fetch_add(a10 + 6, 1uLL);
      if (v86 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Created 1:1 patch %zu: %s\n", v66, v85);
      }

      v70 = *(&v94 + 1) + 80 * v64;
      v71 = *(v70 + 64);
      v72 = *(v70 + 72);
      *(v67 - 1) = CompressedSize;
      *v67 = v71;
      *(v67 - 2) = v72;
      *(v70 + 64) = 0;
      *(v70 + 72) = 0;
      atomic_fetch_add(a10 + 2, 1uLL);
      if (v79 && patchCacheUpdate(v79, v67 - 68, v42 | 4, (v67 - 3)))
      {
        atomic_fetch_add(a10 + 9, 1uLL);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 254, 91, 0, "cache update failed (ignored): %s", v85);
      }

      if (v86 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Updated 1:1 patch %zu to cache: %s\n", v66, v85);
      }
    }

    ++v64;
LABEL_152:
    ++v66;
    v67 += 12;
    if (v89 == v66)
    {
      goto LABEL_153;
    }
  }

  if (bxdiff5SetInPatch(&v93, v64, *v67, *(v67 - 2)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 213, 91, 0, "bxdiff5SetInPatch");
    goto LABEL_184;
  }

  if (!bxdiff5ReadInControlsFromInPatch(&v93, v64))
  {
    if (v86 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Loaded 1:1 controls from patch %zu: %s\n", v66, v85);
    }

    v69 = *(&v94 + 1) + 80 * v64;
    *(v69 + 64) = 0;
    *(v69 + 72) = 0;
    goto LABEL_138;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 216, 91, 0, "bxdiff5ReadInControlsFromInPatch");
LABEL_184:
  v21 = 1;
LABEL_185:
  v20 = v88;
LABEL_31:
  if (v22)
  {
LABEL_32:
    v33 = 0;
    v34 = *(&v94 + 1);
    v35 = v22;
    do
    {
      v36 = v34 + v33;
      *v36 = 0;
      free(*(v36 + 40));
      v37 = *(&v94 + 1) + v33;
      *(v37 + 40) = 0;
      free(*(v37 + 64));
      v34 = *(&v94 + 1);
      *(*(&v94 + 1) + v33 + 64) = 0;
      v33 += 80;
      --v35;
    }

    while (v35);
    v19 = v22 == 1;
  }

  else
  {
    v19 = 0;
  }

  a4 = v85;
LABEL_58:
  *&v95 = 0;
  free(v97[1]);
  v97[1] = 0;
  free(v99[0]);
  v99[0] = 0;
  if (bxdiff5Free(&v93))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 330, 91, 0, "bxdiff5Free");
    goto LABEL_61;
  }

  if (v21)
  {
LABEL_61:
    unlink(a4);
    v47 = 0xFFFFFFFFLL;
    if (v15)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v50 = &v103[96 * v20];
    v51 = v50 + 48;
    if (!v19)
    {
      v50 = v100;
    }

    v52 = *(v50 + 9);
    if (v52)
    {
      v53 = (v51 + 8);
      if (!v19)
      {
        v53 = &v101 + 1;
      }

      v54 = a4;
      v55 = storeFileContents(a4, v52, *v53);
      if (v55)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffWithCache.c", "BXDiffWithCache", 340, 91, 0, "writing patch to disk");
      }

      if (v86 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Stored patch: %s\n", v54);
      }

      if (v55)
      {
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        v47 = 1;
      }
    }

    else
    {
      v47 = 0;
    }

    v56 = v51 + 8;
    if (!v19)
    {
      v56 = &v101 + 1;
    }

    *a8 = *v56;
    v57 = v51 + 16;
    if (!v19)
    {
      v57 = v102;
    }

    *a9 = *v57;
    if (v15)
    {
LABEL_62:
      v48 = v106;
      do
      {
        free(*v48);
        free(*(v48 - 1));
        v48 += 12;
        --v15;
      }

      while (v15);
    }
  }

  return v47;
}

unsigned __int16 *pc_log_error(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, ...)
{
  va_start(va, a6);
  v16 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x400uLL);
  v10 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v11 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v11);
  }

  v12 = v10 & 0xFFFFFC00 | a5 & 0x3FF;
  v13 = strlen(__str);
  vsnprintf(&__str[v13], 1024 - v13, a6, va);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    pc_log_error_cold_1(__str, v12 | 0x80000000);
  }

  return ParallelCompressionUpdateError((v12 | 0x80000000), __str);
}

_DWORD *pc_log_warning(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, ...)
{
  va_start(va, a5);
  v16 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  v8 = (((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000);
  v9 = strlen(__s);
  vsnprintf(&__s[v9], 1024 - v9, a5, va);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v12 = v8;
    v13 = 2082;
    v14 = __s;
    _os_log_impl(&dword_298004000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  return ParallelCompressionUpdateWarning(v8);
}

void pc_log_info(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v17 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  v11 = strlen(__s);
  vsnprintf(&__s[v11], 1024 - v11, a5, va);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
    v14 = 2082;
    v15 = __s;
    _os_log_impl(&dword_298004000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "[0x%08x] %{public}s", buf, 0x12u);
  }
}

uint64_t pc_info(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v15 = *MEMORY[0x29EDCA608];
  v12 = 0;
  *__s = 0u;
  v14 = 0u;
  time(&v12);
  ctime_r(&v12, __s);
  v9 = strlen(__s);
  if (v9)
  {
    __s[v9 - 1] = 0;
  }

  v10 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "[%s] ", __s);
  return vfprintf(*v10, a1, va);
}

_BYTE *filePatchCacheOpen(char *a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if (strncmp(a1, "file:", 5uLL))
  {
    v22 = a1;
    v4 = "invalid cache url: %s";
    v5 = 178;
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheOpen", v5, 9, 0, v4, v22);
    return 0;
  }

  bzero(__s, 0x400uLL);
  v8 = a1 + 5;
  if (!realpath_DARWIN_EXTSN(v8, __s))
  {
    v22 = v8;
    v4 = "invalid cache directory: %s";
    v5 = 182;
    goto LABEL_3;
  }

  v9 = strlen(__s);
  if (v9 - 927 <= 0xFFFFFFFFFFFFFBFELL)
  {
    v22 = __s;
    v4 = "File patch cache dir name is too long: %s";
    v5 = 186;
    goto LABEL_3;
  }

  v10 = v9;
  memset(&v23, 0, sizeof(v23));
  if (stat(__s, &v23))
  {
    v11 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheOpen", 188, 9, v11, "%s");
    return 0;
  }

  if ((v23.st_mode & 0xF000) != 0x4000)
  {
    v22 = __s;
    v4 = "File patch cache path is not a directory: %s";
    v5 = 189;
    goto LABEL_3;
  }

  v12 = malloc(0x418uLL);
  v6 = v12;
  if (v12)
  {
    bzero(v12, 0x418uLL);
    __memcpy_chk();
    do
    {
      v20 = v10;
      if (!v10)
      {
        break;
      }

      --v10;
    }

    while (v6[v20 + 3] == 47);
    v6[v20 + 4] = 0;
    *(v6 + 129) = v20;
    *(v6 + 260) = a2;
    if (a2 >= 1)
    {
      pc_info("Opening file patch cache in directory: %s\n", v13, v14, v15, v16, v17, v18, v19, v6 + 4);
    }
  }

  else
  {
    v21 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheOpen", 193, 9, *v21, "malloc");
  }

  return v6;
}

uint64_t filePatchCacheClose(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a1[260] >= 1)
  {
    pc_info("Closing file patch cache in directory: %s\n", a2, a3, a4, a5, a6, a7, a8, a1 + 1);
  }

  free(a1);
  return 0;
}

uint64_t filePatchCacheLookup(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, unint64_t *a5, int a6, unint64_t a7)
{
  v46 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  *a5 = 0;
  bzero(&__to, 0x400uLL);
  v14 = *(a1 + 1032);
  __memcpy_chk();
  v15 = &__to + v14;
  v16 = *(a3 + 16);
  *(v15 + 5) = *a3;
  *(v15 + 21) = v16;
  v17 = *(a2 + 16);
  *(v15 + 46) = *a2;
  *v15 = 47;
  *(v15 + 1) = *a3;
  v15[3] = *(a3 + 2);
  v15[4] = 47;
  *(v15 + 37) = *(a3 + 32);
  v15[45] = 47;
  *(v15 + 62) = v17;
  v18 = v14 + 86;
  *(v15 + 78) = *(a2 + 32);
  __to.__pn_.__r_.__value_.__s.__data_[v18] = 0;
  FileContents = loadFileContentsEx(&__to, a4, a5);
  if (FileContents < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    v32 = *a4;
    if (*a4 && *v32 == 0x5F44414F4C594150)
    {
      return 1;
    }

    free(v32);
    v33 = 0;
    *a4 = 0;
    *a5 = 0;
    return v33;
  }

  if (!FileContents)
  {
    makePath(&__to, v18);
  }

  v20 = 0;
  v21 = 10000000;
  while (1)
  {
    v22 = *a4;
    if (!*a4)
    {
      break;
    }

    if (*v22 == 0x5F44414F4C594150)
    {
      return 1;
    }

    if (*v22 != 0x5F474E49444E4550)
    {
      break;
    }

    v23 = time(0);
    v24 = v22[1];
    free(*a4);
    *a4 = 0;
    *a5 = 0;
    if (v20 >= a7 || 1000000 * (v23 - v24) >= a7)
    {
      if (*(a1 + 1040) < 1)
      {
        v22 = 0;
      }

      else
      {
        pc_info("Cache miss after PENDING timeout: %s\n", v25, v26, v27, v28, v29, v30, v31, &__to);
        v22 = *a4;
      }

      break;
    }

    if (*(a1 + 1040) >= 1 && v20 >= v21)
    {
      pc_info("Waiting for PENDING patch (%llu s): %s\n", v25, v26, v27, v28, v29, v30, v31, v20 / 0xF4240, &__to);
      v21 *= 2;
    }

    v20 += 500000;
    usleep(0x7A120u);
    if ((loadFileContentsEx(&__to, a4, a5) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  free(v22);
  *a4 = 0;
  *a5 = 0;
  bzero(&__from, 0x400uLL);
  __buf[0] = 0x5F474E49444E4550;
  __buf[1] = time(0);
  v34 = openEntryTemp(a1, a2, a3, &__from);
  if (v34 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v35 = v34;
  v36 = write(v34, __buf, 0x10uLL);
  close(v35);
  if (v36 == 16)
  {
    rename(&__from, &__to, v37);
    if (!v38)
    {
      return 0;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "installFile", 151, 9, "Moving %s to %s (1st attempt)", &__from, &__to);
    rename(&__from, &__to, v39);
    if (!v40)
    {
      return 0;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "installFile", 153, 9, "Moving %s to %s (2nd attempt)", &__from, &__to);
    v33 = 0;
  }

  else
  {
    v42 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheLookup", 331, 9, *v42, "writing PENDING in cache entry failed");
    v33 = 0xFFFFFFFFLL;
  }

  unlink(&__from);
  return v33;
}

uint64_t loadFileContentsEx(const char *a1, void *a2, unint64_t *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  memset(&v16, 0, sizeof(v16));
  v5 = open(a1, 0);
  if (v5 < 0)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  if (fstat(v5, &v16) || (st_size = v16.st_size, v16.st_size < 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = malloc(v16.st_size);
    if (!v8)
    {
      v13 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "loadFileContentsEx", 51, 9, *v13, "malloc");
      v9 = 0xFFFFFFFFLL;
      goto LABEL_6;
    }

    v11 = 0;
    while (st_size > v11)
    {
      v12 = read(v6, &v8[v11], st_size - v11);
      v11 += v12;
      if (v12 <= 0)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    if (!gettimeofday(&v15, 0))
    {
      v17 = v15;
      v18 = v15;
      futimes(v6, &v17);
      close(v6);
      v9 = 1;
      goto LABEL_9;
    }

    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "loadFileContentsEx", 66, 9, *v14, "gettimeofday");
  }

LABEL_5:
  v9 = 0;
LABEL_6:
  close(v6);
LABEL_8:
  free(v8);
  v8 = 0;
  st_size = 0;
LABEL_9:
  *a2 = v8;
  *a3 = st_size;
  return v9;
}

uint64_t openEntryTemp(uint64_t a1, __int128 *a2, __int16 *a3, char *__dst)
{
  memcpy(__dst, (a1 + 4), *(a1 + 1032));
  v8 = *(a1 + 1032);
  v9 = &__dst[v8];
  *v9 = 47;
  v10 = *a3;
  v9[3] = *(a3 + 2);
  *(v9 + 1) = v10;
  v9[4] = 47;
  v11 = *(a3 + 4);
  v12 = *(a3 + 1);
  *(v9 + 5) = *a3;
  *(v9 + 21) = v12;
  *(v9 + 37) = v11;
  v9[45] = 47;
  v14 = *a2;
  v13 = a2[1];
  v15 = *(a2 + 4);
  v9[86] = 0;
  v16 = &__dst[v8 + 86];
  *(v16 - 1) = v15;
  *(v16 - 40) = v14;
  *(v16 - 24) = v13;
  LODWORD(a3) = getpid();
  LODWORD(a3) = a3 + time(0);
  v17 = 0;
  v18 = a3 + pthread_self();
  v19 = 250000;
  while (1)
  {
    v18 = 1103515245 * v18 + 12345;
    snprintf(v16, 938 - v8, ".%08x", v18);
    result = open(__dst, 2561, 384);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 17)
    {
      if (v17 == 10)
      {
        v22 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "openEntryTemp", 129, 9, *v22, "Retry limit reached: %s", __dst);
        return 0xFFFFFFFFLL;
      }

      usleep(v19);
      v19 *= 2;
      ++v17;
      v21 = strlen(__dst);
      statPath(__dst, v21);
    }
  }

  return result;
}

uint64_t filePatchCacheUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = *MEMORY[0x29EDCA608];
  bzero(&__to, 0x400uLL);
  bzero(&__from, 0x400uLL);
  v10 = *(a1 + 1032);
  __memcpy_chk();
  v11 = &__to + v10;
  v12 = *(a3 + 16);
  *(v11 + 5) = *a3;
  *(v11 + 21) = v12;
  v13 = *(a2 + 16);
  *(v11 + 46) = *a2;
  *v11 = 47;
  *(v11 + 1) = *a3;
  v11[3] = *(a3 + 2);
  v11[4] = 47;
  *(v11 + 37) = *(a3 + 32);
  v11[45] = 47;
  *(v11 + 62) = v13;
  *(v11 + 78) = *(a2 + 32);
  v11[86] = 0;
  v14 = openEntryTemp(a1, a2, a3, &__from);
  if (v14 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  if (a5)
  {
    v16 = 0;
    while (1)
    {
      v17 = write(v15, (a4 + v16), a5 - v16);
      if (v17 < 0)
      {
        v23 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheUpdate", 369, 9, v23, "%s");
        goto LABEL_14;
      }

      if (!v17)
      {
        break;
      }

      v16 += v17;
      if (v16 >= a5)
      {
        goto LABEL_7;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "filePatchCacheUpdate", 370, 9, 0, "write error: %s");
LABEL_14:
    close(v15);
    v22 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_7:
    close(v15);
    rename(&__from, &__to, v18);
    if (v19)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "installFile", 151, 9, "Moving %s to %s (1st attempt)", &__from, &__to);
      rename(&__from, &__to, v20);
      if (v21)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/FilePatchCache.c", "installFile", 153, 9, "Moving %s to %s (2nd attempt)", &__from, &__to);
        unlink(&__from);
      }
    }

    v22 = 0;
  }

  unlink(&__from);
  return v22;
}

AAByteStream_impl *aaForkOutputStreamOpen(uint64_t a1, void *a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = calloc(1uLL, 0x20050uLL);
  v6 = v5;
  if (!v4 || !v5)
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 408, 136, v12, "malloc");
    goto LABEL_13;
  }

  if (!*(a1 + 40) || !*(a1 + 32))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 409, 136, 0, "stream not compatible\n");
    goto LABEL_13;
  }

  AACustomByteStreamSetData(v4, v5);
  AACustomByteStreamSetWriteProc(v4, ForkOutputStreamWrite);
  AACustomByteStreamSetPWriteProc(v4, ForkOutputStreamPWrite);
  AACustomByteStreamSetCancelProc(v4, ForkOutputStreamCancel);
  AACustomByteStreamSetCloseProc(v4, ForkOutputStreamClose);
  *(v6 + 16385) = a1;
  *(v6 + 16386) = a2;
  if (a2[258])
  {
    v7 = a2[270] + 1;
  }

  else
  {
    v7 = a2[270];
  }

  *(v6 + 16390) = v7;
  if (is_mul_ok(v7, 0x30uLL) && 48 * v7 < 0x2000000001)
  {
    v11 = calloc(v7, 0x30uLL);
  }

  else
  {
    v8 = __error();
    v11 = 0;
    *v8 = 12;
  }

  *(v6 + 16389) = v11;
  *(v6 + 131128) = 0u;
  *(v6 + 32786) = 0;
  if (!v11)
  {
    v27 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 426, 136, v27, "aaCalloc");
LABEL_13:
    free(v4);
    ForkOutputStreamClose(v6);
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = a2[270];
  v17 = a2[258];
  v18 = 1;
  v19 = v11;
  while (1)
  {
    if (v16)
    {
      v20 = a2[268];
      for (i = v16; i; --i)
      {
        v22 = v20[13];
        if (v15)
        {
          if ((v22 & 2) != 0)
          {
            v19[1] = v14;
            v19[2] = 0;
            v23 = v20[4];
            v24 = 3;
            v25 = v23;
LABEL_25:
            v19[v24] = v23;
            v19[5] = v20[5];
            v14 += v25;
            *(v6 + 16392) = v14;
            v19 += 6;
          }
        }

        else if (v22)
        {
          *v19 = v20;
          v19[1] = v14;
          v26 = v20[10];
          v25 = v20[11];
          v19[2] = 0;
          v19[3] = v25;
          v23 = *v26;
          v24 = 4;
          goto LABEL_25;
        }

        v20 = (v20 + 129);
      }
    }

    if ((v18 & 1) == 0)
    {
      break;
    }

    v18 = 0;
    v15 = 1;
    v9 = v14;
    v10 = v14;
    if (v17)
    {
      v18 = 0;
      v19[1] = v14;
      v19[2] = 0;
      v9 = v17 + v14;
      v19[3] = v17;
      v19[5] = 0;
      v19 += 6;
      v10 = v14;
      v14 = v9;
      *(v6 + 16392) = v9;
    }
  }

  a2[257] = v10;
  a2[259] = v9;
  if (v19 != &v11[6 * *(v6 + 16390)])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 480, 136, 0, "bad variant");
    a2[260] = *(v6 + 16392);
    goto LABEL_13;
  }

  a2[260] = v14;
  return v4;
}

unint64_t ForkOutputStreamWrite(uint8_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + 131080;
  if (*(a1 + 32786))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 201, 136, 0, "bad write mode");
    return -1;
  }

  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  v6 = a2;
  v7 = 0;
  dst_buffer = a1 + 65537;
  v126 = a1 + 131080;
  src_buffer = a1;
  while (1)
  {
    v8 = *(v3 + 6);
    if (v8 == *(v3 + 5))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 205, 136, 0, "segment out of range");
      return -1;
    }

    v9 = (*(v3 + 4) + 48 * v8);
    v10 = v4 - v7;
    v11 = v9[2];
    if (v4 - v7 >= 0x10000 - v11)
    {
      v10 = 0x10000 - v11;
    }

    if (v9[3] - v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9[3] - v11;
    }

    memcpy(&a1[v11], (v6 + v7), v12);
    v13 = v9[3];
    v14 = v12 + v9[2];
    v129 = v9;
    v9[2] = v14;
    if (v14 == v13)
    {
      ++*(v3 + 6);
    }

    v15 = v14;
    if (v14)
    {
      if (v14 < v13)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v15 = 0x10000;
    }

    v16 = *v9;
    if (!*v129)
    {
      v22 = v12;
      v23 = *v3;
      if (*(*v3 + 40))
      {
        v24 = 0;
        v25 = v14 - v15 + v129[5];
        v26 = src_buffer;
        v27 = v15;
        while (1)
        {
          v28 = (*(v23 + 40))(*v23, v26, v27, v25);
          if (v28 < 1)
          {
            break;
          }

          v26 += v28;
          v24 += v28;
          v25 += v28;
          v27 -= v28;
          if (!v27)
          {
            goto LABEL_85;
          }
        }

        v24 = v28;
      }

      else
      {
        v24 = -1;
      }

LABEL_85:
      v3 = v126;
      v12 = v22;
      if (v15 != v24)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 233, 136, 0, "aaByteStreamPWriteExpected");
        return -1;
      }

      goto LABEL_137;
    }

    v17 = *(v16 + 56);
    v122 = v7;
    v123 = v12;
    if (*(v3 + 3) < v17)
    {
      *(v3 + 3) = v17;
      if (24 * v17 >= 0x2000000001)
      {
        *__error() = 12;
      }

      else
      {
        v18 = v3;
        v19 = *(v3 + 2);
        v20 = realloc(v19, 24 * v17);
        if (v20)
        {
          *(v18 + 2) = v20;
          v21 = v129;
          v14 = v129[2];
          v3 = v18;
          goto LABEL_30;
        }

        free(v19);
        v3 = v18;
      }

      *(v3 + 2) = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 243, 136, 0, "aaReallocf");
      return -1;
    }

    v20 = *(v3 + 2);
    v21 = v129;
LABEL_30:
    v29 = (v14 - 1) >> 16;
    v30 = *(v16 + 80) + 12 * v29;
    v127 = v29;
    v31 = &v20[24 * v29];
    v32 = compression_encode_buffer(dst_buffer, 0x10000uLL, src_buffer, v15, 0, *(*(v3 + 1) + 8 * *(v16 + 128)));
    if (v32 - 1 >= v15)
    {
      v33 = v15 + 1;
    }

    else
    {
      v33 = v32;
    }

    *(v31 + 1) = v33;
    *(v31 + 2) = v33;
    v34 = v21[4];
    v35 = *v30 + *(v30 + 8);
    v36 = v33;
    if (v34 + v33 < v35)
    {
      v36 = v35 - v34;
      *(v31 + 2) = v35 - v34;
    }

    if (v36 == v15 + 1)
    {
      *(v31 + 1) = v15 + 1;
      *dst_buffer = *(*(v3 + 1) + 8 * *(v16 + 128) + 4);
      memcpy(src_buffer + 65538, src_buffer, v15);
      v33 = *(v31 + 1);
      v36 = *(v31 + 2);
    }

    bzero(&dst_buffer[v33], v36 - v33);
    v37 = *(v31 + 2);
    v38 = v21[4];
    v39 = *(v16 + 96) - v38;
    v40 = v37 - v39;
    if (v37 > v39)
    {
      break;
    }

LABEL_76:
    *v31 = v38;
    v65 = *(v31 + 2);
    v66 = *v3;
    if (*(*v3 + 40))
    {
      if (!v65)
      {
        goto LABEL_90;
      }

      v67 = 0;
      v68 = v21[5] + v38;
      v69 = dst_buffer;
      v70 = *(v31 + 2);
      while (1)
      {
        v71 = (*(v66 + 40))(*v66, v69, v70, v68);
        if (v71 < 1)
        {
          break;
        }

        v69 += v71;
        v67 += v71;
        v68 += v71;
        v70 -= v71;
        if (!v70)
        {
          goto LABEL_88;
        }
      }

      v67 = v71;
    }

    else
    {
      v67 = -1;
    }

LABEL_88:
    v72 = v65 == v67;
    v3 = v126;
    v6 = a2;
    if (!v72)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 290, 136, 0, "aaByteStreamPWriteExpected");
      return -1;
    }

LABEL_90:
    v73 = v21[3];
    v21[4] += v65;
    v4 = a3;
    v7 = v122;
    v12 = v123;
    if (v21[2] == v73)
    {
      v74 = *v129;
      v75 = *(*v129 + 104);
      v76 = *(*v129 + 56);
      v77 = 2 * v76;
      if ((v75 & 4) == 0)
      {
        v77 = v76 + 1;
      }

      v78 = 4 * v77;
      if ((4 * v77) >= 0x2000000001)
      {
        *__error() = 12;
LABEL_148:
        v117 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 81, 136, *v117, "aaMalloc");
        v80 = 0;
LABEL_153:
        free(v80);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 297, 136, 0, "fork_write_index");
        return -1;
      }

      v79 = malloc(v78);
      if (!v79)
      {
        goto LABEL_148;
      }

      v80 = v79;
      if ((v75 & 4) != 0)
      {
        if (v74[8] && (v91 = v74[9]) != 0)
        {
          v92 = *v3;
          if (*(*v3 + 40))
          {
            v93 = 0;
            v94 = v129[5] + v74[12] - 50;
            v95 = 50;
            while (1)
            {
              v96 = (*(v92 + 40))(*v92, v91, v95, v94);
              if (v96 < 1)
              {
                break;
              }

              v91 += v96;
              v93 += v96;
              v94 += v96;
              v95 -= v96;
              if (!v95)
              {
                if (v93 != 50)
                {
                  break;
                }

                v97 = *v126;
                if (*(*v126 + 40))
                {
                  v98 = 0;
                  v99 = v74[8];
                  v100 = v129[5];
                  v101 = 264;
                  while (1)
                  {
                    v102 = (*(v97 + 40))(*v97, v99, v101, v100);
                    if (v102 < 1)
                    {
                      break;
                    }

                    v99 += v102;
                    v98 += v102;
                    v100 += v102;
                    v101 -= v102;
                    if (!v101)
                    {
                      if (v98 != 264)
                      {
                        break;
                      }

                      v103 = v74[7];
                      v3 = v126;
                      if (v103)
                      {
                        v104 = v80 + 1;
                        v105 = (*(v126 + 2) + 16);
                        do
                        {
                          v106 = *(v105 - 4) - 260;
                          v107 = *v105;
                          v105 += 3;
                          *(v104 - 1) = v106;
                          *v104 = v107;
                          v104 += 2;
                          --v103;
                        }

                        while (v103);
                      }

                      v85 = v129[5] + 264;
                      goto LABEL_100;
                    }
                  }
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 97, 136, 0, "aaByteStreamPWriteExpected");
                goto LABEL_153;
              }
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 92, 136, 0, "aaByteStreamPWriteExpected");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 87, 136, 0, "Fork missing header/footer");
        }

        goto LABEL_153;
      }

      if (v76)
      {
        v81 = v79 + 1;
        v82 = (*(v3 + 2) + 16);
        do
        {
          v83 = *(v82 - 4);
          v84 = *v82;
          v82 += 6;
          *(v81 - 1) = v83;
          *v81++ = v84 + v83;
          --v76;
        }

        while (v76);
      }

      v85 = v129[5];
LABEL_100:
      v4 = a3;
      v86 = *v3;
      if (!*(*v3 + 40))
      {
        goto LABEL_150;
      }

      if (v78)
      {
        v87 = 0;
        v88 = v80;
        v89 = v78;
        while (1)
        {
          v90 = (*(v86 + 40))(*v86, v88, v89, v85);
          if (v90 < 1)
          {
            break;
          }

          v88 = (v88 + v90);
          v87 += v90;
          v85 += v90;
          v89 -= v90;
          if (!v89)
          {
            goto LABEL_123;
          }
        }

        v87 = v90;
LABEL_123:
        v72 = v78 == v87;
        v4 = a3;
        v3 = v126;
        if (!v72)
        {
LABEL_150:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 120, 136, 0, "aaByteStreamPWriteExpected");
          goto LABEL_153;
        }
      }

      v108 = v74[4];
      v109 = v74[12];
      v110 = v108 - v109;
      if (v108 != v109)
      {
        if (v110 >= 0x10000)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 126, 136, 0, "Too much fork padding: %zu");
          goto LABEL_153;
        }

        bzero(dst_buffer, v108 - v109);
        v111 = *v3;
        if (!*(*v3 + 40))
        {
          goto LABEL_151;
        }

        if (v110)
        {
          v112 = 0;
          v113 = v129[5] + v74[12];
          v114 = dst_buffer;
          v115 = v110;
          while (1)
          {
            v116 = (*(v111 + 40))(*v111, v114, v115, v113);
            if (v116 < 1)
            {
              break;
            }

            v114 += v116;
            v112 += v116;
            v113 += v116;
            v115 -= v116;
            if (!v115)
            {
              goto LABEL_134;
            }
          }

          v112 = v116;
LABEL_134:
          v72 = v110 == v112;
          v4 = a3;
          v3 = v126;
          if (!v72)
          {
LABEL_151:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 129, 136, 0, "aaByteStreamPWriteExpected");
            goto LABEL_153;
          }
        }
      }

      free(v80);
      v12 = v123;
    }

LABEL_137:
    v7 += v12;
    a1 = src_buffer;
    if (v7 >= v4)
    {
      return v4;
    }
  }

  v41 = v127;
  v42 = src_buffer;
  v118 = v31;
  do
  {
    if (!v41)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 145, 136, 0, "realignment failed");
      goto LABEL_142;
    }

    v43 = (*(v3 + 2) + 24 * (v41 - 1));
    v44 = v43[1];
    v45 = v43[2];
    v46 = v45 - v44;
    v47 = v40 - (v45 - v44);
    if (v40 > v45 - v44)
    {
      v43[2] = v44;
      --v41;
      goto LABEL_73;
    }

    v43[2] = v45 - v40;
    v38 = *v43 + v45 - v40;
    v21[4] = v38;
    if (v41 >= v127)
    {
      goto LABEL_76;
    }

    v119 = v45 - v44;
    v120 = v40;
    while (1)
    {
      v48 = (*(v3 + 2) + 24 * v41);
      v49 = v21[5];
      v50 = v48[1];
      v51 = *v48 + v49;
      v52 = *v3;
      if (*(*v3 + 88))
      {
        if (v50 != aaByteStreamSimulate(*v3))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 176, 136, 0, "aaByteStreamSimulate");
          goto LABEL_72;
        }

        goto LABEL_59;
      }

      if (*(v52 + 32))
      {
        if (!v50)
        {
          if (!*(v52 + 40))
          {
            goto LABEL_70;
          }

          goto LABEL_68;
        }

        v53 = 0;
        v54 = v42;
        v55 = v48[1];
        while (1)
        {
          v56 = (*(v52 + 32))(*v52, v54, v55, v51);
          if (v56 < 0)
          {
            break;
          }

          if (v56)
          {
            v54 += v56;
            v53 += v56;
            v51 += v56;
            v55 -= v56;
            if (v55)
            {
              continue;
            }
          }

          goto LABEL_58;
        }

        v53 = v56;
      }

      else
      {
        v53 = -1;
      }

LABEL_58:
      v3 = v126;
      v42 = src_buffer;
      if (v50 != v53)
      {
        break;
      }

LABEL_59:
      v57 = *v3;
      if (*(*v3 + 40))
      {
        if (!v50)
        {
          goto LABEL_68;
        }

        v58 = 0;
        v59 = v49 + v38;
        v60 = v42;
        v61 = v50;
        while (1)
        {
          v62 = (*(v57 + 40))(*v57, v60, v61, v59);
          if (v62 < 1)
          {
            break;
          }

          v60 += v62;
          v58 += v62;
          v59 += v62;
          v61 -= v62;
          if (!v61)
          {
            goto LABEL_67;
          }
        }

        v58 = v62;
      }

      else
      {
        v58 = -1;
      }

LABEL_67:
      v3 = v126;
      v42 = src_buffer;
      if (v50 != v58)
      {
LABEL_70:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 183, 136, 0, "aaByteStreamPWriteExpected");
        goto LABEL_72;
      }

LABEL_68:
      v21 = v129;
      v63 = v129[4];
      *v48 = v63;
      v38 = v63 + v50;
      v129[4] = v63 + v50;
      if (++v41 == v127)
      {
        goto LABEL_75;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 179, 136, 0, "aaByteStreamPReadExpected");
LABEL_72:
    LODWORD(v37) = -1;
    v46 = v119;
    v40 = v120;
    v47 = v120;
    v6 = a2;
    v21 = v129;
    v31 = v118;
LABEL_73:
    v64 = v40 > v46;
    v40 = v47;
  }

  while (v64);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_75:
    v38 = v21[4];
    v6 = a2;
    v31 = v118;
    goto LABEL_76;
  }

LABEL_142:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 282, 136, 0, "realign_fork");
  return -1;
}

unint64_t ForkOutputStreamPWrite(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a1 + 0x20000;
  if (*(a1 + 131144))
  {
    goto LABEL_2;
  }

  v20 = a1;
  v21 = (*(a1 + 131112) + 48 * *(a1 + 131128));
  v22 = v21[2];
  if (v22 + v21[1] != a4)
  {
    v24 = v21[2];
    if (v21[2])
    {
      if (*v21)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 326, 136, 0, "pending compressed fork", a2);
        return -1;
      }

      v25 = *(a1 + 131080);
      if (!v25[5])
      {
        goto LABEL_48;
      }

      v26 = a3;
      v27 = 0;
      v28 = (v22 & 0xFFFFFFFFFFFF0000) + v21[5];
      v29 = v21[2];
      while (1)
      {
        v30 = (v25[5])(*v25, v20, v29, v28);
        if (v30 < 1)
        {
          break;
        }

        v20 += v30;
        v27 += v30;
        v28 += v30;
        v29 -= v30;
        if (!v29)
        {
          goto LABEL_46;
        }
      }

      v27 = v30;
LABEL_46:
      a3 = v26;
      if (v24 != v27)
      {
LABEL_48:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 328, 136, 0, "aaByteStreamPWriteExpected", a2);
        return -1;
      }
    }

    *(v5 + 72) = 1;
LABEL_2:
    v6 = 0;
    if (a3)
    {
      v32 = a3;
      while (1)
      {
        if (*(v5 + 64) <= v4)
        {
LABEL_36:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 343, 136, 0, "no segment found", a2);
          return -1;
        }

        v7 = *(v5 + 40);
        v8 = *(v5 + 48);
        if (v8 < 2)
        {
          if (!v7)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v9 = 0;
          do
          {
            if (v7[6 * ((v8 + v9) >> 1) + 1] <= v4)
            {
              v9 = (v8 + v9) >> 1;
            }

            else
            {
              v8 = (v8 + v9) >> 1;
            }
          }

          while (v9 + 1 < v8);
          v7 += 6 * v9;
        }

        if (*v7)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 344, 136, 0, "compressed fork", a2);
          return -1;
        }

        v10 = v4 - v7[1];
        v11 = v7[3];
        if (a3 - v6 >= v11 - v10)
        {
          v12 = v11 - v10;
        }

        else
        {
          v12 = a3 - v6;
        }

        v13 = v12 + v7[2];
        v7[2] = v13;
        if (v13 > v11)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 352, 136, 0, "too much data", a2);
          return -1;
        }

        v14 = *(v5 + 8);
        if (*(v14 + 40))
        {
          if (!v12)
          {
            goto LABEL_27;
          }

          v15 = 0;
          v16 = a2 + v6;
          v17 = v7[5] + v10;
          v18 = v12;
          while (1)
          {
            v19 = (*(v14 + 40))(*v14, v16, v18, v17);
            if (v19 < 1)
            {
              break;
            }

            v16 += v19;
            v15 += v19;
            v17 += v19;
            v18 -= v19;
            if (!v18)
            {
              goto LABEL_26;
            }
          }

          v15 = v19;
        }

        else
        {
          v15 = -1;
        }

LABEL_26:
        a3 = v32;
        if (v12 != v15)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 356, 136, 0, "aaByteStreamPWriteExpected", a2);
          return -1;
        }

LABEL_27:
        v4 += v12;
        v6 += v12;
        if (v6 >= a3)
        {
          return v6;
        }
      }
    }

    return v6;
  }

  return ForkOutputStreamWrite(a1, a2, a3);
}

uint64_t ForkOutputStreamClose(void *a1)
{
  if (a1)
  {
    v2 = a1 + 0x4000;
    v3 = a1[16389];
    if (!v3)
    {
      v9 = 0;
LABEL_17:
      free(v2[3]);
      free(a1);
      return v9;
    }

    v4 = v2[6];
    if (v4)
    {
      if (v3[2] != v3[3])
      {
        v9 = 0xFFFFFFFFLL;
LABEL_15:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamClose", 385, 136, 0, "data missing");
        v3 = v2[5];
        goto LABEL_16;
      }

      v5 = 0;
      v6 = v3 + 9;
      while (v4 - 1 != v5)
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v6 += 6;
        ++v5;
        if (v7 != v8)
        {
          if (v5 >= v4)
          {
            v9 = 0;
          }

          else
          {
            v9 = 0xFFFFFFFFLL;
          }

          goto LABEL_15;
        }
      }
    }

    v9 = 0;
LABEL_16:
    free(v3);
    goto LABEL_17;
  }

  return 0;
}

uint64_t DirectoryPatch()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v51[4] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  DefaultNThreads = *(v0 + 48);
  v2 = *(v0 + 52);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  memset(&v37, 0, sizeof(v37));
  memset(v51, 0, 28);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  bzero(&v38, 0x1510uLL);
  v38 = v2;
  v3 = MemBufferCreate(0x40000uLL);
  v46 = v3;
  v4 = MemBufferCreate(0x100000uLL);
  v47 = v4;
  v5 = (v0 + 24);
  v6 = vld1q_dup_f32(v5);
  v42 = vandq_s8(v6, xmmword_298069050);
  v43 = *(v0 + 28);
  v44 = *(v0 + 44);
  v45 = 0;
  if (!v3 || !v4)
  {
    v8 = "allocation";
    v9 = 332;
    goto LABEL_25;
  }

  if (*v0)
  {
    if (!realpath_DARWIN_EXTSN(*v0, v39))
    {
      v10 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", 339, 25, v10, *v0);
LABEL_28:
      v12 = 0;
LABEL_29:
      v13 = -1;
      goto LABEL_30;
    }

    if (stat(*v0, &v37) || (v37.st_mode & 0xF000) != 0x4000)
    {
      v29 = *v0;
      v8 = "inPath is not a directory: %s";
      v9 = 340;
      goto LABEL_25;
    }
  }

  if (stat(*(v0 + 8), &v37))
  {
    mkdir(*(v0 + 8), 0x1EDu);
  }

  if (!realpath_DARWIN_EXTSN(*(v0 + 8), v40))
  {
    v11 = *__error();
    v8 = *(v0 + 8);
    v9 = 350;
    goto LABEL_27;
  }

  if (stat(*(v0 + 8), &v37) || (v37.st_mode & 0xF000) != 0x4000)
  {
    v29 = *(v0 + 8);
    v8 = "outPath is not a directory: %s";
    v9 = 351;
    goto LABEL_25;
  }

  if (*v0 && !strcmp(v39, v40))
  {
    v8 = "inPath == outPath is not supported";
    v9 = 354;
    goto LABEL_25;
  }

  if (!realpath_DARWIN_EXTSN(*(v0 + 16), v41))
  {
    v15 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", 357, 25, v15, *(v0 + 16));
    goto LABEL_28;
  }

  if (stat(*(v0 + 16), &v37) || (v37.st_mode & 0xF000) != 0x8000)
  {
    v29 = *(v0 + 16);
    v8 = "patchFilename is not a regular file: %s";
    v9 = 358;
    goto LABEL_25;
  }

  st_size = v37.st_size;
  if (loadFileSegment(v41, v51, 0x1CuLL, 0))
  {
    v8 = "read patch header";
    v9 = 362;
LABEL_25:
    v11 = 0;
LABEL_27:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", v9, 25, v11, v8, v29);
    goto LABEL_28;
  }

  if (v51[0] != 0x3031464649444944)
  {
    v8 = "invalid patch header";
    v9 = 365;
    goto LABEL_25;
  }

  v16 = *(&v51[2] + 4);
  v17 = *(&v51[1] + 4) + 28 + *(&v51[2] + 4);
  if (st_size != *(&v51[1] + 4) + 28 && st_size != v17)
  {
    v8 = "invalid patch size";
    v9 = 368;
    goto LABEL_25;
  }

  if (*(&v51[2] + 4) && st_size != v17 && (*(v0 + 24) & 2) == 0)
  {
    v8 = "patch has been truncated, can't expand archive payload";
    v9 = 369;
    goto LABEL_25;
  }

  v30 = *(&v51[1] + 4) + 28 + *(&v51[2] + 4);
  if (v2 >= 1)
  {
    v18 = MEMORY[0x29EDCA610];
    fwrite("DirectoryPatch:\n", 0x10uLL, 1uLL, *MEMORY[0x29EDCA610]);
    if (*v0)
    {
      fprintf(*v18, "  input directory: %s\n", v39);
    }

    fprintf(*v18, "  output directory: %s\n", v40);
    fprintf(*v18, "  patch file: %s\n", v41);
    fprintf(*v18, "  worker threads: %d\n", DefaultNThreads);
    v19 = *(v0 + 24);
    if (v19)
    {
      if (v19)
      {
        v20 = "yes";
      }

      else
      {
        v20 = "no";
      }

      fprintf(*v18, "  skip diff payload: %s\n", v20);
      if ((*(v0 + 24) & 2) != 0)
      {
        v21 = "yes";
      }

      else
      {
        v21 = "no";
      }

      fprintf(*v18, "  skip archive payload: %s\n", v21);
      if ((*(v0 + 24) & 4) != 0)
      {
        v22 = "yes";
      }

      else
      {
        v22 = "no";
      }

      fprintf(*v18, "  truncate archive payload: %s\n", v22);
      if ((*(v0 + 24) & 0x200) != 0)
      {
        v23 = "yes";
      }

      else
      {
        v23 = "no";
      }

      fprintf(*v18, "  skip attributes: %s\n", v23);
      v19 = *(v0 + 24);
      if ((v19 & 0x10000) != 0)
      {
        fwrite("  MSU mode: yes\n", 0x10uLL, 1uLL, *v18);
        v19 = *(v0 + 24);
      }

      if ((v19 & 0x200) != 0)
      {
        goto LABEL_72;
      }
    }

    if ((v19 & 0x100) != 0)
    {
      v24 = "yes";
    }

    else
    {
      v24 = "no";
    }

    fprintf(*v18, "  ignore EPERM: %s\n", v24);
    v25 = *(v0 + 28);
    if (v25)
    {
      fprintf(*v18, "  override UID: %u\n", *(v0 + 32));
      v25 = *(v0 + 28);
      if ((v25 & 2) == 0)
      {
LABEL_69:
        if ((v25 & 8) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_80;
      }
    }

    else if ((*(v0 + 28) & 2) == 0)
    {
      goto LABEL_69;
    }

    fprintf(*v18, "  override GID: %u\n", *(v0 + 36));
    v25 = *(v0 + 28);
    if ((v25 & 8) == 0)
    {
LABEL_70:
      if ((v25 & 4) == 0)
      {
LABEL_72:
        fprintf(*v18, "%12llu diff payload size\n", *(&v51[1] + 4));
        fprintf(*v18, "%12llu archive payload size\n", *(&v51[2] + 4));
        v16 = *(&v51[2] + 4);
        goto LABEL_73;
      }

LABEL_71:
      fprintf(*v18, "  override mode for directories: 0%o\n", *(v0 + 40));
      goto LABEL_72;
    }

LABEL_80:
    fprintf(*v18, "  override mode for regular files: 0%o\n", *(v0 + 44));
    if ((*(v0 + 28) & 4) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_73:
  v31 = 0u;
  v32 = 0u;
  DWORD1(v31) = DefaultNThreads;
  *&v33 = directoryPatchBegin;
  *&v35 = directoryPatchEnd;
  *(&v33 + 1) = directoryPatchBlob;
  *&v34 = directoryPatchPayload;
  *(&v34 + 1) = directoryPatchPadding;
  *(&v35 + 1) = directoryPatchPadding;
  v36 = &v38;
  if (v16 && (*(v0 + 24) & 2) == 0)
  {
    v26 = IFileStreamCreateWithFilename(v41, *(&v51[1] + 4) + 28, v16);
    v12 = v26;
    if (!v26)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", 418, 25, 0, "create archive payload stream");
      goto LABEL_29;
    }

    v48 = 0;
    *(&v32 + 1) = v26;
    *(&v31 + 1) = IFileStreamRead;
    if (ParallelArchiveRead(&v31))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", 423, 25, 0, "read archive payload");
      goto LABEL_29;
    }

    IFileStreamDestroy(v12);
    if (v49)
    {
      v29 = v49;
      v8 = "DirectoryPatch: %llu errors after processing the archive payload";
      v9 = 432;
      goto LABEL_25;
    }
  }

  if (st_size == v30 && (*(v0 + 24) & 4) != 0 && truncate(v41, *(&v51[1] + 4) + 28))
  {
    v27 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", 441, 25, v27, v41, v29);
    goto LABEL_28;
  }

  if (*(&v51[1] + 4) && (*(v0 + 24) & 1) == 0)
  {
    v28 = IFileStreamCreateWithFilename(v41, 0x1CuLL, *(&v51[1] + 4));
    v12 = v28;
    if (!v28)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", 448, 25, 0, "create diff payload stream");
      goto LABEL_29;
    }

    v48 = 28;
    *(&v32 + 1) = v28;
    *(&v31 + 1) = IFileStreamRead;
    if (ParallelArchiveRead(&v31))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "DirectoryPatch", 453, 25, 0, "read diff payload");
      goto LABEL_29;
    }

    IFileStreamDestroy(v12);
    if (v49)
    {
      v29 = v49;
      v8 = "DirectoryPatch: %llu errors after processing the diff payload";
      v9 = 462;
      goto LABEL_25;
    }
  }

  if (v2 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12lld entries processed\n", v50);
  }

  v12 = 0;
  v13 = 0;
LABEL_30:
  IFileStreamDestroy(v12);
  MemBufferDestroy(v46);
  MemBufferDestroy(v47);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v13;
  }

  else
  {
    return result;
  }
}