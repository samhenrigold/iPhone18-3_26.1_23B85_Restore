@interface AAUIInviteMessageFlowController
- (AAUIInviteMessageFlowController)initWithContext:(id)context flow:(unint64_t)flow navigationController:(id)controller defaultMessageViewModel:(id)model messageSentViewModel:(id)viewModel;
- (AAUIInviteMessageFlowController)initWithContext:(id)context flow:(unint64_t)flow navigationController:(id)controller defaultMessageViewModel:(id)model messageSentViewModel:(id)viewModel isADPUpsellFlow:(BOOL)upsellFlow isFamilyMember:(BOOL)member cdpContext:(id)self0;
- (AAUIInviteMessageFlowControllerDelegate)delegate;
- (AIDAAccountManager)accountManager;
- (BOOL)_sendLCLiveMessage:(id)message;
- (id)_bubbleImageForFlow:(unint64_t)flow;
- (void)_cancelMessageInvitationFlow;
- (void)_finishMessageInvitationFlow;
- (void)_hideActivitySpinnerInNavigationBar;
- (void)_invitationWasSent;
- (void)_messageSentSecondaryActionTapped;
- (void)_postAdpUpsellCFUCustodianInviteSentEvent;
- (void)_postAdpUpsellCFUFamilyCustodianAddedEvent;
- (void)_sendDefaultMessage;
- (void)_sendEscapeOfferSelectedEvent:(id)event;
- (void)_sendRecoveryContactSendMessageLandingEvent:(id)event;
- (void)_sendTelemetryEventWithSuccess:(id)success didSucceed:(BOOL)succeed error:(id)error;
- (void)_showActivitySpinnerInNavigationBar;
- (void)_showDefaultMessageView;
- (void)_showInvitationSent;
- (void)_showMessagesComposeController;
- (void)inviteController:(id)controller didFinishWithStatus:(unint64_t)status recipients:(id)recipients userInfo:(id)info error:(id)error;
@end

@implementation AAUIInviteMessageFlowController

- (AAUIInviteMessageFlowController)initWithContext:(id)context flow:(unint64_t)flow navigationController:(id)controller defaultMessageViewModel:(id)model messageSentViewModel:(id)viewModel
{
  viewModelCopy = viewModel;
  modelCopy = model;
  controllerCopy = controller;
  contextCopy = context;
  v16 = _AAUILogSystem(contextCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [AAUIInviteMessageFlowController initWithContext:v16 flow:? navigationController:? defaultMessageViewModel:? messageSentViewModel:?];
  }

  LOBYTE(v19) = 0;
  v17 = [(AAUIInviteMessageFlowController *)self initWithContext:contextCopy flow:flow navigationController:controllerCopy defaultMessageViewModel:modelCopy messageSentViewModel:viewModelCopy isADPUpsellFlow:0 isFamilyMember:v19 cdpContext:0];

  return v17;
}

- (AAUIInviteMessageFlowController)initWithContext:(id)context flow:(unint64_t)flow navigationController:(id)controller defaultMessageViewModel:(id)model messageSentViewModel:(id)viewModel isADPUpsellFlow:(BOOL)upsellFlow isFamilyMember:(BOOL)member cdpContext:(id)self0
{
  contextCopy = context;
  controllerCopy = controller;
  modelCopy = model;
  viewModelCopy = viewModel;
  cdpContextCopy = cdpContext;
  v28.receiver = self;
  v28.super_class = AAUIInviteMessageFlowController;
  v19 = [(AAUIInviteMessageFlowController *)&v28 init];
  v20 = v19;
  if (v19)
  {
    v19->_flow = flow;
    objc_storeStrong(&v19->_context, context);
    recipients = [contextCopy recipients];
    firstObject = [recipients firstObject];
    recipientHandle = v20->_recipientHandle;
    v20->_recipientHandle = firstObject;

    objc_storeStrong(&v20->_navigationController, controller);
    objc_storeStrong(&v20->_defaultMessageViewModel, model);
    objc_storeStrong(&v20->_messageSentViewModel, viewModel);
    v20->_isADPUpsellFlow = upsellFlow;
    v20->_isFamilyMember = member;
    objc_storeStrong(&v20->_cdpContext, cdpContext);
  }

  return v20;
}

