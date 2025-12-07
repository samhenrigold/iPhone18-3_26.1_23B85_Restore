@interface DSSourceWrapper
+ (BOOL)shouldEnumerateResourceNamesForSource:(id)source;
+ (id)wrapMultiSource:(id)source;
+ (void)initialize;
@end

@implementation DSSourceWrapper

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLog_5 = os_log_create("com.apple.DigitalSeparation", "DSSourceWrapper");

    MEMORY[0x2821F96F8]();
  }
}

+ (BOOL)shouldEnumerateResourceNamesForSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy conformsToProtocol:&unk_285BAD248])
  {
    resourceNames = [sourceCopy resourceNames];
    v5 = [resourceNames count] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)wrapMultiSource:(id)source
{
  v26 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([DSSourceWrapper shouldEnumerateResourceNamesForSource:sourceCopy])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [sourceCopy resourceNames];
    v5 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [[DSSubSource alloc] init:sourceCopy withResourceName:v9];
          [dictionary setObject:v10 forKeyedSubscript:v9];

          v11 = DSLog_5;
          if (os_log_type_enabled(DSLog_5, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            name = [sourceCopy name];
            *buf = 138543618;
            v22 = v9;
            v23 = 2114;
            v24 = name;
            _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_DEFAULT, "Adding sharing sub source for %{public}@ from %{public}@", buf, 0x16u);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v14 = DSLog_5;
    if (os_log_type_enabled(DSLog_5, OS_LOG_TYPE_ERROR))
    {
      [(DSSourceWrapper *)v14 wrapMultiSource:sourceCopy];
    }
  }

  return dictionary;
}

+ (void)wrapMultiSource:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 name];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_248C40000, v3, OS_LOG_TYPE_ERROR, "%{public}@ does not satisfy constraints to use DSResourceName", &v5, 0xCu);
}

@end