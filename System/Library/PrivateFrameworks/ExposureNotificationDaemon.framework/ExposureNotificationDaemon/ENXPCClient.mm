@interface ENXPCClient
+ (ENXPCClient)clientWithAuditToken:(id *)token pid:(int)pid;
- (id)description;
- (void)activateWithAppAPIVersion:(int)version regionISO:(id)o;
@end

@implementation ENXPCClient

- (id)description
{
  v14 = 0;
  if ([(NSString *)self->_signingIdentity length])
  {
    signingIdentity = self->_signingIdentity;
  }

  else
  {
    signingIdentity = @"<no signing identity>";
  }

  NSAppendPrintF_safe(&v14, "%@", signingIdentity);
  v4 = v14;
  v13 = v4;
  NSAppendPrintF(&v13, " (%#{pid})", self->_pid);
  v5 = v13;

  v12 = v5;
  NSAppendPrintF_safe(&v12, " v%d", self->_appAPIVersion);
  v6 = v12;

  appRegion = self->_appRegion;
  if (appRegion)
  {
    v11 = v6;
    v8 = appRegion;
    NSAppendPrintF_safe(&v11, " %@", v8);
    v9 = v11;

    v6 = v9;
  }

  return v6;
}

+ (ENXPCClient)clientWithAuditToken:(id *)token pid:(int)pid
{
  v5 = objc_alloc_init(ENXPCClient);
  v5->_pid = pid;
  v6 = xpc_copy_code_signing_identity_for_token();
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCACA0] stringWithUTF8String:v6];
    free(v7);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_285D62BB0;
  }

  objc_storeStrong(&v5->_signingIdentity, v9);
  v10 = xpc_copy_entitlement_for_token();
  v11 = v10;
  if (!v10)
  {
    goto LABEL_27;
  }

  if (xpc_dictionary_get_BOOL(v10, "com.apple.private.exposure-notification"))
  {
    v12 = 4;
LABEL_14:
    v5->_accessLevel = v12;
    goto LABEL_15;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.developer.exposure-notification-test"))
  {
    v12 = 3;
    goto LABEL_14;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.developer.exposure-notification"))
  {
    v12 = 2;
    goto LABEL_14;
  }

LABEL_15:
  if (xpc_dictionary_get_BOOL(v11, "com.apple.developer.exposure-notification-test-skip-file-verification"))
  {
    v5->_entitledToSkipFileSigningVerification = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.developer.exposure-notification-logging"))
  {
    v5->_entitledForLogging = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.private.exposure-notification-differential-privacy"))
  {
    v5->_entitledForDifferentialPrivacy = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.private.exposure-notification-bypass-key-release-prompt"))
  {
    v5->_entitledToSkipKeyReleasePrompt = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.private.exposure-notification-test-verification"))
  {
    v5->_entitledForTestVerification = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.private.exposure-notification-show-buddy"))
  {
    v5->_entitledToShowBuddy = 1;
  }

LABEL_27:

  return v5;
}

- (void)activateWithAppAPIVersion:(int)version regionISO:(id)o
{
  self->_appAPIVersion = version;
  if (o)
  {
    v5 = [MEMORY[0x277CC5CA0] regionWithCode:o];
    appRegion = self->_appRegion;
    self->_appRegion = v5;
  }
}

@end