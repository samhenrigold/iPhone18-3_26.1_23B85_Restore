@interface CKVettingAlerts
+ (BOOL)isEmail:(id)email;
+ (id)_alertContentForAppStoreOperationWithApp:(id)app shareMetadata:(id)metadata keyPrefix:(id)prefix titleKeySuffix:(id)suffix bodyKeySuffix:(id)keySuffix isSourceICS:(BOOL)s;
+ (id)_alertContentForDropDownSelectionWithShareName:(id)name ownerName:(id)ownerName currentUserName:(id)userName currentUserFormattedUsername:(id)username dropDownTitles:(id)titles locKeyPrefix:(id)prefix isSourceICS:(BOOL)s;
+ (id)_alertContentForVettingBindingPromptWithBundleID:(id)d shareName:(id)name ownerName:(id)ownerName shareType:(id)type isShortcut:(BOOL)shortcut isSourceICS:(BOOL)s;
+ (id)_sanitizedShareURLSlug:(id)slug;
+ (id)alertContentDictionaryForDeviceOfflineErrorWithURLSlug:(id)slug;
+ (id)alertContentDictionaryForServiceUnavailableErrorWithURLSlug:(id)slug;
+ (id)alertContentForAppDownload:(id)download shareMetadata:(id)metadata isSourceICS:(BOOL)s;
+ (id)alertContentForAppStoreAppLookupFailureWithShareName:(id)name error:(id)error;
+ (id)alertContentForAppStoreUpdateLookupFailureWithShareName:(id)name appName:(id)appName error:(id)error;
+ (id)alertContentForCompleteVettingError:(id)error shareTitle:(id)title email:(id)email phone:(id)phone reconstructedShareURL:(id)l;
+ (id)alertContentForFirstJoinAlertWithRecordName:(id)name appName:(id)appName bundleID:(id)d shareMetadata:(id)metadata currentUserName:(id)userName currentUserFormattedUsername:(id)username;
+ (id)alertContentForGenericErrorWithURLSlug:(id)slug;
+ (id)alertContentForGenericInitiateVettingError;
+ (id)alertContentForICloudAccountError:(id)error shareMetadata:(id)metadata shareURL:(id)l;
+ (id)alertContentForInitiateVettingError:(id)error shareTitle:(id)title isEmail:(BOOL)email address:(id)address;
+ (id)alertContentForRequestAccessConfirmation;
+ (id)alertContentForRequestAccessFailure;
+ (id)alertContentForRequestAccessWithHandle:(id)handle;
+ (id)alertContentForShareMetadataErrorWithURL:(id)l email:(id)email;
+ (id)alertContentForUnprovisionedDataclassWithURL:(id)l email:(id)email;
+ (id)appSpecificLocKeyForBundleID:(id)d shareType:(id)type prefix:(id)prefix;
+ (id)appSpecificLocKeyForURLSlug:(id)slug prefix:(id)prefix;
+ (id)deviceTypeSpecificSuffix;
+ (id)getAlertOptionsFromOptions:(id)options isSourceICS:(BOOL)s;
+ (id)getLaunchingOptionsFromOptions:(id)options isSourceICS:(BOOL)s;
+ (id)mediumNameFromComponents:(id)components;
+ (id)platformSpecificAlertOptionsWithOptions:(id)options bundleIdentifier:(id)identifier;
+ (void)showAlertWithContent:(id)content isSourceICS:(BOOL)s additionalOptions:(id)options responseHandler:(id)handler;
+ (void)showDropDownAlert:(id)alert defaultResponseBlock:(id)block alternateResponseBlock:(id)responseBlock errorBlock:(id)errorBlock;
+ (void)showFailureAlert:(id)alert isSourceICS:(BOOL)s;
+ (void)showICloudAccountSettingAlert:(id)alert appName:(id)name previewRequested:(BOOL *)requested isSourceICS:(BOOL)s maid:(BOOL)maid;
+ (void)showRequestAccessAlert:(id)alert isSourceICS:(BOOL)s requestAccessHandler:(id)handler cancelHandler:(id)cancelHandler;
+ (void)showRequestAccessResultAlert:(id)alert isSourceICS:(BOOL)s;
@end

@implementation CKVettingAlerts

+ (id)alertContentForFirstJoinAlertWithRecordName:(id)name appName:(id)appName bundleID:(id)d shareMetadata:(id)metadata currentUserName:(id)userName currentUserFormattedUsername:(id)username
{
  appNameCopy = appName;
  dCopy = d;
  metadataCopy = metadata;
  userNameCopy = userName;
  usernameCopy = username;
  nameCopy = name;
  v19 = +[NSCharacterSet whitespaceCharacterSet];
  v20 = [nameCopy stringByTrimmingCharactersInSet:v19];

  containerID = [metadataCopy containerID];
  specialContainerType = [containerID specialContainerType];

  if (specialContainerType <= 0x1D)
  {
    if (((1 << specialContainerType) & 0x32200000) != 0)
    {
      v85 = a2;
      selfCopy = self;
      share = [metadataCopy share];
      v24 = [share objectForKeyedSubscript:CKShareTypeKey];

      v89 = v20;
      if ([v20 length])
      {
        v31 = appNameCopy;
        v32 = sub_16B8(@"TITLED_DOCUMENT_OPEN_TITLE", @"%@%@", v25, v26, v27, v28, v29, v30, v20);
      }

      else
      {
        v33 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:v24 prefix:@"UNTITLED_DOCUMENT_OPEN_TITLE_"];
        v31 = appNameCopy;
        v32 = sub_16B8(v33, @"%@", v34, v35, v36, v37, v38, v39, appNameCopy);
      }

      v90 = dCopy;
      v40 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:v24 prefix:@"PRIVATE_DOCUMENT_OPEN_BODY_"];
      ownerIdentity = [metadataCopy ownerIdentity];
      nameComponents = [ownerIdentity nameComponents];
      v43 = [CKVettingAlerts mediumNameFromComponents:nameComponents];
      v83 = [CKVettingAlerts mediumNameFromComponents:userNameCopy];
      v50 = sub_16B8(v40, @"%@%@%@", v44, v45, v46, v47, v48, v49, v43);

      appNameCopy = v31;
      if (!v32 || !v50)
      {
        v81 = +[NSAssertionHandler currentHandler];
        [v81 handleFailureInMethod:v85 object:selfCopy file:@"CKVettingAlerts.m" lineNumber:101 description:{@"Failed to construct alertTitle: %@ and/or alertBody: %@ for %@", v32, v50, v31}];
      }

      v96[0] = @"ckVettingAlertTitle";
      v96[1] = @"ckVettingAlertBody";
      v97[0] = v32;
      v97[1] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];

      v20 = v89;
      dCopy = v90;
      goto LABEL_9;
    }

    if (specialContainerType == 4)
    {
      v53 = +[NSAssertionHandler currentHandler];
      [v53 handleFailureInMethod:a2 object:self file:@"CKVettingAlerts.m" lineNumber:77 description:@"ShareAcceptor isn't responsible for iWork FirstJoinAlert"];

      v54 = +[NSAssertionHandler currentHandler];
      [v54 handleFailureInMethod:a2 object:self file:@"CKVettingAlerts.m" lineNumber:131 description:{@"Appeasing the compiler, should never get here"}];

      v51 = &__NSDictionary0__struct;
      goto LABEL_9;
    }
  }

  v86 = a2;
  v91 = dCopy;
  selfCopy2 = self;
  if ([v20 length])
  {
    sub_16B8(@"TITLED_NONIWORK_DOCUMENT_OPEN_TITLE", @"%@", v55, v56, v57, v58, v59, v60, v20);
  }

  else
  {
    sub_16B8(@"UNTITLED_NONIWORK_DOCUMENT_OPEN_TITLE", @"%@", v55, v56, v57, v58, v59, v60, appNameCopy);
  }
  v61 = ;
  share2 = [metadataCopy share];
  allowsAnonymousPublicAccess = [share2 allowsAnonymousPublicAccess];

  ownerIdentity2 = [metadataCopy ownerIdentity];
  nameComponents2 = [ownerIdentity2 nameComponents];
  v66 = [CKVettingAlerts mediumNameFromComponents:nameComponents2];
  v73 = v66;
  if (allowsAnonymousPublicAccess)
  {
    v74 = sub_16B8(@"PUBLIC_ANONYMOUS_SHARING_OPEN_BODY", @"%@", v67, v68, v69, v70, v71, v72, v66);
  }

  else
  {
    v84 = [CKVettingAlerts mediumNameFromComponents:userNameCopy];
    v74 = sub_16B8(@"GENERIC_APP_SHARING_OPEN_BODY", @"%@%@%@", v75, v76, v77, v78, v79, v80, v73);
  }

  if (!v61 || !v74)
  {
    v82 = +[NSAssertionHandler currentHandler];
    [v82 handleFailureInMethod:v86 object:selfCopy2 file:@"CKVettingAlerts.m" lineNumber:126 description:{@"Filed to construct alertTitle: %@ and/or alertBody: %@ for generic share", v61, v74}];
  }

  v94[0] = @"ckVettingAlertTitle";
  v94[1] = @"ckVettingAlertBody";
  v95[0] = v61;
  v95[1] = v74;
  v51 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:2];

  dCopy = v91;
