@interface CADConferenceUtils
+ (BOOL)_performConferenceURLRenewalWithDatabase:(CalDatabase *)database;
+ (id)_conferenceURLsToRenewWithDatabase:(CalDatabase *)database URLString:(id)string;
+ (id)_extractURLStringsFromCalEvent:(void *)event;
+ (void)performConferenceLinkRenewalIfNeeded;
+ (void)removeNextConferenceLinkRenewalDate;
+ (void)setNextConferenceLinkRenewalDate:(id)date;
@end

@implementation CADConferenceUtils

+ (void)performConferenceLinkRenewalIfNeeded
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "ConferenceRenewal: Starting. Checking whether it is time to run conference link renewal.", buf, 2u);
  }

  v4 = CalDatabaseCreateWithOptions();
  if (v4)
  {
    v5 = v4;
    v6 = CalDatabaseCopyProperty();
    v7 = v6;
    if (v6 && ([v6 doubleValue], v8 > 1.0) && (objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v10;
        _os_log_impl(&dword_22430B000, v11, OS_LOG_TYPE_INFO, "ConferenceRenewal: Found next scheduled run date: %@", buf, 0xCu);
      }

      v12 = 20736000;
      v13 = 7776000;
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
      v16 = v15;
      [v10 timeIntervalSinceReferenceDate];
      if (v16 <= v17)
      {
        v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:31622400.0];
        [v10 timeIntervalSinceReferenceDate];
        v30 = v29;
        [v28 timeIntervalSinceReferenceDate];
        v32 = v31;

        if (v30 <= v32)
        {
LABEL_20:
          CFRelease(v5);
          v26 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v26, OS_LOG_TYPE_INFO, "ConferenceRenewal: Complete.", buf, 2u);
          }

          return;
        }
      }

      else
      {
        v18 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v34 = date;
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_INFO, "ConferenceRenewal: Current date (%@) is after next scheduled run date (%@). Performing link renewal.", buf, 0x16u);
        }

        v19 = [self _performConferenceURLRenewalWithDatabase:v5];

        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v13 = 2592000;
      v12 = 1296000;
      v20 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: No date found for next scheduled run date. Will generate one within 45 days.", buf, 2u);
      }

      v10 = 0;
    }

    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(arc4random() % v13 + v12)];
    v22 = MEMORY[0x277CCACA8];
    [v21 timeIntervalSinceReferenceDate];
    v24 = [v22 stringWithFormat:@"%lf", v23];
    v25 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v21;
      _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_INFO, "ConferenceRenewal: Setting next scheduled run date to %@", buf, 0xCu);
    }

    CalDatabaseSetProperty();
    CalDatabaseSave();

    goto LABEL_20;
  }

  v27 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v27, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Database is nil. Cannot check renewal dates. Aborting", buf, 2u);
  }
}

+ (void)setNextConferenceLinkRenewalDate:(id)date
{
  dateCopy = date;
  v4 = CalDatabaseCreateWithOptions();
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277CCACA8];
    [dateCopy timeIntervalSinceReferenceDate];
    v8 = [v6 stringWithFormat:@"%lf", v7];
    CalDatabaseSetProperty();
    CalDatabaseSave();
    CFRelease(v5);
  }

  else
  {
    v9 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_ERROR, "setNextConferenceLinkRenewalDate: Database is nil. Cannot set renewal date. Aborting", buf, 2u);
    }
  }
}

+ (void)removeNextConferenceLinkRenewalDate
{
  v2 = CalDatabaseCreateWithOptions();
  if (v2)
  {
    v3 = v2;
    CalDatabaseRemoveProperty();
    CalDatabaseSave();

    CFRelease(v3);
  }

  else
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_ERROR, "setNextConferenceLinkRenewalDate: Database is nil. Cannot set renewal date. Aborting", v5, 2u);
    }
  }
}

