@interface _OSLogVersioning
- (BOOL)checkTimesyncDB:(BOOL *)b error:(id *)error;
- (BOOL)performDestructiveUpdates:(id *)updates;
- (BOOL)repairTimesyncDB:(id *)b;
- (_OSLogVersioning)initWithCollection:(id)collection closeOnRelease:(BOOL)release error:(id *)error;
- (_OSLogVersioning)initWithURL:(id)l error:(id *)error;
- (void)dealloc;
@end

@implementation _OSLogVersioning

- (BOOL)repairTimesyncDB:(id *)b
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v4 = self->_lcr;
  timesyncReference = [(_OSLogCollectionReference *)v4 timesyncReference];
  fileDescriptor = [timesyncReference fileDescriptor];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___OSRepairTimesync_block_invoke;
  v10[3] = &unk_2787AE5B0;
  v11 = fileDescriptor;
  v10[4] = &v12;
  v10[5] = &v9;
  _timesync_foreach_reg_file_at(fileDescriptor, v10);
  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  if (v7)
  {
    _OSLogFailWithPOSIXError(v9, b);
  }

  return v7 == 0;
}

- (BOOL)checkTimesyncDB:(BOOL *)b error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v6 = self->_lcr;
  timesyncReference = [(_OSLogCollectionReference *)v6 timesyncReference];
  fileDescriptor = [timesyncReference fileDescriptor];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___OSValidateTimesync_block_invoke;
  v12[3] = &unk_2787AE5B0;
  v13 = fileDescriptor;
  v12[4] = &v14;
  v12[5] = &v11;
  _timesync_foreach_reg_file_at(fileDescriptor, v12);
  v9 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);

  if (v9 < 0)
  {
    _OSLogFailWithPOSIXError(v11, error);
  }

  else
  {
    *b = v9 != 0;
  }

  return v9 >= 0;
}

