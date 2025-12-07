@interface IMDRelayServiceController
+ (IMDRelayServiceController)sharedInstance;
+ (id)_convertIMDHandleToDictionary:(id)dictionary;
+ (id)_convertIMDHandlesToArray:(id)array;
+ (id)_convertIMMessageItemDictionaryToIMMessageItem:(id)item timestamp:(id)timestamp;
+ (id)_convertIMMessageItemToIncomingRelayDictionary:(id)dictionary chat:(id)chat serviceName:(id)name overridingAttachmentData:(id)data;
+ (id)_convertIMMessageItemToOutgoingRelayDictionary:(id)dictionary chat:(id)chat;
+ (id)_updateServiceOfMessageInMessageDict:(id)dict toService:(id)service;
- (BOOL)_canRelayMMS;
- (BOOL)_canRelayMessage:(id)message forChat:(id)chat isOTC:(BOOL *)c;
- (BOOL)_checkMMSEnablementForPhoneNumber:(id)number simID:(id)d;
- (BOOL)_isConnectedOverBT:(id)t;
- (BOOL)_isDefaultPairedDeviceRelayingLocally:(id)locally;
- (BOOL)_localDeviceSupportsEmergencySMS;
- (BOOL)_localDeviceSupportsSMS;
- (BOOL)_localDeviceSupportsSMSAndDoesNotHaveAPhoneNumberForSIMID:(id)d;
- (BOOL)_localDeviceSupportsSMSAndHasAPhoneNumber;
- (BOOL)_needsLowQualityTranscodeForMessage:(id)message;
- (BOOL)_relayMessageToPeers:(id)peers forChat:(id)chat serviceName:(id)name requiredCapabilities:(id)capabilities reflectOnly:(BOOL)only excludesWatch:(BOOL)watch onlyWatch:(BOOL)onlyWatch overridingAttachmentData:(id)self0 skipServiceForSending:(BOOL)self1;
- (BOOL)_storeSMSRelayExecutionBlock:(id)block forMessageGUID:(id)d;
- (BOOL)_syncedMMSEnabledValue;
- (BOOL)accountHasAlias:(id)alias aliastoCheck:(id)check;
- (BOOL)hasConnectedLocalDevice;
- (BOOL)hasPeerDevices;
- (BOOL)hasPhoneNumberAliasActiveCheckingSelf:(BOOL)self;
- (BOOL)hasRelayDevice;
- (BOOL)isAliasActiveAndRelayCapable:(id)capable checkingSelf:(BOOL)self;
- (BOOL)isAliasRelayCapable:(id)capable checkingSelf:(BOOL)self;
- (BOOL)isLocalDeviceProxyRegistered;
- (BOOL)isProxyRegistered;
- (BOOL)isSMSRelayEnabled;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds;
- (BOOL)relayDictionaryToPeers:(id)peers requiresUpload:(BOOL)upload serviceName:(id)name requiredCapabilities:(id)capabilities excludedCapabilities:(id)excludedCapabilities excludesWatch:(BOOL)watch onlyWatch:(BOOL)onlyWatch;
- (BOOL)relayMessageToPeers:(id)peers forChat:(id)chat serviceName:(id)name reflectOnly:(BOOL)only requiredCapabilities:(id)capabilities skipServiceForSending:(BOOL)sending;
- (BOOL)sendDataToPeers:(id)peers guid:(id)guid forcedCallerID:(id)d shouldFilterRecepients:(BOOL)recepients requestProxySend:(BOOL)send dontSendTo:(id)to sentToDevices:(id *)devices;
- (BOOL)sendEnrollmentRelatedMessageOverIDS:(id)s deviceToSendTo:(id)to;
- (BOOL)sendFileToLocalPeers:(id)peers metadata:(id)metadata;
- (BOOL)watchConnectedOverBT;
- (IMDRelayServiceController)init;
- (IMOneTimeCodeUtilities)otcUtilities;
- (NSArray)accounts;
- (NSArray)peerDevices;
- (NSString)_callerIDForRelay;
- (NSString)dominentPhoneNumberAlias;
- (id)_IDSService;
- (id)_account;
- (id)_callerIDAccountFromSettings;
- (id)_callerIDForRelayAccountID:(id)d;
- (id)_destinationForDevice:(id)device forcedIdentity:(id)identity;
- (id)_deviceForCallerID:(id)d;
- (id)_extraOptionsForReachabilityRelayWithRequestID:(id)d;
- (id)_sendOptionsForRelayMessage:(id)message command:(int64_t)command guid:(id)guid;
- (id)accountForAlias:(id)alias fromAccounts:(id)accounts;
- (id)idsDeviceForFromID:(id)d;
- (id)idsDeviceFromPushToken:(id)token;
- (id)idsDeviceFromUniqueID:(id)d;
- (id)localDevice;
- (id)pairedDevice;
- (id)phoneAliasForDominentPhoneAlias:(id)alias registeredPhoneNumbers:(id)numbers preferredCallerID:(id)d CTPhoneNumber:(id)number;
- (id)retrieveAccountAndPhoneAliasForAccounts:(id)accounts shouldFilterRecepients:(BOOL)recepients requestProxySend:(BOOL)send preferredCallerID:(id)d;
- (id)retrievePhoneAccountAndPhoneAliasFromIDSAccounts:(id)accounts;
- (id)sendReachabilityRequest:(id)request requestID:(id)d;
- (void)_broadcastMessageEventWithCommand:(int64_t)command eventName:(id)name forGUID:(id)d messageExtras:(id)extras shouldFilterRecipients:(BOOL)recipients forcedCallerID:(id)iD;
- (void)_checkAndSetRelayService;
- (void)_clearSMSRelayMapForMessageWithGUID:(id)d;
- (void)_executeSMSRelayBlockForMessageWithGUID:(id)d category:(int64_t)category subCategory:(int64_t)subCategory;
- (void)_forwardMessageEventToLocalPeers:(id)peers forGUID:(id)d metadata:(id)metadata;
- (void)_forwardMessageToPeers:(id)peers messageType:(int64_t)type guid:(id)guid originalSender:(id)sender forcedCallerID:(id)d hasAttachment:(BOOL)attachment watchOnly:(BOOL)only sentToDevices:(id *)self0 requiredCapabilities:(id)self1;
- (void)_handleCapabilitiesChanged:(id)changed;
- (void)_prepareSMSRelayBlockForMessageDictionary:(id)dictionary messageGUID:(id)d serviceName:(id)name;
- (void)_registerForAccountChanges;
- (void)_relayEditedMessage:(id)message messageGUID:(id)d serializedHandles:(id)handles chatStyle:(unsigned __int8)style callerID:(id)iD;
- (void)_relayMessageDict:(id)dict command:(int64_t)command messageID:(id)d forcedCallerID:(id)iD didSendSMS:(BOOL)s relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions hasAttachments:(BOOL)self0 sentToDevices:(id *)self1 extraOptions:(id)self2 requiredCapabilities:(id)self3;
- (void)_relayMessageDict:(id)dict messageID:(id)d forcedCallerID:(id)iD didSendSMS:(BOOL)s relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions hasAttachments:(BOOL)attachments requiredCapabilities:(id)self0;
- (void)_relayMessageToPairedDevice:(id)device messageID:(id)d hasAttachments:(BOOL)attachments;
- (void)_sendMessageToAllSMSRelayDevicesWithOptions:(id)options;
- (void)_sendMessageToPairedDeviceWithOptions:(id)options;
- (void)_setupIDSRelayServices;
- (void)_setupMMSObservation;
- (void)_synchronizeMMSCapabilityToWatch:(BOOL)watch;
- (void)_teardownMMSObservation;
- (void)account:(id)account aliasesChanged:(id)changed;
- (void)dealloc;
- (void)didReceiveMessageError:(id)error;
- (void)messageDelivered:(id)delivered;
- (void)messageFailedToSend:(id)send;
- (void)messageGUIDReadByRemote:(id)remote timeRead:(id)read;
- (void)messageReadByRemote:(id)remote;
- (void)messageSent:(id)sent onService:(id)service compatibilityService:(id)compatibilityService wasInterworked:(BOOL)interworked;
- (void)reflectGroupMutation:(id)mutation callerID:(id)d didOccurLocally:(BOOL)locally;
- (void)relayMessage:(id)message chat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication forceReflection:(BOOL)reflection relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions callerID:(id)self0 iMessageCapability:(int64_t)self1 requiredCapabilities:(id)self2;
- (void)relayMessage:(id)message chat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication forceReflection:(BOOL)reflection relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions callerID:(id)self0 iMessageCapability:(int64_t)self1 requiredCapabilities:(id)self2 skipServiceForSending:(BOOL)self3;
- (void)reportJunkMessageToCarrier:(id)carrier toChat:(id)chat fromCallerID:(id)d;
- (void)sendDeleteCommand:(id)command forChatGUID:(id)d;
- (void)sendEditedMessage:(id)message toChat:(id)chat fromCallerID:(id)d backwardCompatabilityText:(id)text;
- (void)sendReachabilityResponse:(id)response requestID:(id)d toToken:(id)token toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier;
- (void)sendReadReceiptForMessage:(id)message toChat:(id)chat reflectOnly:(BOOL)only;
- (void)sendReadReceiptForMessageGUID:(id)d timeRead:(id)read reflectOnly:(BOOL)only;
- (void)sendRecoverCommand:(id)command forChatGUID:(id)d;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)updateMMSCapability;
- (void)updateRelayStatus;
@end

@implementation IMDRelayServiceController

- (void)_setupIDSRelayServices
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D1A9A0] isMessagesInstalled])
  {
    v3 = objc_alloc(MEMORY[0x277D18778]);
    v4 = *MEMORY[0x277D186A8];
    v5 = [v3 initWithService:*MEMORY[0x277D186A8]];
    [(IMDRelayServiceController *)self setSmsRelayService:v5];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        smsRelayService = [(IMDRelayServiceController *)self smsRelayService];
        accounts = [smsRelayService accounts];
        v17 = 138412546;
        v18 = v4;
        v19 = 2048;
        v20 = [accounts count];
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finished setting Up Relay Service (Service: %@), number of accounts: %lu", &v17, 0x16u);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.sms.watch"];
    [(IMDRelayServiceController *)self setSmsWatchService:v9];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        smsWatchService = [(IMDRelayServiceController *)self smsWatchService];
        accounts2 = [smsWatchService accounts];
        v13 = [accounts2 count];
        v17 = 138412546;
        v18 = @"com.apple.private.alloy.sms.watch";
        v19 = 2048;
        v20 = v13;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Finished setting Up SMS Watch Relay Service (Service: %@), number of accounts: %lu", &v17, 0x16u);
      }
    }

    smsRelayService2 = [(IMDRelayServiceController *)self smsRelayService];
    [smsRelayService2 addDelegate:self queue:MEMORY[0x277D85CD0]];

    smsWatchService2 = [(IMDRelayServiceController *)self smsWatchService];
    [smsWatchService2 addDelegate:self queue:MEMORY[0x277D85CD0]];

    [(IMDRelayServiceController *)self _checkAndSetRelayService];
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Messages is not installed, don't setup the relay serrvices", &v17, 2u);
    }
  }
}

- (id)_callerIDForRelayAccountID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v21 = dCopy;
  if (dCopy)
  {
    v5 = dCopy;
    v6 = objc_alloc(MEMORY[0x277D186C8]);
    accounts = [v6 initWithService:*MEMORY[0x277D186B0]];
    v8 = [accounts accountWithUniqueID:v5];
    v9 = v8;
    if (v8)
    {
      displayName = [v8 displayName];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = displayName;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found Caller ID %@", buf, 0xCu);
        }
      }
    }

    else
    {
      displayName = 0;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    relayService = [(IMDRelayServiceController *)self relayService];
    accounts = [relayService accounts];

    displayName = 0;
    v13 = [accounts countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(accounts);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if ([v16 accountType] == 1)
          {
            displayName2 = [v16 displayName];
            if (IMOSLoggingEnabled())
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v28 = displayName2;
                _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Found Caller ID %@", buf, 0xCu);
              }
            }

            displayName = displayName2;
          }
        }

        v13 = [accounts countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  if ([displayName _FZIDType])
  {
    v19 = 0;
  }

  else
  {
    v19 = IMNormalizePhoneNumber();
  }

  return v19;
}

- (BOOL)watchConnectedOverBT
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];

  v5 = [devices countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(devices);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      if ([v9 deviceType] == 6)
      {
        if ([v9 isLocallyPaired])
        {
          v18 = v9;
          v10 = 1;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
          v12 = [(IMDRelayServiceController *)self _isConnectedOverBT:v11];

          if (v12)
          {
            break;
          }
        }
      }

      if (v6 == ++v8)
      {
        v6 = [devices countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  return v10;
}

- (NSString)dominentPhoneNumberAlias
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService accounts];

  obj = accounts;
  v6 = [accounts countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 accountType] == 1)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          im_registeredURIs = [v10 im_registeredURIs];
          v12 = [im_registeredURIs countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v23;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v23 != v14)
                {
                  objc_enumerationMutation(im_registeredURIs);
                }

                v16 = *(*(&v22 + 1) + 8 * j);
                if ([v16 _appearsToBePhoneNumber] && -[IMDRelayServiceController isAliasRelayCapable:](self, "isAliasRelayCapable:", v16))
                {
                  [v3 addObject:v16];
                }
              }

              v13 = [im_registeredURIs countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v13);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  if (v3)
  {
    v17 = [v3 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    firstObject = [v17 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v19 = IMNormalizePhoneNumber();

  return v19;
}

- (void)_registerForAccountChanges
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService accounts];

  v5 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    v7 = MEMORY[0x277D85CD0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 accountType] == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v11 = 0;
              _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Registering for Account alias changes", v11, 2u);
            }
          }

          [v9 addRegistrationDelegate:self queue:v7];
        }
      }

      v5 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (BOOL)hasPhoneNumberAliasActiveCheckingSelf:(BOOL)self
{
  selfCopy = self;
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService accounts];

  v7 = [accounts countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v7)
  {
    v21 = *v27;
    *&v8 = 138412290;
    v20 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(accounts);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 accountType] == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              im_registeredURIs = [v10 im_registeredURIs];
              *buf = v20;
              v32 = im_registeredURIs;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "aliases for AppleID account are %@", buf, 0xCu);
            }
          }

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          im_registeredURIs2 = [v10 im_registeredURIs];
          v14 = [im_registeredURIs2 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v14)
          {
            v15 = *v23;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v23 != v15)
                {
                  objc_enumerationMutation(im_registeredURIs2);
                }

                v17 = *(*(&v22 + 1) + 8 * j);
                if ([v17 _appearsToBePhoneNumber] && -[IMDRelayServiceController isAliasRelayCapable:checkingSelf:](self, "isAliasRelayCapable:checkingSelf:", v17, selfCopy))
                {

                  v18 = 1;
                  goto LABEL_26;
                }
              }

              v14 = [im_registeredURIs2 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v7 = [accounts countByEnumeratingWithState:&v26 objects:v33 count:16];
      v18 = 0;
    }

    while (v7);
  }

  else
  {
    v18 = 0;
  }

LABEL_26:

  return v18;
}

- (BOOL)isAliasActiveAndRelayCapable:(id)capable checkingSelf:(BOOL)self
{
  selfCopy = self;
  v36 = *MEMORY[0x277D85DE8];
  capableCopy = capable;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  obj = [relayService accounts];

  v8 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v8)
  {
    v22 = *v29;
    *&v9 = 138412290;
    v21 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if ([v11 accountType] == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              im_registeredURIs = [v11 im_registeredURIs];
              *buf = v21;
              v34 = im_registeredURIs;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "aliases for AppleID account are %@", buf, 0xCu);
            }
          }

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          im_registeredURIs2 = [v11 im_registeredURIs];
          v15 = [im_registeredURIs2 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v15)
          {
            v16 = *v25;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(im_registeredURIs2);
                }

                v18 = *(*(&v24 + 1) + 8 * j);
                if ([v18 isEqualToString:capableCopy] && -[IMDRelayServiceController isAliasRelayCapable:checkingSelf:](self, "isAliasRelayCapable:checkingSelf:", v18, selfCopy))
                {

                  v19 = 1;
                  goto LABEL_26;
                }
              }

              v15 = [im_registeredURIs2 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      v19 = 0;
    }

    while (v8);
  }

  else
  {
    v19 = 0;
  }

LABEL_26:

  return v19;
}

- (BOOL)hasRelayDevice
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];

  v6 = 0;
  v7 = [devices countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 supportsSMSRelay] & 1) != 0 || objc_msgSend(v10, "supportsMMSRelay"))
        {
          uniqueIDOverride = [v10 uniqueIDOverride];
          [v3 addObject:uniqueIDOverride];

          ++v6;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    [MEMORY[0x277D1AB68] verifyCurrentRelayDevicesActive:v3];
    v12 = +[IMDFilteringController sharedInstance];
    [v12 disableFilteringIfNeeded];
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = v6;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found %d Relayable Devices", buf, 8u);
    }
  }

  return v6 > 0;
}

- (BOOL)hasPeerDevices
{
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];
  v4 = [devices count] != 0;

  return v4;
}

- (BOOL)isAliasRelayCapable:(id)capable checkingSelf:(BOOL)self
{
  selfCopy = self;
  v48 = *MEMORY[0x277D85DE8];
  capableCopy = capable;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = capableCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Checking if Alias %@ is active for SMS Relay ", buf, 0xCu);
    }
  }

  if ([capableCopy length])
  {
    if (selfCopy && IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
      ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
      obj = [ctSubscriptionInfo phoneNumbersOfActiveSubscriptions];

      v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v10)
      {
        v11 = *v40;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v40 != v11)
            {
              objc_enumerationMutation(obj);
            }

            if (MEMORY[0x231897D30](capableCopy, *(*(&v39 + 1) + 8 * i)))
            {
LABEL_50:
              v25 = 1;
              goto LABEL_51;
            }
          }

          v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    relayService = [(IMDRelayServiceController *)self relayService];
    obj = [relayService devices];

    v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v29)
    {
      v28 = *v36;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * j);
          if (([v15 supportsSMSRelay] & 1) != 0 || objc_msgSend(v15, "supportsMMSRelay"))
          {
            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v47 = v15;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Checking Device %@", buf, 0xCu);
              }
            }

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            linkedUserURIs = [v15 linkedUserURIs];
            v18 = [linkedUserURIs countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v18)
            {
              v19 = *v32;
              while (2)
              {
                for (k = 0; k != v18; ++k)
                {
                  if (*v32 != v19)
                  {
                    objc_enumerationMutation(linkedUserURIs);
                  }

                  v21 = *(*(&v31 + 1) + 8 * k);
                  if (IMOSLoggingEnabled())
                  {
                    v22 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v47 = v21;
                      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Checking linked URI: %@", buf, 0xCu);
                    }
                  }

                  _stripFZIDPrefix = [v21 _stripFZIDPrefix];
                  v24 = MEMORY[0x231897D30](_stripFZIDPrefix, capableCopy);

                  if (v24)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v26 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v47 = v21;
                        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "LinkedURI is active for SMS Relay, Returning %@", buf, 0xCu);
                      }
                    }

                    goto LABEL_50;
                  }
                }

                v18 = [linkedUserURIs countByEnumeratingWithState:&v31 objects:v43 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v29);
    }

    v25 = 0;
