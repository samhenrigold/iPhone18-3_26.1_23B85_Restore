@interface PMSharedAccountsGroupMemberPickerViewController
- (BOOL)_atleastOneRecipientIneligibleForSharing:(id)sharing;
- (BOOL)_cachedIsRecipientEligible:(id)eligible;
- (BOOL)_doesGroupOnlyContainKnownContacts:(id)contacts;
- (BOOL)_hasEligibilityCachedForRecipient:(id)recipient;
- (BOOL)_isAddressAlreadyPartOfGroupOrInvitedAddresses:(id)addresses;
- (BOOL)_isEveryMemberInContactsGroupAlreadyInSharingGroup:(id)group;
- (BOOL)_isEveryRecipientEligibleForSharing:(id)sharing;
- (BOOL)_isEveryRecipientIneligibleForSharing:(id)sharing;
- (PMSharedAccountsGroupMemberPickerViewController)initWithAlreadyAddedAddresses:(id)addresses;
- (PMSharedAccountsGroupMemberPickerViewControllerDelegate)delegate;
- (id)_eligibleRecipientsFromRecipients:(id)recipients;
- (id)_recipientsWithEligibleAddressesAsDefaultAddressesIfPossible:(id)possible;
- (unint64_t)presentationOptionsForRecipient:(id)recipient;
- (void)_addMembersButtonPressed;
- (void)_addRecipient:(id)recipient;
- (void)_cancelButtonPressed;
- (void)_fetchEligibilityForRecipient:(id)recipient completionHandler:(id)handler;
- (void)_handleSelectionForMultipleRecipientsInGroup:(id)group;
- (void)_handleSelectionForSingleRecipient:(id)recipient;
- (void)_presentAlertForIneligileRecipient:(id)recipient;
- (void)_presentAlertWhenAllRecipientAreIneligible;
- (void)_presentAlertWhenSubsetOfRecipientsAreIneligible:(id)ineligible;
- (void)_resetSearchQuery;
- (void)_updatePreferredHandleForRecipientIfNecessary:(id)necessary;
- (void)_updateRecipientTextViewHeight;
- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PMSharedAccountsGroupMemberPickerViewController

- (PMSharedAccountsGroupMemberPickerViewController)initWithAlreadyAddedAddresses:(id)addresses
{
  addressesCopy = addresses;
  v29.receiver = self;
  v29.super_class = PMSharedAccountsGroupMemberPickerViewController;
  v5 = [(PMSharedAccountsGroupMemberPickerViewController *)&v29 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v5 action:sel__cancelButtonPressed];
    navigationItem = [(PMSharedAccountsGroupMemberPickerViewController *)v5 navigationItem];
    [navigationItem setLeftBarButtonItem:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel__addMembersButtonPressed];
    v9 = _WBSLocalizedString();
    [v8 setAccessibilityLabel:v9];

    navigationItem2 = [(PMSharedAccountsGroupMemberPickerViewController *)v5 navigationItem];
    [navigationItem2 setRightBarButtonItem:v8];

    navigationItem3 = [(PMSharedAccountsGroupMemberPickerViewController *)v5 navigationItem];
    rightBarButtonItem = [navigationItem3 rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

    v13 = _WBSLocalizedString();
    navigationItem4 = [(PMSharedAccountsGroupMemberPickerViewController *)v5 navigationItem];
    [navigationItem4 setTitle:v13];

    v15 = [objc_alloc(MEMORY[0x277CFBC98]) initWithAutocompleteSearchType:1];
    contactsSearchManager = v5->_contactsSearchManager;
    v5->_contactsSearchManager = v15;

    [(CNAutocompleteSearchManager *)v5->_contactsSearchManager setSearchTypes:3];
    [(CNAutocompleteSearchManager *)v5->_contactsSearchManager setShouldIncludeGroupResults:1];
    v17 = [MEMORY[0x277CBEB58] set];
    addressesThatHaveBeenFetched = v5->_addressesThatHaveBeenFetched;
    v5->_addressesThatHaveBeenFetched = v17;

    v19 = [addressesCopy copy];
    alreadyAddedAddresses = v5->_alreadyAddedAddresses;
    v5->_alreadyAddedAddresses = v19;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    addressToEligibility = v5->_addressToEligibility;
    v5->_addressToEligibility = dictionary;

    v23 = [MEMORY[0x277CBEB58] set];
    addressesCurrentlyBeingCheckedForAvailability = v5->_addressesCurrentlyBeingCheckedForAvailability;
    v5->_addressesCurrentlyBeingCheckedForAvailability = v23;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    otherRecipientsAwaitingEligibilityForAddress = v5->_otherRecipientsAwaitingEligibilityForAddress;
    v5->_otherRecipientsAwaitingEligibilityForAddress = dictionary2;

    v27 = v5;
  }

  return v5;
}

