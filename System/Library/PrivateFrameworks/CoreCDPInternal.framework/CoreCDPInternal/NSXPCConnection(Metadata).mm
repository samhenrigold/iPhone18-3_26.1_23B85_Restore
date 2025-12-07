@interface NSXPCConnection(Metadata)
- (__CFString)processName;
- (id)bundleID;
- (void)bundleID;
@end

@implementation NSXPCConnection(Metadata)

- (__CFString)processName
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 648;
  memset(v5, 0, 512);
  dword_28134D0CC = [self processIdentifier];
  v1 = sysctl(processName_name, 4u, v5, &v4, 0, 0);
  v2 = @"unknown";
  if (!v1 && BYTE3(v5[15]))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v5[15] + 3];
  }

  return v2;
}

- (id)bundleID
{
  v14 = *MEMORY[0x277D85DE8];
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
      v7 = _CDPLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138412802;
        *&token.val[1] = self;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v4;
        HIWORD(token.val[5]) = 2112;
        *&token.val[6] = error;
        _os_log_error_impl(&dword_24510B000, v7, OS_LOG_TYPE_ERROR, "%@: Failed to copy signing ID from task (%@) with error (%@)", &token, 0x20u);
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

      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NSXPCConnection(Metadata) *)self bundleID];
      }
    }

    v6 = 0;
    goto LABEL_15;
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(NSXPCConnection(Metadata) *)self bundleID];
  }

  v6 = 0;
LABEL_16:
  if (![v6 length])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"UNKNOWN-%0000x", arc4random_uniform(0xFFFFu)];

    v6 = v10;
  }

  return v6;
}

- (void)bundleID
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to allocate security task (using framework-provided identifier)", &v2, 0xCu);
}

@end