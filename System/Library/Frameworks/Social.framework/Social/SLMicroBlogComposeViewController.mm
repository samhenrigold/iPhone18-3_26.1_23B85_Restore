@interface SLMicroBlogComposeViewController
- (BOOL)_countMediaAttachmentsTowardCharacterCount;
- (BOOL)isContentValid;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (SLMicroBlogComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SLMicroBlogSheetDelegate)microBlogSheetDelegate;
- (id)_accountConfigurationItem;
- (id)_locationConfigurationItem;
- (id)_mentionsSearchString;
- (id)_placeViewController;
- (id)completeText:(id)text withAttachments:(id)attachments;
- (id)configurationItems;
- (int)_charactersRemainingWithText:(id)text;
- (int)characterCountForEnteredText:(id)text attachments:(id)attachments;
- (int64_t)_characterCountForText:(id)text;
- (void)_beginLoadingAccountProfileImages;
- (void)_dismissMentionsViewController;
- (void)_hostApplicationDidEnterBackground;
- (void)_hostApplicationWillEnterForeground;
- (void)_performLocationAction;
- (void)_presentAccountPickerController;
- (void)_presentMentionsViewControllerIfApplicableForSearchString:(id)string;
- (void)_presentMentionsViewControllerWithSearchString:(id)string;
- (void)_presentNoAccountsAlertIfNecessaryAndReady;
- (void)_presentPlaceViewController;
- (void)accountsViewController:(id)controller didSelectAccountUserRecord:(id)record;
- (void)applyMention:(id)mention;
- (void)didSelectPost;
- (void)loadView;
- (void)mentionsViewController:(id)controller finishedWithResult:(id)result;
- (void)noteLocationInfoChanged:(id)changed;
- (void)placeViewController:(id)controller willDisappear:(BOOL)disappear;
- (void)presentationAnimationDidFinish;
- (void)setGeotagStatus:(int)status;
- (void)setMicroBlogSheetDelegate:(id)delegate;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)updateGeotagStatus;
- (void)updateShortenedURLCost;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SLMicroBlogComposeViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v4 loadView];
  textView = [(SLComposeServiceViewController *)self textView];
  [textView setKeyboardType:9];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v13 viewDidAppear:appear];
  [(SLMicroBlogComposeViewController *)self updateShortenedURLCost];
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [microBlogSheetDelegate beginPotentialLocationUse];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __50__SLMicroBlogComposeViewController_viewDidAppear___block_invoke;
  v10 = &unk_1E8175FB0;
  objc_copyWeak(&v11, &location);
  v5 = MEMORY[0x1C6917BF0](&v7);
  v6 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate:v7];
  [v6 setLocationInformationChangedBlock:v5];

  [(SLMicroBlogComposeViewController *)self updateGeotagStatus];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__SLMicroBlogComposeViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained noteLocationInfoChanged:v3];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v5 viewWillDisappear:disappear];
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [microBlogSheetDelegate endPotentialLocationUse];
}

- (void)_beginLoadingAccountProfileImages
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = self->_serviceAccountTypeIdentifier;
  _SLLog(v2, 7, @"MicroBlog for %@ – _beginLoadingAccountProfileImages", v5, v6, v7, v8, v9, v4);
  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);
  objc_initWeak(&location, self->_accountViewController);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_accountUserRecords;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        profileImageCache = [v14 profileImageCache];
        v16 = profileImageCache == 0;

        if (v16)
        {
          screen_name = [v14 screen_name];
          _SLLog(v2, 7, @"MicroBlog for %@ – fetching profile image for %@", v17, v18, v19, v20, v21, v4);

          screen_name2 = [v14 screen_name];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __69__SLMicroBlogComposeViewController__beginLoadingAccountProfileImages__block_invoke;
          v25[3] = &unk_1E8176000;
          v26 = v4;
          v27 = v14;
          objc_copyWeak(&v28, &location);
          [WeakRetained fetchProfileImageDataForScreenName:screen_name2 completion:v25];

          objc_destroyWeak(&v28);
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  objc_destroyWeak(&location);
}

