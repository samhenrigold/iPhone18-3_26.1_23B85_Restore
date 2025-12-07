@interface _PASDatabaseJournalFile
- (_PASDatabaseJournalFile)initWithPath:(id)path;
- (id)description;
- (id)read;
- (void)clear;
- (void)dealloc;
- (void)destroy;
- (void)destroyAndUnlinkIfEmpty;
- (void)unlink;
- (void)write:(id)write;
@end

@implementation _PASDatabaseJournalFile

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %@>", v5, self->_path];

  return v6;
}

- (void)unlink
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_dead)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASDatabaseJournalFile.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }

  if (unlink([(NSString *)self->_path UTF8String]))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      v5 = *__error();
      v6 = __error();
      v7 = strerror(*v6);
      *buf = 138412802;
      v11 = path;
      v12 = 1024;
      v13 = v5;
      v14 = 2080;
      v15 = v7;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remove %@: errno=%i: %s", buf, 0x1Cu);
    }
  }

  else
  {
    self->_dead = 1;
  }
}

- (void)clear
{
  if (self->_dead)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASDatabaseJournalFile.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  if (self->_len)
  {
    lseek(self->_fd, 0, 0);
    ftruncate(self->_fd, 0);
    self->_len = 0;
    self->_readCursor = 0;
  }
}

- (id)read
{
  v41 = *MEMORY[0x1E69E9840];
  if (!self->_len || [(_PASDatabaseJournalFile *)self isFullyRead])
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (self->_dead)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASDatabaseJournalFile.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  if (!self->_written)
  {
    fcntl(self->_fd, 48, 1);
  }

  v37 = 0;
  __buf = 0;
  v5 = pread(self->_fd, &__buf, 0xCuLL, self->_readCursor);
  v6 = self->_readCursor + 12;
  self->_readCursor = v6;
  if (v5 <= 0xB)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 138412802;
      *v39 = path;
      *&v39[8] = 1024;
      v40[0] = v8;
      LOWORD(v40[1]) = 2080;
      *(&v40[1] + 2) = v10;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Could not read from journal file %@: errno=%i: %s";
      v13 = 28;
LABEL_20:
      _os_log_error_impl(&dword_1A7F47000, v11, OS_LOG_TYPE_ERROR, v12, buf, v13);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (self->_len - v6 >= HIDWORD(__buf))
  {
    v15 = __buf;
    if (__buf != -1347426410)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = self->_path;
        *buf = 67109634;
        *v39 = -1347426410;
        *&v39[4] = 1024;
        *&v39[6] = v15;
        LOWORD(v40[0]) = 2112;
        *(v40 + 2) = v29;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "Journal file has invalid magic number: expected 0x%x, got 0x%x: %@";
        v13 = 24;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v16 = objc_alloc(MEMORY[0x1E695DF88]);
    v17 = [v16 initWithLength:HIDWORD(__buf)];
    fd = self->_fd;
    mutableBytes = [v17 mutableBytes];
    v20 = pread(fd, mutableBytes, HIDWORD(__buf), self->_readCursor);
    v21 = HIDWORD(__buf);
    self->_readCursor += HIDWORD(__buf);
    if (v20 >= v21)
    {
      bytes = [v17 bytes];
      v32 = adler32(0, bytes, HIDWORD(__buf));
      v33 = v37;
      if (v37 == v32)
      {
        v17 = v17;
        v4 = v17;
        goto LABEL_23;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v34 = self->_path;
      *buf = 138412802;
      *v39 = v34;
      *&v39[8] = 1024;
      v40[0] = v32;
      LOWORD(v40[1]) = 1024;
      *(&v40[1] + 2) = v33;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "Journal file checksum mismatch: %@: %u / %u";
      v28 = 24;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_30:
        self->_readCursor -= HIDWORD(__buf);
        goto LABEL_22;
      }

      v22 = self->_path;
      v23 = *__error();
      v24 = __error();
      v25 = strerror(*v24);
      *buf = 138412802;
      *v39 = v22;
      *&v39[8] = 1024;
      v40[0] = v23;
      LOWORD(v40[1]) = 2080;
      *(&v40[1] + 2) = v25;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "Could not read from journal file %@: errno=%i: %s";
      v28 = 28;
    }

    _os_log_error_impl(&dword_1A7F47000, v26, OS_LOG_TYPE_ERROR, v27, buf, v28);
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = self->_path;
    *buf = 138412290;
    *v39 = v14;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Journal file truncated: %@";
    v13 = 12;
    goto LABEL_20;
  }

LABEL_21:
  v17 = 0;
LABEL_22:
  self->_readCursor -= 12;
  [(_PASDatabaseJournalFile *)self destroy];
  v4 = 0;
LABEL_23:

LABEL_24:

  return v4;
}

