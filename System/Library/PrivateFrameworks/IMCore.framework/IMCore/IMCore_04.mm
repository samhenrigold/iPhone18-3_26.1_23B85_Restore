id IMFindExistingChatForAddresses(void *a1, void *a2, int a3, int a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v30 = v5;
  if (![v5 count])
  {
    v26 = 0;
    goto LABEL_51;
  }

  IMRegisterForPreferredAccountChangeNotificationsInternal();
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v9)
  {
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        if ([v12 _appearsToBePhoneNumber])
        {
          IMInternationalForPhoneNumberWithOptions();
        }

        else
        {
          [v12 lowercaseString];
        }
        v13 = ;

        if ([v13 length])
        {
          [v7 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = +[IMChatRegistry sharedRegistry];
  obj = [v14 allExistingChats];

  v15 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (!v15)
  {
LABEL_38:

LABEL_45:
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = v8;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "[IMFindExistingChatForAddresses] Did not find existing chat for addresses: %@", buf, 0xCu);
      }
    }

    v26 = 0;
    goto LABEL_50;
  }

  v33 = *v37;
  v16 = &selRef__updateChatItemsForChatItemUpdater;
LABEL_16:
  v17 = 0;
  v31 = v16[285];
  while (1)
  {
    if (*v37 != v33)
    {
      objc_enumerationMutation(obj);
    }

    v18 = *(*(&v36 + 1) + 8 * v17);
    v19 = [v18 displayName];
    if ([v6 isEqualToString:&stru_1F1B76F98])
    {

      v6 = 0;
    }

    if ([v19 isEqualToString:&stru_1F1B76F98])
    {

      v19 = 0;
    }

    if ([v18 joinState] == 3 || objc_msgSend(v18, "joinState") == 2)
    {
      v20 = 1;
      if (v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = [v18 joinState] == 4;
      if (v19)
      {
LABEL_26:
        v21 = [v19 isEqualToString:v6];
        goto LABEL_29;
      }
    }

    v21 = v6 == 0;
LABEL_29:
    if ((v21 & (([v18 chatStyle] == 45) ^ a3)) != 1 || v20 != a4)
    {
      goto LABEL_36;
    }

    v23 = [v18 participants];
    v24 = [v23 arrayByApplyingSelector:v31];
    v25 = [v24 __imSetFromArray];

    if ([v25 isEqualToSet:v7])
    {
      break;
    }

LABEL_36:
    if (v15 == ++v17)
    {
      v15 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
      v16 = &selRef__updateChatItemsForChatItemUpdater;
      if (v15)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  v26 = v18;

  if (!v26)
  {
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v45 = v26;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "[IMFindExistingChatForAddresses] Found existing chat: %@ for addresses: %@", buf, 0x16u);
    }
  }

LABEL_50:

LABEL_51:

  return v26;
}

id IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(void *a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  IMRegisterForPreferredAccountChangeNotificationsInternal();
  if (a2)
  {
    v7 = [v5 count] > 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = IMFindExistingChatForAddresses(v5, 0, v7, 1);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 account];
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "[IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService] Found existing chat, returning chat's account", &v14, 2u);
    }
  }

  else
  {
    v10 = IMPreferredAccountForService(v6);
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "[IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService] Failed to find existing chat, for fallbackService: %@", &v14, 0xCu);
    }
  }

LABEL_13:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "[IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService] account: %@", &v14, 0xCu);
    }
  }

  return v10;
}

id IMPreferredSendingAccountForAddressWithFallbackService(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 arrayWithObjects:v9 count:1];

  v7 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v6, 0, v4);

  return v7;
}

void sub_1A83981AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83981C4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _cachedChatWithGUID:a2];
  if (v3)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A8398E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8398E9C(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v5 = [*(a1 + 32) _cachedChatWithGUID:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

void sub_1A8399020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8399038(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v5 = [*(a1 + 32) _cachedChatWithGUID:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

uint64_t IMCopyDDScannerResultFromAttributedStringData(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length])
  {
    v2 = objc_autoreleasePoolPush();
    v9 = 0;
    v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v1 error:&v9];
    v4 = v9;
    if (v3)
    {
      if (!qword_1EB2E9220)
      {
        qword_1EB2E9220 = MEMORY[0x1AC56C550](@"DDScannerResult", @"DataDetectorsCore");
      }

      v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dd-result"];
      [v3 finishDecoding];
      if (v5)
      {
        goto LABEL_16;
      }

      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = [v3 error];
          *buf = 138412546;
          v11 = v1;
          v12 = 2112;
          v13 = v7;
          _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Could not unarchive DDScannerResult data: %@ error: %@", buf, 0x16u);
        }

LABEL_14:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Could not create keyed unarchiver due to error: %@", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v5 = 0;
LABEL_16:

    objc_autoreleasePoolPop(v2);
    goto LABEL_17;
  }

  v5 = 0;
LABEL_17:

  return v5;
}

void sub_1A8399CF8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8399CA8);
  }

  _Unwind_Resume(a1);
}

id _IMDDResultAttributeName(uint64_t a1)
{
  if (qword_1EB2E91E8 != -1)
  {
    sub_1A84E2818();
  }

  v2 = qword_1EB2E91E0;

  return v2;
}

void sub_1A8399E60()
{
  v0 = MEMORY[0x1AC56C560]("DDResultAttributeName", @"DataDetectorsCore");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB2E91E0, v1);
}

id sub_1A8399EB0(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1A8259C70;
  v14 = sub_1A825AF64;
  v15 = 0;
  v2 = [v1 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8399FE4;
  v7[3] = &unk_1E7813ED0;
  v9 = &v10;
  v3 = v1;
  v8 = v3;
  [v3 enumerateAttributesInRange:0 options:v2 usingBlock:{0, v7}];
  v4 = v11[5];
  if (!v4)
  {
    v4 = v3;
  }

  v5 = v4;

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_1A8399FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8399FE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1A8259C70;
  v24 = sub_1A825AF64;
  v25 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = sub_1A839A148;
  v17 = &unk_1E7813EA8;
  v19 = &v20;
  v8 = v7;
  v18 = v8;
  [v8 enumerateKeysAndObjectsUsingBlock:&v14];
  v9 = v21[5];
  if (v9)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (!v10)
    {
      v11 = [*(a1 + 32) mutableCopy];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v10 = *(*(*(a1 + 40) + 8) + 40);
      v9 = v21[5];
    }

    [v10 setAttributes:v9 range:{a3, a4, v14, v15, v16, v17}];
  }

  _Block_object_dispose(&v20, 8);
}

void sub_1A839A130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A839A148(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = +[IMDDController allSupportedDDAttributesKeys];
    v7 = [v6 containsObject:v15];

    if (v7)
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      if (!v8)
      {
        v9 = [*(a1 + 32) mutableCopy];
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v8 removeObjectForKey:v15];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = IMCopyDDScannerResultFromAttributedStringData(v5);
        v13 = v12;
        if (v12)
        {
          v14 = _IMDDResultAttributeName(v12);
          [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKey:v14];
        }
      }
    }
  }
}

id IMOffsetSerializedDDScannerResult(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = IMCopyDDScannerResultFromAttributedStringData(v3);
    if (v5)
    {
      if (qword_1EB2EA450 != -1)
      {
        sub_1A84E282C();
      }

      if (off_1EB2EA448)
      {
        (off_1EB2EA448)([v5 coreResult], a2);
      }

      else if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Failed to link DDResultOffsetAbsoluteRange from DataDetectorsCore.", &v15, 2u);
        }
      }

      v8 = v5;
      v9 = MEMORY[0x1AC56C550](@"DDScannerResult", @"DataDetectorsCore");
      v10 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:0];
      [v10 encodeObject:v8 forKey:@"dd-result"];
      [v10 encodeObject:&unk_1F1BA1890 forKey:@"version"];
      v11 = objc_alloc(MEMORY[0x1E695DEF0]);
      v12 = [v10 encodedData];
      v6 = [v11 initWithData:v12];

      if (!v6)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v15 = 134218498;
            v16 = v9;
            v17 = 2048;
            v18 = v8;
            v19 = 2112;
            v20 = 0;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "_DDScannerResultClass = %p, ddScannerResult = %p, keyedArchivedData = %@", &v15, 0x20u);
          }
        }

        v6 = 0;
      }
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void *sub_1A839A5F4()
{
  result = MEMORY[0x1AC56C560]("DDResultOffsetAbsoluteRange", @"DataDetectorsCore");
  off_1EB2EA448 = result;
  return result;
}

uint64_t sub_1A839A668()
{
  v0 = objc_alloc_init(IMDDController);
  qword_1ED7678F8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A839A954(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v8 absoluteString];
      [*(a1 + 32) replaceCharactersInRange:a3 withString:{a4, v7}];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) replaceCharactersInRange:a3 withString:{a4, v8}];
      }
    }
  }
}

void sub_1A839AB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int128 a10)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v10 = objc_begin_catch(exception_object);
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          a9 = 138412546;
          WORD2(a10) = 2112;
          *(&a10 + 6) = v10;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Exception scanning message: [%@] with exception: [%@]", &a9, 0x16u);
        }
      }
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    objc_end_catch();
    JUMPOUT(0x1A839AAE8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A839ADB4(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) text];
  v4 = [v3 string];

  v5 = [*v2 text];
  v6 = [v5 mutableCopy];

  v7 = [*v2 isTypingMessage];
  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Not scanning message, it is unfinished or empty: %@", buf, 0xCu);
      }

LABEL_14:
    }
  }

  else if (([MEMORY[0x1E69A8020] supportsDataDetectors] & 1) != 0 || *(a1 + 56) == 1)
  {
    if (v4 && CFStringGetLength(v4) >= 2)
    {
      v10 = [*(a1 + 40) _scanMessageUsingScanner:*(a1 + 32) attributedString:v6];
      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) guid];
        *buf = 138412290;
        v26 = v11;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Did not scan message with guid: %@", buf, 0xCu);
      }

      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_16:
  v12 = [*(a1 + 32) copy];
  v13 = [v12 flags];
  v14 = v13;
  if (v10)
  {
    [v12 _updateText:v6];
    v15 = v14 | 0x110000;
    if (*(a1 + 57) == 1)
    {
      [*(a1 + 32) _updateText:v6];
    }
  }

  else
  {
    v15 = v13 | 0x100000;
  }

  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) _updateFlags:v15];
  }

  [v12 _updateFlags:v15];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (v10)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138412802;
      v26 = v12;
      v28 = v18;
      v27 = 2112;
      if (!v7)
      {
        v17 = @"YES";
      }

      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, " => Result message: %@  Found Results: %@, wasProcessed = %@", buf, 0x20u);
    }
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    v20 = v7 ^ 1u;
    if (*(a1 + 57) == 1)
    {
      (*(v19 + 16))(v19, v20, v12);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A839B184;
      block[3] = &unk_1E7813EF8;
      v23 = *(a1 + 48);
      v24 = v20;
      v22 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void sub_1A839B150(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A839AF58);
  }

  _Unwind_Resume(a1);
}

void sub_1A839B1E0()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69A5FE0];
  v6[0] = *MEMORY[0x1E69A5FF8];
  v6[1] = v1;
  v2 = *MEMORY[0x1E69A5F38];
  v6[2] = *MEMORY[0x1E69A5EF0];
  v6[3] = v2;
  v6[4] = *MEMORY[0x1E69A5F48];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = qword_1EB2E9108;
  qword_1EB2E9108 = v4;
}

void sub_1A839BA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A839BA78(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _processLoadedChatDictionaries:v3];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Unblackholed %@ chats, returning first object", &v10, 0xCu);
    }
  }

  v7 = [v4 firstObject];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1A839BCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int128 a14)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v14 name];
        v17 = [v14 reason];
        v18 = [v14 userInfo];
        LODWORD(a9) = 138413314;
        *(&a9 + 4) = v14;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v16;
        a12 = 2112;
        a13 = v17;
        LOWORD(a14) = 2112;
        *(&a14 + 2) = v18;
        WORD5(a14) = 2080;
        *(&a14 + 12) = "[IMChatRegistry(Blackhole_Internal) _updateBlackholedChatsExist:]";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &a9, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A839BC6CLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_1A839C3FC(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 chatStyle];
  v5 = [v3 groupID];
  v6 = [v3 participants];
  v7 = [v6 arrayByApplyingSelector:"ID"];

  v8 = [v3 lastAddressedHandleID];
  v9 = [v3 originalGroupID];
  v10 = [v3 chatIdentifier];
  v11 = [v3 domainIdentifiers];
  v12 = [v3 account];
  v13 = IMCopyGUIDForChatOnAccount(v3, v12);

  v14 = [v11 mergedDomainIdentifiersWithLatestChatGUID:v13];

  v15 = [a1 muteIdentifiersForChatStyle:v4 groupID:v5 domainIdentifiers:v14 participantIDs:v7 lastAddressedHandleID:v8 originalGroupID:v9 chatIdentifier:v10];

  return v15;
}

void sub_1A839C574(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a1 muteIdentifiersForChat:a3];
  [a1 muteChatWithMuteIdentifiers:v7 untilDate:v6 syncToPairedDevice:1];
}

id sub_1A839C5F0(void *a1)
{
  v2 = [a1 muteIdentifiersForChat:?];
  v3 = [a1 unmuteDateForMuteIdentifiers:v2];

  return v3;
}

uint64_t sub_1A839C648(void *a1)
{
  v2 = [a1 muteIdentifiersForChat:?];
  v3 = [a1 isMutedChatForMuteIdentifiers:v2];

  return v3;
}

void sub_1A839CFEC(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v119 = *MEMORY[0x1E69E9840];
  v80 = a1;
  v81 = a2;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isOneChatEnabled];

  if (v8)
  {
    v9 = [v80 allGUIDsForChat:v81];
    v86 = [MEMORY[0x1E695DF70] array];
    v82 = [MEMORY[0x1E695DF70] array];
    v78 = [v80 currentMessageFilterMode];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
    if (v10)
    {
      v11 = *v109;
      v12 = MEMORY[0x1E69A7AC8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v109 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v108 + 1) + 8 * i);
          v106 = 0;
          v107 = 0;
          IMComponentsFromChatGUID();
          v15 = 0;
          v16 = 0;
          v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v18 = [v17 isMergeFilteredThreadsEnabled];

          if (!v18 || ![v81 canBeMessageLevelFiltered] || (objc_msgSend(v80, "chatGUIDToInfoMap"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKey:", v14), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isFiltered"), v20, v19, objc_msgSend(MEMORY[0x1E69A8210], "isFilterMode:subsetOf:", v21, v78)))
          {
            if (([v16 isEqualToString:*v12] & 1) == 0)
            {
              v22 = IMLogHandleForCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v117 = v14;
                _os_log_error_impl(&dword_1A823F000, v22, OS_LOG_TYPE_ERROR, "Found invalid chat GUID %@ during history load", buf, 0xCu);
              }
            }

            [v86 addObject:v15];
            [v82 addObject:*v12];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
      }

      while (v10);
    }

    if (a3)
    {
      v23 = v86;
      *a3 = v86;
    }

    v24 = v82;
    if (!a4)
    {
      goto LABEL_78;
    }

