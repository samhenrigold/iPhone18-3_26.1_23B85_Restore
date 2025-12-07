@interface CSDPinExchangeController
- (BOOL)sendApprovalDisplayPinToDevice:(id)device;
- (BOOL)sendIDSAction:(id)action toDevice:(id)device;
- (BOOL)sendIDSAction:(id)action toDevices:(id)devices;
- (CSDPinExchangeController)initWithDelegate:(id)delegate;
- (id)allIDSTelephonyDevices;
- (id)idsDeviceFromUniqueID:(id)d;
- (void)cancelPinRequests;
- (void)displayErrorNotificationWithMessage:(id)message;
- (void)displayMismatchedAccountsNotification;
- (void)displayPinErrorNotification;
- (void)displaySlotsFullNotification;
- (void)handlePINCodeEnteredSuccessfully:(BOOL)successfully canceled:(BOOL)canceled fromDevice:(id)device isPrimaryDevice:(BOOL)primaryDevice;
- (void)removeErrorNotifications;
- (void)requestPinFromDevice:(id)device;
- (void)sendApprovalResponseToDevice:(id)device enteredCorrectly:(BOOL)correctly wasCancelled:(BOOL)cancelled;
- (void)sendPinCodeAndPromptForResponseToDevice:(id)device forSenderIdentityUUID:(id)d;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation CSDPinExchangeController

- (CSDPinExchangeController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CSDPinExchangeController;
  v6 = [(CSDPinExchangeController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting up Pin Exchange controller", v11, 2u);
    }

    objc_storeStrong(&v7->_pinExchangeDelegate, delegate);
    v9 = +[CSDThumperIDSService sharedInstance];
    [v9 addServiceDelegate:v7 queue:&_dispatch_main_q];
  }

  return v7;
}

- (void)requestPinFromDevice:(id)device
{
  deviceCopy = device;
  v5 = sub_100004778(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting PIN from device %@", buf, 0xCu);
  }

  v6 = +[TUCallCapabilities accountsSupportSecondaryCalling];
  if (v6)
  {
    pinExchangeDelegate = [(CSDPinExchangeController *)self pinExchangeDelegate];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100143768;
    v9[3] = &unk_10061C5C0;
    v9[4] = self;
    v10 = deviceCopy;
    [pinExchangeDelegate displayServiceConfirmationWithCompletionHandler:v9];
  }

  else
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] accountsSupportSecondaryCalling=NO. Displaying mismatched accounts notification", buf, 2u);
    }

    [(CSDPinExchangeController *)self displayMismatchedAccountsNotification];
  }
}

