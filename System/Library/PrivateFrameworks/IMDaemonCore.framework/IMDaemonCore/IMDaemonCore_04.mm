id sub_22B6196A0(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  v7 = v6;

  return v7;
}

uint64_t sub_22B619964()
{
  qword_281420F18 = objc_alloc_init(IMDBackgroundMessagingAPIListener);

  return MEMORY[0x2821F96F8]();
}

void sub_22B619A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *MEMORY[0x277D19FE8];
  v6 = a5;
  v10 = [v6 objectForKeyedSubscript:v5];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D19FF0]];

  v8 = [v7 BOOLValue];
  v9 = +[IMDBackgroundMessagingAPIListener sharedListener];
  [v9 handleSMSSendResult:v10 sent:v8];
}

void sub_22B619F28(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 24) allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) handleSMSSendResult:*(a1 + 40) sent:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t sub_22B61A870()
{
  qword_281420FF8 = objc_alloc_init(IMDCKDatabaseManager);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B61B1E4(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v2];
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  v4 = [v3 copy];

  return v4;
}

void sub_22B61BBFC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B61BB5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t (*sub_22B61BFD4())(void, void, void, void)
{
  result = MEMORY[0x231897B50]("PLLogRegisteredEvent", @"PowerLog");
  off_281422590 = result;
  return result;
}

void sub_22B61C8E8(id *a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v6 = *(a1[6] + 2);
    goto LABEL_5;
  }

  v3 = +[IMDEmergencyContactsManager sharedManager];
  v4 = [v3 emergencyContactHandles];
  v5 = [v4 containsObject:a1[4]];

  if (v5)
  {
    v6 = *(a1[6] + 2);
LABEL_5:

    v6();
    return;
  }

  v7 = [a1[5] properties];
  v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v9 = [v8 isOneChatEnabled];

  if ((v9 & 1) == 0)
  {
    v10 = +[IMDChatRegistry sharedInstance];
    v11 = [a1[5] chatIdentifier];
    v12 = [v10 existingSMSChatForID:v11 withChatStyle:{objc_msgSend(a1[5], "style")}];
    v13 = [v12 properties];

    v7 = v13;
  }

  v14 = [v7 objectForKey:*MEMORY[0x277D198A0]];
  v15 = v14;
  if (v14 && ([v14 timeIntervalSinceNow], v16 < 86400.0))
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v17 = +[IMDFamilyManager sharedManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22B61CB2C;
    v18[3] = &unk_2787066A0;
    v20 = a1[6];
    v19 = a1[4];
    [v17 familyHandlesWithCompletion:v18];
  }
}

uint64_t sub_22B61CB2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 containsObject:*(a1 + 32)];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_22B61E1DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B61E13CLL);
  }

  _Unwind_Resume(a1);
}

void *sub_22B61E210(uint64_t a1)
{
  if ([*(a1 + 32) isMemberOfClass:objc_opt_class()])
  {
    [*(a1 + 40) _handleFetchZoneChangesOperation:*(a1 + 32)];
  }

  result = [*(a1 + 32) isMemberOfClass:objc_opt_class()];
  if (result)
  {
    v3 = *(a1 + 40);

    return MEMORY[0x2821F9670](v3, sel__handleModifyRecordsOperation_);
  }

  return result;
}

uint64_t sub_22B61EE50()
{
  qword_281421000 = objc_alloc_init(IMDCKRampManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22B61F37C(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Fetch operation records %@ fetchError %@", buf, 0x16u);
    }
  }

  if (!v6)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B61F5A0;
    v16[3] = &unk_2787037B8;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v17[0] = v10;
    v17[1] = v11;
    v18 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v16);

    v9 = v17;
    goto LABEL_9;
  }

  v8 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v8 autoBugCaptureWithSubType:@"FetchRampState" errorPayload:v6];

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B61F7AC;
    block[3] = &unk_2787028B0;
    v15 = *(a1 + 40);
    v14 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v9 = &v15;
LABEL_9:
  }
}

void sub_22B61F5A0(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _rampUpRecordID];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 objectForKey:@"FeaturePromoted"];
    v6 = [v5 BOOLValue];

    v7 = [v4 objectForKey:@"RetryAfter"];
    v8 = [v7 integerValue];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v6)
        {
          v10 = @"YES";
        }

        v13 = 138412546;
        v14 = v10;
        v15 = 2048;
        v16 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Fetch ramp state - featurePromoted: %@ retryAfter: %ld", &v13, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Couldn't find CKRecord for ramp. Defaulting to not ramped in", &v13, 2u);
      }
    }

    v6 = 0;
    v8 = 3600;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v6, v8, 0);
  }
}

void sub_22B61FC90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "retry timer fired", buf, 2u);
    }
  }

  v5 = *(a1 + 40);
  im_dispatch_after();
}

uint64_t sub_22B61FFA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void sub_22B61FFC4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v25 = *MEMORY[0x277D85DE8];
  if (!a2 || (a3 & 1) != 0)
  {
    v8 = [*(a1 + 32) retryTimer];
    v9 = [v8 isValid];

    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [*(a1 + 32) retryTimer];
          v13 = [v12 fireDate];
          *buf = 138412290;
          v22 = v13;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Not fetching from server, next one is firing at %@", buf, 0xCu);
        }
      }

      if (*(a1 + 40))
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "calling recordFetchedCompletionBlock", buf, 2u);
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (v10)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = @"NO";
          if (v4)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          if (a3)
          {
            v16 = @"YES";
          }

          *buf = 138412546;
          v22 = v17;
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Cached values: featurePromoted(%@) is not YES, or we had a server error last time(%@) so fetching from server", buf, 0x16u);
        }
      }

      v18 = [*(a1 + 32) ckQueue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22B620398;
      v19[3] = &unk_278703808;
      v19[4] = *(a1 + 32);
      v20 = *(a1 + 40);
      dispatch_async(v18, v19);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Cached featureAllowed is true, and there wasn't an error fetching state from the server last time. Not fetching again", buf, 2u);
      }
    }

    if (*(a1 + 40))
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "calling recordFetchedCompletionBlock", buf, 2u);
        }
      }

LABEL_12:
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_22B620398(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22B620428;
  v2[3] = &unk_278706760;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _fetchLatestRampStateFromCK:v2];
}

void sub_22B620428(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Fetched ramp record", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B620694;
    block[3] = &unk_278706738;
    v15 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v24 = a2;
    v23 = v15;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v16 = v23;
    goto LABEL_27;
  }

  v9 = [v7 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v10 && ([v8 code] == 7 || objc_msgSend(v8, "code") == 23))
  {
    v11 = [v8 userInfo];
    v12 = [v11 objectForKey:*MEMORY[0x277CBBF68]];

    if (v12)
    {
      v13 = [v12 integerValue];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3 <= 0;
  }

  if (v17)
  {
    v18 = v13;
  }

  else
  {
    v18 = a3;
  }

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = 3600;
  }

  [*(a1 + 32) _persistRampFetchServerError:1];
  if (v19 < 1)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22B620758;
    v20[3] = &unk_2787028D8;
    v21 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v20);
    v16 = v21;
LABEL_27:

    goto LABEL_28;
  }

  [*(a1 + 32) _performRampCheckWithRetryAfter:*(a1 + 40) recordFetchedCompletionBlock:v19];
LABEL_28:
}

void *sub_22B620694(uint64_t a1)
{
  result = [*(a1 + 32) _writeRampStatePromoted:*(a1 + 48) hadServerError:0];
  if (*(a1 + 40))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "calling recordFetchedCompletionBlock", v4, 2u);
      }
    }

    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

uint64_t sub_22B620758(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 1);
  }

  return result;
}

uint64_t sub_22B620E48()
{
  qword_281420EF0 = objc_alloc_init(IMDDaemonPropertyManager);

  return MEMORY[0x2821F96F8]();
}

void IMDSetInconsistencyHandler(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting inconsistency handler", buf, 2u);
    }
  }

  if (qword_281421458 != -1)
  {
    sub_22B7D68E8();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B621634;
  block[3] = &unk_2787067B0;
  block[4] = a1;
  dispatch_async(qword_281421418, block);
}

void *sub_22B621634(uint64_t a1)
{
  if (qword_281421430)
  {
    _Block_release(qword_281421430);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  qword_281421430 = result;
  return result;
}

void IMDNoticedInconsistency(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *MEMORY[0x277D85DE8];
  if (qword_281421458 != -1)
  {
    sub_22B7D6910();
  }

  v14[5] = &a9;
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a2 arguments:&a9];
  v12 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D6924(v11, v12);
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  IMLogBacktrace();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22B62180C;
  v14[3] = &unk_278704F90;
  v14[4] = a1;
  dispatch_async(qword_281421418, v14);
}

void sub_22B62180C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_22B621948(*(a1 + 32), 1);
  [v2 setCount:{objc_msgSend(v2, "count") + 1}];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412546;
      v6 = v4;
      v7 = 2048;
      v8 = [v2 count];
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Noticed inconsistency at context %@ (count = %llu)", &v5, 0x16u);
    }
  }
}

id sub_22B621948(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_22B4D7750;
  v13 = sub_22B4D7904;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B621F44;
  v8[3] = &unk_2787067D8;
  v8[4] = a1;
  v8[5] = &v9;
  [qword_281421428 enumerateObjectsUsingBlock:v8];
  v4 = v10[5];
  if (!v4 && a2)
  {
    v5 = objc_alloc_init(IMDInconsistency);
    v10[5] = v5;
    [(IMDInconsistency *)v5 setContext:a1];
    [qword_281421428 addObject:v10[5]];

    sub_22B621C28();
    v4 = v10[5];
  }

  v6 = v4;
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_22B621A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IMDInconsistencyResolved(uint64_t a1)
{
  if (qword_281421458 != -1)
  {
    sub_22B7D6910();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B621B30;
  block[3] = &unk_278704F90;
  block[4] = a1;
  dispatch_async(qword_281421418, block);
}

void sub_22B621B30(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sub_22B621948(*(a1 + 32), 0);
  if (v2)
  {
    v3 = v2;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Resolving inconsistency at context %@", &v6, 0xCu);
      }
    }

    [qword_281421428 removeObject:v3];
    sub_22B621C28();
  }
}

void sub_22B621C28()
{
  if (qword_27D8CFF30)
  {
LABEL_2:
    if (![qword_281421428 count])
    {
      if (IMOSLoggingEnabled())
      {
        v0 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
        {
          *v3 = 0;
          _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Disabling timer, all inconsistencies resolved", v3, 2u);
        }
      }

      dispatch_source_set_event_handler(qword_27D8CFF30, 0);
      dispatch_release(qword_27D8CFF30);
      qword_27D8CFF30 = 0;
    }

    return;
  }

  if (![qword_281421428 count])
  {
    if (!qword_27D8CFF30)
    {
      return;
    }

    goto LABEL_2;
  }

  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_INFO, "Enabling timer, since we have inconsistencies we need to check up on", buf, 2u);
    }
  }

  qword_27D8CFF30 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, qword_281421418);
  v2 = dispatch_time(0, 0xDF8476000);
  dispatch_source_set_timer(qword_27D8CFF30, v2, 0xFFFFFFFFFFFFFFFFLL, 0x1BF08EC000uLL);
  dispatch_source_set_event_handler(qword_27D8CFF30, &unk_283F1A748);
  dispatch_resume(qword_27D8CFF30);
}

void sub_22B621DC8()
{
  v6 = *MEMORY[0x277D85DE8];
  qword_281421418 = dispatch_queue_create(0, 0);
  qword_281421428 = [MEMORY[0x277CBEB18] array];
  v0 = CFPreferencesCopyValue(@"LastJettisonTimeInterval", @"com.apple.imagent", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x277CBEAA8];
    [v0 doubleValue];
    qword_281421420 = [v2 dateWithTimeIntervalSinceReferenceDate:?];
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = qword_281421420;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Finished initialization, last jettison was %@", &v4, 0xCu);
    }
  }
}

void *sub_22B621F44(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 context];
  if (result == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

void sub_22B621F9C()
{
  v36 = *MEMORY[0x277D85DE8];
  dispatch_source_set_event_handler(qword_27D8CFF30, 0);
  dispatch_release(qword_27D8CFF30);
  qword_27D8CFF30 = 0;
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Checking our inconsistencies to see if it's time to jettison state", v11, 2u);
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = sub_22B4D7750;
  v28 = sub_22B4D7904;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_22B4D7750;
  v22 = sub_22B4D7904;
  v23 = [MEMORY[0x277CBEB18] array];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_22B4D7750;
  v16 = sub_22B4D7904;
  v17 = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6224AC;
  v11[3] = &unk_278706800;
  v11[4] = &v12;
  v11[5] = &v24;
  v11[6] = &v30;
  v11[7] = &v18;
  [qword_281421428 enumerateObjectsUsingBlock:v11];
  if (*(v31 + 24) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        v2 = v25[5];
        *buf = 138412290;
        v35 = v2;
        _os_log_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_INFO, "Too many inconsistencies found in imagent, jettisoning state and starting over (reason: %@)", buf, 0xCu);
      }
    }

    qword_281421428 = [MEMORY[0x277CBEB18] array];
    sub_22B621C28();
    if (qword_281421430)
    {

      qword_281421420 = [MEMORY[0x277CBEAA8] date];
      v3 = MEMORY[0x277CCABB0];
      [qword_281421420 timeIntervalSinceReferenceDate];
      v4 = [v3 numberWithDouble:?];
      v5 = *MEMORY[0x277CBF040];
      v6 = *MEMORY[0x277CBF030];
      CFPreferencesSetValue(@"LastJettisonTimeInterval", v4, @"com.apple.imagent", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
      CFPreferencesSynchronize(@"com.apple.imagent", v5, v6);
      dispatch_async(MEMORY[0x277D85CD0], qword_281421430);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = v19[5];
        *buf = 138412290;
        v35 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Inconsistencies aren't bad enough to merit a jettison (reasons: %@)", buf, 0xCu);
      }
    }

    if ([v13[5] count])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = v13[5];
          *buf = 138412290;
          v35 = v10;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Removing expired inconsistencies: %@", buf, 0xCu);
        }
      }

      [qword_281421428 removeObjectsInArray:v13[5]];
    }

    sub_22B621C28();
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

void *sub_22B6224AC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (![a2 context])
  {
    v8 = *(*(a1[4] + 8) + 40);
    v9 = a2;
LABEL_7:

    return [v8 addObject:v9];
  }

  result = [a2 shouldJettison:*(a1[5] + 8) + 40];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
    return result;
  }

  v9 = *(*(a1[5] + 8) + 40);
  if (v9)
  {
    v8 = *(*(a1[7] + 8) + 40);
    goto LABEL_7;
  }

  return result;
}

