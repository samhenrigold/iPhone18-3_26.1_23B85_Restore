@interface CKGroupRecipientSelectionController
- (BOOL)_enableRecipientsAdditionBasedOnAvailability;
- (BOOL)alwaysShowSearchResultsTable;
- (BOOL)hasInvalidRecipientsForService:(id)service;
- (BOOL)isBeingPresentedInMacDetailsView;
- (BOOL)recipientSelectionIsGroup:(id)group;
- (BOOL)shouldAutorotate;
- (CKGroupRecipientSelectionController)initWithConversation:(id)conversation;
- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)controller;
- (double)topInsetForNavBar;
- (id)_orderedMutableGroupServices;
- (id)_serviceForRecipientPresentationOptions;
- (id)handlesForScreenTimePolicyCheck;
- (void)_checkAvailabilityAndAddToken;
- (void)_frecencySearch;
- (void)_updateNavigationButton;
- (void)composeRecipientViewEscapePressed:(id)pressed;
- (void)composeRecipientViewReturnPressed:(id)pressed;
- (void)didAddRecipient:(id)recipient;
- (void)handleAddingHandles:(id)handles conversation:(id)conversation viewController:(id)controller allRecipientAddresses:(id)addresses completion:(id)completion;
- (void)handleCancelAction:(id)action completion:(id)completion;
- (void)handleDoneActionForConversation:(id)conversation viewController:(id)controller completion:(id)completion;
- (void)loadView;
- (void)recipientAvailabilitiesDidUpdate;
- (void)recipientSelectionController:(id)controller textDidChange:(id)change;
- (void)recipientSelectionControllerDidChange;
- (void)recipientSelectionControllerEscapePressed:(id)pressed;
- (void)recipientSelectionControllerRequestDismissKeyboard:(id)keyboard;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKGroupRecipientSelectionController

- (CKGroupRecipientSelectionController)initWithConversation:(id)conversation
{
  v12.receiver = self;
  v12.super_class = CKGroupRecipientSelectionController;
  v3 = [(CKRecipientSelectionController *)&v12 initWithConversation:conversation];
  v4 = v3;
  if (v3)
  {
    [(CKRecipientSelectionController *)v3 setDelegate:v3];
  }

  conversation = [(CKRecipientSelectionController *)v4 conversation];
  chat = [conversation chat];

  if (chat)
  {
    conversation2 = [(CKRecipientSelectionController *)v4 conversation];
    chat2 = [conversation2 chat];
    participants = [chat2 participants];
    v10 = [participants __imArrayByApplyingBlock:&__block_literal_global_259];

    [(CKRecipientSelectionController *)v4 refreshAvailabilityForRecipients:v10 context:0];
  }

  return v4;
}

id __60__CKGroupRecipientSelectionController_initWithConversation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 ID];

  if (v3)
  {
    v4 = [v2 ID];
    v3 = IMChatCanonicalIDSIDsForAddress();
  }

  return v3;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v9 loadView];
  isBeingPresentedInMacDetailsView = [(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView];
  view = [(CKGroupRecipientSelectionController *)self view];
  if (isBeingPresentedInMacDetailsView)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] _ckSystemBackgroundColor];
  }
  v5 = ;
  [view setBackgroundColor:v5];

  toField = [(CKRecipientSelectionController *)self toField];
  v7 = CKFrameworkBundle(toField);
  v8 = [v7 localizedStringForKey:@"ADD" value:&stru_1F04268F8 table:@"ChatKit"];
  [toField setLabel:v8];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v6 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v3 configureWithDefaultBackground];
  navigationItem = [(CKGroupRecipientSelectionController *)self navigationItem];
  [navigationItem setStandardAppearance:v3];

  navigationItem2 = [(CKGroupRecipientSelectionController *)self navigationItem];
  [navigationItem2 setScrollEdgeAppearance:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v8 viewWillAppear:appear];
  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    [(CKGroupRecipientSelectionController *)self _checkAvailabilityAndAddToken];
  }

  else
  {
    [(CKGroupRecipientSelectionController *)self _updateNavigationButton];
  }

  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    toField = [(CKRecipientSelectionController *)self toField];
    addButton = [toField addButton];
    [addButton setHidden:1];

    toField2 = [(CKRecipientSelectionController *)self toField];
    [toField2 setShowsAddButtonWhenExpanded:0];
  }

  toField3 = [(CKRecipientSelectionController *)self toField];
  [toField3 becomeFirstResponder];
}