- (void)_showActivitySpinnerInNavigationBar
{
  spinnerManager = self->_spinnerManager;
  if (!spinnerManager)
  {
    navigationController = [(AAUIInviteMessageFlowController *)self navigationController];
    topViewController = [navigationController topViewController];
    navigationItem = [topViewController navigationItem];

    v7 = [[AAUISpinnerManager alloc] initWithNavigationItem:navigationItem hideBackButton:1];
    v8 = self->_spinnerManager;
    self->_spinnerManager = v7;

    spinnerManager = self->_spinnerManager;
  }

  [(AAUISpinnerManager *)spinnerManager startNavigationSpinner];
}

- (void)_hideActivitySpinnerInNavigationBar
{
  spinnerManager = self->_spinnerManager;
  if (spinnerManager)
  {
    [(AAUISpinnerManager *)spinnerManager stopNavigationSpinner];
    v4 = self->_spinnerManager;
    self->_spinnerManager = 0;
  }
}

- (void)_showDefaultMessageView
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [[AAUIOBWelcomeController alloc] initWithViewModel:self->_defaultMessageViewModel];
  defaultMessageController = self->_defaultMessageController;
  self->_defaultMessageController = v4;

  primaryButton = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
  [primaryButton addTarget:self action:sel__sendDefaultMessage forControlEvents:64];

  secondaryButton = [(AAUIOBWelcomeController *)self->_defaultMessageController secondaryButton];
  [secondaryButton addTarget:self action:sel__showMessagesComposeController forControlEvents:64];

  if (!self->_hideCancel)
  {
    delegate = [(AAUIInviteMessageFlowController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    if (v9)
    {
      v11 = 101;
    }

    else
    {
      v11 = 1;
    }

    v12 = [v10 initWithBarButtonSystemItem:v11 target:self action:sel__cancelMessageInvitationFlow];
    navigationItem = [(OBBaseWelcomeController *)self->_defaultMessageController navigationItem];
    [navigationItem setLeftBarButtonItem:v12];

    [v3 addObject:*MEMORY[0x1E698BB28]];
  }

  [v3 addObject:@"com.apple.accountaccess.editInvite"];
  [v3 addObject:@"com.apple.accountaccess.send"];
  v14 = [(AAUIInviteMessageFlowController *)self _sendRecoveryContactSendMessageLandingEvent:v3];
  navigationController = self->_navigationController;
  v16 = _AAUILogSystem(v14);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (navigationController)
  {
    if (v17)
    {
      *v20 = 0;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "iMessage invitation flow by pushing to existing navigation controller", v20, 2u);
    }

    [(UINavigationController *)self->_navigationController pushViewController:self->_defaultMessageController animated:1];
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "iMessage invitation flow by creating new navigation controller", buf, 2u);
    }

    v18 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_defaultMessageController];
    v19 = self->_navigationController;
    self->_navigationController = v18;
  }
}

- (void)_showMessagesComposeController
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Show message composer...", v6, 2u);
  }

  [(AAUIInviteMessageFlowController *)self _sendEscapeOfferSelectedEvent:@"com.apple.accountaccess.editInvite"];
  v4 = [[AAUIMessagesInviteConfigurationController alloc] initWithInviteContext:self->_context flow:self->_flow presentingController:self->_navigationController];
  messageComposer = self->_messageComposer;
  self->_messageComposer = v4;

  [(AAUIMessagesInviteConfigurationController *)self->_messageComposer setDelegate:self];
  [(AAUIMessagesInviteConfigurationController *)self->_messageComposer setUiVersion:[(AAUIInviteMessageFlowController *)self uiVersion]];
  [(AAUIMessagesInviteConfigurationController *)self->_messageComposer presentWhenReadyWithCompletion:0];
}