LABEL_77:
    v72 = v24;
    v73 = v24;
    v24 = v72;
    *a4 = v72;
    goto LABEL_78;
  }

  obja = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v87 = [v80 currentMessageFilterMode];
  if ([v81 chatStyle] != 45 || a5)
  {
    v83 = [v80 allGUIDsForChat:v81];
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v47 = [v83 countByEnumeratingWithState:&v102 objects:v115 count:16];
    if (v47)
    {
      v48 = *v103;
      v49 = 1;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v103 != v48)
          {
            objc_enumerationMutation(v83);
          }

          v51 = *(*(&v102 + 1) + 8 * j);
          v100 = 0;
          v101 = 0;
          IMComponentsFromChatGUID();
          v52 = 0;
          v53 = 0;
          v54 = [objc_alloc(MEMORY[0x1E69A6128]) initWithFirst:v52 second:v53];
          v55 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v56 = [v55 isMergeFilteredThreadsEnabled];

          if (v56 && [v81 canBeMessageLevelFiltered])
          {
            v57 = [v80 chatGUIDToInfoMap];
            v58 = [v57 objectForKey:v51];
            v59 = [v58 isFiltered];

            v49 = [MEMORY[0x1E69A8210] isFilterMode:v59 subsetOf:v87];
          }

          if (v54 && (v49 & 1) != 0)
          {
            [obja addObject:v54];
          }
        }

        v47 = [v83 countByEnumeratingWithState:&v102 objects:v115 count:16];
      }

      while (v47);
    }
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v83 = [v81 participants];
    v77 = [v83 countByEnumeratingWithState:&v96 objects:v114 count:16];
    if (v77)
    {
      v76 = *v97;
      do
      {
        v25 = 0;
        do
        {
          if (*v97 != v76)
          {
            v26 = v25;
            objc_enumerationMutation(v83);
            v25 = v26;
          }

          v79 = v25;
          v27 = *(*(&v96 + 1) + 8 * v25);
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v28 = [v27 _chatSiblings];
          v29 = [v28 countByEnumeratingWithState:&v92 objects:v113 count:16];
          v30 = v29;
          if (v29)
          {
            v31 = *v93;
            do
            {
              v32 = 0;
              do
              {
                if (*v93 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v92 + 1) + 8 * v32);
                v34 = IMChatRegistryLogHandle(v29);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v117 = v33;
                  _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_DEFAULT, "     Query with participant: %@", buf, 0xCu);
                }

                v36 = IMChatRegistryLogHandle(v35);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = [v33 ID];
                  *buf = 138412290;
                  v117 = v37;
                  _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_DEFAULT, "           => Adding handle: %@", buf, 0xCu);
                }

                v39 = IMChatRegistryLogHandle(v38);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = [v33 service];
                  v41 = [v40 internalName];
                  *buf = 138412290;
                  v117 = v41;
                  _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_DEFAULT, "           => Adding service: %@", buf, 0xCu);
                }

                v42 = objc_alloc(MEMORY[0x1E69A6128]);
                v43 = [v33 ID];
                v44 = [v33 service];
                v45 = [v44 internalName];
                v46 = [v42 initWithFirst:v43 second:v45];

                if (v46)
                {
                  [obja addObject:v46];
                }

                ++v32;
              }

              while (v30 != v32);
              v29 = [v28 countByEnumeratingWithState:&v92 objects:v113 count:16];
              v30 = v29;
            }

            while (v29);
          }

          v25 = v79 + 1;
        }

        while (v79 + 1 != v77);
        v77 = [v83 countByEnumeratingWithState:&v96 objects:v114 count:16];
      }

      while (v77);
    }
  }

  v86 = [MEMORY[0x1E695DF70] array];
  v60 = [MEMORY[0x1E695DF70] array];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = obja;
  v61 = [obj countByEnumeratingWithState:&v88 objects:v112 count:16];
  if (v61)
  {
    v62 = *v89;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v89 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v88 + 1) + 8 * k);
        v65 = [v64 first];
        [v86 addObject:v65];

        v66 = [v64 second];
        [v60 addObject:v66];

        if (IMOSLoggingEnabled())
        {
          v67 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v68 = [v64 first];
            *buf = 138412290;
            v117 = v68;
            _os_log_impl(&dword_1A823F000, v67, OS_LOG_TYPE_INFO, "           => Adding identifier: %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v69 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = [v64 second];
            *buf = 138412290;
            v117 = v70;
            _os_log_impl(&dword_1A823F000, v69, OS_LOG_TYPE_INFO, "           => Adding service: %@", buf, 0xCu);
          }
        }
      }

      v61 = [obj countByEnumeratingWithState:&v88 objects:v112 count:16];
    }

    while (v61);
  }

  if (a3)
  {
    v71 = v86;
    *a3 = v86;
  }

  v24 = v60;
  if (a4)
  {
    goto LABEL_77;
  }

LABEL_78:
}

void sub_1A839DC70(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v9 = a1;
  v8 = IMSharedHelperPersonCentricMergingEnabled();
  sub_1A839CFEC(v9, v7, a3, a4, v8);
}

void *sub_1A83A103C(void *result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 7) + 8) + 24) = 1;
    return [*(result + 4) setUserActivityForChat:*(result + 5) message:*(result + 6) orHandles:0];
  }

  return result;
}

id *sub_1A83A1068(id *result)
{
  if ((*(*(result[7] + 1) + 24) & 1) == 0)
  {
    return [result[4] setUserActivityForChat:result[5] message:result[6] orHandles:0];
  }

  return result;
}

void sub_1A83A61E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[IMFileTransferCenter sharedInstance];
  [v7 _handleSerializedFileTransfers:v5];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) guid];
  [v8 historyQuery:v9 chatID:v10 services:*(a1 + 56) finishedWithResult:v6 limit:*(a1 + 64)];
}

void sub_1A83A6294(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v8, OS_SIGNPOST_INTERVAL_END, v9, "loadHistoryForChatWithGUID", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83A6470;
  aBlock[3] = &unk_1E7810E88;
  v19 = *(a1 + 40);
  v10 = v5;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v12 = _Block_copy(aBlock);
  if (*(a1 + 64))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A6488;
    block[3] = &unk_1E7813FC8;
    v14 = *(a1 + 48);
    v15 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A68C8(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = v11;
  v13 = *(a1 + 80);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v12, OS_SIGNPOST_INTERVAL_END, v13, "loadPagedHistoryAroundMessageWithGUID", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83A6AFC;
  aBlock[3] = &unk_1E7814018;
  v14 = v10;
  v26 = v14;
  v21 = *(a1 + 40);
  v15 = *(&v21 + 1);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v27 = v21;
  v28 = v18;
  v30 = *(a1 + 88);
  v19 = v9;
  v29 = v19;
  v31 = a4;
  v32 = a5;
  v20 = _Block_copy(aBlock);
  if (*(a1 + 104))
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A6B94;
    block[3] = &unk_1E7813FC8;
    v23 = *(a1 + 72);
    v24 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A6AFC(uint64_t a1)
{
  v2 = +[IMFileTransferCenter sharedInstance];
  [v2 _handleSerializedFileTransfers:*(a1 + 32)];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(a1 + 56) guid];
  LOWORD(v5) = *(a1 + 96);
  [v3 pagedHistoryQuery:v4 chatID:v6 services:*(a1 + 64) numberOfMessagesBefore:*(a1 + 80) numberOfMessagesAfter:*(a1 + 88) finishedWithResult:*(a1 + 72) hasMessagesBefore:v5 hasMessagesAfter:?];
}

void sub_1A83A6EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A6F88;
    block[3] = &unk_1E7810E88;
    v7 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A7284(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A7364;
    block[3] = &unk_1E7810E88;
    v7 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A7994(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = [*(a1 + 48) guid];
    v7 = *(a1 + 56);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v5 markAsSpamQuery:v6 chatID:v9 services:v7 finishedWithResult:v8];
  }
}

void sub_1A83A7D44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 72))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) guid];
    [v4 frequentRepliesQuery:v5 chatID:v6 services:*(a1 + 56) finishedWithResult:v3 limit:*(a1 + 64)];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A7E78;
    block[3] = &unk_1E78140E0;
    v13 = *(a1 + 32);
    v7 = *(&v13 + 1);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v15 = v13;
    v16 = v10;
    v11 = v3;
    v12 = *(a1 + 64);
    v17 = v11;
    v18 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A7E78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) guid];
  [v2 frequentRepliesQuery:v3 chatID:v4 services:*(a1 + 56) finishedWithResult:*(a1 + 64) limit:*(a1 + 72)];
}

void sub_1A83A8288(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[IMFileTransferCenter sharedInstance];
  [v7 _handleSerializedFileTransfers:v5];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) guid];
  [v8 historyQuery:v9 chatID:v10 services:*(a1 + 56) finishedWithResult:v6 limit:*(a1 + 64)];
}

void sub_1A83A8338(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A8430;
    block[3] = &unk_1E7810E88;
    v10 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A8730(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 64))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) guid];
    [v4 attachmentQuery:v5 chatID:v6 services:*(a1 + 56) finishedWithResult:v3];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A8864;
    block[3] = &unk_1E78129F8;
    v11 = *(a1 + 32);
    v7 = *(&v11 + 1);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v13 = v11;
    v14 = v10;
    v15 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A8864(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) guid];
  [v2 attachmentQuery:v3 chatID:v4 services:*(a1 + 56) finishedWithResult:*(a1 + 64)];
}

void sub_1A83A8BB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12 = [*(a1 + 48) guid];
    v6 = *(a1 + 56);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v4 uncachedAttachmentCountQuery:v5 chatID:v12 services:v6 finishedWithResult:v7];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A8D10;
    block[3] = &unk_1E7814180;
    *v13 = *(a1 + 32);
    v8 = v13[1];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v15 = *v13;
    v16 = v11;
    v17 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A8D10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = [*(a1 + 48) guid];
  v4 = *(a1 + 56);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  [v2 uncachedAttachmentCountQuery:v3 chatID:v6 services:v4 finishedWithResult:v5];
}

void sub_1A83A9240(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = [*(a1 + 48) guid];
    [v4 isDownloadingQuery:v5 chatID:v10 services:*(a1 + 56) finishedWithResult:a2];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A9378;
    block[3] = &unk_1E78141A8;
    *v11 = *(a1 + 32);
    v6 = v11[1];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v13 = *v11;
    v14 = v9;
    v15 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A9378(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) guid];
  [v2 isDownloadingQuery:v3 chatID:v4 services:*(a1 + 56) finishedWithResult:*(a1 + 64)];
}

void _ReplaceExtensionPayloadDataWithAttachmentForOutgoingMessage(void *a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v40 = a2;
  v8 = a3;
  v9 = a4;
  if (([v7 isTypingMessage] & 1) == 0)
  {
    v10 = [v7 payloadData];
    v11 = [v10 length];

    if (v11)
    {
      v13 = IMChatRegistryLogHandle(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v49 = v7;
        v50 = 2112;
        v51 = v40;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Request to _ReplaceExtensionPayloadDataWithAttachmentForOutgoingMessage: %@ chatIdentifier: %@", buf, 0x16u);
      }

      v37 = IMExtensionPayloadUnarchivingClasses();
      v14 = objc_alloc(MEMORY[0x1E696ACD0]);
      v15 = [v7 payloadData];
      v45 = 0;
      v36 = [v14 initForReadingFromData:v15 error:&v45];
      v38 = v45;

      v39 = [v36 decodeObjectOfClasses:v37 forKey:*MEMORY[0x1E696A508]];
      if (v38 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v49 = v38;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Failed to unarchive payload. Error: %@", buf, 0xCu);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = *MEMORY[0x1E69A6EE0];
        v35 = [v39 objectForKey:*MEMORY[0x1E69A6EE0]];
        if ([v35 length])
        {
          v18 = +[IMFileTransferCenter sharedInstance];
          v47 = v35;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
          v20 = [v7 guid];
          v33 = [v18 guidsForStoredAttachmentPayloadData:v19 messageGUID:v20];

          v22 = IMChatRegistryLogHandle(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = v33;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "Wrote extension payload data to attachments folder with GUIDs: %@", buf, 0xCu);
          }

          v23 = [MEMORY[0x1E695DF70] arrayWithArray:v33];
          v24 = [v7 fileTransferGUIDs];
          [v23 addObjectsFromArray:v24];

          v25 = [v23 copy];
          [v7 setFileTransferGUIDs:v25];

          v34 = [v39 mutableCopy];
          [v34 removeObjectForKey:v17];
          v26 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v34 requiringSecureCoding:0 error:0];
          [v7 setPayloadData:v26];

          [v8 _updateFileTransferGUIDs:v23];
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v27 = v23;
          v28 = [v27 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v28)
          {
            v29 = *v42;
            do
            {
              v30 = 0;
              do
              {
                if (*v42 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v41 + 1) + 8 * v30);
                v32 = +[IMFileTransferCenter sharedInstance];
                [v32 assignTransfer:v31 toMessage:v8 account:v9];

                ++v30;
              }

              while (v28 != v30);
              v28 = [v27 countByEnumeratingWithState:&v41 objects:v46 count:16];
            }

            while (v28);
          }
        }
      }
    }
  }
}

double sub_1A83A9E48(uint64_t a1)
{
  result = (a1 * a1) * 3600.0;
  if (result > 172800.0)
  {
    return 172800.0;
  }

  return result;
}

double sub_1A83A9E70(void *a1, BOOL *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    v9 = 0.0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v3 timeIntervalSinceNow];
  v6 = v5 > 0.0;
  v7 = v5 <= 0.0;
  v8 = -v5;
  if (v6)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  if (a2)
  {
LABEL_6:
    *a2 = v7;
  }

LABEL_7:

  return v9;
}

char *sub_1A83A9EE0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 | v4) == 0;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
  }

  if (v3)
  {
    v7 = [v3 unsignedIntegerValue];
    if (v7)
    {
      v8 = v7 - 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return (v8 + v6);
}

double sub_1A83AA28C()
{
  result = *MEMORY[0x1AC56C560]("kCLLocationAccuracyNearestTenMeters", @"CoreLocation");
  qword_1EB2EA458 = *&result;
  return result;
}

uint64_t sub_1A83AA304()
{
  v0 = objc_alloc_init(IMLocationManager);
  qword_1ED767900 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83AAA34(id *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Completion block called with error: %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setInRequestPreciseLocation:0];

  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Error happened when requesting temporary precise location: %@", buf, 0xCu);
      }
    }

    (*(a1[4] + 2))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83AAC50;
    block[3] = &unk_1E78141F8;
    objc_copyWeak(&v10, a1 + 6);
    v8 = a1[5];
    v9 = a1[4];
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v10);
  }
}

void sub_1A83AAC50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained locationManager];
  v4 = [v3 _limitsPrecision];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "User denied accurate location authorization.", buf, 2u);
      }
    }

    v6 = objc_alloc(MEMORY[0x1E695DF20]);
    v7 = [v6 initWithObjectsAndKeys:{@"IMLocationManager does not have accurate location access", *MEMORY[0x1E696A578], 0}];
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = [v8 initWithDomain:*MEMORY[0x1E69A5F40] code:42 userInfo:v7];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 48));
    [v10 _startLocationUpdateTimerWithAuthorizedHandler:*(a1 + 32) updateHandler:*(a1 + 40)];
  }
}

void sub_1A83ABD60(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) handlers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) objectAtIndexedSubscript:1];
        v10 = [*(a1 + 32) error];
        (v9)[2](v9, v3, v10);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v4 removeAllObjects];
  [*(a1 + 32) setLocation:0];
  [*(a1 + 32) setError:0];
  [*(a1 + 32) setLocateStartTime:0];
}

objc_class *sub_1A83ABF1C()
{
  result = MEMORY[0x1AC56C550](@"_MKLocationShifter", @"MapKit");
  if (result)
  {
    v1 = objc_alloc_init(result);
    qword_1EB2EA468 = v1;

    return MEMORY[0x1EEE66BB8](v1);
  }

  return result;
}

void sub_1A83AC0B0(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Location shift started", buf, 2u);
    }
  }

  v4 = [objc_opt_class() locationShifter];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A83AC308;
  v13[3] = &unk_1E7814270;
  v5 = *(a1 + 40);
  v15 = *(a1 + 48);
  v6 = v2;
  v14 = v6;
  [v4 shiftLocation:v5 withCompletionHandler:v13 callbackQueue:MEMORY[0x1E69E96A0]];

  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Location shift timed out.", buf, 2u);
      }
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A83AC3CC;
    v10[3] = &unk_1E7810230;
    v12 = *(a1 + 48);
    v11 = *(a1 + 40);
    v9 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void sub_1A83AC308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Location shift completed", v5, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1A83AC424()
{
  result = MEMORY[0x1AC56C550](@"CLLocationManager", @"CoreLocation");
  qword_1EB2EA478 = result;
  return result;
}

