uint64_t sub_22B522470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

uint64_t sub_22B522B1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

uint64_t sub_22B5233D8()
{
  qword_281420F78 = objc_alloc_init(IMDCKExitManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5235D8(uint64_t a1)
{
  v1 = [*(a1 + 32) recordZoneManager];
  [v1 createSubscriptionIfNeededOnDeDupeZoneForSubscription:@"ExitRecordKeyManateeZoneSubscription" recordType:@"Exit" completionBlock:0];
}

void sub_22B523DC8(id *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ([a1[4] _saltZoneCreated])
  {
    if (([a1[4] _subscriptionCreated] & 1) == 0 && IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "We were not able to create the subscription, we'll still try to write the exit record as we'll retry updating the subscription on imagent launch", buf, 2u);
      }
    }

    v3 = objc_alloc(MEMORY[0x277CBC5A0]);
    v4 = [a1[4] exitRecordID];
    v5 = [v3 initWithRecordType:@"Exit" recordID:v4];

    [v5 setObject:a1[5] forKey:@"CloudKitExitOnDate"];
    v6 = objc_alloc(MEMORY[0x277CBC4A0]);
    v18[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v8 = [v6 initWithRecordsToSave:v7 recordIDsToDelete:0];

    v9 = [a1[4] exitConfiguration];
    [v8 setConfiguration:v9];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B524144;
    v14[3] = &unk_278703790;
    v14[4] = a1[4];
    v15 = a1[5];
    v16 = a1[6];
    [v8 setModifyRecordsCompletionBlock:v14];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "writeExitRecordWithDate scheduling opperation", buf, 2u);
      }
    }

    [a1[4] _scheduleOperation:v8];

    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "******* Failed writeExitRecordWithDate salt zone was not present *********", buf, 2u);
    }
  }

  if (a1[6])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B52430C;
    v12[3] = &unk_2787028D8;
    v13 = a1[6];
    dispatch_async(MEMORY[0x277D85CD0], v12);
    v5 = v13;
LABEL_18:
  }
}

void sub_22B524144(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "writeExitRecordWithDate returned with error: %@", buf, 0xCu);
    }
  }

  if (!v9)
  {
    [*(a1 + 32) setExitRecordDate:*(a1 + 40)];
    [*(a1 + 32) setErrorFetchingExitDate:0];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B5242E4;
  v13[3] = &unk_2787028B0;
  v11 = *(a1 + 48);
  v14 = v9;
  v15 = v11;
  v12 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

uint64_t sub_22B5242E4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

void sub_22B52430C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.IMDCKExitManagerErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_22B5246F4(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) fetchedExitDateOnLaunch];
      v9 = [*(a1 + 32) errorFetchingExitDate];
      v10 = v9;
      v11 = @"NO";
      *v15 = 138413058;
      *&v15[4] = v5;
      *&v15[12] = 2112;
      if (v8)
      {
        v11 = @"YES";
      }

      *&v15[14] = v6;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Updating our exit date to %@  with error %@. fetchedExitDateOnLaunch [%@] or previous errorFetchingDate [%@]", v15, 0x2Au);
    }
  }

  [*(a1 + 32) setFetchedExitDateOnLaunch:{1, *v15, *&v15[8]}];
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = [*(a1 + 32) exitRecordDate];
    v14 = [*(a1 + 32) errorFetchingExitDate];
    (*(v12 + 16))(v12, v13, v14);
  }
}

void sub_22B524898(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) exitRecordDate];
      v5 = [*(a1 + 32) errorFetchingExitDate];
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Dispatching back to main queue exitDate: %@ error: %@", &v9, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) exitRecordDate];
  v8 = [*(a1 + 32) errorFetchingExitDate];
  (*(v6 + 16))(v6, v7, v8);
}

void sub_22B524AE8(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setIsSyncing:1];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Calling _fetchExitRecordDateWithCompletion", buf, 2u);
    }
  }

  v3 = objc_alloc(MEMORY[0x277CBC3E0]);
  v4 = [*(a1 + 32) exitRecordID];
  v17[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v6 = [v3 initWithRecordIDs:v5];

  v7 = [*(a1 + 32) exitConfiguration];
  [v6 setConfiguration:v7];

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_22B524D30;
  v12 = &unk_278703830;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v6 setFetchRecordsCompletionBlock:&v9];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "_fetchExitRecordDateWithCompletion scheduling opperation %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _scheduleOperation:{v6, v9, v10, v11, v12, v13}];
}

void sub_22B524D30(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "** Error fetching exit record %@", buf, 0xCu);
      }
    }

    v9 = (a1 + 32);
    [*(a1 + 32) setIsSyncing:0];
    if ([v6 code] == 2)
    {
      v10 = [*v9 errorAnalyzer];
      v11 = [v10 CKPartialError:v6 onlyHasErrorCodes:&unk_283F4EDC8];

      if (v11)
      {

        v12 = 0;
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (v7)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Done fetching exit record successfully", buf, 2u);
      }
    }

    v9 = (a1 + 32);
    [*(a1 + 32) setIsSyncing:0];
  }

  v14 = [*v9 exitRecordID];
  v15 = [v5 objectForKeyedSubscript:v14];

  v12 = [v15 valueForKey:@"CloudKitExitOnDate"];

  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B525110;
    block[3] = &unk_278702FF0;
    v16 = v6;
    v24 = v16;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v17 = v24;
    goto LABEL_23;
  }

LABEL_16:
  v17 = [*v9 exitRecordDate];
  [*v9 setExitRecordDate:v12];
  if (([v12 isEqualToDate:v17] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v26 = v17;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exit date has been modified from %@ to %@, attempting to toggle icloud settings toggle", buf, 0x16u);
      }
    }

    [*v9 _evalToggleiCloudSettingsSwitch];
  }

  v16 = 0;
LABEL_23:

  [*(a1 + 32) setErrorFetchingExitDate:v16];
  if (*(a1 + 40))
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B525208;
    v19[3] = &unk_278702CC8;
    v22 = *(a1 + 40);
    v20 = v12;
    v21 = v16;
    dispatch_async(MEMORY[0x277D85CD0], v19);
  }
}

void sub_22B525110(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Unable to fetch exit zone record Error: %@", &v6, 0xCu);
    }
  }

  v5 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v5 autoBugCaptureWithSubType:@"ExitRecord" errorPayload:*(a1 + 32)];
}

void sub_22B525340(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBC4A0]);
  v3 = [*(a1 + 32) exitRecordID];
  v11[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [v2 initWithRecordsToSave:0 recordIDsToDelete:v4];

  [v5 setAtomic:1];
  [v5 setSavePolicy:2];
  v6 = [*(a1 + 32) exitConfiguration];
  [v5 setConfiguration:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B525524;
  v9[3] = &unk_278703858;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 40);
  [v5 setModifyRecordsCompletionBlock:v9];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "deleteExitRecordWithCompletion scheduling opperation", v8, 2u);
    }
  }

  [*(a1 + 32) _scheduleOperation:v5];
}

void sub_22B525524(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if ([v9 code] == 2)
    {
      v11 = [*(a1 + 32) errorAnalyzer];
      v12 = [v11 CKPartialError:v10 onlyHasErrorCodes:&unk_283F4EDE0];

      if (v12)
      {

        v10 = 0;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "deleteExitRecordWithCompletion returned with error: %@", buf, 0xCu);
    }
  }

  if (!v10)
  {
    [*(a1 + 32) setExitRecordDate:0];
    [*(a1 + 32) setErrorFetchingExitDate:0];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22B525710;
  v16[3] = &unk_2787028B0;
  v14 = *(a1 + 40);
  v17 = v10;
  v18 = v14;
  v15 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

uint64_t sub_22B525710(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

void sub_22B525D90(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating salt zone %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B5260F0(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating exit zone subscription %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B5265DC(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (a2)
      {
        v6 = @"YES";
      }

      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Wrote last sync date to CK first time, success %@, error %@", &v7, 0x16u);
    }
  }
}

void sub_22B5268D0(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(a1 + 32) errorAnalyzer];
  v6 = [v5 errorIndicatesZoneNotCreated:v4];

  if (v6)
  {

    v4 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Submitted metric with opGroupName %@ Error %@", &v9, 0x16u);
    }
  }
}

void sub_22B526B90(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating analytic zone %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B526ED4(id *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1[4] errorAnalyzer];
  v6 = [v5 errorIndicatesZoneNotCreated:v4];

  if (v6)
  {
    v7 = [a1[4] ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B527120;
    block[3] = &unk_2787038F8;
    block[4] = a1[4];
    v14 = a1[5];
    v15 = a1[6];
    dispatch_async(v7, block);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = a1[5];
        v9 = a1[6];
        *buf = 138412546;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Submitted metric with opName %@, dict: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [a1[5] objectForKeyedSubscript:@"syncErrors"];
        *buf = 138412290;
        v17 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Reporting errors: %@", buf, 0xCu);
      }
    }
  }
}

void sub_22B527120(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Analytic zone does not exist, so creating it before resubmitting metric.", buf, 2u);
    }
  }

  v4 = [*(a1 + 32) _analyticZoneCreated];
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Successfully created analytic zone so trying to submit metric again.", buf, 2u);
      }
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B527328;
    v11[3] = &unk_2787038D0;
    v11[4] = v7;
    v12 = v9;
    v13 = *(a1 + 40);
    [v7 submitCloudKitAnalyticWithDictionary:v8 operationGroupName:v12 completion:v11];
  }

  else if (v5)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Failed to create analytic zone.", buf, 2u);
    }
  }
}

void sub_22B527328(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(a1 + 32) errorAnalyzer];
  v6 = [v5 errorIndicatesZoneNotCreated:v4];

  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Issue, we created the zone and we got back same error again.", &v14, 2u);
      }
    }
  }

  else
  {
    if (v7)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Submitted metric with opName %@, dict: %@", &v14, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 48) objectForKeyedSubscript:@"syncErrors"];
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Reporting errors: %@", &v14, 0xCu);
      }
    }
  }
}

void sub_22B5274F4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5274C0);
  }

  _Unwind_Resume(a1);
}

void sub_22B527838(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBC4A0]);
  v22[0] = a1[4];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v4 = [v2 initWithRecordsToSave:v3 recordIDsToDelete:0];

  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setAllowsCellularAccess:1];
  [v5 setQualityOfService:17];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v6 setName:a1[5]];
  [v4 setSavePolicy:2];
  [v4 setGroup:v6];
  [v4 setConfiguration:v5];
  v7 = [v4 operationID];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Trying to submit CK metric operation with ID %@", buf, 0xCu);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v10 = a1[6];
  v9 = a1 + 6;
  v14 = sub_22B527A70;
  v15 = &unk_278703920;
  v19 = *(v9 + 16);
  v16 = v10;
  v17 = v7;
  v18 = v9[1];
  v11 = v7;
  [v4 setModifyRecordsCompletionBlock:&v12];
  [*v9 _scheduleMetricOperation:{v4, v12, v13, v14, v15, v16}];
}

void sub_22B527A70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 56) == 1)
  {
    v10 = [*(a1 + 32) errorAnalyzer];
    v11 = [v10 CKPartialError:v9 onlyHasErrorCodes:&unk_283F4EDF8];

    if (v11)
    {

      v9 = 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      if (*(a1 + 56))
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Completion called for submittion metric operation with ID %@. ignoreZoneNotFoundError %@ OperationError %@", buf, 0x20u);
    }
  }

  if (*(a1 + 48))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B527C6C;
    v15[3] = &unk_2787028B0;
    v17 = *(a1 + 48);
    v16 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

void sub_22B528654(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBC5F8]);
  v3 = [v2 initWithZoneName:@"Messages_Enabled" ownerName:*MEMORY[0x277CBBF28]];
  v4 = objc_alloc(MEMORY[0x277CBC3D0]);
  v13[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v6 = [v4 initWithRecordZoneIDs:v5];

  v7 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v7 setQualityOfService:{objc_msgSend(*(a1 + 32), "derivedQualityOfService")}];
  [v7 setAllowsCellularAccess:1];
  v8 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v8 setDefaultConfiguration:v7];
  [v8 setName:@"Messages Enabled Ping"];
  [v8 setQuantity:1];
  [v6 setGroup:v8];
  [v6 setFetchRecordZonesCompletionBlock:&unk_283F19808];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 operationID];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Scheduling ping cloudkit fetch zone operation %@", &v11, 0xCu);
    }
  }

  [*(a1 + 32) _scheduleOperation:v6];
}

void sub_22B528858(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "sendCloudKitZoneFetchRequestToNoteFeatureIsOn: Fetch zone operation error %@", &v7, 0xCu);
    }
  }
}

uint64_t sub_22B529304()
{
  qword_27D8CFE00 = objc_alloc_init(IMDCKSyncTokenStore);

  return MEMORY[0x2821F96F8]();
}

IMDRecordZoneManager *sub_22B52B178()
{
  result = objc_alloc_init(IMDRecordZoneManager);
  qword_281420F80 = result;
  return result;
}

uint64_t sub_22B52BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = IMOSLoggingEnabled();
  if (a3)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v13 = 138412546;
    v14 = a2;
    v15 = 2112;
    v16 = a3;
    v8 = "We failed to create the subscription: %@  with error: %@";
    v9 = v7;
    v10 = 22;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v13 = 138412290;
    v14 = a2;
    v8 = "We successfully created subscription: %@";
    v9 = v11;
    v10 = 12;
  }

  _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, v8, &v13, v10);
LABEL_9:
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0, a3);
  }

  return result;
}

uint64_t (**sub_22B52BF60(uint64_t a1, uint64_t a2, uint64_t a3))(void *, uint64_t, void)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We are already subscribed to: %@", &v12, 0xCu);
      }
    }

    result = *(a1 + 64);
    if (result)
    {
      return result[2](result, 1, a3);
    }
  }

  else
  {
    if (v6)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We are not subscribed to subscriptionID: %@ so let's create it", &v12, 0xCu);
      }
    }

    return [*(a1 + 40) _createSubscriptionForZoneID:*(a1 + 48) subscriptionID:*(a1 + 32) recordType:*(a1 + 56) completionBlock:*(a1 + 64)];
  }

  return result;
}

uint64_t sub_22B52C404(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a2 count];
  if (a3 || !v6)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Did not get back a zone for recordZoneID %@", &v13, 0xCu);
      }
    }

    goto LABEL_10;
  }

  if (![a2 objectForKeyedSubscript:*(a1 + 32)])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    v8 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [a2 objectForKeyedSubscript:*(a1 + 32)];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found zone %@", &v13, 0xCu);
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_11:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v8, a3);
  }

  return result;
}

uint64_t sub_22B52C6FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [a2 containsObject:*(a1 + 32)];
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = IMOSLoggingEnabled();
  if (v8 == 1)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v16 = 138412290;
    v17 = a2;
    v11 = "Successfully created zone %@ ";
    v12 = v10;
    v13 = 12;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v16 = 138412546;
    v17 = a2;
    v18 = 2112;
    v19 = a4;
    v11 = "***** Failed to createzone %@ %@ ";
    v12 = v14;
    v13 = 22;
  }

  _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, v11, &v16, v13);
LABEL_12:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v8, a4);
  }

  return result;
}

void sub_22B52C910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v6 = IMOSLoggingEnabled();
  if (a3 || !v4)
  {
    if (v6)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = @"NO";
        *buf = 138412802;
        if (v4)
        {
          v12 = @"YES";
        }

        v20 = v11;
        v21 = 2112;
        v22 = v12;
        v23 = 2112;
        v24 = a3;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "createRecordZoneIfNeededWithCompletionBlock zone %@ exists %@ error %@", buf, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [*(a1 + 40) zoneID];
        *buf = 138412290;
        v20 = v14;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Attempting to create zone %@", buf, 0xCu);
      }
    }

    v15 = [*(a1 + 40) copy];
    v16 = *(a1 + 48);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22B52CB98;
    v18[3] = &unk_278703A30;
    v17 = *(a1 + 40);
    v18[4] = v16;
    v18[5] = v17;
    v18[6] = *(a1 + 56);
    [v16 _createRecordZone:v15 completionBlock:v18];
  }

  else
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Zone %@ already exists", buf, 0xCu);
      }
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }
}

uint64_t sub_22B52CB98(uint64_t a1, int a2)
{
  if (a2)
  {
    [objc_msgSend(*(a1 + 32) "ckUtilities")];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_22B52CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = a3;
        v14 = 2112;
        v15 = a4;
        v8 = "Failed to delete zone IDs%@ error %@";
        v9 = v7;
        v10 = 22;
LABEL_8:
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, v8, &v12, v10);
      }
    }
  }

  else if (v6)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = a3;
      v8 = "Successfully deleted zone IDs%@";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }
}

void sub_22B52D7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Result of deleting all zones", &v16, 2u);
    }
  }

  v8 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v16 = 138412802;
        v17 = a3;
        v18 = 2112;
        v19 = a4;
        v20 = 2112;
        v21 = v10;
        v11 = "Failed to delete zone IDs%@ error %@ DB %@";
        v12 = v9;
        v13 = 32;
LABEL_11:
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, v11, &v16, v13);
      }
    }
  }

  else if (v8)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = 138412546;
      v17 = a3;
      v18 = 2112;
      v19 = v15;
      v11 = "Successfully deleted zone IDs%@ DB %@";
      v12 = v14;
      v13 = 22;
      goto LABEL_11;
    }
  }
}