- (void)viewDidAppearDeferredSetup
{
  v17.receiver = self;
  v17.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v17 viewDidAppearDeferredSetup];
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController setSuppressGroupSuggestions:1];

  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  conversation = [(CKRecipientSelectionController *)self conversation];
  recipients = [conversation recipients];
  v7 = [v4 initWithCapacity:{objc_msgSend(recipients, "count")}];

  conversation2 = [(CKRecipientSelectionController *)self conversation];
  recipients2 = [conversation2 recipients];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CKGroupRecipientSelectionController_viewDidAppearDeferredSetup__block_invoke;
  v15[3] = &unk_1E72F67A0;
  v10 = v7;
  v16 = v10;
  [recipients2 enumerateObjectsUsingBlock:v15];

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  [searchListController2 setPrefilteredRecipients:v10];

  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    searchListController3 = [(CKRecipientSelectionController *)self searchListController];
    view = [searchListController3 view];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];
  }

  [(CKGroupRecipientSelectionController *)self _frecencySearch];
}

void __65__CKGroupRecipientSelectionController_viewDidAppearDeferredSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKIMComposeRecipient alloc];
  v5 = [v3 defaultIMHandle];

  v6 = [(CKIMComposeRecipient *)v4 initWithHandle:v5];
  [*(a1 + 32) addObject:v6];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CKGroupRecipientSelectionController;
  [(CKGroupRecipientSelectionController *)&v2 viewDidLayoutSubviews];
}

- (BOOL)shouldAutorotate
{
  v2 = +[CKUIBehavior sharedBehaviors];
  shouldSuppressRotationInNewCompose = [v2 shouldSuppressRotationInNewCompose];

  return shouldSuppressRotationInNewCompose ^ 1;
}

- (void)recipientSelectionControllerDidChange
{
  v3.receiver = self;
  v3.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v3 recipientSelectionControllerDidChange];
  if (![(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    [(CKGroupRecipientSelectionController *)self _updateNavigationButton];
  }

  [(CKGroupRecipientSelectionController *)self _frecencySearch];
}

- (void)recipientAvailabilitiesDidUpdate
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CKGroupRecipientSelectionController;
  recipientAvailabilitiesDidUpdate = [(CKRecipientSelectionController *)&v21 recipientAvailabilitiesDidUpdate];
  v4 = CKGroupRecipientSelectionLogHandle(recipientAvailabilitiesDidUpdate);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Recipient availabilities updated.", buf, 2u);
  }

  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView])
  {
    [(CKGroupRecipientSelectionController *)self _checkAvailabilityAndAddToken];
  }

  else
  {
    [(CKGroupRecipientSelectionController *)self _updateNavigationButton];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    toField = [(CKRecipientSelectionController *)self toField];
    recipients = [toField recipients];

    v7 = [recipients countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(recipients);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
          iDSCanonicalAddress = [v11 IDSCanonicalAddress];
          v14 = [expandedRecipientAvailabilities hasResultsForRecipient:iDSCanonicalAddress];

          if (v14)
          {
            toField2 = [(CKRecipientSelectionController *)self toField];
            [toField2 invalidateAtomPresentationOptionsForRecipient:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [recipients countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)alwaysShowSearchResultsTable
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  return isRedesignedDetailsViewEnabled ^ 1;
}

- (BOOL)isBeingPresentedInMacDetailsView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  return (isRedesignedDetailsViewEnabled & 1) == 0 && CKIsRunningInMacCatalyst() != 0;
}

- (void)didAddRecipient:(id)recipient
{
  v22 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v18.receiver = self;
  v18.super_class = CKGroupRecipientSelectionController;
  [(CKRecipientSelectionController *)&v18 didAddRecipient:recipientCopy];
  conversation = [(CKRecipientSelectionController *)self conversation];
  sendingService = [conversation sendingService];
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
  v8 = sendingService == iMessageService;

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E695DFD8];
    iMessageService2 = [MEMORY[0x1E69A5CA0] iMessageService];
    internalName = [iMessageService2 internalName];
    rcsService = [MEMORY[0x1E69A5CA0] rcsService];
    internalName2 = [rcsService internalName];
    v14 = [v9 setWithObjects:{internalName, internalName2, 0}];
  }

  v15 = objc_alloc_init(CKPendingConversationStatusRefreshContext);
  [(CKPendingConversationStatusRefreshContext *)v15 setPreconditionsIgnoredForServices:v14];
  [(CKPendingConversationStatusRefreshContext *)v15 setIsForPendingConversation:1];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = recipientCopy;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Added recipientURI %@, will refresh availability for it.", buf, 0xCu);
    }
  }

  v19 = recipientCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [(CKRecipientSelectionController *)self refreshAvailabilityForRecipients:v17 context:v15];
}