- (BOOL)performDestructiveUpdates:(id *)updates
{
  v78 = *MEMORY[0x277D85DE8];
  if (!_os_trace_device_unlocked_since_boot())
  {
LABEL_64:
    v41 = 1;
    updatesCopy = updates;
LABEL_66:
    _OSLogFailWithPOSIXError(v41, updatesCopy);
    return 0;
  }

  v5 = __str;
  version = self->_version;
  if (version == -1)
  {
    goto LABEL_83;
  }

  if (version <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = self->_version;
  }

  v65 = v7 + 1;
  updatesCopy2 = updates;
  do
  {
    if (version == 2)
    {
      v67 = self->_lcr;
      diagnosticsDirectoryReference = [(_OSLogCollectionReference *)v67 diagnosticsDirectoryReference];
      fileDescriptor = [diagnosticsDirectoryReference fileDescriptor];

      if (fcntl(fileDescriptor, 50, &v70) == -1)
      {
        __error();
        _os_assumes_log();
      }

      v69[0] = &v70;
      v69[1] = 0;
      v10 = fts_open(v69, 2132, 0);
      if (!v10)
      {
        v43 = 0;
        v11 = -1;
        goto LABEL_70;
      }

      v11 = openat(fileDescriptor, "timesync", 0);
      if (v11 == -1)
      {
        if (*__error() != 2)
        {
          v11 = -1;
LABEL_69:
          v43 = v10;
LABEL_70:
          v44 = __error();
          _OSLogFailWithPOSIXError(*v44, updatesCopy2);
          if (v11 != -1 && close(v11) == -1)
          {
            v59 = *__error();
            v60 = *__error();
            if (v59 == 9)
            {
              qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
              qword_27DA527A8 = v60;
              __break(1u);
            }

            _os_assumes_log();
            v68 = 0;
            v74 = 0u;
            v75 = 0u;
            v73 = 0u;
            memset(__str, 0, sizeof(__str));
            v61 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }

            v63 = *__error();
            v76 = 67109120;
            v77 = v63;
            _os_log_send_and_compose_impl(v62, &v68, __str, 80, &dword_22E01A000, v61, 16, "assertion failure: __extension__({ __typeof__(_os_trace_close(tsfd)) _e = ((__typeof__(_os_trace_close(tsfd)))__builtin_expect(((long)(_os_trace_close(tsfd))), (0l))); if (_e == (__typeof__(_os_trace_close(tsfd)))-1) { _os_assumes_log((uint64_t)(uintptr_t)(*__error())); } _e; }) -> %{errno}d", &v76, 8);
            result = _os_crash_msg();
            __break(1u);
            return result;
          }

          if (v10)
          {
            fts_close(v43);
          }

          return 0;
        }
      }

      else
      {
        v12 = _os_trace_fdscandir_b();
        if (v12 >= 1)
        {
          v13 = 0;
          v14 = 8 * v12;
          while (1)
          {
            v15 = *v13;
            if ((*(*v13 + 21) != 46 || *(v15 + 22) && (*(v15 + 22) != 46 || *(v15 + 23))) && unlinkat(v11, (*v13 + 21), 0) == -1)
            {
              break;
            }

            if (v14 == ++v13)
            {
              goto LABEL_20;
            }
          }

          v68 = 0;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          memset(__str, 0, sizeof(__str));
          updates = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v39 = 3;
          }

          else
          {
            v39 = 2;
          }

          v40 = *__error();
          v76 = 67109120;
          v77 = v40;
          _os_log_send_and_compose_impl(v39, &v68, __str, 80, &dword_22E01A000, updates, 16, "assertion failure: unlinkat(tsfd, names[i]->d_name, 0) -> %{errno}d", &v76, 8);
          _os_crash_msg();
          __break(1u);
          goto LABEL_64;
        }

LABEL_20:
        _os_trace_scandir_free_namelist();
        if (unlinkat(fileDescriptor, "timesync", 128) == -1)
        {
LABEL_79:
          v68 = 0;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          memset(__str, 0, sizeof(__str));
          v48 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v49 = 3;
          }

          else
          {
            v49 = 2;
          }

          v50 = *__error();
          v76 = 67109120;
          v77 = v50;
          LODWORD(v64) = 8;
          _os_log_send_and_compose_impl(v49, &v68, __str, 80, &dword_22E01A000, v48, 16, "assertion failure: unlinkat(dfd, timesync, 0x0080) -> %{errno}d", &v76, v64);
          _os_crash_msg();
          __break(1u);
LABEL_83:
          v68 = 0;
          *(v5 + 3) = 0u;
          *(v5 + 4) = 0u;
          *(v5 + 1) = 0u;
          *(v5 + 2) = 0u;
          *v5 = 0u;
          v51 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v52 = 3;
          }

          else
          {
            v52 = 2;
          }

          v70 = 134217984;
          v71 = 0;
          _os_log_send_and_compose_impl(v52, &v68, __str, 80, &dword_22E01A000, v51, 16, "assertion failure: _version != -1 -> %llu", &v70);
          v53 = _os_crash_msg();
          __break(1u);
          qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
          qword_27DA527A8 = v53;
          __break(1u);
LABEL_87:
          v54 = *__error();
          v55 = *__error();
          if (v54 == 9)
          {
            qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
            qword_27DA527A8 = v55;
            __break(1u);
          }

          _os_assumes_log();
          v68 = 0;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          memset(__str, 0, sizeof(__str));
          v56 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v58 = *__error();
          v76 = 67109120;
          v77 = v58;
          LODWORD(v64) = 8;
          _os_log_send_and_compose_impl(v57, &v68, __str, 80, &dword_22E01A000, v56, 16, "assertion failure: __extension__({ __typeof__(_os_trace_close(tsfd)) _e = ((__typeof__(_os_trace_close(tsfd)))__builtin_expect(((long)(_os_trace_close(tsfd))), (0l))); if (_e == (__typeof__(_os_trace_close(tsfd)))-1) { _os_assumes_log((uint64_t)(uintptr_t)(*__error())); } _e; }) -> %{errno}d", &v76, v64);
          _os_crash_msg();
          __break(1u);
        }

        if (close(v11) == -1)
        {
          goto LABEL_87;
        }
      }

      if (mkdirat(fileDescriptor, "timesync", 0x1EDu) != -1)
      {
        v16 = openat(fileDescriptor, "timesync", 0);
        if (v16 != -1)
        {
          v17 = v16;
          v18 = _os_trace_zalloc_typed();
          memset(__str, 170, 26);
          snprintf(__str, 0x1AuLL, "%016llx.timesync", 1);
          v19 = openat(v17, __str, 1537, 420);
          if (v19 < 0)
          {
            free(v18);
            v18 = 0;
          }

          else
          {
            *v18 = v19;
            uuid_clear(v18 + 4);
            *(v18 + 3) = _os_trace_calloc_typed();
            *(v18 + 2) = xmmword_22E0816E0;
          }

          while (1)
          {
            v20 = fts_read(v10);
            v21 = v20;
            if (!v20)
            {
              break;
            }

            fts_info = v20->fts_info;
            if (fts_info == 8)
            {
              v23 = strrchr(v20->fts_name, 46);
              if (v23)
              {
                if (!strcmp(v23, ".tracev3"))
                {
                  v68 = 0;
                  v24 = _os_trace_mmap_at();
                  if (v24)
                  {
                    v25 = v24;
                    v26 = 0;
                    *__str = MEMORY[0x277D85DD0];
                    *&__str[8] = 0x40000000;
                    *&__str[16] = ___timesync_convert_tracev3_block_invoke;
                    *&__str[24] = &__block_descriptor_tmp_70;
                    *&v73 = v18;
                    do
                    {
                      if (v68 - v26 < 0x10)
                      {
                        break;
                      }

                      v27 = *&v25[v26 + 8];
                      if (v68 - v26 - 16 < v27)
                      {
                        break;
                      }

                      if (!(*&__str[16])(__str))
                      {
                        break;
                      }

                      v26 = (v26 + v27 + 23) & 0xFFFFFFFFFFFFFFF8;
                    }

                    while (v26 - 1 < v68);
                    munmap(v25, v68);
                  }
                }
              }
            }

            else if (fts_info == 1 && v20->fts_level == 1 && !strcmp(v20->fts_name, "FaultsAndErrors"))
            {
              fts_set(v10, v21, 4);
            }
          }

          fts_close(v10);
          qsort_b(*(v18 + 3), *(v18 + 4), 0x40uLL, &__block_literal_global_73);
          operator new();
        }

        goto LABEL_69;
      }

      v68 = 0;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      memset(__str, 0, sizeof(__str));
      v45 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      v47 = *__error();
      v76 = 67109120;
      v77 = v47;
      _os_log_send_and_compose_impl(v46, &v68, __str, 80, &dword_22E01A000, v45, 16, "assertion failure: mkdirat(dfd, timesync, 0755) -> %{errno}d", &v76, 8);
      _os_crash_msg();
      __break(1u);
      goto LABEL_79;
    }
  }

  while (version++ != v7);
  diagnosticsDirectoryReference2 = [(_OSLogCollectionReference *)self->_lcr diagnosticsDirectoryReference];
  fileDescriptor2 = [diagnosticsDirectoryReference2 fileDescriptor];

  v31 = openat(fileDescriptor2, "Info.plist", 514, 420);
  if (v31 == -1)
  {
    v41 = *__error();
    updatesCopy = updatesCopy2;
    goto LABEL_66;
  }

  v32 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v31 closeOnDealloc:1];
  v33 = [v32 readDataToEndOfFileAndReturnError:0];
  if ([v33 length])
  {
    v34 = updatesCopy2;
    v35 = [MEMORY[0x277CCAC58] propertyListWithData:v33 options:1 format:0 error:updatesCopy2];
    if (!v35)
    {
LABEL_58:

      return 0;
    }
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = updatesCopy2;
  }

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:v65];
  [v35 setObject:v36 forKeyedSubscript:@"OSArchiveVersion"];

  v37 = [MEMORY[0x277CCAC58] dataWithPropertyList:v35 format:100 options:0 error:v34];

  if (!v37)
  {
    v33 = 0;
    goto LABEL_58;
  }

  if (![v32 truncateAtOffset:0 error:v34] || (objc_msgSend(v32, "writeData:error:", v37, v34) & 1) == 0)
  {
    v33 = v37;
    goto LABEL_58;
  }

  [v32 closeAndReturnError:0];

  self->_state = (v7 - 2) < 3;
  self->_version = v65;
  return 1;
}

