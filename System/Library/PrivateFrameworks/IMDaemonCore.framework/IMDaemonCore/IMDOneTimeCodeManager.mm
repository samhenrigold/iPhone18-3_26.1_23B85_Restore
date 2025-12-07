@interface IMDOneTimeCodeManager
+ (id)sharedInstance;
- (BOOL)autoDeletionPreference;
- (IMDOneTimeCodeManager)initWithBroadcaster:(id)broadcaster otcUtilities:(id)utilities;
- (IMDaemonListenerProtocol)broadcaster;
- (IMOneTimeCodeUtilities)otcUtilities;
- (id)_urlForPasswordsIcon;
- (void)_setNewCodeAndPrepareInvalidationTimer:(id)timer;
- (void)_updateLastMessageTimeStampForChat:(id)chat;
- (void)broadcastCodeStatusToClients;
- (void)consumeCodeWithGuid:(id)guid codeExpired:(BOOL)expired;
- (void)dealloc;
- (void)moveOneTimeCodeToRecentlyDeleted:(id)deleted;
- (void)onboardDeleteVerificationCodesIfNeededWithCompletionHandler:(id)handler;
- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message completionHandler:(id)handler;
- (void)setAutoDeletionPreference:(BOOL)preference;
- (void)startTrackingCode:(id)code;
@end

@implementation IMDOneTimeCodeManager

+ (id)sharedInstance
{
  if (qword_2814210F8 != -1)
  {
    sub_22B7CFFBC();
  }

  return qword_281420F68;
}

- (IMDOneTimeCodeManager)initWithBroadcaster:(id)broadcaster otcUtilities:(id)utilities
{
  v13.receiver = self;
  v13.super_class = IMDOneTimeCodeManager;
  v6 = [(IMDOneTimeCodeManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    [(IMDOneTimeCodeManager *)v6 setValidCodes:MEMORY[0x277CBEBF8]];
    [(IMDOneTimeCodeManager *)v7 setOtcUtilities:utilities];
    [(IMDOneTimeCodeManager *)v7 setBroadcasterOverride:broadcaster];
    v7->_syncedSettingsManager = +[IMDSyncedSettingsServiceManager sharedManager];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v9 = CFRetain(v7);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, sub_22B504F9C, @"EDOneTimeCodeOnboardingAlertUserSelectedEnableNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = CFRetain(v7);
    CFNotificationCenterAddObserver(v10, v11, sub_22B504FE8, @"EDOneTimeCodeOnboardingAlertUserSelectedDisableNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v7;
}

- (void)dealloc
{
  [(NSTimer *)[(IMDOneTimeCodeManager *)self codeInvalidationTimer] invalidate];
  [(IMDOneTimeCodeManager *)self setCodeInvalidationTimer:0];
  [(IMDOneTimeCodeManager *)self setValidCodes:0];
  [(IMDOneTimeCodeManager *)self setBroadcaster:0];
  [(IMDOneTimeCodeManager *)self setBroadcasterOverride:0];
  [(IMDOneTimeCodeManager *)self setOtcUtilities:0];
  [(IMDOneTimeCodeManager *)self setSyncedSettingsManager:0];
  v3.receiver = self;
  v3.super_class = IMDOneTimeCodeManager;
  [(IMDOneTimeCodeManager *)&v3 dealloc];
}

- (void)startTrackingCode:(id)code
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(IMOneTimeCodeUtilities *)[(IMDOneTimeCodeManager *)self otcUtilities] isValidOneTimeCode:code];
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [code objectForKeyedSubscript:*MEMORY[0x277D1A468]];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Asked to track a new OTC with guid %@", &v11, 0xCu);
      }
    }

    [(IMDOneTimeCodeManager *)self _setNewCodeAndPrepareInvalidationTimer:code];
    [code objectForKeyedSubscript:*MEMORY[0x277D1A470]];
    [code objectForKeyedSubscript:*MEMORY[0x277D1A478]];
    IMGreenTeaReceived2FACode();
    [(IMDOneTimeCodeManager *)self broadcastCodeStatusToClients];
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [code objectForKeyedSubscript:*MEMORY[0x277D1A468]];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Asked to track a OTC but code appears to be invalid %@", &v11, 0xCu);
    }
  }
}

- (void)broadcastCodeStatusToClients
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Send out OTC to all interested clients.", v4, 2u);
    }
  }

  [(IMDaemonListenerProtocol *)[(IMDOneTimeCodeManager *)self broadcaster] oneTimeCodesDidChange:[(IMDOneTimeCodeManager *)self validCodes]];
}

