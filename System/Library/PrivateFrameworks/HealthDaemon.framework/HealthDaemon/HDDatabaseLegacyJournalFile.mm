@interface HDDatabaseLegacyJournalFile
+ (id)_loadJournalEntry:(uint64_t)entry;
+ (uint64_t)_processOkemoJournalWithVersion:(uint64_t)version fileHandle:(void *)handle mapping:(uint64_t)mapping size:(uint64_t)size headerLength:(uint64_t)length profile:(void *)profile error:(uint64_t)error handler:(void *)handler;
- (BOOL)appendData:(id)data entryClass:(Class)class error:(id *)error;
- (BOOL)createAndOpenForWritingWithError:(id *)error;
- (BOOL)flushDataToDisk:(id *)disk;
- (BOOL)openForReadingWithError:(id *)error;
- (BOOL)removeWithError:(id *)error;
- (HDDatabaseLegacyJournalFile)init;
- (HDDatabaseLegacyJournalFile)initWithURL:(id)l;
- (NSString)description;
- (NSString)journalPath;
- (double)modificationTime;
- (id)_fullPath;
- (int64_t)size;
- (unsigned)enumerateEntriesWithProfile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler;
- (unsigned)readVersionWithError:(id *)error;
- (void)close;
- (void)dealloc;
@end

@implementation HDDatabaseLegacyJournalFile