uint64_t sub_1A83AC498()
{
  result = MEMORY[0x1AC56C550](@"CLInUseAssertion", @"CoreLocation");
  qword_1EB2EA488 = result;
  return result;
}

void sub_1A83ACC88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A83ACCC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83ACD80;
  v6[3] = &unk_1E7810450;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v8);
}

void sub_1A83ACD80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [IMFindMyHandle handleWithFMLHandle:*(a1 + 32)];
  [WeakRetained didReceiveLocationForHandle:v2];
}

void sub_1A83ACDF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83ACEB0;
  block[3] = &unk_1E78142E8;
  objc_copyWeak(v9, (a1 + 32));
  v8 = v5;
  v9[1] = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v9);
}

void sub_1A83ACEB0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = IMLocationLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v11 = 138412546;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession friendShipUpdateCallback. updateFriend: %@, updateType: %lu", &v11, 0x16u);
  }

  MEMORY[0x1AC56C550](@"FMLHandle", @"FindMyLocateObjCWrapper");
  v6 = (a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([*v6 handle], v7 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass))
  {
    v9 = [*v6 handle];
    v10 = [IMFindMyHandle handleWithFMLHandle:v9];
    [WeakRetained _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:v10];
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2D3C();
    }
  }
}

void sub_1A83AD040(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A83AD0F8;
  v5[3] = &unk_1E7810450;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void sub_1A83AD0F8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = IMLocationLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession meDeviceUpdateCallback: %@", &v6, 0xCu);
  }

  v5 = [IMFindMyDevice deviceWithFMLDevice:*(a1 + 32)];
  [WeakRetained setActiveDevice:v5];

  [WeakRetained _postNotification:@"__kIMFMFSessionActiveDeviceChangedNotification" object:0 userInfo:0];
}

void sub_1A83AD520(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2E50();
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
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "FindMyLocateSession startUpdatingFriendsWithCompletion completed without an error", v4, 2u);
    }
  }

LABEL_5:
}

void sub_1A83AD5F4(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "FindMyLocateSession getFriendsSharingLocationsWithMeWithCompletion completed initial fetch with friends: %@. Posting notifications for these handles now", buf, 0xCu);
    }
  }

  v8 = MEMORY[0x1E695DFD8];
  if (v5)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v10 = [v8 __im_findMyHandlesWithFMLFriends:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(a1 + 32) _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:{*(*(&v15 + 1) + 8 * v14++), v15}];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

void sub_1A83AD7D0(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "FindMyLocateSession getFriendsFollowingMyLocationWithCompletion completed initial fetch with friends: %@. Posting notifications for these handles now", buf, 0xCu);
    }
  }

  v8 = MEMORY[0x1E695DFD8];
  if (v5)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v10 = [v8 __im_findMyHandlesWithFMLFriends:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(a1 + 32) _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:{*(*(&v15 + 1) + 8 * v14++), v15}];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

void sub_1A83AD9AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2EC0();
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
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "FindMyLocateSession startMonitoringActiveLocationSharingDeviceChangeWithCompletion completed without an error.", v4, 2u);
    }
  }

LABEL_5:
}

uint64_t sub_1A83ADAC4()
{
  v0 = objc_alloc_init(IMFMFSession);
  qword_1ED767908 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

objc_class *sub_1A83ADF3C()
{
  result = MEMORY[0x1AC56C550](@"ACAccountStore", @"AppleAccount");
  if (result)
  {
    v1 = objc_alloc_init(result);
    qword_1EB2E9D60 = v1;

    return MEMORY[0x1EEE66BB8](v1);
  }

  return result;
}

void sub_1A83AE874(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2F8C();
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
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "FindMyLocateSession startRefreshingLocationForHandles completed for handles: %@", &v7, 0xCu);
    }
  }
}

void sub_1A83AEE74(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3008();
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
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "FindMyLocateSession stopRefreshingLocationForHandles completed for handles: %@", &v7, 0xCu);
    }
  }
}

void sub_1A83AFFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "refreshLocationForHandles %@ callerId %@ error %@", &v8, 0x20u);
  }

  [*(a1 + 48) _postNotification:@"__kIMFMFSessionHandleLocationRefreshedNotification" object:*(a1 + 56) userInfo:0];
}

void sub_1A83B0228(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "refreshLocationForHandles %@ callerId %@ error %@", &v8, 0x20u);
  }

  [*(a1 + 48) _postNotification:@"__kIMFMFSessionChatLocationRefreshedNotification" object:*(a1 + 56) userInfo:0];
}

void sub_1A83B165C(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3200();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "FindMyLocateSession getActiveLocationSharingDeviceWithCompletion device: %@", &v11, 0xCu);
    }
  }

  if (v5)
  {
    v9 = *(a1 + 32);
    v10 = [IMFindMyDevice deviceWithFMLDevice:v5];
    [v9 setActiveDevice:v10];

    [*(a1 + 32) _postNotification:@"__kIMFMFSessionActiveDeviceChangedNotification" object:0 userInfo:0];
  }
}

void sub_1A83B17DC(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [IMFindMyDevice deviceWithFMFDevice:v5];
  [v7 setActiveDevice:v8];

  v9 = IMLocationLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "FMF updated active device %@ error %@", &v10, 0x16u);
  }

  [*(a1 + 32) _postNotification:@"__kIMFMFSessionActiveDeviceChangedNotification" object:0 userInfo:0];
}

void sub_1A83B19C8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IMLocationLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "FMF setActiveDevice %@", &v4, 0xCu);
  }
}

void sub_1A83B24B4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E32A8();
    }
  }

  else
  {
    v4 = IMLocationLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "sendFriendshipOfferToHandles completed for handles: %@, duration: %ld", &v7, 0x16u);
    }
  }
}

void sub_1A83B284C(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = IMLocationLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v12 = 138413570;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "sendFriendshipOfferToHandles %@ untilDate %@ callerId %@ groupId %@ mappingIdentifiers %@ error %@", &v12, 0x3Eu);
  }
}

void sub_1A83B2B1C(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = IMLocationLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = 138413314;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "stopSharingMyLocationWithHandles %@ callerId %@ groupId %@ mappingIdentifier %@ error %@", &v11, 0x34u);
  }
}

void sub_1A83B2DC4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3334();
    }
  }

  else
  {
    v4 = IMLocationLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession stopSharingLocationWith completed for handles: %@, isFromGroup: %{BOOL}d", &v7, 0x12u);
    }
  }
}

uint64_t sub_1A83B30D8()
{
  result = MEMORY[0x1AC56C550](@"FMFSession", @"FMF");
  qword_1EB2EA008 = result;
  return result;
}

uint64_t sub_1A83B314C()
{
  result = MEMORY[0x1AC56C550](@"FindMyLocateSession", @"FindMyLocateObjCWrapper");
  qword_1EB2E9D70 = result;
  return result;
}

void sub_1A83B31C0()
{
  v0 = *MEMORY[0x1AC56C560]("FMFGroupIdOneToOne", @"FMF");

  objc_storeStrong(&qword_1EB2EA498, v0);
}

void sub_1A83B3248()
{
  v0 = *MEMORY[0x1AC56C560]("FMFGroupIdGroup", @"FMF");

  objc_storeStrong(&qword_1EB2EA4A8, v0);
}

id sub_1A83B4F34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 account];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69A6310]];

  v6 = [v4 imHandleWithID:v5];

  return v6;
}

BOOL sub_1A83B4FC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 account];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69A6310]];

  v6 = [v4 imHandleWithID:v5];
  v7 = v6 != 0;

  return v7;
}

uint64_t sub_1A83B5638(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v7 = [v5 time];
  v8 = [v6 time];
  v9 = [v7 compare:v8];

  if (!v9)
  {
    v10 = [v5 messageID];
    if (v10 == [v6 messageID])
    {
      v9 = 0;
    }

    else
    {
      v11 = [v6 messageID];
      if (v11 < [v5 messageID])
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }
    }
  }

  return v9;
}

void sub_1A83B66E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, __int16 a16, id a17, __int128 a18)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = [v18 name];
        v20 = [v18 reason];
        v21 = [v18 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v18;
        WORD6(buf) = 2112;
        *(&buf + 14) = v22;
        a16 = 2112;
        a17 = v20;
        LOWORD(a18) = 2112;
        *(&a18 + 2) = v21;
        WORD5(a18) = 2080;
        *(&a18 + 12) = "[IMChatRegistry(IMChatRegistry_DaemonIncoming) account:chat:style:notifySentMessage:sendTime:isReplicating:]";
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A83B6688);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A83B6E38()
{
  result = MEMORY[0x1AC56C550](@"LSApplicationWorkspace", @"CoreServices");
  qword_1EB2EA4B8 = result;
  return result;
}

BOOL sub_1A83B7EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 guid];
    v5 = [*(a1 + 32) guid];
    v6 = [v4 isEqualToString:v5];

    if (!v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

void sub_1A83BBB70(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83BBA5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83BD3EC(uint64_t a1)
{
  [IMChat removeGUIDInAttemptingListInScrutinyMode:*(a1 + 32)];
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = +[IMChatScrutinyController sharedController];
    [v2 markMessageAsCorrupt:*(a1 + 32)];
  }
}

void sub_1A83BE754(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 objectForKey:@"path"];
  v4 = [v3 objectForKey:@"guid"];
  v5 = [v3 objectForKey:@"createdDate"];
  v6 = [v3 objectForKey:@"isSticker"];
  v7 = [v3 objectForKey:@"transferState"];

  if (v9 && v4 && v5 && v6)
  {
    v8 = -[IMAttachment initWithPath:guid:createdDate:isSticker:isTransferComplete:]([IMAttachment alloc], "initWithPath:guid:createdDate:isSticker:isTransferComplete:", v9, v4, v5, [v6 BOOLValue], objc_msgSend(v7, "BOOLValue"));
    [*(a1 + 32) addObject:v8];
  }
}

void sub_1A83BECC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83BECD8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) existingChatWithChatIdentifier:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_1A83BFED0(void *a1, void *a2, int a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v65 = v4;
  if (a1)
  {
    v5 = IMChatRegistryLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v94 = [v65 count];
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Total number of IMChats we expect to create %lu", buf, 0xCu);
    }

    v7 = IMChatRegistryLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a1 isFirstLoad];
      *buf = 67109376;
      *v94 = v8;
      *&v94[4] = 1024;
      *&v94[6] = a3;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "First Load: %{BOOL}d, Full Reload: %{BOOL}d", buf, 0xEu);
    }

    if (a3)
    {
      [a1 _resetChatRegistry];
    }

    v63 = [a1 isFirstLoad];
    v69 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = [a1 contactStore];
    v10 = [v9 isBatchFetchingForLaunchCompleted];

    if (v10)
    {
      v68 = 0;
    }

    else if ([v65 count] > 0x18)
    {
      v68 = 25;
    }

    else
    {
      v68 = [v65 count];
    }

    v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v65;
    v72 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
    if (v72)
    {
      v71 = *v90;
      do
      {
        v11 = 0;
        do
        {
          if (*v90 != v71)
          {
            v12 = v11;
            objc_enumerationMutation(obj);
            v11 = v12;
          }

          v73 = v11;
          v13 = *(*(&v89 + 1) + 8 * v11);
          context = objc_autoreleasePoolPush();
          v77 = [v13 first];
          v75 = [v13 second];
          v88 = 0;
          if ([v77 count])
          {
            v76 = [v77 firstObject];
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v14 = v77;
            v15 = [v14 countByEnumeratingWithState:&v84 objects:v97 count:16];
            if (v15)
            {
              v16 = 0;
              v17 = *v85;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v85 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = [a1 _lastMessageItemForChatDictionary:*(*(&v84 + 1) + 8 * i)];
                  v20 = v19;
                  if (v19)
                  {
                    if (!v16 || ([v19 time], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "time"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "compare:", v22) == 1, v22, v21, v23))
                    {
                      v24 = v20;

                      v16 = v24;
                    }
                  }
                }

                v15 = [v14 countByEnumeratingWithState:&v84 objects:v97 count:16];
              }

              while (v15);

              if (v88)
              {
                v26 = 0;
                v27 = 0;
                goto LABEL_48;
              }

              if (v16)
              {
                v96 = v16;
                v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
                v28 = 0;
                v25 = v67;
              }

              else
              {
                v25 = 0;
                v28 = 1;
              }

LABEL_37:
              v83 = 0;
              v26 = sub_1A84E342C(a1, v76, v25, 1, &v88, &v83);
              v27 = v83;
              if ((v28 & 1) == 0)
              {
              }

              if (v26)
              {
                v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v26, "isFiltered")}];
                v30 = [v66 objectForKeyedSubscript:v29];

                v31 = [v26 lastFinishedMessageDate];
                v32 = [v31 compare:v30];
                v33 = [v76 objectForKey:@"unreadCount"];
                v34 = [v33 unsignedIntegerValue];

                v35 = v32 == -1 || v30 == 0;
                if (v35 && !v34)
                {
                  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v26, "isFiltered")}];
                  [v66 setObject:v31 forKeyedSubscript:v36];
                }

                v28 = 0;
              }

              else
              {
LABEL_48:
                v28 = 1;
              }
            }

            else
            {

              v16 = 0;
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = 1;
              if (!v88)
              {
                goto LABEL_37;
              }
            }

            v82 = 0;
            v37 = [v16 service];
            v38 = +[IMServiceImpl iMessageService];
            v39 = [v38 internalName];
            v40 = [v37 isEqualToIgnoringCase:v39];

            if (v40)
            {
              v42 = +[IMChatRegistry sharedRegistry];
              [v42 _setChatHasCommunicatedOveriMessage:v26];

              v82 = 1;
            }

            if (v28)
            {
              v43 = IMChatRegistryLogHandle(v41);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v94 = v76;
                _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_DEFAULT, "*********** Error creating chat with %@", buf, 0xCu);
              }
            }

            else
            {
              [v69 addObject:v26];
              [a1 _updatePersonCentricIDToChatMapForChat:v26 toNewPersonCentricID:v75];
              [v26 _setJoinState:{objc_msgSend(a1, "_winningJoinStateForExistingChat:incomingDictionary:", v26, v76)}];
              [a1 _registerChatDictionary:v76 forChat:v26 isIncoming:0 newGUID:v27 shouldPostNotification:0];
              [a1 _updateInfo:v76 forGUID:v27 updatingUnreadCount:1 shouldPostNotifications:0];
              [a1 updateChatDictionaryArray:v14 createdChat:v26 joinstate:objc_msgSend(v26 setHasCommunicatedOveriMessage:{"joinState"), &v82}];
            }

            [v26 invalidateMergedThreadFilterModes];
            v44 = [a1 contactStore];
            v45 = [v44 isBatchFetchingForLaunchCompleted];

            if ((v45 & 1) == 0)
            {
              v46 = +[IMChatRegistry sharedRegistry];
              v47 = [v46 cachedChats];
              v48 = [v47 count] == v68;

              if (v48)
              {
                [a1 _fetchInitialBatchOfContactsOnLaunch];
              }
            }
          }

          objc_autoreleasePoolPop(context);
          v11 = v73 + 1;
        }

        while (v73 + 1 != v72);
        v72 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v72);
    }

    [a1 setFilterCategoryToEarliestInitiallyFetchedLastMessageDate:v66];
    [a1 _resetChatReconstructionGroupMaps];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v49 = v69;
    v50 = [v49 countByEnumeratingWithState:&v78 objects:v95 count:16];
    if (v50)
    {
      v51 = *v79;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v79 != v51)
          {
            objc_enumerationMutation(v49);
          }

          [a1 _updateUnreadCountForChat:*(*(&v78 + 1) + 8 * j)];
        }

        v50 = [v49 countByEnumeratingWithState:&v78 objects:v95 count:16];
      }

      while (v50);
    }

    [a1 setLoading:0];
    [a1 setFirstLoad:0];
    v53 = [a1 contactStore];
    v54 = [v53 isBatchFetchingForLaunchCompleted];

    if ((v54 & 1) == 0)
    {
      v55 = [a1 _batchFetchRemainingContactsOnLaunch];
    }

    v56 = IMChatRegistryLogHandle(v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_DEFAULT, "Done restoring chats", buf, 2u);
    }

    v58 = IMChatRegistryLogHandle(v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_DEFAULT, "** Posting did load notification", buf, 2u);
    }

    if (v63 & a3)
    {
      v59 = 0;
    }

    else
    {
      v60 = MEMORY[0x1E695DF90];
      v61 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v59 = [v60 dictionaryWithObjectsAndKeys:{v61, @"__kIMChatRegistryDidLoadIsRefreshKey", 0}];
    }

    v62 = [MEMORY[0x1E696AD88] defaultCenter];
    [v62 __mainThreadPostNotificationName:@"__kIMChatRegistryDidLoadNotification" object:a1 userInfo:v59];
  }
}

