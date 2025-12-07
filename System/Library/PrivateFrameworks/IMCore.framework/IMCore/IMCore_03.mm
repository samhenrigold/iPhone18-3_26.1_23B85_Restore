void sub_1A8357A00(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Failed to fetch StatusKit subscription, it's likely we have not received an invitation from %@", &v15, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "StatusKit subscription fetched %@, checking if a retain is still necessary", &v15, 0xCu);
    }
  }

  v6 = [*(a1 + 40) observers];
  v7 = [*(a1 + 32) ID];
  v8 = [v6 objectForKey:v7];

  v9 = IMOSLoggingEnabled();
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "No valid observers for handle %@, not retaining transient subscription assertion", &v15, 0xCu);
    }

    goto LABEL_19;
  }

  if (v9)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "There are valid observers for handle %@, retaining assertion", &v15, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_20:
}

void sub_1A8357C90(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8357C58);
  }

  _Unwind_Resume(a1);
}

void sub_1A8358024(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 subscriptionIdentifier];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Releasing transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8358198;
  v8[3] = &unk_1E7813450;
  v9 = *(a1 + 32);
  v10 = v4;
  v7 = v4;
  [v3 releaseTransientSubscriptionAssertionWithCompletion:v8];
}

void sub_1A8358198(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1EF0();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Successfully released transient subscription assertion for subscription: %@ and handle: %@", &v8, 0x16u);
    }
  }
}

void sub_1A83582C4(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Failed to fetch StatusKit subscription, it's likely we have not received an invitation from %@", &v15, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "StatusKit subscription fetched %@, checking if a retain is still necessary", &v15, 0xCu);
    }
  }

  v6 = [*(a1 + 40) observers];
  v7 = [*(a1 + 32) ID];
  v8 = [v6 objectForKey:v7];

  v9 = IMOSLoggingEnabled();
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "No valid observers for handle %@, not retaining transient subscription assertion", &v15, 0xCu);
    }

    goto LABEL_19;
  }

  if (v9)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "There are valid observers for handle %@, retaining assertion", &v15, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_20:
}

void sub_1A8358554(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A835851CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A835886C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 subscriptionIdentifier];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Retaining transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A83589E4;
  v8[3] = &unk_1E7813450;
  v9 = v4;
  v10 = *(a1 + 32);
  v7 = v4;
  [v3 retainTransientSubscriptionAssertionWithCompletion:v8];
}

void sub_1A83589E4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1E70();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Successfully retained transient subscription assertion for subscription: %@ and handle: %@", &v8, 0x16u);
    }
  }
}

void sub_1A8358B10(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Failed to fetch StatusKit subscription, it's likely we have not received an invitation from %@", &v15, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "StatusKit Subscription fetched %@, checking if a retain is still necessary", &v15, 0xCu);
    }
  }

  v6 = [*(a1 + 40) observers];
  v7 = [*(a1 + 32) ID];
  v8 = [v6 objectForKey:v7];

  v9 = IMOSLoggingEnabled();
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "No valid observers for handle %@, not retaining transient subscription assertion", &v15, 0xCu);
    }

    goto LABEL_19;
  }

  if (v9)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "There are valid observers for handle %@, retaining assertion", &v15, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_20:
}

void sub_1A8358DA0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8358D68);
  }

  _Unwind_Resume(a1);
}

void sub_1A83590B8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 subscriptionIdentifier];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Releasing transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A835922C;
  v8[3] = &unk_1E7813450;
  v9 = *(a1 + 32);
  v10 = v4;
  v7 = v4;
  [v3 releaseTransientSubscriptionAssertionWithCompletion:v8];
}

void sub_1A835922C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1EF0();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Successfully released transient subscription assertion for subscription: %@ and handle: %@", &v8, 0x16u);
    }
  }
}

void sub_1A8359358(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [*(a1 + 32) ID];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Failed to fetch StatusKit subscription, it's likely we have not received an invitation from %@", &v15, 0xCu);
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "StatusKit Subscription fetched %@, checking if a retain is still necessary", &v15, 0xCu);
    }
  }

  v6 = [*(a1 + 40) observers];
  v7 = [*(a1 + 32) ID];
  v8 = [v6 objectForKey:v7];

  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) ID];
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "There are valid observers for handle %@, not releasing transient subscription assertion", &v15, 0xCu);
      }

LABEL_10:
    }
  }

  else
  {
    if (v9)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [*(a1 + 32) ID];
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "No valid observers for handle %@, releasing transient subscription assertion", &v15, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_20:
}

void sub_1A83595E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A835959CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A8359910(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) daemonController];
  [v1 invokeWithTarget:v2];
}

void IMSPIFetchMostRecentSpotlightIndexDeletionReasonWithCompletion(char a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5DD8] spotlightQueryProvider];
  if (v4)
  {
    v5 = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8359B34;
    aBlock[3] = &unk_1E7812258;
    v6 = v3;
    v12 = v6;
    v7 = _Block_copy(aBlock);
    if (a1)
    {
      [v5 synchronousRemoteObjectProxyWithErrorHandler:v7];
    }

    else
    {
      [v5 remoteObjectProxyWithErrorHandler:v7];
    }
    v8 = ;

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A8359B4C;
    v9[3] = &unk_1E78134C8;
    v10 = v6;
    [v8 fetchLastSpotlightIndexDeleteReasonWithCompletion:v9];
  }

  else
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

uint64_t sub_1A8359B4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 integerValue];
  v5 = *(v3 + 16);

  return v5(v3, v4, a2 != 0);
}

void sub_1A835ABF8(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:@"filePath"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKeyedSubscript:@"success"];

  v7 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Successfully fetched high res image, filename is %@", &v10, 0xCu);
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
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Error: failed to fetch high res image, filename is %@", &v10, 0xCu);
      }
    }

    [*(*(*(a1 + 32) + 8) + 40) setObject:@"Failed to fetch high res image" forKeyedSubscript:@"error"];
  }
}

uint64_t (*sub_1A835BC74())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForGUID", @"IMDPersistence");
  off_1EB2EA3E8 = result;
  return result;
}

uint64_t (*sub_1A835BCA4())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA3F8 = result;
  return result;
}

id _IMBestAccountForIMMessageItemDictionary(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = [v9 objectForKey:@"accountID"];
  v14 = 0x1E780D000uLL;
  if (!v13 || (+[IMAccountController sharedInstance](IMAccountController, "sharedInstance"), v15 = objc_claimAutoreleasedReturnValue(), [v15 accountForUniqueID:v13], v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
  {
    v17 = [v9 objectForKey:@"service"];
    v18 = [IMServiceImpl serviceWithInternalName:v17];
    v19 = [v12 service];

    if (v19 == v18)
    {
      if (a5)
      {
        v22 = v12;
        *a5 = v12;
      }

      v16 = v12;
    }

    else
    {
      v20 = +[IMAccountController sharedInstance];
      v16 = [v20 bestAccountForService:v18];

      if (a5)
      {
        v21 = v16;
        *a5 = v16;
      }

      v14 = 0x1E780D000;
    }

    if (!v16)
    {
      v23 = [v10 account];
      if (v23)
      {
        v16 = v23;
      }

      else
      {
        v24 = [*(v14 + 1960) sharedInstance];
        v16 = [v24 accountForUniqueID:v11];

        if (!v16)
        {
          v25 = [*(v14 + 1960) sharedInstance];
          v16 = [v25 bestAccountForService:0];
        }
      }
    }
  }

  return v16;
}

void _IMCheckMessageForDDResults(void *a1)
{
  v5 = a1;
  v1 = +[IMDaemonController sharedController];
  v2 = [v1 capabilities];
  v3 = *MEMORY[0x1E69A6260] & v2;

  if (v3 && ([v5 isTypingMessage] & 1) == 0 && (objc_msgSend(v5, "wasDataDetected") & 1) == 0 && objc_msgSend(v5, "messageID"))
  {
    v4 = +[IMDDController sharedInstance];
    [v4 scanMessage:v5 completionBlock:&unk_1F1B6F060];
  }
}

void sub_1A835CA00(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v12 = v4;
    v5 = [v4 sender];
    v6 = [v5 account];
    v7 = [v6 service];
    v8 = [v7 supportsDatabaseStorage];

    v4 = v12;
    if (v8)
    {
      v9 = +[IMDaemonController sharedController];
      v10 = [v9 remoteDaemon];
      v11 = [v12 _imMessageItem];
      [v10 updateMessage:v11];

      v4 = v12;
    }
  }
}

void _ConfigureContextForIMItem(void *a1, void *a2, uint64_t a3)
{
  v19 = a1;
  v5 = a2;
  if (v5)
  {
    v6 = [v19 type];
    if (!v6)
    {
      v10 = [v19 flags];
      v11 = [v19 senderInfo];
      v8 = [v11 objectForKey:*MEMORY[0x1E69A6310]];

      v12 = [v19 handle];
      if ((v10 & 4) == 0)
      {
        v13 = [v5 imHandleWithID:v8 alreadyCanonical:a3];
        v14 = [v5 loginIMHandle];
LABEL_15:
        v18 = v14;
        goto LABEL_16;
      }

      v13 = [v5 loginIMHandle];
      v15 = v5;
      v16 = v12;
      v17 = a3;
LABEL_14:
      v14 = [v15 imHandleWithID:v16 alreadyCanonical:v17];
      goto LABEL_15;
    }

    v7 = v6;
    v8 = [v19 sender];
    if (v7 == 6)
    {
      [v19 handle];
    }

    else
    {
      [v19 otherHandle];
    }
    v9 = ;
    v12 = v9;
    if (v8)
    {
      v13 = [v5 imHandleWithID:v8 alreadyCanonical:1];
      if (v12)
      {
LABEL_10:
        v15 = v5;
        v16 = v12;
        v17 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    v18 = 0;
LABEL_16:
    [v19 _updateContextWithSenderHandle:v13 otherHandle:v18];
  }
}

void sub_1A835D4C4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 matchesIMHandle:*(a1 + 32)])
  {
    v7 = [*(a1 + 40) typingHandles];
    [v7 removeObjectAtIndex:a3];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t sub_1A835D7D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 matchesIMHandle:*(a1 + 32)];
  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (*(a1 + 32) != v10)
    {
      v8 = [*(a1 + 40) typingHandles];
      [v8 replaceObjectAtIndex:a3 withObject:*(a1 + 32)];
    }

    *a4 = 1;
  }

  return MEMORY[0x1EEE66BB8](v7);
}

void sub_1A835DBA0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A835DA14);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1A835DC24(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [v10 handle];
  v9 = [v8 matchesIMHandle:a1[4]];

  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_1A835EAE4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) remoteProxy];
  [v1 requestOneTimeCodeStatus];
}

id sub_1A835FAD4(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v19 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v4 account];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18 = v4;
  v6 = [v4 participants];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v20 + 1) + 8 * i) ID];
        v13 = [v5 imHandleWithID:v12];

        v14 = [v13 cnContactWithKeys:v10];
        if (v14 && [v3 containsObject:v14])
        {
          v15 = [v14 identifier];
          [v19 setObject:v13 forKeyedSubscript:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = [v19 copy];

  return v16;
}

id sub_1A835FD00(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = +[IMHandleRegistrar sharedInstance];
        v9 = [v7 identifier];
        v10 = [v8 handlesForCNIdentifier:v9];
        v11 = [v10 allObjects];

        v12 = [v11 __imArrayByApplyingBlock:&unk_1F1B6F0C0];
        [v2 addObjectsFromArray:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v13 = [v2 copy];

  return v13;
}

id sub_1A835FEBC(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = +[IMHandleRegistrar sharedInstance];
        v9 = [v7 identifier];
        v10 = [v8 handlesForCNIdentifier:v9];
        v11 = [v10 allObjects];
        v12 = [v7 identifier];
        [v2 setObject:v11 forKeyedSubscript:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v13 = [v2 copy];

  return v13;
}

void sub_1A8360070(void *a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = MEMORY[0x1E69A80B0];
  v6 = a2;
  v7 = [a1 allObjects];
  LOBYTE(v5) = [v5 refreshIDStatusForDestinations:v7 service:v6 listenerID:@"+[IMHandle bestHandlesForCNContacts:]" queue:MEMORY[0x1E69E96A0] completionBlock:v8];

  if ((v5 & 1) == 0)
  {
    v8[2](v8, 0);
  }
}

void sub_1A8360128(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = +[IMService iMessageService];
  if (v4 == 1)
  {
    v7 = sub_1A83603EC(v5, v3, v6);

    if ([v7 count])
    {
      v8 = [*(a1 + 40) anyObject];
      v9 = [v8 identifier];
      v10 = [v7 objectForKeyedSubscript:v9];
      v11 = [v10 account];

      v12 = IMHandleLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v7;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 4: Found best iMessage handles for all recipients: %@ for account: %@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_11;
    }

LABEL_10:

    v14 = *(a1 + 48);
    v15 = *MEMORY[0x1E69A4808];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A8360894;
    v16[3] = &unk_1E7813610;
    v20 = *(a1 + 64);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    sub_1A8360070(v14, v15, v16);

    v7 = v17;
    goto LABEL_11;
  }

  v7 = sub_1A83605D0(v5, v3, v6);

  if (![v7 count])
  {
    goto LABEL_10;
  }

  v13 = IMHandleLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 4: Found valid iMessage handles for all recipients: %@", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
LABEL_11:
}

id sub_1A83603EC(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 isEnabled])
  {
    v20 = v6;
    v21 = v5;
    v8 = sub_1A83605D0(v5, v6, v7);
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:{v15, v20, v21, v22}];
          if (![v16 count])
          {

            v18 = 0;
            goto LABEL_13;
          }

          v17 = [IMHandle bestIMHandleInArray:v16];
          [v9 setObject:v17 forKeyedSubscript:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = v9;
LABEL_13:

    v6 = v20;
    v5 = v21;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_1A83605D0(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 isEnabled])
  {
    v31 = [MEMORY[0x1E695DF90] dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v25 = v5;
    obj = v5;
    v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v27)
    {
      v26 = *v37;
      do
      {
        v8 = 0;
        do
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v8;
          v9 = *(*(&v36 + 1) + 8 * v8);
          v10 = [obj objectForKeyedSubscript:v9];
          v11 = [MEMORY[0x1E695DF70] array];
          v30 = v9;
          [v31 setObject:v11 forKeyedSubscript:v9];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v33;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v33 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v32 + 1) + 8 * i);
                v18 = [v17 service];

                if (v18 == v7)
                {
                  v19 = [v17 ID];
                  v20 = IMChatCanonicalIDSIDsForAddress();

                  v21 = [v6 objectForKeyedSubscript:v20];
                  v22 = [v21 integerValue];

                  if (v22 != 2)
                  {
                    v23 = [v31 objectForKeyedSubscript:v30];
                    [v23 addObject:v17];
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v14);
          }

          v8 = v29 + 1;
        }

        while (v29 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v27);
    }

    v5 = v25;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void sub_1A8360894(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = +[IMService smsService];
  if (v4 == 1)
  {
    v7 = sub_1A83603EC(v5, v3, v6);

    if ([v7 count])
    {
      v8 = [*(a1 + 40) anyObject];
      v9 = [v8 identifier];
      v10 = [v7 objectForKeyedSubscript:v9];
      v11 = [v10 account];

      v12 = IMHandleLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 5: Found best SMS handles for all recipients: %@ for account: %@", &v15, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
LABEL_10:

      goto LABEL_14;
    }
  }

  else
  {
    v7 = sub_1A83605D0(v5, v3, v6);

    if ([v7 count])
    {
      v13 = IMHandleLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 5: Found valid SMS handles for all recipients: %@", &v15, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_10;
    }
  }

  v14 = IMHandleLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Failed to find handles for contacts", &v15, 2u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

uint64_t sub_1A8360B14(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  v3 = [v2 isOperational];

  return v3;
}

uint64_t sub_1A8360B50(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastFinishedMessageDate];
  v6 = [v4 lastFinishedMessageDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_1A8360BC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[IMAccountController sharedInstance];
  v8 = [v7 accountForUniqueID:v6];

  v9 = +[IMAccountController sharedInstance];
  v10 = [v9 accountForUniqueID:v5];

  v11 = *(a1 + 32);
  v12 = [v8 service];
  v13 = [v12 name];
  v14 = [v11 objectForKeyedSubscript:v13];

  v15 = *(a1 + 32);
  v16 = [v10 service];
  v17 = [v16 name];
  v18 = [v15 objectForKeyedSubscript:v17];

  if (!v14)
  {
    v14 = &unk_1F1BA1848;
  }

  if (!v18)
  {
    v18 = &unk_1F1BA1848;
  }

  v19 = [v14 compare:v18];

  return v19;
}

id sub_1A8360D10(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = IMChatCanonicalIDSIDsForAddress();

  return v3;
}

void sub_1A8360D60(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conversationManager];
  [v3 addDelegate:*v2 queue:MEMORY[0x1E69E96A0]];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Posting TUConversations loaded notification for all active conversation we have", buf, 2u);
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [*(a1 + 32) conversationManager];
  v6 = [v5 activeConversations];

  v7 = [v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) _postMultiWayStateChangedNotification:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

id sub_1A8361964()
{
  v0 = qword_1ED767708;
  if (!qword_1ED767708)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = qword_1ED767708;
    qword_1ED767708 = v1;

    v0 = qword_1ED767708;
  }

  return v0;
}

id IMCopyGUIDForChatOnAccount(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 internalName];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isOneChatEnabled];

  if (v6)
  {
    v7 = *MEMORY[0x1E69A7AC8];

    v4 = v7;
  }

  v8 = [v3 chatIdentifier];
  [v3 chatStyle];

  v9 = IMCopyGUIDForChat();

  return v9;
}

