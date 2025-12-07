@interface CFPDPurgeableBuffer
- (BOOL)beginAccessing;
- (CFPDPurgeableBuffer)initWithFileDescriptor:(int)descriptor size:(unint64_t)size;
- (CFPDPurgeableBuffer)initWithPropertyList:(void *)list;
- (void)bytes;
- (void)dealloc;
- (void)endAccessing;
@end

@implementation CFPDPurgeableBuffer

- (void)bytes
{
  if (!self->safe)
  {
    [CFPDPurgeableBuffer bytes];
  }

  handle = self->handle;

  return CFDataGetBytePtr(handle);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  handle = self->handle;
  if (handle)
  {
    CFRelease(handle);
  }

  v4.receiver = self;
  v4.super_class = CFPDPurgeableBuffer;
  [(CFPDPurgeableBuffer *)&v4 dealloc];
}

- (void)endAccessing
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self->usedMalloc && self->safe)
  {
    v5 = 1;
    v3 = *MEMORY[0x1E69E9A60];
    BytePtr = CFDataGetBytePtr(self->handle);
    MEMORY[0x1865E4390](v3, BytePtr, 0, &v5);
    self->safe = 0;
  }
}

- (BOOL)beginAccessing
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->usedMalloc)
  {
    return 1;
  }

  if (self->safe)
  {
    [CFPDPurgeableBuffer beginAccessing];
  }

  v7 = 0;
  v4 = *MEMORY[0x1E69E9A60];
  BytePtr = CFDataGetBytePtr(self->handle);
  v6 = MEMORY[0x1865E4390](v4, BytePtr, 0, &v7);
  result = (v6 | v7) == 0;
  self->safe = result;
  return result;
}

- (CFPDPurgeableBuffer)initWithFileDescriptor:(int)descriptor size:(unint64_t)size
{
  v28 = *MEMORY[0x1E69E9840];
  if (descriptor < 0 || !size)
  {

    return 0;
  }

  v26.receiver = self;
  v26.super_class = CFPDPurgeableBuffer;
  v6 = [(CFPDPurgeableBuffer *)&v26 init];
  v7 = v6;
  if (v6)
  {
    if (size >= *MEMORY[0x1E69E9AC8] >> 2)
    {
      context.version = 0;
      context.info = v6;
      memset(&context.retain, 0, 24);
      context.allocate = allocatePurgeable;
      context.reallocate = 0;
      context.deallocate = deallocatePurgeable;
      context.preferredSize = 0;
      v8 = CFAllocatorCreate(&__kCFAllocatorSystemDefault, &context);
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = CFRetain(&__kCFAllocatorSystemDefault);
      v7->usedMalloc = 1;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    Typed = CFAllocatorAllocateTyped(v8, size, 0x611C48F6uLL);
    if (Typed)
    {
      v10 = Typed;
      FixedMutableWithBuffer = _CFDataCreateFixedMutableWithBuffer(&__kCFAllocatorSystemDefault, size, Typed, v8);
      if (FixedMutableWithBuffer)
      {
        v12 = FixedMutableWithBuffer;
        CFRelease(v8);
        CFDataSetLength(v12, size);
        MutableBytePtr = CFDataGetMutableBytePtr(v12);
        v14 = 0;
        sizeCopy = size;
        do
        {
          v16 = read(descriptor, &MutableBytePtr[v14], sizeCopy);
          v17 = v16;
          if (v16 == -1)
          {
            if (*__error() != 4)
            {
              v22 = *__error();
              bzero(&context, 0x400uLL);
              v23 = fcntl(descriptor, 50, &context);
              v25 = _CFPrefsDaemonLog(v23, v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
              {
                [(CFPDPurgeableBuffer *)&context initWithFileDescriptor:v22 size:v25];
              }

              v7->handle = v12;
              goto LABEL_20;
            }
          }

          else
          {
            v14 += v16;
            sizeCopy -= v16;
          }
        }

        while (v17);
        v7->handle = v12;
        if (v14 == size)
        {
          v7->safe = 1;
          return v7;
        }

        bzero(&context, 0x400uLL);
        v19 = fcntl(descriptor, 50, &context);
        v21 = _CFPrefsDaemonLog(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          [CFPDPurgeableBuffer initWithFileDescriptor:v21 size:?];
        }

        goto LABEL_20;
      }

      CFAllocatorDeallocate(v8, v10);
    }

    CFRelease(v8);
LABEL_20:

    return 0;
  }

  return v7;
}

- (CFPDPurgeableBuffer)initWithPropertyList:(void *)list
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CFPDPurgeableBuffer;
  v4 = [(CFPDPurgeableBuffer *)&v12 init];
  v8 = v4;
  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__CFPDPurgeableBuffer_initWithPropertyList___block_invoke;
    v11[3] = &unk_1E6D7DAD8;
    v11[4] = v4;
    DataUsingExternalBufferAllocator = __CFBinaryPlistCreateDataUsingExternalBufferAllocator(list, 0, 0, v11, 0, v5, v6, v7);
    if (DataUsingExternalBufferAllocator)
    {
      v8->handle = DataUsingExternalBufferAllocator;
      v8->safe = 1;
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

CFAllocatorRef __44__CFPDPurgeableBuffer_initWithPropertyList___block_invoke(uint64_t a1, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 >= *MEMORY[0x1E69E9AC8] >> 2)
  {
    v3 = *(a1 + 32);
    v4.version = 0;
    v4.info = v3;
    memset(&v4.retain, 0, 24);
    v4.allocate = allocatePurgeable;
    v4.reallocate = 0;
    v4.deallocate = deallocatePurgeable;
    v4.preferredSize = 0;
    return CFAllocatorCreate(&__kCFAllocatorSystemDefault, &v4);
  }

  else
  {
    *(*(a1 + 32) + 25) = 1;

    return CFRetain(&__kCFAllocatorSystemDefault);
  }
}

- (void)initWithFileDescriptor:(NSObject *)a3 size:.cold.1(uint64_t a1, int __errnum, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136446466;
  v5 = a1;
  v6 = 2082;
  v7 = strerror(__errnum);
  _os_log_fault_impl(&dword_1830E6000, a3, OS_LOG_TYPE_FAULT, "couldn't read preferences file %{public}s due to %{public}s", &v4, 0x16u);
}

- (void)initWithFileDescriptor:(uint64_t)a1 size:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136380675;
  v3 = a1;
  _os_log_fault_impl(&dword_1830E6000, a2, OS_LOG_TYPE_FAULT, "read an unexpected amount of data from %{private}s. This likely means that someone wrote directly to that file behind cfprefsd's back, which is unsupported.", &v2, 0xCu);
}

@end