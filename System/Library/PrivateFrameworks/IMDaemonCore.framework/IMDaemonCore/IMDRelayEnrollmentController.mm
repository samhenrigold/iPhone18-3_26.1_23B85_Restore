@interface IMDRelayEnrollmentController
- (BOOL)_areiMessageAndiCloudAccountTheSame:(id)same;
- (BOOL)_deviceAllowedToDisableRelay:(id)relay;
- (BOOL)sendApprovalDisplayPinToDevice:(id)device;
- (IMDRelayEnrollmentController)initWithServiceDelegate:(id)delegate dispatchDelegate:(id)dispatchDelegate;
- (id)_allowedDevicesforSMSRelay;
- (id)_allowedIDSDevicesforSMSRelay;
- (id)_bestAccountWithAlias:(id)alias;
- (id)_challengedDevicesforSMSRelay;
- (id)_challengedIDSDevicesforSMSRelay;
- (id)_ignoredDevicesforSMSRelay;
- (id)_ignoredIDSDevicesforSMSRelay;
- (void)_addDefaultPairedDeviceToAllowedSMSRelayList;
- (void)_addDeviceToAllowedSMSRelay:(id)relay shouldSendApproval:(BOOL)approval;
- (void)_addDeviceToChallengedSMSRelay:(id)relay;
- (void)_addDeviceToIgnoredSMSRelay:(id)relay;
- (void)_addHSA2PairedDevicesToAllowedSMSRelayList;
- (void)_approveSelfForSMSRelay;
- (void)_enableSMSRelayForDevice:(id)device;
- (void)_micEnabledStateDidChange:(id)change;
- (void)_migrateSMSRelayForMICIfNeeded;
- (void)_noteDeviceHasMICForSMSRelay:(id)relay;
- (void)_removeDeviceFromAllowedSMSRelay:(id)relay;
- (void)_removeDeviceFromChallengedSMSRelay:(id)relay;
- (void)_removeDeviceFromIgnoredSMSRelay:(id)relay;
- (void)_removeDeviceHasMICForSMSRelay:(id)relay;
- (void)_sendPinCodeToDeviceAndPromptForResponse:(id)response;
- (void)_shouldAutoEnableDevicesforSMSRelay:(id)relay;
- (void)dealloc;
- (void)enrollDeviceInSMSRelay:(id)relay;
- (void)enrollSelfDeviceInSMSRelay;
- (void)handler:(id)handler incomingDisplayPinCode:(id)code toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0;
- (void)handler:(id)handler incomingEnrollMeRequest:(id)request toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0;
- (void)handler:(id)handler incomingResponseForApproval:(id)approval toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0;
- (void)sendApprovalEnrollMe;
- (void)sendApprovalResponseToDevice:(id)device enteredCorrectly:(BOOL)correctly wasCancelled:(BOOL)cancelled;
- (void)sendUnApproveToDevice:(id)device extraKeys:(id)keys;
- (void)setHasBeenRemoteApproved:(BOOL)approved;
- (void)unEnrollDeviceInSMSRelay:(id)relay;
@end

@implementation IMDRelayEnrollmentController

- (IMDRelayEnrollmentController)initWithServiceDelegate:(id)delegate dispatchDelegate:(id)dispatchDelegate
{
  delegateCopy = delegate;
  dispatchDelegateCopy = dispatchDelegate;
  v18.receiver = self;
  v18.super_class = IMDRelayEnrollmentController;
  v9 = [(IMDRelayEnrollmentController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceDelegate, delegate);
    objc_storeStrong(&v10->_dispatchDelegate, dispatchDelegate);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Setting up push handler", v17, 2u);
      }
    }

    v12 = +[IMDRelayPushHandler sharedInstance];
    [v12 addListener:v10];

    v13 = +[IMDRelayPushHandler sharedInstance];
    [v13 setRegistered:1];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "...done", v17, 2u);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__micEnabledStateDidChange_ name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

    [(IMDRelayEnrollmentController *)v10 _migrateSMSRelayForMICIfNeeded];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[IMDRelayPushHandler sharedInstance];
  [v3 removeListener:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = IMDRelayEnrollmentController;
  [(IMDRelayEnrollmentController *)&v5 dealloc];
}

- (void)enrollDeviceInSMSRelay:(id)relay
{
  v13 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v5 = IMOSLoggingEnabled();
  if (relayCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = relayCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "SMS Service Session Received Request To Enroll %@ Into SMS Relay ", &v11, 0xCu);
      }
    }

    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    v8 = [serviceDelegate idsDeviceFromUniqueID:relayCopy];

    if ([v8 isHSATrusted])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = v8;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Automatically enrolling HSA trusted device %@ ", &v11, 0xCu);
        }
      }

      [(IMDRelayEnrollmentController *)self _addDeviceToAllowedSMSRelay:v8 shouldSendApproval:1];
    }

    else
    {
      [(IMDRelayEnrollmentController *)self _sendPinCodeToDeviceAndPromptForResponse:relayCopy];
    }
  }

  else if (v5)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "empty deviceID passed in", &v11, 2u);
    }
  }
}

