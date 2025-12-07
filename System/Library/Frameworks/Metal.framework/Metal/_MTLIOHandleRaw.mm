@interface _MTLIOHandleRaw
- (_MTLIOHandleRaw)initWithDevice:(id)device path:(const char *)path error:(id *)error uncached:(BOOL)uncached;
- (void)dealloc;
- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size;
- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size needsDecompress:(BOOL *)decompress;
@end

@implementation _MTLIOHandleRaw

- (_MTLIOHandleRaw)initWithDevice:(id)device path:(const char *)path error:(id *)error uncached:(BOOL)uncached
{
  uncachedCopy = uncached;
  v31[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  v25.receiver = self;
  v25.super_class = _MTLIOHandleRaw;
  v10 = [(_MTLObjectWithLabel *)&v25 init];
  if (v10)
  {
    v10->_device = device;
    v11 = open(path, 0);
    v10->_fd = v11;
    if (v11 < 0)
    {
      if (error)
      {
        v12 = MEMORY[0x1E696ABC0];
        v13 = *__error();
        v30 = *MEMORY[0x1E696A578];
        v14 = MEMORY[0x1E696AEC0];
        v15 = __error();
        v31[0] = [v14 stringWithFormat:@"%s", strerror(*v15)];
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        v17 = v12;
        v18 = v13;
LABEL_19:
        *error = [v17 errorWithDomain:@"MTLIOError" code:v18 userInfo:v16];
      }
    }

    else if (fstat(v11, &v24) < 0)
    {
      if (error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A578];
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Internal Error"];
        v20 = MEMORY[0x1E695DF20];
        v21 = &v29;
        v22 = &v28;
LABEL_18:
        v16 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
        v17 = v19;
        v18 = 2;
        goto LABEL_19;
      }
    }

    else
    {
      if ((v24.st_mode & 0xF000) == 0x8000)
      {
        if (uncachedCopy)
        {
          fcntl(v10->_fd, 48, 1);
        }

        if (MTLTraceEnabled())
        {
          kdebug_trace_string();
          if (MTLTraceEnabled())
          {
            [(_MTLIOHandleRaw *)v10 globalTraceObjectID];
            [device registryID];
            kdebug_trace();
          }
        }

        return v10;
      }

      if (error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v26 = *MEMORY[0x1E696A578];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Not a regular file"];
        v20 = MEMORY[0x1E695DF20];
        v21 = &v27;
        v22 = &v26;
        goto LABEL_18;
      }
    }

    return 0;
  }

  return v10;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  v4.receiver = self;
  v4.super_class = _MTLIOHandleRaw;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size
{
  if (pread(self->_fd, stagingBuffer, buffer, offset) >= buffer)
  {
    return stagingBuffer;
  }

  else
  {
    return 0;
  }
}

- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size needsDecompress:(BOOL *)decompress
{
  *decompress = 0;
  if (pread(self->_fd, stagingBuffer, buffer, offset) >= buffer)
  {
    return stagingBuffer;
  }

  else
  {
    return 0;
  }
}

@end