void sub_22B52DC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_15;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error obtaining zones %@", buf, 0xCu);
    }
  }

  v6 = [objc_msgSend(*(a1 + 32) "errorAnalyzer")];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "******* Error indicates device does not have keys to sync *****", buf, 2u);
      }
    }

    v9 = 0;
    goto LABEL_16;
  }

  if (!v7)
  {
    v3 = 0;
LABEL_15:
    v9 = 1;
    goto LABEL_16;
  }

  v10 = OSLogHandleForIMFoundationCategory();
  v9 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Not a fatal manatee error %@. Proceeding", buf, 0xCu);
  }

  v3 = 0;
LABEL_16:
  v11 = *(a1 + 40);
  if (v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B52DE70;
    block[3] = &unk_278703AC8;
    v13 = v9;
    block[4] = v3;
    block[5] = v11;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t sub_22B52F8D8()
{
  qword_281420F28 = objc_alloc_init(IMDAvailabilityVerificationManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22B52FE58(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0978();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Caching subscription validation tokens %@ for handle handleID: %@", &v14, 0x16u);
      }
    }

    v10 = [IMDAvailabilityVerificationTokens alloc];
    v11 = [v5 subscriptionValidationToken];
    v12 = [v5 encryptionValidationToken];
    v13 = [(IMDAvailabilityVerificationTokens *)v10 initWithSubscriptionValidationToken:v11 encryptionValidationToken:v12];

    [*(*(a1 + 40) + 16) setObject:v13 forKey:*(a1 + 32)];
  }
}

void sub_22B52FFFC(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D09E8();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Caching subscription validation token %@ and no encryption token for handle handleID: %@", &v11, 0x16u);
      }
    }

    v10 = [[IMDAvailabilityVerificationTokens alloc] initWithSubscriptionValidationToken:v5 encryptionValidationToken:0];
    [*(*(a1 + 40) + 16) setObject:v10 forKey:*(a1 + 32)];
  }
}

void sub_22B530548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5305A8(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0A94();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v13 = 134218498;
        v14 = a2;
        v15 = 2112;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received validity response of %ld for validation token %@ from senderHandleID %@", &v13, 0x20u);
      }
    }

    if (a2 != 2)
    {
      if (a2 == 1)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_5;
        }

        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received a valid validity response, no further action needed.", &v13, 2u);
        }
      }

      else
      {
        if (a2)
        {
          goto LABEL_5;
        }

        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D0B80();
        }
      }

      goto LABEL_5;
    }

    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0B08();
    }

    [WeakRetained _inviteSenderHandleID:*(a1 + 40) fromHandleID:*(a1 + 48)];
  }

LABEL_5:
}

void sub_22B530958(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134218498;
      v9 = a2;
      v10 = 2048;
      v11 = a3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Completed invitation. CanShare: %ld, DidShare: %ld, Error: %@", &v8, 0x20u);
    }
  }
}

uint64_t sub_22B531FAC()
{
  qword_2814210E8 = objc_alloc_init(IMDDistributedNotificationXPCEventStreamHandler);

  return MEMORY[0x2821F96F8]();
}

void sub_22B532C00(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B532AD4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B5339E0(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 fileTransferGUIDs];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 threadOriginator];
    v8 = [v7 fileTransferGUIDs];

    if (v5)
    {
      v9 = [v5 arrayByAddingObjectsFromArray:v8];

      v5 = v9;
    }

    else
    {
      v5 = v8;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v4 transferForGUID:{*(*(&v19 + 1) + 8 * v14), v19}];
        v16 = [v15 _dictionaryRepresentation];
        if (v16)
        {
          [v6 addObject:v16];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [v6 copy];
  return v17;
}

uint64_t sub_22B533C5C(uint64_t a1)
{
  qword_281420F88 = [objc_alloc(objc_opt_class()) initWithChatRegistry:0 vocabulary:0];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B534718(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 24) setVocabulary:*(a1 + 40) ofType:2];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 40) count];
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Updated the SiriKit group names vocabulary with %lu named group chats", &v5, 0xCu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_22B5349B0()
{
  v0 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v1 = [v0 isSpotlightReindexRefactorEnabled];

  v2 = off_2786FFC88;
  if (!v1)
  {
    v2 = off_2786FFC80;
  }

  qword_281420EE8 = objc_alloc_init(*v2);

  return MEMORY[0x2821F96F8]();
}

void sub_22B534DC4(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    if (!state)
    {
      v5 = [*(a1 + 32) _newSpotlightBatchIndexingXPCCriteria];
      v6 = xpc_activity_copy_criteria(v3);
      v7 = v6;
      if (!v6 || !xpc_equal(v6, v5))
      {
        xpc_activity_set_criteria(v3, v5);
      }

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Got called to index CS in check in state", &v25, 2u);
        }
      }
    }

    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"YES";
      if (!v3)
      {
        v10 = @"NO";
      }

      v25 = 138412290;
      v26 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Got called to index CS in run state with non null activity %@", &v25, 0xCu);
    }
  }

  if (![MEMORY[0x277D1A978] reindexingSuspended])
  {
    if (!xpc_activity_set_state(v3, 4) && IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "We did not set the state of xpc_activity from core duet to continue successfully for CS indexing", &v25, 2u);
      }
    }

    if (+[IMDaemonCoreSpotlightUtilities needsReindexing](IMDaemonCoreSpotlightUtilities, "needsReindexing") && ([*(a1 + 32) _reindexingInProgress] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Initiating reindex!", &v25, 2u);
        }
      }

      [*(a1 + 32) _setReindexReason];
      v20 = [MEMORY[0x277D18EC0] synchronousQueryProvider];
      v21 = [MEMORY[0x277D18EB8] contextWithReason:{objc_msgSend(*(a1 + 32), "_indexReason")}];
      [v20 setNeedsMessageReindexingWithContext:v21 completion:&unk_283F19988];

      if (!v3)
      {
        goto LABEL_11;
      }

      if ([MEMORY[0x277D1A978] needsIndexing])
      {
        if ([*(a1 + 32) _deviceConditionsAllowsSpotlightIndexingForActivity:v3])
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              LOWORD(v25) = 0;
              _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Starting batch indexing after initial index complete, device state is good", &v25, 2u);
            }
          }

          [*(a1 + 32) _indexNextBatchIfNecessaryForActivity:v3];
        }

        goto LABEL_11;
      }

      v23 = xpc_activity_set_state(v3, 5);
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_11;
      }

      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v24 = @"NO";
        if (v23)
        {
          v24 = @"YES";
        }

        v25 = 138412290;
        v26 = v24;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Setting CS xpc_activity state to done, no additional batch indexes required after initial indexing. Success: %@", &v25, 0xCu);
      }
    }

    else
    {
      v15 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      if ([v15 isSpotlightReindexRefactorEnabled])
      {
      }

      else
      {
        v16 = [*(a1 + 32) _reindexingInProgress];

        if (v16)
        {
          if ([*(a1 + 32) _deviceConditionsAllowsSpotlightIndexingForActivity:v3])
          {
            [*(a1 + 32) _reindexResumed];
            [*(a1 + 32) _indexNextBatchIfNecessaryForActivity:v3];
          }

          goto LABEL_11;
        }
      }

      if (!v3)
      {
        goto LABEL_11;
      }

      v17 = xpc_activity_set_state(v3, 5);
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_11;
      }

      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = @"NO";
        if (v17)
        {
          v18 = @"YES";
        }

        v25 = 138412290;
        v26 = v18;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Setting CS xpc_activity state to done. Success: %@", &v25, 0xCu);
      }
    }

LABEL_64:

    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277D1A978] reindexingSuspendedUntilDate];
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Reindexing is suspended until %@, not proceeding", &v25, 0xCu);
    }
  }

  if (!xpc_activity_set_state(v3, 5) && IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "We did not set the state of xpc_activity from core duet to continue successfully for CS indexing", &v25, 2u);
    }

    goto LABEL_64;
  }

LABEL_11:
}

void sub_22B53540C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0BE4(v2, v3);
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_5;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Reindex request complete", v4, 2u);
    }
  }

LABEL_5:
}

void sub_22B5355B4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_22B5356C8;
    v4[3] = &unk_278703C58;
    v5 = v2;
    [IMDaemonCoreSpotlightUtilities stageIndexingDeletionForMigrationIfNeededWithCompletion:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "IMDaemon_CoreSpotlight - Migration activity not in runs state", buf, 2u);
    }
  }
}

void sub_22B5356C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0C5C(v3, v4);
    }
  }

  if (!xpc_activity_set_state(*(a1 + 32), 5) && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "IMDaemon_CoreSpotlight - Failed to mark migration activity done", v6, 2u);
    }
  }
}

void sub_22B535BEC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1A978] reindexSupplementalBatchSize];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v9 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Running batch request with size %lu", buf, 0xCu);
    }
  }

  if ([MEMORY[0x277D1A978] needsIndexing])
  {
    v4 = [MEMORY[0x277D18EC0] synchronousQueryProvider];
    [MEMORY[0x277D1A978] reindexReason];
    v5 = IMCoreSpotlightIndexReasonFromReindexReason();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_22B535D78;
    v6[3] = &unk_278703C58;
    v7 = *(a1 + 32);
    [v4 indexNextMessageBatchIfNeeded:v2 reason:v5 completion:v6];
  }
}

void sub_22B535D78(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDaemonCoreSpotlightUtilities lastIndexedRowID];
      v6 = [MEMORY[0x277D1A978] needsIndexing];
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Index next batch request complete. New lastIndexedRowID %lu needsIndexing %@", &v8, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_22B535EA4(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D1A978] needsIndexing] & 1) != 0 || objc_msgSend(MEMORY[0x277D1A978], "needsDonation"))
  {
    v2 = [*(a1 + 32) _deviceConditionsAllowsSpotlightIndexingForActivity:*(a1 + 40)];
    v3 = IMOSLoggingEnabled();
    if (v2)
    {
      if (v3)
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "needsIndexing = YES and device conditions are good, starting next batch request", buf, 2u);
        }
      }

      v5 = dispatch_time(0, 500000000);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_22B5361E8;
      v17[3] = &unk_278702FA0;
      v6 = *(a1 + 40);
      v17[4] = *(a1 + 32);
      v18 = v6;
      dispatch_after(v5, MEMORY[0x277D85CD0], v17);
    }

    else
    {
      if (v3)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "needsIndexing = YES but device conditions are not good, activity should be in defer state", buf, 2u);
        }
      }

      [*(a1 + 32) _reindexPaused];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277D1A978] needsIndexing];
        v10 = [*(a1 + 32) _deviceConditionsAllowsSpotlightIndexingForActivity:*(a1 + 40)];
        v11 = @"NO";
        if (v9)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        if (v10)
        {
          v11 = @"YES";
        }

        *buf = 138412546;
        v20 = v12;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "needsIndexing %@ deviceConditions %@ not kicking off next batch", buf, 0x16u);
      }
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = xpc_activity_set_state(v13, 5);
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = @"NO";
          if (v14)
          {
            v16 = @"YES";
          }

          *buf = 138412290;
          v20 = v16;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting CS xpc_activity state to done. Success: %@", buf, 0xCu);
        }
      }
    }
  }
}

void sub_22B536FE0(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 pathExtension];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D19250] defaultHFSFileManager];
    v7 = [*(a1 + 32) type];
    v5 = [v6 pathExtensionForUTIType:v7];

    if (![v5 length])
    {
      v8 = [MEMORY[0x277D19250] defaultHFSFileManager];
      v9 = [*(a1 + 32) mimeType];
      v10 = [v8 pathExtensionForMIMEType:v9];

      v5 = v10;
    }

    if ([v5 length])
    {
      v11 = [v3 absoluteString];
      v12 = [v11 stringByDeletingPathExtension];

      v13 = [v12 stringByAppendingPathExtension:v5];

      if ([v13 length])
      {
        v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];

        v3 = v14;
      }
    }
  }

  if (v3)
  {
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [v15 im_generateCopyForURL:v3];
  }

  else
  {
    v16 = 0;
  }

  v34 = v5;
  v17 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v46 = v3;
    v47 = 2112;
    v48 = v16;
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Source URL: %@  Link: %@", buf, 0x16u);
  }

  v18 = +[IMDRelayTranscodeController sharedInstance];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v3;
  }

  v32 = v19;
  [*(a1 + 32) type];
  v20 = v33 = v3;
  v21 = [*(a1 + 40) session];
  v22 = [v21 service];
  v31 = [v22 transcodeTarget];
  v23 = [*(a1 + 32) transcoderUserInfo];
  v30 = [*(a1 + 32) isSticker];
  v24 = *(a1 + 112);
  v25 = [*(a1 + 40) shouldSendLowResolutionOnly] ^ 1;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B5373B8;
  v35[3] = &unk_278703CF8;
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v36 = v26;
  v37 = v27;
  v44 = *(a1 + 96);
  v38 = v28;
  v39 = v16;
  v43 = *(a1 + 88);
  v40 = *(a1 + 72);
  v41 = *(a1 + 32);
  v42 = *(a1 + 80);
  v29 = v16;
  [v18 transcodeFileTransferContents:v32 utiType:v20 target:v31 transcoderUserInfo:v23 isSticker:v30 highQualityMaxByteSize:v24 lowQualityMaxByteSize:v24 representations:v25 completionBlock:v35];
}

void sub_22B5373B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, int a7, void *a8)
{
  v82 = *MEMORY[0x277D85DE8];
  v50 = a2;
  v14 = a3;
  v52 = a4;
  v56 = a5;
  v54 = a8;
  v57 = [*(a1 + 32) transferForGUID:*(a1 + 40)];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (a7)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      v79 = v57;
      v80 = 2112;
      v81 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Transcode processing complete for transfer: %@  (Attempted Transcode: %@)", buf, 0x16u);
    }
  }

  if (a6)
  {
    v17 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v14;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Transcoding succeeded with output URLs: %@", buf, 0xCu);
    }

    v18 = [v57 localPath];
    v19 = [v18 lastPathComponent];

    v20 = [v14 __imFirstObject];
    v21 = [v20 path];
    v22 = [v21 lastPathComponent];

    v23 = [v19 pathExtension];
    v24 = [v22 pathExtension];
    v25 = v24;
    if (v23 && v24 && ([v23 isEqualToString:v24] & 1) == 0)
    {
      v26 = [v19 stringByAppendingPathExtension:v25];
      [v57 setTransferredFilename:v26];

      v27 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v19 stringByAppendingPathExtension:v25];
        *buf = 138412290;
        v79 = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "          Setting transferred filename: %@", buf, 0xCu);
      }
    }

    v29 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v14;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, "All URLs: %@", buf, 0xCu);
    }

    v30 = dispatch_group_create();
    dispatch_group_enter(v30);
    if ([v14 count])
    {
      v31 = 0;
      v32 = MEMORY[0x277D85DD0];
      while (1)
      {
        v33 = [v14 objectAtIndex:v31];
        v34 = v33;
        if (*(*(*(a1 + 104) + 8) + 24) != 1)
        {
          break;
        }

        dispatch_group_enter(v30);
        v35 = [MEMORY[0x277D1ADF0] sharedInstance];
        v63[0] = v32;
        v63[1] = 3221225472;
        v63[2] = sub_22B537B84;
        v63[3] = &unk_278703CD0;
        v64 = v57;
        v58 = *(a1 + 32);
        v36 = v58.i64[0];
        v65 = vextq_s8(v58, v58, 8uLL);
        v73 = *(a1 + 88);
        v66 = v56;
        v75 = v31;
        v67 = *(a1 + 64);
        v68 = *(a1 + 72);
        v37 = *(a1 + 80);
        v74 = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
        v76 = a7;
        v69 = v37;
        v70 = v34;
        v71 = *(a1 + 56);
        v72 = v30;
        v38 = v34;
        [v35 compressFileTransfer:v38 completionBlock:v63];

        if (++v31 >= [v14 count])
        {
          goto LABEL_24;
        }
      }
    }

LABEL_24:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B538C14;
    block[3] = &unk_278702C50;
    v39 = v14;
    v40 = *(a1 + 104);
    v60 = v39;
    v62 = v40;
    v61 = *(a1 + 48);
    dispatch_group_notify(v30, MEMORY[0x277D85CD0], block);
    dispatch_group_leave(v30);
  }

  else
  {
    *(*(*(a1 + 96) + 8) + 24) = 25;
    *(*(*(a1 + 104) + 8) + 24) = 0;
    v41 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v56;
      _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_DEFAULT, "Transcoding failed with error: %@", buf, 0xCu);
    }

    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = v57;
        _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Failed transcoding transfer: %@", buf, 0xCu);
      }
    }

    v43 = *(a1 + 32);
    v44 = [v57 guid];
    [v43 failTransfer:v44 reason:15];

    dispatch_group_leave(*(a1 + 48));
    if (*(a1 + 56))
    {
      v45 = [MEMORY[0x277CCAA00] defaultManager];
      v46 = *(a1 + 56);
      v77 = 0;
      v47 = [v45 removeItemAtURL:v46 error:&v77];
      v30 = v77;

      if ((v47 & 1) == 0 && IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = *(a1 + 56);
          *buf = 138412546;
          v79 = v49;
          v80 = 2112;
          v81 = v30;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Error cleaning up linked path: %@  error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v30 = 0;
    }
  }
}

