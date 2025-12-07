@interface PETReservoirSamplingLogStoreFile
- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)headerMap:(unint64_t *)map;
- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)remap:(unint64_t *)remap;
- (BOOL)appendData:(id)data andReturnMapPointer:(id *)pointer;
- (BOOL)attemptToRecreate;
- (BOOL)changeLength:(unint64_t)length;
- (BOOL)lock;
- (PETReservoirSamplingLogStoreFile)initWithPath:(id)path;
- (unint64_t)currentLength;
- (void)_unmap;
- (void)dealloc;
- (void)unlock;
@end

@implementation PETReservoirSamplingLogStoreFile

- (void)unlock
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    flock(fd, 8);
  }
}

- (unint64_t)currentLength
{
  memset(&v3, 0, sizeof(v3));
  if (fstat(self->_fd, &v3))
  {
    return 0;
  }

  else
  {
    return v3.st_size;
  }
}

- (BOOL)lock
{
  v11 = *MEMORY[0x1E69E9840];
  fd = self->_fd;
  if (fd < 0 || !flock(fd, 2))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      v8[0] = 67109378;
      v8[1] = v4;
      v9 = 2080;
      v10 = v6;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not lock file: [%i] %s", v8, 0x12u);
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)attemptToRecreate
{
  *&v24[13] = *MEMORY[0x1E69E9840];
  path = self->_path;
  v20 = 0;
  v4 = [MEMORY[0x1E69C5D28] mkstempWithPrefix:path error:&v20];
  v5 = v20;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = self->_path;
      *buf = 138412546;
      v22 = v19;
      v23 = 2112;
      *v24 = v5;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not create tempfile with prefix %@: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  path = [v4 path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  fileSystemRepresentation2 = [(NSString *)self->_path fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v9);
  LODWORD(fileSystemRepresentation) = v10;

  if (fileSystemRepresentation)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      fileSystemRepresentation3 = [(NSString *)self->_path fileSystemRepresentation];
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 136315650;
      v22 = fileSystemRepresentation3;
      v23 = 1024;
      *v24 = v16;
      v24[2] = 2080;
      *&v24[3] = v18;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not overwrite %s: [%i] %s", buf, 0x1Cu);
    }

    path2 = [v4 path];
    unlink([path2 fileSystemRepresentation]);

    close([v4 fd]);
LABEL_8:
    v12 = 0;
    goto LABEL_12;
  }

  [(PETReservoirSamplingLogStoreFile *)self _unmap];
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    flock(fd, 8);
    close(self->_fd);
  }

  self->_fd = [v4 fd];
  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)appendData:(id)data andReturnMapPointer:(id *)pointer
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (lseek(self->_fd, 0, 2) == -1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    v18 = 67109378;
    v19 = v9;
    v20 = 2080;
    v21 = v11;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "Could not seek to eof: [%i] %s";
LABEL_14:
    _os_log_error_impl(&dword_1DF726000, v12, OS_LOG_TYPE_ERROR, v13, &v18, 0x12u);
    goto LABEL_7;
  }

  v7 = write(self->_fd, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  if (v7 == [dataCopy length])
  {
    v8 = 1;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = *__error();
    v16 = __error();
    v17 = strerror(*v16);
    v18 = 67109378;
    v19 = v15;
    v20 = 2080;
    v21 = v17;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "Could not write: [%i] %s";
    goto LABEL_14;
  }

LABEL_7:
  v8 = 0;
LABEL_8:
  if (!self->_ptr)
  {
    [(PETReservoirSamplingLogStoreFile *)self remap:0];
  }

  if (pointer)
  {
    *pointer = self->_ptr;
  }

  return v8;
}

- (BOOL)changeLength:(unint64_t)length
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = ftruncate(self->_fd, length);
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    v8[0] = 67109378;
    v8[1] = v5;
    v9 = 2080;
    v10 = v7;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not change file size: [%i] %s", v8, 0x12u);
  }

  return v3 == 0;
}

- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)headerMap:(unint64_t *)map
{
  result = self->_ptr;
  if (!result)
  {
    return [(PETReservoirSamplingLogStoreFile *)self remap:map];
  }

  if (map)
  {
    *map = self->_mapLen;
  }

  return result;
}

- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)remap:(unint64_t *)remap
{
  v13 = *MEMORY[0x1E69E9840];
  [(PETReservoirSamplingLogStoreFile *)self _unmap];
  currentLength = [(PETReservoirSamplingLogStoreFile *)self currentLength];
  self->_mapLen = currentLength;
  result = mmap(0, currentLength, 3, 1, self->_fd, 0);
  if (result == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      v10[0] = 67109378;
      v10[1] = v7;
      v11 = 2080;
      v12 = v9;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not map header: [%i] %s", v10, 0x12u);
    }

    result = 0;
  }

  self->_ptr = result;
  if (remap)
  {
    *remap = self->_mapLen;
  }

  return result;
}

- (void)_unmap
{
  p_ptr = &self->_ptr;
  ptr = self->_ptr;
  if (ptr)
  {
    munmap(ptr, self->_mapLen);
    *p_ptr = 0;
    p_ptr[1] = 0;
  }
}

- (void)dealloc
{
  [(PETReservoirSamplingLogStoreFile *)self _unmap];
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    flock(fd, 8);
    close(self->_fd);
  }

  v4.receiver = self;
  v4.super_class = PETReservoirSamplingLogStoreFile;
  [(PETReservoirSamplingLogStoreFile *)&v4 dealloc];
}

- (PETReservoirSamplingLogStoreFile)initWithPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = PETReservoirSamplingLogStoreFile;
  v5 = [(PETReservoirSamplingLogStoreFile *)&v14 init];
  if (v5 && (v6 = [pathCopy copy], path = v5->_path, v5->_path = v6, path, v8 = open(objc_msgSend(pathCopy, "fileSystemRepresentation"), 514, 384), v5->_fd = v8, v8 < 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 138412802;
      v16 = pathCopy;
      v17 = 1024;
      v18 = v11;
      v19 = 2080;
      v20 = v13;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not open sampled log at %@: [%i] %s", buf, 0x1Cu);
    }

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

@end