- (void)unEnrollDeviceInSMSRelay:(id)relay
{
  v13 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v5 = IMOSLoggingEnabled();
  if (relayCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = relayCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "SMS Service Session Received Request To Un Enroll %@ Into SMS Relay ", &v11, 0xCu);
      }
    }

    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    v8 = [serviceDelegate idsDeviceFromUniqueID:relayCopy];

    [(IMDRelayEnrollmentController *)self _removeDeviceFromAllowedSMSRelay:v8];
    [(IMDRelayEnrollmentController *)self sendUnApproveToDevice:v8 extraKeys:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.sms.smsRelayDevices.changed", 0, 0, 0);
  }

  else if (v5)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "empty deviceID passed in", &v11, 2u);
    }
  }
}

- (void)enrollSelfDeviceInSMSRelay
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "SMS Service Session Received Request To Enroll ourselves for SMS Relay", v4, 2u);
    }
  }

  [(IMDRelayEnrollmentController *)self sendApprovalEnrollMe];
}

- (id)_allowedDevicesforSMSRelay
{
  v2 = IMGetCachedDomainValueForKey();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_allowedIDSDevicesforSMSRelay
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = IMGetCachedDomainValueForKey();
  if (v20)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    peerDevices = [serviceDelegate peerDevices];

    obj = peerDevices;
    v5 = [peerDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v20;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v21 + 1) + 8 * j);
                uniqueID = [v9 uniqueID];
                LODWORD(v15) = [uniqueID isEqualToString:v15];

                if (v15)
                {
                  [v19 addObject:v9];
                  goto LABEL_17;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_ignoredDevicesforSMSRelay
{
  v2 = IMGetCachedDomainValueForKey();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_ignoredIDSDevicesforSMSRelay
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = IMGetCachedDomainValueForKey();
  if (v20)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    peerDevices = [serviceDelegate peerDevices];

    obj = peerDevices;
    v5 = [peerDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v20;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v21 + 1) + 8 * j);
                uniqueID = [v9 uniqueID];
                LODWORD(v15) = [uniqueID isEqualToString:v15];

                if (v15)
                {
                  [v19 addObject:v9];
                  goto LABEL_17;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_challengedDevicesforSMSRelay
{
  v2 = IMGetCachedDomainValueForKey();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_challengedIDSDevicesforSMSRelay
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = IMGetCachedDomainValueForKey();
  if (v20)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    peerDevices = [serviceDelegate peerDevices];

    obj = peerDevices;
    v5 = [peerDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v20;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v21 + 1) + 8 * j);
                uniqueID = [v9 uniqueID];
                LODWORD(v15) = [uniqueID isEqualToString:v15];

                if (v15)
                {
                  [v19 addObject:v9];
                  goto LABEL_17;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_noteDeviceHasMICForSMSRelay:(id)relay
{
  v14 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = IMGetCachedDomainValueForKey();
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  if (v5)
  {
    uniqueID = [relayCopy uniqueID];
    if ([v5 containsObject:uniqueID])
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Told to add an item but we already have its ID, ignoring and moving on.", v11, 2u);
        }
      }
    }

    else
    {
      [v5 addObject:uniqueID];
      v8 = [v5 count];
      if (v8 < [v4 count] && IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11[0] = 67109376;
          v11[1] = [v5 count];
          v12 = 1024;
          v13 = [v4 count];
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", v11, 0xEu);
        }
      }

      if (![v5 count] && IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", v11, 2u);
        }
      }

      IMSetDomainValueForKey();
      IMSyncronizeAppPreferences();
    }
  }
}

- (void)_removeDeviceHasMICForSMSRelay:(id)relay
{
  v26 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v3 = IMGetCachedDomainValueForKey();
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
  if (v4)
  {
    uniqueID = [relayCopy uniqueID];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v7)
    {
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 isEqualToString:uniqueID])
          {
            [v6 removeObject:v10];
            v11 = [v6 count];
            if (v11 < [v3 count] && IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                v13 = [v6 count];
                v14 = [v3 count];
                *buf = 67109376;
                v22 = v13;
                v23 = 1024;
                v24 = v14;
                _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "_removeDeviceFromMICSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", buf, 0xEu);
              }
            }

            if (![v6 count] && IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "_removeDeviceFromMICSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", buf, 2u);
              }
            }

            IMSetDomainValueForKey();
            IMSyncronizeAppPreferences();
            goto LABEL_22;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }
}

- (void)_addDeviceToAllowedSMSRelay:(id)relay shouldSendApproval:(BOOL)approval
{
  approvalCopy = approval;
  v19 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v7 = IMGetCachedDomainValueForKey();
  v8 = [MEMORY[0x277CBEB18] arrayWithArray:v7];
  if (v8)
  {
    uniqueID = [relayCopy uniqueID];
    if ([v8 containsObject:uniqueID])
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Told to add an item but we allready have its ID, moving on", v16, 2u);
        }
      }
    }

    else
    {
      [v8 addObject:uniqueID];
      v11 = [v8 count];
      if (v11 < [v7 count] && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v16[0] = 67109376;
          v16[1] = [v8 count];
          v17 = 1024;
          v18 = [v7 count];
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", v16, 0xEu);
        }
      }

      if (![v8 count] && IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", v16, 2u);
        }
      }

      IMSetDomainValueForKey();
      IMSyncronizeAppPreferences();
      if ([MEMORY[0x277D1AB70] IDSDeviceSupportsIncomingSMSRelayFilteringForDeviceType:{objc_msgSend(relayCopy, "deviceType")}])
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            LOWORD(v16[0]) = 0;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Added device for relay. Relaying current SMS Filtering settings.", v16, 2u);
          }
        }

        v15 = +[IMDFilteringController sharedInstance];
        [v15 _relayCurrentSMSFilteringSettings];
      }
    }
  }

  if (approvalCopy)
  {
    [(IMDRelayEnrollmentController *)self sendApprovalResponseToDevice:relayCopy enteredCorrectly:1 wasCancelled:0];
  }
}