void sub_22B537B84(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, int a6)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v62) = a6;
    _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Compressed attachment: %{BOOL}d", buf, 8u);
  }

  v13 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v10;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "           Input Path: %@", buf, 0xCu);
  }

  v14 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v11;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "          Output Path: %@", buf, 0xCu);
  }

  v15 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v62) = a5;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "              Success: %{BOOL}d", buf, 8u);
  }

  v47 = v10;

  if (a6)
  {
    v16 = [*(a1 + 32) localPath];
    v17 = [v16 lastPathComponent];

    v18 = [v11 path];
    v19 = [v18 lastPathComponent];

    v20 = [v17 pathExtension];
    v21 = [v19 pathExtension];
    v22 = v21;
    if (v20 && v21 && ([v20 isEqualToString:v21] & 1) == 0)
    {
      v23 = *(a1 + 32);
      v24 = [v17 stringByAppendingPathExtension:v22];
      [v23 setTransferredFilename:v24];

      v25 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [*(a1 + 32) transferredFilename];
        *buf = 138412290;
        v62 = v26;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "          Setting transferred filename: %@", buf, 0xCu);
      }
    }
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v28 = v27;
  v29 = [MEMORY[0x277D1ADF8] sharedInstance];
  v30 = [v11 path];
  v31 = [v30 stringByResolvingAndStandardizingPath];
  v46 = *MEMORY[0x277D186A8];
  v32 = *(a1 + 40);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_22B5380A0;
  v60[3] = &unk_278703C80;
  v60[4] = v32;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_22B53819C;
  v48[3] = &unk_278703CA8;
  v33 = *(a1 + 48);
  v57 = v28;
  *&v34 = v33;
  *(&v34 + 1) = *(a1 + 40);
  v45 = v34;
  v55 = *(a1 + 112);
  v35 = *(a1 + 56);
  v58 = *(a1 + 136);
  v36 = *(a1 + 64);
  *&v37 = v35;
  *(&v37 + 1) = v36;
  v49 = v45;
  v50 = v37;
  v38 = *(a1 + 72);
  v39 = *(a1 + 80);
  v56 = *(a1 + 120);
  v59 = *(a1 + 144);
  v40 = *(a1 + 88);
  v41 = *(a1 + 96);
  *&v42 = v40;
  *(&v42 + 1) = v41;
  *&v43 = v38;
  *(&v43 + 1) = v39;
  v51 = v43;
  v52 = v42;
  v53 = v11;
  v54 = *(a1 + 104);
  v44 = v11;
  [v29 sendFilePath:v31 topic:v46 userInfo:0 transferID:v32 encryptFile:1 progressBlock:v60 completionBlock:v48];
}

void sub_22B5380A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218496;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Send progress updated to %lld of %lld (%lld bps)", &v10, 0x20u);
  }

  v9 = +[IMDFileTransferCenter sharedInstance];
  [v9 updateTransfer:*(a1 + 32) currentBytes:a2 totalBytes:a3];
}

void sub_22B53819C(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v90 = *MEMORY[0x277D85DE8];
  v73 = a2;
  v79 = COERCE_DOUBLE(a4);
  v74 = a5;
  value = a6;
  v76 = a7;
  v78 = a8;
  v75 = a9;
  [*(a1 + 32) transferForGUID:*(a1 + 40)];
  *&v80 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v17 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v17)
    {
      v18 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v85 = *&v80;
        v86 = 2112;
        v87 = @"YES";
        v88 = 2112;
        v89 = v79;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Finished uploading transfer: %@   success: %@  error: %@", buf, 0x20u);
      }
    }

    v19 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v21 = v20 - *(a1 + 136);
      *buf = 134217984;
      v85 = v21;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Time taken: %f", buf, 0xCu);
    }

    v22 = [(__CFString *)v80 userInfo];
    *&v23 = COERCE_DOUBLE([v22 mutableCopy]);

    if (*&v23 == 0.0)
    {
      *&v23 = COERCE_DOUBLE(CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]));
    }

    v24 = @"mmcs-signature-hex";
    v25 = *(a1 + 144);
    v26 = @"mmcs-owner";
    v27 = @"mmcs-url";
    v28 = @"decryption-key";
    v29 = @"file-size";
    if (v25)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"mmcs-signature-hex", v25];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"mmcs-owner", *(a1 + 144)];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"mmcs-url", *(a1 + 144)];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"decryption-key", *(a1 + 144)];
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"file-size", *(a1 + 144)];
    }

    v30 = [v76 __imHexString];
    if (v30)
    {
      CFDictionarySetValue(v23, v24, v30);
    }

    if (value)
    {
      CFDictionarySetValue(v23, v26, value);
    }

    if (v78)
    {
      CFDictionarySetValue(v23, v27, v78);
    }

    v31 = [v75 __imHexString];
    if (v31)
    {
      CFDictionarySetValue(v23, v28, v31);
    }

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:a10];
    v33 = [v32 stringValue];

    if (v33)
    {
      CFDictionarySetValue(v23, v29, v33);
    }

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v85 = *&v23;
        v86 = 2112;
        v87 = v80;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "  setting userinfo: %@  on transfer: %@", buf, 0x16u);
      }
    }

    [(__CFString *)v80 setUserInfo:v23];
    v35 = [*(a1 + 56) guid];
    [(__CFString *)v80 setMessageGUID:v35];

    [*(a1 + 32) updateTransfer:*(a1 + 40) currentBytes:a10 totalBytes:a10];
    [*(a1 + 32) endTransfer:*(a1 + 40)];
    [(__CFDictionary *)v23 setObject:*(a1 + 40) forKey:qword_27D8CBA38];
    v36 = [*(a1 + 64) filename];
    [(__CFDictionary *)v23 setObject:v36 forKey:qword_27D8CBA40];

    v37 = [*(a1 + 64) type];

    if (v37)
    {
      v38 = [*(a1 + 64) type];
      [(__CFDictionary *)v23 setObject:v38 forKey:qword_27D8CBA48];
    }

    [*(a1 + 72) addObject:v23];
  }

  else
  {
    if (v17)
    {
      v39 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v85 = *&v80;
        v86 = 2112;
        v87 = @"NO";
        v88 = 2112;
        v89 = v79;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Failed uploading transfer: %@   success: %@  error: %@", buf, 0x20u);
      }
    }

    v40 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      [(__CFString *)v80 transferDataURL];
      v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v85 = v41;
      _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_DEFAULT, "transfer data url: %@", buf, 0xCu);
    }

    v42 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v44 = v43 - *(a1 + 136);
      *buf = 134217984;
      v85 = v44;
      _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_DEFAULT, "Time taken: %f", buf, 0xCu);
    }

    v45 = *(a1 + 112);
    if (v45)
    {
      (*(v45 + 16))(v45, COERCE_DOUBLE(*&v79), v78, a10);
    }

    v46 = [*(a1 + 48) code];
    v47 = *(a1 + 32);
    v48 = *(a1 + 40);
    if (v46 == -6)
    {
      [v47 failTransfer:v48 reason:23];
    }

    else if (v46 == -5)
    {
      [v47 failTransfer:v48 reason:22];
    }

    else
    {
      [v47 failTransfer:v48 error:*&v79];
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v85 = v79;
        _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "  setting complete success to NO because of attachment send result. (Error: %@)", buf, 0xCu);
      }
    }

    *(*(*(a1 + 120) + 8) + 24) = 0;
    *(*(*(a1 + 128) + 8) + 24) = _FZErrorTypeFromNSError();
  }

  if (*(a1 + 152) == 1)
  {
    v50 = [MEMORY[0x277CCAA00] defaultManager];
    v51 = *(a1 + 80);
    v83 = 0;
    v52 = [v50 removeItemAtURL:v51 error:&v83];
    v53 = v83;

    if ((v52 & 1) == 0 && IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = *(a1 + 80);
        *buf = 138412546;
        v85 = v55;
        v86 = 2112;
        v87 = v53;
        _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Error cleaning up transcoded path: %@  error: %@", buf, 0x16u);
      }
    }
  }

  if (*(a1 + 88))
  {
    v56 = [MEMORY[0x277CCAA00] defaultManager];
    v57 = *(a1 + 88);
    v82 = 0;
    v58 = [v56 removeItemAtURL:v57 error:&v82];
    v59 = v82;

    if ((v58 & 1) == 0)
    {
      v60 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = *(a1 + 88);
        *buf = 138412546;
        v85 = v61;
        v86 = 2112;
        v87 = v59;
        _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_DEFAULT, "Error cleaning up linked path: %@  error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v59 = 0;
  }

  v62 = [*(a1 + 96) path];
  if (v62)
  {
    v63 = [*(a1 + 96) path];
    v64 = IMSafeTemporaryDirectory();
    v65 = [v64 path];
    if ([v63 hasPrefix:v65])
    {
      v66 = [MEMORY[0x277CCAA00] defaultManager];
      v67 = [*(a1 + 96) path];
      v81 = v59;
      v68 = [v66 removeItemAtPath:v67 error:&v81];
      v69 = v81;

      v70 = v68 ^ 1;
      v59 = v69;
    }

    else
    {
      v70 = 0;
    }

    if (v70)
    {
      v71 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        [*(a1 + 96) path];
        v72 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v85 = v72;
        v86 = 2112;
        v87 = v59;
        _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_DEFAULT, "Error cleaning up output path: %@  error: %@", buf, 0x16u);
      }
    }
  }

  dispatch_group_leave(*(a1 + 104));
}

void sub_22B538C14(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "  All done url set for: %@   success: %{BOOL}d", &v5, 0x12u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_22B538CDC(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = *(*(a1[7] + 8) + 24);
    v8 = 138412546;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "  All done transfer set for: %@   success: %{BOOL}d", &v8, 0x12u);
  }

  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, a1[5], *(*(a1[7] + 8) + 24), *(*(a1[8] + 8) + 24));
  }

  v6 = *(a1[9] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_22B539164(uint64_t a1, unsigned int a2)
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412290;
    v91 = v4;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Network availability check complete: %@", buf, 0xCu);
  }

  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v91) = (a2 >> 1) & 1;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "   Cell available: %{BOOL}d", buf, 8u);
  }

  v6 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v91) = a2 & 1;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "   WiFi available: %{BOOL}d", buf, 8u);
  }

  v58 = +[IMDFileTransferCenter sharedInstance];
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 1;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  group = dispatch_group_create();
  v7 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) fileTransferGUIDs];
    *buf = 138412290;
    v91 = v8;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Checking message file tranfers: %@", buf, 0xCu);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v9 = [*(a1 + 32) fileTransferGUIDs];
  v10 = [v9 countByEnumeratingWithState:&v78 objects:v100 count:16];
  if (!v10)
  {
    goto LABEL_46;
  }

  v47 = v10;
  obj = v9;
  v11 = 0;
  v12 = *v79;
  v45 = *MEMORY[0x277D186A8];
  do
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v79 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v78 + 1) + 8 * i);
      v14 = [v58 transferForGUID:v13];
      if (v14)
      {
        dispatch_group_enter(group);
        v15 = [v14 filename];
        v55 = [v15 lastPathComponent];

        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v17 = [v16 im_randomTemporaryFileURLWithFileName:v55];
        v54 = [v17 path];

        [v14 _setNeedsWrapper:0];
        v18 = [*(a1 + 32) guid];
        [v14 setMessageGUID:v18];

        v19 = [*(a1 + 32) accountID];
        [v58 assignTransfer:v13 toAccount:v19 otherPerson:*(a1 + 40)];

        v20 = [v14 userInfo];
        v21 = [v20 _stringForKey:@"mmcs-url"];
        v57 = v20;
        v56 = [v20 _stringForKey:@"mmcs-signature-hex"];
        if (v21)
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v91 = v56;
              _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, " => Settled on signature: %@", buf, 0xCu);
            }
          }

          v52 = [v57 _stringForKey:@"mmcs-owner"];
          v23 = [v57 objectForKey:@"file-size"];
          v24 = [v23 stringValue];

          v53 = [v57 _stringForKey:@"decryption-key"];
          v25 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v91 = v14;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, " transfer: %@", buf, 0xCu);
          }

          v26 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v91 = v57;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "    user info: %@", buf, 0xCu);
          }

          v27 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413314;
            v91 = v21;
            v92 = 2112;
            v93 = v52;
            v94 = 2112;
            v95 = v56;
            v96 = 2112;
            v97 = v53;
            v98 = 2112;
            v99 = v24;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, " urlString: %@   owner: %@    signature: %@  key: %@  fileSizeString: %@", buf, 0x34u);
          }

          v28 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, " ** Auto downloading file!", buf, 2u);
          }

          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v30 = v29;
          v49 = v21;
          v50 = v14;
          v31 = [*(a1 + 32) isFromMe];
          v32 = MEMORY[0x277D1AB80];
          v33 = *(a1 + 32);
          if (v31)
          {
            v34 = [v33 service];
            [v32 fromMeContextWithServiceName:v34];
          }

          else
          {
            v34 = [v33 service];
            [v32 untrustedContextWithServiceName:v34];
          }
          v48 = ;

          v38 = [MEMORY[0x277D1ADF8] sharedInstance];
          v39 = [v54 stringByResolvingAndStandardizingPath];
          v40 = [v56 _FTDataFromHexString];
          v41 = [v53 _FTDataFromHexString];
          v42 = [v24 integerValue];
          v43 = [*(a1 + 32) balloonBundleID];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = sub_22B539CD4;
          v77[3] = &unk_278703C80;
          v77[4] = v13;
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = sub_22B539DD0;
          v67[3] = &unk_278703D70;
          v68 = v50;
          v76 = v30;
          v69 = *(a1 + 32);
          v44 = v24;
          v70 = v44;
          v71 = v58;
          v72 = v13;
          v74 = &v86;
          v75 = &v82;
          v73 = group;
          [v38 receiveFileTransfer:v13 transferGUID:v13 topic:v45 path:v39 requestURLString:v49 ownerID:v52 signature:v40 decryptionKey:v41 fileSize:v42 balloonBundleID:v43 senderContext:v48 progressBlock:v77 completionBlock:v67];

          v21 = v49;
          v14 = v50;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, " => No signature found, nothing to download here", buf, 2u);
            }
          }

          v37 = [v14 guid];
          [v58 failTransfer:v37 error:0];

          *(v87 + 24) = 0;
          *(v83 + 6) = 35;
          dispatch_group_leave(group);
        }

        v11 = 1;
      }

      else if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v91 = v13;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "No transfer found for guid: %@", buf, 0xCu);
        }
      }
    }

    v47 = [obj countByEnumeratingWithState:&v78 objects:v100 count:16];
  }

  while (v47);

  if (v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B53A28C;
    block[3] = &unk_278703D98;
    v62 = *(a1 + 32);
    v65 = &v86;
    v64 = *(a1 + 48);
    v63 = *(a1 + 40);
    v66 = &v82;
    dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

    v9 = v62;
LABEL_46:
  }

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
}

void sub_22B539CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218496;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Receive progress updated to %lld of %lld (%lld bps)", &v10, 0x20u);
  }

  v9 = +[IMDFileTransferCenter sharedInstance];
  [v9 updateTransfer:*(a1 + 32) currentBytes:a2 totalBytes:a3];
}

void sub_22B539DD0(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = @"NO";
      *v38 = 138412802;
      if (a4)
      {
        v18 = @"YES";
      }

      *&v38[4] = v17;
      v39 = 2112;
      v40 = v18;
      v41 = 2112;
      v42 = v14;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Finished downloading transfer: %@   success: %@  error: %@", v38, 0x20u);
    }
  }

  v19 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v21 = v20 - *(a1 + 96);
    *v38 = 134217984;
    *&v38[4] = v21;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Time taken: %f", v38, 0xCu);
  }

  if (a4)
  {
    v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];
    [*(a1 + 32) setUserInfo:0];
    if (v22 && ([MEMORY[0x277CCAA00] defaultManager], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "path"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "fileExistsAtPath:", v24), v24, v23, v25))
    {
      v26 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 138412290;
        *&v38[4] = v13;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Adding gatekeeper properties to: %@", v38, 0xCu);
      }

      v27 = +[IMDFileTransferCenter sharedInstance];
      [v27 addDefaultGatekeeperPropertiesToDirectory:v13];

      v28 = *(a1 + 32);
      v29 = [*(a1 + 40) guid];
      [v28 setMessageGUID:v29];

      [*(a1 + 32) _setLocalURL:v22];
      v30 = [*(a1 + 48) integerValue];
      [*(a1 + 56) updateTransfer:*(a1 + 64) currentBytes:v30 totalBytes:v30];
      [*(a1 + 56) endTransfer:*(a1 + 64)];
      v31 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 138412290;
        *&v38[4] = v22;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_DEFAULT, "Set transfer local url to: %@", v38, 0xCu);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = *(a1 + 32);
          *v38 = 138412290;
          *&v38[4] = v37;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Could not locate file for transfer: %@", v38, 0xCu);
        }
      }

      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 88) + 8) + 24) = 35;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = *(a1 + 32);
        *v38 = 138412546;
        *&v38[4] = v33;
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Failed retreiving file transfer: %@   error: %@", v38, 0x16u);
      }
    }

    v34 = *(a1 + 56);
    v35 = [*(a1 + 32) guid];
    [v34 failTransfer:v35 error:v14];

    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 88) + 8) + 24) = 35;
  }

  dispatch_group_leave(*(a1 + 72));
}