void sub_1A83C0834(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __int128 buf, int a56, __int16 a57, __int16 a58, uint64_t a59, __int128 a60)
{
  if (a2 == 1)
  {
    v60 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v61 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = [v60 name];
        v63 = [v60 reason];
        v64 = [v60 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v60;
        WORD6(buf) = 2112;
        *(&buf + 14) = v62;
        a58 = 2112;
        a59 = v63;
        LOWORD(a60) = 2112;
        *(&a60 + 2) = v64;
        WORD5(a60) = 2080;
        *(&a60 + 12) = "[IMChatRegistry(IMChatRegistry_DaemonIncoming) __handleMergedChatReconstructions:fullReload:]";
        _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A83C07E4);
  }

  _Unwind_Resume(a1);
}

void sub_1A83C14FC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "ChatRegistry: Fetching the remaining(Final batch) of contacts", v6, 2u);
    }
  }

  v3 = +[IMHandleRegistrar sharedInstance];
  v4 = [v3 getIDsForFinalBatch];

  if ([v4 count])
  {
    v5 = [*(a1 + 32) contactStore];
    [v5 fetchCNContactsForHandlesWithIDs:v4 isFinalBatch:1];
  }
}

void sub_1A83C1B9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 name];
        v7 = [v4 reason];
        v8 = [v4 userInfo];
        *(v3 - 160) = 138413314;
        *(v2 + 4) = v4;
        *(v3 - 148) = 2112;
        *(v2 + 14) = v6;
        *(v3 - 138) = 2112;
        *(v3 - 136) = v7;
        *(v3 - 128) = 2112;
        *(v2 + 34) = v8;
        *(v3 - 118) = 2080;
        *(v2 + 44) = "[IMChatRegistry(IMChatRegistry_DaemonIncoming) _handleChatReconstructions:]";
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", (v3 - 160), 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A83C1970);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A83C34E0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x1A83C1F5CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A83C3674(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) _setupObservation];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1A83C3CD4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83C3B64);
  }

  _Unwind_Resume(a1);
}

void sub_1A83C3D1C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[IMUltraConstrainedNetworkMonitor sharedInstance];
  v3 = [MEMORY[0x1E69A8188] createNetworkMonitorWithRemoteHost:0 delegate:v2 allowsUltraConstrainedNetwork:0];
  [*(a1 + 32) setNetworkMonitor:v3];

  v4 = [*(a1 + 32) networkMonitor];

  v6 = IMChatRegistryLogHandle(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Set networkMonitor: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E3DAC(v7);
  }
}

void sub_1A83C4578(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x1E69A6310]];
  [*(a1 + 32) addObject:v3];
}

uint64_t sub_1A83C6738(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) existingChatWithGUID:a2];
  if (v3)
  {
    v3 = [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A83C68D4(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setRecoverableMessagesCount:1];
  if (*(a1 + 32))
  {
    [v4 setEarliestRecoverableMessageDeletionDate:?];
    [v4 setLatestRecoverableMessageDeletionDate:*(a1 + 32)];
  }

  v3 = [v4 loadMessagesBeforeDate:0 limit:objc_msgSend(v4 loadImmediately:{"numberOfMessagesToKeepLoaded"), 0}];
}

uint64_t sub_1A83C6B10(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) existingChatWithGUID:a2];
  if (v3)
  {
    v3 = [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A83C6B84(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRecoverableMessagesCount:0];
  [v3 setUnreadRecoverableMessagesCount:0];
  [v3 setEarliestRecoverableMessageDeletionDate:0];
  [v3 setLatestRecoverableMessageDeletionDate:0];
  v2 = [v3 loadMessagesBeforeDate:0 limit:objc_msgSend(v3 loadImmediately:{"numberOfMessagesToKeepLoaded"), 0}];
}

void sub_1A83C7114(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) existingChatWithGUID:a2];
  [v2 setRecoverableMessagesCount:0];
  [v2 setUnreadRecoverableMessagesCount:0];
  [v2 setEarliestRecoverableMessageDeletionDate:0];
  [v2 setLatestRecoverableMessageDeletionDate:0];
}

void sub_1A83C7230(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) existingChatWithGUID:a2];
  [v3 setRecoverableMessagesCount:0];
  [v3 setUnreadRecoverableMessagesCount:0];
  [v3 setEarliestRecoverableMessageDeletionDate:0];
  [v3 setLatestRecoverableMessageDeletionDate:0];
  v2 = [v3 loadMessagesBeforeDate:0 limit:objc_msgSend(v3 loadImmediately:{"numberOfMessagesToKeepLoaded"), 1}];
}

uint64_t sub_1A83C7A10()
{
  v0 = objc_alloc_init(IMCollaborationNoticeController);
  qword_1ED767910 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A83C7EC0()
{
  v0 = objc_alloc_init(IMChatScrutinyController);
  qword_1ED7677E0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83C8FA8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A83C8ED4);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1A83C8FFC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKey:a2];

  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_1A83C9058(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKey:a2];

  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t sub_1A83C9988(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v28;
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

    [v7 timeIntervalSinceReferenceDate];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 24);
    if (v10 == 0.0)
    {
      *(v9 + 24) = v8;
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 24);
    }

    if (v8 <= v10)
    {
      *(v9 + 24) = v8;
    }

    if ([v5 isSent] && (objc_msgSend(v5, "isLocatingMessage") & 1) == 0)
    {
      v11 = *(a1 + 48);
      goto LABEL_16;
    }

    if ([v5 errorCode])
    {
      v11 = *(a1 + 56);
LABEL_16:
      ++*(*(v11 + 8) + 24);
LABEL_22:

      goto LABEL_23;
    }

    v12 = [v5 fileTransferGUIDs];
    if ([v12 count])
    {
    }

    else
    {
      v13 = [v5 isLocatingMessage];

      if ((v13 & 1) == 0)
      {
        ++*(*(*(a1 + 80) + 8) + 24);
        [*(a1 + 32) timeIntervalSinceReferenceDate];
        v24 = v23;
        v25 = [v5 time];
        [v25 timeIntervalSinceReferenceDate];
        v18 = v24 - v26;

        v19 = 7.0;
        goto LABEL_19;
      }
    }

    ++*(*(*(a1 + 64) + 8) + 24);
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v15 = v14;
    v16 = [v5 time];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v15 - v17;

    v19 = 30.0;
LABEL_19:
    v20 = v18 / v19;
    if (v20 > 0.899999976)
    {
      v20 = 0.899999976;
    }

    v21 = *(*(a1 + 72) + 8);
    v22 = v20 + *(v21 + 24);
    *(v21 + 24) = v22;
    goto LABEL_22;
  }

LABEL_23:

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void _IMAppendChatItemsForItemForTesting(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E69A8070];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83C9CA8;
  v12[3] = &unk_1E7810D08;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  [v8 testWithFeature:sel_isTranscriptSharingEnabled enabled:0 block:v12];
}

void _IMAppendChatItemsForItem(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  sub_1A83C9D3C(v7, v6, [v7 count], 0, v5);
}

void sub_1A83C9D3C(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  if (v11)
  {
    v12 = [[IMItemCollection alloc] initWithChatItems:v9 range:0, a3];
    if (a3 + a4)
    {
      v13 = [v9 objectAtIndex:a3 + a4 - 1];
      v14 = [v13 _parentItem];
    }

    else
    {
      v14 = 0;
    }

    v18 = [v10 _chatItemsForItem:v11 previousItems:v12];
    if (![v18 count])
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E4084(v11, v12, v19);
      }
    }

    v20 = [v10 _items];
    v21 = [v20 count];

    if (!v21)
    {
      [v10 _invalidateSpamIndicatorCachedValues];
    }

    [v9 replaceObjectsInRange:a3 withObjectsFromArray:{a4, v18}];
    v22 = [v18 count] + a3;
    if (v22 < [v9 count])
    {
      v23 = [v9 objectAtIndex:v22];
      v24 = [v23 _parentItem];

      if ([v10 _shouldRegenerateChatItemsForItem:v24 previousItem:v11 oldPreviousItem:v14])
      {
        sub_1A83CBFEC(v9, v10, v22);
      }
    }
  }

  else
  {
    v12 = 0;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL && a3 + a4)
    {
      v15 = [v9 objectAtIndex:a3 + a4 - 1];
      v12 = [v15 _parentItem];
    }

    [v9 removeObjectsInRange:{a3, a4}];
    if (a3 < [v9 count])
    {
      if (a3)
      {
        v16 = [v9 objectAtIndex:a3 - 1];
        v17 = [v16 _parentItem];
      }

      else
      {
        v17 = 0;
      }

      if (a3 >= [v9 count])
      {
        v26 = 0;
      }

      else
      {
        v25 = [v9 objectAtIndex:a3];
        v26 = [v25 _parentItem];
      }

      if ([v10 _shouldRegenerateChatItemsForItem:v26 previousItem:v17 oldPreviousItem:v12])
      {
        sub_1A83CBFEC(v9, v10, a3);
        if (sub_1A83CC118(v26))
        {
          v27 = a3 + 1;
          if (v27 < [v9 count])
          {
            sub_1A83CBFEC(v9, v10, v27);
          }
        }
      }
    }
  }
}

void _IMInsertChatItemsForItem(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 messageID];
  if (v8)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A83CA170;
    v9[3] = &unk_1E7814688;
    v9[4] = &v10;
    v9[5] = v8;
    [v5 enumerateObjectsWithOptions:2 usingBlock:v9];
    sub_1A83C9D3C(v5, v6, v11[3], 0, v7);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    sub_1A83C9D3C(v5, v6, [v5 count], 0, v7);
  }
}

void sub_1A83CA158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83CA170(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 _parentItem];
  v8 = [v7 messageID];

  if (v8)
  {
    if (v8 <= *(a1 + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) = a3 + 1;
      *a4 = 1;
    }
  }
}

void _IMReplaceChatItemsForItem(void *a1, void *a2, void *a3, void *a4)
{
  v13 = a1;
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = sub_1A83CA2C8(v13, v9, 0, [v13 count]);
  v12 = v11;

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1A83C9D3C(v13, v7, v10, v12, v8);
  }
}

uint64_t sub_1A83CA2C8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = &unk_1A8573D95;
  v17 = xmmword_1A84FFF70;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1A8259CA0;
  v11[4] = sub_1A825AF7C;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_1A8259CA0;
  v9[4] = sub_1A825AF7C;
  v10 = 0;
  v8 = a2;
  IMEnumerateArrayInRange();
  v6 = v14[4];

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);

  _Block_object_dispose(&v13, 8);
  return v6;
}

void sub_1A83CA478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 112), 8);
  _Unwind_Resume(a1);
}

void _IMReplaceChatItemsWithChatItemsForItemsForTesting(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E69A8070];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83CA5AC;
  v12[3] = &unk_1E7810D08;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  [v8 testWithFeature:sel_isTranscriptSharingEnabled enabled:0 block:v12];
}

void _IMReplaceChatItemsWithChatItemsForItems(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 __imItems];
  if ([v7 count])
  {
    if ([v8 count])
    {
      if (v8)
      {
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v8 = [MEMORY[0x1E695DF70] array];
        if (!v7)
        {
LABEL_16:
          v7 = [MEMORY[0x1E695DF70] array];
        }
      }

      v12 = [v7 differenceFromArray:v8 withOptions:0 usingEquivalenceTest:&unk_1F1B6F700];
      v35 = 0;
      v36 = 0;
      IMIndexesFromOrderedCollectionDifference(v12, &v36, &v35);
      v13 = v36;
      v14 = v35;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1A83CA9E8;
      v31[3] = &unk_1E78146B0;
      v8 = v8;
      v32 = v8;
      v15 = v5;
      v33 = v15;
      v16 = v6;
      v34 = v16;
      [v14 enumerateRangesUsingBlock:v31];
      v17 = [v8 mutableCopy];
      [v17 removeObjectsAtIndexes:v14];
      v21 = v12;
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x2020000000;
      v30[3] = 0;
      v18 = [v17 count];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1A83CAB3C;
      v22[3] = &unk_1E78146D8;
      v19 = v13;
      v23 = v19;
      v29 = v18;
      v20 = v17;
      v24 = v20;
      v25 = v15;
      v28 = v30;
      v26 = v16;
      v7 = v7;
      v27 = v7;
      [v19 enumerateRangesUsingBlock:v22];

      _Block_object_dispose(v30, 8);
      goto LABEL_18;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = v7;
    v9 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = *v38;
      do
      {
        v11 = 0;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          _IMAppendChatItemsForItem(v5, v6, *(*(&v37 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }
  }

  else
  {
    sub_1A83C9D3C(v5, v6, 0, [v5 count], 0);
  }

LABEL_18:
}

void sub_1A83CA958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83CA978(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 guid];
  v6 = [v4 guid];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

void sub_1A83CA9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = [*(a1 + 32) objectAtIndex:a2];
  v6 = [*(a1 + 32) objectAtIndex:a3 + a2 - 1];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = sub_1A83CAA90(v7, v11, v6);
  sub_1A83C9D3C(v7, v8, v9, v10, 0);
}

uint64_t sub_1A83CAA90(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = [v5 count];
  v9 = sub_1A83CA2C8(v5, v7, 0, v8);
  v11 = v10;

  if (v7 != v6)
  {
    sub_1A83CA2C8(v5, v6, v9 + v11, v8 - (v9 + v11));
  }

  return v9;
}

void sub_1A83CAB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 + a3 - [*(a1 + 32) countOfIndexesInRange:{0, a2 + a3}]) >= *(a1 + 80))
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) count];
  }

  else
  {
    v6 = [*(a1 + 40) objectAtIndex:?];
    *(*(*(a1 + 72) + 8) + 24) = sub_1A83CA2C8(*(a1 + 48), v6, *(*(*(a1 + 72) + 8) + 24), [*(a1 + 48) count] - *(*(*(a1 + 72) + 8) + 24));
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = [*(a1 + 64) subarrayWithRange:{a2, a3}];
  *(*(*(a1 + 72) + 8) + 24) += sub_1A83CAC70(v7, v8, v9, *(*(*(a1 + 72) + 8) + 24));
}