void __69__SLMicroBlogComposeViewController__beginLoadingAccountProfileImages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v14 = [*(a1 + 40) screen_name];
  if (!v6 || v7)
  {
    _SLLog(v3, 7, @"MicroBlog for %@ – failed to get profile image data for %@ with error %{public}@", v9, v10, v11, v12, v13, v8);
  }

  else
  {
    _SLLog(v3, 7, @"MicroBlog for %@ – got profile image data for %@", v9, v10, v11, v12, v13, v8);

    v15 = [MEMORY[0x1E69DCAB8] imageWithData:v6];
    [*(a1 + 40) setProfileImageCache:v15];

    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) profileImageCache];
    v23 = [*(a1 + 40) screen_name];
    _SLLog(v3, 7, @"MicroBlog for %@ – built profile image %@ for %@", v18, v19, v20, v21, v22, v16);

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__SLMicroBlogComposeViewController__beginLoadingAccountProfileImages__block_invoke_2;
    block[3] = &unk_1E8175FD8;
    objc_copyWeak(&v25, (a1 + 48));
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v25);
  }
}

void __69__SLMicroBlogComposeViewController__beginLoadingAccountProfileImages__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didUpdateAccountUserRecord:*(a1 + 32)];
}

- (void)_presentAccountPickerController
{
  _SLLog(v7, 7, @"MicroBlog for %@ – _presentAccountPickerController", v2, v3, v4, v5, v6, self->_serviceAccountTypeIdentifier);
  v9 = objc_alloc_init(SLMicroBlogAccountsTableViewController);
  accountViewController = self->_accountViewController;
  self->_accountViewController = v9;

  [(SLMicroBlogAccountsTableViewController *)self->_accountViewController setSelectionDelegate:self];
  [(SLMicroBlogComposeViewController *)self _beginLoadingAccountProfileImages];
  [(SLMicroBlogAccountsTableViewController *)self->_accountViewController setAccountUserRecords:self->_accountUserRecords];
  [(SLMicroBlogAccountsTableViewController *)self->_accountViewController setCurrentAccountUserRecord:self->_selectedAccountUserRecord];
  v11 = self->_accountViewController;

  [(SLComposeServiceViewController *)self pushConfigurationViewController:v11];
}

- (void)accountsViewController:(id)controller didSelectAccountUserRecord:(id)record
{
  recordCopy = record;
  _SLLog(v4, 7, @"MicroBlog for %@ – didSelectAccountUserRecord %@", v6, v7, v8, v9, v10, self->_serviceAccountTypeIdentifier);
  selectedAccountUserRecord = self->_selectedAccountUserRecord;
  self->_selectedAccountUserRecord = recordCopy;
  v12 = recordCopy;

  screen_name = [(SLMicroBlogUserRecord *)self->_selectedAccountUserRecord screen_name];
  [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setValue:screen_name];

  v16 = [(NSArray *)self->_accountIdentifiers objectAtIndex:[(NSArray *)self->_accountUserRecords indexOfObject:v12]];

  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);
  [WeakRetained setActiveAccountIdentifier:v16];
  [(SLComposeServiceViewController *)self popConfigurationViewController];
}

