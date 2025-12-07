@interface KGGraphLockFile
- (BOOL)lock;
- (KGGraphLockFile)initWithDatabaseURL:(id)l;
- (void)unlock;
@end

@implementation KGGraphLockFile

- (void)unlock
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_locked)
  {
    fd = self->_fd;
    if ((fd & 0x80000000) == 0)
    {
      if (flock(fd, 8))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v4 = __error();
          v5 = strerror(*v4);
          v6 = *__error();
          v7 = 136315394;
          v8 = v5;
          v9 = 1024;
          v10 = v6;
          _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed unflocking: %s %d", &v7, 0x12u);
        }
      }

      else
      {
        close(self->_fd);
        self->_fd = -1;
        self->_locked = 0;
      }
    }
  }
}

- (BOOL)lock
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_locked)
  {
    __assert_rtn("[KGGraphLockFile lock]", "KGGraphLockFile.m", 28, "_locked == NO");
  }

  v3 = open([(NSURL *)self->_fileURL fileSystemRepresentation], 514, 384);
  if (v3 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      v7 = *__error();
      *buf = 136315394;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed opening lock file: %s %d", buf, 0x12u);
    }
  }

  else
  {
    v4 = v3;
    if (flock(v3, 6))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = __error();
        v10 = strerror(*v9);
        v11 = *__error();
        *buf = 136315394;
        v13 = v10;
        v14 = 1024;
        v15 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "flock failed: %s %d", buf, 0x12u);
      }

      close(v4);
    }

    else
    {
      self->_locked = 1;
      self->_fd = v4;
    }
  }

  return self->_locked;
}

- (KGGraphLockFile)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = KGGraphLockFile;
  v5 = [(KGGraphLockFile *)&v9 init];
  if (v5)
  {
    v6 = [lCopy URLByAppendingPathExtension:@"lock"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;

    v5->_fd = -1;
    v5->_locked = 0;
  }

  return v5;
}

@end