+ (BOOL)_performConferenceURLRenewalWithDatabase:(CalDatabase *)database
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_INFO, "ConferenceRenewal: Starting URL renewal.", buf, 2u);
  }

  mach_absolute_time();
  v6 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_INFO, "ConferenceRenewal: Retrieving all active conversation links.", buf, 2u);
  }

  v55 = objc_alloc_init(MEMORY[0x277D6EE98]);
  *buf = 0;
  v77 = buf;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__12;
  v80 = __Block_byref_object_dispose__12;
  v81 = 0;
  v7 = dispatch_semaphore_create(0);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __63__CADConferenceUtils__performConferenceURLRenewalWithDatabase___block_invoke;
  v73[3] = &unk_27851BAC8;
  v75 = buf;
  v8 = v7;
  v74 = v8;
  [v55 getActiveLinksWithCreatedOnly:1 completionHandler:v73];
  v9 = dispatch_time(0, 60000000000);
  v52 = v8;
  dispatch_semaphore_wait(v8, v9);
  if (*(v77 + 5))
  {
    v10 = CADLogHandle;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(v77 + 5) count];
      LODWORD(v91) = 134217984;
      *(&v91 + 4) = v11;
      _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_INFO, "ConferenceRenewal: Found %lu links.", &v91, 0xCu);
    }

    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(v77 + 5), "count")}];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v13 = *(v77 + 5);
    v14 = [v13 countByEnumeratingWithState:&v69 objects:v95 count:16];
    if (v14)
    {
      v15 = *v70;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v70 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v69 + 1) + 8 * i);
          v18 = [v17 URL];
          absoluteString = [v18 absoluteString];
          [v12 setObject:v17 forKey:absoluteString];
        }

        v14 = [v13 countByEnumeratingWithState:&v69 objects:v95 count:16];
      }

      while (v14);
    }

    v20 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v91) = 0;
      _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_INFO, "ConferenceRenewal: Searching for events that contain conference URLs that require renewal.", &v91, 2u);
    }

    baseURLs = [MEMORY[0x277D6EE90] baseURLs];
    v22 = [MEMORY[0x277CBEB58] set];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = baseURLs;
    v23 = [obj countByEnumeratingWithState:&v65 objects:v94 count:16];
    if (v23)
    {
      v24 = *v66;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v66 != v24)
          {
            objc_enumerationMutation(obj);
          }

          host = [*(*(&v65 + 1) + 8 * j) host];
          v27 = [self _conferenceURLsToRenewWithDatabase:database URLString:host];
          [v22 addObjectsFromArray:v27];
        }

        v23 = [obj countByEnumeratingWithState:&v65 objects:v94 count:16];
      }

      while (v23);
    }

    group = dispatch_group_create();
    *&v91 = 0;
    *(&v91 + 1) = &v91;
    v92 = 0x2020000000;
    v93 = 0;
    v53 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:31622400.0];
    v28 = CADLogHandle;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v22 count];
      *v89 = 134218242;
      *&v89[4] = v29;
      *&v89[12] = 2112;
      *&v89[14] = v53;
      _os_log_impl(&dword_22430B000, v28, OS_LOG_TYPE_INFO, "ConferenceRenewal: Found a total of %lu conference URLs from events to renew. Setting new expiration date to %@", v89, 0x16u);
    }

    *v89 = 0;
    *&v89[8] = v89;
    *&v89[16] = 0x2020000000;
    v90 = 0;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v30 = v22;
    v31 = 0;
    v32 = [v30 countByEnumeratingWithState:&v61 objects:v88 count:16];
    if (v32)
    {
      v33 = *v62;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v62 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v61 + 1) + 8 * k);
          v36 = [v12 objectForKey:*&v35];
          v37 = v36;
          if (!v36)
          {
            v39 = CADLogHandle;
            if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_42;
            }

            *v82 = 138412290;
            v83 = v35;
            v40 = v39;
            v41 = "ConferenceRenewal: Skipping URL because it isn't owned by this account: %@";
            goto LABEL_41;
          }

          if ([v36 isLocallyCreated])
          {
            v38 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *v82 = 138412290;
              v83 = v35;
              _os_log_impl(&dword_22430B000, v38, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Attempting to renew URL: %@", v82, 0xCu);
            }

            dispatch_group_enter(group);
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __63__CADConferenceUtils__performConferenceURLRenewalWithDatabase___block_invoke_34;
            v57[3] = &unk_27851BAF0;
            *&v57[4] = v35;
            v59 = v89;
            v60 = &v91;
            v58 = group;
            [v55 renewLink:v37 expirationDate:v53 reason:1 completionHandler:v57];

            ++v31;
          }

          else if (([v37 isLocallyCreated] & 1) == 0)
          {
            v42 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *v82 = 138412290;
              v83 = v35;
              v40 = v42;
              v41 = "ConferenceRenewal: Skipping URL because it wasn't locally created: %@";
LABEL_41:
              _os_log_impl(&dword_22430B000, v40, OS_LOG_TYPE_DEBUG, v41, v82, 0xCu);
            }
          }

