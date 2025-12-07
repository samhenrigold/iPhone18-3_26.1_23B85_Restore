@interface ISSetupAssistant
- (ISSetupAssistant)init;
- (id)accountSetupRequestParameters;
- (void)_setCookiesWithString:(id)string userIdentifier:(id)identifier;
- (void)_setupHomeSharingWithParameters:(id)parameters;
- (void)_setupITunesMatchWithParameters:(id)parameters;
- (void)completeSetupWithResponseParameters:(id)parameters handler:(id)handler;
- (void)dealloc;
@end

@implementation ISSetupAssistant

- (ISSetupAssistant)init
{
  v4.receiver = self;
  v4.super_class = ISSetupAssistant;
  v2 = [(ISSetupAssistant *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.ISSetupAssistent", &_dispatch_queue_attr_concurrent);
  }

  return v2;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = ISSetupAssistant;
  [(ISSetupAssistant *)&v4 dealloc];
}

- (id)accountSetupRequestParameters
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"iTunes" forKey:@"drm-client"];
  v3 = +[ISDevice sharedInstance];
  hardwareName = [(ISDevice *)v3 hardwareName];
  if (hardwareName)
  {
    [v2 setObject:objc_msgSend(hardwareName forKey:{"lowercaseString"), @"drm-type"}];
  }

  guid = [(ISDevice *)v3 guid];
  if (guid)
  {
    [v2 setObject:guid forKey:@"guid"];
  }

  deviceName = [(ISDevice *)v3 deviceName];
  if (deviceName)
  {
    [v2 setObject:deviceName forKey:@"device-name"];
  }

  v7 = +[SSDevice currentDevice];
  productVersion = [v7 productVersion];
  if (productVersion)
  {
    [v2 setObject:productVersion forKey:@"drm-version"];
  }

  userAgent = [v7 userAgent];
  if (userAgent)
  {
    [v2 setObject:userAgent forKey:@"user-agent"];
  }

  return v2;
}

- (void)completeSetupWithResponseParameters:(id)parameters handler:(id)handler
{
  v7 = +[SSLogConfig sharedConfig];
  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v56 = 138412290;
    v57 = objc_opt_class();
    v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_0, oSLogObject, 2, "%@: Complete setup.", &v56, 12);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v48 = v14;
      SSFileLog();
    }
  }

  [parameters objectForKey:{@"dsid", v48}];
  UniqueIdentifierFromValue = SSAccountGetUniqueIdentifierFromValue();
  if (UniqueIdentifierFromValue)
  {
    v16 = [parameters objectForKey:@"cookies"];
    handlerCopy = handler;
    if (!v16)
    {
      -[ISSetupAssistant _setCookiesWithString:userIdentifier:](self, "_setCookiesWithString:userIdentifier:", [parameters objectForKey:@"pod"], UniqueIdentifierFromValue);
      v16 = [parameters objectForKey:@"weak-token"];
    }

    [(ISSetupAssistant *)self _setCookiesWithString:v16 userIdentifier:UniqueIdentifierFromValue];
    v17 = [parameters objectForKey:@"storefront"];
    v18 = +[SSLogConfig sharedConfig];
    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog2 | 2;
    }

    else
    {
      v20 = shouldLog2;
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      v56 = 138412546;
      v57 = v23;
      v58 = 2112;
      v59 = v17;
      LODWORD(v50) = 22;
      v24 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_0, oSLogObject2, 16, "%@: Setup set storefront ID: %@", &v56, v50);
      if (v24)
      {
        v25 = v24;
        v26 = [NSString stringWithCString:v24 encoding:4];
        free(v25);
        v49 = v26;
        SSFileLog();
      }
    }

    v27 = [parameters objectForKey:{@"strong-token", v49}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = +[SSAccountStore defaultStore];
    activeAccount = [v29 activeAccount];
    v31 = [v29 accountWithUniqueIdentifier:UniqueIdentifierFromValue];
    v32 = (activeAccount | v31) == 0;
    if (v31)
    {
      if (v28)
      {
        v33 = v31;
        [v31 setSecureToken:v28];
        if (activeAccount)
        {
          [v29 addAccount:v33];
        }

        else
        {
          [v29 setActiveAccount:v33];
        }
      }

      goto LABEL_45;
    }

    v38 = objc_alloc_init(SSAccount);
    [v38 setAccountName:{objc_msgSend(parameters, "objectForKey:", @"email"}];
    [v38 setSecureToken:v28];
    [v38 setStoreFrontIdentifier:v17];
    [v38 setUniqueIdentifier:UniqueIdentifierFromValue];
    v39 = [parameters objectForKey:@"newCustomer"];
    if (objc_opt_respondsToSelector())
    {
      [v38 setNewCustomer:{objc_msgSend(v39, "BOOLValue")}];
    }

    if (activeAccount && ![activeAccount accountSource])
    {
      [v29 addAccount:v38];

LABEL_45:
      v40 = +[SSLogConfig sharedConfig];
      shouldLog3 = [v40 shouldLog];
      if ([v40 shouldLogToDisk])
      {
        v42 = shouldLog3 | 2;
      }

      else
      {
        v42 = shouldLog3;
      }

      oSLogObject3 = [v40 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v44 = v42;
      }

      else
      {
        v44 = v42 & 2;
      }

      if (v44)
      {
        v45 = objc_opt_class();
        v56 = 138412290;
        v57 = v45;
        LODWORD(v50) = 12;
        v46 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_0, oSLogObject3, 16, "%@: Skipping setup for home sharing and match", &v56, v50);
        if (v46)
        {
          v47 = v46;
          [NSString stringWithCString:v46 encoding:4];
          free(v47);
          SSFileLog();
        }
      }

      handlerCopy[2](handlerCopy, 1, 0);
      return;
    }

    [v29 setActiveAccount:v38];
    +[SSAccountStore resetExpiration];
    if (v17)
    {
      [+[SSDevice currentDevice](SSDevice "currentDevice")];
    }

    if (PSIsRunningInAssistant())
    {
      [+[SSDevice currentDevice](SSDevice "currentDevice")];
    }

    if (!v32)
    {
      goto LABEL_45;
    }

    v34 = 0;
    handler = handlerCopy;
  }

  else
  {
    v34 = [NSError errorWithDomain:@"ISSetupErrorDomain" code:1 userInfo:0];
  }

  [(ISSetupAssistant *)self setHandler:handler];
  v35 = dispatch_group_create();
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1670;
  block[3] = &unk_41B8;
  block[4] = self;
  block[5] = parameters;
  dispatch_group_async(v35, dispatchQueue, block);
  if (PSIsRunningInAssistant())
  {
    v37 = self->_dispatchQueue;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_167C;
    v54[3] = &unk_41B8;
    v54[4] = self;
    v54[5] = parameters;
    dispatch_group_async(v35, v37, v54);
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1688;
  v52[3] = &unk_41E0;
  v53 = UniqueIdentifierFromValue != 0;
  v52[4] = self;
  v52[5] = v34;
  dispatch_group_notify(v35, &_dispatch_main_q, v52);
  dispatch_release(v35);
}

