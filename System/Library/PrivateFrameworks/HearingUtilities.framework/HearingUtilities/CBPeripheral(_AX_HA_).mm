@interface CBPeripheral(_AX_HA_)
- (void)axTag:()_AX_HA_;
- (void)axUntag:()_AX_HA_;
@end

@implementation CBPeripheral(_AX_HA_)

- (void)axTag:()_AX_HA_
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self hasTag:v4])
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping tag %@ - %@", &v6, 0x16u);
    }
  }

  else
  {
    [self tag:v4];
  }
}

- (void)axUntag:()_AX_HA_
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self hasTag:v4])
  {
    [self untag:v4];
  }

  else
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping untag %@ - %@", &v6, 0x16u);
    }
  }
}

@end