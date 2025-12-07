@interface ServiceReviewViewController
- (id)_iconForApplication:(id)application;
- (id)_inAppConfigurationWithItemID:(id)d bundleID:(id)iD title:(id)title icon:(id)icon sandboxed:(BOOL)sandboxed storeExternalVersionID:(id)versionID;
- (void)_buildReviewInAppConfigurationWithParameters:(id)parameters completionHandler:(id)handler;
- (void)_loadDidFailWithError:(id)error;
- (void)finishImmediately:(id)immediately;
- (void)setupWithParameters:(id)parameters;
@end

@implementation ServiceReviewViewController

- (void)setupWithParameters:(id)parameters
{
  parametersCopy = parameters;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000086C8;
  v5[3] = &unk_100051498;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  [(ServiceReviewViewController *)self _buildReviewInAppConfigurationWithParameters:parametersCopy completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)finishImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  presentedViewController = [(ServiceReviewViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100008C08;
    v6[3] = &unk_100051148;
    v6[4] = self;
    -[ServiceReviewViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [immediatelyCopy BOOLValue], v6);
  }
}

- (void)_buildReviewInAppConfigurationWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  _hostApplicationBundleIdentifier = [(ServiceReviewViewController *)self _hostApplicationBundleIdentifier];
  if (_hostApplicationBundleIdentifier || (([parametersCopy objectForKeyedSubscript:@"bundleID"], v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) == 0) ? (+[NSNull null](NSNull, "null"), v11 = objc_claimAutoreleasedReturnValue()) : (v11 = v9), _hostApplicationBundleIdentifier = v11, v10, +[NSNull null](NSNull, "null"), v12 = objc_claimAutoreleasedReturnValue(), v12, _hostApplicationBundleIdentifier != v12))
  {
    v13 = [LSApplicationProxy applicationProxyForIdentifier:_hostApplicationBundleIdentifier];
    v48 = [(ServiceReviewViewController *)self _iconForApplication:v13];
    v49 = parametersCopy;
    v14 = [parametersCopy objectForKey:SKUIServiceReviewSandboxMode];
    bOOLValue = [v14 BOOLValue];

    v59 = 0;
    v16 = [[LSApplicationRecord alloc] initWithBundleIdentifier:_hostApplicationBundleIdentifier allowPlaceholder:0 error:&v59];
    v17 = v59;
    v47 = v16;
    if (v17)
    {
      v18 = +[SSLogConfig sharedConfig];
      shouldLog = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        LODWORD(v20) = shouldLog | 2;
      }

      else
      {
        LODWORD(v20) = shouldLog;
      }

      oSLogObject = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v20 = v20;
      }

      else
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v22 = objc_opt_class();
        v60 = 138543618;
        v61 = v22;
        v62 = 2114;
        v63 = v17;
        v23 = v22;
        v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%{public}@]: Failed to get LSApplicationRecord: %{public}@.", &v60, 22);

        v25 = v48;
        if (!v24)
        {
LABEL_20:

          handlerCopy[2](handlerCopy, 0);
          v30 = 0;
LABEL_39:

          parametersCopy = v49;
          goto LABEL_40;
        }

        oSLogObject = [NSString stringWithCString:v24 encoding:4];
        free(v24);
        SSFileLog();
      }

      else
      {
        v25 = v48;
      }

      goto LABEL_20;
    }

    iTunesMetadata = [v16 iTunesMetadata];
    versionIdentifier = [iTunesMetadata versionIdentifier];

    if (versionIdentifier)
    {
      iTunesMetadata2 = [v16 iTunesMetadata];
      installerVersionID = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [iTunesMetadata2 versionIdentifier]);
    }

    else
    {
      bundleURL = [v13 bundleURL];
      iTunesMetadata2 = [ASFReceipt receiptFromBundleAtURL:bundleURL];

      if (!iTunesMetadata2)
      {
        v30 = 0;
        goto LABEL_35;
      }

      installerVersionID = [iTunesMetadata2 installerVersionID];
    }

    v30 = installerVersionID;