- (void)dealloc
{
  if (self->_closeOnRelease)
  {
    [(_OSLogCollectionReference *)self->_lcr close];
  }

  v3.receiver = self;
  v3.super_class = _OSLogVersioning;
  [(_OSLogVersioning *)&v3 dealloc];
}

- (_OSLogVersioning)initWithURL:(id)l error:(id *)error
{
  v6 = [_OSLogCollectionReference referenceWithURL:l error:?];
  if (v6)
  {
    self = [(_OSLogVersioning *)self initWithCollection:v6 closeOnRelease:1 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_OSLogVersioning)initWithCollection:(id)collection closeOnRelease:(BOOL)release error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v40.receiver = self;
  v40.super_class = _OSLogVersioning;
  v10 = [(_OSLogVersioning *)&v40 init];
  v11 = v10;
  if (!v10)
  {
LABEL_40:
    v26 = v11;
    goto LABEL_41;
  }

  objc_storeStrong(&v10->_lcr, collection);
  v11->_closeOnRelease = release;
  v12 = collectionCopy;
  diagnosticsDirectoryReference = [v12 diagnosticsDirectoryReference];
  fileDescriptor = [diagnosticsDirectoryReference fileDescriptor];

  v41 = 0;
  if (fcntl(fileDescriptor, 50, __s1) == -1)
  {
    goto LABEL_17;
  }

  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  v15 = strlen(_os_trace_persist_path);
  if (!strncmp(__s1, _os_trace_persist_path, v15))
  {
    v24 = 0;
LABEL_28:
    v11->_version = v24;
    goto LABEL_29;
  }

  v16 = _os_trace_mmap_at();
  if (!v16)
  {
    if (*__error() == 2)
    {
      memset(&v53, 0, sizeof(v53));
      if (fstatat(fileDescriptor, "FaultsAndErrors", &v53, 0) || (v53.st_mode & 0xF000) != 0x4000)
      {
        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v51 = 0;
        v47 = 0;
        v27 = _os_trace_mmap_at();
        v28 = v27;
        if (v27)
        {
          v29 = v47;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v43 = ___OSIsAncientArchive_block_invoke;
          v44 = &unk_2787AE588;
          v45 = &v48;
          v46 = v27;
          v30 = v42;
          v31 = 0;
          do
          {
            if (v29 - v31 < 0x10)
            {
              break;
            }

            v32 = *(v28 + v31 + 8);
            if (v29 - 16 - v31 < v32)
            {
              break;
            }

            if (!(v43)(v30))
            {
              break;
            }

            v31 = (v31 + v32 + 23) & 0xFFFFFFFFFFFFFFF8;
          }

          while (v31 - 1 < v29);
        }

        v33 = *(v49 + 24);
        _Block_object_dispose(&v48, 8);
        v24 = 1;
        if (!v33)
        {
          v24 = -1;
        }
      }

      else
      {
        v24 = 1;
      }

      goto LABEL_28;
    }

LABEL_17:
    v25 = __error();
    _OSLogFailWithPOSIXError(*v25, error);

    goto LABEL_18;
  }

  v17 = objc_alloc(MEMORY[0x277CBEA90]);
  v18 = [v17 initWithBytesNoCopy:v16 length:v41 freeWhenDone:0];
  v19 = [MEMORY[0x277CCAC58] propertyListWithData:v18 options:0 format:0 error:error];
  munmap(v16, v41);
  if (v19)
  {
    v20 = [v19 objectForKeyedSubscript:@"OSArchiveVersion"];
    v21 = v20 == 0;

    if (!v21)
    {
      v22 = [v19 objectForKeyedSubscript:@"OSArchiveVersion"];
      v11->_version = [v22 integerValue];

      v23 = [v19 objectForKeyedSubscript:@"EndTimeRef"];
      v11->_hasEndTimeRef = v23 != 0;

LABEL_29:
      version = v11->_version;
      v35 = 1;
      if (version)
      {
        v36 = 2;
        v37 = 3;
        if (version >= 5)
        {
          v37 = 0;
        }

        if (version != -1)
        {
          v36 = v37;
        }

        if ((version - 3) >= 3)
        {
          v38 = v36;
        }

        else
        {
          v38 = 1;
        }

        if (version != 5)
        {
          v35 = v38;
        }
      }

      v11->_state = v35;
      goto LABEL_40;
    }
  }

  _OSLogFailWithPOSIXError(0x16, error);

LABEL_18:
  v26 = 0;
LABEL_41:

  return v26;
}

@end