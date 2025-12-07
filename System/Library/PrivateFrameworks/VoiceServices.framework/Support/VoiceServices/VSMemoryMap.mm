@interface VSMemoryMap
- (BOOL)mmap;
- (VSMemoryMap)initWithFilePath:(id)path;
- (void)dealloc;
- (void)madvise;
@end

@implementation VSMemoryMap

- (void)madvise
{
  v12 = *MEMORY[0x277D85DE8];
  fileSize = self->_fileSize;
  if (fileSize)
  {
    v7[0] = 0;
    v7[1] = fileSize;
    fcntl(self->_fd, 44, v7);
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      filePath = self->_filePath;
      v6 = self->_fileSize;
      *buf = 138412546;
      v9 = filePath;
      v10 = 2048;
      v11 = v6;
      _os_log_debug_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEBUG, "fcntl called on file '%@', size: %lu", buf, 0x16u);
    }
  }
}

- (BOOL)mmap
{
  v22 = *MEMORY[0x277D85DE8];
  uTF8String = [(NSString *)self->_filePath UTF8String];
  v4 = open(uTF8String, 0);
  self->_fd = v4;
  if (v4 <= 0)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      v21.st_dev = 136315394;
      *&v21.st_mode = uTF8String;
      WORD2(v21.st_ino) = 2080;
      *(&v21.st_ino + 6) = v16;
      v8 = "Unable to open file '%s', error: %s";
      v9 = &v21;
      goto LABEL_14;
    }
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
    if (fstat(v4, &v21))
    {
      close(self->_fd);
      v5 = VSGetLogDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = __error();
        v7 = strerror(*v6);
        v17 = 136315394;
        v18 = uTF8String;
        v19 = 2080;
        v20 = v7;
        v8 = "Unable to get size of file '%s', error: %s";
LABEL_5:
        v9 = &v17;
LABEL_14:
        _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, v8, v9, 0x16u);
      }
    }

    else
    {
      st_size = v21.st_size;
      self->_fileSize = v21.st_size;
      v12 = mmap(0, st_size, 1, 1, self->_fd, 0);
      if (v12 != -1)
      {
        self->_mappedData = v12;
        return 1;
      }

      v5 = VSGetLogDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v13 = __error();
        v14 = strerror(*v13);
        v17 = 136315394;
        v18 = uTF8String;
        v19 = 2080;
        v20 = v14;
        v8 = "Unable to mmap '%s', error: %s";
        goto LABEL_5;
      }
    }
  }

  return 0;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if (madvise(self->_mappedData, self->_fileSize, 4))
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      filePath = self->_filePath;
      v6 = __error();
      v7 = strerror(*v6);
      *buf = 138412546;
      v13 = filePath;
      v14 = 2080;
      v15 = v7;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Unable to madvise file '%@' MADV_DONTNEED, error: %s", buf, 0x16u);
    }
  }

  if (munmap(self->_mappedData, self->_fileSize))
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = self->_filePath;
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 138412546;
      v13 = v8;
      v14 = 2080;
      v15 = v10;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Unable to munmap file '%@', error: %s", buf, 0x16u);
    }
  }

  close(self->_fd);
  v11.receiver = self;
  v11.super_class = VSMemoryMap;
  [(VSMemoryMap *)&v11 dealloc];
}

- (VSMemoryMap)initWithFilePath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = VSMemoryMap;
  v6 = [(VSMemoryMap *)&v10 init];
  v7 = v6;
  if (!v6 || (v6->_mappedData = 0, objc_storeStrong(&v6->_filePath, path), v8 = 0, [(VSMemoryMap *)v7 mmap]))
  {
    v8 = v7;
  }

  return v8;
}

@end