- (void)_removeDeviceFromAllowedSMSRelay:(id)relay
{
  v26 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = IMGetCachedDomainValueForKey();
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  if (v5)
  {
    uniqueID = [relayCopy uniqueID];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 isEqualToString:{uniqueID, v17}])
          {
            [v7 removeObject:v11];
            v12 = [v7 count];
            if (v12 < [v4 count] && IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = [v7 count];
                v15 = [v4 count];
                *buf = 67109376;
                v22 = v14;
                v23 = 1024;
                v24 = v15;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "_removeDeviceFromAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", buf, 0xEu);
              }
            }

            if (![v7 count] && IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "_removeDeviceFromAllowedSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", buf, 2u);
              }
            }

            IMSetDomainValueForKey();
            IMSyncronizeAppPreferences();
            goto LABEL_22;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }
}

- (void)_addDeviceToIgnoredSMSRelay:(id)relay
{
  v14 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = IMGetCachedDomainValueForKey();
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  if (v5)
  {
    uniqueID = [relayCopy uniqueID];
    if ([v5 containsObject:uniqueID])
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Told to add an iteam but we allready have its ID, moving on", v11, 2u);
        }
      }
    }

    else
    {
      [v5 addObject:uniqueID];
      v8 = [v5 count];
      if (v8 < [v4 count] && IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11[0] = 67109376;
          v11[1] = [v5 count];
          v12 = 1024;
          v13 = [v4 count];
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newIgnoredDeviceUUIDs count: %d ignoredDeviceUUIDs count: %d", v11, 0xEu);
        }
      }

      if (![v5 count] && IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "_addDeviceToIgnoredSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", v11, 2u);
        }
      }

      IMSetDomainValueForKey();
      IMSyncronizeAppPreferences();
    }
  }
}

- (void)_removeDeviceFromIgnoredSMSRelay:(id)relay
{
  v26 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = IMGetCachedDomainValueForKey();
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  if (v5)
  {
    uniqueID = [relayCopy uniqueID];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 isEqualToString:{uniqueID, v17}])
          {
            [v7 removeObject:v11];
            v12 = [v7 count];
            if (v12 < [v4 count] && IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = [v7 count];
                v15 = [v4 count];
                *buf = 67109376;
                v22 = v14;
                v23 = 1024;
                v24 = v15;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "_removeDeviceFromIgnoredSMSRelay: newIgnoredDeviceUUIDs count: %d ignoredDeviceUUIDs count: %d", buf, 0xEu);
              }
            }

            if (![v7 count] && IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "_removeDeviceFromIgnoredSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", buf, 2u);
              }
            }

            IMSetDomainValueForKey();
            IMSyncronizeAppPreferences();
            goto LABEL_22;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }
}

- (void)_addDefaultPairedDeviceToAllowedSMSRelayList
{
  v20 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Trying to add default paired device to allowed list", buf, 2u);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  peerDevices = [serviceDelegate peerDevices];

  v6 = [peerDevices countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v8 = *v14;
    *&v7 = 138412290;
    v12 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(peerDevices);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isDefaultPairedDevice])
        {
          [(IMDRelayEnrollmentController *)self _addDeviceToAllowedSMSRelay:v10 shouldSendApproval:0];
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = v12;
              v18 = v10;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Added to paired list %@", buf, 0xCu);
            }
          }
        }
      }

      v6 = [peerDevices countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_addDeviceToChallengedSMSRelay:(id)relay
{
  v14 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = IMGetCachedDomainValueForKey();
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  if (v5)
  {
    uniqueID = [relayCopy uniqueID];
    if ([v5 containsObject:uniqueID])
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Told to add an iteam but we allready have its ID, moving on", v11, 2u);
        }
      }
    }

    else
    {
      [v5 addObject:uniqueID];
      v8 = [v5 count];
      if (v8 < [v4 count] && IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11[0] = 67109376;
          v11[1] = [v5 count];
          v12 = 1024;
          v13 = [v4 count];
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", v11, 0xEu);
        }
      }

      if (![v5 count] && IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "_addDeviceToIgnoredSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", v11, 2u);
        }
      }

      IMSetDomainValueForKey();
      IMSyncronizeAppPreferences();
    }
  }
}

