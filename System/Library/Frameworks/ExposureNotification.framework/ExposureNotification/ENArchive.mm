@interface ENArchive
- (BOOL)_checkEntryAndReturnError:(id *)error;
- (BOOL)_openArchiveAndReturnError:(id *)error;
- (BOOL)advanceEntryAndReturnError:(id *)error;
- (BOOL)readDataIntoBuffer:(void *)buffer length:(unint64_t)length error:(id *)error;
- (BOOL)resetAndReturnError:(id *)error;
- (BOOL)resetToCurrentEntryAndReturnError:(id *)error;
- (BOOL)skipBytes:(unint64_t)bytes error:(id *)error;
- (ENArchive)initWithFD:(int)d error:(id *)error;
- (ENArchive)initWithPath:(id)path error:(id *)error;
- (NSString)entryPath;
- (int64_t)readDataIntoBuffer:(void *)buffer maxLength:(unint64_t)length error:(id *)error;
- (unsigned)entryFileType;
- (void)_closeArchive;
- (void)close;
- (void)dealloc;
@end

@implementation ENArchive

- (ENArchive)initWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = realpath_DARWIN_EXTSN([pathCopy fileSystemRepresentation], 0);
  if (v7)
  {
    v8 = v7;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__ENArchive_initWithPath_error___block_invoke;
    v14[3] = &__block_descriptor_40_e5_v8__0l;
    v14[4] = v7;
    v9 = MEMORY[0x2383EE560](v14);
    v10 = open(v8, 0);
    if ((v10 & 0x80000000) != 0)
    {
      if (*__error())
      {
        v11 = *__error();
        if (!v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = 4294960596;
      }

      if (error)
      {
        ENErrorF(2, "open failed: %#m", v11);
        *error = selfCopy = 0;
      }

      else
      {
        selfCopy = 0;
      }

      goto LABEL_6;
    }

LABEL_5:
    self = [(ENArchive *)self initWithFD:v10 error:error];
    selfCopy = self;
LABEL_6:
    v9[2](v9);

    goto LABEL_7;
  }

  if (error)
  {
    ENErrorF(2, "realpath failed");
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_7:

  return selfCopy;
}

- (ENArchive)initWithFD:(int)d error:(id *)error
{
  selfCopy = self;
  if (d < 0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    ENErrorF(2, "Invalid file descriptor");
    goto LABEL_11;
  }

  v11.receiver = self;
  v11.super_class = ENArchive;
  selfCopy = [(ENArchive *)&v11 init];
  if (!selfCopy)
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v7 = fdopen(d, "rb");
  if (!v7)
  {
    if (*__error())
    {
      v8 = *__error();
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = 4294960596;
    }

    if (!error)
    {
      goto LABEL_14;
    }

    ENErrorF(2, "fdopen failed: %#m", v8);
LABEL_11:
    *error = v9 = 0;
    goto LABEL_15;
  }

LABEL_6:
  selfCopy->_fileHandle = v7;
  if (![(ENArchive *)selfCopy _openArchiveAndReturnError:error])
  {
    goto LABEL_14;
  }

  selfCopy = selfCopy;
  v9 = selfCopy;
LABEL_15:

  return v9;
}

- (BOOL)_openArchiveAndReturnError:(id *)error
{
  if (!self->_fileHandle)
  {
    if (error)
    {
      ENErrorF(16, "No file handle");
      goto LABEL_14;
    }

    return 0;
  }

  if (!fseeko(self->_fileHandle, 0, 0))
  {
    goto LABEL_5;
  }

  if (!*__error())
  {
    v5 = 4294960596;
LABEL_12:
    if (error)
    {
      ENErrorF(15, "fseek failed: %#m", v5);
LABEL_14:
      *error = v10 = 0;
      return v10;
    }

    return 0;
  }

  v5 = *__error();
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = archive_read_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__ENArchive__openArchiveAndReturnError___block_invoke;
  v15[3] = &unk_278A4AF10;
  v15[4] = &v16;
  v6 = MEMORY[0x2383EE560](v15);
  if (!v17[3])
  {
    if (!error)
    {
      goto LABEL_25;
    }

    v12 = ENErrorF(12, "archive_read_new failed");
LABEL_24:
    v10 = 0;
    *error = v12;
    goto LABEL_9;
  }

  support_format_zip = archive_read_support_format_zip();
  if (support_format_zip)
  {
    if (!error)
    {
      goto LABEL_25;
    }

    v13 = archive_error_string();
    v12 = ENErrorF(15, "%s failed (%ld): %s", "archive_read_support_format_zip", support_format_zip, v13);
    goto LABEL_24;
  }

  open_FILE = archive_read_open_FILE();
  if (open_FILE)
  {
    if (error)
    {
      v14 = archive_error_string();
      v12 = ENErrorF(15, "%s failed (%ld): %s", "archive_read_open_FILE", open_FILE, v14);
      goto LABEL_24;
    }

LABEL_25:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = v17;
  self->_archive = v17[3];
  v9[3] = 0;
  v10 = 1;
LABEL_9:
  v6[2](v6);

  _Block_object_dispose(&v16, 8);
  return v10;
}

uint64_t __40__ENArchive__openArchiveAndReturnError___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return MEMORY[0x2821F6FE8]();
  }

  return result;
}