- (void)_setCookiesWithString:(id)string userIdentifier:(id)identifier
{
  if (string)
  {
    v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{string, @"Set-Cookie", 0}];
    [+[SSVCookieStorage sharedStorage](SSVCookieStorage "sharedStorage")];
  }
}

- (void)_setupHomeSharingWithParameters:(id)parameters
{
  v5 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1858;
  block[3] = &unk_4230;
  block[4] = parameters;
  block[5] = v5;
  block[6] = self;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
}

- (void)_setupITunesMatchWithParameters:(id)parameters
{
  v4 = [parameters objectForKey:@"slot-acquired"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 BOOLValue] && objc_msgSend(+[ML3MusicLibrary sharedLibrary](ML3MusicLibrary, "sharedLibrary"), "isLibraryEmpty"))
  {
    v5 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    v6 = +[SSLogConfig sharedConfig];
    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v43 = 138412546;
      *&v43[4] = objc_opt_class();
      *&v43[12] = 2112;
      *&v43[14] = v5;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_0, oSLogObject, 16, "%@: Loading URL bag for DSID: %@", v43, 22);
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4];
        free(v11);
        v36 = v12;
        SSFileLog();
      }
    }

    v13 = [SSURLBagContext contextWithBagType:0, v36];
    v14 = v13;
    if (v5)
    {
      [(SSURLBagContext *)v13 setUserIdentifier:v5];
    }

    v15 = [[SSURLBag alloc] initWithURLBagContext:v14];
    [v15 invalidate];
    *v43 = 0;
    *&v43[8] = v43;
    *&v43[16] = 0x2020000000;
    v44 = 0;
    v16 = dispatch_semaphore_create(0);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_2000;
    v40[3] = &unk_4258;
    v40[5] = v16;
    v40[6] = v43;
    v40[4] = self;
    [v15 loadWithCompletionBlock:v40];
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

    if (*(*&v43[8] + 24) == 1)
    {
      v17 = objc_alloc_init(HSCloudClient);
      v18 = dispatch_semaphore_create(0);
      v19 = +[SSLogConfig sharedConfig];
      LODWORD(v20) = [v19 shouldLog];
      shouldLogToDisk = [v19 shouldLogToDisk];
      oSLogObject2 = [v19 OSLogObject];
      v23 = oSLogObject2;
      if (shouldLogToDisk)
      {
        LODWORD(v20) = v20 | 2;
      }

      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v20 = v20;
      }

      else
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v24 = objc_opt_class();
        v41 = 138412290;
        v42 = v24;
        LODWORD(v38) = 12;
        v25 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_0, v23, 16, "%@: Authenticating for iCloud Music Library", &v41, v38);
        if (v25)
        {
          v26 = v25;
          v27 = [NSString stringWithCString:v25 encoding:4];
          free(v26);
          v37 = v27;
          SSFileLog();
        }
      }

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_21BC;
      v39[3] = &unk_4280;
      v39[4] = v18;
      [v17 authenticateWithCompletionHandler:{v39, v37}];
      dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v28 = +[SSLogConfig sharedConfig];
      LODWORD(v29) = [v28 shouldLog];
      shouldLogToDisk2 = [v28 shouldLogToDisk];
      oSLogObject3 = [v28 OSLogObject];
      v32 = oSLogObject3;
      if (shouldLogToDisk2)
      {
        LODWORD(v29) = v29 | 2;
      }

      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v29 = v29;
      }

      else
      {
        v29 &= 2u;
      }

      if (v29)
      {
        v33 = objc_opt_class();
        v41 = 138412290;
        v42 = v33;
        LODWORD(v38) = 12;
        v34 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_0, v32, 16, "%@: iCloud Music Library not available.", &v41, v38);
        if (v34)
        {
          v35 = v34;
          [NSString stringWithCString:v34 encoding:4];
          free(v35);
          SSFileLog();
        }
      }
    }

    _Block_object_dispose(v43, 8);
  }
}

@end