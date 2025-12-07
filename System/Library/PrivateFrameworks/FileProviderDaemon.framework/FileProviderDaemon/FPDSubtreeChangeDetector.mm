@interface FPDSubtreeChangeDetector
- (BOOL)maintainDirstatWithError:(id *)error;
- (id)initAtPath:(id)path error:(id *)error;
- (id)verifyTreeIdentityWithError:(id *)error;
- (unint64_t)retrieveDirstatGenCountWithError:(id *)error;
- (unint64_t)retrieveFileIDWithError:(id *)error;
- (void)dealloc;
@end

@implementation FPDSubtreeChangeDetector

- (unint64_t)retrieveFileIDWithError:(id *)error
{
  memset(&v6, 0, sizeof(v6));
  if ((fstat(self->_fd, &v6) & 0x80000000) == 0)
  {
    return v6.st_ino;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [FPDSubtreeChangeDetector retrieveFileIDWithError:];
  }

  return 0;
}

- (BOOL)maintainDirstatWithError:(id *)error
{
  v7 = 0;
  v4 = ffsctl(self->_fd, 0x80084A02uLL, &v7, 0);
  if (v4 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    }

    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FPDSubtreeChangeDetector maintainDirstatWithError:];
    }
  }

  return v4 >= 0;
}

- (unint64_t)retrieveDirstatGenCountWithError:(id *)error
{
  v7 = 0u;
  v8 = 0u;
  v6 = 1;
  if ((ffsctl(self->_fd, 0xC0284A20uLL, &v6, 0) & 0x80000000) == 0)
  {
    return *(&v8 + 1);
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [FPDSubtreeChangeDetector retrieveDirstatGenCountWithError:];
  }

  return 0;
}

- (id)initAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = FPDSubtreeChangeDetector;
  v8 = [(FPDSubtreeChangeDetector *)&v18 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v8->_path, path);
  [pathCopy fileSystemRepresentation];
  v10 = openat_s();
  v9->_fd = v10;
  if (v10 < 0)
  {
    v14 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPDSubtreeChangeDetector initAtPath:error:];
    }

    if (error)
    {
      v16 = v14;
      *error = v14;
    }

    goto LABEL_13;
  }

  v11 = [(FPDSubtreeChangeDetector *)v9 retrieveFileIDWithError:error];
  v9->_fileID = v11;
  if (!v11 || ![(FPDSubtreeChangeDetector *)v9 maintainDirstatWithError:error]|| (v12 = [(FPDSubtreeChangeDetector *)v9 retrieveDirstatGenCountWithError:error], (v9->_genCount = v12) == 0))
  {
    close(v9->_fd);
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v13 = v9;
LABEL_14:

  return v13;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }

  v4.receiver = self;
  v4.super_class = FPDSubtreeChangeDetector;
  [(FPDSubtreeChangeDetector *)&v4 dealloc];
}

- (id)verifyTreeIdentityWithError:(id *)error
{
  v5 = [(FPDSubtreeChangeDetector *)self retrieveFileIDWithError:?];
  if (v5)
  {
    v6 = v5;
    v5 = [(FPDSubtreeChangeDetector *)self retrieveDirstatGenCountWithError:error];
    if (v5)
    {
      if (v6 == self->_fileID && v5 == self->_genCount)
      {
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
      }

      else if (error)
      {
        v7 = FPSubtreeChangedError();
        v8 = v7;
        v5 = 0;
        *error = v7;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (void)retrieveFileIDWithError:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v1, v2, "[ERROR] Unable to stat directory at '%@': %s", v3, v4, v5, v6);
}

- (void)maintainDirstatWithError:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v1, v2, "[ERROR] Unable to maintain dirstats at '%@': %s", v3, v4, v5, v6);
}

- (void)retrieveDirstatGenCountWithError:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v1, v2, "[ERROR] Unable to retrieve dirstats at '%@': %s", v3, v4, v5, v6);
}

- (void)initAtPath:error:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v1, v2, "[ERROR] Unable to open directory at '%@': %s", v3, v4, v5, v6);
}

@end