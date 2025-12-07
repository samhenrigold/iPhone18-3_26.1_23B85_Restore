uint64_t sub_22B572164(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 8);
      v5 = [*(a1 + 40) count];
      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "%@: Finished processing batch of %lu messages.", &v7, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_22B5722CC(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = [objc_msgSend(*(a1 + 40) "service")];
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = a2;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@: Finished sync task for %@ service. Error: %@", &v12, 0x20u);
    }
  }

  v7 = [*(*(a1 + 32) + 32) count];
  v8 = *(a1 + 32);
  if (v7 == 1 && *(v8 + 40))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(*(a1 + 32) + 8);
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%@: Finished Syncing all services for task", &v12, 0xCu);
      }
    }

    (*(*(*(a1 + 32) + 40) + 16))();
    v8 = *(a1 + 32);
  }

  return [*(v8 + 32) removeObjectForKey:{objc_msgSend(objc_msgSend(*(a1 + 40), "service"), "internalName")}];
}

uint64_t sub_22B572C6C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 handleID];
  v6 = [v4 service];
  v7 = [v4 isReachable];
  v8 = [v4 persistentMenu];
  v9 = [v4 brandInfo];
  v10 = [v4 brandLogo];

  v11 = [v10 image];
  v12 = [a1 brandLogoDataFromBlastDoorImage:v11];
  v13 = [a1 initWithHandleID:v5 service:v6 isReachable:v7 supportsEncryption:0 persistentMenuDictionary:v8 brandInfoDictionary:v9 brandLogoData:v12];

  return v13;
}

__CFData *sub_22B572D84(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 cgImage];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB28] data];
    v6 = [*MEMORY[0x277CE1E10] identifier];
    v7 = CFStringCreateWithCString(0, [v6 UTF8String], 0x8000100u);

    v8 = CGImageDestinationCreateWithData(v5, v7, 1uLL, 0);
    CFRelease(v7);
    CGImageDestinationAddImage(v8, v4, 0);
    if (!CGImageDestinationFinalize(v8))
    {

      v5 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_22B572E70(void *a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB38];
  v6 = [v4 handleResults];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v4 handleResults];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v14 = [objc_alloc(MEMORY[0x277D1ABA0]) initWithBlastDoorResult:v13];
        v15 = [v13 handleID];
        [v7 setObject:v14 forKeyedSubscript:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v16 = [v4 service];
  v17 = [v4 error];
  if (v17 >= 7)
  {
    v18 = -1;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v7 copy];
  v20 = [v4 isFinal];
  v21 = [v4 allAreReachable];
  LOBYTE(v24) = [v4 didCheckServer];
  v22 = [a1 initWithService:v16 error:v18 handleResults:v19 isFinal:v20 allAreReachable:v21 allSupportEncryption:0 didCheckServer:v24];

  return v22;
}

uint64_t sub_22B5732B8()
{
  qword_27D8CFE40 = objc_alloc_init(IMDBackgroundMessagingAPIMessageRegistry);

  return MEMORY[0x2821F96F8]();
}

id sub_22B573474(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 devices];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v2)
  {
    v3 = *v11;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v11 != v3)
      {
        objc_enumerationMutation(v1);
      }

      v5 = *(*(&v10 + 1) + 8 * v4);
      if ([v5 isDefaultPairedDevice])
      {
        if ([v5 isConnected])
        {
          break;
        }
      }

      if (v2 == ++v4)
      {
        v2 = [v1 countByEnumeratingWithState:&v10 objects:v16 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Found default paired device which is connected: %@", buf, 0xCu);
      }
    }

    v7 = v5;

    if (v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_10:
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not connected to companion", buf, 2u);
    }
  }

  v7 = 0;
LABEL_21:

  return v7;
}

uint64_t sub_22B573A1C()
{
  qword_281420FA0 = objc_alloc_init(IMDFileTransferCenter);

  return MEMORY[0x2821F96F8]();
}

void sub_22B574344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22B57435C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDAccountController sharedInstance];
  v5 = [v3 accountID];
  v6 = [v4 accountForAccountID:v5];

  if (*(a1 + 40) == 1 && (!v6 || ([v6 service], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "supportsDatabase"), v7, (v8 & 1) != 0) || (v9 = *(*(a1 + 32) + 8), v10 = *(v9 + 24), *(v9 + 24) = v10 + 1, v10 > 24)))
  {
    v11 = 0;
  }

  else
  {
    v11 = [v3 _dictionaryRepresentation];
  }

  return v11;
}

void sub_22B576AE4(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Finished re-indexing %ld messages due to preview generation state change", &v4, 0xCu);
  }
}

void sub_22B5773D8(uint64_t a1, void *a2, int a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (a3)
      {
        v9 = @"YES";
      }

      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Generated preview for SMS attachment part, success %@ error %@", &v10, 0x16u);
    }
  }
}

uint64_t sub_22B57AEF0(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
    if ([v3 isFinished])
    {
      v4 = *(a1 + 32);
      v5 = [v3 guid];
      [v4 addObject:v5];
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B57BD14()
{
  qword_281420FA8 = objc_alloc_init(IMDExposureNotificationManager);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B57BDBC()
{
  v0 = objc_alloc_init(MEMORY[0x277CC5C90]);
  v1 = qword_2814213B0;
  qword_2814213B0 = v0;

  v2 = qword_2814213B0;

  return MEMORY[0x2821F9670](v2, sel_activateWithCompletionHandler_);
}

void sub_22B57BE10(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (!v2)
      {
        v4 = @"YES";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Activated ENManager: %@", &v5, 0xCu);
    }
  }
}

void sub_22B57C144(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(a1 + 32) _allowedDomains];
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

          if ([v3 __im_conformsToDomain:*(*(&v9 + 1) + 8 * v8)])
          {
            [*(a1 + 40) addObject:v3];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

uint64_t sub_22B57C330()
{
  result = MEMORY[0x231897B40](@"ENTextMessage", @"ExposureNotification");
  qword_27D8CFE48 = result;
  return result;
}

void sub_22B57C540(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B57C5F0;
  v5[3] = &unk_278703808;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t sub_22B57C5F0(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error: %@", &v8, 0xCu);
      }

LABEL_9:
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Verified success", &v8, 2u);
    }

    goto LABEL_9;
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_22B57C784()
{
  qword_281420F30 = objc_alloc_init(IMDOffGridAvailabilityVerificationManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22B57C968(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2C3C(a1, v7, v11);
    }
  }

  else
  {
    v8 = [IMDAvailabilityVerificationTokens alloc];
    v9 = [v5 subscriptionValidationToken];
    v10 = [v5 encryptionValidationToken];
    v11 = [(IMDAvailabilityVerificationTokens *)v8 initWithSubscriptionValidationToken:v9 encryptionValidationToken:v10];

    [*(*(a1 + 40) + 24) setObject:v11 forKey:*(a1 + 32)];
  }
}

void sub_22B57CC44(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  switch(a2)
  {
    case 2:
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = *(a1 + 32);
          v10 = *(a1 + 40);
          v12 = 138412546;
          v13 = v9;
          v14 = 2112;
          v15 = v10;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received an invalid response when validating tokens, attempting to fix by potentially re-inviting senderHandleID %@ fromHandleID %@", &v12, 0x16u);
        }
      }

      v11 = [MEMORY[0x277D1AB10] sharedInstance];
      [v11 repairOffGridStatusWithHandleID:*(a1 + 32) fromHandleID:*(a1 + 40) completion:&unk_283F19E08];

      break;
    case 1:
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Received a valid response when validating tokens, no further action needed.", &v12, 2u);
        }
      }

      break;
    case 0:
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D2D40(v6);
      }

      break;
  }
}

void sub_22B57CE10(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 134218754;
      v11 = a2;
      v12 = 2048;
      v13 = a3;
      v14 = 2048;
      v15 = a4;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Completed invitation. didAttemptInvitation: %ld, wasAlreadyInvited: %ld, didShare: %ld Error: %@", &v10, 0x2Au);
    }
  }
}

void sub_22B57CFD4()
{
  qword_281421480 = MEMORY[0x231897B40](@"PSYSyncCoordinator", @"PairedSync");
  v0 = MEMORY[0x231897B40](@"PSYServiceSyncSession", @"PairedSync");
  qword_281421488 = v0;
  if (qword_281421480)
  {
    if (v0)
    {
      return;
    }

    goto LABEL_9;
  }

  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMPSYSyncCoordinator", "void _IMDPairedSyncAPIInit(void)_block_invoke", IMFileLocationTrimFileName(), 68, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", &stru_283F23018)];
  v2 = IMGetAssertionFailureHandler();
  if (v2)
  {
    v2(v1);
  }

  else
  {
    v3 = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2D84(v1, v3);
    }
  }

  if (!qword_281421488)
  {
LABEL_9:
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMPSYServiceSyncSession", "void _IMDPairedSyncAPIInit(void)_block_invoke", IMFileLocationTrimFileName(), 69, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", &stru_283F23018)];
    v5 = IMGetAssertionFailureHandler();
    if (v5)
    {
      v5(v4);
    }

    else
    {
      v6 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D2D84(v4, v6);
      }
    }
  }
}

IMDQuickSwitchController *sub_22B57D1F0()
{
  result = objc_alloc_init(IMDQuickSwitchController);
  qword_281420FB0 = result;
  return result;
}

uint64_t sub_22B57E090(uint64_t a1, void *a2)
{
  IMTimingStopTimingForKey();

  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "QuickSwitch Could not create zipped DB", v6, 2u);
      }
    }
  }

  [*(a1 + 40) _getFileSizeAtPath:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_22B57E3D0(uint64_t a1, void *a2)
{
  IMTimingStopTimingForKey();

  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "QuickSwitch Could not create unzipped DB", v6, 2u);
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22B57F2DC(uint64_t a1)
{
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = 0;
    v4 = "We could not create zip file for QuickSwitch";
    v5 = &v8;
    goto LABEL_12;
  }

  if (![*(a1 + 32) _sendZippedFileAtPath:objc_msgSend(*(a1 + 32) withCommand:{"_getZippedDBPath"), 3}])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    LOWORD(v6) = 0;
    v4 = "Database QuickSwitch: Could not send file over to gizmo. Bailing";
    v5 = &v6;
LABEL_12:
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
LABEL_13:
    [*(a1 + 32) _quickSwitchCompleted:{0, v6}];
    return;
  }

  [*(a1 + 32) _notifyPSYDataSent];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Sent zipped file to watch", buf, 2u);
    }
  }
}

uint64_t sub_22B57F6A8(uint64_t a1)
{
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return [*(a1 + 40) _quickSwitchCompleted:{0, v7}];
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return [*(a1 + 40) _quickSwitchCompleted:{0, v7}];
    }

    v8 = 0;
    v5 = "QuickSwitch we could not create zip file";
    v6 = &v8;
    goto LABEL_12;
  }

  if (![*(a1 + 40) _sendZippedFileAtPath:*(a1 + 32) withCommand:6])
  {
    if (!IMOSLoggingEnabled())
    {
      return [*(a1 + 40) _quickSwitchCompleted:{0, v7}];
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return [*(a1 + 40) _quickSwitchCompleted:{0, v7}];
    }

    LOWORD(v7) = 0;
    v5 = "QuickSwitch could not send file over to gizmo. Bailing";
    v6 = &v7;
LABEL_12:
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
    return [*(a1 + 40) _quickSwitchCompleted:{0, v7}];
  }

  v2 = *(a1 + 40);

  return [v2 _notifyPSYDataSent];
}

uint64_t sub_22B581930()
{
  qword_27D8CFE58 = objc_alloc_init(IMDCKSyncTokenStore);

  return MEMORY[0x2821F96F8]();
}

void sub_22B582C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22B583C10(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 incomingOC];
  }

  else
  {
    v2 = &unk_283F4E618;
  }

  return v2;
}

id sub_22B583C68(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 samplingUUID];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22B58425C()
{
  result = MEMORY[0x231897B40](@"SWCollaborationNoticeTransmissionMessage", @"SharedWithYouCore");
  qword_27D8CFE68 = result;
  return result;
}

uint64_t sub_22B5842D0()
{
  result = MEMORY[0x231897B40](@"SWCollaborationClearNoticeTransmissionMessage", @"SharedWithYouCore");
  qword_27D8CFE78 = result;
  return result;
}

void sub_22B584EE8(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v6)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D3288();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        *buf = 136315650;
        v23 = "[IMDCollaborationNoticeDispatcher sendClearNotice:toHandles:]_block_invoke";
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%s Blastdoor completed processing Clear Collaboration Notice protobuf fromHandle: %@, notice: %@", buf, 0x20u);
      }
    }

    if ([v7 version] < 3)
    {
      v11 = objc_alloc(MEMORY[0x277D1A930]);
      v12 = [v7 collaborationId];
      v13 = [v7 date];
      v14 = [v7 guidString];
      v15 = [v11 initWithCollaborationId:v12 date:v13 guidString:v14];

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [*(a1 + 40) delegate];
          *buf = 138412546;
          v23 = v15;
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Passing notice %@ to delegate %@", buf, 0x16u);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B585204;
      block[3] = &unk_2787038F8;
      v18 = *(a1 + 32);
      block[4] = *(a1 + 40);
      v20 = v15;
      v21 = v18;
      v8 = v15;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D3304(v7);
      }
    }
  }
}

void sub_22B585204(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dispatcher:*(a1 + 32) didReceiveDismissalRequest:*(a1 + 40) fromID:*(a1 + 48)];
}

void sub_22B5857A0(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D3540();
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
        *buf = 136315650;
        v23 = "[IMDCollaborationNoticeDispatcher handleIncomingNoticeProtobuf:service:account:fromID:context:]_block_invoke";
        v24 = 2112;
        v25 = v9;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%s Blastdoor completed processing Collaboration Notice protobuf fromHandle: %@, notice: %@", buf, 0x20u);
      }
    }

    if ([v5 version] < 2)
    {
      v10 = objc_alloc(MEMORY[0x277D1A948]);
      v11 = [v5 highlightEvent];
      v12 = [v5 highlightEventType];
      v13 = [v5 guidString];
      v14 = [v5 noticeDate];
      v15 = [v10 initWithEventData:v11 eventType:v12 guidString:v13 date:v14];

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [*(a1 + 40) delegate];
          *buf = 138412546;
          v23 = v15;
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Passing notice %@ to delegate %@", buf, 0x16u);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B585AC0;
      block[3] = &unk_2787038F8;
      v18 = *(a1 + 32);
      block[4] = *(a1 + 40);
      v20 = v15;
      v21 = v18;
      v7 = v15;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D35BC(v5);
      }
    }
  }
}

void sub_22B585AC0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dispatcher:*(a1 + 32) didReceiveNotice:*(a1 + 40) fromID:*(a1 + 48)];
}

void sub_22B585D60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D36FC();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
        v12 = 136315650;
        v13 = "[IMDCollaborationNoticeDispatcher service:account:incomingMessage:fromID:context:]_block_invoke";
        v14 = 2112;
        v15 = v11;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "%s Blastdoor completed processing Collaboration Notice Action, actionType: %@, guids: %@", &v12, 0x20u);
      }
    }

    if (a2)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D3778(a2);
      }
    }

    else
    {
      v9 = [*(a1 + 32) delegate];
      [v9 dispatcher:*(a1 + 32) didReceiveDismissalReflectionForNoticeGUIDs:v7];
    }
  }
}

id sub_22B58647C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27D8CFE88;
  v7 = qword_27D8CFE88;
  if (!qword_27D8CFE88)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_22B586628;
    v3[3] = &unk_278703200;
    v3[4] = &v4;
    sub_22B586628(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22B586544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_22B586628(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!qword_27D8CFE90)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = sub_22B586754;
    v3[4] = &unk_278702AF8;
    v3[5] = v3;
    v4 = xmmword_278705028;
    v5 = 0;
    qword_27D8CFE90 = _sl_dlopen();
  }

  if (!qword_27D8CFE90)
  {
    sub_22B7D39CC(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("_SWHighlightEventAllowList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22B7D3950();
  }

  qword_27D8CFE88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22B586754(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27D8CFE90 = result;
  return result;
}

id sub_22B586834(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 data];
  if ([v4 length])
  {
    v5 = [v4 _FTCopyGzippedData];
    v6 = [MEMORY[0x277D1A8E8] paddingForMessageOfSize:{objc_msgSend(v5, "length")}];
    [v3 setPadding:v6];
    v7 = [v4 _FTCopyGzippedData];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_22B5868EC(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(MEMORY[0x277D1ABF0]);
    v3 = a1;
    [v2 setVersion:1];
    v4 = [v3 timeExpressiveSendPlayed];
    [v2 setTimeExpressiveSentPlayed:{objc_msgSend(v4, "__im_nanosecondTimeInterval")}];

    v5 = [v3 timePlayed];
    [v2 setTimePlayed:{objc_msgSend(v5, "__im_nanosecondTimeInterval")}];

    v6 = [v3 timeRead];
    [v2 setTimeRead:{objc_msgSend(v6, "__im_nanosecondTimeInterval")}];

    v7 = [v3 timeDelivered];
    [v2 setTimeDelivered:{objc_msgSend(v7, "__im_nanosecondTimeInterval")}];

    v8 = [v3 balloonBundleID];
    [v2 setBaloonBundleId:v8];

    v9 = [v3 expressiveSendStyleID];
    [v2 setExpressiveSendId:v9];

    v10 = [v3 body];
    v11 = [v10 string];
    [v2 setMessageBody:v11];

    v12 = [v3 bodyData];
    [v2 setMessageBodyData:v12];

    v13 = [v3 subject];
    [v2 setMessageSubject:v13];

    v14 = [v3 messageSummaryInfo];
    v15 = JWEncodeDictionary();
    [v2 setMessageSummaryInfo:v15];

    v16 = [v3 payloadData];
    [v2 setPayloadData:v16];

    [v2 setExpireState:{objc_msgSend(v3, "expireState")}];
    v17 = [v3 associatedMessageGUID];
    [v2 setAssociatedMessageGuid:v17];

    [v2 setAssociatedMessageType:{objc_msgSend(v3, "associatedMessageType")}];
    [v2 setAssociatedMessageRangeLocation:{objc_msgSend(v3, "associatedMessageRange")}];
    [v3 associatedMessageRange];
    [v2 setAssociatedMessageRangeLength:v18];
    v19 = objc_opt_class();

    v20 = [v19 compressedProtobufDataWithPadding:v2];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [MEMORY[0x277CCACC8] callStackSymbols];
        v24 = 138412546;
        v25 = a1;
        v26 = 2112;
        v27 = v22;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "***Error compressedProtobufDataForMessage called on object %@ %@", &v24, 0x16u);
      }
    }

    v20 = 0;
  }

  return v20;
}

id sub_22B586C6C(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    v3 = objc_alloc(objc_opt_class());
    v4 = [v2 threadIdentifier];
    [v3 setThreadIdentifier:v4];

    v5 = objc_opt_class();
    v6 = [v5 compressedProtobufDataWithPadding:v3];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x277CCACC8] callStackSymbols];
        v10 = 138412546;
        v11 = a1;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***Error compressedProtobufDataForMessageP2 (reply data) called on object %@ %@", &v10, 0x16u);
      }
    }

    v6 = 0;
  }

  return v6;
}