uint64_t sub_22B53A28C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) fileTransferGUIDs];
    v4 = *(*(*(a1 + 56) + 8) + 24);
    v6 = 138412546;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "  All done transfer set for: %@   success: %{BOOL}d", &v6, 0x12u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 40), *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 64) + 8) + 24));
  }

  return result;
}

void sub_22B53BC0C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMOSLoggingEnabled();
  if (!v6 || v7)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay: %@", &v13, 0xCu);
      }
    }
  }

  else if (v8)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "File safe render success with output URLs: %@", &v13, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) guid];
  [v11 _sendFileURL:v6 forMessageGUID:v12 attachmentIndex:*(a1 + 48)];
}

void sub_22B53BDCC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, int a7, void *a8)
{
  v47 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a8;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"NO";
      if (a7)
      {
        v18 = @"YES";
      }

      *buf = 138412546;
      v44 = v15;
      v45 = 2112;
      v46 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Transcode processing complete for transfer: %@  (Attempted Transcode: %@)", buf, 0x16u);
    }
  }

  v19 = IMOSLoggingEnabled();
  if (a6)
  {
    if (v19)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = v16;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Transcoding succeeded with output URLs: %@", buf, 0xCu);
      }
    }

    v21 = [(__CFString *)v16 lastObject];
    v22 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v21];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        *buf = 138412546;
        v44 = v24;
        v45 = 2112;
        v46 = v21;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Forwarding Attachment with guid %@ to local peer. Filepath %@", buf, 0x16u);
      }
    }

    v41[0] = IMDRelayLocalMessageDictionaryGUIDKey;
    v25 = [*(a1 + 40) guid];
    v42[0] = v25;
    v41[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v42[1] = v26;
    v41[2] = IMDRelayLocalMessageDictionaryFileDataKey;
    v42[2] = v22;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

    v28 = JWEncodeDictionary();
    v29 = [v28 _FTCopyGzippedData];
    v39[0] = IMDRelayLocalMessageDictionaryDictKey;
    v39[1] = IMDRelayLocalMessageDictionaryTypeKey;
    v40[0] = v29;
    v40[1] = IMDRelayLocalMessageTypeRemoteFileResponse;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v31 = +[IMDRelayServiceController sharedInstance];
    v32 = [v31 sendToLocalPeers:v30];

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = @"NO";
        if (v32)
        {
          v34 = @"YES";
        }

        *buf = 138412290;
        v44 = v34;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Got success? %@", buf, 0xCu);
      }
    }
  }

  else if (v19)
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Transcoding Failed for Peer Relay:", buf, 2u);
    }
  }
}

BOOL sub_22B53C718(void *a1)
{
  v2 = [a1 context];
  v3 = [v2 batchNumber];
  if (v3)
  {
    v4 = [a1 context];
    v5 = [v4 totalBatchCount];
    if (v5)
    {
      v6 = [a1 context];
      v7 = [v6 batchNumber];
      if ([v7 longLongValue] < 0)
      {
        v12 = 0;
      }

      else
      {
        v8 = [a1 context];
        v9 = [v8 totalBatchCount];
        if ([v9 longLongValue] < 1)
        {
          v12 = 0;
        }

        else
        {
          v16 = [a1 context];
          v15 = [v16 batchNumber];
          v14 = [v15 longLongValue];
          [a1 context];
          v10 = v17 = v8;
          v11 = [v10 totalBatchCount];
          v12 = v14 < [v11 longLongValue];

          v8 = v17;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_22B53D140(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B53D104);
  }

  _Unwind_Resume(a1);
}

void sub_22B53D7C0()
{
  v0 = [IMDMessageFromStorageController alloc];
  v3 = +[IMDMessageStore sharedInstance];
  v1 = [(IMDMessageFromStorageController *)v0 initWithMessageStore:v3];
  v2 = qword_281421320;
  qword_281421320 = v1;
}

void sub_22B53D898()
{
  v0 = [IMDMessageFromStorageController alloc];
  v3 = +[IMDMessageStore sharedInstance];
  v1 = [(IMDMessageFromStorageController *)v0 initWithMessageStore:v3];
  v2 = qword_281421460;
  qword_281421460 = v1;
}

void sub_22B53EC38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v16 = [v5 objectForKey:a2];
  v7 = [*(a1 + 40) broadcaster];
  v8 = [*(a1 + 48) lastObject];
  v9 = [v8 accountID];
  v10 = [v16 chatIdentifier];
  v11 = [v16 style];
  v12 = [v16 chatProperties];
  v13 = [v16 groupID];
  v14 = [v16 personCentricID];
  LOBYTE(v15) = 1;
  [v7 account:v9 chat:v10 style:v11 chatProperties:v12 groupID:v13 chatPersonCentricID:v14 messagesReceived:v6 removed:MEMORY[0x277CBEBF8] messagesComingFromStorage:v15];
}

void sub_22B53EEF0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id sub_22B53EF08(void *a1)
{
  v1 = [a1 accountRegisteredURIs];
  v2 = [v1 __imArrayByApplyingBlock:&unk_283F19A08];

  return v2;
}

void sub_22B53F394(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B53F308);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B53F534()
{
  qword_281420F90 = objc_alloc_init(IMDMomentShareManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22B53F694(uint64_t a1)
{
  v2 = [*(a1 + 32) shareURLsToContexts];
  v3 = [v2 copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B53F74C;
  v5[3] = &unk_278703F30;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_22B53F74C(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _updateContext:*(*(&v9 + 1) + 8 * v8++) withChange:*(a1 + 40)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_22B53FACC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B53FA50);
  }

  _Unwind_Resume(a1);
}

void sub_22B5406E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x22B540514);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B540728(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 32) guid];
        *buf = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Fetched moment share %@ for message %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1310(a1);
    }

    if (v6)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D13F0(a1, v6, v10);
      }
    }
  }

  if (*(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B540954;
    block[3] = &unk_278702CC8;
    v14 = *(a1 + 48);
    v12 = v5;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_22B54096C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) guid];
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "IMDMomentShareManager - Request for moment share %@ for message %@ has not completed after 5 seconds", &v6, 0x16u);
    }
  }
}

void sub_22B540B3C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B540C00;
    block[3] = &unk_278703FA8;
    v8 = *(a1 + 32);
    v9 = a2;
    v7 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_22B540EF8(uint64_t a1)
{
  v4 = [*(a1 + 32) shareURL];
  v2 = [*(a1 + 40) shareURLsToContexts];
  v3 = [v2 objectForKey:v4];
  [v3 removeObject:*(a1 + 32)];
  if (![v3 count])
  {
    [v2 removeObjectForKey:v4];
  }
}

void sub_22B541908(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B541620);
  }

  _Unwind_Resume(a1);
}

void sub_22B541C28(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) guid];
      v9 = v8;
      v10 = @"NO";
      *buf = 138413058;
      v23 = v7;
      v24 = 2112;
      if (a2)
      {
        v10 = @"YES";
      }

      v25 = v10;
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Moment share %@ accepted success %@ error %@ for message %@", buf, 0x2Au);
    }
  }

  if (a2)
  {
    [*(a1 + 48) _fetchAssetsForAcceptedMomentShareWithContext:*(a1 + 56)];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1630(a1, v5, v11);
    }

    v12 = [v5 userInfo];
    v13 = [v12 objectForKey:*MEMORY[0x277CBBF68]];

    v14 = *(a1 + 64);
    v15 = IMLogHandleForCategory();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14 & 1 | (v13 == 0))
    {
      if (v16)
      {
        sub_22B7D1770(a1);
      }

      [*(a1 + 48) _handleIngestionFailureForContext:*(a1 + 56)];
    }

    else
    {
      if (v16)
      {
        sub_22B7D1708();
      }

      [v13 doubleValue];
      v18 = dispatch_time(0, (v17 * 1000000000.0));
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_22B541ECC;
      v20[3] = &unk_278702FA0;
      v19 = *(a1 + 56);
      v20[4] = *(a1 + 48);
      v21 = v19;
      dispatch_after(v18, MEMORY[0x277D85CD0], v20);
    }
  }
}

void sub_22B5425C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22B5425DC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isFinished];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_22B542F10(uint64_t a1)
{
  v3 = [MEMORY[0x277CD97B0] changeRequestForAsset:*(a1 + 32)];
  v2 = [*(a1 + 40) guid];
  [v3 setSyndicationIdentifierOnMomentSharedAsset:v2];
}

void sub_22B542F84(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1848();
    }
  }
}

void sub_22B5438FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[IMDFileTransferCenter sharedInstance];
    [v7 updateTransfer:*(a1 + 32) currentBytes:*(a1 + 64) totalBytes:*(a1 + 64)];

    v8 = *(a1 + 72);
    v9 = [*(a1 + 40) guid];
    v16 = 0;
    v10 = [v8 _copiedFileURLFromAssetExportFileURLs:v5 transferGUID:v9 error:&v16];
    v11 = v16;

    if (v10)
    {
      v12 = *(*(a1 + 56) + 16);
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D1CA4();
      }

      v12 = *(*(a1 + 56) + 16);
    }

    v12();
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1D10();
    }

    v14 = +[IMDFileTransferCenter sharedInstance];
    [v14 updateTransfer:*(a1 + 32) currentBytes:0 totalBytes:0];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_22B5447B8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B544714);
  }

  _Unwind_Resume(a1);
}

void sub_22B544818(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 64) _fileTransferForAssetUUID:v5 forMessage:*(a1 + 32) momentShare:*(a1 + 40) atIndex:*(a1 + 72) + a3 ofTotal:*(a1 + 80)];
  [*(a1 + 48) addObject:v6];
  v7 = *(a1 + 56);
  v8 = [v6 guid];
  [v7 addObject:v8];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Generated transfer %@ for asset %@", &v10, 0x16u);
    }
  }
}

void sub_22B544EF8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_22B547A54(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v34 = 138412290;
      v35 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "User Notificaion has been completed with information %@", &v34, 0xCu);
    }
  }

  if (![v3 response])
  {
    v13 = [v3 responseInformation];
    v14 = [v13 objectForKey:*MEMORY[0x277D19220]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v34) = 0;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "The user entered no code... or the code entered was not an NSString", &v34, 2u);
        }
      }

      [*(a1 + 32) sendApprovalResponseToDevice:*(a1 + 40) enteredCorrectly:0 wasCancelled:0];
      goto LABEL_38;
    }

    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v16 = *(*(a1 + 32) + 24);
    v17 = [*(a1 + 40) uniqueID];
    v18 = [v16 _numberForKey:v17];

    v19 = [v15 numberFromString:v14];
    if (v19 && v18)
    {
      v20 = [v18 isEqualToNumber:v19];
      v21 = IMOSLoggingEnabled();
      if (v20)
      {
        if (v21)
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            LOWORD(v34) = 0;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "The Code Is Correct, Welcome", &v34, 2u);
          }
        }

        [*(a1 + 32) _addDeviceToAllowedSMSRelay:*(a1 + 40) shouldSendApproval:1];
        goto LABEL_37;
      }

      if (v21)
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(v34) = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "The Code Is Incorrect, Goodbye", &v34, 2u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Unable to create a code number from the user inputed information or we have no pin to compare against, this will fail validation", &v34, 2u);
      }
    }

    [*(a1 + 32) sendApprovalResponseToDevice:*(a1 + 40) enteredCorrectly:0 wasCancelled:0];
LABEL_37:

LABEL_38:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.sms.smsRelayDevices.changed", 0, 0, 0);
    v27 = *(*(a1 + 32) + 24);
    v28 = [*(a1 + 40) uniqueID];
    v29 = [v27 objectForKey:v28];

    if (v29)
    {
      v30 = *(*(a1 + 32) + 24);
      v31 = [*(a1 + 40) uniqueID];
      [v30 removeObjectForKey:v31];

      if (![*(*(a1 + 32) + 24) count])
      {
        v32 = *(a1 + 32);
        v33 = *(v32 + 24);
        *(v32 + 24) = 0;
      }
    }

    goto LABEL_42;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "You Tapped Cancel, Goodbye!!", &v34, 2u);
    }
  }

  [*(a1 + 32) sendApprovalResponseToDevice:*(a1 + 40) enteredCorrectly:0 wasCancelled:1];
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v6, @"com.apple.sms.smsRelayDevices.changed", 0, 0, 0);
  v7 = *(*(a1 + 32) + 24);
  v8 = [*(a1 + 40) uniqueID];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = *(*(a1 + 32) + 24);
    v11 = [*(a1 + 40) uniqueID];
    [v10 removeObjectForKey:v11];

    if (![*(*(a1 + 32) + 24) count])
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      *(v12 + 24) = 0;
LABEL_42:
    }
  }
}

void sub_22B54993C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 4 || a3)
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v4 = +[IMDCKUtilities sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B549A20;
    v7[3] = &unk_2787040E8;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [v4 fetchiCloudAccountPersonID:v7];
  }
}

void sub_22B549A20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![*(a1 + 32) _areiMessageAndiCloudAccountTheSame:v5])
  {
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "iCloud and iMessage account is the same, and icloud is HSA2 trusted, auto enabling devices for sms relay", v9, 2u);
      }
    }

    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

void sub_22B549C04(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldAutoEnableDevicesforSMSRelay received error %@", buf, 0xCu);
    }
  }

  if (a2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [*(a1 + 32) serviceDelegate];
    v8 = [v7 peerDevices];

    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) _enableSMSRelayForDevice:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

void sub_22B54A460(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "User tapped cancel on the Pin Display Alert, This will not dismiss the entry field on the iPhone", v4, 2u);
    }
  }
}

void sub_22B54B760(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D212C(v3, v4);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Successfully updated Safety Monitor about the Notification response", v6, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

id sub_22B54B864(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEB98] setWithArray:a1];
  v2 = [v1 allObjects];
  v3 = [v2 __imArrayByFilteringWithBlock:&unk_283F19A68];

  v4 = [v3 sortedArrayUsingComparator:&unk_283F19A88];

  return v4;
}

uint64_t sub_22B54B8F8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isEqualToNumber:&unk_283F4E528] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22B54B95C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = [v4 unsignedIntegerValue];

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void *sub_22B54C3C8()
{
  result = MEMORY[0x231897B50]("IMiMessageSizeLimitsForTransferTypeDisableLargeSizeNetworkRestriction", @"IMFoundation");
  off_27D8CFE10 = result;
  return result;
}

id _ClampDate(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = v2;
  if (v1)
  {
    v4 = [v2 compare:v1];
    if (v4 != -1)
    {
      if (v4 == 1)
      {
        if (!IMOSLoggingEnabled())
        {
LABEL_14:
          v6 = v1;
          goto LABEL_20;
        }

        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v10 = 138412546;
          v11 = v1;
          v12 = 2112;
          v13 = v3;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, " * Date descending vs current (%@ vs %@)", &v10, 0x16u);
        }
      }

      else
      {
        if (v4 || !IMOSLoggingEnabled())
        {
          goto LABEL_14;
        }

        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v10 = 138412546;
          v11 = v1;
          v12 = 2112;
          v13 = v3;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, " * Date is the same as current (%@ vs %@)", &v10, 0x16u);
        }
      }

      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v1;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, " * Clamping date %@ to current date (%@)", &v10, 0x16u);
      }
    }

    v6 = v3;

    v1 = v6;
  }

  else
  {
    v6 = 0;
    v1 = v2;
  }

LABEL_20:
  v8 = v1;

  return v1;
}

void sub_22B54E3EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B54E344);
  }

  _Unwind_Resume(a1);
}

void sub_22B54F308(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B54F258);
  }

  _Unwind_Resume(a1);
}

void sub_22B550064(IMDTelephonyServiceSession *self, SEL a2, id a3, id a4, unsigned __int8 a5, id a6, BOOL a7)
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not setting transcript background, subclass for iMessage should handle.", v13, 2u);
    }
  }
}

