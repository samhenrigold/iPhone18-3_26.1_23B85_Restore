@interface HMActionSet(HFIncludedContextProtocol)
- (BOOL)hf_hasSetForContextType:()HFIncludedContextProtocol;
- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:;
- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol;
@end

@implementation HMActionSet(HFIncludedContextProtocol)

- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    applicationData = [self applicationData];
    v4 = applicationData;
    v5 = @"HFApplicationDataActionSetShowInHomeDashboard";
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[HMActionSet(HFIncludedContextProtocol) hf_isOnForContextType:]";
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "(%s) Action sets are not favoritable", &v10, 0xCu);
    }

    return 0;
  }

  if (a3)
  {
    return 0;
  }

  applicationData = [self applicationData];
  v4 = applicationData;
  v5 = @"HFApplicationDataActionSetIsFavoriteKey";
LABEL_10:
  v8 = [applicationData objectForKeyedSubscript:v5];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)hf_hasSetForContextType:()HFIncludedContextProtocol
{
  v12 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 3:
      applicationData = [self applicationData];
      v4 = applicationData;
      v5 = @"HFApplicationDataActionSetShowInHomeDashboard";
      goto LABEL_10;
    case 2:
      v6 = HFLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "[HMActionSet(HFIncludedContextProtocol) hf_hasSetForContextType:]";
        _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "(%s) Action sets are not favoritable. Returning NO.", &v10, 0xCu);
      }

      break;
    case 0:
      applicationData = [self applicationData];
      v4 = applicationData;
      v5 = @"HFApplicationDataActionSetIsFavoriteKey";
LABEL_10:
      v8 = [applicationData objectForKeyedSubscript:v5];
      v7 = v8 != 0;

      return v7;
  }

  return 0;
}

- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v5 = HFLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = "[HMActionSet(HFIncludedContextProtocol) hf_shouldBeOnForContextType:]";
        _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "(%s) Favoriting is not applicable to ActionSets", &v8, 0xCu);
      }
    }

    else if (!a3)
    {
      if (([self hf_isOnForContextType:?] & 1) == 0)
      {
        return [self hf_hasSetForContextType:0] ^ 1;
      }

      return 1;
    }

    return 0;
  }

  if ([self hf_hasSetForContextType:?])
  {
    selfCopy2 = self;
    v7 = 3;
  }

  else
  {
    if (![self hf_hasSetForContextType:0])
    {
      return 1;
    }

    selfCopy2 = self;
    v7 = 0;
  }

  return [selfCopy2 hf_isOnForContextType:v7];
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v16 = 2080;
    v17 = "[HMActionSet(HFIncludedContextProtocol) hf_updateValue:forContextType:]";
    v18 = 1024;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", buf, 0x26u);
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      NSLog(&cfstr_ActionSetsAreN.isa);
      goto LABEL_13;
    }

    if (a4 != 3)
    {
      goto LABEL_13;
    }

    applicationData = [self applicationData];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v10 = @"HFApplicationDataActionSetShowInHomeDashboard";
LABEL_11:
    HFAppDataSetValueIfChanged(applicationData, v10, v9);

    goto LABEL_13;
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

LABEL_13:
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HMActionSet_HFIncludedContextProtocol__hf_updateValue_forContextType___block_invoke;
  v13[3] = &unk_277DF2C68;
  v13[4] = self;
  v11 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v13];

  return v11;
}

@end