id IMFileTransferFromIMDAttachmentRecordRef(void *a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v15 = "Unable to create IMFileTransfer from NULL IMDAttachmentRecordRef.";
    goto LABEL_13;
  }

  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v2 = [a1 previewGenerationState];
  _IMDAttachmentRecordBulkCopy();
  if (![v39 length])
  {

    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v15 = "This transfer doesn't have a guid, returning nil.";
LABEL_13:
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, v15, buf, 2u);
    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x277D1A9C0]);
  [v3 setGuid:v39];
  [v3 _setLocalPath:v37];
  [v3 setType:v36];
  [v3 setCreatedDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", v33)}];
  [v3 _setStartDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", v32)}];
  [v3 _setTransferState:v31];
  [v3 setPreviewGenerationState:v2];
  [v3 setIsIncoming:v30 == 0];
  [v3 setUserInfo:v34];
  [v3 setTotalBytes:v29];
  if ([v38 length])
  {
    [v3 setFilename:v38];
  }

  [v3 setIsSticker:v28 != 0];
  [v3 setStickerUserInfo:v27];
  [v3 setAttributionInfo:v26];
  [v3 setHideAttachment:v25 != 0];
  [v3 setCloudKitSyncState:v24];
  [v3 setCloudKitServerChangeTokenBlob:v23];
  [v3 setCloudKitRecordID:v22];
  [v3 setOriginalGUID:v21];
  [v3 setCommSafetySensitive:v20];
  [v3 setAdaptiveImageGlyphContentIdentifier:v19];
  [v3 setAdaptiveImageGlyphContentDescription:v18];

  v4 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v3 transferState];
    v5 = [v3 cloudKitSyncState];
    v6 = [objc_msgSend(v3 "localURL")];
    v7 = [v3 transferredFilename];
    v8 = [v3 guid];
    v9 = [v3 error];
    v10 = [v3 totalBytes];
    v11 = [v3 createdDate];
    v12 = [v3 commSafetySensitive];
    v13 = [v3 updateReason];
    *buf = 134220546;
    v41 = v3;
    v42 = 2048;
    v43 = v17;
    v44 = 2048;
    v45 = v5;
    v46 = 2112;
    v47 = v6;
    v48 = 2112;
    v49 = v7;
    v50 = 2112;
    v51 = v8;
    v52 = 1024;
    v53 = v9;
    v54 = 1024;
    v55 = v10;
    v56 = 2112;
    v57 = v11;
    v58 = 1024;
    v59 = v12;
    v60 = 2048;
    v61 = v13;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "From attachment record, created [IMFileTransfer: %p  state: %ld  sync state: %ld  local path: %@  transferred name: %@  guid: %@  error: %d  total bytes: %d  created: %@ commSafety: %d update reason: %ld]", buf, 0x64u);
  }

  return v3;
}

void sub_22B622A78(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x22B622A34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMDAttachmentRecordRefFromIMFileTransfer(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v9 = "Unable to create IMDAttachmentRecordRef from nil IMFileTransfer.";
    v10 = v8;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 2;
LABEL_30:
    _os_log_impl(&dword_22B4CC000, v10, v11, v9, buf, v12);
    return 0;
  }

  v6 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = [a1 localPath];
    *&buf[12] = 2112;
    *&buf[14] = [a1 filename];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Local path: %@, filename: %@", buf, 0x16u);
  }

  if ([a1 isIncoming] && objc_msgSend(a1, "transferState") < 4)
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (!v7)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v7 = [a1 transferState] != 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v26 = sub_22B4D7760;
  v27 = sub_22B4D7910;
  v28 = 0;
  v13 = [MEMORY[0x277D18EE8] sharedInstance];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B6232B0;
  v24[3] = &unk_278706828;
  v24[4] = buf;
  [v13 saveAttachmentsForTransfer:a1 chatGUID:a2 storeAtExternalLocation:a3 completion:v24];
  if (*(*&buf[8] + 40) && (v14 = [MEMORY[0x277CCAA00] defaultManager], objc_msgSend(v14, "fileExistsAtPath:", *(*&buf[8] + 40))))
  {
    if (![objc_msgSend(a1 "localPath")] || (v15 = objc_msgSend(a1, "localPath"), !objc_msgSend(v15, "isEqualToString:", *(*&buf[8] + 40))) || objc_msgSend(a1, "isSticker"))
    {
      [a1 _setLocalPath:*(*&buf[8] + 40)];
      [a1 _setTransferState:{objc_msgSend(MEMORY[0x277D1A9C0], "finalTransferStateForThumbnailMode:success:", objc_msgSend(a1, "thumbnailMode"), 1)}];
      -[IMDFileTransferCenter updateTransfer:](+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter, "sharedInstance"), "updateTransfer:", [a1 guid]);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Persisting transfer failed.", v23, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_23:
  if ([a1 isAuxVideo])
  {
    v17 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Not creating entry in DB for Aux video transfer %@", buf, 0xCu);
    }

    if (![a1 isFinished])
    {
      return 0;
    }

    v18 = -[IMDFileTransferCenter transferForGUID:](+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter, "sharedInstance"), "transferForGUID:", [MEMORY[0x277D1A9C0] guidByStrippingAuxPrefix:{objc_msgSend(a1, "guid")}]);
    if ([objc_msgSend(v18 "createAndPersistLivePhotoBundleIfNecessary")])
    {
      return 0;
    }

    v19 = IMFileTransferLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 138412546;
    *&buf[4] = a1;
    *&buf[12] = 2112;
    *&buf[14] = v18;
    v9 = " ** Error creating video complement for file transfer: %@ imageTransfer: %@";
    v10 = v19;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 22;
    goto LABEL_30;
  }

  [a1 guid];
  [objc_msgSend(a1 "createdDate")];
  [objc_msgSend(a1 "startDate")];
  [a1 filename];
  [a1 localPath];
  [a1 type];
  [a1 mimeType];
  [a1 transferState];
  [a1 isIncoming];
  [a1 totalBytes];
  [a1 userInfo];
  [a1 isSticker];
  [a1 stickerUserInfo];
  [a1 attributionInfo];
  [a1 hideAttachment];
  [a1 cloudKitSyncState];
  [a1 cloudKitServerChangeTokenBlob];
  [a1 cloudKitRecordID];
  [a1 guid];
  [a1 commSafetySensitive];
  [a1 adaptiveImageGlyphContentIdentifier];
  [a1 adaptiveImageGlyphContentDescription];
  [a1 previewGenerationState];
  v20 = IMDAttachmentRecordCreate();
  v22 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = a1;
    _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Created: %@ from imfiletransfer: %@", buf, 0x16u);
  }

  return v20;
}

uint64_t _IMDShouldSaveAttachmentStoreAtExternalLocation(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if ([a2 transferState] || objc_msgSend(a1, "transferState") != 5)
    {
      v6 = 1;
    }

    else
    {
      v5 = IMAttachmentsLogHandle();
      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "We are downgrading an attachment from finished to waiting accept --> so we've deleted the path on disk and should not store the attachment", v10, 2u);
        v6 = 0;
      }
    }

    if ([a2 isIncoming] && objc_msgSend(a2, "transferState") < 4)
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = a3;
    v8 = (![a1 isIncoming] || objc_msgSend(a1, "transferState") >= 4) && objc_msgSend(a1, "transferState") != 0;
    v6 = v7 | v8;
  }

  return v6 & 1;
}

uint64_t IMDUpdateIMFileTransferFromIMFileTransfer(void *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [a1 transferState];
    v32 = [a3 transferState];
    v31 = [a1 cloudKitSyncState];
    v30 = [a3 cloudKitSyncState];
    if ([objc_msgSend(objc_msgSend(a1 "localURL")])
    {
      v11 = [a3 localURL];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ -> %@", objc_msgSend(a1, "localURL"), objc_msgSend(a3, "localURL")];
    }

    *buf = 134222594;
    *&buf[4] = v33;
    *&buf[12] = 2048;
    *&buf[14] = v32;
    *&buf[22] = 2048;
    v41 = v31;
    *v42 = 2048;
    *&v42[2] = v30;
    *&v42[10] = 2112;
    *&v42[12] = v11;
    v43 = 2112;
    v44 = [a1 transferredFilename];
    v45 = 2112;
    v46 = [a3 transferredFilename];
    v47 = 2112;
    v48 = [a1 guid];
    v49 = 2112;
    v50 = [a3 guid];
    v51 = 1024;
    v52 = [a1 error];
    v53 = 1024;
    v54 = [a3 error];
    v55 = 1024;
    v56 = [a1 totalBytes];
    v57 = 1024;
    v58 = [a3 totalBytes];
    v59 = 2112;
    v60 = [a1 createdDate];
    v61 = 2112;
    v62 = [a3 createdDate];
    v63 = 1024;
    v64 = [a1 commSafetySensitive];
    v65 = 1024;
    v66 = [a3 commSafetySensitive];
    v67 = 1024;
    v68 = [a1 updateReason];
    v69 = 1024;
    v70 = [a3 updateReason];
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Updating transfer: [state: %ld -> %ld sync state: %ld -> %ld local path: %@ transferred name: %@ -> %@ guid: %@ -> %@ error: %d -> %d total bytes: %d -> %d created: %@ -> %@ commSafety: %d -> %d update reason: %d -> %d]", buf, 0xA0u);
    a4 = a4;
  }

  v12 = [a1 cloudKitSyncState];
  v13 = v12 != [a3 cloudKitSyncState];
  v14 = [a1 transferState];
  v15 = v14 != [a3 transferState];
  [a1 setGuid:{objc_msgSend(a3, "guid")}];
  [a1 setMessageGUID:{objc_msgSend(a3, "messageGUID")}];
  [a1 setCreatedDate:{objc_msgSend(a3, "createdDate")}];
  [a1 _setStartDate:{objc_msgSend(a3, "startDate")}];
  [a1 setType:{objc_msgSend(a3, "type")}];
  [a1 setFilename:{objc_msgSend(a3, "filename")}];
  [a1 _setTransferState:{objc_msgSend(a3, "transferState")}];
  [a1 setIsIncoming:{objc_msgSend(a3, "isIncoming")}];
  [a1 setUserInfo:{objc_msgSend(a3, "userInfo")}];
  [a1 setStickerUserInfo:{objc_msgSend(a3, "stickerUserInfo")}];
  [a1 setAttributionInfo:{objc_msgSend(a3, "attributionInfo")}];
  [a1 setIsSticker:{objc_msgSend(a3, "isSticker")}];
  [a1 setAdaptiveImageGlyphContentIdentifier:{objc_msgSend(a3, "adaptiveImageGlyphContentIdentifier")}];
  [a1 setAdaptiveImageGlyphContentDescription:{objc_msgSend(a3, "adaptiveImageGlyphContentDescription")}];
  [a1 setHideAttachment:{objc_msgSend(a3, "hideAttachment")}];
  [a1 setCloudKitSyncState:{objc_msgSend(a3, "cloudKitSyncState")}];
  [a1 setCloudKitServerChangeTokenBlob:{objc_msgSend(a3, "cloudKitServerChangeTokenBlob")}];
  [a1 setCloudKitRecordID:{objc_msgSend(a3, "cloudKitRecordID")}];
  [a1 setOriginalGUID:{objc_msgSend(a3, "originalGUID")}];
  [a1 setCommSafetySensitive:{objc_msgSend(a3, "commSafetySensitive")}];
  [a1 setPreviewGenerationState:{objc_msgSend(a3, "previewGenerationState")}];
  [a1 _migratePreviewGenerationState];
  if (_IMDShouldSaveAttachmentStoreAtExternalLocation(a1, a3, 0))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v41 = sub_22B4D7760;
    *v42 = sub_22B4D7910;
    *&v42[8] = 0;
    v16 = [MEMORY[0x277D18EE8] sharedInstance];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_22B623D34;
    v35[3] = &unk_278706828;
    v35[4] = buf;
    [v16 saveAttachmentsForTransfer:a3 chatGUID:a5 storeAtExternalLocation:a4 completion:v35];
    if (*(*&buf[8] + 40) && (v17 = [MEMORY[0x277CCAA00] defaultManager], objc_msgSend(v17, "fileExistsAtPath:", *(*&buf[8] + 40))))
    {
      v18 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*&buf[8] + 40);
        *v36 = 138412290;
        v37 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, " Storing transfer at path: %@", v36, 0xCu);
      }

      [a1 _setLocalPath:*(*&buf[8] + 40)];
      [a3 _setLocalPath:*(*&buf[8] + 40)];
      v20 = [a1 finalTransferStateForSuccess:1];
      [a1 _setTransferState:v20];
      [a3 _setTransferState:v20];
      -[IMDFileTransferCenter updateTransfer:](+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter, "sharedInstance"), "updateTransfer:", [a3 guid]);
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v36 = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Persisting transfer failed.", v36, 2u);
      }
    }

    if ([+[IMDCKCacheDeleteManager isUsingCentralizeCacheDelete] sharedInstance]
    {
      v23 = v15 || v13;
      if (v23 && [a1 canMarkPurgeable])
      {
        v24 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v36 = 138412290;
          v37 = a1;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, " File eligible for purging: %@", v36, 0xCu);
        }

        if (*(*&buf[8] + 40))
        {
          v25 = +[IMDAttachmentStore sharedInstance];
          [(IMDAttachmentStore *)v25 markAttachmentPurgeable:*(*&buf[8] + 40)];
        }
      }

      else
      {
        v26 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v36 = 138412546;
          v37 = a1;
          v38 = 1024;
          v39 = v23;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, " File NOT eligible for purging: %@, updatedPurgeableState: %{BOOL}d", v36, 0x12u);
        }
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, " ** Not storing transfer", buf, 2u);
    }
  }

  cf = a2;
  if (a2 || ([a1 guid], (cf = IMDAttachmentRecordCopyAttachmentForGUID()) != 0))
  {
    [a1 guid];
    [objc_msgSend(a3 "createdDate")];
    [objc_msgSend(a1 "startDate")];
    [a1 filename];
    [a1 localPath];
    [a1 type];
    [a1 mimeType];
    [a1 transferState];
    [a1 isIncoming];
    [a3 totalBytes];
    [a1 userInfo];
    [a1 isSticker];
    [a1 stickerUserInfo];
    [a1 attributionInfo];
    [a1 hideAttachment];
    [a1 cloudKitSyncState];
    [a1 cloudKitServerChangeTokenBlob];
    [a1 cloudKitRecordID];
    [a1 originalGUID];
    [a1 commSafetySensitive];
    [a1 adaptiveImageGlyphContentIdentifier];
    [a1 adaptiveImageGlyphContentDescription];
    [a1 previewGenerationState];
    IMDAttachmentRecordBulkUpdate();
    if (!a2)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v28 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [a1 guid];
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "Unable to find an attachment record for guid: %@.", buf, 0xCu);
    }
  }

  return 1;
}

void sub_22B623CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

IMDAttachmentStore *sub_22B623D7C()
{
  result = objc_alloc_init(IMDAttachmentStore);
  qword_281421008 = result;
  return result;
}

void sub_22B6249BC(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32)];
  [v1 getResourceValue:&v4 forKey:*MEMORY[0x277CBEA40] error:&v3];
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v6 = v3;
        _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Error checking if filesystem supports case sensitivity: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    byte_2814225A0 = [v4 BOOLValue];
  }
}

uint64_t sub_22B624D20()
{
  result = MEMORY[0x231897B40](@"LSApplicationWorkspace", @"CoreServices");
  qword_27D8CFF38 = result;
  return result;
}

void *sub_22B624D50(uint64_t a1, void *a2)
{
  result = [a2 response];
  if (!result)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTR:%@ Messages storage issue: %@", objc_msgSend(objc_msgSend(MEMORY[0x277D07DB0], "sharedInstance"), "productBuildVersion"), *(a1 + 32)];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"A Messages attachment was unexpectedly removed from purgable state %@.", *(a1 + 40)];
    v6 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"tap-to-radar://new?Title=%@&Description=%@&Classification=%@&Reproducibility=%@&ComponentID=%@&ComponentName=%@&ComponentVersion=%@&AutoDiagnostics=phone", objc_msgSend(v4, "stringByAddingPercentEncodingWithAllowedCharacters:", v6), objc_msgSend(v5, "stringByAddingPercentEncodingWithAllowedCharacters:", v6), objc_msgSend(@"Serious Bug", "stringByAddingPercentEncodingWithAllowedCharacters:", v6), objc_msgSend(@"I Didn't Try", "stringByAddingPercentEncodingWithAllowedCharacters:", v6), objc_msgSend(@"450305", "stringByAddingPercentEncodingWithAllowedCharacters:", v6), objc_msgSend(@"Messages", "stringByAddingPercentEncodingWithAllowedCharacters:", v6), objc_msgSend(@"all", "stringByAddingPercentEncodingWithAllowedCharacters:", v6)];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v9 = [qword_27D8CFF38 defaultWorkspace];

    return [v9 openURL:v8 configuration:0 completionHandler:0];
  }

  return result;
}