LABEL_9:

  return v51;
}

+ (id)getAlertOptionsFromOptions:(id)options isSourceICS:(BOOL)s
{
  optionsCopy = options;
  v6 = optionsCopy;
  if (s)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 addEntriesFromDictionary:v6];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationForcesModalAlertAppearance];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDisplayActionButtonOnLockScreen];
    v8 = [v7 copy];
  }

  else
  {
    v8 = optionsCopy;
  }

  return v8;
}

+ (id)getLaunchingOptionsFromOptions:(id)options isSourceICS:(BOOL)s
{
  optionsCopy = options;
  v6 = optionsCopy;
  if (s)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 addEntriesFromDictionary:v6];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyUnlockDevice];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyPromptUnlockDevice];
    v8 = [v7 copy];
  }

  else
  {
    v8 = optionsCopy;
  }

  return v8;
}

+ (id)_alertContentForVettingBindingPromptWithBundleID:(id)d shareName:(id)name ownerName:(id)ownerName shareType:(id)type isShortcut:(BOOL)shortcut isSourceICS:(BOOL)s
{
  sCopy = s;
  shortcutCopy = shortcut;
  dCopy = d;
  nameCopy = name;
  ownerNameCopy = ownerName;
  typeCopy = type;
  v33 = ownerNameCopy;
  if (ownerNameCopy)
  {
    if (shortcutCopy)
    {
      v16 = @"VETTING_ALERT_SINGLE_MATCH_BODY_";
    }

    else
    {
      v16 = @"VETTING_ALERT_BODY_";
    }

    v17 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:typeCopy prefix:v16];
    v29 = [CKVettingAlerts mediumNameFromComponents:ownerNameCopy];
    v18 = CKLocalizedString();
  }

  else
  {
    if (shortcutCopy)
    {
      v19 = @"VETTING_ALERT_SINGLE_MATCH_BODY_UNKNOWN_USER_";
    }

    else
    {
      v19 = @"VETTING_ALERT_BODY_UNKNOWN_USER_";
    }

    v17 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:typeCopy prefix:v19];
    v18 = CKLocalizedString();
  }

  v20 = [NSString stringWithFormat:@"VETTING_ALERT_TITLE%@_", @"_IOS"];
  v21 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:typeCopy prefix:v20];
  v30 = nameCopy;
  v22 = CKLocalizedString();
  v32 = typeCopy;
  v35[0] = kCFUserNotificationAlertHeaderKey;
  v35[1] = kCFUserNotificationAlertMessageKey;
  v36[0] = v22;
  v36[1] = v18;
  v35[2] = kCFUserNotificationDefaultButtonTitleKey;
  CKLocalizedString();
  v23 = v31 = nameCopy;
  v36[2] = v23;
  v35[3] = kCFUserNotificationAlternateButtonTitleKey;
  v24 = CKLocalizedString();
  v36[3] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4, v30];
  v26 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v25 bundleIdentifier:dCopy];

  v27 = [CKVettingAlerts getAlertOptionsFromOptions:v26 isSourceICS:sCopy];

  return v27;
}

+ (id)deviceTypeSpecificSuffix
{
  v4 = CKDeviceClass();
  if ([v4 isEqualToString:@"iPhone"])
  {
    v5 = @"_IPHONE";
LABEL_7:
    v6 = [@"_IOS" stringByAppendingString:v5];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"iPad"])
  {
    v5 = @"_IPAD";
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"iPod"])
  {
    v5 = @"_IPOD_TOUCH";
    goto LABEL_7;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Device class %@ is not yet supported by CloudKit Vetting Alerts", buf, 0xCu);
  }

  v9 = +[NSAssertionHandler currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"CKVettingAlerts.m" lineNumber:240 description:{@"Unsupported device class: %@", v4}];

  v6 = @"_IOS";
LABEL_8:

  return v6;
}

+ (id)alertContentForAppDownload:(id)download shareMetadata:(id)metadata isSourceICS:(BOOL)s
{
  sCopy = s;
  metadataCopy = metadata;
  downloadCopy = download;
  deviceTypeSpecificSuffix = [self deviceTypeSpecificSuffix];
  v11 = [CKVettingAlerts _alertContentForAppStoreOperationWithApp:downloadCopy shareMetadata:metadataCopy keyPrefix:@"GET_APP_" titleKeySuffix:@"_IOS" bodyKeySuffix:deviceTypeSpecificSuffix isSourceICS:sCopy];

  return v11;
}

