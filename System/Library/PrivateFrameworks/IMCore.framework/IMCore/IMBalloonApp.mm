@interface IMBalloonApp
+ (IMBalloonApp)appWithPluginBundle:(id)bundle;
+ (IMBalloonApp)appWithPluginBundle:(id)bundle appBundle:(id)appBundle;
+ (IMBalloonApp)appWithPluginBundle:(id)bundle extension:(id)extension;
+ (IMBalloonApp)appWithPluginBundle:(id)bundle pluginKitProxy:(id)proxy extension:(id)extension;
+ (id)_unremovableDisabledApps;
+ (void)_setUnremovableDisabledApps:(id)apps;
- (BOOL)isEnabledUnremovableApp;
- (Class)browserClass;
- (Class)bubbleClass;
- (Class)customTypingIndicatorLayerClass;
- (Class)dataSourceClass;
- (Class)entryClass;
- (IMBalloonApp)initWithPluginBundle:(id)bundle appBundle:(id)appBundle;
- (LSVersionNumber)sdkVersionNumber;
- (unint64_t)presentationContextsForInfoPlistArray:(id)array;
- (void)_loadBundle;
- (void)setIsEnabledUnremovableApp:(BOOL)app;
- (void)setSdkVersionNumber:(LSVersionNumber *)number;
@end

@implementation IMBalloonApp

- (BOOL)isEnabledUnremovableApp
{
  _unremovableDisabledApps = [objc_opt_class() _unremovableDisabledApps];
  identifier = [(IMBalloonApp *)self identifier];
  v5 = [_unremovableDisabledApps containsObject:identifier];

  return v5 ^ 1;
}

+ (id)_unremovableDisabledApps
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = qword_1ED767670;
  if (!qword_1ED767670)
  {
    v3 = IMGetCachedDomainValueForKey();
    if (v3)
    {
      objc_storeStrong(&qword_1ED767670, v3);
    }

    else
    {
      v7[0] = *MEMORY[0x1E69A6A10];
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      v5 = qword_1ED767670;
      qword_1ED767670 = v4;
    }

    v2 = qword_1ED767670;
  }

  return v2;
}

+ (IMBalloonApp)appWithPluginBundle:(id)bundle pluginKitProxy:(id)proxy extension:(id)extension
{
  extensionCopy = extension;
  proxyCopy = proxy;
  bundleCopy = bundle;
  v10 = [[_IMBalloonExtensionApp alloc] initWithPluginBundle:bundleCopy pluginKitProxy:proxyCopy extension:extensionCopy];

  return v10;
}

+ (IMBalloonApp)appWithPluginBundle:(id)bundle extension:(id)extension
{
  extensionCopy = extension;
  bundleCopy = bundle;
  v7 = [[_IMBalloonExtensionApp alloc] initWithPluginBundle:bundleCopy extension:extensionCopy];

  return v7;
}

+ (IMBalloonApp)appWithPluginBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [[IMBalloonApp alloc] initWithPluginBundle:bundleCopy appBundle:0];

  return v4;
}

+ (IMBalloonApp)appWithPluginBundle:(id)bundle appBundle:(id)appBundle
{
  appBundleCopy = appBundle;
  bundleCopy = bundle;
  v7 = [[_IMBalloonBundleApp alloc] initWithPluginBundle:bundleCopy appBundle:appBundleCopy];

  return v7;
}

