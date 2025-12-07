@interface HMActionSetBuilder(HFIncludedContextProtocol)
- (void)hf_setValue:()HFIncludedContextProtocol forContextType:;
@end

@implementation HMActionSetBuilder(HFIncludedContextProtocol)

- (void)hf_setValue:()HFIncludedContextProtocol forContextType:
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    selfCopy = self;
    v13 = 2080;
    v14 = "[HMActionSetBuilder(HFIncludedContextProtocol) hf_setValue:forContextType:]";
    v15 = 1024;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", &v11, 0x26u);
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      NSLog(&cfstr_ActionSetsAreN.isa);
      return;
    }

    if (a4 != 3)
    {
      return;
    }

    applicationData = [self applicationData];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v10 = @"HFApplicationDataActionSetShowInHomeDashboard";
LABEL_11:
    HFAppDataSetValueIfChanged(applicationData, v10, v9);

    return;
  }

  if (!a4)
  {
    applicationData = [self applicationData];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v10 = @"HFApplicationDataActionSetIsFavoriteKey";
    goto LABEL_11;
  }

  if (a4 == 1)
  {
    NSLog(&cfstr_ActionSetsCann.isa);
  }
}

@end