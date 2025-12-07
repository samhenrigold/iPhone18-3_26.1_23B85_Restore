@interface MUOfficialAppSectionController
- (MUOfficialAppSectionController)initWithMapItem:(id)item usingCachedMediaResults:(id)results;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (id)_sectionHeaderText;
- (id)infoCardChildPossibleActions;
- (void)_hydrateViewWithApp;
- (void)_setupLockupView;
- (void)_updateViewWithMediaServicesResult:(id)result;
- (void)appLockupViewDidSelectPunchOutButton:(id)button;
@end

@implementation MUOfficialAppSectionController

- (id)infoCardChildPossibleActions
{
  if ([(MUOfficialAppSectionController *)self hasContent])
  {
    return &unk_1F450E278;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)_sectionHeaderText
{
  if ([(GEOAppleMediaServicesResult *)self->_appStoreApp isInstalled])
  {
    v2 = @"Open the App [Placecard]";
  }

  else
  {
    v2 = @"Get the App [Placecard]";
  }

  v3 = _MULocalizedStringFromThisBundle(v2);

  return v3;
}

- (void)appLockupViewDidSelectPunchOutButton:(id)button
{
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _attribution = [mapItem _attribution];
  providerID = [_attribution providerID];
  [(MUPlaceSectionController *)self captureInfoCardAction:6040 eventValue:0 feedbackType:0 actionRichProviderId:providerID classification:0];

  if ([(GEOAppleMediaServicesResult *)self->_appStoreApp isInstalled])
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    iOSBundleIdentifier = [(GEOAppleMediaServicesResult *)self->_appStoreApp iOSBundleIdentifier];
    [defaultWorkspace openApplicationWithBundleID:iOSBundleIdentifier];
  }

  else
  {
    defaultWorkspace = [MEMORY[0x1E696F3B8] sharedInstance];
    iOSBundleIdentifier = [(GEOAppleMediaServicesResult *)self->_appStoreApp url];
    [defaultWorkspace openURL:iOSBundleIdentifier completionHandler:0];
  }
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  v3 = [MUPlaceSectionHeaderViewModel alloc];
  _sectionHeaderText = [(MUOfficialAppSectionController *)self _sectionHeaderText];
  v5 = [(MUPlaceSectionHeaderViewModel *)v3 initWithTitleString:_sectionHeaderText];

  return v5;
}

- (void)_updateViewWithMediaServicesResult:(id)result
{
  objc_storeStrong(&self->_appStoreApp, result);
  resultCopy = result;
  [(MUOfficialAppSectionController *)self _setupLockupView];
  [(MUPlaceAppLockupView *)self->_officialAppView setViewModel:self->_appStoreApp];
}

- (void)_hydrateViewWithApp
{
  v26 = *MEMORY[0x1E69E9840];
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _preferedAppAdamID = [mapItem _preferedAppAdamID];
  stringValue = [_preferedAppAdamID stringValue];

  v6 = [(MUTimeExpirableLRUCache *)self->_cachedMediaResults objectForKey:stringValue];
  v7 = MUGetPlaceCardLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v25 = stringValue;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "Have cached app store app for identifier %@.  Early return.", buf, 0xCu);
    }

    [(MUOfficialAppSectionController *)self _updateViewWithMediaServicesResult:v6];
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v25 = stringValue;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "Fetching app store app with identifier %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    mEMORY[0x1E696F1A0] = [MEMORY[0x1E696F1A0] sharedInstance];
    mapItem2 = [(MUPlaceSectionController *)self mapItem];
    _preferedAppAdamID2 = [mapItem2 _preferedAppAdamID];
    stringValue2 = [_preferedAppAdamID2 stringValue];
    v23 = stringValue2;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    +[MUPlaceAppLockupView appIconSize];
    v15 = v14;
    v17 = v16;
    mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
    [mEMORY[0x1E696F3B8] screenScale];
    v20 = v19;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53__MUOfficialAppSectionController__hydrateViewWithApp__block_invoke;
    v21[3] = &unk_1E8219220;
    objc_copyWeak(&v22, buf);
    [mEMORY[0x1E696F1A0] appleMediaServicesResultsWithIdentifiers:v13 artworkSize:1 screenScale:4 type:v21 source:v15 completion:{v17, v20}];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

void __53__MUOfficialAppSectionController__hydrateViewWithApp__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 firstObject];
    v9 = v8;
    if (v6 || !v8)
    {
      v13 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch app store app with error %@", &v14, 0xCu);
      }
    }

    else
    {
      v10 = WeakRetained[12];
      v11 = [v8 identifier];
      [v10 setObject:v9 forKey:v11];

      [WeakRetained _updateViewWithMediaServicesResult:v9];
      v12 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_INFO, "MUOfficialAppSectionController: Fetched app %@, will tell parent to update", &v14, 0xCu);
      }

      v13 = [WeakRetained delegate];
      [v13 placeSectionControllerDidUpdateContent:WeakRetained];
    }
  }
}

- (void)_setupLockupView
{
  v3 = [MUPlaceAppLockupView alloc];
  v4 = [(MUPlaceAppLockupView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  officialAppView = self->_officialAppView;
  self->_officialAppView = v4;

  [(MUPlaceAppLockupView *)self->_officialAppView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceAppLockupView *)self->_officialAppView setDelegate:self];
  v6 = self->_officialAppView;
  sectionHeaderViewModel = [(MUOfficialAppSectionController *)self sectionHeaderViewModel];
  v8 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v6 sectionHeaderViewModel:sectionHeaderViewModel sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v8;

  v10 = self->_sectionView;

  [(MUPlaceSectionView *)v10 configureWithSectionController:self];
}

- (MUOfficialAppSectionController)initWithMapItem:(id)item usingCachedMediaResults:(id)results
{
  resultsCopy = results;
  v13.receiver = self;
  v13.super_class = MUOfficialAppSectionController;
  v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:item];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUOfficialAppSectionControllerInit", "", v12, 2u);
    }

    objc_storeStrong(&v8->_cachedMediaResults, results);
    [(MUOfficialAppSectionController *)v8 _hydrateViewWithApp];
    v10 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUOfficialAppSectionControllerInit", "", v12, 2u);
    }
  }

  return v8;
}

@end