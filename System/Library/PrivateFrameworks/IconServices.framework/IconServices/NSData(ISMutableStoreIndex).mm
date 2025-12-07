@interface NSData(ISMutableStoreIndex)
+ (id)_ISMutableStoreIndex_mappedDataWithURL:()ISMutableStoreIndex;
- (uint64_t)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex;
@end

@implementation NSData(ISMutableStoreIndex)

+ (id)_ISMutableStoreIndex_mappedDataWithURL:()ISMutableStoreIndex
{
  path = [a3 path];
  v4 = open_dprotected_np([path UTF8String], 2, 4, 0, 384);
  if (v4 == -1)
  {
    v8 = 0;
  }

  else
  {
    v5 = v4;
    v6 = lseek(v4, 0, 2);
    if (v6)
    {
      v7 = mmap(0, v6, 3, 1, v5, 0);
      if (v7 == -1)
      {
        v6 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    close(v5);
    v8 = 0;
    if (v7 && v6)
    {
      v9 = objc_alloc(MEMORY[0x1E695DEF0]);
      v8 = [v9 initWithBytesNoCopy:v7 length:v6 deallocator:*MEMORY[0x1E696A268]];
    }
  }

  return v8;
}

- (uint64_t)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex
{
  v4 = a3;
  path = [v4 path];
  v6 = [path stringByAppendingPathExtension:@"tmp"];

  v7 = [self length];
  bytes = [self bytes];
  v9 = open_dprotected_np([v6 UTF8String], 1538, 4, 0, 420);
  if (v9 == -1)
  {
    v15 = _ISDefaultLog(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISMutableStoreIndex) _ISMutableStoreIndex_makeBackedByFileAtURL:];
    }

    goto LABEL_14;
  }

  v10 = v9;
  v11 = lseek(v9, v7 - 1, 0);
  if (v11 != v7 - 1 || (v11 = write(v10, "", 1uLL), v11 == -1))
  {
    v14 = _ISDefaultLog(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISMutableStoreIndex) _ISMutableStoreIndex_makeBackedByFileAtURL:];
    }

    goto LABEL_10;
  }

  v12 = mmap(0, v7, 3, 1, v10, 0);
  if (v12)
  {
    v13 = v12;
    if (v12 == -1)
    {
      v14 = _ISDefaultLog(-1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [NSData(ISMutableStoreIndex) _ISMutableStoreIndex_makeBackedByFileAtURL:];
      }

LABEL_10:

      goto LABEL_11;
    }

    v18 = vm_copy(*MEMORY[0x1E69E9A60], bytes, v7, v12);
    if (v18)
    {
      v19 = v18;
      v20 = _ISDefaultLog(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [(NSData(ISMutableStoreIndex) *)v19 _ISMutableStoreIndex_makeBackedByFileAtURL:v20];
      }

LABEL_23:

      munmap(v13, v7);
      goto LABEL_11;
    }

    v21 = mmap(bytes, v7, 3, 17, v10, 0);
    if (v21 != bytes)
    {
      v20 = _ISDefaultLog(v21);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [(NSData(ISMutableStoreIndex) *)v6 _ISMutableStoreIndex_makeBackedByFileAtURL:v20];
      }

      goto LABEL_23;
    }

    munmap(v13, v7);
    close(v10);
    uTF8String = [v6 UTF8String];
    path2 = [v4 path];
    uTF8String2 = [path2 UTF8String];
    rename(uTF8String, uTF8String2, v25);
    LODWORD(uTF8String) = v26;

    if (uTF8String != -1)
    {
      v16 = 1;
      goto LABEL_16;
    }

    v15 = _ISDefaultLog(v27);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(NSData(ISMutableStoreIndex) *)v6 _ISMutableStoreIndex_makeBackedByFileAtURL:v4];
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  close(v10);
LABEL_15:
  v16 = 0;
LABEL_16:

  return v16;
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.1()
{
  __error();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "vm_copy failed: %x", v2, 8u);
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Failed to remap the index buffer to: %@", &v2, 0xCu);
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  __error();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.5()
{
  OUTLINED_FUNCTION_1();
  __error();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.6()
{
  __error();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end