- (void)_removeDeviceFromChallengedSMSRelay:(id)relay
{
  v26 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = IMGetCachedDomainValueForKey();
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  if (v5)
  {
    uniqueID = [relayCopy uniqueID];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 isEqualToString:{uniqueID, v17}])
          {
            [v7 removeObject:v11];
            v12 = [v7 count];
            if (v12 < [v4 count] && IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = [v7 count];
                v15 = [v4 count];
                *buf = 67109376;
                v22 = v14;
                v23 = 1024;
                v24 = v15;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", buf, 0xEu);
              }
            }

            if (![v7 count] && IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "_addDeviceToIgnoredSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", buf, 2u);
              }
            }

            IMSetDomainValueForKey();
            IMSyncronizeAppPreferences();
            goto LABEL_22;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }
}

- (void)_sendPinCodeToDeviceAndPromptForResponse:(id)response
{
  v36 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v6 = [serviceDelegate idsDeviceFromUniqueID:responseCopy];

  if (!v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = responseCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Tried to enroll a device that doesnt excist in our set of devices or was nil %@", buf, 0xCu);
    }
  }

  if ([(IMDRelayEnrollmentController *)self sendApprovalDisplayPinToDevice:v6])
  {
    v8 = MEMORY[0x277D19238];
    modelIdentifier = [v6 modelIdentifier];
    v31 = [v8 marketingNameForModel:modelIdentifier];

    name = [v6 name];
    v10 = IMDaemonCoreBundle(name);
    v29 = [v10 __im_localizedStringForKey:@"ENTER_THE_CODE_SHOWN_ON_YOUR_DEVICE_FOR_SMS_RELAY"];

    v12 = IMDaemonCoreBundle(v11);
    v28 = [v12 __im_localizedStringForKey:@"RELAY_ENROLLMENT_TEXT_MESSAGE_FORWARDING"];

    v14 = IMDaemonCoreBundle(v13);
    v15 = [v14 __im_localizedStringForKey:@"RELAY_ENROLLMENT_ALLOW"];

    v17 = IMDaemonCoreBundle(v16);
    v18 = [v17 __im_localizedStringForKey:@"RELAY_ENROLLMENT_CANCEL"];

    v19 = MEMORY[0x277CBEAC0];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:v29, v31, name];
    v21 = [MEMORY[0x277CBEA60] arrayWithObject:&stru_283F23018];
    v22 = [MEMORY[0x277CBEA60] arrayWithObject:&stru_283F23018];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v24 = [v19 dictionaryWithObjectsAndKeys:{v28, *MEMORY[0x277D19228], v20, *MEMORY[0x277D19208], v21, *MEMORY[0x277D19220], v22, *MEMORY[0x277D19218], v15, *MEMORY[0x277D191F8], v18, *MEMORY[0x277D191F0], v23, *MEMORY[0x277CBF1F8], 0}];

    v25 = [MEMORY[0x277D192D0] userNotificationWithIdentifier:@"SMSRelayCodeInput" timeout:3 alertLevel:0 displayFlags:v24 displayInformation:0.0];
    mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_22B547A54;
    v32[3] = &unk_2787040C0;
    v32[4] = self;
    v33 = v6;
    [mEMORY[0x277D192D8] addUserNotification:v25 listener:0 completionHandler:v32];
  }

  else if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "We were unable to send the PIN to the other device to be displayed, Sorry", buf, 2u);
    }
  }
}

- (BOOL)sendApprovalDisplayPinToDevice:(id)device
{
  v29 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  randomSixDigitCode = [(IMDRelayEnrollmentController *)self randomSixDigitCode];
  if (!self->_pendingCodesToDevicesForApproval)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    pendingCodesToDevicesForApproval = self->_pendingCodesToDevicesForApproval;
    self->_pendingCodesToDevicesForApproval = Mutable;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:randomSixDigitCode];
  if (v8)
  {
    v9 = self->_pendingCodesToDevicesForApproval;
    uniqueID = [deviceCopy uniqueID];
    CFDictionarySetValue(v9, uniqueID, v8);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D2038(deviceCopy);
  }

  v11 = MEMORY[0x277CBEAC0];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:randomSixDigitCode];
  v13 = [v11 dictionaryWithObjectsAndKeys:{v12, IMDRelayApprovalKeyKey, 0}];

  v14 = JWEncodeDictionary();
  _FTCopyGzippedData = [v14 _FTCopyGzippedData];
  v16 = MEMORY[0x277CBEB38];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:142];
  v18 = StringGUID();
  v19 = IDSGetUUIDData();
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v21 = [v16 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v17, *MEMORY[0x277D18588], v19, *MEMORY[0x277D18668], _FTCopyGzippedData, *MEMORY[0x277D18598], v20, *MEMORY[0x277D18650], 0}];

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      name = [deviceCopy name];
      *buf = 138412290;
      v28 = name;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Sending a Pin Code To Device %@  to display to enroll them into SMS Relay", buf, 0xCu);
    }
  }

  dispatchDelegate = [(IMDRelayEnrollmentController *)self dispatchDelegate];
  v25 = [dispatchDelegate sendEnrollmentRelatedMessageOverIDS:v21 deviceToSendTo:deviceCopy];

  return v25;
}

