@interface TSSecureIntentGestureViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSSecureIntentGestureViewController)initWithExternalizedContext:(id)context descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired;
- (id)_createPKGlyphView;
- (void)_doubleClickGesture;
- (void)_handleUserCancelNotification:(id)notification;
- (void)_maybeSendExternalizedContext:(id)context isDTOEvaluationFailed:(BOOL)failed;
- (void)_updateAuthenticationStatus:(id)status isDTOEvaluationFailed:(BOOL)failed;
- (void)_updateLayoutConstraint;
- (void)dealloc;
- (void)evaluateDtoPolicy:(id)policy;
- (void)prepare:(id)prepare;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TSSecureIntentGestureViewController

- (TSSecureIntentGestureViewController)initWithExternalizedContext:(id)context descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired
{
  evaluationRequiredCopy = evaluationRequired;
  requiredCopy = required;
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  descriptorsCopy = descriptors;
  v22.receiver = self;
  v22.super_class = TSSecureIntentGestureViewController;
  v15 = [(TSSecureIntentGestureViewController *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v17 = _TSLogDomain(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v24 = contextCopy;
      v25 = 1024;
      v26 = requiredCopy;
      v27 = 1024;
      v28 = evaluationRequiredCopy;
      v29 = 2080;
      v30 = "[TSSecureIntentGestureViewController initWithExternalizedContext:descriptors:isLocalConvertFlow:isSecureIntentRequired:isDtoEvaluationRequired:]";
      _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "externalized context = %@ isSecureIntentRequired: %d, isDtoEvaluationRequired:%d @%s", buf, 0x22u);
    }

    objc_storeStrong(&v16->_externalizedContext, context);
    objc_storeStrong(&v16->_descriptors, descriptors);
    v18 = [TSUtilities formatLocAndConcatenateDescriptors:descriptorsCopy];
    formatedDescriptor = v16->_formatedDescriptor;
    v16->_formatedDescriptor = v18;

    v16->_isExternalizedContextSent = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__handleUserCancelNotification_ name:@"ss.user.canceled" object:0];

    v16->_isLocalConvertFlow = flow;
    v16->_isSecureIntentRequired = requiredCopy;
    v16->_isDtoEvaluationRequired = evaluationRequiredCopy;
    v16->_isDtoEvaluationSucceeded = !evaluationRequiredCopy;
    v16->_isSecureIntentSucceeded = !v16->_isSecureIntentRequired;
  }

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TSSecureIntentGestureViewController;
  [(TSSecureIntentGestureViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = TSSecureIntentGestureViewController;
  [(TSSecureIntentGestureViewController *)&v27 viewDidLoad];
  if (!self->_glyphView)
  {
    isLocalConvertFlow = self->_isLocalConvertFlow;
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    if (isLocalConvertFlow)
    {
      v6 = @"CONFIRM_CONVERT";
    }

    else
    {
      v6 = @"CONFIRM_TRANSFER";
    }

    v7 = [v4 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];
    [(TSSecureIntentGestureViewController *)self setTitle:v7];

    if (self->_isLocalConvertFlow)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"DOUBLE_CLICK_SIDE_BUTTON_LOCAL_CONVERT";
LABEL_7:
      v11 = [v8 localizedStringForKey:v10 value:&stru_28753DF48 table:@"Localizable"];
LABEL_13:

      v16 = [TSUtilities appendLeftToRightMark:v11];
      [(TSSecureIntentGestureViewController *)self setSubtitle:v16];

      [(TSSecureIntentGestureViewController *)self setDismissalType:1];
      objc_initWeak(&location, self);
      v17 = MEMORY[0x277D432F0];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__TSSecureIntentGestureViewController_viewDidLoad__block_invoke;
      v24[3] = &unk_279B448A0;
      objc_copyWeak(&v25, &location);
      v18 = [v17 actionWithTitle:&stru_28753DF48 style:0 handler:v24];
      [(TSSecureIntentGestureViewController *)self setDismissButtonAction:v18];

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"READY..." value:&stru_28753DF48 table:@"Localizable"];
      [(TSSecureIntentGestureViewController *)self showActivityIndicatorWithStatus:v20];

      _createPKGlyphView = [(TSSecureIntentGestureViewController *)self _createPKGlyphView];
      glyphView = self->_glyphView;
      self->_glyphView = _createPKGlyphView;

      [(PKGlyphView *)self->_glyphView setState:2];
      [(PKGlyphView *)self->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(TSSecureIntentGestureViewController *)self contentView];
      [contentView addSubview:self->_glyphView];

      [(TSSecureIntentGestureViewController *)self _updateLayoutConstraint];
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);

      return;
    }

    if ([(NSArray *)self->_descriptors count]== 1)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v13;
      v14 = @"DOUBLE_CLICK_SIDE_BUTTON_SINGLE_PLAN_%@";
    }

    else
    {
      if ([(NSArray *)self->_descriptors count]< 2)
      {
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = v8;
        v10 = @"DOUBLE_CLICK_SIDE_BUTTON_NO_DESCRIPTOR";
        goto LABEL_7;
      }

      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v13;
      v14 = @"DOUBLE_CLICK_SIDE_BUTTON_MULTI_PLAN_%@";
    }

    v15 = [v13 localizedStringForKey:v14 value:&stru_28753DF48 table:@"Localizable"];
    v11 = [v12 stringWithFormat:v15, self->_formatedDescriptor];

    goto LABEL_13;
  }
}