- (void)write:(id)write
{
  v29 = *MEMORY[0x1E69E9840];
  writeCopy = write;
  if ([writeCopy length] >> 32)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASDatabaseJournalFile.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"data.length <= UINT32_MAX"}];
  }

  if (self->_dead)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASDatabaseJournalFile.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  v6 = adler32(0, [writeCopy bytes], objc_msgSend(writeCopy, "length"));
  v18[0] = -1347426410;
  v18[1] = [writeCopy length];
  v18[2] = v6;
  v26.iov_base = v18;
  v26.iov_len = 12;
  bytes = [writeCopy bytes];
  v7 = [writeCopy length];

  v28 = v7;
  if (writev(self->_fd, &v26, 2) < 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      v25.st_dev = 138412802;
      *&v25.st_mode = path;
      WORD2(v25.st_ino) = 1024;
      *(&v25.st_ino + 6) = v13;
      HIWORD(v25.st_uid) = 2080;
      *&v25.st_gid = v15;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not write to journal file %@: errno=%i: %s", &v25, 0x1Cu);
    }
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    if (fstat(self->_fd, &v25))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = self->_path;
        v9 = *__error();
        v10 = __error();
        v11 = strerror(*v10);
        *buf = 138412802;
        v20 = v8;
        v21 = 1024;
        v22 = v9;
        v23 = 2080;
        v24 = v11;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not fstat %@: errno=%i: %s", buf, 0x1Cu);
      }

      close(self->_fd);
      self->_fd = -1;
    }

    self->_len = v25.st_size;
    self->_written = 1;
  }
}

- (void)dealloc
{
  [(_PASDatabaseJournalFile *)self destroy];
  v3.receiver = self;
  v3.super_class = _PASDatabaseJournalFile;
  [(_PASDatabaseJournalFile *)&v3 dealloc];
}

- (void)destroyAndUnlinkIfEmpty
{
  if (!self->_len)
  {
    [(_PASDatabaseJournalFile *)self unlink];
  }

  [(_PASDatabaseJournalFile *)self destroy];
}

- (void)destroy
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }

  self->_dead = 1;
}

- (_PASDatabaseJournalFile)initWithPath:(id)path
{
  v27 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = _PASDatabaseJournalFile;
  v6 = [(_PASDatabaseJournalFile *)&v19 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v6->_path, path);
  v8 = open_dprotected_np([pathCopy UTF8String], 522, 2, 0, 384);
  v7->_fd = v8;
  if ((v8 & 0x80000000) == 0)
  {
    memset(&v26, 0, sizeof(v26));
    if (fstat(v8, &v26))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        path = v7->_path;
        v12 = *__error();
        v13 = __error();
        v14 = strerror(*v13);
        *buf = 138412802;
        pathCopy2 = path;
        v22 = 1024;
        v23 = v12;
        v24 = 2080;
        v25 = v14;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not fstat %@: errno=%i: %s", buf, 0x1Cu);
      }

      close(v7->_fd);
      v9 = 0;
      v7->_fd = -1;
      goto LABEL_12;
    }

    v7->_len = v26.st_size;
LABEL_11:
    v9 = v7;
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = v7->_path;
    v16 = *__error();
    v17 = __error();
    v18 = strerror(*v17);
    v26.st_dev = 138412802;
    *&v26.st_mode = v15;
    WORD2(v26.st_ino) = 1024;
    *(&v26.st_ino + 6) = v16;
    HIWORD(v26.st_uid) = 2080;
    *&v26.st_gid = v18;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not open %@: errno=%i: %s", &v26, 0x1Cu);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end