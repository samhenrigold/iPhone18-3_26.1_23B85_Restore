@interface _HKArchiveCreator
+ (BOOL)archiveContentsOfDirectoryAtURL:(id)l archiveURL:(id)rL error:(id *)error;
- (_HKArchiveCreator)initWithURL:(id)l fileHandle:(id)handle archiveType:(int64_t)type;
- (int64_t)writeData:(const void *)data ofLength:(unint64_t)length;
- (void)_addDataOfSize:(int64_t)size toPathInArchive:(id)archive fromByteProvider:(id)provider;
- (void)_closeArchiveWithError:(id)error;
- (void)addDataToArchive:(id)archive pathInArchive:(id)inArchive;
- (void)addFileToArchive:(id)archive pathInArchive:(id)inArchive;
- (void)dealloc;
@end

@implementation _HKArchiveCreator

- (_HKArchiveCreator)initWithURL:(id)l fileHandle:(id)handle archiveType:(int64_t)type
{
  lCopy = l;
  handleCopy = handle;
  if (lCopy | handleCopy)
  {
    v20.receiver = self;
    v20.super_class = _HKArchiveCreator;
    v11 = [(_HKArchiveCreator *)&v20 init];
    if (!v11)
    {
      goto LABEL_13;
    }

    v11->_archive = archive_write_new();
    if (type)
    {
      goto LABEL_13;
    }

    archive_write_set_format_zip();
    if (lCopy)
    {
      v12 = [lCopy copy];
      archiveURL = v11->_archiveURL;
      v11->_archiveURL = v12;

      [(NSURL *)v11->_archiveURL fileSystemRepresentation];
      v14 = archive_write_open_filename();
    }

    else
    {
      if (!handleCopy)
      {
        v17 = 4294967266;
LABEL_12:
        v18 = [MEMORY[0x1E696ABC0] hk_error:102 format:{@"Failed to open archive: %s (%d)", archive_error_string(), v17}];
        [(_HKArchiveCreator *)v11 _closeArchiveWithError:v18];

LABEL_13:
        self = v11;
        selfCopy = self;
        goto LABEL_14;
      }

      v15 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:dup(objc_msgSend(handleCopy closeOnDealloc:{"fileDescriptor")), 1}];
      fileHandle = v11->_fileHandle;
      v11->_fileHandle = v15;

      [(NSFileHandle *)v11->_fileHandle fileDescriptor];
      v14 = archive_write_open_fd();
    }

    v17 = v14;
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

+ (BOOL)archiveContentsOfDirectoryAtURL:(id)l archiveURL:(id)rL error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v42 = 0;
  path = [lCopy path];
  v11 = [defaultManager fileExistsAtPath:path isDirectory:&v42];

  if (v11)
  {
    if (v42)
    {
      errorCopy = error;
      v35 = rLCopy;
      v12 = [[_HKArchiveCreator alloc] initWithURL:rLCopy archiveType:0];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __70___HKArchiveCreator_archiveContentsOfDirectoryAtURL_archiveURL_error___block_invoke;
      v40[3] = &unk_1E737A220;
      v13 = v12;
      v41 = v13;
      v34 = defaultManager;
      [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:0 options:16 errorHandler:v40];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = v39 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
LABEL_5:
        v18 = 0;
        while (1)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v36 + 1) + 8 * v18);
          if (![(_HKArchiveCreator *)v13 archiveIsValid])
          {
            break;
          }

          if (([v19 hasDirectoryPath] & 1) == 0)
          {
            v20 = MEMORY[0x1E695DFF8];
            relativePath = [v19 relativePath];
            v22 = [v20 fileURLWithPath:relativePath];

            [(_HKArchiveCreator *)v13 addFileToArchive:v19 pathInArchive:v22];
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v36 objects:v43 count:16];
            if (v16)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      archiveIsValid = [(_HKArchiveCreator *)v13 archiveIsValid];
      if (archiveIsValid)
      {
        [(_HKArchiveCreator *)v13 closeArchive];
        defaultManager = v34;
LABEL_33:

        goto LABEL_34;
      }

      error = [(_HKArchiveCreator *)v13 error];
      v28 = error;
      if (error)
      {
        v29 = error;
        v30 = errorCopy;
      }

      else
      {
        v29 = [MEMORY[0x1E696ABC0] hk_error:2000 description:@"Unknown error"];
        v30 = errorCopy;
        if (!v29)
        {
          defaultManager = v34;
          rLCopy = v35;
LABEL_31:

LABEL_32:
          goto LABEL_33;
        }
      }

      if (v30)
      {
        v31 = v29;
        *v30 = v29;
      }

      else
      {
        _HKLogDroppedError(v29);
      }

      defaultManager = v34;
      rLCopy = v35;

      if (v28)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@ is not a directory", lCopy}];
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    v25 = v24;
    if (v24)
    {
      if (error)
      {
        v26 = v24;
        *error = v25;
      }

      else
      {
        _HKLogDroppedError(v24);
      }
    }
  }

  archiveIsValid = 0;
