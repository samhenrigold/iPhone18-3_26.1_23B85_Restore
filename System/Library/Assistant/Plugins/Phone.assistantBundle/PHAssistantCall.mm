@interface PHAssistantCall
+ (BOOL)isEmergencyNumberOrIsWhiteListed:(id)listed forProvider:(id)provider;
- (BOOL)isCarPlayActive;
- (BOOL)shouldApplyInternationalAssist;
- (CNContact)backingContact;
- (PHAssistantCall)initWithDictionary:(id)dictionary;
- (TUHandle)destinationHandle;
- (id)ISOCountryCode;
- (id)_copyExceptionsForCountryCode:(id)code;
- (id)_validate;
- (id)_voiceDialBundle;
- (id)appPunchOutDialRequestWithEndpointIDSDestinationURI:(id)i;
- (id)destinationID;
- (void)_addFaceTimeAvailabilityListener;
- (void)_performAppPunchOutWithDialRequest:(id)request withServiceHelper:(id)helper completion:(id)completion;
- (void)_removeFaceTimeAvailabilityListener;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation PHAssistantCall

- (PHAssistantCall)initWithDictionary:(id)dictionary
{
  v16.receiver = self;
  v16.super_class = PHAssistantCall;
  v3 = [(PHAssistantCall *)&v16 initWithDictionary:dictionary];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 stringWithFormat:@"%@.%@", bundleIdentifier, v8];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v10;

    v12 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v3->_serialQueue];
    telephonyClient = v3->_telephonyClient;
    v3->_telephonyClient = v12;

    voiceDialBundle = v3->_voiceDialBundle;
    v3->_voiceDialBundle = 0;

    [(PHAssistantCall *)v3 _addFaceTimeAvailabilityListener];
  }

  return v3;
}