+ (id)alertContentForAppStoreAppLookupFailureWithShareName:(id)name error:(id)error
{
  errorCopy = error;
  nameCopy = name;
  deviceTypeSpecificSuffix = [self deviceTypeSpecificSuffix];
  v9 = [@"APP_STORE_FAILURE_TITLE" stringByAppendingString:@"_IOS"];
  v10 = CKLocalizedString();

  domain = [errorCopy domain];

  if (domain == NSURLErrorDomain)
  {
    if ([errorCopy code] == -1009)
    {
      v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_OFFLINE_BODY%@", deviceTypeSpecificSuffix];
      v28[0] = v10;
      v27[0] = @"ckVettingAlertTitle";
      v27[1] = @"ckVettingAlertBody";
      v15 = CKLocalizedString();
      v28[1] = v15;
      v16 = v28;
      v17 = v27;
    }

    else
    {
      v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_STORE_NOT_AVAILABLE_BODY%@", deviceTypeSpecificSuffix];
      v25[0] = @"ckVettingAlertTitle";
      v25[1] = @"ckVettingAlertBody";
      v26[0] = v10;
      v15 = CKLocalizedString();
      v26[1] = v15;
      v16 = v26;
      v17 = v25;
    }
  }

  else
  {
    domain2 = [errorCopy domain];
    v13 = domain2;
    if (domain2 == CKUnderlyingErrorDomain)
    {
      code = [errorCopy code];

      if (code == &stru_3D8.size)
      {
        v23[0] = @"ckVettingAlertTitle";
        v23[1] = @"ckVettingAlertBody";
        v24[0] = v10;
        v14 = CKLocalizedString();
        v24[1] = v14;
        v19 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_STORE_NOT_AVAILABLE_BODY%@", deviceTypeSpecificSuffix];
    v21[0] = @"ckVettingAlertTitle";
    v21[1] = @"ckVettingAlertBody";
    v22[0] = v10;
    v15 = CKLocalizedString();
    v22[1] = v15;
    v16 = v22;
    v17 = v21;
  }

  v19 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:2];

LABEL_11:

  return v19;
}

+ (id)alertContentForAppStoreUpdateLookupFailureWithShareName:(id)name appName:(id)appName error:(id)error
{
  appNameCopy = appName;
  errorCopy = error;
  nameCopy = name;
  v10 = [@"APP_STORE_FAILURE_TITLE" stringByAppendingString:@"_IOS"];
  v11 = CKLocalizedString();

  domain = [errorCopy domain];

  if (domain == NSURLErrorDomain)
  {
    v21 = appNameCopy;
    if ([errorCopy code] == -1009)
    {
      v15 = CKLocalizedString();
      v34 = @"ckVettingAlertTitle";
      v35 = @"ckVettingAlertBody";
      v36 = v11;
      v37 = v15;
      v16 = &v36;
      v17 = &v34;
    }

    else
    {
      v15 = CKLocalizedString();
      v30 = @"ckVettingAlertTitle";
      v31 = @"ckVettingAlertBody";
      v32 = v11;
      v33 = v15;
      v16 = &v32;
      v17 = &v30;
    }
  }

  else
  {
    domain2 = [errorCopy domain];
    v14 = domain2;
    if (domain2 == CKUnderlyingErrorDomain)
    {
      code = [errorCopy code];

      if (code == &stru_3D8.size)
      {
        v21 = appNameCopy;
        v15 = CKLocalizedString();
        v26 = @"ckVettingAlertTitle";
        v27 = @"ckVettingAlertBody";
        v28 = v11;
        v29 = v15;
        v16 = &v28;
        v17 = &v26;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v21 = appNameCopy;
    v15 = CKLocalizedString();
    v22 = @"ckVettingAlertTitle";
    v23 = @"ckVettingAlertBody";
    v24 = v11;
    v25 = v15;
    v16 = &v24;
    v17 = &v22;
  }

LABEL_10:
  v19 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:2, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37];

  return v19;
}

+ (id)_alertContentForAppStoreOperationWithApp:(id)app shareMetadata:(id)metadata keyPrefix:(id)prefix titleKeySuffix:(id)suffix bodyKeySuffix:(id)keySuffix isSourceICS:(BOOL)s
{
  sCopy = s;
  appCopy = app;
  metadataCopy = metadata;
  keySuffixCopy = keySuffix;
  prefixCopy = prefix;
  suffix = [NSString stringWithFormat:@"%@TITLE%@", prefixCopy, suffix];
  v17 = CKLocalizedString();
  ownerIdentity = [metadataCopy ownerIdentity];
  nameComponents = [ownerIdentity nameComponents];

  if (nameComponents)
  {
    keySuffixCopy = [NSString stringWithFormat:@"%@BODY%@", prefixCopy, keySuffixCopy];

    ownerIdentity2 = [metadataCopy ownerIdentity];
    nameComponents2 = [ownerIdentity2 nameComponents];
    v30 = [CKVettingAlerts mediumNameFromComponents:nameComponents2];
    v23 = CKLocalizedString();
  }

  else
  {
    keySuffixCopy = [NSString stringWithFormat:@"%@BODY_UNKNOWN_USER%@", prefixCopy, keySuffixCopy];

    v30 = appCopy;
    v23 = CKLocalizedString();
  }

  v32[0] = kCFUserNotificationAlertHeaderKey;
  v32[1] = kCFUserNotificationAlertMessageKey;
  v33[0] = v17;
  v33[1] = v23;
  v32[2] = kCFUserNotificationDefaultButtonTitleKey;
  v24 = CKLocalizedString();
  v33[2] = v24;
  v32[3] = kCFUserNotificationAlternateButtonTitleKey;
  v25 = CKLocalizedString();
  v33[3] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4, v30];
  v27 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v26 bundleIdentifier:0];

  v28 = [CKVettingAlerts getAlertOptionsFromOptions:v27 isSourceICS:sCopy];

  return v28;
}