void sub_22B551A54(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v40 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Processed message, result: %@", buf, 0xCu);
    }
  }

  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 guid];
    [v5 _addOriginatedMessage:v6];

    [v3 setUseStandalone:*(*(*(a1 + 80) + 8) + 24)];
    v7 = [*(a1 + 40) notificationIDSTokenURI];
    LOBYTE(v5) = [v7 length] == 0;

    if ((v5 & 1) == 0)
    {
      v8 = [*(a1 + 40) notificationIDSTokenURI];
      [v3 setNotificationIDSTokenURI:v8];
    }

    [v3 setDestinationCallerID:*(a1 + 48)];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 40) destinationCallerID];
        v11 = *(a1 + 48);
        *buf = 138412546;
        *v40 = v10;
        *&v40[8] = 2112;
        *&v40[10] = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "sendMessage destinationCallerID: %@ mycallerID: %@", buf, 0x16u);
      }
    }

    v12 = *(a1 + 88);
    if ((v12 & 8) != 0)
    {
      v14 = [MEMORY[0x277D1A900] sharedManager];
      v15 = [v14 isMessagesTheDefaultTextApp];

      v13 = v15 ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v16 = [*(a1 + 32) _sendMessageOverAlternatePath:v3 toChat:*(a1 + 56)];
    v17 = v16;
    if ((v12 & 2) != 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1;
    }

    v19 = (v16 ^ 1) & (v12 >> 3);
    v20 = (v16 ^ 1) & v12;
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = @"NO";
        v23 = *(a1 + 88);
        if (v20)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        *buf = 67110146;
        *v40 = v23;
        if (v18)
        {
          v25 = @"NO";
        }

        else
        {
          v25 = @"YES";
        }

        *&v40[4] = 2112;
        *&v40[6] = v24;
        if (v19)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        *&v40[14] = 2112;
        if ((v12 & 4) != 0)
        {
          v22 = @"YES";
        }

        *&v40[16] = v25;
        v41 = 2112;
        v42 = v26;
        v43 = 2112;
        v44 = v22;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "sendingDecision: %x, withService %@ withRelay %@ forceFail %@ forceReflection %@", buf, 0x30u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 96))
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        *buf = 138412290;
        *v40 = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "sendingDecision - withSatelliteRelay: %@", buf, 0xCu);
      }
    }

    if (*(a1 + 96) == 1)
    {
      [*(a1 + 32) sendMessageFromIMMessageItem:v3 forChat:*(a1 + 64) chat:*(a1 + 56) style:*(a1 + 97)];
    }

    else if (v20)
    {
      [*(a1 + 32) sendMessageFromIMMessageItem:v3 forChat:*(a1 + 64) chat:*(a1 + 56) style:*(a1 + 97)];
      v17 = 1;
    }

    else if ((v18 & 1) == 0)
    {
      [*(a1 + 32) didSendMessage:v3 forChat:*(a1 + 64) style:*(a1 + 97)];
      v29 = *(a1 + 32);
      v30 = [v3 guid];
      [v29 _setTimeoutTimerForRelayMessageID:v30 timeout:180.0];

      v17 = 0;
    }

    v31 = *(a1 + 64);
    v32 = *(a1 + 97);
    v33 = *(a1 + 72);
    v38.receiver = *(a1 + 32);
    v38.super_class = IMDTelephonyServiceSession;
    objc_msgSendSuper2(&v38, sel_sendMessage_toChat_style_account_, v3, v31, v32, v33);
    BYTE3(v37) = v13;
    BYTE2(v37) = (v12 & 4) != 0;
    BYTE1(v37) = *(a1 + 99);
    LOBYTE(v37) = v19;
    [*(a1 + 32) _finishSendingMessageItem:v3 chatIdentifier:*(a1 + 64) chatStyle:*(a1 + 97) foundChat:*(a1 + 56) didSendSMS:(v12 >> 3) & 1 | v17 attemptingReplication:*(a1 + 98) shouldForceFail:v37 watchSendsOverCellular:*(a1 + 48) forceReflection:? forceRelay:? callerID:?];
    if (v19)
    {
      v34 = [*(a1 + 40) guid];
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v40 = v34;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Forcing failure while sending message guid %@, as we are not the default message app", buf, 0xCu);
        }
      }

      [*(a1 + 32) didReceiveError:4 forMessageID:v34 forceError:1];
      [*(a1 + 32) processMessageSendFailure:v34];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "No message, cannot continue sending!", buf, 2u);
    }
  }
}

id sub_22B5527F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[IMDFileTransferCenter sharedInstance];
  v4 = [v3 transferForGUID:v2];

  v5 = [v4 localPath];

  return v5;
}

void sub_22B552874(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v26 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = *(a1 + 32);
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [v7 isEqualToString:v8];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if (v9)
        {
          v16 = [v10 lastObject];

          if (v15 == v16)
          {
            continue;
          }
        }

        v17 = +[IMDFileTransferCenter sharedInstance];
        v18 = [v17 createNewOutgoingTransferWithLocalFileURL:v15];

        [v6 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  if ([v6 count])
  {
    v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_283F23018];
    v20 = IMCreateSuperFormatStringWithAppendedFileTransfers();
    v21 = [v20 mutableCopy];
    [*(a1 + 40) setBody:v21];
    [*(a1 + 40) setFileTransferGUIDs:v6];
  }

  if (v26)
  {
    v22 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v26];
    v23 = [*(a1 + 40) body];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 mutableCopy];
      [v25 appendAttributedString:v22];
    }

    else
    {
      v25 = v22;
    }

    [*(a1 + 40) setBody:v25];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_22B552AFC(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v4 im_generateCopyForURL:v3];

    v6 = v3;
    if (v5)
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277D1ADE0] sharedInstance];
  v8 = [*(a1 + 32) type];
  v9 = [*(a1 + 40) service];
  v17 = [v9 transcodeTarget];
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 64)];
  v23[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v12 = [*(a1 + 32) transcoderUserInfo];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22B552D28;
  v18[3] = &unk_278704268;
  v19 = v6;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v20 = v13;
  v21 = v14;
  v22 = *(a1 + 56);
  v15 = v6;
  LOBYTE(v16) = 0;
  [v7 transcodeFallbackFileTransferContents:v15 utiType:v8 allowUnfilteredUTIs:MEMORY[0x277CBEBF8] target:v17 sizes:v11 commonCapabilities:0 maxDimension:-1 transcoderUserInfo:v12 representations:0 isLQMEnabled:v16 completionBlock:v18];
}

void sub_22B552D28(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "fallback transcoded %@ to %@", &v10, 0x16u);
  }

  if ([v4 count])
  {
    v7 = *(a1 + 40);
    v8 = [v4 lastObject];
    v9 = [*(a1 + 48) guid];
    [v7 setObject:v8 forKey:v9];
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_22B552E48(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fileTransferGUIDs];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v6 = v5;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = +[IMDFileTransferCenter sharedInstance];
        v13 = [*(a1 + 40) objectForKey:v11];
        v14 = [v12 createNewOutgoingTransferWithLocalFileURL:v13];

        v15 = [v6 indexOfObject:v11];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v6 addObject:v14];
        }

        else
        {
          [v6 replaceObjectAtIndex:v15 withObject:v14];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_283F23018];
    v17 = IMCreateSuperFormatStringWithAppendedFileTransfers();
    v18 = [*(a1 + 48) copyForBackwardsCompatibility];
    [v18 setFileTransferGUIDs:v6];
    [v18 setBody:v17];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_22B5533C0(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[IMDMessageStore sharedInstance];
        v10 = [v9 messageWithGUID:v8];

        v11 = [*(a1 + 32) broadcasterForChatListeners];
        v12 = [v10 accountID];
        [v11 account:v12 chat:0 style:0 messageUpdated:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_22B553BAC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5539C4);
  }

  _Unwind_Resume(a1);
}

void sub_22B553BF4(uint64_t a1, void *a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Message Transcode and Upload complete, Parts: %@", buf, 0xCu);
    }
  }

  if (a3)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B553E6C;
    v19[3] = &unk_2787042E0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 40);
    v24 = *(a1 + 80);
    v25 = *(a1 + 84);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v20 = v13;
    v21 = v12;
    v14 = *(a1 + 64);
    v23 = *(a1 + 72);
    v22 = v14;
    [v8 waitForChatRelayReadiness:v7 withBlock:v19];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 48);
        *buf = 138412290;
        v27 = v16;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Failed to process and upload attachments for peer relay: %@", buf, 0xCu);
      }
    }

    if ((*(a1 + 80) & 1) == 0)
    {
      v17 = *(a1 + 32);
      v18 = [*(a1 + 48) guid];
      [v17 didReceiveError:4 forMessageID:v18 forceError:1];
    }
  }
}

void sub_22B553E6C(uint64_t a1)
{
  v3 = [*(a1 + 32) relayController];
  LOBYTE(v2) = *(a1 + 84);
  [v3 relayMessage:*(a1 + 40) chat:*(a1 + 48) didSendSMS:*(a1 + 80) attemptingReplication:*(a1 + 81) forceReflection:*(a1 + 82) relayToWatchOnly:*(a1 + 83) shouldDisableScreenTimeRestrictions:v2 callerID:*(a1 + 56) iMessageCapability:*(a1 + 72) requiredCapabilities:*(a1 + 64)];
}

void sub_22B553EE8(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Message Failed To Transcode and upload, error: %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) guid];
  [v8 didReceiveError:4 forMessageID:v9 forceError:1];
}

void sub_22B554000(uint64_t a1)
{
  v3 = [*(a1 + 32) relayController];
  LOBYTE(v2) = *(a1 + 84);
  [v3 relayMessage:*(a1 + 40) chat:*(a1 + 48) didSendSMS:*(a1 + 80) attemptingReplication:*(a1 + 81) forceReflection:*(a1 + 82) relayToWatchOnly:*(a1 + 83) shouldDisableScreenTimeRestrictions:v2 callerID:*(a1 + 56) iMessageCapability:*(a1 + 72) requiredCapabilities:*(a1 + 64)];
}

void sub_22B5556C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B555BF8(uint64_t a1, void *a2, int a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  if (a3)
  {
    v11 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B555D68;
    v14[3] = &unk_278704378;
    v15 = v11;
    v17 = a5;
    v16 = v10;
    [v15 buildWith:v9 parts:v16 completion:v14];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Message prepare failed, not sending", v13, 2u);
      }
    }

    [v9 setErrorCode:25];
    [*(a1 + 40) didSendMessage:v9 forChat:*(a1 + 48) style:*(a1 + 56)];
  }
}

uint64_t sub_22B555D68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    return MEMORY[0x2821F9670](v3, sel_sendWithCompletion_);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Message build failed, not sending, cleaning up", v6, 2u);
      }
    }

    return [*(a1 + 32) cleanupFailedBuildWithError:*(a1 + 48) forParts:*(a1 + 40)];
  }
}

void sub_22B555E38(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Message send success %@", &v5, 0xCu);
    }
  }
}

void sub_22B556544(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5562E4);
  }

  _Unwind_Resume(a1);
}

uint64_t (*sub_22B5571D4())(void)
{
  result = MEMORY[0x231897B50]("DDExtractMessageBotReplies", @"DataDetectorsCore");
  off_281422530 = result;
  return result;
}

void sub_22B557204()
{
  v0 = MEMORY[0x231897B50]("DDMessageBotReplyTypeKey", @"DataDetectorsCore");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_281422548, v1);
}

void sub_22B557254()
{
  v0 = MEMORY[0x231897B50]("DDMessageBotReplyValueKey", @"DataDetectorsCore");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_281422558, v1);
}

void sub_22B5572A4()
{
  v0 = MEMORY[0x231897B50]("DDMessageBotReplyTypeStop", @"DataDetectorsCore");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_281422568, v1);
}

void sub_22B557B78(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "SMSCTPhoneNumberChangedNotification: %@", buf, 0xCu);
  }

  v7 = a2;
  v6 = v7;
  im_dispatch_after();
}

void *sub_22B558D80(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "handleOperation : %@", buf, 0xCu);
    }
  }

  if ([*(a1 + 32) isMemberOfClass:objc_opt_class()])
  {
    v5 = *(a1 + 32);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 recordIDs];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([objc_msgSend(*(*(&v12 + 1) + 8 * i) "recordName")])
          {
            [*(a1 + 40) _handleFetchingExitRecordOperation:v5];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  result = [*(a1 + 32) isMemberOfClass:objc_opt_class()];
  if (result)
  {
    v11 = *(a1 + 32);
    result = [*(a1 + 40) _operationIsCloudKitMetricsOperation:v11];
    if (result)
    {
      return [*(a1 + 40) _handleWritingCloudKitMetrics:v11];
    }
  }

  return result;
}

uint64_t sub_22B559110(void *a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:a1 selector:sel_synchronize object:0];
  [a1 performSelector:sel_synchronize withObject:0 afterDelay:5.0];
  return 1;
}

uint64_t sub_22B5591AC()
{
  qword_281420F98 = objc_alloc_init(IMDCKAttachmentSyncController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5593D0()
{
  qword_27D8CFE20 = +[IMDAttachmentStore sharedInstance];

  return MEMORY[0x2821F96F8]();
}

void sub_22B559F24(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 48);
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "syncAttachmentsWithSyncType with type %ld finished", &v10, 0xCu);
    }
  }

  if (a2)
  {
    if (*(a1 + 48) == 1 && ([*(a1 + 32) _hasCompletedRecoveryResync] & 1) == 0)
    {
      [*(a1 + 32) _markResyncForDeleteRecoveryAs:2];
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Completed Delete Recovery Resync!", &v10, 2u);
        }
      }
    }
  }

  [*(a1 + 32) setIsDoingDeleteRecoverySync:0];
  [*(a1 + 32) setIsSyncing:0];
  [*(a1 + 32) setDeviceConditionsToCheck:0];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void sub_22B55A0E4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (v5 || !a2)
  {
    if (v6)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Initial attachment sync failed. skipping metadata only sync.", v12, 2u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Initial attachment sync succeeded. Proceeding with metadata only sync.", buf, 2u);
      }
    }

    v8 = *(a1 + 32);
    v9 = [v8 _numberOfMetadataBatchesOfAttachmentsToFetchInInitialSync];
    v10 = [*(a1 + 32) latestSyncTokenForSyncType:5];
    [v8 _fetchAttachmentZoneChangesShouldWriteBackChanges:0 desiredKeys:0 syncType:5 currentBatchCount:0 maxBatchCount:v9 syncToken:v10 activity:*(a1 + 40) completionBlock:*(a1 + 48)];
  }
}

void sub_22B55A270(uint64_t a1)
{
  if ([*(a1 + 32) _fetchedAllChangesFromCloudKit] && (*(a1 + 64) | 4) == 5 && (objc_msgSend(*(a1 + 32), "_hasCompletedRecoveryResync") & 1) == 0)
  {
    [*(a1 + 32) _initResyncForDeleteRecovery];
  }

  if ([*(a1 + 32) _shouldMarkAllAttachmentsAsNeedingSync])
  {
    [*(a1 + 32) clearLocalSyncState:3];
    [*(a1 + 32) _hasMarkedAllAttachmentsAsNeedingSync];
  }

  [*(a1 + 32) setIsSyncing:1];
  [*(a1 + 32) setDeviceConditionsToCheck:*(a1 + 72)];
  v2 = *(a1 + 64);
  if (!v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "*** Called into to do initial sync ****", buf, 2u);
      }
    }

    [*(a1 + 32) setLatestSyncToken:0 forSyncType:*(a1 + 64)];
    v2 = *(a1 + 64);
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v12 = *(a1 + 32);
      v13 = [v12 _numberOfBatchesOfAttachmentsToFetchInInitialSync];
      v6 = [*(a1 + 32) latestSyncTokenForSyncType:*(a1 + 64)];
      [v12 _fetchAttachmentZoneChangesShouldWriteBackChanges:0 desiredKeys:1 syncType:0 currentBatchCount:0 maxBatchCount:v13 syncToken:v6 activity:*(a1 + 40) completionBlock:*(a1 + 56)];
      goto LABEL_24;
    }

    if (v2 == 1)
    {
      [*(a1 + 32) _markAllFailedAttachmentsAsNeedingSync];
      v4 = *(a1 + 32);
      v5 = *(a1 + 64);
      v6 = [v4 latestSyncTokenForSyncType:v5];
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v7 = v4;
      v8 = 1;
      v9 = v5;
LABEL_23:
      [v7 _fetchAttachmentZoneChangesShouldWriteBackChanges:v8 desiredKeys:0 syncType:v9 currentBatchCount:0 maxBatchCount:-1 syncToken:v6 activity:v15 completionBlock:v16];
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v2 == 5)
  {
    v14 = *(a1 + 32);
    v6 = [v14 latestSyncTokenForSyncType:5];
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v7 = v14;
    v8 = 0;
    v9 = 5;
    goto LABEL_23;
  }

  if (v2 != 2)
  {
LABEL_20:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:1 userInfo:0];
    (*(*(a1 + 48) + 16))();
    goto LABEL_24;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B55A534;
  v17[3] = &unk_278704440;
  v18 = *(a1 + 48);
  [v10 _writeAttachmentsToCloudKitWithActivity:v11 completionBlock:v17];
  v6 = v18;
LABEL_24:
}

void sub_22B55A534(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B55A5E0;
  v6[3] = &unk_2787028B0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void sub_22B55A7F4(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v2 = 0;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    v5 = *v26;
    *&v4 = 138412546;
    v19 = v4;
    do
    {
      v6 = 0;
      v7 = v2;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v6);
        v9 = [*(a1 + 40) _attachmentZoneID];
        v10 = [*(a1 + 40) _attachmentZoneSalt];
        v11 = [v8 recordIDWithZoneID:v9 salt:v10];

        if (v11)
        {
          v12 = [*(a1 + 40) recordIDToTransferMap];
          [v12 setObject:v8 forKey:v11];

          [v21 addObject:v11];
        }

        else if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            [v8 cloudKitSyncState];
            v14 = IMStringFromCKSyncState();
            v15 = [*(a1 + 40) _attachmentZoneSalt];
            v16 = [v15 length];
            *buf = v19;
            v17 = @"YES";
            if (!v16)
            {
              v17 = @"NO";
            }

            v30 = v14;
            v31 = 2112;
            v32 = v17;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "fetchAttachmentDataForTransfers: we weren't able to get a CKRecordID from a transfer; transfer sync state %@, non-empty salt %@", buf, 0x16u);
          }
        }

        v2 = @".UserInit";
        if (([v8 fetchOptions] & 4) == 0)
        {
          if (([v8 fetchOptions] & 8) != 0)
          {
            v2 = @".Compute";
          }

          else
          {
            v2 = v7;
          }
        }

        ++v6;
        v7 = v2;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v3);
  }

  if (*(a1 + 56))
  {
    [*(a1 + 40) setPerTransferProgress:?];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B55AB4C;
  aBlock[3] = &unk_2787044B0;
  v23 = *(a1 + 32);
  v24 = *(a1 + 64);
  v18 = _Block_copy(aBlock);
  [*(a1 + 40) _fetchAttachmentZoneRecords:v21 desiredKeys:1 ognSuffix:v2 removeTombstones:0 activity:*(a1 + 48) completion:v18];
}