id sub_22B586E08(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    v3 = objc_alloc(objc_opt_class());
    [v3 setCmmState:{objc_msgSend(v2, "getCMMState")}];
    [v3 setCmmAssetOffset:{objc_msgSend(v2, "getCMMAssetOffset")}];
    v4 = objc_opt_class();

    v5 = [v4 compressedProtobufDataWithPadding:v3];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [MEMORY[0x277CCACC8] callStackSymbols];
        v9 = 138412546;
        v10 = a1;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "***Error compressedProtobufDataForMessageP3 (SWY CMM data) called on object %@ %@", &v9, 0x16u);
      }
    }

    v5 = 0;
  }

  return v5;
}

id sub_22B586FAC(void *a1)
{
  v2 = objc_alloc(objc_opt_class());
  v3 = [a1 cloudKitChatID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
    v5 = [v4 associatedMessageEmoji];
    [v2 setAssociatedMessageEmoji:v5];

    [v2 setScheduleType:{objc_msgSend(v4, "scheduleType")}];
    [v2 setScheduleState:{objc_msgSend(v4, "scheduleState")}];
    v6 = [v4 dateRecovered];
    [v2 setTimeRecovered:{objc_msgSend(v6, "__im_nanosecondTimeInterval")}];

    v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v8 = [v7 isMergeBusinessSenderIndiaEnabled];

    if (v8)
    {
      v9 = +[IMDChatRegistry sharedInstance];
      v10 = [v4 service];
      v11 = [v9 _lookupChatUsingParentChatID:v3 service:v10];

      if (v11 && [v11 isMergedBusinessThread])
      {
        v12 = [v4 backCompatParentChatIDForMergedBusinessThread:v4];

        v3 = v12;
      }
    }
  }

  [v2 setActualParentChatId:v3];
  v13 = [a1 service];
  [v2 setActualService:v13];

  v14 = [objc_opt_class() compressedProtobufDataWithPadding:v2];

  return v14;
}

id sub_22B587190(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKey:@"MID"];
  v6 = [v4 objectForKey:@"TOID"];
  v7 = [v4 objectForKey:@"TOPart"];

  v8 = objc_alloc(objc_opt_class());
  [v8 setMsgid:v5];
  [v8 setThreadGuid:v6];
  [v8 setThreadPart:v7];
  v9 = [a1 compressedProtobufDataWithPadding:v8];

  return v9;
}

id sub_22B58727C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKey:@"MID"];
  v6 = [v4 objectForKey:@"SR"];

  v7 = objc_alloc(objc_opt_class());
  [v7 setMsgid:v5];
  [v7 setSr:v6];
  v8 = [a1 compressedProtobufDataWithPadding:v7];

  return v8;
}

id sub_22B587338(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKey:@"MID"];
  v6 = [v4 objectForKey:@"CHATID"];

  v7 = objc_alloc(objc_opt_class());
  [v7 setMsgid:v5];
  [v7 setChatid:v6];
  v8 = [a1 compressedProtobufDataWithPadding:v7];

  return v8;
}

id sub_22B5873F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1ABF0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B587470(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1AC00];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B5874EC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1AC08];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B587568(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1AC10];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B5875E4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1AC20];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B587660(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1AC28];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B5876DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1AC30];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B587758(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() protobufForCompressedData:v6];

  v8 = v5;
  v9 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v7, "timeExpressiveSentPlayed")}];
  [v8 setTimeExpressiveSendPlayed:v9];

  v10 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v7, "timePlayed")}];
  [v8 setTimePlayed:v10];

  v11 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v7, "timeRead")}];
  [v8 setTimeRead:v11];

  v12 = [v7 baloonBundleId];
  [v8 setBalloonBundleID:v12];

  v13 = [v7 expressiveSendId];
  [v8 setExpressiveSendStyleID:v13];

  v14 = [v7 messageBodyData];
  [v8 setBodyData:v14];

  v15 = [v7 messageSubject];
  [v8 setSubject:v15];

  v16 = [v7 messageSummaryInfo];
  v17 = JWDecodeDictionary();
  [v8 setMessageSummaryInfo:v17];

  v18 = [v7 payloadData];
  [v8 setPayloadData:v18];

  v19 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v7, "timeDelivered")}];
  [v8 setTimeDelivered:v19];

  [v8 setExpireState:{objc_msgSend(v7, "expireState")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v8;
    v21 = [v7 associatedMessageGuid];
    [v20 setAssociatedMessageGUID:v21];

    [v20 setAssociatedMessageType:{objc_msgSend(v7, "associatedMessageType")}];
    [v20 setAssociatedMessageRange:{objc_msgSend(v7, "associatedMessageRangeLocation"), objc_msgSend(v7, "associatedMessageRangeLength")}];
  }

  return v8;
}

id sub_22B587A04(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() protobufForCompressedDataP2:v6];

  v8 = [v7 threadIdentifier];
  [v5 setThreadIdentifier:v8];

  return v5;
}

id sub_22B587A94(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() protobufForCompressedDataP3:v6];

  [v5 setCMMState:{objc_msgSend(v7, "cmmState")}];
  [v5 setCMMAssetOffset:{objc_msgSend(v7, "cmmAssetOffset")}];

  return v5;
}

id sub_22B587B2C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() protobufForCompressedDataP4:v6];
  v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v9 = [v8 isEmojiTapbacksEnabled];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
      v11 = [v7 associatedMessageEmoji];
      [v10 setAssociatedMessageEmoji:v11];
    }
  }

  if ([v7 hasActualService])
  {
    v12 = [v7 actualService];
    v13 = [v5 service];
    v14 = [v12 isEqualToString:v13];

    if ((v14 & 1) == 0)
    {
      v15 = *MEMORY[0x277D1A610];
      v16 = [v5 service];
      LODWORD(v15) = [v15 isEqualToString:v16];

      if (v15)
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D3A4C(v5, v7, v17);
        }

        v18 = [v7 actualService];
        [v5 setService:v18];
      }

      else if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v5 service];
          v21 = [v7 actualService];
          v24 = 138412546;
          v25 = v20;
          v26 = 2112;
          v27 = v21;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Protobuf4 provides an actualService override but current service is not SMS (current %@, override %@), ignoring!", &v24, 0x16u);
        }
      }
    }
  }

  [v5 setScheduleType:{objc_msgSend(v7, "scheduleType")}];
  [v5 setScheduleState:{objc_msgSend(v7, "scheduleState")}];
  if ([v7 hasTimeRecovered])
  {
    v22 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v7, "timeRecovered")}];
    [v5 setDateRecovered:v22];
  }

  return v5;
}

void *sub_22B587E30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([*MEMORY[0x277D1A5F0] containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x277D1A610];
  }

  v5 = v4;

  return v4;
}

id sub_22B587E8C(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [a1 cloudKitChatID];
  v3 = v2;
  if (!v2 || ![v2 length])
  {
    v9 = 0;
    goto LABEL_38;
  }

  v4 = +[IMDChatRegistry sharedInstance];
  v5 = [a1 service];
  v6 = [v4 _lookupChatUsingParentChatID:v3 service:v5];

  v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(v5) = [v7 isMergeBusinessSenderIndiaEnabled];

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v6 isMergedBusinessThread])
  {
    v10 = *MEMORY[0x277D1A5F0];
    v11 = [a1 service];
    LODWORD(v10) = [v10 containsObject:v11];

    if (v10)
    {
      v8 = [a1 cloudKitChatID];
      goto LABEL_36;
    }

    if ([v3 __im_isWellFormedChatGUID])
    {
      v12 = [a1 cloudKitChatID];
      IMComponentsFromChatGUID();
      v13 = 0;
      v14 = 0;

      if (v13 && v14)
      {
        v15 = +[IMDChatStore sharedInstance];
        v16 = MEMORY[0x277D1A610];
        v17 = [v15 chatsWithIdentifier:v13 onServiceNamed:*MEMORY[0x277D1A610]];

        if ([v17 count])
        {
          v18 = [v17 firstObject];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v18 guid];
              v21 = [v18 cloudKitChatIDForServiceName:*v16];
              *buf = 138412802;
              v37 = v3;
              v38 = 2112;
              v39 = v20;
              v40 = 2112;
              v41 = v21;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "For backcompat version of parentChatID %@, found SMS chat %@, with cloudKitChatID %@", buf, 0x20u);
            }
          }

          v9 = [v18 cloudKitChatIDForServiceName:*v16];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Couldn't find the SMS chat, message may be lost if restored to older devices", buf, 2u);
            }
          }

          v9 = v3;
        }

        goto LABEL_37;
      }
    }

    if (v6)
    {
      v22 = +[IMDChatStore sharedInstance];
      v23 = [v6 groupID];
      v24 = MEMORY[0x277D1A610];
      v25 = [v22 newestChatWithGroupID:v23 onService:*MEMORY[0x277D1A610]];

      v26 = IMOSLoggingEnabled();
      if (v25)
      {
        if (v26)
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [v6 groupID];
            v29 = [v25 guid];
            v30 = [v25 cloudKitChatIDForServiceName:*v24];
            *buf = 138413058;
            v37 = v3;
            v38 = 2112;
            v39 = v28;
            v40 = 2112;
            v41 = v29;
            v42 = 2112;
            v43 = v30;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "For backcompat version of parentChatID %@, using groupID %@, found SMS chat %@, with cloudKitChatID %@", buf, 0x2Au);
          }
        }

        v9 = [v25 cloudKitChatIDForServiceName:*v24];

        goto LABEL_37;
      }

      if (!v26)
      {
        goto LABEL_35;
      }

      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = [v6 groupID];
        *buf = 138412546;
        v37 = v3;
        v38 = 2112;
        v39 = v33;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "For backcompat version of parentChatID %@, using groupID %@, could NOT find SMS chat, message may be lost on older devices", buf, 0x16u);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_35:
        v8 = v3;
        goto LABEL_36;
      }

      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [a1 guid];
        *buf = 138412546;
        v37 = v3;
        v38 = 2112;
        v39 = v32;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Can't find parent chat from %@ for message %@, message may be lost if restored to older devices", buf, 0x16u);
      }
    }

    goto LABEL_35;
  }

  v8 = [a1 backCompatParentChatIDForMergedBusinessThread:a1];
LABEL_36:
  v9 = v8;
LABEL_37:

LABEL_38:

  return v9;
}

id sub_22B5884A8(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 originalUnformattedID];
  v6 = [v5 substringToIndex:3];

  v7 = [a1 cloudKitChatID];
  v8 = [v7 mutableCopy];

  v9 = [v8 rangeOfString:@";" options:4];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    if ([v6 length])
    {
      [v8 insertString:v6 atIndex:v10 + 1];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v4 guid];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Returning parent chat ID for merged business thread for message guid %@ as %@", &v14, 0x16u);
    }
  }

  return v8;
}

void sub_22B588648(void *a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v4 = [a1 guid];
  [v17 _setCKRecordString:v4 forKey:@"guid"];

  v5 = [a1 service];
  v6 = [a1 backCompatServiceFor:v5];
  [v17 _setCKRecordString:v6 forKey:@"svc"];

  v7 = [a1 time];
  [v17 _setCKRecordDate:v7 forKey:@"time"];

  v8 = [a1 sender];
  [v17 _setCKRecordString:v8 forKey:@"sender"];

  v9 = [a1 backCompatParentChatID];
  [v17 _setCKRecordString:v9 forKey:@"chatID"];
  v10 = [a1 destinationCallerID];
  [v17 _setCKRecordString:v10 forKey:@"dcId"];

  if (IMSharedHelperSortUsingReplyToGUIDAlgorithm())
  {
    v11 = [a1 replyToGUID];
    [v17 _setCKRecordString:v11 forKey:@"rGuid"];
  }

  v12 = [a1 time];
  [v12 timeIntervalSinceReferenceDate];
  v14 = floor(v13 / 86400.0) * 86400.0;

  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v14];
  [v17 setValue:v15 forKey:@"utm"];
  v16 = [a1 compressedProtobufDataForMessageP4];
  [v17 _setCKRecordData:v16 forKey:@"msgProto4"];
}

void sub_22B588858(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = &unk_283F4E678;
    }

    else
    {
      v6 = &unk_283F4E690;
    }

    [v4 _setUnencryptedCKRecordNumber:v6 forKey:@"msgType"];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "flags")}];
    [v4 _setCKRecordNumber:v7 forKey:@"flags"];

    v8 = [v5 compressedProtobufDataForMessage];
    [v4 _setCKRecordData:v8 forKey:@"msgProto"];

    v9 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v10 = [v9 messageSyncP2Enabled];

    if (v10)
    {
      v11 = [v5 compressedProtobufDataForMessageP2];
      [v4 _setCKRecordData:v11 forKey:@"msgProto2"];
    }

    v12 = [v5 compressedProtobufDataForMessageP3];
    [v4 _setCKRecordData:v12 forKey:@"msgProto3"];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "errorCode")}];
    [v4 _setUnencryptedCKRecordNumber:v13 forKey:@"eCode"];
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x277CCACC8] callStackSymbols];
      v16 = 138412546;
      v17 = a1;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "***Error _populateCKRecordWithIMMessageItemFields called on object %@ %@", &v16, 0x16u);
    }
  }
}

id sub_22B588AE4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1ABE0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B588B60(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [objc_opt_class() groupTitleChangeProtobufForCompressedData:v9];

  v11 = [objc_opt_class() messageSummaryInfoProtobufForCompressedData:v8];

  v12 = [v10 groupTitle];
  [v7 setTitle:v12];

  v13 = [v10 otherHandle];
  [v7 setOtherHandle:v13];

  v14 = [v11 messageSummaryInfo];
  v15 = JWDecodeDictionary();
  [v7 setMessageSummaryInfo:v15];

  return v7;
}

id sub_22B588C74(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(MEMORY[0x277D1ABE0]);
    v3 = a1;
    [v2 setVersion:1];
    v4 = [v3 title];
    [v2 setGroupTitle:v4];

    v5 = [v3 otherHandle];
    [v2 setOtherHandle:v5];

    v6 = objc_opt_class();
    v7 = [v6 compressedProtobufDataWithPadding:v2];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCACC8] callStackSymbols];
        v11 = 138412546;
        v12 = a1;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "***Error compressedProtobufDataForGroupTitleChangeItem called on object %@ %@", &v11, 0x16u);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_22B588E34(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    v3 = [v2 messageSummaryInfo];
    v4 = [v3 count];

    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D1AC18]);
      v6 = [v2 messageSummaryInfo];
      v7 = JWEncodeDictionary();
      [v5 setMessageSummaryInfo:v7];

      v4 = [objc_opt_class() compressedProtobufDataWithPadding:v5];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCACC8] callStackSymbols];
        v11 = 138412546;
        v12 = a1;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "***Error compressedProtobuf2DataForGroupTitleChangeItem called on object %@ %@", &v11, 0x16u);
      }
    }

    v4 = 0;
  }

  return v4;
}

void sub_22B588FEC(void *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 compressedProtobufDataForGroupTitleChangeItem];
    [v4 _setCKRecordData:v5 forKey:@"msgProto"];

    v6 = [a1 compressedProtobuf2DataForGroupTitleChangeItem];
    if ([v6 length])
    {
      [v4 _setCKRecordData:v6 forKey:@"msgProto2"];
    }

    [v4 _setUnencryptedCKRecordNumber:&unk_283F4E6A8 forKey:@"msgType"];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCACC8] callStackSymbols];
      v9 = 138412546;
      v10 = a1;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***Error _populateCKRecordWithIMGroupTitleChangeItemFields called on object %@ %@", &v9, 0x16u);
    }
  }
}

id sub_22B589184(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1AC38];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B589200(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1AC18];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B58927C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [objc_opt_class() participantChangeProtobufForCompressedData:v9];

  v11 = [objc_opt_class() messageSummaryInfoProtobufForCompressedData:v8];

  [v7 setChangeType:{objc_msgSend(v10, "participantChangeType")}];
  v12 = [v10 otherHandle];
  [v7 setOtherHandle:v12];

  v13 = [v11 messageSummaryInfo];
  v14 = JWDecodeDictionary();
  [v7 setMessageSummaryInfo:v14];

  return v7;
}

id sub_22B589384(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(MEMORY[0x277D1AC38]);
    v3 = a1;
    [v2 setVersion:1];
    [v2 setParticipantChangeType:{objc_msgSend(v3, "changeType")}];
    v4 = [v3 otherHandle];
    [v2 setOtherHandle:v4];

    v5 = objc_opt_class();
    v6 = [v5 compressedProtobufDataWithPadding:v2];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x277CCACC8] callStackSymbols];
        v10 = 138412546;
        v11 = a1;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***Error compressedProtobufDataForParticipantChangeItem called on object %@ %@", &v10, 0x16u);
      }
    }

    v6 = 0;
  }

  return v6;
}

id sub_22B589538(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    v3 = [v2 messageSummaryInfo];
    v4 = [v3 count];

    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D1AC18]);
      v6 = [v2 messageSummaryInfo];
      v7 = JWEncodeDictionary();
      [v5 setMessageSummaryInfo:v7];

      v4 = [objc_opt_class() compressedProtobufDataWithPadding:v5];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCACC8] callStackSymbols];
        v11 = 138412546;
        v12 = a1;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "***Error compressedProtobuf2DataForParticipantChangeItem called on object %@ %@", &v11, 0x16u);
      }
    }

    v4 = 0;
  }

  return v4;
}

void sub_22B5896F0(void *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 compressedProtobufDataForParticipantChangeItem];
    [v4 _setCKRecordData:v5 forKey:@"msgProto"];

    v6 = [a1 compressedProtobuf2DataForParticipantChangeItem];
    if ([v6 length])
    {
      [v4 _setCKRecordData:v6 forKey:@"msgProto2"];
    }

    [v4 _setUnencryptedCKRecordNumber:&unk_283F4E6C0 forKey:@"msgType"];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCACC8] callStackSymbols];
      v9 = 138412546;
      v10 = a1;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***Error _populateCKRecordWithIMParticipantChangeItemFields called on object %@ %@", &v9, 0x16u);
    }
  }
}

id sub_22B589888(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1ABE8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B589904(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() locationShareStatusChangeProtobufForCompressedData:v6];

  v8 = [v7 otherHandle];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v7 otherHandle];
    [v5 setOtherHandle:v10];
  }

  [v5 setDirection:{objc_msgSend(v7, "shareDirection")}];
  [v5 setStatus:{objc_msgSend(v7, "shareStatus")}];

  return v5;
}

id sub_22B5899DC(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(MEMORY[0x277D1ABE8]);
    v3 = a1;
    [v2 setVersion:1];
    [v2 setShareStatus:{objc_msgSend(v3, "status")}];
    [v2 setShareDirection:{objc_msgSend(v3, "direction")}];
    v4 = [v3 otherHandle];
    [v2 setOtherHandle:v4];

    v5 = objc_opt_class();
    v6 = [v5 compressedProtobufDataWithPadding:v2];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x277CCACC8] callStackSymbols];
        v10 = 138412546;
        v11 = a1;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***Error compressedProtobufDataForLocationShareStatusChangeItem called on object %@ %@", &v10, 0x16u);
      }
    }

    v6 = 0;
  }

  return v6;
}

void sub_22B589BA4(void *a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 compressedProtobufDataForLocationShareStatusChangeItem];
    [v4 _setCKRecordData:v5 forKey:@"msgProto"];

    [v4 _setUnencryptedCKRecordNumber:&unk_283F4E6D8 forKey:@"msgType"];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCACC8] callStackSymbols];
      v8 = 138412546;
      v9 = a1;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "***Error _populateCKRecordWithIMParticipantChangeItemFields called on object %@ %@", &v8, 0x16u);
    }
  }
}

