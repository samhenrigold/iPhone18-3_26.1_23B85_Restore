@interface SCKPMediaControlCardSectionViewController
+ (void)initialize;
- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate;
- (SCKPMediaControlCardSectionViewController)initWithMediaRemoteControlCardSection:(id)section;
- (id)_nowPlayingViewControllerWithRouteUID:(id)d;
- (id)_nowPlayingVisualStylingProvider;
- (void)_updateActiveSystemEndpointForRouteUID:(id)d;
- (void)_updatePlatterForHashedRouteUID:(id)d;
- (void)_updatePlatterForRouteUID:(id)d;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SCKPMediaControlCardSectionViewController

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___SCKPMediaControlCardSectionViewController;
  objc_msgSendSuper2(&v2, sel_initialize);
  CRLogInitIfNeeded();
}

- (SCKPMediaControlCardSectionViewController)initWithMediaRemoteControlCardSection:(id)section
{
  sectionCopy = section;
  v9.receiver = self;
  v9.super_class = SCKPMediaControlCardSectionViewController;
  v6 = [(SCKPMediaControlCardSectionViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cardSection, section);
  }

  return v7;
}

- (void)loadView
{
  v7 = objc_alloc_init(SCKPMediaControlCardSectionView);
  [(SCKPMediaControlCardSectionViewController *)self setView:?];
  cardSection = [(SCKPMediaControlCardSectionViewController *)self cardSection];
  playbackRouteUniqueIdentifierIsEncrypted = [cardSection playbackRouteUniqueIdentifierIsEncrypted];

  cardSection2 = [(SCKPMediaControlCardSectionViewController *)self cardSection];
  playbackRouteUniqueIdentifier = [cardSection2 playbackRouteUniqueIdentifier];
  if (playbackRouteUniqueIdentifierIsEncrypted)
  {
    [(SCKPMediaControlCardSectionViewController *)self _updatePlatterForHashedRouteUID:playbackRouteUniqueIdentifier];
  }

  else
  {
    [(SCKPMediaControlCardSectionViewController *)self _updatePlatterForRouteUID:playbackRouteUniqueIdentifier];
  }
}

- (void)_updatePlatterForHashedRouteUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (!self->_assistantSecurityConnection)
  {
    v8 = objc_alloc_init(MEMORY[0x277CEF388]);
    assistantSecurityConnection = self->_assistantSecurityConnection;
    self->_assistantSecurityConnection = v8;

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(SCKPMediaControlCardSectionViewController *)self _updatePlatterForRouteUID:0];
    goto LABEL_6;
  }

  if (!dCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:0];
  objc_initWeak(&location, self);
  v7 = self->_assistantSecurityConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke;
  v10[3] = &unk_279C601C8;
  v11 = v5;
  objc_copyWeak(&v12, &location);
  [(AFSecurityConnection *)v7 processData:v6 usingProcedure:2 completion:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
LABEL_6:
}

void __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    v8 = MEMORY[0x277CF93F0];
    v9 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_26950D000, v9, OS_LOG_TYPE_DEFAULT, "Decoded routeUID: %@ => %@", buf, 0x16u);
    }

    if (v7)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_7;
      v11[3] = &unk_279C601A0;
      objc_copyWeak(&v13, (a1 + 40));
      v12 = v7;
      dispatch_async(MEMORY[0x277D85CD0], v11);

      objc_destroyWeak(&v13);
    }

    else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_cold_2();
  }
}

void __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePlatterForRouteUID:*(a1 + 32)];
}

- (void)_updatePlatterForRouteUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_26950D000, v5, OS_LOG_TYPE_DEFAULT, "update platter for routeUID: %@", &v11, 0xCu);
  }

  view = [(SCKPMediaControlCardSectionViewController *)self view];
  mediaPlatterViewController = self->_mediaPlatterViewController;
  if (mediaPlatterViewController)
  {
    [(UIViewController *)mediaPlatterViewController willMoveToParentViewController:0];
    [view setContentView:0];
    [(UIViewController *)self->_mediaPlatterViewController removeFromParentViewController];
    v8 = self->_mediaPlatterViewController;
    self->_mediaPlatterViewController = 0;
  }

  v9 = [(SCKPMediaControlCardSectionViewController *)self _nowPlayingViewControllerWithRouteUID:dCopy];
  if (v9)
  {
    [(SCKPMediaControlCardSectionViewController *)self addChildViewController:v9];
    view2 = [v9 view];
    [view setContentView:view2];

    [v9 didMoveToParentViewController:self];
    objc_storeStrong(&self->_mediaPlatterViewController, v9);
    [(SCKPMediaControlCardSectionViewController *)self _updateActiveSystemEndpointForRouteUID:dCopy];
  }
}

