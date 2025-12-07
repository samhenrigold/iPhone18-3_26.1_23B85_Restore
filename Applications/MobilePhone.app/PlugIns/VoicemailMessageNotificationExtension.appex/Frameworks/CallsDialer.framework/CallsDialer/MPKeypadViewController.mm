@interface MPKeypadViewController
- (BOOL)_anyContactsExist;
- (MPKeyPadViewControllerDelegate)delegate;
- (MPKeypadViewController)initWithContactStore:(id)store enableSmartDialer:(BOOL)dialer orientationProvider:(id)provider;
- (TUSenderIdentityClient)senderIdentityClient;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (id)_businessItemForNumber:(id)number messageable:(BOOL *)messageable;
- (id)_metadataForDialerText;
- (id)_metadataNameForDialerText;
- (id)_newContactWithPhoneNumber:(id)number;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)createMenuForAddContactButton;
- (id)pseudoNameStringForDestinationID:(id)d;
- (id)senderIdentityMenuForDialerView:(id)view selectedSenderIdentity:(id)identity;
- (int64_t)_IDSStatusForService:(id)service withDestination:(id)destination;
- (void)_addNewContact:(id)contact;
- (void)_clearIDSStatusCache;
- (void)_handleResultsUpdate:(id)update contactHasCompleteMatch:(BOOL)match businessResult:(id)result businessHasCompleteMatch:(BOOL)completeMatch businessHasMessageAction:(BOOL)action pastedString:(id)string;
- (void)_metadataCacheDidUpdate;
- (void)_updateIDSStatusIfNeededForService:(id)service withDestination:(id)destination;
- (void)_updateMetadataCacheIfPossible;
- (void)_updateNameAndRefreshResult:(BOOL)result;
- (void)_updateNameFromMetadataCache;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)handleSelectedSenderIdentity:(id)identity;
- (void)presentAppleSupportGuidedHelp;
- (void)presentContactsSearchFor:(id)for;
- (void)providersChangedForProviderManager:(id)manager;
- (void)refreshLocalizedSenderIdentity;
- (void)searchAndUpdateResultsFor:(id)for shouldRefreshResult:(BOOL)result showPastedString:(id)string;
- (void)searchBusinessesFor:(id)for completionHandler:(id)handler;
- (void)searchButtonPressed:(id)pressed;
- (void)searchContactsFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler;
- (void)setIsHostedInRemoteViewController:(BOOL)controller;
- (void)updateIDSStatus;
- (void)updateLocalizedSenderIdentity:(id)identity;
- (void)updateTabBarAppearanceToTransparent:(BOOL)transparent;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MPKeypadViewController

- (MPKeypadViewController)initWithContactStore:(id)store enableSmartDialer:(BOOL)dialer orientationProvider:(id)provider
{
  v15.receiver = self;
  v15.super_class = MPKeypadViewController;
  v6 = [(DialerController *)&v15 initWithDialerView:0 dialerType:0 contactStore:store appType:1 orientationProvider:provider];
  v7 = v6;
  if (v6)
  {
    v6->_enableSmartDialer = dialer;
    v6->_enableSmartDialerExpandedSearch = 0;
    v8 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v7->_featureFlags;
    v7->_featureFlags = v8;

    v10 = objc_alloc_init(NSCache);
    IDSstatusCache = v7->_IDSstatusCache;
    v7->_IDSstatusCache = v10;

    v12 = objc_alloc_init(MPAnalyticsLogger);
    simLineSelectionAnalyticsReporter = v7->_simLineSelectionAnalyticsReporter;
    v7->_simLineSelectionAnalyticsReporter = v12;
  }

  return v7;
}

- (void)updateTabBarAppearanceToTransparent:(BOOL)transparent
{
  transparentCopy = transparent;
  v6 = objc_opt_new();
  if (transparentCopy)
  {
    [v6 configureWithTransparentBackground];
  }

  tabBarItem = [(MPKeypadViewController *)self tabBarItem];
  [tabBarItem setStandardAppearance:v6];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = MPKeypadViewController;
  [(MPKeypadViewController *)&v30 viewDidLoad];
  v3 = objc_alloc_init(BCSBusinessQueryService);
  bizService = self->_bizService;
  self->_bizService = v3;

  v5 = [[BSBrandManager alloc] initWithBrandType:3 cachingEnabled:1];
  brandManager = self->_brandManager;
  self->_brandManager = v5;

  v7 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  [(MPKeypadViewController *)self setCallContextMenuInteraction:v7];

  dialerView = [(DialerController *)self dialerView];
  callButton = [dialerView callButton];
  callContextMenuInteraction = [(MPKeypadViewController *)self callContextMenuInteraction];
  [callButton addInteraction:callContextMenuInteraction];

  if (PHDeviceSupportsDualSim())
  {
    callProviderManager = [(DialerController *)self callProviderManager];
    [callProviderManager addDelegate:self queue:0];
  }

  dialerView2 = [(DialerController *)self dialerView];
  lcdView = [dialerView2 lcdView];
  [lcdView setResultDelegate:self];

  dialerView3 = [(DialerController *)self dialerView];
  addContactButton = [dialerView3 addContactButton];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dialerView4 = [(DialerController *)self dialerView];
    addContactButton2 = [dialerView4 addContactButton];

    objc_initWeak(&location, self);
    [addContactButton2 setContextMenuIsPrimary:1];
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = __37__MPKeypadViewController_viewDidLoad__block_invoke;
    v27 = &unk_4C998;
    objc_copyWeak(&v28, &location);
    [addContactButton2 _setMenuProvider:&v24];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v19 = [(DialerController *)self dialerView:v24];
  searchButton = [v19 searchButton];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    dialerView5 = [(DialerController *)self dialerView];
    searchButton2 = [dialerView5 searchButton];
    [searchButton2 addTarget:self action:"searchButtonPressed:" forControlEvents:64];
  }

  [(MPKeypadViewController *)self updateTabBarAppearanceToTransparent:1];
}