LABEL_34:

  return archiveIsValid;
}

- (void)dealloc
{
  [(_HKArchiveCreator *)self closeArchive];
  v3.receiver = self;
  v3.super_class = _HKArchiveCreator;
  [(_HKArchiveCreator *)&v3 dealloc];
}

- (int64_t)writeData:(const void *)data ofLength:(unint64_t)length
{
  result = self->_archive;
  if (result)
  {
    return MEMORY[0x1EEE63760]();
  }

  return result;
}

- (void)addFileToArchive:(id)archive pathInArchive:(id)inArchive
{
  archiveCopy = archive;
  inArchiveCopy = inArchive;
  if ([(_HKArchiveCreator *)self archiveIsValid])
  {
    if ([archiveCopy isFileURL])
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [archiveCopy path];
      v22 = 0;
      v11 = [defaultManager attributesOfItemAtPath:path error:&v22];
      v12 = v22;

      if (v11)
      {
        v21 = 0;
        v13 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:archiveCopy error:&v21];
        v14 = v21;
        if (v13)
        {
          v15 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
          longLongValue = [v15 longLongValue];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __52___HKArchiveCreator_addFileToArchive_pathInArchive___block_invoke;
          v18[3] = &unk_1E737A248;
          v19 = v13;
          selfCopy = self;
          [(_HKArchiveCreator *)self _addDataOfSize:longLongValue toPathInArchive:inArchiveCopy fromByteProvider:v18];
        }

        else
        {
          [(_HKArchiveCreator *)self _closeArchiveWithError:v14];
        }
      }

      else
      {
        [(_HKArchiveCreator *)self _closeArchiveWithError:v12];
      }
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@ is not a file URL", archiveCopy}];
      [(_HKArchiveCreator *)self _closeArchiveWithError:v17];
    }
  }
}

- (void)addDataToArchive:(id)archive pathInArchive:(id)inArchive
{
  archiveCopy = archive;
  inArchiveCopy = inArchive;
  v8 = [archiveCopy length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___HKArchiveCreator_addDataToArchive_pathInArchive___block_invoke;
  v10[3] = &unk_1E737A270;
  v11 = archiveCopy;
  v9 = archiveCopy;
  [(_HKArchiveCreator *)self _addDataOfSize:v8 toPathInArchive:inArchiveCopy fromByteProvider:v10];
}

- (void)_addDataOfSize:(int64_t)size toPathInArchive:(id)archive fromByteProvider:(id)provider
{
  archiveCopy = archive;
  providerCopy = provider;
  if ([(_HKArchiveCreator *)self archiveIsValid])
  {
    archive_entry_new();
    [archiveCopy fileSystemRepresentation];
    archive_entry_set_pathname();
    archive_entry_set_size();
    archive_entry_set_filetype();
    archive_entry_set_perm();
    time(0);
    archive_entry_set_birthtime();
    archive_entry_set_ctime();
    archive_entry_set_mtime();
    archive_entry_set_atime();
    if (archive_write_header())
    {
      v9 = [MEMORY[0x1E696ABC0] hk_error:102 description:@"Failed to write archive header"];
    }

    else
    {
      v10 = providerCopy[2](providerCopy, self);
      if (v10 >= size)
      {
LABEL_7:
        archive_entry_free();
        goto LABEL_8;
      }

      v9 = [MEMORY[0x1E696ABC0] hk_error:102 format:{@"Wrote %ld bytes, expected %ld", v10, size}];
    }

    v11 = v9;
    [(_HKArchiveCreator *)self _closeArchiveWithError:v9];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_closeArchiveWithError:(id)error
{
  errorCopy = error;
  if (self->_archive)
  {
    archive_write_close();
    v6 = archive_write_free();
    self->_archive = 0;
    if (errorCopy)
    {
      _HKInitializeLogging(v6, v7);
      v10 = HKLogInfrastructure(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_HKArchiveCreator *)self _closeArchiveWithError:errorCopy, v10];
      }
    }

    objc_storeStrong(&self->_error, error);
  }
}

- (void)_closeArchiveWithError:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "%@: closing archive unexpectedly: %{public}@", &v6, 0x16u);
}

@end