id sub_22B589D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1ABD8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B589D88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [objc_opt_class() groupActionProtobufForCompressedData:v9];

  v11 = [objc_opt_class() messageSummaryInfoProtobufForCompressedData:v8];

  [v7 setActionType:{objc_msgSend(v10, "groupActionType")}];
  v12 = [v10 otherHandle];
  [v7 setOtherHandle:v12];

  v13 = [v11 messageSummaryInfo];
  v14 = JWDecodeDictionary();
  [v7 setMessageSummaryInfo:v14];

  return v7;
}

id sub_22B589E90(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(MEMORY[0x277D1ABD8]);
    v3 = a1;
    [v2 setVersion:1];
    [v2 setGroupActionType:{objc_msgSend(v3, "actionType")}];
    v4 = [v3 otherHandle];
    [v2 setOtherHandle:v4];

    v5 = objc_opt_class();
    v6 = [v5 compressedProtobufDataWithPadding:v2];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x277CCACC8] callStackSymbols];
        v10 = 138412546;
        v11 = a1;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***Error compressedProtobufDataForGroupActionItem called on object %@ %@", &v10, 0x16u);
      }
    }

    v6 = 0;
  }

  return v6;
}

id sub_22B58A044(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    v3 = [v2 messageSummaryInfo];
    v4 = [v3 count];

    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D1AC18]);
      v6 = [v2 messageSummaryInfo];
      v7 = JWEncodeDictionary();
      [v5 setMessageSummaryInfo:v7];

      v4 = [objc_opt_class() compressedProtobufDataWithPadding:v5];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCACC8] callStackSymbols];
        v11 = 138412546;
        v12 = a1;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "***Error compressedProtobuf2DataForGroupActionItem called on object %@ %@", &v11, 0x16u);
      }
    }

    v4 = 0;
  }

  return v4;
}

void sub_22B58A1FC(void *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 compressedProtobufDataForGroupActionItem];
    [v4 _setCKRecordData:v5 forKey:@"msgProto"];

    v6 = [a1 compressedProtobuf2DataForGroupActionItem];
    if ([v6 length])
    {
      [v4 _setCKRecordData:v6 forKey:@"msgProto2"];
    }

    [v4 _setUnencryptedCKRecordNumber:&unk_283F4E6F0 forKey:@"msgType"];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCACC8] callStackSymbols];
      v9 = 138412546;
      v10 = a1;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***Error _populateCKRecordWithIMParticipantChangeItemFields called on object %@ %@", &v9, 0x16u);
    }
  }
}

id sub_22B58A394(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D1ABF8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 _FTOptionallyDecompressData];

  v7 = [v5 initWithData:v6];

  return v7;
}

id sub_22B58A410(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() messageActionChangeProtobufForCompressedData:v6];

  [v5 setActionType:{objc_msgSend(v7, "messageActionType")}];
  v8 = [v7 otherHandle];
  [v5 setOtherHandle:v8];

  v9 = [v7 originalMessageGuid];
  [v5 setOriginalMessageGUID:v9];

  return v5;
}

id sub_22B58A4D4(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(MEMORY[0x277D1ABF8]);
    v3 = a1;
    [v2 setVersion:1];
    [v2 setMessageActionType:{objc_msgSend(v3, "actionType")}];
    v4 = [v3 otherHandle];
    [v2 setOtherHandle:v4];

    v5 = [v3 originalMessageGUID];
    [v2 setOriginalMessageGuid:v5];

    v6 = objc_opt_class();
    v7 = [v6 compressedProtobufDataWithPadding:v2];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCACC8] callStackSymbols];
        v11 = 138412546;
        v12 = a1;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "***Error compressedProtobufDataForMessageActionItem called on object %@ %@", &v11, 0x16u);
      }
    }

    v7 = 0;
  }

  return v7;
}

void sub_22B58A6A8(void *a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 compressedProtobufDataForMessageActionItem];
    [v4 _setCKRecordData:v5 forKey:@"msgProto"];

    [v4 _setUnencryptedCKRecordNumber:&unk_283F4E708 forKey:@"msgType"];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCACC8] callStackSymbols];
      v8 = 138412546;
      v9 = a1;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "***Error _populateCKRecordWithIMParticipantChangeItemFields called on object %@ %@", &v8, 0x16u);
    }
  }
}

id sub_22B58A810(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 objectForKey:@"MID"];
  v12 = [v11 stringByAppendingString:@"-UpT1"];
  v13 = [CKRecordUtilities recordNameForRecordChangeTag:0 ckRecordID:0 salt:v8 guid:v12];

  v14 = objc_alloc(MEMORY[0x277CBC5A0]);
  v15 = [a1 _updateV1RecordType];
  v16 = [CKRecordUtilities recordIDUsingName:v13 zoneID:v9];

  v17 = [v14 initWithRecordType:v15 recordID:v16];
  v18 = [a1 compressedProtobufDataForUpdateT1:v10];

  if (v18)
  {
    [v17 _setCKRecordString:@"UT1" forKey:@"ut"];
    [v17 _setCKRecordData:v18 forKey:@"up"];
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

BOOL sub_22B58A98C(void *a1)
{
  v1 = [a1 destinationCallerID];
  v2 = [v1 length] != 0;

  return v2;
}

id sub_22B58A9C8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 objectForKey:@"MID"];
  v12 = [v11 stringByAppendingString:@"-UpT2"];
  v13 = [CKRecordUtilities recordNameForRecordChangeTag:0 ckRecordID:0 salt:v8 guid:v12];

  v14 = objc_alloc(MEMORY[0x277CBC5A0]);
  v15 = [a1 _updateV1RecordType];
  v16 = [CKRecordUtilities recordIDUsingName:v13 zoneID:v9];

  v17 = [v14 initWithRecordType:v15 recordID:v16];
  v18 = [a1 compressedProtobufDataForUpdateT2:v10];

  if (v18)
  {
    [v17 _setCKRecordString:@"UT2" forKey:@"ut"];
    [v17 _setCKRecordData:v18 forKey:@"up"];
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id sub_22B58AB44(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 objectForKey:@"MID"];
  v12 = [v11 stringByAppendingString:@"-UpT3"];
  v13 = [CKRecordUtilities recordNameForRecordChangeTag:0 ckRecordID:0 salt:v8 guid:v12];

  v14 = objc_alloc(MEMORY[0x277CBC5A0]);
  v15 = [a1 _updateV1RecordType];
  v16 = [CKRecordUtilities recordIDUsingName:v13 zoneID:v9];

  v17 = [v14 initWithRecordType:v15 recordID:v16];
  v18 = [a1 compressedProtobufDataForUpdateT2:v10];

  if (v18)
  {
    [v17 _setCKRecordString:@"UT3" forKey:@"ut"];
    [v17 _setCKRecordData:v18 forKey:@"up"];
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t sub_22B58ACC0(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCAAC8]);
  v3 = [a1 cloudKitServerChangeTokenBlob];
  v9 = 0;
  v4 = [v2 initForReadingFromData:v3 error:&v9];
  v5 = v9;

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v4];
  if (v5 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Failed to unarchive ckrecord. Error: %@", buf, 0xCu);
    }
  }

  return v6;
}

uint64_t sub_22B58AE04(void *a1, uint64_t a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[IMDMessageStore sharedInstance];
  v9 = [v8 chatForMessageIdentifier:{objc_msgSend(a1, "messageID")}];

  v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v11 = [v10 stewieEnabled];

  if (v11)
  {
    v12 = [v9 isStewieChat];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v14 = [v13 isTranscriptSharingEnabled];

  if (v12 & 1 | ((v14 & 1) == 0))
  {
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  else if (([v9 isStewieSharingChat] & 1) == 0)
  {
LABEL_6:
    v15 = [a1 cloudKitRecordChangeTag];
    v16 = [a1 cloudKitRecordID];
    v17 = [a1 guid];
    v18 = [CKRecordUtilities recordNameForRecordChangeTag:v15 ckRecordID:v16 salt:v7 guid:v17];

    if (![v18 length])
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v18;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Cannot create record from recordID because it is nil %@", buf, 0xCu);
        }
      }

      v26 = 0;
      goto LABEL_30;
    }

    v19 = objc_alloc(MEMORY[0x277CBC5A0]);
    v20 = [a1 _recordType];
    v21 = [CKRecordUtilities recordIDUsingName:v18 zoneID:v6];
    v22 = [v19 initWithRecordType:v20 recordID:v21];

    v23 = [a1 cloudKitRecordChangeTag];

    if (v23)
    {
      v24 = [a1 cloudKitRecordChangeTag];
      [v22 setEtag:v24];

      [v22 setKnownToServer:1];
    }

    [a1 _populateCKRecordWithIMItemFields:v22];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _populateCKRecordWithIMMessageItemFields:v22];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 _populateCKRecordWithIMGroupTitleChangeItemFields:v22];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 _populateCKRecordWithIMParticipantChangeItemFields:v22];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = a1;
              if (![v29 actionType])
              {
                [v29 _populateCKRecordWithIMGroupActionItemFields:v22];

                goto LABEL_28;
              }

              if (IMOSLoggingEnabled())
              {
                v30 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  v34 = [v29 actionType];
                  _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Cannot sync item because it is an incompatible action type %lld", buf, 0xCu);
                }
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [a1 _populateCKRecordWithIMMessageActionItemFields:v22];
                goto LABEL_28;
              }

              if (IMOSLoggingEnabled())
              {
                v31 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v34 = objc_opt_class();
                  v32 = v34;
                  _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "***** Error Tried to generate a CKRecord from class %@ ******", buf, 0xCu);
                }
              }
            }

            v26 = 0;
            goto LABEL_29;
          }

          [a1 _populateCKRecordWithIMLocationShareStatusChangeItemFields:v22];
        }
      }
    }

LABEL_28:
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:{v22, 0}];
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Do not create record for stewie chats", buf, 2u);
    }
  }

  v26 = 0;
LABEL_31:

  return v26;
}

void sub_22B58B33C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B58B31CLL);
  }

  _Unwind_Resume(a1);
}

id sub_22B58B398(uint64_t a1, uint64_t a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v77 = [v3 _stringForKey:@"SubType"];
  v4 = [v3 objectForKeyedSubscript:@"msgType"];
  v5 = [v4 integerValue];

  if ([v77 isEqualToString:@"SubTypeMsg"])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v76 = [v3 _stringForKey:@"sender"];
  v75 = [v3 _dateForKey:@"time"];
  v7 = [v3 _stringForKey:@"dcId"];
  v74 = [v3 _stringForKey:@"guid"];
  v73 = [v3 _stringForKey:@"svc"];
  v72 = [v3 _stringForKey:@"sender"];
  v8 = [v3 _stringForKey:@"rGuid"];
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v9 = [objc_alloc(MEMORY[0x277D1AA50]) initWithSender:v76 time:v75 guid:v74 type:5];
      v22 = [v3 recordType];
      v23 = [v22 isEqualToIgnoringCase:@"MessageEncryptedV3"];

      if (!v23)
      {
        goto LABEL_49;
      }

      v12 = [v3 _dataForKey:@"msgProto"];
      v24 = [objc_opt_class() populateIMMessageActionItem:v9 withProtobufData:v12];
      goto LABEL_31;
    }

    if (v6 != 6)
    {
      if (v6 != 7)
      {
LABEL_23:
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
            *buf = 138412290;
            v79 = v26;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "****** initiWithCKRecord called with unsupported message type %@ *****", buf, 0xCu);
          }
        }

        v9 = 0;
        goto LABEL_49;
      }

      v9 = [objc_alloc(MEMORY[0x277D1A9E0]) initWithSender:v76 time:v75 guid:v74 type:3];
      v14 = [v3 recordType];
      v15 = [v14 isEqualToIgnoringCase:@"MessageEncryptedV3"];

      if (!v15)
      {
        goto LABEL_49;
      }

      v12 = [v3 _dataForKey:@"msgProto"];
      v16 = [v3 _dataForKey:@"msgProto2"];
      v17 = [objc_opt_class() populateIMGroupActionItem:v9 withProtobufData:v12 protobuf2Data:v16];
LABEL_30:

LABEL_31:
      goto LABEL_49;
    }

    v31 = [objc_alloc(MEMORY[0x277D1AB28]) initWithSender:v76 time:v75 guid:v74 type:1];
    v32 = [v3 _dateForKey:@"tRead"];
    [v31 setTimeRead:v32];

    v9 = v31;
    v33 = [v3 recordType];
    LODWORD(v32) = [v33 isEqualToIgnoringCase:@"MessageEncryptedV3"];

    if (v32)
    {
      v34 = [v3 _dataForKey:@"msgProto"];
      v35 = [v3 _dataForKey:@"msgProto2"];
      v36 = [objc_opt_class() populateIMParticipantChangeItem:v9 withProtobufData:v34 protobuf2Data:v35];
    }
  }

  else
  {
    if ((v6 - 1) >= 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          v9 = [objc_alloc(MEMORY[0x277D1AA38]) initWithSender:0 time:v75 guid:v74 type:4];
          v10 = [v3 recordType];
          v11 = [v10 isEqualToIgnoringCase:@"MessageEncryptedV3"];

          if (!v11)
          {
            goto LABEL_49;
          }

          v12 = [v3 _dataForKey:@"msgProto"];
          v13 = [objc_opt_class() populateIMLocationShareStatusChangeItem:v9 withProtobufData:v12];
          if ([v76 length])
          {
            [v9 setSender:v76];
          }

          goto LABEL_31;
        }

        goto LABEL_23;
      }

      v27 = objc_alloc(MEMORY[0x277D1A9F0]);
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v76 forKey:*MEMORY[0x277D193A8]];
      v9 = [v27 initWithSenderInfo:v28 time:v75 guid:v74 messageID:0 account:0 accountID:0 service:v73 handle:v72 roomName:0 unformattedID:0 countryCode:0 type:2];

      v29 = [v3 recordType];
      LODWORD(v28) = [v29 isEqualToIgnoringCase:@"MessageEncryptedV3"];

      if (!v28)
      {
        goto LABEL_49;
      }

      v12 = [v3 _dataForKey:@"msgProto"];
      v16 = [v3 _dataForKey:@"msgProto2"];
      v30 = [objc_opt_class() populateIMGroupTitleChangeItem:v9 withProtobufData:v12 protobuf2Data:v16];
      goto LABEL_30;
    }

    v69 = [v3 _dateForKey:@"tRead"];
    v68 = [v3 _dateForKey:@"tDelivered"];
    v67 = [v3 _dateForKey:@"tPlayed"];
    v71 = [v3 _stringForKey:@"subject"];
    v18 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v70 = [v71 stringByRemovingCharactersFromSet:v18];

    if (![v70 length])
    {

      v71 = 0;
    }

    v19 = [v3 _dataForKey:@"body"];
    if ([v19 length])
    {
      v20 = JWDecodeCodableObjectWithStandardAllowlist();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 __im_countMessageParts];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v37 = [v3 _numberForKey:@"flags"];
    v38 = [v37 integerValue];

    v66 = [v3 _stringForKey:@"BID"];
    v65 = [v3 _dataForKey:@"pdata"];
    v64 = [v3 _stringForKey:@"esid"];
    v39 = [v3 objectForKeyedSubscript:@"eCode"];
    v40 = [v39 unsignedIntValue];

    v41 = objc_alloc(objc_opt_class());
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v76 forKey:*MEMORY[0x277D193A8]];
    v43 = [MEMORY[0x277CBEAA8] date];
    LODWORD(v63) = v40;
    v9 = [v41 initWithSenderInfo:v42 time:v75 timeRead:v69 timeDelivered:v68 timePlayed:v67 subject:v71 body:0 bodyData:v19 attributes:0 fileTransferGUIDs:0 flags:v38 guid:v74 messageID:0 account:0 accountID:0 service:v73 handle:v72 roomName:0 unformattedID:0 countryCode:0 expireState:0 balloonBundleID:v66 payloadData:v65 expressiveSendStyleID:v64 timeExpressiveSendPlayed:v43 bizIntent:0 locale:0 biaReferenceID:0 errorType:v63 threadIdentifier:0 syndicationRanges:0 syncedSyndicationRanges:0 partCount:v21 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:0 cloudKitChatID:0];

    v44 = [v3 recordType];
    v45 = [v44 isEqualToIgnoringCase:@"MessageEncryptedV3"];

    if (v45)
    {
      v46 = [v3 _dataForKey:@"msgProto"];
      v47 = [objc_opt_class() populateIMMessageItemWithProtobufFields:v9 withProtobufData:v46];
      v48 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v49 = [v48 messageSyncP2Enabled];

      if (v49)
      {
        v50 = [v3 _dataForKey:@"msgProto2"];
        if ([v50 length])
        {
          v51 = [objc_opt_class() populateIMMessageItemWithProtobufFields:v9 withProtobufDataP2:v50];
        }
      }

      v52 = [v3 _dataForKey:@"msgProto3"];
      if ([v52 length])
      {
        v53 = [objc_opt_class() populateIMMessageItemWithProtobufFields:v9 withProtobufDataP3:v52];
      }

      v54 = [v3 _dataForKey:@"msgProto4"];
      if ([v54 length])
      {
        v55 = [objc_opt_class() populateIMMessageItemWithProtobufFields:v9 withProtobufDataP4:v54];
      }
    }
  }

LABEL_49:
  v56 = [v9 service];
  v57 = [v56 length] == 0;

  if (v57)
  {
    [v9 setService:v73];
  }

  if ([v7 length])
  {
    [v9 setDestinationCallerID:v7];
  }

  if ([v8 length])
  {
    [v9 setReplyToGUID:v8];
  }

  v58 = [v3 _stringForKey:@"chatID"];
  [v9 setCloudKitChatID:v58];

  v59 = [v3 recordID];
  v60 = [v59 recordName];
  [v9 setCloudKitRecordID:v60];

  v61 = [v3 recordChangeTag];
  [v9 setCloudKitRecordChangeTag:v61];

  [v9 setCloudKitSyncState:1];
  [v9 setCloudKitServerChangeTokenBlob:0];

  return v9;
}

void sub_22B58BEC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 _stringForKey:@"guid"];
  if ([v6 length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 itemWithGUID:v6];

    [v8 setCloudKitRecordID:0];
    [v8 setCloudKitRecordChangeTag:0];
    [v8 setCloudKitSyncState:a4];
    [v8 setCloudKitServerChangeTokenBlob:0];
    objc_opt_class();
    LOBYTE(v7) = objc_opt_isKindOfClass();
    v9 = +[IMDMessageStore sharedInstance];
    v10 = v9;
    if (v7)
    {
      v11 = [v9 storeMessage:v8 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0x2000];
    }

    else
    {
      v13 = [v9 storeItem:v8 forceReplace:0];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "We don't have a valid guid for the message record we want to reset sync state: %@", &v14, 0xCu);
    }
  }
}

uint64_t sub_22B58C09C(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!MEMORY[0x231897A50]())
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277D07DB0] sharedInstance];
  if ([v5 deviceType] != 2 || (objc_msgSend(v5, "SIMInserted") & 1) != 0)
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [a1 guid];
      v10 = [a1 destinationCallerID];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Phone number destination callerID [%@] is unselected on phone but phone does not have SIM inserted and caller ID is a phone number so will store message [%@] anyways", &v11, 0x16u);
    }
  }

  v6 = 1;
LABEL_6:

  return v6;
}

