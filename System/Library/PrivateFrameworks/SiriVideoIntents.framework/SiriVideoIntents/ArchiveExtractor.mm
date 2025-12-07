@interface ArchiveExtractor
- (BOOL)copyDataFromReadArchive:(archive *)archive toWriteDiskArchive:(archive *)diskArchive;
- (BOOL)extractArchiveAtURL:(id)l toDestinationDirectoryURL:(id)rL;
- (BOOL)performExtractionForArchive:(archive *)archive toDestinationDirectory:(id)directory;
- (BOOL)unarchiveData:(id)data toDestinationDirectory:(id)directory;
- (archive)createReadArchive;
- (archive)createWriteDiskArchive;
- (void)createReadArchive;
- (void)createWriteDiskArchive;
@end

@implementation ArchiveExtractor

- (archive)createReadArchive
{
  v2 = archive_read_new();
  if (!v2)
  {
    v7 = TRILogCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor createReadArchive];
    }

    goto LABEL_10;
  }

  v3 = v2;
  support_format_zip = archive_read_support_format_zip();
  if (support_format_zip)
  {
    v5 = TRILogCategory(support_format_zip);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      free = archive_read_free();
      if (!free)
      {
        return 0;
      }

      v7 = TRILogCategory(free);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_269684000, v7, OS_LOG_TYPE_DEFAULT, "Unable to free archive_read (leaking)", v10, 2u);
      }

LABEL_10:

      return 0;
    }

LABEL_4:
    [ArchiveExtractor createReadArchive];
    goto LABEL_5;
  }

  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all != -20 && support_filter_all)
  {
    v5 = TRILogCategory(support_filter_all);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  return v3;
}

- (archive)createWriteDiskArchive
{
  v2 = archive_write_disk_new();
  if (v2)
  {
    v3 = archive_write_disk_set_standard_lookup();
    if (v3)
    {
      v4 = TRILogCategory(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(ArchiveExtractor *)v2 createWriteDiskArchive];
      }
    }

    else
    {
      v5 = archive_write_disk_set_options();
      if (!v5)
      {
        return v2;
      }

      v4 = TRILogCategory(v5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(ArchiveExtractor *)v2 createWriteDiskArchive];
      }
    }

    v6 = archive_write_free();
    if (v6)
    {
      v7 = TRILogCategory(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_269684000, v7, OS_LOG_TYPE_DEFAULT, "Unable to free archive_write_disk (leaking)", v9, 2u);
      }
    }

    return 0;
  }

  return v2;
}

- (BOOL)copyDataFromReadArchive:(archive *)archive toWriteDiskArchive:(archive *)diskArchive
{
  while (1)
  {
    data_block = archive_read_data_block();
    if (data_block)
    {
      break;
    }

    v7 = archive_write_data_block();
    if (v7 < 0)
    {
      v8 = TRILogCategory(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ArchiveExtractor copyDataFromReadArchive:diskArchive toWriteDiskArchive:?];
      }

      goto LABEL_8;
    }
  }

  if (data_block == 1)
  {
    return data_block;
  }

  v8 = TRILogCategory(data_block);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ArchiveExtractor copyDataFromReadArchive:archive toWriteDiskArchive:?];
  }

LABEL_8:

  LOBYTE(data_block) = 0;
  return data_block;
}