void sub_22B55AB4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) __imArrayByApplyingBlock:&unk_283F19BE8];
  v8 = [v7 __imSetFromArray];

  if ([v8 count])
  {
    v9 = [v8 allObjects];
    v13 = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    IMDCoreSpotlightReindexMessagesWhileBlocking();
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
    }
  }
}

id sub_22B55AC98(uint64_t a1, void *a2)
{
  v2 = [a2 guid];
  v3 = IMMessageGuidFromIMFileTransferGuid();

  return v3;
}

uint64_t sub_22B55ACE8(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_22B55AF28(uint64_t a1, void *a2, float a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  v10 = [*(a1 + 32) totalBytes];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 guid];
      v16 = 138412802;
      v17 = v12;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Transfer %@ - %f complete of %llu bytes", &v16, 0x20u);
    }
  }

  if ((v10 * a3) >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v10 * a3;
  }

  v14 = +[IMDFileTransferCenter sharedInstance];
  v15 = [v8 guid];
  [v14 updateTransfer:v15 currentBytes:v13 totalBytes:v10];
}

void sub_22B55B0B8(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    (*(*(a1 + 40) + 16))(*(a1 + 40), [a3 containsObject:v5] ^ 1, v6);
  }
}

uint64_t sub_22B55B2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_22B55B490(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B55B470);
  }

  _Unwind_Resume(a1);
}

void sub_22B55B910(uint64_t a1, void *a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v53 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v74 = *&v54;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished download of assets with Error: %@", buf, 0xCu);
    }
  }

  *(*(*(a1 + 72) + 8) + 24) += [*(a1 + 32) count];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB18] array];
  if (*(a1 + 40))
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v8 = v53;
    v9 = [v8 countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (v9)
    {
      v10 = *v70;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v70 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v69 + 1) + 8 * i) guid];
          [v6 addObject:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v69 objects:v79 count:16];
      }

      while (v9);
    }
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = *(a1 + 32);
  v14 = [v13 countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v14)
  {
    v15 = *v66;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v66 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (*(a1 + 40))
        {
          v17 = *(*(&v65 + 1) + 8 * j);
          v18 = [v17 guid];
          v19 = [v6 containsObject:v18];

          if ((v19 & 1) == 0)
          {
            v20 = [v17 guid];
            [v7 addObject:v20];

            v21 = [*(a1 + 48) fileTransferCenter];
            v22 = [v17 guid];
            [v21 removeTransferForGUID:v22];
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v14);
  }

  if (!v54)
  {
    v42 = [v53 count] == 0;
    v23 = *(a1 + 80);
    [*(a1 + 48) setAssetDownloadInProgress:0];
    if (!v42)
    {
      goto LABEL_60;
    }

    v27 = v23 * 0.5 + 0.5;
LABEL_54:
    if (v23 <= 3)
    {
      goto LABEL_55;
    }

LABEL_60:
    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v74 = *&v23;
        v75 = 2112;
        v76 = v54;
        _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "Failed downloading batch of assets, not kicking off another batch. (number of retries: %lu) Error was %@", buf, 0x16u);
      }
    }

    v51 = *(a1 + 64);
    if (v51)
    {
      (*(v51 + 16))(v51, 0, *(*(*(a1 + 72) + 8) + 24), 0);
    }

    goto LABEL_66;
  }

  v23 = *(a1 + 80);
  v24 = CKCanRetryForError();
  v25 = [v54 domain];
  v26 = [v25 isEqualToString:*MEMORY[0x277CBBF50]];

  v27 = v23 * 0.5 + 0.5;
  if (v26)
  {
    v28 = [v54 userInfo];
    v29 = *MEMORY[0x277CBBF68];
    v30 = [v28 objectForKey:*MEMORY[0x277CBBF68]];

    if (v30)
    {
      v31 = [v54 userInfo];
      v32 = [v31 objectForKey:v29];
      [v32 doubleValue];
      v27 = v33;

      v24 = 1;
    }

    if ([v54 code] == 2)
    {
      v64 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v34 = [v54 userInfo];
      v35 = [v34 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
      v36 = [v35 allValues];

      v37 = [v36 countByEnumeratingWithState:&v61 objects:v77 count:16];
      if (v37)
      {
        v38 = *v62;
        while (2)
        {
          for (k = 0; k != v37; ++k)
          {
            if (*v62 != v38)
            {
              objc_enumerationMutation(v36);
            }

            v40 = *(*(&v61 + 1) + 8 * k);
            if ((CKCanRetryForError() & 1) == 0 && [v40 code] != 11)
            {
              if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v74 = *&v40;
                  _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Found a fatal partial error: %@", buf, 0xCu);
                }
              }

              v41 = 0;
              goto LABEL_51;
            }
          }

          v37 = [v36 countByEnumeratingWithState:&v61 objects:v77 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

      v41 = 1;
LABEL_51:

      [*(a1 + 48) setAssetDownloadInProgress:0];
      if ((v41 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_54;
    }

    v43 = [v54 code];
    if ((v24 & (v43 != 11)) == 0)
    {
      v45 = v43 != 11;
      [*(a1 + 48) setAssetDownloadInProgress:0];
      if (v45)
      {
        goto LABEL_60;
      }

      goto LABEL_54;
    }
  }

  else if ((v24 & 1) == 0)
  {
    [*(a1 + 48) setAssetDownloadInProgress:0];
    goto LABEL_60;
  }

  [*(a1 + 48) setAssetDownloadInProgress:0];
  if (++v23 >= 4)
  {
    goto LABEL_60;
  }

LABEL_55:
  if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v74 = v27;
      _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Kicking off another asset download batch in %f seconds", buf, 0xCu);
    }
  }

  v47 = dispatch_time(0, (v27 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B55C10C;
  block[3] = &unk_278704578;
  v48 = *(a1 + 56);
  block[4] = *(a1 + 48);
  v60 = *(a1 + 88);
  v56 = v48;
  v59 = v23;
  v52 = *(a1 + 64);
  v49 = v52;
  v58 = v52;
  v57 = v7;
  dispatch_after(v47, MEMORY[0x277D85CD0], block);

LABEL_66:
}

uint64_t sub_22B55C10C(uint64_t a1)
{
  if ([*(a1 + 32) _attachmentDownloadCanStart:*(a1 + 80) withActivity:*(a1 + 40)])
  {
    v2 = *(a1 + 32);

    return MEMORY[0x2821F9670](v2, sel__downloadAttachmentAssetsWithActivity_restoringAttachments_retryCount_numAttachmentsDownloaded_completion_);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Attachment download can't start at this time, so stopping attachment sync", v5, 2u);
      }
    }

    result = *(a1 + 56);
    if (result)
    {
      return (*(result + 16))(result, 0, *(*(*(a1 + 64) + 8) + 24), *(a1 + 48));
    }
  }

  return result;
}

uint64_t sub_22B55C328(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22B55C6A8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B55C4E8);
  }

  _Unwind_Resume(a1);
}

void sub_22B55CC60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Done downloading purged attachments for chat %@", buf, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B55CDC4;
    v8[3] = &unk_2787028B0;
    v10 = *(a1 + 40);
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void sub_22B55D1E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B55D1A8);
  }

  _Unwind_Resume(a1);
}

void sub_22B55E0EC(void *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B55DC0CLL);
  }

  JUMPOUT(0x22B55E17CLL);
}

uint64_t sub_22B55E188(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _updateAttachmentGUIDIfNeededAndReturnTransfersToForceMarkAsSync:*(a1 + 40) transfersToSyncRowIDs:*(a1 + 48)];

  return MEMORY[0x2821F96F8]();
}

void sub_22B55E5FC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B55E554);
  }

  _Unwind_Resume(a1);
}

void sub_22B55E678(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Got error %@ writing attachment records. Stopping further writes", buf, 0xCu);
      }
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "NO error writing attachment records.", buf, 2u);
      }
    }

    if (IMIsRunningInAutomation())
    {
      v8 = [MEMORY[0x277D1A970] sharedInstance];
      [v8 addNewAttachmentsSyncedCount:{objc_msgSend(*(a1 + 32), "count")}];
    }

    v9 = *(a1 + 64) == 0;
    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Kicking off another batch of attachments to write", buf, 2u);
        }
      }

      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_22B55E97C;
      v16[3] = &unk_278702930;
      v17 = *(a1 + 56);
      [v14 _kickOffWriteOnCKQueueWithActivity:v15 completion:v16];
    }

    else
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "** This was the last batch of attachment writes as the number of attachments to write up was less than max batch size Not writing more.", buf, 2u);
        }
      }

      v12 = *(a1 + 56);
      if (v12)
      {
        (*(v12 + 16))(v12, 0);
      }
    }
  }
}

uint64_t sub_22B55E97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

uint64_t sub_22B55E998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_22B55F72C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "recordZoneChangeTokensUpdatedBlock should not get called", v10, 2u);
    }
  }
}

void sub_22B55FCD0(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating attachment zone %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B55FFDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22B56006C;
  v3[3] = &unk_278704440;
  v4 = *(a1 + 48);
  [v1 _writeAttachmentsToCloudKitWithActivity:v2 completionBlock:v3];
}

uint64_t sub_22B56006C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

void sub_22B5608DC(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Saving sync token %@", buf, 0xCu);
    }
  }

  [*(a1 + 40) setLatestSyncToken:*(a1 + 32) forSyncType:*(a1 + 64)];
  if (*(a1 + 64))
  {
    [*(a1 + 40) _kickOffAssetFetchForTransfersIfNeededWithActivity:*(a1 + 48)];
    if (*(a1 + 96) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Kicking off another fetch of attachments", buf, 2u);
        }
      }

      [*(a1 + 40) syncBatchCompleted:*(a1 + 80)];
      [*(a1 + 40) _fetchAttachmentZoneChangesShouldWriteBackChanges:*(a1 + 97) desiredKeys:*(a1 + 72) syncType:*(a1 + 64) currentBatchCount:*(a1 + 80) maxBatchCount:*(a1 + 88) syncToken:*(a1 + 32) activity:*(a1 + 48) completionBlock:*(a1 + 56)];
    }

    else
    {
      v9 = *(a1 + 97);
      v10 = IMOSLoggingEnabled();
      if (v9)
      {
        if (v10)
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No more attachments to pull down. Setting IMCKFinishedFetchingAttachmentsFromCloudKit and kicking off a write", buf, 2u);
          }
        }

        v12 = [MEMORY[0x277D1A990] sharedInstance];
        [v12 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19750]];

        [*(a1 + 40) _kickOffWriteIfNeededForSyncType:*(a1 + 64) activity:*(a1 + 48) completion:*(a1 + 56)];
      }

      else
      {
        if (v10)
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "No more attachments to pull down. Should write back changes was no *****", buf, 2u);
          }
        }

        v16 = [*(a1 + 40) ckQueue];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_22B560E30;
        v18[3] = &unk_2787028D8;
        v19 = *(a1 + 56);
        dispatch_async(v16, v18);
      }
    }
  }

  else if (*(a1 + 96) == 1)
  {
    v6 = [*(a1 + 40) ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B560DD4;
    block[3] = &unk_2787047E8;
    v28 = *(a1 + 97);
    v7 = *(a1 + 80);
    v26 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v27 = v7;
    v17 = *(a1 + 32);
    v8 = v17.i64[0];
    v23 = vextq_s8(v17, v17, 8uLL);
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    dispatch_async(v6, block);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Done fetching attachments in initial fetch", buf, 2u);
      }
    }

    v14 = [*(a1 + 40) ckQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22B560E10;
    v20[3] = &unk_2787028D8;
    v21 = *(a1 + 56);
    dispatch_async(v14, v20);
  }
}

uint64_t sub_22B560E10(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

uint64_t sub_22B560E30(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void sub_22B560E50(uint64_t a1)
{
  if ([*(a1 + 32) _attachmentZoneCreated])
  {
    [*(a1 + 32) _fetchAttachmentZoneChangesShouldWriteBackChanges:*(a1 + 88) desiredKeys:*(a1 + 56) syncType:*(a1 + 64) currentBatchCount:*(a1 + 72) maxBatchCount:*(a1 + 80) syncToken:0 activity:*(a1 + 40) completionBlock:*(a1 + 48)];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "****** Failed creating attachment zone", buf, 2u);
      }
    }

    v3 = *(a1 + 48);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:1 userInfo:0];
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_22B561764(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] recordID];
  v3 = [v2 recordName];
  v4 = [a1[5] recordID];
  v5 = [v4 recordName];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:a1[4]];
    v8 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:a1[5]];
    v9 = [v7 isEqualToString:v8];
    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Server's GUID was different than we expected; aligning with the server's data", &v18, 2u);
        }
      }

      [a1[6] _updateTransferUsingCKRecord:a1[5] wasFetched:0 dispatchToMain:1];
    }

    else
    {
      if (v10)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = 138412546;
          v19 = v8;
          v20 = 2112;
          v21 = v7;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "On conflict, the server record's GUID (%@) was different than the record we tried to update with GUID (%@); marking local attachment as synced, to skip it", &v18, 0x16u);
        }
      }

      [a1[6] _markAttachmentWithROWID:IMDAttachmentRecordRowIDForGUID() withSyncState:1];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [a1[5] recordID];
        v14 = [v13 recordName];
        v15 = [a1[4] recordID];
        v16 = [v15 recordName];
        v18 = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Conflicting serverRecord was different than the one being updated (server: %@, local: %@)", &v18, 0x16u);
      }
    }

    [a1[6] _resetAttachmentSyncStateForRecord:a1[4] toState:2];
  }
}

void sub_22B5629A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5629C0(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_22B4D7670;
  v75 = sub_22B4D7890;
  v76 = 0;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v78 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Attachment batch fetch complete with error %@", buf, 0xCu);
    }
  }

  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (v5)
  {
    if ([v5 code] != 2)
    {
      goto LABEL_56;
    }

    v6 = *(*(*(a1 + 56) + 8) + 40);
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) _recordsToProcessWithError:*(a1 + 40) error:v6];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v78 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Attachments to process %@", buf, 0xCu);
    }
  }

  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v67 objects:v82 count:16];
  if (v9)
  {
    v10 = *v68;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v68 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v67 + 1) + 8 * i);
        v13 = [*(a1 + 32) recordIDToTransferMap];
        v14 = [v12 recordID];
        v15 = [v13 objectForKey:v14];

        if (v15)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_22B563304;
          block[3] = &unk_278704888;
          block[4] = v12;
          v63 = v15;
          v16 = *(a1 + 40);
          v17 = *(a1 + 56);
          v64 = v16;
          v65 = v17;
          v66 = &v71;
          dispatch_sync(MEMORY[0x277D85CD0], block);
        }

        else if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v12 recordID];
            *buf = 138412290;
            v78 = v19;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Can't find transfer in pre-transfer map, for a CKRecord we fetched an asset for, recordID %@. CAN'T UPDATE!", buf, 0xCu);
          }
        }

        v20 = [*(a1 + 32) recordIDToTransferMap];
        v21 = [v12 recordID];
        [v20 removeObjectForKey:v21];

        [MEMORY[0x277D1A9C0] cleanUpAssetsOnDiskForRecord:v12];
        if (*(a1 + 64) == 1)
        {
          v22 = [v12 recordID];
          v23 = [v22 recordName];
          [v52 addObject:v23];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v67 objects:v82 count:16];
    }

    while (v9);
  }

  if (*(a1 + 64) == 1)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v24 = [*(a1 + 32) errorAnalyzer];
      v25 = [v24 extractRecordIDsNotFoundFromCKPartialError:*(*(*(a1 + 56) + 8) + 40)];

      [v52 addObjectsFromArray:v25];
    }

    IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs();
  }

  v26 = *(*(*(a1 + 56) + 8) + 40);
  if (v26)
  {
    v27 = [v26 userInfo];
    v51 = [v27 objectForKey:*MEMORY[0x277CBBFB0]];

    if ([v51 count])
    {
      if (!v72[5])
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v29 = v72[5];
        v72[5] = v28;
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v30 = [v51 allKeys];
      v31 = [v30 countByEnumeratingWithState:&v58 objects:v81 count:16];
      if (v31)
      {
        v32 = *v59;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v59 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v58 + 1) + 8 * j);
            v35 = [*(a1 + 32) recordIDToTransferMap];
            v36 = [v35 objectForKey:v34];

            if (IMOSLoggingEnabled())
            {
              v37 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = [v36 guid];
                *buf = 138412290;
                v78 = v38;
                _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "We failed to fetch asset from CloudKit -- failing the transfer: %@", buf, 0xCu);
              }
            }

            if (v36)
            {
              [v36 _setFetchOptions:0];
              v39 = +[IMDFileTransferCenter sharedInstance];
              [v39 updateTransferAsWaitingForAccept:v36];

              [v72[5] addObject:v36];
              v40 = [*(a1 + 32) recordIDToTransferMap];
              [v40 removeObjectForKey:v34];
            }

            else if (IMOSLoggingEnabled())
            {
              v41 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = *(*(*(a1 + 56) + 8) + 40);
                *buf = 138412546;
                v78 = v34;
                v79 = 2112;
                v80 = v42;
                _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Can't find transfer in pre-transfer map, for a CKRecord we failed to fetch asset for, recordID %@, error %@", buf, 0x16u);
              }
            }

            v43 = [*(a1 + 40) objectForKeyedSubscript:v34];
            [MEMORY[0x277D1A9C0] cleanUpAssetsOnDiskForRecord:v43];
          }

          v31 = [v30 countByEnumeratingWithState:&v58 objects:v81 count:16];
        }

        while (v31);
      }

      v44 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:5 userInfo:0];
      v45 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v45 autoBugCaptureWithSubType:qword_27D8CBAB0 errorPayload:v44];
    }
  }

