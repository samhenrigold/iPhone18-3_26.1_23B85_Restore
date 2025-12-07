@interface SLComposeViewController
+ (BOOL)_isAvailableForServiceType:(id)type inHostApplicationBundleID:(id)d;
+ (BOOL)_isMultiUserDevice;
+ (BOOL)_isServiceType:(id)type;
+ (BOOL)_legacyBuiltInAvailabilityForService:(id)service inHostApplicationBundleID:(id)d;
+ (BOOL)isAvailableForExtension:(id)extension;
+ (BOOL)isAvailableForExtension:(id)extension inHostApplicationBundleID:(id)d;
+ (BOOL)isAvailableForServiceType:(NSString *)serviceType;
+ (SLComposeViewController)composeViewControllerForServiceType:(NSString *)serviceType;
+ (id)_extensionIdentifierForServiceType:(id)type;
+ (id)_serviceTypeForExtensionIdentifier:(id)identifier;
+ (id)_serviceTypeToExtensionIdentifierMap;
+ (id)_shareExtensionWithIdentifier:(id)identifier;
+ (id)_unsupportedServiceTypes;
+ (id)composeViewControllerForExtension:(id)extension;
+ (id)extensionIdentifierForActivityType:(id)type;
- (BOOL)_addImageAsset:(id)asset preview:(id)preview;
- (BOOL)_addImageJPEGData:(id)data preview:(id)preview;
- (BOOL)_addURL:(id)l type:(int64_t)type preview:(id)preview;
- (BOOL)_addVideoAsset:(id)asset preview:(id)preview;
- (BOOL)_addVideoData:(id)data preview:(id)preview;
- (BOOL)addAttachment:(id)attachment;
- (BOOL)addExtensionItem:(id)item;
- (BOOL)addImage:(UIImage *)image;
- (BOOL)addImageAsset:(id)asset;
- (BOOL)addItemProvider:(id)provider;
- (BOOL)addURL:(NSURL *)url;
- (BOOL)addURL:(id)l withPreviewImage:(id)image;
- (BOOL)removeAllImages;
- (BOOL)removeAllURLs;
- (BOOL)setInitialText:(NSString *)text;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)supportsImageAsset:(id)asset;
- (BOOL)supportsVideoAsset:(id)asset;
- (SLComposeViewController)initWithExtension:(id)extension requestedServiceType:(id)type;
- (SLComposeViewController)initWithServiceType:(id)type;
- (void)_handleRemoteViewFailure;
- (void)_instantiateAndBeginExtensionIfNeededWithCompletion:(id)completion;
- (void)completeWithResult:(int64_t)result;
- (void)dealloc;
- (void)didLoadSheetViewController;
- (void)remoteController:(id)controller didLoadWithError:(id)error;
- (void)remoteViewController:(id)controller didTerminateWithError:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SLComposeViewController

+ (id)_unsupportedServiceTypes
{
  if (_unsupportedServiceTypes_onceToken != -1)
  {
    +[SLComposeViewController _unsupportedServiceTypes];
  }

  v3 = _unsupportedServiceTypes__unsupportedServiceTypes;

  return v3;
}

uint64_t __51__SLComposeViewController__unsupportedServiceTypes__block_invoke()
{
  _unsupportedServiceTypes__unsupportedServiceTypes = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.social.facebook", @"com.apple.social.twitter", @"com.apple.social.sinaweibo", @"com.apple.social.flickr", @"com.apple.social.vimeo", @"com.apple.social.tencentweibo", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_serviceTypeToExtensionIdentifierMap
{
  if (_serviceTypeToExtensionIdentifierMap_onceToken != -1)
  {
    +[SLComposeViewController _serviceTypeToExtensionIdentifierMap];
  }

  v3 = _serviceTypeToExtensionIdentifierMap__map;

  return v3;
}

void __63__SLComposeViewController__serviceTypeToExtensionIdentifierMap__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.social.facebook";
  v2[1] = @"com.apple.social.twitter";
  v3[0] = @"com.apple.share.Facebook.post";
  v3[1] = @"com.apple.share.Twitter.post";
  v2[2] = @"com.apple.social.sinaweibo";
  v2[3] = @"com.apple.social.flickr";
  v3[2] = @"com.apple.share.SinaWeibo.post";
  v3[3] = @"com.apple.share.Flickr.post";
  v2[4] = @"com.apple.social.vimeo";
  v2[5] = @"com.apple.social.tencentweibo";
  v3[4] = @"com.apple.share.Vimeo.post";
  v3[5] = @"com.apple.share.TencentWeibo.post";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = _serviceTypeToExtensionIdentifierMap__map;
  _serviceTypeToExtensionIdentifierMap__map = v0;
}

+ (id)_extensionIdentifierForServiceType:(id)type
{
  typeCopy = type;
  _serviceTypeToExtensionIdentifierMap = [self _serviceTypeToExtensionIdentifierMap];
  v6 = [_serviceTypeToExtensionIdentifierMap objectForKey:typeCopy];

  return v6;
}

+ (id)_serviceTypeForExtensionIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _serviceTypeToExtensionIdentifierMap = [self _serviceTypeToExtensionIdentifierMap];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [_serviceTypeToExtensionIdentifierMap allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [_serviceTypeToExtensionIdentifierMap objectForKey:v10];
        v12 = [identifierCopy isEqualToString:v11];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (BOOL)_isServiceType:(id)type
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SLComposeViewController__isServiceType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = _isServiceType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&_isServiceType__onceToken, block);
  }

  v5 = [_isServiceType___serviceTypes containsObject:typeCopy];

  return v5;
}

void __42__SLComposeViewController__isServiceType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _serviceTypeToExtensionIdentifierMap];
  v1 = [v3 allKeys];
  v2 = _isServiceType___serviceTypes;
  _isServiceType___serviceTypes = v1;
}