- (void)_showInvitationSent
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Initiating Trusted Contact invitation message flow...", buf, 2u);
  }

  uiVersion = [(AAUIInviteMessageFlowController *)self uiVersion];
  v5 = _AAUILogSystem(uiVersion);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (uiVersion == 1)
  {
    if (v6)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Skip showing invitation message sent UI...", buf, 2u);
    }

    [(AAUIInviteMessageFlowController *)self _finishMessageInvitationFlow];
  }

  else
  {
    if (v6)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Show invitation message sent UI...", buf, 2u);
    }

    v7 = [[AAUIOBWelcomeController alloc] initWithViewModel:self->_messageSentViewModel];
    allSetVC = self->_allSetVC;
    self->_allSetVC = v7;

    navigationItem = [(OBBaseWelcomeController *)self->_allSetVC navigationItem];
    [navigationItem setHidesBackButton:1];

    primaryButton = [(AAUIOBWelcomeController *)self->_allSetVC primaryButton];
    [primaryButton addTarget:self action:sel__finishMessageInvitationFlow forEvents:64];

    secondaryButton = [(AAUIOBWelcomeController *)self->_allSetVC secondaryButton];
    [secondaryButton addTarget:self action:sel__messageSentSecondaryActionTapped forEvents:64];

    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__AAUIInviteMessageFlowController__showInvitationSent__block_invoke;
    v12[3] = &unk_1E820BE68;
    objc_copyWeak(&v13, buf);
    v12[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __54__AAUIInviteMessageFlowController__showInvitationSent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[12] aaui_showViewController:*(*(a1 + 32) + 72) sender:0];
  v2 = WeakRetained;
  if (*(WeakRetained + 88) == 1)
  {
    if (*(WeakRetained + 89) == 1)
    {
      [WeakRetained _postAdpUpsellCFUFamilyCustodianAddedEvent];
    }

    else
    {
      [WeakRetained _postAdpUpsellCFUCustodianInviteSentEvent];
    }

    v2 = WeakRetained;
  }
}

- (void)_postAdpUpsellCFUFamilyCustodianAddedEvent
{
  v3 = MEMORY[0x1E6985DB0];
  altDSID = [(CDPContext *)self->_cdpContext altDSID];
  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v7 = [v3 analyticsEventWithName:@"com.apple.appleaccount.familyCustodianAdded" altDSID:altDSID flowID:telemetryFlowID];

  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v7];
}

- (void)_postAdpUpsellCFUCustodianInviteSentEvent
{
  v3 = MEMORY[0x1E6985DB0];
  altDSID = [(CDPContext *)self->_cdpContext altDSID];
  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v7 = [v3 analyticsEventWithName:@"com.apple.appleaccount.custodianInviteSent" altDSID:altDSID flowID:telemetryFlowID];

  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v7];
}

- (void)_invitationWasSent
{
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  accounts = [WeakRetained accounts];
  v5 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v5)
  {
    v6 = MEMORY[0x1E6985DB0];
    v7 = *MEMORY[0x1E698BA48];
    aida_alternateDSID = [v5 aida_alternateDSID];
    telemetryFlowID = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v10 = [v6 analyticsEventWithName:v7 altDSID:aida_alternateDSID flowID:telemetryFlowID];
  }

  else
  {
    v10 = 0;
  }

  delegate = [(AAUIInviteMessageFlowController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    objc_initWeak(&location, self);
    if (+[AAUIFeatureFlags isSolariumEnabled])
    {
      primaryButton = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
      [primaryButton showsBusyIndicator];
    }

    delegate2 = [(AAUIInviteMessageFlowController *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__AAUIInviteMessageFlowController__invitationWasSent__block_invoke;
    v15[3] = &unk_1E820D918;
    v15[4] = self;
    v16 = v10;
    objc_copyWeak(&v17, &location);
    [delegate2 inviteMessageWasSent:self completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AAUIInviteMessageFlowController *)self _showInvitationSent];
    [(AAUIInviteMessageFlowController *)self _sendTelemetryEventWithSuccess:v10 didSucceed:1 error:0];
  }
}

void __53__AAUIInviteMessageFlowController__invitationWasSent__block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    v5 = [*(*(a1 + 32) + 64) primaryButton];
    [v5 hidesBusyIndicator];
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    [v6 _sendTelemetryEventWithSuccess:v7 didSucceed:1 error:0];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _showInvitationSent];
  }

  else
  {
    [v6 _sendTelemetryEventWithSuccess:v7 didSucceed:0 error:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _cancelMessageInvitationFlow];
  }
}