id IMFormattedDisplayStringForIDWithCountryCodeInAddressBook(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (![v5 length])
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v8 = [v7 fetchCNContactForHandleWithID:v5];

  v9 = [MEMORY[0x1E69A7FD0] displayNameForContact:v8];
  if (![v9 length])
  {

LABEL_7:
    v9 = IMFormattedDisplayStringForIDWithCountryCode();
    goto LABEL_8;
  }

  if (a3)
  {
    *a3 = 1;
  }

LABEL_8:

  return v9;
}

id IMFormattedDisplayStringForIDWithAccountInAddressBook(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  if ([v5 length])
  {
    v7 = +[IMAccountController sharedInstance];
    v8 = [v7 accountForUniqueID:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 countryCode];
  v10 = IMFormattedDisplayStringForIDWithCountryCodeInAddressBook(v6, v9, a3);

  return v10;
}

id IMUnformattedDisplayStringForIDWithCountryCodeInAddressBook(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (![v5 length])
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v8 = [v7 fetchCNContactForHandleWithID:v5];

  v9 = [MEMORY[0x1E69A7FD0] displayNameForContact:v8];
  if (![v9 length])
  {

LABEL_7:
    v9 = IMUnformattedDisplayStringForIDWithCountryCode();
    goto LABEL_8;
  }

  if (a3)
  {
    *a3 = 1;
  }

LABEL_8:

  return v9;
}

id IMUnformattedDisplayStringForIDWithAccountInAddressBook(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  if ([v5 length])
  {
    v7 = +[IMAccountController sharedInstance];
    v8 = [v7 accountForUniqueID:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 countryCode];
  v10 = IMUnformattedDisplayStringForIDWithCountryCodeInAddressBook(v6, v9, a3);

  return v10;
}

void sub_1A8361E18(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = [a1 IMCoreSetupTimingCollection];
  if (v1)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = qword_1ED7677F0;
        _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "IMCore setup timing: %@", &v4, 0xCu);
      }
    }

    v3 = qword_1ED7677F0;
    qword_1ED7677F0 = 0;
  }
}

id IMCoreLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_1A8361964();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:@"IMCoreLocalizable"];

  return v6;
}

uint64_t IMIsEnrolledInContactKeyVerification()
{
  v0 = +[IMKeyTransparencyController sharedController];
  v1 = [v0 selfOptedIn];

  return v1;
}

float IMSendProgressProgressForSatellite(void *a1, unint64_t *a2, unint64_t *a3, double *a4, double a5)
{
  v9 = a1;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1A83629C0;
  v22[3] = &unk_1E7813688;
  v22[4] = &v23;
  v22[5] = &v39;
  v22[6] = &v35;
  v22[7] = &v31;
  v22[8] = &v27;
  [v9 enumerateKeysAndObjectsUsingBlock:v22];
  v10 = v36[3] + v40[3];
  v11 = v28[3] + v32[3] + v10;
  if (v28[3] + v32[3])
  {
    v12 = v24[3];
    v13 = v12 / a5;
    if (v12 / a5 > 0.5)
    {
      if (v13 <= 1.0)
      {
        v19 = (v12 - a5 * 0.5) * 0.3 / (a5 * 0.5) + 0.5;
      }

      else
      {
        v14 = v12 - a5;
        if (v14 <= 30.0)
        {
          v20 = 0.8;
          v21 = 0.00333333333;
        }

        else if (v14 <= 60.0)
        {
          v14 = v14 + -30.0;
          v20 = 0.9;
          v21 = 0.00166666667;
        }

        else
        {
          if (v14 > 105.0)
          {
            v15 = 0.98;
            if (!a2)
            {
              goto LABEL_19;
            }

            goto LABEL_15;
          }

          v14 = v14 + -60.0;
          v20 = 0.95;
          v21 = 0.000666666667;
        }

        v19 = v20 + v14 * v21;
      }

      v15 = v19;
      if (!a2)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v15 = v13;
    if (!a2)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v11 >= v10 + 1)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = v11;
    }

    *a2 = v16;
    goto LABEL_19;
  }

  if (v11)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  v11 = 0;
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (a3)
  {
    *a3 = v11;
  }

  if (a4)
  {
    v17 = v24[3];
    if (v17 > 0.0)
    {
      *a4 = v17;
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v15;
}

void sub_1A8362978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83629C0(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v16;
    v6 = [v5 clientSendTime];
    if (v6)
    {
      [v5 clientSendTime];
    }

    else
    {
      [v5 time];
    }
    v7 = ;

    [v7 timeIntervalSinceNow];
    v9 = fabs(v8);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 24);
    if (v11 == 0.0)
    {
      *(v10 + 24) = v9;
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 24);
    }

    if (v9 <= v11)
    {
      *(v10 + 24) = v9;
    }

    if ([v5 isSent] && !objc_msgSend(v5, "isLocatingMessage"))
    {
      v12 = 40;
    }

    else if ([v5 errorCode])
    {
      v12 = 48;
    }

    else
    {
      v13 = [v5 fileTransferGUIDs];
      if ([v13 count])
      {

        v12 = 56;
      }

      else
      {
        v14 = [v5 isLocatingMessage];

        v12 = 64;
        if (v14)
        {
          v12 = 56;
        }
      }
    }

    ++*(*(*(a1 + v12) + 8) + 24);
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A8362CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8362CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 payloadData];
    *(*(*(a1 + 32) + 8) + 24) += [v4 length];
  }
}

void sub_1A83631F0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1A8363178);
    }

    JUMPOUT(0x1A8363164);
  }

  _Unwind_Resume(a1);
}

void sub_1A83643A4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1A836432CLL);
    }

    JUMPOUT(0x1A8364318);
  }

  _Unwind_Resume(a1);
}

void sub_1A8365318(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83652E0);
  }

  _Unwind_Resume(a1);
}

void sub_1A8365870(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1A8365800);
    }

    JUMPOUT(0x1A83657ECLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A83658F0()
{
  v0 = objc_opt_new();
  qword_1EB2E9FB8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8365AE0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8365B94;
  block[3] = &unk_1E7810E88;
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A8365B94(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _urlFromAddressList:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

void sub_1A8365BF8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _urlFromAddressList:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1A8365F28(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E20C4(v3, a1, v4);
  }

  if ([v3 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v5 objectForKey:{*(*(&v19 + 1) + 8 * i), v19}];
          v11 = *(a1 + 40);
          v12 = [v10 ID];
          [v11 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v13 = [*(a1 + 32) contact];
    v14 = [v13 phoneNumbers];
    v15 = [v14 firstObject];
    v16 = [v15 value];
    v5 = [v16 stringValue];

    v17 = *(a1 + 40);
    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }

    else
    {
      v18 = [*(a1 + 32) appleID];
      [v17 addObject:v18];
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_1A8366138(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E2150(a1, v2);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_1A8366340()
{
  v0 = objc_alloc_init(IMIDStatusController);
  qword_1ED7678E8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83664C8(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = +[IMServiceImpl allServices];
  v4 = [v3 countByEnumeratingWithState:&v28 objects:buf count:16];
  if (v4)
  {
    v5 = *v29;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 idsServiceNames];
        v9 = [v8 containsObject:v2];

        if (v9)
        {
          v23 = v7;

          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v28 objects:buf count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  if ([v2 isEqualToIgnoringCase:*MEMORY[0x1E69A7AF0]] || objc_msgSend(v2, "isEqualToIgnoringCase:", @"Messenger") || objc_msgSend(v2, "isEqualToIgnoringCase:", @"Madrid"))
  {
    v23 = +[IMServiceImpl iMessageService];
  }

  else if ([v2 isEqualToIgnoringCase:*MEMORY[0x1E69A7AD0]] || objc_msgSend(v2, "isEqualToIgnoringCase:", @"Venice"))
  {
    v23 = +[IMServiceImpl facetimeService];
  }

  else
  {
    v23 = 0;
  }

LABEL_12:

  v10 = [*(a1 + 40) _stripFZIDPrefix];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v34 = v23;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Found IMService %@ for service with name: %@", buf, 0x16u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = +[IMAccountController sharedInstance];
  v14 = [v13 activeAccountsForService:v23];

  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v18;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "   Found account: %@", buf, 0xCu);
          }
        }

        v20 = [v18 existingIMHandleWithID:v10];
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = *(a1 + 40);
            *buf = 138412802;
            v34 = v22;
            v35 = 2112;
            v36 = v10;
            v37 = 2112;
            v38 = v20;
            _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "   URI: %@   ID: %@   Existing handle: %@", buf, 0x20u);
          }
        }

        if (v20)
        {
          [v20 _setIDStatus:*(a1 + 48)];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }
}

id sub_1A8366D24(void *a1)
{
  v1 = [a1 idsServiceNames];
  v2 = [v1 firstObject];

  return v2;
}

uint64_t sub_1A8366D70()
{
  v0 = dispatch_semaphore_create(0);
  qword_1EB2EA408 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A836738C(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received query result for ID: %@  %d", &v7, 0x12u);
    }
  }

  return [*(a1 + 40) _processIDStatusResponseForURI:*(a1 + 32) resultStatus:a2 forService:*(a1 + 48)];
}

id sub_1A8367B08(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [IMFindMyHandle handleWithFMFHandle:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

id sub_1A8367C68(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [IMFindMyHandle handleWithFMLHandle:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

id sub_1A8367DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 handle];

          if (v11)
          {
            v12 = [v10 handle];
            v13 = [IMFindMyHandle handleWithFMLHandle:v12];

            [v4 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

id sub_1A8367F7C(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 fmfHandle];

          if (v9)
          {
            v10 = [v8 fmfHandle];
            [v2 addObject:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];

  return v11;
}

id sub_1A8368114(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 fmlHandle];

          if (v9)
          {
            v10 = [v8 fmlHandle];
            [v2 addObject:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];

  return v11;
}

IMMutableChatContext *sub_1A836B1CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(IMMutableChatContext);
  v6 = [v3 isFiltered] == 2 && (objc_msgSend(v3, "allowsJunkConfiguration") & 1) != 0 || sub_1A8383A6C(v3, v4);
  [(IMMutableChatContext *)v5 setSpam:v6];
  v7 = [v3 isMapKitBusinessChat];
  if ([v3 isStewieChat])
  {
    v7 = 2;
  }

  if ([v3 isStewieSharingChat])
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  [(IMMutableChatContext *)v5 setServiceType:v8];
  -[IMMutableChatContext setFilterCategory:](v5, "setFilterCategory:", [v3 isFiltered]);
  -[IMMutableChatContext setSendersUnknown:](v5, "setSendersUnknown:", [v3 hasKnownParticipantsCache] ^ 1);
  -[IMMutableChatContext setResponded:](v5, "setResponded:", [v3 repliedToChat]);
  v9 = [v3 conversation];
  v10 = [v9 UUID];
  [(IMMutableChatContext *)v5 setActiveTelephonyConversationUUID:v10];

  v11 = [v3 showingEditHistoryForChatItemGUIDs];
  [(IMMutableChatContext *)v5 setShowingEditHistoryForChatItemGUIDs:v11];

  -[IMMutableChatContext setIsChatBot:](v5, "setIsChatBot:", [v3 isChatBot]);
  -[IMMutableChatContext setShowTranslationAlternateText:](v5, "setShowTranslationAlternateText:", [v3 isShowingTranslationText]);

  return v5;
}

uint64_t sub_1A836B364(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isTranscriptSharingEnabled];

  if (v11 && [v7 isStewieSharingChat])
  {
    v12 = v8;
    v13 = v9;
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_19:
      v22 = 0;
LABEL_42:

      goto LABEL_43;
    }

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v12 sender];
        v15 = [v13 sender];
        if ([v14 isEqualToString:v15])
        {
          v16 = [v12 messageSummaryInfo];

          v17 = MEMORY[0x1E69A7270];
          if (v16)
          {
            v18 = [v12 messageSummaryInfo];
            v19 = [v18 _numberForKey:*v17];
            v39 = [v19 intValue];
          }

          else
          {
            v39 = 0;
          }

          v33 = [v13 messageSummaryInfo];

          if (v33)
          {
            v34 = [v13 messageSummaryInfo];
            v35 = [v34 _numberForKey:*v17];
            v36 = [v35 intValue];
          }

          else
          {
            v36 = 0;
          }

          v22 = v39 != v36;
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_42;
      }

      goto LABEL_19;
    }

LABEL_35:
    v22 = 1;
    goto LABEL_42;
  }

  v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v21 = [v20 isMergeBusinessSenderIndiaEnabled];

  if (v21)
  {
    if (a4 == 45 && ([v7 isMergedBusinessThread] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (a4 == 45)
  {
    goto LABEL_18;
  }

  if ([v8 _hasMessageChatItem] && !sub_1A836B760(v8) && (objc_msgSend(v8, "isFromMe") & 1) == 0)
  {
    v12 = [v8 sender];
    v13 = [v9 sender];
    v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v24 = [v23 isMergeBusinessSenderIndiaEnabled];

    if (v24 && [v7 isMergedBusinessThread])
    {
      v25 = [v8 originalUnformattedID];

      v26 = [v9 originalUnformattedID];

      v12 = v25;
      v13 = v26;
    }

    if (v12 && ![v12 isEqualToString:v13])
    {
      goto LABEL_35;
    }

    if (sub_1A836B760(v9))
    {
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v8 replyCountsByPart];
      v28 = [v27 count];

      if (v28)
      {
        goto LABEL_35;
      }
    }

    v29 = [v8 isReply];
    if (v29 != [v9 isReply])
    {
      goto LABEL_35;
    }

    if ([v8 isReply] && objc_msgSend(v9, "isReply"))
    {
      v30 = [v8 threadIdentifier];
      v31 = [v9 threadIdentifier];
      v32 = [v30 isEqualToString:v31];

      v22 = v32 ^ 1u;
      goto LABEL_42;
    }

    if (![v9 _hasMessageChatItem] || sub_1A836C454(v8, v9))
    {
      goto LABEL_35;
    }

    v38 = sub_1A836C59C(v7, v8, v9);

    if (v38)
    {
      v22 = 1;
      goto LABEL_43;
    }
  }

LABEL_18:
  v22 = 0;
LABEL_43:

  return v22;
}

BOOL sub_1A836B760(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 retractedPartIndexes];
    if ([v3 count])
    {
      v4 = [v2 body];
      if ([v4 __im_countMessageParts])
      {
        v5 = 0;
      }

      else
      {
        v6 = [v2 subject];
        v5 = [v6 length] == 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1A836BA64(uint64_t a1, void *a2)
{
  value = a2;
  v3 = [*(a1 + 32) _replyCountChatItemForChatItem:value parentItem:*(a1 + 40) threadOriginatorMessageItem:*(a1 + 48)];
  v4 = *(a1 + 56);
  if (value && v4)
  {
    CFArrayAppendValue(v4, value);
    v4 = *(a1 + 56);
  }

  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFArrayAppendValue(v4, v3);
  }
}

void sub_1A836C0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A836C0F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = [v7 integerValue];
    *a5 = 1;
  }
}

BOOL sub_1A836C454(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ![v3 changeType] && (objc_msgSend(v3, "_senderHandle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "ID"), v6 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(v3, "_otherHandle"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "ID"), v8 = objc_claimAutoreleasedReturnValue(), v7, LOBYTE(v7) = objc_msgSend(v6, "isEqualToString:", v8), v8, v6, (v7))
  {
    v9 = 0;
  }

  else if (v4 && [v3 _hasMessageChatItem])
  {
    v10 = [v3 time];
    v11 = [v4 time];
    [v10 timeIntervalSinceDate:v11];
    v9 = fabs(v12) >= 3600.0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

BOOL sub_1A836C59C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 _service];
  v9 = [v7 _service];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  v10 = v5;
  v11 = v6;
  v12 = v7;
  if ((sub_1A8391C34(v12) & 1) != 0 || sub_1A8391D08(v12)) && ((sub_1A8391C34(v11) & 1) != 0 || (sub_1A8391D08(v11)))
  {
    goto LABEL_9;
  }

  v13 = [v10 interworkingService];
  if (![v13 isEqualToString:*MEMORY[0x1E69A7AE0]])
  {

LABEL_13:
    v17 = [v10 interworkingService];
    if ([v17 isEqualToString:*MEMORY[0x1E69A7AE0]])
    {
      v18 = [v10 interworkingService];
      v19 = [v11 service];
      v23 = v18;
      v20 = v18;
      v21 = v19;
      if ([v20 isEqualToString:v19] && (objc_msgSend(v11, "isFromMe") & 1) == 0 && objc_msgSend(v12, "isFromMe"))
      {
        v22 = sub_1A8391D08(v12);

        if (v22)
        {
          goto LABEL_10;
        }

LABEL_21:
        v15 = v8 != v9;
        goto LABEL_11;
      }
    }

    goto LABEL_21;
  }

  v14 = sub_1A8391D08(v11);

  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:

LABEL_10:
  v15 = 0;
LABEL_11:

  return v15;
}

BOOL sub_1A836C8D4(void *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (![v3 cachedShouldShowReportSpam])
  {
    v7 = v3;
    v8 = v4;
    v9 = [v8 __imArrayByFilteringWithBlock:&unk_1F1B6F240];
    if (![v9 count])
    {
      goto LABEL_38;
    }

    v10 = [v9 firstObject];
    v11 = [v10 isFromMe];

    if (v11 & 1) != 0 || ([v7 shouldBeAllowListed] & 1) != 0 || objc_msgSend(v7, "isOscarChat") && (objc_msgSend(v7, "allowsJunkConfiguration"))
    {
      goto LABEL_38;
    }

    if ([v7 isRecovered])
    {
      goto LABEL_38;
    }

    v36 = v7;
    v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v13 = [v12 isModernFilteringEnabled];

    v14 = v36;
    v15 = [v36 isFiltered];
    if (v13)
    {
      if (v15 == 2 && ([v36 allowsJunkConfiguration] & 1) != 0)
      {
        goto LABEL_37;
      }
    }

    else if (v15 == 2 && (IMIsOscarEnabled() & 1) != 0)
    {
      goto LABEL_37;
    }

    if ([v36 isStewieChat] & 1) != 0 || (objc_msgSend(v36, "isStewieSharingChat"))
    {
      goto LABEL_38;
    }

    if ([v36 isBusinessChat])
    {
      if ([v36 containsActiveBIASession] && (objc_msgSend(v36, "hasSentMessageToBusiness") & 1) == 0)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_87;
        }

        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *v43 = 0;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Chat containsActiveBIASession, showing Report Junk", v43, 2u);
        }

        goto LABEL_31;
      }

      v14 = [v36 account];
      v16 = [v14 service];
      v17 = +[IMService rcsService];
      if (v16 != v17 || ([v36 isChatBot] & 1) == 0)
      {

LABEL_37:
        goto LABEL_38;
      }

      v18 = [v36 lastSentMessage];

      if (!v18)
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *v43 = 0;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Chat is RCS chatbot, showing Report Junk", v43, 2u);
          }

LABEL_31:
        }

LABEL_87:

        v20 = 2;
LABEL_39:
        [v7 setCachedShouldShowReportSpam:v20];
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [v7 cachedShouldShowSpam];
            *buf = 134218242;
            v46 = v22;
            v47 = 2112;
            v48 = v7;
            _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Updated cachedShouldShowReportSpam to %ld for %@", buf, 0x16u);
          }
        }

        goto LABEL_43;
      }