void sub_22B62560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22B625638(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_22B6263D8(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Finished reindexing %@", &v4, 0xCu);
  }
}

void sub_22B6268E8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) count];
      v6 = 134218242;
      v7 = v5;
      v8 = 2112;
      v9 = a2;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Deleted %lu attachments from indexes with error: %@", &v6, 0x16u);
    }
  }
}

uint64_t sub_22B627540()
{
  qword_281420EF8 = objc_alloc_init(IMDIdentityLookupDecisioningManager);

  return MEMORY[0x2821F96F8]();
}

id sub_22B627778()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27D8CFF58;
  v7 = qword_27D8CFF58;
  if (!qword_27D8CFF58)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_22B627E48;
    v3[3] = &unk_278703200;
    v3[4] = &v4;
    sub_22B627E48(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22B627840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B627858(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11 = v5;
  if (a3)
  {
    (*(v6 + 16))(v6, 0, 0, a3);
  }

  else
  {
    v7 = [v5 transactionalSubActions];
    v8 = [v11 promotionalSubActions];
    (*(v6 + 16))(v6, v7, v8, 0);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_22B627AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22B627B00()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27D8CFF60;
  v7 = qword_27D8CFF60;
  if (!qword_27D8CFF60)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_22B627EA0;
    v3[3] = &unk_278703200;
    v3[4] = &v4;
    sub_22B627EA0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22B627BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B627BE0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [[IMDMessageFilterQueryResponse alloc] initWithResponse:v7];

  (*(v5 + 16))(v5, v8, v6);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

Class sub_22B627C88(uint64_t a1)
{
  sub_22B627CE0();
  result = objc_getClass("ILMessageFilterCapabilitiesQueryRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22B7D6CE4();
  }

  qword_27D8CFF48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22B627CE0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!qword_27D8CFF50)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = sub_22B627DD4;
    v0[4] = &unk_278702AF8;
    v0[5] = v0;
    v1 = xmmword_2787068C0;
    v2 = 0;
    qword_27D8CFF50 = _sl_dlopen();
  }

  if (!qword_27D8CFF50)
  {
    sub_22B7D6D60(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_22B627DD4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27D8CFF50 = result;
  return result;
}

Class sub_22B627E48(uint64_t a1)
{
  sub_22B627CE0();
  result = objc_getClass("ILMessageFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22B7D6DE0();
  }

  qword_27D8CFF58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_22B627EA0(uint64_t a1)
{
  sub_22B627CE0();
  result = objc_getClass("ILMessageFilterQueryRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22B7D6E5C();
  }

  qword_27D8CFF60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22B6281FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B628224(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu", a2];
    [v3 addObject:v4];
  }
}

void sub_22B6282A8(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{2 * objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v20 + 1) + 8 * v11) rangeValue];
        v14 = v13;
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu", v12];
        [v6 addObject:v15];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu", v14];
        [v6 addObject:v16];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = *(a1 + 32);
  v18 = [v4 stringValue];
  [v17 setObject:v6 forKey:v18];
}

void sub_22B628750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B628780(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v27 = a2;
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count") >> 1}];
  v26 = v7;
  v9 = [v7 count];
  v10 = v9;
  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  else
  {
    v11 = v27;
    if (v9)
    {
      v12 = 0;
      v13 = v9 - 1;
      do
      {
        if (v12 < v13)
        {
          v14 = MEMORY[0x277CCAE60];
          v15 = v8;
          v16 = *(a1 + 48);
          v17 = [v26 objectAtIndexedSubscript:v12];
          v18 = [v16 _unsignedIntegerFromString:v17];
          v19 = *(a1 + 48);
          v20 = [v26 objectAtIndexedSubscript:v12 + 1];
          v21 = [v19 _unsignedIntegerFromString:v20];
          v22 = v18;
          v8 = v15;
          v23 = [v14 valueWithRange:{v22, v21}];
          [v15 addObject:v23];

          v11 = v27;
        }

        v12 += 2;
      }

      while (v12 < v10);
    }

    v24 = *(a1 + 32);
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "_unsignedIntegerFromString:", v11)}];
    [v24 setObject:v8 forKey:v25];
  }
}

void sub_22B62894C(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (qword_2814225B8 != -1)
  {
    sub_22B7D6ED8();
  }

  if ([qword_2814225B0 addBlock:v7 withTimeout:@"com.apple.madrid" forKey:v8 description:a1] && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [qword_2814225B0 loggableOverviewForKey:@"com.apple.madrid"];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Messages ahead in the receive queue: %@", &v11, 0xCu);
    }
  }
}

uint64_t sub_22B628AA0()
{
  qword_2814225B0 = objc_alloc_init(MEMORY[0x277D19278]);

  return MEMORY[0x2821F96F8]();
}

void sub_22B628ADC(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = qword_27D8CFF70;
  v8 = a5;
  v9 = a4;
  v11 = v9;
  if (v7 == -1)
  {
    v10 = v9;
  }

  else
  {
    sub_22B7D6EEC();
    v10 = v11;
  }

  [qword_27D8CFF68 addBlock:v10 withTimeout:@"com.apple.sms" forKey:v8 description:a1];
}

uint64_t sub_22B628B80()
{
  qword_27D8CFF68 = objc_alloc_init(MEMORY[0x277D19278]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B629944()
{
  qword_27D8CFF78 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"uti-type", @"decryption-key", @"mmcs-url", @"mmcs-signature-hex", @"mmcs-owner", @"file-size", 0}];

  return MEMORY[0x2821F96F8]();
}

void sub_22B6299C8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([qword_27D8CFF78 containsObject:v9])
  {
    v6 = IMCreateEscapedAttributeValueFromString();
    v7 = IMCreateEscapedAttributeValueFromString();
    v8 = v7;
    if (v6 && v7)
    {
      [*(*(a1 + 32) + 40) appendFormat:@" %@=%@", v6, v7];
    }
  }
}

void sub_22B62CE80(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B62C008);
  }

  _Unwind_Resume(a1);
}

void sub_22B62F534(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, uint64_t a7, void *a8)
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v14 = a3;
  v30 = a4;
  v15 = a5;
  v16 = a8;
  if (v15 || (a6 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [*(a1 + 32) localURL];
        *buf = 138412546;
        v32 = v26;
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Failed to transcode HQ asset %@ to LQ for watch relay with error %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v17 = [v14 firstObject];
    v18 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v17];
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [*(a1 + 32) guid];
        *buf = 138412802;
        v32 = v20;
        v33 = 2112;
        v34 = v17;
        v35 = 2048;
        v36 = [v18 length];
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Relaying LQ transcode of transfer GUID %@ at path %@ size %llu to watch", buf, 0x20u);
      }
    }

    v21 = *(a1 + 40);
    v22 = [*(a1 + 32) guid];
    [v21 setObject:v18 forKey:v22];

    v23 = *(a1 + 48);
    v24 = [*(a1 + 32) guid];
    [v23 removeObject:v24];

    if (![*(a1 + 48) count])
    {
      LOBYTE(v28) = *(a1 + 97);
      LOBYTE(v27) = 1;
      [*(a1 + 56) _relayMessageToPeers:*(a1 + 64) forChat:*(a1 + 72) serviceName:*(a1 + 80) requiredCapabilities:*(a1 + 88) reflectOnly:*(a1 + 96) excludesWatch:0 onlyWatch:v27 overridingAttachmentData:*(a1 + 40) skipServiceForSending:v28];
    }
  }
}

void sub_22B62F7DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B62F784);
  }

  _Unwind_Resume(a1);
}

void sub_22B62FD28(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B62FB34);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B630FE8(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v35 = a4;
  v34 = a5;
  value = a6;
  v37 = a7;
  v17 = a8;
  v18 = a9;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      if (a3)
      {
        v20 = @"YES";
      }

      *buf = 138412546;
      v39 = v20;
      v40 = 2112;
      v41 = v35;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "MMS dictionary uploaded complected with success: %@ and error %@", buf, 0x16u);
    }
  }

  if (a3)
  {
    if (value)
    {
      CFDictionarySetValue(*(a1 + 32), IMDRelayMessageAttachmentDictionaryOwnerIDKey, value);
    }

    if (v37)
    {
      CFDictionarySetValue(*(a1 + 32), IMDRelayMessageAttachmentDictionarySignatureKey, v37);
    }

    if (v17)
    {
      CFDictionarySetValue(*(a1 + 32), IMDRelayMessageAttachmentDictionaryURLStringKey, v17);
    }

    if (v18)
    {
      CFDictionarySetValue(*(a1 + 32), IMDRelayMessageAttachmentDictionaryEncryptionKey, v18);
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInteger:a10];
    if (v21)
    {
      CFDictionarySetValue(*(a1 + 32), IMDRelayMessageAttachmentDictionaryOutFileSizeKey, v21);
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      CFDictionarySetValue(*(a1 + 32), IMDRelayMessageItemDictionaryServiceKey, v22);
    }

    v23 = JWEncodeDictionary();
    if ([v23 length])
    {
      v24 = MEMORY[0x277CBEB38];
      v25 = [MEMORY[0x277CCABB0] numberWithInteger:141];
      v26 = [*(a1 + 48) objectForKey:IMDCTMessageDictionaryGUIDKey];
      v27 = IDSGetUUIDData();
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
      v29 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 96)];
      v30 = [v24 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], v25, *MEMORY[0x277D18588], v27, *MEMORY[0x277D18668], v23, *MEMORY[0x277D18598], v28, *MEMORY[0x277D18650], @"_SMSServiceRelayToWatchOnly", v29, 0}];

      if ([*(a1 + 56) count])
      {
        [v30 setObject:*(a1 + 56) forKey:@"requiredCapabilitiesForSMSRelay"];
      }

      if ([*(a1 + 64) count])
      {
        [v30 setObject:*(a1 + 64) forKey:@"excludedCapabilitiesForSMSRelay"];
      }

      v31 = *(a1 + 72);
      v32 = [*(a1 + 48) objectForKey:IMDCTMessageDictionaryGUIDKey];
      [v31 sendDataToPeers:v30 guid:v32 forcedCallerID:*(a1 + 80) shouldFilterRecepients:1 requestProxySend:0 dontSendTo:*(a1 + 88) sentToDevices:0];
    }
  }
}

uint64_t sub_22B633BE0()
{
  qword_281421010 = objc_alloc_init(IMDChatStore);

  return MEMORY[0x2821F96F8]();
}

void sub_22B634BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B634C1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B4DAEE8(a2, a2);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

void sub_22B634C78(uint64_t a1, void *a2)
{
  v9 = a2;
  [*(a1 + 32) _processIncomingChat:v9];
  v3 = [v9 serviceName];
  v4 = [v3 isEqualToString:*MEMORY[0x277D1A610]];

  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  [v5 addObject:v9];
}

void sub_22B635080(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B635034);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B6350C4(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  *(*(*(a1 + 32) + 8) + 24) = [v3 unreadCount];
}

void sub_22B6357E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B635960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B635A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = im_primary_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B635B44;
  block[3] = &unk_278702CC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  block[4] = *(a1 + 32);
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_22B635B44(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _incomingChatsWithChatRecords:*(a1 + 40) loadLastMessage:1];
  (*(v1 + 16))(v1, v2);
}

void sub_22B635E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B6361FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B636218(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Error copying chats from grouped handles: %@", &v11, 0xCu);
      }
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = MEMORY[0x277CBEBF8];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_22B63673C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_22B637520(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D71C0(a1, v3, v4);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished adding %@ to Spotlight", &v7, 0xCu);
    }
  }
}

uint64_t sub_22B63A76C()
{
  qword_281421210 = objc_alloc_init(IMDChorosController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B63B1B4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Received ack: %@, metadata: %@", &v13, 0x16u);
    }
  }

  v8 = [(__CFString *)v5 success];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v8)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "messageID")}];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Message sent notification: success %@ messageID %@", &v13, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    v12 = *(a1 + 48);
    if (v8)
    {
      [v12 _processMessageSent:? forSession:?];
    }

    else
    {
      [v12 _processMessageSendFailure:? forSession:?];
    }
  }
}

void sub_22B63B81C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B63B740);
  }

  _Unwind_Resume(a1);
}

void sub_22B63D948(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Received ack: %@, metadata: %@", buf, 0x16u);
    }
  }

  v8 = [(__CFString *)v5 success];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v8)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "messageID")}];
      *buf = 138412546;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Message sent notification: success %@ messageID %@", buf, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    v12 = *(a1 + 48);
    if (v8)
    {
      [v12 _processMessageSent:? forSession:?];
      v13 = *(a1 + 72);
      if (v13 == 8)
      {
        v18 = *(a1 + 48);
        v19 = +[IMDChorosController serviceTypeKey];
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{*(a1 + 72), v19}];
        v22[1] = *MEMORY[0x277CC42F0];
        v23[0] = v20;
        v23[1] = *(a1 + 64);
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
        [v18 locationUpdateDelivered:v21];
      }

      else if (v13 == 1)
      {
        v14 = *(a1 + 48);
        v15 = +[IMDChorosController serviceTypeKey];
        v24 = v15;
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
        v25 = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        [v14 locationUpdateDelivered:v17];
      }
    }

    else
    {
      [v12 _processMessageSendFailure:? forSession:?];
    }
  }
}

void sub_22B63E080(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Received ack: %@, metadata: %@", &v10, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(__CFString *)v4 success];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Message sent notification: success %@", &v10, 0xCu);
    }
  }
}

uint64_t sub_22B63FD14()
{
  result = MEMORY[0x231897B40](@"LSApplicationWorkspace", @"CoreServices");
  qword_27D8CFF88 = result;
  return result;
}

void sub_22B6411EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = +[IMDChorosController chatIdentifierForEmergency];
  v3 = [*(a1 + 40) conversationID];
  v4 = [*(a1 + 40) sequenceNum];
  v5 = [*(a1 + 40) text];
  [v2 _processReceivedTextMessageForService:1 chatIdentifier:v6 conversationID:v3 sequenceNum:v4 text:v5];
}

