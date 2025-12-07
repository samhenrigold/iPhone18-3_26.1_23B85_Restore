@interface DDTextMessageAction
+ (BOOL)isShowMessageURL:(id)l;
+ (BOOL)supportsURL:(id)l;
+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (DDTextMessageAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)_serviceIdentifier;
- (id)compactTitle;
- (id)defaultAction;
- (id)defaultMessagingApp;
- (id)defaultMessagingAppIsMessages;
- (id)defaultSMSApp;
- (id)handleString;
- (id)notificationIconBundleIdentifier;
- (id)notificationTitle;
- (id)notificationURL;
- (id)serviceCompactName;
- (id)serviceIdentifier;
- (id)serviceName;
- (id)subtitle;
- (id)viewController;
- (int)interactionType;
- (uint64_t)canUseSheet;
- (uint64_t)shouldAddDefaultApps;
- (void)baseServiceMenuName;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)performFromView:(id)view;
- (void)viewController;
@end

@implementation DDTextMessageAction

+ (BOOL)isShowMessageURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if ((([lowercaseString isEqualToString:@"sms"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"messages")) && (objc_msgSend(lCopy, "resourceSpecifier"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "componentsSeparatedByString:", @"?"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "componentsSeparatedByString:", @"/"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lastObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"open"), v10, v9, v8, v7, v6, v11))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:{0, 0}];
    queryItems = [v12 queryItems];

    v14 = [queryItems countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(queryItems);
          }

          name = [*(*(&v22 + 1) + 8 * i) name];
          v19 = [name isEqualToString:@"recipient"];

          if (v19)
          {
            v20 = 0;
            goto LABEL_15;
          }
        }

        v15 = [queryItems countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = 1;
LABEL_15:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)supportsURL:(id)l
{
  lCopy = l;
  scheme = [(__CFString *)lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if (!lowercaseString)
  {
    goto LABEL_7;
  }

  matchingSchemes = [self matchingSchemes];
  v8 = [matchingSchemes containsObject:lowercaseString];

  if ((v8 & 1) == 0)
  {
    if ([lowercaseString isEqualToString:@"sip"])
    {
      v14 = 0;
      v10 = [(NSURL *)lCopy dd_phoneNumberFromTelSchemeAndExtractBody:&v14 serviceID:0 suggestions:?];
      v9 = v14 != 0;
      goto LABEL_8;
    }

    v11 = dd_emailFromMailtoScheme(lCopy);
    IsChatBot = dd_handleIsChatBot(v11);

    if ((IsChatBot & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (DDTextMessageAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  v25.receiver = self;
  v25.super_class = DDTextMessageAction;
  v9 = [(DDTelephoneNumberAction *)&v25 initWithURL:lCopy result:result context:context];
  v10 = v9;
  if (v9)
  {
    url = v9->super.super._url;
    if (url)
    {
      v12 = url;
    }

    else
    {
      v12 = _DDURLFromResult(result, 1u);
    }

    v13 = v12;

    scheme = [(NSURL *)v13 scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"mailto"] && dd_handleIsChatBot(v10->super._phoneNumber))
    {
      v17 = dd_encodedEmail(v10->super._phoneNumber);
      serviceID = v10->super._serviceID;
      v10->super._serviceID = v17;

      v19 = [(NSString *)v10->super._serviceID componentsSeparatedByString:@"@"];
      firstObject = [v19 firstObject];
      phoneNumber = v10->super._phoneNumber;
      v10->super._phoneNumber = firstObject;
    }

    if (v13 && (!result || _DDResultIsURL(result)) && (v10->super._serviceID || [lowercaseString isEqualToString:@"sms"]))
    {
      defaultSMSApp = [(DDTextMessageAction *)&v10->super.super.super.isa defaultSMSApp];
      notificationURLHandler = v10->_notificationURLHandler;
      v10->_notificationURLHandler = defaultSMSApp;

      v10->_forceSMS = 1;
    }
  }

  else
  {
    v13 = lCopy;
  }

  return v10;
}

- (id)defaultAction
{
  v6.receiver = self;
  v6.super_class = DDTextMessageAction;
  defaultAction = [(DDAction *)&v6 defaultAction];
  if (defaultAction)
  {
    v4 = defaultAction;
    objc_storeStrong(defaultAction + 22, self->_defaultMessagingApp);
    *(v4 + 184) = self->_defaultMessagingAppFetched;
    objc_storeStrong(v4 + 26, self->_messagesAppRecord);
    *(v4 + 216) = self->_messagesAppRecordFetched;
    objc_storeStrong(v4 + 24, self->_defaultSMSApp);
    *(v4 + 200) = self->_defaultSMSAppFetched;
    objc_storeStrong(v4 + 28, self->_notificationURLHandler);
    defaultAction = v4;
    *(v4 + 233) = self->_ignoreDefaultApps;
    *(v4 + 232) = self->_forceSMS;
  }

  return defaultAction;
}

void __50__DDTextMessageAction_supportsAlternateSMSHandler__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v1 = domain_answer;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    v6 = v1;
    v2 = MEMORY[0x277D86220];
    v3 = "OS eligibility: Unable to determine eligibility of SMS_MMS_RCS_API due to error %d. Defaulting to ineligible";
    v4 = 8;
  }

  else
  {
    _MergedGlobals_11 = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109632;
    v6 = _MergedGlobals_11;
    v7 = 1024;
    v8 = 0;
    v9 = 1024;
    v10 = 0;
    v2 = MEMORY[0x277D86220];
    v3 = "OS eligibility: SMS_MMS_RCS_API Eligible %d, Computed: %d, Forced: %d";
    v4 = 20;
  }

  _os_log_impl(&dword_21AB70000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, v4);
}

- (id)handleString
{
  if (self->super._serviceID)
  {
    return self->super._serviceID;
  }

  else
  {
    return self->super._phoneNumber;
  }
}

- (id)serviceName
{
  localizedName = [(LSApplicationRecord *)self->_notificationURLHandler localizedName];
  v4 = localizedName;
  if (localizedName || self->_forceSMS)
  {
    localizedName2 = localizedName;
  }

  else
  {
    localizedName2 = [(LSApplicationRecord *)self->_defaultMessagingApp localizedName];
  }

  v6 = localizedName2;

  return v6;
}

- (id)serviceCompactName
{
  serviceName = [(DDTextMessageAction *)self serviceName];
  v4 = serviceName;
  if (serviceName)
  {
    serviceCompactName = serviceName;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDTextMessageAction;
    serviceCompactName = [(DDAction *)&v8 serviceCompactName];
  }

  v6 = serviceCompactName;

  return v6;
}

- (id)subtitle
{
  bizItem = [(DDTelephoneNumberAction *)self bizItem];
  messageSubtitle = [bizItem messageSubtitle];

  return messageSubtitle;
}

- (id)compactTitle
{
  serviceCompactName = [(DDTextMessageAction *)self serviceCompactName];
  v4 = serviceCompactName;
  if (serviceCompactName)
  {
    compactTitle = serviceCompactName;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDTextMessageAction;
    compactTitle = [(DDTelephoneNumberAction *)&v8 compactTitle];
  }

  v6 = compactTitle;

  return v6;
}

- (int)interactionType
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (([bundleIdentifier isEqualToString:@"com.apple.MobileSMS.MessagesNotificationExtension"] & 1) != 0 || !-[DDTextMessageAction canUseSheet](self, v5) || self && -[NSString isEqualToString:](self->super._phoneNumber, "isEqualToString:", @"open"))
  {

    return 0;
  }

  else
  {
    Helper_x8__OBJC_CLASS___MFMessageComposeViewController = gotLoadHelper_x8__OBJC_CLASS___MFMessageComposeViewController(v7);
    if ([*(v9 + 2184) canSendText])
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }
}

- (id)notificationTitle
{
  v3 = self->super._phoneNumber;
  if ([(NSString *)self->super._phoneNumber isEqualToString:@"open"])
  {
    v4 = DDLocalizedString(@"Show in Messages");
  }

  else
  {
    v5 = [(DDTelephoneNumberAction *)self contactAndLabelForPhoneNumber:0];
    if (v5)
    {
      v6 = [MEMORY[0x277CBDA78] stringFromContact:v5 style:0];
      if ([v6 length])
      {
        v7 = v6;

        v3 = v7;
      }
    }

    serviceName = [(DDTextMessageAction *)self serviceName];
    v9 = MEMORY[0x277CCACA8];
    if (serviceName)
    {
      v10 = DDLocalizedString(@"Compose a message to “%@” in %@");
      [v9 stringWithFormat:v10, v3, serviceName];
    }

    else
    {
      v10 = DDLocalizedString(@"Compose a message to “%@”");
      [v9 stringWithFormat:v10, v3, v12];
    }
    v4 = ;
  }

  return v4;
}

- (id)notificationIconBundleIdentifier
{
  serviceIdentifier = [(DDTextMessageAction *)self serviceIdentifier];
  v3 = serviceIdentifier;
  if (serviceIdentifier)
  {
    v4 = serviceIdentifier;
  }

  else
  {
    v4 = @"com.apple.MobileSMS";
  }

  v5 = v4;

  return v4;
}

- (id)_serviceIdentifier
{
  serviceIdentifier = [(DDTextMessageAction *)self serviceIdentifier];
  v3 = serviceIdentifier;
  if (serviceIdentifier)
  {
    v4 = serviceIdentifier;
  }

  else
  {
    v4 = @"default.textmessage.service";
  }

  v5 = v4;

  return v4;
}

- (id)serviceIdentifier
{
  if (self->super.super._url && [DDTextMessageAction isShowMessageURL:?])
  {
    bundleIdentifier2 = @"com.apple.MobileSMS";
  }

  else
  {
    bundleIdentifier = [(LSApplicationRecord *)self->_notificationURLHandler bundleIdentifier];
    v5 = bundleIdentifier;
    if (bundleIdentifier)
    {
      bundleIdentifier2 = bundleIdentifier;
    }

    else
    {
      notificationURL = [(DDTextMessageAction *)self notificationURL];
      scheme = [notificationURL scheme];
      lowercaseString = [scheme lowercaseString];
      if ([lowercaseString isEqualToString:@"im"])
      {
        defaultMessagingApp = [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingApp];
        bundleIdentifier2 = [defaultMessagingApp bundleIdentifier];
      }

      else
      {
        bundleIdentifier2 = 0;
      }
    }
  }

  return bundleIdentifier2;
}

- (id)notificationURL
{
  cachedNotificationURL = self->_cachedNotificationURL;
  if (cachedNotificationURL)
  {
    v3 = cachedNotificationURL;
    goto LABEL_41;
  }

  if (self->super._serviceID || (-[DDTelephoneNumberAction bizItem](self, "bizItem"), v8 = objc_claimAutoreleasedReturnValue(), [v8 messagesOpenURL], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    scheme = [(NSURL *)self->super.super._url scheme];
    lowercaseString = [scheme lowercaseString];

    if (self->super._serviceID)
    {
      p_ignoreDefaultApps = &self->_ignoreDefaultApps;
      self->_ignoreDefaultApps = 1;
      goto LABEL_19;
    }

    if ([lowercaseString isEqualToString:@"sms"])
    {
      v11 = [(NSString *)self->super._phoneNumber isEqualToString:@"open"];
      p_ignoreDefaultApps = &self->_ignoreDefaultApps;
      self->_ignoreDefaultApps = v11;
      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      p_ignoreDefaultApps = &self->_ignoreDefaultApps;
      self->_ignoreDefaultApps = 0;
    }

    phoneNumber = self->super._phoneNumber;
    if (phoneNumber)
    {
      v13 = phoneNumber;
      if ([(NSString *)v13 containsString:@"@"])
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v15 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:v14 value:v13];
      v16 = [DDCallKitAudioAction providersIfHandleIsEmergency:v15];
      if ([v16 count])
      {
        *p_ignoreDefaultApps = 1;
      }
    }

LABEL_19:
    if (self->super._serviceID)
    {
      if ([lowercaseString isEqualToString:@"sip"])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"sms:%@?service_id=%@", self->super._phoneNumber, self->super._serviceID];
        body = self->super._body;
        if (body)
        {
          uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
          v20 = [(NSString *)body stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
          v21 = [v17 stringByAppendingFormat:@"&body=%@", v20];

          v17 = v21;
        }

        if (self->super._suggestions)
        {
          v22 = [v17 stringByAppendingFormat:@"&suggestions=%@", self->super._suggestions];

          v17 = v22;
        }

        v23 = [MEMORY[0x277CBEBC0] URLWithString:v17];
        goto LABEL_35;
      }

      if (self->super.super._url)
      {
        v26 = [lowercaseString isEqualToString:@"sms"];
        url = self->super.super._url;
        if ((v26 & 1) == 0)
        {
          v17 = [MEMORY[0x277CCACE0] componentsWithURL:url resolvingAgainstBaseURL:0];
          [v17 setScheme:@"sms"];
          v23 = [v17 URL];
LABEL_35:
          v28 = v23;

          goto LABEL_39;
        }
      }

      else
      {
        url = 0;
      }

      v25 = url;
LABEL_38:
      v28 = v25;
      goto LABEL_39;
    }

    if (!*p_ignoreDefaultApps && ([lowercaseString isEqualToString:@"im"] & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", @"messages") & 1) == 0)
    {
      if (self->_notificationURLHandler)
      {
        if ([lowercaseString isEqualToString:@"im"])
        {
          goto LABEL_31;
        }
      }

      else
      {
        if ([(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingAppIsMessages])
        {
          v30 = @"sms";
        }

        else
        {
          v30 = @"im";
        }

        if ([lowercaseString isEqualToString:v30])
        {
          goto LABEL_31;
        }
      }

      v31 = [lowercaseString isEqualToString:@"sms"];
      v32 = self->super.super._url;
      if ((v31 & 1) == 0)
      {
        webSafeTelephoneURL = [(NSURL *)v32 webSafeTelephoneURL];
        if (webSafeTelephoneURL)
        {
          v35 = MEMORY[0x277CBEBC0];
          v36 = MEMORY[0x277CCACA8];
          v37 = @"im";
          if (!self->_notificationURLHandler && [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingAppIsMessages])
          {
            v37 = @"sms";
          }

          resourceSpecifier = [webSafeTelephoneURL resourceSpecifier];
          v39 = [v36 stringWithFormat:@"%@:%@", v37, resourceSpecifier];
          v28 = [v35 URLWithString:v39];
        }

        else
        {
          v40 = self->super._phoneNumber;
          if (!v40)
          {
            v28 = 0;

            goto LABEL_39;
          }

          v41 = MEMORY[0x277CBEBC0];
          v42 = MEMORY[0x277CCACA8];
          v43 = @"im";
          if (!self->_notificationURLHandler)
          {
            v44 = MEMORY[0x277CCACA8];
            defaultMessagingAppIsMessages = [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingAppIsMessages];
            v42 = v44;
            if (defaultMessagingAppIsMessages)
            {
              v43 = @"sms";
            }

            v40 = self->super._phoneNumber;
          }

          resourceSpecifier = [v42 stringWithFormat:@"%@:%@", v43, v40];
          v28 = [v41 URLWithString:resourceSpecifier];
        }

LABEL_39:
        objc_storeStrong(&self->_cachedNotificationURL, v28);
        v10 = v28;

        goto LABEL_40;
      }

      v25 = v32;
      goto LABEL_38;
    }

LABEL_31:
    v25 = self->super.super._url;
    goto LABEL_38;
  }

  self->_ignoreDefaultApps = 1;
  objc_storeStrong(&self->_cachedNotificationURL, v9);
  v10 = v9;
LABEL_40:

  v3 = v10;
LABEL_41:

  return v3;
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  notificationURL = [(DDTextMessageAction *)self notificationURL];
  [(DDAction *)self _performFromView:viewCopy byOpeningURL:notificationURL];
}

- (id)viewController
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (!self->super.super._viewController && self->super._phoneNumber)
  {
    selfCopy = self;
    [(DDTextMessageAction *)self viewController:v5];
    self = selfCopy;
  }

  viewController = self->super.super._viewController;

  return viewController;
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  [controller setMessageComposeDelegate:{0, result}];
  delegate = [(DDAction *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(DDAction *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(DDAction *)self delegate];
      [delegate3 actionDidFinish:self];
    }
  }
}

+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v57[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  contextCopy = context;
  selfCopy = self;
  resultCopy = result;
  v10 = [[self alloc] initWithURL:lCopy result:result context:contextCopy];
  handleString = [v10 handleString];

  if (!handleString)
  {
    v20 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  bundleIdentifier = [v10[28] bundleIdentifier];
  v13 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

  if (!v13)
  {
    v16 = 0;
    goto LABEL_12;
  }

  v15 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  [v15 setScheme:@"im"];
  v16 = [v15 URL];
  defaultMessagingApp = v10[28];

  if (!defaultMessagingApp)
  {
LABEL_12:
    defaultMessagingApp = [(DDTextMessageAction *)v10 defaultMessagingApp];
  }

  bundleIdentifier2 = [defaultMessagingApp bundleIdentifier];
  v19 = [contextCopy objectForKeyedSubscript:@"defaultActionOnly"];

  if (v19)
  {
    v57[0] = v10;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    if ([(DDTextMessageAction *)v10 shouldAddDefaultApps])
    {
      v44 = v22;
      obj = defaultMessagingApp;
      v42 = v16;
      v43 = lCopy;
      v50 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v24 = [MEMORY[0x277CC1E70] enumeratorForViableDefaultAppsForCategory:3 options:0];
      v25 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v52;
        v28 = v43;
        if (v16)
        {
          v28 = v16;
        }

        v46 = v28;
        v47 = v24;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v52 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v51 + 1) + 8 * i);
            bundleIdentifier3 = [v30 bundleIdentifier];
            v32 = bundleIdentifier3;
            if (bundleIdentifier3 && ([bundleIdentifier3 isEqualToString:bundleIdentifier2] & 1) == 0 && (objc_msgSend(v50, "containsObject:", v32) & 1) == 0)
            {
              v33 = bundleIdentifier2;
              v34 = contextCopy;
              v35 = [[selfCopy alloc] initWithURL:v46 result:resultCopy context:contextCopy];
              [v10 handleString];
              v37 = v36 = v10;

              if (v37)
              {
                objc_storeStrong(v35 + 28, v30);
                objc_storeStrong(v36 + 28, obj);
                v38 = v36[21];
                v36[21] = 0;

                [v44 addObject:v35];
                [v50 addObject:v32];
              }

              contextCopy = v34;
              v10 = v36;
              bundleIdentifier2 = v33;
              v24 = v47;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v26);
      }

      v16 = v42;
      lCopy = v43;
      v22 = v44;
      defaultMessagingApp = obj;
    }

    v39 = [contextCopy objectForKeyedSubscript:@"HeyBarcodeSheet"];
    bOOLValue = [v39 BOOLValue];

    if (bOOLValue)
    {
      v55 = v10;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    }

    else
    {
      v41 = v22;
    }

    v20 = v41;
  }

LABEL_8:

  return v20;
}

