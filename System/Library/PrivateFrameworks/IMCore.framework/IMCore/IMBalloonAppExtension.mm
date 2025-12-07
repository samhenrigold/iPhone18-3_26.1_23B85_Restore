@interface IMBalloonAppExtension
- (BOOL)canSendDataPayloads;
- (BOOL)isBetaPlugin;
- (BOOL)isLaunchProhibited;
- (BOOL)shouldBalloonHideAppIcon;
- (BOOL)shouldBreadcrumbHideAppIcon;
- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle appBundle:(id)appBundle;
- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle extension:(id)extension;
- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle pluginKitProxy:(id)proxy extension:(id)extension;
- (NSNumber)itemID;
- (PKPlugIn)plugin;
- (id)_initWithPluginBundle:(id)bundle extension:(id)extension pluginKitProxyClass:(Class)class;
- (id)version;
@end

@implementation IMBalloonAppExtension

- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle pluginKitProxy:(id)proxy extension:(id)extension
{
  proxyCopy = proxy;
  bundleCopy = bundle;
  v11 = [IMBalloonApp appWithPluginBundle:bundleCopy pluginKitProxy:proxyCopy extension:extension];
  v14.receiver = self;
  v14.super_class = IMBalloonAppExtension;
  v12 = [(IMBalloonPlugin *)&v14 initWithBundle:bundleCopy app:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_proxy, proxy);
  }

  return v12;
}

- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle extension:(id)extension
{
  sub_1A84E8A78(v4);
  v8 = v7;
  bundleCopy = bundle;
  v10 = [(IMBalloonAppExtension *)self _initWithPluginBundle:bundleCopy extension:v8 pluginKitProxyClass:objc_opt_class()];

  return v10;
}

- (id)_initWithPluginBundle:(id)bundle extension:(id)extension pluginKitProxyClass:(Class)class
{
  bundleCopy = bundle;
  extensionCopy = extension;
  v10 = extensionCopy;
  if (extensionCopy)
  {
    identifier = [extensionCopy identifier];
    v12 = [(objc_class *)class pluginKitProxyForIdentifier:identifier];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(IMBalloonAppExtension *)self initWithPluginBundle:bundleCopy pluginKitProxy:v12 extension:v10];
  p_isa = &v13->super.super.isa;
  if (v13)
  {
    objc_storeStrong(&v13->_extension, extension);
    objc_storeStrong(p_isa + 20, v12);
  }

  return p_isa;
}

- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle appBundle:(id)appBundle
{
  appBundleCopy = appBundle;
  bundleCopy = bundle;
  v8 = [IMBalloonApp appWithPluginBundle:bundleCopy appBundle:appBundleCopy];
  v16.receiver = self;
  v16.super_class = IMBalloonAppExtension;
  v9 = [(IMBalloonPlugin *)&v16 initWithBundle:bundleCopy app:v8];

  if (v9)
  {
    infoDictionary = [appBundleCopy infoDictionary];
    browserImageName = [(IMBalloonPlugin *)v9 browserImageName];

    if (!browserImageName)
    {
      v12 = [infoDictionary objectForKey:@"CKBrowserDisplayImageName"];
      if ([v12 length])
      {
        [(IMBalloonPlugin *)v9 setBrowserImageName:v12];
      }
    }

    browserImagePath = [(IMBalloonPlugin *)v9 browserImagePath];

    if (!browserImagePath)
    {
      v14 = [infoDictionary objectForKey:@"kCKBrowserDisplayImagePath"];
      if ([v14 length])
      {
        [(IMBalloonPlugin *)v9 setBrowserImagePath:v14];
      }
    }
  }

  return v9;
}

- (id)version
{
  v2 = [(IMBalloonPlugin *)self app];
  version = [v2 version];

  return version;
}

- (BOOL)isBetaPlugin
{
  v2 = [(IMBalloonPlugin *)self app];
  isBetaPlugin = [v2 isBetaPlugin];

  return isBetaPlugin;
}

- (PKPlugIn)plugin
{
  v2 = [(IMBalloonPlugin *)self app];
  plugin = [v2 plugin];

  return plugin;
}

- (BOOL)shouldBalloonHideAppIcon
{
  v2 = [(IMBalloonPlugin *)self app];
  shouldBalloonHideAppIcon = [v2 shouldBalloonHideAppIcon];

  return shouldBalloonHideAppIcon;
}

- (BOOL)shouldBreadcrumbHideAppIcon
{
  v2 = [(IMBalloonPlugin *)self app];
  shouldBreadcrumbHideAppIcon = [v2 shouldBreadcrumbHideAppIcon];

  return shouldBreadcrumbHideAppIcon;
}

- (BOOL)isLaunchProhibited
{
  v2 = [(IMBalloonPlugin *)self app];
  isLaunchProhibited = [v2 isLaunchProhibited];

  return isLaunchProhibited;
}

- (NSNumber)itemID
{
  v2 = [(IMBalloonPlugin *)self app];
  itemID = [v2 itemID];

  return itemID;
}

- (BOOL)canSendDataPayloads
{
  v2 = [(IMBalloonPlugin *)self app];
  canSendDataPayloads = [v2 canSendDataPayloads];

  return canSendDataPayloads;
}

@end