uint64_t sub_1A83CAC70(void *a1, void *a2, void *a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v28 = v7;
  v10 = [[IMItemCollection alloc] initWithChatItems:v7 range:0, a4];
  v27 = [(IMItemCollection *)v10 lastObject];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v8 _chatItemsForItem:v17 previousItems:{v10, v27}];
        if ([v18 count])
        {
          [v11 addObjectsFromArray:v18];
          [(IMItemCollection *)v10 addItem:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  [v28 replaceObjectsInRange:a4 withObjectsFromArray:{0, v11}];
  v19 = [v11 count] + a4;
  v20 = v27;
  if (v19 < [v28 count])
  {
    v21 = [v28 objectAtIndex:v19];
    v22 = [v21 _parentItem];

    v23 = [(IMItemCollection *)v10 lastObject];
    v24 = [v8 _shouldRegenerateChatItemsForItem:v22 previousItem:v23 oldPreviousItem:v27];

    if (v24)
    {
      sub_1A83CBFEC(v28, v8, v19);
      if (sub_1A83CC118(v22) && v19 < [v28 count])
      {
        sub_1A83CBFEC(v28, v8, v19);
      }
    }
  }

  v25 = [v11 count];

  return v25;
}

BOOL _IMScheduledMessageShouldBePinnedToBottom(void *a1)
{
  v1 = a1;
  if ([v1 scheduleType] != 2)
  {
    goto LABEL_5;
  }

  v2 = [v1 scheduleState];
  if ((v2 - 1) < 2)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if ((v2 - 4) <= 1)
  {
    v3 = [v1 time];
    v4 = [MEMORY[0x1E695DF00] now];
    v5 = [v3 compare:v4] == 1;
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

void _IMChatItemsReplaceWithChatItemsForItems(void *a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v38 = a3;
  v37 = [v6 _items];
  if ([v37 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v72) = 0;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = sub_1A83CB6BC;
    v66[3] = &unk_1E7813BD8;
    v67 = v5;
    v68 = buf;
    [v67 enumerateObjectsWithOptions:2 usingBlock:v66];
    v7 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = 1;
  }

  [v6 _setItems:v38];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v37, "count")}];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v38, "count")}];
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "_IMChatItemsReplaceWithChatItemsForItems oldMessages.count: %@ newMessages.count: %@", buf, 0x16u);
    }
  }

  if (![v38 count])
  {
    sub_1A83C9D3C(v5, v6, 0, [v5 count], 0);
    goto LABEL_38;
  }

  sub_1A83CB78C(v5);
  sub_1A83CB8F8(v5);
  if (v7)
  {
    [v5 removeAllObjects];
    v11 = [v38 copy];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (!v14)
    {
      goto LABEL_22;
    }

    v15 = *v63;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v63 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v62 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          if (_IMScheduledMessageShouldBePinnedToBottom(v18))
          {
            [v12 addObject:v18];

            goto LABEL_20;
          }
        }

        _IMAppendChatItemsForItem(v5, v6, v17);
LABEL_20:
        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (!v14)
      {
LABEL_22:

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v19 = [v12 sortedArrayUsingComparator:&unk_1F1B6F720];
        v20 = [v19 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v20)
        {
          v21 = *v59;
          do
          {
            v22 = 0;
            do
            {
              if (*v59 != v21)
              {
                objc_enumerationMutation(v19);
              }

              _IMAppendChatItemsForItem(v5, v6, *(*(&v58 + 1) + 8 * v22++));
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v58 objects:v69 count:16];
          }

          while (v20);
        }

        sub_1A83CBA00(v5);
        goto LABEL_38;
      }
    }
  }

  if (!v37)
  {
    v37 = [MEMORY[0x1E695DF70] array];
  }

  v23 = v38;
  if (!v38)
  {
    v23 = [MEMORY[0x1E695DF70] array];
  }

  v24 = v23;
  v25 = [v23 differenceFromArray:v37 withOptions:0 usingEquivalenceTest:&unk_1F1B6F740];
  v56 = 0;
  v57 = 0;
  IMIndexesFromOrderedCollectionDifference(v25, &v57, &v56);
  v26 = v57;
  v27 = v56;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = sub_1A83CBAC8;
  v52[3] = &unk_1E78146B0;
  v28 = v5;
  v53 = v28;
  v37 = v37;
  v54 = v37;
  v29 = v6;
  v55 = v29;
  [v27 enumerateRangesUsingBlock:v52];
  v30 = [v37 mutableCopy];
  [v30 removeObjectsAtIndexes:v27];
  v36 = v27;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v72 = 0;
  v31 = [v30 count];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1A83CBC8C;
  v44[3] = &unk_1E78146D8;
  v32 = v26;
  v45 = v32;
  v51 = v31;
  v33 = v30;
  v46 = v33;
  v34 = v28;
  v47 = v34;
  v50 = buf;
  v48 = v29;
  v35 = v24;
  v49 = v35;
  [v32 enumerateRangesUsingBlock:v44];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v38 = v35;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1A83CBE10;
  v39[3] = &unk_1E7810CB8;
  v39[4] = &v40;
  [v35 enumerateObjectsUsingBlock:v39];
  if (*(v41 + 24) == 1)
  {
    sub_1A83CBA00(v34);
  }

  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(buf, 8);
LABEL_38:
}

void sub_1A83CB664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83CB6BC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  isKindOfClass = [*(a1 + 32) count];
  if ((isKindOfClass - a3) > 0x31)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [v11 messageItem];
    v9 = [v8 scheduleType];

    if (v9 == 2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_2:
      *a4 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A83CB78C(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [v1 reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 statusType];
          if (((v10 == 34) & v5) == 1)
          {
            [v1 removeObject:v9];

            goto LABEL_14;
          }

          v11 = v10;

          if (v11 != 34)
          {
            goto LABEL_14;
          }

          v5 = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

uint64_t sub_1A83CB8F8(void *a1)
{
  v5 = a1;
  v1 = [v5 count];
  if (v1)
  {
    v2 = [v5 count] - 1;
    objc_opt_class();
    v3 = [v5 objectAtIndex:v2];
    if (objc_opt_isKindOfClass())
    {
      [v5 removeObject:v3];
    }
  }

  return MEMORY[0x1EEE66BB8](v1);
}

uint64_t sub_1A83CB990(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 time];
  v6 = [v4 time];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1A83CBA00(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = sub_1A83CC1E4;
  v8 = &unk_1E7813AE8;
  v9 = v1;
  v10 = v2;
  v3 = v2;
  v4 = v1;
  [v4 enumerateObjectsUsingBlock:&v5];
  [v4 removeObjectsAtIndexes:{v3, v5, v6, v7, v8}];
}

void sub_1A83CBAC8(id *a1, uint64_t a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = [a1[4] count];
  v7 = v6;
  if (a3 == 1)
  {
    v8 = a1[4];
    v9 = [a1[5] objectAtIndex:a2];
    v10 = sub_1A83CA2C8(v8, v9, 0, v7);
    v12 = v11;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v14, v13);
    [a1[5] getObjects:v14 range:{a2, a3}];
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (a3)
    {
      v15 = v14;
      v16 = a3;
      while (1)
      {
        v17 = sub_1A83CA2C8(a1[4], *v15, 0, v7);
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v15;
        if (!--v16)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_10;
        }
      }

      v10 = v17;
LABEL_10:
      v19 = v14 - 8;
      while (1)
      {
        v20 = sub_1A83CA2C8(a1[4], *&v19[8 * a3], 0, v7);
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (!--a3)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v18 = 0;
LABEL_13:
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12 = v18 - v10 + v20;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v12 <= v7 && v10 + v12 <= v7)
  {
    sub_1A83C9D3C(a1[4], a1[6], v10, v12, 0);
  }
}

void sub_1A83CBC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + a3 - [*(a1 + 32) countOfIndexesInRange:{0, a2 + a3}];
  if (v6 >= *(a1 + 80))
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) count];
  }

  else
  {
    v7 = 0;
    while (v6 < *(a1 + 80))
    {
      v8 = [*(a1 + 40) objectAtIndex:v6];

      v9 = sub_1A83CA2C8(*(a1 + 48), v8, *(*(*(a1 + 72) + 8) + 24), [*(a1 + 48) count] - *(*(*(a1 + 72) + 8) + 24));
      ++v6;
      v7 = v8;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(*(*(a1 + 72) + 8) + 24) = v9;

        goto LABEL_8;
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) count];
  }

LABEL_8:
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = [*(a1 + 64) subarrayWithRange:{a2, a3}];
  *(*(*(a1 + 72) + 8) + 24) += sub_1A83CAC70(v10, v11, v12, *(*(*(a1 + 72) + 8) + 24));
}

void sub_1A83CBE10(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 replyCountsByPart];
    v7 = [v6 count];

    if (v7 == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void sub_1A83CBEB4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 _parentItem];
  if (v7 != *(*(*(a1 + 40) + 8) + 40))
  {
    obj = v7;
    v8 = [*(a1 + 32) guid];
    v9 = [obj guid];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
      *(*(*(a1 + 56) + 8) + 32) = a3;
      *(*(*(a1 + 56) + 8) + 40) = 0;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    v7 = obj;
  }

  v11 = *(*(a1 + 56) + 8);
  if (*(v11 + 32) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v7 == *(*(*(a1 + 48) + 8) + 40))
    {
      ++*(v11 + 40);
    }

    else
    {
      *a4 = 1;
    }
  }
}

void sub_1A83CBFEC(void *a1, void *a2, unint64_t a3)
{
  v12 = a1;
  v5 = a2;
  v6 = [[IMItemCollection alloc] initWithChatItems:v12 range:0, a3];
  v7 = 0;
  if ([v12 count] > a3)
  {
    v8 = [v12 objectAtIndex:a3];
    v7 = [v8 _parentItem];
  }

  v9 = sub_1A83CA2C8(v12, v7, a3, [v12 count] - a3);
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 removeObjectsInRange:{v9, v10}];
  }

  v11 = [v5 _chatItemsForItem:v7 previousItems:v6];
  [v12 replaceObjectsInRange:a3 withObjectsFromArray:{0, v11}];
}

BOOL sub_1A83CC118(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v7 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v1 changeType])
  {
    v2 = [v1 _senderHandle];
    v3 = [v2 ID];
    v4 = [v1 _otherHandle];
    v5 = [v4 ID];
    v6 = [v3 isEqualToString:v5];

    if (v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

void sub_1A83CC1E4(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count] == 1)
  {
    v5 = v13;
    v6 = a3 + 1;
    if (a3 + 1 >= [*(a1 + 32) count])
    {
      v8 = 0;
    }

    else
    {
      do
      {
        v7 = [*(a1 + 32) objectAtIndex:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      while (++v6 < [*(a1 + 32) count] && v8 == 0);
    }

    v10 = [v8 threadIdentifier];
    v11 = [v5 threadIdentifier];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      [*(a1 + 40) addIndex:a3];
    }
  }
}

uint64_t sub_1A83CC388()
{
  v0 = objc_alloc_init(IMHandleAvailabilityManager);
  qword_1ED767870 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83CCB38(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 currentStatus];
  v6 = [v5 statusUniqueIdentifier];

  v7 = [WeakRetained pendingFetchesForCacheKeys];
  objc_sync_enter(v7);
  v8 = [WeakRetained currentCacheGeneration];
  objc_sync_exit(v7);

  if (*(a1 + 64) == v8)
  {
    v9 = [WeakRetained pendingFetchesForCacheKeys];
    objc_sync_enter(v9);
    v10 = [WeakRetained pendingFetchesForCacheKeys];
    [v10 removeObject:*(a1 + 32)];

    objc_sync_exit(v9);
    if (v3)
    {
      v11 = v3;
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
    }

    v14 = v11;
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        v28 = 138412802;
        v29 = v16;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Caching subscription for handle %@ with key %@ and value: %@", &v28, 0x20u);
      }
    }

    v18 = [WeakRetained currentSubscriptionCache];
    objc_sync_enter(v18);
    v19 = [WeakRetained currentSubscriptionCache];
    [v19 setObject:v14 forKey:*(a1 + 32)];

    objc_sync_exit(v18);
    v20 = [WeakRetained lastKnownSubscriptionCache];
    objc_sync_enter(v20);
    v21 = [WeakRetained lastKnownSubscriptionCache];
    [v21 setObject:v14 forKey:*(a1 + 32)];

    objc_sync_exit(v20);
    v22 = *(a1 + 48);
    if (v6 == v22 || v6 && v22 && ([v6 isEqualToString:?] & 1) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = *(a1 + 32);
          v28 = 138412290;
          v29 = v24;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Fetched status is the same as the lask known status already returned. Not posting change notification for key: %@", &v28, 0xCu);
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
          v26 = *(a1 + 48);
          v27 = *(a1 + 32);
          v28 = 138412802;
          v29 = v6;
          v30 = 2112;
          v31 = v26;
          v32 = 2112;
          v33 = v27;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Fetched status %@ is different than the last known status %@. Posting change notification for key: %@", &v28, 0x20u);
        }
      }

      [WeakRetained _postNotificationForUpdatedStatusWithSubscription:v3];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 64);
      v28 = 134218498;
      v29 = v13;
      v30 = 2048;
      v31 = v8;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Fetched status is not current (startGeneration: %ld, endGeneration: %ld), discarding status %@.", &v28, 0x20u);
    }
  }
}

void sub_1A83CD2DC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) personalStatusSubscription];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v2;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Personal status subscription: %@", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83CD43C;
  v6[3] = &unk_1E7810230;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void sub_1A83CD450(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = IMOSLoggingEnabled();
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 32) handleString];
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Found status subscription for handleID: %@. Subscription: %@", &v12, 0x16u);
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) handleString];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Did not find status subscription for handleID: %@", &v12, 0xCu);
      }
    }

    goto LABEL_5;
  }

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E415C(a1, v6, v7);
  }

LABEL_5:
  (*(*(a1 + 40) + 16))();
}

void sub_1A83CD618(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83CD4CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83CD6D0(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 __mainThreadPostNotificationName:IMHandleAvailabilityChangedNotification object:*(a1 + 32)];
}

void sub_1A83CDBF0(uint64_t a1)
{
  v2 = [*(a1 + 32) subscriptionService];
  v3 = [v2 personalStatusSubscription];
  v4 = [*(a1 + 32) _availablityFromStatusSubscription:v3 handleID:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A83CDCC0;
  v5[3] = &unk_1E78147A0;
  v6 = *(a1 + 40);
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void sub_1A83CE000(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E428C();
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

void sub_1A83CE470(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4314();
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

intptr_t sub_1A83CFD48(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

uint64_t (*sub_1A83D0380())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("_IMDChatRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA4C8 = result;
  return result;
}

uint64_t (*sub_1A83D03B0())(void)
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyHandles", @"IMDPersistence");
  off_1EB2EA4D8 = result;
  return result;
}

void sub_1A83D11E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL IMSPIQueryChatWithGuid(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 copy];

    v12 = sub_1A826443C(a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DE514;
    block[3] = &unk_1E7810190;
    v17 = v7;
    v18 = v8;
    v19 = v11;
    v13 = v11;
    dispatch_async(v12, block);
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Empty result block supplied to IMSPIQueryChatWithGuid", buf, 2u);
    }
  }

  return v10 != 0;
}

void sub_1A83D1384(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t _IMSPIMessageTypeFromPeerPaymentPayloadURL(void *a1)
{
  v1 = a1;
  if (qword_1EB2EA4F0 != -1)
  {
    sub_1A84E445C();
  }

  if (off_1EB2EA4E8)
  {
    v2 = off_1EB2EA4E8(v1);
    if (v2 == 1)
    {
      v3 = 209;
      goto LABEL_17;
    }

    if (v2 == 2)
    {
      v3 = 210;
      goto LABEL_17;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Failed to weak link PassKitCore/PKPeerPaymentMessageTypeFromDataURL.", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Could not determine peer payment message type.", v7, 2u);
    }
  }

  v3 = 214;
LABEL_17:

  return v3;
}

uint64_t (*sub_1A83D1910())(void)
{
  result = MEMORY[0x1AC56C560]("PKPeerPaymentMessageTypeFromDataURL", @"PassKitCore");
  off_1EB2EA4E8 = result;
  return result;
}

NSObject *_IMSPIExtractPayloadURLFromPayloadNSData(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (!v2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Payload data was nil, retuning nil payload URL", buf, 2u);
      }
    }

    goto LABEL_30;
  }

  v3 = IMExtensionPayloadUnarchivingClasses();
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v2 error:&v12];
  v5 = v12;
  if (objc_opt_respondsToSelector())
  {
    [v4 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "strict-decoding 010 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v7 = [v4 decodeObjectOfClasses:v3 forKey:*MEMORY[0x1E696A508]];
  if (v5 && IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "Failed to unarchive message payload data. Error: %@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v7 objectForKey:*MEMORY[0x1E69A6F10]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Payload URL not in archived payload dictionary, retuning nil payload URL", buf, 2u);
        }
      }

      v8 = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "Could not decode payload dictionary, retuning nil payload URL", buf, 2u);
      }
    }

    v8 = 1;
  }

  if (v8)
  {
LABEL_30:
    v1 = 0;
  }

  return v1;
}