- (id)_accountConfigurationItem
{
  accountUserRecords = self->_accountUserRecords;
  if (accountUserRecords)
  {
    v5 = [(NSArray *)accountUserRecords count];
    _SLLog(v2, 7, @"MicroBlog for %@ – got countOfAccounts %d from _accountUserRecords", v6, v7, v8, v9, v10, self->_serviceAccountTypeIdentifier);
  }

  else
  {
    v5 = [MEMORY[0x1E6959A48] countOfAccountsWithAccountTypeIdentifier:self->_serviceAccountTypeIdentifier];
    _SLLog(v2, 7, @"MicroBlog for %@ – got countOfAccounts %d from account store cache", v11, v12, v13, v14, v15, self->_serviceAccountTypeIdentifier);
    if (v5 == -1)
    {
      v16 = objc_alloc_init(MEMORY[0x1E6959A48]);
      [v16 updateExistenceCacheOfAccountWithTypeIdentifier:self->_serviceAccountTypeIdentifier];
      v17 = [v16 accountTypeWithAccountTypeIdentifier:self->_serviceAccountTypeIdentifier];
      v18 = [v16 accountsWithAccountType:v17];
      v5 = [v18 count];

      _SLLog(v2, 7, @"MicroBlog for %@ – got countOfAccounts %d from account store", v19, v20, v21, v22, v23, self->_serviceAccountTypeIdentifier);
    }
  }

  accountConfigurationItem = self->_accountConfigurationItem;
  if (v5 < 2)
  {
    self->_accountConfigurationItem = 0;
  }

  else if (!accountConfigurationItem)
  {
    objc_initWeak(&location, self);
    v25 = objc_alloc_init(SLComposeSheetConfigurationItem);
    v26 = self->_accountConfigurationItem;
    self->_accountConfigurationItem = v25;

    v28 = SLSocialFrameworkBundle(v27);
    v29 = [v28 localizedStringForKey:@"ACCOUNT_LABEL_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
    [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setTitle:v29];

    [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setValue:&stru_1F41EC300];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __61__SLMicroBlogComposeViewController__accountConfigurationItem__block_invoke;
    v33[3] = &unk_1E8175C10;
    objc_copyWeak(&v34, &location);
    [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setTapHandler:v33];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  if (self->_accountConfigurationItem)
  {
    screen_name = [(SLMicroBlogUserRecord *)self->_selectedAccountUserRecord screen_name];
    [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setValue:screen_name];

    v31 = self->_accountConfigurationItem;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void __61__SLMicroBlogComposeViewController__accountConfigurationItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAccountPickerController];
}

- (void)_performLocationAction
{
  if (self->_currentPlace)
  {

    [(SLMicroBlogComposeViewController *)self _presentPlaceViewController];
  }

  else
  {
    microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
    [microBlogSheetDelegate setGeotagStatus:1];

    [(SLMicroBlogComposeViewController *)self setGeotagStatus:1];
  }
}

- (id)_locationConfigurationItem
{
  locationConfigurationItem = self->_locationConfigurationItem;
  if (!locationConfigurationItem)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(SLComposeSheetConfigurationItem);
    v5 = self->_locationConfigurationItem;
    self->_locationConfigurationItem = v4;

    v7 = SLSocialFrameworkBundle(v6);
    v8 = [v7 localizedStringForKey:@"SHEET_LOCATION_ACTION_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
    [(SLComposeSheetConfigurationItem *)self->_locationConfigurationItem setTitle:v8];

    v10 = SLSocialFrameworkBundle(v9);
    v11 = [v10 localizedStringForKey:@"SHEET_LOCATION_NO_VALUE" value:&stru_1F41EC300 table:@"Localizable"];
    [(SLComposeSheetConfigurationItem *)self->_locationConfigurationItem setValue:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__SLMicroBlogComposeViewController__locationConfigurationItem__block_invoke;
    v13[3] = &unk_1E8175C10;
    objc_copyWeak(&v14, &location);
    [(SLComposeSheetConfigurationItem *)self->_locationConfigurationItem setTapHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    locationConfigurationItem = self->_locationConfigurationItem;
  }

  return locationConfigurationItem;
}

void __62__SLMicroBlogComposeViewController__locationConfigurationItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performLocationAction];
}

- (id)configurationItems
{
  v3 = objc_opt_new();
  _accountConfigurationItem = [(SLMicroBlogComposeViewController *)self _accountConfigurationItem];
  if (_accountConfigurationItem)
  {
    [v3 addObject:_accountConfigurationItem];
  }

  _locationConfigurationItem = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
  if (self->_locationConfigurationItem)
  {
    [v3 addObject:_locationConfigurationItem];
  }

  return v3;
}

- (SLMicroBlogSheetDelegate)microBlogSheetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);

  return WeakRetained;
}

- (void)setMicroBlogSheetDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_microBlogSheetDelegate, delegateCopy);
    serviceAccountTypeIdentifier = [delegateCopy serviceAccountTypeIdentifier];
    serviceAccountTypeIdentifier = self->_serviceAccountTypeIdentifier;
    self->_serviceAccountTypeIdentifier = serviceAccountTypeIdentifier;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__SLMicroBlogComposeViewController_setMicroBlogSheetDelegate___block_invoke;
    v8[3] = &unk_1E8176050;
    v9 = delegateCopy;
    selfCopy = self;
    [v9 fetchSessionInfo:v8];
  }
}

void __62__SLMicroBlogComposeViewController_setMicroBlogSheetDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__SLMicroBlogComposeViewController_setMicroBlogSheetDelegate___block_invoke_2;
  v10[3] = &unk_1E8176028;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __62__SLMicroBlogComposeViewController_setMicroBlogSheetDelegate___block_invoke_2(id *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [a1[4] serviceAccountTypeIdentifier];
  _SLLog(v1, 7, @"MicroBlog for %@ – fetched session info %@\nand got error %{public}@", v4, v5, v6, v7, v8, v3);

  v9 = [a1[5] objectForKey:@"accountEntries"];
  v10 = a1[7];
  v11 = v10[153];
  v12 = MEMORY[0x1E695E0F0];
  v10[153] = MEMORY[0x1E695E0F0];

  v13 = a1[7];
  v14 = v13[154];
  v13[154] = v12;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = *(a1[7] + 154);
        v21 = [v19 objectForKeyedSubscript:@"identifier"];
        v22 = [v20 arrayByAddingObject:v21];
        v23 = a1[7];
        v24 = v23[154];
        v23[154] = v22;

        v25 = objc_alloc_init(SLMicroBlogUserRecord);
        v26 = [v19 objectForKeyedSubscript:@"accountDescription"];
        [(SLMicroBlogUserRecord *)v25 setScreen_name:v26];

        v27 = [*(a1[7] + 153) arrayByAddingObject:v25];
        v28 = a1[7];
        v29 = v28[153];
        v28[153] = v27;

        v30 = [v19 objectForKeyedSubscript:@"active"];
        LODWORD(v26) = [v30 BOOLValue];

        if (v26)
        {
          objc_storeStrong(a1[7] + 155, v25);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v16);
  }

  [a1[7] reloadConfigurationItems];
  [a1[7] _presentNoAccountsAlertIfNecessaryAndReady];
}