Class sub_22B641334(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!qword_27D8CFFA0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = sub_22B641460;
    v3[4] = &unk_278702AF8;
    v3[5] = v3;
    v4 = xmmword_278706C40;
    v5 = 0;
    qword_27D8CFFA0 = _sl_dlopen();
  }

  if (!qword_27D8CFFA0)
  {
    sub_22B7D7D70(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DMFEmergencyModeMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22B7D7CF4();
  }

  qword_27D8CFF98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22B641460(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27D8CFFA0 = result;
  return result;
}

void sub_22B641648(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting delivery receipt pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B641778;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B641778(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing delivery receipt %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B641A64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting chat session close pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B641B94;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B641B94(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing chat session close %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B641EB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting read receipt pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B641FE4;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B641FE4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (([v6 isFromStorage] & 1) != 0 || objc_msgSend(v6, "isLastFromStorage"))
    {
      v7 = +[IMDMessageFromStorageController iMessageStorageController];
      [v7 decrementPendingReadReceiptFromStorageCount];
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 GUID];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Finished processing read receipt %@", &v12, 0xCu);
      }
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, 1, 0);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_22B642300(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting mark unread request pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B642430;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B642430(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing mark unread request %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B64271C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting played receipt pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B64284C;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B64284C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing played receipt %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B642B38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting delivered quietly receipt pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B642C68;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B642C68(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing delivered quietly receipt %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B642F54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting notify recipient command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B643084;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B643084(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing notify recipient command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B643370(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting edit message command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6434A0;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B6434A0(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 editCommandGUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing edit message command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B64378C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting edit message command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6438BC;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B6438BC(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing recover junk command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B643BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting reposition sticker command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B643CD8;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B643CD8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished reposition sticker command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B643FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting scheduled message update command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6440F4;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B6440F4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished scheduled message update command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B6443E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting iml to im association command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B644510;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B644510(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished iml to im association command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B6447FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting accept chat command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B64492C;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B64492C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing accept chat command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B644C18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting transcript background command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B644D48;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B644D48(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing transcript background command %@", &v10, 0xCu);
      }
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 1, 0);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_22B645014(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting junk chat command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B645144;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B645144(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing junk chat command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B645430(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting priority message command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B645560;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B645560(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing priority message command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B64584C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting mark as reviewed command pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B64597C;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B64597C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing mark as reviewed command %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_22B645D38(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B645C2CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B645D6C(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) GUID];
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting message pipeline (%@)", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = qos_class_self();
      *buf = 67109120;
      LODWORD(v25) = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Starting message qos is (%u)", buf, 8u);
    }
  }

  v8 = *(a1 + 40);
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22B4CC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "receivePipeline", "", buf, 2u);
  }

  v11 = 0;
  if ([*(a1 + 32) isFromStorage])
  {
    IMTimeOfDay();
    v11 = v12;
  }

  v13 = [*(a1 + 48) runWithInput:*(a1 + 32)];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B64602C;
  v17[3] = &unk_278706CB0;
  v18 = *(a1 + 32);
  v22 = v11;
  v20 = *(a1 + 56);
  v21 = v3;
  v14 = *(a1 + 40);
  v15 = *(a1 + 64);
  v19 = v14;
  v23 = v15;
  v16 = v3;
  [v13 registerCompletionBlock:v17];
}

void sub_22B645FF8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B645E80);
  }

  _Unwind_Resume(a1);
}

void sub_22B64602C(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 GUID];
        v21 = 138412290;
        v22 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing message %@", &v21, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = qos_class_self();
        v21 = 67109120;
        LODWORD(v22) = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Finished message qos is (%u)", &v21, 8u);
      }
    }

    if ([*(a1 + 32) isFromStorage])
    {
      IMTimeOfDay();
      v12 = v11;
      v13 = *(a1 + 64);
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v6 GUID];
          v21 = 138412546;
          v22 = v15;
          v23 = 2048;
          v24 = v12 - v13;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "From-storage message %@ took %f seconds to process", &v21, 0x16u);
        }
      }
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      (*(v16 + 16))(v16, 1, 0);
    }
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))();
  }

  v18 = *(a1 + 40);
  v19 = v18;
  v20 = *(a1 + 72);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_22B4CC000, v19, OS_SIGNPOST_INTERVAL_END, v20, "receivePipeline", "", &v21, 2u);
  }
}

void sub_22B6464B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting SyndicationAction pipeline", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) runWithInput:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6465E0;
  v7[3] = &unk_278706C60;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 registerCompletionBlock:v7];
}

void sub_22B6465E0(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else
  {
    v6 = [v3 value];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 syndicationAction];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished processing SyndicationAction %@", &v11, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

IMDLocationSharingController *sub_22B64679C()
{
  result = objc_alloc_init(IMDLocationSharingController);
  qword_281421018 = result;
  return result;
}

void sub_22B646B54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22B646B78(uint64_t a1, uint64_t a2, void *a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B646C20;
  block[3] = &unk_278706D00;
  objc_copyWeak(v6, (a1 + 32));
  block[4] = a2;
  v6[1] = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v6);
}

uint64_t sub_22B646C20(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  Weak = objc_loadWeak((a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v10 = 138412546;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "FindMyLocateSession friendShipUpdateCallback. updateFriend: %@, updateType: %lu", &v10, 0x16u);
    }
  }

  v6 = [*(a1 + 32) originatedFromTheSameClient];
  v7 = [*(a1 + 32) handle];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 comparisonIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return [Weak _postFMLFriendshipChangeForHandleID:v8 handleType:objc_msgSend(*(a1 + 32) updateType:"handleType") isFromMessages:{*(a1 + 48), v6}];
}

void sub_22B646E70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7E48(a2, v3);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "FindMyLocateSession startUpdatingFriendsWithCompletion completed without an error", v5, 2u);
    }
  }
}

void *sub_22B6475B4(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  result = [+[IMDChatRegistry sharedInstance](IMDChatRegistry addItem:"addItem:toChat:" toChat:*(a1 + 32), *(a1 + 40)];
  if (v3)
  {
    if (*(a1 + 48) == 1)
    {
      v5 = -[IMDBroadcasterProviding broadcasterForChatListenersUsingBlackholeRegistry:](+[IMDBroadcastController sharedProvider](IMDBroadcastController, "sharedProvider"), "broadcasterForChatListenersUsingBlackholeRegistry:", [*(a1 + 40) isBlackholed]);
      v6 = [*(a1 + 40) accountID];
      v7 = [*(a1 + 40) chatIdentifier];
      v8 = [*(a1 + 40) style];
      v9 = *(a1 + 32);

      return [v5 account:v6 chat:v7 style:v8 messageUpdated:v9];
    }
  }

  else
  {
    v10 = +[IMDChatRegistry sharedInstance];
    v11[0] = [*(a1 + 32) guid];
    return -[IMDChatRegistry moveMessagesWithGUIDsToRecentlyDeleted:deleteDate:](v10, "moveMessagesWithGUIDsToRecentlyDeleted:deleteDate:", [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1], objc_msgSend(*(a1 + 32), "time"));
  }

  return result;
}

void sub_22B647DB8(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = IMLocationLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) identifier];
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, " ** Sent location sharing payload: %@  to ID: %@", buf, 0x16u);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [v6 initWithObjectsAndKeys:{@"Couldn't find compatible destination.", *MEMORY[0x277CCA450], 0}];
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.messages" code:3 userInfo:v7];
    [*(*(a1 + 48) + 8) mappingPacketSendFailed:*(a1 + 56) toHandle:*(a1 + 40) withError:v8];
    v9 = IMLocationLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) identifier];
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, " ** Could not send location sharing payload: %@  to ID: %@ - immediately failed.", buf, 0x16u);
    }
  }
}

void sub_22B64810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = a2;
    v8 = 2112;
    v9 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Mapping packet ingested by FMF: responseID %@ error %@", &v6, 0x16u);
  }
}

uint64_t sub_22B648C44()
{
  qword_281421020 = objc_alloc_init(IMDCKMessageSyncController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B649250(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _chatRegistry];
  v4 = [v3 messagesToUploadToCloudKitWithLimit:{objc_msgSend(*v2, "_numberOfMessagesToUpload")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1 + 32) _messageZoneID];
        v11 = [*(a1 + 32) _messageRecordSalt];
        v12 = [v8 copyCKRecordRepresentationWithZoneID:v10 salt:v11];

        if (!v12)
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v8 guid];
              *buf = 138412290;
              v30 = v20;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "**** Message [%@] could not be converted to CKRecord, marking it as clean and moving on.", buf, 0xCu);
            }
          }

          goto LABEL_20;
        }

        v13 = *(a1 + 32);
        v14 = [v12 firstObject];
        LODWORD(v13) = [v13 _isValidCKRecordToSync:v14];

        if (!v13)
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = [v12 objectAtIndexedSubscript:0];
              v23 = [v22 _stringForKey:@"guid"];
              *buf = 138412290;
              v30 = v23;
              _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "**** Message %@ is too big. Marking it as clean and moving on", buf, 0xCu);
            }
          }

LABEL_20:
          *(*(*(a1 + 48) + 8) + 24) = 1;
          v18 = [*(a1 + 32) _sharedIMDMessageStore];
          [v18 markMessageAsCleanWithROWID:{objc_msgSend(v8, "messageID")}];
          goto LABEL_21;
        }

        if (*(a1 + 40))
        {
          v15 = [v12 firstObject];
          v16 = v15 == 0;

          if (!v16)
          {
            v17 = *(a1 + 40);
            v18 = [v12 firstObject];
            CFArrayAppendValue(v17, v18);
LABEL_21:
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }
}

void sub_22B6497B8(uint64_t a1, char a2, void *a3)
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
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating message zone %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_22B649E4C(uint64_t a1)
{
  v2 = [*(a1 + 32) _chatRegistry];
  [v2 processMessageUsingCKRecord:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = [v3 recordsWritten] + 1;

  return [v3 setRecordsWritten:v4];
}

void sub_22B649EAC(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRecordsWriteFailed:{objc_msgSend(*(a1 + 32), "recordsWriteFailed") + 1}];
  v2 = [*(a1 + 32) _ckUtilitiesInstance];
  v3 = [v2 extractServerRecordFromCKServerErrorRecordChanged:*(a1 + 40)];

  v4 = [*(a1 + 48) recordID];
  v5 = [v4 recordName];
  v6 = [v3 recordID];
  v7 = [v6 recordName];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = [*(a1 + 32) _chatRegistry];
    [v9 processMessageUsingCKRecord:v3];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v3 recordID];
        v12 = [v11 recordName];
        v13 = [*(a1 + 48) recordID];
        v14 = [v13 recordName];
        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Conflicting serverRecord was different than the one being updated (server: %@, local: %@)", &v15, 0x16u);
      }
    }

    [MEMORY[0x277D1AA28] resetSyncStateForMessage:*(a1 + 48) toState:2];
  }
}

uint64_t sub_22B64A0B8(uint64_t a1)
{
  [*(a1 + 32) setRecordsWriteFailed:{objc_msgSend(*(a1 + 32), "recordsWriteFailed") + 1}];
  v2 = MEMORY[0x277D1AA28];
  v3 = *(a1 + 40);

  return [v2 resetSyncStateForMessage:v3 toState:0];
}

uint64_t sub_22B64A110(uint64_t a1)
{
  [*(a1 + 32) setRecordsWriteFailed:{objc_msgSend(*(a1 + 32), "recordsWriteFailed") + 1}];
  v2 = MEMORY[0x277D1AA28];
  v3 = *(a1 + 40);

  return [v2 resetSyncStateForMessage:v3 toState:2];
}

uint64_t sub_22B64A168(uint64_t a1)
{
  [*(a1 + 32) setRecordsWriteFailed:{objc_msgSend(*(a1 + 32), "recordsWriteFailed") + 1}];
  v2 = MEMORY[0x277D1AA28];
  v3 = *(a1 + 40);

  return [v2 resetSyncStateForMessage:v3 toState:1];
}

uint64_t sub_22B64A1C0(uint64_t a1)
{
  [*(a1 + 32) setRecordsWriteFailed:{objc_msgSend(*(a1 + 32), "recordsWriteFailed") + 1}];
  v2 = MEMORY[0x277D1AA28];
  v3 = *(a1 + 40);

  return [v2 resetSyncStateForMessage:v3 toState:2];
}

void sub_22B64ADC4(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  [*(a1 + 32) setRecordsRead:{objc_msgSend(*(a1 + 32), "recordsRead") + 1}];
  v3 = [*(v2 + 8) _stringForKey:@"chatID"];
  v4 = *v2;
  if (v3)
  {
    v5 = [v4[13] objectForKey:v3];
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = *(v7 + 104);
    if (v5)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
      [v8 setObject:v9 forKey:v3];
    }

    else
    {
      [*(v7 + 104) setObject:&unk_283F4EC00 forKey:v3];
    }

    v11 = [*(*(a1 + 32) + 104) objectForKey:v3];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = v3;
        v16 = 1024;
        v17 = [v11 intValue];
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Found parentChatID: %@, updatedLastMessageCount: %d", &v14, 0x12u);
      }
    }

    v13 = [*(a1 + 32) _chatRegistry];
    [v13 processMessageUsingCKRecord:*(a1 + 40) updatedLastMessageCount:{objc_msgSend(v11, "intValue")}];
  }

  else
  {
    v10 = [v4 _chatRegistry];
    [v10 processMessageUsingCKRecord:*(a1 + 40)];
  }
}

void sub_22B64B16C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B64B12CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B64B808(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B64B6D0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B64BD18(uint64_t a1)
{
  v2 = [*(a1 + 32) ckUtilities];
  [v2 reportMOCDebuggingErrorWithString:@"ChangeTokenExpired" internalOnly:1 initialSync:0 reasonString:@"ChangeTokenExpired"];

  v3 = *(a1 + 32);

  return [v3 setLatestSyncToken:0];
}

void sub_22B64BEC0(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 88))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138412802;
      v31 = v5;
      v32 = 2112;
      v33 = v4;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "processArchivedRecordsFetchCompletionZoneID serverChangeToken %@ moreComing %@ recordZoneError %@", buf, 0x20u);
    }
  }

  v7 = *(a1 + 48);
  if (*(a1 + 40))
  {
    v8 = [v7 errorAnalyzer];
    v9 = [v8 CKPartialError:*(a1 + 40) hasErrorCode:&unk_283F4EC18];

    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Record Zone Error says that the change token has expired", buf, 2u);
        }
      }

      [*(a1 + 48) _resetArvchivedRecordSyncToken];
      v12 = [*(a1 + 48) ckQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_22B64C38C;
      v22[3] = &unk_278706DC0;
      v22[4] = *(a1 + 48);
      v25 = *(a1 + 72);
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      dispatch_async(v12, v22);
    }

    else
    {
      if (v10)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 40);
          *buf = 138412290;
          v31 = v18;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "//---** Error fetching archived messages: %@", buf, 0xCu);
        }
      }

      v19 = *(a1 + 64);
      if (v19)
      {
        (*(v19 + 16))(v19, 0, 0, *(a1 + 40));
      }
    }
  }

  else
  {
    [v7 setArchivedRecordSyncToken:*(a1 + 32)];
    v13 = *(a1 + 88);
    v14 = IMOSLoggingEnabled();
    if (v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "There are more changes to fetch from archived zone. Kicking off another batch of fetching", buf, 2u);
        }
      }

      v16 = [*(a1 + 48) ckQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B64C370;
      block[3] = &unk_278706DC0;
      block[4] = *(a1 + 48);
      v29 = *(a1 + 72);
      v27 = *(a1 + 56);
      v28 = *(a1 + 64);
      dispatch_async(v16, block);
    }

    else
    {
      if (v14)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "No more archived records to fetch. Resetting defaults to fetch archived records", buf, 2u);
        }
      }

      IMSetDomainBoolForKey();
      v21 = *(a1 + 64);
      if (v21)
      {
        (*(v21 + 16))(v21, 1, 1, 0);
      }
    }
  }
}

void sub_22B64C940(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 recordID];
      v6 = [v3 _stringForKey:@"guid"];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Fetch archived record %@ guid %@", &v7, 0x16u);
    }
  }

  [*(a1 + 32) _processRecordChange:v3];
}

void sub_22B64CA80(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "** THIS SHOULD NOT GET CALLED WHILE FETCHING ARCHIVED RECORDS **", v7, 2u);
    }
  }
}

