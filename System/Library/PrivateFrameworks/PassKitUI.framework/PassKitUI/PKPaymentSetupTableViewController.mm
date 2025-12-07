@interface PKPaymentSetupTableViewController
- (NSAttributedString)footerAttributedText;
- (PKPaymentSetupDockView)dockView;
- (PKPaymentSetupTableViewController)initWithContext:(int64_t)context;
- (PKPaymentSetupTableViewController)initWithStyle:(int64_t)style context:(int64_t)context;
- (id)addFooterStyleAttributes:(id)attributes;
- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection;
- (void)_keyboardWillChange:(id)change;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_updateLayoutForKeyboardAction:(id)action;
- (void)dealloc;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setFooterAttributedText:(id)text;
- (void)setHideFooterBlurView:(BOOL)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableViewDidFinishReload:(id)reload;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPaymentSetupTableViewController

- (PKPaymentSetupTableViewController)initWithContext:(int64_t)context
{
  v5 = [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1];

  return [(PKPaymentSetupTableViewController *)self initWithStyle:v5 context:context];
}

- (PKPaymentSetupTableViewController)initWithStyle:(int64_t)style context:(int64_t)context
{
  v13.receiver = self;
  v13.super_class = PKPaymentSetupTableViewController;
  v6 = [(PKPaymentSetupTableViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_context = context;
    v8 = [objc_alloc(MEMORY[0x1E69DD038]) initWithStyle:style];
    tableViewController = v7->_tableViewController;
    v7->_tableViewController = v8;

    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKPaymentSetupTableViewController *)v7 navigationItem];
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter addObserver:v7 selector:sel__keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
    [defaultCenter addObserver:v7 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  v3.receiver = self;
  v3.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v3 dealloc];
}