- (void)dealloc
{
  [(ENArchive *)self close];
  if (self->_archive)
  {
    archive_read_free();
  }

  v3.receiver = self;
  v3.super_class = ENArchive;
  [(ENArchive *)&v3 dealloc];
}

- (BOOL)advanceEntryAndReturnError:(id *)error
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    if (archive_read_next_header() == 1)
    {
      self->_endOfArchive = 1;
    }
  }

  else
  {
    [ENArchive advanceEntryAndReturnError:error];
  }

  return fileHandle != 0;
}

- (void)close
{
  [(ENArchive *)self _closeArchive];
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    fclose(fileHandle);
    self->_fileHandle = 0;
  }
}

- (void)_closeArchive
{
  p_archive = &self->_archive;
  if (self->_archive)
  {
    archive_read_free();
    *p_archive = 0;
    p_archive[1] = 0;
  }
}

- (BOOL)_checkEntryAndReturnError:(id *)error
{
  if (!self->_fileHandle)
  {
    if (!error)
    {
      return 0;
    }

    ENErrorF(10, "Archive closed");
    v5 = LABEL_11:;
    v6 = v5;
    result = 0;
    *error = v5;
    return result;
  }

  if (self->_endOfArchive)
  {
    if (!error)
    {
      return 0;
    }

    ENErrorF(10, "End of archive");
    goto LABEL_11;
  }

  if (self->_entry)
  {
    return 1;
  }

  if (error)
  {
    ENErrorF(10, "No entry");
    goto LABEL_11;
  }

  return 0;
}

- (BOOL)readDataIntoBuffer:(void *)buffer length:(unint64_t)length error:(id *)error
{
  v7 = [ENArchive readDataIntoBuffer:"readDataIntoBuffer:maxLength:error:" maxLength:buffer error:?];
  if (v7 < 1)
  {
    return 0;
  }

  if (v7 == length)
  {
    return 1;
  }

  if (!error)
  {
    return 0;
  }

  v9 = ENErrorF(15, "Read %ld bytes, expected %ld", v7, length);
  v10 = v9;
  result = 0;
  *error = v9;
  return result;
}

- (BOOL)resetAndReturnError:(id *)error
{
  if (self->_fileHandle)
  {
    [(ENArchive *)self _closeArchive];

    return [(ENArchive *)self _openArchiveAndReturnError:error];
  }

  else
  {
    if (error)
    {
      *error = ENErrorF(10, "Archive closed");
    }

    return 0;
  }
}

- (NSString)entryPath
{
  if ([(ENArchive *)self _checkEntryAndReturnError:0])
  {
    v2 = archive_entry_pathname();
    if (v2)
    {
      v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v2];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unsigned)entryFileType
{
  v3 = [(ENArchive *)self _checkEntryAndReturnError:0];
  if (v3)
  {
    entry = self->_entry;

    LOWORD(v3) = MEMORY[0x2821F6EC8](entry);
  }

  return v3;
}

- (int64_t)readDataIntoBuffer:(void *)buffer maxLength:(unint64_t)length error:(id *)error
{
  if (![(ENArchive *)self _checkEntryAndReturnError:error])
  {
    return 0;
  }

  data = archive_read_data();
  if (data < 0)
  {
    if (error)
    {
      v8 = archive_error_string();
      ENErrorF(16, "%s failed (%ld): %s", "archive_read_data", data, v8);
      *error = data = 0;
      return data;
    }

    return 0;
  }

  return data;
}

- (BOOL)resetToCurrentEntryAndReturnError:(id *)error
{
  if (![(ENArchive *)self _checkEntryAndReturnError:?])
  {
    return 0;
  }

  entryPath = [(ENArchive *)self entryPath];
  if ([(ENArchive *)self resetAndReturnError:error])
  {
    while (![(ENArchive *)self endOfArchive])
    {
      entryPath2 = [(ENArchive *)self entryPath];
      v7 = entryPath;
      v8 = entryPath2;
      v9 = v8;
      if (v7 == v8)
      {

LABEL_15:
        v11 = 1;
        goto LABEL_16;
      }

      if ((entryPath != 0) != (v8 == 0))
      {
        v10 = [v7 isEqual:v8];

        if (v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      if (![(ENArchive *)self advanceEntryAndReturnError:error])
      {
        goto LABEL_13;
      }
    }

    if (!error)
    {
      goto LABEL_13;
    }

    ENErrorF(16, "Current entry not found after reset");
    *error = v11 = 0;
  }

  else
  {
LABEL_13:
    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (BOOL)skipBytes:(unint64_t)bytes error:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  if (![(ENArchive *)self _checkEntryAndReturnError:error])
  {
    return 0;
  }

  bzero(v10, 0x400uLL);
  do
  {
    v7 = bytes == 0;
    if (!bytes)
    {
      break;
    }

    v8 = bytes >= 0x400 ? 1024 : bytes;
    bytes -= v8;
  }

  while ([(ENArchive *)self readDataIntoBuffer:v10 length:v8 error:error]);
  return v7;
}

- (void)advanceEntryAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF(10, "Archive closed");
    *v1 = result;
  }

  return result;
}

@end