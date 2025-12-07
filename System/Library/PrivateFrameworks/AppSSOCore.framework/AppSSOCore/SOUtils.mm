@interface SOUtils
+ (BOOL)auditTokenFromData:(id)data auditToken:(id *)token;
+ (BOOL)checkEntitlementFromXPC:(id)c entitlement:(id)entitlement;
+ (BOOL)checkSignatureOfFile:(id)file teamIdentifier:(id *)identifier trusted:(BOOL *)trusted signedBySet:(int64_t *)set certificates:(id *)certificates error:(id *)error;
+ (BOOL)currentProcessIsSandboxed;
+ (BOOL)isAppSSOServiceAvailable;
+ (BOOL)isInternalBuild;
+ (BOOL)sandboxAllowsXPC:(const char *)c;
+ (id)bundleIdentifierFromAuditToken:(id *)token;
+ (id)currentProcessContainerPath;
+ (id)currentProcessName;
+ (id)mapArray:(id)array usingBlock:(id)block;
+ (id)processNameForPID:(int)d;
+ (id)signatureSetToString:(int64_t)string;
+ (id)teamIdentifierFromAuditToken:(id *)token;
+ (int)mmapFile:(id)file mode:(int64_t)mode mmapData:(id *)data;
+ (int)pidFromAuditToken:(id *)token;
+ (void)currentProcessIsSandboxed;
+ (void)unmapFile:(int)file data:(id)data;
@end

@implementation SOUtils

+ (id)currentProcessName
{
  v3 = getpid();

  return [self processNameForPID:v3];
}

void __35__SOUtils_isAppSSOServiceAvailable__block_invoke()
{
  sp = 0;
  v0 = bootstrap_look_up(*MEMORY[0x1E69E99F8], [@"com.apple.AppSSO.service-xpc" UTF8String], &sp);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sp == 0;
  }

  if (v1)
  {
    if ((isAppSSOServiceAvailable_appSSOServiceAvailable & 1) == 0)
    {
      v2 = v0;
      v3 = SO_LOG_SOUtils();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __35__SOUtils_isAppSSOServiceAvailable__block_invoke_cold_1(v2, v3);
      }
    }
  }

  else
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], sp);
    isAppSSOServiceAvailable_appSSOServiceAvailable = 1;
  }
}

+ (BOOL)isAppSSOServiceAvailable
{
  if (isAppSSOServiceAvailable_onceToken != -1)
  {
    +[SOUtils isAppSSOServiceAvailable];
  }

  return isAppSSOServiceAvailable_appSSOServiceAvailable;
}

+ (id)currentProcessContainerPath
{
  if (currentProcessContainerPath_onceToken != -1)
  {
    +[SOUtils currentProcessContainerPath];
  }

  v3 = currentProcessContainerPath_containerPath;

  return v3;
}

void __38__SOUtils_currentProcessContainerPath__block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  getpid();
  if (sandbox_container_path_for_pid())
  {
    if (*__error() == 45)
    {
      goto LABEL_7;
    }

    v0 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __38__SOUtils_currentProcessContainerPath__block_invoke_cold_1();
    }
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    v0 = currentProcessContainerPath_containerPath;
    currentProcessContainerPath_containerPath = v1;
  }

LABEL_7:
  v2 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__SOUtils_currentProcessContainerPath__block_invoke_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

+ (BOOL)currentProcessIsSandboxed
{
  getpid();
  v2 = sandbox_check();
  v3 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SOUtils *)v2 != 0 currentProcessIsSandboxed:v3];
  }

  return v2 != 0;
}

+ (int)mmapFile:(id)file mode:(int64_t)mode mmapData:(id *)data
{
  fileCopy = file;
  *__error() = 0;
  if (mode == 1)
  {
    v8 = 514;
  }

  else
  {
    v8 = 0;
  }

  v9 = shm_open([fileCopy UTF8String], v8, 511);
  if (v9 == -1)
  {
    v13 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SOUtils mmapFile:mode:mmapData:];
    }

    goto LABEL_15;
  }

  v10 = v9;
  if (mode == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  ftruncate(v9, 4);
  v12 = mmap(0, 4uLL, v11, 1, v10, 0);
  if (v12 == -1)
  {
    close(v10);
    v13 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SOUtils mmapFile:mode:mmapData:];
    }

LABEL_15:

    v10 = -1;
    goto LABEL_16;
  }

  if (data)
  {
    *data = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v12 length:4 freeWhenDone:0];
  }