- (id)defaultSMSApp
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    if ((self[25] & 1) == 0)
    {
      if (qword_280B12318 != -1)
      {
        dispatch_once(&qword_280B12318, &__block_literal_global_11);
      }

      if (_MergedGlobals_11 == 1)
      {
        isLSTrusted = dd_isLSTrusted(self, a2);
        if (isLSTrusted)
        {
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          v16[0] = 0;
          v5 = [defaultWorkspace defaultApplicationForCategory:10 error:v16];
          v6 = v16[0];
        }

        else
        {
          v6 = 0;
          v5 = 0;
        }

        objc_storeStrong(selfCopy + 24, v5);
        if (isLSTrusted)
        {
        }

        if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          OUTLINED_FUNCTION_0_6();
          *(&v16[2] + 6) = v6;
          OUTLINED_FUNCTION_1_4(&dword_21AB70000, MEMORY[0x277D86220], v9, "Couldn't get default messaging app from %@. Error: %@", v10, v11, v12, v13, v15, v16[0]);
        }

        *(selfCopy + 200) = 1;
      }
    }

    self = selfCopy[24];
  }

  return self;
}

- (void)baseServiceMenuName
{
  selfCopy = self;
  if (self)
  {
    bizItem = [self bizItem];

    if (bizItem)
    {
      bizItem2 = [selfCopy bizItem];
      selfCopy = [bizItem2 messageTitle];
    }

    else
    {
      if (selfCopy[8] && [DDTextMessageAction isShowMessageURL:?])
      {
        v4 = @"Show in Messages";
      }

      else
      {
        v4 = @"Message";
      }

      selfCopy = DDLocalizedString(v4);
    }
  }

  return selfCopy;
}