id _IMSPIExtractPayloadURLFromPayloadData(void *a1)
{
  if (a1)
  {
    v2 = _IMSPIExtractPayloadURLFromPayloadNSData(a1);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Payload data was nil, retuning nil payload URL", v5, 2u);
      }
    }

    v2 = 0;
  }

  return v2;
}

id _IMSPIPeerPaymentAmountFromExtensionPayloadURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1EB2EA500 != -1)
    {
      sub_1A84E4470();
    }

    if (off_1EB2EA4F8)
    {
      v2 = off_1EB2EA4F8(v1);
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v4 = "Failed to weak link PassKitCore/PKPeerPaymentMessageTypeFromDataURL.";
        v5 = buf;
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 0;
      v4 = "Extension payload URL is nil, not setting peer payment amount.";
      v5 = &v7;
LABEL_12:
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
    }

LABEL_13:
  }

  v2 = 0;
LABEL_15:

  return v2;
}

uint64_t (*sub_1A83D1FCC())(void)
{
  result = MEMORY[0x1AC56C560]("PKPeerPaymentMessageCurrencyAmountFromDataURL", @"PassKitCore");
  off_1EB2EA4F8 = result;
  return result;
}

uint64_t _IMSPIMessageOrAttachmentsMatchPluginIdentifier(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if ([a2 containsString:v5])
  {
    v7 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v7 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) bundleID];
          v12 = [v11 containsString:v5];

          if (v12)
          {
            v7 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v7;
}

id _IMSPIDisplayAppNameFromAttachments(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    v5 = *MEMORY[0x1E69A6FA8];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) attributionInfo];
        v8 = [v7 objectForKey:v5];
        if ([v8 length])
        {

          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

id sub_1A83D22A0(uint64_t a1)
{
  if (qword_1EB2EA640 != -1)
  {
    sub_1A84E45C4();
  }

  v2 = off_1EB2EA638(a1, 0, 0, 0);
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  return v3;
}

BOOL sub_1A83D233C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (qword_1EB2EA510 != -1)
  {
    sub_1A84E45D8();
  }

  v7 = off_1EB2EA508;
  v8 = v6;
  v9 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(p:(\\d+)\\/)?([\\dA-F]{8}-[\\dA-F]{4}-[\\dA-F]{4}-[\\dA-F]{4}-[\\dA-F]{12})" options:1 error:0];
  v10 = [v9 firstMatchInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
  v11 = v10;
  if (v10 && [v10 numberOfRanges] == 4)
  {
    v12 = [v11 rangeAtIndex:2];
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v8 substringWithRange:{v12, v13}];
      v14 = [v15 integerValue];
    }

    v16 = [v11 rangeAtIndex:3];
    v18 = [v8 substringWithRange:{v16, v17}];
  }

  else
  {
    v18 = v8;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = v7(v18);
  if (v19)
  {
    v20 = sub_1A83D22A0(v19);
    v21 = [v20 body];
    v22 = v21;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = sub_1A8259CB0;
    v37 = sub_1A825AF84;
    v38 = 0;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL || (v23 = [v21 length], v24 = *MEMORY[0x1E69A5FD8], v30[0] = MEMORY[0x1E69E9820], v30[1] = 3221225472, v30[2] = sub_1A83D2734, v30[3] = &unk_1E7814848, p_buf = &buf, v33 = v14, v31 = v20, objc_msgSend(v22, "enumerateAttribute:inRange:options:usingBlock:", v24, 0, v23, 0, v30), v31, !*(*(&buf + 1) + 40)))
    {
      v25 = -[IMMessagePartChatItem _initWithItem:index:messagePartRange:]([IMMessagePartChatItem alloc], "_initWithItem:index:messagePartRange:", v20, 0, 0, [v22 length]);
      v26 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v25;
    }

    v27 = v20;
    *a3 = v20;
    *a4 = *(*(&buf + 1) + 40);
    CFRelease(v19);
    _Block_object_dispose(&buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Failed to retrieve message %@", &buf, 0xCu);
    }
  }

  return v19 != 0;
}

void *sub_1A83D2704()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForGUID", @"IMDPersistence");
  off_1EB2EA508 = result;
  return result;
}

void sub_1A83D2734(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 integerValue] == a1[6])
  {
    v9 = [[IMMessagePartChatItem alloc] _initWithItem:a1[4] index:a1[6] messagePartRange:a3, a4];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a5 = 1;
  }
}

uint64_t sub_1A83D27F8(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5, _BYTE *a6, void *a7, void *a8)
{
  v23 = a6;
  v34 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v13)
  {
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 guid];
        v18 = [v11 isEqualToString:v17];

        if (v18)
        {
          *a3 = [v16 fileUrl];
          *a4 = [v16 uti];
          *a5 = [v16 isSticker];
          *v23 = [v16 isOutgoing] ^ 1;
          if (a7)
          {
            *a7 = [v16 adaptiveImageGlyphContentDescription];
          }

          if (a8)
          {
            v21 = [v16 attributionInfo];
            *a8 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69A6F98]];
          }

          v20 = 1;
          goto LABEL_19;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v11;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Could not find attachment matching attachment guid: %@", buf, 0xCu);
    }
  }

  v20 = 0;
LABEL_19:

  return v20;
}

uint64_t (*sub_1A83D2A6C())(void, void)
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyGUID", @"IMDPersistence");
  off_1EB2E91D8 = result;
  return result;
}

uint64_t (*sub_1A83D2A9C())(void)
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyHandles", @"IMDPersistence");
  off_1EB2E91D0 = result;
  return result;
}

uint64_t (*sub_1A83D2ACC())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("_IMDChatRecordBulkCopy", @"IMDPersistence");
  off_1EB2E91B0 = result;
  return result;
}

uint64_t (*sub_1A83D2B34())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForGUID", @"IMDPersistence");
  off_1EB2EA518 = result;
  return result;
}

uint64_t IMSPIQueryLastReceivedMessageWithQOS(dispatch_qos_class_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v19 = "BOOL IMSPIQueryLastReceivedMessageWithQOS(dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = [v6 copy];

    v11 = sub_1A826443C(a1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83D2D2C;
    block[3] = &unk_1E78148E8;
    v17 = a1;
    v15 = v5;
    v7 = v10;
    v16 = v7;
    dispatch_async(v11, block);
  }

  return v9;
}

void sub_1A83D2D2C(uint64_t a1)
{
  if (qword_1EB2EA530 != -1)
  {
    sub_1A84E468C();
  }

  v2 = off_1EB2EA528();
  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_1A8259CB0;
  v14[4] = sub_1A825AF84;
  v15 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83D2F1C;
  block[3] = &unk_1E7814898;
  v11 = v14;
  v12 = v2;
  v4 = v3;
  v10 = v4;
  v13 = *(a1 + 48);
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83D2F78;
  v6[3] = &unk_1E78148C0;
  v8 = v14;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  dispatch_async(v5, v6);
  if (v2)
  {
    CFRelease(v2);
  }

  _Block_object_dispose(v14, 8);
}

void sub_1A83D2ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t (*sub_1A83D2EEC())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyLastReceivedMessage", @"IMDPersistence");
  off_1EB2EA528 = result;
  return result;
}

uint64_t sub_1A83D2F1C(uint64_t a1)
{
  v2 = _IMSPIMessageFromRecord(*(a1 + 48), 1, 0, *(a1 + 32), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A83D2F78(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  else
  {
    [MEMORY[0x1E695DEC8] array];
  }
  v2 = ;
  (*(*(a1 + 32) + 16))();
}

BOOL IMSPIShareSheetCanSendMedia(int a1, int a2, int a3)
{
  v6 = [MEMORY[0x1E699BEB8] sharedInstance];
  v7 = [v6 iMessageSupported];

  v8 = [IMServiceImpl iMessageEnabledForSenderLastAddressedHandle:0 simID:0];
  v9 = [IMServiceImpl mmsEnabledforPhoneNumber:0 simID:0];
  result = 0;
  if (v9 || v7)
  {
    if ((v7 & v8 & 1) != 0 || !v9)
    {
      return 1;
    }

    if (a2 + a1 + a3 <= [MEMORY[0x1E69A7F58] IMMMSMaximumSlideCountForPhoneNumber:0 simID:0] && (a2 < 1 || a3 <= 0))
    {
      v11 = [MEMORY[0x1E69A7F58] IMMMSMaximumSlideCountForPhoneNumber:0 simID:0] * 0.95 / 10240.0;
      if (fmaxf(floorf(v11), 1.0) >= a1)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t IMSPILastFailedMessageDateWithQOS(dispatch_qos_class_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Empty queue or callback block provided to IMSPILastFailedMessageDate", buf, 2u);
      }
    }
  }

  else
  {
    v10 = [v6 copy];

    v11 = sub_1A826443C(a1);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A83D3290;
    v14[3] = &unk_1E7814750;
    v15 = v5;
    v7 = v10;
    v16 = v7;
    dispatch_async(v11, v14);
  }

  return v9;
}

void sub_1A83D3290(uint64_t a1)
{
  if (qword_1EB2EA540 != -1)
  {
    sub_1A84E46A0();
  }

  v2 = off_1EB2EA538();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A83D337C;
  v4[3] = &unk_1E78147A0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(v3, v4);
}

uint64_t (*sub_1A83D334C())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordLastFailedMessageDate", @"IMDPersistence");
  off_1EB2EA538 = result;
  return result;
}

id IMSPISetChatContextForSubscriptionIdentifier(void *a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v36 = a1;
  v7 = a2;
  v38 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v8;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Trying to set chat context for subscription identifier %@", buf, 0xCu);
    }
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v12)
  {
    v13 = *v40;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        if ([v15 length])
        {
          [v10 addObject:v15];
        }

        else if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Sending destinations contain empty string", buf, 2u);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v12);
  }

  v17 = [v10 count] == 0;
  v18 = IMOSLoggingEnabled();
  if (!v17)
  {
    if (v18)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
      }
    }

    sub_1A8306FC4();
    v20 = sub_1A83D3A58(v37, v10, v38, 0, 1);
    v21 = v20;
    if (v20)
    {
      v22 = [v20 lastAddressedSIMID];
      if (v22 != v8)
      {
        if (IMSharedHelperDeviceHasMultipleSubscriptions() && [v8 length])
        {
          v23 = [MEMORY[0x1E69A7F68] sharedInstance];
          v24 = [v23 ctSubscriptionInfo];
          v25 = [v24 __im_subscriptionContextForForSimID:v8];

          if (v25)
          {
            v26 = [v25 phoneNumber];
            v27 = [v25 labelID];
            if (IMOSLoggingEnabled())
            {
              v28 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = [v21 guid];
                *buf = 138413058;
                v44 = v25;
                v45 = 2112;
                v46 = v26;
                v47 = 2112;
                v48 = v27;
                v49 = 2112;
                v50 = v29;
                _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Found subscription %@ and setting phoneNumber %@ and simID %@ for chat %@", buf, 0x2Au);
              }
            }

            [v21 setLastAddressedHandleID:v26];
            [v21 setLastAddressedSIMID:v27];
          }

          else if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = [v21 guid];
              *buf = 138412546;
              v44 = v8;
              v45 = 2112;
              v46 = v34;
              _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "No subscription found with new simID %@, not changing last addressed IDs of chat %@.", buf, 0x16u);
            }
          }
        }

        [v21 refreshServiceForSending];
        v22 = v22;
        v31 = v22;
        goto LABEL_50;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v44 = v10;
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Cannot get chat for destinations: %@", buf, 0xCu);
        }
      }

      sub_1A8307074();
      v22 = 0;
    }

    v31 = 0;
LABEL_50:

    goto LABEL_51;
  }

  if (v18)
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v11;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Invalid destination specified to send to: %@", buf, 0xCu);
    }
  }

  v31 = 0;
LABEL_51:

  return v31;
}

void sub_1A83D39D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83D3948);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_1A83D3A58(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v67 = a2;
  v66 = a3;
  v63 = v8;
  v64 = a4;
  if (v8)
  {
    [IMServiceImpl serviceWithInternalName:v8];
    v10 = v9 = 0;
  }

  else
  {
    v11 = [IMServiceImpl operationalServicesWithCapability:1024];
    v12 = +[IMServiceImpl smsService];
    v13 = [v11 containsObject:v12];

    if (v13)
    {
      +[IMServiceImpl smsService];
    }

    else
    {
      [v11 firstObject];
    }
    v9 = ;

    v10 = 0;
  }

  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;
  v62 = v9;
  v65 = v10;
  if (v15)
  {
    v61 = v15;
    v16 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v67, 1, v15);
    v17 = v16;
    if (v10)
    {
      v18 = [(__CFString *)v16 service];
      v19 = v18 != v10;
    }

    else
    {
      v19 = 0;
    }

    v22 = [(__CFString *)v17 _isUsableForSending];
    v23 = v22;
    if (v19 || !v22)
    {
      v25 = IMOSLoggingEnabled();
      v26 = v61;
      if (v25)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = @"NO";
          if (v19)
          {
            v29 = @"YES";
          }

          else
          {
            v29 = @"NO";
          }

          *buf = 138412802;
          v73 = v17;
          v74 = 2112;
          v75 = v29;
          if (!v23)
          {
            v28 = @"YES";
          }

          v76 = 2112;
          v77 = v28;
          _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Account: %@  is not usable for sending, finding a better one... different from asking: %@, account cannot send: %@", buf, 0x20u);
        }

        v26 = v61;
      }

      v24 = IMPreferredAccountForService(v26);

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v73 = v24;
          _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "   => Found: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v24 = v17;
    }

    v31 = IMOSLoggingEnabled();
    if (!v24)
    {
      if (v31)
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v73 = v8;
          _os_log_impl(&dword_1A823F000, v46, OS_LOG_TYPE_INFO, "No account found matching service: %@", buf, 0xCu);
        }
      }

      v21 = 0;
      goto LABEL_98;
    }

    if (v31)
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = v24;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Using account: %@", buf, 0xCu);
      }
    }

    v33 = [MEMORY[0x1E695DF70] array];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v34 = v67;
    v35 = [(__CFString *)v34 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v35)
    {
      v36 = *v69;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v69 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = IMStripFormattingFromAddress();
          if (v38)
          {
            v39 = [(__CFString *)v24 imHandleWithID:v38 alreadyCanonical:0];
            if (v39)
            {
              [(__CFString *)v33 addObject:v39];
            }

            else if (IMOSLoggingEnabled())
            {
              v40 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v73 = v38;
                _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "account doesn't have a handle for raw address %@", buf, 0xCu);
              }
            }
          }
        }

        v35 = [(__CFString *)v34 countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v35);
    }

    if (![(__CFString *)v33 count])
    {
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v73 = v34;
          v74 = 2112;
          v75 = v24;
          _os_log_impl(&dword_1A823F000, v47, OS_LOG_TYPE_INFO, "Could not get handle for %@ on account: %@", buf, 0x16u);
        }
      }

      v21 = 0;
      goto LABEL_97;
    }

    if (v66)
    {
      v41 = +[IMChatRegistry sharedRegistry];
      v21 = [v41 existingChatWithGUID:v66];

      v42 = [(__CFString *)v21 participants];
      v43 = [v42 equivalentToRecipients:v33];

      if (v43)
      {
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v73 = v21;
            _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "Had originally found a chat: %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v45 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v73 = v33;
            _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "But it's handles were not equivalent: %@", buf, 0xCu);
          }
        }

        if (v21)
        {
          goto LABEL_83;
        }
      }

      else
      {
      }
    }

    v48 = +[IMChatRegistry sharedRegistry];
    v49 = v48;
    if (a5)
    {
      [v48 chatWithHandles:v33];
    }

    else
    {
      [v48 existingChatWithHandles:v33 allowAlternativeService:0];
    }
    v21 = ;

    if (!v21)
    {
LABEL_97:

LABEL_98:
      v15 = v61;
      goto LABEL_99;
    }

