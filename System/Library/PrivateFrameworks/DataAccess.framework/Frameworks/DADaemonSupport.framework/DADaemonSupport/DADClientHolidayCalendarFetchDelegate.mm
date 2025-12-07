@interface DADClientHolidayCalendarFetchDelegate
- (id)_getThrottleDateIfApplicable;
- (id)syncingAccount;
- (void)_addAuthenticationHeaders;
- (void)_handleCalendarSearchResults:(id)results;
- (void)_sendCompletionWithError:(id)error retryThrottleTime:(double)time;
- (void)_sendResults:(id)results;
- (void)_setThrottledRetryDateUsingTimeInterval:(double)interval;
- (void)fetchHolidayCalendars;
@end

@implementation DADClientHolidayCalendarFetchDelegate

- (void)fetchHolidayCalendars
{
  v26 = *MEMORY[0x277D85DE8];
  _getThrottleDateIfApplicable = [(DADClientHolidayCalendarFetchDelegate *)self _getThrottleDateIfApplicable];
  if (_getThrottleDateIfApplicable)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 138412290;
      v25 = _getThrottleDateIfApplicable;
      _os_log_impl(&dword_248524000, v4, v5, "HolidayCalendarFetch: Server requested we not fetch. Denying retries until %@", buf, 0xCu);
    }

    holidayCalendarURL = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF6F80] code:2 userInfo:0];
    [_getThrottleDateIfApplicable timeIntervalSinceReferenceDate];
    v8 = v7;
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v11 = v10;

    [(DADClientHolidayCalendarFetchDelegate *)self _sendCompletionWithError:holidayCalendarURL retryThrottleTime:v8 - v11];
  }

  else
  {
    syncingAccount = [(DADClientHolidayCalendarFetchDelegate *)self syncingAccount];

    if (syncingAccount)
    {
      holidayCalendarURL = [MEMORY[0x277D03910] holidayCalendarURL];
      v13 = [objc_alloc(MEMORY[0x277CF6FB8]) initWithLanguages:0 location:0 calendarType:@"Holiday" url:holidayCalendarURL];
      searchTask = self->_searchTask;
      self->_searchTask = v13;

      [(DADClientHolidayCalendarFetchDelegate *)self _addAuthenticationHeaders];
      [(CalDAVCalendarSearchTask *)self->_searchTask setLimit:0];
      syncingAccount2 = [(DADClientHolidayCalendarFetchDelegate *)self syncingAccount];
      [(CalDAVCalendarSearchTask *)self->_searchTask setAccountInfoProvider:syncingAccount2];

      objc_initWeak(buf, self->_searchTask);
      objc_initWeak(&location, self);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __62__DADClientHolidayCalendarFetchDelegate_fetchHolidayCalendars__block_invoke;
      v20[3] = &unk_278F1D3C0;
      objc_copyWeak(&v21, buf);
      objc_copyWeak(&v22, &location);
      [(CalDAVCalendarSearchTask *)self->_searchTask setCompletionBlock:v20];
      syncingAccount3 = [(DADClientHolidayCalendarFetchDelegate *)self syncingAccount];
      taskManager = [syncingAccount3 taskManager];
      [taskManager submitIndependentTask:self->_searchTask];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v18, v19, "HolidayCalendarFetch: no valid calendar account found.", buf, 2u);
      }

      holidayCalendarURL = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      [(DADClientHolidayCalendarFetchDelegate *)self _sendCompletionWithError:holidayCalendarURL retryThrottleTime:0.0];
    }
  }
}

void __62__DADClientHolidayCalendarFetchDelegate_fetchHolidayCalendars__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v4 = [WeakRetained error];

    if (v4)
    {
      v5 = DALoggingwithCategory();
      v6 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = [WeakRetained error];
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_248524000, v5, v6, "HolidayCalendarFetch: Error fetching list of holiday calendars: %@", &v14, 0xCu);
      }

      v8 = 0.0;
      if ([WeakRetained responseStatusCode] >= 500 && objc_msgSend(WeakRetained, "responseStatusCode") <= 599)
      {
        v9 = [WeakRetained responseHeaders];
        v10 = [v9 objectForKey:*MEMORY[0x277CFDB58]];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 doubleValue];
          v8 = v11;
          [v3 _setThrottledRetryDateUsingTimeInterval:?];
        }
      }

      v12 = [WeakRetained error];
      [v3 _sendCompletionWithError:v12 retryThrottleTime:v8];
    }

    else
    {
      v12 = [WeakRetained urlsToResults];
      [v3 _handleCalendarSearchResults:v12];
    }

    v13 = v3[6];
    v3[6] = 0;
  }
}

