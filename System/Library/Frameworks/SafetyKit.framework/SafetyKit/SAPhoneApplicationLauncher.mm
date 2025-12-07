@interface SAPhoneApplicationLauncher
- (SAPhoneApplicationLauncher)init;
- (void)addAssertion:(id)assertion forProcessId:(int)id;
- (void)cleanupInvalidAssertions;
- (void)openApplicationInBackgroundWithBundleId:(id)id withReason:(int64_t)reason completion:(id)completion;
@end

@implementation SAPhoneApplicationLauncher

- (SAPhoneApplicationLauncher)init
{
  v6.receiver = self;
  v6.super_class = SAPhoneApplicationLauncher;
  v2 = [(SAPhoneApplicationLauncher *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    assertionMap = v2->_assertionMap;
    v2->_assertionMap = v3;
  }

  return v2;
}

- (void)openApplicationInBackgroundWithBundleId:(id)id withReason:(int64_t)reason completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  completionCopy = completion;
  reasonCopy = reason;
  v9 = [SABundleManager reasonToAttributeName:reason];
  v10 = idCopy;
  v22 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:idCopy];
  v11 = [MEMORY[0x277D46EB0] contextWithIdentity:?];
  v12 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.SafetyKit" name:v9];
  v34[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [v11 setAttributes:v13];

  [v11 setExplanation:v9];
  v14 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v11];
  v24 = 0;
  v25 = 0;
  v23 = 0;
  LOBYTE(idCopy) = [v14 execute:&v25 assertion:&v24 error:&v23];
  v15 = v25;
  v16 = v24;
  v17 = v23;
  v18 = sa_default_log(v17);
  v19 = v18;
  if (idCopy)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v27 = "[SAPhoneApplicationLauncher openApplicationInBackgroundWithBundleId:withReason:completion:]";
      v28 = 2112;
      v29 = v10;
      v30 = 2048;
      v31 = reasonCopy;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_23AA4D000, v19, OS_LOG_TYPE_DEFAULT, "%s - Successfully launched bundle, bundleId: %@, reason: %lu, process: %@", buf, 0x2Au);
    }

    -[SAPhoneApplicationLauncher addAssertion:forProcessId:](self, "addAssertion:forProcessId:", v16, [v15 pid]);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "[SAPhoneApplicationLauncher openApplicationInBackgroundWithBundleId:withReason:completion:]";
      v28 = 2112;
      v29 = v10;
      v30 = 2048;
      v31 = reasonCopy;
      v32 = 2112;
      v33 = v17;
      _os_log_error_impl(&dword_23AA4D000, v19, OS_LOG_TYPE_ERROR, "%s - Unable to launch bundle, bundleId: %@, reason: %lu, error: %@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, 0, v17);
    }
  }
}

- (void)cleanupInvalidAssertions
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(NSMutableDictionary *)self->_assertionMap allKeys];
  v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [(NSMutableDictionary *)self->_assertionMap objectForKeyedSubscript:v6];
        v8 = objc_opt_new();
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              if ([v14 isValid])
              {
                [v8 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }

        v15 = [v8 count];
        assertionMap = self->_assertionMap;
        if (v15)
        {
          [(NSMutableDictionary *)assertionMap setObject:v8 forKeyedSubscript:v6];
        }

        else
        {
          [(NSMutableDictionary *)assertionMap removeObjectForKey:v6];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }
}

- (void)addAssertion:(id)assertion forProcessId:(int)id
{
  v4 = *&id;
  assertionCopy = assertion;
  [(SAPhoneApplicationLauncher *)self cleanupInvalidAssertions];
  v6 = assertionCopy;
  if (assertionCopy)
  {
    assertionMap = self->_assertionMap;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v9 = [(NSMutableDictionary *)assertionMap objectForKeyedSubscript:v8];

    if (!v9)
    {
      v9 = objc_opt_new();
      v10 = self->_assertionMap;
      v11 = [MEMORY[0x277CCABB0] numberWithInt:v4];
      [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v11];
    }

    [v9 addObject:assertionCopy];

    v6 = assertionCopy;
  }
}

@end