LABEL_38:

      v20 = 1;
      goto LABEL_39;
    }

    if ([v36 isSMS])
    {
      if (IMSMSReportSpamExtensionAvailable())
      {
        if ((sub_1A83837D8(v36) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (!sub_1A8392330(v36))
      {
        goto LABEL_38;
      }
    }

    v24 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v25 = [v24 isIntroductionsEnabled];

    if (v25 && (([v36 shouldShowIntroductionsButtons] & 1) != 0 || objc_msgSend(MEMORY[0x1E69A82A0], "isFilterUnknownSendersEnabled") && !objc_msgSend(v36, "isFiltered")) || (objc_msgSend(v36, "hasKnownParticipants") & 1) != 0)
    {
      goto LABEL_38;
    }

    if (([v36 hasSurfRequest] & 1) == 0)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_1A83923AC;
      v41[3] = &unk_1E78129A8;
      v42 = v36;
      [v9 enumerateObjectsUsingBlock:v41];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v9;
    v26 = [obj countByEnumeratingWithState:&v37 objects:buf count:16];
    if (v26)
    {
      v27 = 0;
      v28 = *v38;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v37 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v30 isFromMe])
          {
            if (v27 > 1)
            {
              v31 = 1;
              goto LABEL_70;
            }

            ++v27;
          }
        }

        v26 = [obj countByEnumeratingWithState:&v37 objects:buf count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v31 = 0;
LABEL_70:

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = @"NO";
        if (v31)
        {
          v33 = @"YES";
        }

        *v43 = 138412290;
        v44 = v33;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Has more than 3 replies? : %@", v43, 0xCu);
      }
    }

    if (v31)
    {
      if (![v36 hasSurfRequest])
      {
        goto LABEL_38;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_87;
      }

      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *v43 = 0;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Chat has surf request, showing Report Junk", v43, 2u);
      }
    }

    else
    {
      if ([v36 shouldBeAllowListed])
      {
        goto LABEL_38;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_87;
      }

      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *v43 = 0;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "By default, showing Report Junk", v43, 2u);
      }
    }

    goto LABEL_87;
  }

  if ([v3 cachedShouldShowReportSpam] != 2)
  {
LABEL_43:
    v6 = [v3 cachedShouldShowReportSpam] == 2;
    goto LABEL_44;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Showing report spam, cached value", buf, 2u);
    }
  }

  v6 = 1;
LABEL_44:

  return v6;
}

void sub_1A836CFD0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A836CFB4);
  }

  _Unwind_Resume(a1);
}

id sub_1A836DD28(void *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 isReplyContextPreview])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 guid];
    v7 = IMAssociatedMessageDecodeGUID();
    v8 = [v4 objectsForKey:v7];
    if (v8)
    {
      v38 = v7;
      v39 = v6;
      v40 = v4;
      v9 = [v3 index];
      v10 = [v3 messagePartRange];
      v12 = v11;
      v41 = v3;
      v13 = [v3 originalMessagePartRange];
      v15 = v14;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v37 = v8;
      v16 = v8;
      v17 = [v16 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = v15;
        v20 = 0;
        v21 = *v48;
        v45 = v12;
        v46 = v10;
        if (v10)
        {
          v22 = 0;
        }

        else
        {
          v22 = v12 == 0x7FFFFFFFFFFFFFFFLL;
        }

        v23 = v22;
        v43 = v19;
        v44 = v13;
        if (v13)
        {
          v24 = 0;
        }

        else
        {
          v24 = v19 == 0x7FFFFFFFFFFFFFFFLL;
        }

        v25 = v24;
        v42 = v23 | v25;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v48 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v27 = *(*(&v47 + 1) + 8 * i);
            v28 = [v27 associatedMessageGUID];
            v29 = IMAssociatedMessageDecodePartIndex();
            v30 = [v27 associatedMessageRange];
            v32 = v29 != 0x7FFFFFFFFFFFFFFFLL && v29 == v9;
            if (v32 || v31 && (v30 == v46 ? (v33 = v31 == v45) : (v33 = 0), v33 || (v30 == v44 ? (v34 = v31 == v43) : (v34 = 0), !v34 ? (v35 = 0) : (v35 = 1), ((v35 | v42) & 1) != 0)))
            {
              if (!v20)
              {
                v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v20 addObject:v27];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v18);
      }

      else
      {
        v20 = 0;
      }

      v5 = [v20 copy];
      v4 = v40;
      v3 = v41;
      v7 = v38;
      v6 = v39;
      v8 = v37;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id sub_1A836DFBC(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v9 = v8;
          v10 = [v9 tapback];
          v11 = [v10 isRemoved];

          if ((v11 & 1) == 0)
          {
            v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
            v13 = [v12 isEmojiTapbacksEnabled];

            if ((v13 & 1) != 0 || ([v9 tapback], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "associatedMessageType"), v14, (v15 - 3000) < 6) || (v15 - 2000) <= 5)
            {
              [v18 addObject:v9];
            }
          }
        }

        else
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  if ([v18 count])
  {
    v16 = [[IMAggregateAcknowledgmentChatItem alloc] _initWithAcknowledgments:v18];
    [v2 addObject:v16];
  }

  return v2;
}

uint64_t sub_1A8381554(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8391B9C;
  v8[3] = &unk_1E78117B0;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [v3 enumerateObjectsWithOptions:2 usingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1A8381634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A838164C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[4];
  v16 = v4;
  v6 = [v4 guid];
  v7 = [v5 objectForKey:v6];
  if (v7)
  {
  }

  else
  {
    v8 = *(a1[5] + 16);
    v9 = [v16 originalMessageGUID];
    v10 = sub_1A8381554(v8, v9);

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = *(*(a1[6] + 8) + 40);
      v12 = v16;
      if (!v11)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v14 = *(a1[6] + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v12 = v16;
        v11 = *(*(a1[6] + 8) + 40);
      }

      [v11 addObject:v12];
    }
  }
}

uint64_t sub_1A838174C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 messageID];
  v6 = [v4 messageID];

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_1A83817A4(uint64_t a1, void *a2, uint64_t a3)
{
  v78 = a2;
  v6 = objc_opt_class();
  v7 = v6;
  if (v6 == *(a1 + 352))
  {
    v9 = *(a1 + 64);
LABEL_63:
    *(*(v9 + 8) + 24) = a3;
    goto LABEL_64;
  }

  if (v6 == *(a1 + 360))
  {
LABEL_29:
    v9 = *(a1 + 72);
    goto LABEL_63;
  }

  if (v6 == *(a1 + 368))
  {
    v9 = *(a1 + 80);
    goto LABEL_63;
  }

  if (v6 != *(a1 + 376))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    if ([WeakRetained hasKnownParticipantsCache] && v7 == *(a1 + 384))
    {
      v11 = [v78 isFromMe];

      if ((v11 & 1) == 0)
      {
        v12 = v78;
        v13 = +[IMFileTransferCenter sharedInstance];
        v14 = [v12 transferGUID];
        v15 = [v13 transferForGUID:v14];

        v16 = [v15 type];
        [v15 previewGenerationState];
        v17 = objc_loadWeakRetained((*(a1 + 32) + 8));
        [v17 hasKnownParticipantsCache];
        LODWORD(v14) = IMShouldAllowInteractionlessUsageOfUTITypeWithPreviewGenerationState();

        if (v14)
        {
          if ([v12 isPlayed])
          {
            v18 = *(*(a1 + 200) + 8);
            v20 = *(v18 + 24);
            v19 = (v18 + 24);
            if (v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_140;
            }
          }

          else
          {
            v56 = *(*(a1 + 176) + 8);
            if (*(v56 + 24) == 0x7FFFFFFFFFFFFFFFLL)
            {
              *(v56 + 24) = a3 + 1;
            }

            ++*(*(*(a1 + 184) + 8) + 24);
            v57 = *(*(a1 + 192) + 8);
            v58 = *(v57 + 24);
            v19 = (v57 + 24);
            if (v58 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_140;
            }
          }

          *v19 = a3 + 1;
        }

LABEL_140:

LABEL_141:
        goto LABEL_64;
      }
    }

    else
    {
    }

    if (*(*(*(a1 + 208) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 216) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 224) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 232) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 240) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 248) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL || ![v7 isSubclassOfClass:*(a1 + 392)] || (objc_msgSend(v78, "isReplyContextPreview") & 1) != 0 || (objc_msgSend(v78, "isEditedMessageHistory") & 1) != 0)
    {
      if (v7 == *(a1 + 400))
      {
        v9 = *(a1 + 272);
        goto LABEL_63;
      }

      if (v7 == *(a1 + 408))
      {
        v9 = *(a1 + 280);
        goto LABEL_63;
      }

      if (v7 == *(a1 + 416))
      {
        v9 = *(a1 + 288);
        goto LABEL_63;
      }

      if (v7 == *(a1 + 424))
      {
        v9 = *(a1 + 296);
        goto LABEL_63;
      }

      if (v7 == *(a1 + 432))
      {
        v9 = *(a1 + 304);
        goto LABEL_63;
      }

      if (v7 == *(a1 + 440))
      {
        v9 = *(a1 + 312);
        goto LABEL_63;
      }

      if (v7 == *(a1 + 448))
      {
        v9 = *(a1 + 320);
        goto LABEL_63;
      }

      if (v7 == *(a1 + 456))
      {
        v9 = *(a1 + 328);
        goto LABEL_63;
      }

      if (v7 != *(a1 + 360))
      {
        if (v7 != *(a1 + 464))
        {
          goto LABEL_64;
        }

        v9 = *(a1 + 336);
        goto LABEL_63;
      }

      goto LABEL_29;
    }

    v12 = [v78 _item];
    if (![v12 isFromMe] || v12 == *(*(*(a1 + 160) + 8) + 40))
    {
      if (([v12 isFromMe] & 1) == 0 && (objc_msgSend(v12, "isAutoReply") & 1) == 0)
      {
        *(*(*(a1 + 256) + 8) + 24) = 1;
      }

      goto LABEL_141;
    }

    v21 = *(a1 + 40);
    v22 = [v12 guid];
    if ([v21 countForKey:v22])
    {
      v23 = *(*(*(a1 + 232) + 8) + 24);

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = a3 + 1;
        v25 = *(a1 + 232);
LABEL_46:
        *(*(v25 + 8) + 24) = v24;
        goto LABEL_137;
      }
    }

    else
    {
    }

    if ([v12 isPlayed])
    {
      if ([v12 isExpirable])
      {
        v59 = *(*(a1 + 224) + 8);
        if (*(v59 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          *(v59 + 24) = a3 + 1;
          goto LABEL_137;
        }
      }
    }

    if ([v12 isRead])
    {
      v60 = [v12 isExpirable];
      v61 = v60;
      if (v60)
      {
        v62 = [v12 service];
        v3 = [IMService serviceWithName:v62];
        if (([v3 supportsCapability:*MEMORY[0x1E69A7998]] & 1) != 0 || (v63 = (a1 + 216), *(*(*(a1 + 216) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL))
        {

          goto LABEL_120;
        }

        [v12 service];
      }

      else
      {
        v63 = (a1 + 216);
        if (*(*(*(a1 + 216) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_120;
        }

        [v12 service];
      }
      v64 = ;
      v65 = [IMService serviceWithName:v64];
      v66 = [v65 supportsCapability:*MEMORY[0x1E69A7A08]];

      if (v61)
      {

        if (v66)
        {
          goto LABEL_126;
        }
      }

      else if (v66)
      {
LABEL_126:
        v24 = a3 + 1;
        v25 = *v63;
        goto LABEL_46;
      }
    }

LABEL_120:
    if (*(*(*(a1 + 208) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL || *(*(*(a1 + 240) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL || *(*(*(a1 + 248) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_137:
      v72 = *(a1 + 32);
      v15 = [v72 chat];
      if ([v72 _shouldAppendSentViaSatelliteForChat:v15 message:v12])
      {
        v73 = *(*(*(a1 + 264) + 8) + 24);

        if (v73 == 0x7FFFFFFFFFFFFFFFLL)
        {
          *(*(*(a1 + 264) + 8) + 24) = a3 + 1;
        }

        goto LABEL_141;
      }

      goto LABEL_140;
    }

    v67 = [v12 time];
    [v67 timeIntervalSinceNow];
    v69 = v68;

    v70 = [v12 scheduleType] == 2 && objc_msgSend(v12, "scheduleState") == 2;
    if ([v12 didNotifyRecipient])
    {
      v24 = a3 + 1;
LABEL_130:
      v25 = *(a1 + 248);
      goto LABEL_46;
    }

    v71 = fabs(v69);
    if (*(a1 + 480) == 1 && [v12 wasDeliveredQuietly] && v71 <= 86400.0 && (*(*(*(a1 + 256) + 8) + 24) & 1) == 0)
    {
      v24 = a3 + 1;
    }

    else
    {
      if (![v12 isDelivered] || ((objc_msgSend(v12, "isPendingSatelliteSend") | v70) & 1) != 0)
      {
        goto LABEL_137;
      }

      if (*(a1 + 480) != 1 || v71 > 86400.0 || (*(*(*(a1 + 256) + 8) + 24) & 1) != 0)
      {
        v24 = a3 + 1;
LABEL_146:
        v25 = *(a1 + 208);
        goto LABEL_46;
      }

      v74 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v75 = sub_1A83822B4(v12, v74, *(a1 + 48));

      v24 = a3 + 1;
      if (!v75)
      {
        goto LABEL_146;
      }

      if (v75 == 2)
      {
        goto LABEL_130;
      }
    }

    v25 = *(a1 + 240);
    goto LABEL_46;
  }

  switch([v78 statusType])
  {
    case 0:
      break;
    case 1:
    case 11:
    case 24:
    case 27:
    case 31:
      v10 = *(a1 + 112);
      goto LABEL_60;
    case 2:
      v10 = *(a1 + 120);
      goto LABEL_60;
    case 3:
      v10 = *(a1 + 128);
      goto LABEL_60;
    case 4:
    case 23:
    case 26:
      v10 = *(a1 + 104);
      goto LABEL_60;
    case 5:
      v10 = *(a1 + 96);
      goto LABEL_60;
    case 6:
      v10 = *(a1 + 88);
      goto LABEL_60;
    case 12:
      v10 = *(a1 + 136);
      goto LABEL_60;
    case 13:
      v10 = *(a1 + 144);
      goto LABEL_60;
    case 35:
      v10 = *(a1 + 152);
LABEL_60:
      *(*(v10 + 8) + 24) = a3;
      break;
    default:
      v53 = [v78 _item];
      v54 = *(*(a1 + 160) + 8);
      v55 = *(v54 + 40);
      *(v54 + 40) = v53;

      break;
  }

  if ([v78 expireStatusType] == 1)
  {
    v9 = *(a1 + 168);
    goto LABEL_63;
  }

LABEL_64:
  if (v7 == *(a1 + 472))
  {
    v26 = [v78 playbackType];
    v27 = v78;
    if (v26)
    {
      v28 = [v78 type];
      v29 = [*(a1 + 56) objectForKey:v28];

      if (!v29)
      {
        v30 = *(a1 + 56);
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [v30 setObject:v31 forKey:v28];
      }

      v27 = v78;
    }

    [v27 setLastChatItemOfPluginType:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v78 setChatInScrutinyMode:*(a1 + 481)];
  }

  if ([v7 isSubclassOfClass:*(a1 + 392)])
  {
    v32 = [v78 _item];
    v33 = [*(a1 + 32) chat];
    v34 = [v33 account];
    v35 = [v34 service];
    if (![v35 supportsCapability:*MEMORY[0x1E69A7A20]])
    {

      goto LABEL_82;
    }

    v36 = *(*(*(a1 + 344) + 8) + 24);

    if (v36 != 1)
    {
      goto LABEL_82;
    }

    v37 = MEMORY[0x1E69A7F70];
    v38 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v39 = [v37 isReportJunkServiceAllowedForMessageItem:v32 junkChatStyle:{objc_msgSend(v38, "chatStyle")}];

    v40 = objc_loadWeakRetained((*(a1 + 32) + 8));
    if ([v40 cachedShouldShowReportSpam] == 1 && v39)
    {
    }

    else
    {
      v41 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v42 = ([v41 cachedShouldShowReportSpam] != 2) | v39;

      if (v42)
      {
LABEL_81:
        *(*(*(a1 + 344) + 8) + 24) = 0;
LABEL_82:
        v44 = [*(a1 + 32) chat];
        v45 = [v44 account];
        v46 = [v45 service];
        if ([v46 supportsCapability:*MEMORY[0x1E69A7A28]])
        {
          v47 = *(*(*(a1 + 344) + 8) + 24);

          if (v47 == 1)
          {
            v48 = objc_loadWeakRetained((*(a1 + 32) + 8));
            if ([v48 cachedShouldShowReportSpam] == 1)
            {
            }

            else
            {
              v49 = objc_loadWeakRetained((*(a1 + 32) + 8));
              v50 = [v49 cachedShouldShowReportSpam];

              if (v50 != 2)
              {
LABEL_89:
                *(*(*(a1 + 344) + 8) + 24) = 0;
                goto LABEL_90;
              }
            }

            v51 = objc_loadWeakRetained((*(a1 + 32) + 8));
            [v51 invalidateSpamIndicatorCachedValues];

            goto LABEL_89;
          }
        }

        else
        {
        }

LABEL_90:
        if ([v32 isFromMe])
        {
          v52 = objc_loadWeakRetained((*(a1 + 32) + 8));
          [v52 invalidateSpamIndicatorCachedValuesIfNeeded];
        }

        goto LABEL_93;
      }
    }

    v43 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v43 invalidateSpamIndicatorCachedValues];

    goto LABEL_81;
  }

LABEL_93:
}

uint64_t sub_1A83822B4(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 time];
  v9 = [v6 availabilityStatusPublishedDate];
  if (v9)
  {
    [v8 timeIntervalSince1970];
    v11 = v10;
    [v9 timeIntervalSince1970];
    if (v11 < v12)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v8;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Message from time %@ is older than status from time %@. Not inferring a delivery type, as we likely have out of date status data.", buf, 0x16u);
        }
      }

      v14 = 0;
      goto LABEL_32;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Status published date is not available (likely cache miss), assuming our status information is up to date", buf, 2u);
    }
  }

  v16 = v7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_1A8259C30;
  v25[4] = sub_1A825AF44;
  v17 = [MEMORY[0x1E695DF00] date];
  v26 = [v17 dateByAddingTimeInterval:-480.0];

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1A8391E3C;
  v32 = &unk_1E7813CE8;
  v33 = v25;
  v34 = &v27;
  v35 = 0x407E000000000000;
  [v16 enumerateObjectsWithOptions:2 usingBlock:buf];
  if (*(v28 + 24) == 1)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Inferring that we are in the urgent message grace period.", v24, 2u);
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Inferring that we are NOT in the urgent message grace period.", v24, 2u);
    }
  }

LABEL_21:
  v19 = *(v28 + 24);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(&v27, 8);
  v20 = IMOSLoggingEnabled();
  if (v19)
  {
    if (v20)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Recipient is unavailable, and we are in an active grace period, inferring sent message will notify recipient, pending receipt", buf, 2u);
      }
    }

    v14 = 2;
  }

  else
  {
    if (v20)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "We are not in an active grace period, inferring this recent message will be delivered quietly, pending receipt", buf, 2u);
      }
    }

    v14 = 1;
  }