- (void)presentationAnimationDidFinish
{
  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);
  [WeakRetained stopDeferringExpensiveOperations];
  [(SLMicroBlogComposeViewController *)self _presentNoAccountsAlertIfNecessaryAndReady];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained ensureUserRecordStore];
  }
}

- (void)_presentNoAccountsAlertIfNecessaryAndReady
{
  if ([(SLComposeServiceViewController *)self wasPresented])
  {
    accountUserRecords = self->_accountUserRecords;
    if (accountUserRecords)
    {
      if (![(NSArray *)accountUserRecords count])
      {
        _SLLog(v2, 7, @"MicroBlog for %@ – presenting no accounts alert", v5, v6, v7, v8, v9, self->_serviceAccountTypeIdentifier);

        [(SLMicroBlogComposeViewController *)self presentNoAccountsAlert];
      }
    }
  }
}

- (SLMicroBlogComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SLMicroBlogComposeViewController;
  v4 = [(SLComposeServiceViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_shortenedURLCost = 22;
    v4->_maxURLLength = -1;
    [(SLComposeServiceViewController *)v4 setMaxImageAttachmentSize:307200];
  }

  return v5;
}

- (void)_hostApplicationWillEnterForeground
{
  _SLLog(v7, 7, @"SLMicroBlogComposeViewController _hostApplicationWillEnterForeground", v2, v3, v4, v5, v6, v10.receiver);
  v10.receiver = self;
  v10.super_class = SLMicroBlogComposeViewController;
  [(SLMicroBlogComposeViewController *)&v10 _hostApplicationWillEnterForeground];
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [microBlogSheetDelegate beginPotentialLocationUse];
}

- (void)_hostApplicationDidEnterBackground
{
  _SLLog(v7, 7, @"SLMicroBlogComposeViewController _hostApplicationDidEnterBackground", v2, v3, v4, v5, v6, v10.receiver);
  v10.receiver = self;
  v10.super_class = SLMicroBlogComposeViewController;
  [(SLMicroBlogComposeViewController *)&v10 _hostApplicationDidEnterBackground];
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [microBlogSheetDelegate endPotentialLocationUse];
}

- (int)_charactersRemainingWithText:(id)text
{
  textCopy = text;
  attachments = [(SLComposeServiceViewController *)self attachments];
  LODWORD(self) = [(SLMicroBlogComposeViewController *)self characterCountForEnteredText:textCopy attachments:attachments];

  return 140 - self;
}

- (BOOL)isContentValid
{
  v34 = *MEMORY[0x1E69E9840];
  maxURLLength = self->_maxURLLength;
  if (maxURLLength == -1)
  {
    v14 = 1;
  }

  else
  {
    _SLLog(v7, 7, @"_maxURLLength is %i", v2, v3, v4, v5, v6, maxURLLength);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    attachments = [(SLComposeServiceViewController *)self attachments];
    v11 = [attachments countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      v14 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(attachments);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if ([v16 type] == 4 || objc_msgSend(v16, "type") == 5 || objc_msgSend(v16, "type") == 6 || objc_msgSend(v16, "type") == 7)
          {
            payload = [v16 payload];
            absoluteString = [payload absoluteString];
            v19 = [absoluteString length] <= self->_maxURLLength;

            v14 &= v19;
          }
        }

        v12 = [attachments countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = 1;
    }
  }

  textView = [(SLComposeServiceViewController *)self textView];
  text = [textView text];
  if ([text length])
  {
  }

  else
  {
    attachments2 = [(SLComposeServiceViewController *)self attachments];
    v23 = [attachments2 count] != 0;

    v14 &= v23;
  }

  textView2 = [(SLComposeServiceViewController *)self textView];
  text2 = [textView2 text];
  v26 = [(SLMicroBlogComposeViewController *)self _charactersRemainingWithText:text2];

  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  [(SLComposeServiceViewController *)self setCharactersRemaining:v27];

  return (v26 >= 0) & v14;
}

- (id)completeText:(id)text withAttachments:(id)attachments
{
  v21 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  v6 = [text mutableCopy];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = attachmentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 type] == 4 || objc_msgSend(v12, "type") == 5 || objc_msgSend(v12, "type") == 6 || objc_msgSend(v12, "type") == 7)
        {
          if ([v6 length])
          {
            [v6 appendString:@" "];
          }

          payload = [v12 payload];
          absoluteString = [payload absoluteString];
          [v6 appendString:absoluteString];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (int64_t)_characterCountForText:(id)text
{
  textCopy = text;
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    microBlogSheetDelegate2 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
    v8 = [microBlogSheetDelegate2 characterCountForText:textCopy shortenedURLCost:self->_shortenedURLCost];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_countMediaAttachmentsTowardCharacterCount
{
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  microBlogSheetDelegate2 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  countMediaAttachmentsTowardCharacterCount = [microBlogSheetDelegate2 countMediaAttachmentsTowardCharacterCount];

  return countMediaAttachmentsTowardCharacterCount;
}

- (int)characterCountForEnteredText:(id)text attachments:(id)attachments
{
  v20 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  v7 = [(SLMicroBlogComposeViewController *)self completeText:text withAttachments:attachmentsCopy];
  v8 = [(SLMicroBlogComposeViewController *)self _characterCountForText:v7];
  if ([(SLMicroBlogComposeViewController *)self _countMediaAttachmentsTowardCharacterCount])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = attachmentsCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (([*(*(&v15 + 1) + 8 * i) type] & 0xFFFFFFFFFFFFFFFCLL) != 4)
          {
            v8 += LODWORD(self->_shortenedURLCost) + 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (void)updateShortenedURLCost
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SLMicroBlogComposeViewController_updateShortenedURLCost__block_invoke;
  v5[3] = &unk_1E81760A0;
  v5[4] = self;
  v3 = MEMORY[0x1C6917BF0](v5, a2);
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [microBlogSheetDelegate fetchCurrentUrlLimits:v3];
}

void __58__SLMicroBlogComposeViewController_updateShortenedURLCost__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__SLMicroBlogComposeViewController_updateShortenedURLCost__block_invoke_2;
  v10[3] = &unk_1E8176078;
  v13 = a2;
  v14 = a3;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __58__SLMicroBlogComposeViewController_updateShortenedURLCost__block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _SLLog(v8, 7, @"updateShortenedURLCost got tcoLength %d maxURLLength %d error %{public}@", a4, a5, a6, a7, a8, a1[6]);
  if (!a1[4])
  {
    *(a1[5] + 1288) = a1[6];
    *(a1[5] + 1296) = a1[7];
  }

  v10 = a1[5];

  return [v10 validateContent];
}

- (void)_presentPlaceViewController
{
  if (!self->_isPresentingPlaces)
  {
    _placeViewController = [(SLMicroBlogComposeViewController *)self _placeViewController];
    [(SLComposeServiceViewController *)self pushConfigurationViewController:_placeViewController];

    self->_isPresentingPlaces = 1;
  }
}

- (void)updateGeotagStatus
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SLMicroBlogComposeViewController_updateGeotagStatus__block_invoke;
  v5[3] = &unk_1E81760F0;
  v5[4] = self;
  v3 = MEMORY[0x1C6917BF0](v5, a2);
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [microBlogSheetDelegate fetchGeotagStatus:v3];
}

void __54__SLMicroBlogComposeViewController_updateGeotagStatus__block_invoke(uint64_t a1, int a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__SLMicroBlogComposeViewController_updateGeotagStatus__block_invoke_2;
  v2[3] = &unk_1E81760C8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __54__SLMicroBlogComposeViewController_updateGeotagStatus__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _SLLog(v8, 6, @"Geotag status updated to %i", a4, a5, a6, a7, a8, *(a1 + 40));
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);

  return [v10 setGeotagStatus:v11];
}

