@interface PCCancelAllProcessWakesOperation
- (void)main;
@end

@implementation PCCancelAllProcessWakesOperation

- (void)main
{
  v42 = *MEMORY[0x277D85DE8];
  AssertionID = 0;
  v2 = 0x280B0B000uLL;
  v3 = 0x277CCA000uLL;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"schedulingwake-PCCancelAllProcessWakesOperation(%p)", self];
  v5 = [PCPersistentIdentifiers processNamePidAndStringIdentifier:v4];

  v6 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v5, &AssertionID);
  if (v6)
  {
    v7 = v6;
    v8 = +[PCLog wakeManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(PCScheduleSystemWakeOperation *)v7 main];
    }
  }

  v9 = IOPMCopyScheduledPowerEvents();
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFArrayGetTypeID())
    {
      v27 = v10;
      v28 = v5;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v12 = v10;
      v13 = [(__CFArray *)v12 countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v31;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            v18 = [v17 objectForKey:@"eventtype"];
            v19 = [v17 objectForKey:@"scheduledby"];
            if ([(__CFString *)v18 isEqual:@"wake"])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v2 + 2368 pidFromMatchingIdentifer:v19] & 0x80000000) == 0)
              {
                v20 = v12;
                v21 = v3;
                v22 = [v17 objectForKey:@"time"];
                if (v22)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v23 = IOPMCancelScheduledPowerEvent(v22, v19, v18);
                    v24 = +[PCLog wakeManager];
                    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
                    if (v23)
                    {
                      if (v25)
                      {
                        v29 = PCStringFromDate(v22);
                        *buf = 138412802;
                        v36 = v19;
                        v37 = 2112;
                        v38 = v29;
                        v39 = 1024;
                        v40 = v23;
                        _os_log_impl(&dword_25E3EF000, v24, OS_LOG_TYPE_DEFAULT, "Unable to unschedule orphaned wake with identifier '%@' and date [%@]. IOPMCancelScheduledPowerEvent() returned: %i", buf, 0x1Cu);
                      }
                    }

                    else if (v25)
                    {
                      v26 = PCStringFromDate(v22);
                      *buf = 138412546;
                      v36 = v19;
                      v37 = 2112;
                      v38 = v26;
                      _os_log_impl(&dword_25E3EF000, v24, OS_LOG_TYPE_DEFAULT, "Unscheduled orphaned wake with identifier '%@' and date [%@]", buf, 0x16u);
                    }

                    v2 = 0x280B0B000;
                  }
                }

                v3 = v21;
                v12 = v20;
              }
            }
          }

          v14 = [(__CFArray *)v12 countByEnumeratingWithState:&v30 objects:v41 count:16];
        }

        while (v14);
      }

      v10 = v27;
      v5 = v28;
    }

    CFRelease(v10);
  }

  IOPMAssertionRelease(AssertionID);
}

@end