- (IMBalloonApp)initWithPluginBundle:(id)bundle appBundle:(id)appBundle
{
  bundleCopy = bundle;
  appBundleCopy = appBundle;
  v18.receiver = self;
  v18.super_class = IMBalloonApp;
  v9 = [(IMBalloonApp *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pluginBundle, bundle);
    objc_storeStrong(&v10->_appBundle, appBundle);
    *&v10->_showInSendMenu = 257;
    v10->_presentationContexts = 1;
    localizedInfoDictionary = [bundleCopy localizedInfoDictionary];
    v12 = [localizedInfoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
    if (v12 || ([localizedInfoDictionary objectForKeyedSubscript:@"CKBrowserDisplayName"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
    }

    else
    {
      infoDictionary = [bundleCopy infoDictionary];
      v13 = [infoDictionary objectForKeyedSubscript:@"CKBrowserDisplayName"];
    }

    if ([v13 length])
    {
      [(IMBalloonApp *)v10 setBrowserDisplayName:v13];
    }

    bundleIdentifier = [bundleCopy bundleIdentifier];
    v15 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69A6A00]];

    if (v15)
    {
      [(IMBalloonApp *)v10 setShouldHideAppSwitcher:1];
    }

    __dmb(0xBu);
  }

  return v10;
}

- (void)_loadBundle
{
  pluginLoadToken = self->_pluginLoadToken;
  p_pluginLoadToken = &self->_pluginLoadToken;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8355CD0;
  block[3] = &unk_1E780FCB0;
  block[4] = self;
  if (pluginLoadToken != -1)
  {
    dispatch_once(p_pluginLoadToken, block);
  }
}

- (Class)bubbleClass
{
  [(IMBalloonApp *)self _loadBundle];
  bubbleClass = self->_bubbleClass;

  return bubbleClass;
}

- (Class)browserClass
{
  [(IMBalloonApp *)self _loadBundle];
  browserClass = self->_browserClass;

  return browserClass;
}

- (Class)dataSourceClass
{
  [(IMBalloonApp *)self _loadBundle];
  dataSourceClass = self->_dataSourceClass;

  return dataSourceClass;
}

- (Class)customTypingIndicatorLayerClass
{
  [(IMBalloonApp *)self _loadBundle];
  customTypingIndicatorLayerClass = self->_customTypingIndicatorLayerClass;

  return customTypingIndicatorLayerClass;
}

- (Class)entryClass
{
  [(IMBalloonApp *)self _loadBundle];
  entryClass = self->_entryClass;

  return entryClass;
}

- (void)setIsEnabledUnremovableApp:(BOOL)app
{
  appCopy = app;
  identifier = [(IMBalloonApp *)self identifier];
  if (identifier)
  {
    v8 = identifier;
    _unremovableDisabledApps = [objc_opt_class() _unremovableDisabledApps];
    v6 = [_unremovableDisabledApps containsObject:v8];
    if (appCopy)
    {
      if (v6)
      {
        v7 = [_unremovableDisabledApps mutableCopy];
        [v7 removeObject:v8];
LABEL_7:
        [objc_opt_class() _setUnremovableDisabledApps:v7];
      }
    }

    else if ((v6 & 1) == 0)
    {
      v7 = [_unremovableDisabledApps mutableCopy];
      [v7 addObject:v8];
      goto LABEL_7;
    }

    identifier = v8;
  }
}

+ (void)_setUnremovableDisabledApps:(id)apps
{
  objc_storeStrong(&qword_1ED767670, apps);
  appsCopy = apps;
  IMSetDomainValueForKey();
}

- (unint64_t)presentationContextsForInfoPlistArray:(id)array
{
  arrayCopy = array;
  if ([(IMBalloonApp *)self isStickerPackOnly])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

    if (isStickersAppEnabled)
    {
      v7 = 2;
    }

    else
    {
      v7 = -1;
    }
  }

  else if ((arrayCopy || [(IMBalloonApp *)self isPreDawnAndAppStoreStickerGenre]) && ![(IMBalloonApp *)self shouldForceIntoSendMenu])
  {
    if ([arrayCopy containsObject:@"MSMessagesAppPresentationContextMessages"])
    {
      v7 = [(IMBalloonApp *)self isPreDawnAndAppStoreStickerGenre]^ 1;
    }

    else
    {
      v7 = 0;
    }

    if (([arrayCopy containsObject:@"MSMessagesAppPresentationContextMedia"] & 1) != 0 || -[IMBalloonApp isPreDawnAndAppStoreStickerGenre](self, "isPreDawnAndAppStoreStickerGenre"))
    {
      v7 |= 2uLL;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (LSVersionNumber)sdkVersionNumber
{
  v3 = *self[6]._opaque;
  *retstr->_opaque = *&self[5]._opaque[16];
  *&retstr->_opaque[16] = v3;
  return self;
}

- (void)setSdkVersionNumber:(LSVersionNumber *)number
{
  v3 = *&number->_opaque[16];
  *self->_sdkVersionNumber._opaque = *number->_opaque;
  *&self->_sdkVersionNumber._opaque[16] = v3;
}

@end