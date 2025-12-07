@interface _IMBalloonExtensionApp
- (BOOL)isBetaPlugin;
- (BOOL)isEnabled;
- (BOOL)isLaunchProhibited;
- (BOOL)isPreDawnAndAppStoreStickerGenre;
- (BOOL)isStickerPackOnly;
- (BOOL)linkedBeforeSDKVersion:(id)version;
- (BOOL)shouldDelayViewControllerPresentation;
- (BOOL)shouldForceIntoSendMenu;
- (BOOL)showInBrowser;
- (BOOL)showInSendMenu;
- (BOOL)showableInBrowser;
- (_IMBalloonExtensionApp)initWithPluginBundle:(id)bundle extension:(id)extension;
- (_IMBalloonExtensionApp)initWithPluginBundle:(id)bundle extension:(id)extension pluginKitProxyClass:(Class)class proxy:(id)proxy;
- (double)presentationDelay;
- (id)_bundleIDToPresentationDelayMapping;
- (id)_bundleIDsForDawnSendMenuTemporaryDisplayOverride;
- (id)_bundleIDsForDelayedPresentationOptIn;
- (id)appStoreGenre;
- (id)appStoreGenreID;
- (id)appStoreSubgenres;
- (id)applicationType;
- (id)itemID;
- (id)plugin;
- (id)version;
- (void)setIsEnabled:(BOOL)enabled;
@end

@implementation _IMBalloonExtensionApp

