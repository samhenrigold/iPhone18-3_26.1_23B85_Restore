@interface FontProviderLoader
- (BOOL)confirm:(id)confirm sceneID:(id)d;
- (BOOL)currentConnectionHasFontProviderEntitlement:(id *)entitlement withSuppressDialogEntitlement:(BOOL *)dialogEntitlement forUnitTest:(BOOL *)test;
- (BOOL)isDeviceInEduMode;
- (BOOL)isFileURL:(id)l forApplicationBundlePath:(id)path;
- (BOOL)isOnDemandResourceFile:(id)file;
- (id)basePathForODRContentAssetPack;
- (id)fontDescriptorAttributesArrayFromFontInfoDictionary:(id)dictionary;
- (id)systemContainerURL;
- (void)doneWithInstallFonts:(BOOL)fonts;
- (void)registerFonts:(id)fonts enabled:(BOOL)enabled sceneID:(id)d appInfo:(id)info completionHandler:(id)handler;
- (void)registeredFontsInfo:(BOOL)info appInfo:(id)appInfo completionHandler:(id)handler;
- (void)unregisterFonts:(id)fonts appInfo:(id)info completionHandler:(id)handler;
- (void)updateAppInfo:(id)info;
@end

@implementation FontProviderLoader

- (BOOL)currentConnectionHasFontProviderEntitlement:(id *)entitlement withSuppressDialogEntitlement:(BOOL *)dialogEntitlement forUnitTest:(BOOL *)test
{
  v8 = +[NSXPCConnection currentConnection];
  v9 = v8;
  if (v8)
  {
    objc_msgSend_auditToken(v8);
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v10 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);

  if (v10)
  {
    v11 = SecTaskCopyValueForEntitlement(v10, @"com.apple.developer.user-fonts", 0);
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFArrayGetTypeID())
      {
        v25.length = CFArrayGetCount(v12);
        v25.location = 0;
        v14 = CFArrayContainsValue(v12, v25, @"system-installation") != 0;
      }

      else
      {
        v14 = 0;
      }

      CFRelease(v12);
    }

    else
    {
      v14 = 0;
    }

    v17 = SecTaskCopySigningIdentifier(v10, 0);
    v15 = [(__CFString *)v17 isEqualToString:@"com.apple.xctest"];
    if (v15)
    {
      FSLog_Debug();
      v14 = 1;
    }

    if (entitlement && v14)
    {
      v18 = v17;
      *entitlement = v17;
    }

    if (dialogEntitlement)
    {
      v19 = v15;
    }

    else
    {
      v19 = 1;
    }

    v16 = v15;
    if ((v19 & 1) == 0)
    {
      v20 = SecTaskCopyValueForEntitlement(v10, @"com.apple.FontServices.skip-install-dialog", 0);
      if (v20)
      {
        v21 = v20;
        v22 = CFGetTypeID(v20);
        v16 = v22 == CFBooleanGetTypeID() && CFBooleanGetValue(v21) != 0;
        CFRelease(v21);
      }

      else
      {
        v16 = 0;
      }
    }

    CFRelease(v10);

    if (dialogEntitlement)
    {
      goto LABEL_29;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    v16 = 0;
    LOBYTE(v14) = 0;
    if (dialogEntitlement)
    {
LABEL_29:
      *dialogEntitlement = v16;
    }
  }

  if (test)
  {
    *test = v15;
  }

  return v14;
}