- (void)consumeCodeWithGuid:(id)guid codeExpired:(BOOL)expired
{
  expiredCopy = expired;
  v18 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      guidCopy3 = guid;
      v16 = 1024;
      LODWORD(v17) = expiredCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Consuming code for message guid: %@, expried: %{BOOL}d", buf, 0x12u);
    }
  }

  firstObject = [(NSArray *)[(IMDOneTimeCodeManager *)self validCodes] firstObject];
  v9 = [firstObject objectForKeyedSubscript:*MEMORY[0x277D1A468]];
  if ([v9 length] && objc_msgSend(v9, "isEqualToString:", guid))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        guidCopy3 = guid;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Clearing code for GUID: %@", buf, 0xCu);
      }
    }

    [(IMDOneTimeCodeManager *)self _setNewCodeAndPrepareInvalidationTimer:0];
    if (!expiredCopy)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_22B505618;
      v13[3] = &unk_278703128;
      v13[4] = self;
      v13[5] = guid;
      [(IMDOneTimeCodeManager *)self onboardDeleteVerificationCodesIfNeededWithCompletionHandler:v13];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](-[IMDOneTimeCodeManager validCodes](self, "validCodes"), "count")}];
      *buf = 138412546;
      guidCopy3 = guid;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Asked to consume code for guid %@, but unable, current code count: %@", buf, 0x16u);
    }
  }

  [(IMDOneTimeCodeManager *)self broadcastCodeStatusToClients];
}

- (void)setAutoDeletionPreference:(BOOL)preference
{
  preferenceCopy = preference;
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = preferenceCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Delete Verification Codes | Setting deletion preference to: %{BOOL}d", v7, 8u);
    }
  }

  syncedSettingsManager = [(IMDOneTimeCodeManager *)self syncedSettingsManager];
  -[IMSyncedSettingsManaging setSettingValue:forKey:](syncedSettingsManager, "setSettingValue:forKey:", [MEMORY[0x277CCABB0] numberWithBool:preferenceCopy], 2);
}

- (BOOL)autoDeletionPreference
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [-[IMSyncedSettingsManaging settingValueForKey:](-[IMDOneTimeCodeManager syncedSettingsManager](self "syncedSettingsManager")];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Delete Verification Codes | Reading deletion preference as: %{BOOL}d", v5, 8u);
    }
  }

  return v2;
}

- (void)onboardDeleteVerificationCodesIfNeededWithCompletionHandler:(id)handler
{
  [IMDaemonCoreBundle(self) __im_localizedStringForKey:@"OTP_CLEANUP_ALERT_MESSAGE"];

  MEMORY[0x2821F9670](self, sel_onboardDeleteVerificationCodesIfNeededWithMessage_completionHandler_);
}

- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message completionHandler:(id)handler
{
  v27[4] = *MEMORY[0x277D85DE8];
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v20 = [v7 initWithSuiteName:*MEMORY[0x277D1A460]];
  if ([v20 integerForKey:*MEMORY[0x277D1A458]])
  {
    if (handler)
    {
      (*(handler + 2))(handler, 2);
    }
  }

  else
  {
    v8 = [IMDaemonCoreBundle(0) __im_localizedStringForKey:@"OTP_CLEANUP_ALERT_TITLE"];
    v9 = [IMDaemonCoreBundle(v8) __im_localizedStringForKey:@"OTP_CLEANUP_ALERT_CONFIRM"];
    v10 = [IMDaemonCoreBundle(v9) __im_localizedStringForKey:@"OTP_CLEANUP_ALERT_CANCEL"];
    v11 = *MEMORY[0x277D19208];
    v26[0] = *MEMORY[0x277D19228];
    v26[1] = v11;
    v27[0] = v8;
    v27[1] = message;
    v12 = *MEMORY[0x277D19210];
    v26[2] = *MEMORY[0x277D191F8];
    v26[3] = v12;
    v27[2] = v9;
    v27[3] = v10;
    v13 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:{4), "mutableCopy"}];
    _urlForPasswordsIcon = [(IMDOneTimeCodeManager *)self _urlForPasswordsIcon];
    if (_urlForPasswordsIcon)
    {
      [v13 setObject:_urlForPasswordsIcon forKeyedSubscript:*MEMORY[0x277D19200]];
    }

    v15 = [MEMORY[0x277D192D0] userNotificationWithIdentifier:objc_msgSend(MEMORY[0x277CCACA8] timeout:"stringGUID" alertLevel:_urlForPasswordsIcon) displayFlags:3 displayInformation:{32, v13, 0.0}];

    v16 = IMOSLoggingEnabled();
    if (v15)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v23 = v8;
          v24 = 2112;
          messageCopy = message;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Delete Verification Codes | Presenting Delete Verification Codes notification with title: %@ message: %@", buf, 0x16u);
        }
      }

      [v15 setUsesNotificationCenter:0];
      [v15 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
      mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_22B505EAC;
      v21[3] = &unk_278703150;
      v21[4] = v20;
      v21[5] = handler;
      [mEMORY[0x277D192D8] addUserNotification:v15 listener:0 completionHandler:v21];
    }

    else
    {
      if (v16)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Delete Verification Codes | Not able to make notification to onboard delete-verfication-codes", buf, 2u);
        }
      }
    }
  }
}