LABEL_42:
        }

        v32 = [v30 countByEnumeratingWithState:&v61 objects:v88 count:16];
      }

      while (v32);
    }

    v43 = dispatch_time(0, (([v30 count] * 2.0 + 30.0) * 1000000000.0));
    dispatch_group_wait(group, v43);
    mach_absolute_time();
    CalAnalyticsTimeIntervalFromMachTimes();
    v45 = v44;
    v46 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v47 = v45;
      v48 = *(*(&v91 + 1) + 24);
      *v82 = 134218496;
      v83 = v47;
      v84 = 2048;
      v85 = v48;
      v86 = 2048;
      v87 = v31;
      _os_log_impl(&dword_22430B000, v46, OS_LOG_TYPE_INFO, "ConferenceRenewal: Finished URL renewal in %f seconds. Renewed %lu / %lu links.", v82, 0x20u);
    }

    if (v31 < 3 || *(*(&v91 + 1) + 24) || *(*&v89[8] + 24) != v31)
    {
      v50 = 1;
    }

    else
    {
      v49 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v82 = 0;
        _os_log_impl(&dword_22430B000, v49, OS_LOG_TYPE_ERROR, "ConferenceRenewal: all link renewals failed with seemingly transient errors. Will retry later.", v82, 2u);
      }

      v50 = 0;
    }

    _Block_object_dispose(v89, 8);

    _Block_object_dispose(&v91, 8);
  }

  else
  {
    v50 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v50;
}

void __63__CADConferenceUtils__performConferenceURLRenewalWithDatabase___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Failed to retrieve links. error = %@", &v9, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __63__CADConferenceUtils__performConferenceURLRenewalWithDatabase___block_invoke_34(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v6 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Successfully renewed URL: %@", &v12, 0xCu);
    }
  }

  else
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Unable to renew URL: %@, error = %@", &v12, 0x16u);
    }

    v10 = [v5 domain];
    if ([v10 isEqual:*MEMORY[0x277CCA050]])
    {
      if ([v5 code] == 4099)
      {
      }

      else
      {
        v11 = [v5 code];

        if (v11 != 4097)
        {
          goto LABEL_12;
        }
      }

      ++*(*(*(a1 + 48) + 8) + 24);
      goto LABEL_12;
    }
  }

LABEL_12:
  dispatch_group_leave(*(a1 + 40));
}