void __50__TSSecureIntentGestureViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:89 userInfo:0];
  [WeakRetained _maybeSendExternalizedContext:v3 isDTOEvaluationFailed:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 delegate];
  [v4 userDidTapCancel];
}

- (void)viewDidAppear:(BOOL)appear
{
  v20.receiver = self;
  v20.super_class = TSSecureIntentGestureViewController;
  [(TSSecureIntentGestureViewController *)&v20 viewDidAppear:appear];
  [(TSSecureIntentGestureViewController *)self _doubleClickGesture];
  if (!self->_physicalButtonView)
  {
    v4 = [objc_alloc(MEMORY[0x277D24228]) initWithStyle:1];
    physicalButtonView = self->_physicalButtonView;
    self->_physicalButtonView = v4;

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"DOUBLE_CLICK_TO_CONFIRM" value:&stru_28753DF48 table:@"Localizable"];
    [(LAUIPhysicalButtonView *)self->_physicalButtonView setInstruction:v7];

    [(LAUIPhysicalButtonView *)self->_physicalButtonView setAnimationStyle:1];
  }

  view = [(TSSecureIntentGestureViewController *)self view];
  window = [view window];

  if (window)
  {
    view2 = [(TSSecureIntentGestureViewController *)self view];
    window2 = [view2 window];
    [window2 addSubview:self->_physicalButtonView];
  }

  else
  {
    view2 = _TSLogDomain(v10);
    if (os_log_type_enabled(view2, OS_LOG_TYPE_ERROR))
    {
      [(TSSecureIntentGestureViewController *)view2 viewDidAppear:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  [(LAUIPhysicalButtonView *)self->_physicalButtonView setAnimating:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = _TSLogDomain(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TSSecureIntentGestureViewController viewWillDisappear:v5];
  }

  [(LAUIPhysicalButtonView *)self->_physicalButtonView setAnimating:0];
  [(LAUIPhysicalButtonView *)self->_physicalButtonView removeFromSuperview];
  if (self->_isSecureIntentSucceeded && self->_isDtoEvaluationSucceeded)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:89 userInfo:0];
  }

  v7 = self->_isSecureIntentSucceeded && !self->_isDtoEvaluationSucceeded;
  [(TSSecureIntentGestureViewController *)self _maybeSendExternalizedContext:v6 isDTOEvaluationFailed:v7];
  v8.receiver = self;
  v8.super_class = TSSecureIntentGestureViewController;
  [(TSSecureIntentGestureViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)_doubleClickGesture
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSSecureIntentGestureViewController _doubleClickGesture]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]No euicc acl!! @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _TSLogDomain(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v8;
    v30 = 2080;
    v31 = "[TSSecureIntentGestureViewController _doubleClickGesture]_block_invoke";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "evaluateAccessControl reply:%@, error:%@, ctx:%@ @%s", buf, 0x2Au);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_80;
  block[3] = &unk_279B44400;
  objc_copyWeak(&v23, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (v6 || (v11 = objc_loadWeakRetained((a1 + 40)), [v11 setIsSecureIntentSucceeded:1], v11, v12 = objc_loadWeakRetained((a1 + 40)), v13 = objc_msgSend(v12, "isDtoEvaluationRequired"), v12, (v13 & 1) == 0))
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_2;
    v19[3] = &unk_279B443D8;
    v15 = &v21;
    objc_copyWeak(&v21, (a1 + 40));
    v20 = v6;
    v16 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v19);

    WeakRetained = v20;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_3;
    v17[3] = &unk_279B44828;
    v15 = &v18;
    objc_copyWeak(&v18, (a1 + 40));
    [WeakRetained evaluateDtoPolicy:v17];
  }

  objc_destroyWeak(v15);
  objc_destroyWeak(&v23);
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained physicalButtonView];
  [v1 setAnimating:0];
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateAuthenticationStatus:*(a1 + 32) isDTOEvaluationFailed:0];
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_4;
  v5[3] = &unk_279B445C0;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[TSCoreTelephonyClientCache sharedInstance];
    v3 = [v2 updateSecureIntentData:0 isDTOEvaluationFailed:1];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained delegate];
    [v4 userDidTapCancel];
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setIsDtoEvaluationSucceeded:1];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateAuthenticationStatus:? isDTOEvaluationFailed:?];
  }
}