- (void)viewDidLoad
{
  v44[8] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = PMSharedAccountsGroupMemberPickerViewController;
  [(PMSharedAccountsGroupMemberPickerViewController *)&v43 viewDidLoad];
  view = [(PMSharedAccountsGroupMemberPickerViewController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc_init(MEMORY[0x277CFBCB0]);
  recipientTextView = self->_recipientTextView;
  self->_recipientTextView = v5;

  [(CNComposeRecipientTextView *)self->_recipientTextView setDelegate:self];
  [(CNComposeRecipientTextView *)self->_recipientTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNComposeRecipientTextView *)self->_recipientTextView setShowsAddButtonWhenExpanded:0];
  v7 = _WBSLocalizedString();
  [(CNComposeRecipientTextView *)self->_recipientTextView setLabel:v7];

  [view addSubview:self->_recipientTextView];
  v8 = objc_alloc_init(MEMORY[0x277CFBC80]);
  contactsResultsTableViewController = self->_contactsResultsTableViewController;
  self->_contactsResultsTableViewController = v8;

  [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController setDelegate:self];
  view2 = [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController view];
  v11 = v42 = view;
  [view addSubview:?];
  heightAnchor = [(CNComposeRecipientTextView *)self->_recipientTextView heightAnchor];
  [MEMORY[0x277CFBCB0] preferredHeight];
  v13 = [heightAnchor constraintEqualToConstant:?];
  recipientTextViewHeightConstraint = self->_recipientTextViewHeightConstraint;
  self->_recipientTextViewHeightConstraint = v13;

  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  v32 = MEMORY[0x277CCAAD0];
  topAnchor = [(CNComposeRecipientTextView *)self->_recipientTextView topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[0] = v39;
  leadingAnchor = [(CNComposeRecipientTextView *)self->_recipientTextView leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[1] = v36;
  trailingAnchor = [(CNComposeRecipientTextView *)self->_recipientTextView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v16 = self->_recipientTextViewHeightConstraint;
  v44[2] = v33;
  v44[3] = v16;
  v17 = v11;
  bottomAnchor = [v11 bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[4] = v28;
  leadingAnchor3 = [v11 leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v44[5] = v18;
  v31 = v11;
  trailingAnchor3 = [v11 trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v44[6] = v21;
  topAnchor3 = [v17 topAnchor];
  bottomAnchor3 = [(CNComposeRecipientTextView *)self->_recipientTextView bottomAnchor];
  v24 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v44[7] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:8];
  [v32 activateConstraints:v25];

  [(PMSharedAccountsGroupMemberPickerViewController *)self _resetSearchQuery];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PMSharedAccountsGroupMemberPickerViewController;
  [(PMSharedAccountsGroupMemberPickerViewController *)&v4 viewWillAppear:appear];
  [(CNComposeRecipientTextView *)self->_recipientTextView becomeFirstResponder];
}

- (void)_addMembersButtonPressed
{
  recipients = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  if ([(PMSharedAccountsGroupMemberPickerViewController *)self _isEveryRecipientIneligibleForSharing:?])
  {
    if ([recipients count] != 1)
    {
      [(PMSharedAccountsGroupMemberPickerViewController *)self _presentAlertWhenAllRecipientAreIneligible];
      goto LABEL_9;
    }

    WeakRetained = [recipients firstObject];
    [(PMSharedAccountsGroupMemberPickerViewController *)self _presentAlertForIneligileRecipient:WeakRetained];
  }

  else
  {
    if ([(PMSharedAccountsGroupMemberPickerViewController *)self _atleastOneRecipientIneligibleForSharing:recipients])
    {
      [(PMSharedAccountsGroupMemberPickerViewController *)self _presentAlertWhenSubsetOfRecipientsAreIneligible:recipients];
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [(PMSharedAccountsGroupMemberPickerViewController *)self _eligibleRecipientsFromRecipients:recipients];
    [WeakRetained memberPickerViewController:self addedRecipients:v4];
  }

LABEL_9:
}

- (void)_cancelButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained memberPickerViewController:self addedRecipients:0];
}

- (BOOL)_doesGroupOnlyContainKnownContacts:(id)contacts
{
  children = [contacts children];
  v4 = [children safari_allObjectsPassTest:&__block_literal_global_2];

  return v4;
}

BOOL __86__PMSharedAccountsGroupMemberPickerViewController__doesGroupOnlyContainKnownContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contact];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isEveryMemberInContactsGroupAlreadyInSharingGroup:(id)group
{
  children = [group children];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__PMSharedAccountsGroupMemberPickerViewController__isEveryMemberInContactsGroupAlreadyInSharingGroup___block_invoke;
  v6[3] = &unk_27831CC28;
  v6[4] = self;
  LOBYTE(self) = [children safari_allObjectsPassTest:v6];

  return self;
}

uint64_t __102__PMSharedAccountsGroupMemberPickerViewController__isEveryMemberInContactsGroupAlreadyInSharingGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 normalizedAddress];
  v4 = [v2 _isAddressAlreadyPartOfGroupOrInvitedAddresses:v3];

  return v4;
}

- (BOOL)_isAddressAlreadyPartOfGroupOrInvitedAddresses:(id)addresses
{
  addressesCopy = addresses;
  uncommentedAddresses = [(CNComposeRecipientTextView *)self->_recipientTextView uncommentedAddresses];
  v6 = ([uncommentedAddresses containsObject:addressesCopy] & 1) != 0 || -[NSSet containsObject:](self->_alreadyAddedAddresses, "containsObject:", addressesCopy);

  return v6;
}

- (BOOL)_hasEligibilityCachedForRecipient:(id)recipient
{
  recipientCopy = recipient;
  children = [recipientCopy children];
  v6 = [children count];

  if (v6)
  {
    children2 = [recipientCopy children];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__PMSharedAccountsGroupMemberPickerViewController__hasEligibilityCachedForRecipient___block_invoke;
    v12[3] = &unk_27831CC28;
    v12[4] = self;
    v8 = [children2 safari_allObjectsPassTest:v12];
  }

  else
  {
    addressToEligibility = self->_addressToEligibility;
    children2 = [recipientCopy normalizedAddress];

    v10 = [(NSMutableDictionary *)addressToEligibility objectForKeyedSubscript:children2];
    v8 = v10 != 0;
  }

  return v8;
}

BOOL __85__PMSharedAccountsGroupMemberPickerViewController__hasEligibilityCachedForRecipient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_isEveryRecipientEligibleForSharing:(id)sharing
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__PMSharedAccountsGroupMemberPickerViewController__isEveryRecipientEligibleForSharing___block_invoke;
  v4[3] = &unk_27831CC28;
  v4[4] = self;
  return [sharing safari_allObjectsPassTest:v4];
}

uint64_t __87__PMSharedAccountsGroupMemberPickerViewController__isEveryRecipientEligibleForSharing___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isEveryRecipientIneligibleForSharing:(id)sharing
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__PMSharedAccountsGroupMemberPickerViewController__isEveryRecipientIneligibleForSharing___block_invoke;
  v4[3] = &unk_27831CC28;
  v4[4] = self;
  return [sharing safari_allObjectsPassTest:v4];
}