id __37__MPKeypadViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 createMenuForAddContactButton];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = PHDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "MPKeypadViewController viewDidAppear:", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = MPKeypadViewController;
  [(MPKeypadViewController *)&v7 viewDidAppear:appearCopy];
  [(MPKeypadViewController *)self finishSwitchTestIfNeeded];
  delegate = [(MPKeypadViewController *)self delegate];
  [delegate keyPadViewControllerDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MPKeypadViewController;
  [(DialerController *)&v9 viewWillAppear:appear];
  [(MPKeypadViewController *)self refreshLocalizedSenderIdentity];
  isHostedInRemoteViewController = [(MPKeypadViewController *)self isHostedInRemoteViewController];
  dialerView = [(DialerController *)self dialerView];
  [dialerView setIsHostedInRemoteViewController:isHostedInRemoteViewController];

  dialerView2 = [(DialerController *)self dialerView];
  lcdView = [dialerView2 lcdView];
  [lcdView becomeFirstResponder];

  [(MPKeypadViewController *)self setDefinesPresentationContext:1];
  view = [(MPKeypadViewController *)self view];
  [view setAccessibilityIdentifier:@"KeypadView"];
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  featureFlags = [(MPKeypadViewController *)self featureFlags];
  if ([featureFlags phoneLargeFormatUIEnabled])
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    left = 16.0;
    top = 16.0;
    bottom = 16.0;
    right = 16.0;
    if (userInterfaceIdiom == &dword_0 + 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
LABEL_6:
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_anyContactsExist
{
  v3 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
  contactStore = [(DialerController *)self contactStore];
  v7 = 0;
  v5 = [contactStore contactCountForFetchRequest:v3 error:&v7];

  LOBYTE(contactStore) = [v5 integerValue] > 0;
  return contactStore;
}

- (id)createMenuForAddContactButton
{
  if (self->super._lookupTimer)
  {
    [(MPKeypadViewController *)self _updateName];
  }

  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  text = [lcdView text];

  v5 = [(DialerController *)self contactResultForPhoneNumber:text];
  contacts = [v5 contacts];
  if ([contacts count])
  {

    goto LABEL_5;
  }

  v16 = [text length];

  if (!v16)
  {
LABEL_5:
    contacts2 = [v5 contacts];
    firstObject = [contacts2 firstObject];
    if (firstObject)
    {
      v9 = firstObject;
      contacts3 = [v5 contacts];
      firstObject2 = [contacts3 firstObject];
      isSuggested = [firstObject2 isSuggested];

      if (!isSuggested)
      {
LABEL_17:
        v28 = 0;
        goto LABEL_18;
      }

      contacts4 = [v5 contacts];
      firstObject3 = [contacts4 firstObject];
      contacts2 = [CNContactViewController viewControllerForUnknownContact:firstObject3];

      [contacts2 setDelegate:self];
      v15 = [[UINavigationController alloc] initWithRootViewController:contacts2];
      [(MPKeypadViewController *)self presentViewController:v15 animated:1 completion:0];
    }

LABEL_16:

    goto LABEL_17;
  }

  if (![(MPKeypadViewController *)self _anyContactsExist])
  {
    contacts2 = [(MPKeypadViewController *)self _newContactWithPhoneNumber:text];
    [(MPKeypadViewController *)self _addNewContact:contacts2];
    goto LABEL_16;
  }

  enableSmartDialer = [(MPKeypadViewController *)self enableSmartDialer];
  v18 = @"person.crop.circle";
  if (enableSmartDialer)
  {
    v18 = @"plus";
  }

  v19 = v18;
  enableSmartDialer2 = [(MPKeypadViewController *)self enableSmartDialer];
  v21 = @"person.crop.circle.badge.plus";
  if (enableSmartDialer2)
  {
    v21 = @"person.text.rectangle";
  }

  v31 = v21;
  v38 = [NSBundle bundleForClass:objc_opt_class()];
  v36 = [v38 localizedStringForKey:@"ADD_TO_NEW" value:&stru_50D80 table:@"Dialer"];
  v35 = [UIImage systemImageNamed:v19];

  v37 = [NSBundle bundleForClass:objc_opt_class()];
  v34 = [v37 localizedStringForKey:@"ADD_TO_NEW" value:&stru_50D80 table:@"Dialer"];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke;
  v40[3] = &unk_4C9C0;
  v40[4] = self;
  v41 = text;
  v33 = [UIAction actionWithTitle:v36 image:v35 identifier:v34 handler:v40];
  v42[0] = v33;
  v32 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v32 localizedStringForKey:@"ADD_TO_EXISTING" value:&stru_50D80 table:@"Dialer"];
  v23 = [UIImage systemImageNamed:v31];

  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"ADD_TO_EXISTING" value:&stru_50D80 table:@"Dialer"];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke_2;
  v39[3] = &unk_4C9E8;
  v39[4] = self;
  v26 = [UIAction actionWithTitle:v22 image:v23 identifier:v25 handler:v39];
  v42[1] = v26;
  v27 = [NSArray arrayWithObjects:v42 count:2];
  v28 = [UIMenu menuWithTitle:&stru_50D80 children:v27];

LABEL_18:
  delegate = [(MPKeypadViewController *)self delegate];
  [delegate didPressAddContactButton:3];

  return v28;
}