+ (id)alertContentForInitiateVettingError:(id)error shareTitle:(id)title isEmail:(BOOL)email address:(id)address
{
  emailCopy = email;
  errorCopy = error;
  titleCopy = title;
  addressCopy = address;
  v12 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_TITLE_CANT_SEND_LINK%@"];
  v19 = sub_16B8(v12, &stru_14980, v13, v14, v15, v16, v17, v18, @"_IOS");
  v26 = sub_16B8(@"VETTING_FAILURE_ALERT_BODY_INITIATE_GENERIC_ERROR", &stru_14980, v20, v21, v22, v23, v24, v25, v74);
  domain = [errorCopy domain];
  v28 = [domain isEqualToString:CKErrorDomain];

  if (v28)
  {
    userInfo = [errorCopy userInfo];
    v30 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    code = [v30 code];
    if (code <= 8006)
    {
      if (code == &loc_1388 + 5)
      {
        v75 = titleCopy;
        v38 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_PCS_ERROR";
      }

      else
      {
        if (code != &loc_1F44 + 2)
        {
          goto LABEL_29;
        }

        v75 = addressCopy;
        if (emailCopy)
        {
          v38 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_TOO_MANY_VETS_EMAIL";
        }

        else
        {
          v38 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_TOO_MANY_VETS_NUMBER";
        }
      }

      v39 = @"%@";
      goto LABEL_26;
    }

    if (code != &loc_1F44 + 3)
    {
      if (code == &loc_1F48)
      {
        v41 = +[CKContainer matterhornName];
        if (emailCopy)
        {
          sub_16B8(@"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_OTHER_EMAIL", @"%@%@", v57, v58, v59, v60, v61, v62, addressCopy);
        }

        else
        {
          sub_16B8(@"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_OTHER_NUMBER", @"%@%@", v57, v58, v59, v60, v61, v62, addressCopy);
        }
        v70 = ;

        v49 = v19;
        v26 = v70;
        goto LABEL_27;
      }

      if (code == &loc_1F48 + 2)
      {
        v38 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_SERVER_ERROR";
        v39 = &stru_14980;
LABEL_26:
        sub_16B8(v38, v39, v32, v33, v34, v35, v36, v37, v75);
        v41 = v26;
        v26 = v49 = v19;
LABEL_27:
        v42 = v12;
LABEL_28:

        v19 = v49;
        v12 = v42;
      }

LABEL_29:

      goto LABEL_30;
    }

    userInfo2 = [v30 userInfo];
    v41 = [userInfo2 objectForKeyedSubscript:CKErrorAccountPrimaryEmailKey];

    if (emailCopy)
    {
      v42 = [@"VETTING_FAILURE_ALERT_TITLE_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL" stringByAppendingString:@"_IOS"];

      v49 = sub_16B8(v42, &stru_14980, v43, v44, v45, v46, v47, v48, v75);

      if (!v41 || ([v41 isEqualToString:&stru_14980] & 1) != 0)
      {
        v76 = addressCopy;
        v56 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL_NO_APPLE_ID";
LABEL_21:
        v69 = @"%@";
LABEL_36:
        v73 = sub_16B8(v56, v69, v50, v51, v52, v53, v54, v55, v76);

        v26 = v73;
        goto LABEL_28;
      }

      v76 = addressCopy;
      v56 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL";
    }

    else
    {
      v42 = [@"VETTING_FAILURE_ALERT_TITLE_INITIATE_VETTED_TO_CALLER_ERROR_PHONE" stringByAppendingString:@"_IOS"];

      v49 = sub_16B8(v42, &stru_14980, v63, v64, v65, v66, v67, v68, v75);

      if (!v41 || ([v41 isEqualToString:&stru_14980] & 1) != 0)
      {
        v76 = addressCopy;
        v56 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_PHONE_NO_APPLE_ID";
        goto LABEL_21;
      }

      v76 = addressCopy;
      v56 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_PHONE";
    }

    v69 = @"%@%@";
    goto LABEL_36;
  }

LABEL_30:
  v77[0] = @"ckVettingAlertTitle";
  v77[1] = @"ckVettingAlertBody";
  v78[0] = v19;
  v78[1] = v26;
  v71 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];

  return v71;
}

+ (id)_sanitizedShareURLSlug:(id)slug
{
  slugCopy = slug;
  if (qword_197F0 != -1)
  {
    dispatch_once(&qword_197F0, &stru_14560);
  }

  cKURLSlug = [slugCopy CKURLSlug];
  if ([qword_197F8 containsObject:cKURLSlug])
  {
    v5 = cKURLSlug;
  }

  else
  {
    v5 = @"share";
  }

  return v5;
}

