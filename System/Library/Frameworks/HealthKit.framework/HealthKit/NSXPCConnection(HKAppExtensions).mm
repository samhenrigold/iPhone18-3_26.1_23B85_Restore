@interface NSXPCConnection(HKAppExtensions)
- (BOOL)hk_isAppExtension;
@end

@implementation NSXPCConnection(HKAppExtensions)

- (BOOL)hk_isAppExtension
{
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_auditToken(self, a2);
  v3 = [_HKXPCAuditToken signingIdentifierFromAuditToken:buf];
  if (v3)
  {
    v12 = 0;
    v4 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v3 error:&v12];
    v5 = v12;
    v6 = v5;
    if (v5)
    {
      v7 = [v5 hk_isErrorInDomain:*MEMORY[0x1E696A768] code:-10814];
      if ((v7 & 1) == 0)
      {
        _HKInitializeLogging(v7, v8);
        v9 = HKLogDefault;
        if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          selfCopy = self;
          v15 = 2114;
          v16 = v3;
          v17 = 2114;
          v18 = v6;
          _os_log_error_impl(&dword_19197B000, v9, OS_LOG_TYPE_ERROR, "Failed to create bundle record for connection %{public}@ with bundleID %{public}@, error %{public}@", buf, 0x20u);
        }
      }
    }

    v10 = v4 != 0;
  }

  else
  {
    v6 = 0;
    v10 = 0;
  }

  return v10;
}

@end