- (void)_sendTelemetryEventWithSuccess:(id)success didSucceed:(BOOL)succeed error:(id)error
{
  if (success)
  {
    succeedCopy = succeed;
    v7 = MEMORY[0x1E696AD98];
    errorCopy = error;
    successCopy = success;
    v10 = [v7 numberWithBool:succeedCopy];
    [successCopy setObject:v10 forKeyedSubscript:*MEMORY[0x1E6985E40]];

    [successCopy populateUnderlyingErrorsStartingWithRootError:errorCopy];
    reporter = [MEMORY[0x1E698B810] reporter];
    [reporter sendEvent:successCopy];
  }
}

- (void)_cancelMessageInvitationFlow
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling invitation flow...", buf, 2u);
  }

  delegate = [(AAUIInviteMessageFlowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AAUIInviteMessageFlowController *)self delegate];
    [delegate2 inviteMessageFlowWasCancelled:self];
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AAUIInviteMessageFlowController__cancelMessageInvitationFlow__block_invoke;
    block[3] = &unk_1E820C290;
    objc_copyWeak(&v8, buf);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __63__AAUIInviteMessageFlowController__cancelMessageInvitationFlow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[12] dismissViewControllerAnimated:1 completion:0];
}

- (void)_finishMessageInvitationFlow
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Finishing invitation flow...", buf, 2u);
  }

  primaryButton = [(AAUIOBWelcomeController *)self->_allSetVC primaryButton];
  [primaryButton setEnabled:0];

  delegate = [(AAUIInviteMessageFlowController *)self delegate];

  if (delegate)
  {
    delegate2 = [(AAUIInviteMessageFlowController *)self delegate];
    [delegate2 inviteMessageFlowDidFinish:self];
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AAUIInviteMessageFlowController__finishMessageInvitationFlow__block_invoke;
    block[3] = &unk_1E820C290;
    objc_copyWeak(&v8, buf);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __63__AAUIInviteMessageFlowController__finishMessageInvitationFlow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[12] dismissViewControllerAnimated:1 completion:0];
}

- (void)_messageSentSecondaryActionTapped
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Invite Message Completed - Secondary Button tapped", v7, 2u);
  }

  delegate = [(AAUIInviteMessageFlowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AAUIInviteMessageFlowController *)self delegate];
    [delegate2 inviteMessageCompleteSecondaryButtonTapped:self];
  }
}