- (CNContact)backingContact
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_hasComputedBackingContact)
  {
    self->_hasComputedBackingContact = 1;
    callRecipient = [(SAPhoneCall *)self callRecipient];
    object = [callRecipient object];
    identifier = [object identifier];

    v7 = PHDefaultLog(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (identifier)
    {
      if (v8)
      {
        *buf = 138412290;
        v23 = identifier;
        _os_log_impl(&dword_233521000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to find contact with Siri URL: %@", buf, 0xCu);
      }

      callRecipient2 = [MEMORY[0x277CFBC50] contactIDFromAssistantID:identifier];
      v10 = *MEMORY[0x277CBCFC0];
      v21[0] = *MEMORY[0x277CBD018];
      v21[1] = v10;
      v21[2] = *MEMORY[0x277CBD098];
      object2 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
      v12 = +[PHAssistantServices sharedContactStore];
      v20 = 0;
      v13 = [v12 unifiedContactWithIdentifier:callRecipient2 keysToFetch:object2 error:&v20];
      v7 = v20;

      if (v13)
      {
        v15 = PHDefaultLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138739971;
          v23 = v13;
          _os_log_impl(&dword_233521000, v15, OS_LOG_TYPE_DEFAULT, "Found contact: %{sensitive}@", buf, 0xCu);
        }

        v16 = v13;
        p_super = &self->_backingContact->super;
        self->_backingContact = v16;
      }

      else if (v7 && (v14 = [v7 code], v14 == 200))
      {
        p_super = PHDefaultLog(200);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138739971;
          v23 = callRecipient2;
          _os_log_impl(&dword_233521000, p_super, OS_LOG_TYPE_DEFAULT, "[WARN] No contact found with identifier: %{sensitive}@", buf, 0xCu);
        }
      }

      else
      {
        p_super = PHDefaultLog(v14);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          sub_233527284();
        }
      }
    }

    else
    {
      if (!v8)
      {
LABEL_19:

        goto LABEL_20;
      }

      callRecipient2 = [(SAPhoneCall *)self callRecipient];
      object2 = [callRecipient2 object];
      *buf = 138412290;
      v23 = object2;
      _os_log_impl(&dword_233521000, v7, OS_LOG_TYPE_DEFAULT, "[WARN] No URL found for SAPerson: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

LABEL_20:
  backingContact = self->_backingContact;

  return backingContact;
}

- (TUHandle)destinationHandle
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = 0x27DE0E000;
  if (!self->_hasComputedDestinationHandle)
  {
    self->_hasComputedDestinationHandle = 1;
    callRecipient = [(SAPhoneCall *)self callRecipient];
    typedData = [callRecipient typedData];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    label = [typedData label];
    backingContact = [(PHAssistantCall *)self backingContact];
    v9 = backingContact;
    if (isKindOfClass)
    {
      v66 = 0uLL;
      v67 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      emailAddresses = [backingContact emailAddresses];
      v11 = [emailAddresses countByEnumeratingWithState:&v64 objects:v73 count:16];
      if (v11)
      {
        v12 = v11;
        v58 = isKindOfClass;
        v59 = v9;
        v13 = *v65;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v65 != v13)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v15 = *(*(&v64 + 1) + 8 * i);
            label2 = [v15 label];
            v17 = [label2 isEqualToString:label];

            if (v17)
            {
              v28 = PHDefaultLog(v18);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                value = [v15 value];
                *buf = 138412546;
                v70 = label;
                v71 = 2112;
                v72 = value;
                _os_log_impl(&dword_233521000, v28, OS_LOG_TYPE_DEFAULT, "Found email address with matching label %@: %@", buf, 0x16u);
              }

              value2 = [v15 value];
              goto LABEL_28;
            }
          }

          v12 = [emailAddresses countByEnumeratingWithState:&v64 objects:v73 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

LABEL_20:
        value2 = 0;
        v3 = 0x27DE0E000;
        v9 = v59;
LABEL_29:
        isKindOfClass = v58;
LABEL_30:

        if (value2)
        {
          goto LABEL_50;
        }

        v35 = PHDefaultLog(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = typedData;
          _os_log_impl(&dword_233521000, v35, OS_LOG_TYPE_DEFAULT, "Could not determine a destination ID from the backing contact. Checking if a destination ID was explicitly encoded in typed data: %@", buf, 0xCu);
        }

        v36 = typedData;
        v37 = v36;
        if (isKindOfClass)
        {
          emailAddress = [v36 emailAddress];

          v40 = PHDefaultLog(v39);
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          if (emailAddress)
          {
            if (v41)
            {
              emailAddress2 = [v37 emailAddress];
              *buf = 138412290;
              v70 = emailAddress2;
              _os_log_impl(&dword_233521000, v40, OS_LOG_TYPE_DEFAULT, "Explicit destinationID was encoded in the SAEmail: %@", buf, 0xCu);
            }

            emailAddress3 = [v37 emailAddress];
LABEL_42:
            value2 = emailAddress3;
            goto LABEL_49;
          }

          if (v41)
          {
            *buf = 0;
            v48 = "No destinationID was explicitly encoded in the SAEmail";
LABEL_47:
            _os_log_impl(&dword_233521000, v40, OS_LOG_TYPE_DEFAULT, v48, buf, 2u);
          }
        }

        else
        {
          number = [v36 number];

          v40 = PHDefaultLog(v45);
          v46 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          if (number)
          {
            if (v46)
            {
              number2 = [v37 number];
              *buf = 138412290;
              v70 = number2;
              _os_log_impl(&dword_233521000, v40, OS_LOG_TYPE_DEFAULT, "Explicit destinationID was encoded in the SAPhone: %@", buf, 0xCu);
            }

            emailAddress3 = [v37 number];
            goto LABEL_42;
          }

          if (v46)
          {
            *buf = 0;
            v48 = "No destinationID was explicitly encoded in the SAPhone";
            goto LABEL_47;
          }
        }

        value2 = 0;
LABEL_49:

        if (!value2)
        {
          value2 = PHDefaultLog(v49);
          if (os_log_type_enabled(value2, OS_LOG_TYPE_DEFAULT))
          {
            callRecipient2 = [(SAPhoneCall *)self callRecipient];
            typedData2 = [callRecipient2 typedData];
            *buf = 138412290;
            v70 = typedData2;
            _os_log_impl(&dword_233521000, value2, OS_LOG_TYPE_DEFAULT, "[WARN] No destination found for %@", buf, 0xCu);
          }

          goto LABEL_54;
        }

LABEL_50:
        if (isKindOfClass)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v51 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:v50 value:value2];
        v52 = *(v3 + 1976);
        v53 = *(&self->super.super.super.super.super.super.isa + v52);
        *(&self->super.super.super.super.super.super.isa + v52) = v51;

LABEL_54:
        goto LABEL_55;
      }
    }

    else
    {
      v62 = 0uLL;
      v63 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      emailAddresses = [backingContact phoneNumbers];
      v19 = [emailAddresses countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v19)
      {
        v20 = v19;
        v58 = isKindOfClass;
        v59 = v9;
        v21 = *v61;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v61 != v21)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v23 = *(*(&v60 + 1) + 8 * j);
            label3 = [v23 label];
            v25 = [label3 isEqualToString:label];

            if (v25)
            {
              v30 = PHDefaultLog(v26);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                value3 = [v23 value];
                stringValue = [value3 stringValue];
                *buf = 138412546;
                v70 = label;
                v71 = 2112;
                v72 = stringValue;
                _os_log_impl(&dword_233521000, v30, OS_LOG_TYPE_DEFAULT, "Found phone number with matching label %@: %@", buf, 0x16u);
              }

              value4 = [v23 value];
              value2 = [value4 stringValue];

LABEL_28:
              v3 = 0x27DE0E000uLL;
              v9 = v59;
              goto LABEL_29;
            }
          }

          v20 = [emailAddresses countByEnumeratingWithState:&v60 objects:v68 count:16];
          if (v20)
          {
            continue;
          }

          goto LABEL_20;
        }
      }
    }

    value2 = 0;
    goto LABEL_30;
  }