- (BOOL)recipientSelectionIsGroup:(id)group
{
  groupCopy = group;
  recipients = [(CKRecipientSelectionController *)self recipients];
  if ([recipients count] > 1)
  {
    v7 = 1;
  }

  else
  {
    recipients2 = [groupCopy recipients];
    v7 = [recipients2 count] > 1;
  }

  return v7;
}

- (void)recipientSelectionControllerEscapePressed:(id)pressed
{
  cancelButton = [(CKGroupRecipientSelectionController *)self cancelButton];
  target = [cancelButton target];
  cancelButton2 = [(CKGroupRecipientSelectionController *)self cancelButton];
  [target performSelectorOnMainThread:objc_msgSend(cancelButton2 withObject:"action") waitUntilDone:{0, 0}];
}

- (void)recipientSelectionController:(id)controller textDidChange:(id)change
{
  v5 = [(CKRecipientSelectionController *)self toField:controller];
  text = [v5 text];
  v7 = [text length];

  if (!v7)
  {

    [(CKGroupRecipientSelectionController *)self _frecencySearch];
  }
}

- (void)recipientSelectionControllerRequestDismissKeyboard:(id)keyboard
{
  toField = [(CKRecipientSelectionController *)self toField];
  textView = [toField textView];
  [textView resignFirstResponder];
}

- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)controller
{
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  [(CKGroupRecipientSelectionController *)self topInsetForNavBar];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (double)topInsetForNavBar
{
  navigationController = [(CKGroupRecipientSelectionController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  statusBar = [mEMORY[0x1E69DC668] statusBar];

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  isStatusBarHidden = [mEMORY[0x1E69DC668]2 isStatusBarHidden];

  v9 = +[CKUIBehavior sharedBehaviors];
  shouldInsetForStatusBar = [v9 shouldInsetForStatusBar];

  if (shouldInsetForStatusBar)
  {
    v11 = 0.0;
    if ((isStatusBarHidden & 1) == 0)
    {
      [statusBar currentHeight];
      v11 = v12;
    }
  }

  else
  {
    v11 = 0.0;
    if ([navigationBar isTranslucent])
    {
      view = [(CKGroupRecipientSelectionController *)self view];
      [view safeAreaInsets];
      v11 = v14;
    }
  }

  return v11;
}

- (void)_updateNavigationButton
{
  recipients = [(CKRecipientSelectionController *)self recipients];
  v4 = [recipients count];

  if (v4)
  {
    _enableRecipientsAdditionBasedOnAvailability = [(CKGroupRecipientSelectionController *)self _enableRecipientsAdditionBasedOnAvailability];
  }

  else
  {
    _enableRecipientsAdditionBasedOnAvailability = 0;
  }

  doneButton = [(CKGroupRecipientSelectionController *)self doneButton];
  [doneButton setEnabled:_enableRecipientsAdditionBasedOnAvailability];
}

- (void)_checkAvailabilityAndAddToken
{
  if ([(CKGroupRecipientSelectionController *)self isBeingPresentedInMacDetailsView]&& [(CKGroupRecipientSelectionController *)self _enableRecipientsAdditionBasedOnAvailability])
  {
    delegate = [(CKRecipientSelectionController *)self delegate];
    [delegate recipientSelectionControllerReturnPressed:self];
  }
}

- (BOOL)_enableRecipientsAdditionBasedOnAvailability
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CKRecipientSelectionController *)self recipients];
  v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        iDSCanonicalAddress = [v7 IDSCanonicalAddress];
        expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v10 = [expandedRecipientAvailabilities hasResultsForRecipient:iDSCanonicalAddress];

        expandedRecipientAvailabilities2 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v12 = MEMORY[0x1E69A7940];
        v13 = [expandedRecipientAvailabilities2 hasIDStatus:1 forRecipient:iDSCanonicalAddress forServicesWithCapability:*MEMORY[0x1E69A7940]];

        expandedRecipientAvailabilities3 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        LOBYTE(v12) = [expandedRecipientAvailabilities3 hasIDStatus:2 forRecipient:iDSCanonicalAddress forServicesWithCapability:*v12];

        v15 = v10 & (v13 | v12);
        if (v15)
        {
          goto LABEL_17;
        }

        if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
        {
          if (![(CKRecipientSelectionController *)self allowedByScreenTime])
          {
            normalizedAddress = [v7 normalizedAddress];

            if (normalizedAddress)
            {
              currentConversationContext = [(CKRecipientSelectionController *)self currentConversationContext];
              allowedByContactsHandle = [currentConversationContext allowedByContactsHandle];
              normalizedAddress2 = [v7 normalizedAddress];
              v20 = [allowedByContactsHandle objectForKey:normalizedAddress2];

              if (v20 && ![v20 BOOLValue])
              {

LABEL_17:
                goto LABEL_18;
              }
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (void)_frecencySearch
{
  searchListController = [(CKRecipientSelectionController *)self searchListController];
  [searchListController searchWithText:0];

  searchListController2 = [(CKRecipientSelectionController *)self searchListController];
  tableView = [searchListController2 tableView];
  [tableView __ck_scrollToTop:0];
}

- (id)handlesForScreenTimePolicyCheck
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    v14.receiver = self;
    v14.super_class = CKGroupRecipientSelectionController;
    handlesForScreenTimePolicyCheck = [(CKRecipientSelectionController *)&v14 handlesForScreenTimePolicyCheck];
    array = [handlesForScreenTimePolicyCheck mutableCopy];

    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    conversation = [(CKRecipientSelectionController *)self conversation];
    chat = [conversation chat];

    if (chat)
    {
      conversation2 = [(CKRecipientSelectionController *)self conversation];
      chat2 = [conversation2 chat];
      participants = [chat2 participants];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__CKGroupRecipientSelectionController_handlesForScreenTimePolicyCheck__block_invoke;
      v12[3] = &unk_1E72F7A68;
      v13 = array;
      [participants __imForEach:v12];
    }

    v10 = [array copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __70__CKGroupRecipientSelectionController_handlesForScreenTimePolicyCheck__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ID];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 ID];
    [v4 addObject:v5];
  }
}

- (void)composeRecipientViewReturnPressed:(id)pressed
{
  if ([(CKGroupRecipientSelectionController *)self _enableRecipientsAdditionBasedOnAvailability])
  {
    delegate = [(CKRecipientSelectionController *)self delegate];
    [delegate recipientSelectionControllerReturnPressed:self];
  }
}

- (void)composeRecipientViewEscapePressed:(id)pressed
{
  delegate = [(CKRecipientSelectionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKRecipientSelectionController *)self delegate];
    [delegate2 recipientSelectionControllerEscapePressed:self];
  }
}

