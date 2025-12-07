@interface _HKZipArchiveExtractor
- (BOOL)enumerateEntriesWithError:(id *)error block:(id)block;
- (_HKZipArchiveExtractor)init;
- (_HKZipArchiveExtractor)initWithData:(id)data;
- (_HKZipArchiveExtractor)initWithFileHandle:(id)handle;
- (_HKZipArchiveExtractor)initWithPathname:(id)pathname;
- (_HKZipArchiveExtractor)initWithURL:(id)l;
- (id)_initWithData:(id)data fileHandle:(id)handle path:(id)path;
- (id)description;
- (id)numberOfEntriesWithError:(id *)error;
@end

@implementation _HKZipArchiveExtractor

- (_HKZipArchiveExtractor)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithData:(id)data fileHandle:(id)handle path:(id)path
{
  dataCopy = data;
  handleCopy = handle;
  pathCopy = path;
  v12 = pathCopy;
  if ((!dataCopy || handleCopy || pathCopy) && (dataCopy || (handleCopy == 0) == (pathCopy == 0)))
  {
    [_HKZipArchiveExtractor _initWithData:fileHandle:path:];
  }

  v18.receiver = self;
  v18.super_class = _HKZipArchiveExtractor;
  v13 = [(_HKZipArchiveExtractor *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_archive = 0;
    objc_storeStrong(&v13->_archiveData, data);
    objc_storeStrong(&v14->_fileHandle, handle);
    v15 = [v12 copy];
    pathname = v14->_pathname;
    v14->_pathname = v15;

    v14->_enumerationCount = 0;
  }

  return v14;
}

- (_HKZipArchiveExtractor)initWithPathname:(id)pathname
{
  pathnameCopy = pathname;
  if (!pathnameCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "pathname"}];
  }

  if (![pathnameCopy length])
  {
    [_HKZipArchiveExtractor initWithPathname:];
  }

  v5 = [(_HKZipArchiveExtractor *)self _initWithData:0 fileHandle:0 path:pathnameCopy];

  return v5;
}

- (_HKZipArchiveExtractor)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "url"}];
  }

  path = [lCopy path];
  v6 = path;
  if (!path || ![path length])
  {
    [_HKZipArchiveExtractor initWithURL:];
  }

  v7 = [(_HKZipArchiveExtractor *)self _initWithData:0 fileHandle:0 path:v6];

  return v7;
}

- (_HKZipArchiveExtractor)initWithFileHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "fileHandle"}];
  }

  v5 = [(_HKZipArchiveExtractor *)self _initWithData:0 fileHandle:handleCopy path:0];

  return v5;
}

- (_HKZipArchiveExtractor)initWithData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "archiveData"}];
  }

  if (![dataCopy length])
  {
    [_HKZipArchiveExtractor initWithData:];
  }

  v5 = [(_HKZipArchiveExtractor *)self _initWithData:dataCopy fileHandle:0 path:0];

  return v5;
}

- (id)description
{
  pathname = self->_pathname;
  if (pathname)
  {
    goto LABEL_2;
  }

  if (self->_archiveData)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ length %lu", objc_opt_class(), -[NSData length](self->_archiveData, "length")];
    goto LABEL_5;
  }

  pathname = self->_fileHandle;
  if (pathname)
  {
LABEL_2:
    v4 = pathname;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, v5];

  return v6;
}

- (BOOL)enumerateEntriesWithError:(id *)error block:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (self->_isEnumeratingEntries)
  {
    v8 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"self" class:objc_opt_class() selector:a2 format:@"Already enumerating this archive"];
    v9 = v8;
    if (v8)
    {
      if (error)
      {
        v10 = v8;
        *error = v9;
      }

      else
      {
        _HKLogDroppedError(v8);
      }
    }

    goto LABEL_27;
  }

  self->_isEnumeratingEntries = 1;
  ++self->_enumerationCount;
  self->_archive = archive_read_new();
  if (!archive_read_support_format_zip() && !archive_read_support_filter_all())
  {
    archiveData = self->_archiveData;
    if (archiveData)
    {
      [(NSData *)archiveData bytes];
      [(NSData *)self->_archiveData length];
      open_memory = archive_read_open_memory();
LABEL_15:
      if (!open_memory)
      {
        v24 = 0;
        while (1)
        {
          next_header = archive_read_next_header();
          if (next_header)
          {
            break;
          }

          if (archive_entry_filetype() == 0x8000)
          {
            v23 = 0;
            v16 = objc_autoreleasePoolPush();
            v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:archive_entry_pathname()];
            v18 = [_HKZipArchiveEntry alloc];
            v19 = [(_HKZipArchiveEntry *)v18 initWithExtractor:self currentEntry:v24 pathname:v17];
            blockCopy[2](blockCopy, v19, &v23);
            didReadEntryData = [(_HKZipArchiveEntry *)v19 didReadEntryData];

            objc_autoreleasePoolPop(v16);
            if (v23)
            {
              next_header = 0;
              break;
            }

            if (!didReadEntryData)
            {
              next_header = archive_read_data_skip();
              if (next_header)
              {
                break;
              }
            }
          }
        }

        if (next_header < 2)
        {
          v21 = 1;
          goto LABEL_28;
        }
      }

      goto LABEL_26;
    }

    fileHandle = self->_fileHandle;
    if (fileHandle)
    {
      [(NSFileHandle *)fileHandle fileDescriptor];
      open_memory = archive_read_open_fd();
      goto LABEL_15;
    }

    pathname = self->_pathname;
    if (pathname)
    {
      [(NSString *)pathname UTF8String];
      open_memory = archive_read_open_filename();
      goto LABEL_15;
    }
  }

LABEL_26:
  [MEMORY[0x1E696ABC0] hk_assignError:error code:920 format:{@"Unable to open/read data: %s", archive_error_string()}];
LABEL_27:
  v21 = 0;
LABEL_28:
  if (self->_archive)
  {
    archive_read_free();
    self->_archive = 0;
  }

  if (self->_isEnumeratingEntries)
  {
    self->_isEnumeratingEntries = 0;
  }

  return v21;
}

- (id)numberOfEntriesWithError:(id *)error
{
  numberOfEntries = self->_numberOfEntries;
  if (numberOfEntries)
  {
    v4 = numberOfEntries;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51___HKZipArchiveExtractor_numberOfEntriesWithError___block_invoke;
    v9[3] = &unk_1E7379F48;
    v9[4] = &v10;
    if ([(_HKZipArchiveExtractor *)self enumerateEntriesWithError:error block:v9])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:v11[3]];
      v7 = self->_numberOfEntries;
      self->_numberOfEntries = v6;

      v4 = self->_numberOfEntries;
    }

    else
    {
      v4 = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  return v4;
}

- (void)_initWithData:fileHandle:path:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"((data != nil) && (fileHandle == nil) && (path == nil)) || ((data == nil) && (fileHandle != nil) && (path == nil)) || ((data == nil) && (fileHandle == nil) && (path != nil))" object:? file:? lineNumber:? description:?];
}

- (void)initWithPathname:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[pathname length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithURL:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"(path != nil) && (path.length > 0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithData:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"archiveData.length > 0" object:? file:? lineNumber:? description:?];
}

- (void)enumerateEntriesWithError:(uint64_t)a3 block:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_fault_impl(&dword_19197B000, a4, OS_LOG_TYPE_FAULT, "Caught exception in %{public}@: %{public}@", a3, 0x16u);
}

@end