LABEL_55:
  v54 = *(&self->super.super.super.super.super.super.isa + *(v3 + 1976));

  return v54;
}

- (id)destinationID
{
  destinationHandle = [(PHAssistantCall *)self destinationHandle];
  value = [destinationHandle value];

  return value;
}

- (void)_addFaceTimeAvailabilityListener
{
  mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70] addListenerID:@"com.apple.assistant" forService:2];

  mEMORY[0x277D07D70]2 = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70]2 addListenerID:@"com.apple.assistant" forService:0];
}

- (void)_removeFaceTimeAvailabilityListener
{
  mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70] removeListenerID:@"com.apple.assistant" forService:2];

  mEMORY[0x277D07D70]2 = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70]2 removeListenerID:@"com.apple.assistant" forService:0];
}

- (BOOL)shouldApplyInternationalAssist
{
  callRecipient = [(SAPhoneCall *)self callRecipient];
  object = [callRecipient object];
  v4 = object != 0;

  return v4;
}

- (BOOL)isCarPlayActive
{
  _carScreen = [MEMORY[0x277D759A0] _carScreen];
  v3 = _carScreen != 0;

  return v3;
}

- (id)_voiceDialBundle
{
  voiceDialBundle = self->_voiceDialBundle;
  if (!voiceDialBundle)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/VoiceServices/PlugIns/VoiceDial.vsplugin"];
    v5 = self->_voiceDialBundle;
    self->_voiceDialBundle = v4;

    voiceDialBundle = self->_voiceDialBundle;
  }

  return voiceDialBundle;
}

- (id)ISOCountryCode
{
  if ([(PHAssistantCall *)self shouldApplyInternationalAssist]|| (v2 = CPPhoneNumberCopyNetworkCountryCode()) == 0)
  {
    v2 = CPPhoneNumberCopyHomeCountryCode();
  }

  return v2;
}