LABEL_35:

    itemID = [v13 itemID];
    unsignedIntegerValue = [itemID unsignedIntegerValue];

    if (unsignedIntegerValue || (bOOLValue & 1) != 0)
    {
      itemID2 = [v13 itemID];
      localizedName = [v13 localizedName];
      v25 = v48;
      v44 = [(ServiceReviewViewController *)self _inAppConfigurationWithItemID:itemID2 bundleID:_hostApplicationBundleIdentifier title:localizedName icon:v48 sandboxed:bOOLValue storeExternalVersionID:v30];

      (handlerCopy)[2](handlerCopy, v44);
    }

    else
    {
      v46 = objc_opt_new();
      [v46 addObject:_hostApplicationBundleIdentifier];
      v40 = +[SKServiceBroker defaultBroker];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000092F8;
      v57[3] = &unk_1000514C0;
      v57[4] = self;
      v41 = handlerCopy;
      v58 = v41;
      v45 = [v40 storeKitServiceWithErrorHandler:v57];

      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10000948C;
      v50[3] = &unk_1000514E8;
      v50[4] = self;
      v55 = v41;
      v51 = _hostApplicationBundleIdentifier;
      v52 = v13;
      v25 = v48;
      v53 = v48;
      v56 = bOOLValue;
      v30 = v30;
      v54 = v30;
      [v45 lookUpItemIDsForDeletableSystemAppsWithBundleIDs:v46 reply:v50];
    }

    goto LABEL_39;
  }

  v31 = +[SSLogConfig sharedConfig];
  shouldLog2 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    LODWORD(v33) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v33) = shouldLog2;
  }

  oSLogObject2 = [v31 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v33 = v33;
  }

  else
  {
    v33 &= 2u;
  }

  if (!v33)
  {
    goto LABEL_30;
  }

  v60 = 138412290;
  v61 = objc_opt_class();
  v35 = v61;
  v36 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "[%@]: Bundle identifier is unexpectedly null; refusing to display review prompt", &v60, 12);

  if (v36)
  {
    oSLogObject2 = [NSString stringWithCString:v36 encoding:4];
    free(v36);
    SSFileLog();
LABEL_30:
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_40:
}

- (id)_inAppConfigurationWithItemID:(id)d bundleID:(id)iD title:(id)title icon:(id)icon sandboxed:(BOOL)sandboxed storeExternalVersionID:(id)versionID
{
  sandboxedCopy = sandboxed;
  versionIDCopy = versionID;
  iconCopy = icon;
  titleCopy = title;
  dCopy = d;
  v17 = objc_alloc_init(SKUIReviewInAppConfiguration);
  stringValue = [dCopy stringValue];

  [v17 setItemID:stringValue];
  [v17 setTitle:titleCopy];

  [v17 setViewController:self];
  [v17 setIcon:iconCopy];

  [v17 setSandboxed:sandboxedCopy];
  [v17 setStoreExternalVersionID:versionIDCopy];

  [v17 setIsNativeVisionApp:0];

  return v17;
}

- (id)_iconForApplication:(id)application
{
  applicationCopy = application;
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (v6 == 3.0)
  {
    v9 = 32;
  }

  else if (v6 == 2.0)
  {
    if (userInterfaceIdiom == 1)
    {
      v9 = 24;
    }

    else
    {
      v9 = 15;
    }
  }

  else
  {
    v9 = userInterfaceIdiom == 1;
  }

  v10 = [applicationCopy iconDataForVariant:v9];

  v11 = LICreateIconFromCachedBitmap();
  if (v11)
  {
    v12 = [UIImage imageWithCGImage:v11 scale:0 orientation:v6];
  }

  else
  {
    v12 = 0;
  }

  CGImageRelease(v11);

  return v12;
}

- (void)_loadDidFailWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v23 = NSLocalizedDescriptionKey;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_100052318 table:0];
    v24 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    errorCopy = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:v7];
  }

  v8 = +[SSLogConfig sharedConfig];
  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v19 = 138543618;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = errorCopy;
    v12 = v20;
    v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%{public}@]: Load failed with error: %{public}@.", &v19, 22);

    if (!v13)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
  }

LABEL_13:
  v14 = [SKUIErrorHelper errorWithSafeUserInfo:errorCopy];
  presentedViewController = [(ServiceReviewViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100009CF8;
    v17[3] = &unk_100051510;
    v17[4] = self;
    v18 = v14;
    [(ServiceReviewViewController *)self dismissViewControllerAnimated:1 completion:v17];
  }

  else
  {
    _clientViewControllerProxy = [(ServiceReviewViewController *)self _clientViewControllerProxy];
    [_clientViewControllerProxy didFinishWithResult:&off_100054FB8 error:v14];
  }
}

@end