- (void)sendApprovalEnrollMe
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "SMS Service session received request to enroll ourselves into SMS Relay", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "SMS Service session received request to enroll ourselves into SMS Relay", buf, 2u);
    }
  }

  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  dominentPhoneNumberAlias = [serviceDelegate dominentPhoneNumberAlias];

  serviceDelegate2 = [(IMDRelayEnrollmentController *)self serviceDelegate];
  _callerIDForRelay = [serviceDelegate2 _callerIDForRelay];

  if ([_callerIDForRelay _appearsToBePhoneNumber] && (-[IMDRelayEnrollmentController serviceDelegate](self, "serviceDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isAliasRelayCapable:", _callerIDForRelay), v9, v10))
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "This device has a callerID set to a phone number, That phone number is SMS Relay enabled, we should use that ", buf, 2u);
      }
    }

    v12 = _callerIDForRelay;
    if (!v12)
    {
LABEL_46:
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "We are unable to send any request for enabling SMS Relay for ourselves, we know of no phone with an alias we can use!!!!!", buf, 2u);
        }
      }

      v12 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "This device does not have a callerID set, so we are going to use the Dominent phone number one if possible ", buf, 2u);
      }
    }

    if (!dominentPhoneNumberAlias)
    {
      goto LABEL_46;
    }

    v12 = dominentPhoneNumberAlias;
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "It is possible to use the Dominent phone number alias, thats awesome, lets go for it", buf, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "We have an alias, we know where to send this request, lets go for it", buf, 2u);
    }
  }

  v16 = +[IMDCKUtilities sharedInstance];
  cloudKitSyncingEnabled = [v16 cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "MOC is ON including in this enrollment payload", buf, 2u);
      }
    }

    v36 = IMDRelayMICStateKey;
    v37[0] = &unk_283F4E510;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v20 = JWEncodeDictionary();
    _FTCopyGzippedData = [v20 _FTCopyGzippedData];
  }

  else
  {
    _FTCopyGzippedData = 0;
  }

  v22 = MEMORY[0x277CBEB38];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:148];
  v24 = StringGUID();
  v25 = IDSGetUUIDData();
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v27 = [v22 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v23, *MEMORY[0x277D18588], v25, *MEMORY[0x277D18668], v26, *MEMORY[0x277D18650], 0}];

  if (_FTCopyGzippedData)
  {
    CFDictionarySetValue(v27, *MEMORY[0x277D18598], _FTCopyGzippedData);
  }

  serviceDelegate3 = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v29 = [serviceDelegate3 _deviceForCallerID:v12];

  if (v29)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        name = [v29 name];
        *buf = 138412290;
        v35 = name;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Asking for device %@  to enroll me into SMS Relay", buf, 0xCu);
      }
    }

    dispatchDelegate = [(IMDRelayEnrollmentController *)self dispatchDelegate];
    [dispatchDelegate sendEnrollmentRelatedMessageOverIDS:v27 deviceToSendTo:v29];
  }

LABEL_51:
}

- (void)sendApprovalResponseToDevice:(id)device enteredCorrectly:(BOOL)correctly wasCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  correctlyCopy = correctly;
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v9 = MEMORY[0x277CBEAC0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:correctlyCopy];
  v11 = IMDRelayApprovalResponseKey;
  v12 = [MEMORY[0x277CCABB0] numberWithBool:cancelledCopy];
  v13 = [v9 dictionaryWithObjectsAndKeys:{v10, v11, v12, IMDRelayApprovalWasCancelledKey, 0}];

  v14 = JWEncodeDictionary();
  _FTCopyGzippedData = [v14 _FTCopyGzippedData];
  v16 = StringGUID();
  v17 = MEMORY[0x277CBEB38];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:145];
  v19 = IDSGetUUIDData();
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v21 = [v17 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v18, *MEMORY[0x277D18588], v19, *MEMORY[0x277D18668], _FTCopyGzippedData, *MEMORY[0x277D18598], v20, *MEMORY[0x277D18650], 0}];

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      name = [deviceCopy name];
      *buf = 138412802;
      v26 = name;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Sending an Approval response message to device %@ message guid %@ with information %@ ", buf, 0x20u);
    }
  }

  dispatchDelegate = [(IMDRelayEnrollmentController *)self dispatchDelegate];
  [dispatchDelegate sendEnrollmentRelatedMessageOverIDS:v21 deviceToSendTo:deviceCopy];
}

- (void)sendUnApproveToDevice:(id)device extraKeys:(id)keys
{
  v27 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  keysCopy = keys;
  v6 = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{MEMORY[0x277CBEC38], IMDRelayAuthorizationRevokedKey, 0}];
  v8 = v7;
  if (keysCopy)
  {
    Mutable = [(__CFDictionary *)v7 mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    [(__CFDictionary *)Mutable addEntriesFromDictionary:keysCopy];

    v8 = Mutable;
  }

  v10 = JWEncodeDictionary();
  _FTCopyGzippedData = [v10 _FTCopyGzippedData];
  v12 = StringGUID();
  v13 = MEMORY[0x277CBEB38];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:145];
  v15 = IDSGetUUIDData();
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v17 = [v13 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x277D18660], v6, *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v14, *MEMORY[0x277D18588], v15, *MEMORY[0x277D18668], _FTCopyGzippedData, *MEMORY[0x277D18598], v16, *MEMORY[0x277D18650], 0}];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      name = [deviceCopy name];
      *buf = 138412546;
      v24 = name;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Sending an Un-Approve message to device %@ message guid %@", buf, 0x16u);
    }
  }

  dispatchDelegate = [(IMDRelayEnrollmentController *)self dispatchDelegate];
  [dispatchDelegate sendEnrollmentRelatedMessageOverIDS:v17 deviceToSendTo:deviceCopy];
}

