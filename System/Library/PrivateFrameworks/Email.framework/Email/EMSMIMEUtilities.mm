@interface EMSMIMEUtilities
+ (BOOL)_isICloudAddress:(id)address;
+ (unint64_t)_encryptionLevelForSender:(id)sender;
+ (unint64_t)_messageSecurityLevelViaOtherDevices;
+ (unint64_t)encryptionLevelForSender:(id)sender forAdvertisement:(BOOL)advertisement useGCM:(BOOL *)m encryptSubject:(BOOL *)subject;
@end

@implementation EMSMIMEUtilities

void ___ef_log_EMSMIMEUtilities_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMSMIMEUtilities");
  v1 = _ef_log_EMSMIMEUtilities_log;
  _ef_log_EMSMIMEUtilities_log = v0;
}

+ (unint64_t)_messageSecurityLevelViaOtherDevices
{
  v50[1] = *MEMORY[0x1E69E9840];
  if (![EMInternalPreferences preferenceEnabled:26])
  {
    if (sComputedMessageSecurityLevel == 1)
    {
      return sCurrentSecurityLevel;
    }

    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v50[0] = *MEMORY[0x1E69597F8];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
    v45 = 0;
    v4 = [defaultStore accountsWithAccountTypeIdentifiers:v3 error:&v45];
    v5 = v45;
    firstObject = [v4 firstObject];

    if (v5)
    {
      v7 = _ef_log_EMSMIMEUtilities(v6);
      mEMORY[0x1E698DC80] = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v5;
        _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Error in getting account: %@\nWill drop to most-compatible", buf, 0xCu);
      }

      v2 = 100;
      goto LABEL_15;
    }

    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v33 = [mEMORY[0x1E698DC80] altDSIDForAccount:firstObject];
    v32 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    [v32 setAppleIDWithAltDSID:v33 inUse:1 forService:1];
    v34 = objc_alloc_init(MEMORY[0x1E698DD68]);
    aa_altDSID = [firstObject aa_altDSID];
    [v34 setAltDSID:aa_altDSID];

    [v34 setIncludeUntrustedDevices:1];
    v49 = *MEMORY[0x1E698DC58];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    [v34 setServices:v9];

    [v34 setOperatingSystems:&unk_1F461CED0];
    promise = [MEMORY[0x1E699B868] promise];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __56__EMSMIMEUtilities__messageSecurityLevelViaOtherDevices__block_invoke;
    v43[3] = &unk_1E826C5B0;
    v11 = promise;
    v44 = v11;
    v30 = v11;
    [v32 fetchDeviceListWithContext:v34 completion:v43];
    future = [v11 future];
    v42 = 0;
    v31 = [future result:&v42];
    v5 = v42;

    if (v5)
    {
      v14 = _ef_log_EMSMIMEUtilities(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v5;
        _os_log_impl(&dword_1C6655000, v14, OS_LOG_TYPE_DEFAULT, "Error in getting devices: %@\nWill drop to most-compatible", buf, 0xCu);
      }

LABEL_12:
      v2 = 100;
LABEL_13:

      v15 = v31;
      goto LABEL_14;
    }

    v15 = v31;
    if (![v31 count])
    {
      v2 = 200;
LABEL_14:

LABEL_15:
      sCurrentSecurityLevel = v2;
      sComputedMessageSecurityLevel = 1;

      return v2;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = v31;
    v17 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (!v17)
    {
      v2 = 200;
      goto LABEL_13;
    }

    v18 = *v39;
    v2 = 200;
LABEL_20:
    v19 = 0;
    while (1)
    {
      if (*v39 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v38 + 1) + 8 * v19);
      operatingSystemName = [v20 operatingSystemName];
      v22 = [operatingSystemName isEqualToString:@"macOS"];

      if (v22)
      {
        break;
      }

      operatingSystemName2 = [v20 operatingSystemName];
      v27 = [operatingSystemName2 isEqualToString:@"iOS"];

      if (v27)
      {
        operatingSystemVersion = [v20 operatingSystemVersion];
        [operatingSystemVersion floatValue];
        v25 = v29 < 17.0;

LABEL_27:
        if (v25)
        {
          goto LABEL_12;
        }
      }

      if (v17 == ++v19)
      {
        v17 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (!v17)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    operatingSystemVersion2 = [v20 operatingSystemVersion];
    [operatingSystemVersion2 floatValue];
    v25 = v24 < 14.0;

    goto LABEL_27;
  }

  return 200;
}

+ (BOOL)_isICloudAddress:(id)address
{
  addressCopy = address;
  lowercaseString = [addressCopy lowercaseString];

  v5 = ([lowercaseString hasSuffix:@"@icloud.com"] & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @"@mac.com") & 1) != 0 || objc_msgSend(lowercaseString, "hasSuffix:", @"@me.com");
  return v5;
}

+ (unint64_t)_encryptionLevelForSender:(id)sender
{
  senderCopy = sender;
  if ((_os_feature_enabled_impl() & 1) != 0 && [EMInternalPreferences preferenceEnabled:24])
  {
    if (senderCopy && [self _isICloudAddress:senderCopy])
    {
      _messageSecurityLevelViaOtherDevices = [self _messageSecurityLevelViaOtherDevices];
    }

    else
    {
      _messageSecurityLevelViaOtherDevices = 200;
    }
  }

  else
  {
    _messageSecurityLevelViaOtherDevices = 100;
  }

  return _messageSecurityLevelViaOtherDevices;
}

+ (unint64_t)encryptionLevelForSender:(id)sender forAdvertisement:(BOOL)advertisement useGCM:(BOOL *)m encryptSubject:(BOOL *)subject
{
  advertisementCopy = advertisement;
  v9 = [self _encryptionLevelForSender:sender];
  v10 = v9;
  if (m)
  {
    if (v9 == 200)
    {
      v11 = 1;
    }

    else
    {
      if (advertisementCopy)
      {
        v12 = 27;
      }

      else
      {
        v12 = 29;
      }

      v11 = [EMInternalPreferences preferenceEnabled:v12];
    }

    *m = v11;
  }

  if (subject)
  {
    if (v10 == 200)
    {
      v13 = 1;
    }

    else
    {
      if (advertisementCopy)
      {
        v14 = 28;
      }

      else
      {
        v14 = 30;
      }

      v13 = [EMInternalPreferences preferenceEnabled:v14];
    }

    *subject = v13;
  }

  return v10;
}

@end