LABEL_32:

  return v14;
}

void sub_1A83827B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 unsignedIntegerValue];
  if (v4 < [*(a1 + 32) count])
  {
    v5 = [*(a1 + 32) objectAtIndex:v4];
    if (objc_opt_isKindOfClass())
    {
      [v5 setLastChatItemOfPluginType:1];
    }
  }
}

id sub_1A8382848(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  v3 = [v2 _item];

  v4 = [[IMLoadMoreChatItem alloc] _initWithItem:v3];
  v5 = [*(a1 + 40) chatItemForIMChatItem:v4];

  return v5;
}

id sub_1A83828E4(uint64_t a1)
{
  v2 = [[IMBlackholeChatItem alloc] _initWithItem:0];
  v3 = [*(a1 + 32) chatItemForIMChatItem:v2];

  return v3;
}

id sub_1A8382994(uint64_t a1)
{
  v1 = [*(a1 + 32) _newDeliveredChatItemWithStatusType:1 atIndex:*(*(*(a1 + 48) + 8) + 24) chatItems:*(a1 + 40)];

  return v1;
}

id sub_1A83829EC(uint64_t a1)
{
  v1 = [*(a1 + 32) _newDeliveredChatItemWithStatusType:2 atIndex:*(*(*(a1 + 48) + 8) + 24) chatItems:*(a1 + 40)];

  return v1;
}

id sub_1A8382A44(uint64_t a1)
{
  v1 = [*(a1 + 32) _newDeliveredChatItemWithStatusType:3 atIndex:*(*(*(a1 + 48) + 8) + 24) chatItems:*(a1 + 40)];

  return v1;
}

id sub_1A8382A84(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  v3 = [v2 _item];

  v4 = v3;
  if ([v4 expireState] == 1)
  {
    if (([v4 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v5 >= 3.0))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = [[IMMessageStatusChatItem alloc] _initWithItem:v4 expireStatusType:v6 count:0 statusItemSequenceNumber:0];
    v7 = [*(a1 + 40) chatItemForIMChatItem:v8];
  }

  else
  {

    v7 = 0;
    v8 = v4;
  }

  return v7;
}

id sub_1A8382B90(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = [v3 timeRead];
  v5 = [v3 time];
  v6 = [v4 laterDate:v5];

  v7 = v3;
  v8 = [v7 expireState];
  if (v8 == 1)
  {
    if (([v7 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v9 >= 3.0))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [[IMMessageStatusChatItem alloc] _initWithItem:v7 statusType:4 time:v6 count:0 expireStatusType:v10 statusItemSequenceNumber:0];
  v12 = [*(a1 + 40) chatItemForIMChatItem:v11];
  if (v8 == 1)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(*(*(a1 + 48) + 8) + 24) withObject:v12];

    v12 = 0;
  }

  return v12;
}

id sub_1A8382D14(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  v3 = [v2 _item];

  v4 = v3;
  if ([v4 expireState] == 1)
  {
    if (([v4 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v5 >= 3.0))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = [[IMMessageStatusChatItem alloc] _initWithItem:v4 expireStatusType:v6 count:0 statusItemSequenceNumber:0];
    v7 = [*(a1 + 40) chatItemForIMChatItem:v8];
  }

  else
  {

    v7 = 0;
    v8 = v4;
  }

  return v7;
}

id sub_1A8382E20(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = [v3 timePlayed];
  v5 = [v3 time];
  v6 = [v4 laterDate:v5];

  v7 = v3;
  v8 = [v7 expireState];
  if (v8 == 1)
  {
    if (([v7 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v9 >= 3.0))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [[IMMessageStatusChatItem alloc] _initWithItem:v7 statusType:5 time:v6 count:0 expireStatusType:v10 statusItemSequenceNumber:0];
  v12 = [*(a1 + 40) chatItemForIMChatItem:v11];
  if (v8 == 1)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(*(*(a1 + 48) + 8) + 24) withObject:v12];

    v12 = 0;
  }

  return v12;
}

id sub_1A8382FA4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  v3 = [v2 _item];

  v4 = v3;
  if ([v4 expireState] == 1)
  {
    if (([v4 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v5 >= 3.0))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = [[IMMessageStatusChatItem alloc] _initWithItem:v4 expireStatusType:v6 count:0 statusItemSequenceNumber:0];
    v7 = [*(a1 + 40) chatItemForIMChatItem:v8];
  }

  else
  {

    v7 = 0;
    v8 = v4;
  }

  return v7;
}

id sub_1A83830B0(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 56) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = [v3 guid];
  if (v4 == 45)
  {
    v7 = [v5 peekObjectForKey:v6];
    v8 = [v7 time];

    v9 = 0;
  }

  else
  {
    v9 = [v5 countForKey:v6];
    v8 = 0;
  }

  v10 = v3;
  v11 = [v10 expireState];
  if (v11 == 1)
  {
    if (([v10 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v12 >= 3.0))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [[IMMessageStatusChatItem alloc] _initWithItem:v10 statusType:6 time:v8 count:v9 expireStatusType:v13 statusItemSequenceNumber:0];
  v15 = [*(a1 + 48) chatItemForIMChatItem:v14];
  if (v11 == 1)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(*(*(a1 + 56) + 8) + 24) withObject:v15];

    v15 = 0;
  }

  return v15;
}

id sub_1A8383254(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  if ([v2 expireStatusType] == 1)
  {
    v3 = [v2 _item];
    v4 = [[IMMessageStatusChatItem alloc] _initWithItem:v3 expireStatusType:1 count:*(*(*(a1 + 56) + 8) + 24) statusItemSequenceNumber:0];
    v5 = [*(a1 + 40) chatItemForIMChatItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1A838331C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = [[IMMessageStatusChatItem alloc] _initWithItem:v3 statusType:12 time:0 count:0 statusItemSequenceNumber:0];
  v5 = [*(a1 + 40) chatItemForIMChatItem:v4];

  return v5;
}

id sub_1A83833CC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  if ([v2 statusType] == 12)
  {
    v3 = [v2 _item];
    v4 = [[IMMessageStatusChatItem alloc] _initWithItem:v3 statusType:12 time:0 count:0 statusItemSequenceNumber:0];
    v5 = [*(a1 + 40) chatItemForIMChatItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1A8383490(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  if (*(a1 + 64))
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[IMMessageStatusChatItem alloc] _initWithItem:v3 statusType:v4 time:0 count:*(*(*(a1 + 56) + 8) + 24) expireStatusType:1 statusItemSequenceNumber:0];
  v6 = [*(a1 + 40) chatItemForIMChatItem:v5];
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(*(*(a1 + 48) + 8) + 24) withObject:v6];

    v6 = 0;
  }

  return v6;
}

id sub_1A8383588(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  v3 = [v2 _item];

  v4 = v3;
  if ([v4 expireState] == 1)
  {
    if (([v4 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v5 >= 3.0))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = [[IMMessageStatusChatItem alloc] _initWithItem:v4 expireStatusType:v6 count:0 statusItemSequenceNumber:0];
    v7 = [*(a1 + 40) chatItemForIMChatItem:v8];
  }

  else
  {

    v7 = 0;
    v8 = v4;
  }

  return v7;
}

id sub_1A8383694(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = v3;
  v5 = [v4 expireState];
  if (v5 == 1)
  {
    if (([v4 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v6 >= 3.0))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [[IMMessageStatusChatItem alloc] _initWithItem:v4 statusType:13 time:0 count:0 expireStatusType:v7 statusItemSequenceNumber:0];
  v9 = [*(a1 + 40) chatItemForIMChatItem:v8];
  if (v5 == 1)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(*(*(a1 + 48) + 8) + 24) withObject:v9];

    v9 = 0;
  }

  return v9;
}

uint64_t sub_1A83837D8(void *a1)
{
  v1 = a1;
  v2 = [v1 account];
  v3 = [v2 service];
  v4 = +[IMService smsService];
  if (v3 == v4)
  {
    v6 = [v1 _items];
    ShouldShowReportMessagesForItems = IMSSMSReportSpamShouldShowReportMessagesForItems();
  }

  else
  {
    ShouldShowReportMessagesForItems = 0;
  }

  return ShouldShowReportMessagesForItems;
}

id sub_1A8383878(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v5 = [WeakRetained valueForChatProperty:@"wasAutoDetectedForSpam"];
  v6 = [v5 BOOLValue];

  v7 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v8 = [v7 chatStyle];

  v9 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v10 = [v9 messageCount];

  v11 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v12 = [v11 isBusinessChat];

  v13 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v14 = [v13 unsubscribeText];
  v15 = [v14 length];

  if ([MEMORY[0x1E69A8198] isTextMessageExtensionEnabled])
  {
    v16 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v17 = [v16 valueForChatProperty:@"smsSpamExtensionName"];
  }

  else
  {
    v17 = 0;
  }

  LOBYTE(v21) = v15 != 0;
  v18 = [[IMReportSpamChatItem alloc] _initWithItem:v3 wasReportedAsSpam:v6 isGroup:v8 != 45 hasMultipleMessages:v10 > 1 showReportSMSSpam:*(a1 + 56) isBusinessChat:v12 canUnsubscribe:v21 filterExtension:v17];
  v19 = [*(a1 + 40) chatItemForIMChatItem:v18];

  return v19;
}

BOOL sub_1A8383A6C(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (![v3 cachedShouldShowSpam])
  {
    v5 = v3;
    v6 = [v4 __imArrayByFilteringWithBlock:&unk_1F1B6F200];
    if (![v6 count] || !objc_msgSend(v5, "isFiltered") || (objc_msgSend(v5, "isRecovered") & 1) != 0 || (objc_msgSend(v5, "isBusinessChat") & 1) != 0 || objc_msgSend(v5, "hasKnownParticipants"))
    {

      v7 = 1;
    }

    else
    {
      v11 = [v5 isCategorized];
      v12 = [v5 valueForChatProperty:@"wasDetectedAsiMessageSpam"];
      v13 = [v12 BOOLValue];

      v7 = ((v11 | v13) & 1) != 0 ? 2 : 1;
    }

    [v5 setCachedShouldShowSpam:v7];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 134218242;
        v15 = [v5 cachedShouldShowSpam];
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Updated cachedShouldShowSpam to %ld for %@", &v14, 0x16u);
      }
    }
  }

  v9 = [v3 cachedShouldShowSpam] == 2;

  return v9;
}

id sub_1A8383C5C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v5 = [WeakRetained account];
  v6 = [v5 service];
  v7 = [v6 supportsCapability:*MEMORY[0x1E69A7A48]];

  v8 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v9 = v8;
  if (v7)
  {
    v10 = [v8 valueForChatProperty:@"smsSpamExtensionName"];

    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    v14 = [[IMSMSSpamChatItem alloc] _initWithItem:v3 withExtensionName:v10];
    v15 = [*(a1 + 40) chatItemForIMChatItem:v14];

    goto LABEL_8;
  }

  v11 = [v8 account];
  v12 = [v11 service];
  v13 = [v12 supportsCapability:*MEMORY[0x1E69A78E8]];

  if (v13)
  {
    v10 = @"Apple";
    goto LABEL_6;
  }

LABEL_7:
  v15 = 0;
LABEL_8:

  return v15;
}

id sub_1A8383DE0(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  [WeakRetained markAsHasBeenBlockContact];

  v5 = [IMBlockContactChatItem alloc];
  v6 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v7 = -[IMBlockContactChatItem _initWithItem:chatStyle:](v5, "_initWithItem:chatStyle:", v3, [v6 chatStyle]);

  v8 = [*(a1 + 40) chatItemForIMChatItem:v7];

  return v8;
}

id sub_1A8383EBC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = [*(a1 + 40) _currentChatSubscriptionLabel];
  v5 = [[IMSimSwitchedChatItem alloc] _initWithItem:v3 senderHandle:v4];
  v6 = [*(a1 + 40) chatItemForIMChatItem:v5];

  return v6;
}

id sub_1A8383F74(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = [IMSatelliteUnavailableForServiceChatItem alloc];
  v5 = [*(a1 + 40) serviceForChatItems:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v7 = [WeakRetained recipient];
  v8 = [v7 ID];
  v9 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v10 = -[IMSatelliteUnavailableForServiceChatItem _initWithItem:service:recipientID:isGroupChat:](v4, "_initWithItem:service:recipientID:isGroupChat:", v3, v5, v8, [v9 isGroupChat]);

  v11 = [*(a1 + 40) chatItemForIMChatItem:v10];

  return v11;
}

id sub_1A8384098(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v6 = [WeakRetained isGroupChat];

  if (v6)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v8 = [v7 participants];

    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if (![v13 blockedStatus])
          {
            v14 = objc_loadWeakRetained((*(a1 + 40) + 8));
            v15 = [v13 displayNameForChat:v14];

            [v4 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }
  }

  v16 = [IMBlockedConversationChatItem alloc];
  v17 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v18 = [v17 canLeaveChat];
  v19 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v20 = -[IMBlockedConversationChatItem _initWithItem:blockedRecipients:canLeaveChat:isGroupMessage:](v16, "_initWithItem:blockedRecipients:canLeaveChat:isGroupMessage:", v3, v4, v18, [v19 isGroupChat]);

  v21 = [*(a1 + 40) chatItemForIMChatItem:v20];

  return v21;
}

id sub_1A83842E4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) - 1];
  v3 = [v2 _item];

  v4 = [(IMLoadMoreChatItem *)[IMLoadMoreRecentChatItem alloc] _initWithItem:v3];
  v5 = [*(a1 + 40) chatItemForIMChatItem:v4];

  return v5;
}