- (id)_copyExceptionsForCountryCode:(id)code
{
  if (!code)
  {
    return 0;
  }

  code = [MEMORY[0x277CCACA8] stringWithFormat:@"Exceptions-%@", code];
  _voiceDialBundle = [(PHAssistantCall *)self _voiceDialBundle];
  v6 = [_voiceDialBundle URLForResource:code withExtension:@"plist" subdirectory:@"DigitDialExceptions"];

  if (v6)
  {
    v12 = 0;
    v7 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v6 error:&v12];
    v8 = v12;
    v9 = v8;
    if (!v7)
    {
      v10 = PHDefaultLog(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_2335272EC();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isEmergencyNumberOrIsWhiteListed:(id)listed forProvider:(id)provider
{
  v31 = *MEMORY[0x277D85DE8];
  listedCopy = listed;
  providerCopy = provider;
  v7 = objc_alloc_init(MEMORY[0x277D6EF38]);
  prioritizedSenderIdentities = [providerCopy prioritizedSenderIdentities];
  v9 = [prioritizedSenderIdentities count];
  v10 = PHDefaultLog(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v27 = listedCopy;
      _os_log_impl(&dword_233521000, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ are an emergency or whitelisted telephone number.", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = prioritizedSenderIdentities;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v21 = providerCopy;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; i = (i + 1))
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          uUID = [v16 UUID];
          v18 = [v7 isWhitelistedEmergencyNumberForDigits:listedCopy senderIdentityUUID:uUID];

          if (v18)
          {
            v13 = PHDefaultLog(v19);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v27 = listedCopy;
              v28 = 2112;
              v29 = v16;
              _os_log_impl(&dword_233521000, v13, OS_LOG_TYPE_DEFAULT, "Digits %@ are an emergency or whitelisted telephone number for sender identity %@.", buf, 0x16u);
            }

            LOBYTE(v13) = 1;
            goto LABEL_16;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_16:
      providerCopy = v21;
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v27 = listedCopy;
      _os_log_impl(&dword_233521000, v10, OS_LOG_TYPE_DEFAULT, "Checking whether the digits %@ is an emergency or whitelisted telephone number for nil sender identity.", buf, 0xCu);
    }

    LOBYTE(v13) = [v7 isWhitelistedEmergencyNumberForDigits:listedCopy senderIdentityUUID:0];
  }

  return v13;
}

- (id)_validate
{
  v78 = *MEMORY[0x277D85DE8];
  emergencyCall = [(SAPhoneCall *)self emergencyCall];
  bOOLValue = [emergencyCall BOOLValue];

  if (bOOLValue)
  {
    v6 = PHDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233521000, v6, OS_LOG_TYPE_DEFAULT, "[PHAssistantCall _validate]: Call is an emergency call, passing validation", buf, 2u);
    }

    goto LABEL_5;
  }

  callRecipient = [(SAPhoneCall *)self callRecipient];

  if (!callRecipient)
  {
    v18 = PHDefaultLog(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_23352763C();
    }

    v16 = objc_alloc(MEMORY[0x277D47208]);
    v17 = @"No recipient was specified";
    goto LABEL_21;
  }

  destinationID = [(PHAssistantCall *)self destinationID];

  if (!destinationID)
  {
    v19 = PHDefaultLog(v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_233527608();
    }

    v16 = objc_alloc(MEMORY[0x277D47208]);
    v17 = @"No destination ID was specified";
    goto LABEL_21;
  }

  if ([(SAPhoneCall *)self faceTime])
  {
    supportsDisplayingFaceTimeVideoCalls = [MEMORY[0x277D6EDE8] supportsDisplayingFaceTimeVideoCalls];
    if (supportsDisplayingFaceTimeVideoCalls)
    {
      supportsFaceTimeVideoCalls = [MEMORY[0x277D6EDE8] supportsFaceTimeVideoCalls];
      if (supportsFaceTimeVideoCalls)
      {
        isCarPlayActive = [(PHAssistantCall *)self isCarPlayActive];
        if (isCarPlayActive)
        {
          v15 = PHDefaultLog(isCarPlayActive);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_2335275D4();
          }

          v16 = objc_alloc(MEMORY[0x277D47208]);
          v17 = @"FaceTime video not supported in CarPlay";
LABEL_21:
          v20 = [v16 initWithReason:v17];
LABEL_45:
          v7 = v20;
          goto LABEL_46;
        }

        goto LABEL_72;
      }

      v23 = PHDefaultLog(supportsFaceTimeVideoCalls);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_233527504();
      }

      goto LABEL_37;
    }

    v24 = PHDefaultLog(supportsDisplayingFaceTimeVideoCalls);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_2335274D0();
    }