- (void)cancelPinRequests
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling all PIN requests", buf, 2u);
  }

  allIDSTelephonyDevices = [(CSDPinExchangeController *)self allIDSTelephonyDevices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [allIDSTelephonyDevices countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(allIDSTelephonyDevices);
        }

        [(CSDPinExchangeController *)self sendIDSAction:@"CSDPinExchangeActionCancelledSecondary" toDevice:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allIDSTelephonyDevices countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)idsDeviceFromUniqueID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[CSDThumperIDSService sharedInstance];
  devices = [v4 devices];

  v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uniqueID = [v9 uniqueID];
        v11 = [uniqueID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)allIDSTelephonyDevices
{
  v2 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[CSDThumperIDSService sharedInstance];
  devices = [v3 devices];

  v5 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 supportsPhoneCalls])
        {
          [v2 addObject:v9];
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)sendPinCodeAndPromptForResponseToDevice:(id)device forSenderIdentityUUID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  uniqueID = [deviceCopy uniqueID];
  v9 = [(CSDPinExchangeController *)self idsDeviceFromUniqueID:uniqueID];

  if (v9)
  {
    v11 = [(CSDPinExchangeController *)self sendApprovalDisplayPinToDevice:v9];
    if (v11)
    {
      [(CSDPinExchangeController *)self removeErrorNotifications];
      objc_initWeak(location, self);
      pinExchangeDelegate = [(CSDPinExchangeController *)self pinExchangeDelegate];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100143DB4;
      v16[3] = &unk_10061C5E8;
      objc_copyWeak(&v19, location);
      v17 = v9;
      v18 = dCopy;
      [pinExchangeDelegate displayPinMessageForDevice:v17 completionHandler:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(location);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = sub_100004778(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [deviceCopy uniqueID];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = uniqueID2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find device for unique ID %@", location, 0xCu);
    }
  }

  v15 = sub_100004778(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10047610C(v15);
  }

LABEL_10:
}

- (BOOL)sendApprovalDisplayPinToDevice:(id)device
{
  deviceCopy = device;
  pendingCodesToDevicesForApproval = [(CSDPinExchangeController *)self pendingCodesToDevicesForApproval];
  uniqueID = [deviceCopy uniqueID];
  v7 = [pendingCodesToDevicesForApproval objectForKeyedSubscript:uniqueID];

  if (v7)
  {
    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [deviceCopy uniqueID];
      v21 = 138412290;
      v22 = uniqueID2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to send PIN code because we already have one pending for device with unique ID %@", &v21, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    randomSixDigitCode = [(CSDPinExchangeController *)self randomSixDigitCode];
    if (!self->_pendingCodesToDevicesForApproval)
    {
      v13 = +[NSMutableDictionary dictionary];
      pendingCodesToDevicesForApproval = self->_pendingCodesToDevicesForApproval;
      self->_pendingCodesToDevicesForApproval = v13;
    }

    v15 = [NSNumber numberWithUnsignedInteger:randomSixDigitCode];
    v16 = self->_pendingCodesToDevicesForApproval;
    uniqueID3 = [deviceCopy uniqueID];
    [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:uniqueID3];

    v19 = sub_100004778(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending a PIN code to device %@ to display to enroll them into Thumper", &v21, 0xCu);
    }

    v11 = [(CSDPinExchangeController *)self sendIDSAction:@"CSDPinExchangeActionSendPIN" toDevice:deviceCopy];
  }

  return v11;
}

- (void)sendApprovalResponseToDevice:(id)device enteredCorrectly:(BOOL)correctly wasCancelled:(BOOL)cancelled
{
  v6 = @"CSDPinExchangeActionUnapproved";
  if (correctly)
  {
    v6 = @"CSDPinExchangeActionApproved";
  }

  if (cancelled)
  {
    v7 = @"CSDPinExchangeActionCancelledPrimary";
  }

  else
  {
    v7 = v6;
  }

  [(CSDPinExchangeController *)self sendIDSAction:v7 toDevice:device];
}

- (BOOL)sendIDSAction:(id)action toDevice:(id)device
{
  deviceCopy = device;
  deviceCopy2 = device;
  actionCopy = action;
  v8 = [NSArray arrayWithObjects:&deviceCopy count:1];

  LOBYTE(action) = [(CSDPinExchangeController *)self sendIDSAction:actionCopy toDevices:v8, deviceCopy];
  return action;
}

- (BOOL)sendIDSAction:(id)action toDevices:(id)devices
{
  actionCopy = action;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = devices;
  v39 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v39)
  {
    v6 = 1;
    v37 = IDSSendMessageOptionTimeoutKey;
    v38 = *v50;
    p_cache = &OBJC_METACLASS___CSDInterventionProvider.cache;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v49 + 1) + 8 * i);
        v10 = IDSCopyIDForDevice();
        v11 = +[NSMutableDictionary dictionary];
        [v11 setObject:actionCopy forKeyedSubscript:@"CSDPinExchangeActionKey"];
        sharedInstance = [p_cache + 293 sharedInstance];
        callerID = [sharedInstance callerID];

        if ([callerID length])
        {
          [v11 setObject:callerID forKeyedSubscript:@"CSDPinExchangeCallerIDKey"];
        }

        else
        {
          v14 = sub_100004778(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100476150(v61, &v62, v14);
          }
        }

        v15 = [(__CFString *)actionCopy isEqualToString:@"CSDPinExchangeActionSendPIN"];
        if (v15)
        {
          pendingCodesToDevicesForApproval = self->_pendingCodesToDevicesForApproval;
          uniqueID = [v9 uniqueID];
          v18 = [(NSMutableDictionary *)pendingCodesToDevicesForApproval objectForKey:uniqueID];

          if (v18)
          {
            [v11 setObject:v18 forKeyedSubscript:@"CSDPinExchangePinKey"];
          }
        }

        v45 = callerID;
        v19 = sub_100004778(v15);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v56 = actionCopy;
          v57 = 2112;
          v58 = v9;
          v59 = 2112;
          v60 = v11;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending IDS action %@ to device %@ with message %@", buf, 0x20u);
        }

        v46 = v11;
        v20 = JWEncodeDictionary();
        _FTCopyGzippedData = [v20 _FTCopyGzippedData];
        v21 = [NSDictionary dictionaryWithObject:"dictionaryWithObject:forKey:" forKey:?];
        v53 = v37;
        v54 = &off_10063ECD8;
        v22 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        if (v21)
        {
          v41 = v20;
          v43 = v6;
          sharedInstance2 = [p_cache + 293 sharedInstance];
          service = [sharedInstance2 service];
          v42 = v10;
          v25 = IMSingleObjectArray();
          [v25 __imSetFromArray];
          v27 = v26 = actionCopy;
          v47 = 0;
          v48 = 0;
          v40 = v22;
          v28 = [service sendMessage:v21 fromAccount:0 toDestinations:v27 priority:300 options:v22 identifier:&v48 error:&v47];
          v29 = v48;
          v30 = v47;

          actionCopy = v26;
          if (v28)
          {
            v31 = [(__CFString *)v26 isEqualToString:@"CSDPinExchangeActionRequestPIN"];
            if (v31)
            {
              v31 = [(CSDPinExchangeController *)self setOutgoingPinRequestIdentifier:v29];
            }
          }

          v32 = sub_100004778(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v33 = @"NO";
            if (v28)
            {
              v33 = @"YES";
            }

            v56 = v33;
            v57 = 2112;
            v58 = v30;
            v59 = 2112;
            v60 = v29;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Thumper IDS action sent to device with success: %@ error: %@ identifier: %@", buf, 0x20u);
          }

          v10 = v42;
          v6 = v43 & v28;
          p_cache = (&OBJC_METACLASS___CSDInterventionProvider + 16);
          v22 = v40;
          v20 = v41;
        }

        else
        {
          v29 = 0;
          v30 = 0;
        }
      }

      v39 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
    }

    while (v39);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