- (BOOL)confirm:(id)confirm sceneID:(id)d
{
  confirmCopy = confirm;
  if (objc_opt_class())
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 integerForKey:@"InstallDialogSuppressInterval"];
    if (v7 >= 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 3600;
    }

    v9 = [v6 objectForKey:@"InstallDialogLastTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:confirmCopy];
      if (v10)
      {
        v11 = v10;
        [v10 timeIntervalSinceNow];
        v13 = -v12;

        if (v13 < v8)
        {
          self->_result = 1;
          p_result = &self->_result;
LABEL_19:
          if (v9)
          {
            v38 = [v9 mutableCopy];
          }

          else
          {
            v38 = [NSMutableDictionary dictionaryWithCapacity:0];
          }

          v39 = v38;
          v40 = +[NSDate now];
          [v39 setObject:v40 forKey:confirmCopy];

          [v6 setObject:v39 forKey:@"InstallDialogLastTime"];
          CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);

LABEL_26:
          v15 = *p_result;
          goto LABEL_27;
        }
      }
    }

    else
    {

      v9 = 0;
    }

    v16 = [RBSProcessPredicate predicateMatchingBundleIdentifier:confirmCopy];
    v45 = 0;
    v17 = [RBSProcessHandle handleForPredicate:v16 error:&v45];
    v18 = v45;
    v19 = v18;
    if (!v17 || v18)
    {
      FSLog_Error();
    }

    else
    {
      v44 = v6;
      currentState = [v17 currentState];
      endowmentNamespaces = [currentState endowmentNamespaces];
      v22 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

      if (v22)
      {
        if (qword_10000CCC0 != -1)
        {
          sub_100003294();
        }

        dispatch_semaphore_wait(qword_10000CCB8, 0xFFFFFFFFFFFFFFFFLL);
        v23 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.FontInstallViewService" viewControllerClassName:@"FontInstallMainController"];
        v24 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
        v25 = +[NSXPCListener anonymousListener];
        serviceDelegate = self->_serviceDelegate;
        if (!serviceDelegate)
        {
          v27 = [[FontProviderViewServiceDelegate alloc] initWithFontProviderLoader:self];
          v28 = self->_serviceDelegate;
          self->_serviceDelegate = v27;

          serviceDelegate = self->_serviceDelegate;
        }

        [v25 setDelegate:serviceDelegate];
        endpoint = [v25 endpoint];
        _endpoint = [endpoint _endpoint];
        [v24 setXpcEndpoint:_endpoint];

        v30 = [SBSRemoteAlertHandle newHandleWithDefinition:v23 configurationContext:v24];
        v42 = v23;
        v31 = v24;
        v32 = objc_alloc_init(SBSRemoteAlertActivationContext);
        v46 = @"identifier";
        v47 = confirmCopy;
        v33 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        [v32 setUserInfo:v33];
        v34 = dispatch_semaphore_create(0);
        alertSemaphore = self->_alertSemaphore;
        self->_alertSemaphore = v34;

        [v25 resume];
        [v30 activateWithContext:v32];
        dispatch_semaphore_wait(self->_alertSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        v36 = self->_alertSemaphore;
        self->_alertSemaphore = 0;

        dispatch_semaphore_signal(qword_10000CCB8);
        v37 = self->_result;
        p_result = &self->_result;
        v6 = v44;
        if (!v37)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v6 = v44;
    }

    FSLog();
    self->_result = 0;

    v15 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v15 = 0;
  self->_result = 0;
LABEL_28:

  return v15;
}

- (void)doneWithInstallFonts:(BOOL)fonts
{
  NSLog(@"FontProviderLoader - done:%d", a2, fonts);
  self->_result = fonts;
  alertSemaphore = self->_alertSemaphore;
  if (alertSemaphore)
  {

    dispatch_semaphore_signal(alertSemaphore);
  }
}

- (BOOL)isDeviceInEduMode
{
  if (qword_10000CCD0 != -1)
  {
    sub_1000032BC();
  }

  return byte_10000CCC8;
}

- (id)systemContainerURL
{
  if (qword_10000CCE0 != -1)
  {
    sub_1000032D0();
  }

  v3 = qword_10000CCD8;

  return v3;
}

- (id)basePathForODRContentAssetPack
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001C28;
  block[3] = &unk_1000083B0;
  block[4] = self;
  if (qword_10000CCF0 != -1)
  {
    dispatch_once(&qword_10000CCF0, block);
  }

  return qword_10000CCE8;
}

