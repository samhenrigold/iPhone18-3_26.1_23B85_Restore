@interface TRIFileBackedMutableStringArray
+ (id)arrayFromDirectory:(id)directory;
- (BOOL)addString:(id)string;
- (BOOL)enumerateStringsWithBlock:(id)block;
- (TRIFileBackedMutableStringArray)init;
- (void)dealloc;
@end

@implementation TRIFileBackedMutableStringArray

- (TRIFileBackedMutableStringArray)init
{
  v26 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = TRIFileBackedMutableStringArray;
  v2 = [(TRIFileBackedMutableStringArray *)&v19 init];
  v3 = v2;
  if (!v2)
  {
LABEL_8:
    v11 = v3;
    goto LABEL_12;
  }

  v2->_fd = -1;
  v2->_count = 0;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"TRIFileBackedMutableStringArray-"];

  v18 = 0;
  v6 = [MEMORY[0x277D425B8] mkstempWithPrefix:v5 error:&v18];
  v7 = v18;
  if (v6)
  {
    path = [v6 path];
    v9 = unlink([path fileSystemRepresentation]);

    if (v9)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        path2 = [v6 path];
        v15 = __error();
        v16 = strerror(*v15);
        v17 = *__error();
        *buf = 138412802;
        v21 = path2;
        v22 = 2080;
        v23 = v16;
        v24 = 1024;
        v25 = v17;
        _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "Failed to unlink tempfile %@: %s (%d)", buf, 0x1Cu);
      }
    }

    v3->_fd = [v6 fd];

    goto LABEL_8;
  }

  v12 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v7;
    _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "Failed to create tempfile %@XXXXXX for TRIFileBackedMutableStringArray: %@", buf, 0x16u);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  v4.receiver = self;
  v4.super_class = TRIFileBackedMutableStringArray;
  [(TRIFileBackedMutableStringArray *)&v4 dealloc];
}

+ (id)arrayFromDirectory:(id)directory
{
  directoryCopy = directory;
  v6 = objc_opt_new();
  if (v6)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:directoryCopy];
    v9 = [defaultManager enumeratorAtURL:v8 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v10 = objc_autoreleasePoolPush();
    nextObject = [v9 nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      while (1)
      {
        path = [nextObject2 path];
        if (!path)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFileBackedMutableStringArray.m" lineNumber:72 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
        }

        v14 = [v6 addString:path];

        objc_autoreleasePoolPop(v10);
        if (!v14)
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        nextObject2 = [v9 nextObject];
        if (!nextObject2)
        {
          goto LABEL_8;
        }
      }

      v16 = 0;
    }

    else
    {
LABEL_8:
      objc_autoreleasePoolPop(v10);
      v16 = v6;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)addString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = objc_autoreleasePoolPush();
  uTF8String = [stringCopy UTF8String];
  if (uTF8String)
  {
    v7 = uTF8String;
    v8 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:self->_fd closeOnDealloc:0];
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v7 length:strlen(v7) + 1 freeWhenDone:0];
    v14 = 0;
    v10 = [v8 writeData:v9 error:&v14];
    v11 = v14;
    if (v10)
    {
      ++self->_count;
    }

    else
    {
      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v11;
        _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "Failed to append string to TRIFileBackedMutableStringArray: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = stringCopy;
      _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "Failed to add non-UTF-8 string to TRIFileBackedMutableStringArray: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

- (BOOL)enumerateStringsWithBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  memset(&v35, 0, sizeof(v35));
  if (!fstat(self->_fd, &v35))
  {
    st_size = v35.st_size;
    if (v35.st_size)
    {
      v9 = mmap(0, v35.st_size, 1, 1, self->_fd, 0);
      if (v9 == -1)
      {
        v6 = TRILogCategory_ClientFramework();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_3;
        }

        v19 = __error();
        v20 = strerror(*v19);
        v21 = *__error();
        v35.st_dev = 136315394;
        *&v35.st_mode = v20;
        WORD2(v35.st_ino) = 1024;
        *(&v35.st_ino + 6) = v21;
        v22 = "Failed to mmap() tempfile: %s (%d)";
        v23 = &v35;
LABEL_21:
        _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, v22, v23, 0x12u);
        goto LABEL_3;
      }

      v10 = v9;
      v11 = &v9[st_size];
      v12 = v9;
      do
      {
        if (v12 >= v11)
        {
          break;
        }

        v13 = memchr(v12, 0, v11 - v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        LOBYTE(v35.st_dev) = 0;
        v15 = objc_autoreleasePoolPush();
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
        if (!v16)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFileBackedMutableStringArray.m" lineNumber:145 description:@"String somehow did not survive round-trip to UTF-8."];
        }

        blockCopy[2](blockCopy, v16, &v35);

        objc_autoreleasePoolPop(v15);
        v12 = v14 + 1;
      }

      while (LOBYTE(v35.st_dev) != 1);
      if (munmap(v10, st_size))
      {
        v17 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v27 = __error();
          v28 = strerror(*v27);
          v29 = *__error();
          v35.st_dev = 136315394;
          *&v35.st_mode = v28;
          WORD2(v35.st_ino) = 1024;
          *(&v35.st_ino + 6) = v29;
          _os_log_error_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_ERROR, "Failed to munmap TRIFileBackedMutableStringArray buffer: %s (%d)", &v35, 0x12u);
        }
      }
    }

    v7 = 1;
    goto LABEL_17;
  }

  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v24 = __error();
    v25 = strerror(*v24);
    v26 = *__error();
    *buf = 136315394;
    v32 = v25;
    v33 = 1024;
    v34 = v26;
    v22 = "Failed to stat tempfile for TRIFileBackedMutableStringArray enumeration: %s (%d)";
    v23 = buf;
    goto LABEL_21;
  }

LABEL_3:

  v7 = 0;
LABEL_17:

  return v7;
}

@end