LABEL_51:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_deviceForCallerID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  obj = [relayService devices];

  v22 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        if (([v7 supportsSMSRelay] & 1) != 0 || objc_msgSend(v7, "supportsMMSRelay"))
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v34 = v7;
              _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Checking Device %@", buf, 0xCu);
            }
          }

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          linkedUserURIs = [v7 linkedUserURIs];
          v10 = [linkedUserURIs countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v10)
          {
            v11 = *v25;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v25 != v11)
                {
                  objc_enumerationMutation(linkedUserURIs);
                }

                v13 = *(*(&v24 + 1) + 8 * j);
                if (IMOSLoggingEnabled())
                {
                  v14 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v34 = v13;
                    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Checking linked URI: %@", buf, 0xCu);
                  }
                }

                _stripFZIDPrefix = [v13 _stripFZIDPrefix];
                v16 = MEMORY[0x231897D30](_stripFZIDPrefix, dCopy);

                if (v16)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v19 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v34 = v7;
                      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "This device has the linkedURI we are looking for, return %@", buf, 0xCu);
                    }
                  }

                  v17 = v7;

                  v18 = v17;
                  goto LABEL_33;
                }
              }

              v10 = [linkedUserURIs countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v22);
  }

  v17 = 0;
  v18 = obj;
LABEL_33:

  return v17;
}

- (id)_destinationForDevice:(id)device forcedIdentity:(id)identity
{
  identityCopy = identity;
  pushToken = [device pushToken];
  __imHexString = [pushToken __imHexString];

  v8 = MEMORY[0x277CCACA8];
  v9 = IDSCopyIDForPhoneNumber();

  v10 = [v8 stringWithFormat:@"self-token:%@/%@", __imHexString, v9];

  return v10;
}

- (id)localDevice
{
  v20 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Looking For Local Devices that are nearby", buf, 2u);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];

  v6 = [devices countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice] && objc_msgSend(v9, "isConnected"))
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v18 = v9;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found Default paired Device which is nearby %@", buf, 0xCu);
            }
          }

          v10 = v9;
          goto LABEL_20;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_20:

  return v10;
}

- (id)pairedDevice
{
  v20 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Looking For paired Device", buf, 2u);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];

  v6 = [devices countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice])
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v18 = v9;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found Default paired Device %@", buf, 0xCu);
            }
          }

          v10 = v9;
          goto LABEL_19;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (BOOL)hasConnectedLocalDevice
{
  localDevice = [(IMDRelayServiceController *)self localDevice];
  v3 = localDevice != 0;

  return v3;
}

- (BOOL)isProxyRegistered
{
  v34 = *MEMORY[0x277D85DE8];
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService accounts];
  v5 = [accounts count];

  if (v5 < 2)
  {
    relayService2 = [(IMDRelayServiceController *)self relayService];
    accounts2 = [relayService2 accounts];
    anyObject = [accounts2 anyObject];

    if (anyObject)
    {
      if ([anyObject accountType] != 2)
      {
        v7 = 1;
        goto LABEL_15;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found the local account, it is our only account, This means we are NOT proxy resgiered", buf, 2u);
        }
      }
    }

    v7 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "I Have more than 1 account, I am registered for Proxy Push", buf, 2u);
    }
  }

  v7 = 1;
LABEL_16:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  relayService3 = [(IMDRelayServiceController *)self relayService];
  accounts3 = [relayService3 accounts];

  v14 = [accounts3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v14)
  {
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(accounts3);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        if ([v17 accountType] == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Found the AppleID account", buf, 2u);
            }
          }

          v18 = v17;

          if (v18)
          {
            if (([v18 isActive] & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "The AppleID account is NOT active", buf, 2u);
                }
              }

              v7 = 0;
            }

            im_registeredURIs = [v18 im_registeredURIs];
            v22 = [im_registeredURIs count] == 0;

            if (v22)
            {
              if (IMOSLoggingEnabled())
              {
                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "The AppleID Account has no usable alias's", buf, 2u);
                }
              }

              v7 = 0;
            }
          }

          goto LABEL_42;
        }
      }

      v14 = [accounts3 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_42:
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = @"NO";
      if (v7)
      {
        v25 = @"YES";
      }

      *buf = 138412290;
      v32 = v25;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Result of check if myself is proxy registered is %@", buf, 0xCu);
    }
  }

  return v7;
}

- (BOOL)isLocalDeviceProxyRegistered
{
  v21 = *MEMORY[0x277D85DE8];
  localDevice = [(IMDRelayServiceController *)self localDevice];
  if (!localDevice)
  {
    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      identities = [localDevice identities];
      v17 = 138412546;
      v18 = localDevice;
      v19 = 2112;
      v20 = identities;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Device %@ has identities %@", &v17, 0x16u);
    }
  }

  identities2 = [localDevice identities];
  v6 = [identities2 count] == 0;

  if (!v6)
  {
    identities3 = [localDevice identities];
    v8 = [identities3 count] == 1;

    if (v8)
    {
      identities4 = [localDevice identities];
      firstObject = [identities4 firstObject];

      v11 = [firstObject _stringForKey:@"uri"];
      v12 = [v11 isEqualToString:@"mailto:__localURI__@__local__URI.com"];
      if (v12 && IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "The default paired device has an identity, but is is the local account, it is NOT proxy registered for SMS", &v17, 2u);
        }
      }

      v14 = v12 ^ 1;
      goto LABEL_20;
    }

LABEL_14:
    v14 = 1;
    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "The default paired device has no identities, this means it is NOT proxy registered for SMS", &v17, 2u);
    }
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (NSArray)peerDevices
{
  [(IMDRelayServiceController *)self _checkAndSetRelayService];
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];

  return devices;
}

- (BOOL)isSMSRelayEnabled
{
  v21 = *MEMORY[0x277D85DE8];
  smsWatchService = [(IMDRelayServiceController *)self smsWatchService];
  accounts = [smsWatchService accounts];
  v5 = [accounts count];

  if (v5)
  {
    return 1;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts2 = [relayService accounts];

  v9 = [accounts2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    v6 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(accounts2);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 accountType] == 1 && (objc_msgSend(v12, "isActive") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *v15 = 0;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "The AppleID account is not active, we can not use SMS Relay", v15, 2u);
            }
          }

          v6 = 0;
        }
      }

      v9 = [accounts2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)idsDeviceFromPushToken:(id)token
{
  v19 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];

  v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        pushToken = [v10 pushToken];
        v12 = [pushToken isEqualToData:tokenCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)idsDeviceFromUniqueID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];

  v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uniqueID = [v10 uniqueID];
        v12 = [uniqueID isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)idsDeviceForFromID:(id)d
{
  dCopy = d;
  relayService = [(IMDRelayServiceController *)self relayService];
  v6 = [relayService deviceForFromID:dCopy];

  return v6;
}

- (BOOL)_isDefaultPairedDeviceRelayingLocally:(id)locally
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(IMDRelayServiceController *)self idsDeviceForFromID:locally];
  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v7 = [(IMDRelayServiceController *)self _isConnectedOverBT:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isConnectedOverBT:(id)t
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  tCopy = t;
  v4 = [tCopy countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v6 = *v21;
    *&v5 = 138412802;
    v19 = v5;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(tCopy);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([(__CFString *)v8 isDefaultPairedDevice]&& [(__CFString *)v8 isConnected]&& [(__CFString *)v8 isNearby])
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v25 = v8;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Device is nearby: %@", buf, 0xCu);
            }
          }

          v16 = 1;
          goto LABEL_33;
        }

        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v8;
            _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Device is NOT nearby: %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            if ([(__CFString *)v8 isDefaultPairedDevice])
            {
              v11 = @"YES";
            }

            else
            {
              v11 = @"NO";
            }

            isConnected = [(__CFString *)v8 isConnected];
            isNearby = [(__CFString *)v8 isNearby];
            v14 = @"NO";
            if (isConnected)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            *buf = v19;
            v25 = v11;
            if (isNearby)
            {
              v14 = @"YES";
            }

            v26 = 2112;
            v27 = v15;
            v28 = 2112;
            v29 = v14;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "isDefaultPairedDevice = %@, isConnected = %@, isNearby = %@", buf, 0x20u);
          }
        }
      }

      v4 = [tCopy countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_33:

  return v16;
}

- (void)_checkAndSetRelayService
{
  v39 = *MEMORY[0x277D85DE8];
  smsRelayService = [(IMDRelayServiceController *)self smsRelayService];
  accounts = [smsRelayService accounts];
  if ([accounts count])
  {
    smsRelayService2 = [(IMDRelayServiceController *)self smsRelayService];
    devices = [smsRelayService2 devices];
    v7 = [devices count];

    if (v7)
    {
      smsRelayService3 = [(IMDRelayServiceController *)self smsRelayService];
      [(IMDRelayServiceController *)self setRelayService:smsRelayService3];

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_20;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = MEMORY[0x277CCABB0];
        smsRelayService4 = [(IMDRelayServiceController *)self smsRelayService];
        accounts2 = [smsRelayService4 accounts];
        v13 = [v10 numberWithUnsignedInteger:{objc_msgSend(accounts2, "count")}];
        v14 = MEMORY[0x277CCABB0];
        smsRelayService5 = [(IMDRelayServiceController *)self smsRelayService];
        devices2 = [smsRelayService5 devices];
        v17 = [v14 numberWithUnsignedInteger:{objc_msgSend(devices2, "count")}];
        v35 = 138412546;
        v36 = v13;
        v37 = 2112;
        v38 = v17;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Relay service set to sms relay, accounts count %@ devices count %@", &v35, 0x16u);
      }

      goto LABEL_6;
    }
  }

  else
  {
  }

  smsWatchService = [(IMDRelayServiceController *)self smsWatchService];
  accounts3 = [smsWatchService accounts];
  if (![accounts3 count])
  {

    goto LABEL_15;
  }

  smsWatchService2 = [(IMDRelayServiceController *)self smsWatchService];
  devices3 = [smsWatchService2 devices];
  v22 = [devices3 count];

  if (!v22)
  {
LABEL_15:
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "IMDRelayServiceController: Error no IDS Service available for SMS Relay", &v35, 2u);
      }
    }

    [(IMDRelayServiceController *)self setRelayService:0];
    goto LABEL_20;
  }

  smsWatchService3 = [(IMDRelayServiceController *)self smsWatchService];
  [(IMDRelayServiceController *)self setRelayService:smsWatchService3];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v24 = MEMORY[0x277CCABB0];
      smsWatchService4 = [(IMDRelayServiceController *)self smsWatchService];
      accounts4 = [smsWatchService4 accounts];
      v27 = [v24 numberWithUnsignedInteger:{objc_msgSend(accounts4, "count")}];
      v28 = MEMORY[0x277CCABB0];
      smsWatchService5 = [(IMDRelayServiceController *)self smsWatchService];
      devices4 = [smsWatchService5 devices];
      v31 = [v28 numberWithUnsignedInteger:{objc_msgSend(devices4, "count")}];
      v35 = 138412546;
      v36 = v27;
      v37 = 2112;
      v38 = v31;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Relay service set to sms watch service relay , accounts count %@ devices count %@", &v35, 0x16u);
    }

LABEL_6:
  }

LABEL_20:
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      relayService = [(IMDRelayServiceController *)self relayService];
      v35 = 138412290;
      v36 = relayService;
      _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "  => Done: %@", &v35, 0xCu);
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = changedCopy;
      v29 = 2112;
      v30 = serviceCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "IDS Devices changed: %@ on Service:%@", buf, 0x16u);
    }
  }

  [(IMDRelayServiceController *)self updateRelayStatus];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = changedCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([v12 isDefaultPairedDevice])
        {
          enrollmentController = [(IMDRelayServiceController *)self enrollmentController];
          [enrollmentController _addDeviceToAllowedSMSRelay:v12 shouldSendApproval:0];

          mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          LODWORD(enrollmentController) = [mEMORY[0x277D1A9B8] isSatelliteContinuityEnabled];

          if (enrollmentController)
          {
            if ([(IMDRelayServiceController *)self watchConnectedOverBT])
            {
              v15 = +[IMDAccountController sharedInstance];
              v16 = [v15 anySessionForServiceName:*MEMORY[0x277D1A620]];

              [v16 _processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:1];
              v17 = +[IMDAccountController sharedInstance];
              v18 = [v17 anySessionForServiceName:*MEMORY[0x277D1A610]];

              [v18 _processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:0];
            }
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  enrollmentController2 = [(IMDRelayServiceController *)self enrollmentController];
  [enrollmentController2 _addDefaultPairedDeviceToAllowedSMSRelayList];

  v20 = +[IMDFilteringController sharedInstance];
  [v20 _configureSyncedDefaultsWithOverride:1];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v14 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = serviceCopy;
      v12 = 2112;
      v13 = changedCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Active accounts of service %@ changed to %@", &v10, 0x16u);
    }
  }

  [(IMDRelayServiceController *)self _checkAndSetRelayService];
  enrollmentController = [(IMDRelayServiceController *)self enrollmentController];
  [enrollmentController _addDefaultPairedDeviceToAllowedSMSRelayList];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (successCopy)
      {
        v16 = @"YES";
      }

      v17 = 138412546;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Message with ID %@ Sent Success %@", &v17, 0x16u);
    }
  }
}

- (void)account:(id)account aliasesChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Account %@ aliases has changes", &v9, 0xCu);
    }
  }

  [(IMDRelayServiceController *)self updateRelayStatus];
}

- (void)_setupMMSObservation
{
  [MEMORY[0x277D1A8F8] IMSynchronizePreferredSubscriptionMMSCapabilityToWatch];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleCapabilitiesChanged_ name:*MEMORY[0x277D07DA0] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_22B5EFAA8, @"com.apple.MobileSMS.MMSEnabled.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CTTelephonyCenterGetDefault();

  CTTelephonyCenterAddObserver();
}

- (void)_teardownMMSObservation
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.MobileSMS.MMSEnabled.changed", 0);
  CTTelephonyCenterGetDefault();

  CTTelephonyCenterRemoveObserver();
}

- (BOOL)_checkMMSEnablementForPhoneNumber:(id)number simID:(id)d
{
  v48 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v8 = [MEMORY[0x277D1A8F8] IMMMSEnabledForPhoneNumber:numberCopy simID:dCopy];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v8)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v40 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "MMS enabled: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    supportsMMS = [mEMORY[0x277D07DB0] supportsMMS];

    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v15 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];

    mEMORY[0x277CC36C0] = [MEMORY[0x277CC36C0] sharedMessageCenter];
    v17 = [mEMORY[0x277CC36C0] isMmsConfiguredForSub:v15];

    _readMMSUserOverrideForSingleSubscription = [(IMDRelayServiceController *)self _readMMSUserOverrideForSingleSubscription];
    v34 = v17;
    if (_readMMSUserOverrideForSingleSubscription)
    {
      v8 = supportsMMS & v17;
    }

    else
    {
      v8 = 0;
    }

    if ((supportsMMS & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "MMS not supported on current device, checking for relay devices", buf, 2u);
        }
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      relayService = [(IMDRelayServiceController *)self relayService];
      devices = [relayService devices];

      v21 = [devices countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v21)
      {
        v22 = *v36;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(devices);
            }

            v24 = *(*(&v35 + 1) + 8 * i);
            if ([v24 supportsSMSRelay] && objc_msgSend(v24, "supportsMMSRelay"))
            {
              if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  name = [v24 name];
                  *buf = 138412290;
                  v40 = name;
                  _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "MMS relay device found: %@", buf, 0xCu);
                }
              }

              v8 = 1;
              goto LABEL_31;
            }
          }

          v21 = [devices countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_31:
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = @"NO";
        if (v8)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        if (supportsMMS)
        {
          v30 = @"YES";
        }

        else
        {
          v30 = @"NO";
        }

        *buf = 138413058;
        v40 = v29;
        if (v34)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        v41 = 2112;
        v42 = v30;
        v43 = 2112;
        v44 = v31;
        if (_readMMSUserOverrideForSingleSubscription)
        {
          v28 = @"YES";
        }

        v45 = 2112;
        v46 = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "MMS enabled: %@ (GS:%@, CT:%@, User:%@)", buf, 0x2Au);
      }
    }
  }

  return v8;
}

- (void)_synchronizeMMSCapabilityToWatch:(BOOL)watch
{
  watchCopy = watch;
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (watchCopy)
      {
        v5 = @"YES";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Calling IMSynchronizeMMSCapabilityToWatch isMMSEnabled %@", &v6, 0xCu);
    }
  }

  [MEMORY[0x277D1A8F8] IMSynchronizeMMSCapabilityToWatch:watchCopy];
}

- (BOOL)_syncedMMSEnabledValue
{
  v12 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MMSRelayEnabled", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  v3 = keyExistsAndHasValidFormat == 0;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = @"NO";
        if (AppBooleanValue)
        {
          v7 = @"YES";
        }

        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_syncedMMSEnabledValue does not exist. Defaulting to %@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (AppBooleanValue)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_syncedMMSEnabledValue %@", buf, 0xCu);
    }

LABEL_13:
  }

  return AppBooleanValue != 0;
}

- (void)updateMMSCapability
{
  v29 = *MEMORY[0x277D85DE8];
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    subscriptions = [ctSubscriptionInfo subscriptions];
    v5 = [subscriptions countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(subscriptions);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          phoneNumber = [v8 phoneNumber];
          labelID = [v8 labelID];
          v11 = [(IMDRelayServiceController *)self _checkMMSEnablementForPhoneNumber:phoneNumber simID:labelID];

          userDefaultVoice = [v8 userDefaultVoice];

          if (userDefaultVoice)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v14 = @"NO";
                if (v11)
                {
                  v14 = @"YES";
                }

                v25 = v14;
                v26 = 2112;
                v27 = v8;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Synchronize isMMSEnabled %@ for voice preferred subscription %@", buf, 0x16u);
              }
            }

            [(IMDRelayServiceController *)self _synchronizeMMSCapabilityToWatch:v11];
          }
        }

        v5 = [subscriptions countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v5);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MMSCapable", 0, 0, 1u);
  }

  else
  {
    v16 = [(IMDRelayServiceController *)self _checkMMSEnablementForPhoneNumber:0 simID:0];
    if (qword_281420EA8 != -1)
    {
      sub_22B7D6084();
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = @"NO";
        if (v16)
        {
          v18 = @"YES";
        }

        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Setting MMS token to: %@", buf, 0xCu);
      }
    }

    notify_set_state(dword_281420EA0, v16);
    [(IMDRelayServiceController *)self _synchronizeMMSCapabilityToWatch:v16];
  }
}

- (void)_handleCapabilitiesChanged:(id)changed
{
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Device capabilities changed", v6, 2u);
    }
  }

  [(IMDRelayServiceController *)self updateMMSCapability];
}

