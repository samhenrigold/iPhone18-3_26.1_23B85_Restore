@interface SAAceDomainSignal
- (id)_ad_likelyApplicationBundleIdentifiers;
- (id)_ad_preheatableDomain;
- (void)_ad_handleAceDomainSignalRequest:(id)request completionHandler:(id)handler;
- (void)_ad_recordPreheatLaunchOf:(id)of;
@end

@implementation SAAceDomainSignal

- (id)_ad_preheatableDomain
{
  if (qword_100590968 != -1)
  {
    dispatch_once(&qword_100590968, &stru_10051B6A8);
  }

  domain = [(SAAceDomainSignal *)self domain];
  if (domain)
  {
    v4 = [qword_100590960 objectForKeyedSubscript:domain];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_ad_handleAceDomainSignalRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  selfCopy = self;
  _ad_likelyApplicationBundleIdentifiers = [(SAAceDomainSignal *)self _ad_likelyApplicationBundleIdentifiers];
  if ([_ad_likelyApplicationBundleIdentifiers count])
  {
    v6 = dispatch_group_create();
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = _ad_likelyApplicationBundleIdentifiers;
    v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v7)
    {
      v8 = *v32;
      v9 = BKSOpenApplicationOptionKeyActivateSuspended;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          serviceWithDefaultShellEndpoint = [off_10058E4F8() serviceWithDefaultShellEndpoint];
          if (serviceWithDefaultShellEndpoint)
          {
            dispatch_group_enter(v6);
            v13 = [(SAAceDomainSignal *)selfCopy _ad_recordPreheatLaunchOf:v11];
            v14 = off_10058E500(v13);
            v37 = v9;
            v38 = &__kCFBooleanTrue;
            v15 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            v16 = [v14 optionsWithDictionary:v15];
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_1003025D8;
            v28[3] = &unk_10051B660;
            v30 = v35;
            v29 = v6;
            [serviceWithDefaultShellEndpoint openApplication:v11 withOptions:v16 completion:v28];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v7);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100302694;
    block[3] = &unk_10051B688;
    v27 = v35;
    v26 = handlerCopy;
    v25 = requestCopy;
    dispatch_group_notify(v6, &_dispatch_main_q, block);

    _Block_object_dispose(v35, 8);
  }

  else
  {
    v17 = objc_alloc_init(SACommandSucceeded);
    v18 = [requestCopy createResponseWithReplyCommand:v17];
    (*(handlerCopy + 2))(handlerCopy, v18, 0);
  }
}

- (void)_ad_recordPreheatLaunchOf:(id)of
{
  if (of)
  {
    ofCopy = of;
    v6 = [[NSMutableDictionary alloc] initWithCapacity:2];
    [v6 setObject:ofCopy forKeyedSubscript:AFAnalyticsContextKey[0]];
    v4 = sub_100214CD0(ofCopy);

    [v6 setObject:v4 forKeyedSubscript:AFAnalyticsContextKey[1]];
    v5 = +[AFAnalytics sharedAnalytics];
    [v5 logEventWithType:801 context:v6];
  }
}

- (id)_ad_likelyApplicationBundleIdentifiers
{
  if (AFIsNano())
  {
    if (qword_100590958 != -1)
    {
      dispatch_once(&qword_100590958, &stru_10051B638);
    }

    v3 = qword_100590950;
    domain = [(SAAceDomainSignal *)self domain];
    v5 = objc_msgSend_objectForKey_(v3);

    if (v5)
    {
      v10 = v5;
      appIdHints = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      appIdHints = 0;
    }
  }

  else
  {
    domain2 = [(SAAceDomainSignal *)self domain];
    v8 = [domain2 isEqualToString:SAAceDomainSignalDomainSYNAPSEValue];

    if (v8)
    {
      appIdHints = [(SAAceDomainSignal *)self appIdHints];
    }

    else
    {
      appIdHints = 0;
    }
  }

  return appIdHints;
}

@end