+ (id)alertContentForCompleteVettingError:(id)error shareTitle:(id)title email:(id)email phone:(id)phone reconstructedShareURL:(id)l
{
  errorCopy = error;
  titleCopy = title;
  emailCopy = email;
  phoneCopy = phone;
  lCopy = l;
  v17 = @"_WITH_SHARE_NAME";
  if (!titleCopy)
  {
    v17 = @"_WITHOUT_SHARE_NAME";
  }

  v208 = lCopy;
  v209 = v17;
  v210 = [self _sanitizedShareURLSlug:lCopy];
  v209 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_GENERIC_ERROR" stringByAppendingString:@"_IOS"];
  v25 = sub_16B8(v209, &stru_14980, v19, v20, v21, v22, v23, v24, v195);
  v38 = sub_16B8(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_ADDRESS", &stru_14980, v26, v27, v28, v29, v30, v31, v196);
  v211 = emailCopy;
  if (emailCopy)
  {
    v39 = sub_16B8(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_EMAIL", &stru_14980, v32, v33, v34, v35, v36, v37, v197);

    v38 = v39;
  }

  v207 = phoneCopy;
  if (phoneCopy)
  {
    v40 = sub_16B8(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_PHONE", &stru_14980, v32, v33, v34, v35, v36, v37, v197);

    v38 = v40;
  }

  domain = [errorCopy domain];
  v42 = [domain isEqualToString:CKErrorDomain];

  if (!v42)
  {
    v46 = v207;
    v55 = v209;
    goto LABEL_78;
  }

  userInfo = [errorCopy userInfo];
  v44 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  v206 = v44;
  code = [v44 code];
  if (code > 8008)
  {
    if (code == &loc_1F48 + 1)
    {
      v83 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_DRYRUN_KEYSWAP_FAILED%@_%@"];

      v204 = sub_16B8(v83, &stru_14980, v84, v85, v86, v87, v88, v89, @"_IOS");

      if (([v210 isEqualToString:kCKPhotosSharedLibraryShareURLSlug] & 1) != 0 || objc_msgSend(v210, "isEqualToString:", kCKFreeformShareURLSlug))
      {
        v90 = @"PHONE";
        v46 = v207;
        if (!v207)
        {
          v90 = @"EMAIL";
        }

        v116 = [@"VETTING_FAILURE_ALERT_BODY_COMPLETE_DRYRUN_KEYSWAP_FAILED_" stringByAppendingFormat:@"%@_%@", v210, v90];
      }

      else
      {
        v46 = v207;
        if (v207)
        {
          v116 = @"PHONE";
        }

        else
        {
          v116 = @"EMAIL";
        }

        v116 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_DRYRUN_KEYSWAP_FAILED%@_IOS_%@", v209, v116];
      }

      v209 = v116;

      v123 = sub_16B8(v209, @"%@", v117, v118, v119, v120, v121, v122, titleCopy);
      v124 = v38;
      v38 = v123;
      v55 = v209;
      v62 = v124;
      goto LABEL_40;
    }

    if (code == &loc_1F48 + 3)
    {
      v46 = v207;
      if (v211)
      {
        v92 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_TOKEN_AUTH_FAILED_EMAIL" stringByAppendingString:@"_IOS"];
        v99 = sub_16B8(v92, &stru_14980, v93, v94, v95, v96, v97, v98, v197);

        v100 = @"VETTING_FAILURE_ALERT_BODY_COMPLETE_TOKEN_AUTH_FAILED_EMAIL";
      }

      else
      {
        v101 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_TOKEN_AUTH_FAILED_PHONE" stringByAppendingString:@"_IOS"];
        v99 = sub_16B8(v101, &stru_14980, v102, v103, v104, v105, v106, v107, v197);

        v100 = @"VETTING_FAILURE_ALERT_BODY_COMPLETE_TOKEN_AUTH_FAILED_PHONE";
      }

      v108 = [(__CFString *)v100 stringByAppendingString:@"_IOS"];
      v115 = sub_16B8(v108, &stru_14980, v109, v110, v111, v112, v113, v114, v198);

      v38 = v115;
      v62 = v108;
      v54 = v99;
      goto LABEL_75;
    }

    if (code != &loc_1F48 + 4)
    {
      v46 = v207;
      v55 = v209;
      goto LABEL_77;
    }

    userInfo2 = [v44 userInfo];
    v64 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v65 = v64;
    domain2 = [v64 domain];
    if ([domain2 isEqualToString:CKErrorDomain])
    {
      v67 = v65;
      code2 = [v65 code];

      if (code2 != &dword_0 + 2)
      {
        v65 = v67;
LABEL_42:
        v125 = [v211 length];
        v126 = @"_EMAIL";
        if (!v125)
        {
          v126 = @"_PHONE";
        }

        v127 = v126;
        domain3 = [v65 domain];
        v202 = v65;
        if ([domain3 isEqualToString:CKErrorDomain])
        {
          if ([v65 code] == &dword_0 + 3)
          {

            goto LABEL_60;
          }

          code3 = [v65 code];

          v131 = code3 == &dword_4;
          v65 = v202;
          if (v131)
          {
LABEL_60:
            v210 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED" stringByAppendingFormat:@"%@_%@", @"_IOS", v210];
            v205 = sub_16B8(v210, &stru_14980, v152, v153, v154, v155, v156, v157, v199);

            if (([v210 isEqualToString:kCKPhotosSharedLibraryShareURLSlug] & 1) != 0 || objc_msgSend(v210, "isEqualToString:", kCKFreeformShareURLSlug))
            {
              v127 = [@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_OFFLINE_" stringByAppendingFormat:@"%@%@", v210, v127];
            }

            else
            {
              v127 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_OFFLINE%@%@", v209, v127];
            }

            v192 = v127;
            v178 = sub_16B8(v127, @"%@", v159, v160, v161, v162, v163, v164, titleCopy);

            v38 = v192;
            v62 = v202;
            v54 = v205;
            goto LABEL_74;
          }
        }

        else
        {
        }

        domain4 = [v65 domain];
        if ([domain4 isEqualToString:CKErrorDomain])
        {
          code4 = [v65 code];

          v131 = code4 == &dword_8 + 3;
          v65 = v202;
          if (v131)
          {
            if ([@"_IOS" isEqualToString:@"_IOS"] && objc_msgSend(v210, "isEqualToString:", @"share"))
            {
              v132 = v209;
              v133 = v210;
              v2102 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED_ITEM_UNAVAILABLE" stringByAppendingFormat:@"%@%@_%@", v209, @"_IOS", v210];
              v141 = sub_16B8(v2102, @"%@", v135, v136, v137, v138, v139, v140, titleCopy);
            }

            else
            {
              v133 = v210;
              v2102 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED_ITEM_UNAVAILABLE" stringByAppendingFormat:@"%@_%@", @"_IOS", v210];
              v141 = sub_16B8(v2102, &stru_14980, v179, v180, v181, v182, v183, v184, v201);
              v132 = v209;
            }

            if (([v133 isEqualToString:kCKPhotosSharedLibraryShareURLSlug] & 1) != 0 || objc_msgSend(v133, "isEqualToString:", kCKFreeformShareURLSlug))
            {
              v1272 = [@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_ITEM_UNAVAILABLE_" stringByAppendingFormat:@"%@%@", v133, v127];
            }

            else
            {
              v1272 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_ITEM_UNAVAILABLE%@%@", v132, v127];
            }

            v210 = v1272;
            v62 = v202;
            v54 = v141;
            v178 = sub_16B8(v1272, @"%@", v186, v187, v188, v189, v190, v191, titleCopy);
            goto LABEL_74;
          }
        }

        else
        {
        }

        domain5 = [v65 domain];
        if ([domain5 isEqualToString:CKErrorDomain])
        {
          code5 = [v65 code];

          if (code5 == stru_3D8.segname)
          {
            v210 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED" stringByAppendingFormat:@"%@_%@"];
            v54 = sub_16B8(v210, &stru_14980, v145, v146, v147, v148, v149, v150, @"_IOS");

            [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_SERVER_ERROR%@%@", v209, v127];
            v171 = LABEL_65:;
            v178 = sub_16B8(v171, @"%@", v172, v173, v174, v175, v176, v177, titleCopy);

            v38 = v171;
            v62 = v202;
LABEL_74:

            v38 = v178;
            v46 = v207;
LABEL_75:
            v55 = v209;
            goto LABEL_76;
          }
        }

        else
        {
        }

        v210 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED" stringByAppendingFormat:@"%@_%@", @"_IOS", v210];
        v54 = sub_16B8(v210, &stru_14980, v165, v166, v167, v168, v169, v170, v200);

        [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_UNKNOWN%@%@", v209, v127];
        goto LABEL_65;
      }

      domain2 = [v67 userInfo];
      v69 = [domain2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v203 = [v69 objectForKeyedSubscript:v208];

      v65 = v203;
    }

    goto LABEL_42;
  }

  v46 = v207;
  if ((code - 8003) < 2)
  {
    v47 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_GENERIC_ERROR" stringByAppendingString:@"_IOS"];

    v54 = sub_16B8(v47, &stru_14980, v48, v49, v50, v51, v52, v53, v197);

    v55 = v209;
    v209 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_VETTING_RECORD_ERROR%@%@", v209, @"_IOS"];

    sub_16B8(v209, @"%@", v56, v57, v58, v59, v60, v61, titleCopy);
    v38 = v62 = v38;
LABEL_76:

    v25 = v54;
    goto LABEL_77;
  }

  if (code == &loc_1F40 + 2)
  {
    v70 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_TOKEN_INVALID" stringByAppendingString:@"_IOS"];

    v204 = sub_16B8(v70, &stru_14980, v71, v72, v73, v74, v75, v76, v197);

    v55 = v209;
    v209 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_TOKEN_INVALID%@", v209];

    if (v211)
    {
      sub_16B8(v209, @"%@%@", v77, v78, v79, v80, v81, v82, v211);
    }

    else
    {
      sub_16B8(v209, @"%@%@", v77, v78, v79, v80, v81, v82, v207);
    }

    v38 = v62 = v38;
LABEL_40:
    v54 = v204;
    goto LABEL_76;
  }

  v55 = v209;
LABEL_77:

LABEL_78:
  v212[0] = @"ckVettingAlertTitle";
  v212[1] = @"ckVettingAlertBody";
  v213[0] = v25;
  v213[1] = v38;
  v193 = [NSDictionary dictionaryWithObjects:v213 forKeys:v212 count:2];

  return v193;
}

+ (id)alertContentForShareMetadataErrorWithURL:(id)l email:(id)email
{
  emailCopy = email;
  cKURLSlug = [l CKURLSlug];
  v7 = [@"ITEM_UNAVAILABLE_FAILURE_ALERT_TITLE" stringByAppendingFormat:@"%@_"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug prefix:v7];

  if (emailCopy)
  {
    sub_16B8(@"ITEM_UNAVAILABLE_FAILURE_ALERT_BODY_EMAIL", @"%@", v9, v10, v11, v12, v13, v14, emailCopy);
  }

  else
  {
    sub_16B8(@"ITEM_UNAVAILABLE_FAILURE_ALERT_BODY", &stru_14980, v9, v10, v11, v12, v13, v14, @"_IOS");
  }
  v15 = ;
  v26[0] = @"ckVettingAlertTitle";
  v22 = sub_16B8(v8, &stru_14980, v16, v17, v18, v19, v20, v21, v25);
  v26[1] = @"ckVettingAlertBody";
  v27[0] = v22;
  v27[1] = v15;
  v23 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

  return v23;
}

+ (id)alertContentForUnprovisionedDataclassWithURL:(id)l email:(id)email
{
  emailCopy = email;
  cKURLSlug = [l CKURLSlug];
  v7 = [@"ITEM_UNAVAILABLE_FAILURE_ALERT_TITLE" stringByAppendingFormat:@"%@_"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug prefix:v7];

  v25[0] = @"ckVettingAlertTitle";
  v15 = sub_16B8(v8, &stru_14980, v9, v10, v11, v12, v13, v14, @"_IOS");
  v25[1] = @"ckVettingAlertBody";
  v26[0] = v15;
  v22 = sub_16B8(@"ITEM_UNAVAILABLE_UNPROVISIONED_DATACLASS_ALERT_BODY", @"%@", v16, v17, v18, v19, v20, v21, emailCopy);

  v26[1] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v23;
}

+ (id)alertContentForICloudAccountError:(id)error shareMetadata:(id)metadata shareURL:(id)l
{
  errorCopy = error;
  metadataCopy = metadata;
  lCopy = l;
  domain = [errorCopy domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    if ([errorCopy code] == &dword_8 + 1)
    {

LABEL_15:
      v30 = [@"SIGN_IN_TO_ICLOUD_TITLE" stringByAppendingString:@"_IOS"];
      v31 = +[CKContainer matterhornName];
      v16 = CKLocalizedString();

      v32 = [@"SIGN_IN_TO_ICLOUD_BODY" stringByAppendingFormat:@"%@_", @"_IOS"];
      cKURLSlug = [lCopy CKURLSlug];
      v34 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug prefix:v32];
      v41 = +[CKContainer matterhornName];
      v24 = CKLocalizedString();

      v49[0] = @"ckVettingAlertTitle";
      v49[1] = @"ckVettingAlertBody";
      v50[0] = v16;
      v50[1] = v24;
      v28 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2, v41];

      goto LABEL_23;
    }

    code = [errorCopy code];

    if (code == &stru_68.sectname[11])
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:CKUnderlyingErrorDomain])
  {
    code2 = [errorCopy code];

    if (code2 == &stru_3D8.addr + 7)
    {
      userInfo = [errorCopy userInfo];
      v14 = [userInfo objectForKeyedSubscript:CKErrorDisabledAppLocalizedName];

      v15 = [@"ENABLE_IN_ICLOUD_TITLE" stringByAppendingString:@"_IOS"];
      v39 = +[CKContainer matterhornName];
      v16 = CKLocalizedString();

      ownerIdentity = [metadataCopy ownerIdentity];
      nameComponents = [ownerIdentity nameComponents];

      if (v14)
      {
        cKURLSlug2 = [lCopy CKURLSlug];
        if (nameComponents)
        {
          ownerIdentity3 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug2 prefix:@"ENABLE_IN_ICLOUD_BODY_"];

          ownerIdentity2 = [metadataCopy ownerIdentity];
          nameComponents2 = [ownerIdentity2 nameComponents];
          [CKVettingAlerts mediumNameFromComponents:nameComponents2];
          v23 = v22 = v14;
          v42 = +[CKContainer matterhornName];
          v40 = v23;
          v24 = CKLocalizedString();

          v14 = v22;
        }

        else
        {
          ownerIdentity3 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug2 prefix:@"ENABLE_IN_ICLOUD_BODY_UNKNOWN_USER_"];

          v40 = +[CKContainer matterhornName];
          v24 = CKLocalizedString();
        }
      }

      else if (nameComponents)
      {
        ownerIdentity3 = [metadataCopy ownerIdentity];
        nameComponents3 = [ownerIdentity3 nameComponents];
        v37 = [CKVettingAlerts mediumNameFromComponents:nameComponents3];
        +[CKContainer matterhornName];
        v43 = v40 = v37;
        v24 = CKLocalizedString();
      }

      else
      {
        ownerIdentity3 = +[CKContainer matterhornName];
        v40 = ownerIdentity3;
        v24 = CKLocalizedString();
      }

      v47[0] = @"ckVettingAlertTitle";
      v47[1] = @"ckVettingAlertBody";
      v48[0] = v16;
      v48[1] = v24;
      v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2, v40];

      goto LABEL_23;
    }
  }

  else
  {
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:CKErrorDomain])
  {
    code3 = [errorCopy code];

    if (code3 == &stru_68.sectname[6])
    {
      v27 = [@"UPDATE_APPLE_ID_SETTINGS_TITLE" stringByAppendingFormat:@"%@", @"_IOS"];
      v16 = CKLocalizedString();

      v24 = CKLocalizedString();
      v45[0] = @"ckVettingAlertTitle";
      v45[1] = @"ckVettingAlertBody";
      v46[0] = v16;
      v46[1] = v24;
      v28 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
      goto LABEL_23;
    }
  }

  else
  {
  }

  cKURLSlug3 = [lCopy CKURLSlug];
  v28 = [CKVettingAlerts alertContentForGenericErrorWithURLSlug:cKURLSlug3];

  v24 = &stru_14980;
  v16 = &stru_14980;
LABEL_23:

  return v28;
}

+ (id)alertContentDictionaryForDeviceOfflineErrorWithURLSlug:(id)slug
{
  slugCopy = slug;
  v4 = [NSString stringWithFormat:@"DEVICE_OFFLINE_TITLE%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v4];
  v6 = CKLocalizedString();

  v7 = [NSString stringWithFormat:@"DEVICE_OFFLINE_BODY%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v7];

  v9 = CKLocalizedString();

  v12[0] = @"ckVettingAlertTitle";
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v6;
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)alertContentDictionaryForServiceUnavailableErrorWithURLSlug:(id)slug
{
  slugCopy = slug;
  v4 = [NSString stringWithFormat:@"SERVER_ERROR_TITLE%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v4];
  v6 = CKLocalizedString();

  v7 = [NSString stringWithFormat:@"SERVER_ERROR_BODY%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v7];

  v9 = CKLocalizedString();

  v12[0] = @"ckVettingAlertTitle";
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v6;
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)_alertContentForDropDownSelectionWithShareName:(id)name ownerName:(id)ownerName currentUserName:(id)userName currentUserFormattedUsername:(id)username dropDownTitles:(id)titles locKeyPrefix:(id)prefix isSourceICS:(BOOL)s
{
  nameCopy = name;
  ownerNameCopy = ownerName;
  userNameCopy = userName;
  usernameCopy = username;
  titlesCopy = titles;
  prefixCopy = prefix;
  if (nameCopy)
  {
    [NSString stringWithFormat:@"%@TITLE%@", prefixCopy, @"_IOS"];
  }

  else
  {
    [NSString stringWithFormat:@"%@UNTITLED_TITLE%@", prefixCopy, @"_IOS"];
  }
  v19 = ;
  v33 = CKLocalizedString();

  v32 = usernameCopy;
  v31 = userNameCopy;
  if (ownerNameCopy)
  {
    v20 = [NSString stringWithFormat:@"%@BODY%@", prefixCopy, @"_IOS"];
    v21 = [CKVettingAlerts mediumNameFromComponents:ownerNameCopy];
    v30 = [CKVettingAlerts mediumNameFromComponents:userNameCopy];
    v22 = CKLocalizedString();
  }

  else
  {
    v20 = [NSString stringWithFormat:@"%@UNKNOWN_USER_BODY%@", prefixCopy, @"_IOS"];
    v21 = [CKVettingAlerts mediumNameFromComponents:userNameCopy];
    v30 = usernameCopy;
    v22 = CKLocalizedString();
  }

  v23 = [NSString stringWithFormat:@"%@OPEN_BUTTON_MAC", prefixCopy, v30];
  v24 = CKLocalizedString();
  v35[0] = kCFUserNotificationAlertHeaderKey;
  v35[1] = kCFUserNotificationAlertMessageKey;
  v36[0] = v33;
  v36[1] = v22;
  v36[2] = v24;
  v35[2] = kCFUserNotificationDefaultButtonTitleKey;
  v35[3] = kCFUserNotificationAlternateButtonTitleKey;
  v25 = CKLocalizedString();
  v35[4] = kCFUserNotificationPopUpTitlesKey;
  v36[3] = v25;
  v36[4] = titlesCopy;
  v26 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
  v27 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v26 bundleIdentifier:0];

  v28 = [CKVettingAlerts getAlertOptionsFromOptions:v27 isSourceICS:s];

  return v28;
}

+ (void)showAlertWithContent:(id)content isSourceICS:(BOOL)s additionalOptions:(id)options responseHandler:(id)handler
{
  sCopy = s;
  optionsCopy = options;
  handlerCopy = handler;
  contentCopy = content;
  v14 = [contentCopy objectForKeyedSubscript:@"ckVettingAlertTitle"];
  v15 = [contentCopy objectForKeyedSubscript:@"ckVettingAlertBody"];

  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"CKVettingAlerts.m" lineNumber:711 description:@"Error alert title empty"];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v22 = +[NSAssertionHandler currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"CKVettingAlerts.m" lineNumber:712 description:@"Error alert body empty"];

LABEL_3:
  v24[0] = kCFUserNotificationAlertHeaderKey;
  v24[1] = kCFUserNotificationAlertMessageKey;
  v25[0] = v14;
  v25[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v17 = [NSMutableDictionary dictionaryWithDictionary:v16];

  if (optionsCopy)
  {
    [v17 addEntriesFromDictionary:optionsCopy];
  }

  v18 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v17 bundleIdentifier:0];
  v19 = [CKVettingAlerts getAlertOptionsFromOptions:v18 isSourceICS:sCopy];
  v20 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v19);
  v23 = 0;
  CFUserNotificationReceiveResponse(v20, 604800.0, &v23);
  CFRelease(v20);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v23);
  }
}

