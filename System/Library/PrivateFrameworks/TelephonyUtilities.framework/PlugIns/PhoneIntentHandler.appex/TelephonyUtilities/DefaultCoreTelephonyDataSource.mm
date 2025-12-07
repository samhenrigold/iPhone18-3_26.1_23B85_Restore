@interface DefaultCoreTelephonyDataSource
+ (id)sharedInstance;
- (BOOL)isCellularServiceAvailable;
- (CoreTelephonyClient)coreTelephonyClient;
- (DefaultCoreTelephonyDataSource)init;
- (NSArray)allRelevantISOCountryCodes;
- (id)isoCountryCodeOverride;
@end

@implementation DefaultCoreTelephonyDataSource

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003EBC;
  block[3] = &unk_10004CC00;
  block[4] = self;
  if (qword_100057A40 != -1)
  {
    dispatch_once(&qword_100057A40, block);
  }

  v2 = qword_100057A38;

  return v2;
}

- (DefaultCoreTelephonyDataSource)init
{
  v8.receiver = self;
  v8.super_class = DefaultCoreTelephonyDataSource;
  v2 = [(DefaultCoreTelephonyDataSource *)&v8 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    coreTelephonyClientQueue = v2->_coreTelephonyClientQueue;
    v2->_coreTelephonyClientQueue = v4;

    isSuperboxEnabled = v2->_isSuperboxEnabled;
    v2->_isSuperboxEnabled = &stru_10004CC40;
  }

  return v2;
}

- (CoreTelephonyClient)coreTelephonyClient
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (!coreTelephonyClient)
  {
    v4 = [CoreTelephonyClient alloc];
    coreTelephonyClientQueue = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClientQueue];
    v6 = [v4 initWithQueue:coreTelephonyClientQueue];
    v7 = self->_coreTelephonyClient;
    self->_coreTelephonyClient = v6;

    [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:self];
    coreTelephonyClient = self->_coreTelephonyClient;
  }

  return coreTelephonyClient;
}

- (NSArray)allRelevantISOCountryCodes
{
  isoCountryCodeOverride = [(DefaultCoreTelephonyDataSource *)self isoCountryCodeOverride];
  v4 = isoCountryCodeOverride;
  if (isoCountryCodeOverride)
  {
    v5 = IntentHandlerDefaultLog(isoCountryCodeOverride);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using ISO Country Code Override: %@", buf, 0xCu);
    }

    v6 = [[NSArray alloc] initWithObjects:{v4, 0}];
  }

  else
  {
    if (!self->_allRelevantISOCountryCodes || [(DefaultCoreTelephonyDataSource *)self subscriberCountryCodeDidChange])
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
      coreTelephonyClient = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClient];
      v38 = 0;
      v9 = [coreTelephonyClient getSubscriptionInfoWithError:&v38];
      v10 = v38;

      if (v9)
      {
        v32 = v10;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        subscriptionsInUse = [v9 subscriptionsInUse];
        v13 = [subscriptionsInUse countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v31 = v9;
          v15 = *v35;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v35 != v15)
              {
                objc_enumerationMutation(subscriptionsInUse);
              }

              v17 = *(*(&v34 + 1) + 8 * i);
              coreTelephonyClient2 = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClient];
              v33 = 0;
              v19 = [coreTelephonyClient2 copyMobileCountryCode:v17 error:&v33];
              v20 = v33;

              if ([(NSArray *)v19 length])
              {
                v21 = TUISOCountryCodeForMCC();
                if ([v21 length])
                {
                  [v7 addObject:v21];
                }

                else
                {
                  v22 = IntentHandlerDefaultLog(0);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v41 = v19;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not determine ISO Country Code from Mobile Country Code: %@", buf, 0xCu);
                  }
                }
              }

              else
              {
                v21 = IntentHandlerDefaultLog(0);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v41 = v20;
                  _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not determine mobile country code from Core Telephony Subscription Context. Error: %@", buf, 0xCu);
                }
              }
            }

            v14 = [subscriptionsInUse countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v14);
          v9 = v31;
          v4 = 0;
        }

        v10 = v32;
      }

      else
      {
        subscriptionsInUse = IntentHandlerDefaultLog(v11);
        if (os_log_type_enabled(subscriptionsInUse, OS_LOG_TYPE_ERROR))
        {
          sub_10002F20C(v10, subscriptionsInUse);
        }
      }

      v23 = TUHomeCountryCode();
      if ([v23 length])
      {
        [v7 addObject:v23];
      }

      [(DefaultCoreTelephonyDataSource *)self setSubscriberCountryCodeDidChange:0];
      array = [v7 array];
      allRelevantISOCountryCodes = self->_allRelevantISOCountryCodes;
      self->_allRelevantISOCountryCodes = array;

      v27 = IntentHandlerDefaultLog(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_allRelevantISOCountryCodes;
        *buf = 138412290;
        v41 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Resolved relevant ISO country codes: %@", buf, 0xCu);
      }
    }

    v6 = self->_allRelevantISOCountryCodes;
  }

  v29 = v6;

  return v29;
}