- (void)displayErrorNotificationWithMessage:(id)message
{
  messageCopy = message;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];

  serviceDescription = [(CSDPinExchangeDelegate *)self->_pinExchangeDelegate serviceDescription];
  v8 = [IMUserNotification userNotificationWithIdentifier:@"com.apple.telephonyutilities.callservicesd.pinexchangeerror" title:serviceDescription message:messageCopy defaultButton:v6 alternateButton:0 otherButton:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001449CC;
  block[3] = &unk_100619D38;
  v11 = v8;
  v9 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removeErrorNotifications
{
  v2 = +[IMUserNotificationCenter sharedInstance];
  [v2 removeNotificationsForServiceIdentifier:@"com.apple.telephonyutilities.callservicesd.pinexchangeerror"];
}

- (void)displayPinErrorNotification
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Displaying PIN error notification", v6, 2u);
  }

  v4 = TUBundle();
  v5 = [v4 localizedStringForKey:@"INCORRECT_PIN_ENTERED" value:&stru_100631E68 table:@"TelephonyUtilities"];
  [(CSDPinExchangeController *)self displayErrorNotificationWithMessage:v5];
}

- (void)displayMismatchedAccountsNotification
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Displaying mismatched accounts notification", v8, 2u);
  }

  v4 = objc_alloc_init(TUFeatureFlags);
  [v4 appleAccountRebrandEnabled];
  v5 = TUBundle();
  v6 = TUStringKeyForNetwork();
  v7 = [v5 localizedStringForKey:v6 value:&stru_100631E68 table:@"TelephonyUtilities"];
  [(CSDPinExchangeController *)self displayErrorNotificationWithMessage:v7];
}

- (void)displaySlotsFullNotification
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Displaying slots full notification", v6, 2u);
  }

  v4 = TUBundle();
  v5 = [v4 localizedStringForKey:@"MAX_SLOTS_FILLED" value:&stru_100631E68 table:@"TelephonyUtilities"];
  [(CSDPinExchangeController *)self displayErrorNotificationWithMessage:v5];
}