+ (void)showFailureAlert:(id)alert isSourceICS:(BOOL)s
{
  sCopy = s;
  v9 = kCFUserNotificationDefaultButtonTitleKey;
  alertCopy = alert;
  v7 = CKLocalizedString();
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [self showAlertWithContent:alertCopy isSourceICS:sCopy additionalOptions:v8 responseHandler:0];
}

+ (void)showICloudAccountSettingAlert:(id)alert appName:(id)name previewRequested:(BOOL *)requested isSourceICS:(BOOL)s maid:(BOOL)maid
{
  maidCopy = maid;
  sCopy = s;
  alertCopy = alert;
  nameCopy = name;
  v11 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE"];
  if (maidCopy)
  {
    v12 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings"];

    v11 = v12;
  }

  v13 = CKLocalizedString();
  if (nameCopy)
  {
    nameCopy = [NSString stringWithFormat:@"PREVIEW_BUTTON_IOS_%@", nameCopy];
    if (nameCopy)
    {
      v15 = CKLocalizedString();
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    nameCopy = 0;
  }

  v16 = CKLocalizedString();
  v39[0] = kCFUserNotificationAlertHeaderKey;
  v17 = [alertCopy objectForKeyedSubscript:@"ckVettingAlertTitle"];
  v40[0] = v17;
  v39[1] = kCFUserNotificationAlertMessageKey;
  v18 = [alertCopy objectForKeyedSubscript:@"ckVettingAlertBody"];
  v40[1] = v18;
  v40[2] = v13;
  v31 = v13;
  v39[2] = kCFUserNotificationDefaultButtonTitleKey;
  v39[3] = kCFUserNotificationAlternateButtonTitleKey;
  v40[3] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];

  v20 = [CKVettingAlerts getAlertOptionsFromOptions:v19 isSourceICS:sCopy];

  if (v15)
  {
    v21 = [v20 mutableCopy];
    [v21 setObject:v15 forKey:kCFUserNotificationOtherButtonTitleKey];

    v20 = v21;
  }

  v22 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v20 bundleIdentifier:0];

  v23 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v22);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v23, 604800.0, &responseFlags);
  v24 = 0;
  if ((responseFlags & 3) > 1)
  {
    v24 = (responseFlags & 3) == 2;
  }

  else if ((responseFlags & 3) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Redirecting user to iCloud preferences", buf, 2u);
    }

    v26 = [CKVettingAlerts getLaunchingOptionsFromOptions:0 isSourceICS:sCopy];
    v27 = +[LSApplicationWorkspace defaultWorkspace];
    v34 = v26;
    v35 = 0;
    v30 = v11;
    LOBYTE(v26) = [v27 openSensitiveURL:v11 withOptions:v26 error:&v35];
    v28 = v35;

    if ((v26 & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v29 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v28;
        _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "Failed to open iCloud settings: %@", buf, 0xCu);
      }
    }

    v24 = 0;
    v11 = v30;
  }

  CFRelease(v23);
  if (requested)
  {
    *requested = v24;
  }
}

