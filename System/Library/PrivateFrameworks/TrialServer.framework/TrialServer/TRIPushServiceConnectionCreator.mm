@interface TRIPushServiceConnectionCreator
- (id)connectionWithDelegate:(id)delegate environment:(unsigned __int8)environment;
@end

@implementation TRIPushServiceConnectionCreator

- (id)connectionWithDelegate:(id)delegate environment:(unsigned __int8)environment
{
  v12 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"com.apple.triald.aps.sandbox-environment"];

  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Sandbox mode enabled for APS: %d", v11, 8u);
  }

  if (v6)
  {
    v8 = objc_alloc_init(TRISandboxedPushServiceConnection);
  }

  else
  {
    v8 = [[TRIPushServiceConnection alloc] initWithDelegate:delegateCopy];
  }

  v9 = v8;

  return v9;
}

@end