+ (id)extensionIdentifierForActivityType:(id)type
{
  v18[6] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69CDAD8];
  v17[0] = *MEMORY[0x1E69CDAC0];
  v17[1] = v4;
  v18[0] = @"com.apple.share.Facebook.post";
  v18[1] = @"com.apple.share.Twitter.post";
  v5 = *MEMORY[0x1E69CDAC8];
  v17[2] = *MEMORY[0x1E69CDAE8];
  v17[3] = v5;
  v18[2] = @"com.apple.share.SinaWeibo.post";
  v18[3] = @"com.apple.share.Flickr.post";
  v6 = *MEMORY[0x1E69CDAD0];
  v17[4] = *MEMORY[0x1E69CDAE0];
  v17[5] = v6;
  v18[4] = @"com.apple.share.Vimeo.post";
  v18[5] = @"com.apple.share.TencentWeibo.post";
  v7 = MEMORY[0x1E695DF20];
  typeCopy = type;
  v9 = [v7 dictionaryWithObjects:v18 forKeys:v17 count:6];
  v16 = [v9 objectForKey:typeCopy];
  _SLLog(v3, 7, @"SLComposeViewController extensionIdentifierForActivityType: %@ => %@", v10, v11, v12, v13, v14, typeCopy);

  return v16;
}

+ (id)_shareExtensionWithIdentifier:(id)identifier
{
  v3 = _shareExtensionWithIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[SLComposeViewController _shareExtensionWithIdentifier:];
  }

  v5 = [_shareExtensionWithIdentifier___identifierToMatcherMap objectForKeyedSubscript:identifierCopy];

  extension = [v5 extension];

  return extension;
}

void __57__SLComposeViewController__shareExtensionWithIdentifier___block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v8[0] = @"com.apple.share.Facebook.post";
  v0 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.Facebook.post"];
  v9[0] = v0;
  v8[1] = @"com.apple.share.Twitter.post";
  v1 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.Twitter.post"];
  v9[1] = v1;
  v8[2] = @"com.apple.share.SinaWeibo.post";
  v2 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.SinaWeibo.post"];
  v9[2] = v2;
  v8[3] = @"com.apple.share.Flickr.post";
  v3 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.Flickr.post"];
  v9[3] = v3;
  v8[4] = @"com.apple.share.Vimeo.post";
  v4 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.Vimeo.post"];
  v9[4] = v4;
  v8[5] = @"com.apple.share.TencentWeibo.post";
  v5 = [[_SLExtensionLazyMatcher alloc] initWithIdentifier:@"com.apple.share.TencentWeibo.post"];
  v9[5] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = _shareExtensionWithIdentifier___identifierToMatcherMap;
  _shareExtensionWithIdentifier___identifierToMatcherMap = v6;
}

+ (BOOL)_legacyBuiltInAvailabilityForService:(id)service inHostApplicationBundleID:(id)d
{
  serviceCopy = service;
  dCopy = d;
  if ([serviceCopy isFirstClassService])
  {
    if ((![dCopy hasPrefix:@"com.apple."] || !objc_msgSend(dCopy, "compare:options:", @"com.apple.gamecenter.GameCenterUIService", 1)) && (objc_msgSend(serviceCopy, "hasAccounts") & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v8 = [self _isMultiUserDevice] ^ 1;
    goto LABEL_8;
  }

  if ([serviceCopy hasAccounts])
  {
    goto LABEL_7;
  }

LABEL_5:
  LOBYTE(v8) = 0;
LABEL_8:

  return v8;
}

+ (BOOL)_isMultiUserDevice
{
  if (_isMultiUserDevice_onceToken != -1)
  {
    +[SLComposeViewController _isMultiUserDevice];
  }

  return _isMultiUserDevice_isMultiUserDevice;
}

void __45__SLComposeViewController__isMultiUserDevice__block_invoke()
{
  v9 = MKBUserTypeDeviceMode();
  v1 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69B1A18]];
  _isMultiUserDevice_isMultiUserDevice = v2;
  if (v2)
  {
    _SLLog(v0, 7, @"Built-in Social services disabled for multi-user mode.", v3, v4, v5, v6, v7, v8);
  }
}

