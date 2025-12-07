@interface CRKMDMIdentityProvider
+ (CRKIdentity)identity;
+ (id)new;
+ (void)identity;
- (CRKMDMIdentityProvider)init;
@end

@implementation CRKMDMIdentityProvider

+ (CRKIdentity)identity
{
  Executable = CFBundleCreate(0, [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/ManagedConfiguration.framework"]);
  v3 = Executable;
  if (Executable)
  {
    Executable = CFBundleLoadExecutable(Executable);
    if (Executable)
    {
      Executable = CFBundleGetFunctionPointerForName(v3, @"MCMDMFilePath");
      if (Executable)
      {
        v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:(Executable)()];
        v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
        v6 = [v5 valueForKey:*MEMORY[0x277D24808]];
        if (v6)
        {
          v7 = +[CRKKeychainProvider sharedProvider];
          keychain = [v7 keychain];
          v9 = [keychain identityWithPersistentID:v6];
        }

        else
        {
          v9 = 0;
        }

LABEL_12:
        CFRelease(v3);
        goto LABEL_13;
      }
    }
  }

  v10 = _CRKLogGeneral_4(Executable);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[(CRKMDMIdentityProvider *)v10];
  }

  v9 = 0;
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

- (CRKMDMIdentityProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKMDMIdentityProvider.m" lineNumber:83 description:{@"%@ is unavailable for %@", v5, self}];

  return 0;
}

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKMDMIdentityProvider.m" lineNumber:88 description:{@"%@ is unavailable for %@", v5, self}];

  return 0;
}

+ (void)identity
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch the MDM identity %{public}@", &v2, 0xCu);
}

@end