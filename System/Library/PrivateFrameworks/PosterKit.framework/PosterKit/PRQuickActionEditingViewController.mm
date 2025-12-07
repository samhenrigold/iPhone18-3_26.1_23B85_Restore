@interface PRQuickActionEditingViewController
- (PRQuickActionEditingViewController)initWithQuickActionsConfiguration:(id)configuration;
- (PRQuickActionEditingViewControllerDelegate)delegate;
- (id)_configureEditingReticleViewWithTapGesture:(id)gesture;
- (id)_configureRemoveButtonWithAction:(id)action;
- (id)_controlViewForControl:(id)control;
- (id)_validateControl:(id)control;
- (void)_handleRemoveButtonActionForQuickActionPosition:(int64_t)position;
- (void)_leadingActionDidFire;
- (void)_presentWidgetIntentConfigurationForControlWithPosition:(int64_t)position;
- (void)_trailingActionDidFire;
- (void)_updateActiveReticleForPosition:(int64_t)position;
- (void)_updateButtonsVisibility;
- (void)setLeadingControl:(id)control;
- (void)setTrailingControl:(id)control;
- (void)validateControls;
- (void)viewDidLoad;
@end

@implementation PRQuickActionEditingViewController

- (PRQuickActionEditingViewController)initWithQuickActionsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = PRQuickActionEditingViewController;
  v5 = [(PRQuickActionEditingViewController *)&v17 init];
  if (v5)
  {
    leadingControl = [configurationCopy leadingControl];
    trailingControl = [configurationCopy trailingControl];
    if ([leadingControl category] == 3)
    {
      v8 = objc_alloc(MEMORY[0x1E6997278]);
      identity = [leadingControl identity];
      v10 = [v8 initWithIdentity:identity type:{objc_msgSend(leadingControl, "type")}];
    }

    else
    {
      v10 = 0;
    }

    if ([trailingControl category] == 3)
    {
      v11 = objc_alloc(MEMORY[0x1E6997278]);
      identity2 = [trailingControl identity];
      v13 = [v11 initWithIdentity:identity2 type:{objc_msgSend(trailingControl, "type")}];
    }

    else
    {
      v13 = 0;
    }

    [(PRQuickActionEditingViewController *)v5 setLeadingControl:v10];
    v14 = PRSharedWidgetExtensionProvider([(PRQuickActionEditingViewController *)v5 setTrailingControl:v13]);
    extensionProvider = v5->_extensionProvider;
    v5->_extensionProvider = v14;
  }

  return v5;
}

- (void)viewDidLoad
{
  v59[4] = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = PRQuickActionEditingViewController;
  viewDidLoad = [(PRQuickActionEditingViewController *)&v58 viewDidLoad];
  if (PRLockPickIsActive(viewDidLoad, v4))
  {
    v48 = objc_alloc_init(MEMORY[0x1E6999620]);
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v48 setClickSuppressed:1];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69DC628];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke;
    v55[3] = &unk_1E7843448;
    objc_copyWeak(&v56, &location);
    v6 = [v5 actionWithHandler:v55];
    [v48 addAction:v6 forControlEvents:64];

    leadingControl = [(PRQuickActionEditingViewController *)self leadingControl];
    LOBYTE(v6) = leadingControl == 0;

    if (v6)
    {
      [v48 setHidden:1];
    }

    else
    {
      leadingControl2 = [(PRQuickActionEditingViewController *)self leadingControl];
      v9 = [(PRQuickActionEditingViewController *)self _controlViewForControl:leadingControl2];
      [v48 setGlyphView:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x1E6999620]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setClickSuppressed:1];
    v47 = v10;
    v11 = MEMORY[0x1E69DC628];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_2;
    v53[3] = &unk_1E7843448;
    objc_copyWeak(&v54, &location);
    v12 = [v11 actionWithHandler:v53];
    [v47 addAction:v12 forControlEvents:64];

    trailingControl = [(PRQuickActionEditingViewController *)self trailingControl];
    LOBYTE(v12) = trailingControl == 0;

    if (v12)
    {
      [v47 setHidden:1];
    }

    else
    {
      trailingControl2 = [(PRQuickActionEditingViewController *)self trailingControl];
      v15 = [(PRQuickActionEditingViewController *)self _controlViewForControl:trailingControl2];
      [v47 setGlyphView:v15];
    }

    v16 = [objc_alloc(MEMORY[0x1E6999628]) initWithLeadingButton:v48 trailingButton:v47];
    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__leadingActionDidFire];
    v18 = [(PRQuickActionEditingViewController *)self _configureEditingReticleViewWithTapGesture:v17];
    [v16 setLeadingReticle:v18];

    v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__trailingActionDidFire];
    v20 = [(PRQuickActionEditingViewController *)self _configureEditingReticleViewWithTapGesture:v19];
    [v16 setTrailingReticle:v20];

    v21 = MEMORY[0x1E69DC628];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_3;
    v51[3] = &unk_1E7843448;
    objc_copyWeak(&v52, &location);
    v22 = [v21 actionWithHandler:v51];
    v46 = [(PRQuickActionEditingViewController *)self _configureRemoveButtonWithAction:v22];

    v23 = MEMORY[0x1E69DC628];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_4;
    v49[3] = &unk_1E7843448;
    objc_copyWeak(&v50, &location);
    v24 = [v23 actionWithHandler:v49];
    v45 = [(PRQuickActionEditingViewController *)self _configureRemoveButtonWithAction:v24];

    [v16 setLeadingRemoveButton:v46];
    [v16 setTrailingRemoveButton:v45];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(PRQuickActionEditingViewController *)self view];
    [view addSubview:v16];

    v35 = MEMORY[0x1E696ACD8];
    bottomAnchor = [v16 bottomAnchor];
    view2 = [(PRQuickActionEditingViewController *)self view];
    bottomAnchor2 = [view2 bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[0] = v41;
    topAnchor = [v16 topAnchor];
    view3 = [(PRQuickActionEditingViewController *)self view];
    topAnchor2 = [view3 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[1] = v37;
    leadingAnchor = [v16 leadingAnchor];
    view4 = [(PRQuickActionEditingViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v59[2] = v28;
    trailingAnchor = [v16 trailingAnchor];
    view5 = [(PRQuickActionEditingViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v59[3] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
    [v35 activateConstraints:v33];

    prominentButtonsView = self->_prominentButtonsView;
    self->_prominentButtonsView = v16;

    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v54);

    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  [(PRQuickActionEditingViewController *)self _updateButtonsVisibility];
}

void __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentWidgetIntentConfigurationForControlWithPosition:1];
}

void __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentWidgetIntentConfigurationForControlWithPosition:2];
}