- (void)_sendDefaultMessage
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Sending default message...", buf, 2u);
  }

  v4 = [[AAUIInviteLinkMetadataProvider alloc] initWithContext:self->_context];
  v5 = [(AAUIInviteMessageFlowController *)self _bubbleImageForFlow:self->_flow];
  objc_initWeak(buf, self);
  [(AAUIInviteMessageFlowController *)self _sendEscapeOfferSelectedEvent:@"com.apple.accountaccess.send"];
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    primaryButton = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
    [primaryButton showsBusyIndicator];
  }

  else
  {
    [(AAUIInviteMessageFlowController *)self _showActivitySpinnerInNavigationBar];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AAUIInviteMessageFlowController__sendDefaultMessage__block_invoke;
  v7[3] = &unk_1E820D960;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  [(AAUIInviteLinkMetadataProvider *)v4 loadMetadataWithImage:v5 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __54__AAUIInviteMessageFlowController__sendDefaultMessage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v22 = _AAUILogSystem(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __54__AAUIInviteMessageFlowController__sendDefaultMessage__block_invoke_cold_3(v22);
    }

    goto LABEL_22;
  }

  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    v8 = [WeakRetained[8] primaryButton];
    [v8 hidesBusyIndicator];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    v22 = _AAUILogSystem(v9);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __54__AAUIInviteMessageFlowController__sendDefaultMessage__block_invoke_cold_2(v6, v22);
    }

    goto LABEL_22;
  }

  v9 = [WeakRetained _hideActivitySpinnerInNavigationBar];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ([*(a1 + 32) uiVersion] == 1)
  {
    v10 = [v5 bubbleMetadata];
    v33 = [objc_alloc(getMSMessageRichLinkLayoutClass()) initWithLinkMetadata:v10];
    v11 = [objc_alloc(getMSMessageLiveLayoutClass()) initWithAlternateLayout:v33];
    [v11 setRequiredCapabilities:&unk_1F44C06C0];
    v12 = objc_alloc(getMSMessageClass());
    v13 = objc_alloc_init(getMSSessionClass());
    v14 = [v12 initWithSession:v13];

    [v14 setLayout:v11];
    v15 = [*(*(a1 + 32) + 16) messageURL];
    [v14 setURL:v15];

    v16 = [v10 title];
    [v14 setSummaryText:v16];

    v17 = [v14 _pluginPayloadWithAppIconData:0 appName:@"CustodianInviteMessageExtension" allowDataPayloads:1];
    v18 = [v17 data];
    v37[0] = WeakRetained[3];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v20 = IMSPISendMSMessagePayloadReturningGUID();

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = +[AAUIFeatureFlags isLCMessageExtensionEnabled];
    if (v23)
    {
      v21 = [WeakRetained _sendLCLiveMessage:v5];
      if ((v21 & 1) == 0)
      {
LABEL_20:
        v22 = _AAUILogSystem(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __54__AAUIInviteMessageFlowController__sendDefaultMessage__block_invoke_cold_1(v22);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v24 = _AAUILogSystem(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v5;
        _os_log_impl(&dword_1C5355000, v24, OS_LOG_TYPE_DEFAULT, "Sending message with linkmetadata: %@", buf, 0xCu);
      }

      v25 = objc_alloc_init(MEMORY[0x1E696ECD8]);
      v26 = [v5 bubbleMetadata];
      [v25 setMetadata:v26];

      v34 = 0;
      v27 = [v25 dataRepresentationWithOutOfLineAttachments:&v34];
      v28 = v34;
      v29 = [WeakRetained[2] inviteURL];
      v30 = IMSPISendRichLink();

      v31 = [WeakRetained[2] messageBody];
      v32 = IMSPISendMessageWithAttachments();

      if (!v30 || !v32)
      {
        goto LABEL_20;
      }
    }
  }

  [WeakRetained _invitationWasSent];
LABEL_23:
}

void __54__AAUIInviteMessageFlowController__sendDefaultMessage__block_invoke_99(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _AAUILogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Sent message GUID: %@", &v4, 0xCu);
  }
}

- (BOOL)_sendLCLiveMessage:(id)message
{
  v16[1] = *MEMORY[0x1E69E9840];
  bubbleMetadata = [message bubbleMetadata];
  v5 = [objc_alloc(getMSMessageRichLinkLayoutClass()) initWithLinkMetadata:bubbleMetadata];
  v6 = [objc_alloc(getMSMessageLiveLayoutClass()) initWithAlternateLayout:v5];
  v7 = objc_alloc(getMSMessageClass());
  v8 = objc_alloc_init(getMSSessionClass());
  v9 = [v7 initWithSession:v8];

  [v9 setLayout:v6];
  messageURL = [(AAMessagesInviteContext *)self->_context messageURL];
  [v9 setURL:messageURL];

  title = [bubbleMetadata title];
  [v9 setSummaryText:title];

  v12 = [v9 _pluginPayloadWithAppIconData:0 appName:@"LegacyContactMessageExtention" allowDataPayloads:1];
  data = [v12 data];
  v16[0] = self->_recipientHandle;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  LOBYTE(self) = IMSPISendMSMessagePayloadReturningGUID();

  return self;
}