void sub_22B64CE54(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 96))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (*(a1 + 97))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
      *buf = 138413570;
      v50 = v6;
      v51 = 2112;
      v52 = v4;
      v53 = 2112;
      v54 = v5;
      v55 = 2112;
      v56 = v7;
      v57 = 2112;
      v58 = v8;
      v59 = 2112;
      v60 = v9;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "recordZoneFetchCompletionBlock serverChangeToken %@ moreComing %@ recordZoneError %@ archivedRecordsHintIsPresent %@, currentBatchCount %@ maxNumberOfBatches:%@", buf, 0x3Eu);
    }
  }

  if (*(a1 + 97) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Setting shouldFetchArchivedRecords to true", buf, 2u);
      }
    }

    IMSetDomainBoolForKey();
  }

  v11 = [*(a1 + 48) errorAnalyzer];
  v12 = [v11 errorIndicatesZoneNotCreated:*(a1 + 40)];

  v13 = [*(a1 + 48) errorAnalyzer];
  v14 = [v13 errorIndicatesUserDeletedZone:*(a1 + 40)];

  v15 = *(a1 + 48);
  if (*(a1 + 40))
  {
    v16 = [v15 errorAnalyzer];
    v17 = [v16 CKPartialError:*(a1 + 40) hasErrorCode:&unk_283F4EC18];

    if (v17)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Record Zone Error says that the change token has expired", buf, 2u);
        }
      }

      [*(a1 + 48) clearLocalSyncState:17];
      v19 = *(a1 + 64);
      if (v19)
      {
LABEL_24:
        (*(v19 + 16))(v19, 0, 0, 0, *(a1 + 40));
      }
    }

    else
    {
      v25 = IMOSLoggingEnabled();
      if ((v12 | v14))
      {
        if (v25)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = @"zone not created";
            v28 = *(a1 + 40);
            if (v14)
            {
              v27 = @"user deleted zone";
            }

            *buf = 138412546;
            v50 = v27;
            v51 = 2112;
            v52 = v28;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "We got a %@ error while fetching messages. %@", buf, 0x16u);
          }
        }

        if (v14)
        {
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Resetting local message sync state & last sync date after received user deleted zone error", buf, 2u);
            }
          }

          [*(a1 + 48) clearLocalSyncState:3];
          v30 = [*(a1 + 48) ckUtilities];
          [v30 resetLastSyncDate];
        }

        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Messages zone does not exist. Attempting to create one", buf, 2u);
          }
        }

        if ([*(a1 + 48) _messageZoneCreated])
        {
          [*(a1 + 48) _fetchMessageZoneChangesSyncType:*(a1 + 88) currentBatchCount:*(a1 + 72) + 1 maxNumberOfBatches:*(a1 + 80) activity:*(a1 + 56) completionBlock:*(a1 + 64)];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "//---** Error creating  messages zone", buf, 2u);
            }
          }

          v38 = *(a1 + 64);
          if (v38)
          {
            v39 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:1 userInfo:0];
            (*(v38 + 16))(v38, 0, 0, 0, v39);
          }
        }
      }

      else
      {
        if (v25)
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = *(a1 + 40);
            *buf = 138412290;
            v50 = v36;
            _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "//---** Error fetching messages: %@", buf, 0xCu);
          }
        }

        v19 = *(a1 + 64);
        if (v19)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    [v15 setLatestSyncToken:*(a1 + 32)];
    v20 = *(a1 + 96);
    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "There are more changes to fetch. Kicking off another batch of fetching", buf, 2u);
        }
      }

      [*(a1 + 48) syncBatchCompleted:*(a1 + 72)];
      v23 = [*(a1 + 48) ckQueue];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_22B64D770;
      v44[3] = &unk_278706E58;
      v24 = *(a1 + 88);
      v44[4] = *(a1 + 48);
      v47 = v24;
      v48 = *(a1 + 72);
      v45 = *(a1 + 56);
      v46 = *(a1 + 64);
      dispatch_async(v23, v44);
    }

    else
    {
      if (v21)
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Done fetching changes from message zone.", buf, 2u);
        }
      }

      v33 = *(a1 + 80);
      if (v33 >= 1 && *(a1 + 72) <= v33)
      {
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Done fetching changes from message zone during an initial sync. Let's not write up", buf, 2u);
          }
        }

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v41 = IMGetDomainBoolForKeyWithDefaultValue();
      if (v41 && IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Done fetching live records. Will now fetch archived records", buf, 2u);
        }
      }

      v43 = *(a1 + 64);
      if (v43)
      {
        (*(v43 + 16))(v43, 1, v41, v34, 0);
      }
    }
  }
}

void sub_22B64E2B0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B64E0CCLL);
  }

  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B64E3B0(uint64_t a1, void *a2, void *a3, void *a4)
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
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "***recordZoneChangeTokensUpdatedBlock should not get called", v10, 2u);
    }
  }
}

void sub_22B64E474(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "*** Deleted recordID %@ type %@", &v7, 0x16u);
    }
  }
}

void sub_22B64E56C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);
  v12 = *(*(*(a1 + 56) + 8) + 40);
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v17 = a2;
  LOBYTE(v16) = [v11 _shouldFetchArchivedRecords:v12];
  [*(a1 + 32) _processRecordZoneFetchCompletionZoneID:v17 serverChangeToken:v15 clientChangeTokenData:v14 moreComing:a5 NSError:v13 syncType:*(a1 + 64) currentBatchCount:*(a1 + 72) maxNumberOfBatches:*(a1 + 80) shouldFetchArchivedRecords:v16 activity:*(a1 + 40) completionBlock:*(a1 + 48)];
}

void sub_22B64E730(uint64_t a1, int a2, void *a3)
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
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished a sync of deletes because we had an incompatible message earlier (%@): %@", &v7, 0x16u);
    }
  }
}

void sub_22B64EC4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22B64ECE0;
  v3[3] = &unk_278702EA0;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _writeDirtyMessagesToCloudKitWithActivity:v2 completion:v3];
}

void sub_22B64ECE0(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Completed message write %@ %@", buf, 0x16u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B64EE68;
  v10[3] = &unk_278706EF0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t sub_22B64EE68(uint64_t a1)
{
  [*(a1 + 32) _noteSyncEnded];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_22B64F300(uint64_t a1)
{
  if ([*(a1 + 32) _shouldMarkAllMessagesAsNeedingSync])
  {
    [*(a1 + 32) clearLocalSyncState:2];
    [*(a1 + 32) _hasMarkedAllMessagesAsNeedingSync];
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = -1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "*** We were called to do an initial sync. Let's only fetch the first set of messages ***", buf, 2u);
      }
    }

    [*(a1 + 32) setLatestSyncToken:0];
    v3 = [*(a1 + 32) _numberOfBatchesOfMessagesToFetchInInitialSync];
    v2 = *(a1 + 56);
  }

  v5 = IMOSLoggingEnabled();
  if (v2 > 1)
  {
    if (v5)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Unsupported sync type", buf, 2u);
      }
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, 0);
    }
  }

  else
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Marking any unsuccessfully synced messages as needing sync", buf, 2u);
      }
    }

    [*(a1 + 32) _markAllUnsuccessFullSyncMessagesAsNeedingSync];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished Marking any unsuccessfully synced messages as needing sync", buf, 2u);
      }
    }

    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B64F674;
    v12[3] = &unk_278706F68;
    v12[4] = v9;
    v17 = v3;
    v13 = v8;
    v14 = *(a1 + 48);
    v15 = buf;
    v18 = *(a1 + 56);
    v16 = v19;
    [v9 _fetchMessageZoneChangesSyncType:1 currentBatchCount:0 maxNumberOfBatches:v3 activity:v13 completionBlock:v12];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_22B64F674(uint64_t a1, int a2, uint64_t a3, char a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (v9 || !a2)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        *buf = 138412546;
        v36 = v9;
        v37 = 2112;
        v38 = v20;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "******** Failed fetching live messages with CKError %@ completionBlockCalledWhenFetchFailed %@", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B64FD9C;
    block[3] = &unk_278706F18;
    block[4] = *(a1 + 32);
    v17 = v26;
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    v26[0] = v21;
    v26[1] = v22;
    v27 = a2;
    v18 = &v25;
    v25 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = *(a1 + 72);
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B64F918;
    v28[3] = &unk_278706F40;
    v32 = a3;
    v33 = a4;
    v28[4] = v12;
    v13 = *(a1 + 48);
    v34 = a2;
    v14 = *(a1 + 80);
    v29 = 0;
    v31 = v14;
    v23 = *(a1 + 56);
    *&v15 = *(a1 + 40);
    *(&v15 + 1) = v13;
    *&v16 = v23;
    *(&v16 + 1) = *(a1 + 64);
    v30[1] = v16;
    v30[0] = v15;
    [v12 _fetchArchivedRecordsIfNeeded:a3 currentBatchCount:0 maxNumberOfBatches:v10 activity:v11 withCompletionBlock:v28];

    v17 = v30 + 1;
    v18 = &v29;
  }
}

void sub_22B64F918(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6 || !a3)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        *buf = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "******** Failed fetching archived messages with CKError %@ completionBlockCalledWhenFetchFailed %@", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B64FD28;
    block[3] = &unk_278706F18;
    block[4] = *(a1 + 32);
    v12 = *(a1 + 56);
    v13 = *(a1 + 72);
    v17 = v12;
    v18 = v13;
    v19 = a3;
    v16 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (*(a1 + 88) == 1 && IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Done fetching archived records.", buf, 2u);
      }
    }

    if (*(a1 + 89))
    {
      v8 = *(*(a1 + 64) + 8);
      if (*(v8 + 24))
      {
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Not calling write messages on second callback from fetch archived records", buf, 2u);
          }
        }
      }

      else
      {
        *(v8 + 24) = 1;
        [*(a1 + 32) _kickOffWriteIfNeededForSyncType:*(a1 + 80) activity:*(a1 + 48) completion:*(a1 + 56)];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " ****** This was an initial fetch. Not writing messages *****", buf, 2u);
        }
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_22B64FCCC;
      v20[3] = &unk_278706EF0;
      v20[4] = *(a1 + 32);
      v22 = *(a1 + 56);
      v23 = *(a1 + 90);
      v21 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v20);
    }
  }
}

uint64_t sub_22B64FCCC(uint64_t a1)
{
  [*(a1 + 32) _noteSyncEnded];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void *sub_22B64FD28(uint64_t a1)
{
  result = [*(a1 + 32) _noteSyncEnded];
  if (*(a1 + 48))
  {
    v3 = *(*(a1 + 56) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
      v4 = *(*(a1 + 48) + 16);

      return v4();
    }
  }

  return result;
}

void *sub_22B64FD9C(uint64_t a1)
{
  result = [*(a1 + 32) _noteSyncEnded];
  if (*(a1 + 48))
  {
    v3 = *(*(a1 + 56) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
      v4 = *(*(a1 + 48) + 16);

      return v4();
    }
  }

  return result;
}

uint64_t sub_22B64FFA0(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZoneManager];
  [v2 deleteMessageZone];

  v3 = *(a1 + 32);

  return [v3 clearLocalSyncState:3];
}

void sub_22B65031C(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (v2)
        {
          v7 = *(*(&v25 + 1) + 8 * i);
          v8 = [v7 recordName];
          v9 = v8 == 0;

          if (!v9)
          {
            v10 = [v7 recordName];
            CFArrayAppendValue(v2, v10);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v4);
  }

  if (*(a1 + 40))
  {
    v11 = [*(a1 + 48) errorAnalyzer];
    v12 = [v11 extractRecordIDsDeletedFromCKPartialError:*(a1 + 40)];

    if ([v12 count])
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Adding additional deleted record IDs from error", buf, 2u);
        }
      }

      [(__CFArray *)v2 addObjectsFromArray:v12];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v2;
  v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v30 = v18;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Deleted recordIDs %@", buf, 0xCu);
          }
        }
      }

      v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v15);
  }

  v20 = [*(a1 + 48) _sharedIMDMessageStore];
  [v20 deleteMessagesFromTombStoneTableWithRecordIDs:v14];
}

void sub_22B650DCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B650E6C;
  v5[3] = &unk_278704180;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _deleteMessagesWithRecordIDs:v3 completion:v5];
}

void sub_22B650E6C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
        v14 = v3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "********* Error while deleting messages %@", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B65109C;
    block[3] = &unk_2787028B0;
    v12 = *(a1 + 40);
    v11 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Kicking off another batch delete to cloudKit", buf, 2u);
      }
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B6510C0;
    v8[3] = &unk_278703808;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

uint64_t sub_22B65109C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t sub_22B6512B0()
{
  qword_281421028 = objc_alloc_init(IMDCKRecoverableMessageSyncController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6518F4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRecordsRead:{objc_msgSend(*(a1 + 32), "recordsRead") + 1}];
  v2 = [*(a1 + 40) _dateForKey:@"deleteDate"];
  v3 = [*(a1 + 40) _stringForKey:@"guid"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v13 = v2;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | Failed reading recoverable message record. deleteDate: %@ and messageGUID:%@ cannot be nil", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = [*(a1 + 40) _dataForKey:@"partBody"];
    v8 = v7;
    if (v7 && (JWDecodeCodableObjectWithStandardAllowlist(), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [*(a1 + 32) _onRecoverableMessagePartRecordReadWithDeleteDate:v2 messageGUID:v4 partBody:v9];
    }

    else
    {
      v9 = +[IMDChatRegistry sharedInstance];
      v11 = v4;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
      [v9 moveMessagesWithGUIDsToRecentlyDeleted:v10 deleteDate:v2];
    }
  }
}

void sub_22B65208C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B651FE0);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B652168(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = a2;
  if ([v13 integerValue] == a1[7])
  {
    *(*(a1[4] + 8) + 24) = 1;
    v9 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:a1[7]];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
    [*(*(a1[6] + 8) + 40) setObject:v12 forKeyedSubscript:v13];

    *a5 = 1;
  }
}

void sub_22B652A74(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Attempting to create recoverable message zone", buf, 2u);
    }
  }

  if ([*(a1 + 32) _zoneCreated])
  {
    v4 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "** Failed to create recoverable message zone **", v8, 2u);
      }
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.recoverableMessageSync" code:1 userInfo:0];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

uint64_t sub_22B652CFC(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting the sync token to nil", v5, 2u);
    }
  }

  [*(a1 + 32) setLatestSyncToken:0];
  return [*(a1 + 32) deleteChatBotRecoverableMessageSyncToken];
}

void sub_22B652F64(uint64_t a1, char a2, void *a3)
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
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating recoverable message zone %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B653350(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = a4;
  [*(a1 + 32) _onWriteComplete:*(a1 + 64) error:v6 shouldWriteMore:objc_msgSend(v5 activity:"count") == 200 completion:{*(a1 + 40), *(a1 + 48)}];
}

void sub_22B653BCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B653C6C;
  v5[3] = &unk_278704180;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _deleteRecoverableMessagesWithRecordIDs:v3 completion:v5];
}

void sub_22B653C6C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
        v14 = v3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | ********* Error while deleting recoverable messages %@", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B653E9C;
    block[3] = &unk_2787028B0;
    v12 = *(a1 + 40);
    v11 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | kicking off another batch delete to cloudKit", buf, 2u);
      }
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B653EC0;
    v8[3] = &unk_278703808;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

uint64_t sub_22B653E9C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void sub_22B654B64(uint64_t a1)
{
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 recoverableMessagesMetadataPendingCloudKitSaveWithLimit:200];

  if (v3 && [v3 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22B654CDC;
    v10[3] = &unk_278707100;
    v9 = *(a1 + 32);
    v4 = *(&v9 + 1);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v11 = v9;
    v12 = v7;
    [v3 enumerateObjectsUsingBlock:v10];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Recently Deleted | No recoverable messages data to sync", buf, 2u);
    }
  }
}