- (BOOL)performExtractionForArchive:(archive *)archive toDestinationDirectory:(id)directory
{
  v53 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v48 = 0;
  v8 = [defaultManager createDirectoryAtURL:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v48];
  v9 = v48;

  if ((v8 & 1) == 0)
  {
    domain = [v9 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v9 code];

      if (code == 516)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v36 = TRILogCategory(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
    }

    goto LABEL_38;
  }

LABEL_2:

  createWriteDiskArchive = [(ArchiveExtractor *)self createWriteDiskArchive];
  if (!createWriteDiskArchive)
  {
    v9 = TRILogCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
    }

LABEL_38:
    v37 = 0;
    goto LABEL_58;
  }

  v11 = createWriteDiskArchive;
  uRLByResolvingSymlinksInPath = [directoryCopy URLByResolvingSymlinksInPath];

  *&v13 = 136315138;
  v44 = v13;
  while (1)
  {
    v47 = 0;
    next_header = archive_read_next_header();
    if (next_header)
    {
      if (next_header == 1)
      {
        v37 = 1;
        goto LABEL_50;
      }

      v38 = TRILogCategory(next_header);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [ArchiveExtractor performExtractionForArchive:archive toDestinationDirectory:?];
      }

      goto LABEL_45;
    }

    v15 = archive_entry_filetype();
    v16 = objc_autoreleasePoolPush();
    v17 = archive_entry_pathname_utf8();
    if (!v17)
    {
      v39 = TRILogCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_49;
    }

    v18 = v17;
    v19 = -1;
    do
    {
      v20 = *(v17 + v19++ + 1);
    }

    while (v20 == 47);
    if (v19)
    {
      v21 = TRILogCategory(v17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = strlen(v18);
        *buf = 134218240;
        v50 = v19;
        v51 = 2048;
        v52 = v22;
        _os_log_impl(&dword_269684000, v21, OS_LOG_TYPE_INFO, "archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
      }
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v18[v19]];
    v24 = v23;
    if (!v23)
    {
      v26 = TRILogCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = v44;
        v50 = &v18[v19];
        _os_log_error_impl(&dword_269684000, v26, OS_LOG_TYPE_ERROR, "Unable to initialize entry path with string %s", buf, 0xCu);
      }

      v27 = 1;
      goto LABEL_21;
    }

    v25 = [v23 length];
    if (!v25 && v15 != 0x4000)
    {
      break;
    }

    path = [uRLByResolvingSymlinksInPath path];
    v29 = [path stringByAppendingPathComponent:v24];

    [v29 fileSystemRepresentation];
    archive_entry_update_pathname_utf8();

    objc_autoreleasePoolPop(v16);
    archive_entry_perm();
    archive_entry_set_perm();
    if (v25)
    {
      v30 = archive_write_header();
      if (v30)
      {
        v38 = TRILogCategory(v30);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [ArchiveExtractor performExtractionForArchive:v11 toDestinationDirectory:?];
        }

        goto LABEL_45;
      }

      if (!archive_entry_size_is_set() || archive_entry_size() >= 1)
      {
        v31 = [(ArchiveExtractor *)self copyDataFromReadArchive:archive toWriteDiskArchive:v11];
        if ((v31 & 1) == 0)
        {
          v38 = TRILogCategory(v31);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [ArchiveExtractor performExtractionForArchive:v11 toDestinationDirectory:?];
          }

          goto LABEL_45;
        }
      }

      v32 = archive_write_finish_entry();
      if (v32)
      {
        v38 = TRILogCategory(v32);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [ArchiveExtractor performExtractionForArchive:v11 toDestinationDirectory:?];
        }

LABEL_45:

        goto LABEL_49;
      }
    }
  }

  v26 = TRILogCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [(ArchiveExtractor *)&v45 performExtractionForArchive:v46 toDestinationDirectory:v26];
  }

  v27 = 2;
LABEL_21:

  objc_autoreleasePoolPop(v16);
  if (v27 != 2)
  {
    v37 = 0;
    goto LABEL_59;
  }

LABEL_49:
  v37 = 0;
LABEL_50:
  v40 = archive_write_close();
  if (v40)
  {
    v41 = TRILogCategory(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
    }

    v37 = 0;
  }

  v42 = archive_write_free();
  if (v42)
  {
    v9 = TRILogCategory(v42);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
    }

    directoryCopy = uRLByResolvingSymlinksInPath;
LABEL_58:

    uRLByResolvingSymlinksInPath = directoryCopy;
  }

LABEL_59:

  return v37;
}