- (HDDatabaseLegacyJournalFile)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabaseLegacyJournalFile)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = HDDatabaseLegacyJournalFile;
  v6 = [(HDDatabaseLegacyJournalFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v7->_version = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(HDDatabaseLegacyJournalFile *)self close];
  v3.receiver = self;
  v3.super_class = HDDatabaseLegacyJournalFile;
  [(HDDatabaseLegacyJournalFile *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  _fullPath = [(HDDatabaseLegacyJournalFile *)&self->super.isa _fullPath];
  isOpen = [(HDDatabaseLegacyJournalFile *)self isOpen];
  v6 = @"closed";
  if (isOpen)
  {
    v6 = @"open";
  }

  v7 = [v3 stringWithFormat:@"%@ (%@)", _fullPath, v6];

  return v7;
}

- (id)_fullPath
{
  if (self)
  {
    self = [self[1] path];
    v1 = vars8;
  }

  return self;
}

- (NSString)journalPath
{
  path = [(NSURL *)self->_URL path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  return stringByDeletingLastPathComponent;
}

- (int64_t)size
{
  URL = self->_URL;
  v4 = 0;
  [(NSURL *)URL getResourceValue:&v4 forKey:*MEMORY[0x277CBE838] error:0];
  return [v4 integerValue];
}

- (double)modificationTime
{
  URL = self->_URL;
  v8 = 0;
  [(NSURL *)URL getResourceValue:&v8 forKey:*MEMORY[0x277CBE7B0] error:0];
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    return v3;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v4 = v6;
  }

  return v4;
}

- (BOOL)openForReadingWithError:(id *)error
{
  if ([(HDDatabaseLegacyJournalFile *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseLegacyJournalFile.m" lineNumber:101 description:{@"Cannot open %@ because it is already open", self}];
  }

  name = [(HDDatabaseLegacyJournalFile *)self name];
  journalPath = [(HDDatabaseLegacyJournalFile *)self journalPath];
  v8 = name;
  objc_opt_self();
  v9 = [journalPath stringByAppendingPathComponent:v8];

  v10 = MEMORY[0x277CCA9F8];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v16 = 0;
  v12 = [v10 fileHandleForReadingFromURL:v11 error:&v16];
  v13 = v16;

  if (!v12)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:102 description:@"Error opening journal file" underlyingError:v13];
  }

  if (v12)
  {
    objc_storeStrong(&self->_fileHandle, v12);
  }

  return v12 != 0;
}

- (void)close
{
  fileHandle = self->_fileHandle;
  self->_fileHandle = 0;
  v3 = fileHandle;

  [(NSFileHandle *)v3 closeFile];
}

- (BOOL)removeWithError:(id *)error
{
  [(NSURL *)self->_URL removeAllCachedResourceValues];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _fullPath = [(HDDatabaseLegacyJournalFile *)&self->super.isa _fullPath];
  LOBYTE(error) = [defaultManager removeItemAtPath:_fullPath error:error];

  return error;
}

- (unsigned)readVersionWithError:(id *)error
{
  p_version = &self->_version;
  version = self->_version;
  if (version)
  {
    return version;
  }

  if (![(HDDatabaseLegacyJournalFile *)self isOpen])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Cannot read journal version if journal file is not open"];
    return 0;
  }

  if (![(NSFileHandle *)self->_fileHandle seekToOffset:0 error:error])
  {
    return 0;
  }

  fileHandle = self->_fileHandle;
  v11 = 0;
  v8 = [(NSFileHandle *)fileHandle hk_readValue:p_version ofSize:4 error:&v11];
  v9 = v11;
  if (v8)
  {
    version = *p_version;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Failed to read journal version" underlyingError:v9];
    version = 0;
  }

  return version;
}

- (unsigned)enumerateEntriesWithProfile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler
{
  v75 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  handlerCopy = handler;
  if ([(HDDatabaseLegacyJournalFile *)self isOpen])
  {
    v11 = [(HDDatabaseLegacyJournalFile *)self readVersionWithError:error];
    if (v11)
    {
      v12 = v11;
      _fullPath = [(HDDatabaseLegacyJournalFile *)&self->super.isa _fullPath];
      fileHandle = self->_fileHandle;
      v15 = _fullPath;
      v16 = profileCopy;
      v17 = fileHandle;
      v18 = handlerCopy;
      v19 = objc_opt_self();
      if ([(NSFileHandle *)v17 seekToOffset:4 error:error])
      {
        memset(&v62, 0, sizeof(v62));
        fileDescriptor = [(NSFileHandle *)v17 fileDescriptor];
        if ((fstat(fileDescriptor, &v62) & 0x80000000) == 0)
        {
          v60 = v18;
          v61 = v16;
          v21 = mmap(0, v62.st_size, 1, 2, fileDescriptor, 0);
          if (v21 == -1)
          {
            _HKInitializeLogging();
            v22 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              v44 = v22;
              v45 = *__error();
              v46 = __error();
              v47 = strerror(*v46);
              *buf = 67109378;
              *&buf[4] = v45;
              LOWORD(v66) = 2080;
              *(&v66 + 2) = v47;
              _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "Journal file could not be mapped: %d: %s", buf, 0x12u);
            }

            v21 = 0;
          }

          v57 = v21;
          st_size = v62.st_size;
          *buf = MEMORY[0x277D85DD0];
          *&v66 = 3221225472;
          *(&v66 + 1) = __92__HDDatabaseLegacyJournalFile__processJournalFile_profile_fileHandle_version_error_handler___block_invoke;
          v67 = &unk_27861BC80;
          v23 = v60;
          v69 = v62;
          v68 = v23;
          v70 = sel__processJournalFile_profile_fileHandle_version_error_handler_;
          v71 = v19;
          v56 = v15;
          v59 = v16;
          v58 = v17;
          v24 = buf;
          objc_opt_self();
          if (v12 - 1 < 2)
          {
            _HKInitializeLogging();
            v31 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *v72 = 67109378;
              *&v72[4] = v12;
              v73 = 2114;
              v32 = v56;
              v74 = v56;
              _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Ignoring version %u journal %{public}@", v72, 0x12u);
              v26 = 2;
              v18 = v60;
              v25 = v57;
            }

            else
            {
              v26 = 2;
              v18 = v60;
              v32 = v56;
              v25 = v57;
            }

            goto LABEL_29;
          }

          if (v12 - 3 >= 2)
          {
            if (v12 == 5)
            {
              v33 = v58;
              v34 = v59;
              v53 = v24;
              v51 = objc_opt_self();
              v64 = 0;
              *v72 = 0;
              v35 = [(NSFileHandle *)v33 hk_readValue:&v64 ofSize:1 error:v72];
              v36 = *v72;
              v52 = v33;
              v54 = v34;
              if (v35)
              {
                v37 = objc_alloc(MEMORY[0x277CBEB28]);
                v50 = [v37 initWithCapacity:v64];
                mutableBytes = [v50 mutableBytes];
                v63 = v36;
                v39 = [(NSFileHandle *)v33 hk_readValue:mutableBytes ofSize:v64 error:&v63];
                v40 = v63;

                v49 = v40;
                if (v39)
                {
                  v25 = v57;
                  v26 = [HDDatabaseLegacyJournalFile _processOkemoJournalWithVersion:v51 fileHandle:v33 mapping:v57 size:st_size headerLength:v64 + 5 profile:v54 error:error handler:v53];
                  v18 = v60;
                  v16 = v61;
                }

                else
                {
                  [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Unable to read build number from journal file" underlyingError:v40];
                  v26 = 2;
                  v18 = v60;
                  v16 = v61;
                  v25 = v57;
                }

                v32 = v56;

                v42 = v49;
              }

              else
              {
                [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Unable to read build length from journal file" underlyingError:v36];
                v26 = 2;
                v42 = v36;
                v18 = v60;
                v16 = v61;
                v32 = v56;
                v25 = v57;
              }

              goto LABEL_29;
            }

            _HKInitializeLogging();
            v41 = *MEMORY[0x277CCC2A0];
            v18 = v60;
            v25 = v57;
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *v72 = 67109378;
              *&v72[4] = v12;
              v73 = 2112;
              v32 = v56;
              v74 = v56;
              _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Unexpected journal version %u at path %@", v72, 0x12u);
              v26 = 2;
              goto LABEL_29;
            }

            v26 = 2;
          }

          else
          {
            v25 = v57;
            v26 = [HDDatabaseLegacyJournalFile _processOkemoJournalWithVersion:v58 fileHandle:v57 mapping:st_size size:4 headerLength:v59 profile:error error:v24 handler:?];
            v18 = v60;
          }

          v32 = v56;
LABEL_29:

          if (v25)
          {
            munmap(v25, v62.st_size);
          }

          goto LABEL_32;
        }

        v27 = MEMORY[0x277CCA9B8];
        v28 = v18;
        v29 = *__error();
        v30 = __error();
        v48 = v29;
        v18 = v28;
        [v27 hk_assignError:error code:102 format:{@"Journal file fstat failed: %d: %s", v48, strerror(*v30)}];
      }

      v26 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v26 = 2;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Journal is not open"];
    v26 = 0;
  }

LABEL_33:

  return v26;
}