- (BOOL)accountHasAlias:(id)alias aliastoCheck:(id)check
{
  v27 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  checkCopy = check;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = aliasCopy;
      v25 = 2112;
      v26 = checkCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, " Checking if Account %@ has alias %@ ", buf, 0x16u);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = aliasCopy;
  im_registeredURIs = [aliasCopy im_registeredURIs];
  v9 = [im_registeredURIs countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(im_registeredURIs);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v24 = checkCopy;
            v25 = 2112;
            v26 = v12;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " comparing alias %@ and alias %@ ", buf, 0x16u);
          }
        }

        if ([checkCopy isEqualToIgnoringCase:v12])
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v24 = v12;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " Positive match on alias %@ ", buf, 0xCu);
            }
          }

          v14 = 1;
          goto LABEL_23;
        }
      }

      v9 = [im_registeredURIs countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_23:

  return v14;
}

- (id)accountForAlias:(id)alias fromAccounts:(id)accounts
{
  v22 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  accountsCopy = accounts;
  v8 = accountsCopy;
  if (aliasCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = accountsCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (-[IMDRelayServiceController accountHasAlias:aliastoCheck:](self, "accountHasAlias:aliastoCheck:", v14, aliasCopy, v17) && [v14 canSend])
          {
            v15 = v14;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)phoneAliasForDominentPhoneAlias:(id)alias registeredPhoneNumbers:(id)numbers preferredCallerID:(id)d CTPhoneNumber:(id)number
{
  v28 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  numbersCopy = numbers;
  dCopy = d;
  numberCopy = number;
  if ([dCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " We have a prefered Alias %@", &v26, 0xCu);
      }
    }

    if ([dCopy _appearsToBePhoneNumber] && -[IMDRelayServiceController isAliasRelayCapable:](self, "isAliasRelayCapable:", dCopy))
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = dCopy;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " This alias appears to be a phone number, we will send to that destination %@", &v26, 0xCu);
        }
      }

      firstObject = dCopy;
      goto LABEL_36;
    }

    _localDeviceSupportsSMS = [(IMDRelayServiceController *)self _localDeviceSupportsSMS];
    v18 = IMOSLoggingEnabled();
    if (_localDeviceSupportsSMS)
    {
      if (v18)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = numberCopy;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " This prefered alias is not a phone number, but we outselves support SMS, So we sent this one out using %@ instead", &v26, 0xCu);
        }

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    if (v18)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = aliasCopy;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, " This prefered alias is not a phone number, using %@ instead", &v26, 0xCu);
      }

LABEL_34:

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (!-[IMDRelayServiceController _localDeviceSupportsSMS](self, "_localDeviceSupportsSMS") || ![numbersCopy count] || objc_msgSend(aliasCopy, "length"))
  {
    _localDeviceSupportsSMS2 = [(IMDRelayServiceController *)self _localDeviceSupportsSMS];
    v21 = IMOSLoggingEnabled();
    if (_localDeviceSupportsSMS2)
    {
      if (v21)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = numberCopy;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " This prefered alias is not a phone number, but we outselves support SMS, So we sent this one out using %@ instead", &v26, 0xCu);
        }

        goto LABEL_25;
      }

LABEL_26:
      firstObject = numberCopy;
      goto LABEL_36;
    }

    if (v21)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, " We have no prefered alias, we are going to use the dominant phone number one", &v26, 2u);
      }

      goto LABEL_34;
    }

LABEL_35:
    firstObject = aliasCopy;
    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = numbersCopy;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, " This prefered alias is not the IDS registered number, and we support SMS, So we sent this one out using %@ instead", &v26, 0xCu);
    }
  }

  firstObject = [numbersCopy firstObject];
LABEL_36:
  v23 = firstObject;

  return v23;
}

- (id)retrievePhoneAccountAndPhoneAliasFromIDSAccounts:(id)accounts
{
  v33 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  accountsCopy = accounts;
  v4 = [accountsCopy countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v4)
  {
    v5 = *v24;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v24 != v5)
      {
        objc_enumerationMutation(accountsCopy);
      }

      v7 = *(*(&v23 + 1) + 8 * v6);
      if (![v7 accountType])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [accountsCopy countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    im_registeredURIs = [v7 im_registeredURIs];
    v9 = [im_registeredURIs countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (!v9)
    {
LABEL_18:

      goto LABEL_19;
    }

    v10 = *v20;
LABEL_12:
    v11 = 0;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(im_registeredURIs);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      if ([v12 _appearsToBePhoneNumber])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [im_registeredURIs countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    v15 = v7;
    v13 = v12;

    if (!v15)
    {
      goto LABEL_20;
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v28 = v15;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, " Found IDS account %@ with phone number %@", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_19:

    v13 = 0;
LABEL_20:
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " Unable to find IDS phone number account", buf, 2u);
      }
    }

    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x277D19288]) initWithFirst:v15 second:v13];

  return v16;
}

- (id)retrieveAccountAndPhoneAliasForAccounts:(id)accounts shouldFilterRecepients:(BOOL)recepients requestProxySend:(BOOL)send preferredCallerID:(id)d
{
  LODWORD(v35) = send;
  HIDWORD(v35) = recepients;
  v45 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (HIDWORD(v35))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138412802;
      v40 = v12;
      v41 = 2112;
      if (v35)
      {
        v11 = @"YES";
      }

      v42 = v11;
      v43 = 2112;
      v44 = accountsCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "finding account and phoneAlias shouldFilterRecipients: %@ requestProxySend: %@ for accounts %@", buf, 0x20u);
    }
  }

  dominentPhoneNumberAlias = [(IMDRelayServiceController *)self dominentPhoneNumberAlias];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = dominentPhoneNumberAlias;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "dominentPhoneAlias is this: %@", buf, 0xCu);
    }
  }

  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    registeredPhoneNumbers = [mEMORY[0x277D1A908] registeredPhoneNumbers];

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = registeredPhoneNumbers;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "IDS registered phone numbers are %@", buf, 0xCu);
      }
    }
  }

  else
  {
    registeredPhoneNumbers = 0;
  }

  myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  if (!dCopy)
  {
    dCopy = [(IMDRelayServiceController *)self _callerIDForRelay];
  }

  v18 = [(IMDRelayServiceController *)self phoneAliasForDominentPhoneAlias:dominentPhoneNumberAlias registeredPhoneNumbers:registeredPhoneNumbers preferredCallerID:dCopy CTPhoneNumber:myCTPhoneNumber];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = accountsCopy;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " Found Accounts %@ for SMS Relay Service ", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v18;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " Ensuring that the account picked matches the callerID %@", buf, 0xCu);
    }
  }

  v21 = [(IMDRelayServiceController *)self accountForAlias:v18 fromAccounts:accountsCopy];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v21;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, " Going to use account %@ For sending this message", buf, 0xCu);
    }
  }

  if (dCopy && [(__CFString *)dCopy _appearsToBePhoneNumber])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = dCopy;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, " We have a phone alias override, looking for new account that matches callerID %@", buf, 0xCu);
      }
    }

    v24 = [(IMDRelayServiceController *)self accountForAlias:dCopy fromAccounts:accountsCopy];
    if (v24)
    {
      v25 = dCopy;

      v26 = v24;
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v26;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, " Updating sending account, Now Going to use account %@ For sending this message", buf, 0xCu);
        }
      }
    }

    else
    {
      v26 = v21;
      v25 = v18;
    }

    if (v26)
    {
LABEL_57:
      if (v26)
      {
        v29 = [objc_alloc(MEMORY[0x277D19288]) initWithFirst:v26 second:v25];
        goto LABEL_69;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v26 = v21;
    v25 = v18;
    if (v21)
    {
      goto LABEL_57;
    }
  }

  if (!v37 || (v36 & 1) != 0)
  {
    goto LABEL_57;
  }

  if (![(IMDRelayServiceController *)self _localDeviceSupportsSMS])
  {
LABEL_59:
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = @"NO";
        if (v37)
        {
          v32 = @"YES";
        }

        else
        {
          v32 = @"NO";
        }

        if (v36)
        {
          v31 = @"YES";
        }

        *buf = 138412546;
        v40 = v32;
        v41 = 2112;
        v42 = v31;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Account is nil but not finding new account based on phone number IDS account based on parameters shouldFilter %@ requestProxy %@", buf, 0x16u);
      }
    }

    v29 = [objc_alloc(MEMORY[0x277D19288]) initWithFirst:0 second:v25];
    goto LABEL_69;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, " Account is nil, getting phone account from IDS", buf, 2u);
    }
  }

  v29 = [(IMDRelayServiceController *)self retrievePhoneAccountAndPhoneAliasFromIDSAccounts:accountsCopy];
LABEL_69:
  v33 = v29;

  return v33;
}

- (BOOL)sendDataToPeers:(id)peers guid:(id)guid forcedCallerID:(id)d shouldFilterRecepients:(BOOL)recepients requestProxySend:(BOOL)send dontSendTo:(id)to sentToDevices:(id *)devices
{
  sendCopy = send;
  recepientsCopy = recepients;
  v160[1] = *MEMORY[0x277D85DE8];
  peersCopy = peers;
  guidCopy = guid;
  dCopy = d;
  toCopy = to;
  if ([(IMDRelayServiceController *)self hasPeerDevices])
  {
    selfCopy = self;
    relayService = [(IMDRelayServiceController *)self relayService];
    accounts = [relayService accounts];

    v102 = [(IMDRelayServiceController *)self retrieveAccountAndPhoneAliasForAccounts:accounts shouldFilterRecepients:recepientsCopy requestProxySend:sendCopy preferredCallerID:dCopy];
    first = [v102 first];
    second = [v102 second];
    if (dCopy)
    {
      if ((MEMORY[0x231897D30](second, dCopy) & 1) == 0)
      {
        if (IMSharedHelperRetrieveSimDetailsFromTelephony())
        {
          if (IMSharedHelperDeviceHasMultipleSubscriptions())
          {
            mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
            ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
            v19 = [ctSubscriptionInfo __im_containsPhoneNumber:dCopy];

            if (v19)
            {
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v142 = dCopy;
                  _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " => Not sending data, I am a DSDS device and %@ is not enabled for relay", buf, 0xCu);
                }

LABEL_25:

                goto LABEL_26;
              }

              goto LABEL_26;
            }
          }
        }
      }
    }

    v23 = [(__CFDictionary *)peersCopy objectForKeyedSubscript:@"_SMSServiceRelayToWatchOnly"];
    bOOLValue = [v23 BOOLValue];

    if (!first || ![second length])
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " => No account available for sending With Phone number alias, failing", buf, 2u);
        }

        goto LABEL_25;
      }

LABEL_26:
      LOBYTE(v22) = 0;
LABEL_144:

      goto LABEL_145;
    }

    v110 = objc_alloc_init(MEMORY[0x277CBEB18]);
    Mutable = [(__CFDictionary *)peersCopy mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v26 = IDSCopyIDForPhoneNumber();
    if (v26)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D185E0], v26);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6F28();
    }

    v101 = Mutable;
    IMGreenTeaMessageTransmitLog();
    if (sendCopy)
    {
      v27 = [(IMDRelayServiceController *)self _deviceForCallerID:second];
      devices = v27;
      if (((v27 != 0) & bOOLValue) == 1)
      {
        v160[0] = v27;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:1];
        v30 = [(IMDRelayServiceController *)self _isConnectedOverBT:v29];

        if (!v30)
        {
          goto LABEL_88;
        }
      }

      else if (!v27)
      {
LABEL_88:

        if ([v110 count])
        {
          v118 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v110, "count")}];
          v112 = [(__CFDictionary *)v101 objectForKey:@"requiredCapabilitiesForSMSRelay"];
          v111 = [(__CFDictionary *)v101 objectForKey:@"excludedCapabilitiesForSMSRelay"];
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          obj = v110;
          v108 = [obj countByEnumeratingWithState:&v129 objects:v155 count:16];
          if (v108)
          {
            v107 = *v130;
            v117 = *MEMORY[0x277D188F0];
            do
            {
              v66 = 0;
              do
              {
                if (*v130 != v107)
                {
                  v67 = v66;
                  objc_enumerationMutation(obj);
                  v66 = v67;
                }

                v113 = v66;
                v68 = *(*(&v129 + 1) + 8 * v66);
                v69 = [(IMDRelayServiceController *)selfCopy _destinationForDevice:v68 forcedIdentity:second];
                if ([v112 count])
                {
                  v127 = 0u;
                  v128 = 0u;
                  v125 = 0u;
                  v126 = 0u;
                  v70 = v112;
                  v71 = [v70 countByEnumeratingWithState:&v125 objects:v154 count:16];
                  if (v71)
                  {
                    v72 = *v126;
                    while (2)
                    {
                      for (i = 0; i != v71; ++i)
                      {
                        if (*v126 != v72)
                        {
                          objc_enumerationMutation(v70);
                        }

                        v74 = *(*(&v125 + 1) + 8 * i);
                        capabilities = [v68 capabilities];
                        v76 = [capabilities valueForCapability:v74] == 0;

                        if (v76)
                        {
                          if (IMOSLoggingEnabled())
                          {
                            v80 = OSLogHandleForIMFoundationCategory();
                            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
                            {
                              *buf = 138412290;
                              v142 = v74;
                              _os_log_impl(&dword_22B4CC000, v80, OS_LOG_TYPE_INFO, "Not relaying to device as it does not support required capability: %@", buf, 0xCu);
                            }
                          }

                          goto LABEL_109;
                        }

                        if (guidCopy && [v74 isEqualToString:v117] && IMOSLoggingEnabled())
                        {
                          v77 = OSLogHandleForIMFoundationCategory();
                          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                          {
                            name = [v68 name];
                            uniqueID = [v68 uniqueID];
                            *buf = 138412802;
                            v142 = guidCopy;
                            v143 = 2112;
                            v144 = name;
                            v145 = 2112;
                            v146 = uniqueID;
                            _os_log_impl(&dword_22B4CC000, v77, OS_LOG_TYPE_INFO, "Relaying chatbot message: %@ to device: %@, ID: %@", buf, 0x20u);
                          }
                        }

                        [v118 addObject:v69];
                      }

                      v71 = [v70 countByEnumeratingWithState:&v125 objects:v154 count:16];
                      if (v71)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_109:
                }

                else
                {
                  [v118 addObject:v69];
                }

                if ([v111 count])
                {
                  v123 = 0u;
                  v124 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v81 = v111;
                  v82 = [v81 countByEnumeratingWithState:&v121 objects:v153 count:16];
                  if (v82)
                  {
                    v83 = *v122;
                    do
                    {
                      for (j = 0; j != v82; ++j)
                      {
                        if (*v122 != v83)
                        {
                          objc_enumerationMutation(v81);
                        }

                        v85 = *(*(&v121 + 1) + 8 * j);
                        capabilities2 = [v68 capabilities];
                        v87 = [capabilities2 valueForCapability:v85];

                        if (v87)
                        {
                          [v85 isEqualToString:v117];
                          if (IMOSLoggingEnabled())
                          {
                            v88 = OSLogHandleForIMFoundationCategory();
                            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                            {
                              name2 = [v68 name];
                              uniqueID2 = [v68 uniqueID];
                              *buf = 138413058;
                              v142 = guidCopy;
                              v143 = 2112;
                              v144 = name2;
                              v145 = 2112;
                              v146 = uniqueID2;
                              v147 = 2112;
                              v148 = v85;
                              _os_log_impl(&dword_22B4CC000, v88, OS_LOG_TYPE_INFO, "Removing relay destination for message: %@ to device: %@, ID: %@ because of excludedCapability: %@", buf, 0x2Au);
                            }
                          }

                          [v118 removeObject:v69];
                        }
                      }

                      v82 = [v81 countByEnumeratingWithState:&v121 objects:v153 count:16];
                    }

                    while (v82);
                  }
                }

                v66 = v113 + 1;
              }

              while (v113 + 1 != v108);
              v108 = [obj countByEnumeratingWithState:&v129 objects:v155 count:16];
            }

            while (v108);
          }

          [(IMDRelayServiceController *)selfCopy _checkAndSetRelayService];
          v91 = MEMORY[0x277D1AA08];
          relayService2 = [(IMDRelayServiceController *)selfCopy relayService];
          dictionary = [MEMORY[0x277CBEAC0] dictionary];
          v94 = [MEMORY[0x277CBEB98] setWithArray:v118];
          v119 = 0;
          v120 = 0;
          v22 = [v91 service:relayService2 sendMessage:dictionary fromAccount:first toDestinations:v94 priority:300 options:v101 identifier:&v120 error:&v119];
          v95 = v120;
          v96 = v119;
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v22 = 0;
        }

        if (devices)
        {
          *devices = [v110 copy];
        }

        if (IMOSLoggingEnabled())
        {
          v97 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            v98 = [v110 count];
            v99 = @"NO";
            *buf = 138413570;
            v143 = 2048;
            v142 = second;
            if (v22)
            {
              v99 = @"YES";
            }

            v144 = v98;
            v145 = 2112;
            v146 = v99;
            v147 = 2112;
            v148 = v96;
            v149 = 2112;
            v150 = first;
            v151 = 2112;
            v152 = v95;
            _os_log_impl(&dword_22B4CC000, v97, OS_LOG_TYPE_INFO, "SMS relay data sent to: %@ (%ld devices)   success: %@   error: %@   account: %@  identifier %@", buf, 0x3Eu);
          }
        }

        peersCopy = v101;
        goto LABEL_144;
      }

      [v110 addObject:devices];
      goto LABEL_88;
    }

    if (!recepientsCopy)
    {
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      relayService3 = [(IMDRelayServiceController *)self relayService];
      devices = [relayService3 devices];

      v54 = [devices countByEnumeratingWithState:&v133 objects:v157 count:16];
      if (v54)
      {
        v55 = *v134;
        do
        {
          v56 = 0;
          do
          {
            if (*v134 != v55)
            {
              objc_enumerationMutation(devices);
            }

            v57 = *(*(&v133 + 1) + 8 * v56);
            if (bOOLValue && (v156 = *(*(&v133 + 1) + 8 * v56), [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1], v58 = objc_claimAutoreleasedReturnValue(), v59 = -[IMDRelayServiceController _isConnectedOverBT:](selfCopy, "_isConnectedOverBT:", v58), v58, !v59))
            {
              if (IMOSLoggingEnabled())
              {
                v63 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  uniqueID3 = [v57 uniqueID];
                  *buf = 138412290;
                  v142 = uniqueID3;
                  _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, " Not Adding %@ to the devices to send this message to, since we only need to relay it to the active watch", buf, 0xCu);
                }
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v60 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  uniqueID4 = [v57 uniqueID];
                  name3 = [v57 name];
                  *buf = 138412546;
                  v142 = uniqueID4;
                  v143 = 2112;
                  v144 = name3;
                  _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, " Adding %@ name %@ the devices to send this message to ", buf, 0x16u);
                }
              }

              [v110 addObject:v57];
            }

            ++v56;
          }

          while (v54 != v56);
          v65 = [devices countByEnumeratingWithState:&v133 objects:v157 count:16];
          v54 = v65;
        }

        while (v65);
      }

      goto LABEL_88;
    }

    v31 = [(__CFDictionary *)v101 objectForKeyedSubscript:*MEMORY[0x277D18588]];
    integerValue = [v31 integerValue];

    enrollmentController = [(IMDRelayServiceController *)self enrollmentController];
    _allowedIDSDevicesforSMSRelay = [enrollmentController _allowedIDSDevicesforSMSRelay];

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    devices = _allowedIDSDevicesforSMSRelay;
    v35 = [devices countByEnumeratingWithState:&v137 objects:v159 count:16];
    if (!v35)
    {
      goto LABEL_65;
    }

    v36 = *v138;
