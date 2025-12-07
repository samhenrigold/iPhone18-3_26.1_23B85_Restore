@interface HDFileArchiver
- (BOOL)compressFileAtURL:(id)l to:(id)to strippingPathPrefix:(id)prefix error:(id *)error;
- (BOOL)decompressArchiveAt:(id)at to:(id)to error:(id *)error;
- (HDFileArchiver)init;
- (id).cxx_construct;
- (id)_errorFromReaderWithContext:(uint64_t)context;
- (void)_reset;
- (void)dealloc;
@end

@implementation HDFileArchiver

- (void)dealloc
{
  [(HDFileArchiver *)self _reset];
  v3.receiver = self;
  v3.super_class = HDFileArchiver;
  [(HDFileArchiver *)&v3 dealloc];
}

- (void)_reset
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    result[1] = 0;

    v3 = v1[2];
    v1[2] = 0;

    v4 = v1[3];
    v1[3] = 0;

    if (v1[4])
    {
      archive_read_free();
      v1[4] = 0;
    }

    result = v1[5];
    if (result)
    {
      result = archive_write_free();
      v1[5] = 0;
    }
  }

  return result;
}

- (HDFileArchiver)init
{
  v7.receiver = self;
  v7.super_class = HDFileArchiver;
  v2 = [(HDFileArchiver *)&v7 init];
  if (v2)
  {
    std::vector<unsigned char>::vector[abi:ne200100](&v5, 0x10000);
    begin = v2->_nullBuffer.__begin_;
    if (begin)
    {
      v2->_nullBuffer.__end_ = begin;
      operator delete(begin);
      v2->_nullBuffer.__begin_ = 0;
      v2->_nullBuffer.__end_ = 0;
      v2->_nullBuffer.__cap_ = 0;
    }

    *&v2->_nullBuffer.__begin_ = v5;
    v2->_nullBuffer.__cap_ = v6;
  }

  return v2;
}

- (id)_errorFromReaderWithContext:(uint64_t)context
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (context)
  {
    v4 = archive_errno();
    if (v4 < 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Internal libarchive error %s", v3, archive_error_string()];
      v9 = [MEMORY[0x277CCA9B8] hk_error:100 description:v10];
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s (errno = %d)", v3, archive_error_string(), v4];
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v7 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA450];
      v13 = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v9 = [v7 errorWithDomain:*MEMORY[0x277CCA5B8] code:v4 userInfo:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)compressFileAtURL:(id)l to:(id)to strippingPathPrefix:(id)prefix error:(id *)error
{
  *(&v49[2] + 2) = *MEMORY[0x277D85DE8];
  lCopy = l;
  toCopy = to;
  prefixCopy = prefix;
  [(HDFileArchiver *)self _reset];
  objc_storeStrong(&self->_sourceURL, l);
  objc_storeStrong(&self->_prefixURL, prefix);
  self->_reader = archive_read_disk_new();
  archive_read_disk_set_metadata_filter_callback();
  [(NSURL *)self->_sourceURL fileSystemRepresentation];
  if (archive_read_disk_open())
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Failed to open source: %s", archive_error_string()}];
    [(HDFileArchiver *)self _reset];
    v13 = 0;
    goto LABEL_58;
  }

  self->_writer = archive_write_new();
  archive_write_add_filter_gzip();
  archive_write_set_format_pax_restricted();
  [toCopy fileSystemRepresentation];
  archive_write_open_filename();
  v44 = @"Failed to write sparse block for entry %s: %s";
  while (1)
  {
    archive_entry_new();
    next_header2 = archive_read_next_header2();
    v15 = next_header2;
    if (next_header2)
    {
      if (next_header2 == 1)
      {
        v13 = 1;
        goto LABEL_57;
      }

      _HKInitializeLogging();
      v16 = HKLogInfrastructure();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v36 = archive_errno();
        v37 = archive_error_string();
        *buf = 138543874;
        selfCopy2 = self;
        v48 = 1024;
        LODWORD(v49[0]) = v36;
        WORD2(v49[0]) = 2080;
        *(v49 + 6) = v37;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read next file from disk during compression: %d: %s", buf, 0x1Cu);
      }

      if (v15 == -25 || v15 == -30)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Failed to read next file from disk during compression: %s", archive_error_string()}];
        goto LABEL_56;
      }

      if (v15 <= -21)
      {
        _HKInitializeLogging();
        v17 = HKLogInfrastructure();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "Skipping bad entry", buf, 2u);
        }

        goto LABEL_47;
      }
    }

    if (self->_prefixURL)
    {
      v18 = archive_entry_pathname();
      if (!v18)
      {
        goto LABEL_47;
      }

      fileSystemRepresentation = [(NSURL *)self->_prefixURL fileSystemRepresentation];
      _HKInitializeLogging();
      v20 = HKLogInfrastructure();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        selfCopy2 = fileSystemRepresentation;
        v48 = 2080;
        v49[0] = v18;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "Stripping %s from %s", buf, 0x16u);
      }

      if (fileSystemRepresentation)
      {
        v21 = strstr(v18, fileSystemRepresentation);
        if (v21 == v18)
        {
          v22 = v21;
          v23 = strlen(fileSystemRepresentation);
          if (v22[v23] == 47)
          {
            v18 = &v22[v23 + 1];
          }

          else
          {
            v18 = &v22[v23];
          }
        }
      }

      if (!*v18)
      {
        goto LABEL_47;
      }

      archive_entry_copy_pathname();
    }

    _HKInitializeLogging();
    v24 = HKLogInfrastructure();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = archive_entry_pathname();
      *buf = 136315138;
      selfCopy2 = v25;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "Writing entry %s", buf, 0xCu);
    }

    if (archive_write_header() < -20)
    {
      v39 = MEMORY[0x277CCA9B8];
      v40 = archive_entry_pathname();
      [v39 hk_assignError:error code:100 format:{@"Failed to write entry header for %s: %s", v40, archive_error_string()}];
      goto LABEL_56;
    }

    if (archive_entry_size() >= 1)
    {
      break;
    }