LABEL_83:
    if (IMSharedHelperDeviceHasMultipleSubscriptions() && [(__CFString *)v64 length])
    {
      v50 = [MEMORY[0x1E69A7F68] sharedInstance];
      v51 = [v50 ctSubscriptionInfo];
      v52 = [v51 __im_subscriptionContextForForSimID:v64];

      if (v52)
      {
        v53 = [(__CFString *)v52 phoneNumber];
        v54 = [(__CFString *)v52 labelID];
        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = [(__CFString *)v21 guid];
            *buf = 138413058;
            v73 = v52;
            v74 = 2112;
            v75 = v53;
            v76 = 2112;
            v77 = v54;
            v78 = 2112;
            v79 = v56;
            _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_INFO, "Found subscription %@ and setting phoneNumber %@ and simID %@ for chat %@", buf, 0x2Au);
          }
        }

        [(__CFString *)v21 setLastAddressedHandleID:v53];
        [(__CFString *)v21 setLastAddressedSIMID:v54];
      }

      else if (IMOSLoggingEnabled())
      {
        v57 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [(__CFString *)v21 guid];
          *buf = 138412546;
          v73 = v64;
          v74 = 2112;
          v75 = v58;
          _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "No subscription found with new simID %@, not changing last addressed IDs of chat %@.", buf, 0x16u);
        }
      }
    }

    [(__CFString *)v21 join];
    goto LABEL_97;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "No operational service to use", buf, 2u);
    }
  }

  v21 = 0;
LABEL_99:

  return v21;
}

void sub_1A83D4398(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83D42FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A83D44AC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v68 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v20 = a2;
  v34 = a3;
  v46 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v42 = a8;
  v39 = a9;
  v43 = a10;
  v21 = v19;
  v45 = a11;
  v40 = a12;
  v41 = a13;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v45;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Trying to send message with attachments for subscription identifier %@", buf, 0xCu);
    }
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = v20;
  v25 = [v24 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v25)
  {
    v26 = *v62;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v62 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v61 + 1) + 8 * i);
        if ([v28 length])
        {
          [v23 addObject:v28];
        }

        else if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Sending destinations contain empty string", buf, 2u);
          }
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v25);
  }

  if (![v23 count])
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = v24;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Invalid destination specified to send to: %@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  if (![v46 length])
  {
    v32 = [v42 count];
    if (!v43 && !v32)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Empty message specified to send with no attachments or payloadData, ignoring", buf, 2u);
        }

LABEL_30:

        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DFBC0;
  block[3] = &unk_1E7814BA0;
  v48 = v42;
  v49 = v43;
  v50 = v21;
  v51 = v23;
  v52 = v35;
  v53 = v45;
  v54 = v46;
  v55 = v36;
  v56 = v37;
  v57 = v38;
  v58 = v39;
  v59 = v40;
  v60 = v41;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v30 = 1;
LABEL_32:

  return v30;
}

uint64_t IMSPISendMessageWithAttachmentsReturningGUIDForSubscriptionIdentifier(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = a2;
  v11 = MEMORY[0x1E695DEC8];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = a1;
  v18 = [v11 arrayWithObjects:v21 count:1];

  v19 = sub_1A83D44AC(v17, v18, 0, v15, 0, 0, 0, v14, 0, 0, v13, 0, v12);
  return v19;
}

uint64_t IMSPISendRichLink(void *a1, void *a2, void *a3, void *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v16[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = IMSPISendRichLinkToMany(v11, 0, v8, v9, v10);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Destination cannot be nil.", v15, 2u);
      }
    }

    v12 = 0;
  }

  return v12;
}

uint64_t IMSPISendRichLinkToMany(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Sending rich link", buf, 2u);
      }
    }

    v15 = IMSharedHelperCombinedPluginPayloadDictionaryData();
    v16 = [v11 absoluteString];
    v17 = sub_1A83D44AC(@"iMessage", v9, v10, v16, 0, 0, 0, 0, *MEMORY[0x1E69A6A18], v15, 0, 0, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "IMCoreSPI: url is not an NSURL %@", buf, 0xCu);
      }
    }

    v17 = 0;
  }

  return v17;
}

void IMSPICancelScheduledMessageWithGUID(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 length];
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Setting the chat cap only", &v9, 2u);
      }
    }

    sub_1A8306FC4();
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v1;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Cancel scheduled message with GUID: %@", &v9, 0xCu);
      }
    }

    v6 = +[IMDaemonController sharedController];
    v7 = [v6 remoteDaemon];
    [v7 cancelScheduledMessageWithGUID:v1];
  }

  else if (v3)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Empty message GUID passed in.", &v9, 2u);
    }
  }
}

uint64_t IMSPICancelScheduledMessageWithGUIDAndDestination(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (![v3 length])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Empty message GUID passed in.", &v13, 2u);
      }

      goto LABEL_19;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  v5 = IMOSLoggingEnabled();
  if (!v4)
  {
    if (v5)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Empty destination passed in.", &v13, 2u);
      }

LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v5)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Setting the chat cap only", &v13, 2u);
    }
  }

  sub_1A8306FC4();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Cancel scheduled message with GUID: %@, destination: %@", &v13, 0x16u);
    }
  }

  v8 = +[IMDaemonController sharedController];
  v9 = [v8 remoteDaemon];
  [v9 cancelScheduledMessageWithGUID:v3 destination:v4];

  v10 = 1;
LABEL_21:

  return v10;
}

uint64_t IMSPICancelScheduledMessageWithGUIDAndDestinations(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (![v3 length])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Empty message GUID passed in.", &v12, 2u);
      }

      goto LABEL_20;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  if (!v4 || ![v4 count])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Empty destinations passed in.", &v12, 2u);
      }

LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Setting the chat cap only", &v12, 2u);
    }
  }

  sub_1A8306FC4();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Cancel scheduled message with GUID: %@, destinations: %@", &v12, 0x16u);
    }
  }

  v7 = +[IMDaemonController sharedController];
  v8 = [v7 remoteDaemon];
  [v8 cancelScheduledMessageWithGUID:v3 destinations:v4 cancelType:0];

  v9 = 1;
LABEL_22:

  return v9;
}

uint64_t IMSPIScheduleSendMSMessagePayloadReturningGUID(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x1E69A69F0];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a2;
  v19 = a1;
  v20 = [v13 stringByAppendingFormat:@":0000000000:%@", a3];
  v21 = sub_1A83D5750(v19);
  v22 = sub_1A83D44AC(@"iMessage", v18, v17, 0, v21, 0, 0, v15, v20, v19, 0, v16, v14);

  return v22;
}

id sub_1A83D5750(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = IMExtensionPayloadUnarchivingClasses();
    if (objc_opt_respondsToSelector())
    {
      v14 = 0;
      v3 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v2 fromData:v1 error:&v14];
      v4 = v14;
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v4;
          _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Finished _strictlyUnarchivedObjectOfClasses for payloadData. Error: [%@]", buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = 0;
      v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v2 fromData:v1 error:&v13];
      v4 = v13;
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v4;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Finished unarchivedObjectOfClasses for payloadData. Error: [%@]", buf, 0xCu);
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v3 objectForKey:*MEMORY[0x1E69A6EF0]];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = *MEMORY[0x1E69A5F30];
        v15[0] = *MEMORY[0x1E69A5F28];
        v15[1] = v9;
        v16[0] = v8;
        v16[1] = &unk_1F1BA18A8;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        v6 = [v11 initWithString:*MEMORY[0x1E69A5F20] attributes:v10];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t IMSPIScheduleSendMSMessagePayloadWithSummaryTextReturningGUID(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = *MEMORY[0x1E69A69F0];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a2;
  v22 = a1;
  v23 = [v15 stringByAppendingFormat:@":0000000000:%@", a3];
  v24 = sub_1A83D5750(v22);
  v25 = sub_1A83D44AC(@"iMessage", v21, v20, 0, v24, 0, v18, v17, v23, v22, 0, v19, v16);

  return v25;
}

uint64_t IMSPIScheduleSendMSMessagePayloadWithSummaryTextAndGUID(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a6;
  v16 = *MEMORY[0x1E69A69F0];
  v17 = a8;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = a2;
  v22 = a1;
  v23 = [v16 stringByAppendingFormat:@":0000000000:%@", a3];
  v24 = sub_1A83D5750(v22);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1A83D5CDC;
  v28[3] = &unk_1E7812700;
  v29 = v15;
  v25 = v15;
  v26 = sub_1A83D44AC(@"iMessage", v21, v20, 0, v24, v25, v18, v17, v23, v22, 0, v19, v28);

  return v26;
}

void sub_1A83D5CDC(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isEqualToString:*(a1 + 32)];
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Returned GUID matches %@.", &v9, 0xCu);
      }

LABEL_9:
    }
  }

  else if (v5)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "IMCoreSPI: Returned GUID (%@) does not match requested GUID (%@).", &v9, 0x16u);
    }

    goto LABEL_9;
  }
}

uint64_t IMSPISendMSMessagePayload(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v14 isWaldoEnabled])
  {

LABEL_9:
    v17 = IMSPISendMSMessagePayloadReturningGUID(v9, v10, v11, v12, 0, v13, 0);
    goto LABEL_10;
  }

  v15 = [v11 containsString:*MEMORY[0x1E69A6938]];

  if (!v15)
  {
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "IMCoreSPI: Waldo is disabled, and client attempted to send a waldo plugin message. Aborting.", v19, 2u);
    }
  }

  v17 = 0;
LABEL_10:

  return v17;
}

uint64_t IMSPISendMSMessagePayloadReturningGUID(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v20 isWaldoEnabled])
  {

LABEL_9:
    v24 = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":0000000000:%@", v15];
    v25 = sub_1A83D5750(v13);
    v23 = sub_1A83D44AC(@"iMessage", v14, v16, 0, v25, v17, 0, v18, v24, v13, 0, 0, v19);

    goto LABEL_10;
  }

  v21 = [v15 containsString:*MEMORY[0x1E69A6938]];

  if (!v21)
  {
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "IMCoreSPI: Waldo is disabled, and client attempted to send a waldo plugin message. Aborting.", buf, 2u);
    }
  }

  v23 = 0;
LABEL_10:

  return v23;
}

uint64_t IMSPISendMSMessagePayloadWithSummaryTextReturningGUID(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = *MEMORY[0x1E69A69F0];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a2;
  v22 = a1;
  v23 = [v15 stringByAppendingFormat:@":0000000000:%@", a3];
  v24 = sub_1A83D5750(v22);
  v25 = sub_1A83D44AC(@"iMessage", v21, v20, 0, v24, v19, v18, v17, v23, v22, 0, 0, v16);

  return v25;
}

uint64_t IMSPIReceiveMSMessagePayload(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v23 isWaldoEnabled])
  {

LABEL_9:
    v27 = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":0000000000:%@", v19];
    sub_1A8306F6C();
    v26 = sub_1A83D6490(v16, v17, v20, v21, v18, v22, v27, v15, 0);

    goto LABEL_10;
  }

  v24 = [v19 containsString:*MEMORY[0x1E69A6938]];

  if (!v24)
  {
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "IMCoreSPI: Waldo is disabled, and client attempted to receive a waldo plugin message. Aborting.", buf, 2u);
    }
  }

  v26 = 0;
LABEL_10:

  return v26;
}

uint64_t sub_1A83D6490(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v58 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v36 = a6;
  v35 = a7;
  v37 = a8;
  v17 = a9;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = 0;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Trying to send message with attachments for subscription identifier %@", buf, 0xCu);
    }
  }

  v19 = [MEMORY[0x1E695DF70] array];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v21)
  {
    v22 = *v52;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v52 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v51 + 1) + 8 * i);
        if ([v24 length])
        {
          [v19 addObject:v24];
        }

        else if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Receive participants contain empty string", buf, 2u);
          }
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v21);
  }

  if (![v19 count])
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = v20;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Invalid participants specified to receive from: %@", buf, 0xCu);
      }
    }

    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_34:
    v17[2](v17, 0);
LABEL_35:
    v26 = 0;
    goto LABEL_36;
  }

  if (![0 length])
  {
    v28 = [v36 count];
    if (!v37 && !v28)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Empty message specified to receive with no attachments or payloadData, ignoring", buf, 2u);
        }
      }

      if (!v17)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E0A04;
  block[3] = &unk_1E7814BF0;
  v39 = v36;
  v40 = v37;
  v41 = @"iMessage";
  v42 = v19;
  v43 = v32;
  v44 = 0;
  v50 = v17;
  v45 = v31;
  v46 = 0;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v26 = 1;
LABEL_36:

  return v26;
}

void IMSPIReceiveMSMessagePayloadWithCallback(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v29 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v24 isWaldoEnabled])
  {

LABEL_10:
    v28 = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":0000000000:%@", v19];
    sub_1A8306F6C();
    sub_1A83D6490(v16, v17, v20, v21, v18, v22, v28, v29, v23);

    v26 = v29;
    goto LABEL_11;
  }

  v25 = [v19 containsString:*MEMORY[0x1E69A6938]];

  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = v29;
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "IMCoreSPI: Waldo is disabled, and client attempted to receive a waldo plugin message. Aborting.", buf, 2u);
    }
  }

  if (v23)
  {
    (*(v23 + 2))(v23, 0);
  }

LABEL_11:
}

id IMSPIRetrieveLocalizedServiceStringByServiceName(uint64_t a1)
{
  v1 = [IMService serviceWithName:a1];
  v2 = [v1 _displayName];

  return v2;
}

void IMSPICalculateSendingServiceByDestinationsAndChatGUID(void *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v29 = a2;
  v28 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v44 = v29;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Get sending service by guid: %@, destinations: %@", buf, 0x16u);
    }
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v9)
  {
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        if ([v12 length])
        {
          [v7 addObject:v12];
        }

        else if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Destinations contain empty string when calculating sending service.", buf, 2u);
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    sub_1A8306F6C();
    v14 = sub_1A83D3A58(0, v7, v29, 0, 0);
    sub_1A8307074();
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = v14;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "IMSPIGetIMChat returns %@", buf, 0xCu);
      }
    }

    [v7 __imArrayByApplyingBlock:&unk_1F1B6F960];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v16 = v34 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v17)
    {
      v18 = *v34;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v16);
          }

          if (IMStringIsEmail())
          {
            v27 = 1;
            goto LABEL_33;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_33:

    v26 = [v14 shouldForceServerStatusRefresh];
    v20 = [v14 lastAddressedHandleID];
    v21 = [v14 lastAddressedSIMID];
    v22 = [v14 repliedToChat];
    v23 = [v14 forceMMS];
    v24 = [v14 isDowngraded];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1A83D7150;
    v30[3] = &unk_1E7814910;
    v32 = v28;
    v31 = v8;
    IMChatCalculateServiceForSendingNewComposeMaybeForce(v16, v14, v20, v21, v23, v27, v26, v24, v22, 0, v30);
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v8;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Invalid destination when calculating sending service: %@", buf, 0xCu);
    }
  }
}

void sub_1A83D7150(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = [a2 name];
    (*(v2 + 16))(v2, v4, *(a1 + 32));
  }
}

