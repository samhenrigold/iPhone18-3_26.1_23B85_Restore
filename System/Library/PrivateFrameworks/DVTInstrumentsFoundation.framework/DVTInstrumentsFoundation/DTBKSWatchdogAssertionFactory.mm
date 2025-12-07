@interface DTBKSWatchdogAssertionFactory
- (id)assertionForPid:(int)pid;
@end

@implementation DTBKSWatchdogAssertionFactory

- (id)assertionForPid:(int)pid
{
  v3 = *&pid;
  v24 = *MEMORY[0x277D85DE8];
  v4 = sub_247F9BFF8(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v23 = v3;
    _os_log_impl(&dword_247F67000, v4, OS_LOG_TYPE_INFO, "acquiring assertion for pid %d", buf, 8u);
  }

  v5 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.DTServiceHub" name:@"DeveloperToolsDebugging"];
  v21 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  v7 = objc_alloc(MEMORY[0x277D46DB8]);
  v8 = [MEMORY[0x277D47008] targetWithPid:v3];
  v9 = [v7 initWithExplanation:@"Target is being analyzed by developer tools" target:v8 attributes:v6];

  v20 = 0;
  v10 = [v9 acquireWithError:&v20];
  v11 = v20;
  v12 = v11;
  if (v10)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247F9C03C;
    v17[3] = &unk_278EF1260;
    v19 = v3;
    v18 = v9;
    v13 = _Block_copy(v17);
    v14 = _Block_copy(v13);

    v15 = v18;
  }

  else
  {
    v15 = sub_247F9BFF8(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_24802D478(v12, v3, v15);
    }

    v14 = 0;
  }

  return v14;
}

@end