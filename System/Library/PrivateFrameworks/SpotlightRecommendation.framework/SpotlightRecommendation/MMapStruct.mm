@interface MMapStruct
+ (id)mMapStructWithFilepath:(id)filepath;
- (MMapStruct)initWithBuffer:(void *)buffer size:(unint64_t)size;
- (void)dealloc;
@end

@implementation MMapStruct

- (MMapStruct)initWithBuffer:(void *)buffer size:(unint64_t)size
{
  v7.receiver = self;
  v7.super_class = MMapStruct;
  result = [(MMapStruct *)&v7 init];
  if (result)
  {
    result->_buffer = buffer;
    result->_size = size;
  }

  return result;
}

+ (id)mMapStructWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  v4 = open([filepathCopy UTF8String], 0);
  if (v4 < 0)
  {
    v10 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[MMapStruct mMapStructWithFilepath:];
    }
  }

  else
  {
    v5 = v4;
    memset(&v13, 0, sizeof(v13));
    if (fstat(v4, &v13) < 0)
    {
      v11 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[MMapStruct mMapStructWithFilepath:];
      }
    }

    else
    {
      st_size = v13.st_size;
      v7 = mmap(0, v13.st_size, 1, 1, v5, 0);
      if (v7 != -1)
      {
        v8 = v7;
        close(v5);
        v9 = [[MMapStruct alloc] initWithBuffer:v8 size:st_size];
        goto LABEL_14;
      }

      v11 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[MMapStruct mMapStructWithFilepath:];
      }
    }

    close(v5);
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)dealloc
{
  munmap(self->_buffer, self->_size);
  v3.receiver = self;
  v3.super_class = MMapStruct;
  [(MMapStruct *)&v3 dealloc];
}

+ (void)mMapStructWithFilepath:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26B806000, v1, v2, "mmap failed. File path=%@ errno:%d(%s)", v3, v4, v5, v6);
}

+ (void)mMapStructWithFilepath:.cold.2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26B806000, v1, v2, "fstat failed. MMap process stopped. File path=%@ errno:%d(%s)", v3, v4, v5, v6);
}

+ (void)mMapStructWithFilepath:.cold.3()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26B806000, v1, v2, "open file failed. MMap process stopped. File path=%@ errno:%d(%s)", v3, v4, v5, v6);
}

@end