- (void)_approveSelfForSMSRelay
{
  if (![(IMDRelayEnrollmentController *)self hasBeenRemoteApproved])
  {
    [(IMDRelayEnrollmentController *)self setHasBeenRemoteApproved:1];
    IMSyncronizeAppPreferences();
    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    [serviceDelegate updateRelayStatus];
  }
}

- (void)_micEnabledStateDidChange:(id)change
{
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "MIC State has changed, checking next steps for SMS Relay", v6, 2u);
    }
  }

  [(IMDRelayEnrollmentController *)self enrollSelfDeviceInSMSRelay];
}

- (void)_migrateSMSRelayForMICIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Checking if we need to enroll as an SMS relay device.", &v14, 2u);
    }
  }

  v4 = IMGetCachedDomainValueForKey();
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  productVersion = [mEMORY[0x277D07DB0] productVersion];

  v7 = [productVersion isEqualToString:v4];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = productVersion;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "> Last migration was for {%@}, currently {%@}.", &v14, 0x16u);
    }
  }

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "> We have already completed SMS MiC relay migration.", &v14, 2u);
      }

LABEL_23:
    }
  }

  else
  {
    IMSetDomainValueForKey();
    IMSyncronizeAppPreferences();
    v10 = +[IMDCKUtilities sharedInstance];
    cloudKitSyncingEnabled = [v10 cloudKitSyncingEnabled];

    v12 = IMOSLoggingEnabled();
    if (cloudKitSyncingEnabled)
    {
      if (v12)
      {
        v13 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "> Beginning flow to enroll device in SMS relay.", &v14, 2u);
        }
      }

      [(IMDRelayEnrollmentController *)self enrollSelfDeviceInSMSRelay];
    }

    else if (v12)
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "> MiC is disabled, so no need to enroll device for SMS relay.", &v14, 2u);
      }

      goto LABEL_23;
    }
  }
}

- (BOOL)_areiMessageAndiCloudAccountTheSame:(id)same
{
  v25 = *MEMORY[0x277D85DE8];
  sameCopy = same;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  accounts = [serviceDelegate accounts];

  v7 = [accounts countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(accounts);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 accountType] == 1 && objc_msgSend(v10, "isActive"))
        {
          profileID = [v10 profileID];
          sameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"D:%@", sameCopy];
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v21 = sameCopy;
              v22 = 2112;
              v23 = profileID;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "iCloud DSID is %@, imessage DSID is %@", buf, 0x16u);
            }
          }

          v14 = [profileID isEqualToString:sameCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_17;
          }
        }
      }

      v7 = [accounts countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v7;
}

- (void)_enableSMSRelayForDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = IMGetCachedDomainValueForKey();
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  uniqueID = [deviceCopy uniqueID];
  if (![(IMDRelayEnrollmentController *)self _isDeviceATrustedHSA2Device:deviceCopy])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Device is not on HSA2 trusted list, not approving it for SMS relay %@", &v10, 0xCu);
    }

    goto LABEL_6;
  }

  if ([v5 containsObject:uniqueID])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = deviceCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "(HSA2 Trusted) Already added device to paired list once %@", &v10, 0xCu);
      }

LABEL_6:
    }
  }

  else
  {
    [(IMDRelayEnrollmentController *)self _addDeviceToAllowedSMSRelay:deviceCopy shouldSendApproval:1];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = deviceCopy;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "(HSA2 Trusted) Added to paired list %@", &v10, 0xCu);
      }
    }

    [v6 addObject:uniqueID];
    IMSetDomainValueForKey();
    IMSyncronizeAppPreferences();
  }

LABEL_16:
}

- (void)_shouldAutoEnableDevicesforSMSRelay:(id)relay
{
  relayCopy = relay;
  if (relayCopy)
  {
    v5 = +[IMDCKUtilities sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_22B54993C;
    v6[3] = &unk_278704110;
    v6[4] = self;
    v7 = relayCopy;
    [v5 fetchCloudKitAccountStatusWithCompletion:v6];
  }
}

- (void)_addHSA2PairedDevicesToAllowedSMSRelayList
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Trying to add HSA2 paired devices to allowed list", buf, 2u);
    }
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B549C04;
  v4[3] = &unk_278704138;
  v4[4] = self;
  [(IMDRelayEnrollmentController *)self _shouldAutoEnableDevicesforSMSRelay:v4];
}

- (void)setHasBeenRemoteApproved:(BOOL)approved
{
  IMSetDomainBoolForKey();

  IMSyncronizeAppPreferences();
}