- (id)defaultMessagingApp
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    if ((self[23] & 1) == 0)
    {
      isLSTrusted = dd_isLSTrusted(self, a2);
      if (isLSTrusted)
      {
        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v16[0] = 0;
        v5 = [defaultWorkspace defaultApplicationForCategory:3 error:v16];
        v6 = v16[0];
      }

      else
      {
        v6 = 0;
        v5 = 0;
      }

      objc_storeStrong(selfCopy + 22, v5);
      if (isLSTrusted)
      {
      }

      if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        OUTLINED_FUNCTION_0_6();
        *(&v16[2] + 6) = v6;
        OUTLINED_FUNCTION_1_4(&dword_21AB70000, MEMORY[0x277D86220], v9, "Couldn't get default messaging app from %@. Error: %@", v10, v11, v12, v13, v15, v16[0]);
      }

      *(selfCopy + 184) = 1;
    }

    self = selfCopy[22];
  }

  return self;
}

- (id)defaultMessagingAppIsMessages
{
  if (result)
  {
    defaultMessagingApp = [(DDTextMessageAction *)result defaultMessagingApp];
    bundleIdentifier = [defaultMessagingApp bundleIdentifier];
    v4 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

    return v4;
  }

  return result;
}

- (uint64_t)canUseSheet
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 224))
  {
    bundleIdentifier = [*(self + 224) bundleIdentifier];
    v3 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];
  }

  else
  {
    if (*(self + 232) == 1)
    {
      [(DDTextMessageAction *)self defaultSMSApp];
    }

    else
    {
      [(DDTextMessageAction *)self defaultMessagingApp];
    }
    bundleIdentifier = ;
    v2BundleIdentifier = [bundleIdentifier bundleIdentifier];
    v3 = [v2BundleIdentifier isEqualToString:@"com.apple.MobileSMS"];
  }

  return v3;
}