uint64_t sub_22B58C210(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [a1 destinationCallerID];
  v3 = +[IMDCKUtilities readAliasesFromDefaults];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  if ([a1 callerIDShouldBeCheckedForRegistration:v2])
  {
    v4 = [a1 _accountControllerSharedInstance];
    v5 = [v4 activeAccounts];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B58C598;
    v16[3] = &unk_278705178;
    v16[4] = a1;
    v16[5] = v21;
    v16[6] = &v17;
    [v5 enumerateObjectsUsingBlock:v16];

    v6 = v18;
    if ((v18[3] & 1) != 0 || !v3)
    {
      if (v18[3])
      {
        v10 = 1;
      }

      else
      {
        v10 = [a1 _shouldDownloadIfPhoneNumberAndNoSIM:v2];
        v6 = v18;
      }

      *(v6 + 24) = v10;
    }

    else
    {
      v7 = [v3 objectForKeyedSubscript:@"selectedAliases"];
      v8 = [v3 objectForKeyedSubscript:@"allAliases"];
      if ([v7 containsObject:v2] && objc_msgSend(v8, "containsObject:", v2))
      {
        *(v18 + 24) = 1;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v2;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Skipping shouldStore check, destinationCallerID: %@", buf, 0xCu);
    }
  }

  if ((v18[3] & 1) == 0 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [a1 guid];
      v13 = [a1 destinationCallerID];
      *buf = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "We should not store the message [%@] because our destination callerID [%@] has been unselected from list of available aliases", buf, 0x16u);
    }
  }

  v14 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);

  return v14 & 1;
}

void sub_22B58C528(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B58C4C8);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B58C598(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 service];
  v8 = [v7 internalName];
  v9 = [v8 isEqualToString:*MEMORY[0x277D1A620]];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v6 idsAccount];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v11 = [v10 im_registeredURIs];
      v12 = [v11 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v12)
      {
        v13 = *v46;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v46 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v45 + 1) + 8 * i);
            v16 = [*(a1 + 32) destinationCallerID];
            LODWORD(v15) = [v15 isEqualToString:v16];

            if (v15)
            {
              *(*(*(a1 + 40) + 8) + 24) = 1;
              *(*(*(a1 + 48) + 8) + 24) = 1;
              *a4 = 1;
              goto LABEL_26;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v45 objects:v51 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v11 = [v10 vettedAliases];
      v17 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v17)
      {
        v18 = *v42;
        while (2)
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v42 != v18)
            {
              objc_enumerationMutation(v11);
            }

            v20 = *(*(&v41 + 1) + 8 * j);
            v21 = [*(a1 + 32) destinationCallerID];
            LODWORD(v20) = [v20 isEqualToString:v21];

            if (v20)
            {
              *(*(*(a1 + 48) + 8) + 24) = 0;
              goto LABEL_26;
            }
          }

          v17 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "We have an iMessage account that is not backed by an ids account ---- please file a radar", buf, 2u);
      }
    }
  }

  v23 = [v6 service];
  v24 = [v23 internalName];
  v25 = [v24 isEqualToString:*MEMORY[0x277D1A610]];

  if (v25)
  {
    if (IMSharedHelperDeviceHasMultipleSubscriptions())
    {
      v26 = [MEMORY[0x277D1A8F8] IMPhoneNumbersEnabledForMultipleSubscriptionDevice];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
      if (v27)
      {
        v28 = *v37;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v36 + 1) + 8 * k);
            v31 = [*(a1 + 32) destinationCallerID];
            LODWORD(v30) = [v30 isEqualToString:v31];

            if (v30)
            {
              *(*(*(a1 + 40) + 8) + 24) = 1;
              *(*(*(a1 + 48) + 8) + 24) = 1;
              *a4 = 1;
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
        }

        while (v27);
      }
    }

    else
    {
      v32 = [v6 loginID];
      v33 = [v32 _stripFZIDPrefix];
      v34 = [*(a1 + 32) destinationCallerID];
      v35 = [v33 isEqualToString:v34];

      if (v35)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

void sub_22B58CA20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = 0;
    v19 = 0;
    v18 = v4;
    while (1)
    {
      if (v5)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"mmcs-url", v5];
        v7 = [a1 _stringForKey:v6];

        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"mmcs-signature-hex", v5];
        v9 = [a1 _stringForKey:v8];

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"mmcs-owner", v5];
        v11 = [a1 _stringForKey:v10];

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"decryption-key", v5];
        v13 = [a1 _stringForKey:v12];

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", @"file-size", v5];
        v15 = [a1 objectForKey:v14];
        v16 = [v15 stringValue];

        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v7 = [a1 objectForKeyedSubscript:@"mmcs-url"];
        v9 = [a1 objectForKeyedSubscript:@"mmcs-signature-hex"];
        v11 = [a1 objectForKeyedSubscript:@"mmcs-owner"];
        v13 = [a1 objectForKeyedSubscript:@"decryption-key"];
        v16 = [a1 objectForKeyedSubscript:@"file-size"];
        if (v7)
        {
LABEL_7:
          if (v9 && v11 && v13)
          {
            v18[2](v18, v7, v9, v11, v13, v16, &v19);
          }
        }
      }

      if ((v19 & 1) == 0 && v5++ < 9)
      {
        continue;
      }

      v4 = v18;
      break;
    }
  }
}

void sub_22B58CCA0(void *a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_22B4D76C0;
    v37 = sub_22B4D78BC;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_22B4D76C0;
    v31 = sub_22B4D78BC;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_22B4D76C0;
    v25 = sub_22B4D78BC;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_22B4D76C0;
    v19 = sub_22B4D78BC;
    v20 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_22B4D76C0;
    v13 = sub_22B4D78BC;
    v14 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B58CF6C;
    v7[3] = &unk_2787051A0;
    v8 = a3;
    v7[4] = &v39;
    v7[5] = &v9;
    v7[6] = &v33;
    v7[7] = &v27;
    v7[8] = &v21;
    v7[9] = &v15;
    [a1 __message_iterateFileTransferUserInfoWithCompletion:v7];
    v6[2](v6, *(v40 + 24), v34[5], v28[5], v22[5], v16[5], v10[5]);
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
  }
}

void sub_22B58CF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Block_object_dispose((v32 - 112), 8);
  _Block_object_dispose((v32 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22B58CF6C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v20 = a2;
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v15 = [v14 longLongValue];
  if (*(a1 + 80) != 1 || v15 <= 104857600)
  {
    v17 = v15;
    v18 = *(*(*(a1 + 40) + 8) + 40);
    if (!v18 || v17 < [v18 longLongValue])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a5);
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a6);
    }
  }
}

uint64_t sub_22B58D4A4()
{
  qword_281421280 = os_log_create("com.apple.Messages", "BlastdoorReceivePipeline");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B58D700()
{
  v0 = objc_alloc(MEMORY[0x277D28680]);
  qword_281422578 = [v0 initWithBlastDoorInstanceType:*MEMORY[0x277CF30C0]];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B58D74C()
{
  v0 = objc_alloc(MEMORY[0x277D28680]);
  qword_281422588 = [v0 initWithBlastDoorInstanceType:*MEMORY[0x277CF30C8]];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B58D798()
{
  v0 = objc_alloc(MEMORY[0x277D28680]);
  qword_27D8CFEA0 = [v0 initWithBlastDoorInstanceType:*MEMORY[0x277CF30B0]];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B58DED0()
{
  result = MEMORY[0x231897B40](@"LSApplicationWorkspace", @"CoreServices");
  qword_27D8CFEA8 = result;
  return result;
}

void sub_22B58DF00(uint64_t a1, void *a2)
{
  if (![a2 response])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277D07DB0] sharedInstance];
    v5 = [v4 productBuildVersion];
    v27 = [v3 stringWithFormat:@"TTR:%@ iMessage BlastDoor Failure: %@", v5, *(a1 + 32)];

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"An incoming message failed validation inside of BlastDoor.\n\nMessage type: %@\nGUID: %@\n\nError: %@", *(a1 + 40), *(a1 + 48), *(a1 + 32)];
    v7 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    v8 = MEMORY[0x277CCACA8];
    v9 = [v27 stringByAddingPercentEncodingWithAllowedCharacters:v7];
    v26 = v6;
    v10 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];
    v11 = [@"Crash/Hang/Data Loss" stringByAddingPercentEncodingWithAllowedCharacters:v7];
    v12 = [@"I Didn't Try" stringByAddingPercentEncodingWithAllowedCharacters:v7];
    v13 = [@"450305" stringByAddingPercentEncodingWithAllowedCharacters:v7];
    v14 = [@"Messages" stringByAddingPercentEncodingWithAllowedCharacters:v7];
    v15 = [@"all" stringByAddingPercentEncodingWithAllowedCharacters:v7];
    v16 = [v8 stringWithFormat:@"tap-to-radar://new?Title=%@&Description=%@&Classification=%@&Reproducibility=%@&ComponentID=%@&ComponentName=%@&ComponentVersion=%@&", v9, v10, v11, v12, v13, v14, v15];

    if (*(a1 + 56))
    {
      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [*(a1 + 56) path];
      v19 = [v17 fileExistsAtPath:v18];

      if (v19)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [*(a1 + 56) path];
        v22 = [v21 stringByAddingPercentEncodingWithAllowedCharacters:v7];
        v23 = [v20 stringWithFormat:@"%@&Attachments=%@", v16, v22];

        v16 = v23;
      }
    }

    v24 = [MEMORY[0x277CBEBC0] URLWithString:v16];
    v25 = [qword_27D8CFEA8 defaultWorkspace];
    [v25 openURL:v24 configuration:0 completionHandler:0];
  }
}

uint64_t sub_22B58E848()
{
  qword_27D8CFEB8 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

void sub_22B58EB20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      buf = 134217984;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Failed processing command through BlastDoor: %ld", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x22B58EAD0);
  }

  _Unwind_Resume(a1);
}

void sub_22B58EE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t block, uint64_t a17, uint64_t (*a18)(uint64_t a1), void *a19, void *a20, id a21)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(exception_object);
    v26 = [*(v23 + 2080) logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v25 name];
      v28 = [v25 reason];
      *(v24 - 112) = 138412546;
      *(v22 + 4) = v27;
      *(v24 - 100) = 2112;
      *(v22 + 14) = v28;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Failed processing SMS/MMS dictionary through BlastDoor name=(%@); reason=(%@)", (v24 - 112), 0x16u);
    }

    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = [v29 initWithDomain:*MEMORY[0x277D18DF0] code:3 userInfo:0];
    block = MEMORY[0x277D85DD0];
    a17 = 3221225472;
    a18 = sub_22B58F198;
    a19 = &unk_2787028B0;
    v31 = v21;
    a20 = v30;
    a21 = v31;
    v32 = v30;
    dispatch_async(MEMORY[0x277D85CD0], &block);

    objc_end_catch();
    JUMPOUT(0x22B58EE50);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B58F014(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 134218242;
    v17 = v5;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Blastdoor response %p received (guid: %@)", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B58F180;
  block[3] = &unk_278702CC8;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B58F3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t block, uint64_t a11, uint64_t (*a12)(uint64_t a1), void *a13, void *a14, id a15)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    v19 = [*(v16 + 2080) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 name];
      v21 = [v18 reason];
      *(v17 - 96) = 138412546;
      v22 = v17 - 96;
      *(v22 + 4) = v20;
      *(v17 - 84) = 2112;
      *(v22 + 14) = v21;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Failed processing Clear Notice through Blastdoor name=(%@); reason=(%@)", (v17 - 96), 0x16u);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v23 initWithDomain:*MEMORY[0x277D18DF0] code:9 userInfo:0];
    block = MEMORY[0x277D85DD0];
    a11 = 3221225472;
    a12 = sub_22B58F6D8;
    a13 = &unk_2787028B0;
    v25 = v15;
    a14 = v24;
    a15 = v25;
    v26 = v24;
    dispatch_async(MEMORY[0x277D85CD0], &block);

    objc_end_catch();
    JUMPOUT(0x22B58F38CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B58F564(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v5;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Blastdoor defuseClearNoticePayload, notice: %p", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B58F6C0;
  block[3] = &unk_278702CC8;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B58F8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t block, uint64_t a11, uint64_t (*a12)(uint64_t a1), void *a13, void *a14, id a15)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    v19 = [*(v16 + 2080) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 name];
      v21 = [v18 reason];
      *(v17 - 96) = 138412546;
      v22 = v17 - 96;
      *(v22 + 4) = v20;
      *(v17 - 84) = 2112;
      *(v22 + 14) = v21;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Failed processing Collaboration Notice through Blastdoor name=(%@); reason=(%@)", (v17 - 96), 0x16u);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v23 initWithDomain:*MEMORY[0x277D18DF0] code:5 userInfo:0];
    block = MEMORY[0x277D85DD0];
    a11 = 3221225472;
    a12 = sub_22B58FC00;
    a13 = &unk_2787028B0;
    v25 = v15;
    a14 = v24;
    a15 = v25;
    v26 = v24;
    dispatch_async(MEMORY[0x277D85CD0], &block);

    objc_end_catch();
    JUMPOUT(0x22B58F8B4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B58FA8C(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v5;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Blastdoor defuseCollaborationNoticePayload, notice: %p", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B58FBE8;
  block[3] = &unk_278702CC8;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B58FE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t block, uint64_t a11, uint64_t (*a12)(uint64_t a1), void *a13, void *a14, id a15)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    v19 = [*(v16 + 2080) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 name];
      v21 = [v18 reason];
      *(v17 - 96) = 138412546;
      v22 = v17 - 96;
      *(v22 + 4) = v20;
      *(v17 - 84) = 2112;
      *(v22 + 14) = v21;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Failed processing Collaboration Notice Action through Blastdoor name=(%@); reason=(%@)", (v17 - 96), 0x16u);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v23 initWithDomain:*MEMORY[0x277D18DF0] code:5 userInfo:0];
    block = MEMORY[0x277D85DD0];
    a11 = 3221225472;
    a12 = sub_22B590160;
    a13 = &unk_2787028B0;
    v25 = v15;
    a14 = v24;
    a15 = v25;
    v26 = v24;
    dispatch_async(MEMORY[0x277D85CD0], &block);

    objc_end_catch();
    JUMPOUT(0x22B58FDDCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B58FFB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Blastdoor defuseCollaborationNoticeActionDictionary, actionType: %@, guids: %@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B590148;
  v13[3] = &unk_278705290;
  v16 = *(a1 + 32);
  v17 = a2;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

void sub_22B5902E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = [*(v10 + 2080) logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 name];
      v14 = [v11 reason];
      LODWORD(a9) = 138412546;
      *(&a9 + 4) = v13;
      WORD6(a9) = 2112;
      *(&a9 + 14) = v14;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Failed processing lite message through Blastdoor name=(%@); reason=(%@)", &a9, 0x16u);
    }

    if (v9)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      *v9 = [v15 initWithDomain:*MEMORY[0x277D18DF0] code:10 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x22B590294);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B590560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = [*(v10 + 2080) logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 name];
      v14 = [v11 reason];
      LODWORD(a9) = 138412546;
      *(&a9 + 4) = v13;
      WORD6(a9) = 2112;
      *(&a9 + 14) = v14;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Failed processing lite relay message through Blastdoor name=(%@); reason=(%@)", &a9, 0x16u);
    }

    if (v9)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      *v9 = [v15 initWithDomain:*MEMORY[0x277D18DF0] code:15 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x22B59050CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B5907D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = [*(v10 + 2080) logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 name];
      v14 = [v11 reason];
      LODWORD(a9) = 138412546;
      *(&a9 + 4) = v13;
      WORD6(a9) = 2112;
      *(&a9 + 14) = v14;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Failed processing satellite SMS message through Blastdoor name=(%@); reason=(%@)", &a9, 0x16u);
    }

    if (v9)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      *v9 = [v15 initWithDomain:*MEMORY[0x277D18DF0] code:11 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x22B590784);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B590A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = [*(v10 + 2080) logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 name];
      v14 = [v11 reason];
      LODWORD(a9) = 138412546;
      *(&a9 + 4) = v13;
      WORD6(a9) = 2112;
      *(&a9 + 14) = v14;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Failed processing group relay message through Blastdoor name=(%@); reason=(%@)", &a9, 0x16u);
    }

    if (v9)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      *v9 = [v15 initWithDomain:*MEMORY[0x277D18DF0] code:12 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x22B590A14);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B590CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = [*(v10 + 2080) logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 name];
      v14 = [v11 reason];
      LODWORD(a9) = 138412546;
      *(&a9 + 4) = v13;
      WORD6(a9) = 2112;
      *(&a9 + 14) = v14;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Failed processing relay reachability request message through Blastdoor name=(%@); reason=(%@)", &a9, 0x16u);
    }

    if (v9)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      *v9 = [v15 initWithDomain:*MEMORY[0x277D18DF0] code:13 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x22B590CA4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B590F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = [*(v10 + 2080) logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 name];
      v14 = [v11 reason];
      LODWORD(a9) = 138412546;
      *(&a9 + 4) = v13;
      WORD6(a9) = 2112;
      *(&a9 + 14) = v14;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Failed processing relay reachability response message through Blastdoor name=(%@); reason=(%@)", &a9, 0x16u);
    }

    if (v9)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      *v9 = [v15 initWithDomain:*MEMORY[0x277D18DF0] code:14 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x22B590F34);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B591194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5911AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D3B8C(v6, v7);
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void sub_22B5914A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5914BC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_22B7D3C04(v5, v6);
    }
  }

  else if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_22B591614()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("IMDCoreSpotlightProcessingQueue", v2);
  v1 = qword_281420EB8;
  qword_281420EB8 = v0;
}

uint64_t sub_22B5918C0(uint64_t a1)
{
  if (!qword_2814214A0)
  {
    qword_2814214A0 = _sl_dlopen();
  }

  return qword_2814214A0;
}

uint64_t sub_22B591990(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2814214A0 = result;
  return result;
}

void *sub_22B591A04(uint64_t a1)
{
  v5 = 0;
  v2 = sub_22B5918C0(&v5);
  if (!v2)
  {
    sub_22B7D3D4C(&v5);
  }

  v3 = v2;
  if (v5)
  {
    free(v5);
  }

  result = dlsym(v3, "DMGetUserDataDisposition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_281421338 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22B592BF4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5929A0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22B592CE0(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v38 = [v2 count];
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Family IDS lookup result had %lu elements", buf, 0xCu);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v6)
  {
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [v5 objectForKey:v9];
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 count];
            *buf = 134218242;
            v38 = v12;
            v39 = 2112;
            v40 = v9;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found %lu IDS endpoints for Family member with handle %@", buf, 0x16u);
          }
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = v10;
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          v15 = *v29;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = [*(*(&v28 + 1) + 8 * j) senderCorrelationIdentifier];
              if (v17)
              {
                [v4 addObject:v17];

                goto LABEL_24;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:
      }

      v6 = [v5 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v6);
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v4 count];
      *buf = 134217984;
      v38 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "There were %lu SCIs in allFamilyMemberSCIs", buf, 0xCu);
    }
  }

  v20 = [*(a1 + 32) idsTrustedData];
  v21 = [v20 senderCorrelationIdentifier];
  v22 = [v4 containsObject:v21];

  if (v22)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found family member relation using SCI", buf, 2u);
      }
    }

    [*(a1 + 40) fullfillWithValue:*(a1 + 48)];
  }

  else
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D3F94(a1);
    }

    v25 = *(a1 + 40);
    v26 = [*(a1 + 32) _generateError:@"Could not find sender correlation identifier in SCI list derived from Family"];
    [v25 failWithError:v26];
  }
}