LABEL_36:
    v37 = 0;
    while (1)
    {
      if (*v138 != v36)
      {
        objc_enumerationMutation(devices);
      }

      v38 = *(*(&v137 + 1) + 8 * v37);
      if (toCopy && ([toCopy uniqueID], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "uniqueID"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v39, "isEqualToString:", v40), v40, v39, v41))
      {
        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            uniqueID5 = [toCopy uniqueID];
            *buf = 138412290;
            v142 = uniqueID5;
            _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, " Not Adding %@ to the devices to send this message to, They were the original person who sent this message to us in the first place", buf, 0xCu);
          }

LABEL_63:
        }
      }

      else if (bOOLValue && (v158 = v38, [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:1], v44 = objc_claimAutoreleasedReturnValue(), v45 = -[IMDRelayServiceController _isConnectedOverBT:](selfCopy, "_isConnectedOverBT:", v44), v44, !v45))
      {
        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            uniqueID6 = [v38 uniqueID];
            *buf = 138412290;
            v142 = uniqueID6;
            _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, " Not Adding %@ to the devices to send this message to, since we only need to relay it to the active watch", buf, 0xCu);
          }

          goto LABEL_63;
        }
      }

      else
      {
        if (integerValue != 139 || ([MEMORY[0x277D1AB70] IDSDeviceSupportsIncomingSMSRelayFilteringForDeviceType:{objc_msgSend(v38, "deviceType")}] & 1) != 0)
        {
          if (IMOSLoggingEnabled())
          {
            v46 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              uniqueID7 = [v38 uniqueID];
              name4 = [v38 name];
              *buf = 138412546;
              v142 = uniqueID7;
              v143 = 2112;
              v144 = name4;
              _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, " Adding %@ name %@ the devices to send this message to ", buf, 0x16u);
            }
          }

          [v110 addObject:v38];
          goto LABEL_54;
        }

        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            uniqueID8 = [v38 uniqueID];
            deviceType = [v38 deviceType];
            *buf = 138412546;
            v142 = uniqueID8;
            v143 = 2048;
            v144 = deviceType;
            _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, " Not Adding %@ to the devices to send this message to, since we are sending SMSFilteringSettingMessage and this device type (%ld) is not capable of receiving it", buf, 0x16u);
          }

          goto LABEL_63;
        }
      }

LABEL_54:
      if (v35 == ++v37)
      {
        v52 = [devices countByEnumeratingWithState:&v137 objects:v159 count:16];
        v35 = v52;
        if (!v52)
        {
LABEL_65:

          goto LABEL_88;
        }

        goto LABEL_36;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, " => Not sending data, we have no peer devices", buf, 2u);
    }
  }

  LOBYTE(v22) = 0;
LABEL_145:

  return v22;
}

- (void)_sendMessageToPairedDeviceWithOptions:(id)options
{
  v37 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService accounts];

  v8 = [accounts countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v8)
  {
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(accounts);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 isActive])
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [accounts countByEnumeratingWithState:&v22 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = MEMORY[0x277D1AA08];
  relayService2 = [(IMDRelayServiceController *)self relayService];
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v20 = 0;
  v21 = 0;
  v15 = [v12 service:relayService2 sendMessage:dictionary fromAccount:v8 toDestinations:v5 priority:300 options:optionsCopy identifier:&v21 error:&v20];
  v16 = v21;
  v17 = v20;

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413314;
      v27 = v5;
      v28 = 2112;
      if (v15)
      {
        v19 = @"YES";
      }

      v29 = v19;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "SMS relay data sent to: %@   success: %@ account:%@  error: %@  identifier %@", buf, 0x34u);
    }
  }
}

- (void)_sendMessageToAllSMSRelayDevicesWithOptions:(id)options
{
  v49 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  relayService = [(IMDRelayServiceController *)self relayService];
  devices = [relayService devices];

  v8 = [devices countByEnumeratingWithState:&v33 objects:v48 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = IDSCopyIDForDevice();
        if ([v11 length])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [devices countByEnumeratingWithState:&v33 objects:v48 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  relayService2 = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService2 accounts];

  v14 = [accounts countByEnumeratingWithState:&v29 objects:v47 count:16];
  if (v14)
  {
    v15 = *v30;
    while (2)
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(accounts);
        }

        v17 = *(*(&v29 + 1) + 8 * j);
        if ([v17 isActive])
        {
          v14 = v17;
          goto LABEL_20;
        }
      }

      v14 = [accounts countByEnumeratingWithState:&v29 objects:v47 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v18 = MEMORY[0x277D1AA08];
  relayService3 = [(IMDRelayServiceController *)self relayService];
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v21 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v27 = 0;
  v28 = 0;
  v22 = [v18 service:relayService3 sendMessage:dictionary fromAccount:v14 toDestinations:v21 priority:300 options:optionsCopy identifier:&v28 error:&v27];
  v23 = v28;
  v24 = v27;

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v26 = @"NO";
      v38 = v5;
      v39 = 2112;
      if (v22)
      {
        v26 = @"YES";
      }

      v40 = v26;
      v41 = 2112;
      v42 = v14;
      v43 = 2112;
      v44 = v24;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "SMS relay data sent to: %@   success: %@ account:%@  error: %@  identifier %@", buf, 0x34u);
    }
  }
}

- (BOOL)sendFileToLocalPeers:(id)peers metadata:(id)metadata
{
  v36[2] = *MEMORY[0x277D85DE8];
  peersCopy = peers;
  metadataCopy = metadata;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = metadataCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Sending message to local device => dictionary: %@", buf, 0xCu);
    }
  }

  localDevice = [(IMDRelayServiceController *)self localDevice];

  if (localDevice)
  {
    v10 = *MEMORY[0x277D187E8];
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v10, 0}];
    v12 = *MEMORY[0x277D185A0];
    v35[0] = *MEMORY[0x277D185F0];
    v35[1] = v12;
    v36[0] = MEMORY[0x277CBEC38];
    v36[1] = MEMORY[0x277CBEC28];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [(IMDRelayServiceController *)self _checkAndSetRelayService];
    if (peersCopy)
    {
      relayService = [(IMDRelayServiceController *)self relayService];
      v27 = 0;
      v28 = 0;
      v15 = [relayService sendResourceAtURL:peersCopy metadata:metadataCopy toDestinations:v11 priority:300 options:v13 identifier:&v28 error:&v27];
      v16 = &v27;
      v17 = &v28;
    }

    else
    {
      v19 = MEMORY[0x277D1AA08];
      relayService = [(IMDRelayServiceController *)self relayService];
      v25 = 0;
      v26 = 0;
      v15 = [v19 service:relayService sendMessage:metadataCopy fromAccount:0 toDestinations:v11 priority:300 options:v13 identifier:&v26 error:&v25];
      v16 = &v25;
      v17 = &v26;
    }

    v20 = *v17;
    v21 = *v16;

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"NO";
        *buf = 138412802;
        v30 = v21;
        v31 = 2112;
        if (v15)
        {
          v23 = @"YES";
        }

        v32 = v23;
        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Sending message to local account (error %@) success: %@ with Identifier %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "No Local Device Found, unable to send message", buf, 2u);
      }
    }

    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)reportJunkMessageToCarrier:(id)carrier toChat:(id)chat fromCallerID:(id)d
{
  v31[6] = *MEMORY[0x277D85DE8];
  carrierCopy = carrier;
  chatCopy = chat;
  dCopy = d;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x277D1A9B8] isReportJunkEverywhereEnabled];

  if (isReportJunkEverywhereEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Sending report junk command to iPhone", buf, 2u);
      }
    }

    theDict = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = [IMDRelayServiceController _convertIMMessageItemToOutgoingRelayDictionary:carrierCopy chat:chatCopy];
    if (v12)
    {
      CFDictionarySetValue(theDict, IMDRelayMessageItemDictionary, v12);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6FB0();
    }

    v13 = _IMDRelayChatStyleStringFromChatStyle([chatCopy style]);
    if (v13)
    {
      CFDictionarySetValue(theDict, IMDRelayMessageDictionaryChatStyleKey, v13);
    }

    v14 = JWEncodeDictionary();
    _FTCopyGzippedData = [v14 _FTCopyGzippedData];
    v16 = *MEMORY[0x277D18648];
    v30[0] = *MEMORY[0x277D18660];
    v30[1] = v16;
    v31[0] = MEMORY[0x277CBEC38];
    v31[1] = MEMORY[0x277CBEC38];
    v17 = *MEMORY[0x277D185A0];
    v31[2] = MEMORY[0x277CBEC28];
    v18 = *MEMORY[0x277D18668];
    v30[2] = v17;
    v30[3] = v18;
    guid = [carrierCopy guid];
    v20 = IDSGetUUIDData();
    v31[3] = v20;
    v30[4] = *MEMORY[0x277D18588];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:123];
    v31[4] = v21;
    v30[5] = *MEMORY[0x277D18598];
    v31[5] = _FTCopyGzippedData;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];

    v23 = [(IMDRelayServiceController *)self sendDataToPeers:v22 forcedCallerID:dCopy shouldFilterRecepients:0 requestProxySend:0 dontSendTo:0];
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v29 = v23;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Success sending data to peers: %{BOOL}d", buf, 8u);
      }
    }
  }
}

- (void)_relayEditedMessage:(id)message messageGUID:(id)d serializedHandles:(id)handles chatStyle:(unsigned __int8)style callerID:(id)iD
{
  styleCopy = style;
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  handlesCopy = handles;
  iDCopy = iD;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = messageCopy;
  if (v14)
  {
    CFDictionarySetValue(v13, IMDRelayMessageItemDictionary, v14);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D6FB0();
  }

  if (handlesCopy)
  {
    CFDictionarySetValue(v13, IMDCTMessageDictionaryReceipientsKey, handlesCopy);
  }

  v15 = MEMORY[0x277CBEC38];
  CFDictionarySetValue(v13, IMDRelayMessageDictionarySendOnlyKey, MEMORY[0x277CBEC38]);
  v16 = _IMDRelayChatStyleStringFromChatStyle(styleCopy);
  if (v16)
  {
    CFDictionarySetValue(v13, IMDRelayMessageDictionaryChatStyleKey, v16);
  }

  v17 = JWEncodeDictionary();
  _FTCopyGzippedData = [v17 _FTCopyGzippedData];
  v19 = MEMORY[0x277CBEB38];
  v20 = IDSGetUUIDData();
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:143];
  v22 = [v19 dictionaryWithObjectsAndKeys:{v15, *MEMORY[0x277D18660], v15, *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v20, *MEMORY[0x277D18668], v21, *MEMORY[0x277D18588], _FTCopyGzippedData, *MEMORY[0x277D18598], 0}];

  localDevice = [(IMDRelayServiceController *)self localDevice];
  if (!localDevice || (v24 = [(IMDRelayServiceController *)self isProxyRegistered], localDevice, v24))
  {
    v25 = [(IMDRelayServiceController *)self sendDataToPeers:v22 forcedCallerID:iDCopy shouldFilterRecepients:0 requestProxySend:1 dontSendTo:0];
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v31 = v25;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Success sending data to peers: %{BOOL}d", buf, 8u);
      }
    }
  }
}

- (void)_relayMessageToPairedDevice:(id)device messageID:(id)d hasAttachments:(BOOL)attachments
{
  v21[2] = *MEMORY[0x277D85DE8];
  v8 = &IMDRelayLocalMessageTypeOutgoing;
  if (attachments)
  {
    v8 = &IMDRelayLocalMessageTypeOutgoingDownload;
  }

  v9 = *v8;
  v20[0] = IMDRelayLocalMessageDictionaryOutgoingDictKey;
  v20[1] = IMDRelayLocalMessageDictionaryGUIDKey;
  v21[0] = device;
  v21[1] = d;
  v10 = MEMORY[0x277CBEAC0];
  v11 = v9;
  dCopy = d;
  deviceCopy = device;
  v14 = [v10 dictionaryWithObjects:v21 forKeys:v20 count:2];
  v15 = JWEncodeDictionary();
  _FTCopyGzippedData = [v15 _FTCopyGzippedData];
  v18[0] = IMDRelayLocalMessageDictionaryDictKey;
  v18[1] = IMDRelayLocalMessageDictionaryTypeKey;
  v19[0] = _FTCopyGzippedData;
  v19[1] = v11;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [(IMDRelayServiceController *)self sendToLocalPeers:v17];
}

- (void)_relayMessageDict:(id)dict messageID:(id)d forcedCallerID:(id)iD didSendSMS:(BOOL)s relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions hasAttachments:(BOOL)attachments requiredCapabilities:(id)self0
{
  onlyCopy = only;
  sCopy = s;
  if (attachments)
  {
    v14 = 144;
  }

  else
  {
    v14 = 143;
  }

  [IMDRelayServiceController _relayMessageDict:"_relayMessageDict:command:messageID:forcedCallerID:didSendSMS:relayToWatchOnly:shouldDisableScreenTimeRestrictions:hasAttachments:requiredCapabilities:" command:dict messageID:v14 forcedCallerID:d didSendSMS:iD relayToWatchOnly:sCopy shouldDisableScreenTimeRestrictions:onlyCopy hasAttachments:? requiredCapabilities:?];
}

- (id)_sendOptionsForRelayMessage:(id)message command:(int64_t)command guid:(id)guid
{
  v17[6] = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  v7 = JWEncodeDictionary();
  _FTCopyGzippedData = [v7 _FTCopyGzippedData];
  v9 = *MEMORY[0x277D18648];
  v16[0] = *MEMORY[0x277D18660];
  v16[1] = v9;
  v17[0] = MEMORY[0x277CBEC38];
  v17[1] = MEMORY[0x277CBEC38];
  v10 = *MEMORY[0x277D185A0];
  v17[2] = MEMORY[0x277CBEC28];
  v11 = *MEMORY[0x277D18668];
  v16[2] = v10;
  v16[3] = v11;
  v12 = IDSGetUUIDData();

  v17[3] = v12;
  v16[4] = *MEMORY[0x277D18588];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:command];
  v16[5] = *MEMORY[0x277D18598];
  v17[4] = v13;
  v17[5] = _FTCopyGzippedData;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

  return v14;
}

- (void)_relayMessageDict:(id)dict command:(int64_t)command messageID:(id)d forcedCallerID:(id)iD didSendSMS:(BOOL)s relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions hasAttachments:(BOOL)self0 sentToDevices:(id *)self1 extraOptions:(id)self2 requiredCapabilities:(id)self3
{
  onlyCopy = only;
  sCopy = s;
  v36 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  capabilitiesCopy = capabilities;
  v32 = dictCopy;
  v23 = [(IMDRelayServiceController *)self _sendOptionsForRelayMessage:dictCopy command:command guid:dCopy];
  v24 = [v23 mutableCopy];

  if (optionsCopy)
  {
    [v24 addEntriesFromDictionary:optionsCopy];
  }

  if (onlyCopy)
  {
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"_SMSServiceRelayToWatchOnly"];
  }

  if ([capabilitiesCopy count])
  {
    [v24 setObject:capabilitiesCopy forKey:@"requiredCapabilitiesForSMSRelay"];
  }

  if (sCopy)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    if (v25)
    {
      CFDictionarySetValue(v24, *MEMORY[0x277D18650], v25);
    }

    LOBYTE(v31) = onlyCopy;
    [(IMDRelayServiceController *)self _forwardMessageToPeers:v32 messageType:command guid:dCopy originalSender:0 forcedCallerID:iDCopy hasAttachment:attachments watchOnly:v31 sentToDevices:devices requiredCapabilities:capabilitiesCopy];
  }

  else
  {
    if (attachments && IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Relaying attachment to SMS capable device.", buf, 2u);
      }
    }

    localDevice = [(IMDRelayServiceController *)self localDevice];
    if (!localDevice || (v28 = [(IMDRelayServiceController *)self isProxyRegistered], localDevice, v28))
    {
      v29 = [(IMDRelayServiceController *)self sendDataToPeers:v24 forcedCallerID:iDCopy shouldFilterRecepients:0 requestProxySend:1 dontSendTo:0 sentToDevices:devices];
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v35 = v29;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Success sending data to peers: %{BOOL}d", buf, 8u);
        }
      }
    }
  }
}

- (void)_forwardMessageToPeers:(id)peers messageType:(int64_t)type guid:(id)guid originalSender:(id)sender forcedCallerID:(id)d hasAttachment:(BOOL)attachment watchOnly:(BOOL)only sentToDevices:(id *)self0 requiredCapabilities:(id)self1
{
  attachmentCopy = attachment;
  peersCopy = peers;
  guidCopy = guid;
  senderCopy = sender;
  dCopy = d;
  capabilitiesCopy = capabilities;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Adding reflect only key and forwarding message to peers", buf, 2u);
    }
  }

  if ([(IMDRelayServiceController *)self isSMSRelayEnabled])
  {
    v52 = capabilitiesCopy;
    v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:peersCopy];
    CFDictionarySetValue(v22, IMDRelayMessageDictionaryForcedShowOnlyKey, MEMORY[0x277CBEC38]);
    v23 = JWEncodeDictionary();
    v24 = IMOSLoggingEnabled();
    v51 = peersCopy;
    v48 = dCopy;
    v49 = senderCopy;
    v46 = v22;
    selfCopy = self;
    v45 = v23;
    if (attachmentCopy)
    {
      if (v24)
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v55 = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "forwardMessageToPeers: Not compressing data", v55, 2u);
        }
      }

      _FTCopyGzippedData = v23;
    }

    else
    {
      if (v24)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v54 = 0;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "forwardMessageToPeers: Compressing data", v54, 2u);
        }
      }

      _FTCopyGzippedData = [v23 _FTCopyGzippedData];
    }

    v28 = _FTCopyGzippedData;
    v43 = MEMORY[0x277CBEB38];
    v42 = *MEMORY[0x277D18660];
    v29 = *MEMORY[0x277D18648];
    v30 = *MEMORY[0x277D185A0];
    v50 = guidCopy;
    v31 = IDSGetUUIDData();
    v32 = *MEMORY[0x277D18668];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v34 = *MEMORY[0x277D18588];
    v35 = *MEMORY[0x277D18598];
    v36 = [MEMORY[0x277CCABB0] numberWithBool:only];
    v44 = v28;
    v37 = [v43 dictionaryWithObjectsAndKeys:{v42, MEMORY[0x277CBEC38], v29, MEMORY[0x277CBEC28], v30, v31, v32, v33, v34, v28, v35, v36, @"_SMSServiceRelayToWatchOnly", 0}];

    if ([v52 count])
    {
      [v37 setObject:v52 forKey:@"requiredCapabilitiesForSMSRelay"];
    }

    dCopy = v48;
    senderCopy = v49;
    if (v48)
    {
      guidCopy = v50;
      [(IMDRelayServiceController *)selfCopy sendDataToPeers:v37 guid:v50 forcedCallerID:v48 shouldFilterRecepients:1 requestProxySend:0 dontSendTo:v49 sentToDevices:devices];
    }

    else
    {
      myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
      guidCopy = v50;
      [(IMDRelayServiceController *)selfCopy sendDataToPeers:v37 guid:v50 forcedCallerID:myCTPhoneNumber shouldFilterRecepients:1 requestProxySend:0 dontSendTo:v49 sentToDevices:devices];
    }

    peersCopy = v51;
    localDevice = [(IMDRelayServiceController *)selfCopy localDevice];
    if (localDevice)
    {
      v40 = localDevice;
      isLocalDeviceProxyRegistered = [(IMDRelayServiceController *)selfCopy isLocalDeviceProxyRegistered];

      if (!isLocalDeviceProxyRegistered)
      {
        [(IMDRelayServiceController *)selfCopy _relayMessageToPairedDevice:v46 messageID:guidCopy hasAttachments:type == 144];
      }
    }

    capabilitiesCopy = v52;
  }
}

