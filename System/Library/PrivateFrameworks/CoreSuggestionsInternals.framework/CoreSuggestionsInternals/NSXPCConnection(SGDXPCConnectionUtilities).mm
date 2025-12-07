@interface NSXPCConnection(SGDXPCConnectionUtilities)
- (id)sgd_clientName;
@end

@implementation NSXPCConnection(SGDXPCConnectionUtilities)

- (id)sgd_clientName
{
  v22 = *MEMORY[0x277D85DE8];
  objc_msgSend_auditToken(self, a2);
  v3 = SecTaskCreateWithAuditToken(0, &token);
  if (!v3 || (v4 = v3, v5 = SecTaskCopyValueForEntitlement(v3, @"application-identifier", 0), CFRelease(v4), !v5))
  {
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    memset(&token, 0, sizeof(token));
    if (proc_name([self processIdentifier], &token, 0xFFu) <= 0 || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", &token), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", objc_msgSend(self, "processIdentifier")];
    }

    v5 = v6;
  }

  return v5;
}

@end