@interface CNTCCVersion1
+ (id)createAppAuthorizationRecordFromTCCAppInfo:(id)info bundleIdentifier:(id)identifier;
- (BOOL)isAuthorizationRestricted;
- (BOOL)isUnitTesting;
- (id)authorizationRecordForBundleIdentifier:(id)identifier;
- (id)authorizationRecords;
- (id)isUnitTestingImpl;
- (int64_t)checkAuthorizationStatusOfAuditToken:(id *)token;
- (int64_t)checkAuthorizationStatusOfAuditToken:(id)token assumedIdentity:(id)identity;
- (int64_t)checkAuthorizationStatusOfCurrentProcess;
- (void)requestAuthorization:(int64_t)authorization auditToken:(id)token assumedIdentity:(id)identity completionHandler:(id)handler;
- (void)saveAuthorizationRecord:(id)record;
- (void)simulateStatus:(int64_t)status;
@end

@implementation CNTCCVersion1

- (int64_t)checkAuthorizationStatusOfCurrentProcess
{
  if (checkAuthorizationStatusOfCurrentProcess_cn_once_token_1 != -1)
  {
    [CNTCCVersion1 checkAuthorizationStatusOfCurrentProcess];
  }

  v3 = checkAuthorizationStatusOfCurrentProcess_cn_once_object_1;
  simulateStatus = [(CNTCCVersion1 *)self simulateStatus];

  if (simulateStatus)
  {
    simulateStatus2 = [(CNTCCVersion1 *)self simulateStatus];
    integerValue = [simulateStatus2 integerValue];
LABEL_8:

    goto LABEL_9;
  }

  if (![(CNTCCVersion1 *)self isUnitTesting])
  {
    simulateStatus2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:TCCAccessPreflight()];
    v7 = [v3 objectForKeyedSubscript:simulateStatus2];
    integerValue = [v7 integerValue];

    goto LABEL_8;
  }

  integerValue = 3;
LABEL_9:

  return integerValue;
}

void __57__CNTCCVersion1_checkAuthorizationStatusOfCurrentProcess__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1EF464150;
  v3[1] = &unk_1EF464180;
  v4[0] = &unk_1EF464168;
  v4[1] = &unk_1EF464198;
  v3[2] = &unk_1EF4641B0;
  v4[2] = &unk_1EF4641C8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = [v0 copy];
  v2 = checkAuthorizationStatusOfCurrentProcess_cn_once_object_1;
  checkAuthorizationStatusOfCurrentProcess_cn_once_object_1 = v1;
}