uint64_t __89__PMSharedAccountsGroupMemberPickerViewController__isEveryRecipientIneligibleForSharing___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_atleastOneRecipientIneligibleForSharing:(id)sharing
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__PMSharedAccountsGroupMemberPickerViewController__atleastOneRecipientIneligibleForSharing___block_invoke;
  v4[3] = &unk_27831CC28;
  v4[4] = self;
  return [sharing safari_containsObjectPassingTest:v4];
}

uint64_t __92__PMSharedAccountsGroupMemberPickerViewController__atleastOneRecipientIneligibleForSharing___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_eligibleRecipientsFromRecipients:(id)recipients
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__PMSharedAccountsGroupMemberPickerViewController__eligibleRecipientsFromRecipients___block_invoke;
  v5[3] = &unk_27831CC28;
  v5[4] = self;
  v3 = [recipients safari_filterObjectsUsingBlock:v5];

  return v3;
}

uint64_t __85__PMSharedAccountsGroupMemberPickerViewController__eligibleRecipientsFromRecipients___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_fetchEligibilityForRecipient:(id)recipient completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  recipientCopy = recipient;
  handlerCopy = handler;
  v7 = [MEMORY[0x277CBEB58] set];
  children = [recipientCopy children];
  v9 = [children count];

  v10 = recipientCopy;
  if (v9)
  {
    children2 = [recipientCopy children];
    v12 = [children2 safari_mapObjectsUsingBlock:&__block_literal_global_29];
    [v7 addObjectsFromArray:v12];
  }

  else
  {
    children2 = [recipientCopy normalizedAddress];
    [v7 addObject:children2];
  }

  allObjects = [v7 allObjects];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2;
  v42[3] = &unk_27831CC70;
  v42[4] = self;
  v31 = [allObjects safari_filterObjectsUsingBlock:v42];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_addressesCurrentlyBeingCheckedForAvailability containsObject:v18])
        {
          v19 = [(NSMutableDictionary *)self->_otherRecipientsAwaitingEligibilityForAddress objectForKeyedSubscript:v18];

          if (v19)
          {
            v20 = [(NSMutableDictionary *)self->_otherRecipientsAwaitingEligibilityForAddress objectForKeyedSubscript:v18];
            [v20 addObject:v10];
          }

          else
          {
            v20 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
            [(NSMutableDictionary *)self->_otherRecipientsAwaitingEligibilityForAddress setObject:v20 forKeyedSubscript:v18];
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v15);
  }

  [(NSMutableSet *)self->_addressesCurrentlyBeingCheckedForAvailability addObjectsFromArray:v31];
  [(CNComposeRecipientTextView *)self->_recipientTextView invalidateAtomPresentationOptionsForRecipient:v10];
  v21 = [(NSMutableSet *)self->_addressesThatHaveBeenFetched addObjectsFromArray:v31];
  v23 = WBS_LOG_CHANNEL_PREFIXPasswords(v21, v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    addressesThatHaveBeenFetched = self->_addressesThatHaveBeenFetched;
    v25 = v23;
    v26 = [(NSMutableSet *)addressesThatHaveBeenFetched count];
    *buf = 134217984;
    v44 = v26;
    _os_log_impl(&dword_21C6E5000, v25, OS_LOG_TYPE_DEFAULT, "PMSharedAccountsGroupMemberPickerViewController has tried to fetch %lu unique handles so far.", buf, 0xCu);
  }

  mEMORY[0x277CDBD30] = [MEMORY[0x277CDBD30] sharedInstance];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_33;
  v34[3] = &unk_27831CCC0;
  v34[4] = self;
  v35 = v31;
  v36 = v10;
  v37 = handlerCopy;
  v28 = v10;
  v29 = handlerCopy;
  v30 = v31;
  [mEMORY[0x277CDBD30] checkAvailabilityForHandles:v30 completion:v34];
}

