@interface SSChromePlaceholderView
- (SSChromePlaceholderView)initWithFrame:(CGRect)frame;
- (int64_t)positionForBar:(id)bar;
- (void)_initializeBarButtonItems;
- (void)_layoutTopBar;
- (void)_updateBarButtonItemPositionsAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
@end

@implementation SSChromePlaceholderView

- (SSChromePlaceholderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SSChromePlaceholderView;
  v3 = [(SSChromePlaceholderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SSChromePlaceholderView *)v3 _initializeBarButtonItems];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(SSChromePlaceholderView *)v4 setTintColor:whiteColor];
  }

  return v4;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SSChromePlaceholderView;
  [(SSChromePlaceholderView *)&v3 safeAreaInsetsDidChange];
  [(SSChromePlaceholderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SSChromePlaceholderView;
  [(SSChromePlaceholderView *)&v3 layoutSubviews];
  [(SSChromePlaceholderView *)self _layoutTopBar];
  [(SSChromePlaceholderView *)self _updateBarButtonItemPositionsAnimated:0];
}

- (void)_initializeBarButtonItems
{
  v49[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCCE0]);
  managedNavigationItem = self->_managedNavigationItem;
  self->_managedNavigationItem = v3;

  v5 = [(UINavigationBar *)self->_topBar pushNavigationItem:self->_managedNavigationItem animated:0];
  if (_SSScreenshotsRedesign2025Enabled(v5, v6))
  {
    v7 = +[SSChromeFactory closeBarButtonItem];
    closeItem = self->_closeItem;
    self->_closeItem = v7;
  }

  v9 = [MEMORY[0x1E69DC708] _sss_shareItemWithTarget:self action:0];
  shareItem = self->_shareItem;
  self->_shareItem = v9;

  v11 = objc_alloc(MEMORY[0x1E69DC708]);
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v13 = [v11 initWithImage:v12 menu:0];
  doneItem = self->_doneItem;
  self->_doneItem = v13;

  [(UIBarButtonItem *)self->_doneItem setStyle:2];
  v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.8];
  [(UIBarButtonItem *)self->_doneItem setTintColor:v15];

  v16 = [MEMORY[0x1E69DC708] _sss_undoItemWithTarget:self action:0];
  undoItem = self->_undoItem;
  self->_undoItem = v16;

  v18 = [MEMORY[0x1E69DC708] _sss_redoItemWithTarget:self action:0];
  redoItem = self->_redoItem;
  self->_redoItem = v18;

  v20 = [MEMORY[0x1E69DC708] _sss_trashItemWithTarget:self action:0];
  deleteItem = self->_deleteItem;
  self->_deleteItem = v20;

  v22 = objc_alloc_init(SSVellumOpacityControl);
  opacityControl = self->_opacityControl;
  self->_opacityControl = v22;

  v24 = self->_opacityControl;
  +[SSVellumOpacityControl preferredWidth];
  v26 = v25;
  [(SSVellumOpacityControl *)self->_opacityControl intrinsicContentSize];
  [(SSVellumOpacityControl *)v24 setFrame:0.0, 0.0, v26, v27];
  v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_opacityControl];
  opacityItem = self->_opacityItem;
  self->_opacityItem = v28;

  v30 = objc_alloc_init(MEMORY[0x1E69DC708]);
  annotationEnabledButton = self->_annotationEnabledButton;
  self->_annotationEnabledButton = v30;

  v32 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil.tip.crop.circle"];
  [(UIBarButtonItem *)self->_annotationEnabledButton setImage:v32];

  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v33 = getVKImageAnalysisBarButtonItemClass_softClass;
  v48 = getVKImageAnalysisBarButtonItemClass_softClass;
  if (!getVKImageAnalysisBarButtonItemClass_softClass)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __getVKImageAnalysisBarButtonItemClass_block_invoke;
    v44[3] = &unk_1E8590188;
    v44[4] = &v45;
    __getVKImageAnalysisBarButtonItemClass_block_invoke(v44);
    v33 = v46[3];
  }

  v34 = v33;
  _Block_object_dispose(&v45, 8);
  v35 = [v33 analysisButtonWithTarget:self action:0 mode:0];
  aaBarButtonItem = self->_aaBarButtonItem;
  self->_aaBarButtonItem = v35;

  [(VKImageAnalysisBarButtonItem *)self->_aaBarButtonItem setEnabled:0];
  v37 = self->_doneItem;
  v49[0] = self->_shareItem;
  v49[1] = v37;
  v38 = self->_redoItem;
  v49[2] = self->_undoItem;
  v49[3] = v38;
  v39 = self->_opacityItem;
  v49[4] = self->_deleteItem;
  v49[5] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:6];
  barItems = self->_barItems;
  self->_barItems = v40;

  if ([getVKCImageAnalyzerClass() supportedAnalysisTypes])
  {
    v42 = [(NSArray *)self->_barItems arrayByAddingObject:self->_aaBarButtonItem];
    v43 = self->_barItems;
    self->_barItems = v42;
  }
}