LABEL_40:

    v30 = objc_alloc(MEMORY[0x277D47208]);
    v31 = MEMORY[0x277D47CA0];
    goto LABEL_44;
  }

  if (![(SAPhoneCall *)self faceTimeAudio])
  {
    supportsTelephonyCalls = [MEMORY[0x277D6EDE8] supportsTelephonyCalls];
    if ((supportsTelephonyCalls & 1) == 0)
    {
      v32 = PHDefaultLog(supportsTelephonyCalls);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_233527354();
      }

      v30 = objc_alloc(MEMORY[0x277D47208]);
      v31 = MEMORY[0x277D48778];
      goto LABEL_44;
    }

    if ([MEMORY[0x277D6EDE8] canAttemptTelephonyCallsWithoutCellularConnection])
    {
      goto LABEL_72;
    }

    callRecipient2 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    airplaneMode = [callRecipient2 airplaneMode];
    if (airplaneMode)
    {
      v28 = PHDefaultLog(airplaneMode);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_233527434();
      }

      v29 = MEMORY[0x277D48760];
LABEL_98:

      v7 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:*v29];
      goto LABEL_99;
    }

    if (![MEMORY[0x277D6EDE8] supportsPrimaryCalling])
    {
LABEL_71:

      goto LABEL_72;
    }

    telephonyClient = [(PHAssistantCall *)self telephonyClient];
    v35 = objc_opt_respondsToSelector();

    if ((v35 & 1) == 0)
    {
LABEL_95:
      v28 = PHDefaultLog(v36);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_233527400();
      }

      v29 = MEMORY[0x277D48790];
      goto LABEL_98;
    }

    telephonyClient2 = [(PHAssistantCall *)self telephonyClient];
    v72 = 0;
    v38 = [telephonyClient2 getSubscriptionInfoWithError:&v72];
    v39 = v72;

    if (v38)
    {
      v63 = v38;
      [v38 subscriptionsInUse];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v71 = 0u;
      v41 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v41)
      {
        v43 = v41;
        v44 = *v69;
        v65 = *MEMORY[0x277CC3E68];
        v64 = *MEMORY[0x277CC3E70];
        *&v42 = 138412546;
        v62 = v42;
        while (2)
        {
          v45 = 0;
          v46 = v39;
          do
          {
            if (*v69 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v47 = *(*(&v68 + 1) + 8 * v45);
            if ([v47 isSimHidden])
            {
              v39 = v46;
            }

            else
            {
              telephonyClient3 = [(PHAssistantCall *)self telephonyClient];
              v67 = v46;
              v49 = [telephonyClient3 copyRegistrationStatus:v47 error:&v67];
              v39 = v67;

              if ([v49 isEqualToString:v65] & 1) != 0 || (v50 = objc_msgSend(v49, "isEqualToString:", v64), (v50))
              {

                goto LABEL_71;
              }

              if (!v49 && v39)
              {
                v51 = PHDefaultLog(v50);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  *buf = v62;
                  v74 = v39;
                  v75 = 2112;
                  v76 = v47;
                  _os_log_error_impl(&dword_233521000, v51, OS_LOG_TYPE_ERROR, "Retrieving registration status failed with error %@ for subscription context %@.", buf, 0x16u);
                }
              }

              v46 = v39;
            }

            ++v45;
          }

          while (v43 != v45);
          v43 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }
      }

      v52 = v63;
    }

    else
    {
      if (!v39)
      {
LABEL_94:

        goto LABEL_95;
      }

      v52 = PHDefaultLog(v40);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_233527388(v39, v52);
      }
    }

    goto LABEL_94;
  }

  supportsDisplayingFaceTimeAudioCalls = [MEMORY[0x277D6EDE8] supportsDisplayingFaceTimeAudioCalls];
  if ((supportsDisplayingFaceTimeAudioCalls & 1) == 0)
  {
    v24 = PHDefaultLog(supportsDisplayingFaceTimeAudioCalls);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_233527468();
    }

    goto LABEL_40;
  }

  supportsFaceTimeAudioCalls = [MEMORY[0x277D6EDE8] supportsFaceTimeAudioCalls];
  if ((supportsFaceTimeAudioCalls & 1) == 0)
  {
    v23 = PHDefaultLog(supportsFaceTimeAudioCalls);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_23352749C();
    }