LABEL_56:
  v46 = [*(a1 + 32) completionBlocksForAssetFetchOperations];
  v47 = [v46 objectForKey:*(a1 + 48)];

  if (v47)
  {
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_22B563604;
    v54[3] = &unk_2787048B0;
    v48 = v47;
    v49 = *(a1 + 56);
    v55 = v48;
    v56 = v49;
    v57 = &v71;
    dispatch_sync(MEMORY[0x277D85CD0], v54);
    v50 = [*(a1 + 32) completionBlocksForAssetFetchOperations];
    [v50 removeObjectForKey:*(a1 + 48)];
  }

  _Block_object_dispose(&v71, 8);
}

void sub_22B563304(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:@"lqa"];
  v3 = v2;
  if (v2 && ([v2 fileURL], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 40);
        v25 = 138412290;
        v26 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finalizing asset download for transfer %@", &v25, 0xCu);
      }
    }

    [*(a1 + 40) moveAssetFromRecord:*(a1 + 32)];
    [*(a1 + 40) _setFetchOptions:0];
    v9 = +[IMDFileTransferCenter sharedInstance];
    v10 = [*(a1 + 40) guid];
    [v9 endTransfer:v10];

    if ([*(a1 + 48) count])
    {
      v11 = +[IMDFileTransferCenter sharedInstance];
      v12 = [*(a1 + 40) guid];
      [v11 removeTransferForGUID:v12];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 40);
        v25 = 138412290;
        v26 = v14;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Asset not found in record, must not be synced to the cloud transfer %@", &v25, 0xCu);
      }
    }

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277D19CF0] code:6 userInfo:0];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = +[IMDFileTransferCenter sharedInstance];
    v20 = [*(a1 + 40) guid];
    [v19 failTransfer:v20 reason:29];

    v21 = *(*(*(a1 + 64) + 8) + 40);
    if (!v21)
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v23 = *(*(a1 + 64) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v21 = *(*(*(a1 + 64) + 8) + 40);
    }

    [v21 addObject:*(a1 + 40)];
  }
}

void sub_22B563CD4(uint64_t a1)
{
  v2 = +[IMDFileTransferCenter sharedInstance];
  v3 = [v2 updateTransfersWithCKRecord:*(a1 + 32) recordWasFetched:*(a1 + 64) downloadAsset:*(*(a1 + 56) + 8) + 24];
  v4 = [v3 copy];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(a1 + 64) == 1 && [*(*(*(a1 + 48) + 8) + 40) length])
  {
    v7 = *(a1 + 40);
    v8 = *(*(*(a1 + 48) + 8) + 40);

    [v7 _removeTransferFromiCloudBackupWithGuid:v8];
  }
}

void sub_22B563E50(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [*(a1 + 32) downloadAssetsForTransferGUIDs];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = sub_22B563F50;
  v9 = &unk_278704928;
  v10 = *(a1 + 32);
  v11 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:&v6];

  [*(a1 + 32) fetchAttachmentDataForTransfers:v4 highQuality:0 perTransferProgress:&unk_283F19C48 activity:*(a1 + 40) completion:{0, v6, v7, v8, v9, v10}];
  v5 = [*(a1 + 32) downloadAssetsForTransferGUIDs];
  [v5 removeAllObjects];

  [*(a1 + 32) setDownloadAssetsForTransferGUIDs:0];
}

void sub_22B563F50(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) fileTransferCenter];
  v5 = [v4 transferForGUID:v3];

  if (v5)
  {
    [*(a1 + 40) addObject:v5];
    v6 = [*(a1 + 32) fileTransferCenter];
    v7 = [v5 localPath];
    [v6 acceptTransfer:v3 path:v7];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "** No IMFileTransfer found for GUID %@", &v9, 0xCu);
    }
  }
}

void sub_22B5640A4(float a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 totalBytes];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 guid];
      v15 = 138412802;
      v16 = v11;
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Transfer %@ - %f complete of %llu bytes", &v15, 0x20u);
    }
  }

  if ((v9 * a1) >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 * a1;
  }

  v13 = +[IMDFileTransferCenter sharedInstance];
  v14 = [v7 guid];
  [v13 updateTransfer:v14 currentBytes:v12 totalBytes:v9];
}

void sub_22B5642D0(uint64_t a1)
{
  v2 = +[IMDFileTransferCenter sharedInstance];
  [v2 markTransferAsNotSyncedSuccessfully:*(a1 + 32)];
}

void sub_22B5643CC(uint64_t a1)
{
  v2 = +[IMDFileTransferCenter sharedInstance];
  [v2 markTransferAsNotSyncedSuccessfully:*(a1 + 32)];
}

void sub_22B5644BC(uint64_t a1)
{
  v2 = +[IMDFileTransferCenter sharedInstance];
  [v2 resetSyncStateForRecord:*(a1 + 32) toState:*(a1 + 40)];
}

uint64_t sub_22B564700(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZoneManager];
  [v2 deleteAttachmentZone];

  v3 = *(a1 + 32);

  return [v3 clearLocalSyncState:3];
}

void sub_22B564A3C(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B564B70;
  v7[3] = &unk_2787049E8;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v14;
  v9 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v12 = v4;
  v10 = v5;
  v6 = v2;
  v11 = v6;
  [v3 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v14, 8);
}

void sub_22B564B70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 recordID];
  v7 = [v6 recordName];

  v8 = [*(a1 + 32) objectForKey:v7];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B564CC0;
  block[3] = &unk_2787049C0;
  v14 = v8;
  v15 = v7;
  v21 = *(a1 + 72);
  v22 = a3;
  v16 = *(a1 + 40);
  v20 = *(a1 + 64);
  v9 = *(a1 + 56);
  v17 = *(a1 + 48);
  v18 = v5;
  v19 = v9;
  v10 = v5;
  v11 = v7;
  v12 = v8;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void sub_22B564CC0(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22B564F98;
    v18[3] = &unk_278704998;
    v19 = *(a1 + 72);
    v6 = *(a1 + 32);
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    v20 = v6;
    v23 = v7;
    v24 = v8;
    v21 = *(a1 + 48);
    v22 = *(a1 + 80);
    [v4 _validateTransferFromCloudKit:v5 localTransfer:v3 validateCompletion:v18];

    v9 = v19;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) guid];
        v12 = *(a1 + 40);
        *buf = 138412546;
        v26 = v11;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We fetched a record that we didn't try to fetch!! we wanted (guid %@) for recordName: %@", buf, 0x16u);
      }
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:2 userInfo:0];
    if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      v13 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v13 autoBugCaptureWithSubType:IMDCKCacheDeleteAutoCaptureSubtype errorPayload:v9];

      *(*(*(a1 + 88) + 8) + 24) = 1;
    }

    v14 = [MEMORY[0x277D1AAA8] sharedInstance];
    v15 = [v9 domain];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "code")}];
    [v14 metricAttachmentValidation:0 attachmentSize:0 operationalErrorDomain:0 operationalErrorCode:0 validationErrorDomain:v15 validationErrorCode:v16];

    v17 = *(a1 + 96);
    if (v17 == [*(a1 + 48) count] - 1)
    {
      (*(*(a1 + 80) + 16))();
    }
  }
}

void sub_22B564F98(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || !a2)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 40) guid];
        v20 = 138412290;
        v21 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We failed to validate that we can delete transfer with guid: %@", &v20, 0xCu);
      }
    }

    v12 = [MEMORY[0x277D1AAA8] sharedInstance];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "totalBytes")}];
    v14 = [v5 domain];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "code")}];
    [v12 metricAttachmentValidation:0 attachmentSize:v13 operationalErrorDomain:0 operationalErrorCode:0 validationErrorDomain:v14 validationErrorCode:v15];

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v16 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v16 autoBugCaptureWithSubType:IMDCKCacheDeleteAutoCaptureSubtype errorPayload:v5];

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 40) guid];
        v20 = 138412290;
        v21 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We successfully fetched and validated that we can delete the transfer with guid: %@", &v20, 0xCu);
      }
    }

    v8 = [MEMORY[0x277D1AAA8] sharedInstance];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "totalBytes")}];
    [v8 metricAttachmentValidation:1 attachmentSize:v9 operationalErrorDomain:0 operationalErrorCode:0 validationErrorDomain:0 validationErrorCode:0];
  }

  v17 = *(a1 + 72);
  if (v17 == [*(a1 + 48) count] - 1)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "We got to the last object in the array so we will call our completion block with transfers to delete count: %@", &v20, 0xCu);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_22B565308(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B56505CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5654F0(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Validating %lu attachment downloads %@", buf, 0x16u);
    }
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 ckRecordIDFromExistingMetadata];
        if (v11)
        {
          [v23 addObject:v11];
          v12 = [v11 recordName];
          [v5 setObject:v10 forKey:v12];

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_19;
          }

          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v10 guid];
            v15 = [v11 recordName];
            *buf = 138412546;
            *&buf[4] = v14;
            *&buf[12] = 2112;
            *&buf[14] = v15;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Adding transfer to fetch: %@ with record name: %@", buf, 0x16u);
          }
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_19;
          }

          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v10;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Couldn't retrieve CKRecordID from file transfer %@", buf, 0xCu);
          }
        }

LABEL_19:
      }

      v7 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v16 = [*(a1 + 40) _attachmentZoneID];

  if (v16)
  {
    if ([*(a1 + 40) isDoingDeleteRecoverySync])
    {
      v17 = [@"AttachmentSync" stringByAppendingString:@"-DRR"];
    }

    else
    {
      v17 = @"AttachmentSync";
    }

    v19 = [*(a1 + 40) CKOperationFactory];
    v20 = [v19 fetchAttachmentZoneRecords:v23 desiredKeys:1 operationGroupName:v17 activity:*(a1 + 48)];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v36 = *(a1 + 64);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B565AA8;
    v28[3] = &unk_278704A38;
    v21 = v5;
    v29 = v21;
    v30 = buf;
    [v20 setPerRecordCompletionBlock:v28];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22B565D1C;
    v24[3] = &unk_278704A88;
    v24[4] = *(a1 + 40);
    v25 = v21;
    v27 = buf;
    v26 = *(a1 + 56);
    [v20 setFetchRecordsCompletionBlock:v24];
    [*(a1 + 40) _scheduleOperation:v20];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Attachment zone ID is nil", buf, 2u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_22B565AA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 && [v9 code] != 2)
  {
    v11 = *(a1 + 32);
    v12 = [v8 recordName];
    v13 = [v11 objectForKey:v12];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v8 recordName];
        v21 = 138412802;
        v22 = v15;
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "We got an error back from CloudKit trying to fetch recordID: %@ with error: %@ transfer: %@", &v21, 0x20u);
      }
    }

    if (v13)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v13, "totalBytes")}];
    }

    else
    {
      v16 = 0;
    }

    v17 = [MEMORY[0x277D1AAA8] sharedInstance];
    v18 = [v10 domain];
    v19 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v10, "code")}];
    [v17 metricAttachmentValidation:0 attachmentSize:v16 operationalErrorDomain:v18 operationalErrorCode:v19 validationErrorDomain:0 validationErrorCode:0];

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v20 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v20 autoBugCaptureWithSubType:IMDCKCacheDeleteAutoCaptureSubtype errorPayload:v10];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void sub_22B565D1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 allValues];
  v5 = *(*(*(a1 + 56) + 8) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B565DE8;
  v7[3] = &unk_278704A60;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v3 _processAndValidateAttachmentRecordsEligibleForPurge:v4 recordIDsToTransfers:v6 capturedWithABC:v5 completion:v7];
}

void sub_22B566474(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B566550;
  v11[3] = &unk_278702F50;
  v12 = v6;
  v13 = v7;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v7;
  v10 = v6;
  dispatch_sync(MEMORY[0x277D85CD0], v11);
}

void sub_22B566550(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Deleting attachment operation deletedRecordIDs %@", &v11, 0xCu);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [*(a1 + 32) __imArrayByApplyingBlock:&unk_283F19C68];
  [v5 addObjectsFromArray:v6];

  if (*(a1 + 40))
  {
    v7 = [*(a1 + 48) errorAnalyzer];
    v8 = [v7 extractRecordIDsDeletedFromCKPartialError:*(a1 + 40)];

    if ([v8 count])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Adding additional deleted record IDs from error", &v11, 2u);
        }
      }

      [v5 addObjectsFromArray:v8];
    }
  }

  IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs();
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 40));
  }
}

void sub_22B566C90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B566D68;
  v6[3] = &unk_278704B18;
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v9 = v4;
  v6[4] = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v2 _deleteAttachmentsWithRecordIDs:v3 completion:v6];
}

void sub_22B566D68(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "********* Error while deleting attachments %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Rate limited while deleting", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B566FE0;
    block[3] = &unk_2787028B0;
    v17 = *(a1 + 56);
    v16 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v6 = &v17;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) copy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B567004;
    v12[3] = &unk_278704AF0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v14 = v10;
    v12[4] = v11;
    v13 = *(a1 + 48);
    [v7 _fetchAttachmentZoneRecords:v8 desiredKeys:1 ognSuffix:@"DeleteRecovery" removeTombstones:1 activity:v9 completion:v12];

    v6 = &v14;
  }
}

uint64_t sub_22B566FE0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void sub_22B567004(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "********* Error while fetching non-orphaned deleted attachments %@", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B567258;
    block[3] = &unk_2787028B0;
    v16 = *(a1 + 48);
    v15 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v7)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Kicking off another batch delete to cloudKit", buf, 2u);
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B56727C;
    v11[3] = &unk_2787037B8;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    v13 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

uint64_t sub_22B567258(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t sub_22B567D24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

uint64_t sub_22B5680F8()
{
  qword_281421298 = os_log_create("com.apple.Messages", "IMDCKSyncState");

  return MEMORY[0x2821F96F8]();
}

void sub_22B56A758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B56A770(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Received PCSReportManateeStatus from PCS %u", v8, 8u);
    }
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v5 setObject:v6 forKey:@"pcsStatus"];

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_22B56B17C(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x22B56B108);
  }

  JUMPOUT(0x22B56B174);
}

void sub_22B56BAF0(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v53 = a3;
  if (v5 && ([MEMORY[0x277CCAA00] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "fileExistsAtPath:isDirectory:", v5, 0), v6, v7))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v65 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Sticker found in cache %@", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    [*(a1 + 32) setUserInfo:0];
    if (v9 && ([MEMORY[0x277CCAA00] defaultManager], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "fileExistsAtPath:", v11), v11, v10, v12))
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v65 = v5;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Adding gatekeeper properties to: %@", buf, 0xCu);
        }
      }

      v14 = +[IMDFileTransferCenter sharedInstance];
      [v14 addDefaultGatekeeperPropertiesToDirectory:v5];

      [*(a1 + 32) _setLocalURL:v9];
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v65 = v9;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Set transfer local url to: %@", buf, 0xCu);
        }
      }

      v16 = +[IMDMessageStore sharedInstance];
      v17 = [*(a1 + 32) messageGUID];
      v18 = [v16 messageWithGUID:v17];

      v19 = [MEMORY[0x277D1A950] sharedManager];
      [v19 checkExistingAttachmentSensitivityIfNeededFor:*(a1 + 32) attachmentURL:v9 isFromMe:{objc_msgSend(v18, "isFromMe")}];
      v20 = *(a1 + 40);
      v21 = [*(a1 + 32) guid];
      [v20 endTransfer:v21];
    }

    else if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Sticker not in cache. Attempting to download sticker ", buf, 2u);
      }
    }
  }

  else if (*(a1 + 72) == 1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B56C2B4;
    aBlock[3] = &unk_278704BA0;
    v22 = *(a1 + 48);
    v23 = *(a1 + 40);
    v24 = *(a1 + 56);
    v25 = *(a1 + 32);
    *&v26 = v24;
    *(&v26 + 1) = v25;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v62 = v27;
    v63 = v26;
    v28 = _Block_copy(aBlock);
    v29 = +[IMDMessageStore sharedInstance];
    v30 = [*(a1 + 32) messageGUID];
    v31 = [v29 messageWithGUID:v30];

    v32 = [v31 fileTransferGUIDs];
    v33 = [v32 indexOfObject:*(a1 + 56)];

    v34 = *(a1 + 64);
    v35 = [v31 guid];
    [v34 retrieveLocalFileTransfer:v35 attachmentIndex:v33 path:0 requestURLString:0 ownerID:0 signature:0 decryptionKey:0 requestedSize:@"Small" fileSize:0 progressBlock:0 completionBlock:v28];

    v9 = v62;
  }

  else
  {
    [*(a1 + 40) acceptTransfer:*(a1 + 56) path:*(a1 + 48)];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v37 = v36;
    v38 = +[IMDMessageStore sharedInstance];
    v39 = [*(a1 + 32) messageGUID];
    v9 = [v38 messageWithGUID:v39];

    if ([v9 isFromMe])
    {
      v40 = MEMORY[0x277D1AB80];
      v41 = [v9 service];
      [v40 fromMeContextWithServiceName:v41];
    }

    else
    {
      v43 = +[IMDChatRegistry sharedInstance];
      v44 = [v9 sender];
      v45 = [v43 hasKnownSenderChatWithChatIdentifier:v44];

      v46 = MEMORY[0x277D1AB80];
      v41 = [v9 service];
      [v46 contextWithKnownSender:v45 serviceName:v41];
    }
    v47 = ;

    v48 = *(a1 + 32);
    v49 = *(a1 + 64);
    v50 = [v49 session];
    v51 = [v50 sessionSpecificTransferIDForTransferID:*(a1 + 56)];
    v52 = [v9 balloonBundleID];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22B56C860;
    v59[3] = &unk_278703C80;
    v60 = *(a1 + 56);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_22B56C984;
    v54[3] = &unk_278704BC8;
    v55 = *(a1 + 32);
    v58 = v37;
    v56 = *(a1 + 40);
    v57 = *(a1 + 56);
    [v49 _receiveFileTransfer:v48 transferID:v51 balloonBundleID:v52 senderContext:v47 progressBlock:v59 completionBlock:v54];
  }
}