void __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoveButtonActionForQuickActionPosition:1];
}

void __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoveButtonActionForQuickActionPosition:2];
}

- (void)validateControls
{
  v4 = [(PRQuickActionEditingViewController *)self _validateControl:self->_leadingControl];
  v3 = [(PRQuickActionEditingViewController *)self _validateControl:self->_trailingControl];
  if ((BSEqualObjects() & 1) == 0)
  {
    [(PRQuickActionEditingViewController *)self setLeadingControl:v4];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    [(PRQuickActionEditingViewController *)self setTrailingControl:v3];
  }
}

- (id)_validateControl:(id)control
{
  v24 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  v5 = controlCopy;
  if (controlCopy)
  {
    identity = [controlCopy identity];
    extensionIdentity = [identity extensionIdentity];
    containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
    v9 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:containerBundleIdentifier];
    isLocked = [v9 isLocked];
    if ((isLocked & 1) != 0 || (isLocked = [v9 isHidden], isLocked))
    {
      v11 = PRLogEditing(isLocked);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = v5;
        v22 = 2114;
        v23 = containerBundleIdentifier;
        _os_log_impl(&dword_1A8AA7000, v11, OS_LOG_TYPE_DEFAULT, "[Quick Action] removing control %{public}@ with containerBundleIdentifier %{public}@ because app was hidden or locked", buf, 0x16u);
      }

      v12 = 0;
      goto LABEL_7;
    }

    v11 = [(CHSWidgetExtensionProvider *)self->_extensionProvider controlDescriptorForControl:identity];
    if (v11)
    {
      v12 = v5;
LABEL_7:

      goto LABEL_9;
    }

    v19 = 0;
    v14 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:containerBundleIdentifier allowPlaceholder:1 error:&v19];
    v15 = v19;
    v16 = v15;
    if (v15)
    {
      v17 = PRLogEditing(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PRQuickActionEditingViewController _validateControl:];
      }
    }

    else
    {
      v18 = PRLogEditing(0);
      v17 = v18;
      if (v14)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [PRQuickActionEditingViewController _validateControl:];
        }

        v12 = v5;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v5;
        _os_log_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEFAULT, "[Quick Action] removing button for %{public}@ because application was not found", buf, 0xCu);
      }
    }

    v12 = 0;
LABEL_22:

    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)setLeadingControl:(id)control
{
  controlCopy = control;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leadingControl, control);
    if (controlCopy)
    {
      prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
      leadingButton = [prominentButtonsView leadingButton];
      v7 = [(PRQuickActionEditingViewController *)self _controlViewForControl:controlCopy];
      [leadingButton setGlyphView:v7];

      [(PRQuickActionEditingViewController *)self _updateActiveReticleForPosition:0];
    }

    delegate = [(PRQuickActionEditingViewController *)self delegate];
    [delegate quickActionEditingViewController:self didSetControl:controlCopy forPosition:1];

    [(PRQuickActionEditingViewController *)self _updateButtonsVisibility];
  }
}