- (void)handleCancelAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  [(CKRecipientSelectionController *)self stopCheckingRecipientAvailabilityAndRemoveAllTimers];
  [(CKRecipientSelectionController *)self invalidateOutstandingIDStatusRequests];
  [(CKGroupRecipientSelectionController *)self dismissViewControllerAnimated:1 completion:0];
  (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
}

- (void)handleDoneActionForConversation:(id)conversation viewController:(id)controller completion:(id)completion
{
  conversationCopy = conversation;
  completionCopy = completion;
  controllerCopy = controller;
  v11 = CKGroupRecipientSelectionLogHandle(controllerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "User pressed done button to add new participants to the group.", buf, 2u);
  }

  toField = [(CKRecipientSelectionController *)self toField];
  recipients = [toField recipients];

  array = [MEMORY[0x1E695DF70] array];
  v15 = MEMORY[0x1E695DF70];
  recipientStrings = [conversationCopy recipientStrings];
  v17 = [v15 arrayWithArray:recipientStrings];

  v19 = CKGroupRecipientSelectionLogHandle(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "===== Current conversation recipients =====", buf, 2u);
  }

  [v17 enumerateObjectsUsingBlock:&__block_literal_global_122_0];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke_123;
  v31[3] = &unk_1E72EC398;
  v32 = v17;
  v33 = array;
  v20 = array;
  v21 = v17;
  [recipients enumerateObjectsUsingBlock:v31];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke_125;
  v28 = &unk_1E72F3B28;
  v29 = conversationCopy;
  v30 = v22;
  v23 = v22;
  v24 = conversationCopy;
  [v20 enumerateObjectsUsingBlock:&v25];
  [(CKGroupRecipientSelectionController *)self handleAddingHandles:v23 conversation:v24 viewController:controllerCopy allRecipientAddresses:v21 completion:completionCopy, v25, v26, v27, v28];
}