- (void)_handleCalendarSearchResults:(id)results
{
  v43 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = resultsCopy;
  allKeys = [resultsCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v29 = array;
    v10 = 0;
    obj = allKeys;
    v31 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v32 objectForKey:v12];
        region = [v13 region];
        payloadAsString = [region payloadAsString];

        language = [v13 language];
        payloadAsString2 = [language payloadAsString];

        calendarDescription = [v13 calendarDescription];
        payloadAsString3 = [calendarDescription payloadAsString];

        v20 = objc_alloc_init(MEMORY[0x277D03948]);
        absoluteString = [v12 absoluteString];
        [v20 setURLString:absoluteString];

        [v20 setRegion:payloadAsString];
        [v20 setLanguage:payloadAsString2];
        [v20 setCalendarDescription:payloadAsString3];
        [array2 addObject:v20];
        if (v10 >= 49)
        {
          [v29 addObject:array2];
          array3 = [MEMORY[0x277CBEB18] array];

          v10 = 0;
          array2 = array3;
        }

        else
        {
          ++v10;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);

    if (v10 < 1)
    {
      self = selfCopy;
      array = v29;
    }

    else
    {
      array = v29;
      [v29 addObject:array2];
      self = selfCopy;
    }
  }

  else
  {
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = array;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(DADClientHolidayCalendarFetchDelegate *)self _sendResults:*(*(&v33 + 1) + 8 * j)];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v25);
  }

  [(DADClientHolidayCalendarFetchDelegate *)self _sendCompletionWithError:0 retryThrottleTime:0.0];
}

- (void)_sendResults:(id)results
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (results)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:results forKey:*MEMORY[0x277D03B68]];
    v14 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v14];
    v6 = v14;
    client = [(DADClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (rawConnection)
    {
      v9 = *MEMORY[0x277D03C88];
      v16[0] = *MEMORY[0x277D03B78];
      v10 = *MEMORY[0x277D03B58];
      v15[0] = v9;
      v15[1] = v10;
      delegateID = [(DADClientDelegate *)self delegateID];
      v15[2] = *MEMORY[0x277D03B60];
      v16[1] = delegateID;
      v16[2] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

      v13 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v13);
    }
  }
}

- (void)_sendCompletionWithError:(id)error retryThrottleTime:(double)time
{
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    client = [(DADClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (rawConnection)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:*MEMORY[0x277D03B50] forKey:*MEMORY[0x277D03C88]];
      delegateID = [(DADClientDelegate *)self delegateID];
      [dictionary setObject:delegateID forKey:*MEMORY[0x277D03B58]];

      if (errorCopy)
      {
        v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
        if (v10)
        {
          [dictionary setObject:v10 forKey:*MEMORY[0x277D03B40]];
        }

        v11 = [MEMORY[0x277CCABB0] numberWithDouble:time];
        [dictionary setObject:v11 forKey:*MEMORY[0x277D03B70]];
      }

      v12 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v12);
    }
  }
}

