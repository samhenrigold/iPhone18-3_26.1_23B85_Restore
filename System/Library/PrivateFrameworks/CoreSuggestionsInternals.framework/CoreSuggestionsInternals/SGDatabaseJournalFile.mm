@interface SGDatabaseJournalFile
- (SGDatabaseJournalFile)initWithPath:(id)path;
- (id)description;
- (id)read;
- (void)clear;
- (void)dealloc;
- (void)destroy;
- (void)destroyAndUnlinkIfEmpty;
- (void)unlink;
- (void)write:(id)write;
@end

@implementation SGDatabaseJournalFile

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGDatabaseJournalFile %@>", self->_path];

  return v2;
}

- (void)unlink
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_dead)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }

  if (unlink([(NSString *)self->_path UTF8String]))
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 138412802;
      v12 = path;
      v13 = 1024;
      v14 = v6;
      v15 = 2080;
      v16 = v8;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "Could not remove %@: errno=%i: %s", buf, 0x1Cu);
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  if (self->_len)
  {
    lseek(self->_fd, 0, 0);
    ftruncate(self->_fd, 0);
    self->_len = 0;
  }
}

- (id)read
{
  v33 = *MEMORY[0x277D85DE8];
  if (self->_dead)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  len = self->_len;
  if (len)
  {
    if (!self->_written)
    {
      fcntl(self->_fd, 48, 1);
      len = self->_len;
    }

    v4 = malloc_type_malloc(len, 0x6286E74DuLL);
    v5 = pread(self->_fd, v4, self->_len, 0);
    v6 = self->_len;
    if (v5 < v6)
    {
      v7 = sgLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        path = self->_path;
        v9 = *__error();
        v10 = __error();
        v11 = strerror(*v10);
        *buf = 138412802;
        *v31 = path;
        *&v31[8] = 1024;
        v32[0] = v9;
        LOWORD(v32[1]) = 2080;
        *(&v32[1] + 2) = v11;
        v12 = "Could not read from journal file %@: errno=%i: %s";
        v13 = v7;
        v14 = 28;
LABEL_33:
        _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (v6 <= 0xB)
    {
      v7 = sgLogHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v26 = self->_path;
      *buf = 138412290;
      *v31 = v26;
      v12 = "Journal file truncated: %@";
LABEL_32:
      v13 = v7;
      v14 = 12;
      goto LABEL_33;
    }

    v16 = *v4;
    if (*v4 == -1347426410)
    {
      v17 = v4[1];
      if (v6 - 12 != v17)
      {
        v7 = sgLogHandle();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v23 = self->_path;
        *buf = 138412290;
        *v31 = v23;
        v12 = "Journal file truncated: %@";
        goto LABEL_32;
      }

      v18 = adler32(0, v4 + 12, v17);
      if (v4[2] != v18)
      {
        v7 = sgLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v24 = self->_path;
          v25 = v4[2];
          *buf = 138412802;
          *v31 = v24;
          *&v31[8] = 1024;
          v32[0] = v18;
          LOWORD(v32[1]) = 1024;
          *(&v32[1] + 2) = v25;
          v12 = "Journal file checksum mismatch: %@: %u / %u";
          v13 = v7;
          v14 = 24;
          goto LABEL_33;
        }

LABEL_11:

LABEL_12:
        free(v4);
        len = 0;
        goto LABEL_13;
      }

      v19 = objc_alloc(MEMORY[0x277CBEA90]);
      v20 = v4[1];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __29__SGDatabaseJournalFile_read__block_invoke;
      v29[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
      v29[4] = v4;
      len = [v19 initWithBytesNoCopy:v4 + 3 length:v20 deallocator:v29];
    }

    else
    {
      if (*v4 != 1768714338 || *(v4 + 3) != 812938089)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v22 = self->_path;
          *buf = 67109634;
          *v31 = -1347426410;
          *&v31[4] = 1024;
          *&v31[6] = v16;
          LOWORD(v32[0]) = 2112;
          *(v32 + 2) = v22;
          _os_log_error_impl(&dword_231E60000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Journal file has invalid magic number: expected 0x%x, got 0x%x: %@", buf, 0x18u);
        }

        goto LABEL_12;
      }

      len = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v4 length:self->_len freeWhenDone:1];
    }
  }

LABEL_13:

  return len;
}

- (void)write:(id)write
{
  v25 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  if (self->_len)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:81 description:@"Can not overwrite journal file"];
  }

  if ([writeCopy length] >> 32)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"data.length <= UINT32_MAX"}];
  }

  if (self->_dead)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  v6 = adler32(0, [writeCopy bytes], objc_msgSend(writeCopy, "length"));
  v15[0] = -1347426410;
  v15[1] = [writeCopy length];
  v15[2] = v6;
  v22.iov_base = v15;
  v22.iov_len = 12;
  bytes = [writeCopy bytes];
  v24 = [writeCopy length];
  if (writev(self->_fd, &v22, 2) < 0)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412802;
      v17 = path;
      v18 = 1024;
      v19 = v9;
      v20 = 2080;
      v21 = v11;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Could not write to journal file %@: errno=%i: %s", buf, 0x1Cu);
    }
  }

  else
  {
    self->_len = [writeCopy length] + 12;
    self->_written = 1;
  }
}

- (void)dealloc
{
  [(SGDatabaseJournalFile *)self destroy];
  v3.receiver = self;
  v3.super_class = SGDatabaseJournalFile;
  [(SGDatabaseJournalFile *)&v3 dealloc];
}

- (void)destroyAndUnlinkIfEmpty
{
  if (!self->_len)
  {
    [(SGDatabaseJournalFile *)self unlink];
  }

  [(SGDatabaseJournalFile *)self destroy];
}

- (void)destroy
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  self->_dead = 1;
}

- (SGDatabaseJournalFile)initWithPath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = SGDatabaseJournalFile;
  v6 = [(SGDatabaseJournalFile *)&v21 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v6->_path, path);
  v8 = open_dprotected_np([pathCopy UTF8String], 514, 2, 0, 384);
  v7->_fd = v8;
  if (v8 < 0)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      path = v7->_path;
      v18 = *__error();
      v19 = __error();
      v20 = strerror(*v19);
      v28.st_dev = 138412802;
      *&v28.st_mode = path;
      WORD2(v28.st_ino) = 1024;
      *(&v28.st_ino + 6) = v18;
      HIWORD(v28.st_uid) = 2080;
      *&v28.st_gid = v20;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "Could not open %@: errno=%i: %s", &v28, 0x1Cu);
    }

    goto LABEL_10;
  }

  memset(&v28, 0, sizeof(v28));
  if (!fstat(v8, &v28))
  {
    v7->_len = v28.st_size;
LABEL_12:
    v11 = v7;
    goto LABEL_13;
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = v7->_path;
    v14 = *__error();
    v15 = __error();
    v16 = strerror(*v15);
    *buf = 138412802;
    v23 = v13;
    v24 = 1024;
    v25 = v14;
    v26 = 2080;
    v27 = v16;
    _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "Could not fstat %@: errno=%i: %s", buf, 0x1Cu);
  }

  close(v7->_fd);
LABEL_10:
  v11 = 0;
LABEL_13:

  return v11;
}

@end