void __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CKGroupRecipientSelectionLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Recipient string: %@", &v4, 0xCu);
  }
}

void __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke_123(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 rawAddress];
  if (!v4)
  {
    v5 = [v3 address];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
      v6 = CKGroupRecipientSelectionLogHandle([*(a1 + 40) addObject:v5]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v5;
        v7 = "rawAddress was nil, adding address to allRecipients %@";
LABEL_9:
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, v7, &v8, 0xCu);
      }
    }

    else
    {
      v6 = CKGroupRecipientSelectionLogHandle(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v3;
        v7 = "Both rawAddress and address for recipient %@ were nil. Not adding recipient to group.";
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  [*(a1 + 32) addObject:v4];
  v5 = CKGroupRecipientSelectionLogHandle([*(a1 + 40) addObject:v4]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Added rawAddress to allRecipients %@", &v8, 0xCu);
  }

LABEL_11:
}

void __97__CKGroupRecipientSelectionController_handleDoneActionForConversation_viewController_completion___block_invoke_125(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chat];
  v6 = [v5 account];
  v7 = [v6 imHandleWithID:v4 alreadyCanonical:0];

  [*(a1 + 40) addObject:v7];
}

- (id)_orderedMutableGroupServices
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5CA0] servicesWithCapabilityName:*MEMORY[0x1E69A79C0]];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_128_0];

  v5 = CKGroupRecipientSelectionLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Ranked service names for details view add resolution: %@", &v7, 0xCu);
  }

  return v3;
}

uint64_t __67__CKGroupRecipientSelectionController__orderedMutableGroupServices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 serviceForSendingPriority];
  if (v6 <= [v5 serviceForSendingPriority])
  {
    v8 = [v4 serviceForSendingPriority];
    v7 = v8 < [v5 serviceForSendingPriority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)handleAddingHandles:(id)handles conversation:(id)conversation viewController:(id)controller allRecipientAddresses:(id)addresses completion:(id)completion
{
  v75 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  conversationCopy = conversation;
  controllerCopy = controller;
  addressesCopy = addresses;
  completionCopy = completion;
  _orderedMutableGroupServices = [(CKGroupRecipientSelectionController *)self _orderedMutableGroupServices];
  v13 = CKGroupRecipientSelectionLogHandle(_orderedMutableGroupServices);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    chat = [conversationCopy chat];
    guid = [chat guid];
    *buf = 138412546;
    v72 = handlesCopy;
    v73 = 2112;
    v74 = guid;
    _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Trying to add recipients %@ to chat with guid %@", buf, 0x16u);
  }

  v68 = 0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = handlesCopy;
  v16 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v65;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v65 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v64 + 1) + 8 * i);
        expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        v22 = [v20 ID];
        iDSFormattedDestinationID = [v22 IDSFormattedDestinationID];
        sendingService = [conversationCopy sendingService];
        name = [sendingService name];
        v26 = [expandedRecipientAvailabilities reachabilityForRecipient:iDSFormattedDestinationID service:name isFinal:&v68];

        if ((v68 & 1) == 0)
        {
          v43 = CKGroupRecipientSelectionLogHandle(v27);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v72 = v20;
            _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "Requested reachability for %@ was not final, bailing early. Waiting for final response.", buf, 0xCu);
          }

          v44 = obj;
          v41 = addressesCopy;
          v40 = controllerCopy;
          v42 = completionCopy;
          goto LABEL_30;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  conversation = [(CKRecipientSelectionController *)self conversation];
  supportsMutatingGroupMembers = [conversation supportsMutatingGroupMembers];

  if (!supportsMutatingGroupMembers)
  {
    v31 = CKGroupRecipientSelectionLogHandle(v30);
    v41 = addressesCopy;
    v40 = controllerCopy;
    v42 = completionCopy;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Group does not support mutation, not adding handles.", buf, 2u);
    }

LABEL_28:

