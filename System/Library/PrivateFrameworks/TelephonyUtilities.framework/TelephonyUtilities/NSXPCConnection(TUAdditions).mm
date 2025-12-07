@interface NSXPCConnection(TUAdditions)
- (uint64_t)tu_clientSandboxCanAccessFileURL:()TUAdditions;
@end

@implementation NSXPCConnection(TUAdditions)

- (uint64_t)tu_clientSandboxCanAccessFileURL:()TUAdditions
{
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  objc_msgSend_auditToken(self);
  isFileURL = [v4 isFileURL];
  if (isFileURL)
  {
    v31 = 0;
    v6 = [v4 checkResourceIsReachableAndReturnError:&v31];
    v7 = v31;
    v8 = v7;
    if (v6)
    {
      if ([v4 fileSystemRepresentation])
      {
        v9 = sandbox_check_by_audit_token();
        if (!v9)
        {
          v29 = 1;
          goto LABEL_15;
        }

        v10 = TUDefaultLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [NSXPCConnection(TUAdditions) tu_clientSandboxCanAccessFileURL:v10];
        }
      }

      else
      {
        v10 = TUDefaultLog(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(NSXPCConnection(TUAdditions) *)v4 tu_clientSandboxCanAccessFileURL:v10, v23, v24, v25, v26, v27, v28];
        }
      }
    }

    else
    {
      v10 = TUDefaultLog(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(NSXPCConnection(TUAdditions) *)v8 tu_clientSandboxCanAccessFileURL:v10, v17, v18, v19, v20, v21, v22];
      }
    }
  }

  else
  {
    v8 = TUDefaultLog(isFileURL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NSXPCConnection(TUAdditions) *)v4 tu_clientSandboxCanAccessFileURL:v8, v11, v12, v13, v14, v15, v16];
    }
  }

  v29 = 0;
LABEL_15:

  return v29;
}

- (void)tu_clientSandboxCanAccessFileURL:()TUAdditions .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "URL is not a file system URL: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)tu_clientSandboxCanAccessFileURL:()TUAdditions .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "URL resource is not reachable: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)tu_clientSandboxCanAccessFileURL:()TUAdditions .cold.3(NSObject *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&dword_1956FD000, a1, OS_LOG_TYPE_ERROR, "Client sandbox does not have access to the given file! (Error %i: %s)", v5, 0x12u);
}

- (void)tu_clientSandboxCanAccessFileURL:()TUAdditions .cold.4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "Could not get file system representation for URL: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end