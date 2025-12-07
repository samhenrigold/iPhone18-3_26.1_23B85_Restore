@interface NSURL(DESandboxExtension)
- (id)generateSandboxExtensionForProcess:()DESandboxExtension;
- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:;
@end

@implementation NSURL(DESandboxExtension)

- (id)generateSandboxExtensionForProcess:()DESandboxExtension
{
  v4 = Log_3(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [NSURL(DESandboxExtension) generateSandboxExtensionForProcess:self];
  }

  fileSystemRepresentation = [self fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    v9 = Log_3(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem _generateSandboxExtensionTokenForPID:self];
    }

    goto LABEL_17;
  }

  v6 = fileSystemRepresentation;
  v16 = 0;
  v7 = [self checkResourceIsReachableAndReturnError:&v16];
  v8 = v16;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    v14 = Log_3(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(DESandboxExtension) *)v6 generateSandboxExtensionForProcess:v9];
    }

    goto LABEL_17;
  }

  v10 = sandbox_extension_issue_file_to_process_by_pid();
  v11 = Log_3(v10);
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NSURL(DESandboxExtension) generateSandboxExtensionForProcess:self];
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [NSURL(DESandboxExtension) generateSandboxExtensionForProcess:self];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  free(v10);
LABEL_18:

  return v13;
}

- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    [v6 UTF8String];
    v8 = sandbox_extension_consume();
    if (v8 == -1)
    {
      v16 = MEMORY[0x277CCACA8];
      path = [self path];
      v18 = __error();
      v19 = strerror(*v18);
      v20 = "Unknown";
      if (v19)
      {
        v20 = v19;
      }

      v13 = [v16 stringWithFormat:@"Failed to consume extension token for [%@] due to error: %s", path, v20];

      v21 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25 = v13;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v23 = [v21 errorWithDomain:@"DEExtensionErrorDomain" code:0 userInfo:v22];

      v7[2](v7, v23);
    }

    else
    {
      v9 = Log_3(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [NSURL(DESandboxExtension) accessWithSandboxExtension:self inBlock:?];
      }

      v7[2](v7, 0);
      v10 = sandbox_extension_release();
      v11 = v10;
      v12 = Log_3(v10);
      v13 = v12;
      if (v11 == -1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [NSURL(DESandboxExtension) accessWithSandboxExtension:self inBlock:?];
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NSURL(DESandboxExtension) accessWithSandboxExtension:self inBlock:?];
      }
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"nil sandbox extension token. Do not try attempt to consume a token more than once.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v13 = [v14 errorWithDomain:@"DEExtensionErrorDomain" code:0 userInfo:v15];

    v7[2](v7, v13);
  }
}

- (void)generateSandboxExtensionForProcess:()DESandboxExtension .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x1Cu);
}

- (void)generateSandboxExtensionForProcess:()DESandboxExtension .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)generateSandboxExtensionForProcess:()DESandboxExtension .cold.3(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

- (void)generateSandboxExtensionForProcess:()DESandboxExtension .cold.4(void *a1)
{
  v1 = [a1 path];
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:.cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:.cold.2(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:.cold.3(void *a1)
{
  v1 = [a1 path];
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end