- (BOOL)isStickerPackOnly
{
  proxy = [(_IMBalloonExtensionApp *)self proxy];
  v3 = proxy;
  v6 = 0;
  if (proxy)
  {
    v4 = [proxy objectForInfoDictionaryKey:@"LSApplicationIsStickerProvider" ofClass:0];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)isPreDawnAndAppStoreStickerGenre
{
  linkedBeforeDawn = [(_IMBalloonExtensionApp *)self linkedBeforeDawn];
  appStoreGenreID = [(_IMBalloonExtensionApp *)self appStoreGenreID];
  v5 = [appStoreGenreID isEqualToNumber:&unk_1F1BA1818];

  appStoreGenre = [(_IMBalloonExtensionApp *)self appStoreGenre];
  v7 = [appStoreGenre isEqualToString:@"Stickers"];

  appStoreSubgenres = [(_IMBalloonExtensionApp *)self appStoreSubgenres];
  v9 = [appStoreSubgenres containsObject:@"Stickers"];

  if (v5 & 1 | !linkedBeforeDawn)
  {
    v10 = linkedBeforeDawn;
  }

  else
  {
    v10 = v7 | v9;
  }

  return v10 & 1;
}

- (id)appStoreGenreID
{
  proxy = [(_IMBalloonExtensionApp *)self proxy];
  containingBundle = [proxy containingBundle];

  genreID = [containingBundle genreID];

  return genreID;
}

- (id)appStoreGenre
{
  proxy = [(_IMBalloonExtensionApp *)self proxy];
  containingBundle = [proxy containingBundle];

  genre = [containingBundle genre];

  return genre;
}

- (id)appStoreSubgenres
{
  proxy = [(_IMBalloonExtensionApp *)self proxy];
  containingBundle = [proxy containingBundle];

  subgenres = [containingBundle subgenres];

  return subgenres;
}

- (BOOL)shouldForceIntoSendMenu
{
  extension = [(_IMBalloonExtensionApp *)self extension];
  infoDictionary = [extension infoDictionary];
  v5 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  if (v5 && [(_IMBalloonExtensionApp *)self linkedBeforeDawn])
  {
    _bundleIDsForDawnSendMenuTemporaryDisplayOverride = [(_IMBalloonExtensionApp *)self _bundleIDsForDawnSendMenuTemporaryDisplayOverride];
    v7 = [_bundleIDsForDawnSendMenuTemporaryDisplayOverride containsObject:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEnabled
{
  plugin = [(_IMBalloonExtensionApp *)self plugin];
  v4 = [plugin userElection] & 0xFE;

  if (!v4)
  {
    return 1;
  }

  applicationType = [(_IMBalloonExtensionApp *)self applicationType];
  v7 = sub_1A84E8A54(v6);
  v10 = [v9 isEqualToString:{**(v8 + 1448), v7}];

  if (v10)
  {
    plugin2 = [(_IMBalloonExtensionApp *)self plugin];
    [plugin2 setUserElection:0];

    [(IMBalloonApp *)self setIsEnabledUnremovableApp:0];
    return 1;
  }

  return 0;
}

- (id)plugin
{
  extension = [(_IMBalloonExtensionApp *)self extension];
  _plugIn = [extension _plugIn];

  return _plugIn;
}

- (_IMBalloonExtensionApp)initWithPluginBundle:(id)bundle extension:(id)extension
{
  v6 = qword_1ED767688;
  extensionCopy = extension;
  bundleCopy = bundle;
  if (v6 != -1)
  {
    sub_1A84E1DF8();
  }

  v9 = qword_1ED767690;
  v10 = qword_1ED767690;
  v11 = [(_IMBalloonExtensionApp *)self initWithPluginBundle:bundleCopy extension:extensionCopy pluginKitProxyClass:v9 proxy:0];

  return v11;
}

- (_IMBalloonExtensionApp)initWithPluginBundle:(id)bundle extension:(id)extension pluginKitProxyClass:(Class)class proxy:(id)proxy
{
  v82 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  extensionCopy = extension;
  proxyCopy = proxy;
  v13 = proxyCopy;
  if (extensionCopy && !proxyCopy)
  {
    identifier = [extensionCopy identifier];
    v13 = [(objc_class *)class pluginKitProxyForIdentifier:identifier];
  }

  containingBundle = [v13 containingBundle];
  v76.receiver = self;
  v76.super_class = _IMBalloonExtensionApp;
  v16 = [(IMBalloonApp *)&v76 initWithPluginBundle:bundleCopy appBundle:containingBundle];

  if (v16)
  {
    objc_storeStrong(&v16->_extension, extension);
    objc_storeStrong(&v16->_proxy, v13);
    bundleIdentifier = [v13 bundleIdentifier];
    infoDictionary = [extensionCopy infoDictionary];
    v19 = [infoDictionary objectForKey:@"NSExtension"];
    v20 = [v19 objectForKey:@"MSMessagePayloadProviderIdentifier"];

    if ([v20 length])
    {
      v21 = v20;

      bundleIdentifier = v21;
    }

    teamID = [v13 teamID];
    v23 = teamID;
    if (teamID)
    {
      v24 = teamID;
    }

    else
    {
      containingBundle2 = [v13 containingBundle];
      teamID2 = [containingBundle2 teamID];
      v27 = teamID2;
      v28 = @"0000000000";
      if (teamID2)
      {
        v28 = teamID2;
      }

      v24 = v28;
    }

    bundleIdentifier2 = [bundleCopy bundleIdentifier];
    v30 = [bundleIdentifier2 stringByAppendingFormat:@":%@:%@", v24, bundleIdentifier];

    [(IMBalloonApp *)v16 setIdentifier:v30];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = sub_1A83545B8;
    v74[3] = &unk_1E7813400;
    v31 = v30;
    v75 = v31;
    [extensionCopy setRequestInterruptionBlock:v74];
    localizedName = [v13 localizedName];
    v33 = [localizedName length];

    if (v33)
    {
      localizedName2 = [v13 localizedName];
    }

    else
    {
      localizedShortName = [v13 localizedShortName];
      v36 = [localizedShortName length];

      if (!v36)
      {
        goto LABEL_17;
      }

      localizedName2 = [v13 localizedShortName];
    }

    v37 = localizedName2;
    [(IMBalloonApp *)v16 setBrowserDisplayName:localizedName2];

LABEL_17:
    v73 = v24;
    browserDisplayName = [(IMBalloonApp *)v16 browserDisplayName];
    v39 = [browserDisplayName length];

    if (!v39)
    {
      v79 = xmmword_1E7813420;
      v80 = *off_1E7813430;
      v81 = 150;
      v40 = MEMORY[0x1E696AEC0];
      v41 = IMFileLocationTrimFileName();
      v42 = v81;
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
      v44 = [v40 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"[self.browserDisplayName length] > 0", "-[_IMBalloonExtensionApp initWithPluginBundle:extension:pluginKitProxyClass:proxy:]", v41, v42, v43];

      v45 = IMGetAssertionFailureHandler();
      if (v45)
      {
        v45(v44);
      }

      else
      {
        warning = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DF284(v44, warning);
        }
      }
    }

    v47 = [v13 objectForInfoDictionaryKey:@"MSHideInAppDrawer" ofClass:objc_opt_class() inScope:2];
    bOOLValue = [v47 BOOLValue];

    if (bOOLValue)
    {
      [(IMBalloonApp *)v16 setShowInBrowser:0];
      [(IMBalloonApp *)v16 setShowInSendMenu:0];
    }

    v49 = [v13 objectForInfoDictionaryKey:@"MSCanSendDataPayloads" ofClass:objc_opt_class() inScope:2];
    bOOLValue2 = [v49 BOOLValue];

    if (bOOLValue2)
    {
      [(IMBalloonApp *)v16 setCanSendDataPayloads:1];
    }

    v51 = [v13 objectForInfoDictionaryKey:@"MSShouldBalloonHideAppIcon" ofClass:objc_opt_class() inScope:2];
    bOOLValue3 = [v51 BOOLValue];

    if (bOOLValue3)
    {
      [(IMBalloonApp *)v16 setShouldBalloonHideAppIcon:1];
    }

    v53 = [v13 objectForInfoDictionaryKey:@"MSShouldBreadcrumbHideAppIcon" ofClass:objc_opt_class() inScope:2];
    bOOLValue4 = [v53 BOOLValue];

    if (bOOLValue4)
    {
      [(IMBalloonApp *)v16 setShouldBreadcrumbHideAppIcon:1];
    }

    v55 = [v13 objectForInfoDictionaryKey:@"MSShouldHideAppSwitcher" ofClass:objc_opt_class() inScope:2];
    bOOLValue5 = [v55 BOOLValue];

    if (bOOLValue5)
    {
      [(IMBalloonApp *)v16 setShouldHideAppSwitcher:1];
    }

    v57 = [v13 objectForInfoDictionaryKey:@"MSPrefersNoLoadingBubbles" ofClass:objc_opt_class() inScope:2];
    bOOLValue6 = [v57 BOOLValue];

    if (bOOLValue6)
    {
      [(IMBalloonApp *)v16 setPrefersNoLoadingBubbles:1];
    }

    v59 = [v13 objectForInfoDictionaryKey:@"MSSupportedPresentationContexts" ofClass:objc_opt_class() inScope:2];
    [(IMBalloonApp *)v16 setPresentationContexts:[(IMBalloonApp *)v16 presentationContextsForInfoPlistArray:v59]];
    v60 = [v13 objectForInfoDictionaryKey:@"NSStickerSharingLevel" ofClass:objc_opt_class() inScope:2];
    if (![v60 length])
    {
      goto LABEL_42;
    }

    if ([@"Messages" caseInsensitiveCompare:v60])
    {
      if ([@"OS" caseInsensitiveCompare:v60])
      {
LABEL_42:
        v62 = [v13 objectForInfoDictionaryKey:@"MSHideAttributionInformation" ofClass:objc_opt_class() inScope:2];
        bOOLValue7 = [v62 BOOLValue];

        if (bOOLValue7)
        {
          [(IMBalloonApp *)v16 setShouldHideAttributionInformation:1];
        }

        infoDictionary2 = [extensionCopy infoDictionary];
        v65 = [infoDictionary2 objectForKeyedSubscript:@"LSExecutableSDKVersion"];
        v67 = v65;
        if (v65 && [v65 length])
        {
          sub_1A84E8A28(v66);
          v68 = v77;
          v69 = v78;
        }

        else
        {
          sub_1A84E8A9C(v66);
          v71 = *(v70 + 1776);
          v68 = *v71;
          v69 = v71[1];
        }

        v79 = v68;
        v80 = v69;
        [(IMBalloonApp *)v16 setSdkVersionNumber:&v79];

        goto LABEL_49;
      }

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    [(IMBalloonApp *)v16 setStickerSharingLevel:v61];
    goto LABEL_42;
  }

LABEL_49:

  return v16;
}

- (id)version
{
  extension = [(_IMBalloonExtensionApp *)self extension];
  version = [extension version];

  return version;
}

- (id)itemID
{
  appBundle = [(IMBalloonApp *)self appBundle];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    itemID = &unk_1F1BA17E8;
LABEL_5:
    if (![itemID isEqual:&unk_1F1BA17E8])
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  itemID = [appBundle itemID];
  if (itemID)
  {
    goto LABEL_5;
  }

LABEL_6:
  identifier = [(IMBalloonApp *)self identifier];

  if (identifier)
  {
    if (qword_1EB2EA3B0 != -1)
    {
      sub_1A84E1E0C();
    }

    v6 = qword_1EB2EA3A8;
    identifier2 = [(IMBalloonApp *)self identifier];
    v8 = [v6 objectForKeyedSubscript:identifier2];

    itemID = v8;
  }

LABEL_10:

  return itemID;
}

- (BOOL)shouldDelayViewControllerPresentation
{
  extension = [(_IMBalloonExtensionApp *)self extension];
  infoDictionary = [extension infoDictionary];
  v5 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  if (v5)
  {
    _bundleIDsForDelayedPresentationOptIn = [(_IMBalloonExtensionApp *)self _bundleIDsForDelayedPresentationOptIn];
    v7 = [_bundleIDsForDelayedPresentationOptIn containsObject:v5];

    if (v7)
    {
      v8 = [infoDictionary BOOLValueForKey:@"MSOptInToDelayedPresentation" withDefault:0];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)presentationDelay
{
  extension = [(_IMBalloonExtensionApp *)self extension];
  infoDictionary = [extension infoDictionary];
  v5 = [infoDictionary objectForKeyedSubscript:@"MSPresentationDelay"];
  v6 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    _bundleIDToPresentationDelayMapping = [(_IMBalloonExtensionApp *)self _bundleIDToPresentationDelayMapping];
    v10 = [_bundleIDToPresentationDelayMapping objectForKeyedSubscript:v6];
    v5 = v10;
    if (v10)
    {
      [v10 floatValue];
      v8 = v11;
    }

    else
    {
      v8 = 1.0;
    }
  }

  return v8;
}

- (BOOL)linkedBeforeSDKVersion:(id)version
{
  versionCopy = version;
  objc_msgSend_sdkVersionNumber(self);
  sub_1A84E8A9C(v5);
  if (sub_1A84E89FC(**(v6 + 1776)))
  {
    sub_1A84E8A28(0.0);
    objc_msgSend_sdkVersionNumber(self);
    v7 = sub_1A84E89FC(0.0) == -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_bundleIDToPresentationDelayMapping
{
  if (qword_1EB2EA3C0 != -1)
  {
    sub_1A84E1E20();
  }

  v3 = qword_1EB2EA3B8;

  return v3;
}

- (id)_bundleIDsForDawnSendMenuTemporaryDisplayOverride
{
  if (qword_1EB2EA3D0 != -1)
  {
    sub_1A84E1E34();
  }

  v3 = qword_1EB2EA3C8;

  return v3;
}

- (id)_bundleIDsForDelayedPresentationOptIn
{
  if (qword_1EB2EA3E0 != -1)
  {
    sub_1A84E1E48();
  }

  v3 = qword_1EB2EA3D8;

  return v3;
}

- (BOOL)isBetaPlugin
{
  containingBundle = [(LSPlugInKitProxy *)self->_proxy containingBundle];
  isBetaApp = [containingBundle isBetaApp];

  return isBetaApp;
}

- (id)applicationType
{
  proxy = [(_IMBalloonExtensionApp *)self proxy];
  containingBundle = [proxy containingBundle];
  applicationType = [containingBundle applicationType];

  return applicationType;
}

- (BOOL)showInSendMenu
{
  v3.receiver = self;
  v3.super_class = _IMBalloonExtensionApp;
  return [(IMBalloonApp *)&v3 showInSendMenu];
}

- (BOOL)showInBrowser
{
  v11.receiver = self;
  v11.super_class = _IMBalloonExtensionApp;
  showInBrowser = [(IMBalloonApp *)&v11 showInBrowser];
  if (showInBrowser)
  {
    applicationType = [(_IMBalloonExtensionApp *)self applicationType];
    v6 = sub_1A84E8A54(v5);
    v9 = [v8 isEqualToString:{**(v7 + 1448), v6}];

    if (v9)
    {
      LOBYTE(showInBrowser) = [(IMBalloonApp *)self isEnabledUnremovableApp];
    }

    else
    {
      LOBYTE(showInBrowser) = 1;
    }
  }

  return showInBrowser;
}

- (BOOL)showableInBrowser
{
  v11.receiver = self;
  v11.super_class = _IMBalloonExtensionApp;
  showInBrowser = [(IMBalloonApp *)&v11 showInBrowser];
  if (showInBrowser)
  {
    applicationType = [(_IMBalloonExtensionApp *)self applicationType];
    v6 = sub_1A84E8A54(v5);
    v9 = [v8 isEqualToString:{**(v7 + 1448), v6}];

    if (v9)
    {
      LOBYTE(showInBrowser) = ![(IMBalloonApp *)self isEnabledUnremovableApp];
    }

    else
    {
      LOBYTE(showInBrowser) = 1;
    }
  }

  return showInBrowser;
}

- (void)setIsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  applicationType = [(_IMBalloonExtensionApp *)self applicationType];
  v7 = sub_1A84E8A54(v6);
  v10 = [v9 isEqualToString:{**(v8 + 1448), v7}];

  if (v10)
  {

    [(IMBalloonApp *)self setIsEnabledUnremovableApp:enabledCopy];
  }

  else
  {
    if (enabledCopy)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    plugin = [(_IMBalloonExtensionApp *)self plugin];
    userElection = [plugin userElection];

    plugin2 = [(_IMBalloonExtensionApp *)self plugin];
    [plugin2 setUserElection:userElection & 0xFFFFFFFFFFFFFF00 | v11];
  }
}

- (BOOL)isLaunchProhibited
{
  proxy = [(_IMBalloonExtensionApp *)self proxy];
  containingBundle = [proxy containingBundle];
  isLaunchProhibited = [containingBundle isLaunchProhibited];

  return isLaunchProhibited;
}

@end