- (BOOL)isOnDemandResourceFile:(id)file
{
  path = [file path];
  basePathForODRContentAssetPack = [(FontProviderLoader *)self basePathForODRContentAssetPack];
  v6 = [path hasPrefix:basePathForODRContentAssetPack];

  return v6;
}

- (BOOL)isFileURL:(id)l forApplicationBundlePath:(id)path
{
  pathCopy = path;
  path = [l path];
  v7 = [path hasPrefix:pathCopy];

  return v7;
}

- (void)registerFonts:(id)fonts enabled:(BOOL)enabled sceneID:(id)d appInfo:(id)info completionHandler:(id)handler
{
  enabledCopy = enabled;
  fontsCopy = fonts;
  dCopy = d;
  infoCopy = info;
  handlerCopy = handler;
  if ([fontsCopy count])
  {
    v53 = 0;
    v52 = 0;
    v15 = [(FontProviderLoader *)self currentConnectionHasFontProviderEntitlement:&v52 withSuppressDialogEntitlement:&v53 + 1 forUnitTest:&v53];
    v16 = v52;
    path = 0;
    v18 = 0;
    if (v15)
    {
      v18 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v16 allowPlaceholder:0 error:0];
      v19 = [v18 URL];
      v20 = sub_100002280(v19);
      path = [v20 path];

      if (!path)
      {
        v36 = v16;
        FSLog_Error();
      }
    }

    v38 = v18;
    bundleIdentifier = [v18 bundleIdentifier];
    v39 = dCopy;
    if ([v16 isEqualToString:@"com.apple.xctest"])
    {
      FSLog_Debug();

      NSLog(@"FontProvider: received sceneID: %@", dCopy);
      bundleIdentifier = &stru_100008758;
      if (v53)
      {
        goto LABEL_14;
      }
    }

    else
    {
      NSLog(@"FontProvider: received sceneID: %@", dCopy);
      if (v53)
      {
LABEL_14:
        v23 = [NSMutableArray arrayWithCapacity:0];
        v24 = [NSMutableArray arrayWithCapacity:0];
        v25 = [NSMutableDictionary dictionaryWithCapacity:0];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000022CC;
        v44[3] = &unk_100008400;
        v50 = enabledCopy;
        v26 = v23;
        v45 = v26;
        v46 = v25;
        v51 = v53;
        v47 = path;
        selfCopy = self;
        v49 = v24;
        v27 = v24;
        v28 = v25;
        [fontsCopy enumerateObjectsUsingBlock:v44];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100002850;
        v41[3] = &unk_100008428;
        v42 = v26;
        v43 = handlerCopy;
        v29 = v26;
        v30 = enabledCopy;
        v22 = infoCopy;
        [FSUserFontManager installFonts:v27 forIdentifier:v16 enabled:v30 appInfo:infoCopy completionHandler:v41];

LABEL_15:
        dCopy = v39;
        goto LABEL_16;
      }

      if (!bundleIdentifier)
      {
        v31 = 2;
        goto LABEL_19;
      }
    }

    if (!enabledCopy || (v53 & 0x100) != 0 || [(FontProviderLoader *)self confirm:bundleIdentifier sceneID:dCopy])
    {
      goto LABEL_14;
    }

    v31 = 8;
LABEL_19:
    v37 = v31;
    v32 = [fontsCopy count];
    v28 = [NSMutableArray arrayWithCapacity:v32];
    if (v32)
    {
      for (i = 0; i != v32; ++i)
      {
        v34 = [NSNumber numberWithUnsignedInteger:i];
        [v28 addObject:v34];
      }
    }

    v55 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
    v56 = v28;
    v35 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v27 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:v37 userInfo:v35];

    v54 = v27;
    v29 = [NSArray arrayWithObjects:&v54 count:1];
    (*(handlerCopy + 2))(handlerCopy, v29, 0);
    v22 = infoCopy;
    goto LABEL_15;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
  v22 = infoCopy;