- (id)_bestAccountWithAlias:(id)alias
{
  v24 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  v4 = +[IMDServiceController sharedController];
  v5 = [v4 serviceWithName:*MEMORY[0x277D1A610]];

  v6 = +[IMDAccountController sharedInstance];
  v7 = [v6 accountsForService:v5];

  firstObject = [v7 firstObject];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        aliases = [v14 aliases];
        v16 = [aliases containsObject:aliasCopy];

        if (v16)
        {
          v17 = v14;

          firstObject = v17;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return firstObject;
}

- (void)handler:(id)handler incomingDisplayPinCode:(id)code toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0
{
  v51 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  codeCopy = code;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v48 = fromIdentifierCopy;
      v49 = 2112;
      v50 = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "SMS Service Session Received an incomming approval request from:%@ to:%@", buf, 0x16u);
    }
  }

  v41 = codeCopy;
  v19 = [codeCopy _numberForKey:IMDRelayApprovalKeyKey];
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v21 = [serviceDelegate idsDeviceFromPushToken:tokenCopy];

  if ([v21 supportsSMSRelay])
  {
    linkedUserURIs = [v21 linkedUserURIs];
    firstObject = [linkedUserURIs firstObject];
    _stripFZIDPrefix = [firstObject _stripFZIDPrefix];

    v25 = IMFormattedDisplayStringForID();
    stringWithLTREmbedding = [v25 stringWithLTREmbedding];

    v28 = IMDaemonCoreBundle(v27);
    v29 = [v28 __im_localizedStringForKey:@"RELAY_ENROLLMENT_CANCEL"];

    v31 = IMDaemonCoreBundle(v30);
    v32 = [v31 __im_localizedStringForKey:@"TO_SEND_AND_RECEIVE_YOUR_IPHONE_TEXT_MESSAGES"];

    v33 = MEMORY[0x277D192D0];
    uniqueID = [v21 uniqueID];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:v32, stringWithLTREmbedding, v19];
    v36 = [v33 userNotificationWithIdentifier:uniqueID title:v35 message:0 defaultButton:v29 alternateButton:0 otherButton:0];

    if (v36)
    {
      [v36 setUsesNotificationCenter:0];
      [v36 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
      mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
      [mEMORY[0x277D192D8] addUserNotification:v36 listener:0 completionHandler:&unk_283F19A48];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "********** We received an imcomming pin code alert from a non SMS Device", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v21;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "The device that sent this request was %@", buf, 0xCu);
      }
    }
  }
}

- (void)handler:(id)handler incomingEnrollMeRequest:(id)request toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0
{
  v52 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  requestCopy = request;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v47 = fromIdentifierCopy;
      v48 = 2112;
      v49 = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "SMS Service Session Received a request to enroll a device into SMS Relay from:%@ to:%@", buf, 0x16u);
    }
  }

  v21 = [requestCopy _numberForKey:{IMDRelayMICStateKey, handlerCopy}];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = @"YES";
      *buf = 138412802;
      v47 = fromIdentifierCopy;
      v48 = 2112;
      if (!v21)
      {
        v23 = @"NO";
      }

      v49 = identifierCopy;
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "SMS Service Session Received a request to enroll a device into SMS Relay from:%@ to:%@, micIsOn:%@", buf, 0x20u);
    }
  }

  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v25 = [serviceDelegate idsDeviceFromPushToken:tokenCopy];

  if (v25)
  {
    _allowedDevicesforSMSRelay = [(IMDRelayEnrollmentController *)self _allowedDevicesforSMSRelay];
    uniqueID = [v25 uniqueID];
    v28 = [_allowedDevicesforSMSRelay containsObject:uniqueID];

    if (v28)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Received request to enroll a device into SMS Relay, However we already have this device in our allowed list ", buf, 2u);
        }
      }

      if (!v21)
      {
        [(IMDRelayEnrollmentController *)self _removeDeviceHasMICForSMSRelay:v25];
        goto LABEL_49;
      }

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Received request to enroll a device into SMS Relay, However this is just an update for its MIC State to YES, Saving that down", buf, 2u);
        }
      }

      goto LABEL_42;
    }

    _challengedDevicesforSMSRelay = [(IMDRelayEnrollmentController *)self _challengedDevicesforSMSRelay];
    uniqueID2 = [v25 uniqueID];
    v35 = [_challengedDevicesforSMSRelay containsObject:uniqueID2];

    if (v35)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_49;
      }

      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Received request to enroll a device into SMS Relay, However this device has requested to be enrolled before, Not allowing it to try again", buf, 2u);
      }

      goto LABEL_30;
    }

    isHSATrusted = [v25 isHSATrusted];
    v37 = IMOSLoggingEnabled();
    if (isHSATrusted)
    {
      if (v37)
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = v25;
          _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Automatically enrolling for SMS relay with requesting device: %@", buf, 0xCu);
        }
      }

      [(IMDRelayEnrollmentController *)self _addDeviceToAllowedSMSRelay:v25 shouldSendApproval:1];
      if (v21)
      {
LABEL_42:
        [(IMDRelayEnrollmentController *)self _noteDeviceHasMICForSMSRelay:v25];
      }
    }

    else
    {
      if (v37)
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Received request to enroll a device into SMS Relay, This is your first time trying, You only get 1 chance", buf, 2u);
        }
      }

      [(IMDRelayEnrollmentController *)self _addDeviceToChallengedSMSRelay:v25];
      uniqueID3 = [v25 uniqueID];
      [(IMDRelayEnrollmentController *)self _sendPinCodeToDeviceAndPromptForResponse:uniqueID3];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "********** We received an Enroll me Request from a device that we do not recognize", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = 0;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "The device that sent this request was %@", buf, 0xCu);
      }