+ (BOOL)isAvailableForExtension:(id)extension
{
  v4 = MEMORY[0x1E696AAE8];
  extensionCopy = extension;
  mainBundle = [v4 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  LOBYTE(self) = [self isAvailableForExtension:extensionCopy inHostApplicationBundleID:bundleIdentifier];

  return self;
}

+ (BOOL)isAvailableForServiceType:(NSString *)serviceType
{
  v5 = serviceType;
  _unsupportedServiceTypes = [self _unsupportedServiceTypes];
  v7 = [_unsupportedServiceTypes containsObject:v5];

  if (v7)
  {
    _SLLog(v3, 3, @"isAvailableForServiceType: for %@ returning NO", v8, v9, v10, v11, v12, v5);
    v13 = 0;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v13 = [self _isAvailableForServiceType:v5 inHostApplicationBundleID:bundleIdentifier];
  }

  return v13;
}

+ (BOOL)isAvailableForExtension:(id)extension inHostApplicationBundleID:(id)d
{
  extensionCopy = extension;
  dCopy = d;
  _SLLog(v4, 7, @"SLComposeViewController isAvailableForExtension: %@ inHostApplicationBundleID: %@", v9, v10, v11, v12, v13, extensionCopy);
  _plugIn = [extensionCopy _plugIn];
  supersededBy = [_plugIn supersededBy];

  if (supersededBy)
  {
    v16 = 1;
  }

  else
  {
    identifier = [extensionCopy identifier];
    v18 = [self _serviceTypeForExtensionIdentifier:identifier];

    _SLLog(v4, 7, @"SLComposeViewController isAvailableForExtension: %@ inHostApplicationBundleID: %@ got serviceType %@", v19, v20, v21, v22, v23, extensionCopy);
    if (v18)
    {
      v24 = [SLService serviceForServiceType:v18];
      v16 = [self _legacyBuiltInAvailabilityForService:v24 inHostApplicationBundleID:dCopy];
    }

    else
    {
      v16 = 1;
    }
  }

  return v16;
}

+ (BOOL)_isAvailableForServiceType:(id)type inHostApplicationBundleID:(id)d
{
  typeCopy = type;
  dCopy = d;
  _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType %@", v9, v10, v11, v12, v13, typeCopy);
  v14 = [self _isServiceType:typeCopy];
  v15 = typeCopy;
  if (v14)
  {
    v21 = [self _extensionIdentifierForServiceType:v15];
    v22 = v15;
  }

  else
  {
    v22 = [self _serviceTypeForExtensionIdentifier:v15];
    v21 = v15;
  }

  if (v22)
  {
    v23 = [SLService serviceForServiceType:v22];
    v24 = [self _legacyBuiltInAvailabilityForService:v23 inHostApplicationBundleID:dCopy];

    v55 = [MEMORY[0x1E696AD98] numberWithBool:v24];
    _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType got serviceType %@ isAvailable %@", v25, v26, v27, v28, v29, v22);

    if ((v24 & 1) == 0)
    {
      v30 = [SLComposeViewController _shareExtensionWithIdentifier:v21];
      _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType got extension %@ for extensionIdentifer %@", v31, v32, v33, v34, v35, v30);
      if (v30)
      {
        _plugIn = [v30 _plugIn];
        supersededBy = [_plugIn supersededBy];

        if (supersededBy)
        {
          _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType returning YES for overridden extensionIdentifier %@", v43, v44, v45, v46, v47, v21);
          v48 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        _SLLog(v4, 3, @"SLComposeViewController isAvailableForServiceType failed to get extension for identifier %@", v36, v37, v38, v39, v40, v21);
      }

      v48 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType returning YES for extensionIdentifer %@", v16, v17, v18, v19, v20, v21);
  }

  v48 = 1;
LABEL_14:
  v56 = [MEMORY[0x1E696AD98] numberWithBool:v48];
  _SLLog(v4, 7, @"SLComposeViewController isAvailableForServiceType %@ returning %@", v49, v50, v51, v52, v53, v15);

  return v48;
}

- (SLComposeViewController)initWithExtension:(id)extension requestedServiceType:(id)type
{
  extensionCopy = extension;
  typeCopy = type;
  _SLLog(v4, 7, @"SLComposeViewController initWithExtension: %@ requestedServiceType: %@", v10, v11, v12, v13, v14, extensionCopy);
  v15 = objc_opt_class();
  identifier = [extensionCopy identifier];
  v17 = [v15 _serviceTypeForExtensionIdentifier:identifier];

  if (v17)
  {
    v18 = [SLService serviceForServiceType:v17];
    if (([v18 isFirstClassService] & 1) == 0 && !objc_msgSend(v18, "hasAccounts"))
    {
      selfCopy = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v18 = 0;
  }

  v42.receiver = self;
  v42.super_class = SLComposeViewController;
  v20 = [(SLComposeViewController *)&v42 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_extension, extension);
    v22 = objc_opt_new();
    itemProviders = v21->_itemProviders;
    v21->_itemProviders = v22;

    if (typeCopy)
    {
      v24 = typeCopy;
    }

    else
    {
      v24 = &stru_1F41EC300;
    }

    serviceType = v21->_serviceType;
    v21->_serviceType = &v24->isa;

    if (v18)
    {
      v21->_maximumImageCount = [v18 maximumImageCount];
      v21->_maximumURLCount = [v18 maximumURLCount];
      v21->_maximumVideoCount = [v18 maximumVideoCount];
    }

    else
    {
      v21->_maximumImageCount = 0;
      v21->_maximumURLCount = 0;
      v21->_maximumVideoCount = 0;
      attributes = [(NSExtension *)v21->_extension attributes];
      v27 = [attributes objectForKeyedSubscript:@"NSExtensionActivationRule"];

      if (v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v27 objectForKeyedSubscript:@"NSExtensionActivationSupportsImageWithMaxCount"];
          if (v28)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21->_maximumImageCount = [v28 integerValue];
            }
          }

          v29 = [v27 objectForKeyedSubscript:@"NSExtensionActivationSupportsWebURLWithMaxCount"];

          if (v29)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21->_maximumURLCount = [v29 integerValue];
            }
          }

          v30 = [v27 objectForKeyedSubscript:@"NSExtensionActivationSupportsMovieWithMaxCount"];

          if (v30)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21->_maximumVideoCount = [v30 integerValue];
            }
          }
        }

        else
        {
          v21->_maximumImageCount = -1;
          v21->_maximumURLCount = -1;
          v21->_maximumVideoCount = -1;
        }
      }
    }

    if (!v21->_extension)
    {
      v21->_didFailLoadingRemoteViewController = 1;
    }

    objc_initWeak(&location, v21);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke;
    v39[3] = &unk_1E8175D20;
    objc_copyWeak(&v40, &location);
    [(NSExtension *)v21->_extension setRequestCompletionBlock:v39];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_3;
    v37[3] = &unk_1E8175B70;
    objc_copyWeak(&v38, &location);
    [(NSExtension *)v21->_extension setRequestCancellationBlock:v37];
    view = [(SLComposeViewController *)v21 view];
    [view setOpaque:0];

    view2 = [(SLComposeViewController *)v21 view];
    [view2 setClipsToBounds:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    view3 = [(SLComposeViewController *)v21 view];
    [view3 setBackgroundColor:clearColor];

    view4 = [(SLComposeViewController *)v21 view];
    [view4 setAutoresizingMask:18];

    [(SLComposeViewController *)v21 setModalPresentationStyle:17];
    [(SLComposeViewController *)v21 setShouldForceNonAnimatedTransition:1];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  self = v21;
  selfCopy = self;
LABEL_30:

  return selfCopy;
}

void __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_2;
  block[3] = &unk_1E8175C10;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained completeWithResult:1];
    WeakRetained = v2;
  }
}

void __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_4;
  block[3] = &unk_1E8175C10;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __66__SLComposeViewController_initWithExtension_requestedServiceType___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained completeWithResult:0];
    WeakRetained = v2;
  }
}