void sub_1A8384384(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v5;
    v6 = sub_1A836DD28(v50, *(*(*(a1 + 48) + 8) + 40));
    if (v6)
    {
      v7 = v6;
      v47 = a3;
      v48 = a1;
      v49 = v5;
      v8 = sub_1A836DFBC(v6);

      v9 = v8;
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v57 objects:v62 count:16];
      v52 = v12;
      if (v13)
      {
        v14 = v13;
        v15 = *v58;
        v51 = *v58;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v58 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v57 + 1) + 8 * i);
            if ([v17 associatedMessageType] == 4000)
            {
              v18 = [v17 sender];
              v19 = [v18 ID];

              if (v19)
              {
                v20 = [v11 objectForKey:v19];
                if (v20)
                {
                  v21 = v20;
                  v22 = v10;
                  v23 = v11;
                  v24 = [v20 time];
                  v25 = [v17 time];
                  v26 = [v24 compare:v25];

                  if (v26 == -1)
                  {
                    v27 = v17;

                    v21 = v27;
                  }

                  v11 = v23;
                  v10 = v22;
                  v15 = v51;
                  v12 = v52;
                }

                else
                {
                  v21 = v17;
                }

                [v11 setObject:v21 forKey:v19];
              }

              else
              {
                [v10 addObject:v17];
              }
            }

            else
            {
              [v10 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v14);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v28 = [v11 allValues];
      v29 = [v28 countByEnumeratingWithState:&v53 objects:v61 count:16];
      a1 = v48;
      if (v29)
      {
        v30 = v29;
        v31 = *v54;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v54 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [v10 addObject:{*(*(&v53 + 1) + 8 * j), v47}];
          }

          v30 = [v28 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v30);
      }

      v5 = v49;
      a3 = v47;
    }

    else
    {
      v10 = 0;
    }

    v33 = v50;
    if (([*(a1 + 32) _updateAggregateAttachmentMessagePartAssociatedItems:v50 map:{*(*(*(a1 + 48) + 8) + 40), v47}] & 1) == 0)
    {
      v38 = *(a1 + 32);
      v39 = [v50 visibleAssociatedMessageChatItems];
      LODWORD(v38) = [v38 _shouldReloadChatItemWithAssociatedChatItems:v10 oldAssociatedChatItems:v39];

      if (!v38)
      {
        goto LABEL_42;
      }
    }

    v40 = [v50 copy];
    v41 = v40;
    if (v10)
    {
      v42 = v10;
    }

    else
    {
      v43 = [v50 visibleAssociatedMessageChatItems];
      v44 = [v43 count];

      if (!v44)
      {
LABEL_41:
        v45 = *(a1 + 40);
        v46 = [*(a1 + 32) chatItemForIMChatItem:v41];
        [v45 replaceObjectAtIndex:a3 withObject:v46];

        v33 = v50;
LABEL_42:

LABEL_43:
        goto LABEL_44;
      }

      v40 = v41;
      v42 = 0;
    }

    [v40 _setVisibleAssociatedMessageChatItems:v42];
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v5;
    v34 = *(*(*(a1 + 56) + 8) + 24);
    if (v34 != [v33 _isActionableEclipsed])
    {
      v35 = [v33 copy];
      [v35 _setActionableEclipsed:*(*(*(a1 + 56) + 8) + 24)];
      v36 = *(a1 + 40);
      v37 = [*(a1 + 32) chatItemForIMChatItem:v35];
      [v36 replaceObjectAtIndex:a3 withObject:v37];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_43;
  }

LABEL_44:
}

void sub_1A8384830(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v5 = [*(*(*(a1 + 48) + 8) + 40) isContiguousWithChatItem:v24];
  v6 = [*(*(*(a1 + 48) + 8) + 40) isAttachmentContiguousWithChatItem:v24];
  v7 = *(*(*(a1 + 56) + 8) + 24);
  if ((v7 - 1) >= 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v9 = v7 == 3;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * ((v7 - 1) < 2);
  }

  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);
  if ((v12 - 1) >= 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = 3;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v14 = v12 == 3;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * ((v12 - 1) < 2);
  }

  if (v6)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  v17 = [*(*(*(a1 + 48) + 8) + 40) _isContiguousLoaded];
  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (v17)
  {
    if ([v18 contiguousType] != v11 || objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "attachmentContiguousType") != v16)
    {
      v19 = [*(*(*(a1 + 48) + 8) + 40) copy];
      [v19 _setContiguousType:v11];
      [v19 _setAttachmentContiguousType:v16];
      [v19 _setContiguousLoaded:1];
      v20 = *(a1 + 32);
      v21 = [*(a1 + 40) chatItemForIMChatItem:v19];
      [v20 replaceObjectAtIndex:a3 - 1 withObject:v21];
    }
  }

  else
  {
    [v18 _setContiguousType:v11];
    [*(*(*(a1 + 48) + 8) + 40) _setAttachmentContiguousType:v16];
    [*(*(*(a1 + 48) + 8) + 40) _setContiguousLoaded:1];
  }

  *(*(*(a1 + 56) + 8) + 24) = v11;
  *(*(*(a1 + 64) + 8) + 24) = v16;
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v24;
}

void sub_1A8385300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8385318(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [v9 _item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v9;
  if (isKindOfClass)
  {
    v8 = [v9 _item];
    if ([v8 isSuggestedActionResponse])
    {
      [*(*(*(a1 + 32) + 8) + 40) addIndex:a3];
    }

    v7 = v9;
  }
}

void sub_1A83854C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83854D8(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [v9 _item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v9;
  if (isKindOfClass)
  {
    v8 = [v9 _item];
    if ([v8 isRCSEncryptionTest])
    {
      [*(*(*(a1 + 32) + 8) + 40) addIndex:a3];
    }

    v7 = v9;
  }
}

void sub_1A8385850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8385890(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [v19 _item];
    v7 = [v6 balloonBundleID];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69A68E8]];

    if ((v8 & 1) == 0)
    {
      v9 = *(*(*(a1 + 32) + 8) + 40);
      v10 = [v6 pluginSessionGUID];
      LODWORD(v9) = [v9 containsObject:v10];

      if (v9)
      {
        v11 = [v19 dataSource];
        v12 = [IMTranscriptPluginBreadcrumbChatItem alloc];
        v13 = [v11 statusString];
        v14 = [(IMTranscriptPluginBreadcrumbChatItem *)v12 _initWithItem:v6 datasource:v11 statusText:v13 optionFlags:0];

        v15 = *(*(*(a1 + 40) + 8) + 40);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [v15 setObject:v14 forKey:v16];

LABEL_7:
        goto LABEL_8;
      }

      if ([v6 associatedMessageType] == 2)
      {
        v17 = *(*(*(a1 + 32) + 8) + 40);
        v11 = [v6 pluginSessionGUID];
        [v17 addObject:v11];
        goto LABEL_7;
      }
    }

LABEL_8:
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A8385C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A8385C6C(void *a1, void *a2, uint64_t a3)
{
  v21 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v21 _item];
    v6 = *(*(a1[5] + 8) + 40);
    v7 = [v5 pluginSessionGUID];
    LODWORD(v6) = [v6 containsObject:v7];

    if (v6)
    {
      [*(*(a1[6] + 8) + 40) addIndex:a3];
    }

    else if ([v5 associatedMessageType] == 2)
    {
      v8 = *(*(a1[5] + 8) + 40);
      v9 = [v5 pluginSessionGUID];
      [v8 addObject:v9];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v21;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [*(*(a1[7] + 8) + 40) dataSource];
  v13 = [v11 dataSource];
  v14 = [v12 isEqual:v13];

  v15 = 0;
  v16 = *(a1[8] + 8);
  if (v14)
  {
    v15 = *(v16 + 24) + 1;
  }

  *(v16 + 24) = v15;
  if (*(*(a1[8] + 8) + 24) < 3uLL)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v18 = [WeakRetained account];
    [v11 configureStatusTextWithAccount:v18];
  }

  else
  {
    [*(*(a1[6] + 8) + 40) addIndex:a3];
  }

  v19 = *(a1[7] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v11;
}

void sub_1A8385F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8385F80(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v10;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 dataSource], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isShowingLatestMessageAsBreadcrumb"), v7, (v8 & 1) == 0))
    {
      [*(*(*(a1 + 32) + 8) + 40) addIndex:a3];
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

uint64_t sub_1A83863DC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1A8386CF4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a1;
  v11 = [a2 _item];
  if (a3 < 1)
  {
    v12 = 0;
LABEL_7:
    v13 = [[IMPhotoAttachmentStatusChatItem alloc] _initWithItem:v11 numberOfPhotos:a4 numberOfVideos:a5 numberOfSavedAssets:a6];
    [v14 insertObject:v13 atIndex:a3];
    goto LABEL_8;
  }

  v12 = [v14 objectAtIndexedSubscript:a3 - 1];
  if (!v12)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  if ([v12 wouldBeEqualIfInitializedWithItem:v11 numberOfPhotos:a4 numberOfVideos:a5 numberOfSavedAssets:a6])
  {
    goto LABEL_9;
  }

  v13 = [[IMPhotoAttachmentStatusChatItem alloc] _initWithItem:v11 numberOfPhotos:a4 numberOfVideos:a5 numberOfSavedAssets:a6];
  [v14 replaceObjectAtIndex:a3 - 1 withObject:v13];
LABEL_8:

LABEL_9:
}

void sub_1A8386E3C(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [v4 _item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 transferGUIDs];
  }

  else
  {
    v7 = [v4 transferGUID];
    v8 = v7;
    if (v7)
    {
      v41[0] = v7;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    }

    else
    {
      v6 = 0;
    }
  }

  v31 = v5;
  v35 = v4;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v17 = +[IMFileTransferCenter sharedInstance];
        v18 = [v17 transferForGUID:v16];

        v19 = [v18 filename];
        v20 = IMUTITypeForFilename();

        if (IMUTITypeIsPhoto())
        {
          ++v13;
        }

        else
        {
          v12 += IMUTITypeIsVideo();
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v13 | v12)
  {
    v21 = v31;
    v22 = [v31 message];
    v23 = v35;
    v24 = [IMPhotoLibraryPersistenceManager photosSyndicationIdentifiersForMessage:v22 transcriptChatItem:v35];

    v25 = +[IMPhotoLibraryPersistenceManager sharedInstance];
    v26 = [MEMORY[0x1E695DFD8] setWithArray:v24];
    v27 = [v25 cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:v26 shouldFetchAndNotifyAsNeeded:1 didStartFetch:0];

    v29 = a3;
    v28 = a4;
    v30 = a2;
  }

  else
  {
    v27 = 0;
    v28 = a4;
    v23 = v35;
    v30 = a2;
    v29 = a3;
    v21 = v31;
  }

  *v30 = v13;
  *v29 = v12;
  *v28 = v27;
}

void sub_1A8387E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *sub_1A8387F18(_BYTE *result, void *a2)
{
  if (result[48] == 1)
  {
    v2 = result;
    result = [a2 commSafetySensitive];
    if (result == 1)
    {
      v3 = 8;
      if (*(*(*(v2 + 4) + 8) + 24))
      {
        v3 = 9;
      }

      *(*(*(v2 + 5) + 8) + 24) = v3;
      *(*(*(v2 + 4) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_1A8388220(void *a1, void *a2, uint64_t a3)
{
  v12 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v12;
    if (([v6 isEditedMessageHistory] & 1) == 0)
    {
      v7 = [v6 guid];
      WeakRetained = objc_loadWeakRetained((a1[4] + 8));
      v9 = [WeakRetained isShowingEditHistoryForChatItemGUID:v7];

      if (v9 != [v6 isShowingEditHistory])
      {
        [*(*(a1[5] + 8) + 40) addIndex:a3];
        v10 = [v6 copyWithIsShowingEditHistory:v9];
        [*(*(a1[6] + 8) + 40) addObject:v10];
      }
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A83884FC(void *a1, void *a2, uint64_t a3)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = v9;
      WeakRetained = objc_loadWeakRetained((a1[4] + 8));
      v7 = [WeakRetained isShowingTranslationText];

      if (v7 != [v5 showTranslationAlternateText])
      {
        [*(*(a1[5] + 8) + 40) addIndex:a3];
        v8 = [v5 copyWithShowTranslationAlternateText:v7];
        [*(*(a1[6] + 8) + 40) addObject:v8];
      }
    }
  }
}

void sub_1A838894C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83889A8(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v28;
    v7 = [v6 isEditedMessagePart];
    v8 = [v6 isReplyContextPreview];
    v9 = [v6 isEditedMessageHistory];
    if ([v6 scheduleType] == 2)
    {
      v10 = [v6 isFailedRetractMessagePart];
    }

    else
    {
      v10 = 0;
    }

    if (!(v8 & 1 | (((v7 | v10) & 1) == 0) | v9 & 1))
    {
      v11 = a3 + 1;
      if (a3 + 1 >= [*(a1 + 32) count])
      {
LABEL_14:
        v16 = 0;
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        while (1)
        {
          v12 = [*(a1 + 32) objectAtIndexedSubscript:v11];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v13 = v12;
          v14 = [v13 statusType];
          if (v14 <= 0x28 && ((1 << v14) & 0x1F3FFC00816) != 0)
          {
            v16 = v14;

            goto LABEL_15;
          }

          if (++v11 >= [*(a1 + 32) count])
          {
            goto LABEL_14;
          }
        }

        v16 = 0;
        v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
      }

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [*(a1 + 40) isDeliveredStatusType:v16];
        v18 = [*(a1 + 40) isReadStatusType:v16];
        v19 = v18;
        if ((v17 & 1) != 0 || v18)
        {
          for (i = v11 + 1; i < [*(a1 + 32) count]; ++i)
          {
            v21 = [*(a1 + 32) objectAtIndexedSubscript:i];
            v22 = [*(a1 + 40) isDeliveredStatusItem:v21];
            v23 = [*(a1 + 40) isReadStatusItem:v21];
            if (v17)
            {
              if ((v22 | v23))
              {
                v24 = 0;
              }

              else
              {
                v24 = v16;
              }

              if ((((v22 | v23) | v19 ^ 1) & 1) == 0)
              {
LABEL_27:
                if (v23)
                {
                  v16 = 0;
                }

                goto LABEL_29;
              }

              v16 = v24;
            }

            else if (v19)
            {
              goto LABEL_27;
            }

LABEL_29:
          }
        }
      }

      v25 = [*(a1 + 40) _editedStatusItemForEditedMessagePartChatItem:v6 combiningStatusType:v16];
      if (v25)
      {
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [*(*(*(a1 + 64) + 8) + 40) addIndex:{a3 + objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count") + 1}];
          v26 = 72;
        }

        else
        {
          [*(*(*(a1 + 48) + 8) + 40) addIndex:v11];
          v26 = 56;
        }

        [*(*(*(a1 + v26) + 8) + 40) addObject:v25];
      }
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A83890AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A83890EC(uint64_t a1, void *a2, char *a3)
{
  v13 = a2;
  if ([*(a1 + 32) count] - 1 <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  }

  v6 = [*(a1 + 40) _lastItemIndexExcludingWatchReplyOptions:*(a1 + 32)];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v6 == a3)
  {
    v7 = [v13 _item];
    v8 = [v7 isFromMe];

    if (v8)
    {
      *(*(*(a1 + 48) + 8) + 24) = a3;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ([v13 itemIsReplyContextPreview] & 1) == 0 && (objc_msgSend(v13, "isEditedMessageHistory") & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v9 = [v5 layoutGroupIdentifier];
        v10 = [v13 layoutGroupIdentifier];
        v11 = v9 == v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = [*(a1 + 40) _effectControlForChatItem:v13];
      if (v12 && !v11)
      {
        [*(*(*(a1 + 56) + 8) + 40) addObject:v12];
        [*(*(*(a1 + 64) + 8) + 40) addIndex:{&a3[objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")]}];
      }
    }
  }
}

uint64_t sub_1A8389398(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v12;
    v7 = [v6 _item];
    v8 = [v7 guid];
    v9 = [*(a1 + 32) countForObject:v8];
    [*(a1 + 32) addObject:v8];
    if ([v6 statusItemSequenceNumber] != v9)
    {
      v10 = [v6 copyWithStatusItemSequenceNumber:v9];
      [*(a1 + 40) replaceObjectAtIndex:a3 withObject:v10];
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A83895B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83895D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

uint64_t sub_1A83898D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

void sub_1A8389B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8389BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

void sub_1A8389C10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 guid];
    if ([*(a1 + 32) isShowingEditHistoryForChatItemGUID:v7])
    {
      v8 = [v6 messageItem];
      v9 = [v6 index];
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v11 = [WeakRetained _historyToDisplayForMessageItem:v8 partIndex:v9];

      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = sub_1A8389DD4;
      v22 = &unk_1E7813B38;
      v23 = v8;
      v26 = v9;
      v24 = *(a1 + 32);
      v25 = v12;
      v13 = v12;
      v14 = v8;
      [v11 enumerateObjectsUsingBlock:&v19];
      v15 = *(a1 + 40);
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a3, v19, v20, v21, v22}];
      [v15 addObject:v16];

      v17 = *(a1 + 48);
      v18 = [v13 copy];
      [v17 addObject:v18];
    }
  }
}

void sub_1A8389DD4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [IMEditedTextMessagePartHistoricalContentChatItem alloc];
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  LOBYTE(v9) = [*(a1 + 40) isShowingTranslationText];
  v10 = [(IMEditedTextMessagePartHistoricalContentChatItem *)v6 _initWithMessageItem:v8 messagePartIndex:v7 historicalContent:v5 editIndex:a3 messagePartRange:0 subject:0 showTranslationAlternateText:0, v9];

  [*(a1 + 48) addObject:v10];
}

void sub_1A8389E88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unsignedIntegerValue];
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8389F48;
  v7[3] = &unk_1E7813B88;
  v8 = *(a1 + 40);
  v9 = v5;
  [v6 enumerateObjectsWithOptions:2 usingBlock:v7];
}

id sub_1A838A18C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained participantsWithState:16];
  v3 = [v2 firstObject];

  v4 = [[IMSatelliteAvailabilityChatItem alloc] _initWithHandle:v3];

  return v4;
}

void sub_1A838A64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A838A6C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = a3 + 1;
    if (v7 < [*(a1 + 32) count])
    {
      v8 = [*(a1 + 32) objectAtIndex:v7];
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();

      if (v9)
      {
        v10 = [*(a1 + 32) objectAtIndex:v7];
        if ([v10 statusType] == 37 || objc_msgSend(v10, "statusType") == 38 || objc_msgSend(v10, "statusType") == 40)
        {
          [*(*(*(a1 + 40) + 8) + 40) addIndex:v7];
        }
      }
    }
  }
}

