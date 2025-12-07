@interface DAStoreSyncStatusUpdater
+ (BOOL)_isCanceledError:(id)error;
+ (id)_eventStore;
+ (id)_eventStorePurger;
+ (id)_mappedAccountErrorFromError:(id)error;
+ (unint64_t)_accountErrorCodeForNSError:(id)error;
+ (unint64_t)_codeForLastSyncError:(id)error userInfo:(id *)info;
+ (unint64_t)_ekAccountErrorFromCoreDAVErrorCode:(int)code;
+ (unint64_t)_ekAccountErrorFromCoreDAVHTTPStatusCode:(int64_t)code;
+ (unint64_t)_ekAccountErrorFromDAErrorCode:(int64_t)code;
+ (unint64_t)_ekAccountErrorFromDAValidationErrorCode:(unint64_t)code;
+ (unint64_t)_ekAccountErrorFromSubCalErrorCode:(int64_t)code;
+ (unint64_t)_ekAccountErrorFromURLError:(id)error;
+ (void)_updateStatusForCalendar:(id)calendar lastSyncStartDate:(id)date lastSyncEndDate:(id)endDate lastSyncError:(id)error canceled:(BOOL)canceled;
+ (void)_updateStatusForCalendarWithExternalID:(id)d sourceExternalID:(id)iD lastSyncStartDate:(id)date lastSyncEndDate:(id)endDate lastSyncError:(id)error canceled:(BOOL)canceled;
+ (void)_updateStatusForSource:(id)source lastSyncStartDate:(id)date lastSyncEndDate:(id)endDate lastSyncError:(id)error canceled:(BOOL)canceled;
+ (void)_updateStatusForStoreWithExternalID:(id)d lastSyncStartDate:(id)date lastSyncEndDate:(id)endDate lastSyncError:(id)error canceled:(BOOL)canceled;
+ (void)resetSyncStatusIfNecessaryForStoresOfType:(unint64_t)type;
+ (void)syncEndedForCalendar:(id)calendar withError:(id)error;
+ (void)syncEndedForCalendarWithExternalID:(id)d sourceExternalID:(id)iD withError:(id)error;
+ (void)syncEndedForStoreWithExternalID:(id)d withError:(id)error;
+ (void)syncStartedForCalendar:(id)calendar;
+ (void)syncStartedForCalendarWithExternalID:(id)d sourceExternalID:(id)iD;
+ (void)syncStartedForStoreWithExternalID:(id)d;
@end

@implementation DAStoreSyncStatusUpdater

+ (void)syncStartedForStoreWithExternalID:(id)d
{
  v4 = MEMORY[0x277CBEAA8];
  dCopy = d;
  date = [v4 date];
  [self _updateStatusForStoreWithExternalID:dCopy lastSyncStartDate:date lastSyncEndDate:0 lastSyncError:0 canceled:0];
}

+ (void)syncEndedForStoreWithExternalID:(id)d withError:(id)error
{
  errorCopy = error;
  dCopy = d;
  v10 = [self _mappedAccountErrorFromError:errorCopy];
  v8 = [self _isCanceledError:errorCopy];

  date = [MEMORY[0x277CBEAA8] date];
  [self _updateStatusForStoreWithExternalID:dCopy lastSyncStartDate:0 lastSyncEndDate:date lastSyncError:v10 canceled:v8];
}

+ (void)resetSyncStatusIfNecessaryForStoresOfType:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  if ((DAStoreSyncStatusUpdaterAlreadyResetStatus & 1) == 0)
  {
    DAStoreSyncStatusUpdaterAlreadyResetStatus = 1;
    [self _eventStore];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = v18 = 0u;
    sources = [v14 sources];
    v6 = [sources countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = *MEMORY[0x277CC5B48];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(sources);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 isSyncing])
          {
            if (((1 << [v11 sourceType]) & type) != 0)
            {
              v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v9 code:1 userInfo:0];
              date = [MEMORY[0x277CBEAA8] date];
              [self _updateStatusForSource:v11 lastSyncStartDate:0 lastSyncEndDate:date lastSyncError:v12 canceled:0];
            }
          }
        }

        v7 = [sources countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

+ (id)_eventStorePurger
{
  if (_eventStorePurger_onceToken != -1)
  {
    +[DAStoreSyncStatusUpdater _eventStorePurger];
  }

  v3 = _eventStorePurger_eventStorePurger;

  return v3;
}

uint64_t __45__DAStoreSyncStatusUpdater__eventStorePurger__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CC5AE8]);
  v1 = _eventStorePurger_eventStorePurger;
  _eventStorePurger_eventStorePurger = v0;

  [_eventStorePurger_eventStorePurger setTimeout:30.0];
  [_eventStorePurger_eventStorePurger setPurgingAllowed:1];
  v2 = _eventStorePurger_eventStorePurger;

  return [v2 setCreationBlock:&__block_literal_global_6];
}