void sub_22B654CDC(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) createCKRecordforRecoverableMessageMetadata:v3 zoneID:*(a1 + 40) recordNameToPartIndexAndRowID:*(a1 + 48)];
  if (v4)
  {
    [*(a1 + 56) addObject:v4];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "IMDCKRecoverableMessageSyncController | Recently Deleted: marking clean: Using partIndex fallback: could not convert message to CKRecord with metadata: %@", &v11, 0xCu);
      }
    }

    v6 = [v3 objectForKey:@"messageRowID"];
    v7 = [v6 longLongValue];
    v8 = [v3 objectForKey:@"partIndex"];
    v9 = [v8 longLongValue];
    v10 = +[IMDChatRegistry sharedInstance];
    [v10 updateRecoverableMessageSyncState:1 forMessageRowID:v7 onPartIndex:v9];
  }
}

void sub_22B655078(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (v2)
        {
          v7 = *(*(&v25 + 1) + 8 * i);
          v8 = [v7 recordName];
          v9 = v8 == 0;

          if (!v9)
          {
            v10 = [v7 recordName];
            CFArrayAppendValue(v2, v10);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v4);
  }

  if (*(a1 + 40))
  {
    v11 = [*(a1 + 48) errorAnalyzer];
    v12 = [v11 extractRecordIDsDeletedFromCKPartialError:*(a1 + 40)];

    if ([v12 count])
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Adding additional deleted recoverable record IDs from error", buf, 2u);
        }
      }

      [(__CFArray *)v2 addObjectsFromArray:v12];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v2;
  v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v30 = v18;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Deleted recoverable recordIDs %@", buf, 0xCu);
          }
        }
      }

      v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v15);
  }

  v20 = +[IMDChatRegistry sharedInstance];
  [v20 clearRecoverableMessageTombStones];
}

uint64_t sub_22B655998(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZoneManager];
  [v2 deleteRecoverableMessageZone];

  v3 = *(a1 + 32);

  return [v3 clearLocalSyncState:3];
}

uint64_t sub_22B655BBC()
{
  qword_281421030 = objc_alloc_init(IMDRelayTranscodeController);

  return MEMORY[0x2821F96F8]();
}

id IMDaemonCoreBundle(uint64_t a1)
{
  if (qword_27D8CFFA8 != -1)
  {
    sub_22B7D7EFC();
  }

  v2 = qword_27D8CFFB0;

  return v2;
}

uint64_t sub_22B656034()
{
  qword_27D8CFFB0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id sub_22B656090(uint64_t a1)
{
  if (qword_281421490 != -1)
  {
    sub_22B7D7F10();
  }

  v2 = qword_281421498;

  return v2;
}

uint64_t sub_22B6560D4()
{
  qword_281421498 = objc_alloc_init(MEMORY[0x277D192C0]);

  return MEMORY[0x2821F96F8]();
}

void sub_22B656110(void *a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"action";
  v4[1] = @"time";
  v5[0] = @"incomingMessageProcessedByDaemon";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v5[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  [a1 postCoreAutomationNotificationWithDictionary:v3 withVerboseLogging:1];
}

uint64_t sub_22B656BB0(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v8;
    v4 = [*(a1 + 32) toIdentifier];
    v5 = [v4 _stripFZIDPrefix];
    v6 = [v3 isEqualToString:v5];

    if (v6)
    {
      *(*(*(a1 + 40) + 8) + 24) |= 0x10000000uLL;
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B658DB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 messagePartIndex];

  return [v2 removeTranslationsForMessagePart:v3];
}

void sub_22B658DF8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _storeEditedMessage:*(a1 + 40) editedPartIndex:*(a1 + 96) editType:*(a1 + 104) previousMessage:*(a1 + 48) updateChats:*(a1 + 56)];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 64);
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Successfully edited message and translation with GUID=%@", buf, 0xCu);
    }
  }

  [*(a1 + 72) setChat:*(a1 + 80)];
  v5 = *(a1 + 72);
  v6 = [v2 copy];
  [v5 setMessageItems:v6];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B658FA0;
  v7[3] = &unk_278702FA0;
  v8 = *(a1 + 88);
  v9 = *(a1 + 72);
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t sub_22B65A588(uint64_t a1)
{
  qword_281421038 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_22B65ADAC(uint64_t a1, unint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [*(a1 + 32) _savePreviousDeviceState:*(a1 + 40)];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromIMDCKBackupControllerResult(a2);
      if (v6)
      {
        v9 = MEMORY[0x277CCACA8];
        v3 = [v6 localizedDescription];
        v10 = [v9 stringWithFormat:@"Error: %@", v3];
      }

      else
      {
        v10 = &stru_283F23018;
      }

      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Finished checking iCloud backup state with result: %@ %@", buf, 0x16u);
      if (v6)
      {
      }
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v6);
  }
}

__CFString *NSStringFromIMDCKBackupControllerResult(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_278707220[a1];
  }
}

uint64_t sub_22B65AF60(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    goto LABEL_2;
  }

  v5 = 0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        if ([*(a1 + 32) iCloudBackupsDisabled])
        {
          [*(a1 + 32) setICloudBackupsDisabled:0];
          v5 = 2;
        }

        else
        {
          v5 = 7;
        }
      }

      else if (a2 == 4)
      {
        if ([*(a1 + 32) iCloudBackupsDisabled])
        {
          v5 = 6;
        }

        else
        {
          v5 = [*(a1 + 32) _attemptToDisableiCloudBackupsWithCurrentDeviceState:*(a1 + 40)];
        }
      }

      goto LABEL_3;
    }

LABEL_17:
    v5 = 4;
    goto LABEL_3;
  }

  if (!a2)
  {
LABEL_2:
    v5 = 8;
    goto LABEL_3;
  }

  if (a2 == 1)
  {
    [*(a1 + 32) writeUserDefault:0 forKey:@"IMDCKBackupControllerWrittenQuotaRecordKeyV2"];
    goto LABEL_17;
  }

LABEL_3:
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  return MEMORY[0x2821F9730]();
}

void sub_22B65C054(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B65C01CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B65C324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v9 description];
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Exception creating weak ref for MBManager: %@", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B65C2DCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B65C40C()
{
  v4 = *MEMORY[0x277D85DE8];
  qword_27D8CFFB8 = MEMORY[0x231897B40](@"MBManager", @"MobileBackup");
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (qword_27D8CFFB8)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Loaded MBManagerClass: %@", &v2, 0xCu);
    }
  }
}

void sub_22B65C5D4()
{
  v4 = *MEMORY[0x277D85DE8];
  off_27D8CFFC8 = MEMORY[0x231897B50]("BYSetupAssistantNeedsToRun", @"SetupAssistant");
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (off_27D8CFFC8)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Linked BYSetupAssistantNeedsToRun ok: %@", &v2, 0xCu);
    }
  }
}

id _IMCreatePredicateWithDeviceUDIDAndDeviceUUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceId = %@ AND deviceUDID = %@ AND domain = %@", v3, v4, @"MediaDomain"];
    v6 = LABEL_8:;
    goto LABEL_9;
  }

  if (v4)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceUDID = %@ AND domain = %@", v4, @"MediaDomain", v9];
    goto LABEL_8;
  }

  if (v3)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceId = %@ AND domain = %@", v3, @"MediaDomain", v9];
    goto LABEL_8;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to create predicate because both deviceUDID and deviceUUID are nil", buf, 2u);
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

void sub_22B65D038(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
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
        v9 = [*(a1 + 32) predicateFormat];
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to update cloudkit with query '%@', with error: %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    if (v7)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) predicateFormat];
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Successfully updated cloudkit with query: '%@'", &v13, 0xCu);
      }
    }

    [*(a1 + 40) writeUserDefault:MEMORY[0x277CBEC38] forKey:@"IMDCKBackupControllerWrittenQuotaRecordKeyV2"];
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v6 == 0, v6);
  }
}

void sub_22B65D1E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B65D174);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_22B65D58C(unsigned int a1)
{
  if (a1 > 6)
  {
    return &stru_283F23018;
  }

  else
  {
    return off_278707280[a1];
  }
}

void sub_22B65E73C()
{
  v2 = [*MEMORY[0x277D19CD8] stringByResolvingAndStandardizingPath];
  IMSharedHelperEnsureDirectoryExistsAtPath();
  v0 = [v2 stringByAppendingPathComponent:@"rateLimiter.plist"];
  v1 = qword_281421250;
  qword_281421250 = v0;
}

void sub_22B65EADC(uint64_t a1)
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = +[IMDCollaborationNoticeRateLimiter peristencePath];
  v4 = [v2 fileURLWithPath:v3];

  v5 = [*(a1 + 32) noticeEventHistory];
  v10 = 0;
  v6 = [v5 writeToURL:v4 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D8560(v7, v9);
    }
  }
}

id sub_22B65EC4C(void *a1)
{
  v2 = [a1 permanentHighQualityLocalPath];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 _fileManager];
    v5 = [a1 permanentHighQualityLocalPath];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = [a1 permanentHighQualityLocalPath];
LABEL_7:
      v13 = v8;
      v9 = [v7 fileURLWithPath:v8];

      goto LABEL_9;
    }
  }

  v9 = [a1 localPath];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [a1 _fileManager];
  v11 = [a1 localPath];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [a1 localPath];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t sub_22B65ED84(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 cloudKitServerChangeTokenBlob];
  v3 = [v2 length];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCAAC8]);
    v5 = [a1 cloudKitServerChangeTokenBlob];
    v10 = 0;
    v6 = [v4 initForReadingFromData:v5 error:&v10];
    v7 = v10;

    v3 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v6];
    if (v7 && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to unarchive ckrecord. Error: %@", buf, 0xCu);
      }
    }
  }

  return v3;
}

id sub_22B65EEE4(void *a1)
{
  v1 = [a1 _copyCKRecordFromExistingCKMetadata];
  v2 = [v1 recordID];
  v3 = [v2 copy];

  return v3;
}

id sub_22B65EF40(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3 && ([MEMORY[0x277CCAA00] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "path"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "fileExistsAtPath:", v5), v5, v4, v6))
  {
    v7 = [v3 path];
    v8 = IMSharedHelperMD5HashOfFileAtPath();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_22B65F0D8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B65F080);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

id sub_22B65F114(void *a1)
{
  v2 = [a1 _assetURLToInsertToRecord];
  v3 = [a1 md5HashForURL:v2];

  return v3;
}

void sub_22B65F16C(void *a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [a1 cloudKitServerChangeTokenBlob];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [a1 _copyCKRecordFromExistingCKMetadata];
    v7 = [v6 etag];
    [v8 setEtag:v7];

    [v8 setKnownToServer:1];
  }
}

id sub_22B65F210(void *a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 cloudKitRecordID];
  if (v8)
  {

    goto LABEL_4;
  }

  if ([v7 length])
  {
LABEL_4:
    v9 = [a1 cloudKitRecordID];

    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [a1 cloudKitRecordID];
          v20 = 138412290;
          v21 = v12;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Record ID from existing cloudKitRecordID: %@", &v20, 0xCu);
        }
      }

      v13 = objc_alloc(MEMORY[0x277CBC5D0]);
      v14 = [a1 cloudKitRecordID];
      v15 = [v13 initWithRecordName:v14 zoneID:v6];
    }

    else
    {
      if (v10)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No cloudKitRecordID, derived record ID", &v20, 2u);
        }
      }

      v17 = [a1 _ckUniqueID];
      v15 = [CKRecordUtilities recordIDUsingSalt:v7 zoneID:v6 guid:v17];
    }

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Cannot generate record ID because salt is nil.", &v20, 2u);
    }
  }

  v15 = 0;
LABEL_20:

  return v15;
}

uint64_t sub_22B65F4B8(void *a1)
{
  if ([a1 transferState] == 9)
  {
    return 5;
  }

  return [a1 transferState];
}

id sub_22B65F508(void *a1, uint64_t a2, void *a3, void *a4)
{
  v99 = *MEMORY[0x277D85DE8];
  v94 = a3;
  v6 = a4;
  v7 = [a1 _copyCKRecordFromExistingCKMetadata];
  if (v7)
  {
    v8 = v7;
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v8 recordID];
        v11 = [v10 recordName];
        v12 = [a1 guid];
        *buf = 138412546;
        v96 = v11;
        v97 = 2112;
        v98 = v12;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Initialed CKRecord %@ for transfer %@ using record data from DB", buf, 0x16u);
      }
    }

    goto LABEL_12;
  }

  v13 = [v6 length];
  v14 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Initializing CKRecord using derived record ID", buf, 2u);
      }
    }

    v16 = [a1 _ckUniqueID];
    v17 = [CKRecordUtilities recordIDUsingSalt:v6 zoneID:v94 guid:v16];

    v18 = objc_alloc(MEMORY[0x277CBC5A0]);
    v19 = [MEMORY[0x277D1A9C0] _recordType];
    v8 = [v18 initWithRecordType:v19 recordID:v17];

    [a1 _setRecordPropertiesBasedOnExistingRecord:v8];