LABEL_47:
    archive_entry_free();
  }

  for (i = 0; ; i += v33)
  {
    data_block = archive_read_data_block();
    if (data_block)
    {
      if (data_block >= -20)
      {
        goto LABEL_47;
      }

      v38 = @"Failed to read data block for entry %s: %s";
      goto LABEL_54;
    }

    v28 = -i;
    v29 = i >= 0 || v28 < 1;
    if (!v29)
    {
      break;
    }

LABEL_42:
    v33 = archive_write_data();
    if (v33 < 0)
    {
      v38 = @"Failed to write data block for entry %s: %s";
LABEL_54:
      v44 = v38;
      goto LABEL_55;
    }
  }

  while (1)
  {
    begin = self->_nullBuffer.__begin_;
    v31 = (self->_nullBuffer.__end_ - begin >= v28 ? v28 : self->_nullBuffer.__end_ - begin);
    v32 = archive_write_data();
    if (v32 < 0)
    {
      break;
    }

    if (v32 < v31)
    {
      _HKInitializeLogging();
      v34 = HKLogInfrastructure();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = archive_entry_pathname();
        *buf = 138543618;
        selfCopy2 = self;
        v48 = 2080;
        v49[0] = v35;
        _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Truncated write for %s; file may have grown while being archived.", buf, 0x16u);
      }

      goto LABEL_47;
    }

    i += v32;
    v29 = v28 <= v32;
    v28 -= v32;
    if (v29)
    {
      goto LABEL_42;
    }
  }

LABEL_55:
  v41 = MEMORY[0x277CCA9B8];
  v42 = archive_entry_pathname();
  [v41 hk_assignError:error code:100 format:{v44, v42, archive_error_string()}];
LABEL_56:
  v13 = 0;
LABEL_57:
  archive_entry_free();
  [(HDFileArchiver *)self _reset];
LABEL_58:

  return v13;
}

- (BOOL)decompressArchiveAt:(id)at to:(id)to error:(id *)error
{
  atCopy = at;
  toCopy = to;
  [(HDFileArchiver *)self _reset];
  objc_storeStrong(&self->_destinationDirectoryURL, to);
  self->_reader = archive_read_new();
  archive_read_support_filter_all();
  archive_read_support_format_all();
  [atCopy fileSystemRepresentation];
  if (archive_read_open_filename())
  {
    v10 = [(HDFileArchiver *)self _errorFromReaderWithContext:?];
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [(HDFileArchiver *)self _reset];
    v17 = 0;
  }

  else
  {
    self->_writer = archive_write_disk_new();
    archive_write_disk_set_options();
    while (1)
    {
      do
      {
        next_header = archive_read_next_header();
      }

      while (next_header == -10);
      if (next_header)
      {
        break;
      }

      destinationDirectoryURL = self->_destinationDirectoryURL;
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:archive_entry_pathname()];
      v16 = [(NSURL *)destinationDirectoryURL URLByAppendingPathComponent:v15];

      [v16 fileSystemRepresentation];
      archive_entry_copy_pathname();
      if (archive_read_extract2())
      {
        v20 = [(HDFileArchiver *)self _errorFromReaderWithContext:?];
        v21 = v20;
        if (v20)
        {
          if (error)
          {
            v22 = v20;
            *error = v21;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_24;
      }
    }

    if (next_header == 1)
    {
      v17 = 1;
      goto LABEL_25;
    }

    v18 = [(HDFileArchiver *)self _errorFromReaderWithContext:?];
    v16 = v18;
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_24:
    v17 = 0;
LABEL_25:
    [(HDFileArchiver *)self _reset];
  }

  return v17;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end