+ (void)showDropDownAlert:(id)alert defaultResponseBlock:(id)block alternateResponseBlock:(id)responseBlock errorBlock:(id)errorBlock
{
  blockCopy = block;
  responseBlockCopy = responseBlock;
  errorBlockCopy = errorBlock;
  v12 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, alert);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v12, 604800.0, &responseFlags);
  if ((responseFlags & 3) == 1)
  {
    responseBlockCopy[2](responseBlockCopy);
  }

  else if ((responseFlags & 3) != 0)
  {
    errorBlockCopy[2](errorBlockCopy);
  }

  else
  {
    blockCopy[2](blockCopy, responseFlags >> 24);
  }

  CFRelease(v12);
}

+ (id)platformSpecificAlertOptionsWithOptions:(id)options bundleIdentifier:(id)identifier
{
  v4 = [options mutableCopy];
  v5 = +[NSBundle mainBundle];
  resourceURL = [v5 resourceURL];
  [v4 setObject:resourceURL forKeyedSubscript:kCFUserNotificationLocalizationURLKey];

  return v4;
}

+ (id)alertContentForGenericInitiateVettingError
{
  v2 = [@"VETTING_FAILURE_ALERT_TITLE_CANT_SEND_LINK" stringByAppendingString:@"_IOS"];
  v21[0] = @"ckVettingAlertTitle";
  v9 = sub_16B8(v2, &stru_14980, v3, v4, v5, v6, v7, v8, v19);
  v21[1] = @"ckVettingAlertBody";
  v22[0] = v9;
  v16 = sub_16B8(@"VETTING_FAILURE_ALERT_BODY_INITIATE_GENERIC_ERROR", &stru_14980, v10, v11, v12, v13, v14, v15, v20);
  v22[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v17;
}

+ (id)mediumNameFromComponents:(id)components
{
  if (components)
  {
    v3 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:components style:2 options:0];
    v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  }

  else
  {
    v4 = &stru_14980;
  }

  return v4;
}