id __45__DAStoreSyncStatusUpdater__eventStorePurger__block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];

  return v0;
}

+ (id)_eventStore
{
  _eventStorePurger = [self _eventStorePurger];
  v3 = [_eventStorePurger acquireCachedEventStoreOrCreate:1];

  return v3;
}

+ (void)_updateStatusForSource:(id)source lastSyncStartDate:(id)date lastSyncEndDate:(id)endDate lastSyncError:(id)error canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  v44 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  errorCopy = error;
  v16 = DALoggingwithCategory();
  v17 = MEMORY[0x277D03988];
  v18 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v16, v18))
  {
    sourceIdentifier = [sourceCopy sourceIdentifier];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:canceledCopy];
    *buf = 138544386;
    v35 = sourceIdentifier;
    v36 = 2114;
    v37 = dateCopy;
    v38 = 2114;
    v39 = endDateCopy;
    v40 = 2114;
    v41 = v20;
    v42 = 2112;
    v43 = errorCopy;
    _os_log_impl(&dword_24844D000, v16, v18, "Saving sync status for source with identifier %{public}@: lastSyncStartDate = %{public}@, lastSyncEndDate = %{public}@, canceled=%{public}@ lastSyncError = %@", buf, 0x34u);

    v17 = MEMORY[0x277D03988];
  }

  if (canceledCopy && ([sourceCopy lastSyncEndDate], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
  {
    v24 = DALoggingwithCategory();
    if (os_log_type_enabled(v24, v18))
    {
      sourceIdentifier2 = [sourceCopy sourceIdentifier];
      *buf = 138543362;
      v35 = sourceIdentifier2;
      _os_log_impl(&dword_24844D000, v24, v18, "Initial sync canceled. Clearing start date for source with identifier %{public}@", buf, 0xCu);
    }

    [sourceCopy setLastSyncStartDate:0];
  }

  else
  {
    if (dateCopy)
    {
      [sourceCopy setLastSyncStartDate:dateCopy];
    }

    if (endDateCopy)
    {
      [sourceCopy setLastSyncEndDate:endDateCopy];
    }

    if (errorCopy)
    {
      v33 = 0;
      v22 = [self _codeForLastSyncError:errorCopy userInfo:&v33];
      v23 = v33;
      [sourceCopy setLastSyncError:v22 userInfo:v23];
    }
  }

  eventStore = [sourceCopy eventStore];
  v32 = 0;
  v27 = [eventStore saveSource:sourceCopy commit:1 error:&v32];
  v28 = v32;

  if ((v27 & 1) == 0)
  {
    v29 = DALoggingwithCategory();
    v30 = *(v17 + 3);
    if (os_log_type_enabled(v29, v30))
    {
      sourceIdentifier3 = [sourceCopy sourceIdentifier];
      *buf = 138412546;
      v35 = sourceIdentifier3;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&dword_24844D000, v29, v30, "Failed to save source sync status with source identifier %@. Error = %@", buf, 0x16u);
    }
  }
}

+ (unint64_t)_codeForLastSyncError:(id)error userInfo:(id *)info
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = *MEMORY[0x277CC5B48];

  if (domain == v7)
  {
    code = [errorCopy code];
    userInfo = [errorCopy userInfo];
    v10 = userInfo;
    if (code && [userInfo count])
    {
      v11 = v10;
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    *info = v12;
  }

  else
  {
    code = 1;
  }

  return code;
}