- (void)_updateAuthenticationStatus:(id)status isDTOEvaluationFailed:(BOOL)failed
{
  statusCopy = status;
  objc_initWeak(&location, self);
  if (statusCopy)
  {
    v7 = 10;
  }

  else
  {
    v7 = 11;
  }

  if (statusCopy)
  {
    [(PKGlyphView *)self->_glyphView bounds];
    v9 = v8;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v12 = v9 * 0.439999998 / v11;

    v13 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:v12];
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark" withConfiguration:v13];
    [(PKGlyphView *)self->_glyphView setColorMode:3 animated:1];
    primaryColor = [(PKGlyphView *)self->_glyphView primaryColor];
    v16 = [v14 _flatImageWithColor:primaryColor];

    glyphView = self->_glyphView;
    cGImage = [v16 CGImage];
    [v16 alignmentRectInsets];
    [(PKGlyphView *)glyphView setCustomImage:cGImage withAlignmentEdgeInsets:?];
  }

  v19 = self->_glyphView;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__TSSecureIntentGestureViewController__updateAuthenticationStatus_isDTOEvaluationFailed___block_invoke;
  v21[3] = &unk_279B45858;
  objc_copyWeak(&v23, &location);
  v20 = statusCopy;
  v22 = v20;
  failedCopy = failed;
  [(PKGlyphView *)v19 setState:v7 animated:1 completionHandler:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __89__TSSecureIntentGestureViewController__updateAuthenticationStatus_isDTOEvaluationFailed___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__TSSecureIntentGestureViewController__updateAuthenticationStatus_isDTOEvaluationFailed___block_invoke_2;
  block[3] = &unk_279B45830;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __89__TSSecureIntentGestureViewController__updateAuthenticationStatus_isDTOEvaluationFailed___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TSSecureIntentGestureViewController _updateAuthenticationStatus:isDTOEvaluationFailed:]_block_invoke_2";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "1s expired, dismiss UI @%s", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _maybeSendExternalizedContext:*(a1 + 32) isDTOEvaluationFailed:*(a1 + 48)];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 delegate];
  v7 = objc_loadWeakRetained((a1 + 40));
  [v6 viewControllerDidComplete:v7];
}