- (BOOL)_canRelayMessage:(id)message forChat:(id)chat isOTC:(BOOL *)c
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  if ([messageCopy isTypingMessage])
  {
    goto LABEL_6;
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if (([mEMORY[0x277D1A9B8] isRelayChatBotEnabled] & 1) == 0 && objc_msgSend(messageCopy, "isSuggestedActionResponse"))
  {

LABEL_6:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        isTypingMessage = [messageCopy isTypingMessage];
        isRCSEncryptionTest = [messageCopy isRCSEncryptionTest];
        v15 = @"NO";
        if (isTypingMessage)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        if (isRCSEncryptionTest)
        {
          v15 = @"YES";
        }

        *buf = 138412546;
        v41 = v16;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not relaying message to peers, it's typing indicators: %@, RCS encryption test: %@", buf, 0x16u);
      }
    }

    isRelayChatBotEnabled = 0;
    goto LABEL_16;
  }

  isRCSEncryptionTest2 = [messageCopy isRCSEncryptionTest];

  if (isRCSEncryptionTest2)
  {
    goto LABEL_6;
  }

  if ([chatCopy isChatBot])
  {
    body = [messageCopy body];
    v39 = [body mutableCopy];

    v20 = @"NO";
    if ([MEMORY[0x277D1A9A0] supportsDataDetectors])
    {
      body2 = [messageCopy body];
      v22 = [body2 length];
      v23 = *MEMORY[0x277D196A0];

      if (v22 < v23)
      {
        string = [v39 string];
        guid = [messageCopy guid];
        sender = [messageCopy sender];
        v27 = MEMORY[0x277CBEAA8];
        time = [messageCopy time];
        v29 = [v27 dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(time, "__im_nanosecondTimeInterval")}];
        [messageCopy isFromMe];
        v38 = IMDDScanAttributedStringWithExtendedContext();

        v20 = @"NO";
        if (v38)
        {
          v20 = @"YES";
        }
      }
    }

    otcUtilities = [(IMDRelayServiceController *)self otcUtilities];
    sender2 = [messageCopy sender];
    guid2 = [messageCopy guid];
    v33 = [otcUtilities createOTCFromMessageBody:v39 sender:sender2 guid:guid2];

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = "Will";
        if (!c)
        {
          v35 = "Will not";
        }

        *buf = 136315650;
        v41 = v35;
        v36 = @"YES";
        v42 = 2112;
        if (!c)
        {
          v36 = @"NO";
        }

        v43 = v36;
        v44 = 2112;
        v45 = v20;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "%s relay chatbot message because it's a OTC: %@, found DD results: %@", buf, 0x20u);
      }
    }

    if (c)
    {
      *c = v33 != 0;
    }

    if (v33)
    {
      isRelayChatBotEnabled = 1;
    }

    else
    {
      mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isRelayChatBotEnabled = [mEMORY[0x277D1A9B8]2 isRelayChatBotEnabled];
    }
  }

  else
  {
    isRelayChatBotEnabled = 1;
  }

LABEL_16:

  return isRelayChatBotEnabled;
}

- (BOOL)_needsLowQualityTranscodeForMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  localDevice = [(IMDRelayServiceController *)self localDevice];

  if (localDevice && ([messageCopy isFromMe] & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    fileTransferGUIDs = [messageCopy fileTransferGUIDs];
    v8 = [fileTransferGUIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(fileTransferGUIDs);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = +[IMDAttachmentStore sharedInstance];
          v14 = [v13 attachmentWithGUID:v12];

          if (([v14 isInThumbnailState] & 1) == 0)
          {
            totalBytes = [v14 totalBytes];
            if (totalBytes > [(IMDRelayServiceController *)self _maxWatchTransferSize])
            {

              v6 = 1;
              goto LABEL_15;
            }
          }
        }

        v9 = [fileTransferGUIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_15:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)relayMessageToPeers:(id)peers forChat:(id)chat serviceName:(id)name reflectOnly:(BOOL)only requiredCapabilities:(id)capabilities skipServiceForSending:(BOOL)sending
{
  onlyCopy = only;
  v86 = *MEMORY[0x277D85DE8];
  peersCopy = peers;
  chatCopy = chat;
  nameCopy = name;
  capabilitiesCopy = capabilities;
  v18 = [(IMDRelayServiceController *)self _needsLowQualityTranscodeForMessage:peersCopy];
  v19 = v18;
  if (v18)
  {
    v51 = v18;
    v55 = capabilitiesCopy;
    selfCopy = self;
    sendingCopy = sending;
    v57 = nameCopy;
    v58 = onlyCopy;
    v59 = chatCopy;
    v60 = peersCopy;
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        guid = [peersCopy guid];
        *buf = 138412290;
        v85 = guid;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Message %@ needs LQ transcode to go to watch - we will relay a low-quality transcoded result to the watch", buf, 0xCu);
      }
    }

    v54 = objc_opt_new();
    v22 = objc_opt_new();
    v62 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    fileTransferGUIDs = [peersCopy fileTransferGUIDs];
    v24 = [fileTransferGUIDs countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v24)
    {
      v25 = *v79;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v79 != v25)
          {
            objc_enumerationMutation(fileTransferGUIDs);
          }

          v27 = *(*(&v78 + 1) + 8 * i);
          v28 = +[IMDAttachmentStore sharedInstance];
          v29 = [v28 attachmentWithGUID:v27];

          totalBytes = [v29 totalBytes];
          if (totalBytes > [(IMDRelayServiceController *)selfCopy _maxWatchTransferSize])
          {
            [v22 addObject:v29];
            [v62 addObject:v27];
          }
        }

        v24 = [fileTransferGUIDs countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v24);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v22;
    v61 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v61)
    {
      v53 = *v75;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v75 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v74 + 1) + 8 * j);
          v33 = +[IMDRelayTranscodeController sharedInstance];
          localURL = [v32 localURL];
          type = [v32 type];
          transcoderUserInfo = [v32 transcoderUserInfo];
          isSticker = [v32 isSticker];
          _maxWatchTransferSize = [(IMDRelayServiceController *)selfCopy _maxWatchTransferSize];
          _maxWatchTransferSize2 = [(IMDRelayServiceController *)selfCopy _maxWatchTransferSize];
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = sub_22B62F534;
          v64[3] = &unk_278706980;
          v64[4] = v32;
          v65 = v54;
          v66 = v62;
          v67 = selfCopy;
          v68 = v60;
          v69 = v59;
          v70 = v57;
          v71 = v55;
          v72 = v58;
          v73 = sendingCopy;
          [v33 transcodeFileTransferContents:localURL utiType:type target:1 transcoderUserInfo:transcoderUserInfo isSticker:isSticker highQualityMaxByteSize:_maxWatchTransferSize lowQualityMaxByteSize:_maxWatchTransferSize2 representations:0 completionBlock:v64];
        }

        v61 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
      }

      while (v61);
    }

    chatCopy = v59;
    peersCopy = v60;
    onlyCopy = v58;
    nameCopy = v57;
    sending = sendingCopy;
    self = selfCopy;
    capabilitiesCopy = v55;
    v19 = v51;
  }

  LOBYTE(v50) = sending;
  LOBYTE(v49) = 0;
  v40 = peersCopy;
  v41 = peersCopy;
  v42 = chatCopy;
  v43 = chatCopy;
  v44 = nameCopy;
  v45 = nameCopy;
  v46 = capabilitiesCopy;
  v47 = [(IMDRelayServiceController *)self _relayMessageToPeers:v41 forChat:v43 serviceName:v45 requiredCapabilities:capabilitiesCopy reflectOnly:onlyCopy excludesWatch:v19 onlyWatch:v49 overridingAttachmentData:0 skipServiceForSending:v50];

  return v47;
}

- (BOOL)_relayMessageToPeers:(id)peers forChat:(id)chat serviceName:(id)name requiredCapabilities:(id)capabilities reflectOnly:(BOOL)only excludesWatch:(BOOL)watch onlyWatch:(BOOL)onlyWatch overridingAttachmentData:(id)self0 skipServiceForSending:(BOOL)self1
{
  watchCopy = watch;
  v56 = *MEMORY[0x277D85DE8];
  peersCopy = peers;
  chatCopy = chat;
  nameCopy = name;
  capabilitiesCopy = capabilities;
  dataCopy = data;
  v51 = 0;
  if ([(IMDRelayServiceController *)self _canRelayMessage:peersCopy forChat:chatCopy isOTC:&v51])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v48 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSRelaySend", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v48, &state);
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([peersCopy isFromMe])
    {
      v21 = 1;
      LOBYTE(v41) = sending;
      LOBYTE(v40) = 0;
      [(IMDRelayServiceController *)self relayMessage:peersCopy chat:chatCopy didSendSMS:1 attemptingReplication:0 forceReflection:0 relayToWatchOnly:0 shouldDisableScreenTimeRestrictions:v40 callerID:0 iMessageCapability:0 requiredCapabilities:capabilitiesCopy skipServiceForSending:v41];
    }

    else
    {
      v22 = [objc_opt_class() _convertIMMessageItemToIncomingRelayDictionary:peersCopy chat:chatCopy serviceName:nameCopy overridingAttachmentData:dataCopy];
      if (v22)
      {
        [v20 addEntriesFromDictionary:v22];
        v45 = v22;
        participants = [chatCopy participants];
        v47 = [IMDRelayServiceController _convertIMDHandlesToArrayOfIDs:participants];

        if ([v47 count])
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              guid = [peersCopy guid];
              *buf = 138412546;
              v53 = guid;
              v54 = 2112;
              v55 = v47;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Recipients when trying to relay incoming message %@, %@", buf, 0x16u);
            }
          }

          [v20 setObject:v47 forKeyedSubscript:IMDCTMessageDictionaryReceipientsKey];
        }

        else if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            guid2 = [peersCopy guid];
            *buf = 138412290;
            v53 = guid2;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "No recipients when trying to relay incoming message %@", buf, 0xCu);
          }
        }

        v46 = [MEMORY[0x277D1A8F8] shouldUploadToMMCS:v20];
        mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        isRelayChatBotEnabled = [mEMORY[0x277D1A9B8] isRelayChatBotEnabled];
        v32 = v51;

        if ((isRelayChatBotEnabled & v32) != 0)
        {
          v33 = [v20 mutableCopy];
          [v33 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:IMDCTMessageDictionarySendEnabledKey];
          v44 = v33;
          v34 = [capabilitiesCopy mutableCopy];
          v35 = *MEMORY[0x277D188F0];
          [v34 removeObject:*MEMORY[0x277D188F0]];
          v43 = v34;
          v36 = [MEMORY[0x277CBEB98] setWithObject:v35];
          if (IMOSLoggingEnabled())
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              guid3 = [peersCopy guid];
              *buf = 138412290;
              v53 = guid3;
              v42 = guid3;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Relay OTC message to legacy devices for message: %@", buf, 0xCu);
            }
          }

          LOBYTE(v40) = onlyWatch;
          [(IMDRelayServiceController *)self relayDictionaryToPeers:v44 requiresUpload:v46 serviceName:nameCopy requiredCapabilities:v43 excludedCapabilities:v36 excludesWatch:watchCopy onlyWatch:v40];
        }

        v21 = [(IMDRelayServiceController *)self relayDictionaryToPeers:v20 requiresUpload:v46 serviceName:nameCopy requiredCapabilities:capabilitiesCopy excludesWatch:watchCopy onlyWatch:onlyWatch];

        v22 = v45;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            guid4 = [peersCopy guid];
            *buf = 138412290;
            v53 = guid4;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "No message dictionary when trying to relay %@", buf, 0xCu);
          }
        }

        v21 = 0;
      }
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)relayDictionaryToPeers:(id)peers requiresUpload:(BOOL)upload serviceName:(id)name requiredCapabilities:(id)capabilities excludedCapabilities:(id)excludedCapabilities excludesWatch:(BOOL)watch onlyWatch:(BOOL)onlyWatch
{
  watchCopy = watch;
  uploadCopy = upload;
  v133 = *MEMORY[0x277D85DE8];
  peersCopy = peers;
  nameCopy = name;
  capabilitiesCopy = capabilities;
  excludedCapabilitiesCopy = excludedCapabilities;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (uploadCopy)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v128 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Trying to relay dictionary to peers, requiresUpload: %@", buf, 0xCu);
    }
  }

  if (![(IMDRelayServiceController *)self hasPeerDevices])
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => Not sending data for received message, we have no peer devices", buf, 2u);
      }

      goto LABEL_38;
    }

    goto LABEL_39;
  }

  enrollmentController = [(IMDRelayServiceController *)self enrollmentController];
  _allowedDevicesforSMSRelay = [enrollmentController _allowedDevicesforSMSRelay];
  v16 = [_allowedDevicesforSMSRelay count] == 0;

  if (v16)
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => Not sending data for received message, we have no devices on the allowed list", buf, 2u);
      }

      goto LABEL_38;
    }

LABEL_39:
    v32 = 0;
    goto LABEL_40;
  }

  if (![(IMDRelayServiceController *)self isSMSRelayEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => Not sending data for received message, smsRelay not enabled", buf, 2u);
      }

LABEL_38:

      goto LABEL_39;
    }

    goto LABEL_39;
  }

  mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
  v18 = [(__CFDictionary *)peersCopy objectForKey:IMDCTMessageDictionarySenderKey];
  v19 = [mEMORY[0x277D18998] isPhoneNumberEmergencyNumber:v18];

  if (v19)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    relayService = [(IMDRelayServiceController *)self relayService];
    devices = [relayService devices];

    v22 = [devices countByEnumeratingWithState:&v117 objects:v132 count:16];
    if (v22)
    {
      v23 = *v118;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v118 != v23)
          {
            objc_enumerationMutation(devices);
          }

          v25 = *(*(&v117 + 1) + 8 * i);
          v131 = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
          v27 = [(IMDRelayServiceController *)self _isConnectedOverBT:v26];

          v28 = IMOSLoggingEnabled();
          if (v27)
          {
            if (v28)
            {
              v34 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v128 = v25;
                v129 = 2112;
                v130 = @"YES";
                _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "This message is from an emergency number, but we have a Watch connected over BT %@, relaying message %@", buf, 0x16u);
              }
            }

            goto LABEL_46;
          }

          if (v28)
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v128 = v25;
              _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "This message is from an emergency number, not relaying to peer %@", buf, 0xCu);
            }
          }
        }

        v22 = [devices countByEnumeratingWithState:&v117 objects:v132 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "No watch paired connected over Bluetooth, skipping relaying emergency SMS", buf, 2u);
      }
    }

    goto LABEL_39;
  }

LABEL_46:
  myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  if (!IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    theDict = peersCopy;
    goto LABEL_73;
  }

  theDict = [(__CFDictionary *)peersCopy mutableCopy];
  v36 = [(__CFDictionary *)peersCopy _stringForKey:IMDCTMessageDictionaryOriginatedDeviceSIMKey];
  v37 = [(__CFDictionary *)peersCopy _stringForKey:IMDCTMessageDictionaryOriginatedDeviceNumberKey];
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  registeredSIMIDs = [mEMORY[0x277D1A908] registeredSIMIDs];

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v40 = registeredSIMIDs;
  v41 = [(__CFString *)v40 countByEnumeratingWithState:&v113 objects:v126 count:16];
  if (v41)
  {
    v42 = 0;
    v43 = *v114;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v114 != v43)
        {
          objc_enumerationMutation(v40);
        }

        if ([v36 isEqualToString:*(*(&v113 + 1) + 8 * j)])
        {
          if (v37)
          {
            v45 = v37;
          }

          else
          {
            v45 = myCTPhoneNumber;
          }

          v46 = v45;

          if (IMOSLoggingEnabled())
          {
            v47 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v128 = v36;
              v129 = 2112;
              v130 = v40;
              _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Setting iMessageCapability to iMessageCapabilityAble on relay dict because message received on simID %@ is one of the registered simIDs %@", buf, 0x16u);
            }
          }

          CFDictionarySetValue(theDict, IMDRelayMessageDictionaryiMessageCapability, &unk_283F4EA98);
          v42 = 1;
          myCTPhoneNumber = v46;
        }
      }

      v41 = [(__CFString *)v40 countByEnumeratingWithState:&v113 objects:v126 count:16];
    }

    while (v41);

    if (v42)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v48 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v128 = v36;
      v129 = 2112;
      v130 = v40;
      _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Setting iMessageCapability to iMessageCapabilityUnable on relay dict because message received on simID %@ isn't one of the registered simIDs %@", buf, 0x16u);
    }
  }

  CFDictionarySetValue(theDict, IMDRelayMessageDictionaryiMessageCapability, &unk_283F4EAB0);
LABEL_72:

