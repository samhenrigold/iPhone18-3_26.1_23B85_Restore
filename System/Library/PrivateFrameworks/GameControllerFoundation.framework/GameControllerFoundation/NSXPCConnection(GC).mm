@interface NSXPCConnection(GC)
- (__SecTask)gc_peerTeamIdentifier;
- (id)gc_peerBundleIdentifier;
@end

@implementation NSXPCConnection(GC)

- (id)gc_peerBundleIdentifier
{
  v14 = *MEMORY[0x1E69E9840];
  objc_msgSend_auditToken(self, a2);
  token = v12;
  v2 = SecTaskCreateWithAuditToken(0, &token);
  if (!v2 || (v3 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", 0)) == 0 || (v4 = v3, *token.val = 0, CopyBundleIdentifierAndTeamFromApplicationIdentifier(v3, &token, 0), CFRelease(v4), (bundleIdentifier = *token.val) == 0))
  {
    v6 = proc_pidpath_audittoken(&v12, &token, 0x1000u);
    if (v6 >= 1)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&token length:v6 encoding:4];
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
      if (v8)
      {
        v9 = _CFBundleCopyBundleURLForExecutableURL();
        if (v9)
        {
          v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v9];
          bundleIdentifier = [v10 bundleIdentifier];

          if (bundleIdentifier)
          {

            goto LABEL_12;
          }
        }
      }
    }

    bundleIdentifier = 0;
  }

LABEL_12:

  return bundleIdentifier;
}

- (__SecTask)gc_peerTeamIdentifier
{
  memset(&v6[1], 0, sizeof(audit_token_t));
  objc_msgSend_auditToken(self, a2);
  v6[0] = v6[1];
  v2 = SecTaskCreateWithAuditToken(0, v6);
  if (v2)
  {
    v3 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", 0);
    if (!v3 || (v4 = v3, *v6[0].val = 0, CopyBundleIdentifierAndTeamFromApplicationIdentifier(v3, 0, v6), CFRelease(v4), (v2 = *v6[0].val) == 0))
    {
      v2 = 0;
    }
  }

  return v2;
}

@end