- (id)syncingAccount
{
  selfCopy = self;
  v45 = *MEMORY[0x277D85DE8];
  v3 = 56;
  syncingAccount = self->_syncingAccount;
  if (!syncingAccount)
  {
    v5 = sharedDAAccountStore();
    aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];

    v7 = [aa_primaryAppleAccount calSyncingAccountUsingChildAccounts:0];
    v8 = +[DADAgentManager sharedManager];
    identifier = [v7 identifier];
    account4 = [v8 accountWithAccountID:identifier];

    if (!account4)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v11 = +[DADAgentManager sharedManager];
      activeAgents = [v11 activeAgents];

      obj = activeAgents;
      v13 = [activeAgents countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v33 = v7;
        v34 = aa_primaryAppleAccount;
        v35 = 56;
        v36 = selfCopy;
        v38 = *v41;
        v15 = *MEMORY[0x277CB8BA0];
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            account = [v17 account];
            backingAccountInfo = [account backingAccountInfo];
            accountType = [backingAccountInfo accountType];
            identifier2 = [accountType identifier];

            account2 = [v17 account];
            backingAccountInfo2 = [account2 backingAccountInfo];
            parentAccount = [backingAccountInfo2 parentAccount];
            accountType2 = [parentAccount accountType];
            identifier3 = [accountType2 identifier];

            if (([identifier2 isEqualToString:v15] & 1) != 0 || objc_msgSend(identifier3, "isEqualToString:", v15))
            {
              account3 = [v17 account];
              v28 = [account3 enabledForDADataclass:4];

              if (v28)
              {
                account4 = [v17 account];

                goto LABEL_15;
              }
            }
          }

          v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        account4 = 0;
LABEL_15:
        v3 = v35;
        selfCopy = v36;
        v7 = v33;
        aa_primaryAppleAccount = v34;
      }

      else
      {
        account4 = 0;
      }
    }

    v29 = *(&selfCopy->super.super.super.isa + v3);
    *(&selfCopy->super.super.super.isa + v3) = account4;

    if (!*(&selfCopy->super.super.super.isa + v3))
    {
      v30 = DALoggingwithCategory();
      v31 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v30, v31))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v30, v31, "HolidayCalendarFetch: Unable to find iCloud account with Calendars enabled.", buf, 2u);
      }
    }

    syncingAccount = *(&selfCopy->super.super.super.isa + v3);
  }

  return syncingAccount;
}

- (id)_getThrottleDateIfApplicable
{
  v2 = *MEMORY[0x277CBF028];
  v3 = CFPreferencesCopyAppValue(@"HolidayCalendarFetchThrottleDate", *MEMORY[0x277CBF028]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = MEMORY[0x277CBEAA8];
    secondsInDay = [currentCalendar secondsInDay];
    v8 = [v6 dateWithTimeIntervalSinceNow:secondsInDay + secondsInDay];
    if ([v4 compare:v8] == 1 || (objc_msgSend(MEMORY[0x277CBEAA8], "date"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v4, "compare:", v9), v9, v10 == -1))
    {
      CFPreferencesSetAppValue(@"HolidayCalendarFetchThrottleDate", 0, v2);
      v11 = 0;
    }

    else
    {
      v11 = v4;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setThrottledRetryDateUsingTimeInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  secondsInDay = [currentCalendar secondsInDay];
  intervalCopy = secondsInDay + secondsInDay;
  if (intervalCopy > interval)
  {
    intervalCopy = interval;
  }

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:intervalCopy];
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_248524000, v8, v9, "HolidayCalendarFetch: Preventing retries until after: %@", &v10, 0xCu);
  }

  CFPreferencesSetAppValue(@"HolidayCalendarFetchThrottleDate", v7, *MEMORY[0x277CBF028]);
}

- (void)_addAuthenticationHeaders
{
  v12 = objc_alloc_init(MEMORY[0x277CCAB70]);
  v3 = MEMORY[0x277CBEAC0];
  allHTTPHeaderFields = [v12 allHTTPHeaderFields];
  v5 = [v3 dictionaryWithDictionary:allHTTPHeaderFields];

  syncingAccount = [(DADClientHolidayCalendarFetchDelegate *)self syncingAccount];
  backingAccountInfo = [syncingAccount backingAccountInfo];

  if ([v12 aa_addAuthTokenOrBasicAuthHeaderWithAccount:backingAccountInfo preferUsingPassword:0])
  {
    v8 = MEMORY[0x277CBEB38];
    allHTTPHeaderFields2 = [v12 allHTTPHeaderFields];
    v10 = [v8 dictionaryWithDictionary:allHTTPHeaderFields2];

    allKeys = [v5 allKeys];
    [v10 removeObjectsForKeys:allKeys];

    [(CalDAVCalendarSearchTask *)self->_searchTask setAdditionalAuthenticationHeaders:v10];
  }
}

@end