- (void)loadView
{
  [(PKPaymentSetupTableViewController *)self addChildViewController:self->_tableViewController];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  containerView = self->_containerView;
  self->_containerView = v4;

  [(PKPaymentSetupTableViewController *)self setView:self->_containerView];
  tableView = [(UITableViewController *)self->_tableViewController tableView];
  tableView = self->_tableView;
  self->_tableView = tableView;

  v8 = self->_tableView;
  v9 = PKProvisioningBackgroundColor();
  [(UITableView *)v8 setBackgroundColor:v9];

  [(UITableView *)self->_tableView setAutoresizingMask:0];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  v10 = *MEMORY[0x1E69B9A68];
  [(UITableView *)self->_tableView setAccessibilityIdentifier:*MEMORY[0x1E69B9A68]];
  backgroundColor = [(UITableView *)self->_tableView backgroundColor];
  [(UIView *)self->_containerView setBackgroundColor:backgroundColor];
  [(UIView *)self->_containerView addSubview:self->_tableView];
  [(UITableViewController *)self->_tableViewController didMoveToParentViewController:self];
  v11 = self->_containerView;
  footerTextView = [(PKPaymentSetupTableViewController *)self footerTextView];
  [(UIView *)v11 addSubview:footerTextView];

  view = [(PKPaymentSetupTableViewController *)self view];
  [view setAccessibilityIdentifier:v10];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v10 viewWillAppear:?];
  context = self->_context;
  view = [(PKPaymentSetupTableViewController *)self view];
  PKPaymentSetupApplyContextAppearance(context, view);

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  if (([tableView allowsMultipleSelection] & 1) == 0)
  {
    selectedIndexPath = self->_selectedIndexPath;
    indexPathForSelectedRow = [tableView indexPathForSelectedRow];
    LODWORD(selectedIndexPath) = [(NSIndexPath *)selectedIndexPath isEqual:indexPathForSelectedRow];

    if (selectedIndexPath)
    {
      [tableView deselectRowAtIndexPath:self->_selectedIndexPath animated:appearCopy];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v5 viewDidAppear:appear];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(UITableView *)self->_tableView endEditing:1];
  v5.receiver = self;
  v5.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  v82.receiver = self;
  v82.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v82 viewWillLayoutSubviews];
  view = [(PKPaymentSetupTableViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v77 = v12;
  [view layoutMargins];
  v14 = v13;
  v16 = v15;
  rect_16 = v7;
  rect_24 = v11;
  v17 = v9;
  v18 = v5;
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    v17 = v9;
    v18 = v5;
    if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      v17 = v9 - (v14 + v16);
      if (_UISolariumFeatureFlagEnabled())
      {
        v26 = v9 - PKSetupListViewConstantsViewMargin();
      }

      else
      {
        readableContentGuide = [view readableContentGuide];
        [readableContentGuide layoutFrame];
        v26 = fmin(v28, 536.0);
      }

      v18 = v5 + v14;
      v7 = v7 + 0.0;
      if (v26 >= v17)
      {
        v11 = rect_24;
      }

      else
      {
        v19.n128_f64[0] = v26;
        v20.n128_f64[0] = rect_24;
        v21.n128_f64[0] = v5 + v14;
        v22.n128_f64[0] = rect_16 + 0.0;
        v23.n128_f64[0] = v9 - (v14 + v16);
        v24.n128_f64[0] = rect_24;
        PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v19, v20, v21, v22, v23, v24, v25);
        v18 = v29;
        v7 = v30;
        v17 = v31;
        v11 = v32;
      }
    }
  }

  rect = v5;
  [(UITableView *)self->_tableView setFrame:v18, v7, v17, v11];
  [(UITableView *)self->_tableView contentInset];
  v34 = v33;
  rect_8 = v35;
  v37 = v36;
  dockView = self->_dockView;
  if (!dockView)
  {
    v85.origin.x = v18;
    v85.origin.y = v7;
    v85.size.width = v17;
    v85.size.height = v11;
    CGRectGetMaxY(v85);
    v42 = 0.0;
    goto LABEL_26;
  }

  v76 = v33;
  [(PKPaymentSetupDockView *)dockView sizeThatFits:v9, 1.79769313e308];
  v75 = v40;
  v41 = v39;
  v42 = v39;
  if (self->_keyboardVisible)
  {
    v42 = v39;
    if (!CGRectIsNull(self->_keyboardFrame))
    {
      window = [view window];
      v44 = window;
      v42 = v41;
      if (window)
      {
        [window convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
        [view convertRect:0 fromView:?];
        v46 = fmax(v41 - fmax(rect_16 + rect_24 - v45, 0.0), 0.0);
        if (v46 <= v77)
        {
          v42 = v77;
        }

        else
        {
          v42 = v46;
        }
      }
    }
  }

  if (!self->_blurringView)
  {
    v86.origin.x = rect;
    v86.origin.y = rect_16;
    v86.size.height = rect_24;
    v86.size.width = v9;
    [(PKPaymentSetupDockView *)self->_dockView setFrame:0.0, CGRectGetMaxY(v86) - v41, v9, v41];
    goto LABEL_22;
  }

  v74 = v37;
  v83.origin.x = v18;
  v83.origin.y = v7;
  v83.size.width = v17;
  v83.size.height = v11;
  v47 = CGRectGetMaxY(v83) - (v77 + v41);
  v84.origin.x = rect;
  v84.origin.y = rect_16;
  v84.size.height = rect_24;
  v84.size.width = v9;
  [(_PKVisibilityBackdropView *)self->_blurringView setFrame:rect, v47, v9, CGRectGetMaxY(v84) - v47];
  contentView = [(_UIBackdropView *)self->_blurringView contentView];
  [contentView bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57.n128_u64[0] = v75;
  v58.n128_f64[0] = v41;
  v59.n128_u64[0] = v50;
  v60.n128_u64[0] = v52;
  v61.n128_u64[0] = v54;
  v62.n128_u64[0] = v56;
  PKSizeAlignedInRect(1, v57, v58, v59, v60, v61, v62, v63);
  [(PKPaymentSetupDockView *)self->_dockView setFrame:?];
  if (self->_hideFooterBlurView)
  {
    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:0.0];
    v37 = v74;
LABEL_22:
    v34 = v76;
    goto LABEL_26;
  }

  tableView = self->_tableView;
  [(_PKVisibilityBackdropView *)self->_blurringView bounds];
  [(UITableView *)tableView convertRect:self->_blurringView fromView:?];
  v66 = v65;
  [(UITableView *)self->_tableView contentSize];
  v68 = v67;
  [(UITableView *)self->_tableView bounds];
  v87.size.height = fmin(v69, v68 - v87.origin.y);
  v70 = fmin(fmax(CGRectGetMaxY(v87) - v66, 0.0), 30.0) / 30.0;
  v34 = v76;
  if (self->_backdropWeight != v70)
  {
    self->_backdropWeight = v70;
    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:?];
  }

  v37 = v74;