- (id)_placeViewController
{
  placeViewController = self->_placeViewController;
  if (!placeViewController)
  {
    v4 = [SLSheetPlaceViewController alloc];
    serviceBundle = [objc_opt_class() serviceBundle];
    v6 = [(SLSheetPlaceViewController *)v4 initWithPlaceDataSource:0 effectiveBundle:serviceBundle];
    v7 = self->_placeViewController;
    self->_placeViewController = v6;

    [(SLSheetPlaceViewController *)self->_placeViewController setSelectionDelegate:self];
    [(SLSheetPlaceViewController *)self->_placeViewController setSearchEnabled:0];
    placeViewController = self->_placeViewController;
  }

  return placeViewController;
}

- (void)placeViewController:(id)controller willDisappear:(BOOL)disappear
{
  if (self->_currentPlace)
  {
    v5 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem:controller];
    [v5 setValuePending:0];

    _locationConfigurationItem = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
    name = [(SLPlace *)self->_currentPlace name];
    [_locationConfigurationItem setValue:name];
  }

  else
  {
    v8 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate:controller];
    [v8 setGeotagStatus:0];

    [(SLMicroBlogComposeViewController *)self updateGeotagStatus];
  }

  self->_isPresentingPlaces = 0;
}

- (void)setGeotagStatus:(int)status
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (status <= 1)
  {
    if (status)
    {
      if (status != 1)
      {
        return;
      }

      _locationConfigurationItem = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
      v11 = SLSocialFrameworkBundle(_locationConfigurationItem);
      v12 = [v11 localizedStringForKey:@"LOCATING" value:&stru_1F41EC300 table:@"Localizable"];
      [_locationConfigurationItem setValue:v12];

      _locationConfigurationItem2 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
      v22 = _locationConfigurationItem2;
      v14 = 1;
      goto LABEL_10;
    }

    _locationConfigurationItem3 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
    v16 = SLSocialFrameworkBundle(_locationConfigurationItem3);
    v17 = v16;
    v18 = @"SHEET_LOCATION_NO_VALUE";
LABEL_9:
    v19 = [v16 localizedStringForKey:v18 value:&stru_1F41EC300 table:@"Localizable"];
    [_locationConfigurationItem3 setValue:v19];

    _locationConfigurationItem2 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
    v22 = _locationConfigurationItem2;
    v14 = 0;
LABEL_10:
    [_locationConfigurationItem2 setValuePending:v14];

    return;
  }

  if (status != 2)
  {
    if (status != 3)
    {
      return;
    }

    _locationConfigurationItem3 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
    v16 = SLSocialFrameworkBundle(_locationConfigurationItem3);
    v17 = v16;
    v18 = @"SHEET_LOCATION_ACTION_DISALLOWED_VALUE";
    goto LABEL_9;
  }

  if (self->_currentPlace)
  {
    _placeViewController = [(SLMicroBlogComposeViewController *)self _placeViewController];
    v23[0] = self->_currentPlace;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [_placeViewController setPlaces:v21];

    [_placeViewController setSelectedPlace:self->_currentPlace];
    [(SLMicroBlogComposeViewController *)self _presentPlaceViewController];
  }

  else
  {

    _SLLog(v8, 3, @"We have SLGeotagStatusYes but no place to display. That's wrong.", v3, v4, v5, v6, v7, v25);
  }
}

