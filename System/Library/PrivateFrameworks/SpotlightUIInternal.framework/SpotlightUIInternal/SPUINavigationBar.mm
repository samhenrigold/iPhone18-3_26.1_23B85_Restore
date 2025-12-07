@interface SPUINavigationBar
- (SPUINavigationBar)initWithFrame:(CGRect)frame;
- (void)didAddSubview:(id)subview;
- (void)didMoveToWindow;
- (void)performShowSeparator:(BOOL)separator animated:(BOOL)animated;
- (void)reconfigureNavigationBarForItem:(id)item;
- (void)setHeader:(id)header;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundViewVisibility;
@end

@implementation SPUINavigationBar

- (void)updateBackgroundViewVisibility
{
  topItem = [(SPUINavigationBar *)self topItem];
  titleView = [topItem titleView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _backgroundView = [(SPUINavigationBar *)self _backgroundView];
  [_backgroundView setHidden:(isKindOfClass & 1) == 0];
}

- (SPUINavigationBar)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = SPUINavigationBar;
  v3 = [(SPUINavigationBar *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(SPUINavigationBar *)v3 setBackgroundImage:v4 forBarMetrics:0];

    v5 = objc_opt_new();
    [(SPUINavigationBar *)v3 setTopDividerView:v5];

    topDividerView = [(SPUINavigationBar *)v3 topDividerView];
    [(SPUINavigationBar *)v3 addSubview:topDividerView];

    topDividerView2 = [(SPUINavigationBar *)v3 topDividerView];
    [topDividerView2 setAlpha:0.0];

    v8 = MEMORY[0x277D4C828];
    topDividerView3 = [(SPUINavigationBar *)v3 topDividerView];
    v10 = [v8 baselineAlignBottomView:v3 toTopView:topDividerView3];

    v11 = _UISolariumEnabled();
    v12 = MEMORY[0x277D4C828];
    topDividerView4 = [(SPUINavigationBar *)v3 topDividerView];
    if (v11)
    {
      [MEMORY[0x277D6F1D8] standardTableCellContentInset];
      v14 = [v12 alignLeadingView:v3 toTrailingView:topDividerView4 spacing:?];

      v15 = MEMORY[0x277D4C828];
      topDividerView4 = [(SPUINavigationBar *)v3 topDividerView];
      [MEMORY[0x277D6F1D8] standardTableCellContentInset];
      v16 = [v15 alignLeadingView:topDividerView4 toTrailingView:v3 spacing:?];
    }

    else
    {
      [v12 constrainViewWidthToContainer:topDividerView4];
    }

    v17 = objc_opt_new();
    [(SPUINavigationBar *)v3 _setBackgroundView:v17];

    _backgroundView = [(SPUINavigationBar *)v3 _backgroundView];
    [_backgroundView setAlpha:0.0];

    [(SPUINavigationBar *)v3 _setHidesShadow:1];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SPUINavigationBar *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SPUINavigationBar *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SPUINavigationBar *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v3 didMoveToWindow];
  [(SPUINavigationBar *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v9[1] = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  v7.receiver = self;
  v7.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v7 tlk_updateForAppearance:appearanceCopy];
  if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {
    secondaryColor = [appearanceCopy secondaryColor];
    [(SPUINavigationBar *)self setTintColor:secondaryColor];
    v8 = *MEMORY[0x277D740C0];
    v9[0] = secondaryColor;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(SPUINavigationBar *)self setTitleTextAttributes:v6];
  }
}

- (void)didAddSubview:(id)subview
{
  v35 = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  v32.receiver = self;
  v32.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v32 didAddSubview:subviewCopy];
  topItem = [(SPUINavigationBar *)self topItem];
  titleView = [topItem titleView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  _backgroundView = [(SPUINavigationBar *)self _backgroundView];
  if (_backgroundView == subviewCopy)
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  _backgroundView2 = [(SPUINavigationBar *)self _backgroundView];
  superview = [_backgroundView2 superview];
  v10 = superview;
  if (superview == subviewCopy)
  {

    goto LABEL_15;
  }

  enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];

  if ((enableFloatingWindow & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    subviews = [(SPUINavigationBar *)self subviews];
    v13 = [subviews countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(subviews);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          NSClassFromString(&cfstr_Uinavigationba.isa);
          if (objc_opt_isKindOfClass())
          {
            topItem = v17;
            goto LABEL_19;
          }
        }

        v14 = [subviews countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    topItem = 0;
LABEL_19:

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    titleView = [topItem subviews];
    v18 = [titleView countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(titleView);
          }

          v22 = *(*(&v24 + 1) + 8 * j);
          v23 = [MEMORY[0x277D6F1A0] bestAppearanceForView:self];
          [v23 enableAppearanceForView:v22];
        }

        v19 = [titleView countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v19);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)performShowSeparator:(BOOL)separator animated:(BOOL)animated
{
  animatedCopy = animated;
  separatorCopy = separator;
  topDividerView = [(SPUINavigationBar *)self topDividerView];
  [topDividerView alpha];
  v10 = v9;

  if (v10 != separatorCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__SPUINavigationBar_performShowSeparator_animated___block_invoke;
    v11[3] = &unk_279D06D40;
    v11[4] = self;
    separatorCopy2 = separator;
    [MEMORY[0x277D4C898] performAnimatableChanges:v11 animated:animatedCopy];
  }
}

void __51__SPUINavigationBar_performShowSeparator_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) topDividerView];
  [v3 setAlpha:v2];
}

- (void)setHeader:(id)header
{
  v16 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  if (self->_header != headerCopy)
  {
    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      items = [(SPUINavigationBar *)self items];
      v7 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(items);
            }

            [*(*(&v11 + 1) + 8 * v10++) setTitleView:headerCopy];
          }

          while (v8 != v10);
          v8 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }

    objc_storeStrong(&self->_header, header);
  }
}

- (void)reconfigureNavigationBarForItem:(id)item
{
  itemCopy = item;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUINavigationBar *)self showSeparator:1 animated:0];
    header = [(SPUINavigationBar *)self header];
    [itemCopy setTitleView:header];

    [itemCopy setTitle:0];
    [itemCopy setHidesBackButton:1];
    [itemCopy setBackBarButtonItem:0];
    v5 = MEMORY[0x277CBEBF8];
    [itemCopy setRightBarButtonItems:MEMORY[0x277CBEBF8]];
    [itemCopy setLeftBarButtonItems:v5];
  }

  else
  {
    [(SPUINavigationBar *)self showSeparator:0 animated:0];
  }

  [(SPUINavigationBar *)self updateBackgroundViewVisibility];
}

@end