LABEL_26:
  [(UITableView *)self->_tableView setContentInset:v34, rect_8, v42, v37, *&v74];
  [(UITableView *)self->_tableView setScrollIndicatorInsets:v34, rect_8, v42, v37];
  v71 = PKSetupListViewConstantsViewMargin();
  [(UITableView *)self->_tableView setLayoutMargins:0.0, v71, 0.0, v71];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v72 = self->_tableView;
    navigationItem = [(PKPaymentSetupTableViewController *)self navigationItem];
    [(UITableView *)v72 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)setHideFooterBlurView:(BOOL)view
{
  self->_hideFooterBlurView = view;
  view = [(PKPaymentSetupTableViewController *)self view];
  [view setNeedsLayout];
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKPaymentSetupTableViewController__keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKPaymentSetupTableViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __55__PKPaymentSetupTableViewController__keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  v4 = *(v2 + 1056);
  v5 = *(v2 + 1064);
  v6 = *(v2 + 1072);
  *(v2 + 1080) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1048);
  if (v7)
  {
    [v7 CGRectValue];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
  }

  else
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    *v9 = *MEMORY[0x1E695F050];
    *(v8 + 1064) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1048), v16);
}

- (void)_keyboardWillChange:(id)change
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    userInfo = [change userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__PKPaymentSetupTableViewController__keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKPaymentSetupTableViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __57__PKPaymentSetupTableViewController__keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 131;
  v4 = *(v2 + 131);
  v5 = *(v2 + 132);
  v6 = *(v2 + 133);
  v7 = *(v2 + 134);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1048), v13);
}

- (void)_keyboardWillHide:(id)hide
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__PKPaymentSetupTableViewController__keyboardWillHide___block_invoke;
  v3[3] = &unk_1E8010EB8;
  v3[4] = self;
  [(PKPaymentSetupTableViewController *)self _updateLayoutForKeyboardAction:v3];
}

BOOL __55__PKPaymentSetupTableViewController__keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1048);
  *(v1 + 1080) = 0;
  v2 = (*(a1 + 32) + 1048);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1048);
  v4 = *(*(a1 + 32) + 1056);
  v5 = *(*(a1 + 32) + 1064);
  v6 = *(*(a1 + 32) + 1072);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    viewIfLoaded = [(PKPaymentSetupTableViewController *)self viewIfLoaded];
    v6 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      if (actionCopy[2](actionCopy))
      {
        [v6 setNeedsLayout];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __68__PKPaymentSetupTableViewController__updateLayoutForKeyboardAction___block_invoke;
        v8[3] = &unk_1E8010970;
        v9 = v6;
        [v7 _animateUsingDefaultTimingWithOptions:134 animations:v8 completion:0];
      }
    }

    else
    {
      actionCopy[2](actionCopy);
    }
  }
}