LABEL_37:

    v30 = objc_alloc(MEMORY[0x277D47208]);
    v31 = MEMORY[0x277D48788];
LABEL_44:
    v20 = [v30 initWithErrorCode:*v31];
    goto LABEL_45;
  }

LABEL_72:
  callRecipient2 = [(SAPhoneCall *)self callRecipient];
  if (!callRecipient2 || [(SAPhoneCall *)self faceTime])
  {
    goto LABEL_74;
  }

  faceTimeAudio = [(SAPhoneCall *)self faceTimeAudio];

  if (faceTimeAudio)
  {
    goto LABEL_5;
  }

  iSOCountryCode = [(PHAssistantCall *)self ISOCountryCode];
  if (!iSOCountryCode)
  {
    v59 = PHDefaultLog(0);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_2335275A0();
    }

    v16 = objc_alloc(MEMORY[0x277D47208]);
    v17 = @"Device has no country code";
    goto LABEL_21;
  }

  callRecipient2 = iSOCountryCode;
  destinationID2 = [(PHAssistantCall *)self destinationID];
  if (PNIsValidPhoneNumberForCountry())
  {
LABEL_83:

LABEL_74:
LABEL_5:
    v7 = 0;
    goto LABEL_46;
  }

  v56 = [(PHAssistantCall *)self _copyExceptionsForCountryCode:callRecipient2];
  v57 = v56;
  if (v56)
  {
    v56 = [v56 containsObject:destinationID2];
    if (v56)
    {
      v58 = PHDefaultLog(v56);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v74 = destinationID2;
        v75 = 2112;
        v76 = callRecipient2;
        _os_log_impl(&dword_233521000, v58, OS_LOG_TYPE_DEFAULT, "[PHAssistantCall _validate]: Destination ID %@ is an exception for country %@, passing validation", buf, 0x16u);
      }

      goto LABEL_83;
    }
  }

  v60 = PHDefaultLog(v56);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    sub_233527538();
  }

  v61 = objc_alloc(MEMORY[0x277D47208]);
  v7 = [v61 initWithErrorCode:*MEMORY[0x277D48780]];

LABEL_99:
LABEL_46:

  return v7;
}