Class sub_22B5936B0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!qword_27D8CFED0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = sub_22B5937DC;
    v3[4] = &unk_278702AF8;
    v3[5] = v3;
    v4 = xmmword_278705368;
    v5 = 0;
    qword_27D8CFED0 = _sl_dlopen();
  }

  if (!qword_27D8CFED0)
  {
    sub_22B7D409C(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FAFetchFamilyCircleRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22B7D4020();
  }

  qword_27D8CFEC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22B5937DC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27D8CFED0 = result;
  return result;
}

void sub_22B593850(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_22B5938B4()
{
  qword_281420FB8 = objc_alloc_init(IMDCKCacheDeleteManager);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B59428C(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Registering with cache delete upon launch", v5, 2u);
    }
  }

  return [*(a1 + 32) _cacheDeleteSetUp];
}

void sub_22B594798(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Received purge notification (centralized cache delete) - enumerating purged files", buf, 2u);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v4 startTimingForKey:@"purge"];
  *buf = 0;
  v12 = buf;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v10, (a1 + 32));
  CacheDeleteEnumerateRemovedFiles();
  [v4 stopTimingForKey:{@"purge", v9, 3221225472, sub_22B594A28, &unk_2787053D8, buf}];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      [v4 totalTimeForKey:@"purge"];
      v7 = v6;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v12 + 3)];
      *v15 = 134218242;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished purge in %f seconds, purged %@ files", v15, 0x16u);
    }
  }

  objc_destroyWeak(&v10);
  _Block_object_dispose(buf, 8);
}

void sub_22B5949C0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B594970);
  }

  objc_destroyWeak((v14 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B594A28(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v6 = *v19;
    *&v5 = 138412290;
    v13 = v5;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v18 + 1) + 8 * v7);
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = v13;
          v23 = v8;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Purge event: %@", buf, 0xCu);
        }
      }

      v10 = [v8 objectForKeyedSubscript:{@"rescan", v13}];

      if (v10)
      {
        break;
      }

      v11 = [v8 objectForKeyedSubscript:@"historyDone"];

      if (v11)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_22B594D78;
        v16[3] = &unk_278705388;
        objc_copyWeak(&v17, (a1 + 40));
        dispatch_async(MEMORY[0x277D85CD0], v16);
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Purge notification - All done", buf, 2u);
          }
        }

        objc_destroyWeak(&v17);
        break;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B594DD0;
      block[3] = &unk_2787053B0;
      objc_copyWeak(&v15, (a1 + 40));
      block[4] = v8;
      dispatch_async(MEMORY[0x277D85CD0], block);
      ++*(*(*(a1 + 32) + 8) + 24);
      objc_destroyWeak(&v15);
      if (v4 == ++v7)
      {
        v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_22B594D78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained purgedAttachmentHandler];
  [v1 complete];
}

void sub_22B594DD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained purgedAttachmentHandler];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"path"];
  [v2 registerPurgedAttachmentAtPath:v3];
}

id sub_22B594E50(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = @"NO";
      *buf = 67109634;
      *&buf[4] = a2;
      *v28 = 2112;
      if (v7)
      {
        v8 = @"YES";
      }

      *&v28[2] = v5;
      *&v28[10] = 2112;
      *&v28[12] = v8;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "CacheDelete -- purgeable block called with urgency: %d info: %@ isMainThread: %@", buf, 0x1Cu);
    }
  }

  *buf = 0;
  *v28 = buf;
  *&v28[8] = 0x3032000000;
  *&v28[16] = sub_22B4D76E0;
  v29 = sub_22B4D78CC;
  v30 = 0;
  v9 = [*(a1 + 32) _ckUtilitiesSharedInstance];
  v10 = [v9 accountIsVerifiedForMOCAndSafeForCacheDelete];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5951B0;
  aBlock[3] = &unk_278705428;
  v24 = v10;
  v11 = *(a1 + 32);
  v22 = buf;
  aBlock[4] = v11;
  v12 = v5;
  v21 = v12;
  v23 = a2;
  v13 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v13[2](v13);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B59521C;
    block[3] = &unk_2787028D8;
    v19 = v13;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(*v28 + 40);
      *v25 = 138412290;
      v26 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "purgeable callback dictionary: %@", v25, 0xCu);
    }
  }

  v16 = *(*v28 + 40);

  _Block_object_dispose(buf, 8);
  return v16;
}

void sub_22B595150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x22B594F30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22B5951B0(uint64_t a1)
{
  v2 = *(a1 + 60);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  if (v2 == 1)
  {
    [v3 __wrapperAroundCacheDeletePurgeableCallback:v4 urgency:v5];
  }

  else
  {
    [v3 createDictionaryForNotDeletingAnyAttachments:v4 urgency:v5];
  }
  *(*(*(a1 + 48) + 8) + 40) = ;

  return MEMORY[0x2821F96F8]();
}

id sub_22B59522C(uint64_t a1, int a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    [*(a1 + 32) setDeviceLowOnDiskSpace:1];
  }

  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCACC8] isMainThread];
      v9 = @"NO";
      *buf = 67109634;
      *&buf[4] = a2;
      *v29 = 2112;
      if (v8)
      {
        v9 = @"YES";
      }

      *&v29[2] = v6;
      *&v29[10] = 2112;
      *&v29[12] = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "CacheDelete -- purge block called with urgency: %d info: %@ isMainThread: %@", buf, 0x1Cu);
    }
  }

  *buf = 0;
  *v29 = buf;
  *&v29[8] = 0x3032000000;
  *&v29[16] = sub_22B4D76E0;
  v30 = sub_22B4D78CC;
  v31 = 0;
  v10 = [*(a1 + 32) _ckUtilitiesSharedInstance];
  v11 = [v10 accountIsVerifiedForMOCAndSafeForCacheDelete];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5955A8;
  aBlock[3] = &unk_278705428;
  v25 = v11;
  v12 = *(a1 + 32);
  v23 = buf;
  aBlock[4] = v12;
  v13 = v6;
  v22 = v13;
  v24 = a2;
  v14 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v14[2](v14);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B595614;
    block[3] = &unk_2787028D8;
    v20 = v14;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(*v29 + 40);
      *v26 = 138412290;
      v27 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Purge callback with callback dictionary: %@", v26, 0xCu);
    }
  }

  v17 = *(*v29 + 40);

  _Block_object_dispose(buf, 8);
  return v17;
}

void sub_22B595548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x22B595324);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22B5955A8(uint64_t a1)
{
  v2 = *(a1 + 60);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  if (v2 == 1)
  {
    [v3 __wrapperAroundCacheDeletePurgingCallback:v4 urgency:v5];
  }

  else
  {
    [v3 createDictionaryForNotDeletingAnyAttachments:v4 urgency:v5];
  }
  *(*(*(a1 + 48) + 8) + 40) = ;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B595628(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = @"NO";
      *v11 = 138412802;
      *&v11[4] = v5;
      if (v7)
      {
        v8 = @"YES";
      }

      *&v11[12] = 1024;
      *&v11[14] = a2;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "CacheDelete -- periodic block called with info: %@ and urgency: %d isMainThread: %@", v11, 0x1Cu);
    }
  }

  v9 = [*(a1 + 32) createDictionaryForNotDeletingAnyAttachments:v5 urgency:{a2, *v11, *&v11[8]}];

  return v9;
}

void sub_22B595964()
{
  v0 = MEMORY[0x277CBEBC0];
  v3 = [@"/var/mobile/Library/SMS" stringByExpandingTildeInPath];
  v1 = [v0 fileURLWithPath:v3 isDirectory:1];
  v2 = qword_27D8CFED8;
  qword_27D8CFED8 = v1;
}

void sub_22B597B54()
{
  v0 = +[IMDCKAttachmentSyncController sharedInstance];
  [v0 setIsSyncing:0];
}

uint64_t (**sub_22B597FCC(uint64_t a1, uint64_t a2))(void)
{
  v2 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 64)];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 72)];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 80)];
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Completed fetching batch with starting index: %@ index of next batch: %@ for number of batches: %@", &v10, 0x20u);
    }
  }

  *(*(a1 + 32) + 8) = v2;
  if (*(a1 + 88) == 1)
  {
    return [*(a1 + 32) _fetchTransfersFromCloudKit:*(a1 + 40) indexOfTransfers:*(a1 + 72) numberOfBatchesToFetch:*(a1 + 80) activity:*(a1 + 48) withCompletion:*(a1 + 56)];
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "/*-------Fetched all transfers we wanted to validate------*/", &v10, 2u);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return result[2]();
  }

  return result;
}

id _MessageDateFromTimeStamp(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = v2;
  if (v1)
  {
    v4 = [v1 unsignedLongLongValue];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = *&v1;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Converting timestamp: %@ to date", &v14, 0xCu);
      }
    }

    v6 = v4 / 1000000000.0;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = 134217984;
        v15 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "  => seconds: %f", &v14, 0xCu);
      }
    }

    if (v6 <= 600000.0)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "  => Returning current date, failed sanity", &v14, 2u);
        }
      }

      v8 = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6];

      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = *&v8;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "  => Returning date: %@", &v14, 0xCu);
        }
      }
    }

    v10 = _ClampDate(v8);
  }

  else
  {
    v10 = v2;
    v8 = v10;
  }

  v12 = v10;

  return v12;
}

uint64_t _ChatStyleFromChatStyleString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:IMDRelayMessageDictionaryChatStyleInstantMessage])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:IMDRelayMessageDictionaryChatStyleGroup])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:IMDRelayMessageDictionaryChatStyleRoom])
  {
    v2 = 35;
  }

  else
  {
    v2 = 45;
  }

  return v2;
}

void sub_22B5986E4(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v35 = *(a1 + 32);
  v34 = a1;
  v3 = [*(a1 + 40) relayEnrollmentController];
  [v3 _approveSelfForSMSRelay];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 40) service];
      v6 = [v5 internalName];
      *buf = 138412290;
      v44 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@ relay received Incoming Plain Text Message From Push Handler", buf, 0xCu);
    }
  }

  v7 = [*(a1 + 40) relayController];
  if ([v7 watchConnectedOverBT])
  {
  }

  else
  {
    v8 = [MEMORY[0x277D18998] sharedInstance];
    v9 = [v35 objectForKey:IMDCTMessageDictionarySenderKey];
    v10 = [v8 isPhoneNumberEmergencyNumber:v9];

    if (v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "This relay message has come from an emergency number, Not processing message", buf, 2u);
        }
      }

      v33[2]();
LABEL_39:

      goto LABEL_40;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v35 objectForKey:IMDCTMessageDictionaryReceipientsKey];
      *buf = 138412290;
      v44 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Recipients: %@", buf, 0xCu);
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = [v35 objectForKey:IMDCTMessageDictionaryReceipientsKey];
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = *v39;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v44 = v18;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "  Recipient: %@", buf, 0xCu);
          }
        }

        v20 = [MEMORY[0x277D18998] sharedInstance];
        v21 = [v20 isPhoneNumberEmergencyNumber:v18];

        if (v21)
        {
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "One of the recipients was an emergency number, this message should never have been relayed, not processing message", buf, 2u);
            }
          }

          v33[2]();

          goto LABEL_39;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v22 = [*(v34 + 40) relayController];
  v23 = [v22 idsDeviceFromPushToken:*(v34 + 48)];

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v23 name];
      *buf = 138412290;
      v44 = v25;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, " Incoming plain text message from %@", buf, 0xCu);
    }
  }

  v26 = [v35 mutableCopy];
  v27 = [v23 uniqueIDOverride];
  [v26 setObject:v27 forKeyedSubscript:IMDRelayDeviceUniqueIDKey];

  v28 = v26;
  v29 = *(v34 + 40);
  v30 = *(v34 + 56);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_22B598D20;
  v36[3] = &unk_2787054A0;
  v37 = v33;
  [v29 _processReceivedDictionary:v28 storageContext:v30 receivedViaRelay:1 withCompletionBlock:v36];

LABEL_40:
}

void sub_22B598E50(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) service];
      v6 = [v5 internalName];
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@ relay Received Incoming download Message From Push Handler", buf, 0xCu);
    }
  }

  v7 = [*(a1 + 32) relayEnrollmentController];
  [v7 _approveSelfForSMSRelay];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 im_randomTemporaryFileURLWithFileName:IMDRelayDownloadMessageTemporaryPathKey];
  v24 = [v9 path];

  v10 = [MEMORY[0x277D1ADF8] sharedInstance];
  v11 = [MEMORY[0x277CCACA8] stringGUID];
  v12 = [*(a1 + 40) objectForKey:IMDRelayMessageAttachmentDictionaryURLStringKey];
  v13 = [*(a1 + 40) objectForKey:IMDRelayMessageAttachmentDictionaryOwnerIDKey];
  v14 = [*(a1 + 40) objectForKey:IMDRelayMessageAttachmentDictionarySignatureKey];
  v15 = [*(a1 + 40) objectForKey:IMDRelayMessageAttachmentDictionaryEncryptionKey];
  v23 = v13;
  v16 = *MEMORY[0x277D186A8];
  v17 = v14;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = *(a1 + 64);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B599178;
  v25[3] = &unk_2787054F0;
  v25[4] = *(a1 + 32);
  v28 = v3;
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  v22 = v3;
  [v20 receiveFileTransfer:v19 topic:v16 path:v24 requestURLString:v18 ownerID:v23 signature:v17 decryptionKey:v15 fileSize:v21 progressBlock:0 completionBlock:v25];
}

void sub_22B599178(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v52 = *MEMORY[0x277D85DE8];
  v40 = a2;
  v11 = a3;
  v42 = a5;
  v41 = a6;
  if (!a4)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v51 = v42;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Unable to download incoming message: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_46;
  }

  v39 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v11];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v11;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Sucessfully Retrieved binary NSDictionary Attachment for incoming message at path %@", buf, 0xCu);
    }
  }

  v13 = [*(a1 + 32) relayController];
  if ([v13 watchConnectedOverBT])
  {
  }

  else
  {
    v15 = [MEMORY[0x277D18998] sharedInstance];
    v16 = [v39 objectForKey:IMDCTMessageDictionarySenderKey];
    v17 = [v15 isPhoneNumberEmergencyNumber:v16];

    if (v17)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "This relay message has come from an emergency number, Not processing message", buf, 2u);
        }
      }

      (*(*(v38 + 56) + 16))();
LABEL_45:

      goto LABEL_46;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v39 objectForKey:IMDCTMessageDictionaryReceipientsKey];
      *buf = 138412290;
      v51 = v20;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Recipients: %@", buf, 0xCu);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = [v39 objectForKey:IMDCTMessageDictionaryReceipientsKey];
  v22 = [v21 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v22)
  {
    v23 = *v46;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v45 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v51 = v25;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "  Recipient: %@", buf, 0xCu);
          }
        }

        v27 = [MEMORY[0x277D18998] sharedInstance];
        v28 = [v27 isPhoneNumberEmergencyNumber:v25];

        if (v28)
        {
          if (IMOSLoggingEnabled())
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "One of the recipients was an emergency number, this message should never have been relayed, not processing message", buf, 2u);
            }
          }

          (*(*(v38 + 56) + 16))();

          goto LABEL_45;
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v29 = [*(v38 + 32) relayController];
  v30 = [v29 idsDeviceFromPushToken:*(v38 + 40)];

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v30 name];
      *buf = 138412290;
      v51 = v32;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " Incoming download message from %@", buf, 0xCu);
    }
  }

  v33 = [v39 mutableCopy];
  v34 = [v30 uniqueIDOverride];
  [v33 setObject:v34 forKeyedSubscript:IMDRelayDeviceUniqueIDKey];

  v35 = *(v38 + 32);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_22B59984C;
  v43[3] = &unk_2787054A0;
  v36 = *(v38 + 48);
  v44 = *(v38 + 56);
  [v35 _processReceivedDictionary:v33 storageContext:v36 receivedViaRelay:1 withCompletionBlock:v43];

LABEL_46:
}

id sub_22B59A364(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 objectForKey:IMDRelayMessageDictionaryRecipientIDKey];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Found Recipient %@", &v7, 0xCu);
    }
  }

  v5 = [v2 objectForKey:IMDRelayMessageDictionaryRecipientIDKey];

  return v5;
}

void sub_22B59AE28(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) service];
      v6 = [v5 internalName];
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138412802;
      v32 = v6;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@ relay Received Outgoing Plain Text Message From Push Handler From %@ To %@", buf, 0x20u);
    }
  }

  v9 = [*(a1 + 32) relayEnrollmentController];
  [v9 _approveSelfForSMSRelay];

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_22B59B110;
  v19 = &unk_278705590;
  v29 = *(a1 + 96);
  v20 = *(a1 + 32);
  v21 = *(a1 + 56);
  v22 = *(a1 + 40);
  v23 = *(a1 + 64);
  v30 = *(a1 + 97);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v10 = v3;
  v28 = v10;
  v27 = *(a1 + 48);
  v11 = _Block_copy(&v16);
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v14 = *(a1 + 40);
  v15 = [*(a1 + 56) objectForKey:{IMDRelayMessageDictionaryForcedShowOnlyKey, v16, v17, v18, v19, v20}];
  LOBYTE(v12) = [v12 _allowedToProcessMessageFromToken:v13 fromID:v14 reflectOnly:v15 != 0 isInProxyMode:*(a1 + 96)];

  if (v12)
  {
    [*(a1 + 32) _deferredReplicatedMessageReleaseWithAllowedMessage:*(a1 + 56) outgoingProxyBlock:v11];
  }

  else
  {
    v11[2](v11, 0);
  }
}