- (int64_t)checkAuthorizationStatusOfAuditToken:(id *)token
{
  simulateStatus = [(CNTCCVersion1 *)self simulateStatus];

  if (simulateStatus)
  {
    simulateStatus2 = [(CNTCCVersion1 *)self simulateStatus];
    integerValue = [simulateStatus2 integerValue];

    return integerValue;
  }

  else if ([(CNTCCVersion1 *)self isUnitTesting])
  {
    return 3;
  }

  else if (TCCAccessCheckAuditToken())
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (int64_t)checkAuthorizationStatusOfAuditToken:(id)token assumedIdentity:(id)identity
{
  tokenCopy = token;
  identityCopy = identity;
  if (identityCopy)
  {
    v8 = 0;
  }

  else
  {
    if (tokenCopy)
    {
      objc_msgSend_audit_token(tokenCopy);
      checkAuthorizationStatusOfCurrentProcess = [(CNTCCVersion1 *)self checkAuthorizationStatusOfAuditToken:&v11];
    }

    else
    {
      checkAuthorizationStatusOfCurrentProcess = [(CNTCCVersion1 *)self checkAuthorizationStatusOfCurrentProcess];
    }

    v8 = checkAuthorizationStatusOfCurrentProcess;
  }

  return v8;
}

- (BOOL)isAuthorizationRestricted
{
  simulateStatus = [(CNTCCVersion1 *)self simulateStatus];

  return !simulateStatus && ![(CNTCCVersion1 *)self isUnitTesting]&& TCCAccessRestricted() != 0;
}

- (void)requestAuthorization:(int64_t)authorization auditToken:(id)token assumedIdentity:(id)identity completionHandler:(id)handler
{
  handlerCopy = handler;
  simulateStatus = [(CNTCCVersion1 *)self simulateStatus];

  if (simulateStatus)
  {
    simulateStatus2 = [(CNTCCVersion1 *)self simulateStatus];
    handlerCopy[2](handlerCopy, [simulateStatus2 integerValue]);
  }

  else if ([(CNTCCVersion1 *)self isUnitTesting])
  {
    handlerCopy[2](handlerCopy, 3);
  }

  else
  {
    v10 = handlerCopy;
    TCCAccessRequest();
  }
}

- (id)authorizationRecords
{
  v3 = TCCAccessCopyInformation();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CNTCCVersion1_authorizationRecords__block_invoke;
  v6[3] = &unk_1E6ED63A0;
  v6[4] = self;
  v4 = [v3 _cn_compactMap:v6];

  return v4;
}

id __37__CNTCCVersion1_authorizationRecords__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() createAppAuthorizationRecordFromTCCAppInfo:v2 bundleIdentifier:0];

  v4 = off_1EF4401A8(&__block_literal_global_2_2, v3);

  return v4;
}

- (id)authorizationRecordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = TCCAccessCopyInformationForBundleId();
  v5 = [v4 _cn_firstObjectPassingTest:&__block_literal_global_18];
  if (v5)
  {
    v6 = [objc_opt_class() createAppAuthorizationRecordFromTCCAppInfo:v5 bundleIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __56__CNTCCVersion1_authorizationRecordForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69D54F8]];

  return CFStringCompare(v2, *MEMORY[0x1E69D5500], 1uLL) == kCFCompareEqualTo;
}

- (void)saveAuthorizationRecord:(id)record
{
  recordCopy = record;
  authorizationStatus = [recordCopy authorizationStatus];
  bundleIdentifier = [recordCopy bundleIdentifier];

  [(CNTCCVersion1 *)self setAuthorizationStatus:authorizationStatus forBundleIdentifier:bundleIdentifier noKillApp:0];
}

+ (id)createAppAuthorizationRecordFromTCCAppInfo:(id)info bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = *MEMORY[0x1E69D54E0];
  infoCopy = info;
  v8 = [infoCopy objectForKeyedSubscript:v6];

  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69D54E8]];

  if (!identifierCopy && v8)
  {
    identifierCopy = CFBundleGetIdentifier(v8);
  }

  if (identifierCopy)
  {
    v10 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:identifierCopy];
    localizedName = [v10 localizedName];
    v12 = localizedName;
    if (localizedName && [localizedName length])
    {
      if (CFBooleanGetValue(v9))
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      v14 = [[CNTCCAppAuthorizationRecord alloc] initWithBundleIdentifier:identifierCopy localizedName:v12 recordType:0 authorizationStatus:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)simulateStatus:(int64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [(CNTCCVersion1 *)self setSimulateStatus:v4];
}

- (BOOL)isUnitTesting
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CNTCCVersion1_isUnitTesting__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __30__CNTCCVersion1_isUnitTesting__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    v4 = [v2 isUnitTestingImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(*(a1 + 32) + 16);
  }

  return v3;
}

- (id)isUnitTestingImpl
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  executablePath = [mainBundle executablePath];

  if ([executablePath hasSuffix:@"CNTestsHostiOS"] & 1) != 0 || (objc_msgSend(executablePath, "hasSuffix:", @"CNTestsHostiOS_XPC") & 1) != 0 || (objc_msgSend(executablePath, "hasSuffix:", @"otest"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [executablePath hasSuffix:@"xctest"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];

  return v5;
}

@end