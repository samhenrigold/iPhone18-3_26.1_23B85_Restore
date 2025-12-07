@interface TCCDRequestContext
- (NSDictionary)daemonDict;
- (NSString)identityDescription;
- (TCCDRequestContext)initWithRequestMessage:(id)message forServer:(id)server error:(id *)error;
- (id)initForSyncRequestForSubjectBundleIdentifier:(id)identifier service:(id)service;
- (void)dealloc;
- (void)presentAsynchronousDenialNotificationForService:(id)service;
- (void)presentAsynchronousDenialNotificationWithMessage:(id)message buttonTitle:(id)title;
- (void)presentSynchronousPromptWithHeader:(id)header message:(id)message aButtonTitle:(id)title aButtonAuth:(unint64_t)auth bButtonTitle:(id)buttonTitle bButtonAuth:(unint64_t)buttonAuth cButtonTitle:(id)cButtonTitle cButtonAuth:(unint64_t)self0 currentAuth:(unint64_t)self1 withTimeoutInSeconds:(unsigned int)self2 updatingResult:(id)self3;
@end

@implementation TCCDRequestContext

- (NSDictionary)daemonDict
{
  v12[0] = kTCCNotificationExtensionDaemonDataInitialPromptKey;
  v3 = [NSNumber numberWithBool:[(TCCDRequestContext *)self initialPrompt]];
  v13[0] = v3;
  v12[1] = kTCCNotificationExtensionDaemonDataDesiredAuthKey;
  v4 = [NSNumber numberWithUnsignedLongLong:[(TCCDRequestContext *)self desiredAuth]];
  v13[1] = v4;
  v12[2] = kTCCNotificationExtensionDaemonDataSetPromptKey;
  v5 = [NSNumber numberWithBool:[(TCCDRequestContext *)self accessSetPrompt]];
  v13[2] = v5;
  v12[3] = kTCCNotificationExtensionDaemonDataInfoString;
  service = [(TCCDRequestContext *)self service];
  service2 = [(TCCDRequestContext *)self service];
  requestNotificationExtensionTextLocalizationKey = [service2 requestNotificationExtensionTextLocalizationKey];
  v9 = [service localizedTextWithKey:requestNotificationExtensionTextLocalizationKey];
  v13[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

- (NSString)identityDescription
{
  v3 = objc_alloc_init(NSMutableString);
  subjectIdentity = [(TCCDRequestContext *)self subjectIdentity];

  if (subjectIdentity)
  {
    subjectIdentity2 = [(TCCDRequestContext *)self subjectIdentity];
    identifier = [subjectIdentity2 identifier];
    [v3 appendFormat:@"Sub:{%@}", identifier];
  }

  attributionChain = [(TCCDRequestContext *)self attributionChain];
  responsibleProcess = [attributionChain responsibleProcess];

  if (responsibleProcess)
  {
    attributionChain2 = [(TCCDRequestContext *)self attributionChain];
    responsibleProcess2 = [attributionChain2 responsibleProcess];
    v11 = [responsibleProcess2 description];
    [v3 appendFormat:@"Resp:{%@}", v11];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)dealloc
{
  if (self->_promptingSemaphoreHeld)
  {
    v3 = tcc_access_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      messageIdentifier = self->_messageIdentifier;
      *buf = 138543362;
      v7 = messageIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "signaling prompting semaphore for msgID=%{public}@", buf, 0xCu);
    }

    dispatch_semaphore_signal(self->_promptingSemaphore);
    self->_promptingSemaphoreHeld = 0;
  }

  v5.receiver = self;
  v5.super_class = TCCDRequestContext;
  [(TCCDRequestContext *)&v5 dealloc];
}

- (void)presentAsynchronousDenialNotificationWithMessage:(id)message buttonTitle:(id)title
{
  messageCopy = message;
  titleCopy = title;
  v8 = tcc_access_log(titleCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    subjectIdentity = [(TCCDRequestContext *)self subjectIdentity];
    identifier = [subjectIdentity identifier];
    *buf = 136315394;
    *&buf[4] = "[TCCDRequestContext(AsynchronousNotification) presentAsynchronousDenialNotificationWithMessage:buttonTitle:]";
    v63 = 2112;
    v64 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: called for %@", buf, 0x16u);
  }

  if (qword_1000C1188 != -1)
  {
    sub_100043CF0();
  }

  if (qword_1000C1178)
  {
    v12 = objc_opt_new();
    if (v12)
    {
      v13 = v12;
      v59 = messageCopy;
      [v12 setBody:messageCopy];
      v14 = qword_1000C1178;
      service = [(TCCDRequestContext *)self service];
      name = [service name];
      v17 = v14;
      v18 = name;
      v58 = titleCopy;
      v19 = titleCopy;
      if (!qword_1000C11A8)
      {
        v20 = objc_opt_new();
        v21 = qword_1000C11A8;
        qword_1000C11A8 = v20;
      }

      v22 = [NSString stringWithFormat:@"%@.%@", @"com.apple.tcc.notification", v18];
      v23 = [qword_1000C11A8 objectForKeyedSubscript:v22];
      if (!v23)
      {
        v57 = [UNNotificationAction actionWithIdentifier:@"BUTTON_ACTION_ID" title:v19 options:0];
        *buf = v57;
        v24 = [NSArray arrayWithObjects:buf count:1];
        v23 = [UNNotificationCategory categoryWithIdentifier:v22 actions:v24 intentIdentifiers:&__NSArray0__struct options:0];

        [qword_1000C11A8 setObject:v23 forKeyedSubscript:v22];
        allValues = [qword_1000C11A8 allValues];
        v26 = [NSSet setWithArray:allValues];
        [v17 setNotificationCategories:v26];
      }

      [v13 setCategoryIdentifier:v22];
      [v13 setInterruptionLevel:1];
      v27 = +[UNNotificationSound defaultSound];
      [v13 setSound:v27];

      [v13 setShouldIgnoreDoNotDisturb:1];
      [v13 setShouldBackgroundDefaultAction:1];
      v60 = @"TCCServiceName";
      service2 = [(TCCDRequestContext *)self service];
      name2 = [service2 name];
      v61 = name2;
      v30 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      [v13 setUserInfo:v30];

      v31 = +[NSUUID UUID];
      uUIDString = [v31 UUIDString];
      v33 = [UNNotificationRequest requestWithIdentifier:uUIDString content:v13 trigger:0];

      if (v33)
      {
        [qword_1000C1178 addNotificationRequest:v33 withCompletionHandler:&stru_1000A63E8];

        titleCopy = v58;
        messageCopy = v59;
      }

      else
      {
        v49 = tcc_access_log(v34);
        titleCopy = v58;
        messageCopy = v59;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100043D18(v49, v50, v51, v52, v53, v54, v55, v56);
        }
      }
    }

    else
    {
      v13 = tcc_access_log(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100043D90(v13, v42, v43, v44, v45, v46, v47, v48);
      }
    }
  }

  else
  {
    v13 = tcc_access_log(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100043E08(v13, v35, v36, v37, v38, v39, v40, v41);
    }
  }
}