- (void)_maybeSendExternalizedContext:(id)context isDTOEvaluationFailed:(BOOL)failed
{
  failedCopy = failed;
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = contextCopy;
  if (!self->_isExternalizedContextSent)
  {
    self->_isExternalizedContextSent = 1;
    if (!contextCopy)
    {
      if (!self->_externalizedContext)
      {
        v11 = _TSLogDomain(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(TSSecureIntentGestureViewController *)v11 _maybeSendExternalizedContext:v12 isDTOEvaluationFailed:v13, v14, v15, v16, v17, v18];
        }
      }

      v19 = _TSLogDomain(contextCopy);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        externalizedContext = self->_externalizedContext;
        *v54 = 138412546;
        *&v54[4] = externalizedContext;
        *&v54[12] = 2080;
        *&v54[14] = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
        _os_log_impl(&dword_262AA8000, v19, OS_LOG_TYPE_DEFAULT, "notify secure intent data:%@ @%s", v54, 0x16u);
      }

      v21 = +[TSCoreTelephonyClientCache sharedInstance];
      v8 = v21;
      v22 = self->_externalizedContext;
      v23 = 0;
      goto LABEL_28;
    }

    if (failedCopy)
    {
      v9 = _TSLogDomain(contextCopy);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        v21 = +[TSCoreTelephonyClientCache sharedInstance];
        v8 = v21;
        v22 = 0;
        v23 = failedCopy;
LABEL_28:
        v44 = [v21 updateSecureIntentData:v22 isDTOEvaluationFailed:v23, *v54, *&v54[8]];
        goto LABEL_29;
      }

      *v54 = 136315138;
      *&v54[4] = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
      v10 = "DTO Evaluation failed @%s";
LABEL_8:
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, v10, v54, 0xCu);
      goto LABEL_27;
    }

    domain = [contextCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v7 code];

      if (code == 89)
      {
        v9 = _TSLogDomain(v26);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *v54 = 136315138;
        *&v54[4] = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
        v10 = "Cancelling secure intent @%s";
        goto LABEL_8;
      }
    }

    else
    {
    }

    domain2 = [v7 domain];
    v28 = [domain2 isEqualToString:@"com.apple.LocalAuthentication"];

    if (v28)
    {
      if ([v7 code] == -1003)
      {
        v9 = _TSLogDomain(-1003);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(TSSecureIntentGestureViewController *)v9 _maybeSendExternalizedContext:v30 isDTOEvaluationFailed:v31, v32, v33, v34, v35, v36];
        }
      }

      else
      {
        code2 = [v7 code];
        v9 = _TSLogDomain(code2);
        v46 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (code2 == -1007)
        {
          if (v46)
          {
            [(TSSecureIntentGestureViewController *)v9 _maybeSendExternalizedContext:v47 isDTOEvaluationFailed:v48, v49, v50, v51, v52, v53];
          }
        }

        else if (v46)
        {
          [(TSSecureIntentGestureViewController *)v9 _maybeSendExternalizedContext:v47 isDTOEvaluationFailed:v48, v49, v50, v51, v52, v53];
        }
      }
    }

    else
    {
      v9 = _TSLogDomain(v29);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(TSSecureIntentGestureViewController *)v9 _maybeSendExternalizedContext:v37 isDTOEvaluationFailed:v38, v39, v40, v41, v42, v43];
      }
    }

    goto LABEL_27;
  }

  v8 = _TSLogDomain(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v54 = 136315138;
    *&v54[4] = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "already notify externalized context updated @%s", v54, 0xCu);
  }

LABEL_29:
}

- (id)_createPKGlyphView
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPKGlyphViewClass_softClass_0;
  v10 = getPKGlyphViewClass_softClass_0;
  if (!getPKGlyphViewClass_softClass_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPKGlyphViewClass_block_invoke_0;
    v6[3] = &unk_279B44778;
    v6[4] = &v7;
    __getPKGlyphViewClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [[v2 alloc] initWithStyle:1];

  return v4;
}

