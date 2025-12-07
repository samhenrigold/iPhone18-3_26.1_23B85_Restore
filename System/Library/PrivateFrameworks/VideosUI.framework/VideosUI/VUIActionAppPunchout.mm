@interface VUIActionAppPunchout
- (VUIActionAppPunchout)initWithContextData:(id)data appContext:(id)context;
- (VUIAppContext)appContext;
- (id)_addMusicAppMetricsToUrl:(id)url;
- (void)_openPunchoutURL:(id)l;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionAppPunchout

- (VUIActionAppPunchout)initWithContextData:(id)data appContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = VUIActionAppPunchout;
  v8 = [(VUIActionAppPunchout *)&v15 init];
  if (v8 && ([dataCopy vui_URLForKey:@"openUrl"], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [dataCopy vui_URLForKey:@"openUrl"];
    punchoutURL = v8->_punchoutURL;
    v8->_punchoutURL = v10;

    v12 = [dataCopy vui_dictionaryForKey:@"metrics"];
    metrics = v8->_metrics;
    v8->_metrics = v12;

    v8->_isSensitiveURL = [dataCopy vui_BOOLForKey:@"isSensitiveUrl" defaultValue:0];
    objc_storeWeak(&v8->_appContext, contextCopy);
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  punchoutURL = [(VUIActionAppPunchout *)self punchoutURL];
  v7 = punchoutURL;
  if (punchoutURL)
  {
    absoluteString = [punchoutURL absoluteString];
    v9 = [absoluteString containsString:@"music.apple.com"];

    if (v9)
    {
      v11 = [(VUIActionAppPunchout *)self _addMusicAppMetricsToUrl:v7];
    }

    else
    {
      v11 = v7;
    }

    v12 = VUIDefaultLogObject(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_INFO, "VUIActionAppPunchout:: punching out to %@", &v13, 0xCu);
    }

    [(VUIActionAppPunchout *)self _openPunchoutURL:v11];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7 != 0);
  }
}

- (id)_addMusicAppMetricsToUrl:(id)url
{
  urlCopy = url;
  v5 = objc_opt_new();
  v6 = +[VUIMetricsController sharedInstance];
  lastRecordedPageEventData = [v6 lastRecordedPageEventData];

  if (lastRecordedPageEventData)
  {
    pageId = [lastRecordedPageEventData pageId];
    pageType = [lastRecordedPageEventData pageType];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", pageId, pageType];
    [v5 vui_setObjectIfNotNil:v10 forKey:@"tvAppPage"];
  }

  metrics = [(VUIActionAppPunchout *)self metrics];
  if (metrics)
  {
    [v5 addEntriesFromDictionary:metrics];
  }

  if ([v5 count])
  {
    v12 = [urlCopy vui_URLByAddingQueryParamsDictionary:v5];

    urlCopy = v12;
  }

  return urlCopy;
}

- (void)_openPunchoutURL:(id)l
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  scheme = [v6 scheme];
  lowercaseString = [scheme lowercaseString];
  v9 = [lowercaseString isEqualToString:@"https"];
  if ((v9 & 1) == 0)
  {
    scheme2 = [v6 scheme];
    lowercaseString2 = [scheme2 lowercaseString];
    if (![lowercaseString2 isEqualToString:@"http"])
    {
      isTVApp = 0;
LABEL_10:

      goto LABEL_11;
    }

    v28 = scheme2;
  }

  v11 = lCopy;
  v12 = v6;
  host = [v6 host];
  lowercaseString3 = [host lowercaseString];
  if ([lowercaseString3 isEqualToString:@"tv.apple.com"])
  {
    isTVApp = [MEMORY[0x1E69DF6D0] isTVApp];
  }

  else
  {
    isTVApp = 0;
  }

  v6 = v12;
  lCopy = v11;
  scheme2 = v28;
  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:

  isSensitiveURL = [(VUIActionAppPunchout *)self isSensitiveURL];
  if (isSensitiveURL)
  {
    v17 = @"<sensitive url>";
  }

  else
  {
    isSensitiveURL = [lCopy description];
    v17 = isSensitiveURL;
  }

  v18 = VUIDefaultLogObject(isSensitiveURL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v35 = v17;
    v36 = 1024;
    v37 = isTVApp;
    v38 = 1024;
    isSensitiveURL2 = [(VUIActionAppPunchout *)self isSensitiveURL];
    _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIActionAppPunchout:: open url: %@, punchoutToTVApp: %d, isSensitiveURL: %d", buf, 0x18u);
  }

  if (isTVApp)
  {
    v19 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v19 openURLHandler];
    appContext = [(VUIActionAppPunchout *)self appContext];
    v22 = +[VUITVAppLauncher sharedInstance];
    deeplinkCompletionHandler = [v22 deeplinkCompletionHandler];
    [openURLHandler processDeeplink:lCopy appContext:appContext completion:deeplinkCompletionHandler];

    v24 = +[VUIMetricsController sharedInstance];
    absoluteString = [lCopy absoluteString];
    [v24 setExitEventDestinationUrl:absoluteString];
  }

  else
  {
    v24 = objc_alloc_init(MEMORY[0x1E69636B8]);
    v32 = *MEMORY[0x1E699F970];
    v33 = MEMORY[0x1E695E118];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v24 setFrontBoardOptions:v26];

    [v24 setSensitive:self->_isSensitiveURL];
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __41__VUIActionAppPunchout__openPunchoutURL___block_invoke;
    v29[3] = &unk_1E8733CC8;
    v30 = v17;
    v31 = lCopy;
    [defaultWorkspace openURL:v31 configuration:v24 completionHandler:v29];

    absoluteString = v30;
  }
}

void __41__VUIActionAppPunchout__openPunchoutURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIActionAppPunchout:: open url: %@, result: %@, error: %@", &v11, 0x20u);
  }

  if (!v6)
  {
    v9 = +[VUIMetricsController sharedInstance];
    v10 = [*(a1 + 40) absoluteString];
    [v9 setExitEventDestinationUrl:v10];
  }
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end