- (SLComposeViewController)initWithServiceType:(id)type
{
  typeCopy = type;
  _SLLog(v3, 7, @"SLComposeViewController initWithServiceType: %@", v6, v7, v8, v9, v10, typeCopy);
  if ([objc_opt_class() _isServiceType:typeCopy])
  {
    v11 = typeCopy;
    v12 = [objc_opt_class() _extensionIdentifierForServiceType:v11];
  }

  else
  {
    v11 = [objc_opt_class() _serviceTypeForExtensionIdentifier:typeCopy];
    v12 = typeCopy;
  }

  v13 = v12;
  v14 = [SLComposeViewController _shareExtensionWithIdentifier:v12];
  _SLLog(v3, 7, @"SLComposeViewController initWithServiceType got extension %@ for identifier %@", v15, v16, v17, v18, v19, v14);
  if (v14 || (+[SLComposeViewController _unsupportedServiceTypes](SLComposeViewController, "_unsupportedServiceTypes"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 containsObject:v13], v20, !v21) || (+[SLService serviceForServiceType:](SLService, "serviceForServiceType:", v11), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "bundleIdentifier"), v24 = objc_claimAutoreleasedReturnValue(), v25 = +[SLComposeViewController _legacyBuiltInAvailabilityForService:inHostApplicationBundleID:](SLComposeViewController, "_legacyBuiltInAvailabilityForService:inHostApplicationBundleID:", v22, v24), v24, v23, v22, v25))
  {
    self = [(SLComposeViewController *)self initWithExtension:v14 requestedServiceType:v11];
    selfCopy = self;
  }

  else
  {
    _SLLog(v3, 3, @"SLComposeViewController initWithServiceType failed to get extension for identifier %@", v26, v27, v28, v29, v30, v13);
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)composeViewControllerForExtension:(id)extension
{
  extensionCopy = extension;
  identifier = [extensionCopy identifier];
  v6 = [self _serviceTypeForExtensionIdentifier:identifier];

  v7 = [[self alloc] initWithExtension:extensionCopy requestedServiceType:v6];

  return v7;
}

+ (SLComposeViewController)composeViewControllerForServiceType:(NSString *)serviceType
{
  v4 = serviceType;
  v5 = [[self alloc] initWithServiceType:v4];

  return v5;
}

- (void)dealloc
{
  _SLLog(v7, 7, @"SLComposeViewController dealloc %@", v2, v3, v4, v5, v6, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v10.receiver = self;
  v10.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v10 dealloc];
}

- (BOOL)setInitialText:(NSString *)text
{
  v4 = text;
  canAddContent = [(SLComposeViewController *)self canAddContent];
  if (canAddContent)
  {
    v6 = [(NSString *)v4 copy];
    initialText = self->_initialText;
    self->_initialText = v6;
  }

  return canAddContent;
}

- (BOOL)supportsImageAsset:(id)asset
{
  assetCopy = asset;
  _SLLog(v3, 7, @"supportsImageAsset start", v5, v6, v7, v8, v9, v19);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    _SLLog(v3, 3, @"Unsupported asset type %@", v13, v14, v15, v16, v17, v12);
  }

  return isKindOfClass & 1;
}

- (BOOL)supportsVideoAsset:(id)asset
{
  assetCopy = asset;
  _SLLog(v3, 7, @"supportsVideoAsset start", v5, v6, v7, v8, v9, v19);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    _SLLog(v3, 3, @"Unsupported asset type %@", v13, v14, v15, v16, v17, v12);
  }

  return isKindOfClass & 1;
}

- (BOOL)addImageAsset:(id)asset
{
  assetCopy = asset;
  _SLLog(v3, 7, @"addImageAsset: start", v6, v7, v8, v9, v10, v12);
  LOBYTE(self) = [(SLComposeViewController *)self _addImageAsset:assetCopy preview:0];

  return self;
}

- (BOOL)_addImageAsset:(id)asset preview:(id)preview
{
  v40[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  previewCopy = preview;
  _SLLog(v4, 7, @"SLComposeViewController _addImageAsset: %@ preview: %@", v9, v10, v11, v12, v13, assetCopy);
  if (![(SLComposeViewController *)self supportsImageAsset:assetCopy])
  {
    _SLLog(v4, 3, @"Asset type not supported", v14, v15, v16, v17, v18, v36);
LABEL_11:
    v34 = 0;
    goto LABEL_12;
  }

  if (![(SLComposeViewController *)self canAddContent])
  {
    goto LABEL_11;
  }

  maximumImageCount = self->_maximumImageCount;
  if (maximumImageCount != -1 && self->_numImagesAdded >= maximumImageCount)
  {
    goto LABEL_11;
  }

  scheme = [assetCopy scheme];
  v21 = [scheme isEqualToString:@"file"];
  v22 = MEMORY[0x1E69637C0];
  if (!v21)
  {
    v22 = MEMORY[0x1E69638B8];
  }

  v23 = *v22;

  v24 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:assetCopy typeIdentifier:v23];
  v39[0] = @"SLItemProviderIsImage";
  v39[1] = @"SLItemProviderHasPreview";
  v40[0] = MEMORY[0x1E695E118];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
  v40[1] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [v24 setUserInfo:v26];

  if (previewCopy)
  {
    _SLLog(v4, 7, @"SLComposeViewController _addImageAsset:preview: supplying itemProvider.previewImageHandler", v27, v28, v29, v30, v31, v36);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __50__SLComposeViewController__addImageAsset_preview___block_invoke;
    v37[3] = &unk_1E8175D48;
    v38 = previewCopy;
    [v24 setPreviewImageHandler:v37];
  }

  ++self->_numImagesAdded;
  v32 = [(NSArray *)self->_itemProviders arrayByAddingObject:v24];
  itemProviders = self->_itemProviders;
  self->_itemProviders = v32;

  v34 = 1;
LABEL_12:

  return v34;
}