LABEL_12:
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v20 setObject:&unk_283F4EC48 forKey:@"vers"];
    v21 = [a1 guid];
    [v20 setObject:v21 forKey:@"aguid"];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "hideAttachment")}];
    [v20 setObject:v22 forKey:@"ha"];

    v23 = [a1 userInfo];

    if (v23)
    {
      v24 = [a1 userInfo];
      [v20 setObject:v24 forKey:@"ui"];
    }

    v25 = [a1 stickerUserInfo];

    if (v25)
    {
      v26 = [a1 stickerUserInfo];
      [v20 setObject:v26 forKey:@"sui"];
    }

    v27 = [a1 attributionInfo];

    if (!v27)
    {
      goto LABEL_34;
    }

    v28 = [a1 attributionInfo];
    v29 = IMStripTransferConstraintAndSizeKeys();

    v30 = [a1 previewGenerationState];
    if ((v30 - 1) >= 2)
    {
      if (v30)
      {
LABEL_33:
        [v20 setObject:v29 forKey:@"aui"];

LABEL_34:
        v42 = MEMORY[0x277CCABB0];
        v43 = [a1 createdDate];
        [v43 timeIntervalSinceReferenceDate];
        v45 = [v42 numberWithLongLong:v44];
        [v20 setObject:v45 forKey:@"cdt"];

        v46 = MEMORY[0x277CCABB0];
        v47 = [a1 startDate];
        [v47 timeIntervalSinceReferenceDate];
        v49 = [v46 numberWithLongLong:v48];
        [v20 setObject:v49 forKey:@"sdt"];

        v50 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a1, "totalBytes")}];
        [v20 setObject:v50 forKey:@"tb"];

        v51 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isSticker")}];
        [v20 setObject:v51 forKey:@"is"];

        v52 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isIncoming")}];
        [v20 setObject:v52 forKey:@"ig"];

        v53 = [a1 filename];
        v54 = [v53 length] == 0;

        if (!v54)
        {
          v55 = [a1 filename];
          [v20 setObject:v55 forKey:@"tn"];
        }

        v56 = [a1 localPath];
        v57 = [v56 length] == 0;

        if (!v57)
        {
          v58 = [a1 localPath];
          [v20 setObject:v58 forKey:@"fn"];
        }

        v59 = [a1 backwardsCompatibleTransferState];
        v60 = [MEMORY[0x277CCABB0] numberWithInteger:v59];
        [v20 setObject:v60 forKey:@"st"];

        v61 = [a1 type];
        v62 = [v61 length] == 0;

        if (!v62)
        {
          v63 = [a1 type];
          [v20 setObject:v63 forKey:@"t"];
        }

        v64 = [a1 mimeType];
        v65 = [v64 length] == 0;

        if (!v65)
        {
          v66 = [a1 mimeType];
          [v20 setObject:v66 forKey:@"mimet"];
        }

        v67 = [a1 _assetURLToInsertToRecord];
        if (v67 && ([MEMORY[0x277CCAA00] defaultManager], v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v67, "path"), v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v68, "fileExistsAtPath:", v69), v69, v68, v70))
        {
          v71 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v67];
          [v8 _setCKRecordAsset:v71 forKey:@"lqa"];
          v72 = [v67 path];
          v73 = [v72 lastPathComponent];

          if (v73)
          {
            if (![v73 length] && IMOSLoggingEnabled())
            {
              v74 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v96 = v73;
                v97 = 2112;
                v98 = v67;
                _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_INFO, "**** File a radar **** Asset last path component %@ from url %@ is empty", buf, 0x16u);
              }
            }

            [v20 setObject:v73 forKey:@"pathc"];
          }

          else if (IMOSLoggingEnabled())
          {
            v76 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v96 = v67;
              _os_log_impl(&dword_22B4CC000, v76, OS_LOG_TYPE_INFO, "**** File a radar **** Asset last path component from url %@ is nil so cannot save it to metadata", buf, 0xCu);
            }
          }

          v77 = [a1 md5HashForURL:v67];
          if ([v77 length])
          {
            [v20 setObject:v77 forKey:@"mdh"];
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v75 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v96 = v67;
            _os_log_impl(&dword_22B4CC000, v75, OS_LOG_TYPE_INFO, "IMFileTransfer_CKRecord **** Transfer did not have URL or asset was missing on disk. URL %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v78 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            v79 = [a1 localPath];
            *buf = 138412290;
            v96 = v79;
            _os_log_impl(&dword_22B4CC000, v78, OS_LOG_TYPE_INFO, "Transfer file path %@", buf, 0xCu);
          }
        }

        v80 = [a1 _auxVideoPathIfItExists];
        if ([v80 length])
        {
          v81 = [MEMORY[0x277CBEBC0] fileURLWithPath:v80];
          if (v81)
          {
            v82 = [MEMORY[0x277CCAA00] defaultManager];
            v83 = [v81 path];
            v84 = [v82 fileExistsAtPath:v83];

            if (v84)
            {
              if (IMOSLoggingEnabled())
              {
                v85 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                {
                  v86 = [a1 guid];
                  *buf = 138412290;
                  v96 = v86;
                  _os_log_impl(&dword_22B4CC000, v85, OS_LOG_TYPE_INFO, "%@ transfer has an aux video asset", buf, 0xCu);
                }
              }

              v87 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v81];
              [v8 _setCKRecordAsset:v87 forKey:@"avid"];
              v88 = [v81 path];
              v89 = [v88 lastPathComponent];

              if (v89)
              {
                [v20 setObject:v89 forKey:@"auxpathc"];
              }

              else if (IMOSLoggingEnabled())
              {
                v90 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v96 = v81;
                  _os_log_impl(&dword_22B4CC000, v90, OS_LOG_TYPE_INFO, "**** File a radar **** Aux asset last path component from url %@ is nil so cannot save it to metadata", buf, 0xCu);
                }
              }
            }
          }
        }

        v91 = JWEncodeDictionary();
        v92 = [v91 _FTCopyGzippedData];
        [v8 _setCKRecordData:v92 forKey:@"cm"];
        v38 = v8;

        goto LABEL_82;
      }

      v34 = [v29 mutableCopy];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v39 = v36;

      [v39 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D19E30]];
    }

    else
    {
      v31 = [v29 mutableCopy];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v39 = v33;

      v40 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a1, "previewGenerationState") == 1}];
      [v39 setObject:v40 forKeyedSubscript:*MEMORY[0x277D19E48]];
    }

    v41 = [v39 copy];

    v29 = v41;
    goto LABEL_33;
  }

  if (v14)
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Cannot initialize CKRecord using derived record ID because salt is nil.", buf, 2u);
    }
  }

  v38 = 0;
LABEL_82:

  return v38;
}

id sub_22B6601E4(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 _dataForKey:@"cm"];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 _dataForKey:@"cm"];
    v7 = [v6 _FTOptionallyDecompressData];
  }

  else
  {
    v8 = [v3 _dataForKey:@"m"];
    v9 = [v8 length];

    if (v9)
    {
      v7 = [v3 _dataForKey:@"m"];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v3;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No transfer metadata found for record:%@", &v12, 0xCu);
        }
      }

      v7 = 0;
    }
  }

  return v7;
}

void sub_22B66036C(void *a1, uint64_t a2, void *a3)
{
  v4 = [a3 fileURL];
  [a1 cleanUpAssetURL:v4];
}

void sub_22B6603C4(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v3 path];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = 0;
      v8 = [v7 removeItemAtURL:v3 error:&v12];
      v9 = v12;

      v10 = IMOSLoggingEnabled();
      if (v8)
      {
        if (v10)
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v14 = v3;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Cleaned up attachment asset at %@", buf, 0xCu);
          }

LABEL_11:
        }
      }

      else if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v14 = v3;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Failed cleaning up attachment asset at %@, error %@", buf, 0x16u);
        }

        goto LABEL_11;
      }
    }
  }
}

uint64_t sub_22B660598(void *a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _assetForKey:@"lqa"];
  if (!v5)
  {
    goto LABEL_42;
  }

  if ([a1 transferState] && (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "localPath"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "fileExistsAtPath:", v7), v7, v6, v8))
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [a1 localPath];
    v41 = 0;
    v11 = [v9 attributesOfItemAtPath:v10 error:&v41];
    v12 = v41;

    if (v12)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [a1 localPath];
          *buf = 138412546;
          v43 = v14;
          v44 = 2112;
          v45 = v12;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Could not read file attributes of existing attachment at %@, %@", buf, 0x16u);
        }
      }

      goto LABEL_41;
    }

    v19 = [v5 fileURL];
    if (!v19 || ([MEMORY[0x277CCAA00] defaultManager], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "path"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "fileExistsAtPath:", v21), v21, v20, !v22))
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v19 path];
          *buf = 138412546;
          v43 = v29;
          v44 = 2112;
          v45 = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Could not find file of the asset at %@, %@", buf, 0x16u);
        }
      }

      v12 = 0;
      goto LABEL_40;
    }

    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = [v19 path];
    v40 = 0;
    v25 = [v23 attributesOfItemAtPath:v24 error:&v40];
    v12 = v40;

    if (v12)
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v19 path];
          *buf = 138412546;
          v43 = v27;
          v44 = 2112;
          v45 = v12;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Could not read file attributes of new attachment at %@, %@", buf, 0x16u);
        }
      }

LABEL_39:

LABEL_40:
LABEL_41:

LABEL_42:
      v18 = 0;
      goto LABEL_43;
    }

    v30 = *MEMORY[0x277CCA1C0];
    v31 = [v11 objectForKey:*MEMORY[0x277CCA1C0]];
    v32 = [v25 objectForKey:v30];
    v33 = v32;
    if (!v31 || !v32)
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v43 = v33;
          v44 = 2112;
          v45 = v31;
          _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Missing file size to compare: cloud size %@ local size %@", buf, 0x16u);
        }
      }

      goto LABEL_39;
    }

    v34 = [(__CFString *)v31 unsignedLongValue];
    v35 = [(__CFString *)v33 unsignedLongValue];
    v36 = v34 >= v35;
    v18 = v34 < v35;
    if (!v36 && IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v43 = @"YES";
        v44 = 2112;
        v45 = v33;
        v46 = 2112;
        v47 = v31;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Found a better asset in CKRecord %@, cloud size %@ local size %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [a1 guid];
        v17 = [a1 localPath];
        *buf = 138412546;
        v43 = v16;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "For attachment %@ local file not found at %@", buf, 0x16u);
      }
    }

    v18 = [MEMORY[0x277D1A9C0] attachmentRecordHasAsset:v4];
  }

LABEL_43:

  return v18;
}

BOOL sub_22B660BBC(void *a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _assetForKey:@"lqa"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [a1 localPath];
    v8 = [v6 fileExistsAtPath:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [a1 localPath];
      v36 = 0;
      v11 = [v9 attributesOfItemAtPath:v10 error:&v36];
      v12 = v36;

      if (v12)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [a1 localPath];
            *buf = 138412546;
            v38 = v14;
            v39 = 2112;
            v40 = v12;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Could not read file attributes of local attachment at %@, %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v16 = [v5 fileURL];
        if (v16 && ([MEMORY[0x277CCAA00] defaultManager], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "path"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "fileExistsAtPath:", v18), v18, v17, v19))
        {
          v20 = [MEMORY[0x277CCAA00] defaultManager];
          v21 = [v16 path];
          v35 = 0;
          v22 = [v20 attributesOfItemAtPath:v21 error:&v35];
          v12 = v35;

          if (v12)
          {
            if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = [v16 path];
                *buf = 138412546;
                v38 = v24;
                v39 = 2112;
                v40 = v12;
                _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Could not read file attributes of new attachment at %@, %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v27 = *MEMORY[0x277CCA1C0];
            v28 = [v11 objectForKey:*MEMORY[0x277CCA1C0]];
            v29 = [v22 objectForKey:v27];
            v30 = v29;
            if (v28 && v29)
            {
              v31 = [v28 unsignedLongValue];
              v32 = [v30 unsignedLongValue];
              v15 = v31 > v32;
              if (v31 > v32 && IMOSLoggingEnabled())
              {
                v33 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v38 = @"YES";
                  v39 = 2112;
                  v40 = v28;
                  v41 = 2112;
                  v42 = v30;
                  _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Local asset is bigger than the one in CKRecord %@, taking %@ over %@", buf, 0x20u);
                }
              }

              v12 = v11;
              goto LABEL_33;
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v16 path];
              *buf = 138412290;
              v38 = v26;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Can't find incoming attachment from CKRecord at %@", buf, 0xCu);
            }
          }

          v12 = 0;
        }
      }

      v15 = 0;
      v16 = v11;
LABEL_33:

      goto LABEL_34;
    }
  }

  v15 = 0;
LABEL_34:

  return v15;
}

void sub_22B66108C(void *a1, uint64_t a2, void *a3)
{
  v101[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Moving transfer asset from CK cache to final spot", buf, 2u);
    }
  }

  v83 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:v4];
  v6 = JWDecodeDictionary();
  v82 = [v6 objectForKey:@"aguid"];
  v80 = [v6 objectForKey:@"t"];
  v79 = [v6 objectForKey:@"mimet"];
  v81 = [v6 objectForKey:@"fn"];
  v7 = [v6 objectForKey:@"vers"];
  v8 = [v7 integerValue] > 0;

  if (v8)
  {
    v77 = [v4 _assetForKey:@"lqa"];
    if (v77)
    {
      v9 = [v6 objectForKey:@"pathc"];
      if ([(__CFString *)v9 length])
      {
        v10 = v9;
      }

      else
      {
        v17 = [a1 filename];
        v10 = [v17 im_lastPathComponent];

        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v93 = v10;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "CKRecord did not have a lastPathComponent, using %@ from filename", buf, 0xCu);
          }
        }
      }

      v78 = IMDCopyAttachmentPersistentPath();
      if (-[__CFString length](v10, "length") && -[__CFString length](v78, "length") && ([v77 fileURL], v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, !v20))
      {
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v89 = 0;
        v22 = [v21 removeItemAtPath:v78 error:&v89];
        v23 = v89;

        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v22;
        }

        if ((v24 & 1) == 0 && IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = @"NO";
            *buf = 138412802;
            v93 = v78;
            v94 = 2112;
            if (v22)
            {
              v26 = @"YES";
            }

            v95 = v26;
            v96 = 2112;
            v97 = v23;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Failed to remove existing file at %@ to replace with version from CKRecord, sucess %@ error %@", buf, 0x20u);
          }
        }

        v27 = [(__CFString *)v78 stringByDeletingLastPathComponent];
        IMSharedHelperEnsureDirectoryExistsAtPath();

        v28 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = [v77 fileURL];
        v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:v78];
        v88 = 0;
        LOBYTE(v27) = [v28 moveItemAtURL:v29 toURL:v30 error:&v88];
        v73 = v88;

        if (v27)
        {
          [a1 _setLocalPath:v78];
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v93 = v82;
              v94 = 2112;
              v95 = v78;
              _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Created transfer %@, finalAssetPath %@", buf, 0x16u);
            }
          }

          v32 = [MEMORY[0x277CCAA00] defaultManager];
          v100 = *MEMORY[0x277CCA1B0];
          v101[0] = *MEMORY[0x277CCA1A0];
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:&v100 count:1];
          v87 = 0;
          v34 = [v32 setAttributes:v33 ofItemAtPath:v78 error:&v87];
          v35 = v87;

          if ((v34 & 1) == 0 && IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v93 = v78;
              v94 = 2112;
              v95 = v35;
              _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v40 = [v77 fileURL];
          v35 = [v40 path];

          if (IMOSLoggingEnabled())
          {
            v41 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v93 = v35;
              v94 = 2112;
              v95 = v78;
              v96 = 2112;
              v97 = v73;
              _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Failed to move file from %@ to %@, error %@", buf, 0x20u);
            }
          }

          [MEMORY[0x277D1A9C0] cleanUpAsset:{v77, v73}];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [v77 fileURL];
          *buf = 138413058;
          v93 = v82;
          v94 = 2112;
          v95 = v10;
          v96 = 2112;
          v97 = v78;
          v98 = 2112;
          v99 = v38;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Failed to write asset to disk because of nil path! Asset from ckrecord with guid %@ has path %@, finalAssetPath %@ and asset fileURL %@", buf, 0x2Au);
        }
      }
    }

    else
    {
      v78 = 0;
    }

    v42 = [v4 _assetForKey:@"avid"];
    if (v42)
    {
      v43 = [v6 objectForKey:@"auxpathc"];
      if ([(__CFString *)v43 length])
      {
        v44 = v43;
      }

      else
      {
        v45 = [a1 _auxVideoPathIfItExists];
        v44 = [v45 im_lastPathComponent];

        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v93 = v44;
            _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "CKRecord did not have a auxVideoLastPathComponent, using %@ from auxVideoPath", buf, 0xCu);
          }
        }
      }

      v47 = [(__CFString *)v78 stringByDeletingLastPathComponent];
      v48 = [(__CFString *)v44 im_lastPathComponent];
      v49 = [v47 stringByAppendingPathComponent:v48];

      if (-[__CFString length](v44, "length") && -[__CFString length](v49, "length") && ([v42 fileURL], v50 = objc_claimAutoreleasedReturnValue(), v51 = v50 == 0, v50, !v51))
      {
        v52 = [MEMORY[0x277CCAA00] defaultManager];
        v86 = 0;
        v53 = [v52 removeItemAtPath:v49 error:&v86];
        v54 = v86;

        if (v54)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53;
        }

        if ((v55 & 1) == 0 && IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = @"NO";
            *buf = 138412802;
            v93 = v49;
            v94 = 2112;
            if (v53)
            {
              v57 = @"YES";
            }

            v95 = v57;
            v96 = 2112;
            v97 = v54;
            _os_log_impl(&dword_22B4CC000, v56, OS_LOG_TYPE_INFO, "Failed to remove existing aux file at %@ to replace with version from CKRecord, success %@ error %@", buf, 0x20u);
          }
        }

        v58 = [(__CFString *)v49 stringByDeletingLastPathComponent];
        IMSharedHelperEnsureDirectoryExistsAtPath();

        v59 = [MEMORY[0x277CCAA00] defaultManager];
        v60 = [v42 fileURL];
        v61 = [MEMORY[0x277CBEBC0] fileURLWithPath:v49];
        v85 = 0;
        LOBYTE(v58) = [v59 moveItemAtURL:v60 toURL:v61 error:&v85];
        v75 = v85;

        v62 = IMOSLoggingEnabled();
        if (v58)
        {
          if (v62)
          {
            v63 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v93 = v82;
              v94 = 2112;
              v95 = v49;
              _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Stored aux video for transfer %@, finalAssetPath %@", buf, 0x16u);
            }
          }

          v64 = [MEMORY[0x277CCAA00] defaultManager];
          v90 = *MEMORY[0x277CCA1B0];
          v91 = *MEMORY[0x277CCA1A0];
          v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v84 = 0;
          v66 = [v64 setAttributes:v65 ofItemAtPath:v49 error:&v84];
          v67 = v84;

          if ((v66 & 1) == 0 && IMOSLoggingEnabled())
          {
            v68 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v93 = v49;
              v94 = 2112;
              v95 = v67;
              _os_log_impl(&dword_22B4CC000, v68, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (v62)
          {
            v71 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v72 = [v42 fileURL];
              *buf = 138412802;
              v93 = v72;
              v94 = 2112;
              v95 = v49;
              v96 = 2112;
              v97 = v75;
              _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_INFO, "Failed to move file from %@ to %@ error %@", buf, 0x20u);
            }
          }

          [MEMORY[0x277D1A9C0] cleanUpAsset:{v42, v75}];
        }
      }

      else
      {
        v69 = [v42 fileURL];
        v54 = [v69 path];

        if (IMOSLoggingEnabled())
        {
          v70 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v93 = v82;
            v94 = 2112;
            v95 = v44;
            v96 = 2112;
            v97 = v49;
            v98 = 2112;
            v99 = v54;
            _os_log_impl(&dword_22B4CC000, v70, OS_LOG_TYPE_INFO, "Failed to write aux asset to disk because of nil path! Asset from ckrecord with guid %@ has path %@, finalAssetPath %@ and asset fileURL %@", buf, 0x2Au);
          }
        }

        [MEMORY[0x277D1A9C0] cleanUpAsset:v42];
      }
    }
  }

  else if (v81)
  {
    v11 = [v4 _assetForKey:@"lqa"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 fileURL];
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v13];
      if (v14)
      {
        v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v81];
        if (([v14 writeToURL:v15 atomically:0] & 1) == 0 && IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v93 = v81;
            v94 = 2112;
            v95 = v82;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Failed to write record image asset to %@ GUID:%@", buf, 0x16u);
          }
        }
      }

      [MEMORY[0x277D1A9C0] cleanUpAsset:v12];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v93 = v82;
      _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Got IMFileTransfer record with guid %@ with no file name", buf, 0xCu);
    }
  }

  [MEMORY[0x277D1A9C0] cleanUpAssetsOnDiskForRecord:v4];
}