- (id)_urlForPasswordsIcon
{
  v16 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Delete Verification Codes | Began generating passwordsIcon", &v14, 2u);
    }
  }

  v3 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:@"com.apple.Passwords-Settings.extension"];
  v4 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:200.0 scale:{200.0, 1.0}];
  [v4 setShape:0];
  v5 = [v3 imageForDescriptor:v4];
  if ([v5 placeholder])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Delete Verification Codes | Preparing Image", &v14, 2u);
      }
    }

    v5 = [v3 prepareImageForDescriptor:v4];
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Delete Verification Codes | Using image: %@", &v14, 0xCu);
    }
  }

  v8 = [objc_msgSend(MEMORY[0x277CBEBC0] fileURLWithPath:{NSTemporaryDirectory()), "URLByAppendingPathComponent:", @"otpOnboardingIcon.tiff"}];
  v9 = v8;
  if (v8)
  {
    v10 = CFRetain(v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = CGImageDestinationCreateWithURL(v10, *MEMORY[0x277CC2180], 1uLL, 0);
  CGImageDestinationAddImage(v11, [v5 CGImage], 0);
  CGImageDestinationFinalize(v11);
  CFRelease(v10);
  CFRelease(v11);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Delete Verification Codes | End generating passwordsIcon", &v14, 2u);
    }
  }

  return v9;
}

