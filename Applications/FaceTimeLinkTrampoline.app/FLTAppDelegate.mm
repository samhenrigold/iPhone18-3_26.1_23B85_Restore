@interface FLTAppDelegate
+ (BOOL)isFaceTimeApplicationInstalled;
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application willContinueUserActivityWithType:(id)type;
- (BOOL)transferUserActivity:(id)activity;
- (TUFeatureFlags)featureFlags;
@end

@implementation FLTAppDelegate

- (TUFeatureFlags)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(TUFeatureFlags);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

+ (BOOL)isFaceTimeApplicationInstalled
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = TUPreferredFaceTimeBundleIdentifier();
  v4 = [v2 applicationIsInstalled:v3];

  return v4;
}

- (BOOL)transferUserActivity:(id)activity
{
  activityCopy = activity;
  v4 = [LSApplicationRecord alloc];
  v11 = 0;
  v5 = [v4 initWithBundleIdentifier:TUBundleIdentifierInCallServiceApplication allowPlaceholder:0 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = objc_opt_new();
    v9 = +[LSApplicationWorkspace defaultWorkspace];
    [v9 openUserActivity:activityCopy usingApplicationRecord:v5 configuration:v8 completionHandler:&stru_100004180];
  }

  else
  {
    v8 = sub_100001738(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100001834();
    }
  }

  return v5 != 0;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100001738(optionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished launching: %@", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  v11 = sub_100001738(optionsCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = lCopy;
    v31 = 2112;
    v32 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "open url %@ with options %@", buf, 0x16u);
  }

  featureFlags = [(FLTAppDelegate *)self featureFlags];
  if ([featureFlags ftAppDeletionEnabled])
  {
    isFaceTimeApplicationInstalled = [objc_opt_class() isFaceTimeApplicationInstalled];

    if ((isFaceTimeApplicationInstalled & 1) == 0)
    {
      v15 = sub_100001738(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FaceTime application is not installed - just opening url", buf, 2u);
      }

      [applicationCopy openURL:lCopy options:&__NSDictionary0__struct completionHandler:0];
      goto LABEL_17;
    }
  }

  else
  {
  }

  scheme = [lCopy scheme];
  v17 = [scheme isEqualToString:@"facetime-open-link"];

  if (!v17)
  {
LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  v18 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  v19 = sub_100001738([v18 setScheme:@"incallservice-open-link"]);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v18 URL];
    *buf = 138412546;
    v30 = lCopy;
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "rewrote the original url: %@ to %@", buf, 0x16u);
  }

  v21 = +[LSApplicationWorkspace defaultWorkspace];
  v22 = [v18 URL];
  v28 = 0;
  [v21 openSensitiveURL:v22 withOptions:0 error:&v28];
  v23 = v28;

  if (v23)
  {
    v25 = sub_100001738(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100001904();
    }
  }

  v26 = 1;
LABEL_18:

  return v26;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  applicationCopy = application;
  activityCopy = activity;
  v9 = sub_100001738(activityCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = activityCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Continue user activity %@", &v29, 0xCu);
  }

  activityType = [(__CFString *)activityCopy activityType];
  if ([activityType isEqual:NSUserActivityTypeBrowsingWeb])
  {
    webpageURL = [(__CFString *)activityCopy webpageURL];

    if (webpageURL)
    {
      webpageURL2 = [(__CFString *)activityCopy webpageURL];
      featureFlags = [(FLTAppDelegate *)self featureFlags];
      if ([featureFlags ftAppDeletionEnabled])
      {
        isFaceTimeApplicationInstalled = [objc_opt_class() isFaceTimeApplicationInstalled];

        if ((isFaceTimeApplicationInstalled & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v21 = [TUConversationLink conversationLinkForURL:webpageURL2];
      if (v21)
      {
        v22 = v21;
        v23 = [(FLTAppDelegate *)self transferUserActivity:activityCopy];

        if (v23)
        {
          v20 = 1;
LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        v24 = sub_100001738(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10000196C();
        }
      }

LABEL_21:
      v25 = sub_100001738(v15);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = webpageURL2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received user activity with URL %@, but URL was not recognized, diiverting user back to browser", &v29, 0xCu);
      }

      [applicationCopy openURL:webpageURL2 options:&__NSDictionary0__struct completionHandler:0];
      v20 = 0;
      goto LABEL_24;
    }
  }

  else
  {
  }

  featureFlags2 = [(FLTAppDelegate *)self featureFlags];
  if ([featureFlags2 conversationHandoffEnabled])
  {
    activityType2 = [(__CFString *)activityCopy activityType];
    v18 = [activityType2 isEqualToString:TUUserActivityTypeConversationHandoff];

    if (v18)
    {
      v19 = [(FLTAppDelegate *)self transferUserActivity:activityCopy];
      v20 = v19;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v20 = 0;
LABEL_25:
  v26 = sub_100001738(v19);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = @"NO";
    if (v20)
    {
      v27 = @"YES";
    }

    v29 = 138412290;
    v30 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Link trampoline did continue user activity: %@", &v29, 0xCu);
  }

  return v20;
}

- (BOOL)application:(id)application willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  v5 = sub_100001738(typeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = typeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will continue activity %@", &v7, 0xCu);
  }

  return 0;
}

@end