LABEL_16:
}

- (void)unregisterFonts:(id)fonts appInfo:(id)info completionHandler:(id)handler
{
  fontsCopy = fonts;
  infoCopy = info;
  handlerCopy = handler;
  v31 = 0;
  v30 = 0;
  v11 = [(FontProviderLoader *)self currentConnectionHasFontProviderEntitlement:&v30 withSuppressDialogEntitlement:0 forUnitTest:&v31];
  v12 = v30;
  v13 = 0;
  if (v11)
  {
    v14 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v12 allowPlaceholder:0 error:0];
    v15 = [v14 URL];
    path = [v15 path];

    v13 = path != 0;
  }

  if ((v31 & 1) != 0 || v13)
  {
    v24 = [NSMutableArray arrayWithCapacity:0];
    [NSMutableArray arrayWithCapacity:0];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100002C24;
    v29 = v28[3] = &unk_100008450;
    v18 = v29;
    [fontsCopy enumerateObjectsUsingBlock:v28];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100002CF8;
    v25[3] = &unk_100008428;
    v26 = v24;
    v27 = handlerCopy;
    v22 = v24;
    [FSUserFontManager uninstallFonts:v18 forIdentifier:v12 appInfo:infoCopy completionHandler:v25];

    v23 = v29;
  }

  else
  {
    v17 = [fontsCopy count];
    v18 = [NSMutableArray arrayWithCapacity:v17];
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        v20 = [NSNumber numberWithUnsignedInteger:i];
        [v18 addObject:v20];
      }
    }

    v33 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
    v34 = v18;
    v21 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v22 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:2 userInfo:v21];

    v32 = v22;
    v23 = [NSArray arrayWithObjects:&v32 count:1];
    (*(handlerCopy + 2))(handlerCopy, v23, 0);
  }
}

- (id)fontDescriptorAttributesArrayFromFontInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"providedInfo"];
  v5 = [v4 objectForKey:@"CTFontRegistrationUserInfoAttribute"];
  v6 = [v4 objectForKey:@"NSCTFontFileURLAttribute"];
  v7 = [dictionaryCopy objectForKey:@"familyName"];

  if (v7)
  {
    v8 = [NSMutableArray arrayWithCapacity:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100002EF8;
    v13[3] = &unk_100008478;
    v14 = v5;
    v15 = v6;
    v9 = v8;
    v16 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v10 = v16;
    v11 = v9;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (void)registeredFontsInfo:(BOOL)info appInfo:(id)appInfo completionHandler:(id)handler
{
  infoCopy = info;
  appInfoCopy = appInfo;
  handlerCopy = handler;
  v25 = 0;
  v24 = 0;
  v10 = [(FontProviderLoader *)self currentConnectionHasFontProviderEntitlement:&v24 withSuppressDialogEntitlement:0 forUnitTest:&v25];
  v11 = v24;
  if (v10)
  {
    v12 = [FSUserFontManager registeredFontsInfoForIdentifier:v11 enabled:infoCopy appInfo:appInfoCopy];
    v13 = [NSMutableArray arrayWithCapacity:0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(FontProviderLoader *)self fontDescriptorAttributesArrayFromFontInfoDictionary:*(*(&v20 + 1) + 8 * v18), v20];
          [v13 addObjectsFromArray:v19];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v16);
    }

    handlerCopy[2](handlerCopy, v13);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)updateAppInfo:(id)info
{
  infoCopy = info;
  v8 = 0;
  v7 = 0;
  v5 = [(FontProviderLoader *)self currentConnectionHasFontProviderEntitlement:&v7 withSuppressDialogEntitlement:0 forUnitTest:&v8];
  v6 = v7;
  if (v5)
  {
    [FSUserFontManager updateAppInfo:infoCopy forIdentifier:v6];
  }
}

@end