- (void)handlePINCodeEnteredSuccessfully:(BOOL)successfully canceled:(BOOL)canceled fromDevice:(id)device isPrimaryDevice:(BOOL)primaryDevice
{
  primaryDeviceCopy = primaryDevice;
  canceledCopy = canceled;
  successfullyCopy = successfully;
  deviceCopy = device;
  pendingCodesToDevicesForApproval = [(CSDPinExchangeController *)self pendingCodesToDevicesForApproval];
  uniqueID = [deviceCopy uniqueID];
  [pendingCodesToDevicesForApproval setObject:0 forKeyedSubscript:uniqueID];

  pinExchangeDelegate = [(CSDPinExchangeController *)self pinExchangeDelegate];
  v15 = pinExchangeDelegate;
  if (primaryDeviceCopy)
  {
    v14 = deviceCopy;
  }

  else
  {
    v14 = 0;
  }

  [pinExchangeDelegate pinCodeEnteredSuccessfully:successfullyCopy cancelled:canceledCopy onPrimaryDevice:v14];
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  serviceCopy = service;
  dCopy = d;
  v12 = [message objectForKey:@"CSDPinExchangeCompressedDataKey"];
  _FTDecompressData = [v12 _FTDecompressData];

  v14 = JWDecodeDictionary();
  v15 = +[CSDThumperIDSService sharedInstance];
  v16 = [v15 deviceForFromID:dCopy];

  v18 = sub_100004778(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v71 = serviceCopy;
    v72 = 2112;
    v73 = v16;
    v74 = 1024;
    isHSATrusted = [v16 isHSATrusted];
    v76 = 2112;
    v77 = v14;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received message for service %@ from device %@ (isHSATrusted=%d): %@", buf, 0x26u);
  }

  v19 = [v14 objectForKeyedSubscript:@"CSDPinExchangeActionKey"];
  v20 = [v14 objectForKeyedSubscript:@"CSDPinExchangeCallerIDKey"];
  if ([v19 isEqualToString:@"CSDPinExchangeActionRequestPIN"])
  {
    outgoingPinRequestIdentifier = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];

    if (outgoingPinRequestIdentifier)
    {
      v23 = sub_100004778(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Ignoring pin request: There is already a pending pin request that has not yet completed.", buf, 2u);
      }

      goto LABEL_9;
    }

    v62 = objc_alloc_init(TUCallProviderManager);
    faceTimeProvider = [v62 faceTimeProvider];
    prioritizedSenderIdentities = [faceTimeProvider prioritizedSenderIdentities];

    v63 = prioritizedSenderIdentities;
    if ([prioritizedSenderIdentities count])
    {
      selfCopy = self;
      if ([prioritizedSenderIdentities count]== 1)
      {
        firstObject = [prioritizedSenderIdentities firstObject];
        uUID = [firstObject UUID];

        v30 = sub_100004778(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = uUID;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "One sender identity exists; continuing Thumper registration using UUID %@", buf, 0xCu);
        }

        goto LABEL_48;
      }

      v38 = [v20 length];
      v33 = sub_100004778(v38);
      v39 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v38)
      {
        if (v39)
        {
          *buf = 138412546;
          v71 = v20;
          v72 = 2112;
          v73 = v63;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Multiple sender identities exist; checking whether caller ID %@ matches a sender identity in %@", buf, 0x16u);
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v30 = v63;
        uUID = [v30 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (uUID)
        {
          v56 = v14;
          v57 = v19;
          v58 = _FTDecompressData;
          v59 = dCopy;
          v60 = serviceCopy;
          v40 = *v66;
          while (2)
          {
            for (i = 0; i != uUID; i = (i + 1))
            {
              if (*v66 != v40)
              {
                objc_enumerationMutation(v30);
              }

              v42 = v30;
              v43 = *(*(&v65 + 1) + 8 * i);
              handle = [v43 handle];
              isoCountryCode = [handle isoCountryCode];
              v46 = [TUHandle normalizedPhoneNumberHandleForValue:v20 isoCountryCode:isoCountryCode];

              if (handle)
              {
                v47 = v46 == 0;
              }

              else
              {
                v47 = 1;
              }

              if (!v47 && [v46 isEqualToHandle:handle])
              {
                uUID = [v43 UUID];

                dCopy = v59;
                serviceCopy = v60;
                _FTDecompressData = v58;
                v19 = v57;
                v30 = v42;
                goto LABEL_47;
              }

              v30 = v42;
            }

            uUID = [v42 countByEnumeratingWithState:&v65 objects:v69 count:16];
            if (uUID)
            {
              continue;
            }

            break;
          }

          dCopy = v59;
          serviceCopy = v60;
          _FTDecompressData = v58;
          v19 = v57;
LABEL_47:
          v14 = v56;
        }

LABEL_48:

        if (uUID)
        {
          isHSATrusted2 = [v16 isHSATrusted];
          if (isHSATrusted2 && ([v16 uniqueID], v49 = objc_claimAutoreleasedReturnValue(), v50 = [TUCallCapabilities isRelayCallingEnabledForDeviceWithID:v49], v49, v50))
          {
            v51 = sub_100004778(isHSATrusted2);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Device requesting PIN is HSA trusted. Forgoing PIN exchange and enrolling the device immediately", buf, 2u);
            }

            pinExchangeDelegate = [(CSDPinExchangeController *)selfCopy pinExchangeDelegate];
            [pinExchangeDelegate enrollDevice:v16 forSenderIdentityUUID:uUID];

            v54 = sub_100004778(v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v71 = v16;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Activated Thumper for requesting device %@", buf, 0xCu);
            }

            [(CSDPinExchangeController *)selfCopy sendIDSAction:@"CSDPinExchangeActionApproved" toDevice:v16];
          }

          else
          {
            v55 = sub_100004778(isHSATrusted2);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v71 = v16;
              v72 = 2112;
              v73 = uUID;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Received request to enroll device %@ in Thumper for sender identity with UUID %@", buf, 0x16u);
            }

            [(CSDPinExchangeController *)selfCopy sendPinCodeAndPromptForResponseToDevice:v16 forSenderIdentityUUID:uUID];
          }

LABEL_61:

          goto LABEL_62;
        }

LABEL_56:
        uUID = sub_100004778(v34);
        if (os_log_type_enabled(uUID, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, uUID, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting Thumper registration; could not obtain sender identity UUID.", buf, 2u);
        }

        goto LABEL_61;
      }

      if (v39)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting Thumper registration; multiple sender identities exist but caller ID not supplied", buf, 2u);
      }
    }

    else
    {
      v33 = sub_100004778(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1004761CC(v62, v33);
      }
    }

    goto LABEL_56;
  }

  if (![v19 isEqualToString:@"CSDPinExchangeActionSendPIN"])
  {
    if ([v19 isEqualToString:@"CSDPinExchangeActionOneTimeReminder"])
    {
      [(CSDPinExchangeDelegate *)self->_pinExchangeDelegate resetOneTimeMessage];
      goto LABEL_62;
    }

    if ([v19 isEqualToString:@"CSDPinExchangeActionApproved"])
    {
      selfCopy5 = self;
      v32 = 1;
    }

    else
    {
      if (![v19 isEqualToString:@"CSDPinExchangeActionUnapproved"])
      {
        if (![v19 isEqualToString:@"CSDPinExchangeActionCancelledPrimary"])
        {
          if (![v19 isEqualToString:@"CSDPinExchangeActionCancelledSecondary"])
          {
            goto LABEL_62;
          }

          selfCopy5 = self;
          v32 = 0;
          v35 = 1;
          v36 = v16;
          v37 = 0;
          goto LABEL_25;
        }

        selfCopy5 = self;
        v32 = 0;
        v35 = 1;
LABEL_24:
        v36 = v16;
        v37 = 1;
LABEL_25:
        [(CSDPinExchangeController *)selfCopy5 handlePINCodeEnteredSuccessfully:v32 canceled:v35 fromDevice:v36 isPrimaryDevice:v37];
        goto LABEL_62;
      }

      selfCopy5 = self;
      v32 = 0;
    }

    v35 = 0;
    goto LABEL_24;
  }

  v23 = [v14 objectForKey:@"CSDPinExchangePinKey"];
  pinExchangeDelegate = self->_pinExchangeDelegate;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1001455F8;
  v64[3] = &unk_10061A650;
  v64[4] = self;
  [(CSDPinExchangeDelegate *)pinExchangeDelegate displayIncomingPinCode:v23 fromID:dCopy completionHandler:v64];
LABEL_9:

LABEL_62:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = sub_100004778(errorCopy);
  v17 = v16;
  if (successCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received didSendWithSuccess=YES for message with identifier %@", &v22, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100476264(identifierCopy, errorCopy, v17);
    }

    outgoingPinRequestIdentifier = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];
    v19 = [outgoingPinRequestIdentifier isEqualToString:identifierCopy];

    if (v19)
    {
      [(CSDPinExchangeDelegate *)self->_pinExchangeDelegate displayPinRequestFailure];
    }
  }

  outgoingPinRequestIdentifier2 = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];
  v21 = [outgoingPinRequestIdentifier2 isEqualToString:identifierCopy];

  if (v21)
  {
    [(CSDPinExchangeController *)self setOutgoingPinRequestIdentifier:0];
  }
}

@end