void __54__AAUIInviteMessageFlowController__sendLCLiveMessage___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _AAUILogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Sent message GUID: %@", &v4, 0xCu);
  }
}

- (id)_bubbleImageForFlow:(unint64_t)flow
{
  if (!flow)
  {
    v3 = @"custodian_message_bubble";
    goto LABEL_5;
  }

  if (flow == 1)
  {
    v3 = @"beneficiary_message_bubble";
LABEL_5:
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:v3 inBundle:v5];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_sendRecoveryContactSendMessageLandingEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  accounts = [WeakRetained accounts];
  v6 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v6)
  {
    v7 = MEMORY[0x1E6985DB0];
    v8 = *MEMORY[0x1E698BA50];
    aida_alternateDSID = [v6 aida_alternateDSID];
    telemetryFlowID = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v11 = [v7 analyticsEventWithName:v8 altDSID:aida_alternateDSID flowID:telemetryFlowID];

    aaf_arrayAsCommaSeperatedString = [eventCopy aaf_arrayAsCommaSeperatedString];
    [v11 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:*MEMORY[0x1E6997818]];

    reporter = [MEMORY[0x1E698B810] reporter];
    [reporter sendEvent:v11];
  }
}

- (void)_sendEscapeOfferSelectedEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  accounts = [WeakRetained accounts];
  v6 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v6)
  {
    v7 = MEMORY[0x1E6985DB0];
    v8 = *MEMORY[0x1E698BA68];
    aida_alternateDSID = [v6 aida_alternateDSID];
    telemetryFlowID = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v11 = [v7 analyticsEventWithName:v8 altDSID:aida_alternateDSID flowID:telemetryFlowID];

    [v11 setObject:eventCopy forKeyedSubscript:*MEMORY[0x1E6997820]];
    reporter = [MEMORY[0x1E698B810] reporter];
    [reporter sendEvent:v11];
  }
}

- (void)inviteController:(id)controller didFinishWithStatus:(unint64_t)status recipients:(id)recipients userInfo:(id)info error:(id)error
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  accounts = [WeakRetained accounts];
  v12 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v12)
  {
    v14 = MEMORY[0x1E6985DB0];
    v15 = *MEMORY[0x1E698BA48];
    aida_alternateDSID = [v12 aida_alternateDSID];
    telemetryFlowID = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v18 = [v14 analyticsEventWithName:v15 altDSID:aida_alternateDSID flowID:telemetryFlowID];

    if (status)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = _AAUILogSystem(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "User cancelled", v24, 2u);
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = -1;
    goto LABEL_12;
  }

  v18 = 0;
  if (!status)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (status != 1)
  {
    v22 = _AAUILogSystem(v13);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AAUIInviteMessageFlowController inviteController:v22 didFinishWithStatus:? recipients:? userInfo:? error:?];
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = 0;
LABEL_12:
    v23 = [v20 aa_errorWithCode:v21];
    [(AAUIInviteMessageFlowController *)self _sendTelemetryEventWithSuccess:v18 didSucceed:0 error:v23];

    goto LABEL_13;
  }

  [(AAUIInviteMessageFlowController *)self _invitationWasSent];
LABEL_13:
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (AAUIInviteMessageFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AIDAAccountManager)accountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);

  return WeakRetained;
}

void __54__AAUIInviteMessageFlowController__sendDefaultMessage__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch metadata for message with error %@", &v2, 0xCu);
}

void __54__AAUIInviteMessageFlowController__sendDefaultMessage__block_invoke_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[AAUIInviteMessageFlowController _sendDefaultMessage]_block_invoke";
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "%s failed to acquire strong ref.", &v1, 0xCu);
}

@end