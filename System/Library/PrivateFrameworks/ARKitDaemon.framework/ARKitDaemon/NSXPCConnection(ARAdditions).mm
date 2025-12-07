@interface NSXPCConnection(ARAdditions)
- (id)ar_entitlementsArray;
- (id)ar_valueForEntitlement:()ARAdditions;
- (uint64_t)ar_BOOLeanValueForEntitlement:()ARAdditions;
- (uint64_t)ar_hasPrivateAREntitlement:()ARAdditions;
- (uint64_t)ar_processBundleIdentifier;
- (uint64_t)ar_processName;
- (void)ar_remoteProcessIdentifier;
@end

@implementation NSXPCConnection(ARAdditions)

- (void)ar_remoteProcessIdentifier
{
  result = [self processIdentifier];
  if (!result)
  {

    return getpid();
  }

  return result;
}

- (uint64_t)ar_processBundleIdentifier
{
  ar_remoteProcessIdentifier = [self ar_remoteProcessIdentifier];

  return MEMORY[0x282143728](ar_remoteProcessIdentifier);
}

- (uint64_t)ar_processName
{
  ar_remoteProcessIdentifier = [self ar_remoteProcessIdentifier];

  return MEMORY[0x282138400](ar_remoteProcessIdentifier);
}

- (id)ar_valueForEntitlement:()ARAdditions
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self processIdentifier])
  {
    v5 = *MEMORY[0x277CBECE8];
    objc_msgSend_auditToken(self);
    v6 = SecTaskCreateWithAuditToken(v5, &token);
  }

  else
  {
    v6 = SecTaskCreateFromSelf(0);
  }

  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  error = 0;
  v8 = SecTaskCopyValueForEntitlement(v6, v4, &error);
  v9 = v8;
  if (error)
  {
    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [NSXPCConnection(ARAdditions) ar_valueForEntitlement:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_6;
    v11 = _ARLogGeneral_3(v8);
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        ar_processName = [self ar_processName];
        ar_remoteProcessIdentifier = [self ar_remoteProcessIdentifier];
        v17 = CFErrorCopyDescription(error);
        token.val[0] = 138544386;
        *&token.val[1] = v14;
        LOWORD(token.val[3]) = 2048;
        *(&token.val[3] + 2) = self;
        HIWORD(token.val[5]) = 2114;
        *&token.val[6] = ar_processName;
        v26 = 1026;
        v27 = ar_remoteProcessIdentifier;
        v28 = 2112;
        v29 = v17;
        v18 = "%{public}@ <%p>: Error retrieving entitlements for process %{public}@ (%{public}u): %@";
        v19 = v12;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_23D391000, v19, v20, v18, &token, 0x30u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v14 = NSStringFromClass(v21);
      ar_processName = [self ar_processName];
      ar_remoteProcessIdentifier2 = [self ar_remoteProcessIdentifier];
      v17 = CFErrorCopyDescription(error);
      token.val[0] = 138544386;
      *&token.val[1] = v14;
      LOWORD(token.val[3]) = 2048;
      *(&token.val[3] + 2) = self;
      HIWORD(token.val[5]) = 2114;
      *&token.val[6] = ar_processName;
      v26 = 1026;
      v27 = ar_remoteProcessIdentifier2;
      v28 = 2112;
      v29 = v17;
      v18 = "Error: %{public}@ <%p>: Error retrieving entitlements for process %{public}@ (%{public}u): %@";
      v19 = v12;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    CFRelease(error);
  }

  CFRelease(v7);
LABEL_17:

  return v9;
}

- (id)ar_entitlementsArray
{
  v1 = [self ar_valueForEntitlement:@"com.apple.private.security.arkit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (uint64_t)ar_hasPrivateAREntitlement:()ARAdditions
{
  v4 = a3;
  ar_entitlementsArray = [self ar_entitlementsArray];
  v6 = [ar_entitlementsArray containsObject:v4];

  return v6;
}

- (uint64_t)ar_BOOLeanValueForEntitlement:()ARAdditions
{
  v1 = [self ar_valueForEntitlement:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end