- (BOOL)unarchiveData:(id)data toDestinationDirectory:(id)directory
{
  dataCopy = data;
  directoryCopy = directory;
  createReadArchive = [(ArchiveExtractor *)self createReadArchive];
  if (!createReadArchive)
  {
    v13 = TRILogCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor unarchiveData:toDestinationDirectory:];
    }

    v12 = 0;
    goto LABEL_16;
  }

  v9 = createReadArchive;
  [dataCopy bytes];
  [dataCopy length];
  open_memory = archive_read_open_memory();
  if (open_memory)
  {
    v11 = TRILogCategory(open_memory);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor unarchiveData:v9 toDestinationDirectory:?];
    }

    v12 = 0;
  }

  else
  {
    v12 = [(ArchiveExtractor *)self performExtractionForArchive:v9 toDestinationDirectory:directoryCopy];
    close = archive_read_close();
    if (!close)
    {
      goto LABEL_13;
    }

    v11 = TRILogCategory(close);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor unarchiveData:v9 toDestinationDirectory:?];
    }
  }

LABEL_13:
  free = archive_read_free();
  if (free)
  {
    v13 = TRILogCategory(free);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_269684000, v13, OS_LOG_TYPE_DEFAULT, "unable to free archive_read (leaking)", v17, 2u);
    }

LABEL_16:
  }

  return v12;
}

- (BOOL)extractArchiveAtURL:(id)l toDestinationDirectoryURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  path = [lCopy path];
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:path options:8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (!v9)
  {
    v14 = TRILogCategory(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor extractArchiveAtURL:toDestinationDirectoryURL:];
    }

    goto LABEL_8;
  }

  v12 = [(ArchiveExtractor *)self unarchiveData:v9 toDestinationDirectory:rLCopy];
  if ((v12 & 1) == 0)
  {
    v14 = TRILogCategory(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor extractArchiveAtURL:toDestinationDirectoryURL:];
    }

LABEL_8:

    v13 = 0;
    goto LABEL_9;
  }

  v13 = 1;
LABEL_9:

  return v13;
}

- (void)createReadArchive
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "archive_read_new unable to create new archive: %s.", v2, v3, v4, v5);
}

- (void)createWriteDiskArchive
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "archive_write_disk unable to set options - %s.", v3, v4, v5, v6);
}

- (void)copyDataFromReadArchive:(uint64_t)a1 toWriteDiskArchive:.cold.1(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "archive_write_data_block failed - %s.", v3, v4, v5, v6);
}

- (void)copyDataFromReadArchive:(uint64_t)a1 toWriteDiskArchive:.cold.2(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "archive_read_data_block failed - %s.", v3, v4, v5, v6);
}

- (void)performExtractionForArchive:(os_log_t)log toDestinationDirectory:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_269684000, log, OS_LOG_TYPE_ERROR, "archive_entry with no path after sanitization encountered.", buf, 2u);
}

- (void)performExtractionForArchive:(uint64_t)a1 toDestinationDirectory:.cold.3(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "archive_write_header failed - %s", v3, v4, v5, v6);
}

- (void)performExtractionForArchive:(uint64_t)a1 toDestinationDirectory:.cold.4(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "error copying data to write archive - %s", v3, v4, v5, v6);
}

- (void)performExtractionForArchive:(uint64_t)a1 toDestinationDirectory:.cold.5(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "archive_write_finish_entry failed - %s", v3, v4, v5, v6);
}

- (void)performExtractionForArchive:(uint64_t)a1 toDestinationDirectory:.cold.7(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "archive_read_next_header failed - %s.", v3, v4, v5, v6);
}

- (void)unarchiveData:(uint64_t)a1 toDestinationDirectory:.cold.1(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "unable to open archive_read - %s.", v3, v4, v5, v6);
}

- (void)unarchiveData:(uint64_t)a1 toDestinationDirectory:.cold.2(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v1, v2, "unable to close archive_read - %s.", v3, v4, v5, v6);
}

- (void)extractArchiveAtURL:toDestinationDirectoryURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_269684000, v0, OS_LOG_TYPE_ERROR, "Error unarchiving file at %@", v1, 0xCu);
}

@end