+ (void)_updateStatusForStoreWithExternalID:(id)d lastSyncStartDate:(id)date lastSyncEndDate:(id)endDate lastSyncError:(id)error canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  errorCopy = error;
  if (dCopy)
  {
    _eventStore = [self _eventStore];
    v17 = [_eventStore sourceWithExternalID:dCopy];
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v18, v19))
    {
      v23 = 138412546;
      v24 = errorCopy;
      v25 = 2114;
      v26 = dCopy;
      _os_log_impl(&dword_24844D000, v18, v19, "Updating sync status (%@) for source with externalID %{public}@", &v23, 0x16u);
    }

    if (v17)
    {
      [self _updateStatusForSource:v17 lastSyncStartDate:dateCopy lastSyncEndDate:endDateCopy lastSyncError:errorCopy canceled:canceledCopy];
    }

    else
    {
      v21 = DALoggingwithCategory();
      v22 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = 138543618;
        v24 = dCopy;
        v25 = 2112;
        v26 = errorCopy;
        _os_log_impl(&dword_24844D000, v21, v22, "Tried to update status for store, but could not get a corresponding EKSource for externalID %{public}@. lastSyncError is %@", &v23, 0x16u);
      }
    }
  }

  else
  {
    _eventStore = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(_eventStore, v20))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_24844D000, _eventStore, v20, "Tried to update status for store with nil externalID", &v23, 2u);
    }
  }
}

+ (void)syncStartedForCalendarWithExternalID:(id)d sourceExternalID:(id)iD
{
  v6 = MEMORY[0x277CBEAA8];
  iDCopy = iD;
  dCopy = d;
  date = [v6 date];
  [self _updateStatusForCalendarWithExternalID:dCopy sourceExternalID:iDCopy lastSyncStartDate:date lastSyncEndDate:0 lastSyncError:0 canceled:0];
}

+ (void)syncEndedForCalendarWithExternalID:(id)d sourceExternalID:(id)iD withError:(id)error
{
  errorCopy = error;
  iDCopy = iD;
  dCopy = d;
  v13 = [self _mappedAccountErrorFromError:errorCopy];
  v11 = [self _isCanceledError:errorCopy];

  date = [MEMORY[0x277CBEAA8] date];
  [self _updateStatusForCalendarWithExternalID:dCopy sourceExternalID:iDCopy lastSyncStartDate:0 lastSyncEndDate:date lastSyncError:v13 canceled:v11];
}

+ (void)syncStartedForCalendar:(id)calendar
{
  v4 = MEMORY[0x277CBEAA8];
  calendarCopy = calendar;
  date = [v4 date];
  [self _updateStatusForCalendar:calendarCopy lastSyncStartDate:date lastSyncEndDate:0 lastSyncError:0 canceled:0];
}

+ (void)syncEndedForCalendar:(id)calendar withError:(id)error
{
  errorCopy = error;
  calendarCopy = calendar;
  v10 = [self _mappedAccountErrorFromError:errorCopy];
  v8 = [self _isCanceledError:errorCopy];

  date = [MEMORY[0x277CBEAA8] date];
  [self _updateStatusForCalendar:calendarCopy lastSyncStartDate:0 lastSyncEndDate:date lastSyncError:v10 canceled:v8];
}

+ (void)_updateStatusForCalendarWithExternalID:(id)d sourceExternalID:(id)iD lastSyncStartDate:(id)date lastSyncEndDate:(id)endDate lastSyncError:(id)error canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  endDateCopy = endDate;
  errorCopy = error;
  if (dCopy)
  {
    v27 = canceledCopy;
    v28 = dateCopy;
    _eventStore = [self _eventStore];
    v20 = [_eventStore sourceWithExternalID:iDCopy];
    v21 = [v20 calendarWithExternalIdentifier:dCopy];
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 138412546;
      v30 = errorCopy;
      v31 = 2112;
      v32 = dCopy;
      _os_log_impl(&dword_24844D000, v22, v23, "Updating sync status (%@) for calendar with externalID %@", buf, 0x16u);
    }

    if (v21)
    {
      dateCopy = v28;
      [self _updateStatusForCalendar:v21 lastSyncStartDate:v28 lastSyncEndDate:endDateCopy lastSyncError:errorCopy canceled:v27];
    }

    else
    {
      v25 = DALoggingwithCategory();
      v26 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 138412802;
        v30 = dCopy;
        v31 = 2112;
        v32 = iDCopy;
        v33 = 2112;
        v34 = errorCopy;
        _os_log_impl(&dword_24844D000, v25, v26, "Tried to update status for calendar, but could not get a corresponding EKCalendar for externalID %@ in source with external ID %@. lastSyncError is %@", buf, 0x20u);
      }

      dateCopy = v28;
    }
  }

  else
  {
    _eventStore = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(_eventStore, v24))
    {
      *buf = 0;
      _os_log_impl(&dword_24844D000, _eventStore, v24, "Tried to update status for calendar with nil externalID", buf, 2u);
    }
  }
}