- (BOOL)isCellularServiceAvailable
{
  v3 = (*(self->_isSuperboxEnabled + 2))();
  if (v3)
  {
    v4 = IntentHandlerDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Superbox is enabled, returning YES", buf, 2u);
    }

    v5 = 1;
  }

  else
  {
    coreTelephonyClient = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClient];
    v33 = 0;
    v7 = [coreTelephonyClient getSubscriptionInfoWithError:&v33];
    v4 = v33;

    if (v7)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      subscriptionsInUse = [v7 subscriptionsInUse];
      v10 = [subscriptionsInUse countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v10)
      {
        v12 = v10;
        v25 = v7;
        v26 = v4;
        v13 = *v30;
        v14 = kCTRegistrationStatusRegisteredHome;
        v27 = kCTRegistrationStatusRegisteredRoaming;
        *&v11 = 138412290;
        v24 = v11;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(subscriptionsInUse);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            coreTelephonyClient2 = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClient];
            v28 = 0;
            v18 = [coreTelephonyClient2 copyRegistrationStatus:v16 error:&v28];
            v19 = v28;

            if ([v18 length])
            {
              if ([v18 isEqualToString:v14] & 1) != 0 || (v20 = objc_msgSend(v18, "isEqualToString:", v27), (v20))
              {

                v5 = 1;
                v7 = v25;
                v4 = v26;
                goto LABEL_27;
              }

              v21 = IntentHandlerDefaultLog(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v35 = v18;
                v36 = 2112;
                v37 = v16;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Cellular service is not available for SIM. Registration Status: %@ Subscription context: %@", buf, 0x16u);
              }
            }

            else
            {
              v21 = IntentHandlerDefaultLog(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v35 = v19;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not determine registration status from Core Telephony Subscription Context. Error: %@", buf, 0xCu);
              }
            }
          }

          v12 = [subscriptionsInUse countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        v7 = v25;
        v4 = v26;
      }
    }

    else
    {
      subscriptionsInUse = IntentHandlerDefaultLog(v8);
      if (os_log_type_enabled(subscriptionsInUse, OS_LOG_TYPE_ERROR))
      {
        sub_10002F20C(v4, subscriptionsInUse);
      }
    }

    subscriptionsInUse = IntentHandlerDefaultLog(v22);
    if (os_log_type_enabled(subscriptionsInUse, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, subscriptionsInUse, OS_LOG_TYPE_DEFAULT, "[WARN] Determined cellular service is unavailable.", buf, 2u);
    }

    v5 = 0;
LABEL_27:
  }

  return v5;
}

- (id)isoCountryCodeOverride
{
  if (_TUIsInternalInstall())
  {
    v2 = +[NSUserDefaults tu_defaults];
    v3 = [v2 stringForKey:@"IntentHandlerISOCountryCodeInternalOverride"];

    if (v3)
    {
      v5 = IntentHandlerDefaultLog(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10002F284(v3, v5);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end