- (PKPaymentSetupDockView)dockView
{
  dockView = self->_dockView;
  if (!dockView)
  {
    v4 = [PKPaymentSetupDockView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(PKPaymentSetupDockView *)v4 initWithFrame:self->_context context:*MEMORY[0x1E695F058], v6, v7, v8];
    v10 = self->_dockView;
    self->_dockView = v9;

    [(PKPaymentSetupDockView *)self->_dockView setPrimaryButton:0];
    if (_UISolariumEnabled())
    {
      view = [(PKPaymentSetupTableViewController *)self view];
      [view addSubview:self->_dockView];
      view3 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_tableView edge:4 style:0];
      [(PKPaymentSetupDockView *)self->_dockView addInteraction:view3];
      view2 = [(PKPaymentSetupTableViewController *)self view];
      [view2 addSubview:self->_dockView];
    }

    else
    {
      v14 = [[_PKVisibilityBackdropView alloc] initWithFrame:-2 privateStyle:v5, v6, v7, v8];
      blurringView = self->_blurringView;
      self->_blurringView = v14;

      [(_PKVisibilityBackdropView *)self->_blurringView setDelegate:self];
      [(_PKVisibilityBackdropView *)self->_blurringView setUserInteractionEnabled:1];
      backdropWeight = 0.0;
      if (!self->_hideFooterBlurView)
      {
        backdropWeight = self->_backdropWeight;
      }

      [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:backdropWeight];
      view = [(_UIBackdropView *)self->_blurringView contentView];
      [view addSubview:self->_dockView];
      view3 = [(PKPaymentSetupTableViewController *)self view];
      [view3 addSubview:self->_blurringView];
      [view3 setNeedsLayout];
    }

    dockView = self->_dockView;
  }

  return dockView;
}

- (NSAttributedString)footerAttributedText
{
  additionalView = [(PKPaymentSetupDockView *)self->_dockView additionalView];
  if (additionalView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    attributedText = [additionalView attributedText];
  }

  else
  {
    attributedText = 0;
  }

  return attributedText;
}

- (void)setFooterAttributedText:(id)text
{
  if (text)
  {
    v13 = [text copy];
    v4 = [(PKPaymentSetupTableViewController *)self addFooterStyleAttributes:v13];
    v5 = objc_alloc_init(PKHyperlinkTextView);
    v6 = PKGenericOnboardingPresenter(self, 0);
    context = [(PKPaymentSetupTableViewController *)self context];
    navigationController = [(PKPaymentSetupTableViewController *)self navigationController];
    v9 = PKOpenURLModallyHyperlinkAction(context, navigationController);
    v10 = PKGenericHyperlinkAction(v6, v9);

    [(PKHyperlinkTextView *)v5 setAction:v10];
    [(PKHyperlinkTextView *)v5 setAttributedText:v4];
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    [dockView setAdditionalView:v5];
    [dockView setAdditionalViewBottomPadding:11.0];
  }

  else
  {
    dockView = self->_dockView;

    [(PKPaymentSetupDockView *)dockView setAdditionalView:?];
  }
}

- (id)addFooterStyleAttributes:(id)attributes
{
  v13[3] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if ([attributesCopy length])
  {
    v4 = [attributesCopy mutableCopy];
    v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v5 setLineBreakMode:0];
    [v5 setAlignment:PKOBKTextAlignment()];
    v12[0] = *MEMORY[0x1E69DB648];
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
    v7 = *MEMORY[0x1E69DB688];
    v13[0] = v6;
    v13[1] = v5;
    v8 = *MEMORY[0x1E69DB650];
    v12[1] = v7;
    v12[2] = v8;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v13[2] = secondaryLabelColor;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

    [v4 addAttributes:v10 range:{0, objc_msgSend(attributesCopy, "length")}];
  }

  else
  {
    v4 = attributesCopy;
  }

  return v4;
}

- (void)tableViewDidFinishReload:(id)reload
{
  if (self->_dockView)
  {
    view = [(PKPaymentSetupTableViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_tableView == view)
  {
    v10 = pathCopy;
    allowsMultipleSelection = [view allowsMultipleSelection];
    pathCopy = v10;
    if ((allowsMultipleSelection & 1) == 0)
    {
      v8 = [v10 copy];
      selectedIndexPath = self->_selectedIndexPath;
      self->_selectedIndexPath = v8;

      pathCopy = v10;
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKPaymentSetupTableViewController *)self view];
  [view setNeedsLayout];
}

- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (PKPaymentSetupForceBridgeAppearance() & 1) != 0 || (PKPaymentSetupContextIsBridge())
  {
    v5 = 2030;
  }

  else if ([collectionCopy userInterfaceStyle] == 2)
  {
    v5 = 2030;
  }

  else
  {
    v5 = 2010;
  }

  return v5;
}

@end