void sub_1A838A7EC(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = v6;
        v7 = [v28 balloonBundleID];
        v8 = IMBalloonExtensionIDWithSuffix();
        v9 = [v7 isEqualToString:v8];

        if (v9)
        {
          v10 = objc_alloc_init(IMPollHelper);
          v11 = [(IMPollHelper *)v10 synchronousPollOptionCountFromChatItem:v28];
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v30 = v11;
              _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Poll option count: %lu", buf, 0xCu);
            }
          }

          if (v11 >= 12)
          {
            if (IMOSLoggingEnabled())
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Not showing add choice because we are at the maximum option count.", buf, 2u);
              }
            }
          }

          else
          {

            v13 = a3 + 1;
            if (a3 + 1 >= [*(a1 + 32) count])
            {
LABEL_18:
              v16 = 0;
              v13 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              while (1)
              {
                v14 = [*(a1 + 32) objectAtIndexedSubscript:v13];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  break;
                }

                v15 = v14;
                v16 = [v15 statusType];
                if (v16 <= 0x28 && ((1 << v16) & 0x1F3FFC00816) != 0)
                {

                  goto LABEL_25;
                }

                if (++v13 >= [*(a1 + 32) count])
                {
                  goto LABEL_18;
                }
              }

              v16 = 0;
              v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:
            }

            if (v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = [*(a1 + 40) isDeliveredStatusType:v16];
              v27 = [*(a1 + 40) isReadStatusType:v16];
              if ((v19 | v27))
              {
                for (i = v13 + 1; i < [*(a1 + 32) count]; ++i)
                {
                  v21 = [*(a1 + 32) objectAtIndexedSubscript:i];
                  v22 = [*(a1 + 40) isDeliveredStatusItem:v21];
                  v23 = [*(a1 + 40) isReadStatusItem:v21];
                  if (v19)
                  {
                    if ((v22 | v23))
                    {
                      v24 = 0;
                    }

                    else
                    {
                      v24 = v16;
                    }

                    if ((((v22 | v23) | v27 ^ 1) & 1) == 0)
                    {
LABEL_36:
                      if (v23)
                      {
                        v16 = 0;
                      }

                      goto LABEL_38;
                    }

                    v16 = v24;
                  }

                  else if (v27)
                  {
                    goto LABEL_36;
                  }

LABEL_38:
                }
              }
            }

            v25 = [*(a1 + 40) _addChoiceStatusItemForPollMessagePartChatItem:v28 combiningStatusType:v16];
            if (v25)
            {
              if (v13 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [*(*(*(a1 + 64) + 8) + 40) addIndex:{a3 + objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count") + 1}];
                v26 = 72;
              }

              else
              {
                [*(*(*(a1 + 48) + 8) + 40) addIndex:v13];
                v26 = 56;
              }

              [*(*(*(a1 + v26) + 8) + 40) addObject:v25];
            }
          }
        }

        else
        {
        }
      }
    }
  }
}

id sub_1A838AE18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained participantsWithState:16];
  v3 = [v2 firstObject];

  v4 = [[IMSatelliteSuppressedNotificationChatItem alloc] _initWithHandle:v3];

  return v4;
}

uint64_t sub_1A838B02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

void sub_1A838B538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838B5D0(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isFromMe] ^ 1;
  }

  return v3;
}

void sub_1A838B634(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addIndex:a3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
    }
  }
}

void sub_1A838B990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A838B9AC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_1A838BA28(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained isRecipientAbleToDowngradeToSMS];

  v4 = objc_loadWeakRetained((a1[4] + 8));
  v5 = [v4 participantsWithState:16];
  v6 = [v5 firstObject];

  v7 = [IMSMSFallbackStatusChatItem alloc];
  v8 = [*(*(a1[6] + 8) + 40) _item];
  v9 = [(IMSMSFallbackStatusChatItem *)v7 _initWithItem:v8 handle:v6 previousServiceName:a1[5] canSMSReply:v3];

  return v9;
}

void sub_1A838C0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838C17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

void sub_1A838C1E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  v6 = [v19 _item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = v19;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = [v19 _item];
  if (![v9 partCount])
  {
    goto LABEL_10;
  }

  v10 = 0;
  while (1)
  {
    v11 = [v9 translationsForMessagePart:v10];
    if ([v11 count])
    {
      break;
    }

LABEL_7:

    if (++v10 >= [v9 partCount])
    {
      goto LABEL_10;
    }
  }

  v12 = [v11 firstObject];
  v13 = [objc_alloc(MEMORY[0x1E69A8308]) initWithDictionaryRepresentation:v12];
  v14 = [v13 sourceLanguage];
  v15 = [v14 isEqualToString:*(a1 + 32)];

  if ((v15 & 1) == 0)
  {

    goto LABEL_7;
  }

  v16 = [v9 _senderHandle];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  *a4 = 1;
LABEL_10:

  v8 = v19;
LABEL_11:
}

void sub_1A838C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838C618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

void sub_1A838CAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838CB1C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = [*(a1 + 32) addIndex:a3];
    goto LABEL_5;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_5;
  }

  v6 = a1 + 48;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      isKindOfClass = [v8 statusType];
      if (isKindOfClass <= 0x27)
      {
        if (((1 << isKindOfClass) & 0xD80007A) != 0)
        {
          v6 = a1 + 56;
        }

        else if (((1 << isKindOfClass) & 0x8380000004) == 0)
        {
          goto LABEL_5;
        }

        *(*(*v6 + 8) + 24) = 1;
      }
    }
  }

LABEL_5:

  return MEMORY[0x1EEE66BE0](isKindOfClass);
}

uint64_t sub_1A838CC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

uint64_t sub_1A838CF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

uint64_t sub_1A838D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

uint64_t sub_1A838D440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

void sub_1A838D76C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = *(a1 + 32);

    [v7 addIndex:a3];
  }
}

void sub_1A838DE8C(uint64_t a1, void *a2, char *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  if ([v5 count] - 1 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(*(a1 + 40) + 8) + 40) addIndex:a3];
    }
  }
}

void sub_1A838DF64(uint64_t a1, void *a2, char *a3)
{
  v7 = a2;
  if ([*(a1 + 32) count] - 1 <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  }

  v6 = [*(a1 + 40) _attributionChatItemForChatItem:v7];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (([v5 isEqual:v6] & 1) == 0)
      {
        [*(a1 + 32) replaceObjectAtIndex:a3 + 1 withObject:v6];
      }
    }

    else
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
      [*(*(*(a1 + 56) + 8) + 40) addIndex:{&a3[objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")]}];
    }
  }
}

uint64_t sub_1A838E07C(uint64_t a1, void *a2, char *a3)
{
  v31 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v31;
    v30 = [v6 bundleID];
    v7 = [v6 _parentItem];
    v8 = [v7 message];
    v9 = [v8 _imMessageItem];
    v10 = [v9 getCMMState];

    v11 = [v6 attributionType];
    v12 = [v6 attributionType];
    v13 = [v6 isCommSafetySensitiveAttribution];
    v14 = [v6 attributionType];
    v17 = v11 == 6 || v12 == 7 || v10 != 0;
    if (a3)
    {
      v29 = [*(a1 + 32) objectAtIndex:a3 - 1];
    }

    else
    {
      v29 = 0;
    }

    v18 = v17 | v13 | (v14 == 10);
    if ([*(a1 + 32) count] - 1 <= a3)
    {
      v19 = 0;
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v19 = [*(a1 + 32) objectAtIndex:a3 + 1];
      if (v18)
      {
        goto LABEL_20;
      }
    }

    if (([*(*(*(a1 + 48) + 8) + 40) containsObject:v30] & 1) != 0 || (+[IMBalloonPluginAttributionController sharedInstance](IMBalloonPluginAttributionController, "sharedInstance"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "shouldShowAttributionForBundleID:", v30), v20, (v21 & 1) == 0))
    {
      [*(*(*(a1 + 56) + 8) + 40) addIndex:a3];
      v22 = v29;
      goto LABEL_50;
    }

LABEL_20:
    if (v13)
    {
      v22 = v29;
      v23 = [*(a1 + 40) _attributionChatItemForChatItem:v29];
      if (![v23 isCommSafetySensitiveAttribution] || (v24 = objc_msgSend(v23, "attributionType"), v24 != objc_msgSend(v6, "attributionType")))
      {
        [*(*(*(a1 + 56) + 8) + 40) addIndex:a3];
      }
    }

    else
    {
      if (v11 != 6 && v12 != 7 && v14 != 10)
      {
        v22 = v29;
        if (([v30 containsString:*MEMORY[0x1E69A6A20]] & 1) == 0 && (objc_msgSend(v30, "containsString:", *MEMORY[0x1E69A6A08]) & 1) == 0 && v30)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v30];
        }

        goto LABEL_50;
      }

      objc_opt_class();
      v22 = v29;
      if (objc_opt_isKindOfClass())
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }

      v23 = v25;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v19;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      if ([v23 requiresSiriAttribution] && objc_msgSend(v27, "requiresSiriAttribution") && (objc_msgSend(v23, "isContiguousWithChatItem:", v27) & 1) != 0 || objc_msgSend(v23, "requiresFaceTimeAttribution") && objc_msgSend(v27, "requiresFaceTimeAttribution") && (objc_msgSend(v23, "isContiguousWithChatItem:", v27) & 1) != 0 || objc_msgSend(v23, "requiresCriticalMessagingAPIAttribution") && objc_msgSend(v27, "requiresFaceTimeAttribution") && objc_msgSend(v23, "isContiguousWithChatItem:", v27))
      {
        [*(*(*(a1 + 56) + 8) + 40) addIndex:a3];
      }
    }

LABEL_50:
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A838E414(uint64_t a1, void *a2, char *a3)
{
  v7 = a2;
  if (a3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
  }

  else
  {
    v5 = 0;
  }

  if ([*(a1 + 32) count] - 1 <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [*(*(*(a1 + 40) + 8) + 40) addIndex:a3];
    }
  }
}

uint64_t sub_1A838E528(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v34;
    if ([v6 attributionType] != 6)
    {
      if ([v6 attributionType] == 10)
      {
        v8 = [IMMessageAttributionChatItem alloc];
        v9 = [v6 _item];
        v10 = [v6 attributionInfo];
        v11 = -[IMMessageAttributionChatItem _initWithItem:attributionInfo:attributionType:showsLearnMoreLink:statusItemSequenceNumber:](v8, "_initWithItem:attributionInfo:attributionType:showsLearnMoreLink:statusItemSequenceNumber:", v9, v10, [v6 attributionType], *(*(*(a1 + 40) + 8) + 24), 0);

        [*(a1 + 32) replaceObjectAtIndex:a3 withObject:v11];
      }

      goto LABEL_22;
    }

    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
LABEL_15:
      v18 = *(*(*(a1 + 40) + 8) + 24);
      if (v18 != [v6 showsLearnMoreLink])
      {
        v19 = [IMMessageAttributionChatItem alloc];
        v20 = [v6 _item];
        v21 = [v6 attributionInfo];
        v22 = -[IMMessageAttributionChatItem _initWithItem:attributionInfo:attributionType:showsLearnMoreLink:statusItemSequenceNumber:](v19, "_initWithItem:attributionInfo:attributionType:showsLearnMoreLink:statusItemSequenceNumber:", v20, v21, [v6 attributionType], *(*(*(a1 + 40) + 8) + 24), 0);

        [*(a1 + 32) replaceObjectAtIndex:a3 withObject:v22];
        v23 = [v22 _item];
        v24 = [v23 guid];

        v25 = [MEMORY[0x1E695E000] standardUserDefaults];
        v26 = [v25 objectForKey:@"SentWithSiriLearningLinkShownForMessageGUIDs"];

        if (([v26 containsObject:v24] & 1) == 0)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v28 = v27;
          if (v26)
          {
            [v27 addObjectsFromArray:v26];
          }

          [v28 addObject:v24];
          v29 = [MEMORY[0x1E695E000] standardUserDefaults];
          v30 = [v28 copy];
          [v29 setObject:v30 forKey:@"SentWithSiriLearningLinkShownForMessageGUIDs"];
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_22:

      goto LABEL_23;
    }

    v7 = v6;
    if (IMIsRunningInUnitTesting())
    {
LABEL_5:

      goto LABEL_15;
    }

    if (IMIsRunningInMobileSMS())
    {
      v12 = [v7 _item];
      v13 = [v12 guid];

      v14 = [MEMORY[0x1E695E000] standardUserDefaults];
      v15 = [v14 objectForKey:@"SentWithSiriLearningLinkShownForMessageGUIDs"];

      v16 = [v15 lastObject];
      v17 = [v16 isEqualToString:v13];

      if (v17)
      {

        goto LABEL_5;
      }

      if ([v15 count] < 5)
      {
        v31 = [MEMORY[0x1E695E000] standardUserDefaults];
        v32 = [v31 integerForKey:@"SentWithSiriLearningUIShownNumberOfTimes"];

        if (v32 <= 1)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_15;
  }

LABEL_23:

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

uint64_t sub_1A838F810(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A838F8E0;
  v7[3] = &unk_1E7813C20;
  v7[4] = &v8;
  v7[5] = a3;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_1A838F8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838F8E0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_1A838FD38(void *a1)
{
  v1 = [a1 service];
  v2 = [IMServiceImpl serviceWithInternalName:v1];

  return v2;
}

id sub_1A838FD94(void *a1)
{
  if ([a1 isFromMe])
  {
    [a1 _otherHandle];
  }

  else
  {
    [a1 _senderHandle];
  }
  v2 = ;

  return v2;
}

id sub_1A838FDF0(void *a1)
{
  if ([a1 wasDowngraded])
  {
    v2 = [a1 originalServiceName];
    v3 = v2;
    v4 = *MEMORY[0x1E69A7AF0];
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;

    v6 = [IMServiceImpl serviceWithInternalName:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1A838FE88(void *a1)
{
  if (qword_1EB2EA128 != -1)
  {
    sub_1A84E24AC();
  }

  if (byte_1EB2E4788 == 1)
  {
    return [a1 isEmote] ^ 1;
  }

  else
  {
    return 1;
  }
}

id sub_1A838FEEC(void *a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 serviceVariant];
  v6 = [v4 areSendersUnknown];
  v7 = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![v7 isInternalInstall])
  {
LABEL_10:

    goto LABEL_11;
  }

  v8 = IMGetCachedDomainBoolForKey();

  if (!v8)
  {
    goto LABEL_11;
  }

  if (![a1 isCorrupt])
  {
    v10 = [a1 body];
    v7 = [v10 string];

    if ([v7 isEqualToString:@"internal_poison_chatitem_hang"])
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "INTERNAL CHAT ITEM POISON PILL TEST DETECTED - Spinning", buf, 2u);
        }
      }

      while (1)
      {
        sleep(1u);
      }
    }

    if ([v7 isEqualToString:@"internal_poison_chatitem_crash"])
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        sub_1A84E24C0(v45);
      }

      abort();
    }

    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "IMItem is corrupt already, not crashing", buf, 2u);
    }
  }

LABEL_11:
  v46 = 0;
  v11 = [a1 isExtensibleMessageWithPluginPayload:&v46 chatContext:v4];
  v12 = v46;
  if ([a1 isLocatingMessage])
  {
    v13 = [[IMLocatingChatItem alloc] _initWithItem:a1];
LABEL_13:
    v14 = v13;
    goto LABEL_14;
  }

  v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v16 isGroupTypingIndicatorsEnabled] && objc_msgSend(a1, "isGroupTypingMessage"))
  {

    if (v11)
    {
LABEL_18:
      v13 = [[IMGroupTypingChatItem alloc] _initWithItem:a1];
      goto LABEL_13;
    }

    [a1 isTypingMessage];
LABEL_29:
    v21 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([v21 isGroupTypingIndicatorsEnabled] && objc_msgSend(a1, "isTypingMessage"))
    {
      v22 = [a1 isGroupTypingMessage];

      if (v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if ([a1 isTypingMessage] && (objc_msgSend(a1, "isGroupTypingMessage") & 1) == 0)
    {
      v13 = [[IMTypingChatItem alloc] _initWithItem:a1];
      goto LABEL_13;
    }

    if (qword_1EB2EA128 != -1)
    {
      sub_1A84E2520();
    }

    if (byte_1EB2E4788 == 1)
    {
      v23 = [a1 message];
      v24 = [v23 isEmote];

      if (v24)
      {
        v13 = [[IMEmoteMessageChatItem alloc] _initWithItem:a1];
        goto LABEL_13;
      }
    }

    if (!v11 || ([a1 hasDataDetectorResults] & 1) != 0)
    {
      v13 = [IMMessagePartChatItem _newMessagePartsForMessageItem:a1 chatContext:v4];
      goto LABEL_13;
    }

    v25 = +[IMBalloonPluginManager sharedInstance];
    v26 = [v12 pluginSessionGUID];
    v27 = [v12 pluginBundleID];
    v28 = [v25 existingDataSourceForMessageGUID:v26 bundleID:v27];

    v29 = [v28 guidOfLastMessageInSession];
    v30 = [a1 guid];
    if ([v30 isEqualToString:v29])
    {
      v31 = [v28 isShowingLatestMessageAsBreadcrumb];

      if (v31)
      {
        v32 = [IMTranscriptPluginTemporaryBreadcrumbChatItem alloc];
        v33 = [a1 breadcrumbText];
        v34 = [v33 string];
        v14 = [(IMTranscriptPluginBreadcrumbChatItem *)v32 _initWithItem:a1 datasource:v28 statusText:v34 optionFlags:0];

        goto LABEL_63;
      }
    }

    else
    {
    }

    v35 = [v12 pluginBundleID];
    v36 = IMBalloonExtensionIDWithSuffix();
    v37 = [v35 isEqualToString:v36];

    if (v37)
    {
      v38 = [IMMessagePartChatItem _newMessagePartsForMessageItem:a1 chatContext:v4 photosPluginPayload:v12];
    }

    else
    {
      if (!v12 || ([v12 pluginBundleID], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", *MEMORY[0x1E69A6A18]), v39, (v40 & 1) != 0))
      {
        if ([a1 isDeviceActionMessage])
        {
          v41 = [IMMessagePartChatItem _singleChatItemForDeviceActionMessage:a1 context:v4 pluginPayload:v12];
          v47 = v41;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = [v12 pluginBundleID];
              *buf = 138412290;
              v49 = v43;
              _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Failed to find plugin data source for identifier '%@'", buf, 0xCu);
            }
          }

          v14 = 0;
        }

        goto LABEL_63;
      }

      v38 = [[IMTranscriptPluginChatItem alloc] _initWithItem:a1 initialPayload:v12 index:0 messagePartRange:0 parentChatHasKnownParticipants:0x7FFFFFFFFFFFFFFFLL, (v6 ^ 1) & 1u | (v5 == 1)];
    }

    v14 = v38;
LABEL_63:

    goto LABEL_14;
  }

  if (([a1 isTypingMessage] & v11) != 1)
  {
    goto LABEL_29;
  }

  v17 = +[IMBalloonPluginManager sharedInstance];
  v18 = [v17 dataSourceForPluginPayload:v12];

  if (v18)
  {
    v14 = [[IMTypingPluginChatItem alloc] _initWithItem:a1 dataSource:v18];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v12 pluginBundleID];
        *buf = 138412290;
        v49 = v20;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Failed to find plugin data source for identifier '%@'", buf, 0xCu);
      }
    }

    v14 = 0;
  }