- (id)_nowPlayingViewControllerWithRouteUID:(id)d
{
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    MRUNowPlayingViewControllerClass = getMRUNowPlayingViewControllerClass();
    if (MRUNowPlayingViewControllerClass)
    {
      v6 = [[MRUNowPlayingViewControllerClass alloc] initWithRouteUID:dCopy];
      v7 = objc_alloc(getMRUVisualStylingProviderClass());
      _nowPlayingVisualStylingProvider = [(SCKPMediaControlCardSectionViewController *)self _nowPlayingVisualStylingProvider];
      v9 = [v7 initWithVisualStylingProvider:_nowPlayingVisualStylingProvider];
      [v6 setStylingProvider:v9];

      [v6 setLayout:4];
      [v6 setContext:5];
      goto LABEL_11;
    }

    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SCKPMediaControlCardSectionViewController _nowPlayingViewControllerWithRouteUID:];
    }
  }

  if (getMRPlatterViewControllerClass())
  {
    v6 = [objc_alloc(getMRPlatterViewControllerClass()) initWithRouteUID:dCopy];
    [v6 setStyle:4];
    [v6 setAllowsNowPlayingAppLaunch:1];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SCKPMediaControlCardSectionViewController _nowPlayingViewControllerWithRouteUID:];
    }

    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (id)_nowPlayingVisualStylingProvider
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMTVisualStylingProviderClass_softClass;
  v12 = getMTVisualStylingProviderClass_softClass;
  if (!getMTVisualStylingProviderClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMTVisualStylingProviderClass_block_invoke;
    v8[3] = &unk_279C60140;
    v8[4] = &v9;
    __getMTVisualStylingProviderClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  traitCollection = [(SCKPMediaControlCardSectionViewController *)self traitCollection];
  v6 = [v3 _visualStylingProviderForRecipe:1 category:1 andUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = SCKPMediaControlCardSectionViewController;
  changeCopy = change;
  [(SCKPMediaControlCardSectionViewController *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(SCKPMediaControlCardSectionViewController *)self traitCollection:v11.receiver];
  v6 = [changeCopy hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v6)
  {
    getMRUNowPlayingViewControllerClass();
    v7 = self->_mediaPlatterViewController;
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_alloc(getMRUVisualStylingProviderClass());
      _nowPlayingVisualStylingProvider = [(SCKPMediaControlCardSectionViewController *)self _nowPlayingVisualStylingProvider];
      v10 = [v8 initWithVisualStylingProvider:_nowPlayingVisualStylingProvider];
      [(UIViewController *)v7 setStylingProvider:v10];
    }
  }
}

- (void)_updateActiveSystemEndpointForRouteUID:(id)d
{
  dCopy = d;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_ptr;
  v11 = getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_ptr;
  if (!getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_block_invoke;
    v7[3] = &unk_279C60140;
    v7[4] = &v8;
    __getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_block_invoke(v7);
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    [SCKPMediaControlCardSectionViewController _updateActiveSystemEndpointForRouteUID:];
    v6 = v5;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  (v4)(dCopy, 0, @"SCKPMediaControlCardSectionViewController", 0, &__block_literal_global_1);
}

void __84__SCKPMediaControlCardSectionViewController__updateActiveSystemEndpointForRouteUID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __84__SCKPMediaControlCardSectionViewController__updateActiveSystemEndpointForRouteUID___block_invoke_cold_1();
    }
  }
}

- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->cardSectionViewControllingDelegate);

  return WeakRetained;
}

- (void)_updateActiveSystemEndpointForRouteUID:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  __84__SCKPMediaControlCardSectionViewController__updateActiveSystemEndpointForRouteUID___block_invoke_cold_1();
}

@end