- (void)presentAsynchronousDenialNotificationForService:(id)service
{
  serviceCopy = service;
  notificationTitleTextLocalizationKey = [serviceCopy notificationTitleTextLocalizationKey];
  v6 = [serviceCopy localizedTextWithKey:notificationTitleTextLocalizationKey];

  subjectIdentity = [(TCCDRequestContext *)self subjectIdentity];
  displayName = [subjectIdentity displayName];
  v9 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, displayName];

  if (v9)
  {
    notificationButtonTitleLocalizationKey = [serviceCopy notificationButtonTitleLocalizationKey];
    v12 = [serviceCopy localizedTextWithKey:notificationButtonTitleLocalizationKey];

    if (v12)
    {
      [(TCCDRequestContext *)self presentAsynchronousDenialNotificationWithMessage:v9 buttonTitle:v12];
    }
  }

  else
  {
    v12 = tcc_access_log(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100043F0C(serviceCopy, self, v12);
    }
  }
}

- (void)presentSynchronousPromptWithHeader:(id)header message:(id)message aButtonTitle:(id)title aButtonAuth:(unint64_t)auth bButtonTitle:(id)buttonTitle bButtonAuth:(unint64_t)buttonAuth cButtonTitle:(id)cButtonTitle cButtonAuth:(unint64_t)self0 currentAuth:(unint64_t)self1 withTimeoutInSeconds:(unsigned int)self2 updatingResult:(id)self3
{
  headerCopy = header;
  messageCopy = message;
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  cButtonTitleCopy = cButtonTitle;
  resultCopy = result;
  if (qword_1000C11A0 != -1)
  {
    sub_100043FD0();
  }

  [(TCCDRequestContext *)self setPromptingSemaphore:qword_1000C1190];
  if (![(TCCDRequestContext *)self promptingSemaphoreHeld])
  {
    [(TCCDRequestContext *)self setPromptingSemaphoreHeld:1];
    promptingSemaphore = [(TCCDRequestContext *)self promptingSemaphore];
    v23 = dispatch_semaphore_wait(promptingSemaphore, 0);

    if (v23)
    {
      v25 = tcc_access_log(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        identityDescription = [(TCCDRequestContext *)self identityDescription];
        *buf = 138543362;
        *&buf[4] = identityDescription;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Delaying prompt for %{public}@", buf, 0xCu);
      }

      promptingSemaphore2 = [(TCCDRequestContext *)self promptingSemaphore];
      dispatch_semaphore_wait(promptingSemaphore2, 0xFFFFFFFFFFFFFFFFLL);

      [resultCopy setDatabaseAction:2];
      goto LABEL_139;
    }
  }

  service = [(TCCDRequestContext *)self service];
  [service ios_watchKitUserNotificationNumber];
  v171 = v168 = resultCopy;
  if (v171)
  {
  }

  else
  {
    subjectIdentity = [(TCCDRequestContext *)self subjectIdentity];
    is_wk2_proxy = [subjectIdentity is_wk2_proxy];

    if (!is_wk2_proxy)
    {
      v46 = 0;
      v171 = 0;
      goto LABEL_24;
    }
  }

  subjectIdentity2 = [(TCCDRequestContext *)self subjectIdentity];
  pluginBundleIdentifier = [subjectIdentity2 pluginBundleIdentifier];

  if (pluginBundleIdentifier)
  {
    v33 = tcc_sync_log(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100043FE4(v171, self, v33);
    }

    sharedDeviceConnection = [sub_100043430() sharedDeviceConnection];
    integerValue = [v171 integerValue];
    subjectIdentity3 = [(TCCDRequestContext *)self subjectIdentity];
    displayName = [subjectIdentity3 displayName];
    subjectIdentity4 = [(TCCDRequestContext *)self subjectIdentity];
    pluginBundleIdentifier2 = [subjectIdentity4 pluginBundleIdentifier];
    [sharedDeviceConnection showUserNotification:integerValue applicationName:displayName extensionBundleID:pluginBundleIdentifier2];
  }

  else
  {
    subjectIdentity5 = [(TCCDRequestContext *)self subjectIdentity];
    is_wk2_proxy2 = [subjectIdentity5 is_wk2_proxy];

    if (!is_wk2_proxy2)
    {
      v46 = 0;
      goto LABEL_24;
    }

    v43 = v171;
    if (!v171)
    {
      v43 = &off_1000ADF28;
    }

    v44 = tcc_sync_log(v42);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_1000440E4(v43, self, v44);
    }

    sharedDeviceConnection = [sub_100043430() sharedDeviceConnection];
    v171 = v43;
    integerValue2 = [v43 integerValue];
    subjectIdentity3 = [(TCCDRequestContext *)self subjectIdentity];
    displayName = [subjectIdentity3 displayName];
    [sharedDeviceConnection showUserNotification:integerValue2 bundleID:displayName];
  }

  v46 = 1;
  resultCopy = v168;
