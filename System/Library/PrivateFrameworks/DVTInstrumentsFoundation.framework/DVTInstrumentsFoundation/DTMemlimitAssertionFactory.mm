@interface DTMemlimitAssertionFactory
- (id)_removeMemoryLimitsForPid:(int)pid;
@end

@implementation DTMemlimitAssertionFactory

- (id)_removeMemoryLimitsForPid:(int)pid
{
  v17 = *MEMORY[0x277D85DE8];
  *(&v12 + 4) = 0xFFFFFFFF00000000;
  LODWORD(v12) = -1;
  HIDWORD(v12) = 0;
  v4 = memorystatus_control();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      pidCopy2 = pid;
      v15 = 1024;
      v16 = v5;
      v6 = MEMORY[0x277D86220];
      v7 = "DTMemlimitAssertionFactory: failed to remove active and inactive memory limits for pid %d (result = %d)";
      v8 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_247F67000, v6, v8, v7, buf, 0xEu);
    }
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [standardUserDefaults BOOLForKey:@"DTMemlimitAssertionFactoryLog"];

    if (v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      pidCopy2 = pid;
      v15 = 1024;
      v16 = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "DTMemlimitAssertionFactory: removed active and inactive memory limits for pid %d (result = %d)";
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }
  }

  return 0;
}

@end