+ (id)_loadJournalEntry:(uint64_t)entry
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v2 error:0];

  [v3 setClass:objc_opt_class() forClassName:@"_UserDefaultUpdatedJournalEntry"];
  [v3 setClass:objc_opt_class() forClassName:@"_UserDefaultRemovedJournalEntry"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  if (!v4 || ([v3 error], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      v8 = v6;
      error = [v3 error];
      v10 = 138543362;
      v11 = error;
      _os_log_fault_impl(&dword_228986000, v8, OS_LOG_TYPE_FAULT, "Error occurred while decoding journal entry: %{public}@", &v10, 0xCu);
    }
  }

  return v4;
}

uint64_t __92__HDDatabaseLegacyJournalFile__processJournalFile_profile_fileHandle_version_error_handler___block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  if (v2 == 4)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = a1[23];
    v5 = a1[24];
    v7 = HDStringFromJournalProcessingResult(4u);
    [v4 handleFailureInMethod:v6 object:v5 file:@"HDDatabaseLegacyJournalFile.m" lineNumber:329 description:{@"%@ does not support %@", v5, v7}];
  }

  return v2;
}

+ (uint64_t)_processOkemoJournalWithVersion:(uint64_t)version fileHandle:(void *)handle mapping:(uint64_t)mapping size:(uint64_t)size headerLength:(uint64_t)length profile:(void *)profile error:(uint64_t)error handler:(void *)handler
{
  handleCopy = handle;
  profileCopy = profile;
  handlerCopy = handler;
  objc_opt_self();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 3;
  v15 = handleCopy;
  v16 = handlerCopy;
  HKWithAutoreleasePool();
  v13 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v13;
}