LABEL_14:
  return v14;
}

id sub_1A839069C(void *a1)
{
  if ([a1 isPendingSatelliteSend] && (objc_msgSend(a1, "_senderHandle"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "service"), v3 = objc_claimAutoreleasedReturnValue(), +[IMService iMessageService](IMService, "iMessageService"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v2, v3 == v4))
  {
    v6 = +[IMService iMessageLiteService];
  }

  else
  {
    if (![a1 wasDowngraded])
    {
      goto LABEL_9;
    }

    v5 = [a1 originalServiceName];
    if (v5)
    {
      v6 = [IMServiceImpl serviceWithInternalName:v5];
    }

    else
    {
      v7 = [a1 service];
      v6 = [IMServiceImpl serviceWithInternalName:v7];
    }

    if (!v6)
    {
LABEL_9:
      v8 = [a1 _senderHandle];
      v6 = [v8 service];
    }
  }

  return v6;
}

uint64_t sub_1A83907D8(void *a1, uint64_t a2, IMPluginPayload **a3, void *a4)
{
  v6 = a4;
  v7 = [a1 balloonBundleID];
  if ([v7 length])
  {
    v8 = +[IMBalloonPluginManager sharedInstance];
    v9 = [v8 balloonPluginForBundleID:v7];

    if (v9)
    {
      v10 = [a1 retractedPartIndexes];
      if ([v10 count])
      {
        v11 = [a1 payloadData];
        v12 = [v11 length];

        if (!v12)
        {
          v13 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
      }

      v19 = [[IMPluginPayload alloc] initWithMessageItem:a1 chatContext:v6];
      *a3 = v19;

LABEL_12:
      v13 = 1;
      goto LABEL_13;
    }
  }

  if ([a1 hasDataDetectorResults])
  {
    v14 = +[IMBalloonPluginManager sharedInstance];
    v15 = *MEMORY[0x1E69A6A18];
    v16 = [v14 balloonPluginForBundleID:*MEMORY[0x1E69A6A18]];

    if (v16)
    {
      v9 = objc_alloc_init(IMPluginPayload);
      v17 = [a1 guid];
      [(IMPluginPayload *)v9 setMessageGUID:v17];

      [(IMPluginPayload *)v9 setPluginBundleID:v15];
      v18 = v9;
      *a3 = v9;
      goto LABEL_12;
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

uint64_t sub_1A839097C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [IMParticipantChangeChatItem alloc];
  v6 = [a1 _senderHandle];
  v7 = [a1 _otherHandle];
  v8 = [(IMParticipantChangeChatItem *)v5 _initWithItem:a1 sender:v6 otherHandle:v7 context:v4];

  return v8;
}

uint64_t sub_1A8390A14(void *a1)
{
  v2 = [IMParticipantChangeChatItem alloc];
  v3 = [a1 _senderHandle];
  v4 = [a1 _otherHandle];
  v5 = [(IMParticipantChangeChatItem *)v2 _initWithItem:a1 sender:v3 otherHandle:v4];

  return v5;
}

uint64_t sub_1A8390A90(void *a1)
{
  v2 = [IMGroupTitleChangeChatItem alloc];
  v3 = [a1 _senderHandle];
  v4 = [(IMGroupTitleChangeChatItem *)v2 _initWithItem:a1 sender:v3];

  return v4;
}

uint64_t sub_1A8390AF4(uint64_t a1)
{
  v2 = [IMTranscriptSharingChatItem alloc];

  return [(IMTranscriptSharingChatItem *)v2 _initWithItem:a1];
}

uint64_t sub_1A8390B34(void *a1)
{
  v2 = [IMLocationUpdateSentChatItem alloc];
  v3 = [a1 sender];
  v4 = [(IMLocationUpdateSentChatItem *)v2 _initWithItem:a1 chatIdentifier:v3];

  return v4;
}

uint64_t sub_1A8390B98(void *a1)
{
  v2 = [IMGroupActionChatItem alloc];
  v3 = [a1 _senderHandle];
  v4 = [(IMGroupActionChatItem *)v2 _initWithItem:a1 sender:v3];

  return v4;
}

id sub_1A8390C84(void *a1)
{
  v2 = [a1 _otherHandle];
  v3 = [a1 _senderHandle];
  if ([a1 _hasMessageChatItem] && (objc_msgSend(MEMORY[0x1E69A8070], "sharedFeatureFlags"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isWaldoEnabled"), v4, (v5 & 1) == 0))
  {
    v7 = [IMLocationShareOfferChatItem alloc];
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = v3;
    }

    v6 = [(IMLocationShareOfferChatItem *)v7 _initWithItem:a1 sender:v8];
  }

  else
  {
    v6 = [[IMLocationShareActionChatItem alloc] _initWithItem:a1 sender:v3 otherHandle:v2];
  }

  v9 = v6;

  return v9;
}

uint64_t sub_1A8390D4C(void *a1)
{
  v2 = [IMTUConversationChatItem alloc];
  v3 = [a1 _senderHandle];
  v4 = [(IMTUConversationChatItem *)v2 _initWithItem:a1 conversationInitiator:v3];

  return v4;
}

uint64_t sub_1A8390DB8(void *a1)
{
  v2 = [IMMessageActionChatItem alloc];
  v3 = [a1 _senderHandle];
  v4 = [a1 _otherHandle];
  v5 = [(IMMessageActionChatItem *)v2 _initWithItem:a1 sender:v3 otherHandle:v4];

  return v5;
}

uint64_t sub_1A8390E3C(void *a1, uint64_t a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 serviceVariant];
  v6 = [v4 areSendersUnknown];
  v7 = [a1 associatedMessageType];
  if (v7 > 999)
  {
    switch(v7)
    {
      case 1000:
        v26 = [a1 fileTransferGUIDs];
        v11 = [v26 firstObject];

        v27 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v28 = [v27 isClingEnabled];

        if (v28 && [a1 isEmojiSticker] && (objc_msgSend(a1, "emojiSticker"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v29 = [IMEmojiStickerChatItem alloc];
          v30 = [a1 _senderHandle];
          v15 = [(IMEmojiStickerChatItem *)v29 _initWithItem:a1 sender:v30 transferGUID:v11 emojiSticker:v12];
        }

        else
        {
          v43 = [IMAssociatedStickerChatItem alloc];
          v12 = [a1 _senderHandle];
          v15 = [(IMAssociatedStickerChatItem *)v43 _initWithItem:a1 sender:v12 transferGUID:v11];
        }

        goto LABEL_23;
      case 4000:
        v31 = [IMCustomAcknowledgementChatItem alloc];
        v11 = [a1 _senderHandle];
        v15 = [(IMCustomAcknowledgementChatItem *)v31 _initWithItem:a1 sender:v11];
        goto LABEL_24;
      case 1001:
        v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v9 = [v8 isClingEnabled];

        if (v9)
        {
          v10 = [IMEmojiStickerChatItem alloc];
          v11 = [a1 _senderHandle];
          v12 = [a1 fileTransferGUIDs];
          v13 = [v12 firstObject];
          v14 = [a1 emojiSticker];
          v15 = [(IMEmojiStickerChatItem *)v10 _initWithItem:a1 sender:v11 transferGUID:v13 emojiSticker:v14];

LABEL_23:
          goto LABEL_24;
        }

LABEL_25:
        v15 = 0;
        goto LABEL_42;
    }

LABEL_19:
    if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0xBB8 && (v7 & 0xFFFFFFFFFFFFFFF8) != 0x7D0)
    {
      goto LABEL_25;
    }

    v41 = [IMMessageAcknowledgmentChatItem alloc];
    v11 = [a1 _senderHandle];
    v42 = [a1 tapback];
    v15 = [(IMMessageAcknowledgmentChatItem *)v41 _initWithItem:a1 sender:v11 tapback:v42];

LABEL_24:
    goto LABEL_42;
  }

  if (v7 == 2)
  {
    v32 = [[IMPluginPayload alloc] initWithMessageItem:a1];
    v33 = +[IMBalloonPluginManager sharedInstance];
    v34 = [v33 dataSourceForPluginPayload:v32];

    v35 = [v34 guidOfLastMessageInSession];
    v36 = [a1 guid];
    if ([v36 isEqualToString:v35])
    {
      v37 = [v34 isShowingLatestMessageAsBreadcrumb];

      if (v37)
      {
        v38 = [IMTranscriptPluginBreadcrumbChatItem alloc];
        v39 = [a1 breadcrumbText];
        v40 = [v39 string];
        v15 = [(IMTranscriptPluginBreadcrumbChatItem *)v38 _initWithItem:a1 datasource:v34 statusText:v40 optionFlags:0];

LABEL_41:
        goto LABEL_42;
      }
    }

    else
    {
    }

    if (v34)
    {
      v44 = v6 ^ 1;
      v45 = [a1 messageID];
      if (v45 > [v34 messageIDOfLastMessageInSession])
      {
        [v34 endShowingLastConsumedBreadcrumb];
      }

      v46 = [IMTranscriptPluginChatItem alloc];
      if (v5 == 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44;
      }

      v15 = [(IMTranscriptPluginChatItem *)v46 _initWithItem:a1 initialPayload:v32 index:0 messagePartRange:0 parentChatHasKnownParticipants:0x7FFFFFFFFFFFFFFFLL, v47];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = [(IMPluginPayload *)v32 pluginBundleID];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v49;
          _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "Failed to find plugin data source for identifier '%@'", &buf, 0xCu);
        }
      }

      v15 = 0;
    }

    goto LABEL_41;
  }

  if (v7 != 3)
  {
    goto LABEL_19;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x2020000000;
  v54 = 0;
  v16 = [a1 body];
  v17 = [a1 body];
  v18 = [v17 length];
  v19 = *MEMORY[0x1E69A5F30];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_1A83914AC;
  v51[3] = &unk_1E7813780;
  v51[4] = &buf;
  [v16 enumerateAttribute:v19 inRange:0 options:v18 usingBlock:{0, v51}];

  if ((*(*(&buf + 1) + 24) & 4) != 0)
  {
    v15 = 0;
  }

  else
  {
    v20 = [[IMPluginPayload alloc] initWithMessageItem:a1];
    v21 = +[IMBalloonPluginManager sharedInstance];
    v22 = [v21 dataSourceForPluginPayload:v20];

    v23 = [IMTranscriptPluginBreadcrumbChatItem alloc];
    v24 = [a1 body];
    v25 = [v24 string];
    v15 = [(IMTranscriptPluginBreadcrumbChatItem *)v23 _initWithItem:a1 datasource:v22 statusText:v25 optionFlags:*(*(&buf + 1) + 24)];
  }

  _Block_object_dispose(&buf, 8);
LABEL_42:

  return v15;
}

void sub_1A8391464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8391410);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A83914AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = [v7 intValue];
    *a5 = 1;
  }
}

void sub_1A8391B9C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a2 guid];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

uint64_t sub_1A8391C14()
{
  result = IMShouldShowEmotes();
  byte_1EB2E4788 = result;
  return result;
}

uint64_t sub_1A8391C34(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 wasInterworked])
    {
      v3 = [v2 originalServiceName];
      if ([v3 isEqualToString:*MEMORY[0x1E69A7AD8]])
      {
        v4 = [v2 service];
        v5 = [v4 isEqualToString:*MEMORY[0x1E69A7AE0]];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1A8391D08(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 isDelivered] & 1) != 0 || (objc_msgSend(v2, "wasDowngraded"))
    {
      v3 = 0;
    }

    else
    {
      v4 = [v2 service];
      v3 = [v4 isEqualToString:*MEMORY[0x1E69A7AD8]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1A8391DE4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

void sub_1A8391E3C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 _item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 time];
    if ([v9 compare:*(*(*(a1 + 32) + 8) + 40)] == -1)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *(*(*(a1 + 32) + 8) + 40);
          v23 = 138412546;
          v24 = v9;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Message time %@ is outside urgent grace period start window %@", &v23, 0x16u);
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
      goto LABEL_28;
    }

    if ([v8 isFromMe] && objc_msgSend(v8, "didNotifyRecipient"))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Found a recent message that broke through recipients dnd within the grace period window. Grace period is active.", &v23, 2u);
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
      goto LABEL_28;
    }

    if ([v8 isFromMe])
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v8 guid];
          v23 = 138412802;
          v24 = v15;
          v25 = 2048;
          v26 = [v8 isFromMe];
          v27 = 2048;
          v28 = [v8 didNotifyRecipient];
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Message %@ did not impact grace period. isFromMe: %ld, didNotify: %ld", &v23, 0x20u);
        }

LABEL_27:
      }
    }

    else
    {
      v18 = [v9 dateByAddingTimeInterval:-*(a1 + 48)];
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      [*(*(*(a1 + 32) + 8) + 40) timeIntervalSinceNow];
      v22 = v21;
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v23 = 134217984;
          v24 = (v22 / 60.0);
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Found a received message in the chat within the grace period window, extending grace period to %ld minutes.", &v23, 0xCu);
        }

        goto LABEL_27;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v23 = 138412290;
      v24 = v13;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Item is not a message. Item class: %@", &v23, 0xCu);
    }
  }

LABEL_29:
}

BOOL sub_1A8392270(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ![v2 type] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || objc_msgSend(v2, "type") == 6;

  return v3;
}

uint64_t sub_1A83922D8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1A8392330(void *a1)
{
  v1 = a1;
  if (IMShouldHandleInternalPhishingAttempts())
  {
    v2 = 1;
  }

  else
  {
    v3 = MEMORY[0x1E69A7F70];
    v4 = [v1 lastFinishedMessageItem];
    v2 = [v3 isReportJunkServiceAllowedForMessageItem:v4 junkChatStyle:{objc_msgSend(v1, "chatStyle")}];
  }

  return v2;
}

void sub_1A83923AC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v7 message];
    if ([*(a1 + 32) hasSurfRequestNotFromMe:v6])
    {
      [*(a1 + 32) setHasSurfRequest:1];
      *a4 = 1;
    }
  }
}

uint64_t sub_1A8392444(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

void sub_1A83924B4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t IMItemCompareSortIDs(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!IMSharedHelperPinUnsentMessagesToBottom())
  {
    goto LABEL_15;
  }

  if (![v3 messageID] || !objc_msgSend(v4, "messageID"))
  {
LABEL_12:
    v6 = sub_1A8254B84(v3, v4);
LABEL_23:
    v5 = v6;
    goto LABEL_25;
  }

  if ((sub_1A8254760(v3, v4) & 1) == 0)
  {
    if (([v3 unsentIsFromMeItem] & 1) != 0 || objc_msgSend(v4, "unsentIsFromMeItem"))
    {
      if ([v3 unsentIsFromMeItem] && !objc_msgSend(v4, "unsentIsFromMeItem"))
      {
        v5 = 1;
        goto LABEL_25;
      }

      if ([v4 unsentIsFromMeItem] && !objc_msgSend(v3, "unsentIsFromMeItem"))
      {
        v5 = -1;
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (![v3 sortID] || !objc_msgSend(v4, "sortID"))
    {
      v6 = Testing_IMItemOrderMessageByDate_0(v3, v4);
      goto LABEL_23;
    }

LABEL_15:
    v7 = [v3 sortID];
    if (v7 != [v4 sortID])
    {
      v9 = [v3 sortID] - 1;
      v10 = [v4 sortID];
      v5 = (__PAIR128__(v9 > v10 - 1, v9) - (v10 - 1)) >> 64;
      goto LABEL_25;
    }

    if ((sub_1A8254760(v3, v4) & 1) == 0 && [v3 sortID] && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "We have items with the same sortID that have different guids item1 %@ item2 %@", &v12, 0x16u);
      }
    }

    v6 = sub_1A8254B84(v3, v4);
    goto LABEL_23;
  }

  v5 = 0;
LABEL_25:

  return v5;
}

uint64_t _IMItemsControllerInsertionIndexForItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 indexOfObject:v4 inSortedRange:0 options:objc_msgSend(v3 usingComparator:{"count"), 1536, &unk_1F1B6F280}];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1A8392784(uint64_t a1, void *a2, void *a3)
{
  v3 = sub_1A8254134(a2, a3, 0, 0);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 == 1;
  }
}