- (void)setTrailingControl:(id)control
{
  controlCopy = control;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_trailingControl, control);
    if (controlCopy)
    {
      prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
      trailingButton = [prominentButtonsView trailingButton];
      v7 = [(PRQuickActionEditingViewController *)self _controlViewForControl:controlCopy];
      [trailingButton setGlyphView:v7];

      [(PRQuickActionEditingViewController *)self _updateActiveReticleForPosition:0];
    }

    delegate = [(PRQuickActionEditingViewController *)self delegate];
    [delegate quickActionEditingViewController:self didSetControl:controlCopy forPosition:2];

    [(PRQuickActionEditingViewController *)self _updateButtonsVisibility];
  }
}

- (id)_controlViewForControl:(id)control
{
  if (control)
  {
    controlCopy = control;
    v4 = [PRQuickActionControlView alloc];
    identity = [controlCopy identity];
    type = [controlCopy type];

    v7 = [(PRQuickActionControlView *)v4 initWithControl:identity type:type];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_leadingActionDidFire
{
  prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  leadingButton = [prominentButtonsView leadingButton];
  [leadingButton setSelected:0];

  delegate = [(PRQuickActionEditingViewController *)self delegate];
  [delegate quickActionEditingViewController:self didTapAddForPosition:1];
}

- (void)_trailingActionDidFire
{
  prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  trailingButton = [prominentButtonsView trailingButton];
  [trailingButton setSelected:0];

  delegate = [(PRQuickActionEditingViewController *)self delegate];
  [delegate quickActionEditingViewController:self didTapAddForPosition:2];
}

- (void)_presentWidgetIntentConfigurationForControlWithPosition:(int64_t)position
{
  if ([(PRQuickActionEditingViewController *)self isGalleryPresented]|| !position)
  {
    return;
  }

  if (position == 2)
  {
    trailingControl = [(PRQuickActionEditingViewController *)self trailingControl];
  }

  else
  {
    if (position != 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    trailingControl = [(PRQuickActionEditingViewController *)self leadingControl];
  }

  v7 = trailingControl;
LABEL_10:
  delegate = [(PRQuickActionEditingViewController *)self delegate];
  [delegate quickActionEditingViewController:self didRequestIntentConfigurationForControl:v7 withPosition:position];
}

- (void)_handleRemoveButtonActionForQuickActionPosition:(int64_t)position
{
  if (position == 2)
  {
    [(PRQuickActionEditingViewController *)self setTrailingControl:0];
  }

  else if (position == 1)
  {
    [(PRQuickActionEditingViewController *)self setLeadingControl:0];
  }
}

- (id)_configureEditingReticleViewWithTapGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = objc_alloc_init(PRQuickActionsEditingReticleView);
  layer = [(PRQuickActionsEditingReticleView *)v4 layer];
  [layer setHitTestsAsOpaque:1];

  [(PRQuickActionsEditingReticleView *)v4 addGestureRecognizer:gestureCopy];

  return v4;
}

- (id)_configureRemoveButtonWithAction:(id)action
{
  actionCopy = action;
  v4 = [PREditingMinusCloseBoxButton alloc];
  v5 = [(PREditingButton *)v4 initWithStyle:7 frame:actionCopy primaryAction:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  configuration = [(PREditingMinusCloseBoxButton *)v5 configuration];
  [configuration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [(PREditingMinusCloseBoxButton *)v5 setConfiguration:configuration];

  return v5;
}

- (void)_updateActiveReticleForPosition:(int64_t)position
{
  prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  leadingReticle = [prominentButtonsView leadingReticle];
  [leadingReticle setActive:position == 1];

  trailingReticle = [prominentButtonsView trailingReticle];
  [trailingReticle setActive:position == 2];
}

- (void)_updateButtonsVisibility
{
  prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  v3 = self->_leadingControl == 0;
  v4 = self->_trailingControl == 0;
  leadingButton = [prominentButtonsView leadingButton];
  [leadingButton setHidden:v3];

  trailingButton = [prominentButtonsView trailingButton];
  [trailingButton setHidden:v4];

  leadingRemoveButton = [prominentButtonsView leadingRemoveButton];
  [leadingRemoveButton setHidden:v3];

  leadingReticle = [prominentButtonsView leadingReticle];
  [leadingReticle setShowsEmptyView:v3];

  trailingRemoveButton = [prominentButtonsView trailingRemoveButton];
  [trailingRemoveButton setHidden:v4];

  trailingReticle = [prominentButtonsView trailingReticle];
  [trailingReticle setShowsEmptyView:v4];
}

- (PRQuickActionEditingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end