uint64_t __122__HDDatabaseLegacyJournalFile__processOkemoJournalWithVersion_fileHandle_mapping_size_headerLength_profile_error_handler___block_invoke(void *a1, uint64_t *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v4 = v3;
  v5 = a1[7];
  if (v5)
  {
    v77 = v3;
    v6 = a1[9];
    v7 = a1[10];
    v8 = objc_opt_self();
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = v9;
    v11 = (v7 + v5);
    v12 = v6 + v5;
    v13 = v6 + v5 - 4;
    v75 = v5;
    if (v11 >= v13)
    {
      v36 = 0;
    }

    else
    {
      v73 = v6;
      v74 = a1;
      v79 = v9;
      while (1)
      {
        v14 = v11 + 1;
        v15 = *v11;
        v11 = (v11 + v15 + 4);
        if (v11 > v12)
        {
          break;
        }

        v16 = objc_autoreleasePoolPush();
        v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v14 length:v15 freeWhenDone:0];
        if (v17)
        {
          v18 = [(HDDatabaseLegacyJournalFile *)v8 _loadJournalEntry:v17];
          if (v18)
          {
            [v79 addObject:v18];
          }

          else
          {
            _HKInitializeLogging();
            v19 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *v82 = v15;
              *&v82[4] = 2048;
              *&v82[6] = v14 - v75;
              _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to load journal entry (%d bytes at offset %lu); skipping.", buf, 0x12u);
            }
          }
        }

        objc_autoreleasePoolPop(v16);
        if (v11 >= v13)
        {
          v36 = 0;
          goto LABEL_24;
        }
      }

      v36 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"*** Journal file too short for expected data, Offset: %lu Length: %d, fileSize: %ld", v14 - v75, v15, v73}];
      v11 = v14;
LABEL_24:
      a1 = v74;
      v10 = v79;
    }

    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v82 = (v11 - v75) >> 10;
      _os_log_debug_impl(&dword_228986000, v37, OS_LOG_TYPE_DEBUG, "Processed file size %luK.", buf, 0xCu);
    }

    v38 = v10;
    v39 = v36;
    if (v39)
    {
      v40 = v39;
      if (a2)
      {
        v41 = v39;
        *a2 = v40;
      }

      else
      {
        _HKLogDroppedError();
      }

      v42 = v10;
      *(*(a1[6] + 8) + 24) = 2;
      _HKInitializeLogging();
      v48 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v44 = v48;
        v4 = v77;
        [v77 timeIntervalSinceNow];
        v50 = -v49;
        v51 = [v42 count];
        v52 = *a2;
        *buf = 134218498;
        *v82 = v50;
        *&v82[8] = 2048;
        *&v82[10] = v51;
        v83 = 2114;
        v84 = v52;
        _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "Map load time: %0.2f, entries: %ld, error: %{public}@", buf, 0x20u);
        goto LABEL_35;
      }
    }

    else
    {

      v42 = v10;
      _HKInitializeLogging();
      v43 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
      {
        v44 = v43;
        v4 = v77;
        [v77 timeIntervalSinceNow];
        v46 = -v45;
        v47 = [v42 count];
        *buf = 134218240;
        *v82 = v46;
        *&v82[8] = 2048;
        *&v82[10] = v47;
        _os_log_debug_impl(&dword_228986000, v44, OS_LOG_TYPE_DEBUG, "Map load time: %0.2f, entries: %ld", buf, 0x16u);
LABEL_35:

        goto LABEL_46;
      }
    }

    goto LABEL_45;
  }

  v20 = a1[4];
  if (!v20)
  {
    v42 = 0;
    goto LABEL_46;
  }

  v77 = v3;
  v21 = v20;
  v22 = objc_opt_self();
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v80 = 0;
  v76 = v21;
  while (1)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = [v21 readDataOfLength:4];
    if ([v25 length] != 4)
    {
      break;
    }

    v26 = *[v25 bytes];
    v27 = [v21 readDataOfLength:v26];
    if ([v27 length] != v26)
    {
      v53 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Journal file too short for expected data, Offset: %lu Length: %ld, fileSize: %llu", objc_msgSend(v27, "length"), v26, objc_msgSend(v21, "offsetInFile") - objc_msgSend(v27, "length")}];

      v80 = v53;
      break;
    }

    v28 = [(HDDatabaseLegacyJournalFile *)v22 _loadJournalEntry:v27];
    if (v28)
    {
      [v23 addObject:v28];
    }

    else
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = v23;
      v31 = a1;
      v32 = [v27 length];
      v33 = [v21 offsetInFile];
      v34 = v22;
      v72 = v32;
      a1 = v31;
      v23 = v30;
      v35 = [v29 hk_error:100 format:{@"Unknown journal entry (%lu bytes at offset %llu)", v72, v33 - objc_msgSend(v27, "length")}];

      v80 = v35;
      v22 = v34;
      v21 = v76;
    }

    objc_autoreleasePoolPop(v24);
    if (!v28)
    {
      goto LABEL_39;
    }
  }

  objc_autoreleasePoolPop(v24);