uint64_t _IMItemsControllerIndexOfExistingItem(void *a1, void *a2, char a3)
{
  v5 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = a1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A83928CC;
  v10[3] = &unk_1E7813D10;
  v13 = a3;
  v7 = v5;
  v11 = v7;
  v12 = &v14;
  [v6 enumerateObjectsUsingBlock:v10];
  if (v15[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = -1;
  }

  else
  {
    v8 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  return v8;
}

void sub_1A83928B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83928CC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = v7;
  if (*(a1 + 48) != 1)
  {
    if (!sub_1A82547D8(v8, v7))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sub_1A8254760(v8, v7))
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

LABEL_6:
}

void _IMItemsControllerHandleItem(void *a1, void *a2, void *a3, char a4, int a5, int a6, char a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v14 = [v13 isGroupTypingIndicatorsEnabled];

  if (v14)
  {
    v15 = a5 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = [v11 typingTrackingController];
    [v16 updateWithIncomingItem:v12];
  }

  if ([v12 isMessageAcknowledgment])
  {
    v17 = v11;
    v18 = v12;
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Insert associated item %@", &buf, 0xCu);
      }
    }

    v20 = [v18 guid];
    v21 = [v18 associatedMessageGUID];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v38 = sub_1A8393A68;
    v39 = &unk_1E7813D80;
    v40 = v21;
    v41 = v18;
    v42 = v20;
    v43 = a2;
    v22 = v21;
    v23 = v18;
    v24 = v20;
    [a2 enumerateObjectsWithOptions:2 usingBlock:&buf];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 associatedMessageType] == 4000)
  {
    v25 = v11;
    v26 = v12;
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Insert associated item %@", &buf, 0xCu);
      }
    }

    v28 = [v26 guid];
    v29 = [v26 associatedMessageGUID];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v38 = sub_1A8393C38;
    v39 = &unk_1E7813D80;
    v40 = v29;
    v41 = v26;
    v42 = v28;
    v43 = a2;
    v30 = v29;
    v31 = v26;
    v32 = v28;
    [a2 enumerateObjectsWithOptions:2 usingBlock:&buf];
  }

  v33 = _IMItemsControllerIndexOfExistingItem(a2, v12, a4);
  if (sub_1A8392DC4(a2, v33, v12, a7))
  {
    if (v33 == -1 || !a6)
    {
      if (v33 == -1)
      {
        v33 = _IMItemsControllerInsertionIndexForItem(a2, v12);
        v34 = 0;
      }

      else
      {
        v34 = CFArrayGetValueAtIndex(a2, v33);
        CFArrayRemoveValueAtIndex(a2, v33);
        v33 = _IMItemsControllerInsertionIndexForItem(a2, v12);
      }
    }

    else
    {
      v34 = CFArrayGetValueAtIndex(a2, v33);
      CFArrayRemoveValueAtIndex(a2, v33);
    }

    CFArrayInsertValueAtIndex(a2, v33, v12);
    [v11 _didReplaceItem:a2 oldItem:v34 idx:v33];
  }
}

uint64_t sub_1A8392DC4(const __CFArray *a1, CFIndex a2, void *a3, char a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a2 == -1 || (v8 = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    if (CFArrayGetCount(a1) < 1)
    {
      v10 = 0;
    }

    else
    {
      v9 = CFArrayGetValueAtIndex(a1, 0);
      v10 = v9;
      if (v9 && [(__CFString *)v9 messageID]&& ([(__CFString *)v10 unsentIsFromMeItem]& 1) == 0 && IMItemCompareSortIDs(v7, v10) < 0 && (a4 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v24 = 138412546;
            v25 = v10;
            v26 = 2112;
            v27 = v7;
            _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "We are not insert an item we want to firstItem: %@ item: %@", &v24, 0x16u);
          }
        }

        v8 = 0;
        goto LABEL_36;
      }
    }

    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  v12 = v7;
  if ((![(__CFString *)v12 isTypingOrCancelTypingMessage]|| ([(__CFString *)v12 isFromMe]& 1) == 0) && ([(__CFString *)v12 isSystemMessage]& 1) == 0 && ([(__CFString *)v12 isSuggestedActionResponse]& 1) == 0 && ![(__CFString *)v12 isRCSEncryptionTest])
  {
    v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([v20 isGroupTypingIndicatorsEnabled])
    {
      v21 = [v8 isGroupTypingMessage];
    }

    else
    {
      v21 = 0;
    }

    if ([(__CFString *)v12 isTypingOrCancelTypingMessage])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !(v21 & 1 | (([v8 isFinished] & 1) == 0)))
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_35;
        }

        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v23 = [(__CFString *)v12 guid];
          v24 = 138412290;
          v25 = v23;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Rejecting a late typing indicator with GUID: %@", &v24, 0xCu);
        }

        goto LABEL_34;
      }
    }

LABEL_44:
    v19 = 1;
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if ([(__CFString *)v12 isTypingOrCancelTypingMessage])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = [(__CFString *)v12 isFromMe];
      v16 = [(__CFString *)v12 isSystemMessage];
      if (v15)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v24 = 138412802;
      if (v16)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v25 = v14;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "We are not insert an item we want to isTypingOrCancelTypingMessage %@ isFromMed %@ isSystemMessage %@", &v24, 0x20u);
    }

LABEL_34:
  }

LABEL_35:

LABEL_36:
  v19 = 0;
LABEL_45:

  return v19;
}

void sub_1A8393154(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A839301CLL);
  }

  _Unwind_Resume(a1);
}

double _IMTypingMessageTimeout()
{
  v0 = IMGetCachedDomainIntForKey();
  result = v0;
  if (!v0)
  {
    return 90.0;
  }

  return result;
}

void sub_1A839343C(uint64_t a1)
{
  if (([*(a1 + 32) isCancelTypingMessage] & 1) != 0 || objc_msgSend(*(a1 + 32), "expireState") == 2 || objc_msgSend(*(a1 + 32), "isIncomingTypingMessage") && ((objc_msgSend(MEMORY[0x1E695DF00], "date"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "timeIntervalSinceReferenceDate"), v6 = v5, objc_msgSend(*(a1 + 32), "time"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceReferenceDate"), v9 = v6 - v8, (v10 = IMGetCachedDomainIntForKey()) != 0) ? (v11 = v10) : (v11 = 90.0), v7, v4, v9 >= v11))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);

    CFArrayRemoveValueAtIndex(v2, v3);
  }

  else if (!*(a1 + 40) && ([*(a1 + 32) isFromMe] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isTypingOrCancelTypingMessage") & 1) == 0)
  {
    v12 = _IMItemsControllerGetTypingMessage(*(a1 + 48));
    if (v12)
    {
      v13 = *(a1 + 48);
      value = v12;
      v17.length = CFArrayGetCount(v13);
      v17.location = 0;
      LastIndexOfValue = CFArrayGetLastIndexOfValue(v13, v17, value);
      CFArrayRemoveValueAtIndex(*(a1 + 48), LastIndexOfValue);
      v12 = value;
    }
  }
}

uint64_t sub_1A83935F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a3 & 0x1000800001) == 1)
  {
    return (a4 ^ 1) & (a3 >> 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A839361C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a3 & 0x1000800001) == 1)
  {
    return (a4 ^ 1) & (a3 >> 3);
  }

  else
  {
    return (a3 & 0x1000800000) == 0;
  }
}

uint64_t sub_1A839364C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a3 & 0x1000800005) == 1)
  {
    return (a4 ^ 1) & (a3 >> 3);
  }

  else
  {
    return (a3 & 0x1000800004) == 0;
  }
}

uint64_t sub_1A839367C(void *a1)
{
  v1 = MEMORY[0x1E69A8138];
  [a1 flags];

  return MEMORY[0x1EEE66B58](v1, sel_isIncomingTypingMessage_);
}

uint64_t sub_1A83936BC(void *a1)
{
  v2 = MEMORY[0x1E69A8138];
  [a1 flags];
  [a1 hasEditedParts];

  return MEMORY[0x1EEE66B58](v2, sel_isCancelTypingMessage_isEditedMessage_);
}

uint64_t sub_1A8393718(void *a1)
{
  v2 = MEMORY[0x1E69A8138];
  [a1 flags];
  [a1 hasEditedParts];

  return MEMORY[0x1EEE66B58](v2, sel_isTypingOrCancelTypingMessage_isEditedMessage_);
}

id sub_1A8393774(void *a1)
{
  if ([a1 associatedMessageType] == 3 || objc_msgSend(a1, "associatedMessageType") == 2)
  {
    return 0;
  }

  v3.receiver = a1;
  v3.super_class = &off_1F1BE6BC0;
  return objc_msgSendSuper2(&v3, sel_isIncomingTypingMessage);
}

id sub_1A83937DC(void *a1)
{
  if ([a1 associatedMessageType] == 3 || objc_msgSend(a1, "associatedMessageType") == 2)
  {
    return 0;
  }

  v3.receiver = a1;
  v3.super_class = &off_1F1BE6BC0;
  return objc_msgSendSuper2(&v3, sel_isCancelTypingMessage);
}

id sub_1A8393844(void *a1)
{
  if ([a1 associatedMessageType] == 3 || objc_msgSend(a1, "associatedMessageType") == 2)
  {
    return 0;
  }

  v3.receiver = a1;
  v3.super_class = &off_1F1BE6BC0;
  return objc_msgSendSuper2(&v3, sel_isTypingOrCancelTypingMessage);
}

id sub_1A83938AC(void *a1)
{
  if ([a1 associatedMessageType] == 3 || objc_msgSend(a1, "associatedMessageType") == 2)
  {
    return 0;
  }

  v3.receiver = a1;
  v3.super_class = &off_1F1BE6BC0;
  return objc_msgSendSuper2(&v3, sel_isIncomingTypingOrCancelTypingMessage);
}

void sub_1A8393A68(uint64_t a1, void *a2, CFIndex a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 isMessageAcknowledgment];
  v7 = [v5 associatedMessageGUID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if ([*(a1 + 40) isFromMe] && (objc_msgSend(v5, "isFromMe") & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = [*(a1 + 40) sender];
    v11 = [v5 sender];
    v9 = [v10 isEqualToString:v11];
  }

  if ((v6 & v8) == 1 && v9)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 134217984;
        v16 = a3;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "_IMItemsControllerInsertMessageAcknowledgment removed stray ack item at idx %lu", &v15, 0xCu);
      }
    }

    CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
  }

  else if ([v5 isTypingOrCancelTypingMessage])
  {
    v13 = [v5 guid];
    v14 = [v13 isEqualToString:*(a1 + 48)];

    if (v14)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
    }
  }
}

void sub_1A8393C38(uint64_t a1, void *a2, CFIndex a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = (objc_opt_respondsToSelector() & 1) == 0 || [v5 associatedMessageType] != 4000;
  v7 = [v5 associatedMessageGUID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if ([*(a1 + 40) isFromMe] && (objc_msgSend(v5, "isFromMe") & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [*(a1 + 40) sender];
    v11 = [v5 sender];
    v12 = [v10 isEqualToString:v11];

    v9 = v12 ^ 1;
  }

  if (v6 || (v8 & 1) == 0 || (v9 & 1) != 0)
  {
    if ([v5 isTypingOrCancelTypingMessage])
    {
      v14 = [v5 guid];
      v15 = [v14 isEqualToString:*(a1 + 48)];

      if (v15)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = 134217984;
        v17 = a3;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "_IMItemsControllerCleanupForCustomAcknowledgmentItem removed stray custom acknowledgement item at idx %lu", &v16, 0xCu);
      }
    }

    CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
  }
}

void sub_1A8393F54()
{
  v0 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v3 = [v0 aa_primaryAppleAccount];

  v1 = [v3 aa_personID];
  v2 = qword_1EB2EA420;
  qword_1EB2EA420 = v1;
}

void sub_1A8394380(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v9 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v9 source];
  [v7 sendEvent:v5];

  v8 = [v6 source];
  [v8 sendEvent:v4];
}

id sub_1A8394BB0(uint64_t a1)
{
  if (qword_1EB2EA440 != -1)
  {
    sub_1A84E255C();
  }

  v2 = qword_1EB2EA438;

  return v2;
}

uint64_t sub_1A8394C38()
{
  v0 = objc_alloc_init(IMCoreAccountsMonitor);
  qword_1EB2EA430 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8394D98(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = sub_1A8394BB0(a1);
    v3 = [v2 aa_primaryAppleAccount];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = *(*(a1 + 32) + 16);
    v7 = IMLogHandleForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = *(*(a1 + 32) + 16);
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Cache primary apple account: %@", &v15, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "No primary apple account", &v15, 2u);
      }

      v10 = [MEMORY[0x1E695DFB0] null];
      v11 = *(a1 + 32);
      v7 = *(v11 + 16);
      *(v11 + 16) = v10;
    }
  }

  v12 = *(*(a1 + 32) + 16);
  v13 = [MEMORY[0x1E695DFB0] null];
  if ([v12 isEqual:v13])
  {
    v14 = 0;
  }

  else
  {
    v14 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14);
}

void sub_1A8394FFC(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_DEFAULT, "ACDAccountStoreDidChangeNotification - Clearing cached primary apple account", v5, 2u);
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

uint64_t sub_1A83950D4()
{
  v0 = objc_alloc_init(MEMORY[0x1E6959A48]);
  qword_1EB2EA438 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A8395250()
{
  v0 = os_log_create("com.apple.Messages", "IMRuntimeTest");
  qword_1ED767768 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8395378(uint64_t a1)
{
  v4 = +[IMDaemonController sharedController];
  v2 = [v4 listener];
  v3 = [*(a1 + 32) syncStats];
  [v2 didFetchSyncStateStats:v3];
}

void sub_1A83955AC(uint64_t a1)
{
  v3 = +[IMDaemonController sharedController];
  v2 = [v3 listener];
  [v2 didAttemptToSetEnabledTo:*(a1 + 32) result:1];
}

void sub_1A8395B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8395B48(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cachedRecipientName];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) cachedRecipientDigest];
    v5 = [v4 copy];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = a1 + 48;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = [*(a1 + 32) deviceSalt];

    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) deviceSalt];
      if (v11)
      {
        memset(&c, 0, sizeof(c));
        CC_SHA1_Init(&c);
        CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
        if (CStringPtr)
        {
          v13 = CStringPtr;
          v14 = strlen(CStringPtr);
          CC_SHA1_Update(&c, v13, v14);
        }

        else
        {
          Length = CFStringGetLength(v10);
          if (Length >= 1)
          {
            v25 = Length;
            v26 = 0;
            do
            {
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              *buffer = 0u;
              v38 = 0u;
              usedBufLen = 0;
              v70.location = v26;
              v70.length = v25;
              Bytes = CFStringGetBytes(v10, v70, 0x8000100u, 0, 0, buffer, 512, &usedBufLen);
              CC_SHA1_Update(&c, buffer, usedBufLen);
              v26 += Bytes;
              v28 = v25 <= Bytes;
              v25 -= Bytes;
            }

            while (!v28);
          }
        }

        BytePtr = CFDataGetBytePtr(v11);
        v30 = CFDataGetLength(v11);
        CC_SHA1_Update(&c, BytePtr, v30);
        memset(buffer, 0, sizeof(buffer));
        LODWORD(v38) = 0;
        CC_SHA1_Final(buffer, &c);
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 40);
        for (i = 0; i != 20; ++i)
        {
          CFStringAppendFormat(Mutable, 0, @"%x", buffer[i]);
        }
      }

      else
      {
        Mutable = 0;
      }

      v32 = *(*v8 + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = Mutable;

      if (!*(a1 + 40) || !*(*(*v8 + 8) + 40))
      {
        v34 = IMLogHandleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E2680(a1 + 48, (a1 + 40), v34);
        }
      }

      [*(a1 + 32) setCachedRecipientName:?];
      [*(a1 + 32) setCachedRecipientDigest:*(*(*(a1 + 48) + 8) + 40)];
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2718(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }
}

void sub_1A8396204(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = IMSingleObjectArray();
  (*(v2 + 16))(v2, v1, v3);
}

uint64_t IMRegisterForPreferredAccountChangeNotifications(uint64_t a1, uint64_t a2)
{
  if (qword_1EB2EA108 != -1)
  {
    sub_1A84E2750();
  }

  return 1;
}

void sub_1A839721C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "Registering for preferred account changes", v6, 2u);
    }
  }

  IMRegisterForPreferredAccountChangeNotificationsInternal();
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69A6028];
  v4 = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:&unk_1F1B6F3C0];
}

void sub_1A8397318()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 __mainThreadPostNotificationName:@"__kIMPreferredAccountForServiceChangedNotification" object:0];
}

id IMOperationalAccountForService(void *a1)
{
  v1 = IMPreferredAccountForService(a1);
  if ([v1 _isUsableForSending])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id IMPreferredAccountForService(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  IMRegisterForPreferredAccountChangeNotificationsInternal();
  v2 = IMPreferredAccountMap();
  v3 = [v1 internalName];
  v4 = [v2 objectForKey:v3];

  if (![v4 count])
  {
LABEL_5:
    v9 = +[IMAccountController sharedInstance];
    v10 = [v9 _bestOperationalAccountForSendingForService:v1];

    if (v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v10 uniqueID];
          v17 = 138412546;
          v18 = v1;
          v19 = 2112;
          v20 = v12;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, " Returning default best operational sending account for service: %@    account: %@", &v17, 0x16u);
        }

LABEL_13:
      }
    }

    else
    {
      v13 = +[IMAccountController sharedInstance];
      v10 = [v13 bestAccountForService:v1];

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v14 = [v10 uniqueID];
          v17 = 138412546;
          v18 = v1;
          v19 = 2112;
          v20 = v14;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, " Returning default best account for service: %@    account: %@", &v17, 0x16u);
        }

        goto LABEL_13;
      }
    }

    v5 = v10;
    v7 = v5;
    goto LABEL_15;
  }

  v5 = [v4 objectForKey:@"guid"];
  v6 = +[IMAccountController sharedInstance];
  v7 = [v6 accountForUniqueID:v5];

  if (![v7 _isUsableForSending] || (objc_msgSend(v7, "service"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8 != v1))
  {

    goto LABEL_5;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = v1;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, " Returning preferred sendable account for service: %@    account: %@", &v17, 0x16u);
    }
  }

LABEL_15:

  return v7;
}

uint64_t IMSetPreferredAccountForService(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  IMRegisterForPreferredAccountChangeNotificationsInternal();
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Updating preferred account for service: %@    account: %@", &v10, 0x16u);
      }
    }

    v6 = [v4 internalName];
    v7 = [v3 uniqueID];
    v8 = IMUpdatePreferredAccountForService();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}