@interface COCondition
+ (id)info;
+ (void)info;
- (BOOL)getBoolProperty:(id)property fromDict:(id)dict withDefault:(BOOL)default;
- (BOOL)getBoolProperty:(id)property withDefault:(BOOL)default;
- (COCondition)init;
- (id)getStringProperty:(id)property fromDict:(id)dict withDefault:(id)default;
- (id)getStringProperty:(id)property withDefault:(id)default;
@end

@implementation COCondition

- (COCondition)init
{
  v3.receiver = self;
  v3.super_class = COCondition;
  return [(COCondition *)&v3 init];
}

+ (id)info
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [self description];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      +[COCondition info];
    }

    v5 = &stru_28570BA10;
  }

  v10[0] = v4;
  v9[0] = @"ConditionIdentifierName";
  v9[1] = @"ConditionUserFriendlyName";
  profileFriendlyName = [self profileFriendlyName];
  v9[2] = @"ConditionDescription";
  v10[1] = profileFriendlyName;
  v10[2] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (BOOL)getBoolProperty:(id)property fromDict:(id)dict withDefault:(BOOL)default
{
  propertyCopy = property;
  dictCopy = dict;
  v10 = dictCopy;
  if (dictCopy)
  {
    v11 = [dictCopy objectForKey:propertyCopy];
    v12 = isNSNumber(v11);

    if (v12)
    {
      default = [v11 BOOLValue];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COCondition getBoolProperty:fromDict:withDefault:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [COCondition getBoolProperty:? fromDict:? withDefault:?];
  }

  return default;
}

- (BOOL)getBoolProperty:(id)property withDefault:(BOOL)default
{
  defaultCopy = default;
  propertyCopy = property;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v7)
  {
    infoDictionary = [v7 infoDictionary];
    LOBYTE(defaultCopy) = [(COCondition *)self getBoolProperty:propertyCopy fromDict:infoDictionary withDefault:defaultCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [COCondition getBoolProperty:? withDefault:?];
  }

  return defaultCopy;
}

- (id)getStringProperty:(id)property fromDict:(id)dict withDefault:(id)default
{
  propertyCopy = property;
  dictCopy = dict;
  defaultCopy = default;
  if (dictCopy)
  {
    v11 = [dictCopy objectForKey:propertyCopy];
    v12 = isNSString(v11);

    v13 = v11;
    if (!v12)
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v13 = defaultCopy;
      if (v14)
      {
        [COCondition getStringProperty:propertyCopy fromDict:v11 withDefault:?];
        v13 = defaultCopy;
      }
    }

    v15 = v13;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COCondition getBoolProperty:? fromDict:? withDefault:?];
    }

    v15 = defaultCopy;
  }

  return v15;
}

- (id)getStringProperty:(id)property withDefault:(id)default
{
  propertyCopy = property;
  defaultCopy = default;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v8)
  {
    infoDictionary = [v8 infoDictionary];
    v11 = [(COCondition *)self getStringProperty:propertyCopy fromDict:infoDictionary withDefault:defaultCopy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COCondition getBoolProperty:? withDefault:?];
    }

    v11 = defaultCopy;
  }

  return v11;
}

+ (void)info
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Missing description entry for %@. Please make sure you fill out all entries for your condition class. If you believe this to be an error, please file a radar to the Condition Inducers component", v0, 0xCu);
}

- (void)getBoolProperty:(uint64_t)a1 fromDict:withDefault:.cold.2(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_1(&dword_243E0F000, MEMORY[0x277D86220], v3, "Failed to load info dictionary from %@", v4, v5, v6, v7);
}

- (void)getBoolProperty:(uint64_t)a1 withDefault:.cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_1(&dword_243E0F000, MEMORY[0x277D86220], v3, "No info.plist bundle for %@?", v4, v5, v6, v7);
}

- (void)getStringProperty:(uint64_t)a1 fromDict:(uint64_t)a2 withDefault:.cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = objc_opt_class();
  v2 = v6;
  _os_log_error_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Expected an NSString from info plist for string %@ but got %@", &v3, 0x16u);
}

@end