id sub_22B661FC8(id a1, uint64_t a2, void *a3, int a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 recordType], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D1A9C0], "_recordType"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, (v10 & 1) != 0))
  {
    v44.receiver = a1;
    v44.super_class = &off_283F9C7A0;
    v11 = objc_msgSendSuper2(&v44, sel_init);
    if (v11)
    {
      v41 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:v7];
      v12 = JWDecodeDictionary();
      v42 = [v12 objectForKey:@"aguid"];
      v43 = [v12 objectForKey:@"tn"];
      v36 = [v12 objectForKey:@"fn"];
      v40 = [v12 objectForKey:@"t"];
      v39 = [v12 objectForKey:@"ui"];
      v13 = [v12 objectForKey:@"cdt"];
      v35 = [v13 longLongValue];

      v14 = [v12 objectForKey:@"sdt"];
      v34 = [v14 longLongValue];

      v15 = [v12 objectForKey:@"st"];
      v33 = [v15 integerValue];

      v16 = [v12 objectForKey:@"ig"];
      v17 = [v16 BOOLValue];

      v18 = [v12 objectForKey:@"tb"];
      v19 = [v18 longLongValue];

      v20 = [v12 objectForKey:@"is"];
      v21 = [v20 BOOLValue];

      v38 = [v12 objectForKey:@"sui"];
      v37 = [v12 objectForKey:@"aui"];
      v22 = [v12 objectForKey:@"ha"];
      v23 = [v22 BOOLValue];

      [v11 setGuid:v42];
      [v11 setType:v40];
      v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v35];
      [v11 setCreatedDate:v24];

      v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v34];
      [v11 _setStartDate:v25];

      [v11 _setTransferState:v33];
      [v11 setIsIncoming:v17];
      [v11 setUserInfo:v39];
      [v11 setTotalBytes:v19];
      if ([v43 length])
      {
        [v11 setFilename:v43];
      }

      [v11 setIsSticker:v21];
      [v11 setStickerUserInfo:v38];
      [v11 setAttributionInfo:v37];
      [v11 setHideAttachment:v23];
      [v11 setCloudKitSyncState:1];
      v26 = [v7 copyEncodedSystemFields];
      [v11 setCloudKitServerChangeTokenBlob:v26];
      v27 = [v7 recordID];
      v28 = [v27 recordName];
      [v11 setCloudKitRecordID:v28];

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v46 = v42;
          v47 = 2112;
          v48 = v36;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Trying to create imfiletransfer ckrecord with guid %@ and filename %@", buf, 0x16u);
        }
      }

      if (a4)
      {
        [v11 moveAssetFromRecord:v7];
      }
    }

    a1 = v11;
    v30 = a1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v7;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Invalid record passed to initWithCKRecord %@", buf, 0xCu);
      }
    }

    v30 = 0;
  }

  return v30;
}

uint64_t sub_22B662528(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = [a3 recordType];
  v4 = [MEMORY[0x277D1A9C0] _recordType];
  v5 = [v3 isEqualToString:v4] ^ 1;

  return v5;
}

id sub_22B662598(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D1A9C0] _recordIsInvalid:v3])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Invalid record passed to utiTypeForRecord %@", &v9, 0xCu);
      }
    }

    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:v3];
    v7 = JWDecodeDictionary();
    v5 = [v7 objectForKey:@"t"];
  }

  return v5;
}

uint64_t sub_22B6626E0(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D1A9C0] _recordIsInvalid:v3])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Invalid record passed to sizeOfAssetForRecord %@", &v10, 0xCu);
      }
    }

    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:v3];
    v7 = JWDecodeDictionary();
    v8 = [v7 objectForKey:@"tb"];
    v5 = [v8 longLongValue];
  }

  return v5;
}

id sub_22B66282C(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D1A9C0] _recordIsInvalid:v3])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Invalid record passed to transferGUIDOfRecord %@", &v9, 0xCu);
      }
    }

    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:v3];
    v7 = JWDecodeDictionary();
    v5 = [v7 objectForKey:@"aguid"];
  }

  return v5;
}

uint64_t sub_22B662974(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D1A9C0] _recordIsInvalid:v3])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Invalid record passed to attachmentRecordHasAsset %@", &v11, 0xCu);
      }
    }

    v5 = 0;
  }

  else
  {
    v6 = [v3 _assetForKey:@"lqa"];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [v6 fileURL];
      v9 = [v8 path];
      v5 = [v7 fileExistsAtPath:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_22B662AEC(void *a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D1A9C0] _recordIsInvalid:v4])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Invalid record passed to cleanUpAssetsOnDiskForRecord: %@", &v8, 0xCu);
      }
    }
  }

  else
  {
    v6 = [v4 _assetForKey:@"lqa"];
    [a1 cleanUpAsset:v6];

    v7 = [v4 _assetForKey:@"avid"];
    [a1 cleanUpAsset:v7];
  }
}

id sub_22B662C34(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D1A9C0] _recordIsInvalid:v3])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Invalid record passed to md5HashForRecord: %@", &v9, 0xCu);
      }
    }

    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:v3];
    v7 = JWDecodeDictionary();
    v5 = [v7 objectForKey:@"mdh"];
  }

  return v5;
}

uint64_t sub_22B662D7C(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D1A9C0] _recordIsInvalid:v3])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Invalid record passed to md5HashForRecord: %@", buf, 0xCu);
      }
    }

    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:v3];
    v7 = JWDecodeDictionary();
    v8 = [v7 objectForKey:@"mdh"];
    if ([v8 length])
    {
      v9 = [v7 objectForKey:@"fn"];
      v10 = [v7 objectForKey:@"t"];
      if ([v9 length] && objc_msgSend(v10, "length"))
      {
        v11 = [v3 _assetForKey:@"lqa"];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 fileURL];
          if (v13)
          {
            v14 = [MEMORY[0x277CCAA00] defaultManager];
            v15 = [v13 path];
            v26 = v12;
            v16 = [v14 fileExistsAtPath:v15];

            if (v16)
            {
              v17 = [v13 path];
              v18 = IMSharedHelperMD5HashOfFileAtPath();
            }

            else
            {
              v18 = 0;
            }

            v12 = v26;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = [v3 recordID];
              v23 = [v22 recordName];
              *buf = 138412290;
              v28 = v23;
              _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "IMFileTransfer_CKRecord *** asset was nil for record id: %@", buf, 0xCu);
            }
          }

          v18 = 0;
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v28 = v9;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "IMFileTransfer_CKRecord *** fileName [%@] or utiType [%@] is nil", buf, 0x16u);
          }
        }

        v18 = 0;
      }

      v5 = [v18 isEqualToString:v8];
      if ((v5 & 1) == 0 && IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v28 = v18;
          v29 = 2112;
          v30 = v8;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "We failed to validate md5HashOfCKAsset: %@ md5HashStoredOnRecord: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = v3;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "We didn't have an md5 hash for fetched record: %@", buf, 0xCu);
        }
      }

      v5 = 1;
    }
  }

  return v5;
}

void sub_22B66327C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B663188);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

IMDReplayController *sub_22B66336C()
{
  result = objc_alloc_init(IMDReplayController);
  qword_281421040 = result;
  return result;
}

void sub_22B663CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B663CD0(uint64_t a1)
{
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    block[5] = v1;
    block[6] = v2;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B663D74;
    block[3] = &unk_278704F90;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

dispatch_workloop_t IMDCreateWorkloop(void *a1)
{
  v1 = [a1 UTF8String];

  return dispatch_workloop_create(v1);
}

void sub_22B667B7C(id *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = a1[4];
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Releasing replicated message %@", buf, 0xCu);
    }
  }

  v5 = +[IMPendingReplicatedMessageCache sharedCache];
  v6 = a1[4];
  v7 = [a1[5] service];
  v8 = [v7 internalName];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B667D28;
  v9[3] = &unk_2787073C0;
  v10 = a1[4];
  v11 = a1[6];
  [v5 releasePendingMessageWithGUID:v6 serviceName:v8 chat:0 completion:v9];
}

uint64_t sub_22B667D28(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Processing %@ after replicated message release", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_22B6681D8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B668164);
  }

  _Unwind_Resume(a1);
}

void sub_22B668224(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) guid];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "** Performing delayed replication for %@", &v6, 0xCu);
    }
  }

  v5 = [*(a1 + 40) replicationProxy];
  [v5 sendMessage:*(a1 + 32) toChat:*(a1 + 48) style:*(a1 + 56)];
}

void sub_22B6690DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6690CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B669220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void *sub_22B669244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6692E8;
  v8[3] = &unk_278707410;
  v10 = *(a1 + 48);
  v9 = *(a1 + 32);
  result = [a2 enumerateKeysAndObjectsUsingBlock:{v8, a4}];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

void sub_22B6692E8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([v7 isEqualToString:*MEMORY[0x277D19160]])
  {
    if (++*(*(*(a1 + 40) + 8) + 24) < 2uLL)
    {
      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Message body has more than one message part", &v12, 2u);
      }
    }

    v10 = [*(a1 + 32) replicationRequiredForMultipleMessageParts];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Message body has attribute %@", &v12, 0xCu);
      }
    }

    v10 = [*(a1 + 32) replicationRequiredForMessageBodyAttributeName:v7];
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;
LABEL_14:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t sub_22B66A028()
{
  qword_281421048 = objc_alloc_init(IMDCKSyncController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B66A1C8(uint64_t a1)
{
  v2 = objc_alloc_init(IMDCKInitialMessageSyncController);
  v3 = qword_27D8CFFD8;
  qword_27D8CFFD8 = v2;

  v4 = qword_27D8CFFD8;
  v5 = *(a1 + 32);

  return [v4 setDelegate:v5];
}

uint64_t sub_22B66A474(uint64_t a1)
{
  v2 = objc_alloc_init(IMDCKInitialAttachmentSyncController);
  v3 = qword_27D8CFFF0;
  qword_27D8CFFF0 = v2;

  v4 = qword_27D8CFFF0;
  v5 = *(a1 + 32);

  return [v4 setDelegate:v5];
}

void sub_22B66A690(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B66A64CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B66A974(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 134218242;
      v16 = a2;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Account status is: %ld. Error: %@", &v15, 0x16u);
    }
  }

  if (*(a1 + 40) == 1)
  {
    if (a2 == 4)
    {
      v9 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v10 = [v9 isMessagesIniCloudVersion2];

      if (v10)
      {
        v11 = [*(a1 + 32) syncResumer];
        [v11 attemptToResumeSyncOnAccountUpdateIfAppropriate];
      }

      else
      {
        v12 = [MEMORY[0x277D1A990] sharedInstance];
        v13 = [v12 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A78]];

        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              LOWORD(v15) = 0;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Account status update, and we stopped syncing due to bad account status.", &v15, 2u);
            }
          }

          [*(a1 + 32) beginPeriodicSyncWithChecks:1 priority:*MEMORY[0x277D86348] reason:@"Account.update"];
        }
      }
    }

    else if (a2 == 1)
    {
      v7 = +[IMDCKRecordSaltManager sharedInstance];
      [v7 clearLocalSyncState];

      v8 = +[IMDAttachmentStore sharedInstance];
      [v8 markAllAttachmentsAsNotPurgeable];
    }

    [*(a1 + 32) _attemptToMigrateACAccountEnablementOnce];
  }

  else if (a2 == 4)
  {
    [*(a1 + 32) _attemptToEnableMiCByDefaultOnce];
  }
}

void sub_22B66B3D4(uint64_t a1, void *a2, void *a3)
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setIsFetchingExitForEnablement:0];
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7 < [*(a1 + 32) _maxRetryAttemptsToEnableMiCByDefault])
    {
      [*(a1 + 32) _retryIntervalToEnableMicByDefaultForAttempt:*(a1 + 40)];
      v9 = v8;
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 40);
          *buf = 67109376;
          v19[0] = v11;
          LOWORD(v19[1]) = 2048;
          *(&v19[1] + 2) = v9;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Enable MiC by default: failed to get exit record attempt %d, trying again in %0.02f seconds", buf, 0x12u);
        }
      }

      im_dispatch_after();
      goto LABEL_24;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 40);
        *buf = 67109120;
        v19[0] = v15;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Enable MiC by default: failed to get exit record attempt %d, done", buf, 8u);
      }
    }

LABEL_13:
    [*(a1 + 32) _setHasTriedToEnableMiCByDefault];
    goto LABEL_24;
  }

  v12 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v19 = v5;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Enable MiC by default: Exit record found with date %@, won't try again", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

  if (v12)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Enable MiC by default: All Checks Passed, Enabling!!", buf, 2u);
    }
  }

  v17 = [*(a1 + 32) ckUtilities];
  [v17 setCloudKitSyncingEnabled:1];

  [*(a1 + 32) _setHasTriedToEnableMiCByDefault];
LABEL_24:
}