LABEL_73:
  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = [(__CFDictionary *)theDict objectForKey:IMDCTMessageDictionaryReceipientsKey];
      *buf = 138412290;
      v128 = v50;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Recipients: %@", buf, 0xCu);
    }
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v51 = [(__CFDictionary *)theDict objectForKey:IMDCTMessageDictionaryReceipientsKey];
  v52 = [v51 countByEnumeratingWithState:&v109 objects:v125 count:16];
  if (v52)
  {
    v53 = *v110;
    while (2)
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v110 != v53)
        {
          objc_enumerationMutation(v51);
        }

        v55 = *(*(&v109 + 1) + 8 * k);
        if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v128 = v55;
            _os_log_impl(&dword_22B4CC000, v56, OS_LOG_TYPE_INFO, "  Recipient: %@", buf, 0xCu);
          }
        }

        mEMORY[0x277D18998]2 = [MEMORY[0x277D18998] sharedInstance];
        v58 = [mEMORY[0x277D18998]2 isPhoneNumberEmergencyNumber:v55];

        if (v58)
        {
          if (IMOSLoggingEnabled())
          {
            v60 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "One of the recipients was an emergency number, this message should not be relayed", buf, 2u);
            }
          }

          v32 = 0;
          goto LABEL_135;
        }
      }

      v52 = [v51 countByEnumeratingWithState:&v109 objects:v125 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v59 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v59, OS_LOG_TYPE_INFO, " Going to forward our received Message onto our other peers", buf, 2u);
    }
  }

  v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (watchCopy)
  {
    pairedDevice = [(IMDRelayServiceController *)self pairedDevice];
  }

  else
  {
    pairedDevice = 0;
  }

  if (uploadCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v62 = [defaultManager im_randomTemporaryFileURLWithFileName:IMDRelayDownloadUploadTemporaryPathKey];
    path = [v62 path];

    [(__CFDictionary *)theDict writeToFile:path atomically:1];
    if (IMOSLoggingEnabled())
    {
      v63 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v128 = path;
        _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Saved File to Path %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Starting Upload to MMCS Now", buf, 2u);
      }
    }

    mEMORY[0x277D1ADF8] = [MEMORY[0x277D1ADF8] sharedInstance];
    v66 = *MEMORY[0x277D186A8];
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = sub_22B630FE8;
    v99[3] = &unk_2787069A8;
    v100 = v51;
    v101 = nameCopy;
    v102 = theDict;
    onlyWatchCopy = onlyWatch;
    v103 = capabilitiesCopy;
    v104 = excludedCapabilitiesCopy;
    selfCopy = self;
    v106 = myCTPhoneNumber;
    v107 = pairedDevice;
    [mEMORY[0x277D1ADF8] sendFilePath:path topic:v66 userInfo:0 transferID:path encryptFile:1 progressBlock:0 completionBlock:v99];

    v32 = 0;
    _FTCopyGzippedData = v100;
  }

  else
  {
    [v51 addEntriesFromDictionary:theDict];
    path = JWEncodeDictionary();
    _FTCopyGzippedData = [path _FTCopyGzippedData];
    v68 = MEMORY[0x277CBEB38];
    v69 = [MEMORY[0x277CCABB0] numberWithInteger:140];
    v70 = [(__CFDictionary *)theDict objectForKey:IMDCTMessageDictionaryGUIDKey];
    v71 = IDSGetUUIDData();
    v72 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v73 = [MEMORY[0x277CCABB0] numberWithBool:onlyWatch];
    v74 = [v68 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], v69, *MEMORY[0x277D18588], v71, *MEMORY[0x277D18668], _FTCopyGzippedData, *MEMORY[0x277D18598], v72, *MEMORY[0x277D18650], @"_SMSServiceRelayToWatchOnly", v73, 0}];

    if ([capabilitiesCopy count])
    {
      [v74 setObject:capabilitiesCopy forKey:@"requiredCapabilitiesForSMSRelay"];
    }

    if ([excludedCapabilitiesCopy count])
    {
      [v74 setObject:excludedCapabilitiesCopy forKey:@"excludedCapabilitiesForSMSRelay"];
    }

    v75 = [(__CFDictionary *)theDict objectForKey:IMDCTMessageDictionaryGUIDKey];
    v32 = [(IMDRelayServiceController *)self sendDataToPeers:v74 guid:v75 forcedCallerID:myCTPhoneNumber shouldFilterRecepients:1 requestProxySend:0 dontSendTo:pairedDevice sentToDevices:0];
  }

  if (IMOSLoggingEnabled())
  {
    v76 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = @"NO";
      if (uploadCopy)
      {
        v77 = @"YES";
      }

      *buf = 138412290;
      v128 = v77;
      _os_log_impl(&dword_22B4CC000, v76, OS_LOG_TYPE_INFO, "Relaying to local device, requiresUpload %@", buf, 0xCu);
    }
  }

  if (watchCopy)
  {
    goto LABEL_134;
  }

  if (uploadCopy)
  {
    localDevice = [(IMDRelayServiceController *)self localDevice];
    v79 = localDevice == 0;

    if (!v79)
    {
      if (IMOSLoggingEnabled())
      {
        v80 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v128 = theDict;
          _os_log_impl(&dword_22B4CC000, v80, OS_LOG_TYPE_INFO, "Relaying dict containing MMS to local device. %{sensitive}@ ", buf, 0xCu);
        }
      }

      v81 = &IMDRelayLocalMessageTypeIncomingDownloadMessage;
      goto LABEL_133;
    }
  }

  localDevice2 = [(IMDRelayServiceController *)self localDevice];
  if (localDevice2)
  {
    isLocalDeviceProxyRegistered = [(IMDRelayServiceController *)self isLocalDeviceProxyRegistered];

    if (!isLocalDeviceProxyRegistered)
    {
      v81 = &IMDRelayLocalMessageTypeIncomingTextMessage;
LABEL_133:
      v84 = *v81;
      v123 = IMDRelayLocalMessageDictionaryIncomingDictKey;
      v124 = theDict;
      v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      v86 = JWEncodeDictionary();
      _FTCopyGzippedData2 = [v86 _FTCopyGzippedData];
      v121[0] = IMDRelayLocalMessageDictionaryDictKey;
      v121[1] = IMDRelayLocalMessageDictionaryTypeKey;
      v122[0] = _FTCopyGzippedData2;
      v122[1] = v84;
      v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
      [(IMDRelayServiceController *)self sendToLocalPeers:v88];
    }
  }

LABEL_134:

LABEL_135:
  peersCopy = theDict;
LABEL_40:

  return v32;
}

- (void)sendDeleteCommand:(id)command forChatGUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  dCopy = d;
  v8 = +[IMDCKUtilities sharedInstance];
  cloudKitSyncingEnabled = [v8 cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Forwarding delete command to all other devices", buf, 2u);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  pairedDevice = [(IMDRelayServiceController *)self pairedDevice];

  v12 = IMOSLoggingEnabled();
  if (pairedDevice)
  {
    if (v12)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Send delete command only to the paired device", buf, 2u);
      }

      goto LABEL_10;
    }

LABEL_11:
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 existingChatWithGUID:dCopy];

    if (v14)
    {
      v15 = JWEncodeDictionary();
      _FTCopyGzippedData = [v15 _FTCopyGzippedData];

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = commandCopy;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Forwarding delete command :%@", buf, 0xCu);
        }
      }

      v18 = MEMORY[0x277CBEAC0];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:181];
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
      v21 = [v18 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], v19, *MEMORY[0x277D18588], _FTCopyGzippedData, *MEMORY[0x277D18598], v20, *MEMORY[0x277D18650], 0}];

      if (cloudKitSyncingEnabled)
      {
        [(IMDRelayServiceController *)self _sendMessageToAllSMSRelayDevicesWithOptions:v21];
      }

      else
      {
        [(IMDRelayServiceController *)self _sendMessageToPairedDeviceWithOptions:v21];
      }
    }

    goto LABEL_21;
  }

  if (v12)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = commandCopy;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "iCloud syncing not enbabled droping delete command to all other devices, (command %@)", buf, 0xCu);
    }
  }

LABEL_21:
}

- (void)sendRecoverCommand:(id)command forChatGUID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  dCopy = d;
  v8 = +[IMDCKUtilities sharedInstance];
  cloudKitSyncingEnabled = [v8 cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Forwarding recover command to all other devices", buf, 2u);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  pairedDevice = [(IMDRelayServiceController *)self pairedDevice];

  v12 = IMOSLoggingEnabled();
  if (pairedDevice)
  {
    if (v12)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Send recover command only to the paired device", buf, 2u);
      }

      goto LABEL_10;
    }

LABEL_11:
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 existingChatWithGUID:dCopy];

    if (v14)
    {
      v15 = JWEncodeDictionary();
      _FTCopyGzippedData = [v15 _FTCopyGzippedData];

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = commandCopy;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Forwarding recover command :%@", buf, 0xCu);
        }
      }

      v18 = [MEMORY[0x277CCABB0] numberWithDouble:{*MEMORY[0x277D18828], *MEMORY[0x277D18660], *MEMORY[0x277D18648], *MEMORY[0x277D18588], *MEMORY[0x277D18598], *MEMORY[0x277D18650], MEMORY[0x277CBEC38], MEMORY[0x277CBEC38], &unk_283F4EAC8, _FTCopyGzippedData}];
      v23[4] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:5];

      if (cloudKitSyncingEnabled)
      {
        [(IMDRelayServiceController *)self _sendMessageToAllSMSRelayDevicesWithOptions:v19];
      }

      else
      {
        [(IMDRelayServiceController *)self _sendMessageToPairedDeviceWithOptions:v19];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = dCopy;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Recently Deleted | Early returning: SMSService recoverCommand - chat not found for GUID: %@", buf, 0xCu);
      }
    }

    goto LABEL_25;
  }

  if (v12)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = commandCopy;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "iCloud syncing not enbabled droping recover command to all other devices, (command %@)", buf, 0xCu);
    }
  }

LABEL_25:
}

- (void)sendEditedMessage:(id)message toChat:(id)chat fromCallerID:(id)d backwardCompatabilityText:(id)text
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  dCopy = d;
  textCopy = text;
  copyForBackwardsCompatibility = [messageCopy copyForBackwardsCompatibility];
  [copyForBackwardsCompatibility setBody:textCopy];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = copyForBackwardsCompatibility;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Device doesn't support SMS, sending backwards compatibility edit to relay devices: %@", &v20, 0xCu);
    }
  }

  v16 = [IMDRelayServiceController _convertIMMessageItemToOutgoingRelayDictionary:copyForBackwardsCompatibility chat:chatCopy];
  guid = [messageCopy guid];
  participants = [chatCopy participants];
  v19 = [IMDRelayServiceController _convertIMDHandlesToArray:participants];
  -[IMDRelayServiceController _relayEditedMessage:messageGUID:serializedHandles:chatStyle:callerID:](self, "_relayEditedMessage:messageGUID:serializedHandles:chatStyle:callerID:", v16, guid, v19, [chatCopy style], dCopy);
}

- (void)relayMessage:(id)message chat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication forceReflection:(BOOL)reflection relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions callerID:(id)self0 iMessageCapability:(int64_t)self1 requiredCapabilities:(id)self2
{
  LOBYTE(v13) = 0;
  LOBYTE(v12) = restrictions;
  [(IMDRelayServiceController *)self relayMessage:message chat:chat didSendSMS:s attemptingReplication:replication forceReflection:reflection relayToWatchOnly:only shouldDisableScreenTimeRestrictions:v12 callerID:d iMessageCapability:capability requiredCapabilities:capabilities skipServiceForSending:v13];
}

- (void)relayMessage:(id)message chat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication forceReflection:(BOOL)reflection relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions callerID:(id)self0 iMessageCapability:(int64_t)self1 requiredCapabilities:(id)self2 skipServiceForSending:(BOOL)self3
{
  onlyCopy = only;
  replicationCopy = replication;
  reflectionCopy = reflection;
  sCopy = s;
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  dCopy = d;
  capabilitiesCopy = capabilities;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "We have peer devices, relaying message...", buf, 2u);
    }
  }

  balloonBundleID = [messageCopy balloonBundleID];
  v34 = [balloonBundleID isEqualToString:*MEMORY[0x277D19730]];

  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v22 = [fileTransferGUIDs count] != 0;

  if (messageCopy && [(IMDRelayServiceController *)self _canRelayMessage:messageCopy forChat:chatCopy isOTC:0])
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    participants = [chatCopy participants];
    v33 = [IMDRelayServiceController _convertIMDHandlesToArray:participants];

    value = [IMDRelayServiceController _convertIMMessageItemToOutgoingRelayDictionary:messageCopy chat:chatCopy];
    if (value)
    {
      CFDictionarySetValue(v23, IMDRelayMessageItemDictionary, value);
      if (v33)
      {
        CFDictionarySetValue(v23, IMDCTMessageDictionaryReceipientsKey, v33);
      }

      v25 = [MEMORY[0x277CCABB0] numberWithInteger:capability];
      if (v25)
      {
        CFDictionarySetValue(v23, IMDRelayMessageDictionaryiMessageCapability, v25);
      }

      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isSatelliteContinuityEnabled = [mEMORY[0x277D1A9B8] isSatelliteContinuityEnabled];

      if ((isSatelliteContinuityEnabled & sending) == 1)
      {
        CFDictionarySetValue(v23, IMDRelayMessageItemDictionarySkipServiceForSendingKey, MEMORY[0x277CBEC38]);
      }

      if (replicationCopy)
      {
        CFDictionarySetValue(v23, IMDRelayMessageDictionaryAttemptedOutgoingReplicationKey, MEMORY[0x277CBEC38]);
      }

      if (reflectionCopy)
      {
        CFDictionarySetValue(v23, IMDRelayMessageDictionaryForcedShowOnlyKey, MEMORY[0x277CBEC38]);
      }

      if ([messageCopy isSOS])
      {
        CFDictionarySetValue(v23, IMDRelayMessageItemDictionarySkipServiceForSendingKey, MEMORY[0x277CBEC38]);
      }

      v28 = _IMDRelayChatStyleStringFromChatStyle([chatCopy style]);
      if (v28)
      {
        CFDictionarySetValue(v23, IMDRelayMessageDictionaryChatStyleKey, v28);
      }

      guid = [messageCopy guid];
      LOBYTE(v31) = v22 & (v34 ^ 1);
      [(IMDRelayServiceController *)self _relayMessageDict:v23 messageID:guid forcedCallerID:dCopy didSendSMS:sCopy relayToWatchOnly:onlyCopy shouldDisableScreenTimeRestrictions:restrictions hasAttachments:v31 requiredCapabilities:capabilitiesCopy];
    }

    else if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Failed to create an Message Dictionary from the IM Message, Original Message: %@", buf, 0xCu);
      }
    }
  }
}

- (void)sendReadReceiptForMessage:(id)message toChat:(id)chat reflectOnly:(BOOL)only
{
  onlyCopy = only;
  messageCopy = message;
  guid = [messageCopy guid];
  timeRead = [messageCopy timeRead];

  [(IMDRelayServiceController *)self sendReadReceiptForMessageGUID:guid timeRead:timeRead reflectOnly:onlyCopy];
}

- (void)sendReadReceiptForMessageGUID:(id)d timeRead:(id)read reflectOnly:(BOOL)only
{
  onlyCopy = only;
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  readCopy = read;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = dCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Marking message as read: %@", &v13, 0xCu);
    }
  }

  if (!readCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = dCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Trying to mark with a nil timeRead, setting to [NSDate now]: %@", &v13, 0xCu);
      }
    }

    readCopy = [MEMORY[0x277CBEAA8] now];
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v12 setObject:readCopy forKeyedSubscript:IMDRelayMessageDictionaryTimeReadKey];
  if (onlyCopy)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:IMDRelayMessageDictionaryForcedShowOnlyKey];
  }

  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:147 eventName:IMDRelayLocalMessageTypeRead forGUID:dCopy messageExtras:v12 shouldFilterRecipients:0 forcedCallerID:0];
}

- (void)messageSent:(id)sent onService:(id)service compatibilityService:(id)compatibilityService wasInterworked:(BOOL)interworked
{
  interworkedCopy = interworked;
  v18 = *MEMORY[0x277D85DE8];
  sentCopy = sent;
  serviceCopy = service;
  compatibilityServiceCopy = compatibilityService;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = sentCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "RELAY: Going to Tell all my clients that message with GUID %@ has been sent", &v16, 0xCu);
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = v14;
  if (serviceCopy)
  {
    [v14 setObject:serviceCopy forKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
  }

  if (compatibilityServiceCopy)
  {
    [v15 setObject:compatibilityServiceCopy forKeyedSubscript:IMDRelayMessageItemDictionaryCompatibilityServiceKey];
  }

  if (interworkedCopy)
  {
    [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:IMDRelayMessageDictionaryInterworkedKey];
  }

  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:146 eventName:IMDRelayLocalMessageTypeSent forGUID:sentCopy messageExtras:v15];
}

- (void)messageDelivered:(id)delivered
{
  v8 = *MEMORY[0x277D85DE8];
  deliveredCopy = delivered;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = deliveredCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "RELAY: Going to Tell all my clients that message with GUID %@ has been delivered", &v6, 0xCu);
    }
  }

  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:101 eventName:IMDRelayLocalMessageTypeDelivered forGUID:deliveredCopy];
}

- (void)messageReadByRemote:(id)remote
{
  remoteCopy = remote;
  guid = [remoteCopy guid];
  timeRead = [remoteCopy timeRead];

  [(IMDRelayServiceController *)self messageGUIDReadByRemote:guid timeRead:timeRead];
}

- (void)messageGUIDReadByRemote:(id)remote timeRead:(id)read
{
  v15 = *MEMORY[0x277D85DE8];
  remoteCopy = remote;
  readCopy = read;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = remoteCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "RELAY: Going to Tell all my clients that message with GUID %@ has been read", buf, 0xCu);
    }
  }

  v9 = IMDRelayLocalMessageTypeRemoteRead;
  v11 = IMDRelayMessageDictionaryTimeReadKey;
  v12 = readCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:102 eventName:v9 forGUID:remoteCopy messageExtras:v10];
}

- (void)messageFailedToSend:(id)send
{
  v8 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = sendCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "RELAY: Going to Tell all my clients that message with GUID %@ has failed to send", &v6, 0xCu);
    }
  }

  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:149 eventName:IMDRelayLocalMessageTypeError forGUID:sendCopy];
}

- (void)_broadcastMessageEventWithCommand:(int64_t)command eventName:(id)name forGUID:(id)d messageExtras:(id)extras shouldFilterRecipients:(BOOL)recipients forcedCallerID:(id)iD
{
  recipientsCopy = recipients;
  dCopy = d;
  extrasCopy = extras;
  iDCopy = iD;
  v14 = MEMORY[0x277CBEB38];
  nameCopy = name;
  v15 = objc_alloc_init(v14);
  [v15 setObject:dCopy forKeyedSubscript:IMDRelayMessageDictionaryGUIDKey];
  if (extrasCopy)
  {
    [v15 addEntriesFromDictionary:extrasCopy];
  }

  v36 = extrasCopy;
  v33 = v15;
  v31 = JWEncodeDictionary();
  _FTCopyGzippedData = [v31 _FTCopyGzippedData];
  if (!iDCopy)
  {
    v16 = +[IMDMessageStore sharedInstance];
    v17 = [v16 itemWithGUID:dCopy];

    iDCopy = [v17 destinationCallerID];

    if (!iDCopy)
    {
      iDCopy = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    }
  }

  v29 = MEMORY[0x277CBEB38];
  v18 = *MEMORY[0x277D18660];
  v19 = *MEMORY[0x277D18648];
  v20 = *MEMORY[0x277D185A0];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:command];
  v22 = *MEMORY[0x277D18588];
  v23 = IDSGetUUIDData();
  v24 = *MEMORY[0x277D18668];
  v25 = iDCopy;
  v26 = *MEMORY[0x277D18598];
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v28 = [v29 dictionaryWithObjectsAndKeys:{v18, MEMORY[0x277CBEC38], v19, MEMORY[0x277CBEC28], v20, v21, v22, v23, v24, _FTCopyGzippedData, v26, v27, *MEMORY[0x277D18650], 0}];

  [(IMDRelayServiceController *)self sendDataToPeers:v28 forcedCallerID:v25 shouldFilterRecepients:recipientsCopy requestProxySend:0 dontSendTo:0];
  [(IMDRelayServiceController *)self _forwardMessageEventToLocalPeers:nameCopy forGUID:dCopy metadata:v36];
}