uint64_t __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 1024) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 1056) containsObject:v3] ^ 1;
  }

  return v5;
}

void __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2_34;
  v10[3] = &unk_27831CC98;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v12 = v6;
  v15 = *(a1 + 56);
  v13 = v5;
  v14 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2_34(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 1056);
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [v2 minusSet:v3];

  if (*(a1 + 48))
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswords(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2_34_cold_1((a1 + 48), v6);
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(a1 + 40);
    v24 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v24)
    {
      v23 = *v30;
      *&v7 = 138739971;
      v21 = v7;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          v11 = [*(a1 + 56) objectForKeyedSubscript:{v9, v21}];
          if (v11)
          {
            [*(*(a1 + 32) + 1024) setObject:v11 forKeyedSubscript:v9];
            if ([v11 BOOLValue])
            {
              [MEMORY[0x277D75348] tintColor];
            }

            else
            {
              [MEMORY[0x277D75348] secondaryLabelColor];
            }
            v13 = ;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v14 = [*(*(a1 + 32) + 1072) objectForKeyedSubscript:v9];
            v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v26;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v26 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [*(*(a1 + 32) + 992) setTintColor:v13 forRecipient:*(*(&v25 + 1) + 8 * j)];
                }

                v16 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
              }

              while (v16);
            }

            v19 = [*(*(a1 + 32) + 1072) objectForKeyedSubscript:v9];
            [v19 removeAllObjects];
          }

          else
          {
            v12 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v10);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v34 = v9;
              _os_log_error_impl(&dword_21C6E5000, v12, OS_LOG_TYPE_ERROR, "No result returned from KCSharing availability check for handle: %{sensitive}@. Considering this handle ineligible.", buf, 0xCu);
            }

            v13 = [MEMORY[0x277CCABB0] numberWithBool:0];
            [*(*(a1 + 32) + 1024) setObject:v13 forKeyedSubscript:v9];
          }
        }

        v24 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v24);
    }

    [*(a1 + 32) _updatePreferredHandleForRecipientIfNecessary:*(a1 + 64)];
    [*(*(a1 + 32) + 1000) invalidateAtomPresentationOptionsForRecipient:*(a1 + 64)];
  }

  return (*(*(a1 + 72) + 16))();
}