+ (void)_updateStatusForCalendar:(id)calendar lastSyncStartDate:(id)date lastSyncEndDate:(id)endDate lastSyncError:(id)error canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  v44 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  dateCopy = date;
  endDateCopy = endDate;
  errorCopy = error;
  v16 = DALoggingwithCategory();
  v17 = MEMORY[0x277D03988];
  v18 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v16, v18))
  {
    externalID = [calendarCopy externalID];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:canceledCopy];
    *buf = 138413314;
    v35 = externalID;
    v36 = 2114;
    v37 = dateCopy;
    v38 = 2114;
    v39 = endDateCopy;
    v40 = 2114;
    v41 = v20;
    v42 = 2112;
    v43 = errorCopy;
    _os_log_impl(&dword_24844D000, v16, v18, "Saving sync status for calendar with external identifier %@: lastSyncStartDate = %{public}@, lastSyncEndDate = %{public}@, canceled=%{public}@ lastSyncError = %@", buf, 0x34u);

    v17 = MEMORY[0x277D03988];
  }

  if (canceledCopy && ([calendarCopy lastSyncEndDate], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
  {
    v24 = DALoggingwithCategory();
    if (os_log_type_enabled(v24, v18))
    {
      externalID2 = [calendarCopy externalID];
      *buf = 138412290;
      v35 = externalID2;
      _os_log_impl(&dword_24844D000, v24, v18, "Initial sync canceled. Clearing start date for calendar with external identifier %@", buf, 0xCu);
    }

    [calendarCopy setLastSyncStartDate:0];
  }

  else
  {
    if (dateCopy)
    {
      [calendarCopy setLastSyncStartDate:dateCopy];
    }

    if (endDateCopy)
    {
      [calendarCopy setLastSyncEndDate:endDateCopy];
    }

    if (errorCopy)
    {
      v33 = 0;
      v22 = [self _codeForLastSyncError:errorCopy userInfo:&v33];
      v23 = v33;
      [calendarCopy setLastSyncError:v22 userInfo:v23];
    }
  }

  eventStore = [calendarCopy eventStore];
  v32 = 0;
  v27 = [eventStore saveCalendar:calendarCopy commit:1 error:&v32];
  v28 = v32;

  if ((v27 & 1) == 0)
  {
    v29 = DALoggingwithCategory();
    v30 = *(v17 + 3);
    if (os_log_type_enabled(v29, v30))
    {
      externalID3 = [calendarCopy externalID];
      *buf = 138412546;
      v35 = externalID3;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&dword_24844D000, v29, v30, "Failed to save calendar sync status with calendar external ID %@. Error = %@", buf, 0x16u);
    }
  }
}

+ (id)_mappedAccountErrorFromError:(id)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  cal_serializableError = [errorCopy cal_serializableError];
  v6 = cal_serializableError;
  if (cal_serializableError)
  {
    v11 = *MEMORY[0x277CCA7E8];
    v12[0] = cal_serializableError;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [self _accountErrorCodeForNSError:errorCopy];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC5B48] code:v8 userInfo:v7];

  return v9;
}