+ (id)_conferenceURLsToRenewWithDatabase:(CalDatabase *)database URLString:(id)string
{
  v61 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = CADLogHandle;
  if (stringCopy)
  {
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v58 = stringCopy;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Starting search for conference URLs with base host: %@", buf, 0xCu);
    }

    v8 = CalFilterCreateWithDatabaseShowingAll();
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v11 = v10;

    v12 = CalDatabaseCopyEventOccurrenceCache();
    v13 = CADLogHandle;
    if (v12)
    {
      v14 = v12;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = stringCopy;
        _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: searching for events containing the base URL %@", buf, 0xCu);
      }

      v15 = CalDatabaseCopyEventIDsOfEventsMatching();
      if (v15)
      {
        v16 = v15;
        v54 = v14;
        v55 = v8;
        Count = CFArrayGetCount(v15);
        v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
        v19 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v58 = stringCopy;
          v59 = 2048;
          v60 = Count;
          _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Search for events containing URL %@ returned %lu results", buf, 0x16u);
        }

        v52 = stringCopy;
        v20 = MEMORY[0x277CBF128];
        theArray = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
        Mutable = CFArrayCreateMutable(0, Count, v20);
        if (Count < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          for (i = 0; i != Count; ++i)
          {
            *buf = CFArrayGetValueAtIndex(v16, i);
            v24 = MEMORY[0x22AA4B950](database);
            if (v24)
            {
              v25 = v24;
              if (CalCalendarItemHasRecurrenceRules())
              {
                v26 = CFNumberCreate(0, kCFNumberIntType, buf);
                CFArrayAppendValue(theArray, v26);
                CFArrayAppendValue(Mutable, v25);
                CFRelease(v26);
              }

              else
              {
                CalEventGetEndDate();
                if (v27 > v11)
                {
                  v28 = [self _extractURLStringsFromCalEvent:v25];
                  if ([v28 count])
                  {
                    [v18 addObjectsFromArray:v28];
                  }

                  ++v22;
                }
              }

              CFRelease(v25);
            }
          }
        }

        v30 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v31 = v30;
          v32 = CFArrayGetCount(theArray);
          *buf = 134217984;
          v58 = v32;
          _os_log_impl(&dword_22430B000, v31, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Of those, %lu have recurrences", buf, 0xCu);
        }

        v33 = CADLogHandle;
        v14 = v54;
        v8 = v55;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v58 = v22;
          _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Also found %lu events in the future", buf, 0xCu);
        }

        date2 = [MEMORY[0x277CBEAA8] date];
        [date2 timeIntervalSinceReferenceDate];

        HaveOccurrencesAfterDate = CalEventOccurrenceCacheDoEventsHaveOccurrencesAfterDate();
        if (HaveOccurrencesAfterDate)
        {
          v36 = HaveOccurrencesAfterDate;
          v37 = CFArrayGetCount(Mutable);
          v38 = CFArrayCreateMutable(0, v37, MEMORY[0x277CBF128]);
          stringCopy = v53;
          if (CFArrayGetCount(v36) >= 1)
          {
            v39 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v36, v39);
              *buf = 0;
              CFNumberGetValue(ValueAtIndex, kCFNumberIntType, buf);
              if (*buf)
              {
                v41 = CFArrayGetValueAtIndex(Mutable, v39);
                CFArrayAppendValue(v38, v41);
              }

              ++v39;
            }

            while (v39 < CFArrayGetCount(v36));
          }

          v42 = CFArrayGetCount(v38);
          v43 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v58 = v42;
            _os_log_impl(&dword_22430B000, v43, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: And of those, %lu events with future occurrences.", buf, 0xCu);
          }

          if (CFArrayGetCount(v38) >= 1)
          {
            v44 = 0;
            do
            {
              v45 = [self _extractURLStringsFromCalEvent:{CFArrayGetValueAtIndex(v38, v44)}];
              if ([v45 count])
              {
                [v18 addObjectsFromArray:v45];
              }

              ++v44;
            }

            while (v44 < CFArrayGetCount(v38));
          }

          CFRelease(v36);
          CFRelease(v38);
          v14 = v54;
          v8 = v55;
        }

        else
        {
          v46 = CADLogHandle;
          stringCopy = v53;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v46, OS_LOG_TYPE_INFO, "ConferenceRenewal: No events found with occurrences after date.", buf, 2u);
          }
        }

        CFRelease(v16);
        CFRelease(theArray);
        CFRelease(Mutable);
      }

      else
      {
        v29 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v58 = stringCopy;
          _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_INFO, "ConferenceRenewal: Search for events containing URL %@ returned nil", buf, 0xCu);
        }

        v18 = 0;
      }

      CFRelease(v14);
    }

    else
    {
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Occurrence cache is nil. Will not perform link renewal.", buf, 2u);
      }

      v18 = 0;
    }

    CFRelease(v8);
    v47 = [v18 count];
    v48 = CADLogHandle;
    if (v47)
    {
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        v49 = v48;
        v50 = [v18 count];
        *buf = 134218242;
        v58 = v50;
        v59 = 2112;
        v60 = stringCopy;
        _os_log_impl(&dword_22430B000, v49, OS_LOG_TYPE_INFO, "ConferenceRenewal: Search completed. Found %lu URLs with host %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v58 = stringCopy;
      _os_log_impl(&dword_22430B000, v48, OS_LOG_TYPE_ERROR, "ConferenceRenewal. Search completed. Unable to find URLs for with host %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_INFO, "ConferenceRenewal: conference URL search returning nil because no URLString was provided.", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

+ (id)_extractURLStringsFromCalEvent:(void *)event
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = CalCalendarItemCopyDescription();
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CF7780] deserializeConference:v3];
    conference = [v5 conference];
    joinMethods = [conference joinMethods];
    v8 = [joinMethods count];

    if (v8)
    {
      v32 = v4;
      v9 = MEMORY[0x277CBEB18];
      conference2 = [v5 conference];
      joinMethods2 = [conference2 joinMethods];
      v12 = [v9 arrayWithCapacity:{objc_msgSend(joinMethods2, "count")}];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = v5;
      conference3 = [v5 conference];
      joinMethods3 = [conference3 joinMethods];

      v15 = [joinMethods3 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(joinMethods3);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            v20 = MEMORY[0x277CF7788];
            v21 = [v19 URL];
            LODWORD(v20) = [v20 isTUConversationLink:v21];

            if (v20)
            {
              v22 = CADLogHandle;
              if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
              {
                v23 = v22;
                v24 = [v19 URL];
                absoluteString = [v24 absoluteString];
                *buf = 138412290;
                v38 = absoluteString;
                _os_log_impl(&dword_22430B000, v23, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: adding URL: %@", buf, 0xCu);
              }

              v26 = [v19 URL];
              absoluteString2 = [v26 absoluteString];
              [v12 addObject:absoluteString2];
            }
          }

          v16 = [joinMethods3 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v16);
      }

      v5 = v31;
      v4 = v32;
    }

    else
    {
      v29 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_INFO, "ConferenceRenewal: Skipping a found event because was unable to deserialize conference data", buf, 2u);
      }

      v12 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v28 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v28, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Skipping a found event because it has no notes", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

@end