void sub_22B59B110(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v115 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v2)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      if (*(a1 + 104))
      {
        v5 = @"YES";
      }

      *buf = 138412546;
      v110 = v6;
      v111 = 2112;
      v112 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Is Message from device on the allowed proxy list? %@ isInProxyMode %@", buf, 0x16u);
    }
  }

  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Message Type is a plain text outgoing message", buf, 2u);
      }
    }

    v97 = [*(a1 + 32) chatForOutgoingMessage:*(a1 + 40) fromIdentifier:*(a1 + 48) isInProxyMode:*(a1 + 104) createIfNotExists:1];
    v95 = [*(a1 + 32) _sendingHandleForOutgoingMessageInChat:v97 fromIdentifier:*(a1 + 48)];
    v8 = [*(a1 + 40) objectForKey:IMDRelayMessageDictionaryForcedShowOnlyKey];

    if (v8)
    {
      LODWORD(v92) = 0;
    }

    else
    {
      v9 = [*(a1 + 32) relayController];
      v10 = [v9 idsDeviceFromPushToken:*(a1 + 56)];

      if (*(a1 + 105))
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = *(a1 + 64);
            *buf = 138412290;
            v110 = v12;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Message %@ was being replayed not forwarding to peers", buf, 0xCu);
          }
        }
      }

      else
      {
        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) account];
        v15 = [v14 service];
        v16 = [v15 internalName];
        v17 = [IMDRelayServiceController _updateServiceOfMessageInMessageDict:v13 toService:v16];

        v18 = [*(a1 + 32) relayController];
        [v18 forwardMessageToPeers:v17 messageType:143 guid:*(a1 + 64) originalSender:v10 forcedCallerID:v95];
      }

      v19 = [MEMORY[0x277D1A900] sharedManager];
      LODWORD(v92) = [v19 isMessagesTheDefaultTextApp];
    }

    HIDWORD(v92) = v8 != 0;
    v96 = [*(a1 + 40) objectForKey:{IMDRelayMessageItemDictionary, v92}];
    v20 = [IMDRelayServiceController _convertIMMessageItemDictionaryToIMMessageItem:v96 timestamp:*(a1 + 72)];
    v21 = *(a1 + 32);
    v22 = *(a1 + 80);
    v23 = [v20 guid];
    [v21 _markFromStorageIfNeeded:v22 messageGUID:v23];

    if (!v97)
    {
      (*(*(a1 + 96) + 16))();
LABEL_107:

      return;
    }

    v24 = [*(a1 + 40) objectForKeyedSubscript:IMDRelayMessageDictionarySendOnlyKey];
    v25 = [v24 BOOLValue];

    v26 = +[IMDMessageStore sharedInstance];
    v27 = [v20 guid];
    v28 = [v26 messageWithGUID:v27];

    v29 = [v28 errorCode];
    if (v28)
    {
      v30 = v29;
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v20 guid];
          v33 = v32;
          v34 = @"YES";
          if (!v30)
          {
            v34 = @"NO";
          }

          *buf = 138412546;
          v110 = v32;
          v111 = 2112;
          v112 = v34;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Found a Message with the same GUID %@ and Fail %@", buf, 0x16u);
        }
      }

      v35 = v30 == 0;
      v36 = *(a1 + 32);
      v37 = [v28 service];
      v38 = [v20 service];
      LODWORD(v36) = [v36 messageServiceNamed:v37 canProcessMessagesFromServiceNamed:v38];

      if ((v36 & v35) != 0)
      {
        v39 = [v28 needsRepeatForRelayReplication];
        v40 = IMOSLoggingEnabled();
        if (!v39)
        {
          if (!v25)
          {
            if (v40)
            {
              v55 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                v56 = [v20 guid];
                v57 = [v20 service];
                v58 = [v28 service];
                *buf = 138412802;
                v110 = v56;
                v111 = 2112;
                v112 = v57;
                v113 = 2112;
                v114 = v58;
                _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Found duplicate message for GUID %@ on Service %@ and it did not have an error (found msg service %@)", buf, 0x20u);
              }
            }

            (*(*(a1 + 96) + 16))();
            goto LABEL_106;
          }

          if (v40)
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = [v20 guid];
              *buf = 138412290;
              v110 = v49;
              _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Found message with same GUID %@ but instructed to send message without persistence", buf, 0xCu);
            }
          }

          goto LABEL_45;
        }

        if (v40)
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = [v20 guid];
            *buf = 138412290;
            v110 = v42;
            _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Found message with same GUID %@ but still needs relay replication", buf, 0xCu);
          }
        }

        [v28 setNeedsRepeatForRelayReplication:0];
      }

      else if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [v20 guid];
          v45 = [v20 service];
          *buf = 138412546;
          v110 = v44;
          v111 = 2112;
          v112 = v45;
          _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Found duplicate message for GUID %@ on Service %@ but allowing it to be processed since original message had an error", buf, 0x16u);
        }
      }
    }

    if (v25)
    {
LABEL_45:
      if (!v93 || v8 || (*(a1 + 105) & 1) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = [v20 guid];
            *buf = 138412290;
            v110 = v47;
            _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Sending device requested no persistence for message %@, local device not responsible for sending", buf, 0xCu);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v50 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = [v20 guid];
            *buf = 138412290;
            v110 = v51;
            _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "Sending device requested no persistence for message %@, sending to CT now", buf, 0xCu);
          }
        }

        v52 = *(a1 + 32);
        v53 = [v97 chatIdentifier];
        [v52 sendMessageFromIMMessageItem:v20 forChat:v53 chat:v97 style:{objc_msgSend(v97, "style")}];
      }

      v54 = *(a1 + 96);
      if (v54)
      {
        (*(v54 + 16))();
      }

LABEL_106:

      goto LABEL_107;
    }

    if (v8)
    {
      v59 = [*(a1 + 40) _numberForKey:IMDRelayMessageDictionaryiMessageCapability];
      v60 = [v59 intValue];

      if (v60 == 2)
      {
        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            v65 = [v97 chatIdentifier];
            *buf = 138412290;
            v110 = v65;
            _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "We received an outgoing message and we are only reflecting it, setting shouldForceToSMS on chat %@ to YES", buf, 0xCu);
          }
        }

        v63 = 1;
        goto LABEL_82;
      }

      if (v60 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v61 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            v62 = [v97 chatIdentifier];
            *buf = 138412290;
            v110 = v62;
            _os_log_impl(&dword_22B4CC000, v61, OS_LOG_TYPE_INFO, "We received an outgoing message and we are only reflecting it, setting shouldForceToSMS on chat %@ to NO", buf, 0xCu);
          }
        }

        v63 = 0;
LABEL_82:
        v66 = *(a1 + 32);
        v67 = [v97 chatIdentifier];
        [v66 _updateShouldForceToSMSForChatWithIdentifier:v67 style:objc_msgSend(v97 shouldForceToSMS:{"style"), v63}];
      }
    }

    if (v20)
    {
      v68 = [*(a1 + 32) loginID];
      [v20 setSender:v68];

      [v20 setDestinationCallerID:v95];
      v69 = [*(a1 + 32) tapbackInterpreter];
      v70 = [v69 interpretMessageItem:v20 inChat:v97];

      if (v93)
      {
        if (v8 || (*(a1 + 105) & 1) != 0)
        {
          v71 = 0;
        }

        else
        {
          v91 = [MEMORY[0x277CBEAA8] date];
          [v70 setTime:v91];

          v71 = 1;
        }

        v72 = *(a1 + 32);
        v73 = [v97 chatIdentifier];
        v74 = [v97 style];
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = sub_22B59C138;
        v102[3] = &unk_278705540;
        v107 = v94;
        v108 = *(a1 + 105);
        v102[4] = *(a1 + 32);
        v103 = v70;
        v104 = v97;
        v106 = *(a1 + 96);
        v105 = *(a1 + 64);
        [v72 processMessageForSending:v103 toChat:v73 style:v74 allowWatchdog:v71 completionBlock:v102];

        v75 = &v103;
        v76 = &v104;
        v77 = &v106;
        v78 = v105;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v80 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            v81 = [v70 guid];
            v82 = [v97 chatIdentifier];
            *buf = 138412802;
            v110 = v81;
            v111 = 2112;
            v112 = v82;
            v113 = 2112;
            v114 = v97;
            _os_log_impl(&dword_22B4CC000, v80, OS_LOG_TYPE_INFO, "send message with guid: %@  to identifier: %@   chat: %@", buf, 0x20u);
          }
        }

        v83 = *(a1 + 32);
        v78 = [v97 chatIdentifier];
        v84 = [v97 style];
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = sub_22B59C44C;
        v98[3] = &unk_278705568;
        v98[4] = *(a1 + 32);
        v99 = v70;
        v100 = v97;
        v101 = *(a1 + 96);
        [v83 processMessageForSending:v99 toChat:v78 style:v84 allowWatchdog:0 completionBlock:v98];
        v75 = &v99;
        v76 = &v100;
        v77 = &v101;
      }

      if (IMOSLoggingEnabled())
      {
        v85 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v86 = [v70 guid];
          *buf = 138412290;
          v110 = v86;
          _os_log_impl(&dword_22B4CC000, v85, OS_LOG_TYPE_INFO, "Reflecting outgoing message with Guid: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v79 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v79, OS_LOG_TYPE_INFO, " Unable to create message item from message dictionary", buf, 2u);
        }
      }

      (*(*(a1 + 96) + 16))();
      v70 = 0;
    }

    if ((IMSharedHelperDeviceHasMultipleSubscriptions() & 1) == 0)
    {
      v87 = *(a1 + 32);
      v88 = [v97 chatIdentifier];
      v89 = [v97 style];
      v90 = [*(a1 + 88) _stripFZIDPrefix];
      [v87 _updateLastAddressedIDsIfNeededForChatWithIdentifier:v88 style:v89 lastAddressedHandle:v90 lastAddressedSIMID:0];
    }

    v20 = v70;
    goto LABEL_106;
  }

  [*(a1 + 32) sendUnapproveToToken:*(a1 + 56) messageGUID:*(a1 + 64) completion:*(a1 + 96)];
}

void sub_22B59C138(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(a1 + 72) & 1) != 0 || *(a1 + 73) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "This messag was addressed to me, however I was told to reflect it only", &v17, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "  => Done marking message as sending: %@", &v17, 0xCu);
      }
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 48) chatIdentifier];
    v9 = [*(a1 + 48) style];
    v10 = [*(a1 + 40) time];
    [v7 didSendMessage:v6 forChat:v8 style:v9 forceDate:v10];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v3;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "  => Done marking message as sending: %@", &v17, 0xCu);
      }
    }

    if (*(a1 + 73))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 56);
          v17 = 138412290;
          v18 = v13;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Message %@ is being replayed. Not sending out over CT", &v17, 0xCu);
        }
      }
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = [*(a1 + 48) chatIdentifier];
      [v14 sendMessageFromIMMessageItem:v15 forChat:v16 chat:*(a1 + 48) style:{objc_msgSend(*(a1 + 48), "style")}];
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_22B59C44C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "  => Done marking message as sending: %@", &v13, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 48) chatIdentifier];
  v8 = [*(a1 + 48) style];
  v9 = [*(a1 + 40) time];
  [v6 didSendMessage:v5 forChat:v7 style:v8 forceDate:v9];

  v10 = [MEMORY[0x277D1A900] sharedManager];
  LOBYTE(v5) = [v10 isMessagesTheDefaultTextApp];

  if ((v5 & 1) == 0)
  {
    v11 = [*(a1 + 40) guid];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Force failing message guid %@, as Messages is not the default text app", &v13, 0xCu);
      }
    }

    [*(a1 + 32) didReceiveError:4 forMessageID:v11 forceError:1];
    [*(a1 + 32) processMessageSendFailure:v11];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_22B59C9A4(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) service];
      v6 = [v5 internalName];
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@ relay Received Outgoing download Message From Push Handler", buf, 0xCu);
    }
  }

  v7 = [*(a1 + 32) relayEnrollmentController];
  [v7 _approveSelfForSMSRelay];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B59CC78;
  aBlock[3] = &unk_278705608;
  v24 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v26 = v24;
  v27 = v11;
  v31 = *(a1 + 96);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = v3;
  v30 = v15;
  v16 = *(a1 + 88);
  *&v17 = v14;
  *(&v17 + 1) = v16;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v28 = v18;
  v29 = v17;
  v19 = _Block_copy(aBlock);
  v20 = *(a1 + 32);
  v21 = *(a1 + 56);
  v22 = *(a1 + 48);
  v23 = [*(a1 + 40) objectForKey:IMDRelayMessageDictionaryForcedShowOnlyKey];
  LOBYTE(v20) = [v20 _allowedToProcessMessageFromToken:v21 fromID:v22 reflectOnly:v23 != 0 isInProxyMode:*(a1 + 97)];

  if (v20)
  {
    [*(a1 + 32) _deferredReplicatedMessageReleaseWithAllowedMessage:*(a1 + 40) outgoingProxyBlock:v19];
  }

  else
  {
    v19[2](v19, 0);
  }
}

void sub_22B59CC78(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v76 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v2)
      {
        v5 = @"YES";
      }

      *buf = 138412290;
      v73 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Is Message from device on the allowed proxy list? %@", buf, 0xCu);
    }
  }

  v6 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Message Type is an outgoing download message", buf, 2u);
      }
    }

    v8 = [*(a1 + 32) chatForOutgoingMessage:*(a1 + 40) fromIdentifier:*(a1 + 48) isInProxyMode:0 createIfNotExists:1];
    v9 = [*(a1 + 32) _sendingHandleForOutgoingMessageInChat:v8 fromIdentifier:*(a1 + 48)];
    v10 = [*(a1 + 40) objectForKey:IMDRelayMessageDictionaryForcedShowOnlyKey];
    v60 = v10 != 0;

    v11 = 0x2786FF000;
    if (!v10)
    {
      v12 = [*(a1 + 32) relayController];
      v58 = [v12 idsDeviceFromPushToken:*(a1 + 56)];

      if (*(a1 + 104))
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = *(a1 + 64);
            *buf = 138412290;
            v73 = v14;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Message %@ was being replayed not forwarding to peers", buf, 0xCu);
          }
        }
      }

      else
      {
        v19 = *(a1 + 40);
        v20 = [*(a1 + 32) account];
        v21 = [v20 service];
        v22 = [v21 internalName];
        v23 = [IMDRelayServiceController _updateServiceOfMessageInMessageDict:v19 toService:v22];

        v24 = [*(a1 + 32) relayController];
        [v24 forwardMessageToPeers:v23 messageType:144 guid:*(a1 + 64) originalSender:v58 forcedCallerID:v9];
      }

      v11 = 0x2786FF000uLL;
    }

    v59 = v10 == 0;
    v25 = *(v11 + 2904);
    v26 = [*(a1 + 40) objectForKey:IMDRelayMessageItemDictionary];
    v27 = [v25 _convertIMMessageItemDictionaryToIMMessageItem:v26 timestamp:*(a1 + 72)];

    v28 = *(a1 + 32);
    v29 = *(a1 + 80);
    v30 = [v27 guid];
    [v28 _markFromStorageIfNeeded:v29 messageGUID:v30];

    if (!v8)
    {
      (*(*(a1 + 96) + 16))();
LABEL_48:

      goto LABEL_49;
    }

    v31 = +[IMDMessageStore sharedInstance];
    v32 = [v27 guid];
    v33 = [v31 messageWithGUID:v32];

    v34 = [v33 errorCode];
    if (v33)
    {
      v35 = v34;
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [v27 guid];
          v38 = v37;
          v39 = @"YES";
          if (!v35)
          {
            v39 = @"NO";
          }

          *buf = 138412546;
          v73 = v37;
          v74 = 2112;
          v75 = v39;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Found a Message with the same GUID %@ and Fail %@", buf, 0x16u);
        }
      }

      v40 = v35 == 0;
      v41 = [v33 service];
      v42 = [v27 service];
      v43 = [v41 isEqualToString:v42];

      if ((v43 & v40) != 0)
      {
        v44 = [v33 needsRepeatForRelayReplication];
        v45 = IMOSLoggingEnabled();
        if (!v44)
        {
          if (v45)
          {
            v55 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = [v27 guid];
              v57 = [v27 service];
              *buf = 138412546;
              v73 = v56;
              v74 = 2112;
              v75 = v57;
              _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Found duplicate message for GUID %@ on Service %@ and it did not have an error", buf, 0x16u);
            }
          }

          (*(*(a1 + 96) + 16))();
          goto LABEL_47;
        }

        if (v45)
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = [v27 guid];
            *buf = 138412290;
            v73 = v47;
            _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Found message with same GUID %@ but still needs relay replication", buf, 0xCu);
          }
        }

        [v33 setNeedsRepeatForRelayReplication:0];
        v48 = 1;
LABEL_46:
        v52 = [*(a1 + 32) attachmentController];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = sub_22B59D5C0;
        v61[3] = &unk_2787055E0;
        v53 = v27;
        v54 = *(a1 + 32);
        v62 = v53;
        v63 = v54;
        v64 = v9;
        v69 = v59;
        v65 = v8;
        v70 = v60;
        v71 = *(a1 + 104);
        v68 = *(a1 + 96);
        v66 = *(a1 + 64);
        v67 = *(a1 + 88);
        [v52 retrieveAttachmentsForMessage:v53 ignoreStoredTransfers:v48 displayID:0 token:0 completionBlock:v61];

LABEL_47:
        goto LABEL_48;
      }

      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [v27 guid];
          v51 = [v27 service];
          *buf = 138412546;
          v73 = v50;
          v74 = 2112;
          v75 = v51;
          _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Found duplicate message for GUID %@ on Service %@ but allowing it to be processed since original message had an error", buf, 0x16u);
        }
      }
    }

    v48 = 0;
    goto LABEL_46;
  }

  if (v6)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Alert said no, sending back a failure ", buf, 2u);
    }
  }

  v16 = [*(a1 + 32) relayController];
  v8 = [v16 idsDeviceFromPushToken:*(a1 + 56)];

  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*(a1 + 64), IMDRelayMessageDictionaryGUIDKey, MEMORY[0x277CBEC38], IMDRelayAuthorizationUnauthorizedDeviceKey, 0}];
  v17 = [*(a1 + 32) relayController];
  v18 = [v17 enrollmentController];
  [v18 sendUnApproveToDevice:v8 extraKeys:v9];

  (*(*(a1 + 96) + 16))();
LABEL_49:
}

void sub_22B59D50C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B59D250);
  }

  _Unwind_Resume(a1);
}

void sub_22B59D5C0(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v46 = a2;
  v9 = a3;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (a4)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v58 = v11;
      v59 = 1024;
      LODWORD(v60) = a5;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "AttachmentController complete, success: %@   error: %d", buf, 0x12u);
    }
  }

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) loginID];
  [v12 setSender:v13];

  [*(a1 + 32) setDestinationCallerID:*(a1 + 48)];
  v14 = *(a1 + 88);
  v15 = IMOSLoggingEnabled();
  if (v14)
  {
    if (v15)
    {
      v16 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 32) guid];
        v18 = [*(a1 + 56) chatIdentifier];
        v19 = *(a1 + 56);
        *buf = 138412802;
        v58 = v17;
        v59 = 2112;
        v60 = v18;
        v61 = 2112;
        v62 = v19;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Will relay SMS message with guid %@   to identifier: %@   chat: %@", buf, 0x20u);
      }
    }

    if (*(a1 + 89) & 1) != 0 || (*(a1 + 90))
    {
      v20 = 0;
    }

    else
    {
      v33 = *(a1 + 32);
      v34 = [MEMORY[0x277CBEAA8] date];
      [v33 setTime:v34];

      v20 = 1;
    }

    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    v37 = [*(a1 + 56) chatIdentifier];
    v38 = [*(a1 + 56) style];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_22B59DB1C;
    v51[3] = &unk_278705540;
    v56 = *(a1 + 89);
    v45 = *(a1 + 32);
    v39 = v45.i64[0];
    v52 = vextq_s8(v45, v45, 8uLL);
    v53 = *(a1 + 56);
    v55 = *(a1 + 80);
    v54 = *(a1 + 64);
    [v36 processMessageForSending:v35 toChat:v37 style:v38 allowWatchdog:v20 completionBlock:v51];

    v30 = &v52.i64[1];
    v31 = &v53;
    v32 = &v55;
    v27 = v54;
  }

  else
  {
    if (v15)
    {
      v21 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [*(a1 + 32) guid];
        v23 = [*(a1 + 56) chatIdentifier];
        v24 = *(a1 + 56);
        *buf = 138412802;
        v58 = v22;
        v59 = 2112;
        v60 = v23;
        v61 = 2112;
        v62 = v24;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Noting relayed SMS message with guid %@ to identifier: %@   chat: %@", buf, 0x20u);
      }
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = [*(a1 + 56) chatIdentifier];
    v28 = [*(a1 + 56) style];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_22B59DE30;
    v47[3] = &unk_278705568;
    v44 = *(a1 + 32);
    v29 = v44.i64[0];
    v48 = vextq_s8(v44, v44, 8uLL);
    v49 = *(a1 + 56);
    v50 = *(a1 + 80);
    [v26 processMessageForSending:v25 toChat:v27 style:v28 allowWatchdog:0 completionBlock:v47];
    v30 = &v48.i64[1];
    v31 = &v49;
    v32 = &v50;
  }

  if ((IMSharedHelperDeviceHasMultipleSubscriptions() & 1) == 0)
  {
    v40 = *(a1 + 40);
    v41 = [*(a1 + 56) chatIdentifier];
    v42 = [*(a1 + 56) style];
    v43 = [*(a1 + 72) _stripFZIDPrefix];
    [v40 _updateLastAddressedIDsIfNeededForChatWithIdentifier:v41 style:v42 lastAddressedHandle:v43 lastAddressedSIMID:0];
  }
}

