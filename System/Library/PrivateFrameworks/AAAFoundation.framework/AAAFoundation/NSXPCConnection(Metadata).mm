@interface NSXPCConnection(Metadata)
- (__CFString)aaf_processName;
- (id)aaf_bundleID;
- (void)aaf_bundleID;
@end

@implementation NSXPCConnection(Metadata)

- (__CFString)aaf_processName
{
  v13 = *MEMORY[0x1E69E9840];
  processIdentifier = [self processIdentifier];
  if (proc_name(processIdentifier, buffer, 0x20u) >= 1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = buffer;
LABEL_3:
    v4 = [v2 stringWithUTF8String:v3];
    goto LABEL_5;
  }

  *v9 = 0xE00000001;
  v10 = 1;
  v11 = processIdentifier;
  v7 = 648;
  memset(v8, 0, 512);
  v5 = sysctl(v9, 4u, v8, &v7, 0, 0);
  v4 = 0;
  if (!v5)
  {
    if (BYTE3(v8[15]))
    {
      v2 = MEMORY[0x1E696AEC0];
      v3 = &v8[15] + 3;
      goto LABEL_3;
    }

    v4 = @"exited?";
  }

LABEL_5:

  return v4;
}

- (id)aaf_bundleID
{
  v14 = *MEMORY[0x1E69E9840];
  objc_msgSend_auditToken(self, a2);
  v3 = SecTaskCreateWithAuditToken(0, &token);
  if (v3)
  {
    v4 = v3;
    error = 0;
    v5 = SecTaskCopySigningIdentifier(v3, &error);
    v6 = v5;
    if (error)
    {
      v7 = _AAFLogSystem(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138412802;
        *&token.val[1] = self;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v4;
        HIWORD(token.val[5]) = 2112;
        *&token.val[6] = error;
        _os_log_error_impl(&dword_1C8644000, v7, OS_LOG_TYPE_ERROR, "%@: Failed to copy signing ID from task (%@) with error (%@)", &token, 0x20u);
      }

      CFRelease(error);
      if (!v6)
      {
        goto LABEL_15;
      }

      CFRelease(v6);
    }

    else
    {
      if (v5)
      {
LABEL_15:
        CFRelease(v4);
        goto LABEL_16;
      }

      v9 = _AAFLogSystem(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NSXPCConnection(Metadata) *)self aaf_bundleID];
      }
    }

    v6 = 0;
    goto LABEL_15;
  }

  v8 = _AAFLogSystem(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(NSXPCConnection(Metadata) *)self aaf_bundleID];
  }

  v6 = 0;
LABEL_16:
  if (![v6 length])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN-%0000x", arc4random_uniform(0xFFFFu)];

    v6 = v10;
  }

  return v6;
}

- (void)aaf_bundleID
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to allocate security task (using framework-provided identifier)", &v2, 0xCu);
}

@end