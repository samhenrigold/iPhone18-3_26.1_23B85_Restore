@interface ICQNetworkThrottleController
- (BOOL)requestShouldThrottle:(id)throttle;
- (ICQNetworkThrottleController)init;
- (void)request:(id)request didCompleteWithError:(id)error;
@end

@implementation ICQNetworkThrottleController

- (ICQNetworkThrottleController)init
{
  v6.receiver = self;
  v6.super_class = ICQNetworkThrottleController;
  v2 = [(ICQNetworkThrottleController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cloud.quota"];
    defaults = v2->_defaults;
    v2->_defaults = v3;
  }

  return v2;
}

- (BOOL)requestShouldThrottle:(id)throttle
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [throttle URL];
  absoluteString = [v4 absoluteString];

  if (absoluteString)
  {
    defaults = [(ICQNetworkThrottleController *)self defaults];
    v7 = [defaults dictionaryForKey:@"ICQThrottleURLTable"];

    v8 = objc_msgSend_objectForKeyedSubscript_(v7);
    [v8 timeIntervalSinceNow];
    v10 = v9;
    v11 = _ICQGetLogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    v13 = v10 > 0.0;
    if (v10 <= 0.0)
    {
      if (v12)
      {
        v19 = 138412290;
        v20 = absoluteString;
        v15 = "Not throttling request for URL: %@";
        v16 = v11;
        v17 = 12;
        goto LABEL_10;
      }
    }

    else if (v12)
    {
      [v8 timeIntervalSinceNow];
      v19 = 138412546;
      v20 = absoluteString;
      v21 = 2048;
      v22 = v14;
      v15 = "Throttling request for URL: %@, throttle seconds remaining:%.0f";
      v16 = v11;
      v17 = 22;
LABEL_10:
      _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, v15, &v19, v17);
    }

    goto LABEL_12;
  }

  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ICQNetworkThrottleController requestShouldThrottle:v7];
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)request:(id)request didCompleteWithError:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  domain = [errorCopy domain];
  if (domain != @"com.apple.icloud.quota")
  {
    v9 = 0;
LABEL_3:

    goto LABEL_11;
  }

  code = [errorCopy code];

  if (code == 16)
  {
    userInfo = [errorCopy userInfo];
    v12 = objc_msgSend_objectForKeyedSubscript_(userInfo);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      userInfo2 = [errorCopy userInfo];
      v15 = objc_msgSend_objectForKeyedSubscript_(userInfo2);
      integerValue = [v15 integerValue];

      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:integerValue];
    }

    else
    {
      v9 = 0;
    }

    userInfo3 = [errorCopy userInfo];
    v18 = objc_msgSend_objectForKeyedSubscript_(userInfo3);
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      domain = [errorCopy userInfo];
      v20 = objc_msgSend_objectForKeyedSubscript_(domain);

      v9 = v20;
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  v21 = _ICQGetLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [requestCopy URL];
    absoluteString = [v22 absoluteString];
    v31 = 138412546;
    v32 = absoluteString;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "Updating throttle for %@, retry after: %@", &v31, 0x16u);
  }

  v24 = objc_opt_class();
  objc_sync_enter(v24);
  defaults = [(ICQNetworkThrottleController *)self defaults];
  v26 = [defaults dictionaryForKey:@"ICQThrottleURLTable"];
  v27 = [v26 mutableCopy];

  if (!v27)
  {
    v27 = [MEMORY[0x277CBEC10] mutableCopy];
  }

  v28 = [requestCopy URL];
  absoluteString2 = [v28 absoluteString];
  [v27 setObject:v9 forKeyedSubscript:absoluteString2];

  defaults2 = [(ICQNetworkThrottleController *)self defaults];
  [defaults2 setObject:v27 forKey:@"ICQThrottleURLTable"];

  objc_sync_exit(v24);
}

@end