void sub_22B59DAD4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B59D838);
  }

  _Unwind_Resume(a1);
}

void sub_22B59DB1C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(a1 + 72) & 1) != 0 || *(a1 + 73) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "This messag was addressed to me, however I was told to reflect it only", &v17, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "  => Done marking message as sending: %@", &v17, 0xCu);
      }
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 48) chatIdentifier];
    v9 = [*(a1 + 48) style];
    v10 = [*(a1 + 40) time];
    [v7 didSendMessage:v6 forChat:v8 style:v9 forceDate:v10];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v3;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "  => Done marking message as sending: %@", &v17, 0xCu);
      }
    }

    if (*(a1 + 73))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 56);
          v17 = 138412290;
          v18 = v13;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Message %@ is being replayed. Not sending out over CT", &v17, 0xCu);
        }
      }
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = [*(a1 + 48) chatIdentifier];
      [v14 sendMessageFromIMMessageItem:v15 forChat:v16 chat:*(a1 + 48) style:{objc_msgSend(*(a1 + 48), "style")}];
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_22B59DE30(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "  => Done marking message as sending: %@", &v10, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 48) chatIdentifier];
  v8 = [*(a1 + 48) style];
  v9 = [*(a1 + 40) time];
  [v6 didSendMessage:v5 forChat:v7 style:v8 forceDate:v9];

  (*(*(a1 + 56) + 16))();
}

void sub_22B59E114(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) service];
      v6 = [v5 internalName];
      v7 = *(a1 + 40);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@ relay received Message ID sent: %@", &v10, 0x16u);
    }
  }

  v8 = [*(a1 + 32) relayEnrollmentController];
  [v8 _approveSelfForSMSRelay];

  if ([*(a1 + 40) length])
  {
    [*(a1 + 32) _markFromStorageIfNeeded:*(a1 + 48) messageGUID:*(a1 + 40)];
    [*(a1 + 32) _markMessageAsSent:*(a1 + 40) wasInterworked:*(a1 + 56)];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "  => Empty message ID, ignoring", &v10, 2u);
    }
  }

  v3[2](v3);
}

void sub_22B59E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B59E50C(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) relayEnrollmentController];
  [v4 _approveSelfForSMSRelay];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v27 = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Told to mark message ID %@ as read with timestamp %@", &v27, 0x16u);
    }
  }

  [*(a1 + 32) _markFromStorageIfNeeded:*(a1 + 56) messageGUID:*(a1 + 40)];
  v8 = *(a1 + 88);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = _MessageDateFromTimeStamp(*(a1 + 48));
  if ((v8 & 1) == 0)
  {
    [v9 didReceiveMessageReadReceiptForMessageID:v10 date:v11 completionBlock:v3];
    goto LABEL_16;
  }

  [v9 didReceiveMessageReadForMessageID:v10 date:v11 completionBlock:v3];

  v12 = [MEMORY[0x277D1A8F8] isMessagesTheDefaultTextApp];
  v13 = +[IMDMessageStore sharedInstance];
  v11 = [v13 messageWithGUID:*(a1 + 40)];

  if (v11)
  {
    v14 = [*(a1 + 32) relayController];
    v15 = [v14 idsDeviceFromPushToken:*(a1 + 64)];

    if (!v15 || (*(a1 + 89) & 1) != 0)
    {
      goto LABEL_14;
    }

    v16 = [*(a1 + 32) relayController];
    if (([v16 _localDeviceSupportsSMS] & v12) == 1)
    {
      v17 = [MEMORY[0x277D1A908] sharedInstance];
      v18 = [v17 ctSubscriptionInfo];
      v19 = [*(a1 + 72) _stripFZIDPrefix];
      v20 = [v18 __im_containsPhoneNumber:v19];

      if (!v20)
      {
LABEL_14:

        goto LABEL_16;
      }

      v21 = +[IMDMessageStore sharedInstance];
      v16 = [v21 chatForMessage:v11];

      if (v16)
      {
        v22 = [*(a1 + 32) mainSession];
        v23 = [v16 guid];
        v24 = [v16 chatIdentifier];
        [v22 sendReadReceiptForMessage:v11 toChatID:v23 identifier:v24 style:objc_msgSend(v16 reflectOnly:{"style"), 1}];
      }
    }

    goto LABEL_14;
  }

LABEL_16:

  v25 = *(*(a1 + 80) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = 0;
}

void sub_22B59E8B8(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) relayEnrollmentController];
  [v4 _approveSelfForSMSRelay];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) service];
      v7 = [v6 internalName];
      v8 = *(a1 + 40);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ relay received message guid: %@ to report to carrier as junk", &v10, 0x16u);
    }
  }

  if ([*(a1 + 40) length])
  {
    [*(a1 + 32) sendReportJunkMessageGUID:*(a1 + 40) shouldRelay:0];
    v3[2](v3);
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4144(v9);
    }
  }
}

void sub_22B59EB5C(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) relayEnrollmentController];
  [v4 _approveSelfForSMSRelay];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) service];
      v7 = [v6 internalName];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v13 = 138413058;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ relay received Message ID:%@ Send Failure Message From Push Handler, from:%@ to:%@", &v13, 0x2Au);
    }
  }

  v12 = *(a1 + 32);
  v11 = a1 + 32;
  [v12 _markFromStorageIfNeeded:*(v11 + 32) messageGUID:*(v11 + 8)];
  [*v11 didReceiveError:4 forMessageID:*(v11 + 8) forceError:1];
  v3[2](v3);
}

void sub_22B59F71C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) service];
      v6 = [v5 internalName];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@ Relay received Message ID Send Failure Message From Push Handler", &v10, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a1 + 32;
  [v7 _markFromStorageIfNeeded:v8 messageGUID:*(v9 + 16)];
  [*v9 didReceiveError:4 forMessageID:*(v9 + 16) forceError:1];
  v3[2](v3);
}

void sub_22B59FD84(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) service];
      v6 = [v5 internalName];
      *buf = 138412290;
      v58 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@ Relay received group mutation message from push handler", buf, 0xCu);
    }
  }

  v7 = [*(a1 + 32) _allowedToProcessMessageFromToken:*(a1 + 40) fromID:*(a1 + 48) reflectOnly:0 isInProxyMode:*(a1 + 64)];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [*(a1 + 56) groupID];
    v10 = [*(a1 + 56) originalGroupID];
    v11 = [v8 _chatForGroupID:v9 originalGroupID:v10];

    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = [*(a1 + 56) destinationCallerID];
      v14 = [v12 _canLocallySendWithPhoneNumber:v13];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 56);
        v48 = [v16 updatedName];
        if (v14)
        {
          v47 = [v11 displayName];
          v17 = [*(a1 + 56) destinationCallerID];
          v18 = [v11 guid];
          v19 = [v11 chatIdentifier];
          v20 = [v11 style];
          v21 = [*(a1 + 56) guid];
          v22 = [v21 UUIDString];
          [v15 updateDisplayName:v48 fromDisplayName:v47 fromID:v17 forChatID:v18 identifier:v19 style:v20 messageID:v22];
        }

        else
        {
          v47 = [*(a1 + 56) guid];
          v17 = [v47 UUIDString];
          v18 = [*(a1 + 56) sender];
          v19 = [*(a1 + 56) destinationCallerID];
          v21 = [v11 chatIdentifier];
          v33 = [v11 style];
          v22 = [*(a1 + 32) account];
          [v15 didReceiveDisplayNameChange:v48 guid:v17 fromID:v18 toIdentifier:v19 forChat:v21 style:v33 account:v22];
        }

        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = *(a1 + 56);
        if (!v14)
        {
          v34 = v25;
          v35 = [v25 participantChangeType] == 0;
          if ([*(a1 + 56) failed] != v35)
          {
            v36 = 2;
          }

          else
          {
            v36 = 3;
          }

          v37 = [v34 changedParticipants];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = sub_22B5A04E4;
          v49[3] = &unk_2787056F8;
          v38 = *(a1 + 56);
          v54 = v36;
          v39 = *(a1 + 32);
          v50 = v38;
          v51 = v39;
          v52 = v11;
          v48 = v34;
          v53 = v48;
          [v37 enumerateKeysAndObjectsUsingBlock:v49];

          goto LABEL_24;
        }

        v48 = v25;
        v26 = objc_alloc(MEMORY[0x277CBEB18]);
        v27 = [v48 changedParticipants];
        v28 = [v26 initWithCapacity:{objc_msgSend(v27, "count")}];

        v29 = [v48 changedParticipants];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = sub_22B5A0404;
        v55[3] = &unk_2787056D0;
        v47 = v28;
        v56 = v47;
        [v29 enumerateKeysAndObjectsUsingBlock:v55];

        if ([v48 participantChangeType])
        {
          v30 = *(a1 + 32);
          v31 = [v11 guid];
          v32 = [v11 chatIdentifier];
          [v30 removePersonInfo:v47 chatID:v31 identifier:v32 style:{objc_msgSend(v11, "style")}];
        }

        else
        {
          v40 = objc_alloc(MEMORY[0x277D1AA70]);
          v41 = [MEMORY[0x277CBEAA8] date];
          v42 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"join us"];
          v43 = [v48 guid];
          v44 = [v43 UUIDString];
          v31 = [v40 initWithSender:0 time:v41 body:v42 attributes:0 fileTransferGUIDs:0 flags:5 error:0 guid:v44 threadIdentifier:0];

          v45 = *(a1 + 32);
          v32 = [v11 guid];
          v46 = [v11 chatIdentifier];
          [v45 invitePersonInfo:v47 withMessage:v31 toChatID:v32 identifier:v46 style:{objc_msgSend(v11, "style")}];
        }

LABEL_23:
LABEL_24:
      }
    }

    v3[2](v3);
    goto LABEL_26;
  }

  v23 = *(a1 + 40);
  v11 = [*(a1 + 56) guid];
  v24 = [v11 UUIDString];
  [v8 sendUnapproveToToken:v23 messageGUID:v24 completion:v3];

LABEL_26:
}

void sub_22B5A0404(uint64_t a1, void *a2, void *a3)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D193C0];
  v10[0] = *MEMORY[0x277D193A8];
  v10[1] = v5;
  v11[0] = a2;
  v11[1] = a2;
  v10[2] = *MEMORY[0x277D1A490];
  v11[2] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 addObject:v9];
}

void sub_22B5A04E4(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) destinationCallerID];
  v7 = [v23 isEqualToString:v6];

  if (v7 && *(a1 + 64) == 3)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) chatIdentifier];
    v10 = [*(a1 + 48) style];
    v11 = [*(a1 + 40) account];
    [v8 didLeaveChat:v9 style:v10 account:v11 messageID:v5];
  }

  v12 = [*(a1 + 40) itemWithGUID:v5];

  v13 = [*(a1 + 32) failed];
  v14 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [(IMDChatMemberStatusChangeContext *)v14 setStatus:*(a1 + 64)];
  [(IMDChatMemberStatusChangeContext *)v14 setHandleID:v23];
  v15 = [*(a1 + 56) sender];
  [(IMDChatMemberStatusChangeContext *)v14 setFromHandleID:v15];

  [(IMDChatMemberStatusChangeContext *)v14 setUnformattedNumber:v23];
  v16 = [*(a1 + 48) chatIdentifier];
  [(IMDChatMemberStatusChangeContext *)v14 setChatIdentifier:v16];

  -[IMDChatMemberStatusChangeContext setStyle:](v14, "setStyle:", [*(a1 + 48) style]);
  v17 = [*(a1 + 40) account];
  [(IMDChatMemberStatusChangeContext *)v14 setAccount:v17];

  v18 = [*(a1 + 32) destinationCallerID];
  [(IMDChatMemberStatusChangeContext *)v14 setDestinationCallerID:v18];

  [(IMDChatMemberStatusChangeContext *)v14 setMessageID:v5];
  [(IMDChatMemberStatusChangeContext *)v14 setSilently:v12 != 0];
  v19 = [*(a1 + 56) sender];
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = [*(a1 + 56) fromMe] ^ 1;
  }

  [(IMDChatMemberStatusChangeContext *)v14 setUnattributed:v20];

  v21 = [*(a1 + 40) didChangeMemberStatus:v14];
  if (v12)
  {
    v22 = v13;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1)
  {
    [*(a1 + 40) markItemFailedWithGUID:v5 errorCode:4];
  }
}

void sub_22B5A085C(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) relayEnrollmentController];
  [v4 _approveSelfForSMSRelay];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) service];
      v7 = [v6 internalName];
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ relay received priority message command.", &v20, 0xCu);
    }
  }

  if (*(a1 + 40) && ([*(a1 + 48) isEqualToString:?] & 1) != 0)
  {
    v8 = [*(a1 + 32) relayController];
    v9 = [v8 relayService];
    v10 = [v9 __im_localDevice];
    v11 = [v10 pushToken];

    if (v11 && ([*(a1 + 56) isEqual:v11] & 1) != 0)
    {
      v12 = [*(a1 + 64) priorityMessageGUIDs];
      if ([v12 count])
      {
        v13 = +[IMDFilteringController sharedInstance];
        v14 = [*(a1 + 32) service];
        v15 = [v14 internalName];
        [v13 priorityMessagesReceived:v12 forService:v15];

        v3[2](v3);
      }

      else
      {
        v19 = IMLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4188(v19);
        }
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_23:

        goto LABEL_24;
      }

      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 56);
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Ignoring priority message command that is not from my local paired device. fromToken: %@", &v20, 0xCu);
      }
    }

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) service];
      v17 = [v16 internalName];
      v20 = 138412290;
      v21 = v17;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ received priority message command is not from me, bail", &v20, 0xCu);
    }

    goto LABEL_23;
  }

LABEL_24:
}

void sub_22B5A1428(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5A1348);
  }

  _Unwind_Resume(a1);
}

void sub_22B5A1B7C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendTextAutoReplyIfNecessaryForMessages:*(a1 + 32) withUrgentBreakthroughInstructions:a2 inChat:*(a1 + 40)];
}

void sub_22B5A1D64(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5A1D28);
  }

  _Unwind_Resume(a1);
}

void sub_22B5A262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5A2644(void *a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [v7 time];
  if ([v8 compare:a1[4]] == -1)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = a1[4];
        v20 = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Determined that we have not recently sent an availability auto reply. Message time %@ is older than recency window %@", &v20, 0x16u);
      }

      goto LABEL_10;
    }

LABEL_11:
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_12;
  }

  if (a1[6] < a3)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = a1[6];
        v20 = 134217984;
        v21 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Determined that we have not recently sent an availability auto reply. We haven't sent an auto reply in the last %ld messages.", &v20, 0xCu);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v7;
    if ([v12 isFromMe] && objc_msgSend(v12, "isAutoReply"))
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v12 guid];
          v20 = 138412290;
          v21 = v14;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found a recent auto reply message from me: %@", &v20, 0xCu);
        }
      }

      *(*(a1[5] + 8) + 24) = 1;
      *a4 = 1;
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v12 guid];
        v20 = 138412802;
        v21 = v19;
        v22 = 2048;
        v23 = [v12 isFromMe];
        v24 = 2048;
        v25 = [v12 isAutoReply];
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Message %@ was not an auto reply from me. isFromMe: %ld, isAutoReply: %ld", &v20, 0x20u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v20 = 138412290;
      v21 = v17;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Item is not a message. Item class: %@", &v20, 0xCu);
    }
  }

LABEL_12:
}

void sub_22B5A2F30(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5A2F0CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5A35E4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 time];
  if ([v7 compare:*(*(*(a1 + 32) + 8) + 40)] == -1)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(*(*(a1 + 32) + 8) + 40);
        v21 = 138412546;
        v22 = v7;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Determined that we are not in urgent message grace period. Message time %@ grace period start window %@", &v21, 0x16u);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      if (([v8 isFromMe]& 1) != 0 || ![v8 didNotifyRecipient])
      {
        if (![v8 hasLegacyUrgentTriggerMatchInText])
        {
          if ([v8 isFromMe])
          {
            v14 = [v7 dateByAddingTimeInterval:-*(a1 + 48)];
            v15 = *(*(a1 + 32) + 8);
            v16 = *(v15 + 40);
            *(v15 + 40) = v14;

            [*(*(*(a1 + 32) + 8) + 40) timeIntervalSinceNow];
            v18 = v17;
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_24;
            }

            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v21 = 134217984;
              v22 = (v18 / -60.0);
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Found a reply sent by me to the chat within the grace period window, extending grace period to %ld minutes.", &v21, 0xCu);
            }
          }

          else
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_24;
            }

            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v8 guid];
              v21 = 138412802;
              v22 = v20;
              v23 = 2048;
              v24 = [v8 isFromMe];
              v25 = 2048;
              v26 = [v8 didNotifyRecipient];
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Message %@ did not impact grace period. isFromMe: %ld, didNotify: %ld", &v21, 0x20u);
            }
          }

          goto LABEL_24;
        }

        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Found a recent message that contains the urgent trigger phrase within the grace period window. Grace period is active.", &v21, 2u);
          }

          goto LABEL_22;
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Found a recent message that broke through our dnd within the grace period window. Grace period is active.", &v21, 2u);
        }

LABEL_22:
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
LABEL_24:

      goto LABEL_25;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v21 = 138412290;
        v22 = v13;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Item is not a message. Item class: %@", &v21, 0xCu);
      }

      goto LABEL_24;
    }
  }

LABEL_25:
}

void sub_22B5A3A00(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5A3858);
  }

  _Unwind_Resume(a1);
}

void sub_22B5A40AC(void *a1)
{
  v5 = +[IMDMessageStore sharedInstance];
  v2 = [v5 itemsWithHandles:a1[4] onServices:a1[5] limit:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_22B5A4120(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = 0;
  v7 = a1[4];
  v8 = *(v7 + 16);
  v9 = a2;
  v8(v7, v9, a3, &v12);
  v10 = v12;
  if (v12 == 1)
  {
    *a4 = v12;
    *(*(a1[5] + 8) + 24) = v10;
  }

  v11 = [v9 guid];

  if ([v11 length])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v11);
  }
}

void sub_22B5A41E8(void *a1)
{
  v5 = +[IMDMessageStore sharedInstance];
  v2 = [v5 itemsWithHandles:a1[4] onServices:a1[5] messageGUID:*(*(a1[7] + 8) + 40) numberOfMessagesBefore:a1[10] numberOfMessagesAfter:0 threadIdentifier:0 hasMessagesBefore:*(a1[8] + 8) + 24 hasMessagesAfter:*(a1[9] + 8) + 24];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_22B5A4B7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D436C();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B5A4E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D43DC();
    }
  }

  v8 = [v5 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B5A6554(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 itemID];
  v4 = *(a1 + 32);
  v5 = [v3 handleID];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

uint64_t sub_22B5A74F8(uint64_t a1)
{
  qword_281420FC0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5A768C()
{
  qword_27D8CFEE8 = objc_alloc_init(IMDCKSyncTokenStore);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5A9764(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Legacy processing completed, marking pipeline component as finished.", v5, 2u);
    }
  }

  [*(a1 + 32) _updateChatForInput:*(a1 + 40) hadChat:*(a1 + 64)];
  [*(a1 + 48) fullfillWithValue:*(a1 + 40)];
  return [*(a1 + 56) addTelemetryMetricForKey:4];
}

void sub_22B5AA7C8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 8u);
}