void __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didPressAddContactButton:1];

  v3 = *(a1 + 32);
  v4 = [v3 _newContactWithPhoneNumber:*(a1 + 40)];
  [v3 _addNewContact:v4];
}

void __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didPressAddContactButton:2];

  v4 = objc_alloc_init(CNContactPickerViewController);
  [v4 setAllowsCancel:1];
  [v4 setAutocloses:0];
  [v4 setDelegate:*(a1 + 32)];
  [v4 setMode:2];
  v3 = [NSPredicate predicateWithValue:1];
  [v4 setPredicateForSelectionOfContact:v3];

  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

- (id)_metadataNameForDialerText
{
  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  text = [lcdView text];

  if ([text length])
  {
    v5 = [TUMetadataDestinationID alloc];
    v6 = TUNetworkCountryCode();
    v7 = [v5 initWithDestinationID:text isoCountryCode:v6];

    if (v7)
    {
      metadataCache = [(MPKeypadViewController *)self metadataCache];
      v9 = [metadataCache metadataForDestinationID:v7];

      v10 = [v9 metadataForProvider:objc_opt_class()];

      if (v10 || ([v9 metadataForProvider:objc_opt_class()], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) || (objc_msgSend(v9, "metadataForProvider:", objc_opt_class()), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
        v12 = [v9 metadataForProvider:objc_opt_class()];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_metadataForDialerText
{
  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  text = [lcdView text];

  if ([text length])
  {
    v5 = [TUMetadataDestinationID alloc];
    v6 = TUNetworkCountryCode();
    v7 = [v5 initWithDestinationID:text isoCountryCode:v6];

    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v23 count:3];
    if (v7)
    {
      metadataCache = [(MPKeypadViewController *)self metadataCache];
      v10 = [metadataCache metadataForDestinationID:v7];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [v10 metadataDictForProvider:{*(*(&v18 + 1) + 8 * i), v18}];
            if (v15)
            {
              v12 = v15;

              v16 = v10;
              v10 = v11;
              v8 = v7;
              v7 = v12;
              goto LABEL_14;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v16 = v11;
LABEL_14:
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_metadataCacheDidUpdate
{
  _metadataForDialerText = [(MPKeypadViewController *)self _metadataForDialerText];
  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  identificationLabel = [_metadataForDialerText identificationLabel];
  source = [_metadataForDialerText source];
  [lcdView setName:identificationLabel numberLabel:0 source:source suggestion:1];
}

- (void)_updateNameAndRefreshResult:(BOOL)result
{
  resultCopy = result;
  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  [lcdView hideBusinessNameIfVisible];

  lcdView2 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    lcdView3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
    text = [lcdView3 text];

    if ([text length])
    {
      if ([(MPKeypadViewController *)self enableSmartDialer])
      {
        [(MPKeypadViewController *)self searchAndUpdateResultsFor:text shouldRefreshResult:resultCopy showPastedString:0];
      }

      else
      {
        v13 = [(DialerController *)self contactResultForPhoneNumber:text];
        contacts = [v13 contacts];
        v15 = [contacts count];

        if (v15)
        {
          localizedName = [v13 localizedName];
          contactLabel = [v13 contactLabel];
          lcdView4 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
          [lcdView4 setName:localizedName numberLabel:contactLabel suggestion:0];
        }

        else
        {
          lcdView5 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
          [lcdView5 setName:0 numberLabel:0 suggestion:0];

          [(MPKeypadViewController *)self _updateNameFromMetadataCache];
        }
      }

      [(MPKeypadViewController *)self updateIDSStatus];
    }

    else
    {
      [(MPKeypadViewController *)self _clearIDSStatusCache];
      enableSmartDialer = [(MPKeypadViewController *)self enableSmartDialer];
      lcdView6 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
      v12 = lcdView6;
      if (enableSmartDialer)
      {
        [lcdView6 setContactSearchResults:0 hasCompleteMatch:0];
      }

      else
      {
        [lcdView6 setName:0 numberLabel:0 suggestion:0];
      }
    }
  }

  [(DialerController *)self _stopLookupTimer];
}

- (void)_handleResultsUpdate:(id)update contactHasCompleteMatch:(BOOL)match businessResult:(id)result businessHasCompleteMatch:(BOOL)completeMatch businessHasMessageAction:(BOOL)action pastedString:(id)string
{
  actionCopy = action;
  completeMatchCopy = completeMatch;
  matchCopy = match;
  v14 = !completeMatch;
  updateCopy = update;
  resultCopy = result;
  stringCopy = string;
  dialerInterceptEnabled = [(TUFeatureFlags *)self->_featureFlags dialerInterceptEnabled];
  if (resultCopy)
  {
    v18 = 0;
  }

  else
  {
    v18 = v14;
  }

  if (v18 || !dialerInterceptEnabled)
  {
    lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
    [lcdView setContactSearchResults:updateCopy hasCompleteMatch:matchCopy];
  }

  else
  {
    if (matchCopy && [updateCopy count])
    {
      firstObject = [updateCopy firstObject];
      contact = [firstObject contact];
      lcdView = [CNContactFormatter stringFromContact:contact style:0];
    }

    else
    {
      lcdView = 0;
    }

    lcdView2 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
    [lcdView2 setBusinessSearchResult:resultCopy hasCompleteMatch:completeMatchCopy hasMessageAction:actionCopy nameOverride:lcdView];
  }

  if (![updateCopy count])
  {
    if ([stringCopy length])
    {
      lcdView3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
      v24 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"QUOTE_%@_QUOTE" value:&stru_50D80 table:@"Dialer"];
      stringCopy = [NSString localizedStringWithFormat:v25, stringCopy];
      [lcdView3 setName:stringCopy numberLabel:0];
    }

    else
    {
      [(MPKeypadViewController *)self _updateNameFromMetadataCache];
    }
  }
}

- (void)_updateNameFromMetadataCache
{
  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  text = [lcdView text];

  TUNetworkCountryCode();
  if (PNIsValidPhoneNumberForCountry())
  {
    _metadataForDialerText = [(MPKeypadViewController *)self _metadataForDialerText];
    identificationLabel = [_metadataForDialerText identificationLabel];
    if (identificationLabel)
    {
      lcdView2 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
      source = [_metadataForDialerText source];
      [lcdView2 setName:identificationLabel numberLabel:0 source:source suggestion:1];
    }

    else
    {
      [(MPKeypadViewController *)self _updateMetadataCacheIfPossible];
    }
  }
}

- (void)searchAndUpdateResultsFor:(id)for shouldRefreshResult:(BOOL)result showPastedString:(id)string
{
  resultCopy = result;
  forCopy = for;
  stringCopy = string;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__2;
  v53[4] = __Block_byref_object_dispose__2;
  v54 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__2;
  v49[4] = __Block_byref_object_dispose__2;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  unformattedNumberInLatin = [forCopy unformattedNumberInLatin];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke;
  v38[3] = &unk_4CA10;
  v41 = v53;
  v38[4] = self;
  v12 = forCopy;
  v39 = v12;
  v42 = v51;
  v13 = v10;
  v40 = v13;
  [(MPKeypadViewController *)self searchContactsFor:unformattedNumberInLatin shouldRefreshResult:resultCopy completionHandler:v38];

  if ([(TUFeatureFlags *)self->_featureFlags dialerInterceptEnabled])
  {
    dispatch_group_enter(v13);
    unformattedNumberInLatin2 = [v12 unformattedNumberInLatin];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_133;
    v33[3] = &unk_4C968;
    v35 = v49;
    v36 = v47;
    v37 = v45;
    v34 = v13;
    [(MPKeypadViewController *)self searchBusinessesFor:unformattedNumberInLatin2 completionHandler:v33];
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_135;
  v25[3] = &unk_4CA38;
  v27 = v43;
  v28 = v53;
  v29 = v51;
  v30 = v49;
  v31 = v47;
  v32 = v45;
  v25[4] = self;
  v26 = stringCopy;
  v15 = stringCopy;
  v16 = objc_retainBlock(v25);
  v17 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_2;
  block[3] = &unk_4CA60;
  v24 = v43;
  v18 = v16;
  v23 = v18;
  dispatch_after(v17, &_dispatch_main_q, block);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_3;
  v20[3] = &unk_4CA88;
  v21 = v18;
  v19 = v18;
  dispatch_group_notify(v13, &_dispatch_main_q, v20);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);
}

void __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = PHDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v9 = [*(a1 + 32) contactResultForPhoneNumber:*(a1 + 40)];
    v10 = [v9 contacts];
    *(*(*(a1 + 64) + 8) + 24) = [v10 count] != 0;

    if (*(*(*(a1 + 64) + 8) + 24) == 1 && ![*(*(*(a1 + 56) + 8) + 40) count])
    {
      v11 = [MPContactSearchResult alloc];
      v12 = [v9 contacts];
      v13 = [v12 firstObject];
      v14 = [v11 initWithContact:v13 matchInfo:0 preferredPhoneNumber:0];

      v18 = v14;
      v15 = [NSArray arrayWithObjects:&v18 count:1];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_133(uint64_t a1, void *a2, char a3, char a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = PHDefaultLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_133_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)searchContactsFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler
{
  resultCopy = result;
  handlerCopy = handler;
  forCopy = for;
  delegate = [(MPKeypadViewController *)self delegate];
  [delegate keyPadSearchFor:forCopy shouldRefreshResult:resultCopy completionHandler:handlerCopy];

  v12 = PHDefaultLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Cancelling previous contact search", v13, 2u);
  }
}

- (void)searchBusinessesFor:(id)for completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (([(TUFeatureFlags *)self->_featureFlags dialerInterceptEnabled]& 1) != 0)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__2;
    v16[4] = __Block_byref_object_dispose__2;
    v17 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __64__MPKeypadViewController_searchBusinessesFor_completionHandler___block_invoke;
    block[3] = &unk_4CAB0;
    v12 = v16;
    block[4] = self;
    v10 = forCopy;
    v13 = v14;
    v11 = handlerCopy;
    dispatch_async(v8, block);

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0);
  }
}

uint64_t __64__MPKeypadViewController_searchBusinessesFor_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _businessItemForNumber:*(a1 + 40) messageable:*(*(a1 + 64) + 8) + 24];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)setIsHostedInRemoteViewController:(BOOL)controller
{
  if (self->_isHostedInRemoteViewController != controller)
  {
    controllerCopy = controller;
    self->_isHostedInRemoteViewController = controller;
    dialerView = [(DialerController *)self dialerView];
    [dialerView setIsHostedInRemoteViewController:controllerCopy];
  }
}

- (void)refreshLocalizedSenderIdentity
{
  if (PHDeviceSupportsDualSim())
  {
    callProviderManager = [(DialerController *)self callProviderManager];
    callProviderManager2 = [(DialerController *)self callProviderManager];
    telephonyProvider = [callProviderManager2 telephonyProvider];
    identifier = [telephonyProvider identifier];
    v15 = [callProviderManager providerWithIdentifier:identifier];

    prioritizedSenderIdentities = [v15 prioritizedSenderIdentities];
    v8 = [prioritizedSenderIdentities count];

    if (v8 >= 2 && ([v15 prioritizedSenderIdentities], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "localizedName"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v9, v12))
    {
      prioritizedSenderIdentities2 = [v15 prioritizedSenderIdentities];
      firstObject = [prioritizedSenderIdentities2 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    [(MPKeypadViewController *)self updateLocalizedSenderIdentity:firstObject];
  }
}

- (void)handleSelectedSenderIdentity:(id)identity
{
  identityCopy = identity;
  selectedSenderIdentity = [(DialerController *)self selectedSenderIdentity];
  v5 = selectedSenderIdentity != identityCopy;

  simLineSelectionAnalyticsReporter = [(MPKeypadViewController *)self simLineSelectionAnalyticsReporter];
  [simLineSelectionAnalyticsReporter logSIMLineSelection:v5];

  [(MPKeypadViewController *)self updateLocalizedSenderIdentity:identityCopy];
}

- (void)updateLocalizedSenderIdentity:(id)identity
{
  identityCopy = identity;
  v5 = PHDefaultLog(identityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identityCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Updating to localizedSenderIdentity %@", &v8, 0xCu);
  }

  [(DialerController *)self setSelectedSenderIdentity:identityCopy];
  dialerView = [(DialerController *)self dialerView];
  lcdView = [dialerView lcdView];
  [lcdView setSenderIdentity:identityCopy];
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    v4 = objc_alloc_init(TUSenderIdentityClient);
    v5 = self->_senderIdentityClient;
    self->_senderIdentityClient = v4;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

- (void)_updateMetadataCacheIfPossible
{
  dialerView = [(DialerController *)self dialerView];
  lcdView = [dialerView lcdView];
  text = [lcdView text];

  if ([text length])
  {
    TUNetworkCountryCode();
    if (PNIsValidPhoneNumberForCountry())
    {
      v6 = [TUMetadataDestinationID alloc];
      v7 = TUNetworkCountryCode();
      v8 = [v6 initWithDestinationID:text isoCountryCode:v7];

      if (v8)
      {
        objc_initWeak(&location, self);
        metadataCache = [(MPKeypadViewController *)self metadataCache];
        v14 = v8;
        v10 = [NSArray arrayWithObjects:&v14 count:1];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = __56__MPKeypadViewController__updateMetadataCacheIfPossible__block_invoke;
        v11[3] = &unk_4CAD8;
        objc_copyWeak(&v12, &location);
        [metadataCache updateCacheWithDestinationIDs:v10 completion:v11];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __56__MPKeypadViewController__updateMetadataCacheIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _metadataCacheDidUpdate];
}

- (id)senderIdentityMenuForDialerView:(id)view selectedSenderIdentity:(id)identity
{
  identityCopy = identity;
  delegate = [(MPKeypadViewController *)self delegate];
  [delegate willPresentSimLineSwitcher];

  selfCopy = self;
  callProviderManager = [(DialerController *)self callProviderManager];
  telephonyProvider = [callProviderManager telephonyProvider];

  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
  v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [prioritizedSenderIdentities count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [telephonyProvider prioritizedSenderIdentities];
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"KEYPAD_CALL_WITH_SENDER_IDENTITY_%@" value:&stru_50D80 table:@"MPKeypad"];
        localizedName = [v14 localizedName];
        v18 = [NSString stringWithFormat:v16, localizedName];

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __81__MPKeypadViewController_senderIdentityMenuForDialerView_selectedSenderIdentity___block_invoke;
        v30[3] = &unk_4C9C0;
        v30[4] = selfCopy;
        v30[5] = v14;
        v19 = objc_retainBlock(v30);
        v20 = [UIAction actionWithTitle:v18 image:0 identifier:0 handler:v19];
        uUID = [v14 UUID];
        uUID2 = [identityCopy UUID];
        [v20 setState:uUID == uUID2];

        [v28 addObject:v20];
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"KEYPAD_CALL_WITH_SENDER_IDENTITY_TITLE" value:&stru_50D80 table:@"MPKeypad"];
  v25 = [UIMenu menuWithTitle:v24 children:v28];

  return v25;
}

- (void)_addNewContact:(id)contact
{
  v5 = [CNContactViewController viewControllerForNewContact:contact];
  [v5 setDelegate:self];
  v4 = [[UINavigationController alloc] initWithRootViewController:v5];
  [(MPKeypadViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_newContactWithPhoneNumber:(id)number
{
  v4 = objc_alloc_init(CNMutableContact);
  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  text = [lcdView text];
  v7 = [CNPhoneNumber phoneNumberWithStringValue:text];
  v8 = [CNLabeledValue labeledValueWithLabel:CNLabelPhoneNumberMobile value:v7];

  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  [v4 setPhoneNumbers:v9];

  return v4;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  [(MPKeypadViewController *)self _updateNameAndRefreshResult:1];
  presentedViewController = [(MPKeypadViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && !contact)
  {
    navigationController = [controllerCopy navigationController];
    v9 = [navigationController popViewControllerAnimated:1];
  }

  else
  {
    [(MPKeypadViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  dialerView = self->super._dialerView;
  contactCopy = contact;
  pickerCopy = picker;
  lcdView = [(PHAbstractDialerView *)dialerView lcdView];
  text = [lcdView text];
  v13 = [(MPKeypadViewController *)self _newContactWithPhoneNumber:text];

  v11 = [CNContactViewController viewControllerForUpdatingContact:contactCopy withPropertiesFromContact:v13];

  [v11 setDelegate:self];
  navigationController = [pickerCopy navigationController];

  [navigationController pushViewController:v11 animated:1];
}

- (id)pseudoNameStringForDestinationID:(id)d
{
  dCopy = d;
  v5 = [TUMetadataDestinationID alloc];
  v6 = TUNetworkCountryCode();
  v7 = [v5 initWithDestinationID:dCopy isoCountryCode:v6];

  if (v7)
  {
    metadataCache = [(MPKeypadViewController *)self metadataCache];
    v9 = [metadataCache metadataForDestinationID:v7];

    v10 = [v9 metadataForProvider:objc_opt_class()];

    if (v10 || ([v9 metadataForProvider:objc_opt_class()], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) || (objc_msgSend(v9, "metadataForProvider:", objc_opt_class()), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v12 = [v9 metadataForProvider:objc_opt_class()];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateIDSStatus
{
  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  text = [lcdView text];

  v6 = PHDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = text;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ is updating IDS status for text: %@", &v9, 0x16u);
  }

  v7 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
  v8 = TUCopyIDSCanonicalAddressForDestinationID();
  [(MPKeypadViewController *)self _updateIDSStatusIfNeededForService:IDSServiceNameFaceTime withDestination:v8];
}

- (void)_updateIDSStatusIfNeededForService:(id)service withDestination:(id)destination
{
  serviceCopy = service;
  destinationCopy = destination;
  v8 = [(MPKeypadViewController *)self _IDSStatusCacheKeyForService:serviceCopy withDestination:destinationCopy];
  iDSstatusCache = [(MPKeypadViewController *)self IDSstatusCache];
  v10 = [iDSstatusCache objectForKey:v8];

  if (!v10)
  {
    iDSstatusCache2 = [(MPKeypadViewController *)self IDSstatusCache];
    v12 = [NSNumber numberWithInteger:0];
    [iDSstatusCache2 setObject:v12 forKey:v8];

    v13 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke;
    block[3] = &unk_4CB00;
    v16 = destinationCopy;
    v17 = serviceCopy;
    v18 = v13;
    selfCopy = self;
    v20 = v8;
    v14 = v13;
    dispatch_async(v14, block);
  }
}

void __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke(void *a1)
{
  v2 = +[IDSIDQueryController sharedInstance];
  v3 = a1[4];
  v4 = a1[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke_2;
  v7[3] = &unk_4C7C0;
  v5 = a1[6];
  v6 = a1[8];
  v7[4] = a1[7];
  v8 = v6;
  [v2 currentIDStatusForDestination:v3 service:v4 listenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" queue:v5 completionBlock:v7];
}

void __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) IDSstatusCache];
  v5 = [v4 objectForKey:*(a1 + 40)];

  if (v5)
  {
    v7 = [NSNumber numberWithInteger:a2];
    v6 = [*(a1 + 32) IDSstatusCache];
    [v6 setObject:v7 forKey:*(a1 + 40)];
  }
}

- (int64_t)_IDSStatusForService:(id)service withDestination:(id)destination
{
  destinationCopy = destination;
  serviceCopy = service;
  [(MPKeypadViewController *)self _updateIDSStatusIfNeededForService:serviceCopy withDestination:destinationCopy];
  v8 = [(MPKeypadViewController *)self _IDSStatusCacheKeyForService:serviceCopy withDestination:destinationCopy];

  iDSstatusCache = [(MPKeypadViewController *)self IDSstatusCache];
  v10 = [iDSstatusCache objectForKey:v8];

  if (!v10)
  {
    v10 = [NSNumber numberWithInteger:0];
  }

  integerValue = [v10 integerValue];

  return integerValue;
}

- (void)_clearIDSStatusCache
{
  iDSstatusCache = [(MPKeypadViewController *)self IDSstatusCache];
  [iDSstatusCache removeAllObjects];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  callContextMenuInteraction = [(MPKeypadViewController *)self callContextMenuInteraction];

  if (callContextMenuInteraction == interactionCopy)
  {
    dialerView = [(DialerController *)selfCopy dialerView];
    lcdView = [dialerView lcdView];
    text = [lcdView text];

    if (text)
    {
      v8 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
    }

    else
    {
      v8 = 0;
    }

    v59 = +[NSMutableArray array];
    if (v8 && [v8 length])
    {
      v51 = v8;
      v53 = TUCopyIDSCanonicalAddressForDestinationID();
      v13 = TelephonyUIBundle();
      v14 = [UIImage tpImageNamed:@"action_call-OrbHW" inBundle:v13];
      v58 = [v14 imageWithRenderingMode:2];

      v15 = TelephonyUIBundle();
      v16 = [UIImage tpImageNamed:@"action_facetime-OrbHW" inBundle:v15];
      v54 = [v16 imageWithRenderingMode:2];

      callProviderManager = [(DialerController *)selfCopy callProviderManager];
      faceTimeProvider = [callProviderManager faceTimeProvider];

      callProviderManager2 = [(DialerController *)selfCopy callProviderManager];
      telephonyProvider = [callProviderManager2 telephonyProvider];

      v21 = +[NSMutableArray array];
      v22 = v21;
      if (telephonyProvider)
      {
        [v21 addObject:telephonyProvider];
      }

      v49 = telephonyProvider;
      v52 = interactionCopy;
      if (faceTimeProvider && [(MPKeypadViewController *)selfCopy _IDSStatusForService:IDSServiceNameFaceTime withDestination:v53]== &dword_0 + 1)
      {
        [v22 addObject:faceTimeProvider];
      }

      v50 = faceTimeProvider;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v22;
      v23 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v67;
        v26 = OBJC_CLASS___CPKeyView_ptr;
        v27 = OBJC_CLASS___CPKeyView_ptr;
        v55 = *v67;
        do
        {
          v28 = 0;
          v56 = v24;
          do
          {
            if (*v67 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v66 + 1) + 8 * v28);
            if ([v29 isTelephonyProvider])
            {
              v30 = [*(v26 + 1144) bundleForClass:objc_opt_class()];
              v31 = [v30 localizedStringForKey:@"CALL" value:&stru_50D80 table:@"MPKeypad"];
              v65[0] = _NSConcreteStackBlock;
              v65[1] = 3221225472;
              v65[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
              v65[3] = &unk_4C9C0;
              v65[4] = selfCopy;
              v65[5] = v29;
              v32 = [UIAction actionWithTitle:v31 image:v58 identifier:0 handler:v65];

              [v59 addObject:v32];
              goto LABEL_33;
            }

            if ([v29 isFaceTimeProvider])
            {
              v33 = +[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls];
              v34 = v26;
              LODWORD(v26) = +[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls];
              v35 = [*(v34 + 1144) bundleForClass:objc_opt_class()];
              v36 = [v35 localizedStringForKey:@"KEYPAD_FACETIME_AUDIO" value:&stru_50D80 table:@"MPKeypad"];

              v37 = [*(v34 + 1144) bundleForClass:objc_opt_class()];
              v38 = [v37 localizedStringForKey:@"KEYPAD_FACETIME_VIDEO" value:&stru_50D80 table:@"MPKeypad"];

              if (!v33)
              {
                if (!v26)
                {
                  goto LABEL_32;
                }

LABEL_31:
                v63[0] = _NSConcreteStackBlock;
                v63[1] = 3221225472;
                v63[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
                v63[3] = &unk_4C9C0;
                v63[4] = selfCopy;
                v63[5] = v29;
                v47 = [UIAction actionWithTitle:v38 image:v54 identifier:0 handler:v63];
                [v59 addObject:v47];

                goto LABEL_32;
              }
            }

            else
            {
              v39 = [*(v26 + 1144) bundleForClass:objc_opt_class()];
              [v39 localizedStringForKey:@"KEYPAD_CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_AUDIO" value:&stru_50D80 table:@"MPKeypad"];
              v40 = v27;
              v42 = v41 = v26;
              localizedName = [v29 localizedName];
              v36 = [NSString stringWithFormat:v42, localizedName, v49, v50];

              if ([v29 supportsAudioAndVideo])
              {
                v44 = [*(v41 + 1144) bundleForClass:objc_opt_class()];
                v26 = [v44 localizedStringForKey:@"KEYPAD_CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_VIDEO" value:&stru_50D80 table:@"MPKeypad"];
                localizedName2 = [v29 localizedName];
                v38 = [NSString stringWithFormat:v26, localizedName2];

                LOBYTE(v26) = 1;
              }

              else
              {
                v38 = 0;
                LOBYTE(v26) = 0;
              }

              v27 = v40;
            }

            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
            v64[3] = &unk_4C9C0;
            v64[4] = selfCopy;
            v64[5] = v29;
            v46 = [UIAction actionWithTitle:v36 image:v58 identifier:0 handler:v64];
            [v59 addObject:v46];

            if (v26)
            {
              goto LABEL_31;
            }

LABEL_32:

            v25 = v55;
            v24 = v56;
            v26 = 311296;
LABEL_33:
            v28 = v28 + 1;
          }

          while (v24 != v28);
          v24 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v24);
      }

      v8 = v51;
      interactionCopy = v52;
    }

    if ([v59 count])
    {
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
      v61[3] = &unk_4CB28;
      v61[4] = selfCopy;
      v62 = v59;
      v9 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v61];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_40;
  }

  v8 = PHDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MPKeypadViewController contextMenuInteraction:configurationForMenuAtLocation:];
  }

  v9 = 0;
LABEL_40:

  return v9;
}

id __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) dialerView];
  v3 = [v2 lcdView];
  v4 = [v3 text];
  v5 = [UIMenu menuWithTitle:v4 children:*(a1 + 40)];

  return v5;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  callContextMenuInteraction = [(MPKeypadViewController *)self callContextMenuInteraction];

  if (callContextMenuInteraction == interactionCopy)
  {
    v10 = objc_alloc_init(UIPreviewParameters);
    dialerView = [(DialerController *)self dialerView];
    callButton = [dialerView callButton];
    [callButton bounds];
    v14 = v13;
    dialerView2 = [(DialerController *)self dialerView];
    callButton2 = [dialerView2 callButton];
    [callButton2 bounds];
    v17 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v14];
    [v10 setVisiblePath:v17];

    v18 = [UITargetedPreview alloc];
    dialerView3 = [(DialerController *)self dialerView];
    callButton3 = [dialerView3 callButton];
    v9 = [v18 initWithView:callButton3 parameters:v10];
  }

  else
  {
    v8 = PHDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MPKeypadViewController contextMenuInteraction:previewForHighlightingMenuWithConfiguration:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  v5 = PHDefaultLog(managerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = managerCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling providersChangedForProviderManager %@", &v6, 0x16u);
  }

  [(DialerController *)self updateDialerViewDualSimMenu];
  [(MPKeypadViewController *)self refreshLocalizedSenderIdentity];
}

- (void)searchButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(MPKeypadViewController *)self delegate];
  lcdView = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  text = [lcdView text];
  unformattedNumber = [text unformattedNumber];
  [delegate didPressSearchButton:pressedCopy unformattedNumber:unformattedNumber];
}

- (void)presentContactsSearchFor:(id)for
{
  forCopy = for;
  delegate = [(MPKeypadViewController *)self delegate];
  [delegate presentContactsSearchFor:forCopy];
}

- (void)presentAppleSupportGuidedHelp
{
  delegate = [(MPKeypadViewController *)self delegate];
  [delegate presentAppleSupportGuidedHelp];
}

- (id)_businessItemForNumber:(id)number messageable:(BOOL *)messageable
{
  numberCopy = number;
  if ([numberCopy length] && (-[MPKeypadViewController bizService](self, "bizService"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = dispatch_group_create();
    v26 = 0;
    v27[0] = &v26;
    v27[1] = 0x3032000000;
    v27[2] = __Block_byref_object_copy__2;
    v27[3] = __Block_byref_object_dispose__2;
    v28 = 0;
    v23 = 0;
    v24[0] = &v23;
    v24[1] = 0x2020000000;
    v25 = 0;
    brandManager = [(MPKeypadViewController *)self brandManager];

    if (brandManager)
    {
      dispatch_group_enter(v8);
      brandManager2 = [(MPKeypadViewController *)self brandManager];
      v11 = BSBrandServiceTypeOnDeviceSupport;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke;
      v18[3] = &unk_4CB78;
      v18[4] = self;
      v19 = numberCopy;
      v21 = &v26;
      v22 = &v23;
      v20 = v8;
      [brandManager2 isBrandRegisteredWithIdentifier:v19 forService:v11 completion:v18];
    }

    v12 = dispatch_time(0, 1000000000);
    v13 = dispatch_group_wait(v8, v12);
    if (v13)
    {
      v14 = PHDefaultLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MPKeypadViewController _businessItemForNumber:v14 messageable:?];
      }

      v15 = 0;
    }

    else
    {
      v16 = PHDefaultLog(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(MPKeypadViewController *)v27 _businessItemForNumber:v24 messageable:v16];
      }

      if (messageable)
      {
        *messageable = *(v24[0] + 24);
      }

      v15 = *(v27[0] + 40);
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 || !a2)
  {
    v9 = *(a1 + 48);

    dispatch_group_leave(v9);
  }

  else
  {
    v4 = [*(a1 + 32) bizService];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2;
    v12[3] = &unk_4CB50;
    v10 = *(a1 + 56);
    v5 = *(a1 + 40);
    *&v6 = v10;
    *(&v6 + 1) = *(a1 + 64);
    v11 = v6;
    v7 = *(a1 + 48);
    *&v8 = v5;
    *(&v8 + 1) = v7;
    v13 = v8;
    v14 = v11;
    [v4 fetchBusinessItemForPhoneNumber:v5 completion:v12];
  }
}

void __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = PHDefaultLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2_cold_1();
    }

    LOBYTE(v16) = 0;
    v12 = [[BCSBusinessItem alloc] initWithBizID:0 phoneNumber:*(a1 + 32) name:@"Apple Support" phoneHash:0 squareLogoURL:0 wideLogoURL:0 tintColor:0 backgroundColor:0 callToActions:0 messagingOpenHours:0 callingOpenHours:0 isVerified:v16 intentID:0 groupID:0 visibilityItems:0];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    if (v8)
    {
      v15 = a3;
    }

    else
    {
      v15 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v15;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (MPKeyPadViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_businessItemForNumber:(os_log_t)log messageable:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 40) != 0;
  v4 = *(*a2 + 24);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Phone number properties business:%d messageable:%d", v5, 0xEu);
}

@end