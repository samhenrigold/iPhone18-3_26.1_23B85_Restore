@interface _IMBalloonBundleApp
- (Class)browserClass;
- (Class)bubbleClass;
- (Class)dataSourceClass;
- (_IMBalloonBundleApp)initWithPluginBundle:(id)bundle appBundle:(id)appBundle;
- (void)_loadAppBundle;
- (void)_loadBundle;
@end

@implementation _IMBalloonBundleApp

- (_IMBalloonBundleApp)initWithPluginBundle:(id)bundle appBundle:(id)appBundle
{
  bundleCopy = bundle;
  appBundleCopy = appBundle;
  v47.receiver = self;
  v47.super_class = _IMBalloonBundleApp;
  v8 = [(IMBalloonApp *)&v47 initWithPluginBundle:bundleCopy appBundle:appBundleCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_32;
  }

  appBundle = [(IMBalloonApp *)v8 appBundle];
  bundleIdentifier = [appBundle bundleIdentifier];

  bundleIdentifier2 = [bundleCopy bundleIdentifier];
  v13 = [bundleIdentifier2 stringByAppendingFormat:@":%@:%@", @"0000000000", bundleIdentifier];

  v46 = v13;
  [(IMBalloonApp *)v9 setIdentifier:v13];
  [(IMBalloonApp *)v9 setCanSendDataPayloads:1];
  [(IMBalloonApp *)v9 setShowInBrowser:1];
  [(IMBalloonApp *)v9 setShowInSendMenu:1];
  infoDictionary = [appBundleCopy infoDictionary];
  localizedInfoDictionary = [appBundleCopy localizedInfoDictionary];
  v16 = [localizedInfoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
  if (v16 || ([localizedInfoDictionary objectForKeyedSubscript:@"CKBrowserDisplayName"], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
  }

  else
  {
    v42 = [infoDictionary objectForKeyedSubscript:@"CKBrowserDisplayName"];
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = [infoDictionary objectForKeyedSubscript:@"CFBundleName"];
    }

    v17 = v44;
  }

  [(IMBalloonApp *)v9 setBrowserDisplayName:v17];
  v45 = localizedInfoDictionary;
  v18 = [localizedInfoDictionary objectForKeyedSubscript:@"CKBrowserShortDisplayName"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v21 = [infoDictionary objectForKeyedSubscript:@"CKBrowserShortDisplayName"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v17;
    }

    v20 = v23;
  }

  [(IMBalloonApp *)v9 setBrowserShortDisplayName:v20];
  v24 = [infoDictionary objectForKey:@"MSHideInAppDrawer"];
  bOOLValue = [v24 BOOLValue];

  if (bOOLValue)
  {
    [(IMBalloonApp *)v9 setShowInBrowser:0];
    [(IMBalloonApp *)v9 setShowInSendMenu:0];
  }

  v26 = [infoDictionary objectForKey:@"MSCanSendDataPayloads"];
  bOOLValue2 = [v26 BOOLValue];

  if (bOOLValue2)
  {
    [(IMBalloonApp *)v9 setCanSendDataPayloads:1];
  }

  v28 = [infoDictionary objectForKey:@"MSShouldBalloonHideAppIcon"];
  bOOLValue3 = [v28 BOOLValue];

  if (bOOLValue3)
  {
    [(IMBalloonApp *)v9 setShouldBalloonHideAppIcon:1];
  }

  v30 = [infoDictionary objectForKey:@"MSShouldBreadcrumbHideAppIcon"];
  bOOLValue4 = [v30 BOOLValue];

  if (bOOLValue4)
  {
    [(IMBalloonApp *)v9 setShouldBreadcrumbHideAppIcon:1];
  }

  v32 = [infoDictionary objectForKey:@"MSShouldHideAppSwitcher"];
  bOOLValue5 = [v32 BOOLValue];

  if (bOOLValue5)
  {
    [(IMBalloonApp *)v9 setShouldHideAppSwitcher:1];
  }

  v34 = [infoDictionary objectForKey:@"MSPrefersNoLoadingBubbles"];
  bOOLValue6 = [v34 BOOLValue];

  if (bOOLValue6)
  {
    [(IMBalloonApp *)v9 setPrefersNoLoadingBubbles:1];
  }

  v36 = [infoDictionary objectForKey:@"MSSupportedPresentationContexts"];
  [(IMBalloonApp *)v9 setPresentationContexts:[(IMBalloonApp *)v9 presentationContextsForInfoPlistArray:v36]];
  v37 = [infoDictionary objectForKey:@"NSStickerSharingLevel"];
  if ([v37 length])
  {
    if (![@"Messages" caseInsensitiveCompare:v37])
    {
      v38 = 1;
      goto LABEL_28;
    }

    if (![@"OS" caseInsensitiveCompare:v37])
    {
      v38 = 0;
LABEL_28:
      [(IMBalloonApp *)v9 setStickerSharingLevel:v38];
    }
  }

  v39 = [infoDictionary objectForKey:@"MSHideAttributionInformation"];
  bOOLValue7 = [v39 BOOLValue];

  if (bOOLValue7)
  {
    [(IMBalloonApp *)v9 setShouldHideAttributionInformation:1];
  }

LABEL_32:
  return v9;
}

- (void)_loadAppBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83555F0;
  block[3] = &unk_1E780FCB0;
  block[4] = self;
  if (self->_pluginLoadToken != -1)
  {
    dispatch_once(&self->_pluginLoadToken, block);
  }
}

- (void)_loadBundle
{
  v2.receiver = self;
  v2.super_class = _IMBalloonBundleApp;
  [(IMBalloonApp *)&v2 _loadBundle];
}

- (Class)bubbleClass
{
  [(_IMBalloonBundleApp *)self _loadBundle];
  bubbleClass = self->_bubbleClass;

  return bubbleClass;
}

- (Class)browserClass
{
  [(_IMBalloonBundleApp *)self _loadBundle];
  browserClass = self->_browserClass;

  return browserClass;
}

- (Class)dataSourceClass
{
  [(_IMBalloonBundleApp *)self _loadBundle];
  dataSourceClass = self->_dataSourceClass;

  return dataSourceClass;
}

@end