LABEL_24:
  selfCopy = self;
  v48 = headerCopy;
  v49 = messageCopy;
  v50 = titleCopy;
  v179 = buttonTitleCopy;
  v178 = cButtonTitleCopy;
  v166 = resultCopy;
  v51 = objc_opt_new();
  v170 = v48;
  if (!v48)
  {
    sub_100044330();
  }

  if (!v50)
  {
    sub_100044304();
  }

  if (!v179)
  {
    sub_1000442D8();
  }

  v52 = v51;
  v177 = v50;
  v169 = v49;
  v165 = v46;
  v53 = tcc_access_log(v51);
  v176 = selfCopy;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    subjectIdentity6 = [(TCCDRequestContext *)selfCopy subjectIdentity];
    identifier = [subjectIdentity6 identifier];
    service2 = [(TCCDRequestContext *)selfCopy service];
    name = [service2 name];
    *buf = 136315650;
    *&buf[4] = "display_prompt";
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    *&buf[22] = 2112;
    v190 = name;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s: called for %@ for service %@", buf, 0x20u);
  }

  service3 = [(TCCDRequestContext *)selfCopy service];
  localizedResourcesBundle = [service3 localizedResourcesBundle];
  bundleURL = [localizedResourcesBundle bundleURL];
  [v52 setObject:bundleURL forKeyedSubscript:kCFUserNotificationLocalizationURLKey];

  [v52 setObject:v170 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  if (v169)
  {
    [v52 setObject:v169 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  v167 = headerCopy;
  v196 = xmmword_1000809E0;
  v197 = unk_1000809F0;
  cButtonAuthCopy = buttonAuth;
  v62 = v177;
  if (v178)
  {
    *&v196 = buttonAuth;
    cButtonAuthCopy = cButtonAuth;
  }

  *(&v196 + 1) = cButtonAuthCopy;
  *&v197 = auth;
  v195[0] = kCFUserNotificationDefaultButtonTitleKey;
  v195[1] = kCFUserNotificationAlternateButtonTitleKey;
  v63 = 0;
  v195[2] = kCFUserNotificationOtherButtonTitleKey;
  v195[3] = 0;
  v164 = 134217984;
  do
  {
    v64 = v195[v63];
    v65 = v64;
    if (!v64)
    {
      goto LABEL_43;
    }

    v66 = *(&v196 + v63 * 8);
    if (v66 == auth)
    {
      v67 = v52;
      v68 = v62;
LABEL_42:
      [v67 setObject:v68 forKeyedSubscript:v65];
      goto LABEL_43;
    }

    if (v66 == buttonAuth)
    {
      v67 = v52;
      v68 = v179;
      goto LABEL_42;
    }

    if (v66 == cButtonAuth)
    {
      if (!v178)
      {
        goto LABEL_43;
      }

      v67 = v52;
      v68 = v178;
      goto LABEL_42;
    }

    v69 = tcc_access_log(v64);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v66;
      _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "tried to assign invalid auth %llu to button", buf, 0xCu);
    }

    v62 = v177;
LABEL_43:

    ++v63;
  }

  while (v63 != 4);
  v70 = _os_feature_enabled_impl();
  headerCopy = v167;
  v71 = v176;
  if ((v70 & 1) != 0 && _os_feature_enabled_impl())
  {
    service4 = [(TCCDRequestContext *)v176 service];
    name2 = [service4 name];
    buttonAuth = +[TCCDPlatform currentPlatform];
    server = [buttonAuth server];
    temporaryDirectory = [server temporaryDirectory];
    v76 = [TCCDIconGenerator createIconForTCCService:name2 withTempDirectory:temporaryDirectory];
    if (v76)
    {
      v77 = +[NSFileManager defaultManager];
      path = [v76 path];
      LODWORD(v164) = [v77 fileExistsAtPath:path];

      headerCopy = v167;
      v71 = v176;

      if (v164)
      {
        service4 = [v76 path];
        [v52 setObject:service4 forKeyedSubscript:SBUserNotificationHeaderImagePath];
        goto LABEL_54;
      }
    }

    else
    {

LABEL_54:
    }
  }

  if (_os_feature_enabled_impl())
  {
    service5 = [(TCCDRequestContext *)v71 service];
    usesTwoStagePrompting = [service5 usesTwoStagePrompting];

    if (usesTwoStagePrompting)
    {
      [v52 setObject:&off_1000ADF40 forKeyedSubscript:SBUserNotificationButtonLayoutDirectionKey];
    }
  }

  service6 = [(TCCDRequestContext *)v71 service];
  name3 = [service6 name];
  v83 = [name3 isEqualToString:@"kTCCServiceFocusStatus"];

  if (v83)
  {
    [v52 setObject:@"com.apple.FocusSettingsUI.UserNotificationExtension" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
  }

  service7 = [(TCCDRequestContext *)v71 service];
  name4 = [service7 name];
  service9 = [name4 isEqualToString:@"kTCCServicePhotos"];

  if (service9)
  {
    [v52 setObject:@"com.apple.mobileslideshow.PhotosTCCNotificationExtension" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
  }

  service8 = [(TCCDRequestContext *)v71 service];
  name5 = [service8 name];
  if (([name5 isEqualToString:@"kTCCServiceCalendar"] & 1) == 0)
  {

    goto LABEL_68;
  }

  service9 = [(TCCDRequestContext *)v71 service];
  supportsStagedPrompting = [service9 supportsStagedPrompting];

  if (supportsStagedPrompting)
  {
    service10 = [(TCCDRequestContext *)v71 service];
    service9 = [service10 authSpecificNotificationExtensionBundleIdentifier];
    v91 = [NSNumber numberWithUnsignedLongLong:[(TCCDRequestContext *)v71 desiredAuth]];
    service8 = [service9 objectForKeyedSubscript:v91];

    if (service8)
    {
      [v52 setObject:service8 forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
    }

LABEL_68:
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    service11 = [(TCCDRequestContext *)v71 service];
    service8 = [service11 name];
    if ([service8 isEqualToString:@"kTCCServiceAddressBook"])
    {
      service9 = [(TCCDRequestContext *)v71 desiredAuth];

      if (service9 == 2)
      {
        v94 = tcc_access_log(v93);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          service8 = [(TCCDRequestContext *)v71 subjectIdentity];
          service9 = [service8 identifier];
          *buf = 136315394;
          *&buf[4] = "display_prompt";
          *&buf[12] = 2112;
          *&buf[14] = service9;
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "%s: Contacts full access prompt called for %@", buf, 0x16u);
        }

        [v52 setObject:@"com.apple.ContactsUI.FullAccessSettingsPromptExtension" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
        [v52 setObject:0 forKeyedSubscript:SBUserNotificationHeaderImageAssetCatalogPathKey];
        [v52 setObject:0 forKeyedSubscript:SBUserNotificationHeaderImageAssetCatalogImageKey];
      }
    }

    else
    {
    }
  }

  if (_os_feature_enabled_impl())
  {
    service12 = [(TCCDRequestContext *)v71 service];
    service8 = [service12 name];
    service9 = [service8 isEqualToString:@"kTCCServiceBluetoothAlways"];

    if (service9)
    {
      [v52 setObject:@"com.apple.corelocation.CoreLocationNumberedMapCalloutPromptPlugin" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
    }
  }

  service13 = [(TCCDRequestContext *)v71 service];
  supportsStagedPrompting2 = [service13 supportsStagedPrompting];
  v98 = supportsStagedPrompting2;
  v99 = &SBSProcessIDForDisplayIdentifier_ptr;
  if (!supportsStagedPrompting2)
  {
LABEL_83:
    v101 = _os_feature_enabled_impl();
    if (v101)
    {
      service8 = [(TCCDRequestContext *)v176 service];
      service9 = [service8 name];
      if ([service9 isEqualToString:@"kTCCServiceBluetoothAlways"])
      {

        v71 = v176;
        v99 = &SBSProcessIDForDisplayIdentifier_ptr;
        if (v98)
        {
          goto LABEL_86;
        }

        goto LABEL_88;
      }
    }

    if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
    {
      [(TCCDRequestContext *)v176 service];
      v103 = v102 = buttonAuth;
      name6 = [v103 name];
      v105 = [name6 isEqualToString:@"kTCCServiceAddressBook"];

      headerCopy = v167;
      buttonAuth = v102;
      if (!v101)
      {
LABEL_95:
        if (v98)
        {
        }

        resultCopy = v168;
        v71 = v176;
        v99 = &SBSProcessIDForDisplayIdentifier_ptr;
        if (v105)
        {
          goto LABEL_98;
        }

        goto LABEL_112;
      }
    }

    else
    {
      v105 = 0;
      if ((v101 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    goto LABEL_95;
  }

  service14 = [(TCCDRequestContext *)v71 service];
  service8 = [service14 name];
  if (([service8 isEqualToString:@"kTCCServiceCalendar"] & 1) == 0)
  {
    v163 = service8;
    v164 = service14;
    buttonAuth = [(TCCDRequestContext *)v71 service];
    name7 = [buttonAuth name];
    if (([name7 isEqualToString:@"kTCCServicePhotos"] & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:

    service14 = v164;
    service8 = v163;
  }

LABEL_88:
  resultCopy = v168;
LABEL_98:
  v193[0] = kTCCNotificationExtensionClientDataKey;
  clientDict = [(TCCDRequestContext *)v71 clientDict];
  v107 = clientDict;
  if (clientDict)
  {
    v108 = clientDict;
  }

  else
  {
    v108 = &__NSDictionary0__struct;
  }

  v194[0] = v108;
  v193[1] = kTCCNotificationExtensionDaemonDataKey;
  daemonDict = [(TCCDRequestContext *)v71 daemonDict];
  v110 = daemonDict;
  if (daemonDict)
  {
    v111 = daemonDict;
  }

  else
  {
    v111 = &__NSDictionary0__struct;
  }

  v194[1] = v111;
  v193[2] = @"ClientBundleIdentifier";
  subjectIdentity7 = [(TCCDRequestContext *)v71 subjectIdentity];
  identifier2 = [subjectIdentity7 identifier];
  v194[2] = identifier2;
  v114 = [NSDictionary dictionaryWithObjects:v194 forKeys:v193 count:3];

  v115 = objc_alloc_init(NSExtensionItem);
  v116 = tcc_access_log([v115 setUserInfo:v114]);
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "extensionItem.userInfo: %@", buf, 0xCu);
  }

  v192 = v115;
  v117 = [v99[427] arrayWithObjects:&v192 count:1];
  v182 = 0;
  v118 = [NSKeyedArchiver archivedDataWithRootObject:v117 requiringSecureCoding:1 error:&v182];
  v119 = v182;

  if (v119)
  {
    v121 = tcc_access_log(v120);
    if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      sub_1000441B0(v119, v121, v122, v123, v124, v125, v126, v127);
    }
  }

  else
  {
    [v52 setObject:v118 forKeyedSubscript:SBUserNotificationExtensionItemsKey];
  }

LABEL_112:
  if (&SBUserNotificationDefaultButtonTag)
  {
    [v52 setObject:&off_1000ADF58 forKeyedSubscript:SBUserNotificationDefaultButtonTag];
  }

  reminderPrompt = [(TCCDRequestContext *)v71 reminderPrompt];
  if (reminderPrompt)
  {
    reminderPrompt = [v52 setObject:&off_1000B0250 forKeyedSubscript:SBUserNotificationAllowedApplicationsKey];
  }

  v129 = tcc_access_log(reminderPrompt);
  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
  {
    sub_10004421C(v52, v129);
  }

  error = 0;
  v130 = CFUserNotificationCreate(0, 0.0, 0x20uLL, &error, v52);
  v131 = error;
  if (!v130 || error)
  {
    service15 = [(TCCDRequestContext *)v71 service];
    name8 = [service15 name];
    identityDescription2 = [(TCCDRequestContext *)v71 identityDescription];
    v161 = v131;
    v135 = v166;
    [v166 denyAuthorizationWithErrorCode:2 format:{@"Failed CFUserNotificationCreate(): status %d; service %{public}@ and subject %{public}@", v161, name8, identityDescription2}];
LABEL_130:

    goto LABEL_133;
  }

  v132 = v130;
  reminderPrompt2 = [(TCCDRequestContext *)v71 reminderPrompt];
  if (reminderPrompt2)
  {
    v134 = tcc_access_log(reminderPrompt2);
    v135 = v166;
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
    {
      sub_100044294(v134);
    }

    v136 = [NSValue valueWithPointer:v132];
    *buf = v166;
    *&buf[8] = v71;
    v137 = [v99[427] arrayWithObjects:buf count:2];
    v138 = sub_100043730(v137);
    [v138 setObject:v137 forKeyedSubscript:v136];

    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v132, sub_100043774, 0);
    if (RunLoopSource)
    {
      v140 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v140, kCFRunLoopCommonModes);
      v132 = v140;
    }

    else
    {
      v150 = sub_100043730(0);
      [v150 removeObjectForKey:v136];
    }

    CFRelease(v132);

LABEL_133:
    v151 = v169;
    goto LABEL_134;
  }

  v145 = +[TCCDPlatform currentPlatform];
  server2 = [v145 server];
  generateBacktraceOnPrompt = [server2 generateBacktraceOnPrompt];

  v135 = v166;
  if (generateBacktraceOnPrompt)
  {
    v148 = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100043C14;
    v190 = &unk_1000A4F58;
    v191 = v71;
    dispatch_async(v148, buf);
  }

  responseFlags = 0;
  error = CFUserNotificationReceiveResponse(v132, seconds, &responseFlags);
  CFRelease(v132);
  if (error)
  {
    service15 = [(TCCDRequestContext *)v71 service];
    name8 = [service15 name];
    identityDescription2 = [(TCCDRequestContext *)v71 identityDescription];
    [v166 denyAuthorizationWithErrorCode:2 format:{@"Failed CFUserNotificationReceiveResponse(): service %{public}@, subject %{public}@, status: %d", name8, identityDescription2, error}];
    goto LABEL_130;
  }

  v154 = tcc_access_log(v149);
  if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
  {
    v155 = responseFlags;
    service16 = [(TCCDRequestContext *)v71 service];
    name9 = [service16 name];
    subjectIdentity8 = [(TCCDRequestContext *)v71 subjectIdentity];
    identifier3 = [subjectIdentity8 identifier];
    *v183 = 134218498;
    v184 = v155;
    resultCopy = v168;
    v185 = 2114;
    v186 = name9;
    v187 = 2114;
    v188 = identifier3;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_INFO, "CFUserNotification response: 0x%lx; service %{public}@ and subject %{public}@", v183, 0x20u);

    v135 = v166;
  }

  v160 = responseFlags & 3;
  [v135 setAuthorizationValue:*(&v196 + v160)];
  [v135 setDatabaseAction:1];
  if (v160 != 3)
  {
    [v135 setAuthorizationReason:2];
    goto LABEL_133;
  }

  v151 = v169;
  if (seconds)
  {
    [v135 setDatabaseFlags:{objc_msgSend(v135, "databaseFlags") | 1}];
    [v135 setAuthorizationReason:9];
  }

  else
  {
    [v135 setAuthorizationReason:13];
    if ([v135 promptType] == 2)
    {
      [v135 setAuthorizationValue:currentAuth];
    }
  }

LABEL_134:
  for (i = 3; i != -1; --i)
  {
  }

  if (v165)
  {
    sharedDeviceConnection2 = [sub_100043430() sharedDeviceConnection];
    [sharedDeviceConnection2 hideUserNotification];
  }

LABEL_139:
}

- (TCCDRequestContext)initWithRequestMessage:(id)message forServer:(id)server error:(id *)error
{
  messageCopy = message;
  serverCopy = server;
  v60.receiver = self;
  v60.super_class = TCCDRequestContext;
  v10 = [(TCCDRequestContext *)&v60 init];
  v11 = v10;
  if (!v10 || ([(TCCDRequestContext *)v10 setPromptingPolicy:0], [(TCCDRequestContext *)v11 setUsageStringPolicy:0], [(TCCDRequestContext *)v11 setRecordUpgradePolicy:0], [(TCCDRequestContext *)v11 setPromptStringType:0], [(TCCDRequestContext *)v11 setUserTccdUnavailable:0], [(TCCDRequestContext *)v11 setServer:serverCopy], !messageCopy) || !serverCopy)
  {
LABEL_57:
    v46 = v11;
    goto LABEL_58;
  }

  v11->_spiVersion = 1;
  v12 = xpc_dictionary_get_value(messageCopy, "TCCD_MSG_REQUEST_TYPE_KEY");
  if (v12)
  {
    v13 = v12;
    uint64 = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_REQUEST_TYPE_KEY");

    if (!uint64)
    {
      functionName = v11->_functionName;
      v11->_functionName = @"TCCAccessRequest";

      v11->_spiVersion = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_SPI_VERSION");
      goto LABEL_11;
    }
  }

  string = xpc_dictionary_get_string(messageCopy, "function");
  if (string)
  {
    v16 = [NSString stringWithUTF8String:string];
    v17 = v11->_functionName;
    v11->_functionName = v16;

LABEL_11:
    v21 = [serverCopy serviceFromMessage:messageCopy error:error];
    service = v11->_service;
    v11->_service = v21;

    if (v11->_service)
    {
      v23 = xpc_dictionary_get_string(messageCopy, "TCCD_MSG_ID");
      v24 = (v23 ? [[NSString alloc] initWithUTF8String:v23] : @"?");
      messageIdentifier = v11->_messageIdentifier;
      v11->_messageIdentifier = v24;

      v26 = [[TCCDAttributionChain alloc] initWithMessage:messageCopy];
      p_attributionChain = &v11->_attributionChain;
      attributionChain = v11->_attributionChain;
      v11->_attributionChain = v26;

      if (v11->_attributionChain)
      {
        requestingProcess = [(TCCDAttributionChain *)v11->_attributionChain requestingProcess];

        if (requestingProcess)
        {
          accessingProcess = [*p_attributionChain accessingProcess];

          if (accessingProcess)
          {
            responsibleProcess = [*p_attributionChain responsibleProcess];

            if (responsibleProcess)
            {
              v32 = xpc_dictionary_get_dictionary(messageCopy, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");
              v33 = xpc_dictionary_get_dictionary(v32, "TCCD_MSG_CREDENTIAL_ASSUMED_IDENTITY");
              v34 = v33;
              if (v33)
              {
                xpc_dictionary_get_uint64(v33, "TCCD_MSG_IDENTITY_TYPE_KEY");
                if (xpc_dictionary_get_string(v34, "TCCD_MSG_IDENTITY_ID_KEY"))
                {
                  v35 = tcc_identity_create();
                  v36 = tcc_object_copy_description();
                  logHandle = [serverCopy logHandle];
                  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100053988(&v11->_attributionChain, v36, logHandle);
                  }

                  explicitlyAssumedIdentity = v11->_explicitlyAssumedIdentity;
                  v11->_explicitlyAssumedIdentity = v35;
                }
              }

              v11->_userTccdUnavailable = xpc_dictionary_get_BOOL(messageCopy, "user_tccd_unavailable");
              spiVersion = v11->_spiVersion;
              if (spiVersion == 2)
              {
                v11->_promptingPolicy = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_POLICY_KEY");
                v11->_usageStringPolicy = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_USAGE_STRING_POLICY_KEY");
                v11->_recordUpgradePolicy = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_RECORD_UPGRADE_POLICY_POLICY_KEY");
                v11->_promptRightsMask = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_RIGHTS_MASK_KEY");
                v11->_desiredAuth = xpc_dictionary_get_uint64(messageCopy, "desired_auth_value");
                v11->_promptStringType = xpc_dictionary_get_uint64(messageCopy, "request_prompt_string_type");
                if (!-[TCCDAttributionChain accessingProcessSpecified](v11->_attributionChain, "accessingProcessSpecified") || (-[TCCDAttributionChain requestingProcess](v11->_attributionChain, "requestingProcess"), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 hasEntitlement:@"com.apple.private.tcc.set_client_data" containsServiceAllOrService:v11->_service options:0], v47, v48))
                {
                  length = 0;
                  data = xpc_dictionary_get_data(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_CLIENT_DICT_KEY", &length);
                  if (data)
                  {
                    if (length)
                    {
                      v50 = CFDataCreate(0, data, length);
                      if (v50)
                      {
                        v51 = v50;
                        v52 = CFPropertyListCreateWithData(0, v50, 0, 0, 0);
                        if (v52)
                        {
                          v53 = v52;
                          v54 = CFGetTypeID(v52);
                          if (v54 == CFDictionaryGetTypeID())
                          {
                            Copy = CFDictionaryCreateCopy(0, v53);
                            clientDict = v11->_clientDict;
                            v11->_clientDict = Copy;
                          }

                          CFRelease(v53);
                        }

                        CFRelease(v51);
                      }
                    }
                  }

                  logHandle2 = [serverCopy logHandle];
                  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100053A14(&v11->_attributionChain, logHandle2);
                  }
                }

                v11->_initialPrompt = 1;
              }

              else if (spiVersion == 1)
              {
                v40 = xpc_dictionary_get_value(messageCopy, "require_purpose");
                v41 = v40;
                if (v40 && xpc_get_type(v40) == &_xpc_type_BOOL)
                {
                  value = xpc_BOOL_get_value(v41);
                  v43 = 1;
                  if (!value)
                  {
                    v43 = 2;
                  }

                  v11->_usageStringPolicy = v43;
                }

                v44 = xpc_dictionary_get_BOOL(messageCopy, "preflight");
                v45 = 2;
                if (!v44)
                {
                  v45 = 0;
                }

                v11->_promptingPolicy = v45;
                v11->_recordUpgradePolicy = 1;
              }

              goto LABEL_57;
            }

            v18 = @"Failed to create Responsible Process from message.";
          }

          else
          {
            v18 = @"Failed to create Accessing Process from message.";
          }
        }

        else
        {
          v18 = @"Failed to create Requesting Process from message.";
        }
      }

      else
      {
        v18 = @"Failed to create Attribution Chain from message.";
      }

      if (error)
      {
        v19 = 5;
        goto LABEL_40;
      }
    }

LABEL_41:
    v46 = 0;
    goto LABEL_58;
  }

  if (!error)
  {
    goto LABEL_41;
  }

  v18 = @"Refusing Request for missing function key.";
  v19 = 7;
LABEL_40:
  v46 = 0;
  *error = [TCCDServer newErrorWithCode:v19 format:v18];
LABEL_58:

  return v46;
}

- (id)initForSyncRequestForSubjectBundleIdentifier:(id)identifier service:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  v8 = [(TCCDRequestContext *)self initWithRequestMessage:0 forServer:0 error:0];
  v9 = v8;
  if (v8)
  {
    functionName = v8->_functionName;
    v8->_spiVersion = 2;
    v8->_functionName = @"TCCAccessRequest";

    objc_storeStrong(&v9->_service, service);
    v11 = [[TCCDAccessIdentity alloc] initWithBundleIdentifier:identifierCopy isWK2Proxy:1];
    subjectIdentity = v9->_subjectIdentity;
    v9->_subjectIdentity = v11;

    v9->_watchInitiatedPrompt = 1;
  }

  return v9;
}

@end