- (void)_updateBarButtonItemPositionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v51[4] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  +[SSChromeHelper defaultBarButtonSpacing];
  v7 = [SSChromeHelper createFixedSpaceBarButtonItemWithWidth:?];
  v8 = 0.0;
  if ((_SSScreenshotsRedesign2025Enabled(v7, v9) & 1) == 0)
  {
    +[SSChromeHelper defaultBarButtonSpacing];
    v8 = v10;
  }

  traitCollection = [(SSChromePlaceholderView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(UIBarButtonItem *)self->_opacityItem _setFlexible:0];
    [SSChromeHelper widthForOpacityControlInView:self withContentSwitcher:0];
    v14 = v13;
    opacityControl = self->_opacityControl;
    [(SSVellumOpacityControl *)opacityControl intrinsicContentSize];
    v17 = [(SSVellumOpacityControl *)opacityControl setFrame:0.0, 0.0, v14, v16];
    v19 = _SSScreenshotsRedesign2025Enabled(v17, v18);
    v20 = &OBJC_IVAR___SSChromePlaceholderView__doneItem;
    if (v19)
    {
      v20 = &OBJC_IVAR___SSChromePlaceholderView__closeItem;
    }

    [array addObject:*(&self->super.super.super.isa + *v20)];
    v21 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:v8];
    [array addObject:v21];

    v22 = [array addObject:self->_opacityItem];
    if (_SSScreenshotsRedesign2025Enabled(v22, v23))
    {
      v51[0] = self->_doneItem;
      v24 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
      shareItem = self->_shareItem;
      v51[1] = v24;
      v51[2] = shareItem;
      v51[3] = self->_annotationEnabledButton;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
      [array2 addObjectsFromArray:v26];

      if (([getVKCImageAnalyzerClass() supportedAnalysisTypes] & 1) == 0)
      {
        goto LABEL_14;
      }

      v27 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
      aaBarButtonItem = self->_aaBarButtonItem;
      v50[0] = v27;
      v50[1] = aaBarButtonItem;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
      [array2 addObjectsFromArray:v29];
    }

    else
    {
      if ([getVKCImageAnalyzerClass() supportedAnalysisTypes])
      {
        deleteItem = self->_deleteItem;
        annotationEnabledButton = self->_annotationEnabledButton;
        v36 = self->_aaBarButtonItem;
        v45 = self->_shareItem;
        v46 = deleteItem;
        v47 = annotationEnabledButton;
        v48 = v36;
        v49 = v7;
        v31 = MEMORY[0x1E695DEC8];
        v32 = &v45;
        v33 = 5;
      }

      else
      {
        v30 = self->_deleteItem;
        v41 = self->_shareItem;
        v42 = v30;
        v43 = self->_annotationEnabledButton;
        v44 = v7;
        v31 = MEMORY[0x1E695DEC8];
        v32 = &v41;
        v33 = 4;
      }

      v27 = [v31 arrayWithObjects:v32 count:{v33, v41, v42, v43, v44, v45, v46, v47, v48, v49}];
      [array2 addObjectsFromArray:v27];
    }
  }

LABEL_14:
  v37 = self->_topBar;
  [(UINavigationItem *)self->_managedNavigationItem setLeftBarButtonItems:array animated:animatedCopy];
  [(UINavigationItem *)self->_managedNavigationItem setRightBarButtonItems:array2 animated:animatedCopy];
  [(UINavigationItem *)self->_managedNavigationItem setTitleView:0];
  topItem = [(UINavigationBar *)v37 topItem];
  managedNavigationItem = self->_managedNavigationItem;

  if (topItem != managedNavigationItem)
  {
    v40 = [(UINavigationBar *)v37 popNavigationItemAnimated:0];
    [(UINavigationBar *)v37 pushNavigationItem:self->_managedNavigationItem animated:0];
  }
}

