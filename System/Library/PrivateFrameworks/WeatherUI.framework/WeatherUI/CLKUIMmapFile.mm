@interface CLKUIMmapFile
+ (CLKUIMmapFile)mmapFileWithPath:(id)path;
- (CLKUIMmapFile)initWithPath:(id)path descriptor:(int)descriptor length:(unint64_t)length bytes:(const void *)bytes;
- (void)dealloc;
@end

@implementation CLKUIMmapFile

+ (CLKUIMmapFile)mmapFileWithPath:(id)path
{
  pathCopy = path;
  v4 = open([pathCopy UTF8String], 0, 0);
  if ((v4 & 0x80000000) != 0)
  {
    v9 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CLKUIMmapFile *)pathCopy mmapFileWithPath:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  else
  {
    v5 = v4;
    memset(&v29, 0, sizeof(v29));
    fstat(v4, &v29);
    st_size = v29.st_size;
    if (v29.st_size)
    {
      v7 = mmap(0, v29.st_size, 1, 1, v5, 0);
      if (v7 != -1)
      {
        v8 = [[CLKUIMmapFile alloc] initWithPath:pathCopy descriptor:v5 length:st_size bytes:v7];
        goto LABEL_12;
      }

      v9 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CLKUIMmapFile *)pathCopy mmapFileWithPath:v9, v22, v23, v24, v25, v26, v27];
      }
    }

    else
    {
      v9 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CLKUIMmapFile *)pathCopy mmapFileWithPath:v9, v16, v17, v18, v19, v20, v21];
      }
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (CLKUIMmapFile)initWithPath:(id)path descriptor:(int)descriptor length:(unint64_t)length bytes:(const void *)bytes
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = CLKUIMmapFile;
  v12 = [(CLKUIMmapFile *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_path, path);
    v13->_descriptor = descriptor;
    v13->_length = length;
    v13->_bytes = bytes;
  }

  return v13;
}

- (void)dealloc
{
  munmap(self->_bytes, self->_length);
  close(self->_descriptor);
  v3.receiver = self;
  v3.super_class = CLKUIMmapFile;
  [(CLKUIMmapFile *)&v3 dealloc];
}

+ (void)mmapFileWithPath:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_4_4(&dword_1BC940000, a2, a3, "Failed to mmap image %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)mmapFileWithPath:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_4_4(&dword_1BC940000, a2, a3, "Invalid file length %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)mmapFileWithPath:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_4_4(&dword_1BC940000, a2, a3, "Failed to open image %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end