+ (id)alertContentForGenericErrorWithURLSlug:(id)slug
{
  slugCopy = slug;
  v4 = [NSString stringWithFormat:@"GENERIC_ERROR_BODY_TRY_AGAIN%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v4];
  v6 = [NSString stringWithFormat:@"GENERIC_ERROR_TITLE%@_", @"_IOS"];
  v7 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v6];

  v12[0] = @"ckVettingAlertTitle";
  v8 = CKLocalizedString();
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v8;
  v9 = CKLocalizedString();
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)appSpecificLocKeyForBundleID:(id)d shareType:(id)type prefix:(id)prefix
{
  dCopy = d;
  typeCopy = type;
  prefixCopy = prefix;
  if (qword_19800 != -1)
  {
    dispatch_once(&qword_19800, &stru_14580);
  }

  v10 = [qword_19808 objectForKey:dCopy];

  if (v10)
  {
    v11 = [qword_19808 objectForKeyedSubscript:dCopy];
    v12 = [qword_19810 objectForKeyedSubscript:v11];
    v13 = [v12 containsObject:typeCopy];

    if (v13)
    {
      [NSString stringWithFormat:@"%@%@_%@", prefixCopy, v11, typeCopy];
    }

    else
    {
      [NSString stringWithFormat:@"%@%@", prefixCopy, v11, v16];
    }
    prefixCopy = ;
  }

  else
  {
    prefixCopy = [NSString stringWithFormat:@"%@Generic", prefixCopy];
  }

  return prefixCopy;
}

+ (id)appSpecificLocKeyForURLSlug:(id)slug prefix:(id)prefix
{
  slugCopy = slug;
  prefixCopy = prefix;
  if ([slugCopy length])
  {
    [NSString stringWithFormat:@"%@%@", prefixCopy, slugCopy];
  }

  else
  {
    [NSString stringWithFormat:@"%@share", prefixCopy, v9];
  }
  v7 = ;

  return v7;
}

+ (BOOL)isEmail:(id)email
{
  emailCopy = email;
  v4 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2, 6}"];
  v5 = [v4 evaluateWithObject:emailCopy];

  return v5;
}

+ (id)alertContentForRequestAccessWithHandle:(id)handle
{
  handleCopy = handle;
  v5 = [self isEmail:handleCopy];
  v6 = @"PHONE";
  if (v5)
  {
    v6 = @"EMAIL";
  }

  v7 = [NSString stringWithFormat:@"ITEM_UNAVAILABLE_REQUEST_ACCESS_BODY_%@", v6];
  v14 = sub_16B8(v7, @"%@", v8, v9, v10, v11, v12, v13, handleCopy);

  v25[0] = @"ckVettingAlertTitle";
  v21 = sub_16B8(@"ASK_FOR_ACCESS", &stru_14980, v15, v16, v17, v18, v19, v20, v24);
  v25[1] = @"ckVettingAlertBody";
  v26[0] = v21;
  v26[1] = v14;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v22;
}

+ (id)alertContentForRequestAccessConfirmation
{
  v20[0] = @"ckVettingAlertTitle";
  v8 = sub_16B8(@"CLOUDKIT_VETTING_ACCESS_REQUEST_SENT_TITLE", &stru_14980, v2, v3, v4, v5, v6, v7, v18);
  v20[1] = @"ckVettingAlertBody";
  v21[0] = v8;
  v15 = sub_16B8(@"CLOUDKIT_VETTING_ACCESS_REQUEST_SENT_MESSAGE", &stru_14980, v9, v10, v11, v12, v13, v14, v19);
  v21[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v16;
}

+ (id)alertContentForRequestAccessFailure
{
  v20[0] = @"ckVettingAlertTitle";
  v8 = sub_16B8(@"CLOUDKIT_VETTING_ACCESS_CANT_SEND_REQUEST_TITLE", &stru_14980, v2, v3, v4, v5, v6, v7, v18);
  v20[1] = @"ckVettingAlertBody";
  v21[0] = v8;
  v15 = sub_16B8(@"CLOUDKIT_VETTING_ACCESS_TRY_AGAIN_LATER", &stru_14980, v9, v10, v11, v12, v13, v14, v19);
  v21[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v16;
}

+ (void)showRequestAccessAlert:(id)alert isSourceICS:(BOOL)s requestAccessHandler:(id)handler cancelHandler:(id)cancelHandler
{
  sCopy = s;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  v21[0] = kCFUserNotificationDefaultButtonTitleKey;
  alertCopy = alert;
  v13 = CKLocalizedString();
  v22[0] = v13;
  v21[1] = kCFUserNotificationAlternateButtonTitleKey;
  v14 = CKLocalizedString();
  v22[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6170;
  v18[3] = &unk_145A8;
  v19 = handlerCopy;
  v20 = cancelHandlerCopy;
  v16 = cancelHandlerCopy;
  v17 = handlerCopy;
  [self showAlertWithContent:alertCopy isSourceICS:sCopy additionalOptions:v15 responseHandler:v18];
}

+ (void)showRequestAccessResultAlert:(id)alert isSourceICS:(BOOL)s
{
  sCopy = s;
  v9 = kCFUserNotificationDefaultButtonTitleKey;
  alertCopy = alert;
  v7 = CKLocalizedString();
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [self showAlertWithContent:alertCopy isSourceICS:sCopy additionalOptions:v8 responseHandler:0];
}

@end