@interface LDAPGetDefaultSearchBaseTask
- (id)daLevelErrorForLDAPError:(int)error;
- (int)numDownloadedElements;
- (void)_performQuery;
- (void)finishWithError:(id)error;
- (void)performTask;
@end

@implementation LDAPGetDefaultSearchBaseTask

- (void)_performQuery
{
  v9 = *MEMORY[0x277D85DE8];
  if (_performQuery_onceToken_0 != -1)
  {
    [LDAPGetDefaultSearchBaseTask _performQuery];
  }

  ldConnection = [(LDAPTask *)self ldConnection];
  rootdse = ldap_connection_read_rootdse();

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 134217984;
    v8 = rootdse;
    _os_log_impl(&dword_24857C000, v5, v6, "Created operation at %p", buf, 0xCu);
  }
}

void __45__LDAPGetDefaultSearchBaseTask__performQuery__block_invoke()
{
  v0 = _performQuery_attributes_0;
  _performQuery_attributes_0 = &unk_285AC8608;
}

void __45__LDAPGetDefaultSearchBaseTask__performQuery__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__LDAPGetDefaultSearchBaseTask__performQuery__block_invoke_3;
  block[3] = &unk_278F1FC30;
  v11 = a4;
  block[4] = *(a1 + 32);
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __45__LDAPGetDefaultSearchBaseTask__performQuery__block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) | 4) == 4)
  {
    if ([*(a1 + 32) isDisabled])
    {
      v2 = *(v1 + 32);
      obj = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
      [v2 finishWithError:?];

      return;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obja = [*(v1 + 40) allKeys];
    v8 = [obja countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (!v8)
    {
      goto LABEL_27;
    }

    v10 = v8;
    v11 = *v27;
    v12 = *(MEMORY[0x277D03988] + 3);
    type = *(MEMORY[0x277D03988] + 6);
    *&v9 = 138412290;
    v21 = v9;
    v23 = v12;
    v13 = v1;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(obja);
      }

      v15 = *(*(&v26 + 1) + 8 * v14);
      v16 = [v15 lowercaseString];
      if (![v16 isEqualToString:@"namingcontexts"])
      {
        goto LABEL_25;
      }

      v17 = [*(v1 + 40) objectForKeyedSubscript:v15];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if ([v17 count])
      {
        v18 = [v17 objectAtIndexedSubscript:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = DALoggingwithCategory();
          if (os_log_type_enabled(v19, type))
          {
            *buf = v21;
            v31 = v18;
            _os_log_impl(&dword_24857C000, v19, type, "Found namingContexts of %@", buf, 0xCu);
          }

          [*(v13 + 32) setDefaultNamingContext:v18];
        }

LABEL_23:

        v12 = v23;
        v1 = v13;
      }

LABEL_25:
      if (v10 == ++v14)
      {
        v10 = [obja countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (!v10)
        {
LABEL_27:

          [*(v1 + 32) finishWithError:0];
          return;
        }

        goto LABEL_11;
      }
    }

    v18 = DALoggingwithCategory();
    if (os_log_type_enabled(v18, v12))
    {
      v20 = objc_opt_class();
      *buf = 138412546;
      v31 = v20;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_24857C000, v18, v12, "Unexpected class of %@ for key %@.  Skipping it", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 48);
    *buf = 67109120;
    LODWORD(v31) = v5;
    _os_log_impl(&dword_24857C000, v3, v4, "Couldn't complete operation, error %d", buf, 8u);
  }

  v6 = *(v1 + 32);
  v7 = [v6 daLevelErrorForLDAPError:*(v1 + 48)];
  [v6 finishWithError:v7];
}

- (void)performTask
{
  if (![(DADisableableObject *)self isDisabled])
  {

    [(LDAPTask *)self initializeConnection];
  }
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(LDAPTask *)selfCopy isFinished])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    [(LDAPTask *)selfCopy setIsFinished:1];
    objc_sync_exit(selfCopy);

    dateConnectionWentOut = [(LDAPTask *)selfCopy dateConnectionWentOut];

    if (dateConnectionWentOut)
    {
      taskManager = [(LDAPTask *)selfCopy taskManager];
      account = [taskManager account];
      statusReport = [account statusReport];
      date = [MEMORY[0x277CBEAA8] date];
      dateConnectionWentOut2 = [(LDAPTask *)selfCopy dateConnectionWentOut];
      [date timeIntervalSinceDate:dateConnectionWentOut2];
      [statusReport noteTimeSpentInNetworking:?];

      [(LDAPTask *)selfCopy setDateConnectionWentOut:0];
    }

    ldConnection = [(LDAPTask *)selfCopy ldConnection];

    if (ldConnection)
    {
      ldConnection2 = [(LDAPTask *)selfCopy ldConnection];
      ldap_connection_disconnect();
    }

    delegate = [(LDAPTask *)selfCopy delegate];
    if (errorCopy)
    {
      v15 = 79;
    }

    else
    {
      v15 = 2;
    }

    defaultNamingContext = [(LDAPGetDefaultSearchBaseTask *)selfCopy defaultNamingContext];
    [delegate ldapGetDefaultSearchBaseTask:selfCopy completedWithStatus:v15 error:errorCopy defaultSearchBase:defaultNamingContext];

    v17.receiver = selfCopy;
    v17.super_class = LDAPGetDefaultSearchBaseTask;
    [(LDAPTask *)&v17 finishWithError:errorCopy];
  }
}

- (int)numDownloadedElements
{
  defaultNamingContext = [(LDAPGetDefaultSearchBaseTask *)self defaultNamingContext];
  v3 = defaultNamingContext != 0;

  return v3;
}

- (id)daLevelErrorForLDAPError:(int)error
{
  v3 = 102;
  if (error > 10000)
  {
    if ((error - 10001) < 3)
    {
LABEL_7:
      v3 = 101;
      return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03700] code:v3 userInfo:0];
    }

    if (error != 10004 && error != 10006)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (error > 0x32)
    {
LABEL_11:
      v3 = 100;
      return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03700] code:v3 userInfo:0];
    }

    if (((1 << error) & 0x7000000002180) == 0)
    {
      if (error != 3)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03700] code:v3 userInfo:0];
}

@end