LABEL_30:
    }
  }

LABEL_49:
}

- (BOOL)_deviceAllowedToDisableRelay:(id)relay
{
  v24 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  peerDevices = [serviceDelegate peerDevices];

  v7 = [peerDevices countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(peerDevices);
        }

        uniqueID = [*(*(&v17 + 1) + 8 * i) uniqueID];
        uniqueID2 = [relayCopy uniqueID];
        v12 = [uniqueID isEqualToString:uniqueID2];

        if (v12)
        {
          if ([relayCopy supportsSMSRelay])
          {
            supportsMMSRelay = 1;
          }

          else
          {
            supportsMMSRelay = [relayCopy supportsMMSRelay];
          }

          goto LABEL_18;
        }
      }

      v7 = [peerDevices countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      name = [relayCopy name];
      *buf = 138412290;
      v22 = name;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Device %@ was not found in our relay service!", buf, 0xCu);
    }
  }

  supportsMMSRelay = 0;
LABEL_18:

  return supportsMMSRelay;
}

- (void)handler:(id)handler incomingResponseForApproval:(id)approval toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0
{
  v58 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  approvalCopy = approval;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v55 = fromIdentifierCopy;
      v56 = 2112;
      v57 = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "SMS Service Session Received an incomming approval response from:%@ to:%@", buf, 0x16u);
    }
  }

  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v23 = [serviceDelegate idsDeviceFromPushToken:tokenCopy];

  v24 = [approvalCopy objectForKey:IMDRelayAuthorizationRevokedKey];
  bOOLValue = [v24 BOOLValue];

  v26 = [approvalCopy objectForKey:IMDRelayAuthorizationUnauthorizedDeviceKey];
  bOOLValue2 = [v26 BOOLValue];

  if (bOOLValue)
  {
    v28 = [(IMDRelayEnrollmentController *)self _deviceAllowedToDisableRelay:v23];
    v29 = IMOSLoggingEnabled();
    if (v28)
    {
      if (v29)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          name = [v23 name];
          *buf = 138412290;
          v55 = name;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Device %@ Told us that they have turned off SMS Relay for us, revoking them now ", buf, 0xCu);
        }
      }

      IMSetDomainBoolForKey();
      [(IMDRelayEnrollmentController *)self setHasBeenRemoteApproved:0];
      if (bOOLValue2)
      {
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "This response indicated to us that we tried to send when we shouldnt have tried to send, Pulling out the guid and marking that message as a failure ", buf, 2u);
          }
        }

        v33 = [approvalCopy _stringForKey:IMDRelayMessageDictionaryGUIDKey];
        if (v33)
        {
          if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v55 = v33;
              _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Telling message GUID %@ that it's a failure", buf, 0xCu);
            }
          }

          serviceDelegate2 = [(IMDRelayEnrollmentController *)self serviceDelegate];
          [serviceDelegate2 didReceiveMessageError:v33];
        }
      }

      v36 = +[IMDFilteringController sharedInstance];
      uniqueIDOverride = [v23 uniqueIDOverride];
      [v36 _checkAndUpdateSMSFilteringSettingsForDeviceID:uniqueIDOverride smsFilterCapabilitiesOptions:0 filterExtensionName:0];

      serviceDelegate3 = [(IMDRelayEnrollmentController *)self serviceDelegate];
      [serviceDelegate3 updateRelayStatus];
    }

    else if (v29)
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        name2 = [v23 name];
        *buf = 138412290;
        v55 = name2;
        _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Device %@ Told us that they have turned off SMS Relay for us, but we determined they are not allowed to. Ignoring!", buf, 0xCu);
      }
    }
  }

  else
  {
    v39 = [approvalCopy objectForKey:IMDRelayApprovalResponseKey];
    bOOLValue3 = [v39 BOOLValue];

    v41 = [approvalCopy objectForKey:IMDRelayApprovalWasCancelledKey];
    bOOLValue4 = [v41 BOOLValue];

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = @"NO";
        if (bOOLValue3)
        {
          v45 = @"YES";
        }

        else
        {
          v45 = @"NO";
        }

        if (bOOLValue4)
        {
          v44 = @"YES";
        }

        *buf = 138412546;
        v55 = v45;
        v56 = 2112;
        v57 = v44;
        _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "The response was %@ Was it a cancelation/revokation? %@ ", buf, 0x16u);
      }
    }

    [(IMDRelayEnrollmentController *)self setHasBeenRemoteApproved:bOOLValue3];
    serviceDelegate4 = [(IMDRelayEnrollmentController *)self serviceDelegate];
    [serviceDelegate4 updateRelayStatus];

    mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
    uniqueID = [v23 uniqueID];
    [mEMORY[0x277D192D8] removeNotificationsForServiceIdentifier:uniqueID];
  }
}

@end