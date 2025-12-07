@interface ICSApplicationDelegateHelper
- (BOOL)configureAndOpenDialRequestForDualSIMIfNecessary:(id)necessary options:(id)options url:(id)url;
- (BOOL)isDefaultOrTelephonyScheme:(id)scheme;
- (BOOL)openDialRequestIfNecessary:(id)necessary options:(id)options bypassUIPromptIfDefaultProvider:(BOOL)provider;
- (ICSApplicationDelegateHelper)init;
@end

@implementation ICSApplicationDelegateHelper

- (ICSApplicationDelegateHelper)init
{
  v6.receiver = self;
  v6.super_class = ICSApplicationDelegateHelper;
  v2 = [(ICSApplicationDelegateHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v3;
  }

  return v2;
}

- (BOOL)openDialRequestIfNecessary:(id)necessary options:(id)options bypassUIPromptIfDefaultProvider:(BOOL)provider
{
  providerCopy = provider;
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    v9 = [options objectForKey:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      provider = [necessaryCopy provider];
      if ([provider isSystemProvider])
      {

LABEL_8:
        openDialRequestBlock = [(ICSApplicationDelegateHelper *)self openDialRequestBlock];
        (openDialRequestBlock)[2](openDialRequestBlock, necessaryCopy, v9, providerCopy);

LABEL_11:
        goto LABEL_12;
      }

      featureFlags = [(ICSApplicationDelegateHelper *)self featureFlags];
      v14 = TUDefaultAppsEnabled();

      if (v14)
      {
        goto LABEL_8;
      }

      v12 = +[TUCallCenter sharedInstance];
      [v12 launchAppForDialRequest:necessaryCopy completion:0];
    }

    else
    {
      v12 = sub_100004F84(isKindOfClass);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1002561AC();
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  return necessaryCopy != 0;
}

- (BOOL)configureAndOpenDialRequestForDualSIMIfNecessary:(id)necessary options:(id)options url:(id)url
{
  necessaryCopy = necessary;
  optionsCopy = options;
  v11 = [(ICSApplicationDelegateHelper *)self isDefaultOrTelephonyScheme:url];
  if (!necessaryCopy)
  {
    v17 = 0;
    goto LABEL_53;
  }

  v12 = v11;
  featureFlags = [(ICSApplicationDelegateHelper *)self featureFlags];
  phoneAppCoupledRelayEnabled = [featureFlags phoneAppCoupledRelayEnabled];
  if (phoneAppCoupledRelayEnabled)
  {
    v5 = defaultCallingAppLSBundleIdentifier();
    if (!v5)
    {
      v16 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  featureFlags2 = [(ICSApplicationDelegateHelper *)self featureFlags];
  v16 = ([featureFlags2 phoneAppCoupledRelayEnabled] & 1) == 0 && defaultAppRelayTelephonySetting() == 1;

  if (phoneAppCoupledRelayEnabled)
  {
    goto LABEL_11;
  }

LABEL_12:

  preferDefaultApp = [necessaryCopy preferDefaultApp];
  if (!preferDefaultApp || !v16)
  {
    if (+[PHDevice isGeminiCapable])
    {
      provider = [necessaryCopy provider];
      if ([provider isTelephonyProvider])
      {
        localSenderIdentityAccountUUID = [necessaryCopy localSenderIdentityAccountUUID];

        if (!localSenderIdentityAccountUUID)
        {
          v22 = +[ICSApplicationServices sharedInstance];
          contactGeminiManager = [v22 contactGeminiManager];

          v24 = +[ICSApplicationServices sharedInstance];
          contactStore = [v24 contactStore];

          v26 = +[CNGeminiManager descriptorForRequiredKeys];
          v57 = v26;
          v27 = [NSArray arrayWithObjects:&v57 count:1];

          contactIdentifier = [necessaryCopy contactIdentifier];
          v29 = contactIdentifier;
          v51 = v27;
          if (contactIdentifier)
          {
            v30 = sub_100004F84(contactIdentifier);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              v56 = v29;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Retrieving contact with identifier %{sensitive}@", buf, 0xCu);
            }

            v54 = 0;
            v31 = [contactStore unifiedContactWithIdentifier:v29 keysToFetch:v27 error:&v54];
            v32 = v54;
            cnHandle = v32;
            if (!v31)
            {
              if (!v32)
              {
                goto LABEL_51;
              }

              code = [v32 code];
              if (code == 200)
              {
                goto LABEL_51;
              }

              v49 = contactStore;
              v35 = contactGeminiManager;
              v36 = sub_100004F84(code);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_10025628C();
              }

              v37 = cnHandle;
              goto LABEL_43;
            }

            v49 = contactStore;
            v34 = sub_100004F84(v32);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              v56 = v31;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Retrieving sender identity for contact %{sensitive}@", buf, 0xCu);
            }

            v53 = cnHandle;
            v35 = contactGeminiManager;
            v36 = [contactGeminiManager bestSenderIdentityForContact:v31 error:&v53];
            v37 = v53;

            if (v36)
            {
              accountUUID = [v36 accountUUID];
              [necessaryCopy setLocalSenderIdentityAccountUUID:accountUUID];
            }

            else
            {
              if (!v37)
              {
LABEL_43:

                cnHandle = v37;
                contactGeminiManager = v35;
                contactStore = v49;
LABEL_51:

                goto LABEL_52;
              }

              accountUUID = sub_100004F84(v38);
              if (os_log_type_enabled(accountUUID, OS_LOG_TYPE_ERROR))
              {
                sub_100256214(v37, accountUUID);
              }
            }

            goto LABEL_43;
          }

          handle = [necessaryCopy handle];
          cnHandle = [handle cnHandle];

          v31 = sub_100004F84(v41);
          v42 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          if (cnHandle)
          {
            if (v42)
            {
              *buf = 138739971;
              v56 = cnHandle;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Retrieving sender identity for contact handle %{sensitive}@", buf, 0xCu);
            }

            v52 = 0;
            handle2 = [contactGeminiManager bestSenderIdentityForHandle:cnHandle contactStore:contactStore error:&v52];
            v44 = v52;
            v31 = v44;
            if (handle2)
            {
              v50 = contactStore;
              v45 = contactGeminiManager;
              accountUUID2 = [handle2 accountUUID];
              [necessaryCopy setLocalSenderIdentityAccountUUID:accountUUID2];
LABEL_49:

              contactGeminiManager = v45;
              contactStore = v50;
              goto LABEL_50;
            }

            if (v44)
            {
              v50 = contactStore;
              v45 = contactGeminiManager;
              accountUUID2 = sub_100004F84(v44);
              if (os_log_type_enabled(accountUUID2, OS_LOG_TYPE_ERROR))
              {
                sub_1002562F4(v31, accountUUID2);
              }

              goto LABEL_49;
            }
          }

          else
          {
            if (!v42)
            {
              goto LABEL_51;
            }

            handle2 = [necessaryCopy handle];
            *buf = 138412290;
            v56 = handle2;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Could not create a contact handle from dial request handle %@.", buf, 0xCu);
          }

LABEL_50:

          goto LABEL_51;
        }
      }

      else
      {
      }
    }

LABEL_52:
    v17 = [(ICSApplicationDelegateHelper *)self openDialRequestIfNecessary:necessaryCopy options:optionsCopy bypassUIPromptIfDefaultProvider:v12];
    goto LABEL_53;
  }

  v19 = sub_100004F84(preferDefaultApp);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cannot proceed with dial request because user has 'None' selected as their default app", buf, 2u);
  }

  v17 = 1;
LABEL_53:

  return v17;
}

- (BOOL)isDefaultOrTelephonyScheme:(id)scheme
{
  schemeCopy = scheme;
  featureFlags = [(ICSApplicationDelegateHelper *)self featureFlags];
  defaultCallingAppsGracefulFallbackEnabled = [featureFlags defaultCallingAppsGracefulFallbackEnabled];

  if (defaultCallingAppsGracefulFallbackEnabled)
  {
    scheme = [schemeCopy scheme];
    v8 = +[NSURL TUDialRequestSchemeDefaultApp];
    if ([scheme isEqualToString:v8])
    {
      v9 = 1;
    }

    else
    {
      scheme2 = [schemeCopy scheme];
      v11 = +[NSURL TUDialRequestSchemeForceTelephony];
      v9 = [scheme2 isEqualToString:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end