LABEL_16:

  return v10;
}

+ (void)unmapFile:(int)file data:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];

  if (munmap(bytes, v7) == -1)
  {
    v8 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SOUtils unmapFile:data:];
    }
  }

  if (close(file) == -1)
  {
    v9 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SOUtils unmapFile:data:];
    }
  }
}

+ (BOOL)checkEntitlementFromXPC:(id)c entitlement:(id)entitlement
{
  v17 = *MEMORY[0x1E69E9840];
  cCopy = c;
  entitlementCopy = entitlement;
  if (cCopy)
  {
    v7 = [cCopy valueForEntitlement:entitlementCopy];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v9 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543874;
    v12 = cCopy;
    v13 = 2114;
    v14 = entitlementCopy;
    v15 = 1024;
    v16 = bOOLValue;
    _os_log_debug_impl(&dword_1CA238000, v9, OS_LOG_TYPE_DEBUG, "checkEntitlementFromXPC: %{public}@, %{public}@ = %d", &v11, 0x1Cu);
  }

  return bOOLValue;
}

+ (BOOL)sandboxAllowsXPC:(const char *)c
{
  if (c)
  {
    getpid();
    v4 = sandbox_check() == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SOUtils *)c sandboxAllowsXPC:v4, v5];
  }

  return v4;
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[SOUtils isInternalBuild];
  }

  return isInternalBuild_internalBuild;
}

void __26__SOUtils_isInternalBuild__block_invoke()
{
  isInternalBuild_internalBuild = os_variant_has_internal_content();
  v0 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __26__SOUtils_isInternalBuild__block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

+ (id)mapArray:(id)array usingBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  blockCopy = block;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = blockCopy[2](blockCopy, *(*(&v15 + 1) + 8 * i));
        [array addObject:{v13, v15}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return array;
}

+ (BOOL)auditTokenFromData:(id)data auditToken:(id *)token
{
  dataCopy = data;
  v6 = dataCopy;
  if (!dataCopy)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if ([dataCopy length] != 32)
  {
    v10 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SOUtils auditTokenFromData:v6 auditToken:?];
    }

    goto LABEL_9;
  }

  if (token)
  {
    bytes = [v6 bytes];
    v8 = bytes[1];
    *token->var0 = *bytes;
    *&token->var0[4] = v8;
  }

  v9 = 1;
LABEL_10:

  return v9;
}

+ (int)pidFromAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *v5.val = *token->var0;
  *&v5.val[4] = v3;
  return audit_token_to_pid(&v5);
}

+ (id)bundleIdentifierFromAuditToken:(id *)token
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (!v5)
  {
    v11 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: CPCopyBundleIdentifierAndTeamFromAuditToken() failed", &token, 2u);
    }

    goto LABEL_18;
  }

  v6 = v5;
  if ((SecTaskGetCodeSignStatus(v5) & 0x4000) != 0)
  {
    CFRelease(v6);
    error = 0;
    v12 = *&token->var0[4];
    *token.val = *token->var0;
    *&token.val[4] = v12;
    if (CPCopyBundleIdentifierAndTeamFromAuditToken())
    {
      v13 = error;
      v9 = SO_LOG_SOUtils();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(SOUtils *)error bundleIdentifierFromAuditToken:v9, v14, v15, v16, v17, v18, v19];
      }

      goto LABEL_24;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_25;
  }

  v7 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SOUtils bundleIdentifierFromAuditToken:v7];
  }

  v8 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(token.val[0]) = 0;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: using SecTaskCopySigningIdentifier()", &token, 2u);
  }

  error = 0;
  v9 = SecTaskCopySigningIdentifier(v6, &error);
  CFRelease(v6);
  if (error)
  {
    v10 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      token.val[0] = 138543362;
      *&token.val[1] = error;
      _os_log_impl(&dword_1CA238000, v10, OS_LOG_TYPE_INFO, "bundleIdentifier: SecTaskCopySigningIdentifier() failed %{public}@", &token, 0xCu);
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  else if (v9)
  {
    v20 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      token.val[0] = 138543362;
      *&token.val[1] = v9;
      _os_log_impl(&dword_1CA238000, v20, OS_LOG_TYPE_INFO, "bundleIdentifier: %{public}@", &token, 0xCu);
    }

    v13 = v9;
    goto LABEL_24;
  }

  v13 = 0;
LABEL_24:

LABEL_25:

  return v13;
}