BOOL sub_1A83D71D8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a1;
  v13 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v32 = a6;
  v14 = a7;
  v15 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v17)
  {
    v18 = *v38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        if ([v20 length])
        {
          [v15 addObject:v20];
        }

        else if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Sending destinations contain empty string", buf, 2u);
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v17);
  }

  if (![v15 count])
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v16;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Invalid destination specified to send to: %@", buf, 0xCu);
      }

      goto LABEL_33;
    }

LABEL_34:
    v26 = 0;
    goto LABEL_48;
  }

  if (![v35 length])
  {
    v25 = [v36 count];
    if (!v14 && !v25)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Empty message specified to send with no attachments or payloadData, ignoring", buf, 2u);
        }

LABEL_33:

        goto LABEL_34;
      }

      goto LABEL_34;
    }
  }

  v22 = [v36 count];
  if (v14 || v22 || IMIsRunningInGameCenter())
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Have non-zero attachments to send, ensuring we have transfer capability", buf, 2u);
      }
    }

    sub_1A830701C();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
      }
    }

    sub_1A8306FC4();
  }

  v28 = sub_1A83D3A58(v33, v15, v34, 0, 1);
  v29 = v28;
  if (v28)
  {
    v26 = sub_1A83E004C(v28, v35, 0, 0, 0, v36, v32, v14, 0, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Cannot send message without chat", buf, 2u);
      }
    }

    v26 = 0;
  }

  sub_1A8307074();

LABEL_48:
  return v26;
}

BOOL IMSPISendMessageWithAttachmentsSynchronously(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = sub_1A83D775C(a5);
  v14 = sub_1A83D71D8(v12, v11, v10, v9, v13, 0, 0);

  return v14;
}

id sub_1A83D775C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = v2;
  if (v1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A83E160C;
    v7[3] = &unk_1E78133D0;
    v4 = v2;
    v8 = v4;
    [v1 enumerateObjectsUsingBlock:v7];

    [v4 count];
LABEL_4:
    v5 = [v3 copy];
    goto LABEL_5;
  }

  if ([v2 count])
  {
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

BOOL IMSPISendRichLinkSynchronously(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = IMSharedHelperCombinedPluginPayloadDictionaryData();
    v18 = [v14 absoluteString];
    v19 = sub_1A83D71D8(v11, v12, v13, v18, 0, *MEMORY[0x1E69A6A18], v17);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        v23 = v14;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "IMCoreSPI: url is not an NSURL %@", &v22, 0xCu);
      }
    }

    v19 = 0;
  }

  return v19;
}

void IMSPIRemapChatsWithLastAddressedLabelIDToNewLabelID(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    if ((IMSharedHelperDeviceHasMultipleSubscriptions() & 1) != 0 || IMIsRunningInDebugMode())
    {
      v5 = [MEMORY[0x1E69A7F68] sharedInstance];
      v6 = [v5 ctSubscriptionInfo];
      v7 = [v6 __im_subscriptionContextForForSimID:v4];

      v8 = [v7 labelID];
      if ([v8 length])
      {

LABEL_12:
        v12 = [v7 phoneNumber];
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v17 = 138412290;
            v18 = v7;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Found subscription to remap chats with: %@", &v17, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v17 = 138412802;
            v18 = v3;
            v19 = 2112;
            v20 = v4;
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Remapping chats with old labelID %@ to new labelID %@ and new phone number %@.", &v17, 0x20u);
          }
        }

        IMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs();
LABEL_31:

        goto LABEL_32;
      }

      v10 = [v7 phoneNumber];
      v11 = [v10 length];

      if (v11)
      {
        goto LABEL_12;
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = 138412546;
          v18 = v4;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "No valid subscription found with new labelID %@, not remapping chats. Subscription %@", &v17, 0x16u);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Remapping chats' lastAddressedIDs not supported.", &v17, 2u);
      }
    }

    v12 = &stru_1F1B76F98;
    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = v3;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Cannot remap chats because invalid arguments: oldLabelID %@ newLabelID %@", &v17, 0x16u);
    }
  }

LABEL_32:
}

id IMSPIGetDisplayNameAndParticipantsForChatWithGUID(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to get display name and participants for chat GUID: %@", buf, 0xCu);
    }
  }

  v3 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 handleRecords];
    v6 = [v5 __imArrayByApplyingBlock:&unk_1F1B6F980];

    v7 = [IMSPISuggestionsObject alloc];
    v8 = [v4 groupName];
    v9 = [(IMSPISuggestionsObject *)v7 initWithChatGuid:v1 displayName:v8 participants:v6];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Results for fetching chat group name and participants: %@", buf, 0xCu);
      }
    }

    v14 = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v1;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Failed to find chat for guid: %@", buf, 0xCu);
      }
    }

    v11 = 0;
  }

  return v11;
}

id IMSPIGetMostRecentContacts(uint64_t a1)
{
  v1 = a1;
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to get most recent contacts used by messages: %d", buf, 8u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
    }
  }

  sub_1A8306F6C();
  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = sub_1A8259CB0;
  v24 = sub_1A825AF84;
  v25 = 0;
  v4 = +[IMChatRegistry sharedRegistry];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A83D83E8;
  v18[3] = &unk_1E7814958;
  v18[4] = buf;
  [v4 _loadChatsFilteredUsingPredicate:0 lastMessageOlderThan:0 limit:v1 waitForReply:1 completionHandler:v18];

  [*(v21 + 5) sortUsingComparator:&unk_1F1B6F9A0];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(v21 + 5);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = *v15;
LABEL_11:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = sub_1A83D8438(*(*(&v14 + 1) + 8 * v9));
      if (v10)
      {
        [v5 addObject:{v10, v14}];
      }

      v11 = [v5 count] < v1;

      if (!v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  sub_1A8307074();
  v12 = [v5 copy];

  _Block_object_dispose(buf, 8);

  return v12;
}

uint64_t sub_1A83D83E8(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  *(*(*(a1 + 32) + 8) + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3);
}

IMSPISuggestionsObject *sub_1A83D8438(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DFA8];
  v3 = [v1 participants];
  v4 = [v2 setWithCapacity:{objc_msgSend(v3, "count")}];

  v5 = MEMORY[0x1E695DF70];
  v6 = [v1 participants];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v1 participants];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 ID];
        v15 = [v4 containsObject:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [v13 ID];
          [v4 addObject:v16];

          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v17 = [v1 displayName];
  v18 = v17;
  if (!v17 || ![v17 length])
  {
    v19 = [v1 displayNameWithRawAddress:0 isSpamFilteringEnabled:{objc_msgSend(MEMORY[0x1E69A8198], "isTextMessageExtensionEnabled")}];

    v18 = v19;
  }

  if ([v7 count])
  {
    v20 = [IMSPISuggestionsObject alloc];
    v21 = [v1 guid];
    v22 = [v7 copy];
    v23 = [(IMSPISuggestionsObject *)v20 initWithChatGuid:v21 displayName:v18 participants:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id IMSPIGetContactsByChatGUID(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to get contacts used by existing chatGUID: %@", &v11, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Setting the chat cap only", &v11, 2u);
    }
  }

  sub_1A8306F6C();
  v4 = +[IMChatRegistry sharedRegistry];
  v5 = [v4 existingChatWithGUID:v1];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v1;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "For existing chatGUID: %@, found chat: %@", &v11, 0x16u);
      }
    }

    v8 = sub_1A83D8438(v5);
  }

  else
  {
    if (v6)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v1;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Did not find existing chat for chatGUID: %@", &v11, 0xCu);
      }
    }

    v8 = 0;
  }

  sub_1A8307074();

  return v8;
}

id IMSPIGetAllChatsContainingParticipantWithHandle(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v17 = a1;
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "Request to get all chat guid, display name and all participatns for  %@", buf, 0xCu);
    }
  }

  v2 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = IMDChatGetChatsThatContainRecipient();
  v3 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = [v6 valueForKey:@"handles"];
        v8 = [MEMORY[0x1E695DF70] array];
        if ([v7 count])
        {
          v9 = 0;
          do
          {
            v10 = sub_1A8262D14([v7 objectAtIndex:v9]);
            if (v10)
            {
              [v8 addObject:v10];
            }

            ++v9;
          }

          while ([v7 count] > v9);
        }

        v11 = [IMSPISuggestionsObject alloc];
        v12 = [v6 valueForKey:@"chatGUID"];
        v13 = [v6 valueForKey:@"displayName"];
        v14 = [(IMSPISuggestionsObject *)v11 initWithChatGuid:v12 displayName:v13 participants:v8];

        [v2 addObject:v14];
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v3);
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = obj;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Results for chats with participant %@ = %@", buf, 0x16u);
    }
  }

  return v2;
}

IMSPIRecentEvent *IMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDs(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = v3;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Request to get message date and last addressed labelID from chat ids %@ and last addressed handles %@", &v24, 0x16u);
    }
  }

  v6 = [(IMSPIRecentEvent *)v3 __imSetByApplyingBlock:&unk_1F1B6F9C0];
  v7 = [v6 allObjects];
  v8 = [v4 allObjects];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Searching with canonicalized chat ids %@ and last addressed labelIDs %@", &v24, 0x16u);
    }
  }

  if (-[IMSPIRecentEvent count](v7, "count") && [v8 count])
  {
    MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs = IMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs();
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Got results %@", &v24, 0xCu);
      }
    }

    v12 = [(IMSPIRecentEvent *)MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs objectForKeyedSubscript:@"labelID"];
    v13 = [v12 length] == 0;

    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v14 = [(IMSPIRecentEvent *)MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs objectForKeyedSubscript:@"date"];

      if (v14)
      {
        v15 = [(IMSPIRecentEvent *)MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs objectForKeyedSubscript:@"date"];
        v16 = [v15 integerValue];

        v17 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v16];
      }

      else
      {
        v17 = 0;
      }

      v20 = [IMSPIRecentEvent alloc];
      v21 = [(IMSPIRecentEvent *)MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs objectForKeyedSubscript:@"labelID"];
      v19 = [(IMSPIRecentEvent *)v20 initWithLabelID:v21 date:v17];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Could not retrieve last address labelID/last message date because received invalid arguments!", &v24, 2u);
      }
    }

    v19 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Returning recent event %@", &v24, 0xCu);
    }
  }

  return v19;
}

id sub_1A83D90E0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = IMStripFormattingFromAddress();

  if (MEMORY[0x1AC56C3C0](v3))
  {
    v4 = IMInternationalForPhoneNumberWithOptions();
  }

  else
  {
    if (!IMStringIsEmail())
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [v3 lowercaseString];
  }

  v5 = v4;
LABEL_9:

LABEL_10:

  return v5;
}

IMSPIRecentEvent *IMSPIGetMostRecentIMEventForContactHandlesAndLocalPhoneHandles(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v25 = 138412546;
      v26 = v3;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Request to get message date and last addressed handle from chat ids %@ and last addressed handles %@", &v25, 0x16u);
    }
  }

  v6 = [(IMSPIRecentEvent *)v3 __imSetByApplyingBlock:&unk_1F1B6F9E0];
  v7 = [v4 __imSetByApplyingBlock:&unk_1F1B6FA00];
  v8 = [v6 allObjects];
  v9 = [v7 allObjects];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v25 = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Searching with canonicalized chat ids %@ and last addressed handles %@", &v25, 0x16u);
    }
  }

  if (-[IMSPIRecentEvent count](v8, "count") && [v9 count])
  {
    MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles = IMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles();
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Got results %@", &v25, 0xCu);
      }
    }

    v13 = [(IMSPIRecentEvent *)MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles objectForKeyedSubscript:@"handle"];
    v14 = [v13 length] == 0;

    if (v14)
    {
      v20 = 0;
    }

    else
    {
      v15 = [(IMSPIRecentEvent *)MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles objectForKeyedSubscript:@"date"];

      if (v15)
      {
        v16 = [(IMSPIRecentEvent *)MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles objectForKeyedSubscript:@"date"];
        v17 = [v16 integerValue];

        v18 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v17];
      }

      else
      {
        v18 = 0;
      }

      v21 = [IMSPIRecentEvent alloc];
      v22 = [(IMSPIRecentEvent *)MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles objectForKeyedSubscript:@"handle"];
      v20 = [(IMSPIRecentEvent *)v21 initWithHandle:v22 date:v18];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Could not retrieve last address handle/last message date because received invalid arguments!", &v25, 2u);
      }
    }

    v20 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v20;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Returning recent event %@", &v25, 0xCu);
    }
  }

  return v20;
}

id sub_1A83D95F8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = IMStripFormattingFromAddress();

  if (MEMORY[0x1AC56C3C0](v3))
  {
    v4 = IMInternationalForPhoneNumberWithOptions();
  }

  else
  {
    if (!IMStringIsEmail())
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [v3 lowercaseString];
  }

  v5 = v4;
LABEL_9:

LABEL_10:

  return v5;
}

id sub_1A83D96AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = IMStripFormattingFromAddress();

  if (MEMORY[0x1AC56C3C0](v3))
  {
    v4 = IMInternationalForPhoneNumberWithOptions();
  }

  else
  {
    if (!IMStringIsEmail())
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [v3 lowercaseString];
  }

  v5 = v4;
LABEL_9:

LABEL_10:

  return v5;
}

BOOL IMSPIMarkSPIMessagesAsReadWithCompletion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A83D98C0;
    v8[3] = &unk_1E7810230;
    v10 = v4;
    v9 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Empty messages to be marked as read, failing", buf, 2u);
      }
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  return v5 != 0;
}

void sub_1A83D98C0(dispatch_group_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1[5].isa)
  {
    v2 = dispatch_group_create();
  }

  else
  {
    v2 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      isa = a1[4].isa;
      *buf = 138412290;
      v26 = isa;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Marking messages as read: %@", buf, 0xCu);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a1;
  v5 = a1[4].isa;
  v6 = [(objc_class *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 guid];
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 length] == 0;
        v12 = IMOSLoggingEnabled();
        if (v11)
        {
          if (v12)
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v26 = v9;
              _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Missing message guid for message: %@, not marking as read", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v12)
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v26 = v10;
              _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, " => Message guid: %@", buf, 0xCu);
            }
          }

          if (v2)
          {
            dispatch_group_enter(v2);
          }

          v14 = +[IMDaemonController sharedController];
          v15 = [v14 remoteDaemon];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = sub_1A83D9C64;
          v18[3] = &unk_1E780FE18;
          v19 = v2;
          [v15 markMessageAsReadWithGUID:v10 callerOrigin:1 reply:v18];
        }
      }

      v6 = [(objc_class *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if (v2)
  {
    dispatch_group_notify(v2, MEMORY[0x1E69E96A0], v17[5].isa);
  }
}

void sub_1A83D9C64(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Marked message as read: %@", &v7, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    dispatch_group_leave(v6);
  }
}

BOOL IMSPIMarkSPIMessagesAsPlayed(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83D9E8C;
    block[3] = &unk_1E780FCB0;
    v6 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Empty messages to be marked as played, failing", buf, 2u);
    }
  }

  return v2 != 0;
}

void sub_1A83D9E8C(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Marking messages as played: %@", buf, 0xCu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v7 = *v19;
    *&v6 = 138412290;
    v17 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 guid];
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 length] == 0;
        v12 = IMOSLoggingEnabled();
        if (v11)
        {
          if (v12)
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = v17;
              v24 = v9;
              _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Missing message guid for message: %@, not marking as read", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v12)
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v17;
              v24 = v10;
              _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, " => Message guid: %@", buf, 0xCu);
            }
          }

          v14 = +[IMDaemonController sharedController];
          v15 = [v14 remoteDaemon];
          [v15 markPlayedForMessageGUID:v10];
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

BOOL IMSPIMarkSPIMessagesAsSaved(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DA2A0;
    block[3] = &unk_1E780FCB0;
    v6 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Empty messages to be marked as saved, failing", buf, 2u);
    }
  }

  return v2 != 0;
}