- (uint64_t)shouldAddDefaultApps
{
  selfCopy = self;
  if (self)
  {
    if (*(self + 64))
    {
      self = [DDTextMessageAction isShowMessageURL:?];
      if (self)
      {
        return 0;
      }
    }

    if (!dd_isLSTrusted(self, a2))
    {
      return 0;
    }

    else
    {
      notificationURL = [selfCopy notificationURL];
      if (notificationURL && (*(selfCopy + 233) & 1) == 0)
      {
        defaultMessagingApp = [(DDTextMessageAction *)selfCopy defaultMessagingApp];
        bundleIdentifier = [defaultMessagingApp bundleIdentifier];
        if (bundleIdentifier)
        {
          v8 = [*(selfCopy + 56) objectForKeyedSubscript:@"HeyBarcodeSheet"];
          bOOLValue = [v8 BOOLValue];

          if (bOOLValue)
          {
            v10 = [*(selfCopy + 56) objectForKeyedSubscript:@"135842921"];
            selfCopy = [v10 BOOLValue];
          }

          else
          {
            selfCopy = 1;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  return selfCopy;
}

- (void)viewController
{
  if ([(DDTextMessageAction *)self canUseSheet])
  {
    gotLoadHelper_x8__OBJC_CLASS___MFMessageComposeViewController(v8);
    v10 = objc_alloc_init(*(v9 + 2184));
    v11 = dd_userFriendlyEmail(*a2);
    *a3 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:a3 count:1];
    [v10 setRecipients:v12];

    [v10 setBody:self[17]];
    [v10 setServiceId:self[18]];
    [v10 setSuggestions:self[19]];
    [v10 setMessageComposeDelegate:self];
    v13 = *a4;
    *a4 = v10;
  }
}

@end