- (void)noteLocationInfoChanged:(id)changed
{
  changedCopy = changed;
  _SLLog(v3, 6, @"noteLocationInfoChanged:%@", v5, v6, v7, v8, v9, changedCopy);
  v10 = [changedCopy objectForKeyedSubscript:@"locationGeoString"];

  if (v10)
  {
    v11 = objc_alloc_init(SLPlace);
    currentPlace = self->_currentPlace;
    self->_currentPlace = v11;

    v13 = [changedCopy objectForKeyedSubscript:@"locationGeoString"];
    [(SLPlace *)self->_currentPlace setName:v13];

    [(SLPlace *)self->_currentPlace setIdentifier:@"currentPlaceIdentifier"];
    v14 = [changedCopy objectForKeyedSubscript:@"latitude"];
    if (v14 && (v15 = v14, [changedCopy objectForKeyedSubscript:@"longitude"], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = [changedCopy objectForKeyedSubscript:@"latitude"];
      [v17 doubleValue];
      [(SLPlace *)self->_currentPlace setLatitude:?];

      v18 = [changedCopy objectForKeyedSubscript:@"longitude"];
      [v18 doubleValue];
      [(SLPlace *)self->_currentPlace setLongitude:?];
    }

    else
    {
      [(SLPlace *)self->_currentPlace setLatitude:-180.0];
      [(SLPlace *)self->_currentPlace setLongitude:-180.0];
    }
  }

  v19 = [changedCopy objectForKey:@"geotagStatus"];
  -[SLMicroBlogComposeViewController setGeotagStatus:](self, "setGeotagStatus:", [v19 intValue]);
}

- (void)_presentMentionsViewControllerWithSearchString:(id)string
{
  stringCopy = string;
  _SLLog(v3, 7, @"_presentMentionsViewController", v6, v7, v8, v9, v10, v16);
  v11 = [SLMicroBlogMentionsViewController alloc];
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v13 = [(SLMicroBlogMentionsViewController *)v11 initWithSheetDelegate:microBlogSheetDelegate];
  mentionsViewController = self->_mentionsViewController;
  self->_mentionsViewController = v13;

  [(SLMicroBlogMentionsViewController *)self->_mentionsViewController setDelegate:self];
  [(SLMicroBlogMentionsViewController *)self->_mentionsViewController setSearchString:stringCopy];

  v15 = self->_mentionsViewController;

  [(SLComposeServiceViewController *)self setAutoCompletionViewController:v15];
}

- (void)_presentMentionsViewControllerIfApplicableForSearchString:(id)string
{
  stringCopy = string;
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__SLMicroBlogComposeViewController__presentMentionsViewControllerIfApplicableForSearchString___block_invoke;
  v7[3] = &unk_1E8176140;
  v7[4] = self;
  v8 = stringCopy;
  v6 = stringCopy;
  [microBlogSheetDelegate recordsMatchingPrefixString:v6 completion:v7];
}

uint64_t __94__SLMicroBlogComposeViewController__presentMentionsViewControllerIfApplicableForSearchString___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __94__SLMicroBlogComposeViewController__presentMentionsViewControllerIfApplicableForSearchString___block_invoke_2;
    v5[3] = &unk_1E8176118;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  return 0;
}