- (void)moveOneTimeCodeToRecentlyDeleted:(id)deleted
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      deletedCopy4 = deleted;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Delete Verification Codes | Attempting to move message with OTP code (guid: %@) to recently deleted.", buf, 0xCu);
    }
  }

  if (deleted)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v32[0] = deleted;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    deleted = [+[IMDMessageStore sharedInstance](IMDMessageStore chatForMessageGUID:"chatForMessageGUID:", deleted];
    v9 = deleted;
    if (deleted)
    {
      guid = [deleted guid];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&guid count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        deletedCopy4 = v9;
        v29 = 2112;
        deletedCopy2 = deleted;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found chat: %@ for codeMessageGUID: %@", buf, 0x16u);
      }
    }

    if (v9)
    {
      v25[0] = @"message";
      v25[1] = @"isPermanentDelete";
      v26[0] = v7;
      v26[1] = MEMORY[0x277CBEC28];
      v25[2] = @"recoverableDeleteDate";
      v26[2] = date;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
      serviceName = [v9 serviceName];
      v14 = MEMORY[0x277D1A610];
      v15 = [serviceName isEqualToString:*MEMORY[0x277D1A610]];
      v16 = MEMORY[0x277D1A620];
      if (v15)
      {
        v16 = v14;
      }

      [-[IMDAccountController anySessionForServiceName:](+[IMDAccountController sharedInstance](IMDAccountController "sharedInstance")];
      if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled] && ((objc_msgSend(MEMORY[0x277D1AB08], "timeSensitivePriorityEnabled") & 1) != 0 || objc_msgSend(MEMORY[0x277D1AB08], "verificationCodesPriorityEnabled")))
      {
        v24[0] = [MEMORY[0x277CBEB68] null];
        v23[1] = *MEMORY[0x277D19828];
        v24[1] = [MEMORY[0x277CBEB68] null];
        [v9 updateProperties:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v24, v23, 2)}];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        deletedCopy4 = deleted;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Delete Verification Codes | Could not derive chat from codeMessageGUID: %@", buf, 0xCu);
      }
    }

    [+[IMDMessageStore sharedInstance](IMDMessageStore retractPostedNotificationsForMessageGUIDs:"retractPostedNotificationsForMessageGUIDs:", v7];
    [objc_msgSend(MEMORY[0x277D1AA10] "sharedInstance")];
    [+[IMDChatRegistry sharedInstance](IMDChatRegistry moveMessagesWithGUIDsToRecentlyDeleted:"moveMessagesWithGUIDsToRecentlyDeleted:deleteDate:" deleteDate:v7, date];
    [+[IMDMessageStore sharedInstance](IMDMessageStore updateStampForGUIDs:"updateStampForGUIDs:", v10];
    [(IMDOneTimeCodeManager *)self _updateLastMessageTimeStampForChat:v9];
    [-[IMDBroadcasterProviding broadcasterForChatListeners](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        deletedCopy4 = deleted;
        v19 = "Delete Verification Codes | Finished moving message with OTP code (guid: %@) to recently deleted.";
        v20 = v18;
        v21 = 12;
LABEL_27:
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v19 = "Delete Verification Codes | codeMessageGUID is nil. Early returning.";
      v20 = v22;
      v21 = 2;
      goto LABEL_27;
    }
  }
}

- (void)_updateLastMessageTimeStampForChat:(id)chat
{
  v22 = *MEMORY[0x277D85DE8];
  [chat setLastMessage:{-[IMDMessageStore lastMessageForChatWithRowID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "lastMessageForChatWithRowID:", objc_msgSend(chat, "rowID"))}];
  if ([chat lastMessage])
  {
    [objc_msgSend(objc_msgSend(chat "lastMessage")];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [chat setLastMessageTimeStampOnLoad:v5];
  if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
  {
    chat = [+[IMDMessageStore sharedInstance](IMDMessageStore lastTUConversationItemForChat:"lastTUConversationItemForChat:", chat];
    if (!chat)
    {
      chatCopy2 = chat;
      time = 0;
      goto LABEL_9;
    }

    v7 = chat;
    if ([chat time])
    {
      time = [v7 time];
      chatCopy2 = chat;
LABEL_9:
      [chatCopy2 setLastTUConversationCreatedDate:time];
      goto LABEL_10;
    }

    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7CFDFC(v7, v13);
    }
  }

LABEL_10:
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      guid = [chat guid];
      v12 = MEMORY[0x277CCABB0];
      [objc_msgSend(objc_msgSend(chat "lastMessage")];
      v14 = 138413058;
      v15 = guid;
      v16 = 2112;
      v17 = [v12 numberWithDouble:?];
      v18 = 2112;
      lastTUConversationCreatedDate = [chat lastTUConversationCreatedDate];
      v20 = 2112;
      lastScheduledMessageCreatedDate = [chat lastScheduledMessageCreatedDate];
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Verification Code | IMChat: %@, updating last message timestamp on load: %@ lastTUConversationCreatedDate: %@ lastScheduledMessageCreatedDate: %@", &v14, 0x2Au);
    }
  }

  [-[IMDBroadcasterProviding broadcasterForChatListeners](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
}

- (IMDaemonListenerProtocol)broadcaster
{
  if ([(IMDOneTimeCodeManager *)self broadcasterOverride])
  {

    return [(IMDOneTimeCodeManager *)self broadcasterOverride];
  }

  else
  {
    v4 = +[IMDBroadcastController sharedProvider];

    return [(IMDBroadcasterProviding *)v4 broadcasterForAllListeners];
  }
}

- (IMOneTimeCodeUtilities)otcUtilities
{
  result = self->_otcUtilities;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x277D1AB18]);
    self->_otcUtilities = result;
  }

  return result;
}

- (void)_setNewCodeAndPrepareInvalidationTimer:(id)timer
{
  v8[1] = *MEMORY[0x277D85DE8];
  [(NSTimer *)[(IMDOneTimeCodeManager *)self codeInvalidationTimer] invalidate];
  if (timer)
  {
    v8[0] = timer;
    -[IMDOneTimeCodeManager setValidCodes:](self, "setValidCodes:", [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1]);
    v5 = [timer objectForKeyedSubscript:*MEMORY[0x277D1A468]];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B506B18;
    v7[3] = &unk_278703178;
    v7[4] = v5;
    v7[5] = self;
    -[IMDOneTimeCodeManager setCodeInvalidationTimer:](self, "setCodeInvalidationTimer:", [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v7 block:qword_27D8CAE90]);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];

    [(IMDOneTimeCodeManager *)self setValidCodes:v6];
  }
}

@end