+ (id)processNameForPID:(int)d
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = buffer;
  bzero(buffer, 0x400uLL);
  v5 = proc_name(d, buffer, 0x400u);
  if ((v5 & 0x80000000) == 0)
  {
    buffer[v5] = 0;
    if (v5 >= 0xF)
    {
      v4 = buffer;
      v6 = proc_pidpath(d, buffer, 0x400u);
      if ((v6 & 0x80000000) == 0)
      {
        buffer[v6] = 0;
        v7 = strrchr(buffer, 47);
        if (v7)
        {
          v4 = v7 + 1;
        }
      }
    }
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];

  return v8;
}

+ (id)signatureSetToString:(int64_t)string
{
  stringCopy = string;
  string = [MEMORY[0x1E696AD60] string];
  v5 = string;
  if (stringCopy)
  {
    [string appendString:{@"by apple, "}];
    if ((stringCopy & 2) == 0)
    {
LABEL_3:
      if ((stringCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((stringCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 appendString:{@"by mac app store, "}];
  if ((stringCopy & 4) == 0)
  {
LABEL_4:
    if ((stringCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v5 appendString:{@"by identified developer, "}];
  if ((stringCopy & 8) == 0)
  {
LABEL_5:
    if ((stringCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 appendString:{@"by distribution certificate, "}];
  if ((stringCopy & 0x10) == 0)
  {
LABEL_6:
    if ((stringCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v5 appendString:{@"by iphone distribution certificate, "}];
  if ((stringCopy & 0x20) != 0)
  {
LABEL_7:
    [v5 appendString:{@"by word wide developer certificate, "}];
  }

LABEL_8:

  return v5;
}

+ (BOOL)checkSignatureOfFile:(id)file teamIdentifier:(id *)identifier trusted:(BOOL *)trusted signedBySet:(int64_t *)set certificates:(id *)certificates error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v15 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "+[SOUtils checkSignatureOfFile:teamIdentifier:trusted:signedBySet:certificates:error:]";
    v32 = 2114;
    v33 = fileCopy;
    v34 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v15, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  information = 0;
  *buf = 0;
  cf = 0;
  if (!fileCopy)
  {
    if (error)
    {
      [SOErrorHelper parameterErrorWithMessage:@"no file"];
      v16 = 0;
      v18 = 0;
      *error = v19 = 0;
    }

    else
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
    }

    goto LABEL_25;
  }

  if (trusted)
  {
    *trusted = 0;
  }

  if (set)
  {
    *set = 0;
  }

  if (error)
  {
    *error = 0;
  }

  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:fileCopy];
  v17 = SecStaticCodeCreateWithPath(v16, 0, buf);
  if (v17)
  {
    if (error)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"SecStaticCodeCreateWithPathAndAttributes() failed with %d", v17];
      v21 = LABEL_18:;
      *error = [SOErrorHelper internalErrorWithMessage:v21];
    }
  }

  else
  {
    v20 = SecCodeCopySigningInformation(*buf, 2u, &information);
    if (!v20)
    {
      v18 = information;
      information = 0;
      if (identifier)
      {
        *identifier = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x1E697B080]];
      }

      if (certificates)
      {
        *certificates = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x1E697B040]];
      }

      if (set)
      {
        if (_isStaticCodeSignedBy(*buf, 1, error))
        {
          *set |= 1uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 2, error))
        {
          *set |= 2uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 4, error))
        {
          *set |= 4uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 8, error))
        {
          *set |= 8uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 16, error))
        {
          *set |= 4uLL;
        }

        if (_isStaticCodeSignedBy(*buf, 32, error))
        {
          *set |= 0x20uLL;
        }
      }

      v24 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x1E697B090]];

      if (v24)
      {
        v25 = SecTrustEvaluateWithError(v24, &cf);
        v22 = cf;
        if (error && cf)
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecTrustEvaluateWithError(), trust: %@ failed with %@", v24, cf];
          *error = [SOErrorHelper internalErrorWithMessage:v26];

          v22 = cf;
        }

        v19 = v22 == 0;
      }

      else if (error)
      {
        v27 = [SOErrorHelper internalErrorWithMessage:@"no kSecCodeInfoTrust in signing information"];
        v28 = v27;
        v22 = 0;
        v25 = 0;
        v19 = 0;
        *error = v27;
      }

      else
      {
        v22 = 0;
        v25 = 0;
        v19 = 0;
      }

      if (trusted)
      {
        *trusted = v25;
      }

      goto LABEL_20;
    }

    if (error)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"SecCodeCopySigningInformation() failed with %d", v20];
      goto LABEL_18;
    }
  }

  v22 = 0;
  v19 = 0;
  v18 = 0;
