@interface NSXPCConnection(CX)
- (__CFString)cx_bundleIdentifier;
- (id)cx_applicationIdentifier;
- (id)cx_capabilities;
- (id)cx_developerTeamIdentifier;
- (id)cx_processName;
- (uint64_t)cx_clientSandboxCanAccessFileURL:()CX;
- (uint64_t)cx_isProcessOnDemandInstallCapable;
@end

@implementation NSXPCConnection(CX)

- (id)cx_applicationIdentifier
{
  v1 = [self valueForEntitlement:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (__CFString)cx_bundleIdentifier
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

- (id)cx_developerTeamIdentifier
{
  v1 = [self valueForEntitlement:@"com.apple.developer.team-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)cx_processName
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

- (uint64_t)cx_isProcessOnDemandInstallCapable
{
  v1 = [self valueForEntitlement:@"com.apple.developer.on-demand-install-capable"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)cx_capabilities
{
  v2 = [MEMORY[0x1E695DFD8] set];
  v3 = [self valueForEntitlement:@"com.apple.callkit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

    v2 = v4;
  }

  return v2;
}

- (uint64_t)cx_clientSandboxCanAccessFileURL:()CX
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35 = 0u;
  v36 = 0u;
  objc_msgSend_auditToken(self);
  isFileURL = [v4 isFileURL];
  if (isFileURL)
  {
    v34 = 0;
    v6 = [v4 checkResourceIsReachableAndReturnError:&v34];
    v7 = v34;
    v8 = v7;
    if (v6)
    {
      if ([v4 fileSystemRepresentation])
      {
        *buf = v35;
        *&buf[16] = v36;
        v9 = sandbox_check_by_audit_token();
        if (!v9)
        {
          v32 = 1;
          goto LABEL_15;
        }

        v10 = CXDefaultLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *__error();
          v12 = __error();
          v13 = strerror(*v12);
          *buf = 67109378;
          *&buf[4] = v11;
          *&buf[8] = 2080;
          *&buf[10] = v13;
          _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Client sandbox does not have access to the given file! (Error %i: %s)", buf, 0x12u);
        }
      }

      else
      {
        v10 = CXDefaultLog(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(CXServiceClient *)v4 clientCanAccessSandboxFileURL:v10, v26, v27, v28, v29, v30, v31];
        }
      }
    }

    else
    {
      v10 = CXDefaultLog(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CXServiceClient *)v8 clientCanAccessSandboxFileURL:v10, v20, v21, v22, v23, v24, v25];
      }
    }
  }

  else
  {
    v8 = CXDefaultLog(isFileURL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CXServiceClient *)v4 clientCanAccessSandboxFileURL:v8, v14, v15, v16, v17, v18, v19];
    }
  }

  v32 = 0;
LABEL_15:

  return v32;
}

@end