LABEL_29:
    v44 = obj;
    (v42)[2](v42, 1, obj, v41, self);
    goto LABEL_30;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v31 = _orderedMutableGroupServices;
  v32 = [v31 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (!v32)
  {
LABEL_22:
    v41 = addressesCopy;
    v40 = controllerCopy;
    v42 = completionCopy;
    goto LABEL_28;
  }

  v33 = v32;
  v34 = *v61;
LABEL_14:
  v35 = 0;
  while (1)
  {
    if (*v61 != v34)
    {
      objc_enumerationMutation(v31);
    }

    v36 = *(*(&v60 + 1) + 8 * v35);
    v37 = [(CKGroupRecipientSelectionController *)self hasInvalidRecipientsForService:v36];
    v38 = v37;
    v39 = CKGroupRecipientSelectionLogHandle(v37);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v72 = v36;
      v73 = 1024;
      LODWORD(v74) = v38;
      _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "hasInvalidRecipientsForService: %@, %d", buf, 0x12u);
    }

    if (!v38)
    {
      break;
    }

    if (v33 == ++v35)
    {
      v33 = [v31 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v33)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  v45 = v36;

  v41 = addressesCopy;
  v40 = controllerCopy;
  v42 = completionCopy;
  if (!v45)
  {
    goto LABEL_29;
  }

  conversation2 = [(CKRecipientSelectionController *)self conversation];
  v44 = obj;
  [conversation2 addRecipientHandles:obj];

  conversation3 = [(CKRecipientSelectionController *)self conversation];
  sendingService2 = [conversation3 sendingService];

  if (v45 != sendingService2)
  {
    v50 = CKGroupRecipientSelectionLogHandle(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      conversation4 = [(CKRecipientSelectionController *)self conversation];
      sendingService3 = [conversation4 sendingService];
      *buf = 138412546;
      v72 = sendingService3;
      v73 = 2112;
      v74 = v45;
      _os_log_impl(&dword_19020E000, v50, OS_LOG_TYPE_INFO, "Current service %@, new participant(s) supported service %@. Refreshing service for sending...", buf, 0x16u);
    }

    conversation5 = [(CKRecipientSelectionController *)self conversation];
    [conversation5 refreshServiceForSending];
  }

  [(CKGroupRecipientSelectionController *)self handleCancelAction:controllerCopy completion:completionCopy];

LABEL_30:
}

- (BOOL)hasInvalidRecipientsForService:(id)service
{
  v50 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  recipients = [(CKRecipientSelectionController *)self recipients];
  v6 = [recipients countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v6)
  {
    v7 = *v41;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        iDSCanonicalAddress = [*(*(&v40 + 1) + 8 * i) IDSCanonicalAddress];
        expandedRecipientAvailabilities = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        name = [serviceCopy name];
        v12 = [expandedRecipientAvailabilities idStatusForRecipient:iDSCanonicalAddress service:name];

        if (v12 != 1)
        {
          v34 = 1;
          goto LABEL_28;
        }
      }

      v6 = [recipients countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  name2 = [serviceCopy name];
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
  name3 = [iMessageService name];
  v35 = [name2 isEqualToString:name3];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  conversation = [(CKRecipientSelectionController *)self conversation];
  chat = [conversation chat];
  recipients = [chat participants];

  v18 = [recipients countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v18)
  {
    v34 = 0;
    v20 = *v37;
    *&v19 = 138412546;
    v33 = v19;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(recipients);
        }

        v22 = *(*(&v36 + 1) + 8 * j);
        v23 = [v22 ID];
        v24 = IMChatCanonicalIDSIDsForAddress();

        if (v35)
        {
          v25 = [v22 ID];
          _appearsToBeEmail = [v25 _appearsToBeEmail];

          if (_appearsToBeEmail)
          {

            goto LABEL_27;
          }
        }

        expandedRecipientAvailabilities2 = [(CKRecipientSelectionController *)self expandedRecipientAvailabilities];
        name4 = [serviceCopy name];
        v29 = [expandedRecipientAvailabilities2 idStatusForRecipient:v24 service:name4];

        if (v29 != 1)
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              name5 = [serviceCopy name];
              *buf = v33;
              v45 = v24;
              v46 = 2112;
              v47 = name5;
              _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Existing handle %@ was not reachable on service %@, cannot add.", buf, 0x16u);
            }
          }

          v34 = 1;
        }
      }

      v18 = [recipients countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_27:
    v34 = 0;
  }

LABEL_28:

  return v34 & 1;
}

- (id)_serviceForRecipientPresentationOptions
{
  conversation = [(CKRecipientSelectionController *)self conversation];
  sendingService = [conversation sendingService];
  v5 = sendingService;
  if (sendingService)
  {
    _serviceForRecipientPresentationOptions = sendingService;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKGroupRecipientSelectionController;
    _serviceForRecipientPresentationOptions = [(CKRecipientSelectionController *)&v9 _serviceForRecipientPresentationOptions];
  }

  v7 = _serviceForRecipientPresentationOptions;

  return v7;
}

@end