- (void)_handleSelectionForSingleRecipient:(id)recipient
{
  recipientCopy = recipient;
  normalizedAddress = [recipientCopy normalizedAddress];
  v6 = [(PMSharedAccountsGroupMemberPickerViewController *)self _isAddressAlreadyPartOfGroupOrInvitedAddresses:normalizedAddress];

  if (!v6)
  {
    [(PMSharedAccountsGroupMemberPickerViewController *)self _addRecipient:recipientCopy];
  }

  v7 = [(CNComposeRecipientTextView *)self->_recipientTextView atomViewForRecipient:recipientCopy];
  if ([(PMSharedAccountsGroupMemberPickerViewController *)self _hasEligibilityCachedForRecipient:recipientCopy])
  {
    if ([(PMSharedAccountsGroupMemberPickerViewController *)self _cachedIsRecipientEligible:recipientCopy])
    {
      [MEMORY[0x277D75348] tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] grayColor];
    }
    v9 = ;
    [v7 setTintColor:v9];

    [(CNComposeRecipientTextView *)self->_recipientTextView invalidateAtomPresentationOptionsForRecipient:recipientCopy];
  }

  else
  {
    grayColor = [MEMORY[0x277D75348] grayColor];
    [v7 setTintColor:grayColor];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__PMSharedAccountsGroupMemberPickerViewController__handleSelectionForSingleRecipient___block_invoke;
    v10[3] = &unk_27831CCE8;
    v11 = v7;
    selfCopy = self;
    v13 = recipientCopy;
    [(PMSharedAccountsGroupMemberPickerViewController *)self _fetchEligibilityForRecipient:v13 completionHandler:v10];
  }
}

void __86__PMSharedAccountsGroupMemberPickerViewController__handleSelectionForSingleRecipient___block_invoke(uint64_t a1)
{
  if ([*(a1 + 40) _cachedIsRecipientEligible:*(a1 + 48)])
  {
    [MEMORY[0x277D75348] tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] grayColor];
  }
  v2 = ;
  [*(a1 + 32) setTintColor:v2];
}