+ (unint64_t)_accountErrorCodeForNSError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v7 = [domain isEqualToString:*MEMORY[0x277CFDB18]];

    if (v7)
    {
      v8 = [self _ekAccountErrorFromCoreDAVErrorCode:{objc_msgSend(v5, "code")}];
    }

    else
    {
      domain2 = [v5 domain];
      v11 = [domain2 isEqualToString:*MEMORY[0x277D038E0]];

      if (v11)
      {
        v8 = [self _ekAccountErrorFromDAErrorCode:{objc_msgSend(v5, "code")}];
      }

      else
      {
        domain3 = [v5 domain];
        v13 = [domain3 isEqualToString:@"DAAccountValidationDomain"];

        if (v13)
        {
          v8 = [self _ekAccountErrorFromDAValidationErrorCode:{objc_msgSend(v5, "code")}];
        }

        else
        {
          if ([v5 cal_isCertificateError])
          {
            v9 = 6;
            goto LABEL_10;
          }

          domain4 = [v5 domain];
          v16 = [domain4 isEqualToString:*MEMORY[0x277CFDB80]];

          if (v16)
          {
            v8 = [self _ekAccountErrorFromCoreDAVHTTPStatusCode:{objc_msgSend(v5, "code")}];
          }

          else
          {
            domain5 = [v5 domain];
            v18 = [domain5 isEqualToString:*MEMORY[0x277CCA738]];

            if (v18)
            {
              v8 = [self _ekAccountErrorFromURLError:v5];
            }

            else
            {
              domain6 = [v5 domain];
              if ([domain6 isEqualToString:*MEMORY[0x277D03F90]])
              {
              }

              else
              {
                domain7 = [v5 domain];
                v21 = [domain7 isEqualToString:*MEMORY[0x277D03F88]];

                if (!v21)
                {
                  v9 = 1;
                  goto LABEL_10;
                }
              }

              v8 = [self _ekAccountErrorFromSubCalErrorCode:{objc_msgSend(v5, "code")}];
            }
          }
        }
      }
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

+ (unint64_t)_ekAccountErrorFromCoreDAVErrorCode:(int)code
{
  if (code > 5)
  {
    return 1;
  }

  else
  {
    return qword_2484912D0[code];
  }
}

+ (unint64_t)_ekAccountErrorFromDAErrorCode:(int64_t)code
{
  result = 5;
  v4 = code + 2;
  if ((code + 2) <= 0xE)
  {
    if (((1 << v4) & 0x888) != 0)
    {
      return result;
    }

    if (((1 << v4) & 0x4003) != 0)
    {
      return 0;
    }

    if (!code)
    {
      return 3;
    }
  }

  if ((code - 80) <= 0x23)
  {
    if (((1 << (code - 80)) & 0x8C0000001) != 0)
    {
      return result;
    }

    if (code == 92)
    {
      return 8;
    }

    if (code == 94)
    {
      return 9;
    }
  }

  v5 = code - 16;
  if ((code - 16) > 0x34)
  {
    return 1;
  }

  if (((1 << v5) & 0x2000020001) == 0)
  {
    if (((1 << v5) & 0x10800000000000) != 0)
    {
      return 2;
    }

    return 1;
  }

  return result;
}

+ (unint64_t)_ekAccountErrorFromDAValidationErrorCode:(unint64_t)code
{
  if (code - 101 > 2)
  {
    return 1;
  }

  else
  {
    return qword_248491300[code - 101];
  }
}

+ (unint64_t)_ekAccountErrorFromCoreDAVHTTPStatusCode:(int64_t)code
{
  v3 = 5;
  if (code == 401)
  {
    v3 = 2;
  }

  if (code >= 400)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)_ekAccountErrorFromSubCalErrorCode:(int64_t)code
{
  if (code > 9)
  {
    return 0;
  }

  else
  {
    return qword_248491318[code];
  }
}

+ (unint64_t)_ekAccountErrorFromURLError:(id)error
{
  if ([error code] == -999)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

+ (BOOL)_isCanceledError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CFDB18]])
    {
      code = [v4 code];

      if (code == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    domain2 = [v4 domain];
    if ([domain2 isEqualToString:*MEMORY[0x277D038E0]])
    {
      if ([v4 code] == -1)
      {
        LOBYTE(code) = 1;
        goto LABEL_27;
      }

      code2 = [v4 code];

      if (code2 == -2)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    domain3 = [v4 domain];
    if ([domain3 isEqualToString:@"DAAccountValidationDomain"])
    {
      code3 = [v4 code];

      if (code3 == 103)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    domain4 = [v4 domain];
    if ([domain4 isEqualToString:*MEMORY[0x277CCA738]])
    {
      code4 = [v4 code];

      if (code4 == -999)
      {
LABEL_18:
        LOBYTE(code) = 1;
        goto LABEL_28;
      }
    }

    else
    {
    }

    domain2 = [v4 domain];
    if ([domain2 isEqualToString:*MEMORY[0x277D03F90]])
    {
      LOBYTE(code) = [v4 code] == 2;
    }

    else
    {
      domain5 = [v4 domain];
      if ([domain5 isEqualToString:*MEMORY[0x277D03F88]])
      {
        LOBYTE(code) = [v4 code] == 2;
      }

      else
      {
        LOBYTE(code) = 0;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  LOBYTE(code) = 0;
LABEL_28:

  return code;
}

@end