LABEL_20:
  if (*buf)
  {
    CFRelease(*buf);
    v22 = cf;
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_25:

  return v19;
}

+ (id)teamIdentifierFromAuditToken:(id *)token
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (!v5)
  {
    v9 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_1CA238000, v9, OS_LOG_TYPE_DEFAULT, "teamIdentifier: CPCopyBundleIdentifierAndTeamFromAuditToken() failed", &token, 2u);
    }

    goto LABEL_7;
  }

  v6 = v5;
  CodeSignStatus = SecTaskGetCodeSignStatus(v5);
  if ((~CodeSignStatus & 0x4000001) == 0)
  {
    CFRelease(v6);
    v8 = @"Apple";
    goto LABEL_8;
  }

  if ((CodeSignStatus & 0x4000) == 0)
  {
    v11 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SOUtils teamIdentifierFromAuditToken:v11];
    }

    v12 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SOUtils teamIdentifierFromAuditToken:v12];
    }

    v8 = SecTaskCopyTeamIdentifier();
    v13 = SO_LOG_SOUtils();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      token.val[0] = 138543618;
      *&token.val[1] = v8;
      LOWORD(token.val[3]) = 2114;
      *(&token.val[3] + 2) = 0;
      _os_log_impl(&dword_1CA238000, v13, OS_LOG_TYPE_DEFAULT, "teamIdentifier: %{public}@, error: %{public}@", &token, 0x16u);
    }

    CFRelease(v6);
    goto LABEL_8;
  }

  v14 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v14;
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v15 = SO_LOG_SOUtils();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    token.val[0] = 138543618;
    *&token.val[1] = 0;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = 0;
    _os_log_impl(&dword_1CA238000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ teamIdentifier: %{public}@", &token, 0x16u);
  }

  CFRelease(v6);
LABEL_8:

  return v8;
}

+ (void)mmapFile:mode:mmapData:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)mmapFile:mode:mmapData:.cold.2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)unmapFile:data:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)unmapFile:data:.cold.2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)currentProcessIsSandboxed
{
  v8 = "NO";
  if (self)
  {
    v8 = "YES";
  }

  LODWORD(v9) = 136446210;
  HIDWORD(v9) = v8;
  OUTLINED_FUNCTION_3(&dword_1CA238000, a2, a3, "currentProcessIsSandboxed(): %{public}s", a5, a6, a7, a8, v9, HIDWORD(v8));
}

+ (void)sandboxAllowsXPC:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = "YES";
  if ((a2 & 1) == 0)
  {
    v3 = "NO";
  }

  v4 = 136446466;
  v5 = a1;
  v6 = 2082;
  v7 = v3;
  _os_log_debug_impl(&dword_1CA238000, log, OS_LOG_TYPE_DEBUG, "sandboxAllowsXPC(): '%{public}s' allowed = %{public}s", &v4, 0x16u);
}

void __38__SOUtils_currentProcessContainerPath__block_invoke_cold_1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __38__SOUtils_currentProcessContainerPath__block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = currentProcessContainerPath_containerPath;
  OUTLINED_FUNCTION_3(&dword_1CA238000, a1, a3, "currentProcessContainerPath(): %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __26__SOUtils_isInternalBuild__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (isInternalBuild_internalBuild)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  LODWORD(v9) = 136446210;
  HIDWORD(v9) = v8;
  OUTLINED_FUNCTION_3(&dword_1CA238000, a1, a3, "isInternalBuild=%{public}s", a5, a6, a7, a8, v9, HIDWORD(v8));
}

void __35__SOUtils_isAppSSOServiceAvailable__block_invoke_cold_1(kern_return_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = @"com.apple.AppSSO.service-xpc";
  v5 = 2082;
  v6 = bootstrap_strerror(a1);
  _os_log_debug_impl(&dword_1CA238000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ is not available (%{public}s)", &v3, 0x16u);
}

+ (void)auditTokenFromData:(void *)a1 auditToken:.cold.1(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

+ (void)bundleIdentifierFromAuditToken:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3(&dword_1CA238000, a2, a3, "bundleIdentifier: CPCopyBundleIdentifierAndTeamFromAuditToken(): %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end