LABEL_39:
  _HKInitializeLogging();
  v54 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    v68 = v54;
    *buf = 134217984;
    *v82 = [v21 offsetInFile] >> 10;
    _os_log_debug_impl(&dword_228986000, v68, OS_LOG_TYPE_DEBUG, "Processed file size %lluK.", buf, 0xCu);
  }

  v55 = v23;

  v42 = v23;
  if (!v80)
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      v57 = v62;
      v4 = v77;
      [v77 timeIntervalSinceNow];
      v70 = -v69;
      v71 = [v42 count];
      *buf = 134218240;
      *v82 = v70;
      *&v82[8] = 2048;
      *&v82[10] = v71;
      _os_log_debug_impl(&dword_228986000, v57, OS_LOG_TYPE_DEBUG, "Load time: %0.2f, entries: %ld", buf, 0x16u);
      goto LABEL_52;
    }

LABEL_45:
    v4 = v77;
    goto LABEL_46;
  }

  *(*(a1[6] + 8) + 24) = 2;
  _HKInitializeLogging();
  v56 = *MEMORY[0x277CCC2A0];
  if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_45;
  }

  v57 = v56;
  v4 = v77;
  [v77 timeIntervalSinceNow];
  v59 = -v58;
  v60 = [v42 count];
  v61 = *a2;
  *buf = 134218498;
  *v82 = v59;
  *&v82[8] = 2048;
  *&v82[10] = v60;
  v83 = 2114;
  v84 = v61;
  _os_log_error_impl(&dword_228986000, v57, OS_LOG_TYPE_ERROR, "Load time: %0.2f, entries: %ld, error: %{public}@", buf, 0x20u);
LABEL_52:

LABEL_46:
  if ([v42 count])
  {
    v63 = objc_alloc_init(MEMORY[0x277CBEAA8]);

    *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      v65 = v64;
      [v63 timeIntervalSinceNow];
      *buf = 134217984;
      *v82 = -v66;
      _os_log_debug_impl(&dword_228986000, v65, OS_LOG_TYPE_DEBUG, "Merge time: %0.2f", buf, 0xCu);
    }
  }

  else
  {
    v63 = v4;
  }

  return 1;
}

- (BOOL)createAndOpenForWritingWithError:(id *)error
{
  v4 = [MEMORY[0x277CCA9B8] hk_error:3328 description:@"HDDatabaseLegacyJournalFile does not support writing"];
  if (v4)
  {
    if (error)
    {
      v5 = v4;
      *error = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v4 == 0;
}

- (BOOL)appendData:(id)data entryClass:(Class)class error:(id *)error
{
  v6 = [MEMORY[0x277CCA9B8] hk_error:3328 description:@"HDDatabaseLegacyJournalFile does not support writing"];
  if (v6)
  {
    if (error)
    {
      v7 = v6;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v6 == 0;
}

- (BOOL)flushDataToDisk:(id *)disk
{
  v4 = [MEMORY[0x277CCA9B8] hk_error:3328 description:@"HDDatabaseLegacyJournalFile does not support writing"];
  if (v4)
  {
    if (disk)
    {
      v5 = v4;
      *disk = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v4 == 0;
}

@end