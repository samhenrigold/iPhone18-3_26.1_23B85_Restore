@interface NSDictionary(SGQuickResponsesConfigDictionary)
- (id)arrayAssertedForKey:()SGQuickResponsesConfigDictionary;
- (id)dictAssertedForKey:()SGQuickResponsesConfigDictionary;
- (id)numberAssertedForKey:()SGQuickResponsesConfigDictionary;
- (id)objectAssertedForKey:()SGQuickResponsesConfigDictionary;
- (id)stringAssertedForKey:()SGQuickResponsesConfigDictionary;
@end

@implementation NSDictionary(SGQuickResponsesConfigDictionary)

- (id)dictAssertedForKey:()SGQuickResponsesConfigDictionary
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesConfig: Object for key %@ is not a dictionary.", &v8, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)arrayAssertedForKey:()SGQuickResponsesConfigDictionary
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesConfig: Object for key %@ is not an array.", &v8, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)stringAssertedForKey:()SGQuickResponsesConfigDictionary
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesConfig: Object for key %@ is not a string.", &v8, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)numberAssertedForKey:()SGQuickResponsesConfigDictionary
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesConfig: Object for key %@ is not a number.", &v8, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)objectAssertedForKey:()SGQuickResponsesConfigDictionary
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self objectForKey:v4];
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesConfig: Object for key %@ not found in dictionary.", &v7, 0xCu);
  }

  return v5;
}

@end