- (void)_forwardMessageEventToLocalPeers:(id)peers forGUID:(id)d metadata:(id)metadata
{
  v19[2] = *MEMORY[0x277D85DE8];
  peersCopy = peers;
  dCopy = d;
  metadataCopy = metadata;
  localDevice = [(IMDRelayServiceController *)self localDevice];
  if (localDevice)
  {
    v12 = localDevice;
    isLocalDeviceProxyRegistered = [(IMDRelayServiceController *)self isLocalDeviceProxyRegistered];

    if (!isLocalDeviceProxyRegistered)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v14 setObject:dCopy forKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
      if (metadataCopy)
      {
        [v14 addEntriesFromDictionary:metadataCopy];
      }

      v15 = JWEncodeDictionary();
      _FTCopyGzippedData = [v15 _FTCopyGzippedData];
      v18[0] = IMDRelayLocalMessageDictionaryDictKey;
      v18[1] = IMDRelayLocalMessageDictionaryTypeKey;
      v19[0] = _FTCopyGzippedData;
      v19[1] = peersCopy;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
      [(IMDRelayServiceController *)self sendToLocalPeers:v17];
    }
  }
}

- (BOOL)sendEnrollmentRelatedMessageOverIDS:(id)s deviceToSendTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  sCopy = s;
  toCopy = to;
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService accounts];

  v29 = [(IMDRelayServiceController *)self retrieveAccountAndPhoneAliasForAccounts:accounts shouldFilterRecepients:0 requestProxySend:0 preferredCallerID:0];
  first = [v29 first];
  second = [v29 second];
  if (second)
  {
    v31 = first;
  }

  else
  {
    linkedUserURIs = [toCopy linkedUserURIs];
    second = [linkedUserURIs firstObject];

    relayService2 = [(IMDRelayServiceController *)self relayService];
    accounts2 = [relayService2 accounts];
    v31 = [(IMDRelayServiceController *)self accountForAlias:second fromAccounts:accounts2];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "This is a non telphony device trying to enroll itself into SMS Relay", buf, 2u);
      }
    }
  }

  v14 = [(IMDRelayServiceController *)self _destinationForDevice:toCopy forcedIdentity:second];
  Mutable = [sCopy mutableCopy];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v16 = IDSCopyIDForPhoneNumber();
  if (v16)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D185E0], v16);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D6F28();
  }

  v17 = Mutable;
  [(IMDRelayServiceController *)self _checkAndSetRelayService];
  v18 = MEMORY[0x277D1AA08];
  relayService3 = [(IMDRelayServiceController *)self relayService];
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v21 = IMSingleObjectArray();
  __imSetFromArray = [v21 __imSetFromArray];
  v33 = 0;
  v34 = 0;
  v23 = [v18 service:relayService3 sendMessage:dictionary fromAccount:v31 toDestinations:__imSetFromArray priority:300 options:v17 identifier:&v34 error:&v33];
  v24 = v34;
  v25 = v33;

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = @"NO";
      *buf = 138413314;
      v36 = second;
      if (v23)
      {
        v27 = @"YES";
      }

      v37 = 2112;
      v38 = v27;
      v39 = 2112;
      v40 = v25;
      v41 = 2112;
      v42 = v31;
      v43 = 2112;
      v44 = v24;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "SMS relay Enrollment data sent to: %@   success: %@   error: %@   account: %@  identifier %@", buf, 0x34u);
    }
  }

  return v23;
}

- (void)reflectGroupMutation:(id)mutation callerID:(id)d didOccurLocally:(BOOL)locally
{
  locallyCopy = locally;
  v18[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  mutationCopy = mutation;
  createDictionary = [mutationCopy createDictionary];
  v11 = JWEncodeDictionary();
  _FTCopyOptionallyGzippedData = [v11 _FTCopyOptionallyGzippedData];
  v17[0] = @"D";
  v17[1] = @"C";
  v18[0] = _FTCopyOptionallyGzippedData;
  v18[1] = &unk_283F4EAE0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  guid = [mutationCopy guid];

  uUIDString = [guid UUIDString];
  LOWORD(v16) = 0;
  [(IMDRelayServiceController *)self _relayMessageDict:v13 command:190 messageID:uUIDString forcedCallerID:dCopy didSendSMS:locallyCopy relayToWatchOnly:0 shouldDisableScreenTimeRestrictions:v16 hasAttachments:0 requiredCapabilities:?];
}

- (id)_extraOptionsForReachabilityRelayWithRequestID:(id)d
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D18650];
  v8[0] = *MEMORY[0x277D185C0];
  v8[1] = v3;
  v9[0] = MEMORY[0x277CBEC38];
  v9[1] = &unk_283F4EAF8;
  v8[2] = *MEMORY[0x277D18630];
  v9[2] = d;
  v4 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)sendReachabilityRequest:(id)request requestID:(id)d
{
  v21[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  requestCopy = request;
  createDictionary = [requestCopy createDictionary];
  v9 = JWEncodeDictionary();
  _FTCopyOptionallyGzippedData = [v9 _FTCopyOptionallyGzippedData];
  v20[0] = @"D";
  v20[1] = @"C";
  v21[0] = _FTCopyOptionallyGzippedData;
  v21[1] = &unk_283F4EA98;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  context = [requestCopy context];

  senderLastAddressedHandle = [context senderLastAddressedHandle];
  v19 = MEMORY[0x277CBEBF8];
  v14 = [(IMDRelayServiceController *)self _extraOptionsForReachabilityRelayWithRequestID:dCopy];
  LOWORD(v18) = 0;
  [(IMDRelayServiceController *)self _relayMessageDict:v11 command:190 messageID:dCopy forcedCallerID:senderLastAddressedHandle didSendSMS:0 relayToWatchOnly:0 shouldDisableScreenTimeRestrictions:v18 hasAttachments:&v19 sentToDevices:v14 extraOptions:0 requiredCapabilities:?];

  v15 = v19;
  v16 = v19;

  return v15;
}

- (void)sendReachabilityResponse:(id)response requestID:(id)d toToken:(id)token toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier
{
  v39[2] = *MEMORY[0x277D85DE8];
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  createDictionary = [response createDictionary];
  v34 = JWEncodeDictionary();
  v38[0] = @"D";
  v38[1] = @"C";
  _FTCopyOptionallyGzippedData = [v34 _FTCopyOptionallyGzippedData];
  v39[0] = _FTCopyOptionallyGzippedData;
  v39[1] = &unk_283F4EAB0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v15 = [(IMDRelayServiceController *)self _sendOptionsForRelayMessage:v14 command:190 guid:dCopy];
  v16 = [v15 mutableCopy];

  [v16 setObject:fromIdentifierCopy forKeyedSubscript:*MEMORY[0x277D185E0]];
  v17 = [(IMDRelayServiceController *)self _extraOptionsForReachabilityRelayWithRequestID:dCopy];

  [v16 addEntriesFromDictionary:v17];
  v18 = [(IMDRelayServiceController *)self idsDeviceFromPushToken:tokenCopy];

  v32 = v18;
  v19 = [(IMDRelayServiceController *)self _destinationForDevice:v18 forcedIdentity:fromIdentifierCopy];
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService accounts];
  v22 = [(IMDRelayServiceController *)self accountForAlias:fromIdentifierCopy fromAccounts:accounts];

  v23 = MEMORY[0x277D1AA08];
  relayService2 = [(IMDRelayServiceController *)self relayService];
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v26 = IMSingleObjectArray();
  __imSetFromArray = [v26 __imSetFromArray];
  v36 = 0;
  v37 = 0;
  v28 = [v23 service:relayService2 sendMessage:dictionary fromAccount:v22 toDestinations:__imSetFromArray priority:300 options:v16 identifier:&v37 error:&v36];
  v29 = v37;
  v30 = v36;

  if (v30 || (v28 & 1) == 0)
  {
    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7038(v19, v31);
    }
  }
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds
{
  v26[7] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isPriorityMessagesEnabled = [mEMORY[0x277D1A9B8] isPriorityMessagesEnabled];

  if (!isPriorityMessagesEnabled)
  {
LABEL_16:
    LOBYTE(v20) = 0;
    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Sending Priority Message to peers", v24, 2u);
    }
  }

  if (![dsCopy count])
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "  No message guids, bailing.", v24, 2u);
      }
    }

    goto LABEL_16;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:dsCopy forKeyedSubscript:@"pm"];
  v9 = JWEncodeDictionary();
  _FTCopyGzippedData = [v9 _FTCopyGzippedData];
  v11 = MEMORY[0x277CBEC38];
  v12 = *MEMORY[0x277D18648];
  v25[0] = *MEMORY[0x277D18660];
  v25[1] = v12;
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = MEMORY[0x277CBEC38];
  v13 = *MEMORY[0x277D185A0];
  v26[2] = MEMORY[0x277CBEC28];
  v14 = *MEMORY[0x277D18668];
  v25[2] = v13;
  v25[3] = v14;
  v15 = [dsCopy objectAtIndexedSubscript:0];
  v16 = IDSGetUUIDData();
  v26[3] = v16;
  v25[4] = *MEMORY[0x277D18588];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:126];
  v26[4] = v17;
  v25[5] = *MEMORY[0x277D18598];
  v25[6] = @"_SMSServiceRelayToWatchOnly";
  v26[5] = _FTCopyGzippedData;
  v26[6] = v11;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  _callerIDForRelay = [(IMDRelayServiceController *)self _callerIDForRelay];
  v20 = [(IMDRelayServiceController *)self sendDataToPeers:v18 forcedCallerID:_callerIDForRelay shouldFilterRecepients:1 requestProxySend:0 dontSendTo:0];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v24[0] = 67109120;
      v24[1] = v20;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Success sending data to peers: %{BOOL}d", v24, 8u);
    }
  }

LABEL_17:
  return v20;
}

+ (IMDRelayServiceController)sharedInstance
{
  if (qword_2814210E0 != -1)
  {
    sub_22B7DA010();
  }

  v3 = qword_281420F50;

  return v3;
}

- (IMDRelayServiceController)init
{
  v10.receiver = self;
  v10.super_class = IMDRelayServiceController;
  v2 = [(IMDRelayServiceController *)&v10 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting up Relay service", v9, 2u);
      }
    }

    [(IMDRelayServiceController *)v2 _setupIDSRelayServices];
    [(IMDRelayServiceController *)v2 updateRelayStatus];
    [(IMDRelayServiceController *)v2 _registerForAccountChanges];
    [(IMDRelayServiceController *)v2 _setupMMSObservation];
    v4 = [[IMDRelayEnrollmentController alloc] initWithServiceDelegate:v2 dispatchDelegate:v2];
    enrollmentController = v2->_enrollmentController;
    v2->_enrollmentController = v4;

    v6 = objc_alloc_init(IMDRelayDeletionController);
    deletionController = v2->_deletionController;
    v2->_deletionController = v6;
  }

  return v2;
}

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Dealloc", buf, 2u);
    }
  }

  [(IMDRelayServiceController *)self _teardownMMSObservation];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v5.receiver = self;
  v5.super_class = IMDRelayServiceController;
  [(IMDRelayServiceController *)&v5 dealloc];
}

- (NSArray)accounts
{
  [(IMDRelayServiceController *)self _checkAndSetRelayService];
  relayService = [(IMDRelayServiceController *)self relayService];
  accounts = [relayService accounts];

  return accounts;
}

- (IMOneTimeCodeUtilities)otcUtilities
{
  otcUtilities = self->_otcUtilities;
  if (!otcUtilities)
  {
    v4 = objc_alloc_init(MEMORY[0x277D1AB18]);
    v5 = self->_otcUtilities;
    self->_otcUtilities = v4;

    otcUtilities = self->_otcUtilities;
  }

  return otcUtilities;
}

- (void)updateRelayStatus
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(IMDRelayServiceController *)self hasRelayDevice])
  {
    _hasPhoneNumberAliasActive = [(IMDRelayServiceController *)self _hasPhoneNumberAliasActive];
  }

  else
  {
    _hasPhoneNumberAliasActive = 0;
  }

  v4 = IMGetDomainBoolForKey();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Status Of Remote Approval for Relay is %@", &v14, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (_hasPhoneNumberAliasActive)
      {
        v8 = @"YES";
      }

      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Does this device have SMS Relay capable devices on its account? %@", &v14, 0xCu);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = v9;
  v11 = *MEMORY[0x277D19000];
  if (!_hasPhoneNumberAliasActive)
  {
    [v9 setObject:MEMORY[0x277CBEC28] forKey:v11];
    goto LABEL_20;
  }

  [v9 setObject:MEMORY[0x277CBEC38] forKey:v11];
  if ((v4 & 1) == 0)
  {
LABEL_20:
    v12 = MEMORY[0x277CBEC28];
    goto LABEL_21;
  }

  v12 = MEMORY[0x277CBEC38];
LABEL_21:
  [v10 setObject:v12 forKey:*MEMORY[0x277D18FF8]];
  [v10 setObject:v12 forKey:*MEMORY[0x277D18FF0]];
  _account = [(IMDRelayServiceController *)self _account];
  [_account writeAccountDefaults:v10];

  [(IMDRelayServiceController *)self updateMMSCapability];
}

- (id)_account
{
  v2 = +[IMDAccountController sharedAccountController];
  v3 = [v2 anySessionForServiceName:*MEMORY[0x277D1A610]];
  account = [v3 account];

  return account;
}

- (NSString)_callerIDForRelay
{
  _callerIDAccountFromSettings = [(IMDRelayServiceController *)self _callerIDAccountFromSettings];
  v4 = [(IMDRelayServiceController *)self _callerIDForRelayAccountID:_callerIDAccountFromSettings];

  return v4;
}

- (id)_callerIDAccountFromSettings
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = IMPreferredAccountMap();
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v2;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Account Maps Currently Reads  %@", &v11, 0xCu);
      }
    }

    v4 = [v2 objectForKey:*MEMORY[0x277D1A620]];
    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = v4;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "iMessage Account Current reads  %@", &v11, 0xCu);
        }
      }

      v6 = [v4 objectForKey:@"guid"];
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = v6;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "iMessage Caller ID Guid reads  %@", &v11, 0xCu);
        }
      }

      if (v6)
      {
        v8 = v6;
      }

      else if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Unable to locate CallerID Account in Prefered Account Map", &v11, 2u);
        }
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

- (BOOL)_canRelayMMS
{
  _account = [(IMDRelayServiceController *)self _account];
  accountDefaults = [_account accountDefaults];
  v4 = [accountDefaults objectForKeyedSubscript:*MEMORY[0x277D18FF0]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)_localDeviceSupportsSMS
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = IMSMSEnabled();
      v4 = @"NO";
      if (v3)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "isSMSEnabled %@", &v6, 0xCu);
    }
  }

  return IMSMSEnabled();
}

- (BOOL)_localDeviceSupportsEmergencySMS
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = IMSMSEnabled();
      v4 = @"NO";
      if (v3)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "isEmergencySMSEnabled %@", &v6, 0xCu);
    }
  }

  return IMSMSEnabled();
}

- (BOOL)_localDeviceSupportsSMSAndHasAPhoneNumber
{
  v13 = *MEMORY[0x277D85DE8];
  myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  v3 = [myCTPhoneNumber length];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = IMSMSEnabled();
      v6 = @"NO";
      if (v5)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (v3)
      {
        v6 = @"YES";
      }

      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "isSMSEnabled %@ Has valid Phone Number %@", &v9, 0x16u);
    }
  }

  return IMSMSEnabled() & (v3 != 0);
}

- (BOOL)_localDeviceSupportsSMSAndDoesNotHaveAPhoneNumberForSIMID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    myCTPhoneNumber = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy];

    v9 = 0;
    if (myCTPhoneNumber)
    {
      phoneNumber = [myCTPhoneNumber phoneNumber];
      v8 = [phoneNumber length];

      if (!v8)
      {
        v9 = 1;
      }
    }
  }

  else
  {
    myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    v9 = [myCTPhoneNumber length] == 0;
  }

  v10 = IMSMSEnabled();
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      if (v10)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if (v9)
      {
        v12 = @"YES";
      }

      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "isSMSEnabled %@ Does not have phone number to send with %@", &v15, 0x16u);
    }
  }

  return v9 & v10;
}

- (id)_IDSService
{
  [(IMDRelayServiceController *)self _checkAndSetRelayService];

  return [(IMDRelayServiceController *)self relayService];
}

- (void)_prepareSMSRelayBlockForMessageDictionary:(id)dictionary messageGUID:(id)d serviceName:(id)name
{
  dictionaryCopy = dictionary;
  dCopy = d;
  nameCopy = name;
  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_22B6E8B58;
  v17 = &unk_278708870;
  v11 = dictionaryCopy;
  v18 = v11;
  objc_copyWeak(&v20, &location);
  v12 = nameCopy;
  v19 = v12;
  v13 = _Block_copy(&v14);
  [(IMDRelayServiceController *)self _storeSMSRelayExecutionBlock:v13 forMessageGUID:dCopy, v14, v15, v16, v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (BOOL)_storeSMSRelayExecutionBlock:(id)block forMessageGUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dCopy = d;
  v8 = [dCopy length];
  if (blockCopy)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = [(NSMutableDictionary *)self->_smsRelayBlockMap objectForKey:dCopy];
    if (v11 && IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = dCopy;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Using existing spam relay mapping from %@ to %@", &v21, 0x16u);
      }
    }

    smsRelayBlockMap = self->_smsRelayBlockMap;
    if (!smsRelayBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v16 = self->_smsRelayBlockMap;
      p_smsRelayBlockMap = &self->_smsRelayBlockMap;
      *p_smsRelayBlockMap = Mutable;

      smsRelayBlockMap = *p_smsRelayBlockMap;
    }

    v17 = [blockCopy copy];
    [(NSMutableDictionary *)smsRelayBlockMap setObject:v17 forKey:dCopy];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = _Block_copy(blockCopy);
        v21 = 138412546;
        v22 = dCopy;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Generated mapping spam relay from %@ to %@", &v21, 0x16u);
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Cannot store spam relay completion block for guid as either guid or completion block is invalid", &v21, 2u);
    }

    goto LABEL_23;
  }

LABEL_24:

  return v10;
}

- (void)_executeSMSRelayBlockForMessageWithGUID:(id)d category:(int64_t)category subCategory:(int64_t)subCategory
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [(NSMutableDictionary *)self->_smsRelayBlockMap objectForKey:dCopy];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, category, subCategory);
    [(IMDRelayServiceController *)self _clearSMSRelayMapForMessageWithGUID:dCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_executeSpamRelayCompletionBlockForMessageGuid: %@ Already ran completion block?, not doing anything", &v12, 0xCu);
    }
  }
}