- (void)_handleSelectionForMultipleRecipientsInGroup:(id)group
{
  v14 = *MEMORY[0x277D85DE8];
  children = [group children];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(children);
        }

        [(PMSharedAccountsGroupMemberPickerViewController *)self _handleSelectionForSingleRecipient:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addRecipient:(id)recipient
{
  [(CNComposeRecipientTextView *)self->_recipientTextView addRecipient:recipient];
  [(PMSharedAccountsGroupMemberPickerViewController *)self _resetSearchQuery];
  navigationItem = [(PMSharedAccountsGroupMemberPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  [(PMSharedAccountsGroupMemberPickerViewController *)self _updateRecipientTextViewHeight];
}

- (void)_updateRecipientTextViewHeight
{
  textView = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
  [textView contentSize];
  v5 = v4;

  [MEMORY[0x277CFBCB0] preferredHeight];
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v7 = v6;
  [(NSLayoutConstraint *)self->_recipientTextViewHeightConstraint constant];
  if (v8 != v7)
  {
    recipientTextViewHeightConstraint = self->_recipientTextViewHeightConstraint;

    [(NSLayoutConstraint *)recipientTextViewHeightConstraint setConstant:v7];
  }
}

- (void)_resetSearchQuery
{
  [(CNComposeRecipientTextView *)self->_recipientTextView clearText];
  [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController setRecipients:MEMORY[0x277CBEBF8]];
  v3 = [(CNAutocompleteSearchManager *)self->_contactsSearchManager searchForText:&stru_282E5F078 consumer:self];
}

- (BOOL)_cachedIsRecipientEligible:(id)eligible
{
  eligibleCopy = eligible;
  children = [eligibleCopy children];
  v6 = [children count];

  if (v6)
  {
    children2 = [eligibleCopy children];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__PMSharedAccountsGroupMemberPickerViewController__cachedIsRecipientEligible___block_invoke;
    v14[3] = &unk_27831CC28;
    v14[4] = self;
    v8 = [children2 safari_containsObjectPassingTest:v14];

    return v8;
  }

  else
  {
    addressToEligibility = self->_addressToEligibility;
    normalizedAddress = [eligibleCopy normalizedAddress];

    v12 = [(NSMutableDictionary *)addressToEligibility objectForKeyedSubscript:normalizedAddress];
    bOOLValue = [v12 BOOLValue];

    return bOOLValue;
  }
}

uint64_t __78__PMSharedAccountsGroupMemberPickerViewController__cachedIsRecipientEligible___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_updatePreferredHandleForRecipientIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PMSharedAccountsGroupMemberPickerViewController *)self _cachedIsRecipientEligible:necessaryCopy])
    {
      addressToEligibility = self->_addressToEligibility;
      normalizedAddress = [necessaryCopy normalizedAddress];
      v7 = [(NSMutableDictionary *)addressToEligibility objectForKeyedSubscript:normalizedAddress];
      bOOLValue = [v7 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        children = [necessaryCopy children];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __97__PMSharedAccountsGroupMemberPickerViewController__updatePreferredHandleForRecipientIfNecessary___block_invoke;
        v11[3] = &unk_27831CC28;
        v11[4] = self;
        v10 = [children safari_firstObjectPassingTest:v11];

        [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController setPreferredRecipient:v10 forRecipient:necessaryCopy];
      }
    }
  }
}