void sub_22B56C2B4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int a6, void *a7)
{
  v52 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = IMOSLoggingEnabled();
  if (a6)
  {
    if (v17)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v49 = v13;
        v50 = 2048;
        v51 = a3;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Received response for request message GUID %@ attachment index: %lu", buf, 0x16u);
      }
    }

    if (v14)
    {
      v19 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = [v19 fileExistsAtPath:v14];

      if (v20)
      {
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = *(a1 + 32);
        v47 = 0;
        [v21 moveItemAtPath:v14 toPath:v22 error:&v47];
        v23 = v47;

        if (v23)
        {
          v24 = IMLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D271C(v14, v24);
          }

          [*(a1 + 40) resetTransfer:*(a1 + 48) andPostError:v23];
          v25 = +[IMDMessageStore sharedInstance];
          [v25 updateFileTransfer:*(a1 + 56)];

          goto LABEL_34;
        }

        goto LABEL_19;
      }
    }

    if (v15)
    {
      [v15 writeToFile:*(a1 + 32) atomically:1];
LABEL_19:
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [*(a1 + 56) guid];
          *buf = 138412290;
          v49 = v28;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Located transfer with GUID: %@", buf, 0xCu);
        }
      }

      [*(a1 + 56) setUserInfo:0];
      v29 = *(a1 + 56);
      v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32)];
      [v29 _setLocalURL:v30];

      [*(a1 + 40) endTransfer:*(a1 + 48)];
      v31 = +[IMDMessageStore sharedInstance];
      [v31 updateFileTransfer:*(a1 + 56)];

      v32 = +[IMDFileTransferCenter sharedInstance];
      v33 = [*(a1 + 56) guid];
      v23 = [v32 transferForGUID:v33];

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Generating preview for attachment fetched from content after failing fetch from CK", buf, 2u);
        }
      }

      v35 = +[IMDMessageStore sharedInstance];
      v36 = [*(a1 + 56) messageGUID];
      v37 = [v35 messageWithGUID:v36];

      if ([v37 isFromMe])
      {
        v38 = MEMORY[0x277D1AB80];
        v39 = [v37 service];
        [v38 fromMeContextWithServiceName:v39];
      }

      else
      {
        v40 = +[IMDChatRegistry sharedInstance];
        v41 = [v37 sender];
        v42 = [v40 hasKnownSenderChatWithChatIdentifier:v41];

        v43 = MEMORY[0x277D1AB80];
        v39 = [v37 service];
        [v43 contextWithKnownSender:v42 serviceName:v39];
      }
      v44 = ;

      v45 = +[IMDFileTransferCenter sharedInstance];
      [v45 generatePreviewForTransfer:v23 messageItem:v37 senderContext:v44];

      goto LABEL_34;
    }

    v46 = IMLogHandleForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2794(v46);
    }

    [*(a1 + 40) resetTransfer:*(a1 + 48) andPostError:v16];
    v23 = +[IMDMessageStore sharedInstance];
    [v23 updateFileTransfer:*(a1 + 56)];
  }

  else
  {
    if (v17)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Message has failed to be retrieved from peer for our request", buf, 2u);
      }
    }

    [*(a1 + 40) resetTransfer:*(a1 + 48) andPostError:v16];
    v23 = +[IMDMessageStore sharedInstance];
    [v23 updateFileTransfer:*(a1 + 56)];
  }

LABEL_34:
}

void sub_22B56C860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134218496;
      v11 = a2;
      v12 = 2048;
      v13 = a3;
      v14 = 2048;
      v15 = a4;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Receive progress updated to %lld of %lld (%lld bps)", &v10, 0x20u);
    }
  }

  v9 = +[IMDFileTransferCenter sharedInstance];
  [v9 updateTransfer:*(a1 + 32) currentBytes:a2 totalBytes:a3];
}

void sub_22B56C984(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = @"NO";
      *v44 = 138412802;
      if (a4)
      {
        v18 = @"YES";
      }

      *&v44[4] = v17;
      v45 = 2112;
      v46 = v18;
      v47 = 2112;
      v48 = v14;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Finished accepting/downloading transfer: %@   success: %@  error: %@", v44, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v21 = v20 - *(a1 + 56);
      *v44 = 134217984;
      *&v44[4] = v21;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Time taken: %f", v44, 0xCu);
    }
  }

  if (a4)
  {
    v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];
    [*(a1 + 32) setUserInfo:0];
    if (v22 && ([MEMORY[0x277CCAA00] defaultManager], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "path"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "fileExistsAtPath:", v24), v24, v23, v25))
    {
      [*(a1 + 32) _setLocalURL:v22];
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v44 = 138412290;
          *&v44[4] = v22;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Set transfer local url to: %@", v44, 0xCu);
        }
      }

      v27 = *(a1 + 40);
      v28 = [*(a1 + 32) guid];
      [v27 endTransfer:v28];
    }

    else if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        *v44 = 138412290;
        *&v44[4] = v30;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Could not locate file for transfer: %@", v44, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = *(a1 + 32);
        *v44 = 138412546;
        *&v44[4] = v32;
        v45 = 2112;
        v46 = v14;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Failed retreiving file transfer: %@   error: %@", v44, 0x16u);
      }
    }

    v33 = [IMDFileTransferCenter convertNSErrorToIMFileTransferErrorReason:v14 additionalErrorInfo:v15, *v44];
    v34 = v14;
    v35 = [(__CFString *)v34 domain];
    v36 = [v35 isEqualToString:*MEMORY[0x277D25460]];

    if (v36)
    {
      v37 = [(__CFString *)v34 code]!= 8;
    }

    else
    {
      v37 = 1;
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *v44 = 138412546;
        *&v44[4] = v34;
        v45 = 1024;
        LODWORD(v46) = v37;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Checking _IsFileTransferErrorRecoverable %@, (%d)", v44, 0x12u);
      }
    }

    v39 = *(a1 + 40);
    v40 = *(a1 + 48);
    if (v37)
    {
      [v39 resetTransfer:v40 andPostReason:v33];
      goto LABEL_43;
    }

    [v39 failTransfer:v40 reason:v33];
  }

  if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = *(a1 + 32);
      *v44 = 138412290;
      *&v44[4] = v42;
      _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Updating clients with final transfer: %@", v44, 0xCu);
    }
  }

  v43 = +[IMDMessageStore sharedInstance];
  [v43 updateFileTransfer:*(a1 + 32)];

  [*(a1 + 40) postHubbleDownloadFinishedIfNeededForTransfer:*(a1 + 32)];
LABEL_43:
}

void sub_22B56DAC4(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKey:@"result"];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [v4 objectForKey:@"fileURL"];
    v8 = [v6 URLWithString:v7];

    if (v8)
    {
      [*(a1 + 32) _setLocalURL:v8];
      [*(a1 + 32) setThumbnailMode:0];
      v9 = +[IMDAttachmentStore sharedInstance];
      [v9 storeAttachment:*(a1 + 32) associateWithMessageWithGUID:0];

      v10 = [MEMORY[0x277D1ADF8] sharedInstance];
      v11 = *(a1 + 32);
      v12 = [(__CFString *)v8 path];
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 72);
      v48 = v15;
      if (v15)
      {
        v16 = v49;
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = sub_22B56E164;
        v49[3] = &unk_278704C18;
        v46 = &v51;
        v51 = v15;
        v47 = &v50;
        v50 = v8;
      }

      else
      {
        v16 = 0;
      }

      [v10 generatePreviewForTransfer:v11 attachmentPath:v12 balloonBundleID:v13 senderContext:v14 completionBlock:v16];

      if (*(a1 + 80))
      {
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [*(a1 + 32) guid];
            *buf = 138412290;
            v53 = v24;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Attempting to relay message after tap to download of %@", buf, 0xCu);
          }
        }

        v25 = +[IMDAttachmentStore sharedInstance];
        v26 = [*(a1 + 32) guid];
        v27 = [v25 messageForTransferGUID:v26 shouldLoadAttachments:1];

        v28 = +[IMDMessageStore sharedInstance];
        v29 = [v28 chatForMessage:v27];

        if (v27)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        v31 = !v30;
        v32 = IMOSLoggingEnabled();
        if (v31)
        {
          if (v32)
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = [v27 guid];
              v35 = [v29 guid];
              v36 = [*(a1 + 32) guid];
              *buf = 138412802;
              v53 = v34;
              v54 = 2112;
              v55 = v35;
              v56 = 2112;
              v57 = v36;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Relaying message %@ for chat %@ after tap to download of %@", buf, 0x20u);
            }
          }

          v37 = +[IMDRelayServiceController sharedInstance];
          v38 = [*(a1 + 56) session];
          v39 = [v38 service];
          v40 = [v39 internalName];
          [v37 relayMessageToPeers:v27 forChat:v29 serviceName:v40 reflectOnly:0 requiredCapabilities:0];
        }

        else if (v32)
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = [*(a1 + 32) guid];
            v43 = v42;
            v44 = @"NO";
            if (v29)
            {
              v45 = @"YES";
            }

            else
            {
              v45 = @"NO";
            }

            *buf = 138412802;
            if (v27)
            {
              v44 = @"YES";
            }

            v53 = v44;
            v54 = 2112;
            v55 = v45;
            v56 = 2112;
            v57 = v42;
            _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Relay after TapToDownload failed, couldn't find msg (%@) or chat (%@) for transfer %@", buf, 0x20u);
          }
        }
      }

      if (v48)
      {

        v22 = *v46;
        goto LABEL_47;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "No file found after download from RCS", buf, 2u);
        }
      }

      v20 = *(a1 + 72);
      if (v20)
      {
        v21 = *(a1 + 64);
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.AttachmentControllerErrorDomain" code:4 userInfo:0];
        (*(v20 + 16))(v20, v21, 0, 0, 0, v22, 0, 0.0, 0.0);
LABEL_47:
      }
    }
  }

  else
  {
    v8 = [v3 objectForKey:@"error"];
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v53 = v8;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Failed to download from RCS, error %@", buf, 0xCu);
      }
    }

    v18 = *(a1 + 72);
    if (v18)
    {
      (*(v18 + 16))(v18, *(a1 + 64), 0, 0, 0, v8, 0, 0.0, 0.0);
    }
  }
}

void sub_22B56E164(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5, double a6)
{
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = a4;
  v13 = a2;
  v14 = [v11 path];
  (*(v10 + 16))(v10, v13, v14, 1, a3, v12, 0, a5, a6);
}

void sub_22B56E220(void *a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a2)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
    objc_storeStrong((*(a1[6] + 8) + 40), a5);
    objc_storeStrong((*(a1[7] + 8) + 40), a7);
    objc_storeStrong((*(a1[8] + 8) + 40), a6);
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *(*(a1[5] + 8) + 40);
        v19 = *(*(a1[7] + 8) + 40);
        *buf = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "For default file transfer download, using signature %@ file size %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Unable to find default file transfer info to download", buf, 2u);
    }
  }
}

void sub_22B56E938(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [qword_27D8CFE30 objectForKey:a1[4]];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = a1[4];
        v6 = 138412290;
        v7 = v4;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Timed out waiting for peer attachment completion for attachment: %@", &v6, 0xCu);
      }
    }

    v2[2](v2, a1[5], a1[6], 0, 0, 0, 0);
    [qword_27D8CFE30 removeObjectForKey:a1[4]];
    if (![qword_27D8CFE30 count])
    {
      v5 = qword_27D8CFE30;
      qword_27D8CFE30 = 0;
    }
  }
}

void sub_22B5707DC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, int a7, void *a8)
{
  v52 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v15 = a3;
  v46 = a4;
  v16 = a5;
  v17 = a8;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      v20 = *(a1 + 32);
      if (a7)
      {
        v19 = @"YES";
      }

      *buf = 138412546;
      v49 = v20;
      v50 = 2112;
      v51 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Transcode processing complete for transfer: %@  (Attempted Transcode: %@)", buf, 0x16u);
    }
  }

  v21 = IMOSLoggingEnabled();
  if (a6)
  {
    if (v21)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = v15;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Transcoding succeeded with output URLs: %@", buf, 0xCu);
      }
    }

    v23 = [(__CFString *)v15 lastObject:v44];
    v24 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v23];
    v25 = v24;
    v26 = *(*(a1 + 64) + 8);
    if (*(v26 + 24))
    {
      v27 = 1;
    }

    else
    {
      v27 = [v24 length] > 0x100000;
      v26 = *(*(a1 + 64) + 8);
    }

    *(v26 + 24) = v27;
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(*(*(a1 + 64) + 8) + 24);
        v36 = [v25 length];
        v37 = @"NO";
        if (v35)
        {
          v37 = @"YES";
        }

        *buf = 138412546;
        v49 = v37;
        v50 = 2048;
        v51 = v36;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "useLocalPeersFileAPI: %@ fileSize:%lu", buf, 0x16u);
      }
    }

    [*(a1 + 40) _sendAttachmentToPeerDevice:*(a1 + 72) fileTransferGUID:*(a1 + 48) messageGuid:*(a1 + 56) fileURL:v23 useLocalPeersFileAPI:*(*(*(a1 + 64) + 8) + 24) error:0];
  }

  else
  {
    if (v21)
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Transcoding Failed for Peer Relay:", buf, 2u);
      }
    }

    v29 = [*(a1 + 32) localURL];
    v23 = [v29 path];

    if (v23)
    {
      v30 = [MEMORY[0x277CCAA00] defaultManager];
      v31 = [v30 attributesOfItemAtPath:v23 error:0];

      v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
      v33 = [v32 longValue];

      *(*(*(a1 + 64) + 8) + 24) |= v33 > 0x100000;
    }

    else
    {
      v33 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v39 = @"YES";
        }

        else
        {
          v39 = @"NO";
        }

        *buf = 138412546;
        v49 = v39;
        v50 = 2048;
        v51 = v33;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "useLocalPeersFileAPI: %@ fileSize:%ld", buf, 0x16u);
      }
    }

    v40 = *(a1 + 72);
    v42 = *(a1 + 48);
    v41 = *(a1 + 56);
    v43 = *(a1 + 40);
    v25 = [*(a1 + 32) localURL];
    [v43 _sendAttachmentToPeerDevice:v40 fileTransferGUID:v42 messageGuid:v41 fileURL:v25 useLocalPeersFileAPI:*(*(*(a1 + 64) + 8) + 24) error:5];
  }
}

void sub_22B570CE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMOSLoggingEnabled();
  if (!v6 || v7)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay: %@", &v16, 0xCu);
      }
    }

    v11 = *(a1 + 72);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = [*(a1 + 56) localURL];
    [v13 _sendAttachmentToPeerDevice:v11 fileTransferGUID:v12 messageGuid:v14 fileURL:v15 useLocalPeersFileAPI:*(*(*(a1 + 64) + 8) + 24) error:5];
  }

  else
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "File safe render success.", &v16, 2u);
      }
    }

    [*(a1 + 32) _sendAttachmentToPeerDevice:*(a1 + 72) fileTransferGUID:*(a1 + 40) messageGuid:*(a1 + 48) fileURL:v6 useLocalPeersFileAPI:*(*(*(a1 + 64) + 8) + 24) error:0];
  }
}

void sub_22B571104(uint64_t a1)
{
  v2 = [*(a1 + 32) _runIndividuallyWithInput:*(a1 + 40)];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22B5711A8;
  v3[3] = &unk_278704CE0;
  v4 = *(a1 + 48);
  [v2 registerCompletionBlock:v3];
}

void sub_22B5711A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = *(a1 + 32);
  if (v4 == 1)
  {
    v6 = [v3 error];

    [v5 failWithError:v6];
  }

  else
  {
    v6 = [v3 value];

    [v5 fullfillWithValue:v6];
  }
}

void sub_22B57186C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B571860);
  }

  _Unwind_Resume(a1);
}

void *sub_22B571F7C(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 32) + 8);
      *buf = 138412546;
      v20 = v7;
      v21 = 2048;
      v22 = [a2 count];
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%@:Received a batch of %lu messages to process.", buf, 0x16u);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v9 = result;
  if (result)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 40) replayMessage:*(*(&v14 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v9 = result;
    }

    while (result);
  }

  if (a3)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B572164;
    v13[3] = &unk_278704D08;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v13[5] = a2;
    v13[6] = a3;
    return [v12 enqueReplayMessageCallback:v13];
  }

  return result;
}