- (void)_clearSMSRelayMapForMessageWithGUID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = dCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing SMS relay block mapping for %@", &v7, 0xCu);
    }
  }

  if (dCopy)
  {
    [(NSMutableDictionary *)self->_smsRelayBlockMap removeObjectForKey:dCopy];
    if (![(NSMutableDictionary *)self->_smsRelayBlockMap count])
    {
      smsRelayBlockMap = self->_smsRelayBlockMap;
      self->_smsRelayBlockMap = 0;
    }
  }
}

- (void)didReceiveMessageError:(id)error
{
  errorCopy = error;
  v3 = +[IMDMessageStore sharedInstance];
  v4 = [v3 itemWithGUID:errorCopy];

  service = [v4 service];
  accountID = [v4 accountID];
  v7 = +[IMDAccountController sharedInstance];
  v8 = [v7 accountForAccountID:accountID];

  session = [v8 session];
  if (!session)
  {
    v10 = +[IMDAccountController sharedInstance];
    session = [v10 anySessionForServiceName:service];
  }

  [session didReceiveError:4 forMessageID:errorCopy forceError:0];
}

+ (id)_convertIMMessageItemToIncomingRelayDictionary:(id)dictionary chat:(id)chat serviceName:(id)name overridingAttachmentData:(id)data
{
  v92 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  chatCopy = chat;
  nameCopy = name;
  dataCopy = data;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 setObject:@"1" forKeyedSubscript:IMDCTMessageDictionaryVersionKey];
  guid = [dictionaryCopy guid];
  [v10 setObject:guid forKeyedSubscript:IMDCTMessageDictionaryGUIDKey];

  subject = [dictionaryCopy subject];
  [v10 setObject:subject forKeyedSubscript:IMDCTMessageDictionarySubjectKey];

  sender = [dictionaryCopy sender];
  [v10 setObject:sender forKeyedSubscript:IMDCTMessageDictionarySenderKey];

  time = [dictionaryCopy time];
  [v10 setObject:time forKeyedSubscript:IMDCTMessageDictionaryDateKey];

  [v10 setObject:nameCopy forKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(chatCopy, "isFiltered") & 0xF}];
  [v10 setObject:v15 forKeyedSubscript:IMDRelaySpamCategoryKey];

  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(chatCopy, "isFiltered") >> 4}];
  [v10 setObject:v16 forKeyedSubscript:IMDRelaySpamSubCategoryKey];

  [v10 setObject:IMDCTMessageDictionaryTypeSMS forKeyedSubscript:IMDCTMessageDictionaryTypeKey];
  participants = [chatCopy participants];
  v18 = [IMDRelayServiceController _convertIMDHandlesToArrayOfIDs:participants];
  [v10 setObject:v18 forKeyedSubscript:IMDCTMessageDictionaryReceipientsKey];

  myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  context = [dictionaryCopy context];
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];

  if (!context)
  {
    v21 = ctSubscriptionInfo;
    if (!ctSubscriptionInfo)
    {
      goto LABEL_6;
    }

    destinationCallerID = [dictionaryCopy destinationCallerID];

    if (!destinationCallerID)
    {
      context = 0;
      v21 = ctSubscriptionInfo;
      goto LABEL_12;
    }

    destinationCallerID2 = [dictionaryCopy destinationCallerID];
    destinationCallerID3 = [dictionaryCopy destinationCallerID];
    context = [ctSubscriptionInfo __im_subscriptionContextForForSimID:destinationCallerID2 phoneNumber:destinationCallerID3];
  }

  v21 = ctSubscriptionInfo;
LABEL_6:
  if (context && v21)
  {
    v76 = [v21 __im_subscriptionContextOrDefaultForForSlotID:{objc_msgSend(context, "slotID")}];
    goto LABEL_14;
  }

  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_12:
  subscriptions = [v21 subscriptions];
  v26 = [subscriptions count];

  if (!v26)
  {
LABEL_20:
    v76 = 0;
    labelID2 = 0;
    v33 = myCTPhoneNumber;
    goto LABEL_21;
  }

  subscriptions2 = [ctSubscriptionInfo subscriptions];
  v76 = [subscriptions2 objectAtIndexedSubscript:0];

LABEL_14:
  if (!v76)
  {
    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      phoneNumber = [v76 phoneNumber];
      labelID = [v76 labelID];
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(context, "slotID")}];
      *buf = 138413058;
      v85 = v76;
      v86 = 2112;
      v87 = phoneNumber;
      v88 = 2112;
      v89 = labelID;
      v90 = 2112;
      v91 = v31;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Setting receiving context = %@, phoneNumber = %@, simID = %@ for given slotID %@", buf, 0x2Au);
    }
  }

  phoneNumber2 = [v76 phoneNumber];

  labelID2 = [v76 labelID];
  v33 = phoneNumber2;
LABEL_21:
  v70 = v33;
  [v10 setObject:? forKeyedSubscript:?];
  [v10 setObject:labelID2 forKeyedSubscript:IMDCTMessageDictionaryOriginatedDeviceSIMKey];
  v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(dictionaryCopy, "replaceID")}];
  [v10 setObject:v34 forKeyedSubscript:IMDCTMessageDictionaryReplaceMessageKey];

  v35 = MEMORY[0x277CBEC38];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:IMDCTMessageDictionarySendEnabledKey];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

  if (isMissingMessagesEnabled)
  {
    originalGroupID2 = IMChatLookupDomainForServiceName();
    v39 = [chatCopy latestIdentifierForDomain:originalGroupID2];
    if (v39)
    {
      groupID = [chatCopy groupID];
      [v10 setObject:groupID forKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];

      [v10 setObject:v39 forKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
    }

    goto LABEL_29;
  }

  groupID2 = [chatCopy groupID];

  if (groupID2)
  {
    groupID3 = [chatCopy groupID];
    [v10 setObject:groupID3 forKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];
  }

  originalGroupID = [chatCopy originalGroupID];

  if (originalGroupID)
  {
    originalGroupID2 = [chatCopy originalGroupID];
    [v10 setObject:originalGroupID2 forKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
LABEL_29:
  }

  displayName = [chatCopy displayName];

  if (displayName)
  {
    displayName2 = [chatCopy displayName];
    [v10 setObject:displayName2 forKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
LABEL_37:

    goto LABEL_38;
  }

  if ([chatCopy isChatBot])
  {
    displayName2 = [chatCopy businessName];
    [v10 setObject:displayName2 forKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isRelayChatBotEnabled = [mEMORY[0x277D1A9B8]2 isRelayChatBotEnabled];

    if (isRelayChatBotEnabled)
    {
      v48 = v35;
    }

    else
    {
      v48 = MEMORY[0x277CBEC28];
    }

    [v10 setObject:v48 forKeyedSubscript:IMDCTMessageDictionarySendEnabledKey];
    goto LABEL_37;
  }

LABEL_38:
  mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x277D1A9B8]3 isReportJunkEverywhereEnabled];

  if (isReportJunkEverywhereEnabled && +[IMDCarrierReportJunkHelper supportsReportJunkForMessage:chatStyle:](IMDCarrierReportJunkHelper, "supportsReportJunkForMessage:chatStyle:", dictionaryCopy, [chatCopy style]))
  {
    v51 = [MEMORY[0x277D1A8F8] carrierNameForPhoneNumber:v70];
    if ([v51 length])
    {
      [v10 setObject:v51 forKeyedSubscript:IMDRelayCarrierSupportsReportJunk];
    }
  }

  v52 = +[IMDServiceController sharedController];
  service = [dictionaryCopy service];
  v71 = [v52 serviceWithName:service];

  v54 = [IMDRelayUtilities relayPartsFor:dictionaryCopy overridingAttachmentData:dataCopy];
  if (v54)
  {
    [v10 setObject:v54 forKeyedSubscript:IMDCTMessageDictionaryItemsKey];
    if ([v71 fallbackHashIsContentBased])
    {
      fallbackHash = [MEMORY[0x277CCAB68] stringWithFormat:@"s:tel:%@", v70];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v56 = v54;
      v57 = [v56 countByEnumeratingWithState:&v79 objects:v83 count:16];
      if (v57)
      {
        v58 = *v80;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v80 != v58)
            {
              objc_enumerationMutation(v56);
            }

            v60 = [IMDXMSUtilities calculateFallbackHashFragmentFor:*(*(&v79 + 1) + 8 * i)];
            [fallbackHash appendString:v60];
          }

          v57 = [v56 countByEnumeratingWithState:&v79 objects:v83 count:16];
        }

        while (v57);
      }

      v61 = [fallbackHash copy];
      [v10 setObject:v61 forKeyedSubscript:IMDCTMessageDictionaryFallbackHashKey];
    }

    else
    {
      fallbackHash = [dictionaryCopy fallbackHash];
      [v10 setObject:fallbackHash forKeyedSubscript:IMDCTMessageDictionaryFallbackHashKey];
    }

    [v10 setObject:&unk_283F4ED80 forKeyedSubscript:IMDRelaySpamSubCategoryKey];
    criticalMessagingAppName = [dictionaryCopy criticalMessagingAppName];
    if (criticalMessagingAppName)
    {
      [v10 setObject:criticalMessagingAppName forKeyedSubscript:IMDRelayMessageDictionaryCriticalMessagingAppNameKey];
    }

    v65 = +[IMDFilteringController sharedInstance];
    _isSpamFilteringEnabled = [v65 _isSpamFilteringEnabled];

    v67 = +[IMDFilteringController sharedInstance];
    v68 = [v67 _newSMSFilteringSettingsDictForFilterState:_isSpamFilteringEnabled];
    [v10 addEntriesFromDictionary:v68];

    v63 = v10;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v62 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "No compatible item(s) found to relay!", buf, 2u);
      }
    }

    v63 = 0;
  }

  return v63;
}

+ (id)_convertIMMessageItemToOutgoingRelayDictionary:(id)dictionary chat:(id)chat
{
  v63 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v61) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Converting IM Message to NSDictionary", &v61, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  CFDictionarySetValue(v8, IMDCTMessageDictionaryVersionKey, @"1");
  handle = [dictionaryCopy handle];
  if (handle)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryHandleKey, handle);
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA024();
    }
  }

  service = [dictionaryCopy service];
  if (service)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryServiceKey, service);
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA0AC();
    }
  }

  guid = [dictionaryCopy guid];
  if (guid)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryGUIDKey, guid);
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA134();
    }
  }

  v18 = [(__CFDictionary *)v8 objectForKey:IMDRelayMessageItemDictionaryHandleKey];
  if (v18 || ([(__CFDictionary *)v8 objectForKey:IMDRelayMessageItemDictionaryServiceKey], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v59 = [(__CFDictionary *)v8 objectForKey:IMDRelayMessageItemDictionaryGUIDKey];
    v60 = v59 == 0;

    if (v60)
    {
      v57 = 0;
      goto LABEL_87;
    }
  }

  body = [dictionaryCopy body];
  string = [body string];

  if (string)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryPlainBodyKey, string);
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isRelayChatBotEnabled = [mEMORY[0x277D1A9B8] isRelayChatBotEnabled];

  if (isRelayChatBotEnabled)
  {
    body2 = [dictionaryCopy body];
    v24 = JWEncodeCodableObject();

    if (v24)
    {
      CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryBodyDataKey, v24);
    }
  }

  subject = [dictionaryCopy subject];
  if (subject)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionarySubjectKey, subject);
  }

  replyToGUID = [dictionaryCopy replyToGUID];
  if (replyToGUID)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryReplyToGUIDKey, replyToGUID);
  }

  time = [dictionaryCopy time];
  if (time)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryDateKey, time);
  }

  if ([dictionaryCopy isAudioMessage])
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryIsAudioMessageKey, MEMORY[0x277CBEC38]);
  }

  groupID = [chatCopy groupID];

  if (groupID)
  {
    groupID2 = [chatCopy groupID];
    [(__CFDictionary *)v8 setObject:groupID2 forKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

  if (isMissingMessagesEnabled)
  {
    if ([chatCopy style] == 43)
    {
      service2 = [dictionaryCopy service];
      originalGroupID2 = IMChatLookupDomainForServiceName();

      v34 = [chatCopy latestIdentifierForDomain:originalGroupID2];
      if (v34)
      {
        [(__CFDictionary *)v8 setObject:v34 forKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
      }
    }

    else
    {
      originalGroupID2 = IMLogHandleForCategory();
      if (os_log_type_enabled(originalGroupID2, OS_LOG_TYPE_DEBUG))
      {
        sub_22B7DA1BC(originalGroupID2);
      }
    }

    goto LABEL_48;
  }

  originalGroupID = [chatCopy originalGroupID];

  if (originalGroupID)
  {
    originalGroupID2 = [chatCopy originalGroupID];
    [(__CFDictionary *)v8 setObject:originalGroupID2 forKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
LABEL_48:
  }

  displayName = [chatCopy displayName];

  if (displayName)
  {
    displayName2 = [chatCopy displayName];
    [(__CFDictionary *)v8 setObject:displayName2 forKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      LOWORD(v61) = 0;
      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Starting parse", &v61, 2u);
    }
  }

  v39 = [IMDSuperToRelayMessageParser alloc];
  body3 = [dictionaryCopy body];
  v41 = [(IMDSuperToRelayMessageParser *)v39 initWithAttributedString:body3];

  mEMORY[0x277D1A8B8] = [MEMORY[0x277D1A8B8] sharedInstance];
  [mEMORY[0x277D1A8B8] parseContext:v41];

  if (IMOSLoggingEnabled())
  {
    v43 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      LOWORD(v61) = 0;
      _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Done parse", &v61, 2u);
    }
  }

  body4 = [dictionaryCopy body];
  string2 = [body4 string];

  if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = MarcoLoggingStringForMessageData();
      v61 = 138412290;
      v62 = v47;
      _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Plain: %@", &v61, 0xCu);
    }
  }

  outHTML = [(IMDSuperToRelayMessageParser *)v41 outHTML];
  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = MarcoLoggingStringForMessageData();
      v61 = 138412290;
      v62 = v50;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "messageString: %@", &v61, 0xCu);
    }
  }

  if ([(IMDSuperToRelayMessageParser *)v41 isSimpleString])
  {
    v51 = 0;
  }

  else
  {
    body5 = [dictionaryCopy body];
    if ([body5 length])
    {
      v53 = string2 == 0;
    }

    else
    {
      v53 = 1;
    }

    v51 = !v53;
  }

  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = @"NO";
      if (v51)
      {
        v55 = @"YES";
      }

      v61 = 138412290;
      v62 = v55;
      _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "sendXMLVersion: %@", &v61, 0xCu);
    }
  }

  if (v51)
  {
    v56 = outHTML;
    if (v56)
    {
      CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryXHTMLKey, v56);
    }
  }

  v57 = v8;

LABEL_87:

  return v57;
}

+ (id)_convertIMMessageItemDictionaryToIMMessageItem:(id)item timestamp:(id)timestamp
{
  v43 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  timestampCopy = timestamp;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Converting Dictionary to IM Message", &v39, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277D1AA70]);
  v9 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryHandleKey];
  [v8 setHandle:v9];

  v10 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryServiceKey];
  [v8 setService:v10];

  v11 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryGUIDKey];
  [v8 setGuid:v11];

  v12 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryGUIDKey];
  [v8 setGuid:v12];

  v13 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryDateKey];
  if (v13)
  {
    [v8 setTime:v13];
  }

  else
  {
    v14 = _MessageDateFromTimeStamp(timestampCopy);
    [v8 setTime:v14];
  }

  v15 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryIsAudioMessageKey];

  if (v15)
  {
    v16 = 2097157;
  }

  else
  {
    v16 = 5;
  }

  [v8 setFlags:v16];
  v17 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryPlainBodyKey];

  if (v17)
  {
    v18 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryPlainBodyKey];
    [v8 setPlainBody:v18];
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isRelayChatBotEnabled = [mEMORY[0x277D1A9B8] isRelayChatBotEnabled];

  if (isRelayChatBotEnabled)
  {
    v21 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryBodyDataKey];

    if (v21)
    {
      v22 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryBodyDataKey];
      v23 = JWDecodeCodableObjectWithStandardAllowlist();

      if (v23)
      {
        [v8 setBody:v23];
      }
    }
  }

  v24 = [itemCopy objectForKey:IMDRelayMessageItemDictionarySubjectKey];

  if (v24)
  {
    v25 = [itemCopy objectForKey:IMDRelayMessageItemDictionarySubjectKey];
    [v8 setSubject:v25];
  }

  v26 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryXHTMLKey];

  if (v26)
  {
    v27 = [IMDRelayMessageToSuperParser alloc];
    v28 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryXHTMLKey];
    v29 = [(IMXMLParserContext *)v27 initWithContent:v28];

    mEMORY[0x277D1AD00] = [MEMORY[0x277D1AD00] sharedInstance];
    [mEMORY[0x277D1AD00] parseContext:v29];

    body = [(IMToSuperParserContext *)v29 body];
    [v8 setBody:body];
    fileTransferGUIDs = [(IMToSuperParserContext *)v29 fileTransferGUIDs];
    [v8 setFileTransferGUIDs:fileTransferGUIDs];

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        string = [body string];
        v35 = MarcoLoggingStringForMessageData();
        fileTransferGUIDs2 = [v8 fileTransferGUIDs];
        v39 = 138412546;
        v40 = v35;
        v41 = 2112;
        v42 = fileTransferGUIDs2;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "      xhtml parsed body: %@  file tranfer GUIDs: %@", &v39, 0x16u);
      }
    }
  }

  v37 = [itemCopy objectForKey:IMDRelayMessageItemDictionaryReplyToGUIDKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 length])
  {
    [v8 setReplyToGUID:v37];
  }

  return v8;
}

+ (id)_updateServiceOfMessageInMessageDict:(id)dict toService:(id)service
{
  serviceCopy = service;
  v6 = MEMORY[0x277CBEB38];
  dictCopy = dict;
  v8 = [[v6 alloc] initWithDictionary:dictCopy];

  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v10 = [v8 objectForKey:IMDRelayMessageItemDictionary];
  v11 = [v9 initWithDictionary:v10];

  v12 = serviceCopy;
  if (v12)
  {
    CFDictionarySetValue(v11, IMDRelayMessageItemDictionaryServiceKey, v12);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7DA200();
  }

  v13 = v11;
  if (v13)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionary, v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D6FB0();
  }

  return v8;
}

+ (id)_convertIMDHandleToDictionary:(id)dictionary
{
  v3 = MEMORY[0x277CBEAC0];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy ID];
  v6 = IMDRelayMessageDictionaryRecipientIDKey;
  unformattedID = [dictionaryCopy unformattedID];
  v8 = IMDRelayMessageDictionaryRecipientUnformatedIDKey;
  countryCode = [dictionaryCopy countryCode];

  v10 = [v3 dictionaryWithObjectsAndKeys:{v5, v6, unformattedID, v8, countryCode, IMDCTMessageDictionaryCountryCodeKey, 0}];

  return v10;
}

+ (id)_convertIMDHandlesToArray:(id)array
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B6EAE10;
  v5[3] = &unk_278708890;
  v5[4] = self;
  v3 = [array __imArrayByApplyingBlock:v5];

  return v3;
}

@end