@interface AAUISignInViewControllerTableFooterView
- (AAUISignInViewControllerTableFooterView)initWithReuseIdentifier:(id)identifier;
- (UIButton)continueButton;
- (UIViewController)parentForPrivacyController;
- (double)naturalHeight;
- (void)addActionButtonStackView:(id)view;
- (void)addChildSignInButton:(id)button;
- (void)addContinueButton:(id)button;
- (void)addOtherButton:(id)button;
- (void)setExpandableViewToHeight:(double)height;
- (void)setPrivacyLinkIdentifiers:(id)identifiers;
@end

@implementation AAUISignInViewControllerTableFooterView

- (AAUISignInViewControllerTableFooterView)initWithReuseIdentifier:(id)identifier
{
  v35.receiver = self;
  v35.super_class = AAUISignInViewControllerTableFooterView;
  v3 = [(AAUISignInViewControllerTableFooterView *)&v35 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    v5 = _AAUILogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Initializing AAUISignInViewControllerTableFooterView", v34, 2u);
    }

    v6 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    mainStack = v4->_mainStack;
    v4->_mainStack = v6;

    [(UIStackView *)v4->_mainStack setAxis:1];
    [(UIStackView *)v4->_mainStack setAlignment:3];
    [(UIStackView *)v4->_mainStack setDistribution:3];
    [(UIStackView *)v4->_mainStack setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    expandableView = v4->_expandableView;
    v4->_expandableView = v8;

    [(UIView *)v4->_expandableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_mainStack addArrangedSubview:v4->_expandableView];
    contentView = [(AAUISignInViewControllerTableFooterView *)v4 contentView];
    [contentView addSubview:v4->_mainStack];

    leadingAnchor = [(UIStackView *)v4->_mainStack leadingAnchor];
    contentView2 = [(AAUISignInViewControllerTableFooterView *)v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v14 setActive:1];

    trailingAnchor = [(UIStackView *)v4->_mainStack trailingAnchor];
    contentView3 = [(AAUISignInViewControllerTableFooterView *)v4 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v18 setActive:1];

    topAnchor = [(UIStackView *)v4->_mainStack topAnchor];
    contentView4 = [(AAUISignInViewControllerTableFooterView *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    [v22 setActive:1];

    bottomAnchor = [(UIStackView *)v4->_mainStack bottomAnchor];
    contentView5 = [(AAUISignInViewControllerTableFooterView *)v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v26 setActive:1];

    heightAnchor = [(UIView *)v4->_expandableView heightAnchor];
    v28 = [heightAnchor constraintGreaterThanOrEqualToConstant:10.0];
    [v28 setActive:1];

    heightAnchor2 = [(UIView *)v4->_expandableView heightAnchor];
    v30 = [heightAnchor2 constraintEqualToConstant:0.0];
    expandableHeight = v4->_expandableHeight;
    v4->_expandableHeight = v30;

    contentView6 = [(AAUISignInViewControllerTableFooterView *)v4 contentView];
    [contentView6 setNeedsLayout];
  }

  return v4;
}

- (void)setPrivacyLinkIdentifiers:(id)identifiers
{
  v23[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && !self->_privacyLinkController)
  {
    v5 = [MEMORY[0x1E69B7D50] linkWithBundleIdentifiers:identifiersCopy];
    privacyLinkController = self->_privacyLinkController;
    self->_privacyLinkController = v5;

    view = [(OBPrivacyLinkController *)self->_privacyLinkController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    mainStack = self->_mainStack;
    view2 = [(OBPrivacyLinkController *)self->_privacyLinkController view];
    [(UIStackView *)mainStack addArrangedSubview:view2];

    parentForPrivacyController = [(AAUISignInViewControllerTableFooterView *)self parentForPrivacyController];
    [parentForPrivacyController addChildViewController:self->_privacyLinkController];

    v11 = self->_privacyLinkController;
    parentForPrivacyController2 = [(AAUISignInViewControllerTableFooterView *)self parentForPrivacyController];
    [(OBPrivacyLinkController *)v11 didMoveToParentViewController:parentForPrivacyController2];

    view3 = [(OBPrivacyLinkController *)self->_privacyLinkController view];
    leadingAnchor = [view3 leadingAnchor];
    leadingAnchor2 = [(UIStackView *)self->_mainStack leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[0] = v14;
    view4 = [(OBPrivacyLinkController *)self->_privacyLinkController view];
    trailingAnchor = [view4 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)self->_mainStack trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

    [(OBPrivacyLinkController *)self->_privacyLinkController setAccessibilityIdentifier:@"privacy-view"];
    [MEMORY[0x1E696ACD8] activateConstraints:v19];
    contentView = [(AAUISignInViewControllerTableFooterView *)self contentView];
    [contentView setNeedsLayout];
  }
}

- (void)setExpandableViewToHeight:(double)height
{
  [(NSLayoutConstraint *)self->_expandableHeight setActive:0];
  [(NSLayoutConstraint *)self->_expandableHeight setConstant:height];
  expandableHeight = self->_expandableHeight;

  [(NSLayoutConstraint *)expandableHeight setActive:1];
}

- (double)naturalHeight
{
  v3 = *MEMORY[0x1E69DE090];
  v4 = *(MEMORY[0x1E69DE090] + 8);
  [(UIStackView *)self->_actionButtonStackView systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], v4];
  v6 = v5;
  view = [(OBPrivacyLinkController *)self->_privacyLinkController view];
  [view systemLayoutSizeFittingSize:{v3, v4}];
  v9 = v8;

  [(UIStackView *)self->_continueButtonStackView systemLayoutSizeFittingSize:v3, v4];
  v11 = 10.0;
  if (!self->_privacyLinkController)
  {
    v11 = 0.0;
  }

  return v6 + 15.0 + v9 + v10 + v11;
}

- (void)addActionButtonStackView:(id)view
{
  v14[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (!self->_actionButtonStackView)
  {
    objc_storeStrong(&self->_actionButtonStackView, view);
    [(UIStackView *)self->_mainStack insertArrangedSubview:self->_actionButtonStackView atIndex:0];
    leadingAnchor = [(UIStackView *)self->_actionButtonStackView leadingAnchor];
    leadingAnchor2 = [(UIStackView *)self->_mainStack leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v14[0] = v8;
    trailingAnchor = [(UIStackView *)self->_actionButtonStackView trailingAnchor];
    trailingAnchor2 = [(UIStackView *)self->_mainStack trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v14[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

    [MEMORY[0x1E696ACD8] activateConstraints:v12];
    contentView = [(AAUISignInViewControllerTableFooterView *)self contentView];
    [contentView setNeedsLayout];
  }
}

- (void)addContinueButton:(id)button
{
  v19[2] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  [(AAUISignInViewControllerTableFooterView *)self setContinueButton:buttonCopy];
  if (!self->_continueButtonStackView)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    continueButtonStackView = self->_continueButtonStackView;
    self->_continueButtonStackView = v5;

    [(UIStackView *)self->_continueButtonStackView setAxis:1];
    [(UIStackView *)self->_continueButtonStackView setAlignment:0];
    [(UIStackView *)self->_continueButtonStackView setDistribution:0];
    [(UIStackView *)self->_continueButtonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_privacyLinkController)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      heightAnchor = [v7 heightAnchor];
      v9 = [heightAnchor constraintEqualToConstant:10.0];

      [v9 setActive:1];
      LODWORD(v10) = 1148846080;
      [v7 setContentCompressionResistancePriority:1 forAxis:v10];
      [(UIStackView *)self->_mainStack addArrangedSubview:v7];
    }

    [(UIStackView *)self->_continueButtonStackView addArrangedSubview:buttonCopy];
    [(UIStackView *)self->_mainStack addArrangedSubview:self->_continueButtonStackView];
    leadingAnchor = [(UIStackView *)self->_continueButtonStackView leadingAnchor];
    leadingAnchor2 = [(UIStackView *)self->_mainStack leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v19[0] = v13;
    trailingAnchor = [(UIStackView *)self->_continueButtonStackView trailingAnchor];
    trailingAnchor2 = [(UIStackView *)self->_mainStack trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v19[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

    [MEMORY[0x1E696ACD8] activateConstraints:v17];
    contentView = [(AAUISignInViewControllerTableFooterView *)self contentView];
    [contentView setNeedsLayout];
  }
}

- (void)addChildSignInButton:(id)button
{
  v4 = MEMORY[0x1E69DD250];
  buttonCopy = button;
  v8 = objc_alloc_init(v4);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [v8 heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:10.0];
  [v7 setActive:1];

  [(UIStackView *)self->_continueButtonStackView addArrangedSubview:v8];
  [(UIStackView *)self->_continueButtonStackView addArrangedSubview:buttonCopy];
}

- (void)addOtherButton:(id)button
{
  v4 = MEMORY[0x1E69DD250];
  buttonCopy = button;
  v8 = objc_alloc_init(v4);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [v8 heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:10.0];
  [v7 setActive:1];

  [(UIStackView *)self->_continueButtonStackView addArrangedSubview:v8];
  [(UIStackView *)self->_continueButtonStackView addArrangedSubview:buttonCopy];
}

- (UIViewController)parentForPrivacyController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentForPrivacyController);

  return WeakRetained;
}

- (UIButton)continueButton
{
  WeakRetained = objc_loadWeakRetained(&self->_continueButton);

  return WeakRetained;
}

@end