void __94__SLMicroBlogComposeViewController__presentMentionsViewControllerIfApplicableForSearchString___block_invoke_2(uint64_t a1)
{
  v8 = [*(a1 + 32) _mentionsSearchString];
  _SLLog(v1, 7, @"Mentions got initial recordsMatchingPrefixString: '%@' response. latestMentionsString '%@' _mentionsViewController %@", v3, v4, v5, v6, v7, *(a1 + 40));
  if (!*(*(a1 + 32) + 1200))
  {
    if ([v8 length])
    {
      [*(a1 + 32) _presentMentionsViewControllerWithSearchString:*(a1 + 40)];
      if (([v8 isEqualToString:*(a1 + 40)] & 1) == 0)
      {
        [*(*(a1 + 32) + 1200) setSearchString:v8];
      }
    }
  }
}

- (void)_dismissMentionsViewController
{
  mentionsViewController = self->_mentionsViewController;
  self->_mentionsViewController = 0;

  [(SLComposeServiceViewController *)self setAutoCompletionViewController:0];
}

- (void)mentionsViewController:(id)controller finishedWithResult:(id)result
{
  if (result)
  {
    [(SLMicroBlogComposeViewController *)self applyMention:result];
  }

  [(SLMicroBlogComposeViewController *)self _dismissMentionsViewController];
}

- (void)applyMention:(id)mention
{
  mentionCopy = mention;
  textView = [(SLComposeServiceViewController *)self textView];
  selectedRange = [textView selectedRange];
  v8 = v7;

  textView2 = [(SLComposeServiceViewController *)self textView];
  text = [textView2 text];

  mentionStartLocation = self->_mentionStartLocation;
  v15 = [text stringByReplacingCharactersInRange:mentionStartLocation withString:{selectedRange + v8 - mentionStartLocation, mentionCopy}];

  v12 = [mentionCopy length];
  textView3 = [(SLComposeServiceViewController *)self textView];
  [textView3 setText:v15];

  textView4 = [(SLComposeServiceViewController *)self textView];
  [textView4 setSelectedRange:{v12 + mentionStartLocation, 0}];

  [(SLComposeServiceViewController *)self validateContent];
}

- (id)_mentionsSearchString
{
  textView = [(SLComposeServiceViewController *)self textView];
  selectedRange = [textView selectedRange];
  v6 = v5;

  mentionStartLocation = self->_mentionStartLocation;
  if (selectedRange >= mentionStartLocation)
  {
    v9 = v6 + selectedRange - mentionStartLocation;
    textView2 = [(SLComposeServiceViewController *)self textView];
    text = [textView2 text];
    v8 = [text substringWithRange:{mentionStartLocation, v9}];
  }

  else
  {
    v8 = &stru_1F41EC300;
  }

  return v8;
}