- (void)_layoutTopBar
{
  if (!self->_topBarBackground)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCCC0]);
    topBarBackground = self->_topBarBackground;
    self->_topBarBackground = v3;

    [(UINavigationBar *)self->_topBarBackground setDelegate:self];
    [SSChromeHelper configureNavigationBarAppearance:self->_topBarBackground];
    [(SSChromePlaceholderView *)self addSubview:self->_topBarBackground];
  }

  if (!self->_topBar)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCCC0]);
    topBar = self->_topBar;
    self->_topBar = v5;

    layer = [(UINavigationBar *)self->_topBar layer];
    [layer setAllowsGroupOpacity:1];

    [(UINavigationBar *)self->_topBar setAlpha:self->_contentAlpha];
    [(UINavigationBar *)self->_topBar setDelegate:self];
    defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
    [defaultFormat setOpaque:0];
    v9 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:defaultFormat format:{1.0, 1.0}];
    v10 = [v9 imageWithActions:&__block_literal_global];
    [(UINavigationBar *)self->_topBar setBackgroundImage:v10 forBarMetrics:1];
    [(UINavigationBar *)self->_topBar setBackgroundImage:v10 forBarMetrics:0];
    [(UINavigationBar *)self->_topBar setShadowImage:v10];
    v11 = [(SSChromePlaceholderView *)self addSubview:self->_topBar];
    if ((_SSScreenshotsRedesign2025Enabled(v11, v12) & 1) == 0)
    {
      v13 = +[SSChromeHelper separatorView];
      topBarSeparatorLine = self->_topBarSeparatorLine;
      self->_topBarSeparatorLine = v13;

      [(UINavigationBar *)self->_topBar addSubview:self->_topBarSeparatorLine];
    }
  }

  [(SSChromePlaceholderView *)self bounds];
  [(UINavigationBar *)self->_topBar sizeThatFits:v15, v16];
  v18 = v17;
  v20 = v19;
  [(SSChromePlaceholderView *)self safeAreaInsets];
  v22 = v21;
  +[SSChromeHelper barSeparatorSize];
  v24 = v23;
  bounds = [(SSChromePlaceholderView *)self bounds];
  v27 = v26;
  if ((_SSScreenshotsRedesign2025Enabled(bounds, v28) & 1) == 0)
  {
    [(UINavigationBar *)self->_topBar bringSubviewToFront:self->_topBarSeparatorLine];
  }

  [(UINavigationBar *)self->_topBar frame];
  v33.origin.x = 0.0;
  v33.origin.y = v22;
  v33.size.width = v18;
  v33.size.height = v20;
  if (!CGRectEqualToRect(v30, v33) || ([(UINavigationBar *)self->_topBarBackground frame], v34.origin.x = 0.0, v34.origin.y = v22, v34.size.width = v18, v34.size.height = v20, !CGRectEqualToRect(v31, v34)) || ([(UIView *)self->_topBarSeparatorLine frame], v35.origin.x = 0.0, v35.origin.y = v20 - v24, v35.size.width = v27, v35.size.height = v24, !CGRectEqualToRect(v32, v35)))
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __40__SSChromePlaceholderView__layoutTopBar__block_invoke_2;
    v29[3] = &unk_1E8590160;
    v29[4] = self;
    v29[5] = 0;
    *&v29[6] = v22;
    *&v29[7] = v18;
    *&v29[8] = v20;
    v29[9] = 0;
    *&v29[10] = v20 - v24;
    *&v29[11] = v27;
    *&v29[12] = v24;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v29];
  }
}

uint64_t __40__SSChromePlaceholderView__layoutTopBar__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 496) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = [*(*(a1 + 32) + 504) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  if ((_SSScreenshotsRedesign2025Enabled(v2, v3) & 1) == 0)
  {
    [*(*(a1 + 32) + 512) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  }

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

- (int64_t)positionForBar:(id)bar
{
  if (self->_topBar == bar)
  {
    return 3;
  }

  if (self->_topBarBackground == bar)
  {
    return 3;
  }

  return 0;
}

@end