void sub_22B5AAEAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(IMDiMessageIDSDelegateHandlerRegistry);
  v4 = qword_281421350;
  qword_281421350 = v3;

  [*(a1 + 32) addStandardCommandHandlersToRegistry:qword_281421350];
  if ([qword_281421350 isLockedDown])
  {
    [*(a1 + 32) addLockdownCommandHandlersToRegistry:qword_281421350];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_22B5AC1FC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v84[6] = *MEMORY[0x277D85DE8];
  v60 = a2;
  v64 = a3;
  v12 = a4;
  v13 = a5;
  v61 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v59 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedDeliveryReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v59, &state);
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_22B4D7710;
  v77 = sub_22B4D78E4;
  v58 = v14;
  v78 = v58;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v12 fromPushID];
      *buf = 138412290;
      v81 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for delivery receipt fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorDeliveryReceipt", @"BlastDoor");
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v64;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v62 = v18;
  v63 = [[IMDeliveryReceiptPipelineParameter alloc] initWithBD:v62 idsTrustedData:v12];
  if (v63)
  {
    v53 = objc_alloc_init(IMFilterMessagePipelineComponentContext);
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v81 = v53;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Context established: %@, ", buf, 0xCu);
      }
    }

    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v57 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v22 = [IMMessageFromStoragePipelineComponent alloc];
    v23 = [v13 storageController];
    v24 = [v13 broadcaster];
    v56 = [(IMMessageFromStoragePipelineComponent *)v22 initWithStorageProcessingType:0 storageController:v23 broadcaster:v24];

    v25 = [IMSenderCapabilityPipelineComponent alloc];
    v26 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D18910]];
    v27 = [v12 fromToken];
    v55 = [(IMSenderCapabilityPipelineComponent *)v25 initWithRegistrationProperties:v26 pushToken:v27];

    v28 = [IMDeliveryReceiptProcessingPipelineComponent alloc];
    v29 = [v13 messageStore];
    v30 = [(IMDeliveryReceiptProcessingPipelineComponent *)v28 initWithMessageStore:v29];

    v31 = objc_alloc_init(PostDeliveryReceiptProcessingComponent);
    v32 = [IMMessageFromStoragePipelineComponent alloc];
    v33 = [v13 storageController];
    v34 = [v13 broadcaster];
    v35 = [(IMMessageFromStoragePipelineComponent *)v32 initWithStorageProcessingType:1 storageController:v33 broadcaster:v34];

    v36 = MEMORY[0x277D18E00];
    v84[0] = v57;
    v84[1] = v56;
    v84[2] = v55;
    v84[3] = v30;
    v84[4] = v31;
    v84[5] = v35;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:6];
    v38 = [v36 pipelineFromComponents:v37];

    v39 = [v12 toIdentifier];
    v40 = [v39 _stripFZIDPrefix];

    v41 = [v12 fromIdentifier];
    v42 = [v41 _stripFZIDPrefix];

    v43 = [v60 handler];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_22B5AC948;
    v65[3] = &unk_278705928;
    v66 = v63;
    v44 = v42;
    v67 = v44;
    v45 = v40;
    v68 = v45;
    v69 = v13;
    v46 = v61;
    v47 = *(a1 + 32);
    v70 = v46;
    v71 = &v73;
    v72 = v47;
    [v43 handleMessageDeliveryReceiptWithPipeline:v38 input:v66 completionBlock:v65];

    v48 = v53;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = objc_opt_class();
        *buf = 138412546;
        v81 = v50;
        v82 = 2048;
        v83 = v64;
        v51 = v50;
        _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v52 = [v13 service];
    [v52 sendAckForMessageWithContext:v61];

    v48 = v74[5];
    v74[5] = 0;
  }

  _Block_object_dispose(&v73, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5AC894(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AC7D0);
  }

  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v32 - 192));
  _Unwind_Resume(exc_buf);
}

void sub_22B5AC948(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) GUID];
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", buf, 0xCu);
    }
  }

  v6 = [MEMORY[0x277D1AB48] sharedInstance];
  v7 = [*(a1 + 32) GUID];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) chat];
  v11 = [v10 powerLogConversationType];
  v12 = [*(a1 + 32) chat];
  v13 = [v12 serviceName];
  [v6 logMessageReceivedWithGUID:v7 fromIdentifier:v8 toIdentifier:v9 conversationType:v11 messageType:6 messageProtocol:v13];

  v14 = [*(a1 + 56) service];
  [v14 sendAckForMessageWithContext:*(a1 + 64)];

  v15 = *(a1 + 80);
  v16 = *(a1 + 32);
  v17 = *(a1 + 64);
  v18 = [*(a1 + 56) service];
  [v15 _postReceivedMessageMetricsForInput:v16 withMessageContext:v17 toIDSService:v18];

  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

void sub_22B5ACB5C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v87[4] = *MEMORY[0x277D85DE8];
  v64 = a2;
  v67 = a3;
  v12 = a4;
  v13 = a5;
  v65 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v63 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedChatSessionClose", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v63, &state);
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_22B4D7710;
  v80 = sub_22B4D78E4;
  v62 = v14;
  v81 = v62;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v12 fromPushID];
      *buf = 138412290;
      v84 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for chat session close message fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorChatSessionClose", @"BlastDoor");
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v67;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v66 = v18;
  v19 = [[IMChatSessionClosePipelineParameter alloc] initWithDefusedMessage:v66 idsTrustedData:v12];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v61 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v26 = [IMChatSessionCloseProcessingPipelineComponent alloc];
    v27 = [v13 messageStore];
    v28 = [v13 chatRegistry];
    v29 = [(IMChatSessionCloseProcessingPipelineComponent *)v26 initWithMessageStore:v27 chatRegistry:v28 idsTrustedData:v12];

    v30 = [IMMessageFromStoragePipelineComponent alloc];
    v31 = [v13 storageController];
    v32 = [v13 broadcaster];
    v33 = [(IMMessageFromStoragePipelineComponent *)v30 initWithStorageProcessingType:1 storageController:v31 broadcaster:v32];

    v34 = MEMORY[0x277D18E00];
    v87[0] = v22;
    v87[1] = v61;
    v87[2] = v29;
    v87[3] = v33;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:4];
    v60 = [v34 pipelineFromComponents:v35];

    v36 = [v12 toIdentifier];
    v37 = [v36 _stripFZIDPrefix];

    v38 = [v12 fromIdentifier];
    v39 = [v38 _stripFZIDPrefix];

    v40 = [v64 handler];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_22B5AD1B4;
    v68[3] = &unk_278705928;
    v41 = v19;
    v42 = v33;
    v43 = v22;
    v44 = v12;
    v45 = v19;
    v46 = v29;
    v47 = v41;
    v69 = v41;
    v48 = v39;
    v70 = v48;
    v49 = v37;
    v71 = v49;
    v72 = v13;
    v50 = v65;
    v51 = *(a1 + 32);
    v73 = v50;
    v74 = &v76;
    v75 = v51;
    v52 = v47;
    v53 = v46;
    v19 = v45;
    v12 = v44;
    v54 = v43;
    [v40 handleChatSessionCloseWithPipeline:v60 input:v52 completionBlock:v68];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = objc_opt_class();
        *buf = 138412546;
        v84 = v56;
        v85 = 2048;
        v86 = v67;
        v57 = v56;
        _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v58 = [v13 service];
    [v58 sendAckForMessageWithContext:v65];

    v54 = v77[5];
    v77[5] = 0;
  }

  _Block_object_dispose(&v76, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5AD128(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AD068);
  }

  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v28 - 176));
  _Unwind_Resume(exc_buf);
}

void sub_22B5AD1B4(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) GUID];
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", buf, 0xCu);
    }
  }

  v6 = [MEMORY[0x277D1AB48] sharedInstance];
  v7 = [*(a1 + 32) GUID];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) chat];
  v11 = [v10 powerLogConversationType];
  v12 = [*(a1 + 32) chat];
  v13 = [v12 serviceName];
  [v6 logMessageReceivedWithGUID:v7 fromIdentifier:v8 toIdentifier:v9 conversationType:v11 messageType:8 messageProtocol:v13];

  v14 = [*(a1 + 56) service];
  [v14 sendAckForMessageWithContext:*(a1 + 64)];

  v15 = *(a1 + 80);
  v16 = *(a1 + 32);
  v17 = *(a1 + 64);
  v18 = [*(a1 + 56) service];
  [v15 _postReceivedMessageMetricsForInput:v16 withMessageContext:v17 toIDSService:v18];

  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

void sub_22B5AD3C8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v80[4] = *MEMORY[0x277D85DE8];
  v60 = a2;
  v61 = a3;
  v12 = a4;
  v13 = a5;
  v58 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v57 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedReadReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v57, &state);
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_22B4D7710;
  v73 = sub_22B4D78E4;
  v56 = v14;
  v74 = v56;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v12 fromPushID];
      *buf = 138412290;
      v77 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for read receipt fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorReadReceipt", @"BlastDoor");
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v61;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v59 = v18;
  v19 = [[IMReadReceiptPipelineParameter alloc] initWithBD:v59 idsTrustedData:v12];
  if (v19)
  {
    -[IMReadReceiptPipelineParameter setIsFromMe:](v19, "setIsFromMe:", [v12 isFromMe]);
    v20 = [v12 fromPushID];
    [(IMReadReceiptPipelineParameter *)v19 setFromPushID:v20];

    v21 = [v12 fromIdentifier];
    [(IMReadReceiptPipelineParameter *)v19 setFromIdentifier:v21];

    v22 = [v12 fromToken];
    v23 = [v13 imdAccount];
    v24 = [IMDiMessageIDSDelegate isDefaultPairedDevice:v22 withAccount:v23];

    [(IMReadReceiptPipelineParameter *)v19 setIsFromDefaultPairedDevice:v24];
    v25 = [IMFindAccountProcessingPipelineComponent alloc];
    v26 = [v13 imdAccount];
    v27 = [(IMFindAccountProcessingPipelineComponent *)v25 initWithReceivingAccount:v26];

    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v55 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:0 storageController:v29 broadcaster:v30];

    v31 = [IMReadReceiptProcessingPipelineComponent alloc];
    v32 = [v13 messageStore];
    v33 = [v13 chatRegistry];
    v34 = [v13 recentsController];
    v35 = [v60 idsService];
    v36 = [(IMReadReceiptProcessingPipelineComponent *)v31 initWithMessageStore:v32 chatRegistry:v33 recents:v34 IDSService:v35];

    v37 = [IMMessageFromStoragePipelineComponent alloc];
    v38 = [v13 storageController];
    v39 = [v13 broadcaster];
    v40 = [(IMMessageFromStoragePipelineComponent *)v37 initWithStorageProcessingType:1 storageController:v38 broadcaster:v39];

    v41 = MEMORY[0x277D18E00];
    v80[0] = v27;
    v80[1] = v55;
    v80[2] = v36;
    v80[3] = v40;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
    v43 = [v41 pipelineFromComponents:v42];

    v44 = [v12 toIdentifier];
    v45 = [v44 _stripFZIDPrefix];

    v46 = [v60 handler];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_22B5ADA94;
    v62[3] = &unk_278705970;
    v63 = v19;
    v47 = v45;
    v64 = v47;
    v65 = v13;
    v48 = v58;
    v49 = *(a1 + 32);
    v66 = v48;
    v67 = &v69;
    v68 = v49;
    [v46 handleMessageReadReceiptWithPipeline:v43 input:v63 completionBlock:v62];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = objc_opt_class();
        *buf = 138412546;
        v77 = v51;
        v78 = 2048;
        v79 = v61;
        v52 = v51;
        _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v53 = [v13 service];
    [v53 sendAckForMessageWithContext:v58];

    v27 = v70[5];
    v70[5] = 0;
  }

  _Block_object_dispose(&v69, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5ADA08(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AD948);
  }

  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v26 - 176));
  _Unwind_Resume(exc_buf);
}

void sub_22B5ADA94(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) GUID];
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", buf, 0xCu);
    }
  }

  v6 = [*(a1 + 32) fromIdentifier];
  v24 = [v6 _stripFZIDPrefix];

  if (v24 && *(a1 + 40))
  {
    if ([v24 isEqualToString:?])
    {
      v7 = 9;
    }

    else
    {
      v7 = 7;
    }
  }

  else
  {
    v7 = 7;
  }

  v8 = [MEMORY[0x277D1AB48] sharedInstance];
  v9 = [*(a1 + 32) GUID];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) chat];
  v12 = [v11 powerLogConversationType];
  v13 = [*(a1 + 32) chat];
  v14 = [v13 serviceName];
  [v8 logMessageReceivedWithGUID:v9 fromIdentifier:v24 toIdentifier:v10 conversationType:v12 messageType:v7 messageProtocol:v14];

  v15 = [*(a1 + 48) service];
  [v15 sendAckForMessageWithContext:*(a1 + 56)];

  v16 = *(a1 + 72);
  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  v19 = [*(a1 + 48) service];
  [v16 _postReceivedMessageMetricsForInput:v17 withMessageContext:v18 toIDSService:v19];

  v20 = *(*(a1 + 64) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;
}

void sub_22B5ADD00(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v70[4] = *MEMORY[0x277D85DE8];
  v51 = a2;
  v50 = a3;
  v52 = a4;
  v12 = a5;
  v48 = a6;
  v13 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v47 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedMarkUnreadRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v47, &state);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_22B4D7710;
  v63 = sub_22B4D78E4;
  v46 = v13;
  v64 = v46;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v52 fromPushID];
      *buf = 138412290;
      v67 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Setting up pipeline for mark unread request fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorMarkUnreadRequest", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v16 = v50;
  }

  else
  {
    v16 = 0;
  }

  v49 = v16;
  v17 = [[IMMarkUnreadRequestPipelineParameter alloc] initWithBD:v49 idsTrustedData:v52];
  if (v17)
  {
    v18 = [IMFindAccountProcessingPipelineComponent alloc];
    v19 = [v12 imdAccount];
    v20 = [(IMFindAccountProcessingPipelineComponent *)v18 initWithReceivingAccount:v19];

    v21 = [IMMessageFromStoragePipelineComponent alloc];
    v22 = [v12 storageController];
    v23 = [v12 broadcaster];
    v24 = [(IMMessageFromStoragePipelineComponent *)v21 initWithStorageProcessingType:0 storageController:v22 broadcaster:v23];

    v25 = [IMMarkUnreadRequestProcessingPipelineComponent alloc];
    v26 = [v12 messageStore];
    v27 = [v12 chatRegistry];
    v28 = [v12 recentsController];
    v29 = [v51 idsService];
    v30 = [(IMMarkUnreadRequestProcessingPipelineComponent *)v25 initWithMessageStore:v26 chatRegistry:v27 recents:v28 IDSService:v29];

    v31 = [IMMessageFromStoragePipelineComponent alloc];
    v32 = [v12 storageController];
    v33 = [v12 broadcaster];
    v34 = [(IMMessageFromStoragePipelineComponent *)v31 initWithStorageProcessingType:1 storageController:v32 broadcaster:v33];

    v35 = MEMORY[0x277D18E00];
    v70[0] = v20;
    v70[1] = v24;
    v70[2] = v30;
    v70[3] = v34;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
    v37 = [v35 pipelineFromComponents:v36];

    v38 = [v51 handler];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_22B5AE2E8;
    v53[3] = &unk_278705998;
    v54 = v17;
    v55 = v12;
    v39 = v48;
    v40 = *(a1 + 32);
    v56 = v39;
    v57 = &v59;
    v58 = v40;
    [v38 handleMessageMarkUnreadRequestWithPipeline:v37 input:v54 completionBlock:v53];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        *buf = 138412546;
        v67 = v42;
        v68 = 2048;
        v69 = v50;
        v43 = v42;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v44 = [v12 service];
    [v44 sendAckForMessageWithContext:v48];

    v20 = v60[5];
    v60[5] = 0;
  }

  _Block_object_dispose(&v59, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5AE260(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AE19CLL);
  }

  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v26 - 176));
  _Unwind_Resume(exc_buf);
}

void sub_22B5AE2E8(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) GUID];
        v16 = 138412546;
        v17 = v7;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error processing mark as unread request for message (%@), error: %@", &v16, 0x16u);
      }

LABEL_9:
    }
  }

  else if (v5)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", &v16, 0xCu);
    }

    goto LABEL_9;
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5AE4C4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5AE41CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5AE4E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v49 = a2;
  v12 = a3;
  v51 = a4;
  v13 = a5;
  v50 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v47 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedPlayedReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v47, &state);
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_22B4D7710;
  v62 = sub_22B4D78E4;
  v46 = v14;
  v63 = v46;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v51 fromPushID];
      *buf = 138412290;
      v66 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for played receipt fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorPlayedReceipt", @"BlastDoor");
  v48 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [v51 fromToken];
  v20 = [v13 imdAccount];
  v21 = [IMDiMessageIDSDelegate isDefaultPairedDevice:v19 withAccount:v20];

  v22 = [[IMPlayedReceiptPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v51 isFromDefaultPairedDevice:v21];
  if (v22)
  {
    v23 = [IMFindAccountProcessingPipelineComponent alloc];
    v24 = [v13 imdAccount];
    v25 = [(IMFindAccountProcessingPipelineComponent *)v23 initWithReceivingAccount:v24];

    v26 = [IMMessageFromStoragePipelineComponent alloc];
    v27 = [v13 storageController];
    v28 = [v13 broadcaster];
    v29 = [(IMMessageFromStoragePipelineComponent *)v26 initWithStorageProcessingType:0 storageController:v27 broadcaster:v28];

    v30 = [[IMPlayedReceiptProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v31 = [IMMessageFromStoragePipelineComponent alloc];
    v32 = [v13 storageController];
    v33 = [v13 broadcaster];
    v34 = [(IMMessageFromStoragePipelineComponent *)v31 initWithStorageProcessingType:1 storageController:v32 broadcaster:v33];

    v35 = MEMORY[0x277D18E00];
    v69[0] = v25;
    v69[1] = v29;
    v69[2] = v30;
    v69[3] = v34;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
    v37 = [v35 pipelineFromComponents:v36];

    v38 = [v49 handler];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_22B5AEAB0;
    v52[3] = &unk_278705998;
    v53 = v22;
    v54 = v13;
    v39 = v50;
    v40 = *(a1 + 32);
    v55 = v39;
    v56 = &v58;
    v57 = v40;
    [v38 handleMessagePlayedReceiptWithPipeline:v37 input:v53 completionBlock:v52];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        *buf = 138412546;
        v66 = v42;
        v67 = 2048;
        v68 = v48;
        v43 = v42;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v44 = [v13 service];
    [v44 sendAckForMessageWithContext:v50];

    v25 = v59[5];
    v59[5] = 0;
  }

  _Block_object_dispose(&v58, 8);
  os_activity_scope_leave(&state);
}