uint64_t __97__PMSharedAccountsGroupMemberPickerViewController__updatePreferredHandleForRecipientIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_presentAlertForIneligileRecipient:(id)recipient
{
  v4 = MEMORY[0x277CCACA8];
  recipientCopy = recipient;
  v6 = _WBSLocalizedString();
  displayString = [recipientCopy displayString];
  v8 = [v4 stringWithFormat:v6, displayString];

  displayString2 = [recipientCopy displayString];

  v10 = [PMOngoingCredentialSharingStrings unableToInviteContactBecauseOfUnsupportedDevicesAlertMessageWithContactName:displayString2];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v10 preferredStyle:1];
  v12 = MEMORY[0x277D750F8];
  v13 = _WBSLocalizedString();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__PMSharedAccountsGroupMemberPickerViewController__presentAlertForIneligileRecipient___block_invoke;
  v15[3] = &unk_27831CD10;
  v15[4] = self;
  v14 = [v12 actionWithTitle:v13 style:0 handler:v15];
  [v11 addAction:v14];

  [(PMSharedAccountsGroupMemberPickerViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_presentAlertWhenAllRecipientAreIneligible
{
  v3 = MEMORY[0x277CCACA8];
  v4 = _WBSLocalizedString();
  v5 = [v3 stringWithFormat:v4];

  v6 = +[PMOngoingCredentialSharingStrings unableToInviteAllParticipantsBecauseOfUnsupportedDevicesAlertMessage];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = MEMORY[0x277D750F8];
  v9 = _WBSLocalizedString();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__PMSharedAccountsGroupMemberPickerViewController__presentAlertWhenAllRecipientAreIneligible__block_invoke;
  v11[3] = &unk_27831CD10;
  v11[4] = self;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v11];
  [v7 addAction:v10];

  [(PMSharedAccountsGroupMemberPickerViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_presentAlertWhenSubsetOfRecipientsAreIneligible:(id)ineligible
{
  ineligibleCopy = ineligible;
  v5 = _WBSLocalizedString();
  v6 = +[PMOngoingCredentialSharingStrings unableToInviteMultipleContactsBecauseOfUnsupportedDevicesAlertMessage];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = MEMORY[0x277D750F8];
  v9 = _WBSLocalizedString();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __100__PMSharedAccountsGroupMemberPickerViewController__presentAlertWhenSubsetOfRecipientsAreIneligible___block_invoke;
  v16[3] = &unk_27831CD38;
  v16[4] = self;
  v17 = ineligibleCopy;
  v10 = ineligibleCopy;
  v11 = [v8 actionWithTitle:v9 style:0 handler:v16];
  [v7 addAction:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = _WBSLocalizedString();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__PMSharedAccountsGroupMemberPickerViewController__presentAlertWhenSubsetOfRecipientsAreIneligible___block_invoke_2;
  v15[3] = &unk_27831CD10;
  v15[4] = self;
  v14 = [v12 actionWithTitle:v13 style:1 handler:v15];
  [v7 addAction:v14];

  [(PMSharedAccountsGroupMemberPickerViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __100__PMSharedAccountsGroupMemberPickerViewController__presentAlertWhenSubsetOfRecipientsAreIneligible___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _eligibleRecipientsFromRecipients:*(a1 + 40)];
  if ([v3 count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1088));
    [WeakRetained memberPickerViewController:*(a1 + 32) addedRecipients:v3];
  }
}

- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion
{
  recipientCopy = recipient;
  completionCopy = completion;
  if ([(PMSharedAccountsGroupMemberPickerViewController *)self _hasEligibilityCachedForRecipient:recipientCopy])
  {
    if ([(PMSharedAccountsGroupMemberPickerViewController *)self _cachedIsRecipientEligible:recipientCopy])
    {
      [MEMORY[0x277D75348] tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] secondaryLabelColor];
    }
    v10 = ;
    completionCopy[2](completionCopy, v10);
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    completionCopy[2](completionCopy, secondaryLabelColor);

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __114__PMSharedAccountsGroupMemberPickerViewController_autocompleteResultsController_tintColorForRecipient_completion___block_invoke;
    v11[3] = &unk_27831CD60;
    v13 = completionCopy;
    v11[4] = self;
    v12 = recipientCopy;
    [(PMSharedAccountsGroupMemberPickerViewController *)self _fetchEligibilityForRecipient:v12 completionHandler:v11];
  }
}

void __114__PMSharedAccountsGroupMemberPickerViewController_autocompleteResultsController_tintColorForRecipient_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ([*(a1 + 32) _cachedIsRecipientEligible:*(a1 + 40)])
  {
    [MEMORY[0x277D75348] tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v2 = ;
  (*(v1 + 16))(v1);
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  recipientCopy = recipient;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PMSharedAccountsGroupMemberPickerViewController *)self _handleSelectionForMultipleRecipientsInGroup:recipientCopy];
  }

  else
  {
    [(PMSharedAccountsGroupMemberPickerViewController *)self _handleSelectionForSingleRecipient:recipientCopy];
  }

  [(PMSharedAccountsGroupMemberPickerViewController *)self _resetSearchQuery];
}

- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient
{
  v17[1] = *MEMORY[0x277D85DE8];
  recipientCopy = recipient;
  contact = [recipientCopy contact];

  v7 = MEMORY[0x277CBDC48];
  if (contact)
  {
    contact2 = [recipientCopy contact];

    v16 = [v7 viewControllerForContact:contact2];

    navigationController = [(PMSharedAccountsGroupMemberPickerViewController *)self navigationController];
    [navigationController pushViewController:v16 animated:1];
  }

  else
  {
    v10 = MEMORY[0x277CBDA58];
    normalizedAddress = [recipientCopy normalizedAddress];

    v17[0] = normalizedAddress;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v13 = [v10 contactWithDisplayName:0 handleStrings:v12];
    v14 = [v7 viewControllerForUnknownContact:v13];

    navigationController2 = [(PMSharedAccountsGroupMemberPickerViewController *)self navigationController];
    [navigationController2 pushViewController:v14 animated:1];
  }
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  changeCopy = change;
  if (self->_currentSearchTaskID)
  {
    [(CNAutocompleteSearchManager *)self->_contactsSearchManager cancelTaskWithID:?];
  }

  v5 = [(CNAutocompleteSearchManager *)self->_contactsSearchManager searchForText:changeCopy consumer:self];
  currentSearchTaskID = self->_currentSearchTaskID;
  self->_currentSearchTaskID = v5;
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  v5 = [(CNComposeRecipientTextView *)self->_recipientTextView recipients:view];
  v6 = [v5 count] != 0;
  navigationItem = [(PMSharedAccountsGroupMemberPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v6];

  [(PMSharedAccountsGroupMemberPickerViewController *)self _updateRecipientTextViewHeight];
}

- (unint64_t)presentationOptionsForRecipient:(id)recipient
{
  recipientCopy = recipient;
  addressesCurrentlyBeingCheckedForAvailability = self->_addressesCurrentlyBeingCheckedForAvailability;
  address = [recipientCopy address];
  LOBYTE(addressesCurrentlyBeingCheckedForAvailability) = [(NSMutableSet *)addressesCurrentlyBeingCheckedForAvailability containsObject:address];

  if (addressesCurrentlyBeingCheckedForAvailability)
  {
    v7 = 4;
  }

  else if ([(PMSharedAccountsGroupMemberPickerViewController *)self _cachedIsRecipientEligible:recipientCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x20000;
  }

  return v7;
}

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  v5 = [results mutableCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__PMSharedAccountsGroupMemberPickerViewController_consumeAutocompleteSearchResults_taskID___block_invoke;
  v7[3] = &unk_27831CD88;
  v7[4] = self;
  [v5 safari_removeObjectsPassingTest:v7];
  v6 = [(PMSharedAccountsGroupMemberPickerViewController *)self _recipientsWithEligibleAddressesAsDefaultAddressesIfPossible:v5];
  [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController setRecipients:v6];
}

uint64_t __91__PMSharedAccountsGroupMemberPickerViewController_consumeAutocompleteSearchResults_taskID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([*(a1 + 32) _doesGroupOnlyContainKnownContacts:v3])
    {
      v4 = [*(a1 + 32) _isEveryMemberInContactsGroupAlreadyInSharingGroup:v3];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v5 = [v3 contact];
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v3 normalizedAddress];
      v4 = [v6 _isAddressAlreadyPartOfGroupOrInvitedAddresses:v7];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)_recipientsWithEligibleAddressesAsDefaultAddressesIfPossible:(id)possible
{
  v29 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  v5 = [possibleCopy mutableCopy];
  if ([possibleCopy count])
  {
    v6 = 0;
    v21 = possibleCopy;
    v22 = v5;
    do
    {
      v7 = [v5 objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v7;
        children = [v7 children];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = children;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * i);
              addressToEligibility = self->_addressToEligibility;
              normalizedAddress = [v14 normalizedAddress];
              v17 = [(NSMutableDictionary *)addressToEligibility objectForKeyedSubscript:normalizedAddress];
              bOOLValue = [v17 BOOLValue];

              if (bOOLValue)
              {
                v19 = [objc_alloc(MEMORY[0x277CFBCB8]) initWithChildren:v9 defaultChild:v14];
                v5 = v22;
                [v22 replaceObjectAtIndex:v6 withObject:v19];

                goto LABEL_14;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
            v5 = v22;
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:

        possibleCopy = v21;
        v7 = v23;
      }

      ++v6;
    }

    while (v6 < [possibleCopy count]);
  }

  return v5;
}

- (PMSharedAccountsGroupMemberPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2_34_cold_1(void **a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_21C6E5000, v3, OS_LOG_TYPE_ERROR, "Failed to check recipient eligibility for shared account groups with error: %@", &v5, 0xCu);
}

@end