- (void)_handleUserCancelNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = _TSLogDomain(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    object = [notificationCopy object];
    v10 = 138412546;
    v11 = object;
    v12 = 2080;
    v13 = "[TSSecureIntentGestureViewController _handleUserCancelNotification:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "user canceled with reason : %@ @%s", &v10, 0x16u);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:89 userInfo:0];
  v8 = self->_isSecureIntentSucceeded && !self->_isDtoEvaluationSucceeded;
  [(TSSecureIntentGestureViewController *)self _maybeSendExternalizedContext:v7 isDTOEvaluationFailed:v8];

  delegate = [(TSSecureIntentGestureViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (void)_updateLayoutConstraint
{
  v31[5] = *MEMORY[0x277D85DE8];
  contentView = [(TSSecureIntentGestureViewController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 * 0.275;
  v22 = MEMORY[0x277CCAAD0];
  topAnchor = [(PKGlyphView *)self->_glyphView topAnchor];
  contentView2 = [(TSSecureIntentGestureViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];
  topAnchor2 = [mainContentGuide topAnchor];
  v26 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v31[0] = v26;
  centerXAnchor = [(PKGlyphView *)self->_glyphView centerXAnchor];
  contentView3 = [(TSSecureIntentGestureViewController *)self contentView];
  mainContentGuide2 = [contentView3 mainContentGuide];
  centerXAnchor2 = [mainContentGuide2 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v31[1] = v20;
  centerYAnchor = [(PKGlyphView *)self->_glyphView centerYAnchor];
  contentView4 = [(TSSecureIntentGestureViewController *)self contentView];
  mainContentGuide3 = [contentView4 mainContentGuide];
  centerYAnchor2 = [mainContentGuide3 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31[2] = v14;
  widthAnchor = [(PKGlyphView *)self->_glyphView widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:v9];
  v31[3] = v16;
  heightAnchor = [(PKGlyphView *)self->_glyphView heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:v9];
  v31[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
  [v22 activateConstraints:v19];
}

- (void)evaluateDtoPolicy:(id)policy
{
  v12 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  v4 = _TSLogDomain(policyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TSSecureIntentGestureViewController evaluateDtoPolicy:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "evaluating dto policy @%s", buf, 0xCu);
  }

  v5 = +[TSCoreTelephonyClientCache sharedInstance];
  getCoreTelephonyClient = [v5 getCoreTelephonyClient];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__TSSecureIntentGestureViewController_evaluateDtoPolicy___block_invoke;
  v8[3] = &unk_279B44DB8;
  v9 = policyCopy;
  v7 = policyCopy;
  [getCoreTelephonyClient evaluateDtoPolicy:v8];
}

uint64_t __57__TSSecureIntentGestureViewController_evaluateDtoPolicy___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  v5 = prepareCopy;
  if (self->_isSecureIntentRequired)
  {
    (*(prepareCopy + 2))(prepareCopy, 1);
  }

  else if (self->_isDtoEvaluationRequired)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__TSSecureIntentGestureViewController_prepare___block_invoke;
    v8[3] = &unk_279B44E30;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [(TSSecureIntentGestureViewController *)self evaluateDtoPolicy:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7 = [v6 updateSecureIntentData:self->_externalizedContext isDTOEvaluationFailed:0];

    v5[2](v5, 0);
  }
}

void __47__TSSecureIntentGestureViewController_prepare___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = +[TSCoreTelephonyClientCache sharedInstance];
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained externalizedContext];
  }

  v7 = [v5 updateSecureIntentData:v6 isDTOEvaluationFailed:a2 != 0];
  if (a2)
  {

    v5 = objc_loadWeakRetained((a1 + 40));
    WeakRetained = [v5 delegate];
    [WeakRetained userDidTapCancel];
  }

  else
  {
  }

  v8 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TSSecureIntentGestureViewController_prepare___block_invoke_2;
  block[3] = &unk_279B44938;
  v10 = *(a1 + 32);
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewDidAppear:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSSecureIntentGestureViewController viewDidAppear:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid window context @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)viewWillDisappear:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSSecureIntentGestureViewController viewWillDisappear:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] secure intent view will disappear @%s", &v1, 0xCu);
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]secure intent failed @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]other local auth error @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]secure intent denied @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]secure intent gesture timeout @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSSecureIntentGestureViewController _maybeSendExternalizedContext:isDTOEvaluationFailed:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid LAContext. but we still need to send notification @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end