void __50__SLComposeViewController__addImageAsset_preview___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  _SLLog(v3, 7, @"SLComposeViewController _addImageAsset:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@", v6, v7, v8, v9, v10, a3);
  (*(v11 + 2))(v11, *(a1 + 32), 0);
}

- (BOOL)addImage:(UIImage *)image
{
  v5 = image;
  _SLLog(v3, 7, @"addImage start", v6, v7, v8, v9, v10, v15);
  if ([(SLComposeViewController *)self canAddContent]&& ((maximumImageCount = self->_maximumImageCount, maximumImageCount == -1) || self->_numImagesAdded < maximumImageCount))
  {
    v12 = UIImageJPEGRepresentation(v5, 0.8);
    v13 = [(SLComposeViewController *)self _addImageJPEGData:v12 preview:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_addImageJPEGData:(id)data preview:(id)preview
{
  v29[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  previewCopy = preview;
  if ([(SLComposeViewController *)self canAddContent]&& ((maximumImageCount = self->_maximumImageCount, maximumImageCount == -1) || self->_numImagesAdded < maximumImageCount))
  {
    v10 = objc_alloc(MEMORY[0x1E696ACA0]);
    v11 = [v10 initWithItem:dataCopy typeIdentifier:*MEMORY[0x1E6963808]];
    v28[0] = @"SLItemProviderIsImage";
    v28[1] = @"SLItemProviderHasPreview";
    v29[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
    v29[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v11 setUserInfo:v13];

    if (previewCopy)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addImageJPEGData:preview: supplying itemProvider.previewImageHandler", v14, v15, v16, v17, v18, v23);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __53__SLComposeViewController__addImageJPEGData_preview___block_invoke;
      v26 = &unk_1E8175D48;
      v27 = previewCopy;
      [v11 setPreviewImageHandler:&v23];
    }

    ++self->_numImagesAdded;
    v19 = [(NSArray *)self->_itemProviders arrayByAddingObject:v11, v23, v24, v25, v26];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v19;

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __53__SLComposeViewController__addImageJPEGData_preview___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  _SLLog(v3, 7, @"SLComposeViewController _addImageJPEGData:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@", v6, v7, v8, v9, v10, a3);
  (*(v11 + 2))(v11, *(a1 + 32), 0);
}

- (BOOL)removeAllImages
{
  v30 = *MEMORY[0x1E69E9840];
  canAddContent = [(SLComposeViewController *)self canAddContent];
  v10 = canAddContent;
  if (canAddContent)
  {
    v24 = canAddContent;
    v11 = [(NSArray *)self->_itemProviders mutableCopy];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = 1008;
    v12 = self->_itemProviders;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          userInfo = [v17 userInfo];
          v19 = [userInfo objectForKeyedSubscript:@"SLItemProviderIsImage"];

          if (v19)
          {
            [v11 removeObject:v17];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    self->_numImagesAdded = 0;
    v20 = *(&self->super.super.super.isa + v23);
    *(&self->super.super.super.isa + v23) = v11;

    return v24;
  }

  else
  {
    _SLLog(v2, 6, @"Can't remove images - sheet already presented, returning NO", v5, v6, v7, v8, v9, v22);
  }

  return v10;
}

- (BOOL)_addVideoAsset:(id)asset preview:(id)preview
{
  v35[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  previewCopy = preview;
  _SLLog(v4, 7, @"SLComposeViewController _addVideoAsset: %@ preview: %@", v9, v10, v11, v12, v13, assetCopy);
  if ([(SLComposeViewController *)self supportsVideoAsset:assetCopy]&& [(SLComposeViewController *)self canAddContent]&& ((maximumVideoCount = self->_maximumVideoCount, maximumVideoCount == -1) || self->_numVideosAdded < maximumVideoCount))
  {
    scheme = [assetCopy scheme];
    v16 = [scheme isEqualToString:@"file"];
    v17 = MEMORY[0x1E69637C0];
    if (!v16)
    {
      v17 = MEMORY[0x1E69638B8];
    }

    v18 = *v17;

    v19 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:assetCopy typeIdentifier:v18];
    v34[0] = @"SLItemProviderIsVideo";
    v34[1] = @"SLItemProviderHasPreview";
    v35[0] = MEMORY[0x1E695E118];
    v20 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
    v35[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v19 setUserInfo:v21];

    if (previewCopy)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addVideoAsset:preview: supplying itemProvider.previewImageHandler", v22, v23, v24, v25, v26, v31);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __50__SLComposeViewController__addVideoAsset_preview___block_invoke;
      v32[3] = &unk_1E8175D48;
      v33 = previewCopy;
      [v19 setPreviewImageHandler:v32];
    }

    ++self->_numVideosAdded;
    v27 = [(NSArray *)self->_itemProviders arrayByAddingObject:v19];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v27;

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __50__SLComposeViewController__addVideoAsset_preview___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  _SLLog(v3, 7, @"SLComposeViewController _addVideoAsset:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@", v6, v7, v8, v9, v10, a3);
  (*(v11 + 2))(v11, *(a1 + 32), 0);
}

- (BOOL)_addVideoData:(id)data preview:(id)preview
{
  v29[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  previewCopy = preview;
  if ([(SLComposeViewController *)self canAddContent]&& ((maximumVideoCount = self->_maximumVideoCount, maximumVideoCount == -1) || self->_numVideosAdded < maximumVideoCount))
  {
    v10 = objc_alloc(MEMORY[0x1E696ACA0]);
    v11 = [v10 initWithItem:dataCopy typeIdentifier:*MEMORY[0x1E6963850]];
    v28[0] = @"SLItemProviderIsVideo";
    v28[1] = @"SLItemProviderHasPreview";
    v29[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
    v29[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v11 setUserInfo:v13];

    if (previewCopy)
    {
      _SLLog(v4, 7, @"SLComposeViewController _addVideoData:preview: supplying itemProvider.previewImageHandler", v14, v15, v16, v17, v18, v23);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __49__SLComposeViewController__addVideoData_preview___block_invoke;
      v26 = &unk_1E8175D48;
      v27 = previewCopy;
      [v11 setPreviewImageHandler:&v23];
    }

    ++self->_numVideosAdded;
    v19 = [(NSArray *)self->_itemProviders arrayByAddingObject:v11, v23, v24, v25, v26];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v19;

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __49__SLComposeViewController__addVideoData_preview___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  _SLLog(v3, 7, @"SLComposeViewController _addVideoData:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@", v6, v7, v8, v9, v10, a3);
  (*(v11 + 2))(v11, *(a1 + 32), 0);
}

- (BOOL)addURL:(NSURL *)url
{
  v5 = url;
  _SLLog(v3, 7, @"addURL: start", v6, v7, v8, v9, v10, v12);
  LOBYTE(self) = [(SLComposeViewController *)self addURL:v5 withPreviewImage:0];

  return self;
}

- (BOOL)addURL:(id)l withPreviewImage:(id)image
{
  lCopy = l;
  imageCopy = image;
  if ([lCopy isMusicStoreURL])
  {
    v8 = 3;
  }

  else if ([lCopy isAppStoreURL])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SLComposeViewController *)self _addURL:lCopy type:v8 preview:imageCopy];

  return v9;
}

- (BOOL)_addURL:(id)l type:(int64_t)type preview:(id)preview
{
  v39[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  previewCopy = preview;
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  _SLLog(v5, 7, @"SLComposeViewController _addURL: %@ type: %@ preview: %@", v11, v12, v13, v14, v15, lCopy);

  if ([(SLComposeViewController *)self canAddContent]&& ((maximumURLCount = self->_maximumURLCount, maximumURLCount == -1) || self->_numURLsAdded < maximumURLCount))
  {
    scheme = [lCopy scheme];
    v18 = [scheme isEqualToString:@"file"];
    v19 = MEMORY[0x1E69637C0];
    if (!v18)
    {
      v19 = MEMORY[0x1E69638B8];
    }

    v20 = *v19;

    v21 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:lCopy typeIdentifier:v20];
    v39[0] = MEMORY[0x1E695E118];
    v38[0] = @"SLItemProviderIsURL";
    v38[1] = @"SLAttachmentURLType";
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v39[1] = v22;
    v38[2] = @"SLItemProviderHasPreview";
    v23 = [MEMORY[0x1E696AD98] numberWithInt:previewCopy != 0];
    v39[2] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    [v21 setUserInfo:v24];

    if (previewCopy)
    {
      _SLLog(v5, 7, @"SLComposeViewController _addURL:type:preview: supplying itemProvider.previewImageHandler", v25, v26, v27, v28, v29, v34);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __48__SLComposeViewController__addURL_type_preview___block_invoke;
      v36[3] = &unk_1E8175D48;
      v37 = previewCopy;
      [v21 setPreviewImageHandler:v36];
    }

    ++self->_numURLsAdded;
    v30 = [(NSArray *)self->_itemProviders arrayByAddingObject:v21];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v30;

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

void __48__SLComposeViewController__addURL_type_preview___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  _SLLog(v3, 7, @"SLComposeViewController _addURL:type:preview: itemProvider previewImageHandler got expectedValueClass %@ options %@", v6, v7, v8, v9, v10, a3);
  (*(v11 + 2))(v11, *(a1 + 32), 0);
}

- (BOOL)removeAllURLs
{
  v65 = *MEMORY[0x1E69E9840];
  _SLLog(v7, 7, @"SLComposeViewController removeAllURLs", v2, v3, v4, v5, v6, v55);
  canAddContent = [(SLComposeViewController *)self canAddContent];
  v15 = canAddContent;
  if (canAddContent)
  {
    v58 = canAddContent;
    if ([(NSArray *)self->_extensionItems count])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v18 = [bundleIdentifier isEqualToString:@"com.apple.itunesu"];

      if (v18)
      {
        if (![(NSString *)self->_initialText length])
        {
          v19 = [(NSArray *)self->_extensionItems objectAtIndexedSubscript:0];
          attributedContentText = [v19 attributedContentText];
          string = [attributedContentText string];
          initialText = self->_initialText;
          self->_initialText = string;
        }

        extensionItems = self->_extensionItems;
        self->_extensionItems = 0;

        _SLLog(v7, 7, @"SLComposeViewController removeAllURLs did remove all _extensionItems and transfer the first items text to _initialText", v24, v25, v26, v27, v28, v56);
      }
    }

    v59 = [(NSArray *)self->_itemProviders mutableCopy];
    _SLLog(v7, 7, @"SLComposeViewController removeAllURLs starting with mutableItemProviders %@", v29, v30, v31, v32, v33, v59);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    selfCopy = self;
    v34 = self->_itemProviders;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v61;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v60 + 1) + 8 * i);
          userInfo = [v39 userInfo];
          _SLLog(v7, 7, @"SLComposeViewController removeAllURLs examining itemProvider.userInfo %@", v41, v42, v43, v44, v45, userInfo);

          userInfo2 = [v39 userInfo];
          v47 = [userInfo2 objectForKeyedSubscript:@"SLItemProviderIsURL"];

          if (v47)
          {
            [(NSArray *)v59 removeObject:v39];
          }
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v36);
    }

    _SLLog(v7, 7, @"SLComposeViewController removeAllURLs ended with mutableItemProviders %@", v48, v49, v50, v51, v52, v59);
    selfCopy->_numURLsAdded = 0;
    itemProviders = selfCopy->_itemProviders;
    selfCopy->_itemProviders = v59;

    return v58;
  }

  else
  {
    _SLLog(v7, 6, @"Can't remove URLs - sheet already presented, returning NO", v10, v11, v12, v13, v14, v56);
  }

  return v15;
}

- (BOOL)addItemProvider:(id)provider
{
  providerCopy = provider;
  _SLLog(v3, 7, @"SLComposeViewController addItemProvider: %@", v6, v7, v8, v9, v10, providerCopy);
  canAddContent = [(SLComposeViewController *)self canAddContent];
  if (canAddContent)
  {
    v17 = [(NSArray *)self->_itemProviders arrayByAddingObject:providerCopy];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v17;
  }

  else
  {
    _SLLog(v3, 6, @"Can't addItemProvider - sheet already presented, returning NO", v11, v12, v13, v14, v15, v20);
  }

  return canAddContent;
}

- (BOOL)addExtensionItem:(id)item
{
  v22[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  _SLLog(v3, 7, @"SLComposeViewController addExtensionItem: %@", v6, v7, v8, v9, v10, itemCopy);
  canAddContent = [(SLComposeViewController *)self canAddContent];
  if (canAddContent)
  {
    extensionItems = self->_extensionItems;
    if (extensionItems)
    {
      v18 = [(NSArray *)extensionItems arrayByAddingObject:itemCopy];
    }

    else
    {
      v22[0] = itemCopy;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    }

    v19 = self->_extensionItems;
    self->_extensionItems = v18;
  }

  else
  {
    _SLLog(v3, 6, @"Can't addExtensionItem - sheet already presented, returning NO", v11, v12, v13, v14, v15, v21);
  }

  return canAddContent;
}

- (BOOL)addAttachment:(id)attachment
{
  attachmentCopy = attachment;
  type = [attachmentCopy type];
  v6 = 0;
  if (type <= 5)
  {
    if (type <= 3)
    {
      if (!type)
      {
        payload = [attachmentCopy payload];
        previewImage = [attachmentCopy previewImage];
        v9 = [(SLComposeViewController *)self _addImageJPEGData:payload preview:previewImage];
        goto LABEL_18;
      }

      if (type == 2)
      {
        payload = [attachmentCopy payload];
        previewImage = [attachmentCopy previewImage];
        v9 = [(SLComposeViewController *)self _addImageAsset:payload preview:previewImage];
LABEL_18:
        v6 = v9;

        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (type == 4)
    {
      payload = [attachmentCopy payload];
      previewImage = [attachmentCopy previewImage];
      selfCopy4 = self;
      v11 = payload;
      v12 = 0;
    }

    else
    {
      payload = [attachmentCopy payload];
      previewImage = [attachmentCopy previewImage];
      selfCopy4 = self;
      v11 = payload;
      v12 = 3;
    }

LABEL_17:
    v9 = [(SLComposeViewController *)selfCopy4 _addURL:v11 type:v12 preview:previewImage];
    goto LABEL_18;
  }

  if (type <= 7)
  {
    if (type == 6)
    {
      payload = [attachmentCopy payload];
      previewImage = [attachmentCopy previewImage];
      selfCopy4 = self;
      v11 = payload;
      v12 = 4;
    }

    else
    {
      payload = [attachmentCopy payload];
      previewImage = [attachmentCopy previewImage];
      selfCopy4 = self;
      v11 = payload;
      v12 = 5;
    }

    goto LABEL_17;
  }

  if (type == 8)
  {
    payload = [attachmentCopy payload];
    previewImage = [attachmentCopy previewImage];
    v9 = [(SLComposeViewController *)self _addVideoData:payload preview:previewImage];
    goto LABEL_18;
  }

  if (type == 9)
  {
    payload = [attachmentCopy payload];
    previewImage = [attachmentCopy previewImage];
    v9 = [(SLComposeViewController *)self _addVideoAsset:payload preview:previewImage];
    goto LABEL_18;
  }

LABEL_19:

  return v6;
}

- (void)completeWithResult:(int64_t)result
{
  _SLLog(v8, 7, @"SLComposeViewController completeWithResult: %d", v3, v4, v5, v6, v7, result);
  self->_didCompleteSheet = 1;
  if (self->_completionHandler)
  {
    serviceType = [(SLComposeViewController *)self serviceType];
    if ([serviceType isEqualToString:@"com.apple.social.sinaweibo"])
    {
      v12 = dyld_program_sdk_at_least();

      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, result);
        v19 = self->_completionHandler;
        self->_completionHandler = 0;
      }

      if ((v12 & 1) == 0)
      {

        _SLLog(v8, 6, @"Expecting client to dismiss SLComposeViewController.", v13, v14, v15, v16, v17, v35);
        return;
      }
    }

    else
    {

      v20 = self->_completionHandler;
      if (v20)
      {
        v20[2](v20, result);
        v21 = self->_completionHandler;
        self->_completionHandler = 0;
      }
    }
  }

  if ([(SLComposeViewController *)self isBeingDismissed])
  {
    presentingViewController = [MEMORY[0x1E696AD98] numberWithBool:{-[SLComposeViewController isBeingDismissed](self, "isBeingDismissed")}];
    _SLLog(v8, 7, @"SLComposeViewController skipping explicit dismiss because isBeingDismissed is already %@", v27, v28, v29, v30, v31, presentingViewController);
  }

  else
  {
    _SLLog(v8, 7, @"SLComposeViewController automatically dismissing itself", v22, v23, v24, v25, v26, v32);
    presentingViewController = [(SLComposeViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didLoadSheetViewController
{
  remoteViewController = [(SLComposeViewController *)self remoteViewController];
  [remoteViewController willMoveToParentViewController:self];

  remoteViewController2 = [(SLComposeViewController *)self remoteViewController];
  [(SLComposeViewController *)self addChildViewController:remoteViewController2];

  view = [(SLComposeViewController *)self view];
  remoteViewController3 = [(SLComposeViewController *)self remoteViewController];
  view2 = [remoteViewController3 view];
  [view addSubview:view2];

  view3 = [(SLComposeViewController *)self view];
  remoteViewController4 = [(SLComposeViewController *)self remoteViewController];
  view4 = [remoteViewController4 view];
  [view3 bringSubviewToFront:view4];

  view5 = [(SLComposeViewController *)self view];
  [view5 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  remoteViewController5 = [(SLComposeViewController *)self remoteViewController];
  view6 = [remoteViewController5 view];
  [view6 setFrame:{v13, v15, v17, v19}];

  remoteViewController6 = [(SLComposeViewController *)self remoteViewController];
  view7 = [remoteViewController6 view];
  [view7 setAlpha:1.0];

  remoteViewController7 = [(SLComposeViewController *)self remoteViewController];
  [remoteViewController7 didMoveToParentViewController:self];

  view8 = [(SLComposeViewController *)self view];
  [view8 setNeedsLayout];
}

- (void)_handleRemoteViewFailure
{
  if (([(SLComposeViewController *)self isBeingPresented]& 1) != 0)
  {
    _SLLog(v2, 3, @"Sheet is being presented, delaying dismissal and callbacks", v4, v5, v6, v7, v8, v9);
  }

  else
  {
    _SLLog(v2, 3, @"Sheet not being presented, calling premature completion", v4, v5, v6, v7, v8, v9);
    [(SLComposeViewController *)self completeWithResult:0];
  }

  self->_hasInstantiatedExtensionUI = 1;
  self->_didFailLoadingRemoteViewController = 1;
}

- (void)remoteController:(id)controller didLoadWithError:(id)error
{
  controllerCopy = controller;
  if (error)
  {
    _SLLog(v4, 3, @"HOST: Failed to load remote view controller with error: %@", v7, v8, v9, v10, v11, error);
    [(SLComposeViewController *)self _handleRemoteViewFailure];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _SLLog(v4, 7, @"SLComposeViewController received remoteViewController of class SLRemoteComposeViewController, and setting its delegate to self", v12, v13, v14, v15, v16, v33);
      [controllerCopy setDelegate:self];
    }

    view = [controllerCopy view];
    [view setClipsToBounds:0];

    _SLLog(v4, 6, @"HOST: Successfully loaded remote SLComposeVC", v18, v19, v20, v21, v22, v33);
    [(SLComposeViewController *)self setRemoteViewController:controllerCopy];
    _SLLog(v4, 6, @"[remoteViewController setupRemoteViewController]", v23, v24, v25, v26, v27, v34);
    [(SLComposeViewController *)self setRemoteViewController:controllerCopy];
    [(SLComposeViewController *)self didLoadSheetViewController];
    _SLLog(v4, 6, @"Finished setting up remote view controller", v28, v29, v30, v31, v32, v35);
  }
}

- (void)remoteViewController:(id)controller didTerminateWithError:(id)error
{
  _SLLog(v8, 7, @"SLComposeViewController remoteViewController: %@ didTerminateWithError: %@", error, v4, v5, v6, v7, controller);
  if (!self->_didCompleteSheet)
  {

    [(SLComposeViewController *)self completeWithResult:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _SLLog(v8, 7, @"viewWillAppear", v3, v4, v5, v6, v7, v12.receiver);
  self->_wasPresented = 1;
  v12.receiver = self;
  v12.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v12 viewWillAppear:appearCopy];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  self->_savedStatusBarStyle = [mEMORY[0x1E69DC668] statusBarStyle];

  [(SLComposeViewController *)self _instantiateAndBeginExtensionIfNeeded];
}

- (void)_instantiateAndBeginExtensionIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_hasInstantiatedExtensionUI && self->_extension)
  {
    [(SLComposeViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(NSArray *)self->_itemProviders count])
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_itemProviders, "count")}];
      _SLLog(v3, 7, @"SLComposeViewController building implicit NSExtensionItem from array of %@ _itemProviders", v13, v14, v15, v16, v17, v12);

      v18 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      [v18 setAttachments:self->_itemProviders];
      [v6 addObject:v18];
    }

    extensionItems = self->_extensionItems;
    if (extensionItems)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](extensionItems, "count")}];
      _SLLog(v3, 7, @"SLComposeViewController including %@ explicit NSExtensionItems", v21, v22, v23, v24, v25, v20);

      [v6 addObjectsFromArray:self->_extensionItems];
    }

    if (self->_initialText)
    {
      _SLLog(v3, 7, @"SLComposeViewController setting first extensionItem.attributedContentText to '%@'", v7, v8, v9, v10, v11, self->_initialText);
      if (![v6 count])
      {
        v26 = objc_alloc_init(MEMORY[0x1E696ABE0]);
        [v6 addObject:v26];
      }

      v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_initialText];
      firstObject = [v6 firstObject];
      [firstObject setAttributedContentText:v27];
    }

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    _SLLog(v3, 7, @"SLComposeViewController about to instantiate remote view controller with array of %@ NSExtensionItems", v30, v31, v32, v33, v34, v29);

    self->_hasInstantiatedExtensionUI = 1;
    extension = self->_extension;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __79__SLComposeViewController__instantiateAndBeginExtensionIfNeededWithCompletion___block_invoke;
    v36[3] = &unk_1E8175D90;
    v36[4] = self;
    v37 = completionCopy;
    [(NSExtension *)extension instantiateViewControllerWithInputItems:v6 listenerEndpoint:0 connectionHandler:v36];
  }
}

void __79__SLComposeViewController__instantiateAndBeginExtensionIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  _SLLog(v4, 7, @"SLComposeViewController finished instantiate remote view controller %@ error %{public}@ extension request identifier %@", v10, v11, v12, v13, v14, v8);
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v16);
  }

  [*(a1 + 32) remoteController:v8 didLoadWithError:v9];
  [*(a1 + 32) _endDelayingPresentation];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v3 viewDidDisappear:disappear];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  _SLLog(v8, 7, @"viewDidAppear", v3, v4, v5, v6, v7, v16);
  v19.receiver = self;
  v19.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v19 viewDidAppear:appearCopy];
  if (self->_didFailLoadingRemoteViewController)
  {
    _SLLog(v8, 6, @"ViewDidAppear, but remote VC failed, dismissing", v11, v12, v13, v14, v15, v17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SLComposeViewController_viewDidAppear___block_invoke;
    block[3] = &unk_1E81757C8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = SLComposeViewController;
  [(SLComposeViewController *)&v2 viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    v7 = userInterfaceIdiom != 0;
  }

  else
  {
    v7 = 0;
  }

  return orientation != 2 || v7;
}

@end