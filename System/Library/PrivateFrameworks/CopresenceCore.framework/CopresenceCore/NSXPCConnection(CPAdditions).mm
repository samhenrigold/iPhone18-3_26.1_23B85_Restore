@interface NSXPCConnection(CPAdditions)
- (__CFString)cp_clientProcessBundleIdentifier;
- (id)cp_clientProcessName;
- (uint64_t)cp_clientSandboxCanAccessFileURL:()CPAdditions;
@end

@implementation NSXPCConnection(CPAdditions)

- (id)cp_clientProcessName
{
  v4 = *MEMORY[0x1E69E9840];
  if (proc_name([self processIdentifier], &v3, 0x100u) < 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v3];
  }

  return v1;
}

- (__CFString)cp_clientProcessBundleIdentifier
{
  memset(&v6[1], 0, sizeof(audit_token_t));
  objc_msgSend_auditToken(self, a2);
  v6[0] = v6[1];
  v2 = SecTaskCreateWithAuditToken(0, v6);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopySigningIdentifier(v2, 0);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)cp_clientSandboxCanAccessFileURL:()CPAdditions
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  objc_msgSend_auditToken(self);
  isFileURL = [v4 isFileURL];
  if (isFileURL)
  {
    v13 = 0;
    v6 = [v4 checkResourceIsReachableAndReturnError:&v13];
    v7 = v13;
    v8 = v7;
    if (v6)
    {
      if ([v4 fileSystemRepresentation])
      {
        v9 = sandbox_check_by_audit_token();
        if (!v9)
        {
          v11 = 1;
          goto LABEL_15;
        }

        v10 = CPDefaultLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:v10];
        }
      }

      else
      {
        v10 = CPDefaultLog(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:];
        }
      }
    }

    else
    {
      v10 = CPDefaultLog(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:];
      }
    }
  }

  else
  {
    v8 = CPDefaultLog(isFileURL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:];
    }
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (void)cp_clientSandboxCanAccessFileURL:()CPAdditions .cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AEB26000, v0, v1, "%s URL is not a file system URL: %@", v2, v3, v4, v5, v6);
}

- (void)cp_clientSandboxCanAccessFileURL:()CPAdditions .cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AEB26000, v0, v1, "%s URL resource is not reachable: %@", v2, v3, v4, v5, v6);
}

- (void)cp_clientSandboxCanAccessFileURL:()CPAdditions .cold.3(NSObject *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5 = 136315650;
  v6 = "[NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:]";
  v7 = 1024;
  v8 = v2;
  v9 = 2080;
  v10 = v4;
  _os_log_error_impl(&dword_1AEB26000, a1, OS_LOG_TYPE_ERROR, "%s Client sandbox does not have access to the given file! (Error %i: %s)", &v5, 0x1Cu);
}

- (void)cp_clientSandboxCanAccessFileURL:()CPAdditions .cold.4()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AEB26000, v0, v1, "%s Could not get file system representation for URL: %@", v2, v3, v4, v5, v6);
}

@end