- (id)appPunchOutDialRequestWithEndpointIDSDestinationURI:(id)i
{
  v27 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v5 = objc_alloc_init(MEMORY[0x277D6EE28]);
  destinationID = [(PHAssistantCall *)self destinationID];
  emergencyCall = [(SAPhoneCall *)self emergencyCall];
  bOOLValue = [emergencyCall BOOLValue];

  if (!bOOLValue)
  {
    if ([(SAPhoneCall *)self faceTime]|| [(SAPhoneCall *)self faceTimeAudio])
    {
      faceTimeProvider = [v5 faceTimeProvider];
    }

    else
    {
      faceTimeProvider = [v5 telephonyProvider];
    }

    destinationHandle = faceTimeProvider;
    v13 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:faceTimeProvider];
    [v13 setVideo:{-[SAPhoneCall faceTime](self, "faceTime")}];
    [v13 setDestinationID:destinationID];
    backingContact = [(PHAssistantCall *)self backingContact];
    identifier = [backingContact identifier];
    [v13 setContactIdentifier:identifier];

    [v13 setPerformDialAssist:{-[PHAssistantCall shouldApplyInternationalAssist](self, "shouldApplyInternationalAssist")}];
LABEL_17:

    goto LABEL_18;
  }

  v10 = PHDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = destinationID;
    _os_log_impl(&dword_233521000, v10, OS_LOG_TYPE_DEFAULT, "Siri punch out URL is handling an emergency call request, with destination ID %@", &v25, 0xCu);
  }

  v11 = objc_alloc(MEMORY[0x277D6EED0]);
  emergencyProvider = [v5 emergencyProvider];
  v13 = [v11 initWithProvider:emergencyProvider];

  [v13 setPerformDialAssist:0];
  emergencyProvider2 = [v5 emergencyProvider];
  v15 = [PHAssistantCall isEmergencyNumberOrIsWhiteListed:destinationID forProvider:emergencyProvider2];

  v17 = PHDefaultLog(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (destinationID && v15)
  {
    if (v18)
    {
      v25 = 138412290;
      v26 = destinationID;
      _os_log_impl(&dword_233521000, v17, OS_LOG_TYPE_DEFAULT, "The destinationID is whitelisted as an emergency number, so the punch out URL will contain the destinationID: %@", &v25, 0xCu);
    }

    destinationHandle = [(PHAssistantCall *)self destinationHandle];
    [v13 setHandle:destinationHandle];
    goto LABEL_17;
  }

  if (v18)
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_233521000, v17, OS_LOG_TYPE_DEFAULT, "The destinationID is NOT whitelisted, so we will not include the destinationID in the URL but dial a generic emergency number", &v25, 2u);
  }

  [v13 setDialType:1];
LABEL_18:
  if ([(SAPhoneCall *)self speakerphoneCall])
  {
    [v13 setAudioSourceIdentifier:*MEMORY[0x277D6F0F0]];
  }

  [v13 setEndpointIDSDestinationURI:iCopy];
  v23 = PHDefaultLog([v13 setOriginatingUIType:11]);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v13;
    _os_log_impl(&dword_233521000, v23, OS_LOG_TYPE_DEFAULT, "Siri punch out URL created dial request %@", &v25, 0xCu);
  }

  return v13;
}

- (void)_performAppPunchOutWithDialRequest:(id)request withServiceHelper:(id)helper completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  helperCopy = helper;
  completionCopy = completion;
  v11 = PHDefaultLog(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = requestCopy;
    _os_log_impl(&dword_233521000, v11, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  v12 = [requestCopy URL];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277D479F0]);
    refId = [(PHAssistantCall *)self refId];
    [v13 setRefId:refId];

    v15 = PHDefaultLog([v13 setPunchOutUri:v12]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_233521000, v15, OS_LOG_TYPE_DEFAULT, "appPunchOut: %@", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_233524870;
    v16[3] = &unk_2789DD7E8;
    v17 = v12;
    v18 = requestCopy;
    v19 = completionCopy;
    [helperCopy handleCommand:v13 completion:v16];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"Unable to call recipient"];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  helperCopy = helper;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_233524B44;
  v24 = sub_233524B54;
  _validate = [(PHAssistantCall *)self _validate];
  v8 = v21[5];
  if (!v8)
  {
    v10 = MEMORY[0x277D6EDF8];
    serialQueue = [(PHAssistantCall *)self serialQueue];
    v12 = [v10 callCenterWithQueue:serialQueue];

    serialQueue2 = [(PHAssistantCall *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233524B5C;
    block[3] = &unk_2789DD838;
    v15 = v12;
    v19 = &v20;
    v18 = completionCopy;
    v16 = helperCopy;
    selfCopy = self;
    dictionary = v12;
    dispatch_sync(serialQueue2, block);

    goto LABEL_5;
  }

  if (completionCopy)
  {
    dictionary = [v8 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary);
LABEL_5:
  }

  _Block_object_dispose(&v20, 8);
}

@end