- (void)didSelectPost
{
  v31 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v29 didSelectPost];
  v4 = objc_alloc_init(SLMicroBlogStatus);
  textView = [(SLComposeServiceViewController *)self textView];
  text = [textView text];
  attachments = [(SLComposeServiceViewController *)self attachments];
  v8 = [(SLMicroBlogComposeViewController *)self completeText:text withAttachments:attachments];
  [(SLMicroBlogStatus *)v4 setStatusText:v8];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  attachments2 = [(SLComposeServiceViewController *)self attachments];
  v12 = [attachments2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(attachments2);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if ([v16 type])
        {
          if ([v16 type] != 2)
          {
            continue;
          }

          payload = [v16 payload];
          if (payload)
          {
            v18 = v10;
LABEL_12:
            [v18 addObject:payload];
          }
        }

        else
        {
          payload = [v16 payload];
          if (payload)
          {
            v18 = v9;
            goto LABEL_12;
          }
        }
      }

      v13 = [attachments2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  [(SLMicroBlogStatus *)v4 setImageData:v9];
  [(SLMicroBlogStatus *)v4 setImageAssetURLs:v10];
  microBlogSheetDelegate = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [microBlogSheetDelegate sendStatus:v4 completion:&__block_literal_global_3];

  if (![(SLMicroBlogComposeViewController *)self _hostProcessIdentifier])
  {
    _SLLog(v2, 6, @"hostPid is 0 - obtaining pid of current process instead", v20, v21, v22, v23, v24, v25);
    getpid();
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  location = range.location;
  viewCopy = view;
  textCopy = text;
  markedTextRange = [viewCopy markedTextRange];
  _SLLog(v5, 7, @"SLMicroBlogComposeViewController textView:shouldChangeInRange: %d %d replacementText: %@ (markedTextRange %@)", v11, v12, v13, v14, v15, location);

  if (!self->_mentionsViewController)
  {
    v17 = 0;
    if (location)
    {
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        markedTextRange2 = [viewCopy markedTextRange];
        v17 = markedTextRange2 == 0;
      }

      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
      }
    }

    if (v17)
    {
      text = [viewCopy text];
      if (location - 1 < [text length])
      {
        v19 = [text substringWithRange:{location - 1, 1}];
        if ([v19 isEqualToString:@"@"] && objc_msgSend(textCopy, "length"))
        {
          alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          if ([alphanumericCharacterSet characterIsMember:{objc_msgSend(textCopy, "characterAtIndex:", 0)}])
          {
            self->_mentionStartLocation = location;
            self->_mentionPendingStart = 1;
            _SLLog(v5, 7, @"SLMicroBlogComposeViewController setting _mentionPendingStart to YES", v21, v22, v23, v24, v25, v27);
          }
        }
      }
    }
  }

  return 1;
}

- (void)textViewDidChange:(id)change
{
  mentionsViewController = self->_mentionsViewController;
  changeCopy = change;
  markedTextRange = [changeCopy markedTextRange];
  _SLLog(v3, 7, @"SLMicroBlogComposeViewController textViewDidChange: _mentionsViewController %lx _mentionPendingStart %d (markedTextRange %@)", v7, v8, v9, v10, v11, mentionsViewController);

  v15.receiver = self;
  v15.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v15 textViewDidChange:changeCopy];
  markedTextRange2 = [changeCopy markedTextRange];

  if (!markedTextRange2)
  {
    if (!self->_mentionsViewController && self->_mentionPendingStart)
    {
      _mentionsSearchString = [(SLMicroBlogComposeViewController *)self _mentionsSearchString];
      [(SLMicroBlogComposeViewController *)self _presentMentionsViewControllerIfApplicableForSearchString:_mentionsSearchString];
    }

    self->_mentionPendingStart = 0;
  }
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selectedRange = [selectionCopy selectedRange];
  [selectionCopy selectedRange];
  markedTextRange = [selectionCopy markedTextRange];
  _SLLog(v3, 7, @"SLMicroBlogComposeViewController textViewDidChangeSelection to %d %d (markedTextRange %@)", v7, v8, v9, v10, v11, selectedRange);

  if (self->_mentionsViewController)
  {
    markedTextRange2 = [selectionCopy markedTextRange];

    if (!markedTextRange2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__SLMicroBlogComposeViewController_textViewDidChangeSelection___block_invoke;
      block[3] = &unk_1E81757C8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __63__SLMicroBlogComposeViewController_textViewDidChangeSelection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[150])
  {
    return;
  }

  v5 = [v2 _mentionsSearchString];
  if (![v5 length])
  {
    v4 = *(a1 + 32);
    goto LABEL_7;
  }

  v3 = [v5 rangeOfString:@" "];
  v4 = *(a1 + 32);
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    [v4 _dismissMentionsViewController];
    goto LABEL_8;
  }

  [v4[150] setSearchString:v5];
LABEL_8:
}

@end